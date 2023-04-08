#include <ultra64.h>
#include <macros.h>
#include <PR/os.h>
#include "types.h"
#include <common_structs.h>
#include <actor_types.h>
#include <defines.h>
#include <PR/gbi.h>
#include "math_util.h"
#include "memory.h"
#include "actors_extended.h"
#include "actors.h"
#include "waypoints.h"
#include "macros.h"
#include "code_80005FD0.h"
#include "code_80071F00.h"
#include "code_8008C1D0.h"
#include "code_802AAA70.h"
#include <sounds.h>
#include "audio/external.h"
#include "common_textures.h"

s32 D_802BA050;
s32 D_802BA054;
s32 D_802BA058;
struct Actor *D_802BA05C;
s8 D_802BA060[512]; // tlut 256
u16 D_802BA260;

void func_80296A50(struct ShellActor *shell) {
    s32 actorIndex;
    struct ShellActor *compare;

    for (actorIndex = gNumPermanentActors; actorIndex < ACTOR_LIST_SIZE; actorIndex++) {
        compare = &gActorList[actorIndex];
        if ((shell != compare) && !(compare->flags & 0xF) && (compare->type == ACTOR_GREEN_SHELL)) {
            if (compare->state == 2) {
                func_8000EE58(actorIndex);
            }
            D_8015F6FE -= 1;
            destroy_actor(compare);
            return;
        }
    }

    for (actorIndex = gNumPermanentActors; actorIndex < ACTOR_LIST_SIZE; actorIndex++) {
        compare = &gActorList[actorIndex];
        if ((shell != compare) && !(compare->flags & 0xF) && (compare->type == ACTOR_RED_SHELL)) {
            switch(compare->state) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 8:
            case 9:
                func_8000EE58(actorIndex);
            case 7:
                D_8015F6FE -= 1;
                destroy_actor(compare);
                return;
            default:
                break;
            }
        }
    }

    for (actorIndex = gNumPermanentActors; actorIndex < ACTOR_LIST_SIZE; actorIndex++) {
        compare = &gActorList[actorIndex];
        if ((shell != compare) && (compare->type == ACTOR_GREEN_SHELL)) {
            switch(compare->state) {
            case 2:
                func_8000EE58(actorIndex);
            case 7:
                D_8015F6FE -= 1;
                destroy_actor(compare);
                return;
            }
        }
    }

    for (actorIndex = gNumPermanentActors; actorIndex < ACTOR_LIST_SIZE; actorIndex++) {
        compare = &gActorList[actorIndex];
        if ((shell != compare) && (compare->type == ACTOR_RED_SHELL)) {
            switch(compare->state) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 8:
            case 9:
                func_8000EE58(actorIndex);
            case 7:
                D_8015F6FE -= 1;
                destroy_actor(compare);
                return;
            default:
                break;
            }
        }
    }
}

// Sets introductory values for a new actor (ex. Banana).
void actor_init(struct Actor *actor, Vec3f startingPos, Vec3s startingRot, Vec3f startingVelocity, s16 actorType) {
    vec3f_copy(actor->pos, startingPos);
    vec3s_copy(actor->rot, startingRot);
    vec3f_copy(actor->velocity, startingVelocity);
    actor->type = actorType;
    actor->flags = -0x8000;
    actor->unk_04 = 0;
    actor->state = 0;
    actor->unk_08 = 0.0f;
    actor->boundingBoxSize = 0.0f;
    func_802AAAAC(&actor->unk30);
    switch (actorType) {
    case ACTOR_BOX_TRUCK:
        if ((s32) D_802BA260 >= 3) {
            D_802BA260 = 0;
        }
        actor->state = (s16) D_802BA260;
        D_802BA260 += 1;
        break;
    case ACTOR_YOSHI_VALLEY_EGG:
        actor->flags |= 0x4000;
        actor->unk_08 = 70.0f;
        actor->boundingBoxSize = 20.0f;
        actor->velocity[0] = actor->pos[0];
        actor->velocity[1] = actor->pos[1];
        actor->velocity[2] = actor->pos[2] + 70.0f;
        break;
    case ACTOR_KIWANO_FRUIT:
        actor->state = 0;
        actor->rot[0] = 0;
        actor->rot[1] = 0;
        actor->rot[2] = 0;
        actor->boundingBoxSize = 2.0f;
        break;
    case ACTOR_FALLING_ROCK:
        actor->flags |= 0x4000;
        actor->boundingBoxSize = 10.0f;
        break;
    case ACTOR_TRAIN_ENGINE:
        actor->unk_08 = 10.0f;
        break;
    case ACTOR_BANANA:
        actor->flags = actor->flags | 0x4000 | 0x1000;
        actor->boundingBoxSize = 2.0f;
        break;
    case ACTOR_GREEN_SHELL:
        D_8015F6FE += 1;
        actor->unk_04 = 0;
        actor->boundingBoxSize = 4.0f;
        actor->flags = actor->flags | 0x4000 | 0x2000 | 0x1000;
        if ((s32) D_8015F6FE >= 0x15) {
            func_80296A50((struct ShellActor *) actor);
        }
        break;
    case ACTOR_RED_SHELL:
        D_8015F6FE += 1;
        actor->unk_04 = 0;
        actor->boundingBoxSize = 4.0f;
        actor->flags = actor->flags | 0x4000 | 0x2000 | 0x1000;
        if ((s32) D_8015F6FE >= 0x15) {
            func_80296A50((struct ShellActor *) actor);
        }
        break;
    case 2:
        D_8015F6FE += 1;
        actor->flags |= 0x4000;
        actor->state = 0x0043;
        actor->boundingBoxSize = 3.0f;
        actor->unk_08 = 20.0f;
        break;
    case 3:
        actor->flags |= 0x4000;
        actor->state = 0x0043;
        actor->boundingBoxSize = 3.0f;
        actor->unk_08 = 23.0f;
        break;
    case 4:
        actor->flags |= 0x4000;
        actor->state = 0x0043;
        actor->boundingBoxSize = 3.0f;
        actor->unk_08 = 17.0f;
        break;
    case 19:
        actor->state = 0x0043;
        actor->flags = -0x8000;
        actor->boundingBoxSize = 3.0f;
        actor->unk_08 = 17.0f;
        break;
    case 26:
        actor->flags |= 0x4000;
        actor->state = 0x0043;
        actor->boundingBoxSize = 3.0f;
        actor->unk_08 = 17.0f;
        break;
    case 28:
        actor->state = 0x0043;
        actor->flags = -0x8000;
        actor->boundingBoxSize = 3.0f;
        actor->unk_08 = 17.0f;
        break;
    case 33:
        actor->flags |= 0x4000;
        actor->state = 0x0043;
        actor->boundingBoxSize = 3.0f;
        actor->unk_08 = 17.0f;
        break;
    case 29:
        actor->flags |= 0x4000;
        actor->state = 0x0043;
        actor->boundingBoxSize = 3.0f;
        actor->unk_08 = 17.0f;
        break;
    case 30:
        actor->flags |= 0x4000;
        actor->state = 0x0019;
        actor->boundingBoxSize = 3.0f;
        actor->unk_08 = 7.0f;
        break;
    case 31:
        actor->flags |= 0x4000;
        actor->state = 0x0019;
        actor->boundingBoxSize = 3.0f;
        actor->unk_08 = 7.0f;
        break;
    case 32:
        actor->flags |= 0x4000;
        actor->state = 0x0019;
        actor->boundingBoxSize = 3.0f;
        actor->unk_08 = 7.0f;
        break;
    case ACTOR_PALM_TREE:
        actor->flags |= 0x4000;
        actor->state = 0x003C;
        actor->boundingBoxSize = 3.0f;
        actor->unk_08 = 13.0f;
        break;
    case ACTOR_FAKE_ITEM_BOX:
        actor->flags = actor->flags | 0x4000 | 0x1000;
        actor->unk_08 = 0.35f;
        actor->boundingBoxSize = 1.925f;
        func_802ADDC8(&actor->unk30, 1.925f, actor->pos[0], actor->pos[1], actor->pos[2]);
        break;
    case ACTOR_HOT_AIR_BALLOON_ITEM_BOX:
        actor->flags |= 0x4000;
        actor->unk_04 = 0;
        actor->state = 5;
        actor->boundingBoxSize = 5.5f;
        break;
    case ACTOR_ITEM_BOX:
        actor->flags |= 0x4000;
        actor->unk_04 = 0;
        actor->state = 0;
        actor->boundingBoxSize = 5.5f;
        break;
    case ACTOR_PIRANHA_PLANT:
        actor->flags |= 0x4000;
        actor->state = 0x001E;
        actor->boundingBoxSize = 5.0f;
        break;
    default:
        break;
    }
}

void func_80297230(Camera *arg0, struct Actor *arg1) {
    switch(arg0 - camera1) {
        case 0:
            arg1->flags &= ~1;
            break;
        case 1:
            arg1->flags &= ~2;
            break;
        case 2:
            arg1->flags &= ~4;
            break;
        case 3:
            arg1->flags &= ~8;
            break;
    }
}

void func_802972B8(Camera *arg0, struct Actor *arg1) {
        switch(arg0 - camera1) {
        case 0:
            arg1->flags |= 1;
            break;
        case 1:
            arg1->flags |= 2;
            break;
        case 2:
            arg1->flags |= 4;
            break;
        case 3:
            arg1->flags |= 8;
            break;
    }
}

void func_80297340(Camera *arg0) {
    Mat4 sp38;
    s16 temp = D_8015F8D0[2];

    if (gGamestate == CREDITS_SEQUENCE) { return; }

    mtxf_translate(sp38, D_8015F8D0); 

    if (func_802B4FF8(sp38, 0) == 0) { return; }

    if (temp < arg0->pos[2]) {
        if (D_800DC5BC != 0) {

            gDPSetFogColor(gDisplayListHead++, D_801625EC, D_801625F4, D_801625F0, 0xFF);
            gSPDisplayList(gDisplayListHead++, &D_0D001C20);
        } else {
            gSPDisplayList(gDisplayListHead++, &D_0D001B90);
        }
    } else if (D_800DC5BC != 0) {

        gDPSetFogColor(gDisplayListHead++, D_801625EC, D_801625F4, D_801625F0, 0xFF);
        gSPDisplayList(gDisplayListHead++, &D_0D001C88);
    } else {
        gSPDisplayList(gDisplayListHead++, &D_0D001BD8);
    }
}

UNUSED void func_80297524(uintptr_t addr, s32 width, s32 height) {
    gDPLoadTextureBlock(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(addr), G_IM_FMT_RGBA, G_IM_SIZ_16b, width, height, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
}

void func_802976D8(Vec3s arg0) {
    arg0[0] = 0x4000;
    arg0[1] = 0;
    arg0[2] = 0;
}

void func_802976EC(UnkActorInner *arg0, Vec3s arg1) {
    f32 x, y, z;

    if (arg0->unk34 == 0) {
        func_802976D8(arg1);
        return;
    }
    //sp1C = arg0->unk30;

    x = arg0->unk60[0];
    y = arg0->unk60[1];
    z = arg0->unk60[2];

    arg1[0] = atan2s(z, y) + 0x4000;
    arg1[1] = 0;
    arg1[2] = atan2s(x, y);
}

void func_80297760(struct Actor *arg0, Vec3f arg1) {
    arg1[0] = arg0->pos[0];
    arg1[1] = arg0->pos[1];
    arg1[2] = arg0->pos[2];
    arg1[1] = func_802ABE30(arg1[0], arg1[1], arg1[2], arg0->unk30.unk3A);
}

void func_802977B0(Player *arg0) {
    arg0->boundingBoxCorners[1].unk_14 |= 2;
    arg0->boundingBoxCorners[0].unk_14 |= 2;
    arg0->boundingBoxCorners[3].unk_14 |= 2;
    arg0->boundingBoxCorners[2].unk_14 |= 2;
}

void func_802977E4(Player *arg0) {
    arg0->boundingBoxCorners[1].unk_14 &= 0xFFFD;
    arg0->boundingBoxCorners[0].unk_14 &= 0xFFFD;
    arg0->boundingBoxCorners[3].unk_14 &= 0xFFFD;
    arg0->boundingBoxCorners[2].unk_14 &= 0xFFFD;
}

void func_80297818(void) {
    s16 *phi_v0 = &D_802BA060[0];
    s16 *phi_v1 = VIRTUAL_TO_PHYSICAL2(gSegmentTable[SEGMENT_NUMBER2(gTLUTGreenShell)] + SEGMENT_OFFSET(gTLUTGreenShell));
    s16 temp_a0, temp_a0_2, temp_a0_3, temp_a0_4, temp_a0_5;
    s32 i;
    for (i = 0; i < 256; i++) {
        temp_a0 = *phi_v1;
        temp_a0_2 = temp_a0 & 0xF800;
        temp_a0_3 = temp_a0 & 0x7C0;
        temp_a0_4 = temp_a0 & 0x3E;
        temp_a0_5 = temp_a0 & 0x1;

        *phi_v0 = (temp_a0_2 >> 5) | (temp_a0_3 << 5) | temp_a0_4 | temp_a0_5;
        phi_v1++;
        phi_v0++;
    }
}

UNUSED void func_80297944(void) {};

void func_8029794C(Vec3f arg0, Vec3s arg1, f32 arg2) {
    Mat4 sp20;
    arg0[1] += 2.0f;

    func_802B5F74(sp20, arg0, arg1);
    func_802B5F00(sp20, arg2);
    if (func_802B4FF8(sp20, 0) != 0) {

        gSPDisplayList(gDisplayListHead++, D_0D007B20);
        arg0[1] -= 2.0f;
    }
}

void func_802979F8(struct Actor *arg0, f32 arg1) {
    Vec3f sp24;
    Vec3s sp1C;

    if (arg0->unk30.unk34 != 0) {

        func_802976EC(&arg0->unk30, sp1C); // arg0 + 0x30
        func_80297760(arg0, sp24);
        func_8029794C(sp24, sp1C, 0.45f);
    }
}

void func_80297A50(Camera *camera, Mat4 arg1, struct Actor *arg2) {
    if (func_802B80D0(camera->pos, arg2->pos, camera->rot[1], 0, D_80150130[camera - camera1], 4000000.0f) < 0) { return; }

    arg1[3][0] = arg2->pos[0];
    arg1[3][1] = arg2->pos[1];
    arg1[3][2] = arg2->pos[2];

    if (func_802B4FF8(arg1, 0) != 0) {
        switch (arg2->state) {
        case 0:
            gSPDisplayList(gDisplayListHead++, D_06013C00);
            break;
        case 1:
            gSPDisplayList(gDisplayListHead++, D_06013CA0);
            break;
        case 2:
            gSPDisplayList(gDisplayListHead++, D_06013D20);
            break;
        case 3:
            gSPDisplayList(gDisplayListHead++, D_06013DA0);
            break;
        case 4:
            gSPDisplayList(gDisplayListHead++, D_06013E20);
            break;
        }
    }
}

void update_obj_yoshi_valley_egg(struct YoshiValleyEgg *egg) {
    egg->pathRot += 0x5B;
    egg->pos[0] = egg->pathCenter[0] + (sins(egg->pathRot) * egg->pathRadius);
    egg->pos[2] = egg->pathCenter[2] + (coss(egg->pathRot) * egg->pathRadius);
    if ((egg->flags & 0x400) != 0) {
        egg->pathCenter[1] -= 0.12;
        if (egg->pathCenter[1] < -3.0f) {
            egg->pathCenter[1] = -3.0f;
        }
        egg->pos[1] += egg->pathCenter[1];
        if (egg->pos[1] < 0.0f) {
            egg->pos[1] = 0.0f;
            egg->pathCenter[1] = 0.0f;
            egg->flags &= ~(1 << 10);
        }
        egg->eggRot -= 0x4FA;
    }
    egg->eggRot -= 0x222;
}

void update_obj_trees_cacti_shrubs(struct Actor *arg0) {
    if (((arg0->flags & 0x800) == 0) && ((arg0->flags & 0x400) != 0)) {
        arg0->pos[1] = arg0->pos[1] + 4.0f;
        if (arg0->pos[1] > 800.0f) {
            arg0->flags |= 0x800;
        }
    }
}

void update_obj_kiwano_fruit(struct KiwanoFruit *fruit) {
    Player *player;
    f32 temp_f2;
    f32 temp_f16;
    f32 temp_f14;
    f32 temp_f12;
    s32 nearestWaypoint;

    player = &gPlayers[fruit->targetPlayer];
    if (((player->unk_000 & 0x1000) != 0) || (player->unk_110.unk34 == 0)) {
        fruit->state = 0;
        return;
    }
    switch (fruit->state) {                               /* irregular */
    case 0:
        if ((func_802ABD10(player->unk_110.unk3A) & 0xFF) != 8) {
            return;
        }
        fruit->state = 1;
        fruit->velocity[0] = 80.0f;
    case 1:
        nearestWaypoint = gNearestWaypointByPlayerId[(u16)(player - gPlayerOne)];
        temp_f2  = player->pos[0] - D_80164490[nearestWaypoint].wayPointX;
        temp_f16 = player->pos[1] - D_80164490[nearestWaypoint].wayPointY;
        temp_f14 = player->pos[2] - D_80164490[nearestWaypoint].wayPointZ;
        temp_f12 = fruit->velocity[0] / sqrtf((temp_f2 * temp_f2) + (temp_f16 * temp_f16) + (temp_f14 * temp_f14));
        temp_f2  *= temp_f12;
        temp_f16 *= temp_f12;
        temp_f14 *= temp_f12;
        fruit->pos[0] = player->pos[0] + temp_f2;
        fruit->pos[1] = player->pos[1] + temp_f16;
        fruit->pos[2] = player->pos[2] + temp_f14;
        fruit->velocity[0] -= 2.0f;
        if (fruit->velocity[0] <= 0.0f) {
            fruit->state = 2;
            fruit->bonkTimer = 30.0f;
            fruit->velocity[0] = 0.0f;
            fruit->velocity[1] = 2.3f;
            fruit->velocity[2] = 0.0f;
            if ((player->unk_0BC & 0x200) != 0) {
                func_800C9060(player - gPlayerOne, 0x1900A052U);
            } else {
                player->unk_0BC |= 0x8000;
                player->pos[0]     -= temp_f2  * 4.0f;
                player->pos[2]     -= temp_f14 * 4.0f;
                player->unk_034[0] -= temp_f2  * 0.7f;
                player->unk_034[2] -= temp_f14 * 0.7f;
                func_800C9060(player - gPlayerOne, 0x19007018U);
                if (gModeSelection != GRAND_PRIX) {
                    D_80162DF8 = 1;
                }
            }
        }
        break;
    case 2:
        fruit->velocity[1] -= 0.3f;
        fruit->pos[0] += fruit->velocity[0];
        fruit->pos[1] += fruit->velocity[1];
        fruit->pos[2] += fruit->velocity[2];
        fruit->bonkTimer -= 1.0f;
        if (fruit->bonkTimer < 0.0f) {
            fruit->state = 0;
        }
        break;
    default:
        break;
    }
    if (fruit->state != 0) {
        fruit->animTimer += 1;
        if (fruit->animTimer == 8) {
            fruit->animTimer = 0;
            fruit->animState += 1;
            if (fruit->animState == 3) {
                fruit->animState = 0;
            }
        }
    }
}

void update_obj_paddle_wheel(struct PaddleWheelBoat *boat) {
    boat->wheelRot += 0x38E;
}

// wheels
void update_obj_train_engine(struct TrainCar *arg0) {
    arg0->wheelRot -= 0x666;

    if (arg0->unk_08 != 0.0f) {
        arg0->unk_08 = 0.0f;
        func_800C9D80(arg0->pos, arg0->velocity, 0x51018000);
    }
}

// wheels
void update_obj_train_car1(struct TrainCar *tender) {
    tender->wheelRot -= 0x4FA;
}

// wheels
void update_obj_train_car2(struct TrainCar *arg0) {
    arg0->wheelRot -= 0x666;
}

void update_obj_piranha_plant(struct PiranhaPlant *arg0) {
    if ((arg0->flags & 0x800) == 0) {
        if ((arg0->flags & 0x400) != 0) {
            arg0->pos[1] += 4.0f;
            if (arg0->pos[1] > 800.0f) {
                arg0->flags |= 0x800;
            }
        } else {
            // This has to be an unrolled loop
            if (arg0->visibilityStates[0] == 1) {
                arg0->timers[0]++;
                if (arg0->timers[0] > 60) {
                    arg0->timers[0] = 6;
                }
            } else {
                arg0->timers[0] = 0;
            }
            if (arg0->visibilityStates[1] == 1) {
                arg0->timers[1]++;
                if (arg0->timers[1] > 60) {
                    arg0->timers[1] = 6;
                }
            } else {
                arg0->timers[1] = 0;
            }
            if (arg0->visibilityStates[2] == 1) {
                arg0->timers[2]++;
                if (arg0->timers[2] > 60) {
                    arg0->timers[2] = 6;
                }
            } else {
                arg0->timers[2] = 0;
            }
            if (arg0->visibilityStates[3] == 1) {
                arg0->timers[3]++;
                if (arg0->timers[3] > 60) {
                    arg0->timers[3] = 6;
                }
            } else {
                arg0->timers[3] = 0;
            }
        }
    }
}

// Mario Raceway Load piranha plant textures?
void func_80298328(Camera *arg0, Mat4 arg1, struct PiranhaPlant *arg2) {
    s32 pad;
    s32 addr;
    s16 temp_lo = arg0 - camera1; 
    s16 phi_t4;
    s16 temp = arg2->flags;
    f32 temp_f0;

    if (temp & 0x800) { return; }

        temp_f0 = func_802B80D0(arg0->pos, arg2->pos, arg0->rot[1], 0, D_80150130[arg0 - camera1], 1000000.0f);

        if (temp_f0 < 0.0f) {

            switch(temp_lo) {
                case 0:
                    arg2->visibilityStates[0] = -1;
                    break;
                case 1:
                    arg2->visibilityStates[1] = -1;
                    break;
                case 2:
                    arg2->visibilityStates[2] = -1;
                    break;
                case 3:
                    arg2->visibilityStates[3] = -1;
                    break;

            }
            return;
        }
        arg1[3][0] = arg2->pos[0];
        arg1[3][1] = arg2->pos[1];
        arg1[3][2] = arg2->pos[2];
        if (func_802B4FF8(arg1, 0) == 0) { return; }

        if (90000.0f < temp_f0) {

            switch(temp_lo) {
                case 0:
                    arg2->visibilityStates[0] = 0;
                    break;
                case 1:
                    arg2->visibilityStates[1] = 0;
                    break;
                case 2:
                    arg2->visibilityStates[2] = 0;
                    break;
                case 3:
                    arg2->visibilityStates[3] = 0;
                    break;
            }
            phi_t4 = 0;

        } else {

            switch(temp_lo) {
                case 0:
                    arg2->visibilityStates[0] = 1;
                    break;
                case 1:
                    arg2->visibilityStates[1] = 1;
                    break;
                case 2:
                    arg2->visibilityStates[2] = 1;
                    break;
                case 3:
                    arg2->visibilityStates[3] = 1;
                    break;

            }

            switch(temp_lo) {
                case 0:
                    phi_t4 = arg2->timers[0];
                    break;
                case 1:
                    phi_t4 = arg2->timers[1];
                    break;
                case 2:
                    phi_t4 = arg2->timers[2];
                    break;
                case 3:
                    phi_t4 = arg2->timers[3];
                    break;
            }
        }
        phi_t4 /= 6;

        if (phi_t4 > 8) {
            phi_t4 = 8;
        }
        addr = D_802BA058 + (phi_t4 << 0xB);
        gDPLoadTextureBlock(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(addr), G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, 
            G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);


        if (gCurrentCourseId == COURSE_MARIO_RACEWAY) {
            gSPDisplayList(gDisplayListHead++, &D_06006990);
        } else {
            gSPDisplayList(gDisplayListHead++, &D_0600D850);
        }
}

void func_802986B4(Camera *camera, Mat4 arg1, struct Actor *actor) {
    u16 temp_s1;
    f32 temp_f0;
    struct ActorSpawnData *var_t1;
    struct ActorSpawnData *var_s1;
    struct ActorSpawnData *var_s5;
    Vec3f sp88;
    u32 soundThing = 0x1901904D;
    s32 segment = SEGMENT_NUMBER2(D_06014200);
    s32 offset = SEGMENT_OFFSET(D_06014200);
    
    var_t1 = (struct ActorSpawnData*)VIRTUAL_TO_PHYSICAL2(gSegmentTable[segment] + offset);
    D_8015F704 = 6.4e7f;
    gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2);
    var_s5 = NULL;
    var_s1 = var_t1;
    while (var_s1->pos[0] != (-0x8000)) {
        sp88[0] = var_s1->pos[0] * gCourseDirection;
        sp88[1] = var_s1->pos[1];
        sp88[2] = var_s1->pos[2];
        temp_f0 = func_802B80D0(camera->pos, sp88, camera->rot[1], 0.0f, D_80150130[camera - camera1], 4000000.0f);
        if (temp_f0 > 0.0f) {
            if (temp_f0 < D_8015F704) {
                D_8015F704 = temp_f0;
                var_s5 = var_s1;
            }
            arg1[3][0] = sp88[0];
            arg1[3][1] = sp88[1];
            arg1[3][2] = sp88[2];
            if ((D_80150112 < 0x80) && (func_802B4FF8(arg1, 0) != 0)) {
                switch (var_s1->someId) {
                case 0:
                    gSPDisplayList(gDisplayListHead++, D_06013C00);
                    break;
                case 1:
                    gSPDisplayList(gDisplayListHead++, D_06013CA0);
                    break;
                case 2:
                    gSPDisplayList(gDisplayListHead++, D_06013D20);
                    break;
                case 3:
                    gSPDisplayList(gDisplayListHead++, D_06013DA0);
                    break;
                case 4:
                    gSPDisplayList(gDisplayListHead++, D_06013E20);
                    break;
                }
            } else {
                return;
            }
        }
        var_s1++;
    }
    
    if ((camera == camera1) && (var_s5 != NULL)) {
        if (D_8015F700 == 0) {
            temp_s1 = var_s5 - var_t1;
            if ((temp_s1 != D_8015F702) && (D_8015F704 < 160000.0f)) {
                func_800C99E0(D_8015F708, soundThing);
                D_8015F708[0] = var_s5->pos[0] * gCourseDirection;
                D_8015F708[1] = var_s5->pos[1];
                D_8015F708[2] = var_s5->pos[2];
                D_8015F702 = temp_s1;
                func_800C98B8(D_8015F708, D_802B91C8, soundThing);
                D_8015F700 = 0x00F0;
            }
        } else {
            D_8015F700 -= 1;
        }
    }
}

