#include <ultra64.h>
#include <macros.h>
#include <common_structs.h>
#include <defines.h>
#include "camera.h"
#include "math_util.h"
#include "memory.h"
#include "waypoints.h"
#include "variables.h"
#include "code_8001F980.h"
#include "code_802AAA70.h"
#include <libc/math.h>

//#pragma intrinsic (sqrtf)

f32 sqrtf(f32);

f32 D_800DDB30[] = { 0.4f, 0.6f, 0.275f, 0.3f };

Camera cameras[4];
Camera *camera1 = &cameras[0];
Camera *camera2 = &cameras[1];
Camera *camera3 = &cameras[2];
Camera *camera4 = &cameras[3];

// Future BSS section, replaces unknown amount of stuff in bss_8001C4D0.s
// f32 D_80164A30;
// s32 D_80164A2C;
// f32 D_8016524C; <- could maybe, maybe be part of spawn_players' bss stuff?

void func_80014DE4(s32);
extern f32 D_80164498[];
extern s16 D_80164678[];
extern f32 D_801649D8[]; // f32[4]
extern f32 D_801649E8[]; // f32[4]
extern f32 D_801649F8[]; // f32[4]
extern s32 D_80164A08[];
extern s32 D_80164A18[];
extern s32 D_80164A2C;
extern f32 D_80164A30;
extern f32 D_80164A38[4];
extern f32 D_80164A48[4];
extern f32 D_80164A78[];
extern s8 D_80164A88;
extern s8 D_80164A89;
extern f32 D_80150130[4];

void camera_init(f32 posX, f32 posY, f32 posZ, UNUSED s16 rot, u32 arg4, s32 cameraId) {
    Player *player = gPlayerOne;
    Camera *camera = &cameras[cameraId];

    D_80152300[cameraId] = arg4;
    switch (arg4) {
    case 0:
    case 1:
    case 3:
    case 8:
    case 9:
    case 10:
        D_80164A89 = 0;
        camera->pos[0] = posX;
        camera->pos[1] = posY;
        camera->pos[2] = posZ;
        camera->someBitFlags = 0;
        camera->lookAt[0] = 0.0f;
        camera->lookAt[2] = 150.0f;
        camera->lookAt[1] = posY - 3.0;
        camera->up[0] = 0.0f;
        camera->up[1] = 1.0f;
        camera->up[2] = 0.0f;
        camera->playerId = (s16) cameraId;
        camera->unk_B0 = 0;
        camera->unk_A0 = 0.0f;

        D_801649D8[cameraId] = 20.0f;
        D_801649E8[cameraId] = 10.0f;
        D_801649F8[cameraId] = 7.0f;
        D_80164A2C = 0;
        D_80164A30 = 30.0f;
        D_80164A38[cameraId] = 0.0f;
        D_80164A48[cameraId] = 0.0f;

        D_80164A90[cameraId] = 0.0f;
        D_80164AA0[cameraId] = 0.0f;
        D_80164A78[cameraId] = D_800DDB30[gActiveScreenMode];
        D_80164A18[cameraId] = 0;
        D_80164A08[cameraId] = 0;
        D_80164498[cameraId] = 0.0f;
        camera->unk_94.unk_8 = 0;
        camera->unk_94.unk_0 = 0.0f;

        player += cameraId;
        camera->unk_2C = player->unk_02C[1];
        camera->unk_AC = player->unk_02C[1];
        switch (gActiveScreenMode) {
        case SCREEN_MODE_1P:
        case SCREEN_MODE_2P_SPLITSCREEN_VERTICAL:
            if (gModeSelection == BATTLE) {
                camera->unk_30[0] = 0.0f;
                camera->unk_30[1] = 11.6f;
                camera->unk_30[2] = -38.5f;
                camera->unk_3C[0] = 0.0f;
                camera->unk_3C[1] = 0.0f;
                camera->unk_3C[2] = 19.2f;
                D_80164A88 = 0;
            } else {
                camera->unk_30[0] = 0.0f;
                camera->unk_30[1] = 9.5f;
                camera->unk_30[2] = -50.0f;
                camera->unk_3C[0] = 0.0f;
                camera->unk_3C[1] = 0.0f;
                camera->unk_3C[2] = 70.0f;
            }
            break;
        case SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL:
            if (gModeSelection == BATTLE) {
                camera->unk_30[0] = 0.0f;
                camera->unk_30[1] = 11.6f;
                camera->unk_30[2] = -38.5f;
                camera->unk_3C[0] = 0.0f;
                camera->unk_3C[1] = 0.0f;
                camera->unk_3C[2] = 19.2f;
            } else {
                camera->unk_30[0] = 0.0f;
                camera->unk_30[1] = 9.6f;
                camera->unk_30[2] = -35.0f;
                camera->unk_3C[0] = 0.0f;
                camera->unk_3C[1] = 0.0f;
                camera->unk_3C[2] = 30.0f;
            }
            break;
        case SCREEN_MODE_3P_4P_SPLITSCREEN:
            if (gModeSelection == BATTLE) {
                camera->unk_30[0] = 0.0f;
                camera->unk_30[1] = 11.6f;
                camera->unk_30[2] = -38.5f;
                camera->unk_3C[0] = 0.0f;
                camera->unk_3C[1] = 0.0f;
                camera->unk_3C[2] = 19.2f;
            } else {
                camera->unk_30[0] = 0.0f;
                camera->unk_30[1] = 9.0f;
                camera->unk_30[2] = -40.0f;
                camera->unk_3C[0] = 0.0f;
                camera->unk_3C[1] = 0.0f;
                camera->unk_3C[2] = 18.0f;
            }
            break;
        }

        func_80014DE4(cameraId);

        if (D_80164678[cameraId] == 0) {
            if (D_80164A28 == 1) {
                D_80150130[cameraId] = 80.0f;
            } else {
                D_80150130[cameraId] = 40.0f;
            }
            camera->unk_B4 = D_80150130[cameraId];
        }
        if (D_80164678[cameraId] == 1) {
            if (D_80164A28 == 1) {
                D_80150130[cameraId] = 100.0f;
            } else {
                D_80150130[cameraId] = 60.0f;
            }
            camera->unk_B4 = D_80150130[cameraId];
        }
        if (D_80164678[cameraId] == 2) {
            if (D_80164A28 == 1) {
                D_80150130[cameraId] = 100.0f;
            } else {
                D_80150130[cameraId] = 60.0f;
            }
            camera->unk_B4 = D_80150130[cameraId];
            D_80164A38[cameraId] = 20.0f;
            D_80164A48[cameraId] = 1.5f;
            D_80164A78[cameraId] = 1.0f;
        }
        break;
    }
    func_802B7F7C(camera->pos, camera->lookAt, camera->rot);
}

