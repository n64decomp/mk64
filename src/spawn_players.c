#include "global.h"
#include <defines.h>
#include "kart_attributes.h"
#include "memory.h"
#include "waypoints.h"
#include "framebuffers.h"
#include "code_80027040.h"
#include "code_80027D00.h"

extern s16 D_80165560[];
extern s32* D_800E3C50[];
extern u16* D_800E3890[];
extern s16 D_80165340;

extern Camera *camera1;
extern Camera *camera2;
extern Camera *camera3;
extern Camera *camera4;

void spawn_player(Player *player, s8 playerIndex, f32 arg2, f32 arg3, f32 arg4, f32 arg5, u16 arg6, s16 arg7) {
    f32 ret;
    s8 idx;

    player->unk_000 = PLAYER_INACTIVE;
    player->unk_08C = 0;
    player->characterId = arg6;
    player->unk_0B6 = 0;
    player->unk_0FC = gKartFrictionTable[player->characterId];
    player->boundingBoxSize = gKartBoundingBoxSizeTable[player->characterId];
    player->unk_100 = gKartGravityTable[player->characterId];

    switch (gModeSelection) {
        case GRAND_PRIX:
        case VERSUS:
            player->unk_084 = D_800E2400[gCCSelection][player->characterId];
            player->unk_088 = D_800E24B4[gCCSelection][player->characterId];
            player->unk_210 = D_800E2568[gCCSelection][player->characterId];
            player->unk_214 = D_800E261C[gCCSelection][player->characterId];
            break;

        // Uses 100CC values
        case TIME_TRIALS:
            player->unk_084 = D_800E2400[1][player->characterId];
            player->unk_088 = D_800E24B4[1][player->characterId];
            player->unk_210 = D_800E2568[1][player->characterId];
            player->unk_214 = D_800E261C[1][player->characterId];
            break;

        case BATTLE:
            player->unk_084 = D_800E2400[4][player->characterId];
            player->unk_088 = D_800E24B4[4][player->characterId];
            player->unk_210 = D_800E2568[4][player->characterId];
            player->unk_214 = D_800E261C[4][player->characterId];
            break;
    }

    player->pos[0] = arg2;
    ret = func_802AE1C0(arg2, arg4 + 50.0f, arg3) + player->boundingBoxSize;
    player->pos[2] = arg3;
    player->pos[1] = ret;
    player->rotX = arg2;
    player->rotY = ret;

    D_80164510[playerIndex] = ret;


    player->unk_02C[0] = 0;
    player->rotZ = arg3;
    player->unk_05C = 1.0f;
    player->unk_058 = 0.0f;
    player->unk_060 = 0.0f;
    player->unk_034[0] = 0.0f;
    player->unk_034[1] = 0.0f;
    player->unk_034[2] = 0.0f;
    player->unk_02C[1] = arg5;
    player->unk_02C[2] = 0;
    player->unk_0FA = 0;
    player->unk_002 = 0;

    player->unk_0BC = 0;
    player->unk_0C0 = 0;
    player->unk_07C = 0;
    player->unk_07A = 0;
    player->unk_006 = 0;
    player->lapCount = -1;
    player->unk_08C = 0.0f;
    player->unk_090 = 0.0f;
    player->unk_094 = 0.0f;
    player->unk_074 = 0.0f;
    player->unk_000 = arg7;
    player->unk_0CA = 0;
    player->unk_0DE = 0;
    player->unk_10C = 0;
    player->unk_0E2 = 0;
    player->unk_0E8 = 0.0f;
    player->unk_0A0 = 0.0f;
    player->unk_104 = 0.0f;
    player->unk_09C = 0.0f;
    player->unk_20C = 0.0f;
    player->unk_DAC = 0.0f;
    player->unk_044 = 0;
    player->unk_046 = 0;
    player->unk_00C = 0;
    player->unk_0C6 = 0xFF;


    player->unk_206 = 0;
    player->unk_0C4 = 0;
    player->unk_D98 = 0;
    player->unk_D9A = 0;
    player->unk_DA4 = 0;
    player->unk_DA6 = 0;
    player->unk_DB4 = 0;
    player->unk_DB6 = 0;
    player->unk_DCC = 0;
    player->unk_DCE = 0;
    player->unk_DD0 = 0;
    player->unk_DD2 = 0;
    player->unk_DD4 = 0;


    player->unk_042 = 0;
    player->unk_078 = 0;
    player->unk_0A8 = 0;
    player->unk_0AA = 0;
    player->unk_0AC = 0;
    player->unk_0AE = 0;
    player->unk_0B0 = 0;
    player->unk_0B2 = 0;
    player->unk_0B4 = 0;
    player->unk_0C0 = 0;
    player->unk_0C2 = 0;
    player->unk_0C8 = 0;
    player->unk_0CA = 0;
    player->boostTimer = 0;
    player->unk_0DE = 0;
    player->unk_0E0 = 0;
    player->unk_0E2 = 0;
    player->unk_10C = 0;
    player->unk_200 = 0;
    player->unk_204 = 0;
    player->unk_220 = 0;
    player->unk_228 = 0;
    player->unk_22A = 0;
    player->unk_234 = 0;
    player->unk_236 = 0;
    player->unk_238 = 0;
    player->unk_23A = 0;
    player->unk_240 = 0;
    player->unk_256 = 0;

    player->unk_224 = 1.0f;
    player->unk_DAC = 1.0f;

    player->unk_064 = 0.0f;
    player->unk_068 = 0.0f;
    player->unk_06C = 0.0f;
    player->boostPower = 0.0f;
    player->unk_D9C = 0.0f;
    player->unk_DA0 = 0.0f;
    player->unk_DA8 = 0.0f;
    player->unk_DB0 = 0.0f;
    player->unk_DB8 = 0.0f;
    player->unk_DBC = 0.0f;
    player->unk_DC0 = 0.0f;
    player->unk_DC4 = 0.0f;
    player->unk_DC8 = 0.0f;
    player->unk_084 = 0.0f;
    player->unk_088 = 0.0f;
    player->unk_08C = 0.0f;
    player->unk_090 = 0.0f;
    player->unk_094 = 0.0f;
    player->unk_098 = 0.0f;
    player->unk_09C = 0.0f;
    player->unk_0A0 = 0.0f;
    player->unk_0A4 = 0.0f;
    player->unk_0B8 = 0.0f;
    player->unk_0E4 = 0.0f;
    player->unk_0E8 = 0.0f;
    player->kartHopVelocity = 0.0f;
    player->kartHopJerk = 0.0f;
    player->kartHopAcceleration = 0.0f;
    player->unk_104 = 0.0f;
    player->unk_108 = 0.0f;
    player->unk_1F8 = 0.0f;
    player->unk_1FC = 0.0f;
    player->unk_208 = 0.0f;
    player->unk_20C = 0.0f;
    player->unk_210 = 0.0f;
    player->unk_218 = 0.0f;
    player->unk_21C = 0.0f;
    player->unk_22C = 0.0f;
    player->unk_230 = 0.0f;
    player->unk_23C = 0.0f;

    idx = playerIndex;

    D_801650D0[0][idx] = 0;
    D_801650D0[1][idx] = 0;
    D_801650D0[2][idx] = 0;
    D_801650D0[3][idx] = 0;
    D_80165110[0][idx] = 0;
    D_80165110[1][idx] = 0;
    D_80165110[2][idx] = 0;
    D_80165110[3][idx] = 0;
    D_80165190[0][idx] = 0;
    D_80165190[1][idx] = 0;
    D_80165190[2][idx] = 0;
    D_80165190[3][idx] = 0;
    D_801651D0[0][idx] = 0;
    D_801651D0[1][idx] = 0;
    D_801651D0[2][idx] = 0;
    D_801651D0[3][idx] = 0;

    D_80165420[idx] = 0;
    D_80165440[idx] = 0;
    D_80165460[idx] = 0;
    D_80165480[idx] = 0;
    D_801654E0[idx] = 0;
    D_80165500[idx] = 0;
    D_80165520[idx] = 0;
    D_80165540[playerIndex] = 0;
    D_8018D900[0] = 0;

    D_801652E0[playerIndex] = 0;
    D_801652C0[playerIndex] = 0;
    D_80165020[playerIndex] = 0;
    D_80165070[playerIndex][0] = 0.0f;
    D_80165070[playerIndex][1] = 0.0f;
    D_80165070[playerIndex][2] = 0.0f;
    D_80165280[playerIndex] = 0.0f;
    D_801652A0[playerIndex] = 0.0f;
    gPlayerIsThrottleActive[playerIndex] = 0;
    D_80165400[playerIndex] = 0;
    D_801654A0[playerIndex] = 0;
    D_801654C0[playerIndex] = 0;
    D_80165340 = 0;

    player->boundingBoxCorners[FRONT_LEFT_TYRE].surfaceType  = 0;
    player->boundingBoxCorners[FRONT_RIGHT_TYRE].surfaceType = 0;
    player->boundingBoxCorners[BACK_LEFT_TYRE].surfaceType   = 0;
    player->boundingBoxCorners[BACK_RIGHT_TYRE].surfaceType  = 0;

    player->boundingBoxCorners[FRONT_LEFT_TYRE].surfaceFlags  = 0;
    player->boundingBoxCorners[FRONT_RIGHT_TYRE].surfaceFlags = 0;
    player->boundingBoxCorners[BACK_LEFT_TYRE].surfaceFlags   = 0;
    player->boundingBoxCorners[BACK_RIGHT_TYRE].surfaceFlags  = 0;

    player->boundingBoxCorners[FRONT_LEFT_TYRE].surfaceMapIndex  = 0;
    player->boundingBoxCorners[FRONT_RIGHT_TYRE].surfaceMapIndex = 0;
    player->boundingBoxCorners[BACK_LEFT_TYRE].surfaceMapIndex   = 0;
    player->boundingBoxCorners[BACK_RIGHT_TYRE].surfaceMapIndex  = 0;

    player->boundingBoxCorners[FRONT_RIGHT_TYRE].unk_14 = 0;
    player->boundingBoxCorners[FRONT_LEFT_TYRE].unk_14  = 0;
    player->boundingBoxCorners[BACK_LEFT_TYRE].unk_14   = 0;
    player->boundingBoxCorners[BACK_RIGHT_TYRE].unk_14  = 0;

    player->unk_110.unk30 = 0;
    player->unk_110.unk32 = 0;
    player->unk_110.unk34 = 0;
    player->unk_110.unk36 = 0;
    player->unk_110.unk38 = 0;
    player->unk_110.unk3A = 0;

    player->boundingBoxCorners[FRONT_LEFT_TYRE].cornerX = 0.0f;
    player->boundingBoxCorners[FRONT_LEFT_TYRE].cornerY = 0.0f;
    player->boundingBoxCorners[FRONT_LEFT_TYRE].cornerZ = 0.0f;

    player->boundingBoxCorners[FRONT_RIGHT_TYRE].cornerX = 0.0f;
    player->boundingBoxCorners[FRONT_RIGHT_TYRE].cornerY = 0.0f;
    player->boundingBoxCorners[FRONT_RIGHT_TYRE].cornerZ = 0.0f;

    player->boundingBoxCorners[BACK_LEFT_TYRE].cornerX = 0.0f;
    player->boundingBoxCorners[BACK_LEFT_TYRE].cornerY = 0.0f;
    player->boundingBoxCorners[BACK_LEFT_TYRE].cornerZ = 0.0f;

    player->boundingBoxCorners[BACK_RIGHT_TYRE].cornerX = 0.0f;
    player->boundingBoxCorners[BACK_RIGHT_TYRE].cornerY = 0.0f;
    player->boundingBoxCorners[BACK_RIGHT_TYRE].cornerZ = 0.0f;

    player->boundingBoxCorners[ FRONT_LEFT_TYRE].cornerGroundY = 0.0f;
    player->boundingBoxCorners[FRONT_RIGHT_TYRE].cornerGroundY = 0.0f;
    player->boundingBoxCorners[  BACK_LEFT_TYRE].cornerGroundY = 0.0f;
    player->boundingBoxCorners[ BACK_RIGHT_TYRE].cornerGroundY = 0.0f;

    player->unk_110.unk3C = 0.0f;
    player->unk_110.unk40 = 0.0f;
    player->unk_110.unk44 = 0.0f;
    player->unk_110.unk48[0] = 0.0f;
    player->unk_110.unk48[1] = 0.0f;
    player->unk_110.unk48[2] = 0.0f;
    player->unk_110.unk54[0] = 0.0f;
    player->unk_110.unk54[1] = 0.0f;
    player->unk_110.unk54[2] = 0.0f;
    player->unk_110.unk60[0] = 0.0f;
    player->unk_110.unk60[1] = 0.0f;
    player->unk_110.unk60[2] = 0.0f;

    D_80165300[playerIndex] = 0;
    D_8018CE10[playerIndex].unk_04 = 0.0f;
    D_8018CE10[playerIndex].unk_0C = 0.0f;
    func_80295BF8(playerIndex);
    func_8005D6C0(player);
    func_8006B87C(player, playerIndex);
    if (gModeSelection == BATTLE) {
        func_8006B7E4(player, playerIndex);
    }
    func_802B6540(player->unk_150, player->unk_058, player->unk_05C, player->unk_060, player->unk_02C[1]);
    func_802B6540(player->unk_174, player->unk_058, player->unk_05C, player->unk_060, player->unk_02C[1]);
}

