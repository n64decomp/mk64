#include <ultra64.h>
#include <macros.h>
#include <defines.h>
#include "global.h"

#include "code_800B45E0.h"

#include "code_80091750.h"
#include "menus.h"
#include "staff_ghosts.h"

/*** macros ***/
#define PFS_COMPANY_CODE(c0, c1) ((u16)(((c0) << 8) | ((c1))))
#define PFS_GAME_CODE(c0, c1, c2, c3) ((u32)(((c0) << 24) | ((c1) << 16) | ((c2) << 8) | (c3)))
// calculate an eeprom address based off of the ram address of the SaveData variable
// very fragile!
#define EEPROM_ADDR(ptr) (((uintptr_t)(ptr) - (uintptr_t)(&D_8018EB90)) / 8)

/*** data ***/
u16 D_800E86F0 = PFS_COMPANY_CODE('0', '1');
u32 D_800E86F4 = PFS_GAME_CODE('N', 'K', 'T', 'J');
s8 D_800E86F8 = 0;
s8 D_800E86FC = 0;

/*** rodata ***/
// default time trial records?
const u8 D_800F2E60[4] = {0xc0, 0x27, 0x09, 0x00};
// osPfsFindFile -> game_name ("MARIOKART64" in nosFont)
const u8 D_800F2E64[] = {0x26, 0x1a, 0x2b, 0x22, 0x28, 0x24, 0x1a, 0x2b, 0x2d, 0x16, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00};
// ext_name param to osPfsFindFile (four total bytes, but only one is setable)
const u8 D_800F2E74[] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

/*** forward declarations ***/
s32 func_800B58C4(s32 arg0);

// new file start?
void func_800B45E0(s32 arg0) {
    CourseTimeTrialRecords* courseTimeTrialRecordsPtr = &D_8018EB90.allCourseTimeTrialRecords \
                                                        .cupRecords[arg0 / 4] \
                                                        .courseRecords[arg0 % 4];

    courseTimeTrialRecordsPtr->unknownBytes[5] = func_800B4874(arg0);
    osEepromLongWrite(&gSIEventMesgQueue, EEPROM_ADDR(courseTimeTrialRecordsPtr), (u8 *)courseTimeTrialRecordsPtr, sizeof(CourseTimeTrialRecords));
}

void write_save_data_grand_prix_points_and_sound_mode(void) {
    D_8018ED16 = compute_save_data_checksum_1();
    D_8018ED17 = compute_save_data_checksum_2();
    osEepromLongWrite(&gSIEventMesgQueue, EEPROM_ADDR(&D_8018ED10), (u8 *)&D_8018ED10, 8);
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

    courseTimeTrialRecords = &D_8018EB90.allCourseTimeTrialRecords \
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
    D_8018ED10.grandPrixPointsMushroomCup = 0;
    D_8018ED11 = 0;
    D_8018ED12 = 0;
    D_8018ED13 = 0;
    gSaveDataSoundMode = SOUND_STEREO;
    gSoundMode = SOUND_STEREO;
    func_800B44BC();
    write_save_data_grand_prix_points_and_sound_mode();
}

// checksum_timetrial_records
u8 func_800B4874(s32 courseIdx) {
    s32 j;
    s32 i;
    s32 ret;
    u8 *records = D_8018EB90.allCourseTimeTrialRecords \
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
    u8 *raw = (void *)&D_8018ED10;
    s32 i;
    s32 crc = 0;

    for (i = 0; i < 5; i++) {
        crc += ((raw[i] + 1) * (i + 1)) + i;
    }

    return crc % 0x100;
}

u8 compute_save_data_checksum_2(void) {
    s32 tmp = D_8018ED16 + 90;
    return (tmp % 256);
}

void load_save_data(void) {
    s32 i;

    osEepromLongRead(&gSIEventMesgQueue, EEPROM_ADDR(&D_8018EB90), (u8 *)&D_8018EB90, sizeof(SaveData));
    // 16: 4 cup records * 4 course records?
    for (i = 0; i < 16; i++) {
        func_800B4A9C(i);
    }
    
    validate_save_data();

    gSoundMode = gSaveDataSoundMode;
    if (gSoundMode >= NUM_SOUND_MODES) {
        gSoundMode = SOUND_MONO;
    }
}

