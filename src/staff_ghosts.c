#include <ultra64.h>
#include <macros.h>
#include <common_structs.h>
#include <defines.h>
#include <decode.h>
#include <mk64.h>
#include <course.h>

#include "main.h"
#include "code_800029B0.h"
#include "buffers.h"
#include "save.h"
#include "staff_ghosts.h"
#include "code_8006E9C0.h"
#include "menu_items.h"
#include "code_80057C60.h"
#include "kart_dma.h"

extern s32 mio0encode(s32 input, s32, s32);
extern s32 func_80040174(void*, s32, s32);

u8* D_80162D80;
s16 D_80162D84;
s16 D_80162D86;
static u16 sButtonsPrevPlayerGhost;

static u32 sPlayerGhostFramesRemaining;
static s16 sPlayerGhostDataIdx;
static u32* sPlayerGhostData;

static u16 sButtonsPrevCourseGhost;
static u32 sCourseGhostFramesRemaining;
static s16 sCourseGhostDataIndex;
static u32* sCourseGhostData;

static u16 sButtonsPrevReplay;
static s32 sReplayFramesRemaining;
static s16 sReplayDataIdx;
static u32* replayData;

static s16 sPlayerInputIdx;
static u32* sPlayerInputs;

u16 D_80162DC0;
u32 D_80162DC4;
s32 D_80162DC8;
s32 D_80162DCC;
s32 D_80162DD0;
u16 gPlayerGhostDisabled;
u16 gCourseGhostDisabled;
u16 D_80162DD8;
s32 D_80162DDC;
s32 D_80162DE0; // ghost kart id?
s32 D_80162DE4;
s32 D_80162DE8;
UNUSED s32 UNUSED_VAR2;
s32 gPauseTriggered;
UNUSED s32 UNUSED_VAR1;
s32 gReplayCannotSave;
s32 D_80162DFC;

s32 D_80162E00;

u32* D_800DC710 = (u32*) &D_802BFB80.arraySize8[0][2][3];
u32* D_800DC714 = (u32*) &D_802BFB80.arraySize8[1][1][3];

extern s32 gLapCountByPlayerId[];

extern StaffGhost* d_mario_raceway_staff_ghost;
extern StaffGhost* d_royal_raceway_staff_ghost;
extern StaffGhost* d_luigi_raceway_staff_ghost;

void func_80004EF0(void) {
    sCourseGhostData = (u32*) &D_802BFB80.arraySize8[0][2][3];
    osInvalDCache(&sCourseGhostData[0], 0x4000);
    osPiStartDma(&gDmaIoMesg, 0, 0, (uintptr_t) &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(D_80162DC4)], sCourseGhostData,
                 0x4000, &gDmaMesgQueue);
    osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, OS_MESG_BLOCK);
    sCourseGhostFramesRemaining = (*sCourseGhostData & 0xFF0000);
    sCourseGhostDataIndex = 0;
}

void func_80004FB0(void) {
    replayData = (u32*) &D_802BFB80.arraySize8[0][D_80162DD0][3];
    sReplayFramesRemaining = *replayData & 0xFF0000;
    sReplayDataIdx = 0;
}

void func_80004FF8(void) {
    sPlayerGhostData = (u32*) &D_802BFB80.arraySize8[0][D_80162DC8][3];
    sPlayerGhostFramesRemaining = (s32) *sPlayerGhostData & 0xFF0000;
    sPlayerGhostDataIdx = 0;
}
/**
 * Activates staff ghost if time trial lap time is low enough
 *
 */
#ifdef VERSION_EU
#define GHOST_UNLOCK_MARIO 10700
#define GHOST_UNLOCK_ROYAL 19300
#define GHOST_UNLOCK_LUIGI 13300
#else
#define GHOST_UNLOCK_MARIO 9000
#define GHOST_UNLOCK_ROYAL 16000
#define GHOST_UNLOCK_LUIGI 11200

#endif

