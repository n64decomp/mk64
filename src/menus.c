#include <ultra64.h>
#include <macros.h>
#include <defines.h>
#include <global.h>

#include "menus.h"

#include "audio/external.h"
#include "code_80091750.h"
#include <common_structs.h>
#include "code_800AF9B0.h"
#include "code_800B45E0.h"
#include "main.h"


/* const/rodata data */
// used to set gScreenModeSelection; might be smaller; could be function static data
const s8 D_800F2B50[] = {0, 1, 2, 3, 3, 0, 0, 0};

// set to D_8018EDF3, then that sets gPlayerCountSelection1
const s8 D_800F2B58[] = {1, 2, 2, 3, 4, 0, 0, 0};
//const s8 D_800F2B5F = 0; // probably part of above array; terminator?

// probably combined...
//const s8 D_800F2B60 = 1;
//const s8 D_800F2B61[] = {2, 1, 1, 2, 1, 0, 2, 2, 0, 2, 0, 0};
//const s8 D_800F2B6D[] = {2, 0, 0};
const s8 D_800F2B60[] = {1, 2, 1, 1, 2, 1, 0, 2, 2, 0, 2, 0, 0, 2, 0, 0};

// is this another union GameModePack? Figure out when decomping.
const s32 gGameModeFromNumPlayersAndRowSelection[5][3] = {
    { 0x03010003, 0x03000300, 0x00030000 },
    { 0x00000000, 0x00000001, 0x00000000 },
    { 0x00000000, 0x00000002, 0x00000003 },
    { 0x00000002, 0x00000003, 0x00000000 },
    { 0x00000002, 0x00000003, 0x00000000 },
};

const s8 D_800F2BAC[] = { 0x00, 0x01, 0x06, 0x03, 0x02, 0x04, 0x05, 0x07 };

const s16 gCupCourseOrder[5][4] = {
    // mushroom cup
    { COURSE_LUIGI_RACEWAY, COURSE_MOO_MOO_FARM, COURSE_KOOPA_BEACH, COURSE_KALAMARI_DESERT },
    // flower cup
    { COURSE_TOADS_TURNPIKE, COURSE_FRAPPE_SNOWLAND, COURSE_CHOCO_MOUNTAIN, COURSE_MARIO_RACEWAY },
    // star cup
    { COURSE_WARIO_STADIUM, COURSE_SHERBET_LAND, COURSE_ROYAL_RACEWAY, COURSE_BOWSER_CASTLE },
    // special cup
    { COURSE_DK_JUNGLE, COURSE_YOSHI_VALLEY, COURSE_BANSHEE_BOARDWALK, COURSE_RAINBOW_ROAD },
    // battle mode
    { COURSE_BIG_DONUT, COURSE_BLOCK_FORT, COURSE_DOUBLE_DECK, COURSE_SKYSCRAPER },
};

const s8 D_800F2BDC[] = {1, 0, 0, 0, 0, 1, 3, 4};

// needs to be a union (or array...?) to go into rodata as a const
// terrible for endianness... Best guess as to what this is for..
union GameModePack {
    u8  modes[4];
    s32 word;
};
const union GameModePack D_800F2BE4 = { {0, 1, 2, 3} };

/**** External Function to be moved into proper headers ****/
extern void func_800C3448(s32);
// not in a libultra header?
extern void rmonPrintf(const char *, ...);

void func_800B0350(void) {
    u16 controllerIdx;

    if (D_800E86A4 == 0) {
        for (controllerIdx = 0; controllerIdx < 4; controllerIdx++) {
            if ((func_800B4520() == 0) && (gEnableDebugMode != 0) && ((gControllers[controllerIdx].buttonPressed & 0x1000) != 0)) {
                // this is certainly a way to write these...
                switch (gMenuSelection) {
                    case COURSE_SELECT_MENU:
                        func_800CA330(0x19);
                        // deliberate (?) fallthru
                    case MAIN_MENU:
                    case PLAYER_SELECT_MENU:
                        play_sound2(0x49008016);
                        break;
                }

                switch (gMenuSelection) {
                    case CONTROLLER_PAK_MENU:
                    case START_MENU:
                        break;
                    default:
                        func_8009E1C0();
                }
            }
            osViSetSpecialFeatures(D_800E86E4);
            switch (gMenuSelection) {
            case OPTIONS_MENU:
                func_800B053C(&gControllers[controllerIdx], controllerIdx);
                break;
            case DATA_MENU:
                func_800B13B0(&gControllers[controllerIdx], controllerIdx);
                break;
            case COURSE_DATA_MENU:
                func_800B15AC(&gControllers[controllerIdx], controllerIdx);
                break;
            case LOGO_INTRO_MENU:
                func_800B1C40(&gControllers[controllerIdx], controllerIdx);
                break;
            case CONTROLLER_PAK_MENU:
                if (controllerIdx == 0) {
                    func_800B1C90(&gControllers[controllerIdx], controllerIdx);
                }
                break;
            case START_MENU_FROM_QUIT:
            case START_MENU:
                func_800B20F4(&gControllers[controllerIdx], controllerIdx);
                break;
            case MAIN_MENU_FROM_QUIT:
            case MAIN_MENU:
                func_800B29D8(&gControllers[controllerIdx], controllerIdx);
                break;
            case PLAYER_SELECT_MENU_FROM_QUIT:
            case PLAYER_SELECT_MENU:
                func_800B3554(&gControllers[controllerIdx], controllerIdx);
                break;
            case COURSE_SELECT_MENU_FROM_QUIT:
            case COURSE_SELECT_MENU:
                func_800B3B58(&gControllers[controllerIdx], controllerIdx);
                break;
            }
        }
    }
}

extern u32 D_800DC5AC; // data? from this file or another (main.c?)?
// this file's bss
extern u8 D_8018EE14[]; // probably a byte array
extern u8 D_8018EE15[];
extern u8 D_8018EE94; // probably another byte array
extern s8 D_8018EE95[];

// D_8018EDEC is position on options screen?

#ifdef NON_MATCHING
// issue is regalloc starting at the 0x32 0x33 case
enum MenuOptionsCursorPositions {
    MENU_OPTIONS_CSRPOS_SOUNDMODE = 0x16
};

#define BYTECAST(ptr) ((u8 *)(void *)(ptr))

