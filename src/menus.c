#include <ultra64.h>
#include <macros.h>
#include <defines.h>
#include <global.h>
#include <common_structs.h>

#include "menus.h"

#include "actors.h"
#include "audio/external.h"
#include "code_80005FD0.h"
#include "code_80091750.h"
#include "code_800AF9B0.h"
#include "code_800B45E0.h"
#include "main.h"
#include "staff_ghosts.h"

/** Externs to be put into headers **/
extern s16 D_8015F892; // bss unknown
extern u32 D_800DC5AC; // data? from this file or another (main.c?)?
extern void func_800C3448(s32);
extern void rmonPrintf(const char *, ...); // not in a libultra header?

/** BSS **/
s32 D_8018EDC0;
f32 D_8018EDC4;
f32 D_8018EDC8;
f32 D_8018EDCC;
f32 D_8018EDD0;
f32 D_8018EDD4;
f32 D_8018EDD8;
f32 D_8018EDDC;
s32 D_8018EDE0;
s8 gCharacterGridSelections[4]; // map from player id to current grid position
s8 D_8018EDE8[4]; // bool8; map player id to isCharSelected on CSS
s8 D_8018EDEC;
s8 gMainMenuSelectionDepth;
s8 D_8018EDEE; // grid screen state?
s8 gDebugMenuSelection;
s8 gControllerPakMenuSelection;
s8 D_8018EDF1;
u8 gSoundMode;
s8 D_8018EDF3; // main menu row id? but it is also the number of players define
s8 D_8018EDF4;
s8 D_8018EDF5;
s8 D_8018EDF6;
s8 gTimeTrialDataCourseIndex;
s8 gCourseRecordsMenuSelection;
s8 D_8018EDF9;
s8 gDebugGotoScene;
s8 D_8018EDFB;
s8 D_8018EDFC;
s32 gMenuTimingCounter;
s32 D_8018EE04;
s8 D_8018EE08;
s8 gCupSelection;
s8 D_8018EE0A;
s8 gCupCourseSelection;
s8 D_8018EE0C;
struct_8018EE10_entry D_8018EE10[2];

/** Data **/
s32 gMenuSelection = LOGO_INTRO_MENU;
s32 D_800E86A4 = 0;
s8 gCharacterSelections[4] = { MARIO, LUIGI, YOSHI, TOAD };


// gGameModeRowSelectionForNumPlayers is (D_800E86AC - 1)
// gGameModeSubMenuRowSelectionForNumPlayers (D_800E86AC + 1)

// the current row selected in column i on main menu
s8 D_800E86AC[4] = { 0, 0, 0, 0 };
// For Grand Prix and Versus, this will be the CC mode selected. For Time Trials, it will
// be whether 'Begin' or 'Data' is selected. Not used for Battle.
// indexed as [column][row]
s8 D_800E86B0[4][3] = {
    {0, 0, 0},
    {0, 0, 0},
    {0, 0, 0},
    {0, 0, 0}
};

s8 gNextDemoId = 0;
s8 gControllerPakSelectedTableRow = 0;
s8 D_800E86C4[12] = {0, 0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0};
s8 D_800E86D0[16] = {0}; // this doesn't make a lot of sense...
s8 unref_800E86E0[4] = {0, 0, 0, 1};

u32 sVIGammaOffDitherOn = OS_VI_GAMMA_OFF | OS_VI_DITHER_FILTER_ON;

/*** Const/rodata Data ***/
// used to set gScreenModeSelection; might be smaller; could be function static data
const s8 D_800F2B50[] = {0, 1, 2, 3, 3, 0, 0, 0};

// set to D_8018EDF3, then that sets gPlayerCountSelection1
const s8 D_800F2B58[] = {1, 2, 2, 3, 4, 0, 0, 0};

// Limit for each column in one-two-three-four players selection
const s8 D_800F2B60[4] = {1, 2, 1, 1};

// Limit in each column
const s8 D_800F2B64[4][3] = {
    {2, 1, 0},
    {2, 2, 0},
    {2, 0, 0},
    {2, 0, 0}
};

// is this another union GameModePack? Figure out when decomping.
const s32 gGameModeFromNumPlayersAndRowSelection[5][3] = {
    { 0x03010003, 0x03000300,  0x00030000 },
    { GRAND_PRIX, TIME_TRIALS, 0x00000000 }, //first column
    { GRAND_PRIX, VERSUS,      BATTLE     }, //second
    { VERSUS,     BATTLE,      0x00000000 }, //third
    { VERSUS,     BATTLE,      0x00000000 }, //four
};

// map from character grid position id to character id
const s8 D_800F2BAC[] = { 
    MARIO,
    LUIGI,
    PEACH,
    TOAD,
    YOSHI,
    DK,
    WARIO,
    BOWSER, 
};

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

const s8 D_800F2BDC[8] = {1, 0, 0, 0, 0, 1, 3, 4};

// needs to be a union (or array...?) to go into rodata as a const
// terrible for endianness... Best guess as to what this is for..
union GameModePack {
    u8  modes[4];
    s32 word;
};
const union GameModePack D_800F2BE4 = { {0, 1, 2, 3} };

/** forward decs **/
void options_menu_act(struct Controller *, u16);
void data_menu_act(struct Controller *, u16);
void course_data_menu_act(struct Controller *, u16);
void logo_intro_menu_act(struct Controller *, u16);
void controller_pak_menu_act(struct Controller *, u16);
void splash_menu_act(struct Controller *, u16);
void main_menu_act(struct Controller *, u16);
void player_select_menu_act(struct Controller *, u16);
void course_select_menu_act(struct Controller *, u16);
void func_800B44AC(void);
/**************************/