void set_staff_ghost(void) {
    u32 bestTime; // Appears to be best player 3lap time.
#if !ENABLE_CUSTOM_COURSE_ENGINE
    switch (gCurrentCourseId) {
        case COURSE_MARIO_RACEWAY:
            bestTime = func_800B4E24(0) & 0xfffff;
            if (bestTime <= GHOST_UNLOCK_MARIO) {
                gCourseGhostDisabled = 0;
                UNUSED_VAR1 = 0;
            } else {
                gCourseGhostDisabled = 1;
                UNUSED_VAR1 = 1;
            }
            D_80162DC4 = (u32) &d_mario_raceway_staff_ghost;
            D_80162DE4 = 0;
            break;
        case COURSE_ROYAL_RACEWAY:
            bestTime = func_800B4E24(0) & 0xfffff;
            if (bestTime <= GHOST_UNLOCK_ROYAL) {
                gCourseGhostDisabled = 0;
                UNUSED_VAR1 = 0;
            } else {
                gCourseGhostDisabled = 1;
                UNUSED_VAR1 = 1;
            }
            D_80162DC4 = (u32) &d_royal_raceway_staff_ghost;
            D_80162DE4 = 6;
            break;
        case COURSE_LUIGI_RACEWAY:
            bestTime = func_800B4E24(0) & 0xfffff;
            if (bestTime <= GHOST_UNLOCK_LUIGI) {
                gCourseGhostDisabled = 0;
                UNUSED_VAR1 = 0;
            } else {
                gCourseGhostDisabled = 1;
                UNUSED_VAR1 = 1;
            }
            D_80162DC4 = (u32) &d_luigi_raceway_staff_ghost;
            D_80162DE4 = 1;
            break;
        default:
            gCourseGhostDisabled = 1;
            UNUSED_VAR1 = 1;
    }
#else

#endif
}

s32 func_800051C4(void) {
    s32 phi_v0;

    if (D_80162D84 != 0) {
        // func_80040174 in mio0_decode.s
        func_80040174((void*) D_80162D80, (D_80162D84 * 4) + 0x20, (s32) D_800DC710);
        phi_v0 = mio0encode((s32) D_800DC710, (D_80162D84 * 4) + 0x20, (s32) D_800DC714);
        return phi_v0 + 0x1e;
    }
}

void func_8000522C(void) {
    sPlayerGhostData = (u32*) &D_802BFB80.arraySize8[0][D_80162DC8][3];
    mio0decode((u8*) D_800DC714, (u8*) sPlayerGhostData);
    sPlayerGhostFramesRemaining = (s32) (*sPlayerGhostData & 0xFF0000);
    sPlayerGhostDataIdx = 0;
    D_80162E00 = 1;
}

void func_800052A4(void) {
    s16 temp_v0;

    if (D_80162DC8 == 1) {
        D_80162DC8 = 0;
        D_80162DCC = 1;
    } else {
        D_80162DC8 = 1;
        D_80162DCC = 0;
    }
    temp_v0 = sPlayerInputIdx;
    D_80162D80 = (void*) &D_802BFB80.arraySize8[0][D_80162DC8][3];
    D_80162D84 = temp_v0;
    D_80162D86 = temp_v0;
}

void func_80005310(void) {

    if (gModeSelection == TIME_TRIALS) {

        set_staff_ghost();

        if (D_80162DC0 != gCurrentCourseId) {
            gPlayerGhostDisabled = 1;
        }

        D_80162DC0 = (u16) gCurrentCourseId;
        gPauseTriggered = 0;
        UNUSED_VAR2 = 0;
        gReplayCannotSave = 0;

        if (gModeSelection == TIME_TRIALS && gActiveScreenMode == SCREEN_MODE_1P) {

            if (D_8015F890 == 1) {
                func_80004FB0();
                if (D_80162DD8 == 0) {
                    func_80004FF8();
                }
                if (gCourseGhostDisabled == 0) {
                    func_80004EF0();
                }
            } else {

                D_80162DD8 = 1U;
                sPlayerInputs = (u32*) &D_802BFB80.arraySize8[0][D_80162DCC][3];
                sPlayerInputs[0] = -1;
                sPlayerInputIdx = 0;
                D_80162DDC = 0;
                func_80091EE4();
                if (gPlayerGhostDisabled == 0) {
                    func_80004FF8();
                }
                if (gCourseGhostDisabled == 0) {
                    func_80004EF0();
                }
            }
        }
    }
}

