#include <ultra64.h>
#include <macros.h>
#include <common_structs.h>
#include <defines.h>
#include <types.h>
#include <variables.h>
#include "code_800029B0.h"
#include "math_util.h"
#include "math_util_2.h"
#include "main.h"
#include "functions.h"
#include "kart_dma.h"
#include "objects.h"
#include "code_8001F980.h"
#include "code_80057C60.h"
#include "code_8008C1D0.h"
#include "framebuffers.h"
#include "waypoints.h"
#include "player_controller.h"
#include "hud_renderer.h"
#include "common_textures.h"
#include "skybox_and_splitscreen.h"

s8 D_800DDB50[] = {
    0x00, 0x02, 0x00, 0x01, 0x00, 0x01, 0x00, 0x02
};

s32 D_800DDB58 = 0;

// Can't find anything that actually references these...
void *D_800DDB5C[3] = {
    gFramebuffer0, gFramebuffer1, gFramebuffer2
};

void func_8001F980(s32 *arg0, s32 *arg1) {
    if ((gDemoMode == 1) || (D_80164A28 != 0) || (D_8015F894 != 0)) {
        *arg0 = 0xAA;
    } else {
        *arg0 = 0;
    }
    if (D_80164A28 != 0) {
        *arg1 = 0xAA;
        return;
    }
    *arg1 = 0;
}

void func_8001F9E4(Player *player, Camera *camera, s8 arg2) {
    UNUSED s32 pad;
    s32 sp30;
    s32 sp2C;
    UNUSED s32 pad2;

    get_player_index_for_player(player);
    func_8001F980(&sp30, &sp2C);

    player->unk_002 &= ~(2 << (arg2 * 4));
    player->unk_002 &= ~(8 << (arg2 * 4));

    if (func_8001FB0C(player, camera, (f32) (D_80165578 + sp30), (f32) (D_8016557A + sp2C)) == 1) {
        player->unk_002 |= 2 << (arg2 * 4);
    }
    if (func_8001FB0C(player, camera, (f32) D_80165580, (f32) D_80165582) == 1) {
        player->unk_002 |= 8 << (arg2 * 4);
    }
}

u16 func_8001FB0C(Player *player, Camera *camera, f32 arg2, f32 arg3) {
    UNUSED f32 pad[6];
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    s16 var_v0;
    u16 ret;

    ret = 0;
    switch (gActiveScreenMode) {                              /* irregular */
    case SCREEN_MODE_1P:
        var_v0 = 0x293C;
        break;
    case SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL:
    case SCREEN_MODE_2P_SPLITSCREEN_VERTICAL:
        var_v0 = 0x3058;
        break;
    case SCREEN_MODE_3P_4P_SPLITSCREEN:
        var_v0 = 0x1FFE;
        break;
    default:
        if(1){}
        var_v0 = 0x1FFE;
        break;
    }
    sp4C = (arg2 * coss((camera->rot[1] - var_v0))) + camera->pos[2];
    sp58 = (arg2 * sins((camera->rot[1] - var_v0))) + camera->pos[0];
    sp48 = (arg2 * coss((camera->rot[1] + var_v0))) + camera->pos[2];
    sp54 = (arg2 * sins((camera->rot[1] + var_v0))) + camera->pos[0];
    sp44 = (arg3 * coss((camera->rot[1] + 0x5FFA))) + camera->pos[2];
    sp50 = (arg3 * sins((camera->rot[1] + 0x5FFA))) + camera->pos[0];
    sp64 = ((sp4C - player->pos[2]) * (sp54 - player->pos[0])) - ((sp48 - player->pos[2]) * (sp58 - player->pos[0]));
    sp60 = ((sp48 - player->pos[2]) * (sp50 - player->pos[0])) - ((sp44 - player->pos[2]) * (sp54 - player->pos[0]));
    sp5C = ((sp44 - player->pos[2]) * (sp58 - player->pos[0])) - ((sp4C - player->pos[2]) * (sp50 - player->pos[0]));
    if (((sp64 >= 0) && (sp60 >= 0) && (sp5C >= 0)) || (((sp64) <= 0) && (sp60 <= 0) && (sp5C <= 0))) {
        ret = 1;
    }
    return ret;
}

u16 func_8001FD78(Player *player, f32 posX, UNUSED f32 arg2, f32 posZ) {
    f32 sp64;
    f32 sp60;
    f32 sp5c;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 temp_f14;
    f32 thing0;
    f32 thing1;
    u16 ret;

    ret = 0;
    sp58 = (70.0f * coss(((player->unk_0C0 - player->unk_02C[1]) -  0x71C))) + player->pos[2];
    sp64 = (70.0f * sins(((player->unk_0C0 - player->unk_02C[1]) -  0x71C))) + player->pos[0];
    sp54 = (70.0f * coss(((player->unk_0C0 - player->unk_02C[1]) +  0x71C))) + player->pos[2];
    sp60 = (70.0f * sins(((player->unk_0C0 - player->unk_02C[1]) +  0x71C))) + player->pos[0];
    sp50 = (10.0f * coss(((player->unk_0C0 - player->unk_02C[1]) + 0x1C70))) + player->pos[2];
    sp5c = (10.0f * sins(((player->unk_0C0 - player->unk_02C[1]) + 0x1C70))) + player->pos[0];
    temp_f14 = ((sp58 - posZ) * (sp60 - posX)) - ((sp54 - posZ) * (sp64 - posX));
    thing0   = ((sp54 - posZ) * (sp5c - posX)) - ((sp50 - posZ) * (sp60 - posX));
    thing1   = ((sp50 - posZ) * (sp64 - posX)) - ((sp58 - posZ) * (sp5c - posX));
    if (((temp_f14 >= 0) && (thing0 >= 0) && (thing1 >= 0)) || ((temp_f14 <= 0) && (thing0 <= 0) && (thing1 <= 0))) {
        ret = 1;
    }
    return ret;
}

void func_80020000(Player *player, Camera *camera, s8 arg2, s8 arg3) {
    s32 stackPadding0;
    s32 stackPadding1;
    s32 stackPadding2;
    s32 stackPadding3;
    s32 sp4C;
    s32 sp48;
    s32 stackPadding4;
    s32 temp_v0;
    s32 temp_v0_2;

    if ((player->unk_000 & 0x8000) == 0x8000) {
        func_8001F9E4(player, camera, arg3);
        temp_v0 = 2 << (arg3 << 2);
        if (temp_v0 == (player->unk_002 & temp_v0)) {
            if (!(player->unk_000 & 0x2000)) {
                func_8002934C(player, camera, arg3, arg2);
            } else {
                func_8002934C(player, camera, arg3, arg2);
                player->unk_0C4 = 0;
                player->unk_206 = 0;
                player->unk_050[arg3] = 0;
            }
        }
        func_8001F980(&sp4C, &sp48);
        temp_v0_2 = 1 << (arg3 << 2);
        if ((temp_v0 == (player->unk_002 & temp_v0)) && (temp_v0_2 == (player->unk_002 & temp_v0_2))) {
            if ((func_8001FB0C(player, camera, D_80165570 + sp4C, D_80165572 + sp48) == 1) & 0xFFFF) {
                D_80164AB0[D_800DDB58] = (s16) arg2;
                D_80164AC0[D_800DDB58] = (s16) arg3;
                D_80164AD0[D_800DDB58] = player;
                D_800DDB58 += 1;
                D_80165190[arg3][arg2] = 0;
                D_801650D0[arg3][arg2] = player->unk_244[arg3];
                D_80165110[arg3][arg2] = player->unk_24C[arg3];
                D_80165150[arg3][arg2] = player->unk_0A8;
                D_801651D0[arg3][arg2] += 1;
                if (D_801651D0[arg3][arg2] == 2) {
                    D_801651D0[arg3][arg2] = 0;
                }
            } else {
                if ((func_8001FB0C(player, camera, D_80165574 + sp4C, D_80165576) == 1) & 0xFFFF) {
                    if ((sRenderingFramebuffer == D_800DDB50[arg2]) || ((D_801650D0[arg3][arg2] - player->unk_244[arg3]) > 0x13) || ((D_801650D0[arg3][arg2] - player->unk_244[arg3]) < -0x13) || (D_80165190[arg3][arg2] == (s16) 1U)) {
                        D_80164AB0[D_800DDB58] = (s16) arg2;
                        D_80164AC0[D_800DDB58] = (s16) arg3;
                        D_80164AD0[D_800DDB58] = player;
                        D_800DDB58 += 1;
                        D_801650D0[arg3][arg2] = player->unk_244[arg3];
                        D_80165110[arg3][arg2] = player->unk_24C[arg3];
                        D_80165150[arg3][arg2] = player->unk_0A8;
                        D_80165190[arg3][arg2] = 0;
                        D_801651D0[arg3][arg2] += 1;
                        if (D_801651D0[arg3][arg2] == 2) {
                            D_801651D0[arg3][arg2] = 0;
                        }
                    }
                } else {
                    if (((D_801650D0[arg3][arg2] - player->unk_244[arg3]) > 0x13) || ((D_801650D0[arg3][arg2] - player->unk_244[arg3]) < -0x13) || (D_80165190[arg3][arg2] == (s16) 1U)) {
                        D_80164AB0[D_800DDB58] = (s16) arg2;
                        D_80164AC0[D_800DDB58] = (s16) arg3;
                        D_80164AD0[D_800DDB58] = player;
                        D_800DDB58 += 1;
                        D_801650D0[arg3][arg2] = (s16) player->unk_244[arg3];
                        D_80165110[arg3][arg2] = player->unk_24C[arg3];
                        D_80165150[arg3][arg2] = player->unk_0A8;
                        D_80165190[arg3][arg2] = 0;
                        D_801651D0[arg3][arg2] += 1;
                        if (D_801651D0[arg3][arg2] == 2) {
                            D_801651D0[arg3][arg2] = 0;
                        }
                    }
                }
            }
        }
    }
}

void func_80020524(void) {
    s16 i;

    func_80027560(D_80164AD0[0], D_80164AB0[0], D_80164AC0[0], D_80164AC0[0], D_801651D0[D_80164AC0[0]][D_80164AB0[0]]);
    func_8006E5AC(gPlayerOneCopy, 0, 0);
    func_8006E5AC(gPlayerTwo,     1, 0);
    func_8006E5AC(gPlayerThree,   2, 0);
    func_8006E5AC(gPlayerFour,    3, 0);
    if (gActiveScreenMode != SCREEN_MODE_3P_4P_SPLITSCREEN) {
        func_8006E5AC(gPlayerFive,  4, 0);
        func_8006E5AC(gPlayerSix,   5, 0);
        func_8006E5AC(gPlayerSeven, 6, 0);
        func_8006E5AC(gPlayerEight, 7, 0);
    }
    osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, OS_MESG_BLOCK);

    for (i = 1; i < D_800DDB58; i++) {

            func_80027560(D_80164AD0[i], D_80164AB0[i], D_80164AC0[i], D_80164AC0[i], D_801651D0[D_80164AC0[i]][D_80164AB0[i]]);

            mio0decode(D_802DFB80[D_801651D0[D_80164AC0[i - 1]][D_80164AB0[i - 1]]][D_80164AC0[i - 1]][D_80164AB0[i - 1]].unk_00,
                       D_802BFB80[D_801651D0[D_80164AC0[i - 1]][D_80164AB0[i - 1]]][D_80164AC0[i - 1]][D_80164AB0[i - 1]].pixel_index_array);
            osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, OS_MESG_BLOCK);
    }

    mio0decode(D_802DFB80[D_801651D0[D_80164ABE[D_800DDB58]][D_80164AAE[D_800DDB58]]][D_80164ABE[D_800DDB58]][D_80164AAE[D_800DDB58]].unk_00,
               D_802BFB80[D_801651D0[D_80164ABE[D_800DDB58]][D_80164AAE[D_800DDB58]]][D_80164ABE[D_800DDB58]][D_80164AAE[D_800DDB58]].pixel_index_array);
}

