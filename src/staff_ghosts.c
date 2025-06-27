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

static u16 sPlayerGhostButtonsPrev;
static u32 sPlayerGhostFramesRemaining;
static s16 sPlayerGhostReplayIdx;
static u32* sPlayerGhostReplay;

static u16 sButtonsPrevCourseGhost;
static u32 sCourseGhostFramesRemaining;
static s16 sCourseGhostReplayIdx;
static u32* sCourseGhostReplay;

static u16 sPostTTButtonsPrev;
static s32 sPostTTFramesRemaining;
static s16 sPostTTReplayIdx;
static u32* sPostTTReplay;

static s16 sPlayerInputIdx;
static u32* sPlayerInputs;

u16 D_80162DC0;
u32 D_80162DC4;
s32 D_80162DC8;
s32 D_80162DCC;
s32 D_80162DD0;
u16 bPlayerGhostDisabled;
u16 bCourseGhostDisabled;
u16 D_80162DD8;
s32 D_80162DDC;
s32 D_80162DE0; // ghost kart id?
s32 D_80162DE4;
s32 D_80162DE8;
UNUSED static s32 sUnusedReplayCounter;
s32 gPauseTriggered;
UNUSED static s32 bUnusedCourseGhostDisabled;
s32 gPostTTReplayCannotSave;
s32 D_80162DFC;

s32 D_80162E00;

u32* D_800DC710 = (u32*) &D_802BFB80.arraySize8[0][2][3];
u32* D_800DC714 = (u32*) &D_802BFB80.arraySize8[1][1][3];

extern s32 gLapCountByPlayerId[];

extern StaffGhost* d_mario_raceway_staff_ghost;
extern StaffGhost* d_royal_raceway_staff_ghost;
extern StaffGhost* d_luigi_raceway_staff_ghost;

void func_80004EF0(void) {
    sCourseGhostReplay = (u32*) &D_802BFB80.arraySize8[0][2][3];
    osInvalDCache(&sCourseGhostReplay[0], 0x4000);
    osPiStartDma(&gDmaIoMesg, 0, 0, (uintptr_t) &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(D_80162DC4)], sCourseGhostReplay,
                 0x4000, &gDmaMesgQueue);
    osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, OS_MESG_BLOCK);
    sCourseGhostFramesRemaining = (*sCourseGhostReplay & 0xFF0000);
    sCourseGhostReplayIdx = 0;
}

void func_80004FB0(void) {
    sPostTTReplay = (u32*) &D_802BFB80.arraySize8[0][D_80162DD0][3];
    sPostTTFramesRemaining = *sPostTTReplay & 0xFF0000;
    sPostTTReplayIdx = 0;
}