void process_replay_inputs(void) {
    u32 inputs;
    u32 stickBytes;
    UNUSED u16 unk;
    u16 buttons_temp;
    s16 stickVal;
    s16 buttons = 0;

    if (sReplayDataIdx >= 0x1000) {
        gPlayerOne->type = PLAYER_CINEMATIC_MODE | PLAYER_START_SEQUENCE | PLAYER_CPU;
        return;
    }

    inputs = replayData[sReplayDataIdx];
    stickBytes = inputs & 0xFF;

    if (stickBytes < 0x80U) {
        stickVal = (s16) (stickBytes & 0xFF);
    } else {
        stickVal = (s16) (stickBytes | (~0xFF));
    }

    stickBytes = (u32) (inputs & 0xFF00) >> 8;
    gControllerEight->rawStickX = stickVal;

    if (stickBytes < 0x80U) {
        stickVal = (s16) (stickBytes & 0xFF);
    } else {
        stickVal = (s16) (stickBytes | (~0xFF));
    }
    gControllerEight->rawStickY = stickVal;
    if (inputs & 1 << 31) {
        buttons |= A_BUTTON;
    }
    if (inputs & 1 << 30) {
        buttons |= B_BUTTON;
    }
    if (inputs & 1 << 29) {
        buttons |= Z_TRIG;
    }
    if (inputs & 1 << 28) {
        buttons |= R_TRIG;
    }
    buttons_temp = gControllerEight->buttonPressed & 0x1F0F;
    gControllerEight->buttonPressed = (buttons & (buttons ^ sButtonsPrevReplay)) | buttons_temp;
    buttons_temp = gControllerEight->buttonDepressed & 0x1F0F;
    gControllerEight->buttonDepressed = (sButtonsPrevReplay & (buttons ^ sButtonsPrevReplay)) | buttons_temp;
    sButtonsPrevReplay = buttons;
    gControllerEight->button = buttons;

    if (sReplayFramesRemaining == 0) {
        sReplayDataIdx++;
        sReplayFramesRemaining = (s32) (replayData[sReplayDataIdx] & 0xFF0000);
    } else {
        sReplayFramesRemaining -= 0x10000;
    }
}

void process_course_ghost_inputs(void) {
    u32 inputs;
    u32 stickBytes;
    UNUSED u16 unk;
    u16 buttonsTemp;
    s16 stickVal;
    s16 buttons = 0;
    if (sCourseGhostDataIndex >= 0x1000) {
        func_80005AE8(gPlayerThree);
        return;
    }
    
    inputs = sCourseGhostData[sCourseGhostDataIndex];
    stickBytes = inputs & 0xFF;
    // converting signed 8-bit values to signed 16-bit values
    if (stickBytes < 0x80U) {
        stickVal = (s16) (stickBytes & 0xFF);
    }
    else {
        stickVal = (s16) (stickBytes | (~0xFF));
    }
    stickBytes = (u32) (inputs & 0xFF00) >> 8;
    gControllerSeven->rawStickX = stickVal;

    if (stickBytes < 0x80U) {
        stickVal = (s16) (stickBytes & 0xFF);
    } else {
        stickVal = (s16) (stickBytes | (~0xFF));
    }
    gControllerSeven->rawStickY = stickVal;

    if (inputs & 1 << 31) {
        buttons = A_BUTTON;
    }
    if (inputs & 1 << 30) {
        buttons |= B_BUTTON;
    }
    if (inputs & 1 << 29) {
        buttons |= Z_TRIG;
    }
    if (inputs & 1 << 28) {
        buttons |= R_TRIG;
    }
    // Blanks the A, B, Z, R and L buttons
    buttonsTemp = gControllerSeven->buttonPressed & 0x1F0F;
    gControllerSeven->buttonPressed = (buttons & (buttons ^ sButtonsPrevCourseGhost)) | buttonsTemp;
    buttonsTemp = gControllerSeven->buttonDepressed & 0x1F0F;
    gControllerSeven->buttonDepressed = (sButtonsPrevCourseGhost & (buttons ^ sButtonsPrevCourseGhost)) | buttonsTemp;
    sButtonsPrevCourseGhost = buttons;
    gControllerSeven->button = buttons;
    if (sCourseGhostFramesRemaining == 0) {
        sCourseGhostDataIndex++;
        sCourseGhostFramesRemaining = (s32) (sCourseGhostData[sCourseGhostDataIndex] & 0xFF0000);
    } else {
        sCourseGhostFramesRemaining -= (s32) 0x10000;
    }
}