void func_80298AC0(Player *player) {
    Vec3f sp64;
    s32 segment = SEGMENT_NUMBER2(D_06013F78);
    s32 offset = SEGMENT_OFFSET(D_06013F78);
    struct UnkActorSpawnData *data = VIRTUAL_TO_PHYSICAL2(gSegmentTable[segment] + offset);

    while (data->pos[0] != -0x8000) {
        sp64[0] = data->pos[0] * gCourseDirection;
        sp64[1] = data->pos[1];
        sp64[2] = data->pos[2];
        if (func_8029EEB8(player, sp64, 5.0f, 40.0f, 0.8f) == 1) {
            if ((player->unk_0BC & 0x200) != 0) {
                func_800C98B8(player->pos, player->unk_034, 0x19018010);
                func_800C90F4((u8) (player - gPlayerOne), (player->characterId * 0x10) + 0x2900800D);
                data->someId |= 0x400;
            }
            if ((player->unk_000 & 0x100) == 0) {
                func_800C9060((u8) (player - gPlayerOne), 0x19007018);
            }
            break;
        }
        data++;
    }
}

void func_80298C94(void) {
    s32 index;

    for (index = 0; index < 4; index++){
        // wtf is up with the << 0x18 >> 0x18? is it some weird type conversion? 
        if (((gPlayers[index].unk_000 & 0xC000) != 0) && (((func_802ABD10(gPlayers[index].unk_110.unk3A) << 0x18) >> 0x18) == 8)) {
            func_80298AC0(&gPlayers[index]);
        }
    }
}

void func_80298D10(void) {
    s32 segment = SEGMENT_NUMBER2(D_06013F78);
    s32 offset = SEGMENT_OFFSET(D_06013F78);
    struct UnkActorSpawnData *temp_v1 = VIRTUAL_TO_PHYSICAL2(gSegmentTable[segment] + offset);

    while (temp_v1->pos[0] != -0x8000) {
        temp_v1->pos[1] = temp_v1->unk8;
        temp_v1->someId &= 0xF;
        temp_v1++;
    }
}

void func_80298D7C(Camera *camera, Mat4 arg1, struct Actor *actor) {
    s32 segment = SEGMENT_NUMBER2(D_06013F78);
    s32 offset = SEGMENT_OFFSET(D_06013F78);
    struct UnkActorSpawnData *var_s1 = (struct UnkActorSpawnData *)VIRTUAL_TO_PHYSICAL2(gSegmentTable[segment] + offset);
    s32 stackPadding0;
    Vec3f spD4;
    f32 var_f22;
    Mat4  sp90;
    Vec3s sp88 = { 0, 0, 0 };
    s32 test;

    if (gGamestate == CREDITS_SEQUENCE) {
        var_f22 = 9000000.0f;
    } else {
        var_f22 = 1000000.0f;
    }

    gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2);

    while (var_s1->pos[0] != -0x8000) {
        test = var_s1->someId;
        if (test & 0x0800) {
            var_s1++;
            continue;
        }

        if ((test & 0x0400) && ((D_800DC5FC == 0) || (camera == camera1))) {
            var_s1->pos[1] += 0xA;
            if (var_s1->pos[1] >= 0x321) {
                var_s1->someId |= 0x0800;
            }
        }
        spD4[0] = var_s1->pos[0] * gCourseDirection;
        spD4[1] = var_s1->pos[1];
        spD4[2] = var_s1->pos[2];

        if (func_802B80D0(camera->pos, spD4, camera->rot[1], 0.0f, D_80150130[camera - camera1], var_f22) < 0.0f) {
            var_s1++;
            continue;
        }

        test &= 0xF;
        test = (s16)test;
        if (test == 6) {
            func_802B5F74(sp90, spD4, sp88);
            if (!(D_80150112 < 0x80)) { break; }
            func_802B4FF8(sp90, 0);
            goto dummylabel;
        } else {
            arg1[3][0] = spD4[0];
            arg1[3][1] = spD4[1];
            arg1[3][2] = spD4[2];
            if (D_80150112 < 0x80) {
                func_802B4FF8(arg1, 0);
dummylabel:
                gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
                switch (test) {
                case 0:
                    gSPDisplayList(gDisplayListHead++, D_06010CC0);
                    break;
                case 4:
                    gSPDisplayList(gDisplayListHead++, D_06011DC8);
                    break;
                case 5:
                    gSPDisplayList(gDisplayListHead++, D_06012EF0);
                    break;
                case 6:
                    gSPDisplayList(gDisplayListHead++, D_060138D0);
                    break;
                }
            } else { break; }
            var_s1++;
        }
    }
}

void func_80299144(Camera *camera, Mat4 arg1, struct Actor *arg2) {
    f32 temp_f0;
    s16 temp_v0 = arg2->flags;

    if ((temp_v0 & 0x800) != 0) { return; }

    temp_f0 = func_802B80D0(camera->pos, arg2->pos, camera->rot[1], 0, D_80150130[camera - camera1], 16000000.0f);

    if (temp_f0 < 0.0f) { return; }

    if (((temp_v0 & 0x400) == 0) && (temp_f0 < 250000.0f)) {
        func_8029794C(arg2->pos, arg2->rot, 3.0f);
    }
    arg1[3][0] = arg2->pos[0];
    arg1[3][1] = arg2->pos[1];
    arg1[3][2] = arg2->pos[2];

    if (func_802B4FF8(arg1, 0) != 0) {
        gDPLoadTLUT_pal256(gDisplayListHead++, D_0D004C68);
        gSPDisplayList(gDisplayListHead++, D_06006A68);
    }
}

void func_8029930C(Camera *camera, Mat4 arg1, struct Actor *arg2) {
    f32 temp_f0;
    s16 temp_v0 = arg2->flags;

    if ((temp_v0 & 0x800) != 0) { return; }

    temp_f0 = func_802B80D0(camera->pos, arg2->pos, camera->rot[1], 0, D_80150130[camera - camera1], 4000000.0f);

    if (temp_f0 < 0.0f) { return; }

    if (((temp_v0 & 0x400) == 0) && (temp_f0 < 250000.0f)) {
        func_8029794C(arg2->pos, arg2->rot, 2.79999995f);
    }
    arg1[3][0] = arg2->pos[0];
    arg1[3][1] = arg2->pos[1];
    arg1[3][2] = arg2->pos[2];

    if (func_802B4FF8(arg1, 0) != 0) {
        gDPLoadTLUT_pal256(gDisplayListHead++, D_0D004C68);
        gSPDisplayList(gDisplayListHead++, D_06015B48);
    }
}

void func_802994D4(Camera *camera, Mat4 arg1, struct Actor *arg2) {
    f32 temp_f0;
    s16 temp_v0 = arg2->flags;

    if ((temp_v0 & 0x800) != 0) { return; }

    temp_f0 = func_802B80D0(camera->pos, arg2->pos, camera->rot[1], 0, D_80150130[camera - camera1], 4000000.0f);

    if (temp_f0 < 0.0f) { return; }

    if (((temp_v0 & 0x400) == 0) && (temp_f0 < 250000.0f)) {
        func_8029794C(arg2->pos, arg2->rot, 2.79999995f);
    }
    arg1[3][0] = arg2->pos[0];
    arg1[3][1] = arg2->pos[1];
    arg1[3][2] = arg2->pos[2];

    if (func_802B4FF8(arg1, 0) != 0) {
        gDPLoadTLUT_pal256(gDisplayListHead++, D_0D004C68);
        gSPDisplayList(gDisplayListHead++, D_0600D4A0);
    }
}

void func_8029969C(Camera *camera, Mat4 arg1, struct Actor *arg2) {
    f32 temp_f0;
    s16 temp_v0 = arg2->flags;

    if ((temp_v0 & 0x800) != 0) { return; }

    temp_f0 = func_802B80D0(camera->pos, arg2->pos, camera->rot[1], 0, D_80150130[camera - camera1], 6250000.0f);

    if (temp_f0 < 0.0f) { return; }

    if (((temp_v0 & 0x400) == 0) && (temp_f0 < 600.0f)) {
        func_8029794C(arg2->pos, arg2->rot, 5.0f);
    }
    arg1[3][0] = arg2->pos[0];
    arg1[3][1] = arg2->pos[1];
    arg1[3][2] = arg2->pos[2];

    if (func_802B4FF8(arg1, 0) != 0) {
        gDPLoadTLUT_pal256(gDisplayListHead++, D_0D004C68);
        gSPDisplayList(gDisplayListHead++, D_06013F20);
    }
}

void func_80299864(Camera *camera, Mat4 arg1, struct Actor *arg2) {
    f32 temp_f0;
    s16 temp_v0 = arg2->flags;

    if ((temp_v0 & 0x800) != 0) { return; }

    temp_f0 = func_802B80D0(camera->pos, arg2->pos, camera->rot[1], 0, D_80150130[camera - camera1], 4000000.0f);

    if (temp_f0 < 0.0f) { return; }

    if (((temp_v0 & 0x400) == 0) && (temp_f0 < 250000.0f)) {
        func_8029794C(arg2->pos, arg2->rot, 2.79999995f);
    }
    arg1[3][0] = arg2->pos[0];
    arg1[3][1] = arg2->pos[1];
    arg1[3][2] = arg2->pos[2];

    if (func_802B4FF8(arg1, 0) != 0) {
        gDPLoadTLUT_pal256(gDisplayListHead++, D_0D004C68);
        gSPDisplayList(gDisplayListHead++, D_0600FC70);
    }
}

void func_80299A2C(Camera *camera, Mat4 arg1, struct Actor *arg2) {
    f32 temp_f0;
    s16 temp_v0 = arg2->flags;

    if ((temp_v0 & 0x800) != 0) { return; }

    temp_f0 = func_802B80D0(camera->pos, arg2->pos, camera->rot[1], 0, D_80150130[camera - camera1], 4000000.0f);

    if (temp_f0 < 0.0f) { return; }

    if (((temp_v0 & 0x400) == 0) && (temp_f0 < 250000.0f)) {
        func_8029794C(arg2->pos, arg2->rot, 2.79999995f);
    }
    arg1[3][0] = arg2->pos[0];
    arg1[3][1] = arg2->pos[1];
    arg1[3][2] = arg2->pos[2];

    if (func_802B4FF8(arg1, 0) != 0) {
        gDPLoadTLUT_pal256(gDisplayListHead++, D_0D004C68);
        gSPDisplayList(gDisplayListHead++, D_0600D578);
    }
}

void func_80299BF4(Camera *camera, Mat4 arg1, struct Actor *arg2) {
    f32 temp_f0;
    s16 temp_v0 = arg2->flags;

    if ((temp_v0 & 0x800) != 0) { return; }

    temp_f0 = func_802B80D0(camera->pos, arg2->pos, camera->rot[1], 0, D_80150130[camera - camera1], 640000.0f);

    if (temp_f0 < 0.0f) { return; }

    if (((temp_v0 & 0x400) == 0) && (temp_f0 < 250000.0f)) {
        func_8029794C(arg2->pos, arg2->rot, 2.79999995f);
    }
    arg1[3][0] = arg2->pos[0];
    arg1[3][1] = arg2->pos[1];
    arg1[3][2] = arg2->pos[2];

    if (func_802B4FF8(arg1, 0) != 0) {
        gDPLoadTLUT_pal256(gDisplayListHead++, D_0D004C68);
        gSPDisplayList(gDisplayListHead++, D_060090C8);
    }
}

void func_80299DBC(Camera *camera, Mat4 arg1, struct Actor *arg2) {
    f32 temp_f0;
    s16 temp_v0 = arg2->flags;

    if ((temp_v0 & 0x800) != 0) { return; }

    temp_f0 = func_802B80D0(camera->pos, arg2->pos, camera->rot[1], 0, D_80150130[camera - camera1], 4000000.0f);

    if (temp_f0 < 0.0f) { return; }

    if (((temp_v0 & 0x400) == 0) && (temp_f0 < 250000.0f)) {
        func_8029794C(arg2->pos, arg2->rot, 2.79999995f);
    }
    arg1[3][0] = arg2->pos[0];
    arg1[3][1] = arg2->pos[1];
    arg1[3][2] = arg2->pos[2];

    if (func_802B4FF8(arg1, 0) != 0) {
        gSPDisplayList(gDisplayListHead++, D_060075A0);
    }
}

void func_80299EDC(Camera *camera, Mat4 arg1, struct Actor *arg2) {
    f32 temp_f0;
    s16 temp_v0 = arg2->flags;

    if ((temp_v0 & 0x800) != 0) { return; }

    temp_f0 = func_802B80D0(camera->pos, arg2->pos, camera->rot[1], 0, D_80150130[camera - camera1], 4000000.0f);

    if (temp_f0 < 0.0f) { return; }

    if (((temp_v0 & 0x400) == 0) && (temp_f0 < 40000.0f)) {
        func_8029794C(arg2->pos, arg2->rot, 1.0f);
    }
    arg1[3][0] = arg2->pos[0];
    arg1[3][1] = arg2->pos[1];
    arg1[3][2] = arg2->pos[2];

    if (func_802B4FF8(arg1, 0) != 0) {
        gSPDisplayList(gDisplayListHead++, D_06008528);
    }
}

void func_80299FFC(Camera *camera, Mat4 arg1, struct Actor *arg2) {
    f32 temp_f0;
    s16 temp_v0 = arg2->flags;

    if ((temp_v0 & 0x800) != 0) { return; }

    temp_f0 = func_802B80D0(camera->pos, arg2->pos, camera->rot[1], 0, D_80150130[camera - camera1], 4000000.0f);

    if (temp_f0 < 0.0f) { return; }

    if (((temp_v0 & 0x400) == 0) && (temp_f0 < 40000.0f)) {
        func_8029794C(arg2->pos, arg2->rot, 1.0f);
    }
    arg1[3][0] = arg2->pos[0];
    arg1[3][1] = arg2->pos[1];
    arg1[3][2] = arg2->pos[2];

    if (func_802B4FF8(arg1, 0) != 0) {
        gSPDisplayList(gDisplayListHead++, D_06008628);
    }
}

