#include <ultra64.h>
#include <macros.h>
#include <types.h>
#include <common_structs.h>
#include <config.h>
#include <defines.h>
#include <sounds.h>
#include "camera.h"
#include "waypoints.h"
#include "staff_ghosts.h"
#include "main.h"
#include "code_800029B0.h"
#include "code_80057C60.h"
#include "code_80071F00.h"
#include "code_80091750.h"
#include "code_80005FD0.h"
#include "spawn_players.h"
#include "audio/external.h"
#include "race_logic.h"
#include "skybox_and_splitscreen.h"
#include "math_util_2.h"
#include "code_8008C1D0.h"
#include "math.h"

#pragma intrinsic (sqrtf)

extern s16 gPlayerBalloonCount[];
extern s16 D_8016348C;
extern s8 gCupCourseSelection;

extern s32 gLapCountByPlayerId[];
extern u16 D_802BA048;

extern u16 D_800DC5B4;
extern u16 D_800DC5B0;
extern u16 D_800DC5B8;
extern s32 gMenuSelection;

extern s8 D_8018EE08;
extern s32 D_8018D2AC;
extern s16 gCurrentCourseId;
extern u32 D_800DC5AC;
extern s32 gPlayerWinningIndex;
extern u16 gIsInQuitToMenuTransition, gQuitToMenuTransitionCounter;
extern s32 D_802B91E0;

u16 D_802BA030;
u16 D_802BA032;

float D_802BA034;


s32 D_802BA038;
UNUSED s32 D_802BA03C;


s16 D_802BA040[4];
u16 D_802BA048;

void func_8028DF00(void) {
    struct Controller *controllers = &gControllers[0];
    s32 i;
    for (i = 0; i < 4; i++) {
        D_802BA040[i] = controllers->button;
        controllers++;
    }
}

void func_8028DF38(void) {
    struct Controller *controllers = &gControllers[0];
    s32 i;
    for (i = 0; i < 4; i++) {
        controllers->buttonPressed = (controllers->button & (D_802BA040[i] ^ controllers->button));
        controllers->buttonDepressed = (D_802BA040[i] & (D_802BA040[i] ^ controllers->button));
        controllers->button = D_802BA040[i];
        controllers++;
    }
}

void func_8028E028(void) {

    switch(gPlayerCountSelection1) {
        case 2:
            *(gNmiUnknown4 + gPlayerWinningIndex) += 1;
            break;
        case 3:
            *(gNmiUnknown5 + gPlayerWinningIndex) += 1;
            break;
        case 4:
            *(gNmiUnknown6 + gPlayerWinningIndex) += 1;
            break;
    }
    func_800CA118((u8) gPlayerWinningIndex);
    D_800DC510 = 5;
    D_802BA038 = 10;
}

void update_player_battle_status(void) {
    Player *player;
    s32 playerIndex;
    s16 playersAlive[4];
    s16 playersDead[4];
    s16 aliveCounter = 0;
    s16 deadCounter = 0;

    for (playerIndex = 0; playerIndex < 4; playerIndex++) {
        player = &gPlayers[playerIndex];
        if (!(player->unk_000 & PLAYER_EXISTS)) {
            continue;
        }
        if (player->unk_000 & PLAYER_CINEMATIC_MODE) {
            continue;
        }
        // If player has no balloons left
        if (gPlayerBalloonCount[playerIndex] < 0) {
            player->unk_000 |= PLAYER_CINEMATIC_MODE;
            playersDead[deadCounter] = (s16) (player - gPlayerOne);
            deadCounter++;
            func_800CA118((u8) playerIndex); // play sad character sound?
        } else {
            playersAlive[aliveCounter] = (s16) (player - gPlayerOne);
            aliveCounter++;
        }
    }
    if (aliveCounter == 1) {
        gPlayerWinningIndex = (s32) playersAlive[0];
        func_8028E028();
    } else if (aliveCounter == 0) {
        gPlayerWinningIndex = (s32) playersDead[0];
        func_8028E028();
    }
}

void func_8028E298(void) {
    f32 temp_v0;
    s32 i;
    u16 temp_a2;

    for (i = 0; i < 8; i++) {

        if ((gPlayers[i].unk_000 & PLAYER_CINEMATIC_MODE)) {
            continue;
        }
            temp_a2 = gPathIndexByPlayerId[i];

            temp_v0 = ((2 - gPlayers[i].lapCount) * gWaypointCountByPathIndex[temp_a2]);
            temp_v0 += gWaypointCountByPathIndex[temp_a2] * (1.0f - gLapCompletionPercentByPlayerId[i]);
            temp_v0 /= 15.0f;

            gTimePlayerLastTouchedFinishLine[i] = gCourseTimer + temp_v0;
    }
    D_8016348C = 1;
    func_800070F4();
}

void func_8028E3A0(void) {

    if (D_80150120) {

        if (gCupCourseSelection == CUP_COURSE_FOUR) {
            gMenuSelectionFromQuit = ENDING_SEQUENCE;
        } else {
            D_800DC544++;
            gCupCourseSelection++;
            gMenuSelectionFromQuit = RACING;
        }
    } else {
        D_800DC544++;
        gCupCourseSelection++;
        gMenuSelectionFromQuit = RACING;
    }
}