// navigation of the options menu
void func_800B053C(struct Controller *controller, u16 arg1) {
    u16 btnAndStick; // sp3E
    struct_8018D9E0_entry *sp38;
    s32 res;
    struct_8018EE10_entry *sp30;
    s32 sp2C; // cursorWasMoved or communicateStoredAction
    UNUSED u32 pad;

    btnAndStick = (controller->buttonPressed | controller->stickPressed); 

    if (!gEnableDebugMode && (btnAndStick & CONT_START)) {
        btnAndStick |= CONT_A;
    }

    if (!func_800B4520()) {
        sp38 = find_8018D9E0_entry_dupe(0xF0);
        sp30 = D_8018D9C0;
        switch (D_8018EDEC) {
        case 0x15:
        case 0x16:
        case 0x17:
        case 0x18:
        {   
            sp2C = FALSE;
            if ((btnAndStick & CONT_DOWN) && (D_8018EDEC < 0x18)) {
                D_8018EDEC += 1;
                play_sound2(0x49008000);
                if (sp38->unk24 < 4.2) {
                    sp38->unk24 += 4.0;
                }
                sp38->unk8 = 1;
                sp2C = TRUE;
            }
            // L800B066C
            if ((btnAndStick & CONT_UP) && (D_8018EDEC >= 0x16)) {
                D_8018EDEC -= 1;
                play_sound2(0x49008000);
                if (sp38->unk24 < 4.2) {
                    sp38->unk24 += 4.0;
                }
                sp2C = TRUE;
                sp38->unk8 = -1;
            }
            // L800B06FC
            if (sp2C && gSoundMode != sp38->unk4) {
                gSaveDataSoundMode = gSoundMode;
                write_save_data_grand_prix_points_and_sound_mode();
                update_save_data_backup();
                sp38->unk4 = gSoundMode;
            }
            // L800B0758
            if (btnAndStick & CONT_B) {
                func_8009E280();
                play_sound2(0x49008002);
                if (gSoundMode != sp38->unk4) {
                    gSaveDataSoundMode = gSoundMode;
                    write_save_data_grand_prix_points_and_sound_mode();
                    update_save_data_backup();
                    sp38->unk4 = gSoundMode;
                }
                return;
            }
            // L800B07C8
            if (btnAndStick & CONT_A) {
                switch (D_8018EDEC) {
                case 0x16:
                    if (gSoundMode < 3) {
                        gSoundMode += 1;
                    } else {
                        gSoundMode = SOUND_STEREO;
                    }
                    if (gSoundMode == SOUND_UNUSED) {
                        gSoundMode = SOUND_MONO;
                    }
                    func_800B44BC();
                    switch (gSoundMode) {
                    case SOUND_STEREO:     play_sound2(0x49008024); return;
                    case SOUND_HEADPHONES: play_sound2(0x49008025); return;
                    case SOUND_MONO:       play_sound2(0x49008029); return;
                    }
                    break;
                case 0x17:
                    switch(func_800B5DA4()) {
                    case -1:
                        D_8018EDEC = 0x2B;
                        play_sound2(0x4900FF07);
                        return;
                    case 0:
                        func_800B6798();
                        sp2C = func_800B5B94();
                        switch (sp2C) {
                        case -1:
                            D_8018EDEC = 0x46;
                            sp38->unk4 = 0;
                            play_sound2(0x49008001);
                            break;
                        case 0:
                            func_800B6708();
                            break;
                        case 1:
                            D_8018EDEC = 0x34;
                            play_sound2(0x4900FF07);
                            break;
                        case 4:
                            D_8018EDEC = 0x37;
                            play_sound2(0x4900FF07);
                            break;
                        case 2:
                        case 3:
                        default:
                            D_8018EDEC = 0x35;
                            play_sound2(0x4900FF07);
                            break;
                        }
                        // L800B09DC
                        // definitely reading u8 at 0x84 from struct_8018EE10_entry,
                        // but that is too big for the size of the struct... unsized array off the end?
                        if (sp2C == -1 && !sp30->ghostDataSaved && !((u8 *)sp30)[0x84]) {
                            D_8018EDEC = 0x2A;
                            play_sound2(0x4900FF07);
                            return;
                        }
                        // L800B0A20
                        if (sp2C == 0) {
                            if (sp30->ghostDataSaved) {
                                D_8018EDEC = 0x28;
                                play_sound2(0x49008001);
                            } else if (((u8 *)sp30)[0x84]) {
                                D_8018EDEC = 0x29;
                                play_sound2(0x49008001);
                            } else {
                                D_8018EDEC = 0x2A;
                                play_sound2(0x4900FF07);
                            }
                        }
                        // else return?
                        return;
                    case 1:
                        D_8018EDEC = 0x2C;
                        play_sound2(0x4900FF07);
                        return;
                    case 2:
                    default:
                        D_8018EDEC = 0x2D;
                        play_sound2(0x4900FF07);
                        return;
                    }
                case 0x18: 
                {
                    D_8018EDEC = 0x1E;
                    play_sound2(0x49008001);
                    return;
                }
                case 0x15:
                {
                    func_8009E280();
                    play_sound2(0x49008002);
                    return;
                }
                }
            } 
            // maybe else return?; 
            break;
        }
        case 0x1E:
        case 0x1F:
        {
            if ((btnAndStick & CONT_DOWN) && (D_8018EDEC < 0x1F)) {
                D_8018EDEC += 1;
                play_sound2(0x49008000);
                if (sp38->unk24 < 4.2) {
                    sp38->unk24 += 4.0;
                }
                sp38->unk8 = 1;
            }
            // L800B0B74
            if ((btnAndStick & CONT_UP) && (D_8018EDEC >= 0x1F)) {
                D_8018EDEC -= 1;
                play_sound2(0x49008000);
                if (sp38->unk24 < 4.2) {
                    sp38->unk24 += 4.0;
                }
                sp38->unk8 = -1;
            }
            // L800B0BF8
            if (btnAndStick & CONT_B) {
                D_8018EDEC = 0x18;
                play_sound2(0x49008002);
                return;
            }
            // L800B0C20
            if (btnAndStick & CONT_A) {
                switch (D_8018EDEC) {
                case 0x1E:
                    D_8018EDEC = 0x18;
                    play_sound2(0x49008002);
                    break;
                case 0x1F:
                    D_8018EDEC = 0x20;
                    func_800B46D0();
                    D_800DC5AC = 0;
                    play_sound2(0x4900801D);
                    break;
                }
            }
            break; // or return?
        }
        case 0x20:
        {
            if (btnAndStick & (CONT_A | CONT_B | CONT_START)) {
                D_8018EDEC = 0x18;
                play_sound2(0x49008002);
            }
            break;
        }
        case 0x28:
        case 0x29:
        {
            if ((btnAndStick & CONT_DOWN) && (D_8018EDEC < 0x29) && (BYTECAST(sp30)[0x84])) {
                D_8018EDEC += 1;
                play_sound2(0x49008000);
                if (sp38->unk24 < 4.2) {
                    sp38->unk24 += 4.0;
                }
                sp38->unk8 = 1;
            }
            // L800B0D38
            if ((btnAndStick & CONT_UP) && (D_8018EDEC >= 0x29) && sp30->ghostDataSaved) {
                D_8018EDEC -= 1;
                play_sound2(0x49008000);
                if (sp38->unk24 < 4.2) {
                    sp38->unk24 += 4.0;
                }
                sp38->unk8 = -1;
            }
            // L800B0DD0
            if (btnAndStick & CONT_B) {
                D_8018EDEC = 0x17;
                play_sound2(0x49008002);
                return;
            }
            // L800B0DF4
            if (btnAndStick & CONT_A) {
                sp38->unk20 = D_8018EDEC - 0x28;
                if (sp30[sp38->unk20].courseIndex == D_8018EE95[0] && D_8018EE94) {
                    D_8018EDEC = 0x33;
                } else {
                    D_8018EDEC = 0x32;
                }
                play_sound2(0x49008001);
            }
            break;
        }
        case 0x32:
        case 0x33:
        {
            //struct_8018EE10_entry *req = D_8018EE10 + (D_8018EDEC - 0x32);
            //struct_8018EE10_entry *req = &D_8018EE10[D_8018EDEC - 0x32];
            if (sp30[sp38->unk20].courseIndex != (D_8018EE10 + (D_8018EDEC - 0x32))->courseIndex || (D_8018EE10 + (D_8018EDEC - 0x32))->ghostDataSaved == 0) {
                if ((btnAndStick & CONT_DOWN) && (D_8018EDEC < 0x33)) {
                    D_8018EDEC += 1;
                    play_sound2(0x49008000);
                    if (sp38->unk24 < 4.2) {
                        sp38->unk24 += 4.0;
                    }
                    sp38->unk8 = 1;
                }
                if ((btnAndStick & CONT_UP) && (D_8018EDEC >= 0x33)) {
                    D_8018EDEC -= 1;
                    play_sound2(0x49008000);
                    if (sp38->unk24 < 4.2) {
                        sp38->unk24 += 4.0;
                    }
                    sp38->unk8 = -1;
                }   
            }
            // L800B0FA4
            if (btnAndStick & CONT_B) {
                D_8018EDEC = sp38->unk20 + 0x28;
                play_sound2(0x49008002);
            } else if (btnAndStick & CONT_A) {
                // L800B0FCC
                sp38->unk1C = D_8018EDEC - 0x32;
                if (D_8018EE14[(sp38->unk1C) << 7]) {
                    D_8018EDEC = 0x38;
                } else {
                    D_8018EDEC = 0x3A;
                    sp38->unk4 = 0;
                }
                play_sound2(0x49008001);
            } 
            break;
        }
        case 0x2A:
        case 0x2B:
        case 0x2C:
        case 0x2D:
        case 0x34:
        case 0x35:
        case 0x37:
        case 0x3C:
        case 0x41:
        case 0x42:
        {
            if (btnAndStick & (CONT_A | CONT_B | CONT_START)) {
                D_8018EDEC = 0x17;
                play_sound2(0x49008002);
            }
            break;
        }
        case 0x38:
        case 0x39:
        {
            if ((btnAndStick & CONT_RIGHT) && D_8018EDEC < 0x39) {
                D_8018EDEC += 1;
                play_sound2(0x49008000);
                if (sp38->unk24 < 4.2) {
                    sp38->unk24 += 4.0;
                }
                sp38->unk8 = 1;
            }
            // L800B10C4
            if ((btnAndStick & CONT_LEFT) && D_8018EDEC >= 0x39) {
                D_8018EDEC -= 1;
                play_sound2(0x49008000);
                if (sp38->unk24 < 4.2) {
                    sp38->unk24 += 4.0;
                }
                sp38->unk8 = -1;
            }
            // L800B114C
            if (btnAndStick & CONT_B) {
                D_8018EDEC = sp38->unk1C + 0x32;
                play_sound2(0x49008002);
                return;
            }
            if (btnAndStick & CONT_A) {
                if (D_8018EDEC == 0x38) {
                    D_8018EDEC = 0x17;
                    play_sound2(0x49008002);
                } else {
                    D_8018EDEC = 0x3A;
                    play_sound2(0x49008001);
                    sp38->unk4 = 0;
                }
            }
            // return?
            break;
        }
        case 0x3A:
        {
            if (arg1 == 0) {
                sp38->unk4 += 1;
            }
            if (sp38->unk4 >= 3) {
                D_8018EDEC = 0x3B;
            }
            break;
        }
        case 0x3B:
        {
            res = func_800B5DA4();
            if (res == 0) {
                res = func_800B65F4(sp38->unk20, sp38->unk1C);
            }
            // L800B1230
            if (res != 0) {
                D_8018EDEC = 0x42;
                play_sound2(0x4900FF07);
                return;
            }
            // L800B1254
            res = osPfsFindFile(&D_8018E868, D_800E86F0, D_800E86F4, (u8 *)D_800F2E64, (u8 *)D_800F2E74, &D_8018EB84);
            if (res == 0) {
                res = func_800B6178(sp38->unk1C);
            }
            if (res != 0) {
                D_8018EDEC = 0x41;
                play_sound2(0x4900FF07);
                return;
            }
            // L800B12DC
            D_8018EDEC = 0x3C;
            D_8018EE15[sp38->unk1C << 7] = sp30[sp38->unk20].courseIndex;
            func_800B6088(sp38->unk1C);
            break;
        }
        case 0x46:
        {
            if (arg1 == 0) {
                sp38->unk4 += 1;
            }
            if (sp38->unk4 >= 3) {
                D_8018EDEC = 0x47;
            }
            break;
        }
        case 0x47:
        {
            if (func_800B6A68()) {
                D_8018EDEC = 0x36;
                play_sound2(0x4900FF07);
            } else if (sp30->ghostDataSaved) {
                D_8018EDEC = 0x28;
            } else {
                D_8018EDEC = 0x29;
            }
            break;
        }
        default: break;
        }
    }
    // L800B13A0 return
} 
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800B053C.s")
#endif

