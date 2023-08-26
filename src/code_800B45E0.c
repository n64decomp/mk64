#include <ultra64.h>
#include <macros.h>
#include <defines.h>
#include "global.h"

#include "code_800B45E0.h"

#include "code_80091750.h"
#include "menus.h"
#include "save_data.h"
#include "staff_ghosts.h"

/*** macros ***/
#define PFS_COMPANY_CODE(c0, c1) ((u16)(((c0) << 8) | ((c1))))
#define PFS_GAME_CODE(c0, c1, c2, c3) ((u32)(((c0) << 24) | ((c1) << 16) | ((c2) << 8) | (c3)))
// calculate an eeprom address based off of the ram address of the SaveData variable
// very fragile!
#define EEPROM_ADDR(ptr) (((uintptr_t)(ptr) - (uintptr_t)(&gSaveData)) / 8)

/*** data ***/
u16 gCompanyCode = PFS_COMPANY_CODE('0', '1');
u32 gGameCode = PFS_GAME_CODE('N', 'K', 'T', 'J');
s8 gControllerPak1State = BAD;
s8 sControllerPak2State = BAD;

/*** rodata ***/
// default time trial records in little endian form
const u8 D_800F2E60[4] = {0xc0, 0x27, 0x09, 0x00};
// osPfsFindFile -> gGameName ("MARIOKART64" in nosFont)
const u8 gGameName[] = {0x26, 0x1a, 0x2b, 0x22, 0x28, 0x24, 0x1a, 0x2b, 0x2d, 0x16, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00};
// ext_name param to osPfsFindFile (four total bytes, but only one is setable)
const u8 gExtCode[] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

// new file start?
void func_800B45E0(s32 arg0) {
    CourseTimeTrialRecords* courseTimeTrialRecordsPtr = &gSaveData.allCourseTimeTrialRecords \
                                                        .cupRecords[arg0 / 4] \
                                                        .courseRecords[arg0 % 4];

    courseTimeTrialRecordsPtr->unknownBytes[5] = func_800B4874(arg0);
    osEepromLongWrite(&gSIEventMesgQueue, EEPROM_ADDR(courseTimeTrialRecordsPtr), (u8 *)courseTimeTrialRecordsPtr, sizeof(CourseTimeTrialRecords));
}

void write_save_data_grand_prix_points_and_sound_mode(void) {
    Stuff *main = &gSaveData.main;
    main->checksum[1] = compute_save_data_checksum_1();
    main->checksum[2] = compute_save_data_checksum_2();
    osEepromLongWrite(&gSIEventMesgQueue, EEPROM_ADDR(main), main, sizeof(Stuff));
}

void func_800B46D0(void) {
    s32 i;

    for (i = 0; i < 16; i++) {
        func_800B4728(i);
        func_800B559C(i);
    }

    reset_save_data_grand_prix_points_and_sound_mode();
    update_save_data_backup();
}

void func_800B4728(s32 arg0) {
    s32 i, j;
    CourseTimeTrialRecords* courseTimeTrialRecords;

    courseTimeTrialRecords = &gSaveData.allCourseTimeTrialRecords \
                             .cupRecords[arg0 / 4] \
                             .courseRecords[arg0 % 4];

    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 3; j++)
        {
            courseTimeTrialRecords->records[i][j] = D_800F2E60[j];
        }
    }

    for (i = 0; i < 3; i++)
    {
        courseTimeTrialRecords->records[5][i] = D_800F2E60[i];
    }

    courseTimeTrialRecords->unknownBytes[0] = 0;
    courseTimeTrialRecords->unknownBytes[5] = func_800B4874(arg0);
    func_800B45E0(arg0);
}

void reset_save_data_grand_prix_points_and_sound_mode(void) {
    s32 cup_index;
    Stuff *main = &gSaveData.main;
    for (cup_index = 0; cup_index < 4; cup_index++) {
        main->grandPrixPoints[cup_index] = 0;
    }
    main->soundMode = SOUND_STEREO;
    gSoundMode = SOUND_STEREO;
    func_800B44BC();
    write_save_data_grand_prix_points_and_sound_mode();
}

// checksum_timetrial_records
u8 func_800B4874(s32 courseIdx) {
    s32 j;
    s32 i;
    s32 ret;
    u8 *records = gSaveData.allCourseTimeTrialRecords \
                  .cupRecords[courseIdx / 4] \
                  .courseRecords[courseIdx % 4] \
                  .records[0];

    ret = 0;
    for (i = 0; i < 7; i++) {
        for (j = 0; j < 3; j++) {
            ret += *(records + i*3 + j) * (j + 1) + i;
        }
    }

    return ret % 256;
}


u8 compute_save_data_checksum_1(void) {
    u8 *grandPrixPoints = &gSaveData.main.grandPrixPoints;
    s32 i;
    s32 crc = 0;

    for (i = 0; i < 5; i++) {
        crc += ((grandPrixPoints[i] + 1) * (i + 1)) + i;
    }

    return crc % 0x100;
}

u8 compute_save_data_checksum_2(void) {
    s32 tmp = gSaveData.main.checksum[1] + 90;
    return (tmp % 256);
}

void load_save_data(void) {
    s32 i;

    osEepromLongRead(&gSIEventMesgQueue, EEPROM_ADDR(&gSaveData), (u8 *)&gSaveData, sizeof(SaveData));
    // 16: 4 cup records * 4 course records?
    for (i = 0; i < 16; i++) {
        func_800B4A9C(i);
    }
    
    validate_save_data();

    gSoundMode = gSaveData.main.soundMode;
    if (gSoundMode >= NUM_SOUND_MODES) {
        gSoundMode = SOUND_MONO;
    }
}