void func_8002088C(void) {
    s16 var_s0;

    func_80027560(D_80164AD0[0], D_80164AB0[0], D_80164AC0[0], D_80164AC0[0], D_801651D0[D_80164AC0[0]][D_80164AB0[0]]);
    func_8006E634(gPlayerOneCopy, 0, 1);
    func_8006E634(gPlayerTwo,     1, 1);
    func_8006E634(gPlayerThree,   2, 1);
    func_8006E634(gPlayerFour,    3, 1);
    if (gActiveScreenMode != SCREEN_MODE_3P_4P_SPLITSCREEN) {
        func_8006E634(gPlayerFive,  4, 1);
        func_8006E634(gPlayerSix,   5, 1);
        func_8006E634(gPlayerSeven, 6, 1);
        func_8006E634(gPlayerEight, 7, 1);
    }
    osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, OS_MESG_BLOCK);
    for (var_s0 = 1; var_s0 < D_800DDB58; var_s0++) {
        func_80027560(D_80164AD0[var_s0], D_80164AB0[var_s0], D_80164AC0[var_s0], D_80164AC0[var_s0], D_801651D0[D_80164AC0[var_s0]][D_80164AB0[var_s0]]);
        mio0decode(D_802DFB80[D_801651D0[D_80164AC0[var_s0 - 1]][D_80164AB0[var_s0 - 1]]][D_80164AC0[var_s0 - 1]][D_80164AB0[var_s0 - 1]].unk_00,
                   D_802BFB80[D_801651D0[D_80164AC0[var_s0 - 1]][D_80164AB0[var_s0 - 1]]][D_80164AC0[var_s0 - 1]][D_80164AB0[var_s0 - 1]].pixel_index_array);
        osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, OS_MESG_BLOCK);
    }
    mio0decode(D_802DFB80[D_801651D0[D_80164ABE[D_800DDB58]][D_80164AAE[D_800DDB58]]][D_80164ABE[D_800DDB58]][D_80164AAE[D_800DDB58]].unk_00,
               D_802BFB80[D_801651D0[D_80164ABE[D_800DDB58]][D_80164AAE[D_800DDB58]]][D_80164ABE[D_800DDB58]][D_80164AAE[D_800DDB58]].pixel_index_array);
}

void func_80020BF4(void) {
    s16 var_s0;

    func_80027560(D_80164AD0[0], D_80164AB0[0] + 4, D_80164AC0[0], D_80164AC0[0] - 2, D_801651D0[D_80164AC0[0]][D_80164AB0[0]]);
    func_8006E6BC(gPlayerOneCopy, 0, 2);
    func_8006E6BC(gPlayerTwo,     1, 2);
    func_8006E6BC(gPlayerThree,   2, 2);
    func_8006E6BC(gPlayerFour,    3, 2);
    osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, OS_MESG_BLOCK);
    for (var_s0 = 1; var_s0 < D_800DDB58; var_s0++) {
        func_80027560(D_80164AD0[var_s0], D_80164AB0[var_s0] + 4, D_80164AC0[var_s0], D_80164AC0[var_s0] - 2, D_801651D0[D_80164AC0[var_s0]][D_80164AB0[var_s0]]);
        mio0decode(D_802DFB80[D_801651D0[D_80164AC0[var_s0 - 1]][D_80164AB0[var_s0 - 1]]][D_80164AC0[var_s0 - 1] - 2][D_80164AB0[var_s0 - 1] + 4].unk_00,
                   D_802BFB80[D_801651D0[D_80164AC0[var_s0 - 1]][D_80164AB0[var_s0 - 1]]][D_80164AC0[var_s0 - 1] - 2][D_80164AB0[var_s0 - 1] + 4].pixel_index_array);
        osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, OS_MESG_BLOCK);
    }
    mio0decode(D_802DFB80[D_801651D0[D_80164ABE[D_800DDB58]][D_80164AAE[D_800DDB58]]][D_80164ABE[D_800DDB58] - 2][D_80164AAE[D_800DDB58] + 4].unk_00,
               D_802BFB80[D_801651D0[D_80164ABE[D_800DDB58]][D_80164AAE[D_800DDB58]]][D_80164ABE[D_800DDB58] - 2][D_80164AAE[D_800DDB58] + 4].pixel_index_array);
}

void func_80020F1C(void) {
    s16 var_s0;

    func_80027560(D_80164AD0[0], D_80164AB0[0] + 4, D_80164AC0[0], D_80164AC0[0] - 2, D_801651D0[D_80164AC0[0]][D_80164AB0[0]]);
    func_8006E744(gPlayerOneCopy, 0, 3);
    func_8006E744(gPlayerTwo,     1, 3);
    func_8006E744(gPlayerThree,   2, 3);
    func_8006E744(gPlayerFour,    3, 3);
    osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, OS_MESG_BLOCK);
    for (var_s0 = 1; var_s0 < D_800DDB58; var_s0++) {
        func_80027560(D_80164AD0[var_s0], D_80164AB0[var_s0] + 4, D_80164AC0[var_s0], D_80164AC0[var_s0] - 2, D_801651D0[D_80164AC0[var_s0]][D_80164AB0[var_s0]]);
        mio0decode(D_802DFB80[D_801651D0[D_80164AC0[var_s0 - 1]][D_80164AB0[var_s0 - 1]]][D_80164AC0[var_s0 - 1] - 2][D_80164AB0[var_s0 - 1] + 4].unk_00,
                   D_802BFB80[D_801651D0[D_80164AC0[var_s0 - 1]][D_80164AB0[var_s0 - 1]]][D_80164AC0[var_s0 - 1] - 2][D_80164AB0[var_s0 - 1] + 4].pixel_index_array);
        osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, OS_MESG_BLOCK);
    }
    mio0decode(D_802DFB80[D_801651D0[D_80164ABE[D_800DDB58]][D_80164AAE[D_800DDB58]]][D_80164ABE[D_800DDB58] - 2][D_80164AAE[D_800DDB58] + 4].unk_00,
               D_802BFB80[D_801651D0[D_80164ABE[D_800DDB58]][D_80164AAE[D_800DDB58]]][D_80164ABE[D_800DDB58] - 2][D_80164AAE[D_800DDB58] + 4].pixel_index_array);
}

void func_80021244(Player *player, s8 arg1, s8 arg2) {

    if (((player->unk_000 & PLAYER_EXISTS) == PLAYER_EXISTS)
    && ((player->unk_000 & 0x40) == 0)) {
        if ((player->unk_002 & 2 << (arg2 * 4)) == 2 << (arg2 * 4)) {
            func_800267AC(player, arg1, arg2);
        }
    }
}

void func_800212B4(void) {
    UNUSED s32 pad;
    UNUSED char *sp3C[8] = {
        "S_MARIO", "S_LUIZI", "S_YOSSY", "S_KINOP",
        "S_DONKY", "S_WARIO", "S_PEACH", "S_KUPPA",
    };
    UNUSED char *sp1C[8] = {
        "J_MARIO", "J_LUIZI", "J_YOSSY", "J_KINOP",
        "J_DONKY", "J_WARIO", "J_PEACH", "J_KUPPA",
    };

    D_800DDB58 = 0;
    func_80020000(gPlayerOneCopy, camera1, 0U, 0U);
    func_80020000(gPlayerTwo, camera1, 1U, 0U);
    func_80020000(gPlayerThree, camera1, 2U, 0U);
    func_80020000(gPlayerFour, camera1, 3U, 0U);
    if (gActiveScreenMode != SCREEN_MODE_3P_4P_SPLITSCREEN) {
        func_80020000(gPlayerFive, camera1, 4U, 0U);
        func_80020000(gPlayerSix, camera1, 5U, 0U);
        func_80020000(gPlayerSeven, camera1, 6U, 0U);
        func_80020000(gPlayerEight, camera1, 7U, 0U);
    }
    func_80021244(gPlayerOne, 0U, 0U);
    func_80021244(gPlayerTwo, 1U, 0U);
    func_80021244(gPlayerThree, 2U, 0U);
    func_80021244(gPlayerFour, 3U, 0U);
    if (gActiveScreenMode != SCREEN_MODE_3P_4P_SPLITSCREEN) {
        func_80021244(gPlayerFive, 4U, 0U);
        func_80021244(gPlayerSix, 5U, 0U);
        func_80021244(gPlayerSeven, 6U, 0U);
        func_80021244(gPlayerEight, 7U, 0U);
    }
    if (D_800DDB58 != 0) {
        func_80020524();
    } else {
        func_8006E5AC(gPlayerOneCopy, 0, 0);
        func_8006E5AC(gPlayerTwo, 1, 0);
        func_8006E5AC(gPlayerThree, 2, 0);
        func_8006E5AC(gPlayerFour, 3, 0);
        if (gActiveScreenMode != SCREEN_MODE_3P_4P_SPLITSCREEN) {
            func_8006E5AC(gPlayerFive, 4, 0);
            func_8006E5AC(gPlayerSix, 5, 0);
            func_8006E5AC(gPlayerSeven, 6, 0);
            func_8006E5AC(gPlayerEight, 7, 0);
        }
    }
    D_800DDB58 = 0;
}

// Hello, you've found the location of the bulk of the data section for this file
// For reasons beyound human comprehension it MUST be placed somewhere below
// func_800212B4

s32 junk[] = {0, 0, 0};

Vtx *D_800DDBB4[] = {
    D_800E49C0, D_800E4AC0, D_800E4BC0, D_800E4CC0,
    D_800E4DC0, D_800E4EC0, D_800E4FD0, D_800E50D0
};

f32 D_800DDBD4[] = {
    0.75f, 0.75f, 0.75f, 0.75f,
    0.75f, 0.75f, 0.75f, 0.75f
};

u8 **gKartMarioWheels0[] = {
    gKartMario168Wheel0, gKartMario147Wheel0, gKartMario126Wheel0, gKartMario105Wheel0,
    gKartMario084Wheel0, gKartMario063Wheel0, gKartMario042Wheel0, gKartMario021Wheel0,
    gKartMario000Wheel0
};

u8 **gKartMarioWheels1[] = {
    gKartMario269Wheel0, gKartMario269Wheel0, gKartMario249Wheel0, gKartMario229Wheel0,
    gKartMario229Wheel0, gKartMario229Wheel0, gKartMario209Wheel0, gKartMario189Wheel0,
    gKartMario189Wheel0
};

u8 **gKartLuigiWheels0[] = {
    gKartLuigi168Wheel0, gKartLuigi147Wheel0, gKartLuigi126Wheel0, gKartLuigi105Wheel0,
    gKartLuigi084Wheel0, gKartLuigi063Wheel0, gKartLuigi042Wheel0, gKartLuigi021Wheel0,
    gKartLuigi000Wheel0
};

u8 **gKartLuigiWheels1[] = {
    gKartLuigi269Wheel0, gKartLuigi269Wheel0, gKartLuigi249Wheel0, gKartLuigi229Wheel0,
    gKartLuigi229Wheel0, gKartLuigi229Wheel0, gKartLuigi209Wheel0, gKartLuigi189Wheel0,
    gKartLuigi189Wheel0
};