// Handle navigating the data menu interface
void func_800B13B0(struct Controller *controller, UNUSED u16 arg1) {
    u16 buttonAndStickPress = (controller->buttonPressed | controller->stickPressed);

    // Make pressing Start have the same effect as pressing A
    if ((gEnableDebugMode == 0) && ((buttonAndStickPress & 0x1000) != 0)) {
        buttonAndStickPress |= 0x8000;
    }

    if (func_800B4520() == 0) {
        if (D_8018EDEC == 1) {
            // If DPad/Stick down pressed, move selection down if not already in bottom row
            if ((buttonAndStickPress & 0x400) != 0) {
                if ((gTimeTrialDataCourseIndex % 4) != 3) {
                    ++gTimeTrialDataCourseIndex;
                    play_sound2(0x49008000);
                }
            }
            // If DPad/Stick up pressed, move selection up if not already in top row
            if ((buttonAndStickPress & 0x800) != 0) {
                if ((gTimeTrialDataCourseIndex & 3) != 0) {
                    --gTimeTrialDataCourseIndex;
                    play_sound2(0x49008000);
                }
            }
            // If DPad/Stick right pressed, move selection right if not already in right-most column
            if ((buttonAndStickPress & 0x100) != 0) {
                if ((gTimeTrialDataCourseIndex / 4) != 3) {
                    gTimeTrialDataCourseIndex += 4;
                    play_sound2(0x49008000);
                }
            }
            // If DPad/Stick left pressed, move selection left if not already in left-most column
            if ((buttonAndStickPress & 0x200) != 0) {
                if ((gTimeTrialDataCourseIndex / 4) != 0) {
                    gTimeTrialDataCourseIndex -= 4;
                    play_sound2(0x49008000);
                }
            }
            // If B pressed, go to main menu
            if ((buttonAndStickPress & 0x4000) != 0) {
                func_8009E258();
                play_sound2(0x49008002);
                return;
            }
            // If A pressed, go to selected course's records
            if ((buttonAndStickPress & 0x8000) != 0) {
                gCourseRecordsMenuSelection = 0;
                func_8009E1C0();
                play_sound2(0x49008016);
            }
        }
        // If D_8018EDEC != 1 and A pressed, go to main menu
        // (Will D_8018EDEC ever not equal 1 when entering the data menu?)
        else if ((buttonAndStickPress & 0x8000) != 0) {
            func_8009E258();
            play_sound2(0x49008016);
        }
    }
}

extern s8 D_8018EDF5;
extern s8 D_8018EDF9;

void func_800B15AC(struct Controller *controller, UNUSED u16 arg1) {
    u16 btnAndStick; // sp2E
    struct_8018D9E0_entry *sp28;
    CourseTimeTrialRecords *sp24;
    s32 res;

    btnAndStick = (controller->buttonPressed | controller->stickPressed); 

    if (!gEnableDebugMode && (btnAndStick & CONT_START)) {
        btnAndStick |= CONT_A;
    }

    if (!func_800B4520()) {
        switch(D_8018EDEC) {
        case 0x0B:
        {
            if ((btnAndStick & CONT_LEFT) && (gTimeTrialDataCourseIndex > 0)) {
                gTimeTrialDataCourseIndex -= 1;
                play_sound2(0x49008000);
            }

            if ((btnAndStick & CONT_RIGHT) && (gTimeTrialDataCourseIndex < 15)) {
                gTimeTrialDataCourseIndex += 1;
                play_sound2(0x49008000);
            }

            sp28 = find_8018D9E0_entry_dupe(0xE8);
            sp24 = &D_8018EB90.allCourseTimeTrialRecords
                .cupRecords[gTimeTrialDataCourseIndex / 4]
                .courseRecords[gTimeTrialDataCourseIndex % 4];
            if (gCourseRecordsMenuSelection == 2 && func_800B639C(gTimeTrialDataCourseIndex) < 0) {
                gCourseRecordsMenuSelection -= 1;
            }

            if (gCourseRecordsMenuSelection == 1 && sp24->unknownBytes[0] == 0) {
                gCourseRecordsMenuSelection -= 1;
            }

            if ((btnAndStick & CONT_UP) && (gCourseRecordsMenuSelection > 0)) {
                gCourseRecordsMenuSelection -= 1;
                if (gCourseRecordsMenuSelection == 1 && sp24->unknownBytes[0] == 0) {
                    gCourseRecordsMenuSelection -= 1;
                }
                play_sound2(0x49008000);
                if (sp28->unk24 < 4.2) {
                    sp28->unk24 += 4.0;
                }
                sp28->unk8 = -1;
            }

            if ((btnAndStick & CONT_DOWN) && (gCourseRecordsMenuSelection < 2)) {
                gCourseRecordsMenuSelection += 1;
                if (gCourseRecordsMenuSelection == 1 && sp24->unknownBytes[0] == 0) {
                    gCourseRecordsMenuSelection += 1;
                }
                
                if (gCourseRecordsMenuSelection == 2 && func_800B639C(gTimeTrialDataCourseIndex) < 0) {
                    if (sp24->unknownBytes[0] == 0) {
                        gCourseRecordsMenuSelection = 0;
                    } else {
                        gCourseRecordsMenuSelection = 1;
                    }
                }  else {
                    play_sound2(0x49008000);
                    if (sp28->unk24 < 4.2) {
                        sp28->unk24 += 4.0;
                    }
                    sp28->unk8 = 1;
                }
            }
            
            if (btnAndStick & CONT_B) {
                func_8009E208();
                play_sound2(0x49008002);
            } else if (btnAndStick & CONT_A) {
                if (sp28->unk24 < 4.2) {
                    sp28->unk24 += 4.0;
                }
                if (gCourseRecordsMenuSelection == 0) {
                    func_8009E208();
                    play_sound2(0x49008002);
                } else {
                    D_8018EDEC = 0x0C;
                    D_8018EDF9 = 0;
                    play_sound2(0x49008001);
                }
            }
            break;
        }
        case 0x0C: 
        {
            sp28 = find_8018D9E0_entry_dupe(0xE9);
            if ((btnAndStick & CONT_UP) && (D_8018EDF9 > 0)) {
                D_8018EDF9 -= 1;
                play_sound2(0x49008000);
                if (sp28->unk24 < 4.2) {
                    sp28->unk24 += 4.0;
                }
                sp28->unk8 = -1;
            }
            
            if ((btnAndStick & CONT_DOWN) && (D_8018EDF9 <= 0)) {
                D_8018EDF9 += 1;
                play_sound2(0x49008000);
                if (sp28->unk24 < 4.2) {
                    sp28->unk24 += 4.0;
                }
                sp28->unk8 = 1;
            }
            
            if (btnAndStick & CONT_B) {
                D_8018EDEC = 0xB;
                play_sound2(0x49008002);
            } else if (btnAndStick & CONT_A) {
                if (D_8018EDF9 != 0) {
                    res = 0;
                    switch (gCourseRecordsMenuSelection) {
                    case 1:
                    {
                        func_800B4728(gTimeTrialDataCourseIndex);
                        func_800B559C(gTimeTrialDataCourseIndex);
                        play_sound2(0x4900801D);
                        res = -1;
                        break;
                    }
                    case 2:
                    {
                        res = func_800B639C(gTimeTrialDataCourseIndex);
                        if (res >= 0) {
                            if (func_800B69BC(res) != 0){
                                D_8018EDEC = 0x0D;
                                play_sound2(0x4900FF07);
                            } else {
                                play_sound2(0x4900801D);
                                D_8018EDEC = 0x0B;
                            }
                        }
                        break;
                    }
                    }

                    if (!(res + 1)) {
                        D_8018EDEC = 0xB;
                    }
                } else {
                    play_sound2(0x49008002);
                    D_8018EDEC = 0xB;
                }
            }
            break;
        }
        case 0x0D:
        {
            if (btnAndStick & (CONT_A | CONT_B | CONT_START)) {
                D_8018EDEC = 0xB;
            }
            break;
        }
        }
    }
}

// Handle controller input during the logo screen
void func_800B1C40(struct Controller *arg0, UNUSED u16 arg1) {
    u16 sp1E = arg0->buttonPressed | arg0->stickPressed;

    if ((func_800B4520() == 0) && (sp1E != 0)) {
        func_800CA388(0x3C);
        func_8009E1E4();
    }
}