void func_8029A11C(Camera *camera, Mat4 arg1, struct Actor *arg2) {
    f32 temp_f0;
    s16 temp_v0 = arg2->flags;

    if ((temp_v0 & 0x800) != 0) { return; }

    temp_f0 = func_802B80D0(camera->pos, arg2->pos, camera->rot[1], 0, D_80150130[camera - camera1], 4000000.0f);

    if (temp_f0 < 0.0f) { return; }

    if (((temp_v0 & 0x400) == 0) && (temp_f0 < 40000.0f)) {
        func_8029794C(arg2->pos, arg2->rot, 0.80000001f);
    }
    arg1[3][0] = arg2->pos[0];
    arg1[3][1] = arg2->pos[1];
    arg1[3][2] = arg2->pos[2];

    if (func_802B4FF8(arg1, 0) != 0) {
        gSPDisplayList(gDisplayListHead++, D_06008728);
    }
}

void func_8029A23C(Camera *camera, Mat4 arg1, struct Actor *actor) {
    uintptr_t addr;

    if (actor->state == 0) { return; }

    arg1[3][0] = actor->pos[0];
    arg1[3][1] = actor->pos[1];
    arg1[3][2] = actor->pos[2];

    if (func_802B4FF8(arg1, 0) == 0) { return; }

    addr = (actor->rot[0] << 0xA) + 0x03009000; // Can this be a real symbol? Doesn't match.
    gDPLoadTextureBlock(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(addr), 
            G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, 
            G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    gSPDisplayList(gDisplayListHead++, D_06013BB8);
}

void func_8029A3AC(Camera *camera, Mat4 arg1, struct ShellActor *shell) {
    s16 pad;
    u16 temp_t8;
    s32 pad2;
    s16 sp58[15] = // D_802B87E8;
    {
        0x0000, 0x0400, 0x0800, 0x0c00,
        0x1000, 0x1400, 0x1800, 0x1c00,
        0x1c00, 0x1800, 0x1400, 0x1000,
        0x0c00, 0x0800, 0x0400
    };
    uintptr_t phi_t3;

    f32 temp_f0 = func_802B80D0(camera->pos, shell->pos, camera->rot[1], 0, D_80150130[camera - camera1], 490000.0f);
    if (temp_f0 < 0.0f) {
        func_80297230(camera, (struct Actor *)shell);
        return;
    }
    func_802972B8(camera, (struct Actor *) shell);
    if (temp_f0 < 40000.0f) {
        func_802979F8((struct Actor *) shell, 3.4f);
    }
    if (shell->type == ACTOR_BLUE_SPINY_SHELL) {
        phi_t3 = D_802BA054;
    } else {
        phi_t3 = D_802BA050;
    }
    temp_t8 = (u16) shell->rotVelocity / 4369;
    phi_t3 += sp58[temp_t8];

    arg1[3][0] =  shell->pos[0];
    arg1[3][1] = (shell->pos[1] - shell->boundingBoxSize) + 1.0f;
    arg1[3][2] =  shell->pos[2];

    if (func_802B4FF8(arg1, 0) == 0) { return; }

    gDPLoadTextureBlock(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(phi_t3), 
        G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, 
        G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    if (temp_t8 < 8) {
        gSPDisplayList(gDisplayListHead++, D_0D005338);
    } else {
        gSPDisplayList(gDisplayListHead++, D_0D005368);
    }
}

UNUSED s16 D_802B8808[] = {
    0x0014, 0x0028, 0x0000, 0x0000
};

UNUSED s16 D_802B8810[] = {
    0x0fc0, 0x0000, 0xffff, 0xffff, 0x0014, 0x0000, 0x0000, 0x0000,
    0x0fc0, 0x0fc0, 0xffff, 0xffff, 0xffec, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0fc0, 0xffff, 0xffff, 0xffec, 0x0028, 0x0000, 0x0000,
    0x0000, 0x0000, 0xffff, 0xffff
};

void func_8029A690(Camera *arg0, Mat4 arg1, struct ShellActor *arg2) {
    gDPLoadTLUT_pal256(gDisplayListHead++, gTLUTGreenShell);
    func_8029A3AC(arg0, arg1, arg2);
}

void func_8029A75C(Camera *arg0, Mat4 arg1, struct ShellActor *arg2) {
    gDPLoadTLUT_pal256(gDisplayListHead++, &D_802BA060);
    func_8029A3AC(arg0, arg1, arg2);
}

// Middle of a tlut access
void func_8029A828(Camera *arg0, Mat4 arg1, struct ShellActor *arg2) {
    gDPLoadTLUT_pal256(gDisplayListHead++, gTLUTBlueShell);
    func_8029A3AC(arg0, arg1, arg2);
}

void func_8029A8F4(Camera *arg0, Mat4 arg1, struct BananaActor *arg2) {
    s32 pad[3];
    Vec3s sp7C;
    Mat4 sp3C;

    f32 temp = func_802B80D0(arg0->pos, arg2->pos, arg0->rot[1], 0, D_80150130[arg0 - camera1], 490000.0f);
    if (temp < 0.0f) {
        func_80297230(arg0, arg2);
        return;
    }

    if ((arg2->pos[1] > D_8015F6EC + 800.0f)) {
        func_80297230(arg0, arg2);
        return;
    }
    if (arg2->pos[1] < (D_8015F6EE - 800.0f)) {
        func_80297230(arg0, arg2);
        return;
    }
    func_802972B8(arg0, arg2);

    if (arg2->state == 5) {
        func_802B5F74(sp3C, arg2->pos, arg2->rot);
    } else {
        sp7C[0] = 0;
        sp7C[1] = 0;
        sp7C[2] = 0;
        func_802B5F74(sp3C, arg2->pos, sp7C);
    }

    if (func_802B4FF8(sp3C, 0) == 0) { return; }

    if (arg2->state != 5) {
        gSPDisplayList(gDisplayListHead++, &D_0D004B48);
    } else {
        gSPDisplayList(gDisplayListHead++, &D_0D004BD8);
    }
}

void update_obj_wario_stadium_sign(struct Actor *arg0) {
    arg0->rot[1] += 0xB6;
}

/**
 * If train close activate bell sound according to timing
 **/
void update_obj_railroad_crossing(struct RailroadCrossing *crossing) {
    // If train close?
    if (D_801637B8[crossing->crossingId] != 0) {
        // Timer++
        crossing->someTimer++;
        // Reset timer
        if (crossing->someTimer > 40) {
            crossing->someTimer = 1;
        }
        // Play Bell sound when timer hits 20 or 1.
        if ((crossing->someTimer == 1) || (crossing->someTimer == 20)) {
            func_800C98B8(crossing->pos, crossing->velocity, 0x19017016);
        }
    }
}

void update_obj_mario_raceway_sign(struct Actor *arg0) {
    if ((arg0->flags & 0x800) == 0) {
        if ((arg0->flags & 0x400) != 0) {
            arg0->pos[1] += 4.0f;
            if (arg0->pos[1] > 800.0f) {
                arg0->flags |= 0x800;
                arg0->rot[1] += 1820;
            }
        } else {
            arg0->rot[1] += 182;
        }
    }
}

UNUSED void func_8029ABD4(f32 *pos, s16 state) {
    gNumActors = 0;
    gActorList[func_8029ED38(pos, 0x0014)].state = state;
}

void func_8029AC18(Camera *camera, Mat4 arg1, struct Actor *arg2) {
    if (func_802B80D0(camera->pos, arg2->pos, camera->rot[1], 0, D_80150130[camera - camera1], 4000000.0f) < 0) { return; }

    arg1[3][0] = arg2->pos[0];
    arg1[3][1] = arg2->pos[1] - arg2->boundingBoxSize;
    arg1[3][2] = arg2->pos[2];

    if (func_802B4FF8(arg1, 0) != 0) {
        gSPDisplayList(gDisplayListHead++, &D_0D001750);

        switch (arg2->state) {
        case 0:
            gSPDisplayList(gDisplayListHead++, &D_0D001780);
            break;
        case 1:
            gSPDisplayList(gDisplayListHead++, &D_0D001798);
            break;
        case 2:
            gSPDisplayList(gDisplayListHead++, &D_0D0017B0);
            break;
        case 3:
            gSPDisplayList(gDisplayListHead++, &D_0D0017C8);
            break;
        case 4:
            gSPDisplayList(gDisplayListHead++, &D_0D0017E0);
            break;
        case 5:
            gSPDisplayList(gDisplayListHead++, &D_0D0017F8);
            break;
        case 6:
            gSPDisplayList(gDisplayListHead++, &D_0D001810);
            break;
        case 7:
            gSPDisplayList(gDisplayListHead++, &D_0D001828);
            break;
        }
    }
}

UNUSED void func_8029AE14() {

}

// This likely attaches the paddle wheel to the boat
void func_8029AE1C(Camera *arg0, struct PaddleWheelBoat *boat, Mat4 arg2, u16 arg3) {
    s32 pad[3];
    Vec3f sp120;
    Mat4 spE0;
    Mat4 spA0;
    Mat4 sp60;
    f32 temp;

    if ((arg3 > 20) && (arg3 < 25)) { return; }
        temp = func_802B80D0(arg0->pos, boat->pos, arg0->rot[1], 90000.0f, D_80150130[arg0 - camera1], 9000000.0f);

    if (temp < 0.0f) { return; }

        gSPSetLights1(gDisplayListHead++, D_800DC610[1]);
        gSPSetGeometryMode(gDisplayListHead++, G_SHADE | G_LIGHTING | G_SHADING_SMOOTH);

        func_802B5F74(spE0, boat->pos, boat->boatRot);
        if (func_802B4FF8(spE0, 1) != 0) {

            gSPDisplayList(gDisplayListHead++, &D_0600E730);
            gSPDisplayList(gDisplayListHead++, &D_0600E058);

            func_802B59DC(spE0, boat->wheelRot);
            vec3f_set(sp120, 0, 16.0f, -255.0f);
            mtxf_translate(spA0, sp120);
            func_802B71CC(sp60, spE0, spA0);
            if (func_802B4FF8(sp60, 3) != 0) {
                gSPClearGeometryMode(gDisplayListHead++, G_CULL_BACK);
                gSPDisplayList(gDisplayListHead++, &D_0600FC28);
                gSPPopMatrix(gDisplayListHead++, G_MTX_MODELVIEW);
                gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
            }
        }
}

void func_8029B06C(Camera *arg0, struct Actor *arg1) {
    s32 pad[6];
    Mat4 spD8;
    s32 pad2[32];
    f32 temp_f0 = func_802B80D0(arg0->pos, arg1->pos, arg0->rot[1], 2500.0f, D_80150130[arg0 - camera1], 9000000.0f);
    if (temp_f0 < 0.0f) { return; }

        gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
        gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);

        func_802B5F74(spD8, arg1->pos, arg1->rot);
        if (func_802B4FF8(spD8, 0) != 0) {

            switch(arg1->state) {
                case 0:
                    gSPDisplayList(gDisplayListHead++, &D_06023858);
                    break;
                case 1:
                    gSPDisplayList(gDisplayListHead++, &D_060238A0);
                    break;
                case 2:
                    gSPDisplayList(gDisplayListHead++, &D_060238E8);
                    break;
            }

            if (gActiveScreenMode == SCREEN_MODE_1P) {
                if (temp_f0 < 160000.0f) {
                    gSPDisplayList(gDisplayListHead++, &toads_turnpike_dl_0);
                } else if (temp_f0 < 640000.0f) {
                    gSPDisplayList(gDisplayListHead++, &toads_turnpike_dl_1);
                } else {
                    gSPDisplayList(gDisplayListHead++, &toads_turnpike_dl_2);
                }
            } else if (temp_f0 < 160000.0f) {
                gSPDisplayList(gDisplayListHead++, &toads_turnpike_dl_1);
            } else {
                gSPDisplayList(gDisplayListHead++, &toads_turnpike_dl_2);
            }
        }
}

void func_8029B2E4(Camera *arg0, struct Actor *arg1) {
    s32 pad[6];
    Mat4 spC8;
    s32 pad2[32];
    f32 temp_f0;

    temp_f0 = func_802B80D0(arg0->pos, arg1->pos, arg0->rot[1], 2500.0f, D_80150130[arg0 - camera1], 9000000.0f);
    if (temp_f0 < 0.0f) { return; }

        gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
        gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);


        func_802B5F74(spC8, arg1->pos, arg1->rot);
        if (func_802B4FF8(spC8, 0) != 0) {

            if (gActiveScreenMode == SCREEN_MODE_1P) {
                if (temp_f0 < 160000.0f) {
                    gSPDisplayList(gDisplayListHead++, &toads_turnpike_dl_3);
                } else if (temp_f0 < 640000.0f) {
                    gSPDisplayList(gDisplayListHead++, &toads_turnpike_dl_4);
                } else {
                    gSPDisplayList(gDisplayListHead++, &toads_turnpike_dl_5);
                }
            } else if (temp_f0 < 160000.0f) {
                gSPDisplayList(gDisplayListHead++, &toads_turnpike_dl_4);
            } else {
                gSPDisplayList(gDisplayListHead++, &toads_turnpike_dl_5);
            }
        }
}

void func_8029B4E0(Camera *arg0, struct Actor *arg1) {
    s32 pad[6];
    Mat4 spC8;
    s32 pad2[32];
    f32 temp_f0 = func_802B80D0(arg0->pos,arg1->pos, arg0->rot[1], 2500.0f, D_80150130[arg0 - camera1], 9000000.0f);

    if (!(temp_f0 < 0.0f)) {

        gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
        gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);


        func_802B5F74(spC8, arg1->pos, arg1->rot);
        func_802B5F00(spC8, 0.1f);
        if (func_802B4FF8(spC8, 0) != 0) {

            if (gActiveScreenMode == SCREEN_MODE_1P) {
                if (temp_f0 < 160000.0f) {
                    gSPDisplayList(gDisplayListHead++, &toads_turnpike_dl_9);
                } else if (temp_f0 < 640000.0f) {
                    gSPDisplayList(gDisplayListHead++, &toads_turnpike_dl_10);
                } else {
                    gSPDisplayList(gDisplayListHead++, &toads_turnpike_dl_11);
                }
            } else if (temp_f0 < 160000.0f) {
                gSPDisplayList(gDisplayListHead++, &toads_turnpike_dl_10);
            } else {
                gSPDisplayList(gDisplayListHead++, &toads_turnpike_dl_11);
            }
        }
    }
}

void func_8029B6EC(Camera *camera, struct Actor* arg1) {
    s32 pad[6];
    Mat4 spC8;
    s32 pad2[32];
    f32 temp_f0 = func_802B80D0(camera->pos, arg1->pos, camera->rot[1], 2500.0f, D_80150130[camera - camera1], 9000000.0f);

    if (!(temp_f0 < 0.0f)) {

        gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
        gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);

        func_802B5F74(spC8, arg1->pos, arg1->rot);
        if (func_802B4FF8(spC8, 0) != 0) {

            if (gActiveScreenMode == SCREEN_MODE_1P) {
                if (temp_f0 < 160000.0f) {

                    gSPDisplayList(gDisplayListHead++, &toads_turnpike_dl_6);
                } else if (temp_f0 < 640000.0f) {
                    gSPDisplayList(gDisplayListHead++, &toads_turnpike_dl_7);
                } else {
                    gSPDisplayList(gDisplayListHead++, &toads_turnpike_dl_8);
                }
                } else if (temp_f0 < 160000.0f) {
                    gSPDisplayList(gDisplayListHead++, &toads_turnpike_dl_7);
                } else {
                    gSPDisplayList(gDisplayListHead++, &toads_turnpike_dl_8);
                }
        }
    }
}

// Spins train wheels?
void func_8029B8E8(Camera *camera, struct TrainCar *actor) {
    s32 pad[3];
    Vec3f sp160;
    Mat4 sp120;
    Mat4 spE0;
    Mat4 spA0;

    f32 temp_f0 = func_802B80D0(camera->pos, actor->pos, camera->rot[1], 2500.0f, D_80150130[camera - camera1], 9000000.0f);

    if (temp_f0 < 0.0f) { return; }

    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);

    func_802B5F74(sp120, actor->pos, actor->rot);
    if (func_802B4FF8(sp120, 0) == 0) { return; }

    if (temp_f0 < 122500.0f) {

        gSPDisplayList(gDisplayListHead++, D_0601C0F0);
        gSPDisplayList(gDisplayListHead++, D_0601B978);

    } else if (temp_f0 < 640000.0f) {

        gSPDisplayList(gDisplayListHead++, D_0601D670);
        gSPDisplayList(gDisplayListHead++, D_0601D160);
    } else {
        gSPDisplayList(gDisplayListHead++, D_0601E910);
        gSPDisplayList(gDisplayListHead++, D_0601E480);
    }
    if (1440000.0f < temp_f0) { return; }

    gSPClearGeometryMode(gDisplayListHead++, G_CULL_BACK);
    gSPDisplayList(gDisplayListHead++, D_06022D28);

    func_802B59DC(sp120, actor->wheelRot);
    vec3f_set(sp160, 17.0f, 6.0f, 32.0f);
    mtxf_translate(spE0, sp160);
    func_802B71CC(spA0, sp120, spE0);

    if (func_802B4FF8(spA0, 3) == 0) { return; }

    gSPDisplayList(gDisplayListHead++, D_06022DB8);
    gSPPopMatrix(gDisplayListHead++, G_MTX_MODELVIEW);

    func_802B59DC(sp120, actor->wheelRot);
    vec3f_set(sp160, -17.0, 6.0f, 32.0f);
    mtxf_translate(spE0, sp160);
    func_802B71CC(spA0, sp120, spE0);

    if (func_802B4FF8(spA0, 3) == 0) { return; }

    gSPDisplayList(gDisplayListHead++, D_06022DB8);
    gSPPopMatrix(gDisplayListHead++, G_MTX_MODELVIEW);

    func_802B59DC(sp120, (s16) (actor->wheelRot + 0x16C));
    vec3f_set(sp160, 17.0f, 6.0f, 16.0f);
    mtxf_translate(spE0, sp160);
    func_802B71CC(spA0, sp120, spE0);

    if (func_802B4FF8(spA0, 3) == 0) { return; }

    gSPDisplayList(gDisplayListHead++, D_06022DB8);
    gSPPopMatrix(gDisplayListHead++, G_MTX_MODELVIEW);

    func_802B59DC(sp120, (s16) (actor->wheelRot + 0x16C));
    vec3f_set(sp160, -17.0f, 6.0f, 16.0f);
    mtxf_translate(spE0, sp160);
    func_802B71CC(spA0, sp120, spE0);

    if (func_802B4FF8(spA0, 3) == 0) { return; }

    gSPDisplayList(gDisplayListHead++, D_06022DB8);
    gSPPopMatrix(gDisplayListHead++, G_MTX_MODELVIEW);

    func_802B59DC(sp120, (s16) (actor->wheelRot + 0x444));
    vec3f_set(sp160, 17.0f, 12.0f, -12.0f);
    mtxf_translate(spE0, &sp160);
    func_802B71CC(spA0, sp120, spE0);

    if (func_802B4FF8(spA0, 3) == 0) { return; }

    gSPDisplayList(gDisplayListHead++, D_06022D70);
    gSPPopMatrix(gDisplayListHead++, G_MTX_MODELVIEW);

    func_802B59DC(sp120, (s16) (actor->wheelRot + 0x444));
    vec3f_set(&sp160, -17.0f, 12.0f, -12.0f);
    mtxf_translate(spE0, sp160);
    func_802B71CC(spA0, sp120, spE0);

    if (func_802B4FF8(spA0, 3) == 0) { return; }

    gSPDisplayList(gDisplayListHead++, D_06022D70);
    gSPPopMatrix(gDisplayListHead++, G_MTX_MODELVIEW);

    func_802B59DC(sp120, (s16) (actor->wheelRot + 0x2D8));
    vec3f_set(&sp160, 17.0f, 12.0f, -34.0f);
    mtxf_translate(spE0, &sp160);
    func_802B71CC(spA0, sp120, spE0);

    if (func_802B4FF8(spA0, 3) == 0) { return; }

    gSPDisplayList(gDisplayListHead++, D_06022D70);
    gSPPopMatrix(gDisplayListHead++, G_MTX_MODELVIEW);

    func_802B59DC(sp120, (s16) (actor->wheelRot + 0x2D8));
    vec3f_set(sp160, -17.0f, 12.0f, -34.0f);
    mtxf_translate(spE0, sp160);
    func_802B71CC(spA0, sp120, spE0);

    if (func_802B4FF8(spA0, 3) == 0) { return; }

    gSPDisplayList(gDisplayListHead++, D_06022D70);
    gSPPopMatrix(gDisplayListHead++, G_MTX_MODELVIEW);
    gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
}