u8 **gKartBowserWheels0[] = {
    gKartBowser168Wheel0, gKartBowser147Wheel0, gKartBowser126Wheel0, gKartBowser105Wheel0,
    gKartBowser084Wheel0, gKartBowser063Wheel0, gKartBowser042Wheel0, gKartBowser021Wheel0,
    gKartBowser000Wheel0
};

u8 **gKartBowserWheels1[] = {
    gKartBowser269Wheel0, gKartBowser269Wheel0, gKartBowser249Wheel0, gKartBowser229Wheel0,
    gKartBowser229Wheel0, gKartBowser229Wheel0, gKartBowser209Wheel0, gKartBowser189Wheel0,
    gKartBowser189Wheel0
};

u8 **gKartToadWheels0[] = {
    gKartToad168Wheel0, gKartToad147Wheel0, gKartToad126Wheel0, gKartToad105Wheel0,
    gKartToad084Wheel0, gKartToad063Wheel0, gKartToad042Wheel0, gKartToad021Wheel0,
    gKartToad000Wheel0
};

u8 **gKartToadWheels1[] = {
    gKartToad269Wheel0, gKartToad269Wheel0, gKartToad249Wheel0, gKartToad229Wheel0,
    gKartToad229Wheel0, gKartToad229Wheel0, gKartToad209Wheel0, gKartToad189Wheel0,
    gKartToad189Wheel0
};

u8 **gKartYoshiWheels0[] = {
    gKartYoshi168Wheel0, gKartYoshi147Wheel0, gKartYoshi126Wheel0, gKartYoshi105Wheel0,
    gKartYoshi084Wheel0, gKartYoshi063Wheel0, gKartYoshi042Wheel0, gKartYoshi021Wheel0,
    gKartYoshi000Wheel0
};

u8 **gKartYoshiWheels1[] = {
    gKartYoshi269Wheel0, gKartYoshi269Wheel0, gKartYoshi249Wheel0, gKartYoshi229Wheel0,
    gKartYoshi229Wheel0, gKartYoshi229Wheel0, gKartYoshi209Wheel0, gKartYoshi189Wheel0,
    gKartYoshi189Wheel0
};

u8 **gKartDKWheels0[] = {
    gKartDK168Wheel0, gKartDK147Wheel0, gKartDK126Wheel0, gKartDK105Wheel0,
    gKartDK084Wheel0, gKartDK063Wheel0, gKartDK042Wheel0, gKartDK021Wheel0,
    gKartDK000Wheel0
};

u8 **gKartDKWheels1[] = {
    gKartDK269Wheel0, gKartDK269Wheel0, gKartDK249Wheel0, gKartDK229Wheel0,
    gKartDK229Wheel0, gKartDK229Wheel0, gKartDK209Wheel0, gKartDK189Wheel0,
    gKartDK189Wheel0
};

u8 **gKartPeachWheels0[] = {
    gKartPeach168Wheel0, gKartPeach147Wheel0, gKartPeach126Wheel0, gKartPeach105Wheel0,
    gKartPeach084Wheel0, gKartPeach063Wheel0, gKartPeach042Wheel0, gKartPeach021Wheel0,
    gKartPeach000Wheel0
};

u8 **gKartPeachWheels1[] = {
    gKartPeach269Wheel0, gKartPeach269Wheel0, gKartPeach249Wheel0, gKartPeach229Wheel0,
    gKartPeach229Wheel0, gKartPeach229Wheel0, gKartPeach209Wheel0, gKartPeach189Wheel0,
    gKartPeach189Wheel0
};

u8 **gKartWarioWheels0[] = {
    gKartWario168Wheel0, gKartWario147Wheel0, gKartWario126Wheel0, gKartWario105Wheel0,
    gKartWario084Wheel0, gKartWario063Wheel0, gKartWario042Wheel0, gKartWario021Wheel0,
    gKartWario000Wheel0
};

u8 **gKartWarioWheels1[] = {
    gKartWario269Wheel0, gKartWario269Wheel0, gKartWario249Wheel0, gKartWario229Wheel0,
    gKartWario229Wheel0, gKartWario229Wheel0, gKartWario209Wheel0, gKartWario189Wheel0,
    gKartWario189Wheel0
};

u8 ***D_800DDE34[] = {
    gKartMarioWheels0, gKartLuigiWheels0, gKartYoshiWheels0, gKartToadWheels0,
    gKartDKWheels0,    gKartWarioWheels0, gKartPeachWheels0, gKartBowserWheels0
};

u8 ***D_800DDE54[] = {
    gKartMarioWheels1, gKartLuigiWheels1, gKartYoshiWheels1, gKartToadWheels1,
    gKartDKWheels1,    gKartWarioWheels1, gKartPeachWheels1, gKartBowserWheels1
};

s32 D_800DDE74[] = {
     96, 128, 192, 256,
    288, 384, 512, 544,
    576
};

s32 maybeCompilerPadding = 0;

void func_800215DC(void) {
    D_800DDB58 = 0;
    func_80020000(gPlayerOneCopy, camera2, 0, 1);
    func_80020000(gPlayerTwo, camera2, 1, 1);
    func_80020000(gPlayerThree, camera2, 2, 1);
    func_80020000(gPlayerFour, camera2, 3, 1);
    if (gActiveScreenMode != SCREEN_MODE_3P_4P_SPLITSCREEN) {
        func_80020000(gPlayerFive, camera2, 4, 1);
        func_80020000(gPlayerSix, camera2, 5, 1);
        func_80020000(gPlayerSeven, camera2, 6, 1);
        func_80020000(gPlayerEight, camera2, 7, 1);
    }
    func_80021244(gPlayerOne, 0, 1);
    func_80021244(gPlayerTwo, 1, 1);
    func_80021244(gPlayerThree, 2, 1);
    func_80021244(gPlayerFour, 3, 1);
    if (gActiveScreenMode != SCREEN_MODE_3P_4P_SPLITSCREEN) {
        func_80021244(gPlayerFive, 4, 1);
        func_80021244(gPlayerSix, 5, 1);
        func_80021244(gPlayerSeven, 6, 1);
        func_80021244(gPlayerEight, 7, 1);
    }
    if (D_800DDB58 != 0) {
        func_8002088C();
    } else {
        func_8006E634(gPlayerOneCopy, 0, 1);
        func_8006E634(gPlayerTwo, 1, 1);
        func_8006E634(gPlayerThree, 2, 1);
        func_8006E634(gPlayerFour, 3, 1);
        if (gActiveScreenMode != SCREEN_MODE_3P_4P_SPLITSCREEN) {
            func_8006E634(gPlayerFive, 4, 1);
            func_8006E634(gPlayerSix, 5, 1);
            func_8006E634(gPlayerSeven, 6, 1);
            func_8006E634(gPlayerEight, 7, 1);
        }
    }
    D_800DDB58 = 0;
}

void func_8002186C(void) {
    D_800DDB58 = 0;
    func_80020000(gPlayerOneCopy, camera3, 0, 2);
    func_80020000(gPlayerTwo, camera3, 1, 2);
    func_80020000(gPlayerThree, camera3, 2, 2);
    func_80020000(gPlayerFour, camera3, 3, 2);
    func_80021244(gPlayerOne, 0, 2);
    func_80021244(gPlayerTwo, 1, 2);
    func_80021244(gPlayerThree, 2, 2);
    func_80021244(gPlayerFour, 3, 2);
    if (D_800DDB58 != 0) {
        func_80020BF4();
    } else {
        func_8006E6BC(gPlayerOneCopy, 0, 2);
        func_8006E6BC(gPlayerTwo, 1, 2);
        func_8006E6BC(gPlayerThree, 2, 2);
        func_8006E6BC(gPlayerFour, 3, 2);
    }
    D_800DDB58 = 0;
}

void func_800219BC(void) {
    D_800DDB58 = 0;
    func_80020000(gPlayerOneCopy, camera4, 0, 3);
    func_80020000(gPlayerTwo, camera4, 1, 3);
    func_80020000(gPlayerThree, camera4, 2, 3);
    func_80020000(gPlayerFour, camera4, 3, 3);
    func_80021244(gPlayerOne, 0, 3);
    func_80021244(gPlayerTwo, 1, 3);
    func_80021244(gPlayerThree, 2, 3);
    func_80021244(gPlayerFour, 3, 3);
    if (D_800DDB58 != 0) {
        func_80020F1C();
    } else {
        func_8006E744(gPlayerOneCopy, 0, 3);
        func_8006E744(gPlayerTwo, 1, 3);
        func_8006E744(gPlayerThree, 2, 3);
        func_8006E744(gPlayerFour, 3, 3);
    }
    D_800DDB58 = 0;
}

void func_80021B0C(void) {
    func_8006E7CC(gPlayerOneCopy, 0, 0);
    func_8006E7CC(gPlayerTwo, 1, 0);
    func_8006E7CC(gPlayerThree, 2, 0);
    func_8006E7CC(gPlayerFour, 3, 0);
    if (gActiveScreenMode != SCREEN_MODE_3P_4P_SPLITSCREEN) {
        func_8006E7CC(gPlayerFive, 4, 0);
        func_8006E7CC(gPlayerSix, 5, 0);
        func_8006E7CC(gPlayerSeven, 6, 0);
        func_8006E7CC(gPlayerEight, 7, 0);
    }
    if (gGamestate == ENDING_SEQUENCE) {
        if (gPlayerOne->unk_044 & 0x2000) {
            func_80024374(gPlayerOne, 0, 0);
        }
        if (gPlayerTwo->unk_044 & 0x2000) {
            func_80024374(gPlayerTwo, 1, 0);
        }
        if (gPlayerThree->unk_044 & 0x2000) {
            func_80024374(gPlayerThree, 2, 0);
        }
        if (gPlayerFour->unk_044 & 0x2000) {
            func_80024374(gPlayerFour, 3, 0);
        }
    }
}

void func_80021C78(void) {
    func_8006E848(gPlayerOneCopy, 0, 1);
    func_8006E848(gPlayerTwo, 1, 1);
    func_8006E848(gPlayerThree, 2, 1);
    func_8006E848(gPlayerFour, 3, 1);
    if (gActiveScreenMode != SCREEN_MODE_3P_4P_SPLITSCREEN) {
        func_8006E848(gPlayerFive, 4, 1);
        func_8006E848(gPlayerSix, 5, 1);
        func_8006E848(gPlayerSeven, 6, 1);
        func_8006E848(gPlayerEight, 7, 1);
    }
}

void func_80021D40(void) {
    func_8006E8C4(gPlayerOneCopy, 0, 2);
    func_8006E8C4(gPlayerTwo, 1, 2);
    func_8006E8C4(gPlayerThree, 2, 2);
    func_8006E8C4(gPlayerFour, 3, 2);
}

void func_80021DA8(void) {
    func_8006E940(gPlayerOneCopy, 0, 3);
    func_8006E940(gPlayerTwo, 1, 3);
    func_8006E940(gPlayerThree, 2, 3);
    func_8006E940(gPlayerFour, 3, 3);
}