void func_80004FF8(void) {
    sPlayerGhostReplay = (u32*) &D_802BFB80.arraySize8[0][D_80162DC8][3];
    sPlayerGhostFramesRemaining = (s32) *sPlayerGhostReplay & 0xFF0000;
    sPlayerGhostReplayIdx = 0;
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
                bCourseGhostDisabled = 0;
                bUnusedCourseGhostDisabled = 0;
            } else {
                bCourseGhostDisabled = 1;
                bUnusedCourseGhostDisabled = 1;
            }
            D_80162DC4 = (u32) &d_mario_raceway_staff_ghost;
            D_80162DE4 = 0;
            break;
        case COURSE_ROYAL_RACEWAY:
            bestTime = func_800B4E24(0) & 0xfffff;
            if (bestTime <= GHOST_UNLOCK_ROYAL) {
                bCourseGhostDisabled = 0;
                bUnusedCourseGhostDisabled = 0;
            } else {
                bCourseGhostDisabled = 1;
                bUnusedCourseGhostDisabled = 1;
            }
            D_80162DC4 = (u32) &d_royal_raceway_staff_ghost;
            D_80162DE4 = 6;
            break;
        case COURSE_LUIGI_RACEWAY:
            bestTime = func_800B4E24(0) & 0xfffff;
            if (bestTime <= GHOST_UNLOCK_LUIGI) {
                bCourseGhostDisabled = 0;
                bUnusedCourseGhostDisabled = 0;
            } else {
                bCourseGhostDisabled = 1;
                bUnusedCourseGhostDisabled = 1;
            }
            D_80162DC4 = (u32) &d_luigi_raceway_staff_ghost;
            D_80162DE4 = 1;
            break;
        default:
            bCourseGhostDisabled = 1;
            bUnusedCourseGhostDisabled = 1;
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
    sPlayerGhostReplay = (u32*) &D_802BFB80.arraySize8[0][D_80162DC8][3];
    mio0decode((u8*) D_800DC714, (u8*) sPlayerGhostReplay);
    sPlayerGhostFramesRemaining = (s32) (*sPlayerGhostReplay & 0xFF0000);
    sPlayerGhostReplayIdx = 0;
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
            bPlayerGhostDisabled = 1;
        }

        D_80162DC0 = (u16) gCurrentCourseId;
        gPauseTriggered = 0;
        sUnusedReplayCounter = 0;
        gPostTTReplayCannotSave = 0;

        if (gModeSelection == TIME_TRIALS && gActiveScreenMode == SCREEN_MODE_1P) {

            if (D_8015F890 == 1) {
                func_80004FB0();
                if (D_80162DD8 == 0) {
                    func_80004FF8();
                }
                if (bCourseGhostDisabled == 0) {
                    func_80004EF0();
                }
            } else {

                D_80162DD8 = 1U;
                sPlayerInputs = (u32*) &D_802BFB80.arraySize8[0][D_80162DCC][3];
                sPlayerInputs[0] = -1;
                sPlayerInputIdx = 0;
                D_80162DDC = 0;
                func_80091EE4();
                if (bPlayerGhostDisabled == 0) {
                    func_80004FF8();
                }
                if (bCourseGhostDisabled == 0) {
                    func_80004EF0();
                }
            }
        }
    }
}

/* Special handling for buttons saved in replays. The listing of L_TRIG here is odd
 * because it is not saved in the replay data structure. Possibly, L was initially deleted
 * here to make way for the frame counter, but then the format changed when the stick
 * coordinates were added */
#define REPLAY_MASK (ALL_BUTTONS ^ (A_BUTTON | B_BUTTON | Z_TRIG | R_TRIG | L_TRIG))

/* Inputs for replays (including player and course ghosts) are saved in a s32[] where 
   each entry is a combination of the inputs and  how long those inputs were held for.
   In essence it's "These buttons were pressed and the joystick was in this position. 
   This was the case for X frames".

   bits 1-8: Stick X
   bits 9-16: Stick Y
   bits 17-24: Frame counter
   bits 25-28: Unused
   bit 29: R
   bit 30: Z
   bit 31: B
   bit 32: A
*/
void process_post_TT_replay(void) {
    u32 inputs;
    u32 stickBytes;
    UNUSED u16 unk;
    u16 buttons_temp;
    s16 stickVal;
    s16 buttons = 0;

    if (sPostTTReplayIdx >= 0x1000) {
        gPlayerOne->type = PLAYER_CINEMATIC_MODE | PLAYER_START_SEQUENCE | PLAYER_CPU;
        return;
    }

    inputs = sPostTTReplay[sPostTTReplayIdx];
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
    if (inputs & REPLAY_A_BUTTON) {
        buttons |= A_BUTTON;
    }
    if (inputs & REPLAY_B_BUTTON) {
        buttons |= B_BUTTON;
    }
    if (inputs & REPLAY_Z_TRIG) {
        buttons |= Z_TRIG;
    }
    if (inputs & REPLAY_R_TRIG) {
        buttons |= R_TRIG;
    }
    buttons_temp = gControllerEight->buttonPressed & REPLAY_MASK;
    gControllerEight->buttonPressed = (buttons & (buttons ^ sPostTTButtonsPrev)) | buttons_temp;
    buttons_temp = gControllerEight->buttonDepressed & REPLAY_MASK;
    gControllerEight->buttonDepressed = (sPostTTButtonsPrev & (buttons ^ sPostTTButtonsPrev)) | buttons_temp;
    sPostTTButtonsPrev = buttons;
    gControllerEight->button = buttons;

    if (sPostTTFramesRemaining == 0) {
        sPostTTReplayIdx++;
        sPostTTFramesRemaining = (s32) (sPostTTReplay[sPostTTReplayIdx] & 0xFF0000);
    } else {
        sPostTTFramesRemaining -= 0x10000;
    }
}