// bits 1-8: Stick X
// bits 9-16: Stick Y
// bits 17-24: counter
// bits 25-28: Unused? 
// bit 29: R
// bit 30: Z
// bit 31: B
// bit 32: A
void process_player_ghost_inputs(void) {
    u32 inputs;
    u32 stickBytes;
    UNUSED u16 unk;
    u16 buttons_temp;
    s16 stickVal;
    s16 buttons = 0;

    if (sPlayerGhostDataIdx >= 0x1000) {
        func_80005AE8(gPlayerTwo);
        return;
    }
    inputs = sPlayerGhostData[sPlayerGhostDataIdx];
    stickBytes = inputs & 0xFF;
    if (stickBytes < 0x80U) {
        stickVal = (s16) (stickBytes & 0xFF);
    } else {
        stickVal = (s16) (stickBytes | ~0xFF);
    }

    stickBytes = (u32) (inputs & 0xFF00) >> 8;

    gControllerSix->rawStickX = stickVal;

    if (stickBytes < 0x80U) {
        stickVal = (s16) (stickBytes & 0xFF);
    } else {
        stickVal = (s16) (stickBytes | (~0xFF));
    }

    gControllerSix->rawStickY = stickVal;

    if (inputs & 1 << 31) {   //ABZ(start) (D-Up D-Dn D-L D-R) (xx LR) (C-up C-Dn C-L C-R)
        buttons = A_BUTTON;
    }
    if (inputs & 1 << 30) {
        buttons |= B_BUTTON;
    }
    if (inputs & 1 << 29) {
        buttons |= Z_TRIG;
    }
    /* This is strange. My assumption is that they remapped the R-Trigger at some point after creating the ghosts.
    Instead of re-recording the ghosts, I guess they just fixed it here */
    if (inputs & 1 << 28) {
        buttons |= R_TRIG;
    }
    buttons_temp = gControllerSix->buttonPressed & 0x1F0F;
    gControllerSix->buttonPressed = (buttons & (buttons ^ sButtonsPrevPlayerGhost)) | buttons_temp;

    buttons_temp = gControllerSix->buttonDepressed & 0x1F0F;
    gControllerSix->buttonDepressed = (sButtonsPrevPlayerGhost & (buttons ^ sButtonsPrevPlayerGhost)) | buttons_temp;
    sButtonsPrevPlayerGhost = buttons;
    gControllerSix->button = buttons;

    if (sPlayerGhostFramesRemaining == 0) {
        sPlayerGhostDataIdx++;
        sPlayerGhostFramesRemaining = (s32) (sPlayerGhostData[sPlayerGhostDataIdx] & 0xFF0000);
    } else {
        sPlayerGhostFramesRemaining -= (s32) 0x10000;
    }
}

void save_player_inputs(void) {
    s16 buttons;
    u32 inputs;
    u32 stickX;
    u32 stickY;
    u32 inputCounter;
    u32 prevInputsWCounter;
    u32 prevInputs;
    /* Input file is too long or picked up by lakitu or Out of bounds
    Not sure if there is any way to be considered out of bounds without lakitu getting called */
    if (((sPlayerInputIdx >= 0x1000) || ((gPlayerOne->unk_0CA & 2) != 0)) || ((gPlayerOne->unk_0CA & 8) != 0)) {
        gReplayCannotSave = 1;
        return;
    }

    stickX = gControllerOne->rawStickX;
    stickX &= 0xFF;
    stickY = gControllerOne->rawStickY;
    stickY = (stickY & 0xFF) << 8;
    buttons = gControllerOne->button;
    inputs = 0;
    if (buttons & A_BUTTON) {
        inputs |= 1 << 31;
    }
    if (buttons & B_BUTTON) {
        inputs |= 1 << 30;
    }
    if (buttons & Z_TRIG) {
        inputs |= 1 << 29;
    }
    if (buttons & R_TRIG) {
        inputs |= 1 << 28;
    }
    inputs |= stickX;
    inputs |= stickY;
    prevInputsWCounter = sPlayerInputs[sPlayerInputIdx];
    /* The 5th and 6th bytes from the right are counters. Instead of saving the same inputs over and over,
    it says "these inputs were played for __ frames" */
    prevInputs = prevInputsWCounter & 0xFF00FFFF;
    // first frame of inputs
    if ((*sPlayerInputs) == 0xFFFFFFFF) {

        sPlayerInputs[sPlayerInputIdx] = inputs;

    } else if (prevInputs == inputs) {

        inputCounter = prevInputsWCounter & 0xFF0000;

        if (inputCounter == 0xFF0000) {

            sPlayerInputIdx++;
            sPlayerInputs[sPlayerInputIdx] = inputs;

        } else {
            // increment counter by 1
            prevInputsWCounter += 0x10000;
            sPlayerInputs[sPlayerInputIdx] = prevInputsWCounter;
        }
    } else {
        sPlayerInputIdx++;
        sPlayerInputs[sPlayerInputIdx] = inputs;
    }
}