void func_8001CA10(Camera *camera) {
    camera->unk_94.unk_8 = 0;
    camera->unk_94.unk_0 = 6.0f;
}

void func_8001CA24(Player *player, f32 arg1) {
    Camera *camera = &cameras[0];

    if (player == gPlayerTwo) {
        camera += 1;
    }
    if (player == gPlayerThree) {
        camera += 2;
    }
    if (player == gPlayerFour) {
        camera += 3;
    }
    camera->unk_94.unk_8 = 0;
    camera->unk_94.unk_0 = arg1;
}

void func_8001CA78(UNUSED Player *player, Camera *camera, Vec3f arg2, f32 *arg3, f32 *arg4, f32 *arg5, UNUSED s32 huh, UNUSED s32 wut) {
    Mat3 sp74;
    Vec3f sp68;
    Vec3f sp5C;
    f32 posX;
    f32 posY;
    f32 posZ;
    f32 var_f14;
    f32 temp_f18;
    f32 temp_f16;
    UNUSED s32 pad;
    struct TrackWayPoint *temp_s2;

    temp_s2 = &D_80164550[0][gWaypointCountByPathIndex[0] - 10];
    sp68[0] = camera->unk_30[0];
    sp68[1] = camera->unk_30[1];
    sp68[2] = camera->unk_30[2];
    sp5C[0] = camera->unk_3C[0];
    sp5C[1] = camera->unk_3C[1];
    sp5C[2] = camera->unk_3C[2];
    arg2[0] = camera->lookAt[0];
    arg2[1] = camera->lookAt[1];
    arg2[2] = camera->lookAt[2];
    func_802B6540(sp74, 0, 1, 0, -0x00008000);
    func_802B63B8(sp5C, sp74);
    if (gCurrentCourseId == COURSE_TOADS_TURNPIKE) {
        var_f14 = sp5C[0];
    } else {
        var_f14 = sp5C[0] + temp_s2->wayPointX;
    }
    temp_f16 = sp5C[2] + D_8016524C;
    temp_f18 = sp5C[1] + (temp_s2->wayPointY + D_80164A30);
    arg2[0] += (var_f14 - camera->lookAt[0]) * 1;
    arg2[1] += (temp_f18 - camera->lookAt[1]) * 1;
    arg2[2] += (temp_f16 - camera->lookAt[2]) * 1;
    func_802B63B8(sp68, sp74);
    if (gCurrentCourseId == COURSE_TOADS_TURNPIKE) {
        var_f14 = sp68[0];
    } else {
        var_f14 = sp68[0] + temp_s2->wayPointX;
    }
    temp_f16 = sp68[2] + D_8016524C;
    temp_f18 = sp68[1] + (temp_s2->wayPointY + D_80164A30 + 6.0f);
    move_f32_towards(&D_80164A30, 0, 0.02f);
    posX = camera->pos[0];
    *arg3 = ((var_f14 - posX) * 1) + posX;
    posY = camera->pos[1];
    *arg4 = ((temp_f18 - posY) * 1) + posY;
    posZ = camera->pos[2];
    *arg5 = ((temp_f16 - posZ) * 1) + posZ;
}