/**
 * Includes opening logo and splash screens
 */
void update_menus(void) {
    u16 controllerIdx;

    if (D_800E86A4 == 0) {
        for (controllerIdx = 0; controllerIdx < 4; controllerIdx++) {

            // Quick jump through menus using the start button.
            if ((func_800B4520() == 0) && (gEnableDebugMode) && ((gControllers[controllerIdx].buttonPressed & START_BUTTON) != 0)) {
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
            osViSetSpecialFeatures(sVIGammaOffDitherOn);
            switch (gMenuSelection) {
            case OPTIONS_MENU:
                options_menu_act(&gControllers[controllerIdx], controllerIdx);
                break;
            case DATA_MENU:
                data_menu_act(&gControllers[controllerIdx], controllerIdx);
                break;
            case COURSE_DATA_MENU:
                course_data_menu_act(&gControllers[controllerIdx], controllerIdx);
                break;
            case LOGO_INTRO_MENU:
                logo_intro_menu_act(&gControllers[controllerIdx], controllerIdx);
                break;
            case CONTROLLER_PAK_MENU:
                if (controllerIdx == PLAYER_ONE) {
                    controller_pak_menu_act(&gControllers[controllerIdx], controllerIdx);
                }
                break;
            case START_MENU_FROM_QUIT:
            case START_MENU:
                splash_menu_act(&gControllers[controllerIdx], controllerIdx);
                break;
            case MAIN_MENU_FROM_QUIT:
            case MAIN_MENU:
                main_menu_act(&gControllers[controllerIdx], controllerIdx);
                break;
            case PLAYER_SELECT_MENU_FROM_QUIT:
            case PLAYER_SELECT_MENU:
                player_select_menu_act(&gControllers[controllerIdx], controllerIdx);
                break;
            case COURSE_SELECT_MENU_FROM_QUIT:
            case COURSE_SELECT_MENU:
                course_select_menu_act(&gControllers[controllerIdx], controllerIdx);
                break;
            }
        }
    }
}


// D_8018EDEC is position on options screen?
#ifndef NON_MATCHING
// issue is regalloc starting at the 0x32 0x33 case
enum MenuOptionsCursorPositions {
    MENU_OPTIONS_CSRPOS_SOUNDMODE = 0x16
};

// navigation of the options menu
void options_menu_act(struct Controller *controller, u16 arg1) {
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
            if ((btnAndStick & CONT_DOWN) && (D_8018EDEC < 0x29) && (sp30[1].ghostDataSaved)) {
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
                if (sp30[sp38->unk20].courseIndex == D_8018EE10[1].courseIndex && D_8018EE10[1].ghostDataSaved) {
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
            // bit of a fake match, but if it works it works?
            if ((sp30[sp38->unk20].courseIndex != ((0, (D_8018EE10 + (D_8018EDEC - 0x32))->courseIndex))) || ((D_8018EE10 + (D_8018EDEC - 0x32))->ghostDataSaved == 0)) {
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
                if (D_8018EE10[(sp38->unk1C)].ghostDataSaved) {
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
            D_8018EE10[sp38->unk1C].courseIndex = (sp30 + sp38->unk20)->courseIndex;
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
GLOBAL_ASM("asm/non_matchings/menus/options_menu_act.s")
#endif

// Handle navigating the data menu interface
void data_menu_act(struct Controller *controller, UNUSED u16 arg1) {
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

void course_data_menu_act(struct Controller *controller, UNUSED u16 arg1) {
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

/**
 * On input skip logo screen
 **/
void logo_intro_menu_act(struct Controller *arg0, UNUSED u16 arg1) {
    u16 anyInput = arg0->buttonPressed | arg0->stickPressed;

    if ((func_800B4520() == 0) && (anyInput)) {
        // Audio related
        func_800CA388(0x3C);
        
        func_8009E1E4();
    }
}

void controller_pak_menu_act(struct Controller* controller, UNUSED u16 arg1) {
    u16 buttonAndStickPress;
    OSPfsState* osPfsState;
    s32 selectedTableRow;
    UNUSED s8 pad;
    
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
                selectedTableRow = D_800E86C4[gControllerPakSelectedTableRow + 2] - 1;
                if (D_8018EB38[selectedTableRow] == 0) {
                    gControllerPakMenuSelection = CONTROLLER_PAK_MENU_QUIT;
                    play_sound2(0x49008001);
                    return;
                }
            } else if ((buttonAndStickPress & 0x4000) != 0) {
                if (D_800E86D0[0] == 0) {
                    gControllerPakMenuSelection = CONTROLLER_PAK_MENU_SELECT_RECORD;
                    play_sound2(0x49008002);
                    return;
                }
            } else if ((buttonAndStickPress & 0x800) != 0) {
                if (D_800E86D0[0] == 0) {
                    --gControllerPakSelectedTableRow;
                    if (gControllerPakSelectedTableRow < 0) {
                        gControllerPakSelectedTableRow = 0;
                        if (D_800E86C4[gControllerPakSelectedTableRow + 2] != 1) {
                            D_800E86D0[0] = 2;
                            play_sound2(0x49008000);
                            return;
                        }
                    } else {
                        play_sound2(0x49008000);
                        return;
                    }
                }
            } else if (((buttonAndStickPress & 0x400) != 0) && (D_800E86D0[0] == 0)) {
                ++gControllerPakSelectedTableRow;
                if (gControllerPakSelectedTableRow >= CONTROLLER_PAK_MENU_TABLE_GAME_DATA) {
                    gControllerPakSelectedTableRow = CONTROLLER_PAK_MENU_QUIT;
                    if (D_800E86C4[gControllerPakSelectedTableRow + 2] != 0x10) {
                        D_800E86D0[0] = 1;
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
            selectedTableRow = D_800E86C4[gControllerPakSelectedTableRow + 2] - 1;
            osPfsState = &D_8018E938[selectedTableRow];

            switch (osPfsDeleteFile(&D_8018E868, osPfsState->company_code, osPfsState->game_code, (u8 *)&osPfsState->game_name, (u8 *)&osPfsState->ext_name)) { 
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

void splash_menu_act(struct Controller *controller, u16 arg1) {
    u16 btnAndStick;
    u16 i;
    s32 sp28;

    sp28 = TRUE;
    btnAndStick = controller->buttonPressed | controller->stickPressed;

    if (func_800B4520() == 0) {
        if (arg1 == 0) {
            D_8018EE04 += 1;
        }

        switch (gDebugMenuSelection) {
        case DEBUG_MENU_DISABLED:
        {
            sp28 = FALSE;
            if ((D_8018EE04 >= 0x2E) && (btnAndStick & (CONT_A | CONT_START))) {
                func_8009E1C0();
                func_800CA330(0x19);
                play_sound2(0x4900801A);
            } else {
                break;
            }
            break;
        }
        case DEBUG_MENU_DEBUG_MODE:
        {
            if (btnAndStick & (CONT_RIGHT | CONT_LEFT)) {
                play_sound2(0x49008000);
                if (gEnableDebugMode) {
                    gEnableDebugMode = FALSE;
                } else {
                    gEnableDebugMode = TRUE;
                }
            }
            if (btnAndStick & CONT_DOWN) {
                play_sound2(0x49008000);
                gDebugMenuSelection = DEBUG_MENU_COURSE;
            }
            break;
        }
        case DEBUG_MENU_COURSE:
        {
            if (btnAndStick & CONT_RIGHT) {
                play_sound2(0x49008000);
                if (gCurrentCourseId < 0x13) {
                    gCurrentCourseId += 1;
                } else {
                    gCurrentCourseId = 0;
                }
            }
            if (btnAndStick & CONT_LEFT) {
                play_sound2(0x49008000);
                if (gCurrentCourseId > 0) {
                    gCurrentCourseId -= 1;
                } else {
                    gCurrentCourseId = 0x13;
                }
            }
            if (btnAndStick & CONT_UP) {
                play_sound2(0x49008000);
                gDebugMenuSelection = DEBUG_MENU_DEBUG_MODE;
            }
            if (btnAndStick & CONT_DOWN) {
                play_sound2(0x49008000);
                gDebugMenuSelection = DEBUG_MENU_SCREEN_MODE;
            }
            break;
        }
        case DEBUG_MENU_SCREEN_MODE:
        {
            if ((btnAndStick & CONT_RIGHT) && (D_8018EDF1 < 4)) {
                D_8018EDF1 += 1;
                play_sound2(0x49008000);
                gScreenModeSelection = D_800F2B50[D_8018EDF1];
            }
            if ((btnAndStick & CONT_LEFT) && (D_8018EDF1 > 0)) {
                D_8018EDF1 -= 1;
                play_sound2(0x49008000);
                gScreenModeSelection = D_800F2B50[D_8018EDF1];
            }
            if (btnAndStick & CONT_UP) {
                gDebugMenuSelection = DEBUG_MENU_COURSE;
                play_sound2(0x49008000);
            }
            if (btnAndStick & CONT_DOWN) {
                gDebugMenuSelection = DEBUG_MENU_PLAYER;
                play_sound2(0x49008000);
            }
            break;
        }
        case DEBUG_MENU_PLAYER:
        {
            if ((btnAndStick & CONT_RIGHT) && (*gCharacterSelections < 7)) {
                gCharacterSelections[0] += 1;
                play_sound2(0x49008000);
            }
            if ((btnAndStick & CONT_LEFT) && (gCharacterSelections[0] > 0)) {
                gCharacterSelections[0] -= 1;
                play_sound2(0x49008000);
            }
            if (btnAndStick & CONT_UP) {
                gDebugMenuSelection = DEBUG_MENU_SCREEN_MODE;
                play_sound2(0x49008000);
            }
            if (btnAndStick & CONT_DOWN) {
                gDebugMenuSelection = DEBUG_MENU_SOUND_MODE;
                play_sound2(0x49008000);
            }
            break;
        }
        case DEBUG_MENU_SOUND_MODE:
        {
            if ((btnAndStick & CONT_RIGHT) && (gSoundMode < 3)) {
                gSoundMode += 1;
                if (gSoundMode == SOUND_UNUSED) {
                    gSoundMode = SOUND_MONO;
                }
                play_sound2(0x49008000);
                func_800B44BC();
                gSaveDataSoundMode = gSoundMode;
                write_save_data_grand_prix_points_and_sound_mode();
                update_save_data_backup();
            }
            if ((btnAndStick & CONT_LEFT) && (gSoundMode > 0)) {
                gSoundMode -= 1;
                if (gSoundMode == SOUND_UNUSED) {
                    gSoundMode = SOUND_HEADPHONES;
                }
                play_sound2(0x49008000);
                func_800B44BC();
                gSaveDataSoundMode = gSoundMode;
                write_save_data_grand_prix_points_and_sound_mode();
            }
            if (btnAndStick & CONT_UP) {
                gDebugMenuSelection = DEBUG_MENU_PLAYER;
                play_sound2(0x49008000);
            }
            if (btnAndStick & CONT_DOWN) {
                gDebugMenuSelection = DEBUG_MENU_GIVE_ALL_GOLD_CUP;
                play_sound2(0x49008000);
            }
            break;
        }
        case DEBUG_MENU_GIVE_ALL_GOLD_CUP:
        {
            if (btnAndStick & CONT_UP) {
                gDebugMenuSelection = DEBUG_MENU_SOUND_MODE;
                play_sound2(0x49008000);
            }
            if (btnAndStick & CONT_B) {
                for (i = 0; i < 16; i++) {
                    func_800B5404(0, i);
                }
                play_sound2(0x49008001);
                break;
            } else if (btnAndStick & CONT_L) {
                reset_save_data_grand_prix_points_and_sound_mode();
                for (i = 0; i < 16; i++) {
                    func_800B5404(i / 4, i);
                }
                play_sound2(0x49008001);
                break;
            } else if (btnAndStick & CONT_LEFT) {
                reset_save_data_grand_prix_points_and_sound_mode();
                for (i = 0; i < 16; i++) {
                    if (i % 4 == 2) {
                        func_800B5404(0, i);
                    } else {
                        func_800B5404(i / 4, i);
                    }
                }
                play_sound2(0x49008001);
            } else {
                break;
            }
            break;
        }
        default: break;
        }

        gPlayerCountSelection1 = D_8018EDF3 = D_800F2B58[D_8018EDF1];

        if (sp28) {
            if (btnAndStick & (CONT_A | CONT_START)) {
                func_8009E1C0();
                func_800CA330(0x19);
                gDebugMenuSelection = DEBUG_MENU_EXITED;

                if (controller->button & CONT_L) {
                    D_800DC51C = 1;
                } else {
                    D_800DC51C = 0;
                }

                if (controller->button & Z_TRIG) {
                    if (btnAndStick & CONT_A) {
                        gDebugGotoScene = DEBUG_GOTO_ENDING_SEQUENCE; 
                    } else {
                        gDebugGotoScene = DEBUG_GOTO_CREDITS_SEQUENCE_CC_EXTRA;
                    }
                }
                play_sound2(0x49008016);
            } else if ((btnAndStick & CONT_B) && (controller->button & Z_TRIG)) {
                func_8009E1C0();
                func_800CA330(0x19);
                gDebugMenuSelection = DEBUG_MENU_EXITED;
                gDebugGotoScene = DEBUG_GOTO_CREDITS_SEQUENCE_CC_50;
                play_sound2(0x49008016);
            } else if (btnAndStick & CONT_R) {
                gDebugMenuSelection = DEBUG_MENU_DISABLED;
                play_sound2(0x49008001);
            }
        }
    }
}

void func_800B28C8(void) {
    // For Grand Prix and Versus, this will be the CC mode selected. For Time Trials, it will
    // be whether 'Begin' or 'Data' is selected. Not used for Battle.
    s8 temp_v0 = D_800E86B0[D_8018EDF3 - 1][D_800E86AC[D_8018EDF3 - 1]];
    // Determine which game mode was selected based on the number of players and the row selected on the main menu
    switch (gGameModeFromNumPlayersAndRowSelection[D_8018EDF3][D_800E86AC[D_8018EDF3 - 1]]) {
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

#ifdef NON_MATCHING
// nonmatching: regalloc; arg1 is not AND-ed back into $a1, reg chaos follows
void main_menu_act(struct Controller *controller, u16 arg1) {
    u16 btnAndStick; // sp2E
    s32 sp28;
    s32 sp24;
    s32 newMode; // temp_v1_2?

    btnAndStick = controller->buttonPressed | controller->stickPressed;
    if (!gEnableDebugMode && (btnAndStick & CONT_START)) {
        btnAndStick |= CONT_A;
    }

    if (!func_800B4520()) {
        switch (gMainMenuSelectionDepth) {
        case BLANK_MAIN_MENU:
        {
            newMode = gGameModeFromNumPlayersAndRowSelection[D_8018EDF3][D_800E86AC[D_8018EDF3 - 1]];
            break;
        }
        case PLAYER_NUM_SELECTION:
        {
            if ((btnAndStick & CONT_RIGHT) && D_8018EDF3 < 4) {
                D_8018EDF3 += 1;
                func_800B44AC();
                play_sound2(0x49008000);
            }
            if ((btnAndStick & CONT_LEFT) && D_8018EDF3 >= 2) {
                D_8018EDF3 -= 1;
                func_800B44AC();
                play_sound2(0x49008000);
            }
            // L800B2B38
            gPlayerCountSelection1 = D_8018EDF3;
            switch (gPlayerCountSelection1){
                case 1: gScreenModeSelection = SCREEN_MODE_1P; break;
                case 2: gScreenModeSelection = SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL; break;
                case 3:
                case 4: gScreenModeSelection = SCREEN_MODE_3P_4P_SPLITSCREEN; break;
            }
            // L800B2B94
            if (btnAndStick & CONT_B) {
                func_8009E0F0(0x14);
                func_800CA330(0x19);
                D_8018EDE0 = 1;
                play_sound2(0x49008002);
                newMode = gGameModeFromNumPlayersAndRowSelection[D_8018EDF3][D_800E86AC[D_8018EDF3 - 1]];
            } else if (btnAndStick & CONT_A) {
                // L800B2C00
                gMainMenuSelectionDepth = GAME_MODE_SELECTION;
                func_800B44AC();
                play_sound2(0x49008001);
                newMode = gGameModeFromNumPlayersAndRowSelection[D_8018EDF3][D_800E86AC[D_8018EDF3 - 1]];
            } else if (btnAndStick & CONT_L) {
                // L800B2C58
                gMainMenuSelectionDepth = OPTIONS_SELECTION;
                func_8009E280();
                play_sound2(0x49009010);
                newMode = gGameModeFromNumPlayersAndRowSelection[D_8018EDF3][D_800E86AC[D_8018EDF3 - 1]];
            } else if (btnAndStick & CONT_R) {
                gMainMenuSelectionDepth = DATA_SELECTION;
                func_8009E258();
                play_sound2(0x49009011);
                newMode = gGameModeFromNumPlayersAndRowSelection[D_8018EDF3][D_800E86AC[D_8018EDF3 - 1]];
            } else {
                newMode = gGameModeFromNumPlayersAndRowSelection[D_8018EDF3][D_800E86AC[D_8018EDF3 - 1]];
            }
            break;
        }
        case GAME_MODE_SELECTION:
        {
            if (btnAndStick & CONT_DOWN) {
                if (D_800E86AC[D_8018EDF3 - 1] < D_800F2B58[D_8018EDF3 + 7]) {
                    D_800E86AC[D_8018EDF3 - 1] += 1;
                    func_800B44AC();
                    play_sound2(0x49008000);
                }
            }
            // L800B2D94
            if (btnAndStick & CONT_UP) {
                if (D_800E86AC[D_8018EDF3 - 1] > 0) {
                    D_800E86AC[D_8018EDF3 - 1] -= 1;
                    func_800B44AC();
                    play_sound2(0x49008000);
                }
            }
            // L800B2DE0
            if (btnAndStick & CONT_B) {
                gMainMenuSelectionDepth = PLAYER_NUM_SELECTION;
                func_800B44AC();
                play_sound2(0x49008002);
                newMode = gGameModeFromNumPlayersAndRowSelection[D_8018EDF3][D_800E86AC[D_8018EDF3 - 1]];
            } else if (btnAndStick & CONT_A) {
                // L800B2E3C
                switch(gGameModeFromNumPlayersAndRowSelection[D_8018EDF3][D_800E86AC[D_8018EDF3 - 1]]) {
                    case 0: 
                        gMainMenuSelectionDepth = GAME_MODE_CC_OR_TIME_TRIALS_OPTIONS_SELECTION;
                        play_sound2(0x4900900A);
                        break;
                    case 2:
                        gMainMenuSelectionDepth = GAME_MODE_CC_OR_TIME_TRIALS_OPTIONS_SELECTION;
                        play_sound2(0x4900900C);
                        break;
                    case 1:
                        gMainMenuSelectionDepth = GAME_MODE_CC_OR_TIME_TRIALS_OPTIONS_SELECTION;
                        play_sound2(0x4900900B);
                        break;
                    case 3:
                        gMainMenuSelectionDepth = CONFIRM_OK_SELECTION;
                        play_sound2(0x4900900D);
                        break;
                    default:
                        gMainMenuSelectionDepth = CONFIRM_OK_SELECTION;
                        break;
                }
                // L800B2F04
                func_800B44AC();
                gMenuTimingCounter = 0;
                newMode = gGameModeFromNumPlayersAndRowSelection[D_8018EDF3][D_800E86AC[D_8018EDF3 - 1]];
            } else {
                newMode = gGameModeFromNumPlayersAndRowSelection[D_8018EDF3][D_800E86AC[D_8018EDF3 - 1]];
            }
            break;
        }
        case GAME_MODE_CC_OR_TIME_TRIALS_OPTIONS_SELECTION:
        case TIME_TRAILS_DATA_SELECTION_FROM_BACK_OUT:
        {
            if (1);
            if ((arg1 == 0) && (++gMenuTimingCounter == 100 || gMenuTimingCounter % 300 == 0)) {
                // L800B2FAC
                if (gGameModeFromNumPlayersAndRowSelection[D_8018EDF3][D_800E86AC[D_8018EDF3 - 1]] == 0 || gGameModeFromNumPlayersAndRowSelection[D_8018EDF3][D_800E86AC[D_8018EDF3 - 1]] == 2) {
                    play_sound2(0x4900900E);
                }
            }
            // L800B3000
            sp28 = D_800E86B0[D_8018EDF3 - 1][D_800E86AC[D_8018EDF3 - 1]];
            if ((btnAndStick & CONT_UP) && (sp28 > 0)) {
                D_800E86B0[D_8018EDF3 - 1][D_800E86AC[D_8018EDF3 - 1]] -= 1;
                func_800B44AC();
                play_sound2(0x49008000);
            }
            // L800B3068
            if (btnAndStick & CONT_DOWN) {
                sp24 = FALSE;
                if (func_800B555C()) {
                    if (sp28 < D_800F2B64[D_8018EDF3][D_800E86AC[D_8018EDF3 - 1] + 1]) {
                        sp24 = TRUE;
                    }
                } else {
                    // L800B30D4
                    if (sp28 < D_800F2B60[D_8018EDF3]) {
                        sp24 = TRUE;
                    }
                }
                // L800B3110
                if (sp24) {
                    D_800E86B0[D_8018EDF3 - 1][D_8018EDF3] += 1;
                    func_800B44AC();
                    play_sound2(0x49008000);
                }
            }
            // L800B3150
            sp28 = D_800E86B0[D_8018EDF3 - 1][D_800E86AC[D_8018EDF3 - 1]];
            if (btnAndStick & CONT_B) {
                gMainMenuSelectionDepth = GAME_MODE_SELECTION;
                func_800B44AC();
                play_sound2(0x49008002);
                newMode = gGameModeFromNumPlayersAndRowSelection[D_8018EDF3][D_800E86AC[D_8018EDF3 - 1]];
            } else if (btnAndStick & CONT_A) {
                // L800B31DC
                func_800B44AC();
                if (D_8018EDF3 == 1 && D_800E86AC[D_8018EDF3 - 1] == 1 && sp28 == 1) {
                    func_8009E258();
                    play_sound2(0x49009011);
                } else {
                    gMainMenuSelectionDepth = CONFIRM_OK_SELECTION;
                    play_sound2(0x49008001);
                    gMenuTimingCounter = 0;
                }
                newMode = gGameModeFromNumPlayersAndRowSelection[D_8018EDF3][D_800E86AC[D_8018EDF3 - 1]];
            } else {
                // L800B3294
                newMode = gGameModeFromNumPlayersAndRowSelection[D_8018EDF3][D_800E86AC[D_8018EDF3 - 1]];
            }
            break;
        }
        case CONFIRM_OK_SELECTION:
        case CONFIRM_OK_SELECTION_FROM_BACK_OUT:
        {
            if ((arg1 == 0) && (++gMenuTimingCounter == 60 || gMenuTimingCounter % 300 == 0)) {
                play_sound2(0x4900900F);
            }
            // L800B330C
            if (btnAndStick & CONT_B) {
                switch (gGameModeFromNumPlayersAndRowSelection[D_8018EDF3][D_800E86AC[D_8018EDF3 - 1]]) {
                    case 0:
                    case 1:
                    case 2:
                        gMainMenuSelectionDepth = GAME_MODE_CC_OR_TIME_TRIALS_OPTIONS_SELECTION;
                        break;
                    case 3:
                    default:
                        gMainMenuSelectionDepth = GAME_MODE_SELECTION;
                        break;
                }
                // L800B3384
                func_800B44AC();
                play_sound2(0x49008002);
                gMenuTimingCounter = 0;
                newMode = gGameModeFromNumPlayersAndRowSelection[D_8018EDF3][D_800E86AC[D_8018EDF3 - 1]];
            } else if (btnAndStick & CONT_A) {
                // L800B33D8
                func_8009E1C0();
                play_sound2(0x49008016);
                func_800B28C8();
                newMode = gGameModeFromNumPlayersAndRowSelection[D_8018EDF3][D_800E86AC[D_8018EDF3 - 1]];
            } else {
                newMode = gGameModeFromNumPlayersAndRowSelection[D_8018EDF3][D_800E86AC[D_8018EDF3 - 1]];
            }
            break;
        }
        case OPTIONS_SELECTION:
        case DATA_SELECTION:
        {
            newMode = gGameModeFromNumPlayersAndRowSelection[D_8018EDF3][D_800E86AC[D_8018EDF3 - 1]];
            break;
        }
        default:
        {
            newMode = gGameModeFromNumPlayersAndRowSelection[D_8018EDF3][D_800E86AC[D_8018EDF3 - 1]];
            break;
        }
        }
        gModeSelection = newMode;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/menus/main_menu_act.s")
#endif

// check if there is no currently selected and/or hovered character at grid position `gridId`
s32 is_character_spot_free(s32 gridId) {
    s32 i;
    for (i = 0; i < ARRAY_COUNT(gCharacterGridSelections); i++) {
        if (gridId == gCharacterGridSelections[i]) {
            return FALSE;
        }
    }
    return TRUE;
}

#ifdef NON_MATCHING
// grid positions are from right to left, then top to bottom
// nonmatching: the gCharacterGridSelections pointer is not promoted to $s0
void player_select_menu_act(struct Controller *controller, u16 arg1) {
    u16 btnAndStick; // sp36
    s8 selected;
    s8 i;

    btnAndStick = (controller->buttonPressed) | (controller->stickPressed);
    if (!gEnableDebugMode && btnAndStick & CONT_START) {
        btnAndStick |= CONT_A;
    }

    if (!func_800B4520()) {
        switch (D_8018EDEE) {
        case 1: 
        {
            if (gCharacterGridSelections[arg1] == 0) {
                if (btnAndStick & CONT_B) {
                    func_8009E208();
                    play_sound2(0x49008002);
                }
                return;
            }
            // L800B3630
            if (btnAndStick & CONT_B) {
                if (D_8018EDE8[arg1]) {
                    D_8018EDE8[arg1] = FALSE;
                    play_sound2(0x49008002);
                } else {
                    func_8009E208();
                    play_sound2(0x49008002);
                }
            }
            // L800B3684
            if ((btnAndStick & CONT_A) && !D_8018EDE8[arg1]) {
                D_8018EDE8[arg1] = TRUE;
                func_800C90F4(
                    arg1, 
                    (((uintptr_t)D_800F2BAC[gCharacterGridSelections[arg1] - 1]) << 4) + 0x2900800EU
                );
            }
            // L800B36F4
            selected = FALSE;
            for (i = 0; i < ARRAY_COUNT(gCharacterGridSelections); i++) {
                if (gCharacterGridSelections[i] && D_8018EDE8[i]) {
                    selected = TRUE;
                    break;
                }
            }
            // L800B3738
            if (!selected) {
                D_8018EDEE = 2;
                func_800B44AC();
                gMenuTimingCounter = 0;
            }
            // L800B3768
            if (D_8018EDE8[arg1]) {
                if ((btnAndStick & CONT_RIGHT) && (btnAndStick & CONT_DOWN)) {
                    if (gCharacterGridSelections[arg1] == 1 || gCharacterGridSelections[arg1] == 2 || gCharacterGridSelections[arg1] == 3) {
                        // L800B37B0
                        if (is_character_spot_free(gCharacterGridSelections[arg1] + 5)) {
                            gCharacterGridSelections[arg1] += 5;
                            play_sound2(0x49008000);
                        }
                    }
                    return;
                }
                // L800B37E4
                if ((btnAndStick & CONT_LEFT) && (btnAndStick & CONT_DOWN)) {
                    if (gCharacterGridSelections[arg1] == 2 || gCharacterGridSelections[arg1] == 3 || gCharacterGridSelections[arg1] == 4) {
                        if (is_character_spot_free(gCharacterGridSelections[arg1] + 3)) {
                            gCharacterGridSelections[arg1] += 3;
                            play_sound2(0x49008000);
                        }
                    }
                    return;
                }
                // L800B3844
                if ((btnAndStick & CONT_RIGHT) && (btnAndStick & CONT_UP)) {
                    if (gCharacterGridSelections[arg1] == 5 || gCharacterGridSelections[arg1] == 6 || gCharacterGridSelections[arg1] == 7) {
                        if (is_character_spot_free(gCharacterGridSelections[arg1] - 3)) {
                            gCharacterGridSelections[arg1] -= 3;
                            play_sound2(0x49008000);
                        }
                    }
                    return;
                }
                // L800B38A0
                if ((btnAndStick & CONT_LEFT) && (btnAndStick & CONT_UP)) {
                    if (gCharacterGridSelections[arg1] == 6 || gCharacterGridSelections[arg1] == 7 || gCharacterGridSelections[arg1] == 8) {
                        if (is_character_spot_free(gCharacterGridSelections[arg1] - 5)) {
                            gCharacterGridSelections[arg1] -= 5;
                            play_sound2(0x49008000);
                        }
                    }
                    return;
                }
                // L800B38FC
                if (btnAndStick & CONT_RIGHT) {
                    if (gCharacterGridSelections[arg1] != 4 && gCharacterGridSelections[arg1] != 8) {
                        do {
                            // L800B391C
                            if (is_character_spot_free(gCharacterGridSelections[arg1] + 1)) {
                                gCharacterGridSelections[arg1] += 1;
                                play_sound2(0x49008000);
                                break;
                            }
                            gCharacterGridSelections[arg1] += 1;

                        } while (gCharacterGridSelections[arg1] != 5 && gCharacterGridSelections[arg1] != 9 && gCharacterGridSelections[arg1] <= 10);
                    }
                    return;
                }
                // L800B3978
                if (btnAndStick & CONT_LEFT) {
                    if (gCharacterGridSelections[arg1] != 1 && gCharacterGridSelections[arg1] != 5) {
                        do {
                            if (is_character_spot_free(gCharacterGridSelections[arg1] - 1)) {
                                gCharacterGridSelections[arg1] -= 1;
                                play_sound2(0x49008000);
                                break;
                            }
                            gCharacterGridSelections[arg1] -= 1;
                        } while (gCharacterGridSelections[arg1] != 0 && gCharacterGridSelections[arg1] != 4 && gCharacterGridSelections[arg1] >= 0);
                    }
                    return;
                }
                // L800B39F4
                if ((btnAndStick & CONT_UP) && (gCharacterGridSelections[arg1] >= 5)) {
                    gCharacterGridSelections[arg1] -= 4;
                }
                if ((btnAndStick & CONT_DOWN) && (gCharacterGridSelections[arg1] < 5)) {
                    gCharacterGridSelections[arg1] += 4;
                }
                // L800B3A30
                if (is_character_spot_free(gCharacterGridSelections[arg1])) {
                    play_sound2(0x49008000);
                }
            }
            break;
        }
        case 2:
        case 3:
        {
            if (!arg1 && (++gMenuTimingCounter == 60 || gMenuSelection % 300 == 0)) {
                // L800B3A94
                play_sound2(0x4900900F);
            }
            // L800B3AA4
            if (btnAndStick & CONT_B) {
                D_8018EDEE = 1;
                D_8018EDE8[arg1] = FALSE;
                play_sound2(0x49008002);
            } else if (btnAndStick & CONT_A) {
                func_8009E1C0();
                play_sound2(0x49008016);
                func_8000F124();
            }
            break;
        }
        }
        // L800B3B24
        if (gCharacterGridSelections[arg1] != 0) {
            gCharacterSelections[arg1] = D_800F2BAC[gCharacterGridSelections[arg1] - 1];
        }
    }
    // L800B3B44
}
#else
GLOBAL_ASM("asm/non_matchings/menus/player_select_menu_act.s")
#endif

// Handle navigating the course menu interface
void course_select_menu_act(struct Controller *arg0, u16 arg1) {
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

void func_800B3F74(s32 menuSelection) {
    s32 i;

    gDebugMenuSelection = DEBUG_MENU_DISABLED;
    gMenuTimingCounter = 0;
    D_8018EE04 = 0;
    D_8018EE08 = 0;
    D_8015F890 = 0;
    D_8015F892 = 0;
    gDebugGotoScene = DEBUG_GOTO_RACING;
    D_8018EDFB = 0;
    D_8016556E = 0;
    *D_80162DD4 = 1;
    D_80162DD8 = 1;
    D_80162E00 = 0;
    D_80162DC8 = 1;
    D_80162DCC = 0;

    switch (menuSelection) {
    case 5: D_8018EDEC = 21; break;
    case 6: D_8018EDEC =  1; break;
    case 7: D_8018EDEC = 11; break;
    case 8: func_800CA008(0, 0); break;
    case 9:
    {
        gControllerPakMenuSelection = CONTROLLER_PAK_MENU_SELECT_RECORD;
        func_800CA008(0, 0);
        break;
    }
    case 0:
    case 10:
    {
        gIsMirrorMode = 0;
        gEnableDebugMode = 0;
        gCupSelection = MUSHROOM_CUP;
        gCupCourseSelection = 0;
        gTimeTrialDataCourseIndex = 0;
        if (D_8018EDF3 <= 0) {
            D_8018EDF3 = 1;
        }
        if (D_8018EDF3 >= 5) {
            D_8018EDF3 = 4;
        }
        D_8018EDF1 = D_800F2BDC[D_8018EDF3 + 3];
        func_800CA008(0, 0);
        func_800C8EAC(1);
        D_8018EDFC = 0;
        break;
    }
    case 1:
    case 11:
    {
        gEnableDebugMode = 0;
        gIsMirrorMode = 0;
        D_8018EDFC = 0;
        func_800B5F30();
        func_8000F0E0();

        if (gGamestate != 0) {
            func_800CA008(0, 0);
            func_800CB2C4();
            gGamestate = 0;
            gGamestateNext = 0;
            func_800C8EAC(2);
        }

        switch (D_8018EDE0) {
        case 0:
        {
            gMainMenuSelectionDepth = PLAYER_NUM_SELECTION;
            func_800C8EAC(2);
            D_8018EDF3 = 1;
            if (gScreenModeSelection >= NUM_SCREEN_MODES || gScreenModeSelection < 0) {
                gScreenModeSelection = SCREEN_MODE_1P;
            }
            break;
        }
        case 1:
        {
            gMainMenuSelectionDepth = CONFIRM_OK_SELECTION_FROM_BACK_OUT;
            break;
        }
        case 3:
        {
            // why...
            switch (gMainMenuSelectionDepth) {
                default:
                    gMainMenuSelectionDepth = TIME_TRAILS_DATA_SELECTION_FROM_BACK_OUT;
                    break;
                case OPTIONS_SELECTION:
                case DATA_SELECTION:
                    gMainMenuSelectionDepth = PLAYER_NUM_SELECTION;
                    break;
            }
            break;
        }
        case 4:
        {
            gMainMenuSelectionDepth = PLAYER_NUM_SELECTION;
            break;
        }
        }
        break;
    }
    case 2:
    case 12:
    {
        switch (D_8018EDE0) {
        case 0:
        {
            D_8018EDEE = 1;
            if (gGamestate == 0) {
                for (i = 0; i < 4; i++) {
                    if (i < D_8018EDF3) {
                        gCharacterGridSelections[i] = i + 1;
                    } else {
                        gCharacterGridSelections[i] = 0;
                    }
                    D_8018EDE8[i] = FALSE;
                    gCharacterSelections[i] = i;
                }
                play_sound2(0x49009012);
            } else {
                func_800CA008(0, 0);
                func_800CB2C4();
                gGamestate = 0;
                gGamestateNext = 0;
                func_800C8EAC(2);
                for (i = 0; i < ARRAY_COUNT(D_8018EDE8); i++) {
                    D_8018EDE8[i] = FALSE;
                }
            }
            break;
        }
        case 1:
        {
            D_8018EDEE = 3;
            for (i = 0; i < ARRAY_COUNT(D_8018EDE8); i++) {
                if (D_8018EDF3 > i) {
                    D_8018EDE8[i] = TRUE;
                } else {
                    D_8018EDE8[i] = FALSE;
                }
            }
            break;
        }
        }
        break;
    }
    case 3:
    case 13:
    {
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
        if (gGamestate != 0) {
            func_800CA008(0, 0);
            func_800CB2C4();
            gGamestate = 0;
            gGamestateNext = 0;
            func_800C8EAC(2);
        }
        play_sound2(0x49009013);
        D_8018EE0A = 0;
        if (gModeSelection == GRAND_PRIX) {
            gCupCourseSelection = 0;
        }

        for (i = 0; i < ARRAY_COUNT(gGPPointsByCharacterId); i++) {
            gGPPointsByCharacterId[i] = 0;
        }
        break;
    }
    }
    func_800B44AC();
}

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

// Likely checks that the user is actually in the menus and not racing.
s32 func_800B4520(void) {

    if ((D_8018E7B0 == 2) || (D_8018E7B0 == 3) || (D_8018E7B0 == 4) || (D_8018E7B0 == 7)) {
        return 1;
    }
    return 0;
}

UNUSED void func_800B4560(s32 arg0, s32 arg1) {
    struct_8018EE10_entry *pak1 = D_8018EE10;
    struct_8018EE10_entry *pak2 = D_8018D9C0;

    rmonPrintf("ghost_kart=%d,", D_80162DE0);
    rmonPrintf("pak1_ghost_kart=%d,", (pak1 + arg0)->characterId);
    rmonPrintf("pak2_ghost_kart=%d\n", (pak2 + arg1)->characterId);
}