void func_8028E438(void) {
    struct UnkStruct_800DC5EC *temp_v0 = &D_8015F480[gPlayerWinningIndex];
    s32 phi_v1_4;

    D_800DC5B0 = 1;

    switch(D_8015F894) {
        case 0:
            D_800DC5B8 = 0;
            D_8015F894 = 1;
            if (gPlayerCountSelection1 == 3) {
                func_800925CC();
            }
            break;
        case 1:
            if (temp_v0->screenWidth < SCREEN_WIDTH) {
                temp_v0->screenWidth += 2;
            }
            if (temp_v0->screenHeight < SCREEN_HEIGHT) {
                temp_v0->screenHeight += 2;
            }
            if (temp_v0->screenStartX < 160) {
                temp_v0->screenStartX += 1;

            } else if (temp_v0->screenStartX > 160) {
                temp_v0->screenStartX -= 1;
            }
            if (temp_v0->screenStartY < 120) {
                temp_v0->screenStartY += 1;
            } else if (temp_v0->screenStartY > 120) {
                temp_v0->screenStartY -= 1;
            }
            phi_v1_4 = 0;

            if (temp_v0->screenHeight >= SCREEN_HEIGHT) {
                phi_v1_4++;
                temp_v0->screenHeight = SCREEN_HEIGHT;
            }
            if (temp_v0->screenWidth >= SCREEN_WIDTH) {
                temp_v0->screenWidth = SCREEN_WIDTH;
                phi_v1_4++;
            }

            if (temp_v0->screenStartY == 120) {
                phi_v1_4++;
            }
            if (temp_v0->screenStartX == 160) {
                phi_v1_4++;
            }
            D_80150148 = (f32) ((f32) temp_v0->screenWidth / (f32) temp_v0->screenHeight);
            if (phi_v1_4 == 4) {
                D_8015F894 = 2;
                gActiveScreenMode = SCREEN_MODE_1P;
                D_800DC5EC->screenWidth = temp_v0->screenWidth;
                D_800DC5EC->screenHeight = temp_v0->screenHeight;
                D_800DC5EC->screenStartX = temp_v0->screenStartX;
                D_800DC5EC->screenStartY = temp_v0->screenStartY;
                if (gModeSelection == BATTLE) {
                    func_80092604();
                } else if (gModeSelection == VERSUS) {
                    func_80092604();
                    func_80019DF4();
                } else {
                    func_80092564();
                    D_800DC510 = 7;
                }
            }
            break;
        case 2:
            break;
    }
}

void func_8028E678(void) {
    s32 phi_a0_10 = 0;

    D_800DC5B0 = 1;

    switch (D_8015F894) {
        case 0:
            // Unused switch?
            switch(gModeSelection) {
                case GRAND_PRIX:
                case VERSUS:
                    break;
                case TIME_TRIALS:
                    break;
            }
            D_800DC5B8 = 0;
            switch(gScreenModeSelection) {
                case SCREEN_MODE_1P:
                    D_8015F894 = 1;
                    break;
                case SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL:
                    D_8015F894 = 5;
                    break;
                case SCREEN_MODE_2P_SPLITSCREEN_VERTICAL:
                    D_8015F894 = 6;
                    break;
            }
            break;
        case 5:
            D_800DC5EC->screenWidth -= 4;

            D_800DC5F0->screenWidth -= 4;

            D_800DC5EC->screenStartX -= 2;

            D_800DC5F0->screenStartX += 2;

            if (D_800DC5EC->screenWidth < 160) {
                D_800DC5EC->screenWidth = 160;
                phi_a0_10++;
            }

            if (D_800DC5F0->screenWidth < 160) {
                D_800DC5F0->screenWidth = 160;
                phi_a0_10++;
            }


            if (D_800DC5EC->screenStartX < 80) {
                D_800DC5EC->screenStartX = 80;
                phi_a0_10++;
            }

            if (D_800DC5F0->screenStartX > SCREEN_HEIGHT) {
                D_800DC5F0->screenStartX = SCREEN_HEIGHT;
                phi_a0_10++;
            }

            D_80150148 = (f32) ((f32) D_800DC5EC->screenWidth / (f32) D_800DC5EC->screenHeight);
            if (phi_a0_10 == 4) {
                D_8015F894 = 3;
                func_80092500();
                func_80019DE4();
                func_80041D24();
            }
            break;
        case 6:
            D_800DC5EC->screenHeight -= 4;
            D_800DC5F0->screenHeight -= 4;
            D_800DC5EC->screenStartY -= 2;
            D_800DC5F0->screenStartY += 2;

            if (D_800DC5EC->screenHeight < 120) {
                D_800DC5EC->screenHeight = 120;
                phi_a0_10++;
            }

            if (D_800DC5F0->screenHeight < 120) {
                D_800DC5F0->screenHeight = 120;
                phi_a0_10++;
            }

            if ( D_800DC5EC->screenStartY < 60) {
                D_800DC5EC->screenStartY = 60;
                phi_a0_10++;
            }

            if ( D_800DC5F0->screenStartY > 180) {
                D_800DC5F0->screenStartY = 180;
                phi_a0_10++;
            }

            D_80150148 = (f32) ((f32) D_800DC5EC->screenWidth / (f32) D_800DC5EC->screenHeight);
            if (phi_a0_10 == 4) {
                D_8015F894 = 3;
                func_80092500();
                func_80019DE4();
            }
            break;
        case 1:
            D_800DC5EC->screenHeight -= 2;
            D_800DC5EC->screenWidth = (D_800DC5EC->screenHeight * SCREEN_WIDTH) / SCREEN_HEIGHT;

            if (D_800DC5EC->screenHeight < 120) {

                D_800DC5EC->screenHeight = 120;
                D_800DC5EC->screenWidth = (D_800DC5EC->screenHeight * SCREEN_WIDTH) / SCREEN_HEIGHT;
                D_8015F894 = 2;

                D_800DC5F0->screenWidth = D_800DC5EC->screenWidth;
                D_800DC5F0->screenHeight = D_800DC5EC->screenHeight;
                D_800DC5F0->screenStartX = D_800DC5EC->screenStartX;
                D_800DC5F0->screenStartY = D_800DC5EC->screenStartY;

                gActiveScreenMode = SCREEN_MODE_2P_SPLITSCREEN_VERTICAL;
                D_80150148 = 1.33333337;
                gPlayerCountSelection1 = 2;
                func_8003DB5C();
                func_8005994C();
            }
            break;
        case 2:
            D_800DC5EC->screenStartX -= 4;

            D_800DC5EC->screenStartY -= 2;

            if (D_800DC5EC->screenStartX < 80) {
                D_800DC5EC->screenStartX = 80;
                phi_a0_10++;
            }

            if (D_800DC5EC->screenStartY < 60) {
                D_800DC5EC->screenStartY = 60;
                phi_a0_10++;
            }
            D_800DC5F0->screenStartX += 4;
            D_800DC5F0->screenStartY += 2;

            if (D_800DC5F0->screenStartX > SCREEN_HEIGHT) {
                D_800DC5F0->screenStartX = SCREEN_HEIGHT;
                phi_a0_10++;
            }
            if (D_800DC5F0->screenStartY > 180) {
                D_800DC5F0->screenStartY = 180;
                phi_a0_10++;
            }
            if (phi_a0_10 == 4) {
                D_8015F894 = 7;
                D_802BA030 = 3;
            }
            break;
        case 7:
            D_802BA030--;
            if (D_802BA030 == 0) {
                D_8015F894 = 3;
                func_80092500();
                if (gModeSelection == GRAND_PRIX) {
                    func_80019DE4();
                } else {
                    func_80019E58();
                }
            }
            break;
        case 4:
            gIsInQuitToMenuTransition = 1;
            gQuitToMenuTransitionCounter = 5;
            D_800DC510 = 7;
            func_8028E3A0();
            break;
    }
}