void func_80021E10(Mat4 arg0, Vec3f arg1, Vec3s arg2) {
    UNUSED f32 pad[3];
    f32 sin1;
    f32 cos1;
    f32 sin2;
    f32 cos2;
    f32 sin3;
    f32 cos3;

    sin1 = sins(arg2[0]);
    cos1 = coss(arg2[0]);
    sin2 = sins(arg2[1]);
    cos2 = coss(arg2[1]);
    sin3 = sins(arg2[2]);
    cos3 = coss(arg2[2]);
    arg0[0][0] = (cos2 * cos3) + ((sin1 * sin2) * sin3);
    arg0[1][0] = (-cos2 * sin3) + ((sin1 * sin2) * cos3);
    arg0[2][0] = cos1 * sin2;
    arg0[3][0] = arg1[0];
    arg0[0][1] = cos1 * sin3;
    arg0[1][1] = cos1 * cos3;
    arg0[2][1] = -sin1;
    arg0[3][1] = arg1[1];
    arg0[0][2] = (-sin2 * cos3) + ((sin1 * cos2) * sin3);
    arg0[1][2] = (sin2 * sin3) + ((sin1 * cos2) * cos3);
    arg0[2][2] = cos1 * cos2;
    arg0[3][2] = arg1[2];
    arg0[0][3] = 0.0f;
    arg0[1][3] = 0.0f;
    arg0[2][3] = 0.0f;
    arg0[3][3] = 1.0f;
}

UNUSED void func_80021F50(Mat4 arg0, Vec3f arg1) {
    arg0[3][0] += arg1[0];
    arg0[3][1] += arg1[1];
    arg0[3][2] += arg1[2];
}

void func_80021F84(Mat4 arg0, f32 arg1) {
    arg0[0][0] *= arg1;
    arg0[1][0] *= arg1;
    arg0[2][0] *= arg1;
    arg0[0][1] *= arg1;
    arg0[1][1] *= arg1;
    arg0[2][1] *= arg1;
    arg0[0][2] *= arg1;
    arg0[1][2] *= arg1;
    arg0[2][2] *= arg1;
}

UNUSED void func_80021FF8(Mtx *arg0, Mat4 arg1) {
    f32 someMultiplier = 65536.0f;
    arg0->m[0][0] = arg1[0][0] * someMultiplier;
    arg0->m[0][1] = arg1[0][1] * someMultiplier;
    arg0->m[0][2] = arg1[0][2] * someMultiplier;
    arg0->m[0][3] = arg1[0][3] * someMultiplier;
    arg0->m[1][0] = arg1[1][0] * someMultiplier;
    arg0->m[1][1] = arg1[1][1] * someMultiplier;
    arg0->m[1][2] = arg1[1][2] * someMultiplier;
    arg0->m[1][3] = arg1[1][3] * someMultiplier;
    arg0->m[2][0] = arg1[2][0] * someMultiplier;
    arg0->m[2][1] = arg1[2][1] * someMultiplier;
    arg0->m[2][2] = arg1[2][2] * someMultiplier;
    arg0->m[2][3] = arg1[2][3] * someMultiplier;
    arg0->m[3][0] = arg1[3][0] * someMultiplier;
    arg0->m[3][1] = arg1[3][1] * someMultiplier;
    arg0->m[3][2] = arg1[3][2] * someMultiplier;
    arg0->m[3][3] = arg1[3][3] * someMultiplier;
}

void func_80022180(Mtx *arg0, Mat4 arg1) {
    f32 someMultiplier = 65536.0f;
    arg0->m[0][0] = ((s32) (arg1[0][0] * someMultiplier) & 0xFFFF0000) | (((s32) (arg1[0][1] * someMultiplier) >> 0x10) & 0xFFFF);
    arg0->m[0][1] = ((s32) (arg1[0][2] * someMultiplier) & 0xFFFF0000) | (((s32) (arg1[0][3] * someMultiplier) >> 0x10) & 0xFFFF);
    arg0->m[0][2] = ((s32) (arg1[1][0] * someMultiplier) & 0xFFFF0000) | (((s32) (arg1[1][1] * someMultiplier) >> 0x10) & 0xFFFF);
    arg0->m[0][3] = ((s32) (arg1[1][2] * someMultiplier) & 0xFFFF0000) | (((s32) (arg1[1][3] * someMultiplier) >> 0x10) & 0xFFFF);
    arg0->m[1][0] = ((s32) (arg1[2][0] * someMultiplier) & 0xFFFF0000) | (((s32) (arg1[2][1] * someMultiplier) >> 0x10) & 0xFFFF);
    arg0->m[1][1] = ((s32) (arg1[2][2] * someMultiplier) & 0xFFFF0000) | (((s32) (arg1[2][3] * someMultiplier) >> 0x10) & 0xFFFF);
    arg0->m[1][2] = ((s32) (arg1[3][0] * someMultiplier) & 0xFFFF0000) | (((s32) (arg1[3][1] * someMultiplier) >> 0x10) & 0xFFFF);
    arg0->m[1][3] = ((s32) (arg1[3][2] * someMultiplier) & 0xFFFF0000) | (((s32) (arg1[3][3] * someMultiplier) >> 0x10) & 0xFFFF);
    arg0->m[2][0] = ((s32) (arg1[0][0] * someMultiplier) << 0x10)      | ((s32) (arg1[0][1] * someMultiplier) & 0xFFFF);
    arg0->m[2][1] = ((s32) (arg1[0][2] * someMultiplier) << 0x10)      | ((s32) (arg1[0][3] * someMultiplier) & 0xFFFF);
    arg0->m[2][2] = ((s32) (arg1[1][0] * someMultiplier) << 0x10)      | ((s32) (arg1[1][1] * someMultiplier) & 0xFFFF);
    arg0->m[2][3] = ((s32) (arg1[1][2] * someMultiplier) << 0x10)      | ((s32) (arg1[1][3] * someMultiplier) & 0xFFFF);
    arg0->m[3][0] = ((s32) (arg1[2][0] * someMultiplier) << 0x10)      | ((s32) (arg1[2][1] * someMultiplier) & 0xFFFF);
    arg0->m[3][1] = ((s32) (arg1[2][2] * someMultiplier) << 0x10)      | ((s32) (arg1[2][3] * someMultiplier) & 0xFFFF);
    arg0->m[3][2] = ((s32) (arg1[3][0] * someMultiplier) << 0x10)      | ((s32) (arg1[3][1] * someMultiplier) & 0xFFFF);
    arg0->m[3][3] = ((s32) (arg1[3][2] * someMultiplier) << 0x10)      | ((s32) (arg1[3][3] * someMultiplier) & 0xFFFF);
}

s32 func_800224F0(s16 *arg0, s16 arg1, s16 arg2) {
    s16 temp_v0;

    temp_v0 = arg1 - *arg0;
    if (arg2 < 0) {
        arg2 *= -1;
    }
    if (temp_v0 > 0) {
        temp_v0 -= arg2;
        if (temp_v0 >= 0) {
            *arg0 = arg1 - temp_v0;
        } else {
            *arg0 = arg1;
        }
    } else {
        temp_v0 += arg2;
        if (temp_v0 <= 0) {
            *arg0 = arg1 - temp_v0;
        } else {
            *arg0 = arg1;
        }
    }
    if (arg1 == *arg0) {
        return 0;
    }
    return 1;
}

void move_s32_towards(s32 *startingValue, s32 targetValue, f32 somePercent) {
    *startingValue -= ((*startingValue - targetValue) * somePercent);
}

/**
  * Function: move_f32_towards

  * Parameters:
  *     f32 *startingValue - Pointer to the float that will be modified
  *     f32 targetValue    - Float value to move startingValue towards
  *     f32 somePercent    - The percent of the difference between startingValue
                            and targetValue to actually move

  * Moves a given startingValue the given somePercent towards the targetValue

  * f32 *thing = 2500;
  * move_f32_towards(thing, 500, 0.75f);
  * thing now has a value of 1000

  * If after the move startingValue is inside of the range [-0.001, 0.001],
  * force it to exactly 0.0f

  * This is probably a precision thing. The scaling with somePercent likely
  * can't hit exactly 0 with any reliability, so they force it to 0 if you're
  * in a small range around it. Why they only do this for 0 is anyone's guess though
**/
void move_f32_towards(f32 *startingValue, f32 targetValue, f32 somePercent) {
    *startingValue -= ((*startingValue - targetValue) * somePercent);
    if ((*startingValue < 0.001) && (-0.001 < *startingValue)) {
        *startingValue = 0.0f;
    }
}

void move_s16_towards(s16 *startingValue, s16 targetValue, f32 somePercent) {
    *startingValue -= ((*startingValue - targetValue) * somePercent);
}

void move_u16_towards(u16 *startingValue, s16 targetValue, f32 somePercent) {
    *startingValue -= ((*startingValue - targetValue) * somePercent);
}

void func_80022744(void) {
    func_8006E058();
    func_8002276C();
}

void func_8002276C(void) {
    switch (gActiveScreenMode) {                              /* irregular */
    case SCREEN_MODE_1P:
        switch (gModeSelection) {                        /* switch 1; irregular */
        case GRAND_PRIX:                                     /* switch 1 */
            func_80022A98(gPlayerOne, 0);
            func_80022A98(gPlayerTwo, 1);
            func_80022A98(gPlayerThree, 2);
            func_80022A98(gPlayerFour, 3);
            func_80022A98(gPlayerFive, 4);
            func_80022A98(gPlayerSix, 5);
            func_80022A98(gPlayerSeven, 6);
            func_80022A98(gPlayerEight, 7);
            break;
        case TIME_TRIALS:                                     /* switch 1 */
            func_80022A98(gPlayerOne, 0);
            if ((gPlayerTwo->unk_000 & 0x100) == 0x100) {
                func_80022A98(gPlayerTwo, 1);
            }
            if ((gPlayerThree->unk_000 & 0x100) == 0x100) {
                func_80022A98(gPlayerThree, 2);
            }
            break;
        case VERSUS:                                     /* switch 1 */
        case BATTLE:                                     /* switch 1 */
            func_80022A98(gPlayerOne, 0);
            func_80022A98(gPlayerTwo, 1);
            if (gPlayerCountSelection1 >= 3) {
                func_80022A98(gPlayerThree, 2);
            }
            if (gPlayerCountSelection1 == 4) {
                func_80022A98(gPlayerFour, 3);
            }
            break;
        }
        break;
    case SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL:
    case SCREEN_MODE_2P_SPLITSCREEN_VERTICAL:
        switch (gModeSelection) {                        /* switch 2; irregular */
        case GRAND_PRIX:                                     /* switch 2 */
            func_80022A98(gPlayerOne, 0);
            func_80022A98(gPlayerTwo, 1);
            func_80022A98(gPlayerThree, 2);
            func_80022A98(gPlayerFour, 3);
            func_80022A98(gPlayerFive, 4);
            func_80022A98(gPlayerSix, 5);
            func_80022A98(gPlayerSeven, 6);
            func_80022A98(gPlayerEight, 7);
            break;
        case VERSUS:                                     /* switch 2 */
        case BATTLE:                                     /* switch 2 */
            func_80022A98(gPlayerOne, 0);
            func_80022A98(gPlayerTwo, 1);
            break;
        case TIME_TRIALS:                                     /* switch 2 */
            func_80022A98(gPlayerOne, 0);
            break;
        }
        break;
    case SCREEN_MODE_3P_4P_SPLITSCREEN:
        if ((VERSUS == gModeSelection) || (BATTLE == gModeSelection)) {
            func_80022A98(gPlayerOne, 0);
            func_80022A98(gPlayerTwo, 1);
            func_80022A98(gPlayerThree, 2);
            if (gPlayerCountSelection1 == 4) {
                func_80022A98(gPlayerFour, 3);
            }
        }
        break;
    }
}

void func_80022A98(Player* player, s8 arg1) {
    if ((player->unk_000 & PLAYER_EXISTS) == PLAYER_EXISTS) {
        func_80026A48(player, arg1);
        func_800235AC(player, arg1);
        if (((player->unk_0BC & 0x04000000) == 0x04000000) || ((player->unk_0BC & 0x08000000) == 0x08000000)) {
            if ((player->unk_0BC & 0x04000000) == 0x04000000) {
                func_80022B50(player, arg1);
            }
            if ((player->unk_0BC & 0x08000000) == 0x08000000) {
                func_80022BC4(player, arg1);
            }
        } else {
            func_80022DB4(player, arg1);
        }
        func_80030A34(player);
    }
}