void func_800B4A9C(s32 course) {
    OnlyBestTimeTrialRecords *test;
    CourseTimeTrialRecords *sp24;
    s32 i;

    if ((func_800B4EB4(0, course) & 0xFFFFF) < 0x927C0U) {
        gSaveData.allCourseTimeTrialRecords
            .cupRecords[course / 4]
            .courseRecords[course % 4]
            .unknownBytes[0] = 1;
    }
    sp24 = &gSaveData.allCourseTimeTrialRecords.cupRecords[course / 4].courseRecords[course % 4];
    
    func_800B4FB0(course);
    if(sp24) {}

    if (sp24->unknownBytes[5] != func_800B4874(course)) {
        func_800B4728(course);
        if (func_800B58C4(course) == 0) {
            s32 a3 = 0;

            test = &gSaveData.onlyBestTimeTrialRecords[course / 8];
            for (i = 0; i < 3; i++) {
                sp24->records[TIME_TRIAL_3LAP_RECORD_1][i] = test->bestThreelaps[course % 8][i];
                sp24->records[TIME_TRIAL_1LAP_RECORD][i] = test->bestSinglelaps[course % 8][i];

                // This is checking (in a roundabout way) if the given record
                // is the default value of 0x927C0
                if (sp24->records[TIME_TRIAL_3LAP_RECORD_1][i] == D_800F2E60[i]) {
                    if (sp24->records[TIME_TRIAL_1LAP_RECORD][i] == D_800F2E60[i]) {
                        a3 += 1;
                    }
                }
            }

            if (a3 == 3) {
                sp24->unknownBytes[0] = 0;
            } else {
                sp24->unknownBytes[0] = 1;
            }
            func_800B45E0(course);
        }
        // L800B4C78
        func_800B559C(course);
    } else if (func_800B58C4(course)) {
        // L800B4C88
        func_800B559C(course);
    }
}

void validate_save_data(void) {
    s32 cup_index;
    Stuff *main = &gSaveData.main;
    Stuff *backup = &gSaveData.backup;
    if (main->checksum[1] != (compute_save_data_checksum_1()) || (main->checksum[2] != compute_save_data_checksum_2())) {
        reset_save_data_grand_prix_points_and_sound_mode();
        
        if (validate_save_data_checksum_backup() == 0) {
            for (cup_index = 0; cup_index < 4; cup_index++) {
                main->grandPrixPoints[cup_index] = backup->grandPrixPoints[cup_index];
            }

            main->soundMode = backup->soundMode;
            main->checksum[1] = compute_save_data_checksum_backup_1();
            main->checksum[2] = compute_save_data_checksum_backup_2();
            osEepromLongWrite(&gSIEventMesgQueue, EEPROM_ADDR(main), main, sizeof(Stuff));
        }
        update_save_data_backup();
        return;
    }

    if (validate_save_data_checksum_backup() != 0) {
        update_save_data_backup();
    }
}

void populate_time_trial_record(u8 *timeTrialRecord, u32 time, s32 characterId)
{
  u32 timeRightShift8 = time >> 8;
  u32 timeRightShift16 = timeRightShift8 >> 8;
  s16 timeRightShift8Duplicate;
  u16 timeRightShift16Duplicate;

  timeRightShift16Duplicate = timeRightShift16;

  timeTrialRecord[0] = time & 0xFF;
  timeTrialRecord[1] = (timeRightShift8Duplicate = timeRightShift8);
  timeTrialRecord[2] = (timeRightShift16Duplicate & 0xF) + ((characterId & 7) << 4);
}

// combine time trial record u8[3] into the lower 24 bits of a word [xx221100]
u32 func_800B4DF4(u8 *arr) {
    s32 a, b, c;
    a = arr[0];
    b = arr[1];
    c = arr[2];

    return (a + (b << 8) + (c << 16)) & 0x00FFFFFF;
}

// Get a time trial record, infer course index
s32 func_800B4E24(s32 recordIndex) {
    return func_800B4DF4(
        gSaveData.allCourseTimeTrialRecords \
        .cupRecords[(((gCupSelection * 4) + gCupCourseSelection) / 4)] \
        .courseRecords[(((gCupSelection * 4) + gCupCourseSelection) % 4)] \
        .records[recordIndex]
    );
}

// Get a time trial record, but take the course index as an argument
u32 func_800B4EB4(s32 recordIndex, s32 courseIndex) {
    return func_800B4DF4(
        gSaveData.allCourseTimeTrialRecords \
        .cupRecords[(courseIndex / 4)] \
        .courseRecords[(courseIndex % 4)] \
        .records[recordIndex]
    );
}

// Get Best Lap record of the inferred course index
s32 func_800B4F2C(void) {
    return func_800B4DF4(
        gSaveData.allCourseTimeTrialRecords \
        .cupRecords[(((gCupSelection * 4) + gCupCourseSelection) / 4)] \
        .courseRecords[(((gCupSelection * 4) + gCupCourseSelection) % 4)] \
        .records[TIME_TRIAL_1LAP_RECORD]
    );
}

// Get the best single lap time record of the given course index
s32 func_800B4FB0(s32 courseIndex) {
    return func_800B4DF4(
        gSaveData.allCourseTimeTrialRecords \
        .cupRecords[(courseIndex / 4)] \
        .courseRecords[(courseIndex % 4)] \
        .records[TIME_TRIAL_1LAP_RECORD]
    );
}