void func_8028EC38(s32 arg0) {
    gMenuSelectionFromQuit = arg0;
    D_800DC510 = 6;
    func_800CA330(25);
    func_800CA388(25);
    D_800DC5B4 = 1;
    D_800DC5B0 = 1;
    D_800DC5B8 = 0;
    D_802BA038 = 5;
}

void func_8028EC98(s32 arg0) {

    if (gScreenModeSelection == SCREEN_MODE_3P_4P_SPLITSCREEN) {
        return;
    }

    func_800029B0();

    switch (arg0) {
        case 0:
        case 7:
        case 8:
        case 14:
            func_800C8EAC(3);
            break;
        case 10:
            func_800C8EAC(21);
            break;
        case 4:
        case 9:
            func_800C8EAC(4);
            break;
        case 1:
        case 15:
        case 17:
            func_800C8EAC(5);
            break;
        case 11:
            func_800C8EAC(10);
            break;
        case 6:
            func_800C8EAC(6);
            break;
        case 2:
            func_800C8EAC(9);
            break;
        case 3:
            func_800C8EAC(7);
            break;
        case 5:
        case 12:
            func_800C8EAC(8);
            break;
        case 13:
            func_800C8EAC(18);
            break;
        case 18:
            func_800C8EAC(19);
            break;
        case 16:
        case 19:
            func_800C8EAC(25);
            break;
    }

}

void start_race(void) {
    s32 i;

    D_8015011E = -1;
    if (!gDemoMode) {
        func_8028EC98(gCurrentCourseId);
    }

    if (D_800DC510 == 2) {
        D_800DC510 = 3;
    }

    for (i = 0; i < 8; i++) {

        if ((gPlayers[i].unk_000 & PLAYER_EXISTS) == 0) {
            continue;
        }

        // Sets player to human.
        if (gPlayers[i].unk_000 & PLAYER_START_SEQUENCE) {
            gPlayers[i].unk_000 ^= PLAYER_START_SEQUENCE;
        }
    }

}

f32 func_8028EE8C(s32 arg0) {
    f32 temp_v0 = gPlayers[arg0].pos[2];
    f32 temp_v1 = gPlayers[arg0].rotZ;
    f32 temp_f14 = D_8015F8D0[2] - temp_v0;
    f32 temp_f16 = temp_v1 - D_8015F8D0[2];
    return gCourseTimer - ((0.01666666f * temp_f14) / (temp_f14 + temp_f16));
}

void func_8028EEF0(s32 i) {
    gPlayers[i].unk_000 |= PLAYER_CINEMATIC_MODE;
}