// sets player to AI? (unconfirmed)
void func_80005AE8(Player* ply) {
    if (((ply->type & PLAYER_INVISIBLE_OR_BOMB) != 0) && (ply != gPlayerOne)) {
        ply->type = PLAYER_CINEMATIC_MODE | PLAYER_START_SEQUENCE | PLAYER_CPU;
    }
}

void func_80005B18(void) {
    if (gModeSelection == TIME_TRIALS) {
        if ((gLapCountByPlayerId[0] == 3) && (D_80162DDC == 0) && (gReplayCannotSave != 1)) {
            if (gPlayerGhostDisabled == 1) {
                D_80162DD0 = D_80162DCC;
                func_800052A4();
                gPlayerGhostDisabled = 0;
                D_80162DDC = 1;
                D_80162DE0 = gPlayerOne->characterId;
                D_80162DE8 = gPlayerOne->characterId;
                D_80162E00 = 0;
                D_80162DFC = playerHUD[PLAYER_ONE].someTimer;
                func_80005AE8(gPlayerTwo);
                func_80005AE8(gPlayerThree);
            } else if (gLapCountByPlayerId[1] != 3) {
                D_80162DD0 = D_80162DCC;
                func_800052A4();
                D_80162DDC = 1;
                D_80162DE0 = gPlayerOne->characterId;
                D_80162DFC = playerHUD[PLAYER_ONE].someTimer;
                D_80162E00 = 0;
                D_80162DE8 = gPlayerOne->characterId;
                func_80005AE8(gPlayerTwo);
                func_80005AE8(gPlayerThree);
            } else {
                D_80162D80 = D_802BFB80.arraySize8[0][D_80162DC8][3].pixel_index_array;
                D_80162D84 = D_80162D86;
                D_80162DD0 = D_80162DCC;
                D_80162DE8 = gPlayerOne->characterId;
                D_80162DD8 = 0;
                gPlayerGhostDisabled = 0;
                D_80162DDC = 1;
                func_80005AE8(gPlayerTwo);
                func_80005AE8(gPlayerThree);
            }
        } 
        else {
            if ((gLapCountByPlayerId[0] == 3) && (D_80162DDC == 0) && (gReplayCannotSave == 1)) {
                D_80162D80 = D_802BFB80.arraySize8[0][D_80162DC8][3].pixel_index_array;
                D_80162D84 = D_80162D86;
                D_80162DDC = 1;
            }
            if ((gPlayerOne->type & 0x800) == 0x800) {
                func_80005AE8(gPlayerTwo);
                func_80005AE8(gPlayerThree);
            }
            else {
                UNUSED_VAR2 += 1;
                if (UNUSED_VAR2 >= 101) {
                    UNUSED_VAR2 = 100;
                }
                if ((gModeSelection == TIME_TRIALS) && (gActiveScreenMode == SCREEN_MODE_1P)) {
                    if ((gPlayerGhostDisabled == 0) && (gLapCountByPlayerId[1] != 3)) {
                        process_player_ghost_inputs();
                    }
                    if ((gCourseGhostDisabled == 0) && (gLapCountByPlayerId[2] != 3)) {
                        process_course_ghost_inputs();
                    }
                    if (!(gPlayerOne->type & PLAYER_CINEMATIC_MODE)) {
                        save_player_inputs();
                    }
                }
            }
        }
    }
}

void func_80005E6C(void) {
    if ((gModeSelection == TIME_TRIALS) && (gModeSelection == TIME_TRIALS) && (gActiveScreenMode == SCREEN_MODE_1P)) {
        if ((D_80162DD8 == 0) && (gLapCountByPlayerId[1] != 3)) {
            process_player_ghost_inputs(); // 3
        }
        if ((gCourseGhostDisabled == 0) && (gLapCountByPlayerId[2] != 3)) {
            process_course_ghost_inputs(); // 2
        }
        if ((gPlayerOne->type & PLAYER_CINEMATIC_MODE) != PLAYER_CINEMATIC_MODE) {
            process_replay_inputs(); // 1
            return;
        }
        func_80005AE8(gPlayerTwo);
        func_80005AE8(gPlayerThree);
    }
}

void staff_ghosts_loop(void) {
    if (D_8015F890 == 1) {
        func_80005E6C();
        return;
    }
    if (!gPauseTriggered) {
        func_80005B18();
        return;
    }
    // This only gets triggered when the game is paused.
    gReplayCannotSave = 1;
}