void func_8029BFB0(Camera *camera, struct TrainCar *actor) {
    Mat4 sp120;
    Vec3f sp160;
    Mat4 spE0;
    Mat4 spA0;

    f32 temp_f0 = func_802B80D0(camera->pos, actor->pos, camera->rot[1], 625.0f, D_80150130[camera - camera1], 9000000.0f);

    if (temp_f0 < 0.0f) { return; }

    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);

    func_802B5F74(sp120, actor->pos, actor->rot);
    if (func_802B4FF8(sp120, 0) == 0) { return; }

    if (temp_f0 < 250000.0f) {

        gSPDisplayList(gDisplayListHead++, D_0601F228);

    } else if (temp_f0 < 1000000.0f) {
        gSPDisplayList(gDisplayListHead++, D_0601F708);
    } else {
        gSPDisplayList(gDisplayListHead++, D_0601FAF8);
    }
    if (1440000.0f < temp_f0) { return; }

    gSPClearGeometryMode(gDisplayListHead++, G_CULL_BACK);
    gSPDisplayList(gDisplayListHead++, D_06022D28);

    func_802B59DC(sp120, actor->wheelRot);
    vec3f_set(sp160, 17.0f, 6.0f, 8.0f);
    mtxf_translate(spE0, sp160);
    func_802B71CC(spA0, sp120, spE0);

    if (func_802B4FF8(spA0, 3) == 0) { return; }

    gSPDisplayList(gDisplayListHead++, D_06022DB8);
    gSPPopMatrix(gDisplayListHead++, G_MTX_MODELVIEW);

    func_802B59DC(sp120, actor->wheelRot);
    vec3f_set(sp160, -17.0, 6.0f, 8.0f);
    mtxf_translate(spE0, sp160);
    func_802B71CC(spA0, sp120, spE0);

    if (func_802B4FF8(spA0, 3) == 0) { return; }

    gSPDisplayList(gDisplayListHead++, D_06022DB8);
    gSPPopMatrix(gDisplayListHead++, G_MTX_MODELVIEW);

    func_802B59DC(sp120, (s16) (actor->wheelRot + 0x444));
    vec3f_set(sp160, 17.0f, 6.0f, -8.0f);
    mtxf_translate(spE0, sp160);
    func_802B71CC(spA0, sp120, spE0);

    if (func_802B4FF8(spA0, 3) == 0) { return; }

    gSPDisplayList(gDisplayListHead++, D_06022DB8);
    gSPPopMatrix(gDisplayListHead++, G_MTX_MODELVIEW);

    func_802B59DC(sp120, (s16) (actor->wheelRot + 0x444));
    vec3f_set(sp160, -17.0f, 6.0f, -8.0f);
    mtxf_translate(spE0, sp160);
    func_802B71CC(spA0, sp120, spE0);

    if (func_802B4FF8(spA0, 3) == 0) { return; }
    gSPDisplayList(gDisplayListHead++, D_06022DB8);
    gSPPopMatrix(gDisplayListHead++, G_MTX_MODELVIEW);
    gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
}

void func_8029C3CC(Camera *camera, struct TrainCar *actor) {
    Mat4 sp120;
    Vec3f sp160;
    Mat4 spE0;
    Mat4 spA0;

    f32 temp_f0 = func_802B80D0(camera->pos, actor->pos, camera->rot[1], 2025.0f, D_80150130[camera - camera1], 9000000.0f);

    if (temp_f0 < 0.0f) { return; }

    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);

    func_802B5F74(sp120, actor->pos, actor->rot);
    if (func_802B4FF8(sp120, 0) == 0) { return; }

    if (temp_f0 < 250000.0f) {

        gSPDisplayList(gDisplayListHead++, D_06020A20);
        gSPDisplayList(gDisplayListHead++, D_06020A08);

    } else if (temp_f0 < 1000000.0f) {

        gSPDisplayList(gDisplayListHead++, D_06021550);
        gSPDisplayList(gDisplayListHead++, D_06021220);
    } else {
        gSPDisplayList(gDisplayListHead++, D_06021C90);
        gSPDisplayList(gDisplayListHead++, D_06021A80);
    }
    if (1440000.0f < temp_f0) { return; }

    gSPClearGeometryMode(gDisplayListHead++, G_CULL_BACK);
    gSPDisplayList(gDisplayListHead++, D_06022D28);

    func_802B59DC(sp120, actor->wheelRot);
    vec3f_set(sp160, 17.0f, 6.0f, 28.0f);
    mtxf_translate(spE0, sp160);
    func_802B71CC(spA0, sp120, spE0);

    if (func_802B4FF8(spA0, 3) == 0) { return; }

    gSPDisplayList(gDisplayListHead++, D_06022DB8);
    gSPPopMatrix(gDisplayListHead++, G_MTX_MODELVIEW);

    func_802B59DC(sp120, actor->wheelRot);
    vec3f_set(sp160, -17.0, 6.0f, 28.0f);
    mtxf_translate(spE0, sp160);
    func_802B71CC(spA0, sp120, spE0);

    if (func_802B4FF8(spA0, 3) == 0) { return; }

    gSPDisplayList(gDisplayListHead++, D_06022DB8);
    gSPPopMatrix(gDisplayListHead++, G_MTX_MODELVIEW);

    func_802B59DC(sp120, (s16) (actor->wheelRot + 0x222));
    vec3f_set(sp160, 17.0f, 6.0f, 12.0f);
    mtxf_translate(spE0, sp160);
    func_802B71CC(spA0, sp120, spE0);

    if (func_802B4FF8(spA0, 3) == 0) { return; }

    gSPDisplayList(gDisplayListHead++, D_06022DB8);
    gSPPopMatrix(gDisplayListHead++, G_MTX_MODELVIEW);

    func_802B59DC(sp120, (s16) (actor->wheelRot + 0x222));
    vec3f_set(sp160, -17.0f, 6.0f, 12.0f);
    mtxf_translate(spE0, sp160);
    func_802B71CC(spA0, sp120, spE0);

    if (func_802B4FF8(spA0, 3) == 0) { return; }

    gSPDisplayList(gDisplayListHead++, D_06022DB8);
    gSPPopMatrix(gDisplayListHead++, G_MTX_MODELVIEW);

    func_802B59DC(sp120, (s16) (actor->wheelRot + 0x5B0));
    vec3f_set(sp160, 17.0f, 6.0f, -8.0f);
    mtxf_translate(spE0, &sp160);
    func_802B71CC(spA0, sp120, spE0);

    if (func_802B4FF8(spA0, 3) == 0) { return; }

    gSPDisplayList(gDisplayListHead++, D_06022DB8);
    gSPPopMatrix(gDisplayListHead++, G_MTX_MODELVIEW);

    func_802B59DC(sp120, (s16) (actor->wheelRot + 0x5B0));
    vec3f_set(&sp160, -17.0f, 6.0f, -8.0f);
    mtxf_translate(spE0, sp160);
    func_802B71CC(spA0, sp120, spE0);

    if (func_802B4FF8(spA0, 3) == 0) { return; }

    gSPDisplayList(gDisplayListHead++, D_06022DB8);
    gSPPopMatrix(gDisplayListHead++, G_MTX_MODELVIEW);

    func_802B59DC(sp120, (s16) (actor->wheelRot + 0x16C));
    vec3f_set(&sp160, 17.0f, 6.0f, -24.0f);
    mtxf_translate(spE0, &sp160);
    func_802B71CC(spA0, sp120, spE0);

    if (func_802B4FF8(spA0, 3) == 0) { return; }

    gSPDisplayList(gDisplayListHead++, D_06022DB8);
    gSPPopMatrix(gDisplayListHead++, G_MTX_MODELVIEW);

    func_802B59DC(sp120, (s16) (actor->wheelRot + 0x16C));
    vec3f_set(sp160, -17.0f, 6.0f, -24.0f);
    mtxf_translate(spE0, sp160);
    func_802B71CC(spA0, sp120, spE0);

    if (func_802B4FF8(spA0, 3) == 0) { return; }

    gSPDisplayList(gDisplayListHead++, D_06022DB8);
    gSPPopMatrix(gDisplayListHead++, G_MTX_MODELVIEW);
    gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
}

void func_8029CA90(Camera *camera, struct FallingRock *rock) {
    Vec3s sp98;
    Vec3f sp8C;
    Mat4 sp4C;
    f32 temp_f0;
    s32 pad[4];

    if (rock->respawnTimer != 0) { return; }

    temp_f0 = func_802B80D0(camera->pos, rock->pos, camera->rot[1], 400.0f, D_80150130[camera - camera1], 4000000.0f);

    if (temp_f0 < 0.0f) { return; }

    if (temp_f0 < 250000.0f) {
    
        if (rock->unk30.unk34 == 1) {
            sp8C[0] = rock->pos[0];
            sp8C[2] = rock->pos[2];
            temp_f0 = func_802ABE30(sp8C[0], rock->pos[1], sp8C[2], rock->unk30.unk3A);
            sp98[0] = 0;
            sp98[1] = 0;
            sp98[2] = 0;
            sp8C[1] = temp_f0 + 2.0f;
            func_802B5F74(sp4C, sp8C, sp98);
            if (func_802B4FF8(sp4C, 0) == 0) {
                return;
            }
            gSPDisplayList(gDisplayListHead++, D_06006F88);
        }
    }
    func_802B5F74(sp4C, rock->pos, rock->rot);
    if (func_802B4FF8(sp4C, 0) == 0) {
        return;
    }
    gSPDisplayList(gDisplayListHead++, D_06006FE0);
}

void place_piranha_plants(struct ActorSpawnData *spawnData) {
    s32 segment = SEGMENT_NUMBER2(spawnData);
    s32 offset = SEGMENT_OFFSET(spawnData);
    struct ActorSpawnData *temp_s0 = VIRTUAL_TO_PHYSICAL2(gSegmentTable[segment] + offset);
    struct PiranhaPlant *temp_v1;
    s32 pad;
    Vec3f startingPos;
    Vec3f startingVelocity;
    Vec3s startingRot;
    s32 temp;

    vec3f_set(startingVelocity, 0, 0, 0);
    vec3s_set(startingRot, 0, 0, 0);

    while (temp_s0->pos[0] != -0x8000) {
        startingPos[0] = temp_s0->pos[0] * gCourseDirection;
        startingPos[1] = temp_s0->pos[1];
        startingPos[2] = temp_s0->pos[2];
        temp = addActorToEmptySlot(startingPos, startingRot, startingVelocity, ACTOR_PIRANHA_PLANT);
        temp_v1 = (struct PiranhaPlant *) &gActorList[temp];
        temp_v1->visibilityStates[0] = 0;
        temp_v1->visibilityStates[1] = 0;
        temp_v1->visibilityStates[2] = 0;
        temp_v1->visibilityStates[3] = 0;
        temp_v1->timers[0] = 0;
        temp_v1->timers[1] = 0;
        temp_v1->timers[2] = 0;
        temp_v1->timers[3] = 0;
        temp_s0++;
    }
}

void place_palm_trees(struct ActorSpawnData *spawnData) {
    s32 segment = SEGMENT_NUMBER2(spawnData);
    s32 offset = SEGMENT_OFFSET(spawnData);
    struct ActorSpawnData *temp_s0 = VIRTUAL_TO_PHYSICAL2(gSegmentTable[segment] + offset);
    struct PalmTree *temp_v1;
    Vec3f startingPos;
    Vec3f startingVelocity;
    Vec3s startingRot;
    s32 temp;

    vec3f_set(startingVelocity, 0, 0, 0);
    vec3s_set(startingRot, 0, 0, 0);

    while (temp_s0->pos[0] != -0x8000) {
        startingPos[0] = temp_s0->pos[0] * gCourseDirection;
        startingPos[1] = temp_s0->pos[1];
        startingPos[2] = temp_s0->pos[2];
        temp = addActorToEmptySlot(startingPos, startingRot, startingVelocity, ACTOR_PALM_TREE);
        temp_v1 = (struct PalmTree *) &gActorList[temp];

        temp_v1->visibilityStates[0] = temp_s0->someId;
        func_802ADDC8((UnkActorInner *) &temp_v1->unk30, 5.0f, temp_v1->pos[0], temp_v1->pos[1], temp_v1->pos[2]);
        func_802976EC((UnkActorInner *) &temp_v1->unk30, temp_v1->unk10);
        temp_s0++;
    }
}

void func_8029CF0C(struct ActorSpawnData *spawnData, struct FallingRock *rock) {
    s32 segment = SEGMENT_NUMBER2(spawnData);
    s32 offset = SEGMENT_OFFSET(spawnData);
    struct ActorSpawnData *temp_v0 = VIRTUAL_TO_PHYSICAL2(gSegmentTable[segment] + offset); // + (temp_v1 * 8);
    Vec3s sp24 = {60, 120, 180};
    temp_v0 += rock->unk_06;
    rock->respawnTimer = sp24[rock->unk_06]; // * 2
    rock->pos[0] = (f32) temp_v0->pos[0] * gCourseDirection;
    rock->pos[1] = (f32) temp_v0->pos[1] + 10.0f;
    rock->pos[2] = (f32) temp_v0->pos[2];
    vec3f_set(rock->velocity, 0, 0, 0);
    vec3s_set(rock->rot, 0, 0, 0);
}

void place_falling_rocks(struct ActorSpawnData *spawnData) {
    s32 addr = SEGMENT_NUMBER2(spawnData);
    s32 offset = SEGMENT_OFFSET(spawnData);
    struct ActorSpawnData *temp_s0 = VIRTUAL_TO_PHYSICAL2(gSegmentTable[addr]) + offset;
    struct FallingRock *temp_v1;
    Vec3f startingPos;
    Vec3f startingVelocity;
    Vec3s startingRot;
    s16 temp;

    while (temp_s0->pos[0] != -0x8000) {
        startingPos[0] = temp_s0->pos[0] * gCourseDirection;
        startingPos[1] = temp_s0->pos[1] + 10.0f;
        startingPos[2] = temp_s0->pos[2];
        vec3f_set(startingVelocity, 0, 0, 0);
        vec3s_set(startingRot, 0, 0, 0);
        temp = addActorToEmptySlot(startingPos, startingRot, startingVelocity, ACTOR_FALLING_ROCK);
        temp_v1 = (struct FallingRock *) &gActorList[temp];

        temp_v1->unk_06 = temp_s0->someId;
        func_802AAAAC((UnkActorInner *) &temp_v1->unk30);
        temp_s0++;
    }
}

void update_obj_falling_rocks(struct FallingRock *rock) {
    Vec3f unkVec;
    f32 pad0;
    f32 pad1;

    if (rock->respawnTimer != 0) {
        rock->respawnTimer -= 1;
        return;
    }
    if (rock->pos[1] < D_8015F8E4) {
        func_8029CF0C(&D_06007230, rock);
    }
    rock->rot[0] += (s16) ((rock->velocity[2] * 5461.0f) / 20.0f);
    rock->rot[2] += (s16) ((rock->velocity[0] * 5461.0f) / 20.0f);
    rock->velocity[1] -= 0.1;
    if (rock->velocity[1] < (-2.0f)) {
        rock->velocity[1] = -2.0f;
    }
    rock->pos[0] += rock->velocity[0];
    rock->pos[1] += rock->velocity[1];
    rock->pos[2] += rock->velocity[2];
    pad1 = rock->velocity[1];
    func_802ADDC8(&rock->unk30, 10.0f, rock->pos[0], rock->pos[1], rock->pos[2]);
    pad0 = rock->unk30.unk3C[2];
    if (pad0 < 0.0f) {
        unkVec[0] = -rock->unk30.unk60[0];
        unkVec[1] = -rock->unk30.unk60[1];
        unkVec[2] = -rock->unk30.unk60[2];
        rock->pos[0] += unkVec[0] * rock->unk30.unk3C[2];
        rock->pos[1] += unkVec[1] * rock->unk30.unk3C[2];
        rock->pos[2] += unkVec[2] * rock->unk30.unk3C[2];
        func_802AC114(unkVec, pad0, rock->velocity, 2.0f);
        rock->velocity[1] = -1.2f * pad1;
        func_800C98B8(rock->pos, rock->velocity, 0x1900800FU);
    }
    pad0 = rock->unk30.unk3C[0];
    if (pad0 < 0.0f) {
        unkVec[1] = -rock->unk30.unk48[1];
        if (unkVec[1] == 0.0f) {
            rock->velocity[1] *= -1.2f;
            return;
        }
        else {
            unkVec[0] = -rock->unk30.unk48[0];
            unkVec[2] = -rock->unk30.unk48[2];
            rock->pos[0] += unkVec[0] * rock->unk30.unk3C[0];
            rock->pos[1] += unkVec[1] * rock->unk30.unk3C[0];
            rock->pos[2] += unkVec[2] * rock->unk30.unk3C[0];
            func_802AC114(unkVec, pad0, rock->velocity, 2.0f);
            rock->velocity[1] = -1.2f * pad1;
            func_800C98B8(rock->pos, rock->velocity, 0x1900800FU);
        }
    }
    pad0 = rock->unk30.unk3C[1];
    if (pad0 < 0.0f) {
        unkVec[1] = -rock->unk30.unk54[1];
        if (unkVec[1] == 0.0f) {
            rock->velocity[1] *= -1.2f;
        }
        else {
            unkVec[0] = -rock->unk30.unk54[0];
            unkVec[2] = -rock->unk30.unk54[2];
            rock->pos[0] += unkVec[0] * rock->unk30.unk3C[1];
            rock->pos[1] += unkVec[1] * rock->unk30.unk3C[1];
            rock->pos[2] += unkVec[2] * rock->unk30.unk3C[1];
            pad1 = rock->velocity[1];
            func_802AC114(unkVec, pad0, rock->velocity, 2.0f);
            rock->velocity[1] = -1.2f * pad1;
            func_800C98B8(rock->pos, rock->velocity, 0x1900800FU);
        }
    }
}

// This function may be better named "init_trees_cacti_shrubs"
void place_segment_06(struct ActorSpawnData *arg0) {
    s32 stackPadding0;
    s32 stackPadding1;
    s32 stackPadding2;
    s32 stackPadding3;
    Vec3f position;
    Vec3f velocity;
    Vec3s rotation;
    s16 stackPadding4;
    s16 actorType;
    struct Actor *temp_s0;
    struct ActorSpawnData *var_s3;
    s32 segment = SEGMENT_NUMBER2(arg0);
    s32 offset = SEGMENT_OFFSET(arg0);

    var_s3 = (struct ActorSpawnData *)VIRTUAL_TO_PHYSICAL2(gSegmentTable[segment] + offset);
    vec3f_set(velocity, 0.0f, 0.0f, 0.0f);
    rotation[0] = 0x4000;
    rotation[1] = 0;
    rotation[2] = 0;

    while (var_s3->pos[0] != (-0x8000)) {
        position[0] = var_s3->pos[0] * gCourseDirection;
        position[2] = var_s3->pos[2];
        position[1] = var_s3->pos[1];

        switch (gCurrentCourseId) {
        case COURSE_MARIO_RACEWAY:
            actorType = 2;
            break;
        case COURSE_BOWSER_CASTLE:
            actorType = 0x0021;
            break;
        case COURSE_YOSHI_VALLEY:
            actorType = 3;
            break;
        case COURSE_FRAPPE_SNOWLAND:
            actorType = 0x001D;
            break;
        case COURSE_ROYAL_RACEWAY:
            switch (var_s3->signedSomeId) {
            case 6:
                actorType = 0x001C;
                break;
            case 7:
                actorType = 4;
                break;
            }
            break;
        case COURSE_LUIGI_RACEWAY:
            actorType = 0x001A;
            break;
        case COURSE_MOO_MOO_FARM:
            actorType = 0x0013;
            break;
        case COURSE_KALAMARI_DESERT:
            switch (var_s3->signedSomeId) {
            case 5:
                actorType = 0x001E;
                break;
            case 6:
                actorType = 0x001F;
                break;
            case 7:
                actorType = 0x0020;
                break;
            }
            break;
        }

        temp_s0 = &gActorList[addActorToEmptySlot(position, rotation, velocity, actorType)];
        if (gGamestate == CREDITS_SEQUENCE) {
            func_802976D8(temp_s0->rot);
        } else {
            func_802ADDC8(&temp_s0->unk30, 5.0f, temp_s0->pos[0], temp_s0->pos[1], temp_s0->pos[2]);
            if (temp_s0->unk30.unk3C[2] < 0.0f) {
                temp_s0->pos[1] = func_802ABE30(temp_s0->pos[0], temp_s0->pos[1], temp_s0->pos[2], temp_s0->unk30.unk3A);
            }
            func_802976EC(&temp_s0->unk30, temp_s0->rot);
        }
        var_s3++;
    }
}