s32 func_800B5020(u32 time, s32 charId) {
    s32 stackPadding[3];
    s32 course; // sp30
    s32 i;
    s32 j;
    CourseTimeTrialRecords *tt;

    course = gCupSelection * 4 + gCupCourseSelection;
    tt = &gSaveData.allCourseTimeTrialRecords
        .cupRecords[course / 4]
        .courseRecords[course % 4];

    i = 0;
    for (; i < 5; i++) {
        if (time < (func_800B4DF4(tt->records[i]) & 0x000FFFFF)) {
            break;
        }
    }

    // `time` is:
    //     Not less than any records
    //     Only less than the 1-lap record
    //  Either way, we aren't going to update any records
    if (i >= 5) {
        return -1;
    }

    for (j = TIME_TRIAL_3LAP_RECORD_5; j > i; j--) {
        tt->records[j][0] = tt->records[j - 1][0];
        tt->records[j][1] = tt->records[j - 1][1];
        tt->records[j][2] = tt->records[j - 1][2];
    }

    populate_time_trial_record(tt->records[i], time, charId);
    tt->unknownBytes[0] = 1;
    func_800B45E0(course);

    return i;
}

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Aug-23-2023
extern ? D_8018CA74;

s32 func_800B5218(void) {
    s32 sp38;
    s32 sp28;
    s32 sp24;
    u8 *sp20;
    struct_8018CA70_entry *sp18;
    ? *var_a1;
    s32 temp_v1;
    s32 var_a3;
    s32 var_v0;
    s32 var_v0_2;
    struct_8018CA70_entry *var_a2;
    u32 temp_a0;
    u32 temp_a1;
    u8 *temp_v0;

    sp38 = (gCupSelection * 4) + gCupCourseSelection;
    var_a3 = 1;
    var_a2 = D_8018CA70;
    var_a1 = &D_8018CA74;
    var_v0_2 = 1;
    sp28 = (s32) *gCharacterSelections;
    do {
        temp_v1 = var_a1->unk20;
        temp_a0 = var_a2->lapDurations[0];
        if (temp_v1 < (s32) temp_a0) {
            var_a3 = 1 << var_v0_2;
            var_a2 = (var_v0_2 * 4) + D_8018CA70;
        } else if (temp_a0 == temp_v1) {
            var_a3 |= 1 << var_v0_2;
        }
        var_v0_2 += 1;
        var_a1 += 4;
    } while (var_v0_2 != 3);
    sp18 = var_a2;
    sp24 = var_a3;
    temp_a1 = var_a2->lapDurations[0];
    var_v0 = 0;
    if (temp_a1 < (u32) (func_800B4F2C((s32) temp_a0, var_a1, var_a2, var_a3) & 0xFFFFF)) {
        temp_v0 = &gSaveData.allCourseTimeTrialRecords.cupRecords[0].courseRecords[0].records[0][((sp38 / 4) * 0x60) + ((sp38 % 4) * 0x18)];
        sp20 = temp_v0;
        sp24 = var_a3;
        populate_time_trial_record(temp_v0 + 0xF, temp_a1, sp28);
        temp_v0->unk12 = 1;
        func_800B45E0(sp38);
        var_v0 = sp24;
    }
    return var_v0;
}
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800B5218.s")
#endif

void func_800B536C(s32 arg0) {
    u8 *points;
    u8 tmp;
    s32 tmp2;

    if (arg0 >= 0) {
        points = &gSaveData.main.grandPrixPoints[gCCSelection];
        
        tmp = func_800B54EC(gCupSelection, *points);
        tmp2 = 3 - arg0;
        if ((arg0 < 3) && (tmp < (3-arg0)))  {
            *points = func_800B5508(gCupSelection, *points, tmp2);
            write_save_data_grand_prix_points_and_sound_mode();
            update_save_data_backup();
        }
    }
}

void func_800B5404(s32 arg0, s32 arg1)
{
    u8 *points;
    s32 temp_a0;
    s32 temp;
    int temp2;
    UNUSED s32 pad;

    if (arg0 >= 0) {
        temp2 = arg1 / 4;
        points = &gSaveData.main.grandPrixPoints[arg1 % 4];
        temp = func_800B54EC(temp2, *points);

        if ((arg0 < 3) && (temp < (temp_a0 = 3 - arg0))) {
            *points = func_800B5508(temp2, *points, temp_a0);
            
            write_save_data_grand_prix_points_and_sound_mode();
            update_save_data_backup();
        }
    }
}

// Get Grand Prix points for a given cup and CC mode
u8 func_800B54C0(s32 cup, s32 cc_mode) {
    return func_800B54EC(cup, gSaveData.main.grandPrixPoints[cc_mode]);
}

// Get Grand Prix points scored for a given cup
u8 func_800B54EC(s32 cup, s32 ccGrandPrixPoints) {
    s32 cup_index = cup * 2;
    u32 cup_points = ccGrandPrixPoints;

    cup_points &= (3 << cup_index);
    cup_points >>= cup_index;
    cup_points &= 0xFF;

    return cup_points;
}

// Generate a new CC Grand Prix Points entry with points_scored
// placed in the given cup's location
u8 func_800B5508(s32 cup, s32 ccGrandPrixPoints, s32 points_scored) {
    s32 cup_index = cup * 2;

    points_scored <<= cup_index;
    ccGrandPrixPoints &= ~(3 << cup_index);

    return (ccGrandPrixPoints | points_scored);
}

// Check if all 4 cups have gold cups scored
// for a given CC mode
s32 func_800B5530(s32 cc_mode) {
    if (gSaveData.main.grandPrixPoints[cc_mode] == 0xFF) {
        return 1;
    }
    return 0;
}

// Check if the 150CC mode has all 4 gold cups
s32 func_800B555C(void) {
    return func_800B5530(CC_150);
}