//generated by m2c commit bece1d6db17040749f77dbbd090363cc6fb926f9
void func_8001CCEC(Player *player, Camera *camera, Vec3f arg2, f32 *arg3, f32 *arg4, f32 *arg5, UNUSED s32 *arg6, s16 arg7, s16 index) {
    Mat3 sp9C;
    Vec3f sp90;
    Vec3f sp84;
    UNUSED s32 pad[3];
    f32 x;
    f32 y;
    f32 z;
    UNUSED s32 pad2;
    f32 var_f2;
    s16 var_v1;
    f32 temp_f0;
    f32 var_f0;
    s16 var_v0;
    f32 temp_f12;

    var_v1 = player->unk_DB4.unk0;
    var_f2 = player->unk_DB4.unk8;

    var_v1++;
    temp_f0 = (( var_f2 * var_v1) - (0.7 * (var_v1 * var_v1)));
    if ((var_v1 != 0) && (temp_f0 < 0)) {
        var_v1 = 0;
        var_f2 *= 0.8;
        if (var_f2 <= 0.1) {
            var_f2 = 0;
        }
    }
    if (temp_f0 <= 0) {
        temp_f0 = 0;
    }
    player->unk_DB4.unk0 = var_v1;
    player->unk_DB4.unk8 = var_f2;
    var_v0 = camera->unk_94.unk_8;
    var_f0 = camera->unk_94.unk_0;
    var_v0++;
    temp_f12 = (var_v0 * var_f0) - (1.25 * (var_v0 * var_v0));
    if ((var_v0 != 0) && (temp_f12 < 0)) {
        var_v0 = 0;
        var_f0 *= 0.9;
        if (var_f0 <= 0.1) {
            var_f0 = 0;
        }
    }
    if (temp_f12 <= 0) {
        temp_f12 = 0;
        // fakematch
        if (!var_v0) {}
    }
    camera->unk_94.unk_8 = var_v0;
    camera->unk_94.unk_0 = var_f0;
    if (D_80164678[index] == 2) {
        move_f32_towards(&D_80164A38[index], 20.0f, 0.1f);
        move_f32_towards(&D_80164A48[index], 1.5f, 0.1f);
        D_80164A78[index] += 0.1;
        if (D_80164A78[index] >= 1) 
            D_80164A78[index] = 1;
        
    } else {
        move_f32_towards(&D_80164A38[index], 0, 0.1f);
        move_f32_towards(&D_80164A48[index], 0, 0.1f);
        D_80164A78[index] -= 0.1;
        if (D_800DDB30[gActiveScreenMode] >= D_80164A78[index]) 
            D_80164A78[index] = D_800DDB30[gActiveScreenMode];
        
    }
    if ((player->unk_0CA & 0x100) == 0x100) {
        switch(gActiveScreenMode) {
            case SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL:
            case SCREEN_MODE_2P_SPLITSCREEN_VERTICAL:
            case SCREEN_MODE_3P_4P_SPLITSCREEN:
                move_f32_towards(&D_80164A90[index], 20, 0.02f);
                move_f32_towards(&D_80164AA0[index], 10, 0.02f);
            break;
            default:
                if (gCurrentCourseId == 4) {
                    move_f32_towards(&D_80164A90[index], 50, 0.04f);
                    move_f32_towards(&D_80164AA0[index], 35, 0.04f);
                } else {
                    move_f32_towards(&D_80164A90[index], 40, 0.02f);
                    move_f32_towards(&D_80164AA0[index], 20, 0.02f);
                }
                break;
        }
    } else {
        move_f32_towards(&D_80164A90[index], 0, 0.04f);
        move_f32_towards(&D_80164AA0[index], 0, 0.04f);
    }
    sp90[0] = camera->unk_30[0];
    sp90[1] = camera->unk_30[1] + (player->unk_DB4.unk1E * 0.85) - D_80164A48[index] + D_80164AA0[index] + (temp_f12 / 2);
    sp90[2] = camera->unk_30[2] + temp_f0 + D_80164A38[index];
    sp84[0] = camera->unk_3C[0];
    sp84[1] = camera->unk_3C[1] + (player->unk_DB4.unk1E * 0.85) + temp_f12;
    sp84[2] = camera->unk_3C[2] + temp_f0 - D_80164A90[index];
    arg2[0] = camera->lookAt[0];
    arg2[1] = camera->lookAt[1];
    arg2[2] = camera->lookAt[2];
    if ((player->unk_0BC & 0x01000000) == 0x01000000) {
        sp84[2] /= 3.0f;
    }
    func_802B6540(sp9C, 0, 1, 0, arg7);
    func_802B63B8(sp84, sp9C);

    x = player->pos[0] + sp84[0];
    z = player->pos[2] + sp84[2];
    y = player->pos[1] + sp84[1];

    arg2[0] += (x - camera->lookAt[0]) * D_80164A78[index];
    arg2[2] += ((z - camera->lookAt[2]) * D_80164A78[index]);
    
    if ((((player->unk_094 / 18) * 216) <= 5.0f) && ((player->unk_0BC & 2) == 2)) {
        arg2[1] += ((y - camera->lookAt[1]) * 0.02);
    } else {
        arg2[1] += ((y - camera->lookAt[1]) * 0.5);
    }
    func_802B63B8(sp90, sp9C);
    x = player->pos[0] + sp90[0];
    z = player->pos[2] + sp90[2];
    if ((player->unk_0BC & 0x01000000) != 0x01000000) {
        var_f0 = player->pos[1] + sp90[1];
        // permute
        y = var_f0;
    } else {
        y = player->unk_074 + player->boundingBoxSize + sp90[1];
    }

    *arg3 = camera->pos[0] + ((x - camera->pos[0]) * D_80164A78[index]);
    *arg5 = camera->pos[2] + ((z - camera->pos[2]) * D_80164A78[index]);
    
    if ((((player->unk_094 / 18) * 216) <= 5.0f) && ((player->unk_0BC & 2) == 2)) {
        *arg4 = camera->pos[1] + (((y - camera->pos[1]) * 0.01));
    } else {
        *arg4 = camera->pos[1] + (((y - camera->pos[1]) * 0.15));
    }

    if ((player->unk_0DE & 1) != 0) {
        *arg4 = D_801652A0[index];
    }
}

void func_8001D53C(Player *player, Camera *camera, Vec3f arg2, f32 *arg3, f32 *arg4, f32 *arg5, s16 arg6, s16 arg7) {
    Mat3 sp74;
    Vec3f sp68;
    Vec3f sp5C;
    f32 stackPadding0;
    f32 stackPadding1;
    f32 stackPadding2;
    UNUSED f32 pad[4];
    f32 thing;

    if (((u16) player->unk_222 == 0) && (camera->unk_A0 == 0.0f)) {
        camera->unk_A0 = 0.0f;
    }
    if ((u16) player->unk_222 != 4) {
        move_f32_towards(&camera->unk_A0, 20.0f, 0.06f);
    } else {
        move_f32_towards(&camera->unk_A0, 0.0f, 0.06f);
    }
    thing = D_801652A0[arg7];
    sp68[0] = camera->unk_30[0];
    sp68[1] = camera->unk_30[1];
    sp68[2] = camera->unk_30[2];
    sp5C[0] = camera->unk_3C[0];
    sp5C[1] = camera->unk_3C[1] + camera->unk_A0;
    sp5C[2] = camera->unk_3C[2];
    arg2[0] = camera->lookAt[0];
    arg2[1] = camera->lookAt[1];
    arg2[2] = camera->lookAt[2];
    func_802B6540(sp74, 0.0f, 1.0f, 0.0f, arg6);
    func_802B63B8(sp5C, sp74);
    stackPadding0 = player->pos[0] + sp5C[0];
    stackPadding2 = player->pos[2] + sp5C[2];
    stackPadding1 = player->pos[1] + sp5C[1];
    arg2[0] += (stackPadding0 - camera->lookAt[0]) * 1;
    arg2[2] += (stackPadding2 - camera->lookAt[2]) * 1;
    arg2[1] += (stackPadding1 - camera->lookAt[1]) * 1;
    func_802B63B8(sp68, sp74);
    stackPadding0 = player->pos[0] + sp68[0];
    stackPadding2 = player->pos[2] + sp68[2];
    stackPadding1 = sp68[1] + (player->unk_074 + 1.5);
    if ((player->unk_0CA & 1) == 1) {
        stackPadding1 = sp68[1] + (thing + 10.0f);
    }
    *arg3 = stackPadding0;
    *arg4 = stackPadding1;
    *arg5 = stackPadding2;
    D_80164A90[arg7] = 0.0f;
    D_80164AA0[arg7] = 0.0f;
}