void func_80039AE4(void) {
    switch (gActiveScreenMode) {
        case SCREEN_MODE_1P:
            if (gGamestate == ENDING_SEQUENCE) {
                D_80165578 = 0x898;
                D_8016557A = 0;
                D_8016557C = 0x384;
                D_8016557E = 0;
                D_80165574 = 0x384;
                D_80165576 = 0;
                D_80165570 = 0x35C;
                D_80165572 = 0;
                D_80165580 = 0x1F4;
                D_80165582 = 0;
            } else {
                D_80165578 = 0x4B0;
                D_8016557A = -0xA;
                D_8016557C = 0x384;
                D_8016557E = 0x32;
                D_80165574 = 0x1F4;
                D_80165576 = 0;
                D_80165570 = 0x15E;
                D_80165572 = 0;
                D_80165580 = 0xFA;
                D_80165582 = 0;
            }
            break;

        case SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL:
        case SCREEN_MODE_2P_SPLITSCREEN_VERTICAL:
            if (gModeSelection == BATTLE) {
                D_80165578 = 0x898;
                D_8016557A = 0;
                D_8016557C = 0x320;
                D_8016557E = 0;
                D_80165574 = 0x190;
                D_80165576 = 0;
                D_80165570 = 0xC8;
                D_80165572 = 0;
                D_80165580 = 0xC8;
                D_80165582 = 0;
            } else {
                D_80165578 = 0x4B0;
                D_8016557A = 0x32;
                D_8016557C = 0x320;
                D_8016557E = 0x32;
                D_80165574 = 0x190;
                D_80165576 = 0;
                D_80165570 = 0x96;
                D_80165572 = 0;
                D_80165580 = 0x96;
                D_80165582 = 0;
            }
            break;

        default:
            if (gModeSelection == BATTLE) {
                D_80165578 = 0x898;
                D_8016557A = 0;
                D_8016557C = 0x320;
                D_8016557E = 0;
                D_80165574 = 0x190;
                D_80165576 = 0;
                D_80165570 = 0xC8;
                D_80165572 = 0;
                D_80165580 = 0xC8;
                D_80165582 = 0;
            } else {
                D_80165578 = 0x3E8;
                D_8016557A = 0;
                D_8016557C = 0x258;
                D_8016557E = 0;
                D_80165574 = 0x15E;
                D_80165576 = 0;
                D_80165570 = 0x96;
                D_80165572 = 0;
                D_80165580 = 0x96;
                D_80165582 = 0;
            }
            break;
    }
}

//typedef struct {
//    s32 unk00[8];
//} temp_80039DA4; // to be removed when data is compilable
//extern temp_80039DA4 D_800E4360;
//extern temp_80039DA4 D_800E4380;

void func_80039DA4(void) {
    s32 i;
    
    s32 sp2C[] = {
        7, 6, 5, 4,
        3, 2, 1, 0,
    };

    s32 spC[] = {
        0, 1, 2, 3,
        4, 5, 6, 7,
    };

    if (((gCupCourseSelection == CUP_COURSE_ONE) && (D_8016556E == 0)) ||
        (D_800DC51C == 1) ||
        (gDebugMenuSelection == DEBUG_MENU_EXITED)) {
        for (i = 0; i < 8; i++) {
            D_80165270[i] = sp2C[i];
        }
    } else {
        for (i = 0; i < 8; i++) {
            D_80165270[i] = spC[gPlayerPositions[i]];
        }
    }
}

UNUSED f32 D_800E43A0 = 1.0f;
UNUSED s16  D_800E43A4 = 1;
UNUSED s16 D_800E43A8 = 0;