// Check if the Extra mode has all 4 gold cups
s32 func_800B557C(void) {
    return func_800B5530(CC_EXTRA);
}

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Aug-23-2023
void func_800B559C(s32 course) {
    CourseTimeTrialRecords *temp_a2;
    OnlyBestTimeTrialRecords *temp_s2;
    OnlyBestTimeTrialRecords *temp_s2_2;
    s32 temp_s6;
    s32 var_s1;
    s32 var_v0;
    s32 var_v0_2;
    u8 *temp_a0;
    u8 *var_a0;
    u8 temp_t3;
    u8 temp_t9;
    void *temp_v1;
    void *temp_v1_2;

    temp_s6 = course / 8;
    var_s1 = temp_s6 * 8;
    if (var_s1 < (var_s1 + 8)) {
        temp_s2 = &gSaveData.onlyBestTimeTrialRecords[temp_s6];
        do {
            var_a0 = D_800F2E60;
            temp_a2 = &gSaveData.allCourseTimeTrialRecords.cupRecords[var_s1 / 4].courseRecords[var_s1 % 4];
            var_v0 = 0;
            if (temp_a2->unknownBytes[5] != func_800B4874(var_s1)) {
                do {
                    temp_v1 = temp_s2 + ((var_s1 % 8) * 3) + var_v0;
                    var_v0 += 1;
                    temp_v1->unk0 = (u8) *var_a0;
                    temp_t9 = *var_a0;
                    var_a0 += 1;
                    temp_v1->unk18 = temp_t9;
                } while (var_v0 != 3);
            } else {
                var_v0_2 = 0;
                do {
                    temp_a0 = &temp_a2->records[0][var_v0_2];
                    temp_t3 = temp_a0->unk0;
                    temp_v1_2 = temp_s2 + ((var_s1 % 8) * 3) + var_v0_2;
                    var_v0_2 += 1;
                    temp_v1_2->unk0 = temp_t3;
                    temp_v1_2->unk18 = (u8) temp_a0->unkF;
                } while (var_v0_2 != 3);
            }
            var_s1 += 1;
        } while (var_s1 < ((temp_s6 * 8) + 8));
    }
    temp_s2_2 = &gSaveData.onlyBestTimeTrialRecords[temp_s6];
    temp_s2_2->unknownBytes[6] = func_800B578C(temp_s6);
    temp_s2_2->unknownBytes[7] = func_800B5888(temp_s6);
    osEepromLongWrite(&gSIEventMesgQueue, ((u32) (temp_s2_2 - &gSaveData) >> 3) & 0xFF, temp_s2_2->bestThreelaps[0], 0x00000038);
}
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800B559C.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Aug-23-2023
s32 func_800B578C(s32 arg0) {
    OnlyBestTimeTrialRecords *var_a2;
    OnlyBestTimeTrialRecords *var_t0;
    s32 temp_a1;
    s32 temp_lo;
    s32 temp_v1;
    s32 var_a0;
    s32 var_v0;
    s32 var_v1;
    u8 *var_a3;
    u8 temp_t5;
    u8 temp_t9;

    var_a2 = &gSaveData.onlyBestTimeTrialRecords[arg0];
    var_v1 = 0;
    var_t0 = var_a2;
    var_v0 = 0;
    do {
        temp_a1 = var_v0 + 1;
        var_a3 = &var_a2->bestThreelaps[0][1];
        temp_lo = (var_t0->bestThreelaps[0][0] + 1) * temp_a1;
        var_a2 += 0x11;
        var_v0 = temp_a1;
        var_a0 = 1;
        var_v1 += temp_lo;
loop_2:
        temp_t5 = var_a3->unk0;
        temp_t9 = var_a3->unk1;
        var_a3 += 4;
        temp_v1 = var_v1 + ((temp_t5 + 1) * temp_a1) + var_a0 + ((temp_t9 + 1) * temp_a1) + var_a0 + 1 + ((var_a3->unk-2 + 1) * temp_a1) + var_a0 + 2 + ((var_a3->unk-1 + 1) * temp_a1) + var_a0;
        var_a0 += 4;
        var_v1 = temp_v1 + 3;
        if (var_a0 != 0x11) {
            goto loop_2;
        }
        var_t0 += 0x11;
    } while (temp_a1 != 3);
    return (var_v1 % 256) & 0xFF;
}
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800B578C.s")
#endif

s32 func_800B5888(s32 arg0) {
    s32 tmp = gSaveData.onlyBestTimeTrialRecords[arg0].unknownBytes[6] + 90;
    return (tmp % 256) & 0xFF;
}

s32 func_800B58C4(s32 arg0)
{
    UNUSED s32 pad1;
    OnlyBestTimeTrialRecords *temp_v1;
    UNUSED s32 pad2;
    UNUSED s32 pad3;

    temp_v1 = &gSaveData.onlyBestTimeTrialRecords[arg0 / 8];
    if ((temp_v1->unknownBytes[6] != (func_800B578C(arg0 / 8) ^ 0)) || (temp_v1->unknownBytes[7] != (func_800B5888(arg0 / 8) ^ 0)))
    {
        return 1;
    }

    return 0;
}

void update_save_data_backup(void) {
    s32 cup_index;
    Stuff *main = &gSaveData.main;
    Stuff *backup = &gSaveData.backup;
    for (cup_index = 0; cup_index < 4; cup_index++) {
        backup->grandPrixPoints[cup_index] = main->grandPrixPoints[cup_index];
    }
    backup->soundMode = main->soundMode;
    backup->checksum[1] = compute_save_data_checksum_backup_1();
    backup->checksum[2] = compute_save_data_checksum_backup_2();
    osEepromLongWrite(&gSIEventMesgQueue, EEPROM_ADDR(backup), backup, sizeof(Stuff));
}