void func_8001D794(Player *player, Camera *camera, Vec3f arg2, f32 *arg3, f32 *arg4, f32 *arg5, s16 arg6) {
    Mat3 sp6C;
    Vec3f sp60;
    Vec3f sp54;
    UNUSED f32 stackPadding[4];
    f32 test1;
    f32 test2;
    f32 test3;

    sp60[0] = camera->unk_30[0];
    sp60[1] = camera->unk_30[1];
    sp60[2] = camera->unk_30[2] - 6;

    sp54[0] = camera->unk_3C[0];
    sp54[1] = camera->unk_3C[1];
    sp54[2] = camera->unk_3C[2];

    arg2[0] = camera->lookAt[0];
    arg2[1] = camera->lookAt[1];
    arg2[2] = camera->lookAt[2];

    func_802B6540(sp6C, 0, 1, 0, arg6);
    func_802B63B8(sp54, sp6C);

    test1 = player->pos[0] + sp54[0];
    test3 = player->pos[2] + sp54[2];
    test2 = player->pos[1] + sp54[1];
    arg2[0] += (test1 - camera->lookAt[0]) * 1;
    arg2[1] += (test2 - camera->lookAt[1]) * 1;
    arg2[2] += (test3 - camera->lookAt[2]) * 1;

    func_802B63B8(sp60, sp6C);

    test1 = player->pos[0] + sp60[0];
    test3 = player->pos[2] + sp60[2];
    test2 = player->pos[1] + sp60[1];
    *arg3 = camera->pos[0] + ((test1 - camera->pos[0]) * 1);
    *arg4 = camera->pos[1] + ((test2 - camera->pos[1]) * 1);
    *arg5 = camera->pos[2] + ((test3 - camera->pos[2]) * 1);
}

void func_8001D944(Player *player, Camera *camera, Vec3f arg2, f32 *arg3, f32 *arg4, f32 *arg5, UNUSED s32 *arg6, s16 arg7, s16 index) {
    Mat3 sp9C;
    Vec3f sp90;
    Vec3f sp84;
    UNUSED s32 pad[3];
    f32 x;
    f32 y;
    f32 z;
    UNUSED s32 pad2;
    f32 var_f2;
    s16 var_v1;
    f32 temp_f0;
    f32 var_f0;
    s16 var_v0;
    f32 temp_f12;

    var_v1 = player->unk_DB4.unk0;
    var_f2 = player->unk_DB4.unk8;

    var_v1++;
    temp_f0 = (( var_f2 * var_v1) - (0.7 * (var_v1 * var_v1)));
    if ((var_v1 != 0) && (temp_f0 < 0)) {
        var_v1 = 0;
        var_f2 *= 0.8;
        if (var_f2 <= 0.1) {
            var_f2 = 0;
        }
    }
    if (temp_f0 <= 0) {
        temp_f0 = 0;
    }
    player->unk_DB4.unk0 = var_v1;
    player->unk_DB4.unk8 = var_f2;
    var_v0 = camera->unk_94.unk_8;
    var_f0 = camera->unk_94.unk_0;
    var_v0++;
    temp_f12 = (var_v0 * var_f0) - (1.25 * (var_v0 * var_v0));
    if ((var_v0 != 0) && (temp_f12 < 0)) {
        var_v0 = 0;
        var_f0 *= 0.9;
        if (var_f0 <= 0.1) {
            var_f0 = 0;
        }
    }
    if (temp_f12 <= 0) {
        temp_f12 = 0;
        // fakematch
        if (!var_v0) {}
    }
    camera->unk_94.unk_8 = var_v0;
    camera->unk_94.unk_0 = var_f0;
    if (D_80164678[index] == 2) {
        move_f32_towards(&D_80164A38[index], 20.0f, 0.1f);
        move_f32_towards(&D_80164A48[index], 1.5f, 0.1f);
        D_80164A78[index] += 0.1;
        if (D_80164A78[index] >= 1) 
            D_80164A78[index] = 1;
        
    } else {
        move_f32_towards(&D_80164A38[index], 0, 0.1f);
        move_f32_towards(&D_80164A48[index], 0, 0.1f);
        D_80164A78[index] -= 0.1;
        if (D_800DDB30[gActiveScreenMode] >= D_80164A78[index]) 
            D_80164A78[index] = D_800DDB30[gActiveScreenMode];
        
    }
    if ((player->unk_0CA & 0x100) == 0x100) {
        
        move_f32_towards(&D_80164A90[index], 15, 0.02f);
        move_f32_towards(&D_80164AA0[index], 20, 0.02f);
    } else {
        move_f32_towards(&D_80164A90[index], 0, 0.02f);
        move_f32_towards(&D_80164AA0[index], 0, 0.02f);
    }
    sp90[0] = camera->unk_30[0];
    sp90[1] = camera->unk_30[1] + (player->unk_DB4.unk1E * 0.85) - D_80164A48[index] + D_80164AA0[index] + (temp_f12 / 2);
    sp90[2] = camera->unk_30[2] + temp_f0 + D_80164A38[index] + D_80164AA0[index];
    sp84[0] = camera->unk_3C[0];
    sp84[1] = camera->unk_3C[1] + (player->unk_DB4.unk1E * 0.85) + temp_f12;
    sp84[2] = camera->unk_3C[2] + temp_f0 - D_80164A90[index];
    arg2[0] = camera->lookAt[0];
    arg2[1] = camera->lookAt[1];
    arg2[2] = camera->lookAt[2];
    if ((player->unk_0BC & 0x01000000) == 0x01000000) {
        sp84[2] /= 3.0f;
    }
    func_802B6540(sp9C, 0, 1, 0, arg7);
    func_802B63B8(sp84, sp9C);

    x = player->pos[0] + sp84[0];
    z = player->pos[2] + sp84[2];
    y = player->pos[1] + sp84[1];

    arg2[0] += (x - camera->lookAt[0]) * D_80164A78[index];
    arg2[2] += ((z - camera->lookAt[2]) * D_80164A78[index]);
    
    if ((((player->unk_094 / 18) * 216) <= 5.0f) && ((player->unk_0BC & 2) == 2)) {
        arg2[1] += ((y - camera->lookAt[1]) * 0.02);
    } else {
        arg2[1] += ((y - camera->lookAt[1]) * 0.5);
    }
    func_802B63B8(sp90, sp9C);
    x = player->pos[0] + sp90[0];
    z = player->pos[2] + sp90[2];
    if ((player->unk_0BC & 0x01000000) != 0x01000000) {
        var_f0 = player->pos[1] + sp90[1];
        // permute
        y = var_f0;
    } else {
        y = player->unk_074 + player->boundingBoxSize + sp90[1];
    }

    *arg3 = camera->pos[0] + ((x - camera->pos[0]) * D_80164A78[index]);
    *arg5 = camera->pos[2] + ((z - camera->pos[2]) * D_80164A78[index]);
    
    if ((((player->unk_094 / 18) * 216) <= 5.0f) && ((player->unk_0BC & 2) == 2)) {
        *arg4 = camera->pos[1] + (((y - camera->pos[1]) * 0.01));
    } else {
        *arg4 = camera->pos[1] + (((y - camera->pos[1]) * 0.15));
    }

    if ((player->unk_0DE & 1) != 0) {
        *arg4 = D_801652A0[index];
    }
}