// See process_post_TT_replay comment
void process_course_ghost_replay(void) {
    u32 inputs;
    u32 stickBytes;
    UNUSED u16 unk;
    u16 buttonsTemp;
    s16 stickVal;
    s16 buttons = 0;
    if (sCourseGhostReplayIdx >= 0x1000) {
        func_80005AE8(gPlayerThree);
        return;
    }
    
    inputs = sCourseGhostReplay[sCourseGhostReplayIdx];
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

    if (inputs & REPLAY_A_BUTTON) {
        buttons = A_BUTTON;
    }
    if (inputs & REPLAY_B_BUTTON) {
        buttons |= B_BUTTON;
    }
    if (inputs & REPLAY_Z_TRIG) {
        buttons |= Z_TRIG;
    }
    if (inputs & REPLAY_R_TRIG) {
        buttons |= R_TRIG;
    }
    // Blanks the A, B, Z, R and L buttons
    buttonsTemp = gControllerSeven->buttonPressed & REPLAY_MASK;
    gControllerSeven->buttonPressed = (buttons & (buttons ^ sButtonsPrevCourseGhost)) | buttonsTemp;
    buttonsTemp = gControllerSeven->buttonDepressed & REPLAY_MASK;
    gControllerSeven->buttonDepressed = (sButtonsPrevCourseGhost & (buttons ^ sButtonsPrevCourseGhost)) | buttonsTemp;
    sButtonsPrevCourseGhost = buttons;
    gControllerSeven->button = buttons;
    if (sCourseGhostFramesRemaining == 0) {
        sCourseGhostReplayIdx++;
        sCourseGhostFramesRemaining = (s32) (sCourseGhostReplay[sCourseGhostReplayIdx] & 0xFF0000);
    } else {
        sCourseGhostFramesRemaining -= (s32) 0x10000;
    }
}

// See process_post_TT_replay comment
void process_player_ghost_replay(void) {
    u32 inputs;
    u32 stickBytes;
    UNUSED u16 unk;
    u16 buttons_temp;
    s16 stickVal;
    s16 buttons = 0;

    if (sPlayerGhostReplayIdx >= 0x1000) {
        func_80005AE8(gPlayerTwo);
        return;
    }
    inputs = sPlayerGhostReplay[sPlayerGhostReplayIdx];
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

    if (inputs & REPLAY_A_BUTTON) {
        buttons = A_BUTTON;
    }
    if (inputs & REPLAY_B_BUTTON) {
        buttons |= B_BUTTON;
    }
    if (inputs & REPLAY_Z_TRIG) {
        buttons |= Z_TRIG;
    }
    if (inputs & REPLAY_R_TRIG) {
        buttons |= R_TRIG;
    }
    buttons_temp = gControllerSix->buttonPressed & REPLAY_MASK;
    gControllerSix->buttonPressed = (buttons & (buttons ^ sPlayerGhostButtonsPrev)) | buttons_temp;

    buttons_temp = gControllerSix->buttonDepressed & REPLAY_MASK;
    gControllerSix->buttonDepressed = (sPlayerGhostButtonsPrev & (buttons ^ sPlayerGhostButtonsPrev)) | buttons_temp;
    sPlayerGhostButtonsPrev = buttons;
    gControllerSix->button = buttons;

    if (sPlayerGhostFramesRemaining == 0) {
        sPlayerGhostReplayIdx++;
        sPlayerGhostFramesRemaining = (s32) (sPlayerGhostReplay[sPlayerGhostReplayIdx] & 0xFF0000);
    } else {
        sPlayerGhostFramesRemaining -= (s32) 0x10000;
    }
}