void place_all_item_boxes(struct ActorSpawnData *spawnData) {
    s16 temp_s1;
    f32 temp_f0;
    struct ItemBox *temp_v0;
    struct ActorSpawnData *temp_s0 = VIRTUAL_TO_PHYSICAL2(gSegmentTable[SEGMENT_NUMBER2(spawnData)]) + SEGMENT_OFFSET(spawnData);
    Vec3f startingPos;
    Vec3f startingVelocity;
    Vec3s startingRot;

    if ((gModeSelection == TIME_TRIALS) || (gPlaceItemBoxes == 0)) { return; }

    vec3f_set(startingVelocity, 0, 0, 0);
    while(temp_s0->pos[0] != -0x8000) {
        startingPos[0] = temp_s0->pos[0] * gCourseDirection;
        startingPos[1] = temp_s0->pos[1];
        startingPos[2] = temp_s0->pos[2];
        startingRot[0] = random_u16();
        startingRot[1] = random_u16();
        startingRot[2] = random_u16();
        temp_s1 = addActorToEmptySlot(startingPos, startingRot, startingVelocity, ACTOR_ITEM_BOX);
        temp_f0 = func_802AE1C0(startingPos[0], startingPos[1] + 10.0f, startingPos[2]);
        temp_v0 = (struct ItemBox *) &gActorList[temp_s1];
        temp_v0->resetDistance = temp_f0;
        temp_v0->origY = startingPos[1];
        temp_v0->pos[1] = temp_f0 - 20.0f;
        temp_s0++;
    }
    
}

void init_kiwano_fruit(void) {
    Vec3f sp64;
    Vec3f sp58;
    Vec3s sp50;
    Player *phi_s1;
    struct Actor *actor;
    s16 phi_s0;
    s32 i;

    //phi_s0 = 0;
    for (i = 0; i < 4; i++) {
        phi_s1 = &gPlayers[i];
        //temp_v0 = *phi_s1;
        if ((phi_s1->unk_000 & 0x4000) == 0) { continue; }
        if ((phi_s1->unk_000 & 0x100) != 0) { continue; }

        phi_s0 = addActorToEmptySlot(sp64, sp50, sp58, ACTOR_KIWANO_FRUIT);
        actor = &gActorList[phi_s0];
        actor->unk_04 = i;
    }
}

/**
 * Destroys actors via zeroing some of the member data 
 * Key word some. When spawning a new actor,
 * members such as pos and rot should be set to prevent using expired data
 **/
void destroy_all_actors(void) {
    s32 i;
    gNumActors = 0;
    for (i = 0; i < ACTOR_LIST_SIZE; i++) {
        gActorList[i].flags = 0;
        gActorList[i].type = 0;
        gActorList[i].unk_04 = 0;
        gActorList[i].state = 0;
        gActorList[i].unk_08 = 0.0f;
        gActorList[i].boundingBoxSize = 0.0f;
    }
}

void place_course_actors(void) {
    s32 stackPadding0;
    Vec3f position;
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    Vec3s rotation = { 0, 0, 0 };
    struct Actor *actor;
    struct RailroadCrossing *rrxing;

    gNumPermanentActors = 0;
    switch (gCurrentCourseId) {
    case COURSE_MARIO_RACEWAY:
        place_segment_06(D_06009570);
        place_piranha_plants(D_06009518);
        place_all_item_boxes(D_06009498);
        vec3f_set(position, 150.0f, 40.0f, -1300.0f);
        position[0] *= gCourseDirection;
        addActorToEmptySlot(position, rotation, velocity, ACTOR_MARIO_RACEWAY_SIGN);
        vec3f_set(position, 2520.0f, 0.0f, 1240.0f);
        position[0] *= gCourseDirection;
        actor = &gActorList[addActorToEmptySlot(position, rotation, velocity, ACTOR_MARIO_RACEWAY_SIGN)];
        actor->flags |= 0x4000;
        break;
    case COURSE_CHOCO_MOUNTAIN:
        place_all_item_boxes(D_06007250);
        place_falling_rocks(D_06007230);
        break;
    case COURSE_BOWSER_CASTLE:
        place_segment_06(D_06009290);
        place_all_item_boxes(D_06009370);
        break;
    case COURSE_BANSHEE_BOARDWALK:
        place_all_item_boxes(D_0600B3D0);
        break;
    case COURSE_YOSHI_VALLEY:
        place_segment_06(D_060180A0);
        place_all_item_boxes(D_06018110);
        vec3f_set(position, -2300.0f, 0.0f, 634.0f);
        position[0] *= gCourseDirection;
        addActorToEmptySlot(position, rotation, velocity, ACTOR_YOSHI_VALLEY_EGG);
        break;
    case COURSE_FRAPPE_SNOWLAND:
        place_segment_06(D_06007718);
        place_all_item_boxes(D_06007810);
        break;
    case COURSE_KOOPA_BEACH:
        func_802A14BC(328.0f * gCourseDirection, 70.0f, 2541.0f);
        place_all_item_boxes(D_06018E78);
        place_palm_trees(D_06018F70);
        break;
    case COURSE_ROYAL_RACEWAY:
        place_segment_06(D_0600DA78);
        place_all_item_boxes(D_0600DB80);
        place_piranha_plants(D_0600D9F0);
        break;
    case COURSE_LUIGI_RACEWAY:
        place_segment_06(D_0600FE80);
        place_all_item_boxes(D_0600FDE8);
        break;
    case COURSE_MOO_MOO_FARM:
        if (gPlayerCountSelection1 != 4) {
            place_segment_06(D_06014330);
        }
        place_all_item_boxes(D_060143E0);
        break;
    case COURSE_TOADS_TURNPIKE:
        place_all_item_boxes(D_06023AE0);
        break;
    case COURSE_KALAMARI_DESERT:
        place_segment_06(D_06022F08);
        place_all_item_boxes(D_06022E88);
        vec3f_set(position, -1680.0f, 2.0f, 35.0f);
        position[0] *= gCourseDirection;
        rrxing = (struct RailroadCrossing *)&gActorList[addActorToEmptySlot(position, rotation, velocity, ACTOR_RAILROAD_CROSSING)];
        rrxing->crossingId = 1;
        vec3f_set(position, -1600.0f, 2.0f, 35.0f);
        position[0] *= gCourseDirection;
        rrxing = (struct RailroadCrossing *)&gActorList[addActorToEmptySlot(position, rotation, velocity, ACTOR_RAILROAD_CROSSING)];
        rrxing->crossingId = 1;
        vec3s_set(rotation, 0, -0x2000, 0);
        vec3f_set(position, -2459.0f, 2.0f, 2263.0f);
        position[0] *= gCourseDirection;
        rrxing = (struct RailroadCrossing *)&gActorList[addActorToEmptySlot(position, rotation, velocity, ACTOR_RAILROAD_CROSSING)];
        rrxing->crossingId = 0;
        vec3f_set(position, -2467.0f, 2.0f, 2375.0f);
        position[0] *= gCourseDirection;
        rrxing = (struct RailroadCrossing *)&gActorList[addActorToEmptySlot(position, rotation, velocity, ACTOR_RAILROAD_CROSSING)];
        rrxing->crossingId = 0;
        break;
    case COURSE_SHERBET_LAND:
        place_all_item_boxes(D_06009B80);
        break;
    case COURSE_RAINBOW_ROAD:
        place_all_item_boxes(D_06016338);
        break;
    case COURSE_WARIO_STADIUM:
        place_all_item_boxes(D_0600CB40);
        vec3f_set(position, -131.0f, 83.0f, 286.0f);
        position[0] *= gCourseDirection;
        addActorToEmptySlot(position, rotation, velocity, ACTOR_WARIO_STADIUM_SIGN);
        vec3f_set(position, -2353.0f, 72.0f, -1608.0f);
        position[0] *= gCourseDirection;
        addActorToEmptySlot(position, rotation, velocity, ACTOR_WARIO_STADIUM_SIGN);
        vec3f_set(position, -2622.0f, 79.0f, 739.0f);
        position[0] *= gCourseDirection;
        addActorToEmptySlot(position, rotation, velocity, ACTOR_WARIO_STADIUM_SIGN);
        break;
    case COURSE_BLOCK_FORT:
        place_all_item_boxes(D_06000038);
        break;
    case COURSE_SKYSCRAPER:
        place_all_item_boxes(D_06000080);
        break;
    case COURSE_DOUBLE_DECK:
        place_all_item_boxes(D_06000028);
        break;
    case COURSE_DK_JUNGLE:
        place_all_item_boxes(D_06013EC0);
        init_kiwano_fruit();
        func_80298D10();
        break;
    case COURSE_BIG_DONUT:
        place_all_item_boxes(D_06000058);
        break;
    }
    gNumPermanentActors = gNumActors;
}

void func_8029E158(void) {
    set_segment_base_addr(3, (void *) gNextFreeMemoryAddress);
    D_802BA050 = dma_textures(D_0F04CBE0, 0x00000257U, 0x00000400U);
    dma_textures(D_0F04CE30, 0x00000242U, 0x00000400U);
    dma_textures(D_0F04D080, 0x00000259U, 0x00000400U);
    dma_textures(D_0F04D2D8, 0x00000256U, 0x00000400U);
    dma_textures(D_0F04D538, 0x00000246U, 0x00000400U);
    dma_textures(D_0F04D790, 0x0000025EU, 0x00000400U);
    dma_textures(D_0F04D9FC, 0x0000025CU, 0x00000400U);
    dma_textures(D_0F04DC5C, 0x00000254U, 0x00000400U);
    D_802BA054 = dma_textures(D_0F04DEB0, 0x0000022AU, 0x00000400U);
    dma_textures(D_0F04E0DC, 0x00000237U, 0x00000400U);
    dma_textures(D_0F04E314, 0x0000023EU, 0x00000400U);
    dma_textures(D_0F04E554, 0x00000243U, 0x00000400U);
    dma_textures(D_0F04E798, 0x00000255U, 0x00000400U);
    dma_textures(D_0F04E9F0, 0x00000259U, 0x00000400U);
    dma_textures(D_0F04EC4C, 0x00000239U, 0x00000400U);
    dma_textures(D_0F04EE88, 0x00000236U, 0x00000400U);
    dma_textures(D_0F054C3C, 0x0000028EU, 0x00000800U);
    dma_textures(D_0F054ECC, 0x000002FBU, 0x00000800U);
    dma_textures(D_0F0551C8, 0x00000302U, 0x00000800U);
    dma_textures(D_0F0554CC, 0x000003B4U, 0x00000800U);
    dma_textures(D_0F055880, 0x0000031EU, 0x00000800U);
    dma_textures(D_0F055BA0, 0x0000036EU, 0x00000800U);
    dma_textures(D_0F055F10, 0x0000029CU, 0x00000800U);
    dma_textures(D_0F0561AC, 0x0000025BU, 0x00000800U);
    dma_textures(gTexture671A88, 0x00000400U, 0x00000800U);
    dma_textures(gTexture6774D8, 0x00000400U, 0x00000800U);
    switch (gCurrentCourseId) {
    case COURSE_MARIO_RACEWAY:
        dma_textures(D_0F04F45C, 0x0000035BU, 0x00000800U);
        D_802BA058 = dma_textures(D_0F056408, 0x000003E8U, 0x00000800U);
        dma_textures(D_0F05662C, 0x000003E8U, 0x00000800U);
        dma_textures(D_0F05688C, 0x000003E8U, 0x00000800U);
        dma_textures(D_0F056AD0, 0x000003E8U, 0x00000800U);
        dma_textures(D_0F056CF0, 0x000003E8U, 0x00000800U);
        dma_textures(D_0F056EC8, 0x000003E8U, 0x00000800U);
        dma_textures(D_0F057084, 0x000003E8U, 0x00000800U);
        dma_textures(D_0F057288, 0x000003E8U, 0x00000800U);
        dma_textures(D_0F057590, 0x000003E8U, 0x00000800U);
        break;
    case COURSE_BOWSER_CASTLE:
        dma_textures(gTextureShrub, 0x000003FFU, 0x00000800U);
        break;
    case COURSE_YOSHI_VALLEY:
        dma_textures(D_0F04F7A4, 0x000003E8U, 0x00000800U);
        break;
    case COURSE_FRAPPE_SNOWLAND:
        dma_textures(D_0F0513CC, 0x00000454U, 0x00000800U);
        dma_textures(D_0F051820, 0x00000432U, 0x00000800U);
        break;
    case COURSE_ROYAL_RACEWAY:
        dma_textures(D_0F04FB3C, 0x000003E8U, 0x00000800U);
        dma_textures(D_0F050D50, 0x000003E8U, 0x00000800U);
        D_802BA058 = dma_textures(D_0F056408, 0x000003E8U, 0x00000800U);
        dma_textures(D_0F05662C, 0x000003E8U, 0x00000800U);
        dma_textures(D_0F05688C, 0x000003E8U, 0x00000800U);
        dma_textures(D_0F056AD0, 0x000003E8U, 0x00000800U);
        dma_textures(D_0F056CF0, 0x000003E8U, 0x00000800U);
        dma_textures(D_0F056EC8, 0x000003E8U, 0x00000800U);
        dma_textures(D_0F057084, 0x000003E8U, 0x00000800U);
        dma_textures(D_0F057288, 0x000003E8U, 0x00000800U);
        dma_textures(D_0F057590, 0x000003E8U, 0x00000800U);
        break;
    case COURSE_LUIGI_RACEWAY:
        dma_textures(D_0F050468, 0x000003E8U, 0x00000800U);
        dma_textures(D_0F050678, 0x000003E8U, 0x00000800U);
        break;
    case COURSE_MOO_MOO_FARM:
        dma_textures(D_0F04FE28, 0x000003E8U, 0x00000800U);
        dma_textures(D_0F050118, 0x000003E8U, 0x00000800U);
        dma_textures(D_0F051C54, 0x00000400U, 0x00000800U);
        dma_textures(D_0F051FD8, 0x00000400U, 0x00000800U);
        dma_textures(D_0F05232C, 0x00000400U, 0x00000800U);
        dma_textures(D_0F0526B8, 0x00000400U, 0x00000800U);
        dma_textures(D_0F052A20, 0x00000400U, 0x00000800U);
        dma_textures(D_0F052D3C, 0x00000400U, 0x00000800U);
        dma_textures(D_0F05300C, 0x00000400U, 0x00000800U);
        dma_textures(D_0F0532F8, 0x00000400U, 0x00000800U);
        dma_textures(D_0F05363C, 0x00000400U, 0x00000800U);
        dma_textures(D_0F053950, 0x00000400U, 0x00000800U);
        break;
    case COURSE_KALAMARI_DESERT:
        dma_textures(D_0F053C34, 0x0000033EU, 0x00000800U);
        dma_textures(D_0F053F74, 0x000002FBU, 0x00000800U);
        dma_textures(D_0F054270, 0x000002A8U, 0x00000800U);
        dma_textures(D_0F054518, 0x00000374U, 0x00000800U);
        dma_textures(D_0F05488C, 0x000003AFU, 0x00000800U);
        break;
    case COURSE_DK_JUNGLE:
        dma_textures(D_0F057EB4, 0x0000032FU, 0x00000400U);
        dma_textures(D_0F0581E4, 0x00000369U, 0x00000400U);
        dma_textures(D_0F058550, 0x00000364U, 0x00000400U);
        break;
    }
    func_80297818();
    destroy_all_actors();
    place_course_actors();
    func_800122D8();
}

void func_8029E7DC(struct Actor *actor) {
    s16 temp_v0 = actor->flags;

    if ((temp_v0 & 0x200) != 0) {
        func_800C99E0(actor->pos, 0x19019053);
        return;
    }
    if ((temp_v0 & 0x100) != 0) {
        func_800C99E0(actor->pos, 0x19018010);
        return;
    }
    if ((temp_v0 & 0x80) != 0) {
        func_800C99E0(actor->pos, 0x19008054);
    }
}

/**
 * This func likely plays an audio track based on flag
 * Next, it destroys the actor via zeroing its flags and type.
 * Note that the data from its other members still exist.
 * Actors are expected to set members such as pos and rot data if used. Not doing so could result in the use of expired data.
 * 
 * This method does not require modification to gActorList directly.
 * No popping members of gActorList. The list is always the size of ACTOR_LIST_SIZE.
 * Actors are members of gActorList by definition.
 * 
 * @param Actor to destroy 
 */
void destroy_actor(struct Actor *actor) {
    func_8029E7DC(actor);
    actor->flags = 0;
    actor->type = 0;
    gNumActors--;
}

s16 func_8029E890(Vec3f pos, Vec3s rot, Vec3f velocity, s16 actorType) {
    s32 actorIndex;
    struct ShellActor *compare;

    for (actorIndex = gNumPermanentActors; actorIndex < ACTOR_LIST_SIZE; actorIndex++) {
        compare = &gActorList[actorIndex];
        if (!(compare->flags & 0xF)) {
            switch(compare->type) {
            case ACTOR_RED_SHELL:
                switch(compare->state) {
                case 2:
                case 3:
                case 4:
                case 5:
                case 8:
                case 9:
                    func_8000EE58(actorIndex);
                case 7:
                    func_8029E7DC(compare);
                    actor_init(compare, pos, rot, velocity, actorType);
                    return actorIndex;
                default:
                    break;
                }
                break;
            case ACTOR_GREEN_SHELL:
                switch(compare->state) {
                case 2:
                    func_8000EE58(actorIndex);
                case 7:
                    func_8029E7DC(compare);
                    actor_init(compare, pos, rot, velocity, actorType);
                    return actorIndex;
                }
                break;
            case ACTOR_BANANA:
                switch(compare->state) {
                case 1:
                case 4:
                case 5:
                    func_8029E7DC(compare);
                    actor_init(compare, pos, rot, velocity, actorType);
                    return actorIndex;
                }
                break;
            case ACTOR_FAKE_ITEM_BOX:
                switch(compare->state) {
                case 1:
                case 2:
                    func_8029E7DC(compare);
                    actor_init(compare, pos, rot, velocity, actorType);
                    return actorIndex;
                }
                break;
            default:
                break;
            }
        }
    }

    for (actorIndex = gNumPermanentActors; actorIndex < ACTOR_LIST_SIZE; actorIndex++) {
        compare = &gActorList[actorIndex];
        switch(compare->type) {
        case ACTOR_RED_SHELL:
            switch(compare->state) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 8:
            case 9:
                func_8000EE58(actorIndex);
            case 7:
                func_8029E7DC(compare);
                actor_init(compare, pos, rot, velocity, actorType);
                return actorIndex;
            default:
                break;
            }
            break;
        case ACTOR_GREEN_SHELL:
            switch(compare->state) {
            case 2:
                func_8000EE58(actorIndex);
            case 7:
                func_8029E7DC(compare);
                actor_init(compare, pos, rot, velocity, actorType);
                return actorIndex;
            }
            break;
        case ACTOR_BANANA:
            switch(compare->state) {
            case 1:
            case 4:
            case 5:
                func_8029E7DC(compare);
                actor_init(compare, pos, rot, velocity, actorType);
                return actorIndex;
            }
            break;
        case ACTOR_FAKE_ITEM_BOX:
            switch(compare->state) {
            case 1:
            case 2:
                func_8029E7DC(compare);
                actor_init(compare, pos, rot, velocity, actorType);
                return actorIndex;
            }
            break;
        default:
            break;
        }
    }

    return -1;
}

s16 addActorToEmptySlot(Vec3f pos, Vec3s rot, Vec3f velocity, s16 actorType) {
    s32 index;

    if (gNumActors >= ACTOR_LIST_SIZE) {
        return func_8029E890(pos, rot, velocity, actorType);
    }
    for(index = 0; index < ACTOR_LIST_SIZE; index++){
        if (gActorList[index].flags == 0) {
            gNumActors++;
            actor_init(&gActorList[index], pos, rot, velocity, actorType);
            return index;
        }
    }
    return -1;
}

s16 func_8029ED38(Vec3f pos, s16 actorType) {
    Vec3f vel;
    Vec3s rot;

    vec3f_set(vel, 0.0f, 0.0f, 0.0f);
    vec3s_set(rot, 0, 0, 0);
    return addActorToEmptySlot(pos, rot, vel, actorType);
}

// I swear we have a struct that looks like this already but I cannot find it anywhere
struct test {
    Vec3s thing;
};

UNUSED void func_8029ED98(Player *player, uintptr_t arg1) {
    Vec3f sp64;
    struct test *var_s0;
    s32 segment = SEGMENT_NUMBER2(arg1);
    s32 offset = SEGMENT_OFFSET(arg1);

    var_s0 = VIRTUAL_TO_PHYSICAL2(gSegmentTable[segment] + offset);
    while (var_s0->thing[0] != -0x8000) {
        sp64[0] = var_s0->thing[0] * gCourseDirection;
        sp64[1] = var_s0->thing[1];
        sp64[2] = var_s0->thing[2];
        if(arg1 & arg1){}
        func_8029EEB8(player, sp64, 5.0f, 40.0f, 0.8f);
        var_s0++;
    }
}