void func_8001E0C4(Camera *camera, Player *player, s8 arg2) {
    UNUSED s32 pad[6];
    f32 temp_f12;
    f32 sp80;
    f32 temp_f14;
    UNUSED s32 pad2;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    Vec3f sp60;
    s16 temp_t7;
    s16 var_a2;
    UNUSED s32 pad3[8];
    s32 test = 3;

    if (player->unk_078 == 0) {
        var_a2 = 0x0064;
    } else if (player->unk_078 < 0) {
        var_a2 = 0x87 - (player->unk_078 / 3);
    } else {
        var_a2 = (player->unk_078 / 3) + 0x87;
    }
    func_800224F0(&camera->unk_2C, player->unk_02C[1], var_a2);
    func_8001CA78(player, camera, sp60, &sp74, &sp70, &sp6C, camera->unk_2C, arg2);
    camera->someBitFlags &= ~0x0004;
    temp_t7 = func_802ADDC8(&camera->unk_54, test, sp74, sp70, sp6C);
    if (camera->unk_54.unk3C[2] < 0.0f) {
        sp74 += -camera->unk_54.unk60[0] * camera->unk_54.unk3C[2] * 1;
        sp70 += -camera->unk_54.unk60[1] * camera->unk_54.unk3C[2] * 0.5;
        sp6C += -camera->unk_54.unk60[2] * camera->unk_54.unk3C[2] * 1;
    }
    if (camera->unk_54.unk3C[0] < 0.0f) {
        camera->someBitFlags = camera->someBitFlags | 4 | 2;
        sp74 += -camera->unk_54.unk48[0] * camera->unk_54.unk3C[0] * 1.5;
        sp70 += -camera->unk_54.unk48[1] * camera->unk_54.unk3C[0] * 1;
        sp6C += -camera->unk_54.unk48[2] * camera->unk_54.unk3C[0] * 1.5;
    }
    if (camera->unk_54.unk3C[1] < 0.0f) {
        camera->someBitFlags = camera->someBitFlags | 4 | 2;
        sp74 += -camera->unk_54.unk54[0] * camera->unk_54.unk3C[1] * 1.5;
        sp70 += -camera->unk_54.unk54[1] * camera->unk_54.unk3C[1] * 1;
        sp6C += -camera->unk_54.unk54[2] * camera->unk_54.unk3C[1] * 1.5;
    }
    if ((temp_t7 == 0) && ((camera->someBitFlags & 2) != 2)) {
        camera->unk_AC = camera->unk_2C;
    }
    camera->lookAt[0] = sp60[0];
    camera->lookAt[1] = sp60[1];
    camera->lookAt[2] = sp60[2];
    camera->pos[0] = sp74;
    camera->pos[1] = sp70;
    camera->pos[2] = sp6C;
    temp_f12 = camera->lookAt[0] - camera->pos[0];
    sp80 = camera->lookAt[1] - camera->pos[1];
    temp_f14 = camera->lookAt[2] - camera->pos[2];
    camera->rot[1] = atan2s(temp_f12, temp_f14);
    camera->rot[0] = atan2s(sqrtf((temp_f12 * temp_f12) + (temp_f14 * temp_f14)), sp80);
    camera->rot[2] = 0;
}

// This function has a few stack variables.
void func_8001E45C(Camera *camera, Player *player, s8 arg2) {
    UNUSED s32 pad[6];
    f32 temp_f12;
    f32 sp90;
    f32 temp_f14;
    UNUSED s32 pad2;
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    UNUSED s32 pad3[3];
    Vec3f sp64;
    UNUSED s32 pad4[2];
    s32 sp58;
    UNUSED s16 pad5[4];
    s16 var_a3;
    UNUSED s16 pad6;
    s16 temp;

    if ((player->unk_0BC & 0x10) == 0x10) {
        var_a3 = 100;
        if (player->unk_078 == 0) {
            camera->unk_B0 = 0;
        } else {
            if (player->unk_078 < 0) {
                var_a3 = 0xA5 - (player->unk_078 / 2);
                if ((player->unk_0BC & 0x20000000) == 0x20000000) {
                    move_s16_towards(&camera->unk_B0, -0x0B60, 0.1f);
                } else {
                    move_s16_towards(&camera->unk_B0, -0x0888, 0.1f);
                }
            } else {
                var_a3 = (player->unk_078 / 2) + 0xA5;
                if ((player->unk_0BC & 0x20000000) == 0x20000000) {
                    move_s16_towards(&camera->unk_B0, 0x0B60, 0.1f);
                } else {
                    move_s16_towards(&camera->unk_B0, 0x0888, 0.1f);
                }
            }
        }
    } else {
        move_s16_towards(&camera->unk_B0, 0, 0.05f);
        var_a3 = ((s16) camera->unk_2C / 182) - ((s16) player->unk_02C[1] / 182);
        if (player->unk_078 == 0) {
            if ((player->unk_0BC & 0x20) == 0x20) {
                var_a3 = 0x02D8;
            } else {
                var_a3 = 0x01F4;
            }
        } else if (player->unk_078 < 0) {
            if ((var_a3 <= -70) || (var_a3 >= 70)) {
                var_a3 = 0xB4 - player->unk_078;
            } else {
                var_a3 = 0xA5 - (player->unk_078 / 2);
            }
        } else if ((var_a3 <= -70) || (var_a3 >= 0x46)) {
            var_a3 = player->unk_078 + 0xB4;
        } else {
            var_a3 = (player->unk_078 / 2) + 0xA5;
        }
    }
    if (((player->unk_0BC & 0x80) == 0x80) || ((player->unk_0BC & 0x40) == 0x40) || 
    ((player->unk_0BC & 0x4000) == 0x4000) || ((player->unk_0BC & 0x80000) == 0x80000) || 
    ((player->unk_0BC & 0x800000) == 0x800000) || (((player->unk_0BC & 0x20) == 0x20) && (player->unk_078 != 0)) || 
    (player->unk_110.unk3C[0] <= 0.0f) || (player->unk_110.unk3C[1] <= 0.0f) || ((player->unk_0BC & 0x20000) == 0x20000)) {
        func_8001CCEC(player, camera, sp64, &sp84, &sp80, &sp7C, &sp58, (s32) camera->unk_2C, (s32) arg2);
    } else {
        func_800224F0(&camera->unk_2C, (s16) (player->unk_02C[1] + camera->unk_B0), var_a3);
        func_8001CCEC(player, camera, sp64, &sp84, &sp80, &sp7C, &sp58, (s32) camera->unk_2C, (s32) arg2);
    }
    temp = 3;
    camera->someBitFlags &= 0xFFFB;
    func_802ADDC8(&camera->unk_54, temp, sp84, sp80, sp7C);

    camera->pos[0] = sp84;
    camera->pos[1] = sp80;
    camera->pos[2] = sp7C;

    camera->lookAt[0] = sp64[0];
    camera->lookAt[1] = sp64[1];
    camera->lookAt[2] = sp64[2];

    temp_f12 = camera->lookAt[0] - camera->pos[0];
    sp90 = camera->lookAt[1] - camera->pos[1];
    temp_f14 = camera->lookAt[2] - camera->pos[2];

    camera->rot[1] = atan2s(temp_f12, temp_f14);
    camera->rot[0] = atan2s(sqrtf((temp_f12 * temp_f12) + (temp_f14 * temp_f14)), sp90);
    camera->rot[2] = 0;
}