u8 compute_save_data_checksum_backup_1(void) {
    u8 *backupGrandPrixPoints = gSaveData.backup.grandPrixPoints;
    s32 i;
    s32 crc = 0;

    for (i = 0; i < 5; i++) {
        crc += ((backupGrandPrixPoints[i] + 1) * (i + 1)) + i;
    }

    return crc % 0x100;
}

u8 compute_save_data_checksum_backup_2(void) {
    s32 tmp = gSaveData.backup.checksum[1] + 90;
    return (tmp % 256);
}

s32 validate_save_data_checksum_backup(void)
{
    u8 *backupChecksum = gSaveData.backup.checksum;
    if (backupChecksum[1] != compute_save_data_checksum_backup_1() || backupChecksum[2] != compute_save_data_checksum_backup_2()) {
        return 1;
    }

    return 0;
}

// Check if controller has a Controller Pak connected.
// Return PAK if it does, otherwise return NO_PAK.
s32 check_for_controller_pak(s32 controller) {
    u8 controllerBitpattern;
    UNUSED s32 phi_v0;

    if ((controller >= MAXCONTROLLERS) || (controller < 0)) {
        return NO_PAK;
    }

    osPfsIsPlug(&gSIEventMesgQueue, &controllerBitpattern);
	
    if ((controllerBitpattern & (1 << controller)) != 0) {
        return PAK;
    }

    return NO_PAK;
}

// gives status info about controller pak insterted in controller 1
s32 controller_pak_1_status(void) {
    if (gControllerPak1State) {
        switch (osPfsFindFile(&gControllerPak1FileHandle, gCompanyCode, gGameCode, gGameName, gExtCode, &gControllerPak1FileNote)) {
            case PFS_NO_ERROR:
                return PFS_NO_ERROR;
            case PFS_ERR_INVALID:
                break;
            case PFS_ERR_NEW_PACK:
                gControllerPak1State = BAD;
                break;
            default:
                gControllerPak1State = BAD;
                break;
        }
    } 
    
    if (!gControllerPak1State) {
        s32 errorCode;
        if (check_for_controller_pak(CONTROLLER_1) == NO_PAK) {
            return PFS_NO_PAK_INSERTED;
        }
        errorCode = osPfsInit(&gSIEventMesgQueue, &gControllerPak1FileHandle, CONTROLLER_1);

        if (errorCode) {
            switch(errorCode) {
                case PFS_ERR_NOPACK:
                case PFS_ERR_DEVICE:
                    return PFS_NO_PAK_INSERTED;
                case PFS_ERR_ID_FATAL:
                    return PFS_PAK_BAD_READ;
                default:
                case PFS_ERR_CONTRFAIL:
                    return PFS_PAK_BAD_READ;
            }
        }
   
        gControllerPak1State = OK;
        if (osPfsFindFile(&gControllerPak1FileHandle, gCompanyCode, gGameCode, gGameName, gExtCode, &gControllerPak1FileNote) == PFS_NO_ERROR) {
            return PFS_NO_ERROR;
        }
        if (osPfsNumFiles(&gControllerPak1FileHandle, &gControllerPak1NumFilesUsed, &gControllerPak1MaxWriteableFiles) != PFS_NO_ERROR) {
            return PFS_PAK_BAD_READ;
        }
        if (osPfsFreeBlocks(&gControllerPak1FileHandle, &gControllerPak1NumPagesFree) != PFS_NO_ERROR) {
            return PFS_PAK_BAD_READ;
        }
        gControllerPak1NumPagesFree = gControllerPak1NumPagesFree >> 8;
    }

    if (gControllerPak1MaxWriteableFiles >= gControllerPak1NumFilesUsed) {
        return PFS_FILE_OVERFLOW;
    }
    if (gControllerPak1NumPagesFree >= 0x79) {
        return PFS_INVALID_DATA;
    }
    return PFS_FILE_OVERFLOW;
}

// gives status info about controller pak insterted in controller 2
s32 controller_pak_2_status(void) {   
    s32 stateBorrow = sControllerPak2State;
    
    if (stateBorrow) {
        switch (osPfsFindFile(&gControllerPak2FileHandle, gCompanyCode, gGameCode, gGameName, gExtCode, &gControllerPak2FileNote)) {
        	case PFS_NO_ERROR:
                return PFS_NO_ERROR;  
        	case PFS_ERR_INVALID:
                return PFS_INVALID_DATA;
        	default:
        	case PFS_ERR_NEW_PACK:
                sControllerPak2State = BAD;
                stateBorrow = BAD;
        }
    }
    if (!stateBorrow) {
        s32 errorCode;
        if (check_for_controller_pak(CONTROLLER_2) == NO_PAK) {
            return PFS_NO_PAK_INSERTED;
        }
            
        errorCode = osPfsInit(&gSIEventMesgQueue, &gControllerPak2FileHandle, CONTROLLER_2);
        if (errorCode) {
            switch (errorCode) {
            	case PFS_ERR_NOPACK:
            	case PFS_ERR_DEVICE:
                	return PFS_NO_PAK_INSERTED;
            	case PFS_ERR_ID_FATAL:
                	return PFS_PAK_BAD_READ;
            	case PFS_ERR_CONTRFAIL:
            	default:
                	return PFS_PAK_BAD_READ;
            }
        }

        sControllerPak2State = OK;
            
        switch (osPfsFindFile(&gControllerPak2FileHandle, gCompanyCode, gGameCode, gGameName, gExtCode, &gControllerPak2FileNote)) {
        case PFS_NO_ERROR:
            return PFS_NO_ERROR;
        case PFS_ERR_INVALID:
            return PFS_INVALID_DATA;
        case PFS_ERR_NEW_PACK:
        default:
            return PFS_PAK_BAD_READ;
        }
    }
}