// See process_post_TT_replay comment
void save_player_replay(void) {
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
        gPostTTReplayCannotSave = 1;
        return;
    }

    stickX = gControllerOne->rawStickX;
    stickX &= 0xFF;
    stickY = gControllerOne->rawStickY;
    stickY = (stickY & 0xFF) << 8;
    buttons = gControllerOne->button;
    inputs = 0;
    if (buttons & A_BUTTON) {
        inputs |= REPLAY_A_BUTTON;
    }
    if (buttons & B_BUTTON) {
        inputs |= REPLAY_B_BUTTON;
    }
    if (buttons & Z_TRIG) {
        inputs |= REPLAY_Z_TRIG;
    }
    if (buttons & R_TRIG) {
        inputs |= REPLAY_R_TRIG;
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
        if ((gLapCountByPlayerId[0] == 3) && (D_80162DDC == 0) && (gPostTTReplayCannotSave != 1)) {
            if (bPlayerGhostDisabled == 1) {
                D_80162DD0 = D_80162DCC;
                func_800052A4();
                bPlayerGhostDisabled = 0;
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
                bPlayerGhostDisabled = 0;
                D_80162DDC = 1;
                func_80005AE8(gPlayerTwo);
                func_80005AE8(gPlayerThree);
            }
        } 
        else {
            if ((gLapCountByPlayerId[0] == 3) && (D_80162DDC == 0) && (gPostTTReplayCannotSave == 1)) {
                D_80162D80 = D_802BFB80.arraySize8[0][D_80162DC8][3].pixel_index_array;
                D_80162D84 = D_80162D86;
                D_80162DDC = 1;
            }
            if ((gPlayerOne->type & 0x800) == 0x800) {
                func_80005AE8(gPlayerTwo);
                func_80005AE8(gPlayerThree);
            }
            else {
                sUnusedReplayCounter += 1;
                if (sUnusedReplayCounter > 100) {
                    sUnusedReplayCounter = 100;
                }
                if ((gModeSelection == TIME_TRIALS) && (gActiveScreenMode == SCREEN_MODE_1P)) {
                    if ((bPlayerGhostDisabled == 0) && (gLapCountByPlayerId[1] != 3)) {
                        process_player_ghost_replay();
                    }
                    if ((bCourseGhostDisabled == 0) && (gLapCountByPlayerId[2] != 3)) {
                        process_course_ghost_replay();
                    }
                    if (!(gPlayerOne->type & PLAYER_CINEMATIC_MODE)) {
                        save_player_replay();
                    }
                }
            }
        }
    }
}

void func_80005E6C(void) {
    if ((gModeSelection == TIME_TRIALS) && (gModeSelection == TIME_TRIALS) && (gActiveScreenMode == SCREEN_MODE_1P)) {
        if ((D_80162DD8 == 0) && (gLapCountByPlayerId[1] != 3)) {
            process_player_ghost_replay(); // 3
        }
        if ((bCourseGhostDisabled == 0) && (gLapCountByPlayerId[2] != 3)) {
            process_course_ghost_replay(); // 2
        }
        if ((gPlayerOne->type & PLAYER_CINEMATIC_MODE) != PLAYER_CINEMATIC_MODE) {
            process_post_TT_replay(); // 1
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
    /* This only gets triggered when the previous if-statements are not met
       Seems like just for pausing */
    gPostTTReplayCannotSave = 1;
}