void func_80022B50(Player *player, UNUSED s8 arg1) {
    f32 temp_f0;
    s16 var_v0;

    var_v0 = player->unk_DB4.unk2;
    temp_f0 = player->unk_DB4.unk10;
    if (var_v0 < 5) {
        var_v0++;
    }

    player->unk_DA4 = (var_v0 * temp_f0) - (0.7 * (var_v0 * var_v0));
    player->unk_DB4.unk10 = temp_f0;
    player->unk_DB4.unk2 = var_v0;
}

void func_80022BC4(Player *player, UNUSED s8 arg1) {
    f32 temp_f0 = player->unk_DB4.unk10;
    s16 temp_v0 = player->unk_DB4.unk2;
    s16 temp_f16;

    temp_v0++;

    temp_f16 = (temp_v0 * temp_f0) - (0.5 * (temp_v0 * temp_v0));


    if ((temp_v0 != 0) && (temp_f16 < 0)) {
        temp_f0 *= 0.8;
        temp_v0 = 0;
        if (temp_f0 <= 0.1) {
            player->unk_0BC &= 0xF7FFFFFF;
            temp_f0 = 0.0f;
        }
    }
    if (temp_f16 <= 0) {
        temp_f16 = 0;
    }
    player->unk_DA4 = temp_f16;
    player->unk_DB4.unk10 = temp_f0;
    player->unk_DB4.unk2 = temp_v0;
}

void func_80022CA8(Player *player, s8 arg1, UNUSED s8 arg2, s8 arg3) {
    s16 temp_v0 = player->unk_DA4;

    D_800DDBB4[arg1][arg3 + 0x0].v.ob[1] = 18 - (temp_v0 * 2.3);
    D_800DDBB4[arg1][arg3 + 0x1].v.ob[1] = 9 - temp_v0;
    D_800DDBB4[arg1][arg3 + 0x2].v.ob[1] = 9 - temp_v0;
    D_800DDBB4[arg1][arg3 + 0x3].v.ob[1] = 18 - (temp_v0 * 2.3);
    D_800DDBB4[arg1][arg3 + 0x4].v.ob[1] = 9 - temp_v0;
    D_800DDBB4[arg1][arg3 + 0x7].v.ob[1] = 9 - temp_v0;
}

/**
 * Seems to stretch/warp a specific players texture for a
 * short period of time. Perhaps does not do anything
 **/
void func_80022D60(UNUSED Player *player, s8 arg1, UNUSED s8 arg2, s8 arg3) {
    D_800DDBB4[arg1][arg3].v.ob[1] = 21;
    D_800DDBB4[arg1][arg3 + 0x3].v.ob[1] = 21;
}

void func_80022DB4(Player *player, UNUSED s8 arg1) {
    f32 temp_f0 = player->unk_DB4.unkC;
    s16 temp_v0 = player->unk_DB4.unk18;
    s16 temp_f16;

    temp_v0++;

    temp_f16 = (temp_v0 * temp_f0) - (0.7 * (temp_v0 * temp_v0));


    if ((temp_v0 != 0) && (temp_f16 < 0)) {
        temp_f0 *= 0.8;
        temp_v0 = 0;
        if (temp_f0 <= 0.1) {
            temp_f0 = 0.0f;
        }
    }
    if (temp_f16 <= 0) {
        temp_f16 = 0;
    }
    player->unk_DB4.unk1E = temp_f16;
    player->unk_DB4.unkC = temp_f0;
    player->unk_DB4.unk18 = temp_v0;
}

void func_80022E84(Player *player, s8 arg1, UNUSED s8 arg2, s8 arg3) {
    s16 temp_v0 = player->unk_DB4.unk1E;

    D_800DDBB4[arg1][arg3 + 0x0].v.ob[1] = 18 - temp_v0;
    D_800DDBB4[arg1][arg3 + 0x1].v.ob[1] = 9 - temp_v0;
    D_800DDBB4[arg1][arg3 + 0x2].v.ob[1] = 9 - temp_v0;
    D_800DDBB4[arg1][arg3 + 0x3].v.ob[1] = 18 - temp_v0;
    D_800DDBB4[arg1][arg3 + 0x4].v.ob[1] = 9 - temp_v0;
    D_800DDBB4[arg1][arg3 + 0x7].v.ob[1] = 9 - temp_v0;
}

/**
 * Sets player shading/colour.
 */
void func_80022F14(UNUSED Player *player, s8 arg1, s32 arg2, f32 arg3) {
    D_80164B10[arg1] = (s16) ((f32)D_80164B10[arg1] - ((D_80164B10[arg1] - ((arg2 >> 16) & 0xFF)) * arg3));

    D_80164B20[arg1] = (s16) ((f32)D_80164B20[arg1] - ((D_80164B20[arg1] - ((arg2 >> 8) & 0xFF)) * arg3));

    D_80164B30[arg1] = (s16) ((f32)D_80164B30[arg1] - ((D_80164B30[arg1] - (arg2 & 0xFF)) * arg3));
}

void func_80023038(UNUSED Player *player, s8 arg1, s32 arg2, f32 arg3) {
    move_u16_towards(&D_80164B40[arg1], (arg2 >> 16) & 0xFF, arg3);
    move_u16_towards(&D_80164B50[arg1], (arg2 >> 8)  & 0xFF, arg3);
    move_u16_towards(&D_80164B60[arg1], arg2 & 0xFF, arg3);
}

/**
 * Activates in the tunnel to shade the player a bit darker
 * Sort of an atmospheric effect.
 */
s32 func_800230E4(Player *player, s8 arg1) {
    switch (gCurrentCourseId) {
        case 8:
            if (((gNearestWaypointByPlayerId[arg1] >= 0x14F) && (gNearestWaypointByPlayerId[arg1] < 0x158))
            || ((gNearestWaypointByPlayerId[arg1] >= 0x15E) && (gNearestWaypointByPlayerId[arg1] < 0x164))
            || ((gNearestWaypointByPlayerId[arg1] >= 0x169) && (gNearestWaypointByPlayerId[arg1] < 0x170))
            || ((gNearestWaypointByPlayerId[arg1] >= 0x174) && (gNearestWaypointByPlayerId[arg1] < 0x17A))
            || ((gNearestWaypointByPlayerId[arg1] >= 0x17E) && (gNearestWaypointByPlayerId[arg1] < 0x184))) {
                func_80022F14(player, arg1, 0x1C0000, 0.3f);
                func_80023038(player, arg1, 0xE0, 0.3f);
                D_80164B80[arg1] = 0;
                return 1;
            }
            return 0;

        default:
            return 0;
    }
}

void func_800231D8(Player *player, s8 arg1) {
    switch(gCurrentCourseId) {
        case 2:
            if (((gNearestWaypointByPlayerId[arg1] >= 0x15) && (gNearestWaypointByPlayerId[arg1] < 0x2A))
            || ((gNearestWaypointByPlayerId[arg1] >= 0x14D) && (gNearestWaypointByPlayerId[arg1] < 0x15C))
            || ((gNearestWaypointByPlayerId[arg1] >= 0x1D1) && (gNearestWaypointByPlayerId[arg1] < 0x1E4))
            || (player->unk_110.unk3C[2] >= 500.0f)) {
                func_80022F14(player, arg1, 0x340000, 0.3f);
                func_80023038(player, arg1, 0x4040, 0.3f);
                D_80164B80[arg1] = 0;
            } else if (((gNearestWaypointByPlayerId[arg1] >= 0xF1) && (gNearestWaypointByPlayerId[arg1] < 0xF5))
                || ((gNearestWaypointByPlayerId[arg1] >= 0xFB) && (gNearestWaypointByPlayerId[arg1] < 0xFF))
                || ((gNearestWaypointByPlayerId[arg1] >= 0x105) && (gNearestWaypointByPlayerId[arg1] < 0x109))
                || ((gNearestWaypointByPlayerId[arg1] >= 0x10F) && (gNearestWaypointByPlayerId[arg1] < 0x113))
                || ((gNearestWaypointByPlayerId[arg1] >= 0x145) && (gNearestWaypointByPlayerId[arg1] < 0x14A))
                || ((gNearestWaypointByPlayerId[arg1] >= 0x15E) && (gNearestWaypointByPlayerId[arg1] < 0x163))) {
                func_80022F14(player, arg1, 0x1C0000, 0.3f);
                func_80023038(player, arg1, 0xE0, 0.3f);
                D_80164B80[arg1] = 0;
            } else {
                func_80022F14(player, arg1, 0, 0.3f);
                func_80023038(player, arg1, 0, 0.3f);
                D_80164B80[arg1] = 0;
            }
            break;
        case 3:
            if (((gNearestWaypointByPlayerId[arg1] >= 0xD) && (gNearestWaypointByPlayerId[arg1] < 0x15))
                || ((gNearestWaypointByPlayerId[arg1] >= 0x29) && (gNearestWaypointByPlayerId[arg1] < 0x39))
                || ((gNearestWaypointByPlayerId[arg1] >= 0x46) && (gNearestWaypointByPlayerId[arg1] < 0x4E))
                || ((gNearestWaypointByPlayerId[arg1] >= 0x5F) && (gNearestWaypointByPlayerId[arg1] < 0x67))
                || ((gNearestWaypointByPlayerId[arg1] >= 0x7B) && (gNearestWaypointByPlayerId[arg1] < 0x86))
                || ((gNearestWaypointByPlayerId[arg1] >= 0x9D) && (gNearestWaypointByPlayerId[arg1] < 0xA6))
                || ((gNearestWaypointByPlayerId[arg1] >= 0xB9) && (gNearestWaypointByPlayerId[arg1] < 0xC3))
                || ((gNearestWaypointByPlayerId[arg1] >= 0xB9) && (gNearestWaypointByPlayerId[arg1] < 0xC3))
                || ((gNearestWaypointByPlayerId[arg1] >= 0xD7) && (gNearestWaypointByPlayerId[arg1] < 0xE1))
                || ((gNearestWaypointByPlayerId[arg1] >= 0x10E) && (gNearestWaypointByPlayerId[arg1] < 0x119))
                || ((gNearestWaypointByPlayerId[arg1] >= 0x154) && (gNearestWaypointByPlayerId[arg1] < 0x15F))
                || ((gNearestWaypointByPlayerId[arg1] >= 0x1EF) && (gNearestWaypointByPlayerId[arg1] < 0x1F7))
                || ((gNearestWaypointByPlayerId[arg1] >= 0x202) && (gNearestWaypointByPlayerId[arg1] < 0x209))
                || ((gNearestWaypointByPlayerId[arg1] >= 0x216) && (gNearestWaypointByPlayerId[arg1] < 0x21D))
                || ((gNearestWaypointByPlayerId[arg1] >= 0x230) && (gNearestWaypointByPlayerId[arg1] < 0x23A))
                || ((gNearestWaypointByPlayerId[arg1] >= 0x24C) && (gNearestWaypointByPlayerId[arg1] < 0x256))
                || ((gNearestWaypointByPlayerId[arg1] >= 0x288) && (gNearestWaypointByPlayerId[arg1] < 0x269))
                || ((gNearestWaypointByPlayerId[arg1] >= 0x274) && (gNearestWaypointByPlayerId[arg1] < 0x27E))) {
                func_80022F14(player, arg1, 0x1C0000, 0.3f);
                func_80023038(player, arg1, 0xE0, 0.3f);
                D_80164B80[arg1] = 0;
            } else {
                func_80022F14(player, arg1, 0, 0.3f);
                func_80023038(player, arg1, 0, 0.3f);
                D_80164B80[arg1] = 0;
            }
            break;
        default:
            func_80022F14(player, arg1, 0, 0.3f);
            func_80023038(player, arg1, 0, 0.3f);
            D_80164B80[arg1] = 0;
            break;
    }
}