void func_8001E8E8(Camera *camera, Player *player, s8 arg2) {
    UNUSED f32 pad[6];
    f32 temp_f12;
    f32 sp88;
    f32 temp_f14;
    UNUSED f32 pad2;
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    UNUSED Vec3f pad3;
    Vec3f sp5C;
    UNUSED f32 pad4[10];

    camera->unk_B0 = 0;
    camera->unk_2C = player->unk_02C[1];
    func_8001D53C(player, camera, sp5C, &sp7C, &sp78, &sp74, (s16) (s32) player->unk_02C[1], (s16) (s32) arg2);
    func_802ADDC8(&camera->unk_54, 5.0f, sp7C, sp78, sp74);
    camera->lookAt[0] = sp5C[0];
    camera->lookAt[1] = sp5C[1];
    camera->lookAt[2] = sp5C[2];
    camera->pos[0] = sp7C;
    camera->pos[1] = sp78;
    camera->pos[2] = sp74;
    temp_f12 = camera->lookAt[0] - camera->pos[0];
    sp88 = camera->lookAt[1] - camera->pos[1];
    temp_f14 = camera->lookAt[2] - camera->pos[2];
    camera->rot[1] = atan2s(temp_f12, temp_f14);
    camera->rot[0] = atan2s(sqrtf((temp_f12 * temp_f12) + (temp_f14 * temp_f14)), sp88);
    camera->rot[2] = 0;
}

void func_8001EA0C(Camera *camera, Player *player, s8 arg2) {
    UNUSED s32 pad[6];
    f32 temp_f12;
    f32 sp90;
    f32 temp_f14;
    UNUSED s32 pad2;
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    UNUSED s32 pad3[3];
    Vec3f sp64;
    UNUSED s32 pad4[2];
    s32 sp58;
    UNUSED s16 pad5[4];
    s16 var_a3;
    UNUSED s16 pad6;
    s16 temp;

    //temp_v0 = player->unk_0BC;
    if ((player->unk_0BC & 0x10) == 0x10) {
        //temp_v1 = player->unk_078;
        var_a3 = 100;
        if (player->unk_078 == 0) {
            camera->unk_B0 = 0;
        } else {
            if (player->unk_078 < 0) {
                var_a3 = 0xA5 - (player->unk_078 / 2);
                if ((player->unk_0BC & 0x20000000) == 0x20000000) {
                    //sp4E = temp_a3;
                    move_s16_towards(&camera->unk_B0, -0x0B60, 0.1f);
                } else {
                    //sp4E = temp_a3;
                    move_s16_towards(&camera->unk_B0, -0x0888, 0.1f);
                }
            } else {
                var_a3 = (player->unk_078 / 2) + 0xA5;
                if ((player->unk_0BC & 0x20000000) == 0x20000000) {
                    //sp4E = temp_a3_2;
                    move_s16_towards(&camera->unk_B0, 0x0B60, 0.1f);
                } else {
                    //sp4E = temp_a3_2;
                    move_s16_towards(&camera->unk_B0, 0x0888, 0.1f);
                }
            }
            //var_a3 = sp4E;
        }
    } else {
        move_s16_towards(&camera->unk_B0, 0, 0.05f);
        //temp_v1_2 = player->unk_078;
        var_a3 = ((s16) camera->unk_2C / 182) - ((s16) player->unk_02C[1] / 182);
        if (player->unk_078 == 0) {
            if ((player->unk_0BC & 0x20) == 0x20) {
                var_a3 = 0x02D8;
            } else {
                var_a3 = 0x01F4;
            }
        } else if (player->unk_078 < 0) {
            if ((var_a3 <= -70) || (var_a3 >= 70)) {
                var_a3 = 0xB4 - player->unk_078;
            } else {
                var_a3 = 0xA5 - (player->unk_078 / 2);
            }
        } else if ((var_a3 <= -70) || (var_a3 >= 0x46)) {
            var_a3 = player->unk_078 + 0xB4;
        } else {
            var_a3 = (player->unk_078 / 2) + 0xA5;
        }
    }
    if (((player->unk_0BC & 0x80) == 0x80) || ((player->unk_0BC & 0x40) == 0x40) || 
    ((player->unk_0BC & 0x4000) == 0x4000) || ((player->unk_0BC & 0x80000) == 0x80000) || 
    ((player->unk_0BC & 0x800000) == 0x800000) || (((player->unk_0BC & 0x20) == 0x20) && (player->unk_078 != 0)) || 
    (player->unk_110.unk3C[0] <= 0.0f) || (player->unk_110.unk3C[1] <= 0.0f) || ((player->unk_0BC & 0x20000) == 0x20000)) {
        func_8001D944(player, camera, sp64, &sp84, &sp80, &sp7C, &sp58, (s32) camera->unk_2C, (s32) arg2);
    } else {
        func_800224F0(&camera->unk_2C, (s16) (player->unk_02C[1] + camera->unk_B0), var_a3);
        func_8001D944(player, camera, sp64, &sp84, &sp80, &sp7C, &sp58, (s32) camera->unk_2C, (s32) arg2);
    }
    temp = 3;
    camera->someBitFlags &= 0xFFFB;
    func_802ADDC8(&camera->unk_54, temp, sp84, sp80, sp7C);

    camera->pos[0] = sp84;
    camera->pos[1] = sp80;
    camera->pos[2] = sp7C;

    camera->lookAt[0] = sp64[0];
    camera->lookAt[1] = sp64[1];
    camera->lookAt[2] = sp64[2];

    temp_f12 = camera->lookAt[0] - camera->pos[0];
    sp90 = camera->lookAt[1] - camera->pos[1];
    temp_f14 = camera->lookAt[2] - camera->pos[2];

    camera->rot[1] = atan2s(temp_f12, temp_f14);
    camera->rot[0] = atan2s(sqrtf((temp_f12 * temp_f12) + (temp_f14 * temp_f14)), sp90);
    camera->rot[2] = 0;
}