void func_8028EF28(void) {
    s16 currentPosition;
    s32 i;

    for(i = 0; i < 8; i++)
    {
        Player *player = &gPlayers[i];

        if ((gPlayers[i].unk_000 & PLAYER_EXISTS) == 0) {
            continue;
        }

        if (gLapCountByPlayerId[i] < gPlayers[i].lapCount) {
            gPlayers[i].lapCount--;
        } else if (gLapCountByPlayerId[i] > gPlayers[i].lapCount) {
            gPlayers[i].lapCount++;

            if ((gPlayers[i].unk_000 & PLAYER_HUMAN) != 0) {
                if (gPlayers[i].lapCount == 3) {
                    func_8028EEF0(i);

                    currentPosition = gPlayers[i].currentRank;
                    gPlayers[i].unk_000 |= PLAYER_CPU;

                    if (currentPosition < 4) {
                        D_80150120 = 1;
                    }

                    func_800CA118((u8)i);
                    if ((D_802BA032 & PLAYER_EXISTS) == 0) {
                        D_802BA032 |= PLAYER_EXISTS;
                    }


                    if (gModeSelection == GRAND_PRIX && gPlayerCountSelection1 == 2 && D_802BA048 == 0) {
                        D_802BA048 = 1;
                    }
                    if ((gPlayers[i].unk_000 & PLAYER_INVISIBLE_OR_BOMB) == 0) {
                        D_800DC510 = 4;
                    }
                    if (gModeSelection == TIME_TRIALS) {
                        func_80005AE8(player);
                    }


                    if (gModeSelection == VERSUS) {
                        D_802BA038 = 180;
                        if (currentPosition == 0) {
                            gPlayerWinningIndex = i;
                        }
                        switch(gPlayerCountSelection1) {
                            case 2:
                                if (currentPosition == 0) {
                                    *(gNmiUnknown1 + i) += 1;
                                }
                                if (*(gNmiUnknown1 + i) > 99) {
                                    *(gNmiUnknown1 + i) = 99;
                                }
                                D_800DC510 = 5;
                                i = gPlayerPositionLUT[1];
                                gPlayers[i].statusEffects |= 0x200000;
                                gPlayers[i].unk_000 |= PLAYER_CPU;
                                func_800CA118((u8)i);
                                break;
                            case 3:
                                if (currentPosition < 3) {
                                    *(gNmiUnknown2 + i * 3 + currentPosition) += 1;
                                }
                                if (*(gNmiUnknown2 + i * 3 + currentPosition) > 99) {
                                    *(gNmiUnknown2 + i * 3 + currentPosition) = 99;
                                }
                                if (currentPosition == 1) {
                                    D_800DC510 = 5;
                                    i = gPlayerPositionLUT[2];
                                    *(gNmiUnknown2 + i * 3 + 2) += 1;
                                    if (*(gNmiUnknown2 + i * 3 + 2) > 99) {
                                        *(gNmiUnknown2 + i * 3 + 2) = 99;
                                    }
                                    gPlayers[i].statusEffects |= 0x200000;
                                    gPlayers[i].unk_000 |= PLAYER_CPU;
                                    func_800CA118((u8)i);
                                }
                                break;
                            case 4:
                                if (currentPosition < 3) {
                                    *(gNmiUnknown3 + i * 3 + currentPosition) += 1;
                                }
                                if (*(gNmiUnknown3 + i * 3 + currentPosition) > 99) {
                                    *(gNmiUnknown3 + i * 3 + currentPosition) = 99;
                                }
                                if (currentPosition == 2) {
                                    D_800DC510 = 5;
                                    i = gPlayerPositionLUT[3];
                                    gPlayers[i].statusEffects |= 0x200000;
                                    gPlayers[i].unk_000 |= PLAYER_CPU;
                                    func_800CA118((u8)i);
                                }
                                break;
                        }

                    }

                } else if (gPlayers[i].lapCount == 2) {
                    if ((gPlayers[i].unk_000 & 0x100) != 0) {
                        return;
                    }
                    if ((D_802BA032 & 0x4000) == 0) {
                        D_802BA032 |= 0x4000;
                        func_800CA49C((u8)i);
                    }
                }
            } else if (gPlayers[i].lapCount == 3) {
                func_8028EEF0(i);
                if (gModeSelection == TIME_TRIALS) {
                    func_80005AE8(player);
                }
            }
        }
    }
    if ((D_802BA048 != 0) && (D_802BA048 != 100)) {
        D_802BA048 = 100;
        func_800074D4();
    }
}

void func_8028F3E8(void) {

}

// func_8028F3F0
void update_race_position_data(void) {
    s16 i;
    s16 position;

    for (i = 0; i < 8; i++) {
        if (((gPlayers[i].unk_000 & PLAYER_EXISTS) != 0) &&
            ((gPlayers[i].unk_000 & PLAYER_CINEMATIC_MODE) == 0) &&
            ((gPlayers[i].unk_000 & PLAYER_INVISIBLE_OR_BOMB) == 0)) {
            position = gGPCurrentRaceRankByPlayerId[i];
            gPlayers[i].currentRank = position;
            gPlayerPositionLUT[position] = i;
        }
    }
}

void func_8028F474(void) {
    s32 i;

    switch (D_800DC510) {
        case 3:
        case 4:
        case 5:
        case 7:
            for (i = 0; i < 8; i++) {
                func_80009B60(i);
            }
        case 1:
        case 2:
            func_800097E0();
            break;
    }
}