s32 func_8029EEB8(Player *player, Vec3f pos, f32 arg2, f32 arg3, f32 arg4) {
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f20;
    f32 sp28;
    f32 temp_f2_2;

    arg2 = player->boundingBoxSize + arg2;
    arg3 = player->boundingBoxSize + arg3;
    temp_f20 = pos[0] - player->pos[0];
    if (arg2 < temp_f20) {
        return 0;
    }
    if (temp_f20 < -arg2) {
        return 0;
    }
    temp_f0_2 = pos[1] - player->pos[1];
    if (arg3 < temp_f0_2) {
        return 0;
    }
    if (temp_f0_2 < -arg3) {
        return 0;
    }
    temp_f14 = pos[2] - player->pos[2];
    if (arg2 < temp_f14) {
        return 0;
    }
    if (temp_f14 < -arg2) {
        return 0;
    }
    arg3 = (temp_f20 * temp_f20) + (temp_f0_2 * temp_f0_2) + (temp_f14 * temp_f14);
    if (arg3 < 0.1f) {
        return 0;
    }
    if ((arg2 * arg2) < arg3) {
        return 0;
    }
    temp_f0_3 = sqrtf(arg3);
    sp28 = temp_f0_3 - arg2;
    temp_f16 = player->unk_034[0];
    temp_f18 = player->unk_034[2];
    if (player->unk_0BC & 0x200) {
        return 1;
    }
    if (temp_f0_3 < 0.1f) {
        temp_f0_4 = sqrtf((temp_f16 * temp_f16) + (temp_f18 * temp_f18));
        if (temp_f0_4 < 0.5f) {
            temp_f0_4 = 0.5f;
        }
        player->unk_034[0] = 0;
        player->unk_034[2] = 0;
        player->pos[0] += (temp_f16 / temp_f0_4) * arg2;
        player->pos[2] += (temp_f18 / temp_f0_4) * arg2;
    } else {
        player->unk_0BC |= 0x8000;
        temp_f20 /= temp_f0_3;
        temp_f14 /= temp_f0_3;
        temp_f0_5 = sqrtf((temp_f16 * temp_f16) + (temp_f18 * temp_f18));
        if (temp_f0_5 < 0.25f) {
            temp_f0_6 = 1.2f;
            player->pos[0] = pos[0] - (temp_f20 * arg2 * temp_f0_6);
            player->pos[2] = pos[2] - (temp_f14 * arg2 * temp_f0_6);
            player->unk_034[0] = 0.0f;
            player->unk_034[2] = 0.0f;
            return 1;
        }
        temp_f2_2 = ((temp_f20 * temp_f16) + (temp_f14 * temp_f18)) / temp_f0_5;
        temp_f2_2 = temp_f0_5 * temp_f2_2 * arg4 * 1.3f;
        player->unk_034[0] -= temp_f20 * temp_f2_2;
        player->unk_034[2] -= temp_f14 * temp_f2_2;
        player->pos[0] += temp_f20 * sp28 * 0.5f;
        player->pos[2] += temp_f14 * sp28 * 0.5f;
    }
    return 1;
}

s32 func_8029F1F8(Player *player, struct Actor *marioRacewaySign) {
    if (func_8029EEB8(player, marioRacewaySign->pos, 7.0f, 200.0f, 0.8f) == 1) {
        if ((player->unk_000 & 0x4000) != 0) {
            if ((player->unk_0BC & 0x200) != 0) {
                marioRacewaySign->flags |= 0x400;
                func_800C98B8(player->pos, player->unk_034, 0x19018010U);
                func_800C90F4(player - gPlayerOne, (player->characterId * 0x10) + 0x2900800D);
            } else if ((player->unk_000 & 0x100) == 0) {
                func_800C9060(player - gPlayerOne, 0x1900701AU);
            }
        }
        return 1;
    }
    return 0;
}

s32 func_8029F2FC(Player *player, struct PiranhaPlant *plant) {
    if (func_8029EEB8(player, plant->pos, plant->boundingBoxSize, plant->boundingBoxSize, 2.5f) == 1) {
        if ((player->unk_000 & 0x4000) != 0) {
            if ((player->unk_0BC & 0x200) != 0) {
                plant->flags |= 0x400;
                func_800C98B8(player->pos, player->unk_034, 0x1901A24AU);
                func_800C90F4(player - gPlayerOne, (player->characterId * 0x10) + 0x2900800D);
            } else if ((player->unk_000 & 0x100) == 0) {
                func_800C9060(player - gPlayerOne, 0x1900A052U);
            }
        }
        return 1;
    }
    return 0;
}

s32 func_8029F408(Player *player, struct YoshiValleyEgg *egg) {
    f32 pad[5];
    f32 z_dist;
    f32 xz_dist;
    f32 x_dist;
    f32 y_dist;
    f32 totalBox;
    f32 thing = 60.0f;
    f32 thing2 = 0.0f;

    x_dist = egg->pos[0] - player->pos[0];
    if ((x_dist < thing2) && (x_dist < -thing)) {
        return 0;
    }
    if (x_dist > thing) {
        return 0;
    }
    z_dist = egg->pos[2] - player->pos[2];
    if ((z_dist < thing2) && (z_dist < -thing)) {
        return 0;
    }
    if (z_dist > thing) {
        return 0;
    }
    xz_dist = sqrtf((x_dist * x_dist) + (z_dist * z_dist));
    if (xz_dist > thing) {
        return 0;
    }
    func_802977B0(player);
    y_dist = player->pos[1] - egg->pos[1];
    if (y_dist < thing2) {
        return 0;
    }
    totalBox = player->boundingBoxSize + egg->boundingBoxSize;
    if (totalBox < xz_dist) {
        return 0;
    }
    if ((player->unk_000 & 0x4000) != 0) {
        if ((player->unk_0BC & 0x200) != 0) {
            egg->flags |= 0x400;
            egg->pathCenter[1] = 8.0f;
            func_800C98B8(player->pos, player->unk_034, 0x19018010);
            func_800C90F4(player - gPlayerOne, (player->characterId * 0x10) + 0x2900800D);
        } else {
            func_8008DABC(player, player - gPlayerOne);
            if ((gModeSelection == TIME_TRIALS) && ((player->unk_000 & 0x1000) == 0)) {
                D_80162DF8 = 1;
            }
        }
    } else {
        func_8008DABC(player, player - gPlayerOne);
    }
    return 1;
}

s32 func_8029F69C(Player *player, struct Actor *actor) {
    f32 x_dist;
    f32 y_dist;
    f32 z_dist;
    f32 sp48;
    f32 sp44;
    f32 var_f16;
    f32 xz_dist;
    f32 stackPadding0;
    f32 stackPadding1;
    f32 temp_f12;
    f32 temp_f0_4;
    Vec3f sp20;
    f32 temp_f2;

    var_f16 = actor->unk_08;
    x_dist = actor->pos[0] - player->pos[0];
    if ((x_dist < 0.0f) && (x_dist < -var_f16)) {
        return 0;
    }
    if (var_f16 < x_dist) {
        return 0;
    }
    z_dist = actor->pos[2] - player->pos[2];
    if ((z_dist < 0.0f) && (z_dist < -var_f16)) {
        return 0;
    }
    if (var_f16 < z_dist) {
        return 0;
    }
    y_dist = player->pos[1] - actor->pos[1];
    if (y_dist < 0.0f) {
        return 0;
    }
    if ((f32) actor->state < y_dist) {
        return 0;
    }
    xz_dist = sqrtf((x_dist * x_dist) + (z_dist * z_dist));
    if (var_f16 < xz_dist) {
        return 0;
    }
    func_802977B0(player);
    var_f16 = player->boundingBoxSize + actor->boundingBoxSize;
    if (var_f16 < xz_dist) {
        return 0;
    }
    sp48 = player->unk_034[0];
    sp44 = player->unk_034[2];
    if (player->unk_000 & 0x4000) {
        if (player->unk_0BC & 0x200) {
            actor->flags |= 0x400;
            func_800C98B8(player->pos, player->unk_034, 0x19018010U);
            func_800C90F4(player - gPlayerOne, (player->characterId * 0x10) + 0x2900800D);
            return 1;
        }
        if (!(player->unk_000 & 0x100)) {
            func_800C9060(player - gPlayerOne, 0x19007018U);
        }
    }
    if (!(player->unk_0BC & 0x200)) {
        player->unk_0BC |= 0x8000;
    }
    sp20[0] = actor->pos[0];
    sp20[1] = actor->pos[1];
    sp20[2] = actor->pos[2];
    if (((gCurrentCourseId == 0) || (gCurrentCourseId == 4) || (gCurrentCourseId == 7) || (gCurrentCourseId == 8)) && (player->unk_094 > 1.0f)) {
        func_80077AB0(sp20, 0);
    }
    if (xz_dist < 0.1f) {
        sqrtf((sp48 * sp48) + (sp44 * sp44));
        if(xz_dist){}
        player->unk_034[0] = 0;
        player->unk_034[2] = 0;
        player->pos[0] = sp20[0] - (x_dist * var_f16 * 1.2f);
        player->pos[2] = sp20[2] - (z_dist * var_f16 * 1.2f);
    } else {
        temp_f0_4 = sqrtf((sp48 * sp48) + (sp44 * sp44));
        x_dist /= xz_dist;
        z_dist /= xz_dist;
        if (temp_f0_4 < 0.25f) {
            player->pos[0] = sp20[0] - (x_dist * var_f16 * 1.2f);
            player->pos[2] = sp20[2] - (z_dist * var_f16 * 1.2f);
            player->unk_034[0] = 0;
            player->unk_034[2] = 0;
            return 1;
        }
        temp_f12 = ((x_dist * sp48) + (z_dist * sp44)) / temp_f0_4;
        temp_f12 = temp_f0_4 * temp_f12 * 1.5f;
        player->unk_034[0] -= x_dist * temp_f12;
        player->unk_034[2] -= z_dist * temp_f12;
        temp_f2 = xz_dist - var_f16;
        player->pos[0] += x_dist * temp_f2 * 0.5f;
        player->pos[2] += z_dist * temp_f2 * 0.5f;
    }
    return 1;
}

s32 func_8029FB80(Player *arg0, struct Actor *arg1) {
    f32 temp_f0;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f2;

    temp_f0 = arg0->boundingBoxSize + arg1->boundingBoxSize;
    temp_f2 = arg1->pos[0] - arg0->pos[0];
    if (temp_f0 < temp_f2) {
        return 0;
    }
    if (temp_f2 < -temp_f0) {
        return 0;
    }
    temp_f14 = arg1->pos[1] - arg0->pos[1];
    if (temp_f0 < temp_f14) {
        return 0;
    }
    if (temp_f14 < -temp_f0) {
        return 0;
    }
    temp_f16 = arg1->pos[2] - arg0->pos[2];
    if (temp_f0 < temp_f16) {
        return 0;
    }
    if (temp_f16 < -temp_f0) {
        return 0;
    }
    temp_f12_2 = (temp_f2 * temp_f2) + (temp_f14 * temp_f14) + (temp_f16 * temp_f16);
    if (temp_f12_2 < 0.1f) {
        return 0;
    }
    if ((temp_f0 * temp_f0) < temp_f12_2) {
        return 0;
    }
    return 1;
}

s32 func_8029FCA4(struct Actor *arg0, struct Actor *arg1) {
    f32 temp_f0;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f2;

    temp_f0 = arg0->boundingBoxSize + arg1->boundingBoxSize;
    temp_f2 = arg0->pos[0] - arg1->pos[0];
    if (temp_f0 < temp_f2) {
        return 0;
    }
    if (temp_f2 < -temp_f0) {
        return 0;
    }
    temp_f14 = arg0->pos[1] - arg1->pos[1];
    if (temp_f0 < temp_f14) {
        return 0;
    }
    if (temp_f14 < -temp_f0) {
        return 0;
    }
    temp_f16 = arg0->pos[2] - arg1->pos[2];
    if (temp_f0 < temp_f16) {
        return 0;
    }
    if (temp_f16 < -temp_f0) {
        return 0;
    }
    temp_f12_2 = (temp_f2 * temp_f2) + (temp_f14 * temp_f14) + (temp_f16 * temp_f16);
    if (temp_f12_2 < 0.1f) {
        return 0;
    }
    if ((temp_f0 * temp_f0) < temp_f12_2) {
        return 0;
    }
    return 1;
}

void func_8029FDC8(struct Actor *actor) {
    struct ShellActor *shell;
    struct BananaActor *banana;
    struct FakeItemBox *fakeItemBox;
    Player *player;

    switch (actor->type) {
    case ACTOR_BANANA:
        banana = (struct BananaActor *)actor;
        switch (banana->state) {
        case 2:
        case 3:
            func_802B0570(banana);
            break;
        case 0:
            player = &gPlayers[banana->playerId];
            player->statusEffects &= ~0x00040000;
            /* fallthrough */
        case 4:
            banana->flags = -0x8000;
            banana->unk_04 = 0x003C;
            banana->state = 5;
            banana->velocity[1] = 3.0f;
            break;
        case 1:
        case 5:
        default:
            break;
        }
        break;
    case ACTOR_GREEN_SHELL:
        shell = (struct ShellActor *)actor;
        if (shell->state != 5) {
            switch (shell->state) {
            case 2:
                func_8000EE58(actor - gActorList);
                /* fallthrough */
            case 0:
            case 1:
                shell->flags = -0x8000;
                shell->rotAngle = 0;
                shell->someTimer = 0x003C;
                shell->state = 5;
                shell->velocity[1] = 3.0f;
                break;
            case 4:
                func_802B02B4(shell, ACTOR_GREEN_SHELL);
                break;
            default:
                break;
            }
        }
        break;
    case ACTOR_BLUE_SPINY_SHELL:
        shell = (struct ShellActor *)actor;
        if (shell->state != 7) {
            switch (shell->state) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 8:
            case 9:
                func_800C9EF4(shell->pos, 0x51018008);
                func_8000EE58(actor - gActorList);
                /* fallthrough */
            case 0:
            case 1:
                shell->flags = -0x8000;
                shell->rotAngle = 0;
                shell->someTimer = 0x003C;
                shell->state = 7;
                shell->velocity[1] = 3.0f;
                break;
            default:
                break;
            }
        }
        break;
    case ACTOR_RED_SHELL:
        shell = (struct ShellActor *)actor;
        if (shell->state != 7) {
            switch (shell->state) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 8:
            case 9:
                func_8000EE58(actor - gActorList);
                /* fallthrough */
            case 0:
            case 1:
                shell->flags = -0x8000;
                shell->rotAngle = 0;
                shell->someTimer = 0x003C;
                shell->state = 7;
                shell->velocity[1] = 3.0f;
                break;
            case 6:
                func_802B02B4(shell, ACTOR_RED_SHELL);
                break;
            default:
                break;
            }
        }
        break;
    case ACTOR_FAKE_ITEM_BOX:
        fakeItemBox = (struct FakeItemBox *)actor;
        player = &gPlayers[(s16)fakeItemBox->playerId];
        if (fakeItemBox->state == 0) {
            player->statusEffects &= ~0x00040000;
        }
        fakeItemBox->state = 2;
        fakeItemBox->flags = -0x8000;
        fakeItemBox->someTimer = 0;
        break;
    }
}

void func_802A00E8(struct Actor *arg0, struct Actor *arg1) {
    switch(arg0->type) {
        case ACTOR_GREEN_SHELL:
            if ((arg0->state == 0) || (arg0->state == 4)) {
                arg0->flags |= 0x200;
                func_800C98B8(arg0->pos, arg0->velocity, 0x19019053);
                return;
            }
            break;
        case ACTOR_RED_SHELL:
            if ((arg0->state == 0) || (arg0->state == 6)) {
                arg0->flags |= 0x200;
                func_800C98B8(arg0->pos, arg0->velocity, 0x19019053);
            return;
            }
            break;
        case ACTOR_BLUE_SPINY_SHELL:
            if (arg0->state == 0) {
                arg0->flags |= 0x200;
                func_800C98B8(arg0->pos, arg0->velocity, 0x19019053);
                return;
            }
            break;
        case ACTOR_FAKE_ITEM_BOX:
            if (arg0->state == 0) {
                arg0->flags |= 0x200;
                func_800C98B8(arg0->pos, arg0->velocity, 0x19019053);
                return;
            }
            break;
    }

    switch(arg1->type) {
        case ACTOR_GREEN_SHELL:
            if ((arg1->state == 0) || (arg1->state == 4)) {
            arg1->flags |= 0x200;
            func_800C98B8(arg1->pos, arg1->velocity, 0x19019053);
        return;
            }
            break;
        case ACTOR_RED_SHELL:
            if ((arg1->state == 0) || (arg1->state == 6)) {
                arg1->flags |= 0x200;
                func_800C98B8(arg1->pos, arg1->velocity, 0x19019053);
                return;
            }
            break;
        case ACTOR_BLUE_SPINY_SHELL:
            if (arg1->state == 0) {
                arg1->flags |= 0x200;
                func_800C98B8(arg1->pos, arg1->velocity, 0x19019053);
                return;
            }
            break;
        case ACTOR_FAKE_ITEM_BOX:
            if (arg1->state == 0) {
                arg1->flags |= 0x200;
                func_800C98B8(arg1->pos, arg1->velocity, 0x19019053);
                return;
            }
            break;
    }

    arg0->flags |= 0x100;
    func_800C98B8(arg0->pos, arg0->velocity, 0x19018010);
}

void func_802A0350(struct Actor *arg0, struct Actor *arg1) {
    if (func_8029FCA4(arg0, arg1) == 1) {
        if ((arg0->type == ACTOR_BLUE_SPINY_SHELL) && (arg1->type == ACTOR_BLUE_SPINY_SHELL)) {
            func_8029FDC8(arg0);
            func_8029FDC8(arg1);
            arg0->flags |= 256;
            func_800C98B8(arg0->pos, arg0->velocity, 0x19018010);
            return;
        }
        if (arg0->type == ACTOR_BLUE_SPINY_SHELL) {
            if (arg0->state == 0) {
                func_8029FDC8(arg0);
            }
        } else {
            func_8029FDC8(arg0);
        }
        if (arg1->type == ACTOR_BLUE_SPINY_SHELL) {
            if (arg1->state == 0) {
                func_8029FDC8(arg1);
            }
        } else {
            func_8029FDC8(arg1);
        }
        func_802A00E8(arg0, arg1);
    }
}