void func_800235AC(Player *player, s8 arg1) {
    s32 temp;

    if (((player->unk_000 & 0x100) == 0x100) && (player == gPlayerThree)) {
        func_80022F14(player, arg1, 0x1C0000, 0.3f);
        func_80023038(player, arg1, 0xE0, 0.3f);
        D_80164B80[arg1] = 0;
        return;
    }

    if (((player->unk_0CA & 0x10) == 0x10) && ((player->unk_0CA & 4) == 4)) {
        func_80022F14(player, arg1, 0x646464, 0.5f);
        func_80023038(player, arg1, 0xFF0000, 0.1f);
        return;
    }
    if ((player->unk_0CA & 4) == 4) {
        func_80022F14(player, arg1, 0, 1.0f);
        func_80023038(player, arg1, 0, 1.0f);
        return;
    }
    if ((player->unk_0CA & 0x10) == 0x10) {
        func_80022F14(player, arg1, 0x646464, 0.5f);
        func_80023038(player, arg1, 0xFF0000, 0.1f);
        return;
    }
    if ((player->unk_0CA & 0x20) == 0x20) {
        func_80022F14(player, arg1, 0, 0.1f);
        func_80023038(player, arg1, 0, 0.1f);
        return;
    }

    if (((player->unk_0BC & 0x40000000) == 0x40000000) && ((s32) player->unk_0B0 < 0x78)) {
        D_80164B80[arg1] += 5;
        if (D_80164B80[arg1] >= 0x1E) {
            D_80164B80[arg1] = 0;
        }
        if ((D_80164B80[arg1] >= 0) && (D_80164B80[arg1] < 0xB)) {
            func_80022F14(player, arg1, 0x808080, 0.8f);
            func_80023038(player, arg1, 0, 0.8f);
        }
        if ((D_80164B80[arg1] >= 0xB) && (D_80164B80[arg1] < 0x15)) {
            func_80022F14(player, arg1, 0x70, 0.8f);
            func_80023038(player, arg1, 0, 0.8f);
        }
        if ((D_80164B80[arg1] >= 0x15) && (D_80164B80[arg1] < 0x1F)) {
            func_80022F14(player, arg1, 0x8F8F00, 0.8f);
            func_80023038(player, arg1, 0, 0.8f);
        }
        return;
    }
    if ((player->unk_0BC & 0x200) != 0) {
        temp = (s32)gCourseTimer - D_8018D930[arg1];
        if (temp <= 8) {

            if (temp >= 7) {
                D_80164B80[arg1] += 10;
            } else {
                D_80164B80[arg1] += 5;
            }
            if (D_80164B80[arg1] >= 40) {
                D_80164B80[arg1] = 0;
            }
            if ((D_80164B80[arg1] >= 0) && (D_80164B80[arg1] <= 10)) {
                func_80022F14(player, arg1, 0x70, 0.8f);
                func_80023038(player, arg1, 0, 0.8f);
            }
            if ((D_80164B80[arg1] >= 0xB) && (D_80164B80[arg1] <= 20)) {
                func_80022F14(player, arg1, 0x707000, 0.8f);
                func_80023038(player, arg1, 0, 0.8f);
            }
            if ((D_80164B80[arg1] >= 0x15) && (D_80164B80[arg1] <= 30)) {
                func_80022F14(player, arg1, 0x700000, 0.8f);
                func_80023038(player, arg1, 0, 0.8f);
            }
            if (D_80164B80[arg1] >= 0x1F) {
                func_80022F14(player, arg1, 0x7000, 0.8f);
                func_80023038(player, arg1, 0, 0.8f);
            }
            return;
        }
    }
    if (func_800230E4(player, arg1) != 1) {
        if (((player->boundingBoxCorners[3].unk_14 & 1) == 1)
        || ((player->boundingBoxCorners[3].unk_14 & 2) == 2)
        || ((player->boundingBoxCorners[0].unk_14 & 3) == 3)) {
            func_80022F14(player, arg1, 0, 0.3f);
            func_80023038(player, arg1, 0x6F6F6F, 0.3f);
            return;
        }
        func_800231D8(player, arg1);
        if ((player->unk_0CA & 0x1000) == 0x1000) {
            func_80022F14(player, arg1, 0, 0.3f);
            func_80023038(player, arg1, 0xF0F0F0, 0.3f);
        }
    }
}

void func_80023BF0(Player *player, s8 arg1, s8 arg2, s8 arg3) {
    if (((player->unk_0BC & 0x4000000) == 0x4000000) || ((player->unk_0BC & 0x8000000) == 0x8000000)) {
        func_80022CA8(player, arg1, arg2, arg3);
    } else {
        func_80022E84(player, arg1, arg2, arg3);
    }
    if ((player->unk_0CA & 2) == 2) {
        func_80022D60(player, arg1, arg2, arg3);
    }
}