void func_8028F4E8(void) {
    if (gEnableDebugMode) {
        if (((gControllerFive->button & R_TRIG) != 0) &&
            ((gControllerFive->button & L_TRIG) != 0) &&
            ((gControllerFive->button & A_BUTTON) != 0) &&
            ((gControllerFive->button & B_BUTTON) != 0)) {

            func_800CA330(0x19);
            func_800CA388(0x19);
            gMenuSelectionFromQuit = START_MENU_FROM_QUIT;
            D_800DC510 = 6;
            D_800DC5B4 = 1;
            D_800DC5B0 = 1;
            D_800DC5B8 = 0;
            D_802BA038 = 5;
        }
    }
}

void func_8028F588(void) {
    s16 screenWidth;

    switch (gActiveScreenMode) {                    /* irregular */
    case SCREEN_MODE_1P:
        screenWidth = (s16) (s32) (320.0f * D_802BA034);
        if (screenWidth < 0) {
            screenWidth = 1;
        }
        D_800DC5EC->screenWidth = screenWidth;
        screenWidth = (s16) (s32) (240.0f * D_802BA034);
        if (screenWidth < 0) {
            screenWidth = 1;
        }
        D_800DC5EC->screenHeight = screenWidth;
        break;
    case SCREEN_MODE_2P_SPLITSCREEN_VERTICAL:
        screenWidth = (s16) (s32) (160.0f * D_802BA034);
        if (screenWidth <= 0) {
            screenWidth = 1;
        } else if (screenWidth >= 0x140) {
            screenWidth = 0x013C;
        }
        D_800DC5EC->screenWidth = screenWidth;
        D_800DC5F0->screenWidth = screenWidth;
        screenWidth = (s16) (s32) (240.0f * D_802BA034);
        if (screenWidth <= 0) {
            screenWidth = 1;
        } else if (screenWidth >= 0x1E0) {
            screenWidth = 0x01DC;
        }
        D_800DC5EC->screenHeight = screenWidth;
        D_800DC5F0->screenHeight = screenWidth;
        break;
    case SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL:
        screenWidth = (s16) (s32) (320.0f * D_802BA034);
        if (screenWidth <= 0) {
            screenWidth = 1;
        } else if (screenWidth >= 0x280) {
            screenWidth = 0x027C;
        }
        D_800DC5EC->screenWidth = screenWidth;
        D_800DC5F0->screenWidth = screenWidth;
        screenWidth = (s16) (s32) (120.0f * D_802BA034);
        if (screenWidth <= 0) {
            screenWidth = 1;
        } else if (screenWidth >= 0xF0) {
            screenWidth = 0x00EC;
        }
        D_800DC5EC->screenHeight = screenWidth;
        D_800DC5F0->screenHeight = screenWidth;
        break;
    case SCREEN_MODE_3P_4P_SPLITSCREEN:
        screenWidth = (s16) (s32) (160.0f * D_802BA034);
        if (screenWidth <= 0) {
            screenWidth = 1;
        } else if (screenWidth >= 0x140) {
            screenWidth = 0x013C;
        }
        D_800DC5EC->screenWidth = screenWidth;
        D_800DC5F0->screenWidth = screenWidth;
        D_800DC5F4->screenWidth = screenWidth;
        D_800DC5F8->screenWidth = screenWidth;
        screenWidth = (s16) (s32) (120.0f * D_802BA034);
        if (screenWidth <= 0) {
            screenWidth = 1;
        } else if (screenWidth >= 0xF0) {
            screenWidth = 0x00EC;
        }
        D_800DC5EC->screenHeight = screenWidth;
        D_800DC5F0->screenHeight = screenWidth;
        D_800DC5F4->screenHeight = screenWidth;
        D_800DC5F8->screenHeight = screenWidth;
        break;
    }
}

void func_8028F8BC(void) {
    D_802BA034 = (f32) (D_802BA034 - 0.017f);
    if (D_802BA034 < 0.0f) {
        D_802BA034 = 0.0f;
    }
    func_8028F588();
}

void func_8028F914(void) {
    D_802BA034 = (f32) (D_802BA034 + 0.028f);
    if (D_802BA034 > 1.0f) {
        D_802BA034 = 1.0f;
    }
    func_8028F588();
}

extern u16 D_800DC5A8;