s32 func_800B5F30(void) {
    s32 errorCode;

    if (gControllerPak1State) {
        return PFS_PAK_STATE_OK;
    }
    if (check_for_controller_pak(CONTROLLER_1) != NO_PAK) {
        errorCode = osPfsInit(&gSIEventMesgQueue, &gControllerPak1FileHandle, CONTROLLER_1);
        if (osPfsNumFiles(&gControllerPak1FileHandle, &gControllerPak1NumFilesUsed, &gControllerPak1MaxWriteableFiles) != PFS_NO_ERROR) {
            gControllerPak1State = BAD;
            return PFS_NUM_FILES_ERROR;
        }
        if (osPfsFreeBlocks(&gControllerPak1FileHandle, &gControllerPak1NumPagesFree) != PFS_NO_ERROR) {
            gControllerPak1State = BAD;
            return PFS_FREE_BLOCKS_ERROR;
        }
        gControllerPak1NumPagesFree = gControllerPak1NumPagesFree >> 8;
        if (errorCode == PFS_NO_ERROR) {
            gControllerPak1State = OK;
        }
        return errorCode;
    }
    return PAK_NOT_INSERTED;
}

s32 func_800B6014(void) {
    s32 errorCode;

    if (sControllerPak2State) {
        return PFS_PAK_STATE_OK;
    }
    if (check_for_controller_pak(CONTROLLER_2) != NO_PAK) {
        errorCode = osPfsInit(&gSIEventMesgQueue, &gControllerPak2FileHandle, CONTROLLER_2);
        if (errorCode == PFS_NO_ERROR) {
            sControllerPak2State = OK;
        }
        return errorCode;
    }
    return PAK_NOT_INSERTED;
}

s32 func_800B6088(s32 arg0) {
    struct_8018EE10_entry* temp_v1;

    temp_v1 = &D_8018EE10[arg0];
    temp_v1->checksum = func_800B6828(arg0);
    return osPfsReadWriteFile(&gControllerPak1FileHandle, gControllerPak1FileNote, PFS_WRITE, arg0 * 0x80 /* 0x80 == sizeof(struct_8018EE10_entry) */, sizeof(struct_8018EE10_entry), (u8*) temp_v1);
}

#ifdef NON_MATCHING

struct struct_D_800DC714
{
    u8 filler[0x100];
};

u8 func_800B60E8(s32 arg0)
{
    u8 *addr = *(s32 *)&D_800DC714 + (arg0 << 8);
    s32 checksum = 0, i;

    for (i = 0; i < sizeof(struct struct_D_800DC714); i++)
    {   
        checksum = i + ((arg0 + 1) * *addr++) + checksum;
    }
    return checksum; 
}