#ifdef NEEDS_RODATA
void func_800B1C90(struct Controller* controller, u16 arg1) {
    u16 buttonAndStickPress;
    OSPfsState* osPfsState;
    s32 selectedTableRow;
    s8 pad;
    
    buttonAndStickPress = controller->buttonPressed | controller->stickPressed;
    if (func_800B4520() == 0) {
        switch (gControllerPakMenuSelection) {
        case CONTROLLER_PAK_MENU_SELECT_RECORD:
            if ((buttonAndStickPress & 0x9000) != 0) {
                gControllerPakMenuSelection = CONTROLLER_PAK_MENU_TABLE_GAME_DATA;
                play_sound2(0x49008001);
                return;
            }
            if ((buttonAndStickPress & 0x300) != 0) {
                gControllerPakMenuSelection = CONTROLLER_PAK_MENU_END;
                play_sound2(0x49008000);
                return;
            }
            break;
        case CONTROLLER_PAK_MENU_END:
            if ((buttonAndStickPress & 0x9000) != 0) {
                play_sound2(0x49008001);
                func_8009E1C0();
                D_800E86F8 = 0;
                return;
            }
            if ((buttonAndStickPress & 0x300) != 0) {
                gControllerPakMenuSelection = CONTROLLER_PAK_MENU_SELECT_RECORD;
                play_sound2(0x49008000);
                return;
            }
            break;
        case CONTROLLER_PAK_MENU_TABLE_GAME_DATA:
            if ((buttonAndStickPress & 0x9000) != 0) {
                selectedTableRow = gDisplayedControllerPakTableRows[gControllerPakSelectedTableRow] - 1;
                if (D_8018EB38[selectedTableRow] == 0) {
                    gControllerPakMenuSelection = CONTROLLER_PAK_MENU_QUIT;
                    play_sound2(0x49008001);
                    return;
                }
            } else if ((buttonAndStickPress & 0x4000) != 0) {
                if (D_800E86D0 == 0) {
                    gControllerPakMenuSelection = CONTROLLER_PAK_MENU_SELECT_RECORD;
                    play_sound2(0x49008002);
                    return;
                }
            } else if ((buttonAndStickPress & 0x800) != 0) {
                if (D_800E86D0 == 0) {
                    --gControllerPakSelectedTableRow;
                    if (gControllerPakSelectedTableRow < 0) {
                        gControllerPakSelectedTableRow = 0;
                        if (gDisplayedControllerPakTableRows[gControllerPakSelectedTableRow] != 1) {
                            D_800E86D0 = 2;
                            play_sound2(0x49008000);
                            return;
                        }
                    } else {
                        play_sound2(0x49008000);
                        return;
                    }
                }
            } else if (((buttonAndStickPress & 0x400) != 0) && (D_800E86D0 == 0)) {
                ++gControllerPakSelectedTableRow;
                if (gControllerPakSelectedTableRow >= CONTROLLER_PAK_MENU_TABLE_GAME_DATA) {
                    gControllerPakSelectedTableRow = CONTROLLER_PAK_MENU_QUIT;
                    if (gDisplayedControllerPakTableRows[gControllerPakSelectedTableRow] != 0x10) {
                        D_800E86D0 = 1;
                        play_sound2(0x49008000);
                        return;
                    }
                } else {
                    play_sound2(0x49008000);
                    return;
                }
            }
            break;
        case CONTROLLER_PAK_MENU_QUIT:
            if ((buttonAndStickPress & 0xD000) != 0) {
                gControllerPakMenuSelection = CONTROLLER_PAK_MENU_TABLE_GAME_DATA;
                play_sound2(0x49008002);
                return;
            }
            if ((buttonAndStickPress & 0x300) != 0) {
                gControllerPakMenuSelection = CONTROLLER_PAK_MENU_ERASE;
                play_sound2(0x49008000);
                return;
            }
            break;
        case CONTROLLER_PAK_MENU_ERASE:
            if ((buttonAndStickPress & 0x9000) != 0) {
                gControllerPakMenuSelection = CONTROLLER_PAK_MENU_GO_TO_ERASING;
                play_sound2(0x49008001);
                return;
            }
            if ((buttonAndStickPress & 0x4000) != 0) {
                gControllerPakMenuSelection = CONTROLLER_PAK_MENU_TABLE_GAME_DATA;
                play_sound2(0x49008002);
                return;
            }
            if ((buttonAndStickPress & 0x300) != 0) {
                gControllerPakMenuSelection = CONTROLLER_PAK_MENU_QUIT;
                play_sound2(0x49008000);
                return;
            }
            break;
        case CONTROLLER_PAK_MENU_GO_TO_ERASING:
            gControllerPakMenuSelection = CONTROLLER_PAK_MENU_ERASING;
            return;
        case CONTROLLER_PAK_MENU_ERASING:
            selectedTableRow = gDisplayedControllerPakTableRows[gControllerPakSelectedTableRow] - 1;
            osPfsState = &D_8018E938[selectedTableRow];

            switch (osPfsDeleteFile(&D_8018E868, osPfsState->company_code, osPfsState->game_code, &osPfsState->game_name, &osPfsState->ext_name)) { 
            default:                           
                gControllerPakMenuSelection = CONTROLLER_PAK_MENU_ERASE_ERROR_NOT_ERASED;
                return;
            case 0:
                D_8018EB38[selectedTableRow] = -1;
                gControllerPakNumPagesFree += (((osPfsState->file_size + 0xFF) >> 8) & 0xFF);
                gControllerPakMenuSelection = CONTROLLER_PAK_MENU_TABLE_GAME_DATA;
                return;
            case PFS_ERR_NOPACK:
                gControllerPakMenuSelection = CONTROLLER_PAK_MENU_ERASE_ERROR_NO_PAK;
                return;
            case PFS_ERR_NEW_PACK:                                 /* switch 1 */
                gControllerPakMenuSelection = CONTROLLER_PAK_MENU_ERASE_ERROR_PAK_CHANGED;
                return;
            }
            break;
        case CONTROLLER_PAK_MENU_ERASE_ERROR_NOT_ERASED:
        case CONTROLLER_PAK_MENU_ERASE_ERROR_NO_PAK:
        case CONTROLLER_PAK_MENU_ERASE_ERROR_PAK_CHANGED:
            if ((buttonAndStickPress & 0x9000) != 0) {
                gControllerPakMenuSelection = CONTROLLER_PAK_MENU_TABLE_GAME_DATA;
            }
            break;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800B1C90.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8009E1C0();                                  /* extern */
? func_800B44BC();                                  /* extern */
? write_save_data_grand_prix_points_and_sound_mode();                                  /* extern */
? reset_save_data_grand_prix_points_and_sound_mode();                                  /* extern */
? func_800B5404(s32, s32);                          /* extern */
? update_save_data_backup();                                  /* extern */
? func_800CA330(?);                                 /* extern */
? play_sound2(?, s32);                              /* extern */
static ? D_800F2B50;                                /* unable to generate initializer; const */
static ? D_800F2B58;                                /* unable to generate initializer; const */
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_800B20F4(void *arg0, s32 arg1) {
    u16 sp2E;
    s32 sp28;
    s32 sp24;
    s16 temp_v0;
    s16 temp_v0_2;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s8 temp_t2;
    s8 temp_v0_3;
    s8 temp_v0_4;
    s8 temp_v0_5;
    s8 temp_v0_6;
    u8 temp_t2_2;
    u8 temp_t7;
    u8 temp_v0_7;
    u8 temp_v0_8;
    s32 phi_a1;
    s32 phi_s0;
    s32 phi_a1_2;
    s32 phi_s0_2;
    s32 phi_a1_3;
    s32 phi_s0_3;

    sp28 = 1;
    sp2E = arg0->unk6 | arg0->unkC;
    if (func_800B4520() == 0) {
        if ((arg1 & 0xFFFF) == 0) {
            D_8018EE04 += 1;
        }
        temp_t2 = gDebugMenuSelection;
        switch (temp_t2) {
        case DEBUG_MENU_DISABLED:
            sp28 = 0;
            if ((D_8018EE04 >= 0x2E) && ((sp2E & 0x9000) != 0)) {
                func_8009E1C0();
                func_800CA330(0x19);
                play_sound2(0x4900801A);
            }
            break;
        case DEBUG_MENU_DEBUG_MODE:
            if ((sp2E & 0x300) != 0) {
                sp24 = sp2E;
                play_sound2(0x49008000);
                if (gEnableDebugMode != 0) {
                    gEnableDebugMode = 0;
                } else {
                    gEnableDebugMode = 1;
                }
            }
            if ((sp2E & 0x400) != 0) {
                play_sound2(0x49008000);
                gDebugMenuSelection = DEBUG_MENU_COURSE;
            }
            break;
        case DEBUG_MENU_COURSE:
            if ((sp2E & 0x100) != 0) {
                sp24 = sp2E;
                play_sound2(0x49008000);
                temp_v0 = gCurrentCourseId;
                if (temp_v0 < 0x13) {
                    gCurrentCourseId = temp_v0 + 1;
                } else {
                    gCurrentCourseId = 0;
                }
            }
            if ((sp2E & 0x200) != 0) {
                sp24 = sp2E;
                play_sound2(0x49008000);
                temp_v0_2 = gCurrentCourseId;
                if (temp_v0_2 > 0) {
                    gCurrentCourseId = temp_v0_2 - 1;
                } else {
                    gCurrentCourseId = 0x13;
                }
            }
            if ((sp2E & 0x800) != 0) {
                sp24 = sp2E;
                play_sound2(0x49008000);
                gDebugMenuSelection = DEBUG_MENU_DEBUG_MODE;
            }
            if ((sp2E & 0x400) != 0) {
                play_sound2(0x49008000);
                gDebugMenuSelection = DEBUG_MENU_SCREEN_MODE;
            }
            break;
        case DEBUG_MENU_SCREEN_MODE:
            if ((sp2E & 0x100) != 0) {
                temp_v0_3 = D_8018EDF1;
                if (temp_v0_3 < 4) {
                    D_8018EDF1 = temp_v0_3 + 1;
                    sp24 = sp2E;
                    play_sound2(0x49008000);
                    gScreenModeSelection = *(&D_800F2B50 + D_8018EDF1);
                }
            }
            if ((sp2E & 0x200) != 0) {
                temp_v0_4 = D_8018EDF1;
                if (temp_v0_4 > 0) {
                    D_8018EDF1 = temp_v0_4 - 1;
                    sp24 = sp2E;
                    play_sound2(0x49008000);
                    gScreenModeSelection = *(&D_800F2B50 + D_8018EDF1);
                }
            }
            if ((sp2E & 0x800) != 0) {
                gDebugMenuSelection = DEBUG_MENU_COURSE;
                sp24 = sp2E;
                play_sound2(0x49008000);
            }
            if ((sp2E & 0x400) != 0) {
                gDebugMenuSelection = DEBUG_MENU_PLAYER;
                play_sound2(0x49008000);
            }
            break;
        case DEBUG_MENU_PLAYER:
            if ((sp2E & 0x100) != 0) {
                temp_v0_5 = gCharacterSelections;
                if (temp_v0_5 < 7) {
                    gCharacterSelections = temp_v0_5 + 1;
                    sp24 = sp2E;
                    play_sound2(0x49008000);
                }
            }
            if ((sp2E & 0x200) != 0) {
                temp_v0_6 = gCharacterSelections;
                if (temp_v0_6 > 0) {
                    gCharacterSelections = temp_v0_6 - 1;
                    sp24 = sp2E;
                    play_sound2(0x49008000);
                }
            }
            if ((sp2E & 0x800) != 0) {
                gDebugMenuSelection = DEBUG_MENU_SCREEN_MODE;
                sp24 = sp2E;
                play_sound2(0x49008000);
            }
            if ((sp2E & 0x400) != 0) {
                gDebugMenuSelection = DEBUG_MENU_SOUND_MODE;
                play_sound2(0x49008000);
            }
            break;
        case DEBUG_MENU_SOUND_MODE:
            if ((sp2E & 0x100) != 0) {
                if (gSoundMode < SOUND_MONO) {
                    gSoundMode += 1;
                    if ((gSoundMode & 0xFF) == SOUND_UNUSED) {
                        gSoundMode = SOUND_MONO;
                    }
                    sp24 = sp2E;
                    play_sound2(0x49008000);
                    func_800B44BC();
                    gSaveDataSoundMode = gSoundMode;
                    write_save_data_grand_prix_points_and_sound_mode();
                    update_save_data_backup();
                }
            }
            if ((sp2E & 0x200) != 0) {
                if (gSoundMode > SOUND_STEREO) {
                    gSoundMode -= 1;
                    if ((gSoundMode & 0xFF) == SOUND_UNUSED) {
                        gSoundMode = SOUND_HEADPHONES;
                    }
                    sp24 = sp2E;
                    play_sound2(0x49008000);
                    func_800B44BC();
                    gSaveDataSoundMode = gSoundMode;
                    write_save_data_grand_prix_points_and_sound_mode();
                }
            }
            if ((sp2E & 0x800) != 0) {
                gDebugMenuSelection = DEBUG_MENU_PLAYER;
                sp24 = sp2E;
                play_sound2(0x49008000);
            }
            if ((sp2E & 0x400) != 0) {
                gDebugMenuSelection = DEBUG_MENU_GIVE_ALL_GOLD_CUP;
                play_sound2(0x49008000);
            }
            break;
        case DEBUG_MENU_GIVE_ALL_GOLD_CUP:
            if ((sp2E & 0x800) != 0) {
                gDebugMenuSelection = DEBUG_MENU_SOUND_MODE;
                sp24 = sp2E;
                play_sound2(0x49008000);
            }
            if ((sp2E & 0x4000) != 0) {
                phi_a1 = 0;
                phi_s0 = 0;
                do {
                    func_800B5404(0, phi_a1);
                    temp_a1 = (phi_s0 + 1) & 0xFFFF;
                    phi_a1 = temp_a1;
                    phi_s0 = temp_a1;
                } while (temp_a1 < 0x10);
                play_sound2(0x49008001, temp_a1);
            } else if ((sp2E & 0x20) != 0) {
                reset_save_data_grand_prix_points_and_sound_mode();
                phi_a1_2 = 0;
                phi_s0_2 = 0;
                do {
                    func_800B5404(phi_a1_2 / 4, phi_a1_2);
                    temp_a1_2 = (phi_s0_2 + 1) & 0xFFFF;
                    phi_a1_2 = temp_a1_2;
                    phi_s0_2 = temp_a1_2;
                } while (temp_a1_2 < 0x10);
                play_sound2(0x49008001, temp_a1_2);
            } else if ((sp2E & 0x200) != 0) {
                reset_save_data_grand_prix_points_and_sound_mode();
                phi_a1_3 = 0;
                phi_s0_3 = 0;
                do {
                    if ((phi_a1_3 % 4) == 2) {
                        func_800B5404(0, phi_a1_3);
                    } else {
                        func_800B5404(phi_a1_3 / 4, phi_a1_3);
                    }
                    temp_a1_3 = (phi_s0_3 + 1) & 0xFFFF;
                    phi_a1_3 = temp_a1_3;
                    phi_s0_3 = temp_a1_3;
                } while (temp_a1_3 < 0x10);
                play_sound2(0x49008001, temp_a1_3);
            }
            break;
        default:
            break;
        }
        D_8018EDF3 = *(&D_800F2B58 + D_8018EDF1);
        gPlayerCountSelection1 = D_8018EDF3;
        if (sp28 != 0) {
            if ((sp2E & 0x9000) != 0) { // A or Start pressed
                sp24 = sp2E;
                func_8009E1C0();
                func_800CA330(0x19);
                gDebugMenuSelection = DEBUG_MENU_EXITED;
                if ((arg0->unk4 & 0x20) != 0) { // L held
                    D_800DC51C = 1;
                } else {
                    D_800DC51C = 0;
                }
                if ((arg0->unk4 & 0x2000) != 0) { // Z is held
                    if ((sp2E & 0x8000) != 0) {
                        gDebugGotoScene = DEBUG_GOTO_ENDING_SEQUENCE; // Go to ending ceremony if A is not pressed
                    } else {
                        gDebugGotoScene = DEBUG_GOTO_CREDITS_SEQUENCE_CC_EXTRA; // Go to credits, set gCCSelection to CC_EXTRA
                    }
                }
                play_sound2(0x49008016);
                return;
            }
            if (((sp2E & 0x4000) != 0) && ((arg0->unk4 & 0x2000) != 0)) { // B pressed and Z held
                func_8009E1C0();
                func_800CA330(0x19);
                gDebugMenuSelection = DEBUG_MENU_EXITED;
                gDebugGotoScene = DEBUG_GOTO_CREDITS_SEQUENCE_CC_50; // Go to credits, set gCCSelection to CC_50
                play_sound2(0x49008016);
                return;
            }
            if ((sp2E & 0x10) != 0) { // R pressed
                gDebugMenuSelection = DEBUG_MENU_DISABLED; // Close out of debug menu
                play_sound2(0x49008001);
            }
            /* Duplicate return node #100. Try simplifying control flow for better match */
            return;
        }
        /* Duplicate return node #100. Try simplifying control flow for better match */
    }
}
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800B20F4.s")
#endif

void func_800B28C8(void) {
    // For Grand Prix and Versus, this will be the CC mode selected. For Time Trials, it will
    // be whether 'Begin' or 'Data' is selected. Not used for Battle.
    s8 temp_v0 = gGameModeSubMenuRowSelectionForNumPlayers[D_8018EDF3][gGameModeRowSelectionForNumPlayers[D_8018EDF3]];

    // Determine which game mode was selected based on the number of players and the row selected on the main menu
    switch (gGameModeFromNumPlayersAndRowSelection[D_8018EDF3][gGameModeRowSelectionForNumPlayers[D_8018EDF3]]) {
    case GRAND_PRIX:
        gCCSelection =  temp_v0;
        gPlaceItemBoxes = 1;
        gIsMirrorMode = (temp_v0 == CC_EXTRA) ? 1 : 0;
        break;
    case VERSUS:
        gCCSelection =  temp_v0;
        gPlaceItemBoxes = 1;
        gIsMirrorMode = (temp_v0 == CC_EXTRA) ? 1 : 0;
        break;
    case BATTLE:
        gPlaceItemBoxes = 1;
        gIsMirrorMode = 0;
        break;
    case TIME_TRIALS:
        gCCSelection = CC_100;
        gIsMirrorMode = 0;
        gPlaceItemBoxes = 0;

        if ((temp_v0 && temp_v0) && temp_v0) {

        }

        break;
    }
}


#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8009E0F0(?);                                 /* extern */
? func_8009E1C0();                                  /* extern */
? func_8009E258(s8);                                /* extern */
? func_8009E280(s8);                                /* extern */
? func_800B28C8();                                  /* extern */
? func_800B44AC(s8, u16, u16);                      /* extern */
? func_800CA330(?);                                 /* extern */
? play_sound2(?, u16, u16);                         /* extern */
static ? gGameModeRowSelectionForNumPlayers;                                /* unable to generate initializer; const */
static ? D_800E86AC;                                /* unable to generate initializer; const */
static ? gGameModeSubMenuRowSelectionForNumPlayers;                                /* unable to generate initializer; const */
static ? D_800E86B0;                                /* unable to generate initializer; const */
static ? D_800F2B5F;                                /* unable to generate initializer; const */
static ? D_800F2B61;                                /* unable to generate initializer; const */
static ? D_800F2B6D;                                /* unable to generate initializer; const */
static ? gGameModeFromNumPlayersAndRowSelection;                                /* unable to generate initializer; const */

void func_800B29D8(void *arg0, u16 arg1) {
    u16 sp2E;
    s32 sp28;
    s32 sp24;
    s32 sp1C;
    s32 temp_t7_3;
    s32 temp_t7_5;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_7;
    s8 temp_a0;
    s8 temp_a0_2;
    s8 temp_a0_3;
    s8 temp_a0_4;
    s8 temp_a0_5;
    s8 temp_a0_6;
    s8 temp_a0_7;
    s8 temp_a1;
    s8 temp_t1;
    s8 temp_t1_2;
    s8 temp_t2;
    s8 temp_t4_2;
    s8 temp_t4_3;
    s8 temp_t5;
    s8 temp_t5_2;
    s8 temp_t6;
    s8 temp_t6_2;
    s8 temp_t7;
    s8 temp_t7_2;
    s8 temp_t7_4;
    s8 temp_t7_6;
    s8 temp_t8;
    s8 temp_v0;
    s8 temp_v0_10;
    s8 temp_v0_11;
    s8 temp_v0_2;
    s8 temp_v0_3;
    s8 temp_v0_4;
    s8 temp_v0_5;
    s8 temp_v0_6;
    s8 temp_v0_7;
    s8 temp_v0_8;
    s8 temp_v0_9;
    u16 temp_t9;
    u8 temp_t4;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_5;
    void *temp_v1_6;
    u16 phi_v1;
    s32 phi_a2;
    s32 phi_v0;
    u8 *phi_t0;
    s8 phi_a0;
    u8 *phi_t0_2;
    s32 phi_a1;
    s32 phi_v1_2;
    s8 phi_v0_2;
    s8 phi_a0_2;
    s32 *phi_v1_3;

    temp_t9 = (arg0->unk6 | arg0->unkC) & 0xFFFF;
    phi_v1 = temp_t9;
    if ((gEnableDebugMode == 0) && ((temp_t9 & 0x1000) != 0)) {
        phi_v1 = (temp_t9 | 0x8000) & 0xFFFF;
    }
    sp2E = phi_v1;
    arg1 &= 0xFFFF;
    if (func_800B4520(arg0) == 0) {
        temp_t4 = gMainMenuSelectionDepth;
        switch (temp_t4) {
        case BLANK_MAIN_MENU:
            temp_t5 = D_8018EDF3;
            phi_v1_3 = &gGameModeFromNumPlayersAndRowSelection + ((temp_t5 * 0xC) + (*(&gGameModeRowSelectionForNumPlayers + temp_t5) * 4));
            break;
        case PLAYER_NUM_SELECTION:
            phi_a2 = phi_v1;
            if ((phi_v1 & 0x100) != 0) {
                temp_v0 = D_8018EDF3;
                if (temp_v0 < 4) {
                    D_8018EDF3 = temp_v0 + 1;
                    sp1C = phi_v1;
                    func_800B44AC();
                    play_sound2(0x49008000);
                    phi_a2 = sp1C;
                }
            }
            temp_v0_2 = D_8018EDF3;
            phi_v0 = temp_v0_2;
            phi_t0 = &gMainMenuSelectionDepth;
            if (((phi_a2 & 0x200) != 0) && (temp_v0_2 >= 2)) {
                D_8018EDF3 = temp_v0_2 - 1;
                sp1C = phi_a2;
                func_800B44AC();
                play_sound2(0x49008000);
                phi_v0 = D_8018EDF3;
                phi_t0 = &gMainMenuSelectionDepth;
            }
            gPlayerCountSelection1 = phi_v0;
            phi_a0 = &gPlayerCountSelection1;
            if (phi_v0 != 1) {
                phi_a0 = 3;
                if (phi_v0 != 2) {
                    if ((phi_v0 != 3) && (phi_v0 != 4)) {

                    } else {
                        gScreenModeSelection = SCREEN_MODE_3P_4P_SPLITSCREEN;
                    }
                } else {
                    gScreenModeSelection = SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL;
                }
            } else {
                gScreenModeSelection = SCREEN_MODE_1P;
            }
            if ((phi_a2 & 0x4000) != 0) {
                func_8009E0F0(0x14);
                func_800CA330(0x19);
                D_8018EDE0 = 1;
                play_sound2(0x49008002);
                temp_t7 = D_8018EDF3;
                phi_v1_3 = &gGameModeFromNumPlayersAndRowSelection + ((temp_t7 * 0xC) + (*(&gGameModeRowSelectionForNumPlayers + temp_t7) * 4));
            } else if ((phi_a2 & 0x8000) != 0) {
                *phi_t0 = GAME_MODE_SELECTION;
                func_800B44AC(phi_a0);
                play_sound2(0x49008001);
                temp_t4_2 = D_8018EDF3;
                phi_v1_3 = &gGameModeFromNumPlayersAndRowSelection + ((temp_t4_2 * 0xC) + (*(&gGameModeRowSelectionForNumPlayers + temp_t4_2) * 4));
            } else if ((phi_a2 & 0x20) != 0) {
                *phi_t0 = OPTIONS_SELECTION;
                func_8009E280(phi_a0);
                play_sound2(0x49009010);
                temp_t1 = D_8018EDF3;
                phi_v1_3 = &gGameModeFromNumPlayersAndRowSelection + ((temp_t1 * 0xC) + (*(&gGameModeRowSelectionForNumPlayers + temp_t1) * 4));
            } else if ((phi_a2 & 0x10) != 0) {
                *phi_t0 = DATA_SELECTION;
                func_8009E258(phi_a0);
                play_sound2(0x49009011);
                temp_t6 = D_8018EDF3;
                phi_v1_3 = &gGameModeFromNumPlayersAndRowSelection + ((temp_t6 * 0xC) + (*(&gGameModeRowSelectionForNumPlayers + temp_t6) * 4));
            } else {
                phi_v1_3 = &gGameModeFromNumPlayersAndRowSelection + ((phi_v0 * 0xC) + (*(&gGameModeRowSelectionForNumPlayers + phi_v0) * 4));
            }
            break;
        case GAME_MODE_SELECTION:
            if ((phi_v1 & 0x400) != 0) {
                temp_v0_3 = D_8018EDF3;
                temp_v1 = temp_v0_3 + &D_800E86AC;
                temp_a0 = temp_v1->unk-1;
                if (temp_a0 < *(&D_800F2B5F + temp_v0_3)) {
                    temp_v1->unk-1 = temp_a0 + 1;
                    sp1C = phi_v1;
                    func_800B44AC(temp_a0, arg1, phi_v1);
                    play_sound2(0x49008000);
                }
            }
            phi_t0_2 = &gMainMenuSelectionDepth;
            if ((phi_v1 & 0x800) != 0) {
                temp_v1_2 = D_8018EDF3 + &D_800E86AC;
                temp_a0_2 = temp_v1_2->unk-1;
                if (temp_a0_2 > 0) {
                    temp_v1_2->unk-1 = temp_a0_2 - 1;
                    sp1C = phi_v1;
                    func_800B44AC(temp_a0_2);
                    play_sound2(0x49008000);
                    phi_t0_2 = &gMainMenuSelectionDepth;
                }
            }
            if ((phi_v1 & 0x4000) != 0) {
                *phi_t0_2 = PLAYER_NUM_SELECTION;
                func_800B44AC(3);
                play_sound2(0x49008002);
                temp_t6_2 = D_8018EDF3;
                phi_v1_3 = &gGameModeFromNumPlayersAndRowSelection + ((temp_t6_2 * 0xC) + (*(&gGameModeRowSelectionForNumPlayers + temp_t6_2) * 4));
            } else {
                temp_v0_4 = D_8018EDF3;
                temp_a0_3 = *(&gGameModeRowSelectionForNumPlayers + temp_v0_4);
                if ((phi_v1 & 0x8000) != 0) {
                    temp_v1_3 = *(&gGameModeFromNumPlayersAndRowSelection + ((temp_v0_4 * 0xC) + (temp_a0_3 * 4)));
                    if (temp_v1_3 != 0) {
                        if (temp_v1_3 != 1) {
                            if (temp_v1_3 != 2) {
                                if (temp_v1_3 != 3) {
                                    *phi_t0_2 = CONFIRM_OK_SELECTION;
                                } else {
                                    *phi_t0_2 = CONFIRM_OK_SELECTION;
                                    play_sound2(0x4900900D);
                                }
                            } else {
                                *phi_t0_2 = GAME_MODE_CC_OR_TIME_TRIALS_OPTIONS_SELECTION;
                                play_sound2(0x4900900C);
                            }
                        } else {
                            *phi_t0_2 = GAME_MODE_CC_OR_TIME_TRIALS_OPTIONS_SELECTION;
                            play_sound2(0x4900900B);
                        }
                    } else {
                        *phi_t0_2 = GAME_MODE_CC_OR_TIME_TRIALS_OPTIONS_SELECTION;
                        play_sound2(0x4900900A);
                    }
                    func_800B44AC();
                    temp_t7_2 = D_8018EDF3;
                    gMenuTimingCounter = 0;
                    phi_v1_3 = &gGameModeFromNumPlayersAndRowSelection + ((temp_t7_2 * 0xC) + (*(&gGameModeRowSelectionForNumPlayers + temp_t7_2) * 4));
                } else {
                    phi_v1_3 = &gGameModeFromNumPlayersAndRowSelection + ((temp_v0_4 * 0xC) + (temp_a0_3 * 4));
                }
            }
            break;
        case GAME_MODE_CC_OR_TIME_TRIALS_OPTIONS_SELECTION:
        case TIME_TRAILS_DATA_SELECTION_FROM_BACK_OUT:
            if ((arg1 == 0) && ((temp_t7_3 = gMenuTimingCounter + 1, gMenuTimingCounter = temp_t7_3, (temp_t7_3 == 0x64)) || ((temp_t7_3 % 300) == 0)) && ((temp_v0_5 = D_8018EDF3, temp_v1_4 = *(&gGameModeFromNumPlayersAndRowSelection + ((temp_v0_5 * 0xC) + (*(&gGameModeRowSelectionForNumPlayers + temp_v0_5) * 4))), (temp_v1_4 == 0)) || (temp_v1_4 == 2))) {
                sp1C = phi_v1;
                play_sound2(0x4900900E, arg1, phi_v1);
            }
            temp_v0_6 = D_8018EDF3;
            temp_v1_5 = (temp_v0_6 * 3) + *(&gGameModeRowSelectionForNumPlayers + temp_v0_6) + &D_800E86B0;
            temp_a0_4 = temp_v1_5->unk-3;
            phi_a1 = temp_a0_4;
            if (((phi_v1 & 0x800) != 0) && (temp_a0_4 > 0)) {
                temp_v1_5->unk-3 = temp_a0_4 - 1;
                sp28 = temp_a0_4;
                sp1C = phi_v1;
                func_800B44AC(temp_a0_4, temp_a0_4, phi_v1);
                play_sound2(0x49008000);
                phi_a1 = sp28;
            }
            if ((phi_v1 & 0x400) != 0) {
                sp24 = 0;
                sp28 = phi_a1;
                sp1C = phi_v1;
                phi_v1_2 = sp24;
                if (func_800B555C() != 0) {
                    temp_v0_7 = D_8018EDF3;
                    temp_a0_5 = *(&gGameModeRowSelectionForNumPlayers + temp_v0_7);
                    phi_v0_2 = temp_v0_7;
                    phi_a0_2 = temp_a0_5;
                    phi_v0_2 = temp_v0_7;
                    phi_a0_2 = temp_a0_5;
                    if (phi_a1 < *(&D_800F2B6D + ((temp_v0_7 * 3) + temp_a0_5))) {
                        goto block_64;
                    }
                } else {
                    temp_v0_8 = D_8018EDF3;
                    temp_a0_6 = *(&gGameModeRowSelectionForNumPlayers + temp_v0_8);
                    phi_v0_2 = temp_v0_8;
                    phi_a0_2 = temp_a0_6;
                    phi_v0_2 = temp_v0_8;
                    phi_a0_2 = temp_a0_6;
                    if (phi_a1 < *(&D_800F2B61 + ((temp_v0_8 * 3) + temp_a0_6))) {
block_64:
                        phi_v1_2 = 1;
                    }
                }
                if (phi_v1_2 != 0) {
                    temp_v1_6 = (phi_v0_2 * 3) + phi_a0_2 + &D_800E86B0;
                    sp1C = phi_v1;
                    temp_v1_6->unk-3 = temp_v1_6->unk-3 + 1;
                    func_800B44AC(phi_a0_2, phi_a1, phi_v1);
                    play_sound2(0x49008000);
                }
            }
            temp_v0_9 = D_8018EDF3;
            temp_a0_7 = *(&gGameModeRowSelectionForNumPlayers + temp_v0_9);
            temp_a1 = *(&gGameModeSubMenuRowSelectionForNumPlayers + ((temp_v0_9 * 3) + temp_a0_7));
            if ((phi_v1 & 0x4000) != 0) {
                gMainMenuSelectionDepth = GAME_MODE_SELECTION;
                func_800B44AC(temp_a0_7, temp_a1, phi_v1);
                play_sound2(0x49008002);
                temp_t5_2 = D_8018EDF3;
                phi_v1_3 = &gGameModeFromNumPlayersAndRowSelection + ((temp_t5_2 * 0xC) + (*(&gGameModeRowSelectionForNumPlayers + temp_t5_2) * 4));
            } else if ((phi_v1 & 0x8000) != 0) {
                sp28 = temp_a1;
                func_800B44AC(temp_a0_7, temp_a1, phi_v1);
                temp_v0_10 = D_8018EDF3;
                if ((temp_v0_10 == 1) && (*(&gGameModeRowSelectionForNumPlayers + temp_v0_10) == 1) && (temp_a1 == 1)) {
                    func_8009E258();
                    play_sound2(0x49009011);
                } else {
                    gMainMenuSelectionDepth = CONFIRM_OK_SELECTION;
                    play_sound2(0x49008001, temp_a1);
                    gMenuTimingCounter = 0;
                }
                temp_t7_4 = D_8018EDF3;
                phi_v1_3 = &gGameModeFromNumPlayersAndRowSelection + ((temp_t7_4 * 0xC) + (*(&gGameModeRowSelectionForNumPlayers + temp_t7_4) * 4));
            } else {
                phi_v1_3 = &gGameModeFromNumPlayersAndRowSelection + ((temp_v0_9 * 0xC) + (temp_a0_7 * 4));
            }
            break;
        case CONFIRM_OK_SELECTION:
        case CONFIRM_OK_SELECTION_FROM_BACK_OUT:
            if ((arg1 == 0) && ((temp_t7_5 = gMenuTimingCounter + 1, gMenuTimingCounter = temp_t7_5, (temp_t7_5 == 0x3C)) || ((temp_t7_5 % 300) == 0))) {
                sp1C = phi_v1;
                play_sound2(0x4900900F, arg1, phi_v1);
            }
            if ((phi_v1 & 0x4000) != 0) {
                temp_v0_11 = D_8018EDF3;
                temp_v1_7 = *(&gGameModeFromNumPlayersAndRowSelection + ((temp_v0_11 * 0xC) + (*(&gGameModeRowSelectionForNumPlayers + temp_v0_11) * 4)));
                if ((temp_v1_7 != 0) && (temp_v1_7 != 1) && (temp_v1_7 != 2)) {
                    if (temp_v1_7 != 3) {

                    }
                    gMainMenuSelectionDepth = GAME_MODE_SELECTION;
                } else {
                    gMainMenuSelectionDepth = GAME_MODE_CC_OR_TIME_TRIALS_OPTIONS_SELECTION;
                }
                func_800B44AC();
                play_sound2(0x49008002);
                temp_t7_6 = D_8018EDF3;
                gMenuTimingCounter = 0;
                phi_v1_3 = &gGameModeFromNumPlayersAndRowSelection + ((temp_t7_6 * 0xC) + (*(&gGameModeRowSelectionForNumPlayers + temp_t7_6) * 4));
            } else if ((phi_v1 & 0x8000) != 0) {
                func_8009E1C0();
                play_sound2(0x49008016);
                func_800B28C8();
                temp_t1_2 = D_8018EDF3;
                phi_v1_3 = &gGameModeFromNumPlayersAndRowSelection + ((temp_t1_2 * 0xC) + (*(&gGameModeRowSelectionForNumPlayers + temp_t1_2) * 4));
            } else {
                temp_t4_3 = D_8018EDF3;
                phi_v1_3 = &gGameModeFromNumPlayersAndRowSelection + ((temp_t4_3 * 0xC) + (*(&gGameModeRowSelectionForNumPlayers + temp_t4_3) * 4));
            }
            break;
        case OPTIONS_SELECTION:
        case DATA_SELECTION:
            temp_t2 = D_8018EDF3;
            phi_v1_3 = &gGameModeFromNumPlayersAndRowSelection + ((temp_t2 * 0xC) + (*(&gGameModeRowSelectionForNumPlayers + temp_t2) * 4));
            break;
        default:
            temp_t8 = D_8018EDF3;
            phi_v1_3 = &gGameModeFromNumPlayersAndRowSelection + ((temp_t8 * 0xC) + (*(&gGameModeRowSelectionForNumPlayers + temp_t8) * 4));
            break;
        }
        gModeSelection = *phi_v1_3;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800B29D8.s")
#endif

s32 func_800B34E8(s32 arg0) {
    s32 i;
    for (i =0; i < 4; i++) {
        if (arg0 == gCharacterGridSelections[i]) {
            return 0;
        }
    }
    return 1;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
/*
Failed to decompile function func_800B3554:

Label L800B3A94 refers to a delay slot; this is currently not supported.
Please modify the assembly to work around it (e.g. copy the instruction
to all jump sources and move the label, or add a nop to the delay slot).
*/
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800B3554.s")
#endif

// Handle navigating the course menu interface
void func_800B3B58(struct Controller *arg0, u16 arg1) {
    u16 buttonAndStickPress = (arg0->buttonPressed | arg0->stickPressed);

    if ((gEnableDebugMode == 0) && ((buttonAndStickPress & 0x1000) != 0)) {
        buttonAndStickPress |= 0x8000;
    }

    if (func_800B4520() == 0) {
        switch (D_8018EDEC) {
        case 1:
            if ((buttonAndStickPress & 0x100) != 0) {
                if (gCupSelection < SPECIAL_CUP) {
                    D_8018EE0A = gCupSelection;
                    ++gCupSelection;
                    func_800B44AC();
                    play_sound2(0x49008000);
                }
            }
            if (((buttonAndStickPress & 0x200) != 0) && (gCupSelection > MUSHROOM_CUP)) {
                D_8018EE0A = gCupSelection;
                --gCupSelection;
                func_800B44AC();
                play_sound2(0x49008000);
            }

            D_800DC540 = gCupSelection;
            gCurrentCourseId = gCupCourseOrder[gCupSelection][gCupCourseSelection];
            if ((buttonAndStickPress & 0x4000) != 0) {
                func_8009E208();
                play_sound2(0x49008002);
            }
            else if ((buttonAndStickPress & 0x8000) != 0) {
                if (gModeSelection != GRAND_PRIX) {
                    D_8018EDEC = 2;
                    play_sound2(0x49008001);
                } else {
                    D_8018EDEC = 3;
                    play_sound2(0x49008001);
                    gCurrentCourseId = gCupCourseOrder[gCupSelection][CUP_COURSE_ONE];
                    gMenuTimingCounter = 0;
                }
                func_800B44AC();
            }
            break;
        case 2:
        case 4:
            if (((buttonAndStickPress & 0x400) != 0) && (gCupCourseSelection < CUP_COURSE_FOUR)) {
                    ++gCupCourseSelection;
                    func_800B44AC();
                    play_sound2(0x49008000);
            }
            if (((buttonAndStickPress & 0x800) != 0) && (gCupCourseSelection > CUP_COURSE_ONE)) {
                --gCupCourseSelection;
                func_800B44AC();
                play_sound2(0x49008000);
            }

            gCurrentCourseId = gCupCourseOrder[gCupSelection][gCupCourseSelection];
            if ((buttonAndStickPress & 0x4000) != 0) {
                if (D_8018EDEC == 2) {
                    D_8018EDEC = 1;
                } else {
                    func_8009E208();
                }
                func_800B44AC();
                play_sound2(0x49008002);
                return;
            }
            if ((buttonAndStickPress & 0x8000) != 0) {
                D_8018EDEC = 3;
                play_sound2(0x49008001);
                func_800B44AC();
                gMenuTimingCounter = 0;
            }
            break;
        case 3:

            if ((arg1 == 0) && ((++gMenuTimingCounter == 0x3C) || ((gMenuTimingCounter % 300) == 0))) {
                play_sound2(0x4900900F);
            }

            if ((buttonAndStickPress & 0x4000) != 0) {
                switch(gModeSelection)
                {
                    case GRAND_PRIX:
                        D_8018EDEC = 1;
                        break;
                    case BATTLE:
                        D_8018EDEC = 4;
                        break;
                    default:
                        D_8018EDEC = 2;
                        break;
                }

                func_800B44AC();
                play_sound2(0x49008002);
                return;
            }
            if ((buttonAndStickPress & 0x8000) != 0) {
                func_8009E1C0();
                func_800CA330(0x19);
                play_sound2(0x49008016);
            }
            break;
        }
    }
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8000F0E0();                                  /* extern */
? func_800B44AC();                                  /* extern */
? func_800B5F30();                                  /* extern */
? func_800C8EAC(?, s8 *, s8);                       /* extern */
? func_800CA008(?, ?, s32);                         /* extern */
? func_800CB2C4();                                  /* extern */
? play_sound2(?, s8 *, s8 *, s8);                   /* extern */
extern s32 D_800DC50C;
extern s32 D_800DC524;
extern s32 gScreenModeSelection;
extern s32 D_800DC540;
extern s16 D_8015F890;
extern s16 D_8015F892;
extern s32 D_80162DC8;
extern s32 D_80162DCC;
extern s16 D_80162DD4;
extern s16 D_80162DD8;
extern s32 D_80162E00;
extern s16 D_8016556E;
extern s32 D_8018EDE0;
extern s8 D_8018EDE8;
extern s8 D_8018EDE9;
extern s8 D_8018EDEA;
extern s8 D_8018EDEB;
extern s8 D_8018EDEC;
extern s8 gMainMenuSelectionDepth;
extern s8 D_8018EDEE;
extern s8 gDebugMenuSelection;
extern s8 D_8018EDF1;
extern s8 D_8018EDF3;
extern s8 gTimeTrialDataCourseIndex;
extern s8 gDebugGotoScene;
extern s8 D_8018EDFB;
extern s8 D_8018EDFC;
extern s32 gMenuTimingCounter;
extern s32 D_8018EE04;
extern s8 D_8018EE08;
extern s8 D_8018EE0A;
extern s16 gEnableDebugMode;
static s8 gCharacterSelections = 0;                           /* const */
static ? D_800F2BDF;                                /* unable to generate initializer; const */
s32 gIsMirrorMode = 0;

void func_800B3F74(u32 arg0) {
    s32 temp_v0;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s8 *temp_a1;
    s8 *temp_a2;
    s8 *temp_v0_5;
    s8 temp_a0;
    s8 temp_a3;
    s8 temp_a3_2;
    s8 temp_v0_2;
    s32 phi_a3;
    s32 phi_v1;
    s8 *phi_v0;
    s8 *phi_a2;
    s8 *phi_a1;
    s32 phi_a0;
    s8 *phi_v0_2;

    gDebugMenuSelection = DEBUG_MENU_DISABLED;
    gMenuTimingCounter = 0;
    D_8018EE04 = 0;
    D_8018EE08 = 0;
    D_8015F890 = 0;
    D_8015F892 = 0;
    gDebugGotoScene = DEBUG_GOTO_RACING;
    D_8018EDFB = 0;
    D_8016556E = 0;
    D_80162DD4 = 1;
    D_80162DD8 = 1;
    D_80162E00 = 0;
    D_80162DC8 = 1;
    D_80162DCC = 0;
    switch (arg0) {
    case OPTIONS_MENU:
        D_8018EDEC = 0x15;
        break;
    case DATA_MENU:
        D_8018EDEC = 1;
        break;
    case COURSE_DATA_MENU:
        D_8018EDEC = 0xB;
        break;
    case LOGO_INTRO_MENU:
        func_800CA008(0, 0);
        break;
    case CONTROLLER_PAK_MENU:
        gControllerPakMenuSelection = CONTROLLER_PAK_MENU_SELECT_RECORD;
        func_800CA008(0, 0);
        break;
    case START_MENU_FROM_QUIT:
    case START_MENU:
        gIsMirrorMode = 0;
        gEnableDebugMode = 0;
        gCupSelection = MUSHROOM_CUP;
        gCupCourseSelection = CUP_COURSE_ONE;
        gTimeTrialDataCourseIndex = TIME_TRIAL_DATA_LUIGI_RACEWAY;
        if (D_8018EDF3 <= ZERO_PLAYERS_SELECTED) {
            D_8018EDF3 = ONE_PLAYERS_SELECTED;
        }
        phi_a3 = D_8018EDF3;
        if (D_8018EDF3 >= SELECTED_PLAYER_DEFINES_TOTAL) {
            D_8018EDF3 = FOUR_PLAYERS_SELECTED;
            phi_a3 = D_8018EDF3;
        }
        D_8018EDF1 = *(&D_800F2BDF + phi_a3);
        func_800CA008(0, 0);
        func_800C8EAC(1);
        D_8018EDFC = 0;
        break;
    case MAIN_MENU_FROM_QUIT:
    case MAIN_MENU:
        gEnableDebugMode = 0;
        gIsMirrorMode = 0;
        D_8018EDFC = 0;
        func_800B5F30();
        func_8000F0E0();
        if (D_800DC50C != 0) {
            func_800CA008(0, 0);
            func_800CB2C4();
            D_800DC50C = 0;
            D_800DC524 = 0;
            func_800C8EAC(2);
        }
        temp_v0 = D_8018EDE0;
        if (temp_v0 != 0) {
            if (temp_v0 != 1) {
                if (temp_v0 != 3) {
                    if (temp_v0 != 4) {

                    } else {
                        gMainMenuSelectionDepth = PLAYER_NUM_SELECTION;
                    }
                } else {
                    temp_v0_2 = gMainMenuSelectionDepth;
                    if ((temp_v0_2 != OPTIONS_SELECTION) && (temp_v0_2 != DATA_SELECTION)) {
                        gMainMenuSelectionDepth = TIME_TRAILS_DATA_SELECTION_FROM_BACK_OUT;
                    } else {
                        gMainMenuSelectionDepth = PLAYER_NUM_SELECTION;
                    }
                }
            } else {
                gMainMenuSelectionDepth = CONFIRM_OK_SELECTION_FROM_BACK_OUT;
            }
        } else {
            gMainMenuSelectionDepth = PLAYER_NUM_SELECTION;
            func_800C8EAC(2, &gMainMenuSelectionDepth, 3);
            temp_v0_3 = gScreenModeSelection;
            D_8018EDF3 = ONE_PLAYERS_SELECTED;
            if ((temp_v0_3 >= NUM_SCREEN_MODES) || (temp_v0_3 < SCREEN_MODE_1P)) {
                gScreenModeSelection = SCREEN_MODE_1P;
            }
        }
        break;
    case PLAYER_SELECT_MENU_FROM_QUIT:
    case PLAYER_SELECT_MENU:
        temp_v0_4 = D_8018EDE0;
        if (temp_v0_4 != 0) {
            if (temp_v0_4 != 1) {

            } else {
                D_8018EDEE = 3;
                temp_a3 = D_8018EDF3;
                if (temp_a3 > 0) {
                    D_8018EDE8 = 1;
                } else {
                    D_8018EDE8 = 0;
                }
                if ((temp_a3 - 1) > 0) {
                    D_8018EDE9 = 1;
                } else {
                    D_8018EDE9 = 0;
                }
                if ((temp_a3 - 2) > 0) {
                    D_8018EDEA = 1;
                } else {
                    D_8018EDEA = 0;
                }
                if ((temp_a3 - 3) > 0) {
                    D_8018EDEB = 1;
                } else {
                    D_8018EDEB = 0;
                }
            }
        } else {
            D_8018EDEE = 1;
            if (D_800DC50C == 0) {
                temp_a3_2 = D_8018EDF3;
                phi_v1 = 0;
                phi_v0 = &gCharacterGridSelections;
                phi_a2 = &gCharacterSelections;
                phi_a1 = &D_8018EDE8;
                do {
                    phi_a0 = phi_v1 + 1;
                    if (phi_v1 < temp_a3_2) {
                        temp_a0 = phi_v1 + 1;
                        *phi_v0 = temp_a0;
                        phi_a0 = temp_a0;
                    } else {
                        *phi_v0 = 0;
                    }
                    *phi_a2 = phi_v1;
                    temp_a1 = phi_a1 + 1;
                    temp_a2 = phi_a2 + 1;
                    temp_a1->unk-1 = 0;
                    phi_v1 = phi_a0;
                    phi_v0 += 1;
                    phi_a2 = temp_a2;
                    phi_a1 = temp_a1;
                } while (phi_a0 != 4);
                play_sound2(0x49009012, temp_a1, temp_a2, temp_a3_2);
            } else {
                func_800CA008(0, 0);
                func_800CB2C4();
                D_800DC50C = 0;
                D_800DC524 = 0;
                func_800C8EAC(2);
                D_8018EDE8 = 0;
                D_8018EDE8 = 0;
                D_8018EDE8 = 0;
                D_8018EDE8 = 0;
            }
        }
        break;
    case COURSE_SELECT_MENU_FROM_QUIT:
    case COURSE_SELECT_MENU:
        if (gModeSelection == BATTLE) {
            gCupSelection = BATTLE_CUP;
            D_800DC540 = 4;
            D_8018EDEC = 4;
        } else {
            if (gCupSelection == BATTLE_CUP) {
                gCupSelection = MUSHROOM_CUP;
            }
            D_8018EDEC = 1;
        }
        if (D_800DC50C != 0) {
            func_800CA008(0, 0, 3);
            func_800CB2C4();
            D_800DC50C = 0;
            D_800DC524 = 0;
            func_800C8EAC(2);
        }
        play_sound2(0x49009013);
        D_8018EE0A = 0;
        if (gModeSelection == GRAND_PRIX) {
            gCupCourseSelection = CUP_COURSE_ONE;
        }
        phi_v0_2 = gGPPointsByCharacterId;
        do {
            temp_v0_5 = phi_v0_2 + 4;
            temp_v0_5->unk-3 = 0;
            temp_v0_5->unk-2 = 0;
            temp_v0_5->unk-1 = 0;
            temp_v0_5->unk-4 = 0;
            phi_v0_2 = temp_v0_5;
        } while (temp_v0_5 != gCharacterIdByGPOverallRank);
        break;
    }
    func_800B44AC();
}
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800B3F74.s")
#endif

void func_800B44AC(void) {
    D_8018E7A8 = 0x20;
}

void func_800B44BC(void) {
    UNUSED u32 pad;
    union GameModePack pack;

    pack = D_800F2BE4;
    if ((gSoundMode == SOUND_STEREO) || (gSoundMode == SOUND_HEADPHONES) || (gSoundMode == SOUND_MONO)) {
        func_800C3448(pack.modes[gSoundMode] | 0xE0000000);
    }
}

s32 func_800B4520(void) {

    if ((D_8018E7B0 == 2) || (D_8018E7B0 == 3) || (D_8018E7B0 == 4) || (D_8018E7B0 == 7)) {
        return 1;
    }
    return 0;
}

// Separated from assembly in code_800AF9B0/func_800B4520.s
UNUSED void func_800B4560(s32 arg0, s32 arg1) {
    struct_8018EE10_entry *pak1 = D_8018EE10;
    struct_8018EE10_entry *pak2 = D_8018D9C0;

    rmonPrintf("ghost_kart=%d,", D_80162DE0);
    rmonPrintf("pak1_ghost_kart=%d,", (pak1 + arg0)->characterId);
    rmonPrintf("pak2_ghost_kart=%d\n", (pak2 + arg1)->characterId);
}