void func_802A0450(Player *player, struct Actor *actor) {
    s32 stackPadding0;
    s16 temp_lo;
    s32 stackPadding1;
    s32 stackPadding2;
    s16 temp_v1;
    Player *owner;
    f32 temp_f0;
    f32 temp_f2;

    temp_lo = player - gPlayerOne;
    switch (actor->type) {
    case ACTOR_YOSHI_VALLEY_EGG:
        if (!(player->unk_0BC & 0x80000000) && !(player->unk_000 & 0x100)) {
            func_8029F408(player, (struct YoshiValleyEgg *) actor);
        }
        break;
    case ACTOR_BANANA:
        if (player->unk_0BC & 0x800008C0) { break; }
        if (player->statusEffects & 1) { break; }
        temp_v1 = actor->rot[0];
        if (((temp_lo == temp_v1) && (actor->flags & 0x1000)) || (func_8029FB80(player, actor) != 1)) { break; }
        player->statusEffects |= 1;
        owner = &gPlayers[temp_v1];
        if (owner->unk_000 & 0x4000) {
            if (actor->flags & 0xF) {
                if (temp_lo != temp_v1) {
                    func_800C90F4(temp_v1, (owner->characterId * 0x10) + 0x29008006);
                }
            } else {
                temp_f0 = actor->pos[0] - owner->pos[0];
                temp_f2 = actor->pos[2] - owner->pos[2];
                if ((((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) < 360000.0f) && (temp_lo != temp_v1)) {
                    func_800C90F4(temp_v1, (owner->characterId * 0x10) + 0x29008006);
                }
            }
        }
        func_8029FDC8(actor);
        break;
    case ACTOR_GREEN_SHELL:
        if (player->unk_0BC & 0x80000400) { break; }
        if (player->statusEffects & 4) { break; }
        temp_v1 = actor->rot[2];
        if (((temp_lo == temp_v1) && (actor->flags & 0x1000)) || (func_8029FB80(player, actor) != 1)) { break; }
        player->statusEffects |= 4;
        func_800C98B8(player->pos, player->unk_034, 0x19018010U);
        owner = &gPlayers[temp_v1];
        if ((owner->unk_000 & 0x4000) && (temp_lo != temp_v1)) {
            func_800C90F4(temp_v1, (owner->characterId * 0x10) + 0x29008006);
        }
        func_8029FDC8(actor);
        break;
    case ACTOR_BLUE_SPINY_SHELL:
        if (player->statusEffects & 2) { break; }
        temp_v1 = actor->rot[2];
        if (((temp_lo == temp_v1) && (actor->flags & 0x1000)) || (func_8029FB80(player, actor) != 1)) { break; }
        if (!(player->unk_0BC & 0x80000000)) {
            player->statusEffects |= 2;
            func_800C98B8(player->pos, player->unk_034, 0x19018010U);
        }
        owner = &gPlayers[temp_v1];
        if ((owner->unk_000 & 0x4000) && (temp_lo != temp_v1)) {
            func_800C90F4(temp_v1, (owner->characterId * 0x10) + 0x29008006);
        }
        if (temp_lo == actor->unk_04) {
            func_8029FDC8(actor);
        }
        break;
    case ACTOR_RED_SHELL:
        temp_v1 = actor->rot[2];
        if (player->unk_0BC & 0x01000000) { break; }
        if (player->statusEffects & 2) { break; }
        temp_v1 = actor->rot[2];
        if (((temp_lo == temp_v1) && (actor->flags & 0x1000)) || (func_8029FB80(player, actor) != 1)) { break; }
        if (!(player->unk_0BC & 0x80000000)) {
            player->statusEffects |= 2;
            func_800C98B8(player->pos, player->unk_034, 0x19018010U);
        }
        owner = &gPlayers[temp_v1];
        if ((owner->unk_000 & 0x4000) && (temp_lo != temp_v1)) {
            func_800C90F4(temp_v1, (owner->characterId * 0x10) + 0x29008006);
        }
        func_8029FDC8(actor);
        break;
    case ACTOR_PIRANHA_PLANT:
        if (!(player->unk_0BC & 0x80000000)) {
            func_8029F2FC(player, (struct PiranhaPlant *) actor);
        }
        break;
    case ACTOR_MARIO_RACEWAY_SIGN:
        if (!(player->unk_0BC & 0x80000000)) {
            func_8029F1F8(player, actor);
        }
        break;
    case 2:
    case 3:
    case 4:
    case 19:
    case 25:
    case 26:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
        if (!(player->unk_0BC & 0x80000000)) {
            func_8029F69C(player, actor);
        }
        break;
    case ACTOR_FALLING_ROCK:
        if (!(player->unk_0BC & 0x80000000) && !(player->unk_000 & 0x100)) {
            if (func_8029FB80(player, actor) == 1) {
                func_800C98B8(actor->pos, actor->velocity, SOUND_ACTION_EXPLOSION);
                if ((gModeSelection == TIME_TRIALS) && !(player->unk_000 & 0x1000)) {
                    D_80162DF8 = 1;
                }
                if (player->unk_0BC & 0x200) {
                    actor->velocity[1] = 10.0f;
                } else {
                    func_8008DABC(player, player - gPlayerOne);
                }
            }
        }
        break;
    case ACTOR_FAKE_ITEM_BOX:
        temp_v1 = actor->velocity[0];
        if (player->unk_0BC & 0x80000000) { break; }
        temp_v1 = actor->velocity[0];
        if (((temp_lo == temp_v1) && (actor->flags & 0x1000)) || (func_8029FB80(player, actor) != 1)) { break; }
            player->statusEffects |= 0x400000;
            owner = &gPlayers[temp_v1];
            if (owner->unk_000 & 0x4000) {
                if (actor->flags & 0xF) {
                    if (temp_lo != temp_v1) {
                        func_800C90F4(temp_v1, (owner->characterId * 0x10) + 0x29008006);
                    }
                } else {
                    temp_f0 = actor->pos[0] - owner->pos[0];
                    temp_f2 = actor->pos[2] - owner->pos[2];
                    if ((((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) < 360000.0f) && (temp_lo != temp_v1)) {
                        func_800C90F4(temp_v1, (owner->characterId * 0x10) + 0x29008006);
                    }
                }
                if (actor->state == 0) {
                    owner->statusEffects &= ~0x00040000;
                }
            }
            actor->state = 2;
            actor->flags = -0x8000;
            actor->unk_04 = 0;
        break;
    case ACTOR_HOT_AIR_BALLOON_ITEM_BOX:
        if (func_8029FB80(player, actor) == 1) {
            actor->state = 3;
            actor->flags = -0x8000;
            actor->unk_04 = 0;
            if (player->unk_000 & 0x4000) {
                func_8007ABFC(player - gPlayerOne, 7);
            }
        } else if (actor->state == 0) {
            actor->state = 1;
            actor->flags = -0x8000;
        }
        break;
    case ACTOR_ITEM_BOX:
        if (func_8029FB80(player, actor) == (s32) 1) {
            actor->state = 3;
            actor->flags = -0x8000;
            actor->unk_04 = 0;
            if (player->unk_000 & 0x4000) {
                func_8007ABFC(player - gPlayerOne, 0);
            }
        } else if (actor->state == 0) {
            actor->state = 1;
            actor->flags = -0x8000;
        }
        break;
    default:
        break;
    }
}

void evaluate_player_collision(void) {
    struct Actor *temp_a1;
    s32 i, j;
    Player *phi_s1;

    for (i = 0; i < 8; i++) {
        phi_s1 = &gPlayers[i];

        if (((phi_s1->unk_000 & 0x8000) != 0) && ((phi_s1->unk_0BC & 0x4000000) == 0)) {
            func_802977E4(phi_s1);
                for (j = 0; j < ACTOR_LIST_SIZE; j++) {
                    temp_a1 = &gActorList[j];

                    if ((phi_s1->unk_0BC & 0x4000000) == 0) {
                       // temp_v0 = temp_a1->unk2;
                        if (((temp_a1->flags & 0x8000) != 0) && ((temp_a1->flags & 0x4000) != 0)) {
                            func_802A0450(phi_s1, temp_a1);
                        }
                    }
            }
        }
    }
}

void func_802A0E44(void) {
    struct Actor *phi_s0;
    struct Actor *temp_a1;
    s32 i, j;
    s32 pad;

    for (i = gNumPermanentActors; i < (ACTOR_LIST_SIZE - 1); i++) {
        phi_s0 = &gActorList[i];

        if ((phi_s0->flags & 0x8000) == 0) { continue; }
        if ((phi_s0->flags & 0x4000) == 0) { continue; }

        switch(phi_s0->type) {
            case ACTOR_BANANA:
            case ACTOR_GREEN_SHELL:
            case ACTOR_RED_SHELL:
            case ACTOR_BLUE_SPINY_SHELL:
            case ACTOR_FAKE_ITEM_BOX:

                for (j = i + 1; j < ACTOR_LIST_SIZE; j++) {
                    temp_a1 = &gActorList[j];

                    if ((phi_s0->flags & 0x8000) == 0) {continue;}
                    if  ((phi_s0->flags & 0x4000) == 0) {continue;}

                    if ((temp_a1->flags & 0x8000) == 0) { continue; }
                    if ((temp_a1->flags & 0x4000) == 0) { continue; }

                    switch(temp_a1->type) {
                        case ACTOR_BANANA:
                            if (phi_s0->type == ACTOR_BANANA) { continue; }
                                func_802A0350(phi_s0, temp_a1);
                            break;
                        case ACTOR_GREEN_SHELL:
                            if (phi_s0->type == ACTOR_GREEN_SHELL) {
                                if (phi_s0->rot[2] == temp_a1->rot[2]) { continue; }
                            }
                            func_802A0350(phi_s0, temp_a1);
                            break;
                        case ACTOR_RED_SHELL:
                            if (phi_s0->type == ACTOR_RED_SHELL) {
                                if (phi_s0->rot[2] == temp_a1->rot[2]) { continue; }
                            }
                            func_802A0350(phi_s0, temp_a1);
                            break;
                        case ACTOR_BLUE_SPINY_SHELL:
                        case ACTOR_FAKE_ITEM_BOX:
                            func_802A0350(phi_s0, temp_a1);
                            break;
                    }
                }

                break;
        }
    }
}

void func_802A1064(struct FakeItemBox *fake_item_box) {
    if (fake_item_box - (struct FakeItemBox*)gActorList <= (u32)ACTOR_LIST_SIZE) {
        if (((fake_item_box->flags & 0x8000) != 0) && (fake_item_box->type == ACTOR_FAKE_ITEM_BOX)) {
            fake_item_box->state = 1;
            fake_item_box->targetY = func_802ABEAC(&fake_item_box->unk30, fake_item_box->pos) + 8.66f;
            fake_item_box->someTimer = 100;
        }
    }
}

void update_obj_fake_item_box(struct FakeItemBox *fake_item_box) {
    u32 temp_v1 = fake_item_box->playerId;
    Player *temp_v0_4 = &gPlayers[temp_v1];
    struct Controller *temp_v1_3;

    s32 pad[7];
    f32 temp_f2_2;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    s32 pad2[3];

    switch(fake_item_box->state) {
        case 0:
            fake_item_box->boundingBoxSize = fake_item_box->sizeScaling * 5.5f;
            fake_item_box->rot[0] -= 0xB6;
            fake_item_box->rot[1] += 0x16C;
            fake_item_box->rot[2] -= 0xB6;

            temp_f14 = temp_v0_4->pos[0] - fake_item_box->pos[0];
            temp_f16 = temp_v0_4->pos[1] - fake_item_box->pos[1];
            temp_f18 = temp_v0_4->pos[2] - fake_item_box->pos[2];

            temp_f2_2 = sqrtf((temp_f14 * temp_f14) + (temp_f16 * temp_f16) + (temp_f18 * temp_f18)) / 10.0f;
            temp_f14 /= temp_f2_2;
            temp_f16 /= temp_f2_2;
            temp_f18 /= temp_f2_2;
            fake_item_box->pos[0] = temp_v0_4->pos[0] - temp_f14;
            fake_item_box->pos[1] = (temp_v0_4->pos[1] - temp_f16) - 1.0f;
            fake_item_box->pos[2] = temp_v0_4->pos[2] - temp_f18;
            func_802ADDC8(&fake_item_box->unk30, fake_item_box->boundingBoxSize, fake_item_box->pos[0], fake_item_box->pos[1], fake_item_box->pos[2]);
            func_802B4E30(fake_item_box);
            temp_v1_3 = &gControllers[temp_v1];
            if ((temp_v0_4->unk_000 & 0x4000) != 0) {

                if ((temp_v1_3->buttonDepressed & Z_TRIG) != 0) {
                    temp_v1_3->buttonDepressed &= 0xDFFF;
                    func_802A1064(fake_item_box);
                    temp_v0_4->statusEffects &= 0xFFFBFFFF;
                    func_800C9060((u8)(temp_v0_4 - gPlayerOne), 0x19008012);
                }
            }
            break;
        case 1:
            if (fake_item_box->sizeScaling < 1.0f) {
                fake_item_box->sizeScaling += 0.05f;
            } else if (fake_item_box->sizeScaling >= 1.0f) {
                fake_item_box->sizeScaling = 1.0f;
            }

            fake_item_box->boundingBoxSize = fake_item_box->sizeScaling * 5.5f;
            if (fake_item_box->targetY <= fake_item_box->pos[1]) {
                fake_item_box->pos[1] = fake_item_box->targetY;
            } else {
                fake_item_box->pos[1] += 0.2f;
            }
            if ((fake_item_box->flags & 0x1000) != 0) {
                if ((fake_item_box->someTimer <= 0) || (fake_item_box->someTimer >= 0x12D)) {
                    fake_item_box->flags &= 0xEFFF;
                    fake_item_box->someTimer = 0;
                } else {
                    fake_item_box->someTimer--;
                }
            }
            fake_item_box->rot[0] -= 0xB6;
            fake_item_box->rot[1] += 0x16C;
            fake_item_box->rot[2] -= 0xB6;
            break;

        case 2:
            if ((fake_item_box->someTimer >= 0x14) || (fake_item_box->someTimer < 0)) {
                destroy_actor(fake_item_box);
            } else {
                fake_item_box->someTimer++;
                fake_item_box->rot[0] += 0x444;
                fake_item_box->rot[1] -= 0x2D8;
                fake_item_box->rot[2] += 0x16C;
            }
            break;
        default:
            destroy_actor(fake_item_box);
        break;
    }
}

void func_802A14BC(f32 arg0, f32 arg1, f32 arg2) {
    Vec3f sp34;
    Vec3f sp28;
    Vec3s sp20;
    s16 temp_a0;

    if (gModeSelection == TIME_TRIALS) { return; }

    vec3s_set(sp20, 0, 0, 0);
    vec3f_set(sp28, 0, 0, 0);
    sp34[0] = arg0;
    sp34[1] = arg1;
    sp34[2] = arg2;
    temp_a0 = addActorToEmptySlot(sp34, sp20, sp28, 43);
    D_802BA05C = &gActorList[temp_a0];
}

void update_obj_item_box_hot_air_balloon(struct ItemBox *itemBox) {
    switch(itemBox->state) {
        case 5:
            itemBox->rot[0] += 0xB6;
            itemBox->rot[1] -= 0x16C;
            itemBox->rot[2] += 0xB6;
            break;
        case 3:
            if (itemBox->someTimer == 0x14) {
                itemBox->state = 5;
                itemBox->flags = -0x4000;
            } else {
                itemBox->someTimer++;
                itemBox->rot[0] += 0x444;
                itemBox->rot[1] -= 0x2D8;
                itemBox->rot[2] += 0x16C;
            }
            break;
    }
}

void update_obj_item_box(struct ItemBox *itemBox) {
    switch (itemBox->state) {
        case 0:
            itemBox->state = 1;
            break;
        case 1:
            if ((itemBox->pos[1] - itemBox->origY) < 8.66f) {
                itemBox->pos[1] += 0.45f;
            } else {
                itemBox->pos[1] = itemBox->origY + 8.66f;
                itemBox->state = 2;
                itemBox->flags = 0xC000;
            }
            break;
        case 2:
            itemBox->rot[0] += 0xB6;
            itemBox->rot[1] -= 0x16C;
            itemBox->rot[2] += 0xB6;
            break;
        case 3:
            if (itemBox->someTimer == 20) {
                itemBox->state = 0;
                itemBox->pos[1] = itemBox->resetDistance - 20.0f;
                itemBox->flags = 0xC000;
            } else {
                itemBox->someTimer++;
                itemBox->rot[0] += 0x444;
                itemBox->rot[1] -= 0x2D8;
                itemBox->rot[2] += 0x16C;
            }
            break;
    }
}

void func_802A171C(Camera *camera, struct FakeItemBox *fakeItemBox) {
    Vec3s someRot;
    s32 stackPadding0;
    s32 stackPadding1;
    s32 stackPadding2;
    Vec3f someVec;
    Mat4 someMatrix2;
    Mat4 someMatrix3;
    s32 stackPadding3;
    s32 stackPadding4;
    s32 stackPadding5;
    s32 stackPadding6;
    s32 stackPadding7;
    s32 stackPadding8;
    s32 stackPadding9;
    s32 stackPadding10;
    s32 stackPadding11;
    s32 stackPadding12;
    s32 stackPadding13;
    s32 stackPadding14;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f12;
    f32 temp_f2;
    f32 thing;
    f32 temp_f2_2;
    f32 someMultiplier;

    if (func_802B80D0(camera->pos, fakeItemBox->pos, camera->rot[1], 2500.0f, D_80150130[camera - camera1], 1000000.0f) < 0) {
        func_80297230(camera, (struct Actor *) fakeItemBox);
        return;
    }
    if (((f32) D_8015F6EC + 800.0f) < fakeItemBox->pos[1]) {
        func_80297230(camera, (struct Actor *) fakeItemBox);
        return;
    }
    if (fakeItemBox->pos[1] < ((f32) D_8015F6EE - 800.0f)) {
        func_80297230(camera, (struct Actor *) fakeItemBox);
        return;
    }
    func_802972B8(camera, (struct Actor *) fakeItemBox);
    someRot[0] = 0;
    someRot[1] = fakeItemBox->rot[1];
    someRot[2] = 0;
    func_802B5F74(someMatrix2, fakeItemBox->pos, someRot);
    func_802B5F00(someMatrix2, fakeItemBox->sizeScaling);
    if (fakeItemBox->state != 2) {

        if (!func_802B4FF8(someMatrix2, 0)) { return; }

        gSPDisplayList(gDisplayListHead++, D_0D002F80);
        func_802B5F74(someMatrix2, fakeItemBox->pos, fakeItemBox->rot);
        func_802B5F00(someMatrix2, fakeItemBox->sizeScaling);

        if (!func_802B4FF8(someMatrix2, 0)) { return; }

        gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
        gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIA, G_CC_MODULATEIA);
        if ((fakeItemBox->rot[1] < 0xAA1) && (fakeItemBox->rot[1] > 0)) {
            gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
        } else if ((fakeItemBox->rot[1] >= 0x6AA5) && (fakeItemBox->rot[1] < 0x754E)) {
            gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
        } else if ((fakeItemBox->rot[1] >= 0x38E1) && (fakeItemBox->rot[1] < 0x438A)) {
            gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
        } else if ((fakeItemBox->rot[1] >= 0xC711) && (fakeItemBox->rot[1] < 0xD1BA)) {
            gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
        } else {
            gDPNoOp(gDisplayListHead++);
            gDPSetRenderMode(gDisplayListHead++, G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2);
        }
        gSPDisplayList(gDisplayListHead++, D_0D003090);
    } else {
        gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
        gSPClearGeometryMode(gDisplayListHead++, G_CULL_BACK);
        gDPNoOp(gDisplayListHead++);
        thing = fakeItemBox->someTimer;
        func_802B5F74(someMatrix2, fakeItemBox->pos, fakeItemBox->rot);
        if (thing < 10.0f) {
            someMultiplier = 1.0f;
        } else {
            someMultiplier = 1.0f - ((thing - 10.0f) * 0.1f);
        }
        func_802B5F00(someMatrix2, someMultiplier);
        if (fakeItemBox->someTimer & 1) {
            gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
        } else {
            gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2);
        }
        temp_f2 = 2.0f * thing;
        someVec[0] = 0.0f;
        someVec[1] = temp_f2;
        someVec[2] = thing;
        func_802B5450(someMatrix2, someMatrix3, someVec);

        if (!func_802B4FF8(someMatrix3, 0)) { return; }

        gSPDisplayList(gDisplayListHead++, D_0D003158);
        temp_f2_2 = 0.8f * thing;
        temp_f12 = 0.5f * thing;
        someVec[0] = temp_f2_2;
        someVec[1] = 2.3f * thing;
        someVec[2] = temp_f12;
        func_802B5450(someMatrix2, someMatrix3, someVec);

        if (!func_802B4FF8(someMatrix3, 0)) { return; }

        gSPDisplayList(gDisplayListHead++, D_0D0031B8);
        temp_f0_2 = -0.5f * thing;
        someVec[0] = temp_f2_2;
        someVec[1] = 1.2f * thing;
        someVec[2] = temp_f0_2;
        func_802B5450(someMatrix2, someMatrix3, someVec);

        if (!func_802B4FF8(someMatrix3, 0)) { return; }

        gSPDisplayList(gDisplayListHead++, D_0D003128);
        if (!(fakeItemBox->someTimer & 1)) {
            gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
        } else {
            gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2);
        }
        someVec[0] = 0.0f;
        someVec[1] = 1.8f * thing;
        someVec[2] = -1.0f * thing;
        func_802B5450(someMatrix2, someMatrix3, someVec);

        if (!func_802B4FF8(someMatrix3, 0)) { return; }

        gSPDisplayList(gDisplayListHead++, D_0D0031E8);
        temp_f0_3 = -0.8f * thing;
        someVec[0] = temp_f0_3;
        someVec[1] = 0.6f * thing;
        someVec[2] = temp_f0_2;
        func_802B5450(someMatrix2, someMatrix3, someVec);

        if (!func_802B4FF8(someMatrix3, 0)) { return; }

        gSPDisplayList(gDisplayListHead++, D_0D003188);
        someVec[0] = temp_f0_3;
        someVec[1] = temp_f2;
        someVec[2] = temp_f12;
        func_802B5450(someMatrix2, someMatrix3, someVec);

        if (!func_802B4FF8(someMatrix3, 0)) { return; }

        gSPDisplayList(gDisplayListHead++, D_0D0030F8);
        gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
    }
}