#ifdef MIPS_TO_C
//generated by m2c commit 9841ff34ca242f5f14b2eab2b54a7a65ac47d80f
? func_80019ED0();                                  /* extern */
? func_8001A588(u16 *, Camera *, Player *, s8, s32); /* extern */
? func_8001E45C(Camera *, Player *, s8);            /* extern */
? func_8001EA0C(Camera *, Player *, s8);            /* extern */
extern u16 D_8015F894;
extern s8 D_80164A88;
extern s8 D_80164A89;

void func_8001EE98(Player *player, Camera *camera, s8 arg2) {
    s32 sp34;
    u16 *sp2C;
    s16 temp_v0_2;
    s16 temp_v0_3;
    s32 var_s0;
    u16 *temp_a0;
    u16 *temp_a0_2;
    u16 *temp_a0_3;
    u16 *temp_a0_4;
    u16 *temp_a0_5;
    u16 *temp_a0_6;
    u16 *temp_a0_7;
    u16 temp_v0;

    if (camera == camera1) {
        sp34 = 0;
    }
    var_s0 = sp34;
    if (camera == camera2) {
        var_s0 = 1;
    }
    if (camera == camera3) {
        var_s0 = 2;
    }
    if (camera == camera4) {
        var_s0 = 3;
    }
    switch (gModeSelection) {                       /* irregular */
    case 0:
        if (((player->unk_000 & 0x800) == 0x800) || (gDemoMode)) {
            D_80152300[var_s0] = 3;
        } else if (gIsGamePaused == 1) {
            func_8001A0A4((s32) &D_80152300[var_s0], (s32) camera, (s32) player, (s32) arg2, var_s0);
        } else {
            func_8001A0DC((s16 *) &D_80152300[var_s0], camera, player, arg2, var_s0);
        }
        break;
    case 3:
        if ((gDemoMode) || ((D_8015F894 == 2) && (D_80164A89 == 1))) {
            if (D_80164A88 == 0) {
                func_80019ED0();
            }
            D_80164A88 = 1;
            D_80152300->unk0 = 3;
            D_80152300->unk2 = 3U;
            D_80152300->unk4 = 3U;
            D_80152300->unk6 = 3U;
        } else {
            D_80164A88 = 0;
            if (gIsGamePaused == (u16) 1) {
                temp_a0 = &D_80152300[var_s0];
                sp2C = temp_a0;
                func_8001A0A4((s32) temp_a0, (s32) camera, (s32) player, (s32) arg2, var_s0);
            } else {
                temp_a0_2 = &D_80152300[var_s0];
                sp2C = temp_a0_2;
                func_8001A0DC((s16 *) temp_a0_2, camera, player, arg2, var_s0);
            }
            *sp2C = 9;
        }
        break;
    case 1:
        if (((gPlayerOne->unk_000 & 0x800) == 0x800) || (gDemoMode)) {
            D_80152300->unk0 = 3;
            *(D_80152300 + 2) = 3;
            *(D_80152300 + 4) = 3;
            *(D_80152300 + 6) = 3;
        } else {
            if (gIsGamePaused == (u16) 1) {
                temp_a0_3 = &D_80152300[var_s0];
                sp2C = temp_a0_3;
                func_8001A0A4((s32) temp_a0_3, (s32) camera, (s32) player, (s32) arg2, var_s0);
            } else {
                temp_a0_4 = &D_80152300[var_s0];
                sp2C = temp_a0_4;
                func_8001A0DC((s16 *) temp_a0_4, camera, player, arg2, var_s0);
            }
            *sp2C = 1;
        }
        break;
    case 2:
        if (((player->unk_000 & 0x800) == 0x800) || (gDemoMode) || (D_8015F894 == 2)) {
            D_80152300[var_s0] = 3;
        } else {
            if (gIsGamePaused == (u16) 1) {
                temp_a0_5 = &D_80152300[var_s0];
                sp2C = temp_a0_5;
                func_8001A0A4((s32) temp_a0_5, (s32) camera, (s32) player, (s32) arg2, var_s0);
            } else {
                temp_a0_6 = &D_80152300[var_s0];
                sp2C = temp_a0_6;
                func_8001A0DC((s16 *) temp_a0_6, camera, player, arg2, var_s0);
            }
            *sp2C = 1;
        }
        break;
    }
    if (gIsGamePaused == 0) {
        temp_a0_7 = &D_80152300[var_s0];
        temp_v0 = *temp_a0_7;
        switch (temp_v0) {                          /* switch 1; irregular */
        case 3:                                     /* switch 1 */
            func_8001A588(temp_a0_7, camera, player, arg2, var_s0);
            return;
        case 1:                                     /* switch 1 */
            temp_v0_2 = player->unk_0CA;
            if (((temp_v0_2 & 1) == 1) || ((temp_v0_2 & 2) == 2)) {
                func_8001E8E8(camera, player, arg2);
                return;
            }
            func_8001E45C(camera, player, arg2);
            return;
        case 8:                                     /* switch 1 */
            func_8001E0C4(camera, player, arg2);
            func_8001F87C(var_s0);
            return;
        case 9:                                     /* switch 1 */
            temp_v0_3 = player->unk_0CA;
            if (((temp_v0_3 & 1) == 1) || ((temp_v0_3 & 2) == 2)) {
                func_8001E8E8(camera, player, arg2);
                return;
            }
            func_8001EA0C(camera, player, arg2);
            break;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/camera/func_8001EE98.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
f32 func_80014EE4(f32, s32, s32);                   /* extern */
extern ? D_80164498;
extern s32 D_80164A08[4];

void func_8001F394(Player *player, f32 *arg1) {
    s32 sp2C;
    s32 sp1C;
    f32 *temp_a0;
    f32 *var_a0;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 var_f0;
    f32 var_f2;
    s32 *temp_v1;
    s32 temp_t3;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;

    if (player == gPlayerOne) {
        sp2C = 0;
    }
    if (player == gPlayerTwo) {
        sp2C = 1;
    }
    if (player == gPlayerThree) {
        sp2C = 2;
    }
    if (player == gPlayerFour) {
        sp2C = 3;
    }
    temp_v1 = D_80164A08[sp2C];
    if (*temp_v1 == 0) {
        if (player->statusEffects & 0x40000) {
            *temp_v1 = 1;
        }
        if ((player->unk_0BC & 0x2000) == 0x2000) {
            *temp_v1 = 2;
        }
        if ((player->unk_0BC & 0x100000) == 0x100000) {
            *temp_v1 = 3;
        }
        if ((player->statusEffects & 0x100) == 0x100) {
            *temp_v1 = 4;
        }
        temp_v0 = player->unk_0BC;
        if (((temp_v0 & 0x80) == 0x80) || ((temp_v0 & 0x40) == 0x40)) {
            *temp_v1 = 5;
        }
        *(&D_80164498 + temp_t3) = 0.0f;
    }
    switch (*temp_v1) {
    case 1:
        var_a0 = temp_t3 + &D_80164498;
        if (player->statusEffects & 0x40000) {
            sp1C = temp_t3;
            move_f32_towards(var_a0, 20.0f, 0.2f);
        } else {
            temp_f0 = *var_a0;
            if (temp_f0 > 1.0f) {
                *var_a0 = temp_f0 - 1.0f;
            } else {
                *temp_v1 = 0;
block_51:
                *var_a0 = 0.0f;
            }
        }
        break;
    case 2:
        if ((player->unk_0BC & 0x2000) == 0x2000) {
            if (player->boostTimer != 0) {
                sp1C = temp_t3;
                move_f32_towards(temp_t3 + &D_80164498, 8.0f, 0.2f);
            }
        } else {
            var_a0 = temp_t3 + &D_80164498;
            temp_f0_2 = *var_a0;
            if (temp_f0_2 > 1.0f) {
                *var_a0 = temp_f0_2 - 2.0f;
            } else {
                *temp_v1 = 0;
                goto block_51;
            }
        }
        break;
    case 3:
        temp_v0_2 = player->unk_0BC;
        var_a0 = temp_t3 + &D_80164498;
        if (((temp_v0_2 & 0x100000) == 0x100000) && ((temp_v0_2 & 8) == 8)) {
            sp1C = temp_t3;
            move_f32_towards(var_a0, 20.0f, 0.1f);
        } else {
            temp_f0_3 = *var_a0;
            if (temp_f0_3 > 1.0f) {
                *var_a0 = temp_f0_3 - 1.0f;
            } else {
                *temp_v1 = 0;
                goto block_51;
            }
        }
        break;
    case 4:
        var_a0 = temp_t3 + &D_80164498;
        if ((player->statusEffects & 0x100) == 0x100) {
            sp1C = temp_t3;
            move_f32_towards(var_a0, 25.0f, 1.0f);
        } else {
            temp_f0_4 = *var_a0;
            if (temp_f0_4 > 1.0f) {
                *var_a0 = temp_f0_4 - 2.0f;
            } else {
                *temp_v1 = 0;
                goto block_51;
            }
        }
        break;
    case 5:
        temp_v0_3 = player->unk_0BC;
        var_a0 = temp_t3 + &D_80164498;
        if (((temp_v0_3 & 0x80) == 0x80) || ((temp_v0_3 & 0x40) == 0x40)) {
            sp1C = temp_t3;
            move_f32_towards(var_a0, 18.0f, 0.2f);
        } else {
            temp_f0_5 = *var_a0;
            if (temp_f0_5 > 1.0f) {
                *var_a0 = temp_f0_5 - 2.0f;
            } else {
                *temp_v1 = 0;
                goto block_51;
            }
        }
        break;
    }
    switch (gActiveScreenMode) {                            /* switch 1; irregular */
    default:                                        /* switch 1 */
        var_f2 = sp34;
        break;
    case SCREEN_MODE_1P:                                         /* switch 1 */
        temp_v0_5 = D_80164A28;
        if (temp_v0_5 == 1) {
            *(&D_80164498 + temp_t3) = 40.0f;
        }
        temp_a0 = temp_t3 + &D_80164498;
        if (temp_v0_5 == 2) {
            temp_f0_6 = *temp_a0;
            if (temp_f0_6 >= 0.0f) {
                *temp_a0 = (f32) ((f64) temp_f0_6 - 0.8);
            }
            if (*temp_a0 <= 0.0f) {
                D_80164A28 = 0;
                *temp_a0 = 0.0f;
            }
        }
        var_f0 = func_80014EE4(*arg1, (s32) temp_a0, sp2C);
block_66:
        var_f2 = var_f0;
        break;
    case SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL:                                         /* switch 1 */
    case SCREEN_MODE_2P_SPLITSCREEN_VERTICAL:                                         /* switch 1 */
    case SCREEN_MODE_3P_4P_SPLITSCREEN:                                         /* switch 1 */
        var_f0 = func_80014EE4(*arg1, sp2C);
        goto block_66;
    }
    *arg1 = var_f2;
    cameras[sp2C].unk_B4 = var_f2;
}
#else
GLOBAL_ASM("asm/non_matchings/camera/func_8001F394.s")
#endif

void func_8001F87C(s32 cameraId) {
    s32 playerIndex;
    // Why?
    s32 id = cameraId;

    if(gPlayerOne){}
    if (gActiveScreenMode == 0) {
        if (gModeSelection == 0) {
            for (playerIndex = 0; playerIndex < 8; playerIndex++) {
                if ((gPlayerOne[playerIndex].unk_000 & 0x200) || (gPlayerOne[playerIndex].unk_000 & 0x80)) break;
                if (playerIndex == 7) {
                    D_80164A2C += 1;
                }
                if ((playerIndex == 7) && (D_80164A2C == 0x0000003C)) {
                    D_80164A28 = 2;
                    D_80152300[id] = 1;
                    cameras[id].rot[1] = gPlayerOne[playerIndex].unk_02C[1];
                    cameras[id].unk_2C = gPlayerOne[playerIndex].unk_02C[1];
                }
            }
        }
    }
}