void func_80023C84(Player *player, s8 arg1, s8 arg2) {
    Mat4 sp118;
    UNUSED Mat4 pad;
    Vec3f spCC;
    Vec3s spC4;
    s16 temp_t9;
    s16 spC0;
    Vec3f spB4;
    f32 spB0;
    f32 spAC;
    UNUSED Vec3f pad2;
    f32 var_f2;

    temp_t9 = (u16)(player->unk_048[arg2] + player->unk_02C[1] + player->unk_0C0) / 128; // << 7) & 0xFFFF;
    spC0 = -player->unk_02C[1] - player->unk_0C0;

    spB0 = -coss(temp_t9 << 7) * 2;
    spAC = -sins(temp_t9 << 7) * 2;

    if (((player->unk_0BC & 0x01000000) == 0x01000000)
        || ((player->unk_0BC & 0x400) == 0x400)
        || ((player->unk_0BC & 0x80000) == 0x80000)
        || ((player->unk_0BC & 0x800000) == 0x800000)
        || ((player->unk_0BC & 0x400) == 0x400)
        || ((player->unk_0CA & 2) == 2)
        || ((player->unk_0BC & 0x02000000) == 0x02000000)
        || ((player->unk_0BC & 0x10000) == 0x10000)
        || ((player->unk_0BC & 8) == 8)) {

        var_f2 = (f32) (1.0 - ((f64) player->unk_110.unk3C[2] * 0.02));
        if (var_f2 < 0.0f) {var_f2 = 0.0f;}
        if (var_f2 > 1.0f) {var_f2 = 1.0f;}
        spB4[0] = player->unk_110.unk60[0];
        spB4[2] = player->unk_110.unk60[2];
        spB4[1] = player->unk_110.unk60[1];

        spCC[0] = player->pos[0] + ((spB0 * sins(spC0)) + (spAC * coss(spC0)));
        spCC[1] = player->unk_074 + 1.0f;
        spCC[2] = player->pos[2] + ((spB0 * coss(spC0)) - (spAC * sins(spC0)));
        func_80042A20(sp118, spB4, spCC, (spC0 + player->unk_042), D_800DDBD4[player->characterId] * player->unk_224
        * var_f2);
    } else {
        spC4[0] = player->unk_0C4;
        spC4[1] = spC0;
        spC4[2] = player->unk_206 * 2;

        spCC[0] = player->pos[0] +  ((spB0 * sins(spC0)) + (spAC * coss(spC0)));
        spCC[1] = player->unk_074 + 1.0f;
        spCC[2] = player->pos[2] + ((spB0 * coss(spC0)) - (spAC * sins(spC0)));
        func_80021E10(sp118, spCC, spC4);
        func_80021F84(sp118, D_800DDBD4[player->characterId] * player->unk_224);
    }
    func_80022180(&gGfxPool->mtxPool[arg1 + (arg2 << 3) + 0x3AB], sp118);

    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[arg1 + (arg2 << 3) + 0x3AB]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gDisplayListHead++, D_0D008D58);
    gDPSetTextureLUT(gDisplayListHead++, G_TT_NONE);
    gDPLoadTextureBlock(gDisplayListHead++, D_8018D474, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR
        | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    func_8004B414(0, 0, 0, 0xFF);
    gDPSetRenderMode(gDisplayListHead++, G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2);
    gSPVertex(gDisplayListHead++, &D_800E51D0[0], 4, 0);
    gSPDisplayList(gDisplayListHead++, D_0D008C78);
    gDPLoadTextureBlock(gDisplayListHead++, (D_8018D474 + SOME_TEXTURE_POINTER_MATH), G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR
        | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    func_8004B414(0, 0, 0, 0xFF);
    gDPSetRenderMode(gDisplayListHead++, G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2);
    gSPVertex(gDisplayListHead++, &D_800E51D0[4], 4, 0);
    gSPDisplayList(gDisplayListHead++, D_0D008C78);
    gSPTexture(gDisplayListHead++, 1, 1, 0, G_TX_RENDERTILE, G_OFF);
}

void func_80024374(Player *player, s8 arg1, s8 arg2) {
    Mat4 sp118;
    UNUSED Mat4 pad;
    Vec3f spCC;
    Vec3s spC4;
    s16 temp_t9;
    s16 spC0;
    UNUSED Vec3f pad2;
    f32 spB0;
    f32 spAC;
    UNUSED Vec3f pad3;
    Vec3f sp94 = { 9.0f, 7.0f, 5.0f };

    temp_t9 = (u16)(player->unk_048[arg2] + player->unk_02C[1] + player->unk_0C0) / 128;
    spC0 = -player->unk_02C[1] - player->unk_0C0;

    spB0 = -coss(temp_t9 << 7) * 3;
    spAC = -sins(temp_t9 << 7) * 3;

    spC4[0] = 0;
    spC4[1] = spC0;
    spC4[2] = 0;

    spCC[0] = player->pos[0] + ((spB0 * sins(spC0)) + (spAC * coss(spC0)));
    spCC[2] = player->pos[2] + ((spB0 * coss(spC0)) - (spAC * sins(spC0)));
    spCC[1] = D_80165C18[D_80183EA0[arg1]].pos[1] + sp94[arg1];

    func_80021E10(sp118, spCC, spC4);
    func_80021F84(sp118, D_800DDBD4[player->characterId] * player->unk_224);
    func_80022180(&gGfxPool->mtxPool[arg1 + (arg2 << 3) + 0x3AB], sp118);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[arg1 + (arg2 << 3) + 0x3AB]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gDisplayListHead++, D_0D008D58);
    gDPSetTextureLUT(gDisplayListHead++, G_TT_NONE);
    gDPLoadTextureBlock(gDisplayListHead++, D_8018D474, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0,
        G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    func_8004B414(0, 0, 0, 0x000000D0);
    gDPSetRenderMode(gDisplayListHead++, G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2);
    gSPVertex(gDisplayListHead++, &D_800E51D0[0], 4, 0);
    gSPDisplayList(gDisplayListHead++, D_0D008C78);
    gDPLoadTextureBlock(gDisplayListHead++, (D_8018D474 + SOME_TEXTURE_POINTER_MATH), G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0,
        G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    func_8004B414(0, 0, 0, 0x000000D0);
    gDPSetRenderMode(gDisplayListHead++, G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2);
    gSPVertex(gDisplayListHead++, &D_800E5210[0], 4, 0);
    gSPDisplayList(gDisplayListHead++, D_0D008C78);
    gSPTexture(gDisplayListHead++, 1, 1, 0, G_TX_RENDERTILE, G_OFF);
}

void func_800248D0(Player *player, s8 arg1, s8 arg2, s8 arg3) {
    s32 stackPadding00;
    Mat4 sp1A4;
    s32 stackPadding01;
    s32 stackPadding02;
    s32 stackPadding03;
    s32 stackPadding04;
    s32 stackPadding05;
    s32 stackPadding06;
    s32 stackPadding07;
    s32 stackPadding08;
    s32 stackPadding09;
    s32 stackPadding10;
    s32 stackPadding11;
    s32 stackPadding12;
    s32 stackPadding13;
    s32 stackPadding14;
    s32 stackPadding15;
    s32 stackPadding16;
    s32 stackPadding17;
    Vec3f sp154;
    Vec3s sp14C;
    f32 sp148;
    f32 sp144;
    f32 sp140;
    s16 temp_v1;
    s16 thing;

    if (player->unk_044 & 0x2000) {
        sp14C[0] = 0;
        sp14C[1] = player->unk_048[arg2];
        sp14C[2] = 0;
        func_80062B18(&sp148, &sp144, &sp140, 0.0f, 1.5f, 0.0f, -player->unk_048[arg2], player->unk_050[arg2]);
        sp154[1] = (player->pos[1] - player->boundingBoxSize) + (sp144 - 2.0);
        sp154[0] = player->pos[0] + sp148;
        sp154[2] = player->pos[2] + sp140;
    } else {
        thing = (u16)(player->unk_048[arg2] + player->unk_02C[1] + player->unk_0C0);
        temp_v1 = player->unk_0CC[arg2] * sins(thing);
        if ((player->unk_0BC & 8) == 8) {
            sp14C[0] = cameras[arg2].rot[0] - 0x4000;
        } else {
            sp14C[0] = -temp_v1 * 0.8;
        }
        sp14C[1] = player->unk_048[arg2];
        sp14C[2] = player->unk_050[arg2];
        if (((s32)player->unk_0BC & 0x04000000) == 0x04000000) {
            func_80062B18(&sp148, &sp144, &sp140, 0.0f, 8.0f, 0.0f, -player->unk_048[arg2], player->unk_050[arg2]);
            sp154[1] = (player->pos[1] - player->boundingBoxSize) + player->unk_108;
            sp154[0] = player->pos[0] + sp148;
            sp154[2] = player->pos[2] + sp140;
        } else {
            func_80062B18(&sp148, &sp144, &sp140, 0.0f, 1.5f, 0.0f, -player->unk_048[arg2], player->unk_050[arg2]);
            sp154[1] = (player->pos[1] - player->boundingBoxSize) + player->unk_108 + (sp144 - 2.0);
            sp154[0] = player->pos[0] + sp148;
            sp154[2] = player->pos[2] + sp140;
        }
    }
    D_80164B04 = &D_802F1F80[D_801651D0[arg2][arg1]][arg2][arg1 << 7];
    if ((arg2 == 0) || (arg2 == 1)) {
        D_80164B08 = &D_802BFB80[D_801651D0[arg2][arg1]][arg2][arg1].pixel_index_array[0];
        D_80164B0C = &D_802BFB80[D_801651D0[arg2][arg1]][arg2][arg1].pixel_index_array[0x7C0];
    } else {
        D_80164B08 = &D_802BFB80[D_801651D0[arg2][arg1]][arg2 - 1][arg1 - 4].pixel_index_array[0];
        D_80164B0C = &D_802BFB80[D_801651D0[arg2][arg1]][arg2 - 1][arg1 - 4].pixel_index_array[0x7C0];
    }
    func_80021E10(sp1A4, sp154, sp14C);
    func_80021F84(sp1A4, D_800DDBD4[player->characterId] * player->unk_224);
    func_80022180(&gGfxPool->mtxPool[arg1 + (arg2 * 8) + 0x3CB], sp1A4);
    if ((player->unk_0BC & 0x80000000) == 0x80000000) {
        if (arg2 == arg1) {
            gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[arg1 + (arg2 * 8) + 0x3CB]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(gDisplayListHead++, D_0D008CD8);
            gDPLoadTLUT_pal256(gDisplayListHead++, D_80164B04);
            gDPSetTextureLUT(gDisplayListHead++, G_TT_RGBA16);
            func_8004B614(D_80164B10[arg1], D_80164B20[arg1], D_80164B30[arg1], D_80164B40[arg1], D_80164B50[arg1], D_80164B60[arg1], (s32) player->unk_0C6);
            gDPSetRenderMode(gDisplayListHead++, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_WRAP | ZMODE_XLU | CVG_X_ALPHA | FORCE_BL | GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA), AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_WRAP | ZMODE_XLU | CVG_X_ALPHA | FORCE_BL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA));
        } else {
            gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[arg1 + (arg2 * 8) + 0x3CB]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(gDisplayListHead++, D_0D008CD8);
            gDPLoadTLUT_pal256(gDisplayListHead++, D_80164B04);
            gDPSetTextureLUT(gDisplayListHead++, G_TT_RGBA16);
            func_8004B614(D_80164B10[arg1], D_80164B20[arg1], D_80164B30[arg1], D_80164B40[arg1], D_80164B50[arg1], D_80164B60[arg1], D_8018D970[arg1]);
            gDPSetRenderMode(gDisplayListHead++, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_WRAP | ZMODE_XLU | CVG_X_ALPHA | FORCE_BL | GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA), AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_WRAP | ZMODE_XLU | CVG_X_ALPHA | FORCE_BL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA));
        }
    } else if (((player->unk_0CA & 4) == 4) || (player->statusEffects & 0x08000000) || (player->statusEffects & 0x04000000)) {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[arg1 + (arg2 * 8) + 0x3CB]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gDisplayListHead++, D_0D008CD8);
        gDPLoadTLUT_pal256(gDisplayListHead++, D_80164B04);
        gDPSetTextureLUT(gDisplayListHead++, G_TT_RGBA16);
        func_8004B614(D_80164B10[arg1], D_80164B20[arg1], D_80164B30[arg1], D_80164B40[arg1], D_80164B50[arg1], D_80164B60[arg1], (s32) player->unk_0C6);
        gDPSetAlphaCompare(gDisplayListHead++, G_AC_DITHER);
        gDPSetRenderMode(gDisplayListHead++, G_RM_ZB_XLU_SURF, G_RM_ZB_XLU_SURF2);
    } else {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[arg1 + (arg2 * 8) + 0x3CB]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gDisplayListHead++, D_0D008CD8);
        gDPLoadTLUT_pal256(gDisplayListHead++, D_80164B04);
        gDPSetTextureLUT(gDisplayListHead++, G_TT_RGBA16);
        func_8004B614(D_80164B10[arg1], D_80164B20[arg1], D_80164B30[arg1], D_80164B40[arg1], D_80164B50[arg1], D_80164B60[arg1], (s32) player->unk_0C6);
        gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2);
    }
    gDPLoadTextureBlock(gDisplayListHead++, D_80164B08, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    gSPVertex(gDisplayListHead++, &D_800DDBB4[arg1][arg3], 4, 0);
    gSPDisplayList(gDisplayListHead++, D_0D008C78);
    gDPLoadTextureBlock(gDisplayListHead++, D_80164B0C, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    gSPVertex(gDisplayListHead++, &D_800DDBB4[arg1][arg3 + 4], 4, 0);
    gSPDisplayList(gDisplayListHead++, D_0D008C78);
    gSPTexture(gDisplayListHead++, 1, 1, 0, G_TX_RENDERTILE, G_OFF);
    gDPSetAlphaCompare(gDisplayListHead++, G_AC_NONE);
}

void func_800256F4(Player *player, s8 arg1, s8 arg2, s8 arg3) {
    s32 stackPadding00;
    Mat4 sp12C;
    s32 stackPadding01;
    s32 stackPadding02;
    s32 stackPadding03;
    s32 stackPadding04;
    s32 stackPadding05;
    s32 stackPadding06;
    s32 stackPadding07;
    s32 stackPadding08;
    s32 stackPadding09;
    s32 stackPadding10;
    s32 stackPadding11;
    s32 stackPadding12;
    s32 stackPadding13;
    s32 stackPadding14;
    s32 stackPadding15;
    s32 stackPadding16;
    s32 stackPadding17;
    Vec3f spDC;
    Vec3s spD4;
    f32 spD0;
    f32 spCC;
    f32 spC8;
    s32 stackPadding18;
    s16 spC2;
    s16 thing;

    if (arg2) {}
    if (D_8015F890 == 1) {
        spC2 = 0x00FF;
    } else {
        spC2 = 0x0070;
    }
    thing = (u16)(player->unk_048[arg2] - player->unk_02C[1]);
    spD4[0] = (-(s16)(sins(thing) * (0.0f * 0.0f)) * 0.8);
    spD4[1] = player->unk_048[arg2];
    spD4[2] = player->unk_050[arg2];
    func_80062B18(&spD0, &spCC, &spC8, 0, 1.5f, 0, -player->unk_048[arg2], player->unk_050[arg2]);
    spDC[1] = (player->pos[1] - player->boundingBoxSize) + (spCC - 2.0);
    spDC[0] = player->pos[0] + spD0;
    spDC[2] = player->pos[2] + spC8;
    D_80164B04 = &D_802F1F80[D_801651D0[arg2][arg1]][arg2][arg1 << 7];
    if ((arg2 == 0) || (arg2 == 1)) {
        D_80164B08 = &D_802BFB80[D_801651D0[arg2][arg1]][arg2][arg1].pixel_index_array[0];
        D_80164B0C = &D_802BFB80[D_801651D0[arg2][arg1]][arg2][arg1].pixel_index_array[0x7C0];
    } else {
        D_80164B08 = &D_802BFB80[D_801651D0[arg2][arg1]][arg2 - 1][arg1 - 4].pixel_index_array[0];
        D_80164B0C = &D_802BFB80[D_801651D0[arg2][arg1]][arg2 - 1][arg1 - 4].pixel_index_array[0x7C0];
    }
    func_80021E10(sp12C, spDC, spD4);
    func_80021F84(sp12C, D_800DDBD4[player->characterId] * player->unk_224);
    func_80022180(&gGfxPool->mtxPool[arg1 + (arg2 * 8) + 0x3CB], sp12C);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[arg1 + (arg2 * 8) + 0x3CB]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gDisplayListHead++, D_0D008CD8);
    gDPLoadTLUT_pal256(gDisplayListHead++, D_80164B04);
    gDPSetTextureLUT(gDisplayListHead++, G_TT_RGBA16);
    func_8004B614(D_80164B10[arg1], D_80164B20[arg1], D_80164B30[arg1], D_80164B40[arg1], D_80164B50[arg1], D_80164B60[arg1], spC2);
    gDPSetRenderMode(gDisplayListHead++, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_WRAP | ZMODE_XLU | CVG_X_ALPHA | FORCE_BL | GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA), AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_WRAP | ZMODE_XLU | CVG_X_ALPHA | FORCE_BL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA));
    gDPLoadTextureBlock(gDisplayListHead++, D_80164B08, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    gSPVertex(gDisplayListHead++, &D_800DDBB4[arg1][arg3], 4, 0);
    gSPDisplayList(gDisplayListHead++, D_0D008C78);
    gDPLoadTextureBlock(gDisplayListHead++, D_80164B0C, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    gSPVertex(gDisplayListHead++, &D_800DDBB4[arg1][arg3 + 4], 4, 0);
    gSPDisplayList(gDisplayListHead++, D_0D008C78);
    gSPTexture(gDisplayListHead++, 1, 1, 0, G_TX_RENDERTILE, G_OFF);
    gDPSetAlphaCompare(gDisplayListHead++, G_AC_NONE);
}

void func_80025DE8(Player *player, s8 arg1, s8 arg2, s8 arg3) {
    Mat4 spA8;
    Vec3f sp9C;
    Vec3s sp94;

    sp9C[0] = player->pos[0] + (sins(-player->unk_02C[1]) * -1.5);
    sp9C[1] = ((player->pos[1] - player->boundingBoxSize) + player->unk_108) + 0.1;
    sp9C[2] = player->pos[2] + (coss(-player->unk_02C[1]) * -1.5);
    sp94[0] = -0x00B6;
    sp94[1] = player->unk_048[arg2];
    sp94[2] = player->unk_050[arg2];
    func_80021E10(spA8, sp9C, sp94);
    func_80021F84(spA8, D_800DDBD4[player->characterId] * player->unk_224);
    func_80022180(&gGfxPool->mtxPool[D_80164AF0 + 0x3EB], spA8);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[D_80164AF0 + 0x3EB]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gDisplayListHead++, D_0D008D10);
    gDPSetTextureLUT(gDisplayListHead++, G_TT_RGBA16);
    func_8004B614((s32) D_80164B10[arg1], (s32) D_80164B20[arg1], (s32) D_80164B30[arg1], (s32) D_80164B40[arg1], (s32) D_80164B50[arg1], (s32) D_80164B60[arg1], 0x00000040);
    gDPSetRenderMode(gDisplayListHead++, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_WRAP | ZMODE_XLU | CVG_X_ALPHA | FORCE_BL | GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA), AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_WRAP | ZMODE_XLU | CVG_X_ALPHA | FORCE_BL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA));
    gDPLoadTextureBlock(gDisplayListHead++, D_80164B08, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    gSPVertex(gDisplayListHead++, &D_800DDBB4[arg1][arg3], 4, 0);
    gSPDisplayList(gDisplayListHead++, D_0D008C78);
    gDPLoadTextureBlock(gDisplayListHead++, D_80164B0C, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    gSPVertex(gDisplayListHead++, &D_800DDBB4[arg1][arg3 + 4], 4, 0);
    gSPDisplayList(gDisplayListHead++, D_0D008C78);
    gSPTexture(gDisplayListHead++, 1, 1, 0, G_TX_RENDERTILE, G_OFF);
    D_80164AF0 += 1;
}

void func_800262E0(Player *player, s8 arg1, s8 arg2, s8 arg3) {
    Mat4 spA8;
    Vec3f sp9C;
    Vec3s sp94;

    sp94[0] = 0;
    sp94[1] = player->unk_048[arg2];
    sp94[2] = player->unk_050[arg2] + 0x8000;
    sp9C[0] = player->pos[0];
    sp9C[1] = player->unk_074 + (4.0f * player->unk_224);
    sp9C[2] = player->pos[2];
    if (!(player->unk_002 & (4 << (arg2 * 4)))) {
        arg3 = 8;
    } else {
        arg3 = 0;
    }
    func_80021E10(spA8, sp9C, sp94);
    func_80021F84(spA8, D_800DDBD4[player->characterId] * player->unk_224);
    func_80022180(&gGfxPool->mtxPool[D_80164AF0 + 0x3EB], spA8);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[D_80164AF0 + 0x3EB]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gDisplayListHead++, D_0D008CD8);
    gDPSetTextureLUT(gDisplayListHead++, G_TT_RGBA16);
    func_8004B614((s32) D_80164B10[arg1], (s32) D_80164B20[arg1], (s32) D_80164B30[arg1], (s32) D_80164B40[arg1], (s32) D_80164B50[arg1], (s32) D_80164B60[arg1], (s16) player->unk_0C6 / 2);
    gDPSetRenderMode(gDisplayListHead++, G_RM_ZB_XLU_SURF, G_RM_ZB_XLU_SURF2);
    gDPLoadTextureBlock(gDisplayListHead++, D_80164B08, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    gSPVertex(gDisplayListHead++, &D_800DDBB4[arg1][arg3], 4, 0);
    gSPDisplayList(gDisplayListHead++, D_0D008C78);
    gDPLoadTextureBlock(gDisplayListHead++, D_80164B0C, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    gSPVertex(gDisplayListHead++, &D_800DDBB4[arg1][arg3 + 4], 4, 0);
    gSPDisplayList(gDisplayListHead++, D_0D008C78);
    gSPTexture(gDisplayListHead++, 1, 1, 0, G_TX_RENDERTILE, G_OFF);
    D_80164AF0 += 1;
}

void func_800267AC(Player *player, s8 arg1, s8 arg2) {
    s32 stackPadding0;
    s32 stackPadding1;
    s32 temp_t1;
    s32 var_v1;
    OSMesg *sp34;

    func_80026B4C(player, arg1, arg2, D_801651D0[arg2][arg1]);
    if (!(player->unk_002 & (4 << (arg2 * 4)))) {
        var_v1 = 0;
    } else {
        var_v1 = 8;
    }
    func_80023BF0(player, arg1, arg2, var_v1);
    temp_t1 = 8 << (arg2 * 4);
    if ((temp_t1 == (player->unk_002 & temp_t1)) && (player->unk_110.unk3C[2] <= 50.0f) && (player->unk_0F8 != 9)) {
        if ((player->unk_0BC & 0x80000000) == 0x80000000) {
            if (arg1 == arg2) {
                func_80023C84(player, arg1, arg2);
            }
        } else {
            func_80023C84(player, arg1, arg2);
        }
    }
    if ((player->unk_000 & 0x100) != 0x100) {
        func_800248D0(player, arg1, arg2, var_v1);
    } else {
        func_800256F4(player, arg1, arg2, var_v1);
    }
    osRecvMesg(&gDmaMesgQueue, &sp34, OS_MESG_BLOCK);
    if ((temp_t1 == (player->unk_002 & temp_t1)) && (player->unk_0F8 == 9) && ((player->unk_0CA & 1) != 1) && (player->unk_110.unk3C[2] <= 30.0f)) {
        func_800262E0(player, arg1, arg2, var_v1);
    }
    if (player->boostPower >= 2.0f) {
        func_80025DE8(player, arg1, arg2, var_v1);
    }
}

void func_80026A48(Player *player, s8 arg1) {
    f32 temp_f0;

    if (((player->unk_0BC & 0x4000) == 0x4000) && ((player->unk_000 & 0x2000) == 0)) {
        player->unk_240 += D_800DDE74[8];
        if (player->unk_240 >= 0x400) {
            player->unk_240 = 0;
        }
        return;
    }

    temp_f0 = ((player->unk_094 * (1.0f + player->unk_104)) / 18.0f) * 216.0f;
    if ((temp_f0 <= 1.0f) || (D_80165520[arg1] == 1)) {
        player->unk_240 = 0;
    } else {
        player->unk_240 += D_800DDE74[(s32)(temp_f0 / 12.0f)];
    }
    if (player->unk_240 >= 0x400) {
        player->unk_240 = 0;
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit b52d92c2340f6f4ba1aafb464188bb698752fbb0 on Jul-30-2023
typedef u8 wheels[4][128];

extern wheels gKartMario168Wheel0;

extern wheels *gKartMarioWheels0[];

extern wheels **D_800DDE34[];
extern wheels **D_800DDE54[];
void func_80026B4C(Player *player, s8 arg1, s8 arg2, s8 arg3) {
    s16 temp_t0;
    s16 temp_t1;
    s16 temp_t2;
    s32 temp_v0;
    s32 temp_v1;

    temp_v1 = player->unk_0BC;
    temp_v0 = arg1 * 2;
    temp_t0 = *(D_801650D0 + ((arg2 * 0x10) + temp_v0));
    temp_t1 = *(D_80165110 + ((arg2 * 0x10) + temp_v0));
    temp_t2 = player->unk242;
    if (((temp_v1 & 0x4000) == 0x4000) && !(player->unk_000 & 0x2000)) {
        if (((temp_v1 & 0x80) != 0x80) && ((temp_v1 & 0x40) != 0x40) && ((temp_v1 & 0x20000) != 0x20000) && ((temp_v1 & 0x80000) != 0x80000) && ((temp_v1 & 0x800000) != 0x800000) && !(player->unk_044 & 0x800)) {
            if (temp_t0 < 0x15) {
                func_80027C74(player, (s32) D_800DDE34[player->characterId][temp_t1][temp_t0][temp_t2 >> 8], (arg3 << 0xE) + (arg2 << 0xC) + (arg1 << 9) + 0x180 + D_802F1F80, 0x0080U);
                return;
            }
            func_80027C74(player, (s32) (D_800DDE54[player->characterId][temp_t1] + (((temp_t0 << 8) - 0x1500) * 2) + ((temp_t2 >> 8) << 7) + 0xC00), (arg3 << 0xE) + (arg2 << 0xC) + (arg1 << 9) + 0x180 + D_802F1F80, 0x0080U);
            return;
        }
        if (temp_t0 == 0) {
            func_80027C74(player, (s32) D_800DDE34[player->characterId][temp_t1][temp_t0][temp_t2 >> 8], (arg3 << 0xE) + (arg2 << 0xC) + (arg1 << 9) + 0x180 + D_802F1F80, 0x0080U);
            return;
        }
        func_80027C74(player, (s32) D_800DDE54[player->characterId][temp_t1][temp_t0][temp_t2 >> 8], (arg3 << 0xE) + (arg2 << 0xC) + (arg1 << 9) + 0x180 + D_802F1F80, 0x0080U);
        return;
    }
    if (((temp_v1 & 0x80) != 0x80) && ((temp_v1 & 0x40) != 0x40) && ((temp_v1 & 0x80000) != 0x80000) && ((temp_v1 & 0x800000) != 0x800000) && ((temp_v1 & 0x20000) != 0x20000) && !(player->unk_044 & 0x800)) {
        if (temp_t0 < 0x15) {
            func_80027C74(player, (s32) D_800DDE34[player->characterId][temp_t1][temp_t0][temp_t2 >> 8], (arg3 << 0xE) + (arg2 << 0xC) + (arg1 << 9) + 0x180 + D_802F1F80, 0x0080U);
            return;
        }
        func_80027C74(player, (s32) (D_800DDE54[player->characterId][temp_t1] + (((temp_t0 << 8) - 0x1500) * 2) + ((temp_t2 >> 8) << 7) + 0xC00), (arg3 << 0xE) + (arg2 << 0xC) + (arg1 << 9) + 0x180 + D_802F1F80, 0x0080U);
        return;
    }
    if (temp_t0 == 0) {
        func_80027C74(player, (s32) D_800DDE34[player->characterId][temp_t1][temp_t0][temp_t2 >> 8], (arg3 << 0xE) + (arg2 << 0xC) + (arg1 << 9) + 0x180 + D_802F1F80, 0x0080U);
        return;
    }
    func_80027C74(player, (s32) D_800DDE54[player->characterId][temp_t1][temp_t0][temp_t2 >> 8], (arg3 << 0xE) + (arg2 << 0xC) + (arg1 << 9) + 0x180 + D_802F1F80, 0x0080U);
}
#else
GLOBAL_ASM("asm/non_matchings/code_8001F980/func_80026B4C.s")
#endif

UNUSED void func_8002701C(void) {

}

UNUSED void func_80027024(UNUSED s32 arg0, UNUSED s32 arg1, UNUSED s32 arg2) {

}