void func_802A1EA0(Camera *camera, struct ItemBox *item_box) {
    s32 stackPadding0;
    s32 stackPadding1;
    Vec3f someVec1;
    Vec3f someVec2;
    Vec3s someRot;
    f32 thing;
    s32 stackPadding2;
    Mat4 someMatrix1;
    Mat4 someMatrix2;
    s32 stackPadding3;
    s32 stackPadding4;
    s32 stackPadding5;
    s32 stackPadding6;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f12;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 someMultiplier;

    temp_f0 = func_802B80D0(camera->pos, item_box->pos, camera->rot[1], 0.0f, D_80150130[camera - camera1], 4000000.0f);
    if (!(temp_f0 < 0.0f) && !(600000.0f < temp_f0)) {
        if ((item_box->state == 2) && (temp_f0 < 100000.0f)) {
            someRot[0] = 0;
            someRot[1] = item_box->rot[1];
            someRot[2] = 0;
            someVec2[0] = item_box->pos[0];
            someVec2[1] = item_box->resetDistance + 2.0f;
            someVec2[2] = item_box->pos[2];
            func_802B5F74(someMatrix1, someVec2, someRot);

            if (!func_802B4FF8(someMatrix1, 0)) { return; }

            gSPDisplayList(gDisplayListHead++, D_0D002EE8);
            someRot[1] = item_box->rot[1] * 2;
            someVec2[1] = item_box->pos[1];
            func_802B5F74(someMatrix1, someVec2, someRot);

            if (!func_802B4FF8(someMatrix1, 0)) { return; }

            gSPDisplayList(gDisplayListHead++, D_0D003008);
        }
        if (item_box->state == 5) {
            func_802B5F74(someMatrix1, item_box->pos, item_box->rot);

            if (!func_802B4FF8(someMatrix1, 0)) { return; }

            gSPDisplayList(gDisplayListHead++, D_0D003008);
        }
        if (item_box->state != 3) {
            func_802B5F74(someMatrix1, item_box->pos, item_box->rot);

            if (!func_802B4FF8(someMatrix1, 0)) { return; }

            gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
            gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIA, G_CC_MODULATEIA);
            if ((item_box->rot[1] < 0xAA1) && (item_box->rot[1] > 0)) {
                gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
            } else if ((item_box->rot[1] >= 0x6AA5) && (item_box->rot[1] < 0x754E)) {
                gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
            } else if ((item_box->rot[1] >= 0x38E1) && (item_box->rot[1] < 0x438A)) {
                gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
            } else if ((item_box->rot[1] >= 0xC711) && (item_box->rot[1] < 0xD1BA)) {
                gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
            } else {
                gDPNoOp(gDisplayListHead++);
                gDPSetRenderMode(gDisplayListHead++, G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2);
            }
            gSPSetGeometryMode(gDisplayListHead++, G_SHADING_SMOOTH);
            gSPDisplayList(gDisplayListHead++, D_0D003090);
        } else {
            gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
            gSPClearGeometryMode(gDisplayListHead++, G_CULL_BACK);
            gDPNoOp(gDisplayListHead++);
            thing = item_box->someTimer;
            func_802B5F74(someMatrix1, item_box->pos, item_box->rot);
            if (thing < 10.0f) {
                someMultiplier = 1.0f;
            } else {
                someMultiplier = 1.0f - ((thing - 10.0f) * 0.1f);
            }
            func_802B5F00(someMatrix1, someMultiplier);
            if (item_box->someTimer & 1) {
                gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
            } else {
                gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2);
            }
            temp_f2 = 2.0f * thing;
            someVec1[0] = 0.0f;
            someVec1[1] = temp_f2;
            someVec1[2] = thing;
            func_802B5450(someMatrix1, someMatrix2, someVec1);

            if (!func_802B4FF8(someMatrix2, 0)) { return; }

            gSPDisplayList(gDisplayListHead++, D_0D003158);
            temp_f2_2 = 0.8f * thing;
            temp_f12 = 0.5f * thing;
            someVec1[0] = temp_f2_2;
            someVec1[1] = 2.3f * thing;
            someVec1[2] = temp_f12;
            func_802B5450(someMatrix1, someMatrix2, someVec1);

            if (!func_802B4FF8(someMatrix2, 0)) { return; }

            gSPDisplayList(gDisplayListHead++, D_0D0031B8);
            temp_f0_2 = -0.5f * thing;
            someVec1[0] = temp_f2_2;
            someVec1[1] = 1.2f * thing;
            someVec1[2] = temp_f0_2;
            func_802B5450(someMatrix1, someMatrix2, someVec1);

            if (!func_802B4FF8(someMatrix2, 0)) { return; }

            gSPDisplayList(gDisplayListHead++, D_0D003128);
            if (!(item_box->someTimer & 1)) {
                gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
            } else {
                gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2);
            }
            someVec1[0] = 0.0f;
            someVec1[1] = 1.8f * thing;
            someVec1[2] = -1.0f * thing;
            func_802B5450(someMatrix1, someMatrix2, someVec1);

            if (!func_802B4FF8(someMatrix2, 0)) { return; }

            gSPDisplayList(gDisplayListHead++, D_0D0031E8);
            temp_f0_3 = -0.8f * thing;
            someVec1[0] = temp_f0_3;
            someVec1[1] = 0.6f * thing;
            someVec1[2] = temp_f0_2;
            func_802B5450(someMatrix1, someMatrix2, someVec1);

            if (!func_802B4FF8(someMatrix2, 0)) { return; }

            gSPDisplayList(gDisplayListHead++, D_0D003188);
            someVec1[0] = temp_f0_3;
            someVec1[1] = temp_f2;
            someVec1[2] = temp_f12;
            func_802B5450(someMatrix1, someMatrix2, someVec1);

            if (!func_802B4FF8(someMatrix2, 0)) { return; }

            gSPDisplayList(gDisplayListHead++, D_0D0030F8);
            gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
        }
        gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
    }
}

void func_802A269C(Camera *arg0, struct Actor *arg1) {
    Mat4 sp38;
    f32 unk = func_802B80D0(arg0->pos, arg1->pos, arg0->rot[1], 0, D_80150130[arg0 - camera1], 16000000.0f);

    if (!(unk < 0.0f)) {
        gSPSetGeometryMode(gDisplayListHead++, G_SHADING_SMOOTH);
        gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);

        func_802B5F74(sp38, arg1->pos, arg1->rot);
        if (func_802B4FF8(sp38, 0) != 0) {

            gSPDisplayList(gDisplayListHead++, D_0600CA60);
        }
    }
}

void func_802A27A0(Camera *arg0, Mat4 arg1, struct YoshiValleyEgg *egg, u16 arg3) {
    Mat4 sp60;
    Vec3s sp5C;
    Vec3f sp54;
    f32 temp_f0;

    if (gGamestate != CREDITS_SEQUENCE) {
        temp_f0 = func_802B80D0(arg0->pos, egg->pos, arg0->rot[1], 200.0f, D_80150130[arg0 - camera1], 16000000.0f);
        if (temp_f0 < 0.0f) {
            return;
        }
    } else {
        arg3 = 15;
        temp_f0 = 0.0f;
    }

    gSPSetGeometryMode(gDisplayListHead++, G_SHADING_SMOOTH);
    if ((arg3 > 12) && (arg3 < 20)) {
        if (temp_f0 < 640000.0f) {
            sp54[0] = egg->pos[0];
            sp54[1] = 3.0f;
            sp54[2] = egg->pos[2];
            func_802976D8(sp5C);
            func_8029794C(sp54, sp5C, 10.0f);
        }
        sp5C[0] = 0;
        sp5C[1] = egg->eggRot;
        sp5C[2] = 0;
        func_802B5F74(sp60, egg->pos, sp5C);
        if (func_802B4FF8(sp60, 0) == 0) { return; }

            gSPSetGeometryMode(gDisplayListHead++, G_LIGHTING);
            gSPDisplayList(gDisplayListHead++, D_06016D70);
    } else {
        arg1[3][0] = egg->pos[0];
        arg1[3][1] = egg->pos[1];
        arg1[3][2] = egg->pos[2];

        if (func_802B4FF8(arg1, 0) != 0) {
            gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
            gSPDisplayList(gDisplayListHead++, D_06017FA8);
        }
    }
}

void func_802A29BC(Camera *arg0, Mat4 arg1, struct Actor *arg2) {
    Mat4 sp40;
    f32 unk;
    s16 temp = arg2->flags;

    if (temp & 0x800) { return; }
        unk = func_802B80D0(arg0->pos, arg2->pos, arg0->rot[1], 0, D_80150130[arg0 - camera1], 16000000.0f);
        if (!(unk < 0.0f)) {
            gSPSetGeometryMode(gDisplayListHead++, G_SHADING_SMOOTH);
            gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
            func_802B5F74(&sp40, arg2->pos, arg2->rot);
            if (func_802B4FF8(&sp40, 0) != 0) {
                gSPDisplayList(gDisplayListHead++, D_06009330);
            }
        }
}

void func_802A2AD0(Camera *arg0, struct RailroadCrossing *rr_crossing) {
    Vec3s sp80 = {0, 0, 0};
    Mat4 sp40;
    f32 unk = func_802B80D0(arg0->pos, rr_crossing->pos, arg0->rot[1], 0.0f, D_80150130[arg0 - camera1], 4000000.0f);

    if (!(unk < 0.0f)) {
        func_802B5F74(sp40, rr_crossing->pos, rr_crossing->rot);

        if (func_802B4FF8(sp40, 0) != 0) {
            gSPSetGeometryMode(gDisplayListHead++, G_LIGHTING);
            gSPClearGeometryMode(gDisplayListHead++, G_CULL_BACK);

            if (D_801637B8[rr_crossing->crossingId]) {

                if (rr_crossing->someTimer < 20) {
                    gSPDisplayList(gDisplayListHead++, D_06010AE8);
                } else {
                    gSPDisplayList(gDisplayListHead++, D_06010C10);
                }
            } else {
                gSPDisplayList(gDisplayListHead++, D_06010D38);
            }
            gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
        }
    }
}

void func_802A2C78(Camera *arg0, Mat4 arg1, struct Actor *arg2) {
    Vec3s spA8 = {0, 0, 0};
    Mat4 sp68;
    f32 temp_f0;
    s16 temp_v0 = arg2->flags;

    if ((temp_v0 & 0x800)) {
        return;
    }

    temp_f0 = func_802B80D0(arg0->pos, arg2->pos, arg0->rot[1], 0.0f, D_80150130[arg0 - camera1], 4000000.0f);

    if (!(temp_f0 < 0.0f)) {
        if (((temp_v0 & 0x400) == 0) && (temp_f0 < 250000.0f)) {
            func_8029794C(arg2->pos, arg2->rot, 2.0f);
        }
        func_802B5F74(sp68, arg2->pos, spA8);
        if (func_802B4FF8(sp68, 0) != 0) {

            gDPSetTextureLUT(gDisplayListHead++, G_TT_NONE);
            gSPSetGeometryMode(gDisplayListHead++, G_LIGHTING);

            switch(arg2->unk_04) {
                case 0:
                        gSPDisplayList(gDisplayListHead++, &D_060186B8);
                        gSPClearGeometryMode(gDisplayListHead++, G_CULL_BACK);
                        gSPDisplayList(gDisplayListHead++, &D_060185F8);
                        gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
                        break;

                    case 1:
                        gSPDisplayList(gDisplayListHead++, &D_06018A08);
                        gSPClearGeometryMode(gDisplayListHead++, G_CULL_BACK);
                        gSPDisplayList(gDisplayListHead++, &D_06018948);
                        gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
                        break;

                    case 2:
                        gSPDisplayList(gDisplayListHead++, &D_06018D58);
                        gSPClearGeometryMode(gDisplayListHead++, G_CULL_BACK);
                        gSPDisplayList(gDisplayListHead++, &D_06018C98);
                        gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
                        break;

            }
        }
    }
}

void func_802A2F34(struct UnkStruct_800DC5EC *arg0) {
    Camera *temp_s1 = arg0->camera;
    struct Actor *phi_s0;
    s32 i;
    D_8015F8DC = 0;

    for (i = 0; i < ACTOR_LIST_SIZE; i++) {
        phi_s0 = &gActorList[i];

        if (phi_s0->flags == 0) { 
            continue;
        }

        switch(phi_s0->type) {
            case ACTOR_FAKE_ITEM_BOX:
                func_802A171C(temp_s1, phi_s0);
                break;
            case ACTOR_ITEM_BOX:
                func_802A1EA0(temp_s1, phi_s0);
                break;
            case ACTOR_HOT_AIR_BALLOON_ITEM_BOX:
                func_802A1EA0(temp_s1, phi_s0);
                break;
        }
    }
}

void func_802A3008(struct UnkStruct_800DC5EC *arg0) {
    Camera *camera = arg0->camera;
    u16 sp92 = arg0->pathCounter;
    s32 pad[12];
    s32 i;

    struct Actor *actor;
    Vec3f sp4C = {0.0f, 5.0f, 10.0f};
    f32 sp48 = sins(camera->rot[1] - 0x8000); // unk26;
    f32 temp_f0 = coss(camera->rot[1] - 0x8000);


    D_801502C0[0][0] = temp_f0;
    D_801502C0[0][2] = -sp48;
    D_801502C0[2][2] = temp_f0;
    D_801502C0[1][0] = 0.0f;
    D_801502C0[0][1] = 0.0f;
    D_801502C0[2][1] = 0.0f;
    D_801502C0[1][2] = 0.0f;
    D_801502C0[0][3] = 0.0f;
    D_801502C0[1][3] = 0.0f;
    D_801502C0[2][3] = 0.0f; // 2c
    D_801502C0[2][0] = sp48;
    D_801502C0[1][1] = 1.0f;
    D_801502C0[3][3] = 1.0f; // unk3c

    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
    gSPSetLights1(gDisplayListHead++, D_800DC610[1]);
    gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);


    if (gModeSelection != BATTLE) {
        func_80297340(camera);
    }
    D_8015F8E0 = 0;

    for (i = 0; i < ACTOR_LIST_SIZE; i++) {
        actor = &gActorList[i];

        if (actor->flags == 0) {
            continue;
        }
            switch (actor->type) {
                case 2:
                    func_80299144(camera, D_801502C0, actor);
                    break;
                case 3:
                    func_8029930C(camera, D_801502C0, actor);
                    break;
                case 4:
                    func_802994D4(camera, D_801502C0, actor);
                    break;
                case 19:
                    func_8029969C(camera, D_801502C0, actor);
                    break;
                case 26:
                    func_80299864(camera, D_801502C0, actor);
                    break;
                case 28:
                    func_80299A2C(camera, D_801502C0, actor);
                    break;
                case 33:
                    func_80299BF4(camera, D_801502C0, actor);
                    break;
                case 29:
                    func_80299DBC(camera, D_801502C0, actor);
                    break;
                case 30:
                    func_80299EDC(camera, D_801502C0, actor);
                    break;
                case 31:
                    func_80299FFC(camera, D_801502C0, actor);
                    break;
                case 32:
                    func_8029A11C(camera, D_801502C0, actor);
                    break;
                case ACTOR_FALLING_ROCK:
                    func_8029CA90(camera, (struct FallingRock *) actor);
                    break;
                case ACTOR_KIWANO_FRUIT:
                    func_8029A23C(camera, D_801502C0, actor);
                    break;
                case ACTOR_BANANA:
                    func_8029A8F4(camera, D_801502C0, actor);
                    break;
                case ACTOR_GREEN_SHELL:
                    func_8029A690(camera, D_801502C0, (struct ShellActor *) actor);
                    break;
                case ACTOR_RED_SHELL:
                    func_8029A75C(camera, D_801502C0, (struct ShellActor *) actor);
                    break;
                case ACTOR_BLUE_SPINY_SHELL:
                    func_8029A828(camera, D_801502C0, (struct ShellActor *) actor);
                    break;
                case ACTOR_PIRANHA_PLANT:
                    func_80298328(camera, D_801502C0, actor);
                    break;
                case ACTOR_TRAIN_ENGINE:
                    func_8029B8E8(camera, (struct TrainCar *) actor);
                    break;
                case ACTOR_TRAIN_TENDER:
                    func_8029BFB0(camera, (struct TrainCar *) actor);
                    break;
                case ACTOR_TRAIN_PASSENGER_CAR:
                    func_8029C3CC(camera, (struct TrainCar *) actor);
                    break;
                case 18:
                    func_80297A50(camera, D_801502C0, actor);
                    break;
                case 20:
                    func_8029AC18(camera, D_801502C0, actor);
                    break;
                case ACTOR_MARIO_RACEWAY_SIGN:
                    func_802A29BC(camera, D_801502C0, actor);
                    break;
                case ACTOR_WARIO_STADIUM_SIGN:
                    func_802A269C(camera, actor);
                    break;
                case ACTOR_PALM_TREE:
                    func_802A2C78(camera, D_801502C0, actor);
                    break;
                case ACTOR_PADDLE_WHEEL_BOAT:
                    func_8029AE1C(camera, actor, D_801502C0, sp92);
                    break;
                case ACTOR_BOX_TRUCK:
                    func_8029B06C(camera, actor);
                    break;
                case ACTOR_SCHOOL_BUS:
                    func_8029B2E4(camera, actor);
                    break;
                case ACTOR_TANKER_TRUCK:
                    func_8029B6EC(camera, actor);
                    break;
                case ACTOR_CAR:
                    func_8029B4E0(camera, actor);
                    break;
                case ACTOR_RAILROAD_CROSSING:
                    func_802A2AD0(camera, actor);
                    break;
                case ACTOR_YOSHI_VALLEY_EGG:
                    func_802A27A0(camera, D_801502C0, actor, sp92);
                    break;
            }
    }
    switch (gCurrentCourseId) {
        case COURSE_MOO_MOO_FARM:
            func_802986B4(camera, D_801502C0, actor);
            break;
        case COURSE_DK_JUNGLE:
            func_80298D7C(camera, D_801502C0, actor);
            break;
    }
}

void update_simple_objects(void) {
    struct Actor *actor;
    s32 i;
    for (i = 0; i < ACTOR_LIST_SIZE; i++) {

        actor = &gActorList[i];
        if (actor->flags == 0) {
            continue;
        }

        switch (actor->type) {
            case ACTOR_FALLING_ROCK:
                update_obj_falling_rocks(actor);
                break;
            case ACTOR_GREEN_SHELL:
                update_obj_green_shell(actor);
                break;
            case ACTOR_RED_SHELL:
                update_obj_red_blue_shell(actor);
                break;
            case ACTOR_BLUE_SPINY_SHELL:
                update_obj_red_blue_shell(actor);
                break;
            case ACTOR_KIWANO_FRUIT:
                update_obj_kiwano_fruit(actor);
                break;
            case ACTOR_BANANA:
                update_obj_banana(actor);
                break;
            case ACTOR_PADDLE_WHEEL_BOAT:
                update_obj_paddle_wheel(actor);
                break;
            case ACTOR_TRAIN_ENGINE:
                update_obj_train_engine(actor);
                break;
            case ACTOR_TRAIN_TENDER:
                update_obj_train_car1(actor);
                break;
            case ACTOR_TRAIN_PASSENGER_CAR:
                update_obj_train_car2(actor);
                break;
            case ACTOR_ITEM_BOX:
                update_obj_item_box(actor);
                break;
            case ACTOR_HOT_AIR_BALLOON_ITEM_BOX:
                update_obj_item_box_hot_air_balloon(actor);
                break;
            case ACTOR_FAKE_ITEM_BOX:
                update_obj_fake_item_box(actor);
                break;
            case ACTOR_PIRANHA_PLANT:
                update_obj_piranha_plant(actor);
                break;
            case ACTOR_BANANA_BUNCH:
                update_obj_banana_bunch(actor);
                break;
            case ACTOR_TRIPLE_GREEN_SHELL:
                update_obj_triple_shell(actor, ACTOR_GREEN_SHELL);
                break;
            case ACTOR_TRIPLE_RED_SHELL:
                update_obj_triple_shell(actor, ACTOR_RED_SHELL);
                break;
            case ACTOR_MARIO_RACEWAY_SIGN:
                update_obj_mario_raceway_sign(actor);
                break;
            case ACTOR_WARIO_STADIUM_SIGN:
                update_obj_wario_stadium_sign(actor);
                break;
            case ACTOR_RAILROAD_CROSSING:
                update_obj_railroad_crossing(actor);
                break;
            case 2:
            case 3:
            case 4:
            case 19:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
                update_obj_trees_cacti_shrubs(actor);
                break;
            case ACTOR_YOSHI_VALLEY_EGG:
                update_obj_yoshi_valley_egg(actor);
                break;
            }
        }
    func_802A0E44();
    func_802B30EC();
}