#else
GLOBAL_ASM("asm/non_matchings/menus/func_800B60E8.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit d9d3d6575355663122de59f6b2882d8f174e2355 on Dec-11-2022
s32 func_800B6178(s32 arg0) {
    s32 temp_v0;
    s32 var_s0_2;
    s32 var_v0;
    s32 var_v1;
    s8 temp_t0;
    s8 temp_t1;
    s8 temp_t3;
    s8 temp_t4;
    s8 temp_t5;
    s8 temp_t9;
    s8 var_s0;
    s8 var_s0_3;
    struct_8018EE10_entry *temp_s3;
    struct_8018EE10_entry *var_s1;
    struct_8018EE10_entry *var_s1_2;
    struct_8018EE10_entry *var_s1_3;
    u8 temp_v0_2;

    if ((arg0 != 0) && (arg0 != 1)) {
        return -1;
    }
    if (gGamestate == 4) {
        func_800051C4();
    }
    temp_s3 = &D_8018EE10[arg0];
    temp_s3->ghostDataSaved = 0;
    temp_v0 = func_800B6088(arg0);
    var_v1 = temp_v0;
    if (temp_v0 != 0) {
        temp_s3->ghostDataSaved = 0;
        var_s0 = 0;
        var_s1 = temp_s3;
        do {
            temp_t9 = var_s0 + 1;
            temp_t0 = var_s0 + 2;
            temp_t1 = var_s0 + 3;
            var_s1->unk_07[0] = var_s0;
            var_s0 += 4;
            var_s1->unk_07[3] = temp_t1;
            var_s1->unk_07[2] = temp_t0;
            var_s1->unk_07[1] = temp_t9;
            var_s1 += 4;
        } while (var_s0 != 0x3C);
    } else {
        var_v0 = osPfsReadWriteFile(&gControllerPak1FileHandle, gControllerPak1FileNote, 1U, (arg0 * 0x3C00) + 0x100, 0x00003C00, (u8 *) D_800DC714);
        var_v1 = var_v0;
        if (var_v0 == 0) {
            temp_s3->ghostDataSaved = 1;
            if (gGamestate == 4) {
                temp_s3->courseIndex = (gCupSelection * 4) + gCupCourseSelection;
            }
            var_s0_2 = 0;
            temp_s3->unk_00 = D_80162DFC;
            var_s1_2 = temp_s3;
            temp_s3->characterId = (u8) D_80162DE0;
            do {
                temp_v0_2 = func_800B60E8(var_s0_2);
                var_s0_2 += 1;
                var_s1_2 += 1;
                var_s1_2->characterId = temp_v0_2;
            } while (var_s0_2 != 0x0000003C);
            var_v0 = func_800B6088(arg0);
            var_v1 = var_v0;
        }
        if (var_v0 != 0) {
            temp_s3->ghostDataSaved = 0;
            var_s0_3 = 0;
            var_s1_3 = temp_s3;
            do {
                temp_t3 = var_s0_3 + 1;
                temp_t4 = var_s0_3 + 2;
                temp_t5 = var_s0_3 + 3;
                var_s1_3->unk_07[0] = var_s0_3;
                var_s0_3 += 4;
                var_s1_3->unk_07[3] = temp_t5;
                var_s1_3->unk_07[2] = temp_t4;
                var_s1_3->unk_07[1] = temp_t3;
                var_s1_3 += 4;
            } while (var_s0_3 != 0x3C);
        }
    }
    return var_v1;
}
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800B6178.s")
#endif

s32 func_800B6348(s32 arg0) {
    if ((D_8018EE10[0].ghostDataSaved != 0) && (arg0 == D_8018EE10[0].courseIndex)) {
        return 0;
    }
    if ((D_8018EE10[1].ghostDataSaved != 0) && (arg0 == D_8018EE10[1].courseIndex)) {
        return 1;
    }
    return 0;
}

s32 func_800B639C(s32 arg0) {
    if ((D_8018EE10[0].ghostDataSaved != 0) && (arg0 == D_8018EE10[0].courseIndex)) {
        return 0;
    }
    if ((D_8018EE10[1].ghostDataSaved != 0) && (arg0 == D_8018EE10[1].courseIndex)) {
        return 1;
    }
    return -1;
}

s32 func_800B63F0(s32 arg0) {
    s32 temp_s0;
    u8* phi_s1;
    s32 phi_s3;

    func_800051C4();
    D_80162DD6 = 1;
    func_80005AE8(gPlayerThree);
   
    phi_s3 = 0;
    if (((gCupSelection * 4) + gCupCourseSelection) != D_8018EE10[arg0].courseIndex) {
        phi_s3 = 2;
    } else if (D_80162DFC != D_8018EE10[arg0].unk_00) {
        phi_s3 = 3;
    } else {
        if (D_80162DE0 !=  (u8) D_8018EE10[arg0].characterId) {
            phi_s3 = 4;
        } else {
            temp_s0 = 0;
            phi_s1 = (u8*) &D_8018EE10[arg0];
            
            while (temp_s0 < 0x3C)
            {
                if (phi_s1[7] != func_800B60E8(temp_s0)) {
                   phi_s3 = 1;
                   break;
                }
                
                ++phi_s1;
                ++temp_s0;
            }
        }
    }

    return phi_s3;
}

s32 func_800B64EC(s32 arg0) {
    s32 temp_s0;
    s32 temp_v0;
    u8 *phi_s1;

    if ((arg0 != 0) && (arg0 != 1))
    {
        return -1;
    }

    temp_v0 = osPfsReadWriteFile(&gControllerPak1FileHandle, gControllerPak1FileNote, PFS_READ, (arg0 * 0x3C00) + 0x100, 0x3C00, (u8 *) D_800DC714);
    if (temp_v0 == 0)
    {
        phi_s1 = (u8 *) &D_8018EE10[arg0]; temp_s0 = 0; while (1) {

            if (phi_s1[7] != func_800B60E8(temp_s0)) {
                D_8018EE10[arg0].ghostDataSaved = 0;
                return -2;
            }

            ++phi_s1;
            if ((++temp_s0) == 0x3C) {
                func_8000522C();
                D_80162DD4[0] = 0;
                D_80162DE0 = (s32) D_8018EE10[arg0].characterId;
                D_80162DFC = D_8018EE10[arg0].unk_00;
                break;
            }
        }

    }

    return temp_v0;
}

#ifdef MIPS_TO_C
//generated by m2c commit d9d3d6575355663122de59f6b2882d8f174e2355 on Dec-11-2022
s32 func_800B65F4(s32 arg0, s32 arg1) {
    s32 sp34;
    s32 temp_v0;
    s32 var_s0;
    struct_8018EE10_entry *temp_s3;
    struct_8018EE10_entry *var_s1;
    u8 temp_v0_2;

    if ((arg0 != 0) && (arg0 != 1)) {
        return -1;
    }
    temp_v0 = osPfsReadWriteFile(&gControllerPak2FileHandle, gControllerPak2FileNote, 0U, (arg0 * 0x3C00) + 0x100, 0x00003C00, (u8 *) D_800DC714);
    sp34 = temp_v0;
    if (temp_v0 == 0) {
        temp_s3 = &D_8018D9C0[arg0];
        var_s1 = temp_s3;
        var_s0 = 0;
loop_5:
        temp_v0_2 = func_800B60E8(var_s0);
        var_s0 += 1;
        if ((u8) var_s1->unk_07[0] != temp_v0_2) {
            temp_s3->ghostDataSaved = 0;
            return -2;
        }
        var_s1 += 1;
        if (var_s0 == 0x0000003C) {
            D_80162DE0 = (s32) temp_s3->characterId;
            D_80162DFC = temp_s3->unk_00;
            *(&D_8018EE10->courseIndex + (arg1 << 7)) = temp_s3->courseIndex;
            goto block_9;
        }
        goto loop_5;
    }
block_9:
    return sp34;
}
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800B65F4.s")
#endif

void func_800B6708(void) {
    s32 temp_s0;

    osPfsReadWriteFile(&gControllerPak1FileHandle, gControllerPak1FileNote, PFS_READ, 0, 0x100 /*  2*sizeof(struct_8018EE10_entry) ? */, (u8*) &D_8018EE10);
 
    for (temp_s0 = 0; temp_s0 < 2; ++temp_s0) {
        if (D_8018EE10[temp_s0].checksum != func_800B6828(temp_s0)) {
            D_8018EE10[temp_s0].ghostDataSaved = 0;
        }
    }
}

void func_800B6798(void) {
    s32 temp_s0;
    u8* tmp;
    
    tmp = (u8*) D_8018D9C0;

    osPfsReadWriteFile(&gControllerPak2FileHandle, gControllerPak2FileNote, PFS_READ, 0, 0x100 /*  2*sizeof(struct_8018EE10_entry) ? */, tmp);

    for (temp_s0 = 0; temp_s0 < 2; ++temp_s0) {
        // if (D_8018D9C0[temp_s0]->checksum != func_800B68F4(temp_s0)) {
        //     D_8018D9C0[temp_s0]->ghostDataSaved = 0;
        // }
        if ( ((struct_8018EE10_entry*) (tmp + (temp_s0 << 7)))->checksum != func_800B68F4(temp_s0)) {
            ((struct_8018EE10_entry*) (tmp + (temp_s0 << 7)))->ghostDataSaved = 0;
        }
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
u8 func_800B6828(s32 arg0) {
    s32 temp_a2;
    s32 temp_lo;
    s32 temp_v1;
    s32 var_a1;
    s32 var_v1;
    struct_8018EE10_entry *temp_v0;
    u8 temp_t1;
    u8 temp_t4;
    u8 temp_t7;
    void *var_a3;

    temp_v0 = &D_8018EE10[arg0];
    temp_a2 = arg0 + 1;
    var_a3 = temp_v0 + 3;
    var_a1 = 3;
    var_v1 = (temp_v0->unk0 * temp_a2) + (temp_v0->unk1 * temp_a2) + 1 + (temp_v0->unk2 * temp_a2) + 2;
    do {
        temp_t7 = var_a3->unk1;
        temp_t1 = var_a3->unk2;
        temp_lo = var_a3->unk0 * temp_a2;
        temp_t4 = var_a3->unk3;
        var_a3 += 4;
        temp_v1 = var_v1 + (temp_lo + var_a1) + ((temp_t7 * temp_a2) + var_a1) + 1 + ((temp_t1 * temp_a2) + var_a1) + 2 + ((temp_t4 * temp_a2) + var_a1);
        var_a1 += 4;
        var_v1 = temp_v1 + 3;
    } while (var_a1 != 0x43);
    return var_v1 & 0xFF;
}
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800B6828.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern s32 D_8018D9C0;

s32 func_800B68F4(s32 arg0) {
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a3;
    void *temp_v0;
    void *temp_v1;
    s32 phi_a2;
    s32 phi_a1;

    temp_a3 = arg0 + 1;
    temp_v1 = (arg0 << 7) + D_8018D9C0;
    phi_a2 = 3;
    phi_a1 = (temp_v1->unk0 * temp_a3) + (temp_v1->unk1 * temp_a3) + 1 + (temp_v1->unk2 * temp_a3) + 2;
    do {
        temp_v0 = temp_v1 + phi_a2;
        temp_a2 = phi_a2 + 4;
        temp_a1 = phi_a1 + ((temp_v0->unk0 * temp_a3) + phi_a2) + ((temp_v0->unk1 * temp_a3) + phi_a2) + 1 + ((temp_v0->unk2 * temp_a3) + phi_a2) + 2 + ((temp_v0->unk3 * temp_a3) + phi_a2) + 3;
        phi_a2 = temp_a2;
        phi_a1 = temp_a1;
    } while (temp_a2 != 0x43);
    return temp_a1 & 0xFF;
}
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800B68F4.s")
#endif

#ifdef NON_MATCHING
// nonmacthing: the calculated offset (arg0 << 7) does not go into $a3 from the start
s32 func_800B69BC(s32 arg0) {
    struct_8018EE10_entry *plz;
    s32 offset;
    s32 i;

    //offset = arg0 * sizeof(struct_8018EE10_entry);
    plz = &D_8018EE10[arg0];

    plz->ghostDataSaved = FALSE;
    plz->courseIndex = 0;
    plz->characterId = 0;
    for (i = 0; i < 60; i++) {
        plz->unk_07[i] = i;
    }
    offset = arg0 << 7;
    plz->checksum = func_800B6828(arg0);
    return osPfsReadWriteFile(&gControllerPak1FileHandle, gControllerPak1FileNote, PFS_WRITE, offset, sizeof(struct_8018EE10_entry), (u8 *)plz);
}
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800B69BC.s")
#endif

s32 func_800B6A68(void) {
    UNUSED s32 pad;
    s32 ret;
    s32 i;

    ret = osPfsAllocateFile(&gControllerPak1FileHandle, gCompanyCode, gGameCode, (u8 *)&gGameName, (u8 *)&gExtCode, 0x7900, &gControllerPak1FileNote);
    if (ret == 0) {
        for (i = 0; i < 2; i++) {
            func_800B69BC(i);
        }
    }

    return ret;
}

void func_8800B6AF8(void) {
    if (check_for_controller_pak(CONTROLLER_1)
        && osPfsInit(&gSIEventMesgQueue, &gControllerPak1FileHandle, 0) == 0
        && osPfsFindFile(&gControllerPak1FileHandle, gCompanyCode, gGameCode, (u8 *)gGameName, (u8 *)gExtCode, &gControllerPak1FileNote)
        && osPfsNumFiles(&gControllerPak1FileHandle, &gControllerPak1NumFilesUsed, &gControllerPak1MaxWriteableFiles) == 0
        && gControllerPak1MaxWriteableFiles < gControllerPak1NumFilesUsed
        && osPfsFreeBlocks(&gControllerPak1FileHandle, &gControllerPak1NumPagesFree) == 0
    ) {
        gControllerPak1NumPagesFree >>= 8;
        if (gControllerPak1NumPagesFree >= 0x79) {
            func_800B6A68();
        }
    }
}