void func_8028F970(void) {
    s32 i;

    if (D_8015F890) {
        return;
    }

    // todo: increasing players past four would require increase this loop iterator.
    for (i = 0; i < 4; i++) {

        Player *player = &gPlayers[i];
        struct Controller *controller = &gControllers[i];

        if (!(player->unk_000 & PLAYER_HUMAN)) { continue; }
        if (player->unk_000 & PLAYER_CPU) { continue; }

        if (gActiveScreenMode != SCREEN_MODE_3P_4P_SPLITSCREEN) {
            if ((controller->buttonPressed & L_TRIG) && !(controller->button & R_TRIG)) {
                controller->buttonPressed &= 0xFFDF;

                D_800DC5A8++;
                if (D_800DC5A8 >= 3) {
                    D_800DC5A8 = 0;
                }
                play_sound2(0x4900801C);
                func_800029B0();
            }
        }
        if ((controller->buttonPressed & START_BUTTON) &&
          (!(controller->button & R_TRIG)) &&
          (!(controller->button & L_TRIG))) {
            func_8028DF00();
            gIsGamePaused = (controller - gControllerOne) + 1;
            controller->buttonPressed = 0;
            func_800C9F90(1);
            D_80162DF0 = 1;
            if (gModeSelection == TIME_TRIALS) {
                if (gPlayerOne->unk_000 & (PLAYER_EXISTS | PLAYER_INVISIBLE_OR_BOMB)) {
                    func_80005AE8(gPlayerOne);
                }
                if (gPlayerTwo->unk_000 & (PLAYER_EXISTS | PLAYER_INVISIBLE_OR_BOMB)) {
                    func_80005AE8(gPlayerTwo);
                }
                if (gPlayerThree->unk_000 & (PLAYER_EXISTS | PLAYER_INVISIBLE_OR_BOMB)) {
                    func_80005AE8(gPlayerThree);
                }
            }
            return;
        }
    }
    
    if (gEnableDebugMode) {
        if (gModeSelection == BATTLE) {
            // do stuff?
        } else {
            if (gControllerOne->buttonPressed & U_JPAD) {
                gLapCountByPlayerId[0] = 2;
            }
            if (gControllerOne->buttonPressed & R_JPAD) {
                gLapCountByPlayerId[0] = 2;
                gLapCountByPlayerId[1] = 2;
            }
            if (gControllerOne->buttonPressed & D_JPAD) {
                gLapCountByPlayerId[0] = 2;
                gLapCountByPlayerId[1] = 2;
                gLapCountByPlayerId[2] = 2;
                gLapCountByPlayerId[3] = 2;
                gLapCountByPlayerId[4] = 2;
                gLapCountByPlayerId[5] = 2;
                gLapCountByPlayerId[6] = 2;
                gLapCountByPlayerId[7] = 2;
            }
        }
    }
}
//#else
//GLOBAL_ASM("asm/non_matchings/race_logic/func_8028F970.s")
//#endif

void func_8028FBD4(void) {
    gMenuSelectionFromQuit = START_MENU_FROM_QUIT;
    D_800DC510 = 6;
    func_800CA330(25);
    func_800CA388(25);
    D_800DC5B4 = 1;
    D_800DC5B0 = 1;
    D_800DC5B8 = 0;
    D_802BA038 = 5;
}

void func_8028FC34(void) {
    if (D_802BA038 < 0) {
        D_802BA038 = 1920;
        return;
    }
    D_802BA038--;
    if (gControllerFive->buttonPressed != 0) {
        func_8028FBD4();
        gMenuSelection = START_MENU;
        return;
    }
    if (D_802BA038 == 0) {
        func_8028FBD4();
        gMenuSelection = LOGO_INTRO_MENU;
    }
}

void func_8028FCBC(void) {
    Player *ply = &gPlayers[0];
    s32 i;
    u32 phi_v0_4;

    if (D_8018EE08) {
        func_8028FC34();
    }
    switch (D_800DC510) {
        case 0:
            if (!gDemoMode) {
                if (gModeSelection == GRAND_PRIX) {
                    func_800C8EF8(11);
                    play_sound2(SOUND_ACTION_REV_ENGINE);
                    play_sound2(SOUND_ACTION_REV_ENGINE_2);
                } else {
                    func_800C8EF8(22);
                }
            }
            func_80002DAC();
            D_800DC510 = 1;
            D_80150118 = 3.0f;
            D_800DC518 = 0;
            D_802BA032 = 0;
            D_8015011E = 0;
            gCourseTimer = 0.0f;
            gVBlankTimer = 0.0f;
            D_800DC5B0 = 1;
            D_800DC5B4 = 1;
            D_802BA034 = 0.008f;
            D_8015F894 = 0;
            if (gScreenModeSelection != SCREEN_MODE_1P) {
                func_8005C64C(&D_8018D2AC);
            }
            for (i = 0; i < 8; i++) {
                if ((ply->unk_000 & PLAYER_EXISTS) == 0) {
                    continue;
                }
                ply->unk_000 |= PLAYER_START_SEQUENCE;
                ply++;
            }
            D_800DC5B8 = 1;
            break;
        case 1:
            func_8028F914();
            if (D_802BA034 == 1.0f) {
                if (gActiveScreenMode != SCREEN_MODE_1P) {
                    if (gCurrentCourseId == COURSE_LUIGI_RACEWAY) {
                        func_802A7940();
                    } else if (gCurrentCourseId == COURSE_WARIO_STADIUM) {
                        func_802A7728();
                    }
                }
                D_800DC510 = 2;
                D_800DC5B0 = 0;
                D_800DC5B8 = 1;
                func_80078F64();
                if ((gModeSelection == TIME_TRIALS) && (D_80162DD6 == 0)) {
                    phi_v0_4 = 0x1;
                    for (i = 0; i < gCurrentCourseId; i++) {
                        phi_v0_4 <<= 1;
                    }
                    if ((D_8015F890 == 0) && (!(D_800DC5AC & phi_v0_4))) {
                        func_80092630();
                        D_800DC5AC |= phi_v0_4;
                    }
                }
                if (gPlayerCountSelection1 == 3) {
                    func_800925A0();
                }
            }
            func_8028F4E8();
            break;
        case 2:
            if (gDemoMode) {
                start_race();
            }
            if ((gEnableDebugMode) && (gControllerFive->buttonPressed & Z_TRIG)) {
                start_race();
            }
            func_8028F4E8();
            break;
        case 3:
            if (gModeSelection == BATTLE) {
                update_player_battle_status();
            } else {
                update_race_position_data();
                func_8028EF28();
            }
            func_8028F4E8();
            func_8028F970();
            break;
        case 4:

            switch(gModeSelection) {
                case GRAND_PRIX:
                    func_8028F4E8();
                    update_race_position_data();
                    func_8028EF28();
                    func_8028F970();

                    switch(gScreenModeSelection) {
                        case SCREEN_MODE_1P:
                            D_802BA038 = 690;
                            D_800DC510 = 5;
                            func_8028E298();
                            break;
                        case SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL:
                        case SCREEN_MODE_2P_SPLITSCREEN_VERTICAL:
                            if (((gPlayerOne->unk_000 & PLAYER_CINEMATIC_MODE) != 0) && ((gPlayerTwo->unk_000 & PLAYER_CINEMATIC_MODE) != 0)) {


                                if (gPlayerOne->currentRank < gPlayerTwo->currentRank) {
                                    gPlayerWinningIndex = 1;
                                } else {
                                    gPlayerWinningIndex = 0;
                                }

                                func_8028E298();
                                D_802BA038 = 600;
                                D_800DC510 = 5;
                            }
                            break;
                    }
                    break;
                case VERSUS:
                    func_8028F4E8();
                    update_race_position_data();
                    func_8028EF28();
                    func_8028F970();
                    break;
                case TIME_TRIALS:
                    D_802BA038 = 360;
                    if (D_8015F890 != 0) {
                        D_800DC510 = 7;
                    } else {
                        D_800DC510 = 5;
                    }
                    break;
            }
            break;
        case 5:
            if (D_802BA038 != 0) {
                D_802BA038--;
            } else {
                switch(gModeSelection) {
                    case GRAND_PRIX:
                        if (D_80150120 != 0) {
                            func_8028E678();
                        } else if (gScreenModeSelection == SCREEN_MODE_1P) {
                            func_80092564();
                            D_800DC510 = 7;
                        } else {
                            func_8028E438();
                        }
                        break;
                    case TIME_TRIALS:
                        func_8028E678();
                        break;
                    case VERSUS:
                    case BATTLE:
                        func_8028E438();
                        break;
                }
            }
            func_8028F4E8();
            break;
        case 6:
            func_8028F8BC();
            if (D_802BA034 <= 0) {
                gIsInQuitToMenuTransition = 1;
                gQuitToMenuTransitionCounter = 5;
            }
            break;
        case 7:
            break;
    }
}