#ifdef NON_MATCHING
// nonmatching: off in the copy time trials loop
// check integrity of time trial data?
void func_800B4A9C(s32 course) {
    CourseTimeTrialRecords *sp24;
    s32 i;

    if ((func_800B4EB4(0, course) & 0xFFFFF) < 0x927C0U) {
        D_8018EB90.allCourseTimeTrialRecords
            .cupRecords[course / 4]
            .courseRecords[course % 4]
            .unknownBytes[0] = 1;
    }
    sp24 = &D_8018EB90.allCourseTimeTrialRecords.cupRecords[course / 4].courseRecords[course % 4];
    
    func_800B4FB0(course);
    if(sp24) {}

    if (func_800B4874(course) != sp24->unknownBytes[5]) {
        func_800B4728(course);
        if (func_800B58C4(course) == 0) {
            s32 a3 = 0;

            for (i = 0; i < 3; i++) {
                sp24->records[0][i] = D_8018EB90.onlyBestTimeTrialRecords[course / 8].bestThreelaps[course % 8][i];
                sp24->records[5][i] = D_8018EB90.onlyBestTimeTrialRecords[course / 8].bestSinglelaps[course % 8][i];

                if ((D_8018EB90.onlyBestTimeTrialRecords[course / 8].bestThreelaps[course % 8][i] & 0xFF) == D_800F2E60[i]) {
                    if ((D_8018EB90.onlyBestTimeTrialRecords[course / 8].bestSinglelaps[course % 8][i] & 0xFF) == D_800F2E60[i]) {
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
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800B4A9C.s")
#endif

void validate_save_data(void) {
    if (D_8018ED16 != (compute_save_data_checksum_1()) || (D_8018ED17 != compute_save_data_checksum_2())) {
        reset_save_data_grand_prix_points_and_sound_mode();
        
        if (validate_save_data_checksum_backup() == 0) {
            D_8018ED10.grandPrixPointsMushroomCup = D_8018ED88.grandPrixPointsMushroomCup;
            if ((D_8018ED16 && D_8018ED16) && D_8018ED16)
            {
            }

            D_8018ED11 = D_8018ED89;
            if ((D_8018ED16 && D_8018ED16) && D_8018ED16)
            {
            }

            D_8018ED12 = D_8018ED8A;
            if ((D_8018ED16 && D_8018ED16) && D_8018ED16)
            {
            }

            D_8018ED13 = D_8018ED8B;
            if ((D_8018ED16 && D_8018ED16) && D_8018ED16)
            {
            }

            gSaveDataSoundMode = gSaveDataSoundModeBackup;
            D_8018ED16 = compute_save_data_checksum_backup_1();
            D_8018ED17 = compute_save_data_checksum_backup_2();
            osEepromLongWrite(&gSIEventMesgQueue, EEPROM_ADDR(&D_8018ED10), (u8 *)&D_8018ED10, 8);
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
        D_8018EB90.allCourseTimeTrialRecords \
        .cupRecords[(((gCupSelection * 4) + gCupCourseSelection) / 4)] \
        .courseRecords[(((gCupSelection * 4) + gCupCourseSelection) % 4)] \
        .records[recordIndex]
    );
}

// Get a time trial record, but take the course index as an argument
u32 func_800B4EB4(s32 recordIndex, s32 courseIndex) {
    return func_800B4DF4(
        D_8018EB90.allCourseTimeTrialRecords \
        .cupRecords[(courseIndex / 4)] \
        .courseRecords[(courseIndex % 4)] \
        .records[recordIndex]
    );
}

// Get Best Lap record of the inferred course index
s32 func_800B4F2C(void) {
    return func_800B4DF4(
        D_8018EB90.allCourseTimeTrialRecords \
        .cupRecords[(((gCupSelection * 4) + gCupCourseSelection) / 4)] \
        .courseRecords[(((gCupSelection * 4) + gCupCourseSelection) % 4)] \
        .records[TIME_TRIAL_1LAP_RECORD]
    );
}

// Get the best single lap time record of the given course index
s32 func_800B4FB0(s32 courseIndex) {
    return func_800B4DF4(
        D_8018EB90.allCourseTimeTrialRecords \
        .cupRecords[(courseIndex / 4)] \
        .courseRecords[(courseIndex % 4)] \
        .records[TIME_TRIAL_1LAP_RECORD]
    );
}

#ifdef NON_MATCHING
// nonmatching: the loops
s32 func_800B5020(u32 time, s32 charId) {
    s32 course; // sp30
    CourseTimeTrialRecords *tt;
    s32 i, j;

    course = gCupSelection * 4 + gCupCourseSelection;
    tt = &D_8018EB90.allCourseTimeTrialRecords
        .cupRecords[course / 4]
        .courseRecords[course % 4];

    for (i = 0; i < 5; i++) {
        // L800B50C4
        if (time < (func_800B4DF4(tt->records[i]) & 0x000FFFFF)) {
            break;
        }
    }
    // L800B50EC
    if (i >= 5) {
        return -1;
    }
    // L800B50FC
    if (i < 4) {
        //s32 idx = -((4 - i) & 3);

        for (j = 4; j > (4 - i); j--) {
            tt->records[j][0] = tt->records[j - 1][0];
            tt->records[j][1] = tt->records[j - 1][1];
            tt->records[j][2] = tt->records[j - 1][2];
        }
        // L800B5154
        for ( ; j != i; j--) {
            tt->records[j][0] = tt->records[j - 1][0];
            tt->records[j][1] = tt->records[j - 1][1];
            tt->records[j][2] = tt->records[j - 1][2];
        }
    }
    // L800B51D0
    populate_time_trial_record(tt->records[i], time, charId);
    tt->unknownBytes[0] = 1;
    func_800B45E0(course);

    return i;
}
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800B5020.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 792017ad9d422c2467bd42686f383a5c41f41c75
? populate_time_trial_record(u8 *, u32, s32, s32);  /* extern */
extern ? D_8018CA74;
s8 gCharacterSelections[4];                         /* unable to generate initializer; const */

s32 func_800B5218(void) {
    s32 sp38;
    s32 sp28;
    s32 sp24;
    u8 *sp20;
    struct_8018CA70_entry *sp18;
    ? *temp_a1;
    s32 temp_a0;
    s32 temp_v0;
    s32 temp_v1;
    u32 temp_a1_2;
    u8 *temp_v0_2;
    ? *phi_a1;
    struct_8018CA70_entry *phi_a2;
    s32 phi_v0;
    struct_8018CA70_entry *phi_a2_2;
    s32 phi_a3;
    s32 phi_v0_2;
    s32 phi_a3_2;

    sp38 = (gCupSelection * 4) + gCupCourseSelection;
    sp28 = (s32) *gCharacterSelections;
    phi_a1 = &D_8018CA74;
    phi_a2 = D_8018CA70;
    phi_v0 = 1;
    phi_a3_2 = 1;
    do {
        temp_v1 = phi_a1->unk20;
        temp_a0 = phi_a2->lap1Duration;
        phi_a2_2 = phi_a2;
        phi_a3 = phi_a3_2;
        if (temp_v1 < temp_a0) {
            phi_a2_2 = (phi_v0 * 4) + D_8018CA70;
            phi_a3 = 1 << phi_v0;
        } else if (temp_a0 == temp_v1) {
            phi_a3 = phi_a3_2 | (1 << phi_v0);
        }
        temp_v0 = phi_v0 + 1;
        temp_a1 = phi_a1 + 4;
        phi_a1 = temp_a1;
        phi_a2 = phi_a2_2;
        phi_v0 = temp_v0;
        phi_a3_2 = phi_a3;
    } while (temp_v0 != 3);
    sp18 = phi_a2_2;
    sp24 = phi_a3;
    temp_a1_2 = phi_a2_2->lap1Duration;
    phi_v0_2 = 0;
    if (temp_a1_2 < (u32) (func_800B4F2C(temp_a0, temp_a1, phi_a2_2, phi_a3) & 0xFFFFF)) {
        temp_v0_2 = &D_8018EB90.allCourseTimeTrialRecords.cupRecords[sp38].courseRecords[sp38].records[0];
        sp20 = temp_v0_2;
        sp24 = phi_a3;
        populate_time_trial_record(temp_v0_2 + 0xF, temp_a1_2, sp28, phi_a3);
        temp_v0_2->unk12 = 1;
        func_800B45E0(sp38);
        phi_v0_2 = sp24;
    }
    return phi_v0_2;
}
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800B5218.s")
#endif

void func_800B536C(s32 arg0) {
    u8* points;
    u8 tmp;
    s32 tmp2;

    if (arg0 >= 0) {
        points = &D_8018EB90.grandPrixPoints[gCCSelection];
        
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
        points = &D_8018EB90.grandPrixPoints[arg1 % 4];
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
    return func_800B54EC(cup, D_8018ED10.grandPrixPointsArray[cc_mode]);
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
    if (D_8018ED10.grandPrixPointsArray[cc_mode] == 0xFF) {
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
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_800B4874(s32, void *, void *); // extern
s8 func_800B578C(s32, void *, void *); // extern
s8 func_800B5888(s32); // extern
extern u8 D_800F2E60;
extern ? D_8018EB90;
extern OSMesgQueue gSIEventMesgQueue;

void func_800B559C(s32 arg0, void *arg1, void *arg2) {
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s6;
    s32 temp_v0;
    s32 temp_v0_2;
    u8 *temp_s2_2;
    void *temp_a0;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a2;
    void *temp_s2;
    void *temp_v1;
    void *temp_v1_2;
    s32 phi_s1;
    void *phi_a1;
    void *phi_a2;
    u8 *phi_a0;
    s32 phi_v0;
    s32 phi_v0_2;
    void *phi_a1_2;
    void *phi_a2_2;
    void *phi_a1_3;

    temp_s6 = arg0 / 8;
    temp_s1 = temp_s6 * 8;
    phi_s1 = temp_s1;
    phi_a1 = arg1;
    phi_a2 = arg2;
    phi_a1_2 = arg1;
    phi_a2_2 = arg2;
    if (temp_s1 < (temp_s1 + 8)) {
        temp_s2 = (temp_s6 * 0x38) + 0x188 + &D_8018EB90;
        do {
            temp_a2 = &D_8018EB90 + ((phi_s1 / 4) * 0x60) + ((phi_s1 % 4) * 0x18);
            phi_a2 = temp_a2;
            phi_a0 = &D_800F2E60;
            phi_v0 = 0;
            phi_v0_2 = 0;
            phi_a2_2 = temp_a2;
            if (temp_a2->unk17 != func_800B4874(phi_s1, phi_a1, phi_a2)) {
                temp_a1 = temp_s2 + ((phi_s1 % 8) * 3);
                phi_a1_3 = temp_a1;
                do {
                    temp_v1 = temp_a1 + phi_v0;
                    temp_v0 = phi_v0 + 1;
                    temp_v1->unk0 = *phi_a0;
                    temp_v1->unk18 = *phi_a0;
                    phi_a0 += 1;
                    phi_v0 = temp_v0;
                } while (temp_v0 != 3);
            } else {
                temp_a1_2 = temp_s2 + ((phi_s1 % 8) * 3);
                phi_a1_3 = temp_a1_2;
                do {
                    temp_a0 = temp_a2 + phi_v0_2;
                    temp_v1_2 = temp_a1_2 + phi_v0_2;
                    temp_v0_2 = phi_v0_2 + 1;
                    temp_v1_2->unk0 = temp_a0->unk0;
                    temp_v1_2->unk18 = temp_a0->unkF;
                    phi_v0_2 = temp_v0_2;
                } while (temp_v0_2 != 3);
            }
            temp_s1_2 = phi_s1 + 1;
            phi_s1 = temp_s1_2;
            phi_a1 = phi_a1_3;
            phi_a1_2 = phi_a1_3;
        } while (temp_s1_2 < ((temp_s6 * 8) + 8));
    }
    temp_s2_2 = &D_8018EB90 + (temp_s6 * 0x38) + 0x188;
    temp_s2_2->unk36 = func_800B578C(temp_s6, phi_a1_2, phi_a2_2);
    temp_s2_2->unk37 = func_800B5888(temp_s6);
    osEepromLongWrite(&gSIEventMesgQueue, ((temp_s2_2 - &D_8018EB90) >> 3) & 0xFF, temp_s2_2, 0x38);
}
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800B559C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern ? D_8018EB90;

s32 func_800B578C(s32 arg0) {
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_v1;
    u8 *temp_a2;
    void *temp_a3;
    s32 phi_a0;
    s32 phi_v0;
    s32 phi_v1;
    void *phi_a3;
    s32 phi_v1_2;
    u8 *phi_t0;
    u8 *phi_a2;

    temp_a2 = (arg0 * 0x38) + 0x188 + &D_8018EB90;
    phi_v0 = 0;
    phi_v1_2 = 0;
    phi_t0 = temp_a2;
    phi_a2 = temp_a2;
    do {
        temp_a1 = phi_v0 + 1;
        phi_a0 = 1;
        phi_v0 = temp_a1;
        phi_v1 = phi_v1_2 + ((*phi_t0 + 1) * temp_a1);
        phi_a3 = phi_a2 + 1;
        phi_a2 += 0x11;
loop_2:
        temp_a3 = phi_a3 + 4;
        temp_a0 = phi_a0 + 4;
        temp_v1 = phi_v1 + ((phi_a3->unk0 + 1) * temp_a1) + phi_a0 + ((phi_a3->unk1 + 1) * temp_a1) + phi_a0 + 1 + ((temp_a3->unk-2 + 1) * temp_a1) + phi_a0 + 2 + ((temp_a3->unk-1 + 1) * temp_a1) + phi_a0 + 3;
        phi_a0 = temp_a0;
        phi_v1 = temp_v1;
        phi_a3 = temp_a3;
        phi_v1_2 = temp_v1;
        if (temp_a0 != 0x11) {
            goto loop_2;
        }
        phi_t0 += 0x11;
    } while (temp_a1 != 3);
    return (temp_v1 % 0x100) & 0xFF;
}
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800B578C.s")
#endif

s32 func_800B5888(s32 arg0) {
    s32 tmp = ((*(&D_8018ED4E + (arg0 * sizeof(OnlyBestTimeTrialRecords))) + 90));
    return (tmp % 256) & 0xFF;
}

s32 func_800B58C4(s32 arg0)
{
    UNUSED s32 pad1;
    OnlyBestTimeTrialRecords *temp_v1;
    UNUSED s32 pad2;
    UNUSED s32 pad3;

    temp_v1 = &D_8018EB90.onlyBestTimeTrialRecords[arg0 / 8];
    if ((temp_v1->unknownBytes[6] != (func_800B578C(arg0 / 8) ^ 0)) || (temp_v1->unknownBytes[7] != (func_800B5888(arg0 / 8) ^ 0)))
    {
        return 1;
    }

    return 0;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s8 compute_save_data_checksum_backup_1(); // extern
s8 compute_save_data_checksum_backup_2(); // extern
extern ? D_8018EB90;
extern union GrandPrixPointsUnion D_8018ED10;
extern u8 D_8018ED11;
extern u8 D_8018ED12;
extern u8 D_8018ED13;
extern u8 gSaveDataSoundMode;
extern union GrandPrixPointsUnion D_8018ED88;
extern u8 D_8018ED89;
extern u8 D_8018ED8A;
extern u8 D_8018ED8B;
extern u8 gSaveDataSoundModeBackup;
extern s8 D_8018ED8E;
extern s8 D_8018ED8F;
extern OSMesgQueue gSIEventMesgQueue;

void update_save_data_backup(void) {
    D_8018ED88.grandPrixPointsMushroomCup = D_8018ED10.grandPrixPointsMushroomCup;
    D_8018ED89 = D_8018ED11;
    D_8018ED8A = D_8018ED12;
    D_8018ED8B = D_8018ED13;
    gSaveDataSoundModeBackup = gSaveDataSoundMode;
    D_8018ED8E = compute_save_data_checksum_backup_1();
    D_8018ED8F = compute_save_data_checksum_backup_2();
    osEepromLongWrite(&gSIEventMesgQueue, ((&D_8018ED88 - &D_8018EB90) >> 3) & 0xFF, &D_8018ED88, 8);
}
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800B5948.s")
#endif

u8 compute_save_data_checksum_backup_1(void) {
    u8 *raw = (void *)&D_8018ED88;
    s32 i;
    s32 crc = 0;

    for (i = 0; i < 5; i++) {
        crc += ((raw[i] + 1) * (i + 1)) + i;
    }

    return crc % 0x100;
}

u8 compute_save_data_checksum_backup_2(void) {
    s32 tmp = D_8018ED8E + 90;
    return (tmp % 256);
}

s32 validate_save_data_checksum_backup(void)
{
    if (D_8018ED8E != compute_save_data_checksum_backup_1() || D_8018ED8F != compute_save_data_checksum_backup_2()) {
        return 1;
    }

    return 0;
}

// Check if controller has a Controller Pak connected.
// Return 1 if it does, otherwise return 0.
s32 check_for_controller_pak(s32 controller) {
    u8 sp1F;
    UNUSED s32 phi_v0;

    if ((controller >= 4) || (controller < 0)) {
        return 0;
    }

    osPfsIsPlug(&gSIEventMesgQueue, &sp1F);

    if ((sp1F & (1 << controller)) != 0) {
        return 1;
    }

    return 0;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 check_for_controller_pak(s32); // extern
s32 osPfsInit(? *, OSPfs *, ?); // extern
extern u16 D_800E86F0;
extern u32 D_800E86F4;
extern s8 D_800E86F8;
extern u8 D_800F2E64;
extern u8 D_800F2E74;
extern OSPfs D_8018E868;
extern s32 D_8018EB78;
extern s32 D_8018EB7C;
extern s32 gControllerPakNumPagesFree;
extern s32 D_8018EB84;
extern ? gSIEventMesgQueue;

? func_800B5B94(void) {
    s32 temp_v0_2;
    s32 temp_v0_3;
    s8 temp_v0;
    s8 phi_v0;
    ? phi_v0_2;

    temp_v0 = D_800E86F8;
    phi_v0 = temp_v0;
    if (temp_v0 != 0) {
        temp_v0_2 = osPfsFindFile(&D_8018E868, D_800E86F0, D_800E86F4, &D_800F2E64, &D_800F2E74, &D_8018EB84);
        if (temp_v0_2 != 0) {
            if (temp_v0_2 != 2) {
                if (temp_v0_2 != 5) {
                    D_800E86F8 = 0;
                    goto block_8;
                }
                phi_v0 = D_800E86F8;
            } else {
                D_800E86F8 = 0;
block_8:
                phi_v0 = 0;
            }
            goto block_9;
        }
        return 0;
    }
block_9:
    if (phi_v0 == 0) {
        if (check_for_controller_pak(0) == 0) {
            return 1;
        }
        temp_v0_3 = osPfsInit(&gSIEventMesgQueue, &D_8018E868, 0);
        if (temp_v0_3 != 0) {
            if (temp_v0_3 != 1) {
                if (temp_v0_3 != 4) {
                    if (temp_v0_3 != 0xA) {
                        if (temp_v0_3 == 0xB) {
                            goto block_17;
                        }
                        goto block_19;
                    }
                    return 2;
                }
block_19:
                return 2;
            }
block_17:
            return 1;
        }
        D_800E86F8 = 1;
        if (osPfsFindFile(&D_8018E868, D_800E86F0, D_800E86F4, &D_800F2E64, &D_800F2E74, &D_8018EB84) == 0) {
            return 0;
        }
        if (osPfsNumFiles(&D_8018E868, &D_8018EB78, &D_8018EB7C) != 0) {
            return 2;
        }
        if (osPfsFreeBlocks(&D_8018E868, &gControllerPakNumPagesFree) != 0) {
            return 2;
        }
        gControllerPakNumPagesFree = gControllerPakNumPagesFree >> 8;
        goto block_27;
    }
block_27:
    if (D_8018EB7C >= D_8018EB78) {
        return 4;
    }
    phi_v0_2 = 4;
    if (gControllerPakNumPagesFree >= 0x79) {
        phi_v0_2 = -1;
    }
    return phi_v0_2;
}
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800B5B94.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 check_for_controller_pak(?); // extern
s32 osPfsInit(? *, OSPfs *, ?); // extern
extern u16 D_800E86F0;
extern u32 D_800E86F4;
extern s8 D_800E86FC;
extern u8 D_800F2E64;
extern u8 D_800F2E74;
extern OSPfs D_8018E8D0;
extern s32 D_8018EB88;
extern ? gSIEventMesgQueue;

s8 func_800B5DA4(void) {
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s8 temp_v0;
    s8 phi_v0;
    s8 phi_v0_2;

    temp_v0 = D_800E86FC;
    phi_v0 = temp_v0;
    if (temp_v0 != 0) {
        temp_v0_2 = osPfsFindFile(&D_8018E8D0, D_800E86F0, D_800E86F4, &D_800F2E64, &D_800F2E74, &D_8018EB88);
        if (temp_v0_2 != 0) {
            if (temp_v0_2 != 2) {
                if (temp_v0_2 != 5) {
                    goto block_7;
                }
                return -1;
            }
block_7:
            D_800E86FC = 0;
            phi_v0 = 0;
            goto block_8;
        }
        return 0;
    }
block_8:
    phi_v0_2 = phi_v0;
    if (phi_v0 == 0) {
        if (check_for_controller_pak(1) == 0) {
            return 1;
        }
        temp_v0_3 = osPfsInit(&gSIEventMesgQueue, &D_8018E8D0, 1);
        if (temp_v0_3 != 0) {
            if (temp_v0_3 != 1) {
                if (temp_v0_3 != 4) {
                    if (temp_v0_3 != 0xA) {
                        if (temp_v0_3 == 0xB) {
                            goto block_16;
                        }
                        goto block_18;
                    }
                    goto block_25;
                }
block_18:
                goto block_25;
            }
block_16:
            return 1;
        }
        D_800E86FC = 1;
        temp_v0_4 = osPfsFindFile(&D_8018E8D0, D_800E86F0, D_800E86F4, &D_800F2E64, &D_800F2E74, &D_8018EB88);
        if (temp_v0_4 != 0) {
            if (temp_v0_4 != 2) {
                if (temp_v0_4 != 5) {
                    goto block_25;
                }
                return -1;
            }
block_25:
            phi_v0_2 = 2;
            // Duplicate return node #26. Try simplifying control flow for better match
            return phi_v0_2;
        }
        return 0;
    }
    return phi_v0_2;
}
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800B5DA4.s")
#endif

s32 func_800B5F30(void) {
    s32 sp1C;

    if (D_800E86F8 != 0) {
        return -4;
    }
    if (check_for_controller_pak(0) != 0) {
        sp1C = osPfsInit(&gSIEventMesgQueue, &D_8018E868, 0);
        if (osPfsNumFiles(&D_8018E868, &D_8018EB78, &D_8018EB7C) != 0) {
            D_800E86F8 = 0;
            return -2;
        }
        if (osPfsFreeBlocks(&D_8018E868, &gControllerPakNumPagesFree) != 0) {
            D_800E86F8 = 0;
            return -3;
        }
        gControllerPakNumPagesFree = gControllerPakNumPagesFree >> 8;
        if (sp1C == 0) {
            D_800E86F8 = 1;
        }
        return sp1C;
    }
    return -1;
}

s32 func_800B6014(void) {
    s32 temp_v0;

    if (D_800E86FC != 0) {
        return -4;
    }
    if (check_for_controller_pak(1) != 0) {
        temp_v0 = osPfsInit(&gSIEventMesgQueue, &D_8018E8D0, 1);
        if (temp_v0 == 0) {
            D_800E86FC = 1;
        }
        return temp_v0;
    }
    return -1;
}

s32 func_800B6088(s32 arg0) {
    struct_8018EE10_entry* temp_v1;

    temp_v1 = &D_8018EE10[arg0];
    temp_v1->checksum = func_800B6828(arg0);
    return osPfsReadWriteFile(&D_8018E868, D_8018EB84, PFS_WRITE, arg0 * 0x80 /* 0x80 == sizeof(struct_8018EE10_entry) */, sizeof(struct_8018EE10_entry), (u8*) temp_v1);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern s32 D_800DC714;

s32 func_800B60E8(s32 arg0) {
    s32 temp_a2;
    s32 temp_v0;
    s32 temp_v1;
    s32 phi_v0;
    s32 phi_v1;
    void *phi_a1;

    temp_a2 = arg0 + 1;
    phi_v0 = 0;
    phi_v1 = 0;
    phi_a1 = D_800DC714 + (arg0 << 8);
    do {
        temp_v0 = phi_v0 + 4;
        temp_v1 = phi_v1 + ((phi_a1->unk0 * temp_a2) + phi_v0) + ((phi_a1->unk1 * temp_a2) + phi_v0) + 1 + ((phi_a1->unk2 * temp_a2) + phi_v0) + 2 + ((phi_a1->unk3 * temp_a2) + phi_v0) + 3;
        phi_v0 = temp_v0;
        phi_v1 = temp_v1;
        phi_a1 += 4;
    } while (temp_v0 != 0x100);
    return temp_v1 & 0xFF;
}
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800B60E8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800051C4(); // extern
s32 func_800B6088(s32); // extern
s8 func_800B60E8(s32); // extern
extern u8 *D_800DC714;
extern s32 D_80162DFC;
extern OSPfs D_8018E868;
extern s32 D_8018EB84;
extern ? D_8018EE10;
extern s8 gCupSelection;

s32 func_800B6178(s32 arg0) {
    s32 temp_s0_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v1;
    s8 temp_s0;
    s8 temp_s0_3;
    void *temp_s1;
    void *temp_s3;
    s8 phi_s0;
    void *phi_s1;
    s32 phi_s0_2;
    void *phi_s1_2;
    s32 phi_v0;
    s8 phi_s0_3;
    void *phi_s1_3;
    s32 phi_v1;

    if ((arg0 != 0) && (arg0 != 1)) {
        return -1;
    }
    if (gGamestate == RACING) {
        func_800051C4();
    }
    temp_s3 = (arg0 << 7) + &D_8018EE10;
    temp_s3->unk4 = 0;
    temp_v0 = func_800B6088(arg0);
    temp_v1 = temp_v0;
    phi_v1 = temp_v1;
    if (temp_v0 != 0) {
        temp_s3->unk4 = 0;
        phi_s0 = 0;
        phi_s1 = temp_s3;
        do {
            phi_s1->unk7 = phi_s0;
            temp_s0 = phi_s0 + 4;
            phi_s1->unkA = phi_s0 + 3;
            phi_s1->unk9 = phi_s0 + 2;
            phi_s1->unk8 = phi_s0 + 1;
            phi_s0 = temp_s0;
            phi_s1 += 4;
        } while (temp_s0 != 0x3C);
    } else {
        temp_v0_2 = osPfsReadWriteFile(&D_8018E868, D_8018EB84, 1, (arg0 * 0x3C00) + 0x100, 0x3C00, D_800DC714);
        phi_v0 = temp_v0_2;
        phi_v1 = temp_v0_2;
        if (temp_v0_2 == 0) {
            temp_s3->unk4 = 1;
            if (gGamestate == RACING) {
                temp_s3->unk5 = (gCupSelection * 4) + gCupCourseSelection;
            }
            temp_s3->unk0 = D_80162DFC;
            temp_s3->unk6 = D_80162DE0;
            phi_s0_2 = 0;
            phi_s1_2 = temp_s3;
            do {
                temp_s0_2 = phi_s0_2 + 1;
                temp_s1 = phi_s1_2 + 1;
                temp_s1->unk6 = func_800B60E8(phi_s0_2);
                phi_s0_2 = temp_s0_2;
                phi_s1_2 = temp_s1;
            } while (temp_s0_2 != 0x3C);
            temp_v0_3 = func_800B6088(arg0);
            phi_v0 = temp_v0_3;
            phi_v1 = temp_v0_3;
        }
        if (phi_v0 != 0) {
            temp_s3->unk4 = 0;
            phi_s0_3 = 0;
            phi_s1_3 = temp_s3;
            do {
                phi_s1_3->unk7 = phi_s0_3;
                temp_s0_3 = phi_s0_3 + 4;
                phi_s1_3->unkA = phi_s0_3 + 3;
                phi_s1_3->unk9 = phi_s0_3 + 2;
                phi_s1_3->unk8 = phi_s0_3 + 1;
                phi_s0_3 = temp_s0_3;
                phi_s1_3 += 4;
            } while (temp_s0_3 != 0x3C);
        }
    }
    return phi_v1;
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

    temp_v0 = osPfsReadWriteFile(&D_8018E868, D_8018EB84, PFS_READ, (arg0 * 0x3C00) + 0x100, 0x3C00, (u8 *) D_800DC714);
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
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_800B60E8(s32); // extern
extern u8 *D_800DC714;
extern s32 D_80162DFC;
extern s32 D_8018D9C0;
extern OSPfs D_8018E8D0;
extern s32 D_8018EB88;
extern ? D_8018EE15;

s32 func_800B65F4(s32 arg0, s32 arg1) {
    s32 sp34;
    s32 temp_s0;
    s32 temp_v0;
    void *temp_s3;
    s32 phi_s0;
    void *phi_s1;

    if ((arg0 != 0) && (arg0 != 1)) {
        return -1;
    }
    temp_v0 = osPfsReadWriteFile(&D_8018E8D0, D_8018EB88, 0, (arg0 * 0x3C00) + 0x100, 0x3C00, D_800DC714);
    sp34 = temp_v0;
    if (temp_v0 == 0) {
        temp_s3 = D_8018D9C0 + (arg0 << 7);
        phi_s0 = 0;
        phi_s1 = temp_s3;
loop_5:
        temp_s0 = phi_s0 + 1;
        phi_s0 = temp_s0;
        if (phi_s1->unk7 != func_800B60E8(phi_s0)) {
            temp_s3->unk4 = 0;
            return -2;
        }
        phi_s1 += 1;
        if (temp_s0 == 0x3C) {
            D_80162DE0 = temp_s3->unk6;
            D_80162DFC = temp_s3->unk0;
            *(&D_8018EE15 + (arg1 << 7)) = temp_s3->unk5;
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

    osPfsReadWriteFile(&D_8018E868, D_8018EB84, PFS_READ, 0, 0x100 /*  2*sizeof(struct_8018EE10_entry) ? */, (u8*) &D_8018EE10);
 
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

    osPfsReadWriteFile(&D_8018E8D0, D_8018EB88, PFS_READ, 0, 0x100 /*  2*sizeof(struct_8018EE10_entry) ? */, tmp);

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
    return osPfsReadWriteFile(&D_8018E868, D_8018EB84, PFS_WRITE, offset, sizeof(struct_8018EE10_entry), (u8 *)plz);
}
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800B69BC.s")
#endif

s32 func_800B6A68(void) {
    UNUSED s32 pad;
    s32 ret;
    s32 i;

    ret = osPfsAllocateFile(&D_8018E868, D_800E86F0, D_800E86F4, (u8 *)&D_800F2E64, (u8 *)&D_800F2E74, 0x7900, &D_8018EB84);
    if (ret == 0) {
        for (i = 0; i < 2; i++) {
            func_800B69BC(i);
        }
    }

    return ret;
}

void func_8800B6AF8(void) {
    if (check_for_controller_pak(0)
        && osPfsInit(&gSIEventMesgQueue, &D_8018E868, 0) == 0
        && osPfsFindFile(&D_8018E868, D_800E86F0, D_800E86F4, (u8 *)D_800F2E64, (u8 *)D_800F2E74, &D_8018EB84)
        && osPfsNumFiles(&D_8018E868, &D_8018EB78, &D_8018EB7C) == 0
        && D_8018EB7C < D_8018EB78
        && osPfsFreeBlocks(&D_8018E868, &gControllerPakNumPagesFree) == 0
    ) {
        gControllerPakNumPagesFree >>= 8;
        if (gControllerPakNumPagesFree >= 0x79) {
            func_800B6A68();
        }
    }
}