void func_80039F44(f32 *arg0, f32 *arg1, f32 arg2) {
    func_80039DA4();
    if (((gCupCourseSelection == CUP_COURSE_ONE) && (D_8016556E == 0)) ||
        (D_800DC51C == 1) ||
        (gDebugMenuSelection == DEBUG_MENU_EXITED)) {
        s16 rand;
        s16 i;

        do {
            rand = random_int(7);
        } while(rand == gCharacterSelections[0]);

        D_80165560[0] = rand;

        for (i = 1; i < 7; i++) {
            u16* arr = D_800E3890[gCharacterSelections[0]];
            if (rand == arr[i]) {
                D_80165560[i] = arr[0];
            } else {
                D_80165560[i] = arr[i];
            }
        }
    }

    D_8016556E = 0;
    if (D_800DC51C == 1) {
        spawn_player(gPlayerOneCopy, 0, arg0[D_80165270[0]], arg1[D_80165270[0]], arg2, 32768.0f, gCharacterSelections[0], PLAYER_HUMAN_AND_CPU);
        spawn_player(gPlayerTwo,     1, arg0[D_80165270[1]], arg1[D_80165270[1]], arg2, 32768.0f, D_80165560[0], PLAYER_EXISTS | PLAYER_CPU | PLAYER_START_SEQUENCE);
        spawn_player(gPlayerThree,   2, arg0[D_80165270[2]], arg1[D_80165270[2]], arg2, 32768.0f, D_80165560[1], PLAYER_EXISTS | PLAYER_CPU | PLAYER_START_SEQUENCE);
        spawn_player(gPlayerFour,    3, arg0[D_80165270[3]], arg1[D_80165270[3]], arg2, 32768.0f, D_80165560[2], PLAYER_EXISTS | PLAYER_CPU | PLAYER_START_SEQUENCE);
        spawn_player(gPlayerFive,    4, arg0[D_80165270[4]], arg1[D_80165270[4]], arg2, 32768.0f, D_80165560[3], PLAYER_EXISTS | PLAYER_CPU | PLAYER_START_SEQUENCE);
        spawn_player(gPlayerSix,     5, arg0[D_80165270[5]], arg1[D_80165270[5]], arg2, 32768.0f, D_80165560[4], PLAYER_EXISTS | PLAYER_CPU | PLAYER_START_SEQUENCE);
        spawn_player(gPlayerSeven,   6, arg0[D_80165270[6]], arg1[D_80165270[6]], arg2, 32768.0f, D_80165560[5], PLAYER_EXISTS | PLAYER_CPU | PLAYER_START_SEQUENCE);
        spawn_player(gPlayerEight,   7, arg0[D_80165270[7]], arg1[D_80165270[7]], arg2, 32768.0f, D_80165560[6], PLAYER_EXISTS | PLAYER_CPU | PLAYER_START_SEQUENCE);
        D_80164A28 = 0;
    } else {
        spawn_player(gPlayerOneCopy, 0, arg0[D_80165270[0]], arg1[D_80165270[0]] + 250.0f, arg2, 32768.0f, gCharacterSelections[0], PLAYER_EXISTS | PLAYER_STAGING | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
        spawn_player(gPlayerTwo,     1, arg0[D_80165270[1]], arg1[D_80165270[1]] + 250.0f, arg2, 32768.0f, D_80165560[0], PLAYER_EXISTS | PLAYER_STAGING | PLAYER_START_SEQUENCE | PLAYER_CPU);
        spawn_player(gPlayerThree,   2, arg0[D_80165270[3]], arg1[D_80165270[2]] + 250.0f, arg2, 32768.0f, D_80165560[1], PLAYER_EXISTS | PLAYER_STAGING | PLAYER_START_SEQUENCE | PLAYER_CPU);
        spawn_player(gPlayerFour,    3, arg0[D_80165270[2]], arg1[D_80165270[3]] + 250.0f, arg2, 32768.0f, D_80165560[2], PLAYER_EXISTS | PLAYER_STAGING | PLAYER_START_SEQUENCE | PLAYER_CPU);
        spawn_player(gPlayerFive,    4, arg0[D_80165270[5]], arg1[D_80165270[4]] + 250.0f, arg2, 32768.0f, D_80165560[3], PLAYER_EXISTS | PLAYER_STAGING | PLAYER_START_SEQUENCE | PLAYER_CPU);
        spawn_player(gPlayerSix,     5, arg0[D_80165270[4]], arg1[D_80165270[5]] + 250.0f, arg2, 32768.0f, D_80165560[4], PLAYER_EXISTS | PLAYER_STAGING | PLAYER_START_SEQUENCE | PLAYER_CPU);
        spawn_player(gPlayerSeven,   6, arg0[D_80165270[7]], arg1[D_80165270[6]] + 250.0f, arg2, 32768.0f, D_80165560[5], PLAYER_EXISTS | PLAYER_STAGING | PLAYER_START_SEQUENCE | PLAYER_CPU);
        spawn_player(gPlayerEight,   7, arg0[D_80165270[6]], arg1[D_80165270[7]] + 250.0f, arg2, 32768.0f, D_80165560[6], PLAYER_EXISTS | PLAYER_STAGING | PLAYER_START_SEQUENCE | PLAYER_CPU);
        D_80164A28 = 1;
    }
    func_80039AE4();
}

void func_8003A59C(f32 *arg0, f32 *arg1, f32 arg2) {
    spawn_player(gPlayerFour,  3, arg0[2], arg1[2], arg2, 32768.0f, gCharacterSelections[0], PLAYER_START_SEQUENCE | PLAYER_CPU);
    spawn_player(gPlayerFive,  4, arg0[3], arg1[3], arg2, 32768.0f, gCharacterSelections[0], PLAYER_START_SEQUENCE | PLAYER_CPU);
    spawn_player(gPlayerSix,   5, arg0[4], arg1[4], arg2, 32768.0f, gCharacterSelections[0], PLAYER_START_SEQUENCE | PLAYER_CPU);
    spawn_player(gPlayerSeven, 6, arg0[5], arg1[5], arg2, 32768.0f, gCharacterSelections[0], PLAYER_START_SEQUENCE | PLAYER_CPU);
    spawn_player(gPlayerEight, 7, arg0[6], arg1[6], arg2, 32768.0f, gCharacterSelections[0], PLAYER_START_SEQUENCE | PLAYER_CPU);
    if (D_800DC51C == 1) {
        spawn_player(gPlayerOneCopy, 0, arg0[0], arg1[0], arg2, 32768.0f, gCharacterSelections[0], PLAYER_HUMAN_AND_CPU);
        spawn_player(gPlayerTwo,     1, arg0[0], arg1[0], arg2, 32768.0f, gCharacterSelections[0], PLAYER_START_SEQUENCE | PLAYER_CPU);
        spawn_player(gPlayerThree,   2, arg0[1], arg1[1], arg2, 32768.0f, gCharacterSelections[0], PLAYER_START_SEQUENCE | PLAYER_CPU);
    } else if (D_8015F890 != 1) {
        spawn_player(gPlayerOneCopy, 0, arg0[0], arg1[0], arg2, 32768.0f, gCharacterSelections[0], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
        if (D_80162DD4[0] == 0) {
            spawn_player(gPlayerTwo, 1, arg0[0], arg1[0], arg2, 32768.0f, D_80162DE0, PLAYER_EXISTS | PLAYER_HUMAN | PLAYER_START_SEQUENCE | PLAYER_INVISIBLE_OR_BOMB);
        } else {
            spawn_player(gPlayerTwo, 1, arg0[0], arg1[0], arg2, 32768.0f, gCharacterSelections[0], PLAYER_START_SEQUENCE | PLAYER_CPU);
        }
        if (D_80162DD4[1] == 0) {
            spawn_player(gPlayerThree, 2, arg0[0], arg1[0], arg2, 32768.0f, D_80162DE4, PLAYER_EXISTS | PLAYER_HUMAN | PLAYER_START_SEQUENCE | PLAYER_INVISIBLE_OR_BOMB);
        } else {
            spawn_player(gPlayerThree, 2, arg0[1], arg1[1], arg2, 32768.0f, gCharacterSelections[0], PLAYER_START_SEQUENCE | PLAYER_CPU);
        }
    } else {
        spawn_player(gPlayerOneCopy, 0, arg0[0], arg1[0], arg2, 32768.0f, D_80162DE8, PLAYER_EXISTS | PLAYER_HUMAN | PLAYER_START_SEQUENCE | PLAYER_INVISIBLE_OR_BOMB);
        if (D_80162DD8 == 0) {
            spawn_player(gPlayerTwo, 1, arg0[0], arg1[0], arg2, 32768.0f, D_80162DE0, PLAYER_EXISTS | PLAYER_HUMAN | PLAYER_START_SEQUENCE | PLAYER_INVISIBLE_OR_BOMB);
        } else {
            spawn_player(gPlayerTwo, 1, arg0[0], arg1[0], arg2, 32768.0f, gCharacterSelections[0], PLAYER_START_SEQUENCE | PLAYER_CPU);
        }
        if (D_80162DD4[1] == 0) {
            spawn_player(gPlayerThree, 2, arg0[0], arg1[0], arg2, 32768.0f, D_80162DE4, PLAYER_EXISTS | PLAYER_HUMAN | PLAYER_START_SEQUENCE | PLAYER_INVISIBLE_OR_BOMB);
        } else {
            spawn_player(gPlayerThree, 2, arg0[1], arg1[1], arg2, 32768.0f, gCharacterSelections[0], PLAYER_START_SEQUENCE | PLAYER_CPU);
        }
    }
    D_80164A28 = 0;
    func_80039AE4();
}

void func_8003A9F0(f32* arg0, f32* arg1, f32 arg2) {
    func_80039DA4();
    if ((gCupCourseSelection == CUP_COURSE_ONE) || (D_800DC51C == 1) || (gDebugMenuSelection == DEBUG_MENU_EXITED)) {
        s16 rand;
        s16 i;

getRand:
        rand = random_int(7);
        if (gCharacterSelections[0] == rand)
            goto getRand;
        if (gCharacterSelections[1] == rand)
            goto getRand;

        D_80165560[0] = rand;

        for (i = 1; i < 6; i++) {
            u16* arr = D_800E3C50[gCharacterSelections[0]][gCharacterSelections[1]];
            if (rand == arr[i]) {
                D_80165560[i] = arr[0];
            } else {
                D_80165560[i] = arr[i];
            }
        }
    }

    spawn_player(gPlayerThree, 2, arg0[D_80165270[2]], arg1[D_80165270[2]], arg2, 32768.0f, D_80165560[0], PLAYER_EXISTS | PLAYER_CPU | PLAYER_START_SEQUENCE);
    spawn_player(gPlayerFour,  3, arg0[D_80165270[3]], arg1[D_80165270[3]], arg2, 32768.0f, D_80165560[1], PLAYER_EXISTS | PLAYER_CPU | PLAYER_START_SEQUENCE);
    spawn_player(gPlayerFive,  4, arg0[D_80165270[4]], arg1[D_80165270[4]], arg2, 32768.0f, D_80165560[2], PLAYER_EXISTS | PLAYER_CPU | PLAYER_START_SEQUENCE);
    spawn_player(gPlayerSix,   5, arg0[D_80165270[5]], arg1[D_80165270[5]], arg2, 32768.0f, D_80165560[3], PLAYER_EXISTS | PLAYER_CPU | PLAYER_START_SEQUENCE);
    spawn_player(gPlayerSeven, 6, arg0[D_80165270[6]], arg1[D_80165270[6]], arg2, 32768.0f, D_80165560[4], PLAYER_EXISTS | PLAYER_CPU | PLAYER_START_SEQUENCE);
    spawn_player(gPlayerEight, 7, arg0[D_80165270[7]], arg1[D_80165270[7]], arg2, 32768.0f, D_80165560[5], PLAYER_EXISTS | PLAYER_CPU | PLAYER_START_SEQUENCE);

    if (D_800DC51C == 1) {
        spawn_player(gPlayerOneCopy, 0, arg0[D_80165270[0]], arg1[D_80165270[0]], arg2, 32768.0f, gCharacterSelections[0], PLAYER_HUMAN_AND_CPU);
    } else {
        spawn_player(gPlayerOneCopy, 0, arg0[D_80165270[0]], arg1[D_80165270[0]], arg2, 32768.0f, gCharacterSelections[0], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
    }
    if (D_800DC51C == 1) {
        spawn_player(gPlayerTwo, 1, arg0[D_80165270[1]], arg1[D_80165270[1]], arg2, 32768.0f, gCharacterSelections[1], PLAYER_EXISTS | PLAYER_CPU | PLAYER_START_SEQUENCE);
    } else {
        spawn_player(gPlayerTwo, 1, arg0[D_80165270[1]], arg1[D_80165270[1]], arg2, 32768.0f, gCharacterSelections[1], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
    }

    D_80164A28 = 0;
    func_80039AE4();
}

void func_8003AE24(f32 *arg0, f32 *arg1, f32 arg2) {
    spawn_player(gPlayerThree, 2, arg0[1], arg1[1], arg2, 32768.0f, gCharacterSelections[0], PLAYER_START_SEQUENCE | PLAYER_CPU);
    spawn_player(gPlayerFour,  3, arg0[2], arg1[2], arg2, 32768.0f, gCharacterSelections[0], PLAYER_START_SEQUENCE | PLAYER_CPU);
    spawn_player(gPlayerFive,  4, arg0[3], arg1[3], arg2, 32768.0f, gCharacterSelections[0], PLAYER_START_SEQUENCE | PLAYER_CPU);
    spawn_player(gPlayerSix,   5, arg0[4], arg1[4], arg2, 32768.0f, gCharacterSelections[0], PLAYER_START_SEQUENCE | PLAYER_CPU);
    spawn_player(gPlayerSeven, 6, arg0[5], arg1[5], arg2, 32768.0f, gCharacterSelections[0], PLAYER_START_SEQUENCE | PLAYER_CPU);
    spawn_player(gPlayerEight, 7, arg0[6], arg1[6], arg2, 32768.0f, gCharacterSelections[0], PLAYER_START_SEQUENCE | PLAYER_CPU);
    if (D_800DC51C == 1) {
        spawn_player(gPlayerOneCopy, 0, arg0[0], arg1[0], arg2, 32768.0f, gCharacterSelections[0], PLAYER_HUMAN_AND_CPU);
    } else {
        spawn_player(gPlayerOneCopy, 0, arg0[0], arg1[0], arg2, 32768.0f, gCharacterSelections[0], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
    }
    if (D_800DC51C == 1) {
        spawn_player(gPlayerTwo, 1, arg0[1], arg1[1], arg2, 32768.0f, gCharacterSelections[1], PLAYER_HUMAN_AND_CPU);
    } else {
        spawn_player(gPlayerTwo, 1, arg0[1], arg1[1], arg2, 32768.0f, gCharacterSelections[1], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
    }
    D_80164A28 = 0;
    func_80039AE4();
}

void spawn_players_2p_battle(f32 *arg0, f32 *arg1, f32 arg2) {
    if (gCurrentCourseId == COURSE_BIG_DONUT) {
        spawn_player(gPlayerOne, 0, arg0[0], arg1[0], arg2, -16384.0f, gCharacterSelections[0], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
        spawn_player(gPlayerTwo, 1, arg0[1], arg1[1], arg2,  16384.0f, gCharacterSelections[1], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
    } else {
        spawn_player(gPlayerOne, 0, arg0[0], arg1[0], arg2, 32768.0f, gCharacterSelections[0], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
        spawn_player(gPlayerTwo, 1, arg0[1], arg1[1], arg2,     0.0f, gCharacterSelections[1], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
    }
    spawn_player(gPlayerThree, 2, arg0[2], arg1[2], arg2, 32768.0f, gCharacterSelections[2], PLAYER_START_SEQUENCE | PLAYER_HUMAN);
    spawn_player(gPlayerFour,  3, arg0[3], arg1[3], arg2, 32768.0f, gCharacterSelections[3], PLAYER_START_SEQUENCE | PLAYER_HUMAN);
    spawn_player(gPlayerFive,  4, arg0[4], arg1[4], arg2, 32768.0f, 4, PLAYER_START_SEQUENCE | PLAYER_CPU);
    spawn_player(gPlayerSix,   5, arg0[5], arg1[5], arg2, 32768.0f, 5, PLAYER_START_SEQUENCE | PLAYER_CPU);
    spawn_player(gPlayerSeven, 6, arg0[6], arg1[6], arg2, 32768.0f, 6, PLAYER_START_SEQUENCE | PLAYER_CPU);
    spawn_player(gPlayerEight, 7, arg0[0], arg1[0], arg2, 32768.0f, 7, PLAYER_START_SEQUENCE | PLAYER_CPU);
    D_80164A28 = 0;
    func_80039AE4();
}

void func_8003B318(f32 *arg0, f32 *arg1, f32 arg2) {
    spawn_player(gPlayerOne,   0, arg0[0], arg1[0], arg2, 32768.0f, gCharacterSelections[0], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
    spawn_player(gPlayerTwo,   1, arg0[1], arg1[1], arg2, 32768.0f, gCharacterSelections[1], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
    spawn_player(gPlayerThree, 2, arg0[2], arg1[2], arg2, 32768.0f, gCharacterSelections[2], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
    if (D_800DC51C == 1) {
        spawn_player(gPlayerOne,   0, arg0[0], arg1[0], arg2, 32768.0f, gCharacterSelections[0], PLAYER_HUMAN_AND_CPU);
        spawn_player(gPlayerTwo,   1, arg0[1], arg1[1], arg2, 32768.0f, gCharacterSelections[1], PLAYER_HUMAN_AND_CPU);
        spawn_player(gPlayerThree, 2, arg0[2], arg1[2], arg2, 32768.0f, gCharacterSelections[2], PLAYER_HUMAN_AND_CPU);
    }

    spawn_player(gPlayerFour,  3, arg0[3], arg1[3], arg2, 32768.0f, 3, PLAYER_START_SEQUENCE | PLAYER_CPU);
    spawn_player(gPlayerFive,  4, arg0[4], arg1[4], arg2, 32768.0f, 4, PLAYER_START_SEQUENCE | PLAYER_CPU);
    spawn_player(gPlayerSix,   5, arg0[5], arg1[5], arg2, 32768.0f, 5, PLAYER_START_SEQUENCE | PLAYER_CPU);
    spawn_player(gPlayerSeven, 6, arg0[6], arg1[6], arg2, 32768.0f, 6, PLAYER_START_SEQUENCE | PLAYER_CPU);
    spawn_player(gPlayerEight, 7, arg0[0], arg1[0], arg2, 32768.0f, 7, PLAYER_START_SEQUENCE | PLAYER_CPU);
    D_80164A28 = 0;
    func_80039AE4();
}

void spawn_players_3p_battle(f32 *arg0, f32 *arg1, f32 arg2) {
    if (gCurrentCourseId == COURSE_BIG_DONUT) {
        spawn_player(gPlayerOne,   0, arg0[0], arg1[0], arg2, -16384.0f, gCharacterSelections[0], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
        spawn_player(gPlayerTwo,   1, arg0[1], arg1[1], arg2,  16384.0f, gCharacterSelections[1], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
        spawn_player(gPlayerThree, 2, arg0[2], arg1[2], arg2,      0.0f, gCharacterSelections[2], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
    } else {
        spawn_player(gPlayerOne,   0, arg0[0], arg1[0], arg2,  32768.0f, gCharacterSelections[0], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
        spawn_player(gPlayerTwo,   1, arg0[1], arg1[1], arg2,      0.0f, gCharacterSelections[1], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
        spawn_player(gPlayerThree, 2, arg0[2], arg1[2], arg2, -16384.0f, gCharacterSelections[2], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
    }
    spawn_player(gPlayerFour,  3, arg0[3], arg1[3], arg2, 32768.0f, 3, PLAYER_START_SEQUENCE | PLAYER_CPU);
    spawn_player(gPlayerFive,  4, arg0[4], arg1[4], arg2, 32768.0f, 4, PLAYER_START_SEQUENCE | PLAYER_CPU);
    spawn_player(gPlayerSix,   5, arg0[5], arg1[5], arg2, 32768.0f, 5, PLAYER_START_SEQUENCE | PLAYER_CPU);
    spawn_player(gPlayerSeven, 6, arg0[6], arg1[6], arg2, 32768.0f, 6, PLAYER_START_SEQUENCE | PLAYER_CPU);
    spawn_player(gPlayerEight, 7, arg0[0], arg1[0], arg2, 32768.0f, 7, PLAYER_START_SEQUENCE | PLAYER_CPU);
    D_80164A28 = 0;
    func_80039AE4();
}

void func_8003B870(f32 *arg0, f32 *arg1, f32 arg2) {
    spawn_player(gPlayerOne,   0, arg0[0], arg1[0], arg2, 32768.0f, gCharacterSelections[0], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
    spawn_player(gPlayerTwo,   1, arg0[1], arg1[1], arg2, 32768.0f, gCharacterSelections[1], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
    spawn_player(gPlayerThree, 2, arg0[2], arg1[2], arg2, 32768.0f, gCharacterSelections[2], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
    spawn_player(gPlayerFour,  3, arg0[3], arg1[3], arg2, 32768.0f, gCharacterSelections[3], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
    if (D_800DC51C == 1) {
        spawn_player(gPlayerOne,   0, arg0[0], arg1[0], arg2, 32768.0f, gCharacterSelections[0], PLAYER_HUMAN_AND_CPU);
        spawn_player(gPlayerTwo,   1, arg0[1], arg1[1], arg2, 32768.0f, gCharacterSelections[1], PLAYER_HUMAN_AND_CPU);
        spawn_player(gPlayerThree, 2, arg0[2], arg1[2], arg2, 32768.0f, gCharacterSelections[2], PLAYER_HUMAN_AND_CPU);
        spawn_player(gPlayerFour,  3, arg0[3], arg1[3], arg2, 32768.0f, gCharacterSelections[3], PLAYER_HUMAN_AND_CPU);
    }
    spawn_player(gPlayerFive,  4, arg0[4], arg1[4], arg2, 32768.0f, 4, PLAYER_START_SEQUENCE | PLAYER_CPU);
    spawn_player(gPlayerSix,   5, arg0[5], arg1[5], arg2, 32768.0f, 5, PLAYER_START_SEQUENCE | PLAYER_CPU);
    spawn_player(gPlayerSeven, 6, arg0[6], arg1[6], arg2, 32768.0f, 6, PLAYER_START_SEQUENCE | PLAYER_CPU);
    spawn_player(gPlayerEight, 7, arg0[0], arg1[0], arg2, 32768.0f, 7, PLAYER_START_SEQUENCE | PLAYER_CPU);
    D_80164A28 = 0;
    func_80039AE4();
}

void spawn_players_4p_battle(f32 *arg0, f32 *arg1, f32 arg2) {
    if (gCurrentCourseId == COURSE_BIG_DONUT) {
        spawn_player(gPlayerOne,   0, arg0[0], arg1[0], arg2, -16384.0f, gCharacterSelections[0], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
        spawn_player(gPlayerTwo,   1, arg0[1], arg1[1], arg2,  16384.0f, gCharacterSelections[1], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
        spawn_player(gPlayerThree, 2, arg0[2], arg1[2], arg2,      0.0f, gCharacterSelections[2], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
        spawn_player(gPlayerFour,  3, arg0[3], arg1[3], arg2,  32768.0f, gCharacterSelections[3], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
    } else {
        spawn_player(gPlayerOne,   0, arg0[0], arg1[0], arg2,  32768.0f, gCharacterSelections[0], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
        spawn_player(gPlayerTwo,   1, arg0[1], arg1[1], arg2,      0.0f, gCharacterSelections[1], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
        spawn_player(gPlayerThree, 2, arg0[2], arg1[2], arg2, -16384.0f, gCharacterSelections[2], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
        spawn_player(gPlayerFour,  3, arg0[3], arg1[3], arg2,  16384.0f, gCharacterSelections[3], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
    }
    spawn_player(gPlayerFive,  4, arg0[4], arg1[4], arg2, 32768.0f, 4, PLAYER_START_SEQUENCE | PLAYER_CPU);
    spawn_player(gPlayerSix,   5, arg0[5], arg1[5], arg2, 32768.0f, 5, PLAYER_START_SEQUENCE | PLAYER_CPU);
    spawn_player(gPlayerSeven, 6, arg0[6], arg1[6], arg2, 32768.0f, 6, PLAYER_START_SEQUENCE | PLAYER_CPU);
    spawn_player(gPlayerEight, 7, arg0[0], arg1[0], arg2, 32768.0f, 7, PLAYER_START_SEQUENCE | PLAYER_CPU);
    D_80164A28 = 0;
    func_80039AE4();
}

void func_8003BE30(void) {
    spawn_player(gPlayerOne,   0, -2770.774f, -345.187f,  -34.6f,     0.0f, gCharacterIdByGPOverallRank[0], PLAYER_EXISTS | PLAYER_CPU | PLAYER_START_SEQUENCE);
    spawn_player(gPlayerTwo,   1, -3691.506f,   -6.822f,  -6.95f, 36400.0f, gCharacterIdByGPOverallRank[1], PLAYER_EXISTS | PLAYER_CPU | PLAYER_START_SEQUENCE);
    spawn_player(gPlayerThree, 2, -3475.028f, -998.485f, -8.059f, 45500.0f, gCharacterIdByGPOverallRank[2], PLAYER_EXISTS | PLAYER_CPU | PLAYER_START_SEQUENCE);
    if (D_802874D8.unk_1D >= 3) {
        spawn_player(gPlayerFour, 3, -3025.772f, 110.039f, -23.224f, 28210.0f, D_802874D8.unk_1E, PLAYER_EXISTS | PLAYER_CPU | PLAYER_START_SEQUENCE);
    } else {
        spawn_player(gPlayerFour, 3, -3025.772f, 110.039f, -23.224f, 28210.0f, gCharacterIdByGPOverallRank[3], PLAYER_EXISTS | PLAYER_CPU | PLAYER_START_SEQUENCE);
    }
    spawn_player(gPlayerFive,  4, -2770.774f, -345.187f,   -34.6f,     0.0f, 0, 0x7000);
    spawn_player(gPlayerSix,   5, -3691.506f,   -6.822f,   -6.95f, 36400.0f, 0, 0x7000);
    spawn_player(gPlayerSeven, 6, -3475.028f, -998.485f,  -8.059f, 45500.0f, 0, 0x7000);
    spawn_player(gPlayerEight, 7, -3025.772f,  110.039f, -23.224f, 28210.0f, 0, 0x7000);
    D_80164A28 = 0;
    func_80039AE4();
}

void func_8003C0F0(void) {
    s16 sp5E;
    s16 sp5C;
    s16 sp5A;
    s32 temp;
    s32 pad[4];
    switch (gCurrentCourseId) {
        case COURSE_MARIO_RACEWAY:
        case COURSE_CHOCO_MOUNTAIN:
        case COURSE_BOWSER_CASTLE:
        case COURSE_BANSHEE_BOARDWALK:
        case COURSE_YOSHI_VALLEY:
        case COURSE_FRAPPE_SNOWLAND:
        case COURSE_KOOPA_BEACH:
        case COURSE_ROYAL_RACEWAY:
        case COURSE_LUIGI_RACEWAY:
        case COURSE_MOO_MOO_FARM:
        case COURSE_TOADS_TURNPIKE:
        case COURSE_KALAMARI_DESERT:
        case COURSE_SHERBET_LAND:
        case COURSE_RAINBOW_ROAD:
        case COURSE_WARIO_STADIUM:
        case COURSE_DK_JUNGLE:
            func_8000F2DC();
            sp5E = (f32) D_80164550[0][0].wayPointX;
            sp5C = (f32) D_80164550[0][0].wayPointZ;
            sp5A = (f32) D_80164550[0][0].wayPointY;
            if (gCurrentCourseId == COURSE_TOADS_TURNPIKE) {
                sp5E = 0;
            }
            break;

        case COURSE_BLOCK_FORT:
        case COURSE_SKYSCRAPER:
        case COURSE_DOUBLE_DECK:
        case COURSE_BIG_DONUT:
            func_8000EEDC();
            break;
    }

    switch (gCurrentCourseId) {
        case COURSE_MARIO_RACEWAY:
        case COURSE_CHOCO_MOUNTAIN:
        case COURSE_BOWSER_CASTLE:
        case COURSE_BANSHEE_BOARDWALK:
        case COURSE_YOSHI_VALLEY:
        case COURSE_FRAPPE_SNOWLAND:
        case COURSE_KOOPA_BEACH:
        case COURSE_ROYAL_RACEWAY:
        case COURSE_LUIGI_RACEWAY:
        case COURSE_MOO_MOO_FARM:
        case COURSE_TOADS_TURNPIKE:
        case COURSE_KALAMARI_DESERT:
        case COURSE_SHERBET_LAND:
        case COURSE_RAINBOW_ROAD:
        case COURSE_WARIO_STADIUM:
        case COURSE_DK_JUNGLE:
            switch (gActiveScreenMode) {
                case 0:
                    switch (gModeSelection) {
                        case 0:
                            D_80165210[0] = (D_80165210[2] = (D_80165210[4] = (D_80165210[6] = sp5E + 0x14)));
                            D_80165210[1] = (D_80165210[3] = (D_80165210[5] = (D_80165210[7] = sp5E - 0x14)));
                            D_80165230[0] = sp5C + 0x1E;
                            D_80165230[1] = sp5C + 0x32;
                            D_80165230[2] = sp5C + 0x46;
                            D_80165230[3] = sp5C + 0x5A;
                            D_80165230[4] = sp5C + 0x6E;
                            D_80165230[5] = sp5C + 0x82;
                            D_80165230[6] = sp5C + 0x96;
                            D_80165230[7] = sp5C + 0xAA;
                            func_80039F44(D_80165210, D_80165230, sp5A);
                        break;

                        case 1:
                            D_80165210[0] = (D_80165210[2] = (D_80165210[4] = (D_80165210[6] = sp5E)));
                            D_80165210[1] = (D_80165210[3] = (D_80165210[5] = (D_80165210[7] = sp5E)));
                            D_80165230[0] = sp5C + 0x1E;
                            D_80165230[1] = sp5C + 0x1E;
                            D_80165230[2] = sp5C + 0x1E;
                            D_80165230[3] = sp5C + 0x1E;
                            D_80165230[4] = sp5C + 0x1E;
                            D_80165230[5] = sp5C + 0x1E;
                            D_80165230[6] = sp5C + 0x1E;
                            D_80165230[7] = sp5C + 0x1E;
                            func_8003A59C(D_80165210, D_80165230, sp5A);
                        break;
                    }
                    break;

                case 1:
                case 2:
                    switch (gModeSelection) {
                        case 0:
                            D_80165210[0] = (D_80165210[2] = (D_80165210[4] = (D_80165210[6] = sp5E + 0x14)));
                            D_80165210[1] = (D_80165210[3] = (D_80165210[5] = (D_80165210[7] = sp5E - 0x14)));
                            D_80165230[0] = sp5C + 0x1E;
                            D_80165230[1] = sp5C + 0x32;
                            D_80165230[2] = sp5C + 0x46;
                            D_80165230[3] = sp5C + 0x5A;
                            D_80165230[4] = sp5C + 0x6E;
                            D_80165230[5] = sp5C + 0x82;
                            D_80165230[6] = sp5C + 0x96;
                            D_80165230[7] = sp5C + 0xAA;
                            func_8003A9F0(D_80165210, D_80165230, sp5A);
                            break;

                        case 2:
                            D_80165210[0] = (D_80165210[2] = (D_80165210[4] = (D_80165210[6] = sp5E + 0xA)));
                            D_80165210[1] = (D_80165210[3] = (D_80165210[5] = (D_80165210[7] = sp5E - 0xA)));
                            D_80165230[0] = sp5C + 0x1E;
                            D_80165230[1] = sp5C + 0x1E;
                            D_80165230[2] = sp5C + 0x1E;
                            D_80165230[3] = sp5C + 0x1E;
                            D_80165230[4] = sp5C + 0x1E;
                            D_80165230[5] = sp5C + 0x1E;
                            D_80165230[6] = sp5C + 0x1E;
                            D_80165230[7] = sp5C + 0x1E;
                            func_8003AE24(D_80165210, D_80165230, sp5A);
                            break;
                    }
                    break;

                case 3:
                    switch (gModeSelection) {
                        case 2:
                            D_80165210[0] = sp5E + 0x1E;
                            D_80165210[6] = sp5E - 0xA;
                            D_80165210[1] = sp5E + 0xA;
                            D_80165210[7] = sp5E - 0x1E;
                            D_80165210[4] = sp5E - 0xA;
                            D_80165210[2] = sp5E - 0xA;
                            D_80165210[5] = sp5E - 0x1E;
                            D_80165210[3] = sp5E - 0x1E;
                            D_80165230[0] = sp5C + 0x1E;
                            D_80165230[1] = sp5C + 0x1E;
                            D_80165230[2] = sp5C + 0x1E;
                            D_80165230[3] = sp5C + 0x1E;
                            D_80165230[4] = sp5C + 0x1E;
                            D_80165230[5] = sp5C + 0x1E;
                            D_80165230[6] = sp5C + 0x1E;
                            D_80165230[7] = sp5C + 0x1E;
                            if (gPlayerCountSelection1 == 4) {
                                func_8003B870(D_80165210, D_80165230, sp5A);
                            }
                            else {
                                func_8003B318(D_80165210, D_80165230, sp5A);
                            }
                            break;
                    }
                    break;
            }
            break;

        case COURSE_BLOCK_FORT:
            switch (gActiveScreenMode) {
                case 1:
                case 2:
                    temp = 5;
                    if (1);
                    D_80165210[0] = 0;
                    D_80165210[1] = 0;
                    D_80165230[1] = -200.0f;
                    D_80165230[0] = 200.0f;
                    spawn_players_2p_battle(D_80165210, D_80165230, temp);
                    break;

                case 3:
                    temp = 5;
                    D_80165210[2] = -200.0f;
                    D_80165230[1] = -200.0f;
                    D_80165210[0] = 0.0f;
                    D_80165210[1] = 0.0f;
                    D_80165230[2] = 0.0f;
                    D_80165230[3] = 0.0f;
                    D_80165210[3] = 200.0f;
                    D_80165230[0] = 200.0f;
                    if (gPlayerCountSelection1 == 4) {
                        spawn_players_4p_battle(D_80165210, D_80165230, temp);
                    } else {
                        spawn_players_3p_battle(D_80165210, D_80165230, temp);
                    }
                    break;
            }
            break;

        case COURSE_SKYSCRAPER:
            switch (gActiveScreenMode) {
                case 1:
                case 2:
                    temp = 0x1E0;
                    if (1);
                    D_80165210[0] = 0.0f;
                    D_80165210[1] = 0.0f;
                    D_80165230[1] = -400.0f;
                    D_80165230[0] = 400.0f;
                    spawn_players_2p_battle(D_80165210, D_80165230, temp);
                    break;

                case 3:
                    temp = 0x1E0;
                    D_80165210[0] = 0.0f;
                    D_80165210[1] = 0.0f;
                    D_80165210[2] = -400.0f;
                    D_80165210[3] = 400.0f;
                    D_80165230[0] = 400.0f;
                    D_80165230[1] = -400.0f;
                    D_80165230[2] = 0.0f;
                    D_80165230[3] = 0.0f;
                    if (gPlayerCountSelection1 == 4) {
                        spawn_players_4p_battle(D_80165210, D_80165230, temp);
                    } else {
                        spawn_players_3p_battle(D_80165210, D_80165230, temp);
                    }
                    break;
            }
            break;

        case COURSE_DOUBLE_DECK:
            switch (gActiveScreenMode) {
            case 1:
            case 2:
                temp = 0x37;
                if (1);
                D_80165210[0] = 0.0f;
                D_80165210[1] = 0.0f;
                D_80165230[1] = -160.0f;
                D_80165230[0] = 160.0f;
                spawn_players_2p_battle(D_80165210, D_80165230, temp);
                break;

            case 3:
                temp = 0x37;
                D_80165210[0] = 0.0f;
                D_80165210[1] = 0.0f;
                D_80165210[2] = -160.0f;
                D_80165210[3] = 160.0f;
                D_80165230[0] = 160.0f;
                D_80165230[1] = -160.0f;
                D_80165230[2] = 0.0f;
                D_80165230[3] = 0.0f;
                if (gPlayerCountSelection1 == 4) {
                    spawn_players_4p_battle(D_80165210, D_80165230, temp);
                } else {
                    spawn_players_3p_battle(D_80165210, D_80165230, temp);
                }
                break;
            }
            break;

        case COURSE_BIG_DONUT:
            switch (gActiveScreenMode) {
                case 1:
                case 2:
                    temp = 0xC8;
                    if (1);
                    D_80165210[0] = 0.0f;
                    D_80165210[1] = 0.0f;
                    D_80165230[1] = -575.0f;
                    D_80165230[0] = 575.0f;
                    spawn_players_2p_battle(D_80165210, D_80165230, temp);
                    break;

                case 3:
                    temp = 0xC8;
                    D_80165210[0] = 0.0f;
                    D_80165210[1] = 0.0f;
                    D_80165210[2] = -575.0f;
                    D_80165210[3] = 575.0f;
                    D_80165230[0] = 575.0f;
                    D_80165230[1] = -575.0f;
                    D_80165230[2] = 0.0f;
                    D_80165230[3] = 0.0f;
                    if (gPlayerCountSelection1 == 4) {
                        spawn_players_4p_battle(D_80165210, D_80165230, temp);
                    } else {
                        spawn_players_3p_battle(D_80165210, D_80165230, temp);
                    }
                    break;
            }
            break;

        default:
            D_80165210[0] = (D_80165210[2] = (D_80165210[4] = (D_80165210[6] = 20.0f)));
            D_80165210[1] = (D_80165210[3] = (D_80165210[5] = (D_80165210[7] = -20.0f)));
            D_80165230[0] = 30.0f;
            D_80165230[1] = 50.0f;
            D_80165230[2] = 70.0f;
            D_80165230[3] = 90.0f;
            D_80165230[4] = 110.0f;
            D_80165230[5] = 130.0f;
            D_80165230[6] = 150.0f;
            D_80165230[7] = 170.0f;
            spawn_player(gPlayerOneCopy, 0, D_80165210[0], D_80165230[0], sp5A, 32768.0f, gCharacterSelections[0], PLAYER_EXISTS | PLAYER_START_SEQUENCE | PLAYER_HUMAN);
            spawn_player(gPlayerTwo,     1, D_80165210[1], D_80165230[1], sp5A, 32768.0f, 1, PLAYER_EXISTS | PLAYER_CPU | PLAYER_START_SEQUENCE);
            spawn_player(gPlayerThree,   2, D_80165210[2], D_80165230[2], sp5A, 32768.0f, 2, PLAYER_EXISTS | PLAYER_CPU | PLAYER_START_SEQUENCE);
            spawn_player(gPlayerFour,    3, D_80165210[3], D_80165230[3], sp5A, 32768.0f, 3, PLAYER_EXISTS | PLAYER_CPU | PLAYER_START_SEQUENCE);
            spawn_player(gPlayerFive,    4, D_80165210[4], D_80165230[4], sp5A, 32768.0f, 4, PLAYER_EXISTS | PLAYER_CPU | PLAYER_START_SEQUENCE);
            spawn_player(gPlayerSix,     5, D_80165210[5], D_80165230[5], sp5A, 32768.0f, 5, PLAYER_EXISTS | PLAYER_CPU | PLAYER_START_SEQUENCE);
            spawn_player(gPlayerSeven,   6, D_80165210[6], D_80165230[6], sp5A, 32768.0f, 6, PLAYER_EXISTS | PLAYER_CPU | PLAYER_START_SEQUENCE);
            spawn_player(gPlayerEight,   7, D_80165210[7], D_80165230[7], sp5A, 32768.0f, 7, PLAYER_EXISTS | PLAYER_CPU | PLAYER_START_SEQUENCE);
            D_80164A28 = 0;
            break;
    }

    if (gModeSelection != 3) {
        func_8000F628();
    }
}

void func_8003CD78(void) {
    func_8003BE30();
}

void func_8003CD98(Player *player, struct Camera *camera, s8 arg2, s8 arg3) {
    if (player->unk_000 & PLAYER_EXISTS) {
        if (arg3 == 0) {
            func_8002D268(player, camera, arg3, arg2);
        }
        func_8002934C(player, camera, arg3, arg2);
        if ((arg3 == 0) || (arg3 == 1)) {
            func_80027A20(player, arg2, arg3, 0);
            func_80027A20(player, arg2, arg3, 1);
            func_80027040(player, arg2, arg3, arg3, 0);
            mio0decode(&D_802DFB80[0][arg3][arg2], &D_802BFB80[0][arg3][arg2]);
        } else {
            func_80027A20(player, arg2, arg3, 0);
            func_80027A20(player, arg2, arg3, 1);
            func_80027040(player, (s8) (arg2 + 4), arg3, (s8) (arg3 - 2), 0);
            mio0decode(&D_802DFB80[0][arg3 - 2][arg2 + 4], &D_802BFB80[0][arg3 - 2][arg2 + 4]);
        }

        D_801650D0[arg3][arg2] = player->unk_244[arg3];
        D_80165110[arg3][arg2] = player->unk_24C[arg3];
        D_80165150[arg3][arg2] = player->unk_0A8;
        D_801651D0[arg3][arg2] = 0;
        func_800267AC(player, arg2, arg3);
    }
}

void func_8003D080(void) {
    s32 pad;
    Player* ptr = &gPlayers[0];

    func_8005D290();
    if (gGamestate == 5) {
        func_8003CD78();
    } else {
        func_8003C0F0();
    }
    if (D_800DC51C == 0) {
        switch (gActiveScreenMode) {
            case SCREEN_MODE_1P:
                switch (gModeSelection) {
                    case 0:
                        if (gCurrentCourseId == 10) {
                            func_8001C4D0(0.0f, ptr->pos[1], D_8016524C, ptr->unk_02C[1], 8, 0);
                        } else {
                            func_8001C4D0((D_80165210[7] + D_80165210[6]) / 2, ptr->pos[1], D_8016524C, ptr->unk_02C[1], 8, 0);
                        }
                        break;

                    case 1:
                        func_8001C4D0(ptr->pos[0], ptr->pos[1], ptr->pos[2], ptr->unk_02C[1], 1, 0);
                        break;

                    default:
                        func_8001C4D0(ptr->pos[0], ptr->pos[1], ptr->pos[2], ptr->unk_02C[1], 10, 0);
                        break;
                }
                break;

            case SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL:
            case SCREEN_MODE_2P_SPLITSCREEN_VERTICAL:
                switch (gModeSelection) {
                    case 0:
                        func_8001C4D0(ptr->pos[0], ptr->pos[1], ptr->pos[2], ptr->unk_02C[1], 1, 0);
                        ptr++;
                        func_8001C4D0(ptr->pos[0], ptr->pos[1], ptr->pos[2], ptr->unk_02C[1], 1, 1);
                        break;

                    case 3:
                        func_8001C4D0(ptr->pos[0], ptr->pos[1], ptr->pos[2], ptr->unk_02C[1], 9, 0);
                        ptr++;
                        func_8001C4D0(ptr->pos[0], ptr->pos[1], ptr->pos[2], ptr->unk_02C[1], 9, 1);
                        break;

                    default:
                        func_8001C4D0(ptr->pos[0], ptr->pos[1], ptr->pos[2], ptr->unk_02C[1], 1, 0);
                        ptr++;
                        func_8001C4D0(ptr->pos[0], ptr->pos[1], ptr->pos[2], ptr->unk_02C[1], 1, 1);
                        break;
                }
                break;

            case SCREEN_MODE_3P_4P_SPLITSCREEN:
                if (gModeSelection == BATTLE) {
                    func_8001C4D0(ptr->pos[0], ptr->pos[1], ptr->pos[2], ptr->unk_02C[1], 9, 0);
                    ptr++;
                    func_8001C4D0(ptr->pos[0], ptr->pos[1], ptr->pos[2], ptr->unk_02C[1], 9, 1);
                    ptr++;
                    func_8001C4D0(ptr->pos[0], ptr->pos[1], ptr->pos[2], ptr->unk_02C[1], 9, 2);
                    if (gPlayerCountSelection1 == 4) {
                        ptr++;
                        func_8001C4D0(ptr->pos[0], ptr->pos[1], ptr->pos[2], ptr->unk_02C[1], 9, 3);
                    }
                } else {
                    func_8001C4D0(ptr->pos[0], ptr->pos[1], ptr->pos[2], ptr->unk_02C[1], 1, 0);
                    ptr++;
                    func_8001C4D0(ptr->pos[0], ptr->pos[1], ptr->pos[2], ptr->unk_02C[1], 1, 1);
                    ptr++;
                    func_8001C4D0(ptr->pos[0], ptr->pos[1], ptr->pos[2], ptr->unk_02C[1], 1, 2);
                    if (gPlayerCountSelection1 == 4) {
                        ptr++;
                        func_8001C4D0(ptr->pos[0], ptr->pos[1], ptr->pos[2], ptr->unk_02C[1], 1, 3);
                    }
                }
                break;
        }
    } else {
        switch (gActiveScreenMode) {
            case SCREEN_MODE_1P:
                func_8001C4D0(ptr->pos[0], ptr->pos[1], ptr->pos[2], ptr->unk_02C[1], 3, 0);
                break;

            case SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL:
            case SCREEN_MODE_2P_SPLITSCREEN_VERTICAL:
                func_8001C4D0(ptr->pos[0], ptr->pos[1], ptr->pos[2], ptr->unk_02C[1], 3, 0);
                ptr++;
                func_8001C4D0(ptr->pos[0], ptr->pos[1], ptr->pos[2], ptr->unk_02C[1], 3, 1);
                break;

            case SCREEN_MODE_3P_4P_SPLITSCREEN:
                func_8001C4D0(ptr->pos[0], ptr->pos[1], ptr->pos[2], ptr->unk_02C[1], 3, 0);
                ptr++;
                func_8001C4D0(ptr->pos[0], ptr->pos[1], ptr->pos[2], ptr->unk_02C[1], 3, 1);
                ptr++;
                func_8001C4D0(ptr->pos[0], ptr->pos[1], ptr->pos[2], ptr->unk_02C[1], 3, 2);
                ptr++;
                func_8001C4D0(ptr->pos[0], ptr->pos[1], ptr->pos[2], ptr->unk_02C[1], 3, 3);
                break;
        }
    }

    switch (gActiveScreenMode) {
        case SCREEN_MODE_1P:
            func_8003CD98(gPlayerOneCopy,   camera1, 0, 0); // sic
            func_8003CD98(gPlayerTwo,   camera1, 1, 0);
            func_8003CD98(gPlayerThree, camera1, 2, 0);
            func_8003CD98(gPlayerFour,  camera1, 3, 0);
            func_8003CD98(gPlayerFive,  camera1, 4, 0);
            func_8003CD98(gPlayerSix,   camera1, 5, 0);
            func_8003CD98(gPlayerSeven, camera1, 6, 0);
            func_8003CD98(gPlayerEight, camera1, 7, 0);
            break;

        case SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL:
        case SCREEN_MODE_2P_SPLITSCREEN_VERTICAL:
            func_8003CD98(gPlayerOneCopy, camera1, 0, 0);
            func_8003CD98(gPlayerTwo,     camera1, 1, 0);
            func_8003CD98(gPlayerThree,   camera1, 2, 0);
            func_8003CD98(gPlayerFour,    camera1, 3, 0);
            func_8003CD98(gPlayerFive,    camera1, 4, 0);
            func_8003CD98(gPlayerSix,     camera1, 5, 0);
            func_8003CD98(gPlayerSeven,   camera1, 6, 0);
            func_8003CD98(gPlayerEight,   camera1, 7, 0);
            func_8003CD98(gPlayerOneCopy, camera2, 0, 1);
            func_8003CD98(gPlayerTwo,     camera2, 1, 1);
            func_8003CD98(gPlayerThree,   camera2, 2, 1);
            func_8003CD98(gPlayerFour,    camera2, 3, 1);
            func_8003CD98(gPlayerFive,    camera2, 4, 1);
            func_8003CD98(gPlayerSix,     camera2, 5, 1);
            func_8003CD98(gPlayerSeven,   camera2, 6, 1);
            func_8003CD98(gPlayerEight,   camera2, 7, 1);
            break;

        case SCREEN_MODE_3P_4P_SPLITSCREEN:
            func_8003CD98(gPlayerOneCopy, camera1, 0, 0);
            func_8003CD98(gPlayerTwo,     camera1, 1, 0);
            func_8003CD98(gPlayerThree,   camera1, 2, 0);
            func_8003CD98(gPlayerFour,    camera1, 3, 0);
            func_8003CD98(gPlayerOneCopy, camera2, 0, 1);
            func_8003CD98(gPlayerTwo,     camera2, 1, 1);
            func_8003CD98(gPlayerThree,   camera2, 2, 1);
            func_8003CD98(gPlayerFour,    camera2, 3, 1);
            func_8003CD98(gPlayerOneCopy, camera3, 0, 2);
            func_8003CD98(gPlayerTwo,     camera3, 1, 2);
            func_8003CD98(gPlayerThree,   camera3, 2, 2);
            func_8003CD98(gPlayerFour,    camera3, 3, 2);
            func_8003CD98(gPlayerOneCopy, camera4, 0, 3);
            func_8003CD98(gPlayerTwo,     camera4, 1, 3);
            func_8003CD98(gPlayerThree,   camera4, 2, 3);
            func_8003CD98(gPlayerFour,    camera4, 3, 3);
            break;
    }
}

void func_8003DB5C(void) {
    Player *player = gPlayerOne;
    s32 i;

    func_8001C4D0(player->pos[0], player->pos[1], player->pos[2], player->unk_02C[1], 3, 0);
    func_8001C4D0(player->pos[0], player->pos[1], player->pos[2], player->unk_02C[1], 3, 1);

    for (i = 0; i < 8; i++, player++) {
        func_80027A20(player, i, 1, 0);
        func_80027A20(player, i, 1, 1);
    }
}