UNUSED void func_80290314(void) {
    gIsInQuitToMenuTransition = 1;
    gQuitToMenuTransitionCounter = 5;
    gMenuSelectionFromQuit = START_MENU_FROM_QUIT;
}

void func_80290338(void) {
    gIsInQuitToMenuTransition = 1;
    gQuitToMenuTransitionCounter = 5;
    gMenuSelectionFromQuit = MAIN_MENU_FROM_QUIT;
}

void func_80290360(void) {
    gIsInQuitToMenuTransition = 1;
    gQuitToMenuTransitionCounter = 5;
    gMenuSelectionFromQuit = PLAYER_SELECT_MENU_FROM_QUIT;
}

void func_80290388(void) {
    gIsInQuitToMenuTransition = 1;
    gQuitToMenuTransitionCounter = 5;
    gMenuSelectionFromQuit = COURSE_SELECT_MENU_FROM_QUIT;
}

void func_802903B0(void) {
    gIsInQuitToMenuTransition = 1;
    gQuitToMenuTransitionCounter = 5;
    gMenuSelectionFromQuit = RACING;
}

void func_802903D8(Player *playerOne, Player *playerTwo) {
    f32 sp70 = (playerOne->boundingBoxSize + playerTwo->boundingBoxSize) - 5.0f;
    f32 temp_f0;
    f32 sp74; 
    Vec3f sp60;
    Vec3f sp54;
    f32 temp_f0_2;
    f32 temp_f16;
    f32 temp_f2;

    f32 gFloatArray802B8790[] = {
        1.2, 1.0, 0.9, 0.7, 2.0, 1.8, 0.9, 2.3
    };

    f32 sp24 = gFloatArray802B8790[playerOne->characterId];
    f32 sp20 = gFloatArray802B8790[playerTwo->characterId];

    sp60[0] =  playerOne->pos[0] - playerTwo->pos[0];
    sp60[1] = (playerOne->pos[1] - playerOne->boundingBoxSize) - (playerTwo->pos[1] - playerTwo->boundingBoxSize);
    sp60[2] =  playerOne->pos[2] - playerTwo->pos[2];

    sp54[0] = playerTwo->unk_034[0] - playerOne->unk_034[0];
    sp54[1] = playerTwo->unk_034[1] - playerOne->unk_034[1];
    sp54[2] = playerTwo->unk_034[2] - playerOne->unk_034[2];

    temp_f0 = sqrtf((sp60[0] * sp60[0]) + (sp60[1] * sp60[1]) + (sp60[2] * sp60[2]));

    if (temp_f0 < 0.1f) { return; }

    sp74 = temp_f0 - sp70;
    if (sp74 > 0) { return; }


    if (playerOne->unk_000 & PLAYER_UNKNOWN_0x40) {
        if (playerTwo->unk_000 & PLAYER_UNKNOWN_0x40) {
            func_8008FC1C(playerOne);
            func_8008FC1C(playerTwo);
            func_800C9060((playerTwo - gPlayerOne), 0x19008001U);
            return;
        } else {
            playerTwo->statusEffects |= 0x400000;
            func_8008FC1C(playerOne);
            func_800C9060((playerTwo - gPlayerOne), 0x19008001U);
        }
    } else if (playerTwo->unk_000 & PLAYER_UNKNOWN_0x40) {
        playerOne->statusEffects |= 0x400000;
        func_8008FC1C(playerTwo);
        func_800C9060(playerOne - gPlayerOne, 0x19008001U);
        return;
    }
    if (playerOne->unk_0BC & 0x200) {
        if (!(playerTwo->unk_0BC & 0x200)) {
            playerTwo->statusEffects |= 0x01000000;
        }
    } else if (playerTwo->unk_0BC & 0x200) {
        playerOne->statusEffects |= 0x01000000;
    } else {
        playerOne->unk_0BC |= 0x8000;
        playerTwo->unk_0BC |= 0x8000;
    }
    temp_f0_2 = sqrtf((sp54[0] * sp54[0]) + (sp54[1] * sp54[1]) + (sp54[2] * sp54[2]));
    sp60[0] /= temp_f0;
    sp60[1] /= temp_f0;
    sp60[2] /= temp_f0;
    if (temp_f0_2 < 0.2f) {
        temp_f0 = (playerOne->boundingBoxSize + playerTwo->boundingBoxSize) * 0.55f;
        playerOne->pos[0] = playerTwo->pos[0] + (sp60[0] * temp_f0);
        playerOne->pos[1] = playerTwo->pos[1] + (sp60[1] * temp_f0);
        playerOne->pos[2] = playerTwo->pos[2] + (sp60[2] * temp_f0);
        playerTwo->pos[0] -= temp_f0 * sp60[0];
        playerTwo->pos[1] -= temp_f0 * sp60[1];
        playerTwo->pos[2] -= temp_f0 * sp60[2];
        return;
    } else {
        temp_f16 = ((sp60[0] * sp54[0]) + (sp60[1] * sp54[1]) + (sp60[2] * sp54[2])) / temp_f0_2;
    }
    temp_f0_2 = temp_f0_2 * temp_f16 * 0.85;
    if ((playerOne->unk_0BC & 0x200) != 0x200) {
        temp_f2 = (temp_f0_2 * sp20) / sp24;
        playerOne->unk_034[0] += sp60[0] * temp_f2;
        playerOne->unk_034[1] += sp60[1] * temp_f2;
        playerOne->unk_034[2] += sp60[2] * temp_f2;
        playerOne->pos[0] -= sp60[0] * sp74 * 0.5f;
        playerOne->pos[1] -= sp60[1] * sp74 * 0.5f;
        playerOne->pos[2] -= sp60[2] * sp74 * 0.5f;
    }
    if ((playerTwo->unk_0BC & 0x200) != 0x200) {
        temp_f2 = (temp_f0_2 * sp24) / sp20;
        playerTwo->unk_034[0] -= sp60[0] * temp_f2;
        playerTwo->unk_034[1] -= sp60[1] * temp_f2;
        playerTwo->unk_034[2] -= sp60[2] * temp_f2;
        playerTwo->pos[0] += sp60[0] * sp74 * 0.5f;
        playerTwo->pos[1] += sp60[1] * sp74 * 0.5f;
        playerTwo->pos[2] += sp60[2] * sp74 * 0.5f;
    }
    if (playerOne->unk_000 & PLAYER_HUMAN) {
        func_800C9060((playerOne - gPlayerOne), 0x19008001U);
        return;
    }
    if (playerTwo->unk_000 & PLAYER_HUMAN) {
        func_800C9060((playerTwo - gPlayerOne), 0x19008001U);
    }
}

void func_802909F0(void) {
    Player *ply;
    Player *ply2;
    s32 i;
    s32 k;

    for (i = 0; i < 7; i++) {
        ply = &gPlayers[i];

        if ((ply->unk_000 & PLAYER_EXISTS) &&
          (!(ply->unk_0BC & 0x80000000)) &&
          (!(ply->unk_000 & PLAYER_INVISIBLE_OR_BOMB)) &&
          (!(ply->unk_0BC & 0x4000000))) {

            for (k = i + 1; k < 8; k++) {
                ply2 = &gPlayers[k];

                if ((ply2->unk_000 & PLAYER_EXISTS) &&
                    (!(ply2->unk_0BC & 0x80000000)) &&
                    (!(ply2->unk_000 & PLAYER_INVISIBLE_OR_BOMB)) &&
                    (!(ply2->unk_0BC & 0x4000000))) {

                    func_802903D8(ply, ply2);
                }
            }
        }
    }
}

void func_80290B14(void) {

    func_80059C50();

    switch(gActiveScreenMode) {
        case SCREEN_MODE_1P:
            func_8001EE98(gPlayerOneCopy, camera1, 0);
            break;
        case SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL:
        case SCREEN_MODE_2P_SPLITSCREEN_VERTICAL:
            func_8001EE98(gPlayerOneCopy, camera1, 0);
            func_8001EE98(gPlayerTwoCopy, camera2, 1);
            break;
        case SCREEN_MODE_3P_4P_SPLITSCREEN:
            func_8001EE98(gPlayerOneCopy, camera1, 0);
            func_8001EE98(gPlayerTwo, camera2, 1);
            func_8001EE98(gPlayerThree, camera3, 2);
            func_8001EE98(gPlayerFour, camera4, 3);
            break;
    }
}
