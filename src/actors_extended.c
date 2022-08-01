#include <ultra64.h>
#include <macros.h>
#include <defines.h>
#include <actor_types.h>
#include "math_util.h"
#include "memory.h"
#include "waypoints.h"
#include "code_80091750.h"
#include "actors.h"
#include "actors_extended.h"

void func_802B0210(UnkActorInner *arg0, UnkActorInner *arg1) {
    arg1->unk30 = arg0->unk30;
    arg1->unk32 = arg0->unk32;
    arg1->unk34 = arg0->unk34;
    arg1->unk36 = arg0->unk36;
    arg1->unk38 = arg0->unk38;
    arg1->unk3A = arg0->unk3A;
    arg1->unk3C = arg0->unk3C;
    arg1->unk40 = arg0->unk40;

    arg1->unk44 = arg0->unk44;
    vec3f_copy(arg1->unk48, arg0->unk48);
    vec3f_copy(arg1->unk54, arg0->unk54);
    vec3f_copy(arg1->unk60, arg0->unk60);
}

void func_802B02B4(struct ShellActor *shell, s32 shellType) {
    struct TripleShellParent *parent = &gActorList[shell->parentIndex];

    parent->shellsAvailable--;

    switch((s16)shell->shellId) {
        case 0:
            parent->shellIndices[0] = -1.0f;
            break;
        case 1:
            parent->shellIndices[1] = -1.0f;
            break;
        case 2:
            parent->shellIndices[2] = -1.0f;
            break;
    }

    shell->flags = 0x8000; // bitflag
    shell->rotAngle = 0;
    shell->velocity[1] = 3.0f;
    shell->someTimer = 60;

    switch(shellType) {
        case ACTOR_GREEN_SHELL:
            shell->state = 5;
            break;
        case ACTOR_RED_SHELL:
            shell->state = 7;
            break;
    }
}

// Sets velocities for a banana, used when a racer runs into
// a banana bunch.
void func_802B039C(struct BananaActor *banana) {
    banana->state = 1;
    banana->unk_04 = 0x00B4;
    banana->velocity[0] = ((f32) (random_int(0x00C8) - 0x64) * 0.015);
    banana->velocity[1] = ((f32)  random_int(0x00C8)) * 0.015;
    banana->velocity[2] = ((f32) (random_int(0x00C8) - 0x64) * 0.015);
}

void func_802B0464(s16 bananaIndex) {
    struct BananaActor *banana;

    if (bananaIndex != -1) {
        banana = &gActorList[bananaIndex];
        func_802B039C(banana);
        func_802B0464(banana->youngerIndex);
    }
}

void func_802B04E8(struct BananaActor *unused, s16 bananaIndex) {
    struct BananaActor *banana;

    if (bananaIndex != -1) {
        banana = &gActorList[bananaIndex];
        func_802B039C(banana);
        func_802B04E8(banana, banana->elderIndex);
    }
}

// Handle a banana being ran over while it is still part of a banana bunch
void func_802B0570(struct BananaActor *banana) {
    struct BananaBunchParent *temp_v0_2;

    func_802B0464(banana->youngerIndex);
    func_802B04E8(banana, banana->elderIndex);
    if ((gPlayers[banana->playerId].unk_000 & 0x4000) != 0) {
        func_800C9060(banana->playerId, 0x19019053);
    }
    banana->flags = -0x8000;
    banana->unk_04 = 0x003C;
    banana->state = 5;
    banana->velocity[1] = 3.0f;
    temp_v0_2 = &gActorList[banana->parentIndex];
    temp_v0_2->bananaIndices[0] = -1;
    temp_v0_2->bananaIndices[1] = -1;
    temp_v0_2->bananaIndices[2] = -1;
    temp_v0_2->bananaIndices[3] = -1;
    temp_v0_2->bananaIndices[4] = -1;
}

// Drop a banana from a banana bunch?
void func_802B0648(struct BananaBunchParent *banana_bunch) {
    s16 elderIndex;
    struct BananaActor *banana;

    banana_bunch->bananasAvailable -= 1;
    if (banana_bunch->bananaIndices[4] != -1) {
        banana = &gActorList[banana_bunch->bananaIndices[4]];
        banana_bunch->bananaIndices[4] = -1;
    } else if (banana_bunch->bananaIndices[3] != -1) {
        banana = &gActorList[banana_bunch->bananaIndices[3]];
        banana_bunch->bananaIndices[3] = -1;
    } else if (banana_bunch->bananaIndices[2] != -1) {
        banana = &gActorList[banana_bunch->bananaIndices[2]];
        banana_bunch->bananaIndices[2] = -1;
    } else if (banana_bunch->bananaIndices[1] != -1) {
        banana = &gActorList[banana_bunch->bananaIndices[1]];
        banana_bunch->bananaIndices[1] = -1;
    } else if (banana_bunch->bananaIndices[0] != -1) {
        banana = &gActorList[banana_bunch->bananaIndices[0]];
        banana_bunch->bananaIndices[0] = -1;
    } else {
        return;
    }

    banana->state = 1;
    banana->unk_04 = 0x00B4;
    banana->velocity[0] = 0.0f;
    banana->velocity[1] = 1.5f;
    banana->velocity[2] = 0.0f;
    elderIndex = banana->elderIndex;
    if (elderIndex != -1) {
        ((struct BananaActor*)&gActorList[elderIndex])->youngerIndex = -1;
    }
}

// Drop a banana from a banana bunch and throw it forward?
void func_802B0788(s16 rawStickY, struct BananaBunchParent *banana_bunch, Player *player) {
    Vec3f velocity;
    struct BananaActor *banana;
    struct BananaActor *elderBanana;
    f32 var_f0;
    f32 var_f12;

    banana_bunch->bananasAvailable -= 1;
    if (banana_bunch->bananaIndices[4] != -1) {
        banana = (struct BananaActor*)&gActorList[banana_bunch->bananaIndices[4]];
        banana_bunch->bananaIndices[4] = -1;
    } else if (banana_bunch->bananaIndices[3] != -1) {
        banana = (struct BananaActor*)&gActorList[banana_bunch->bananaIndices[3]];
        banana_bunch->bananaIndices[3] = -1;
    } else if (banana_bunch->bananaIndices[2] != -1) {
        banana = (struct BananaActor*)&gActorList[banana_bunch->bananaIndices[2]];
        banana_bunch->bananaIndices[2] = -1;
    } else if (banana_bunch->bananaIndices[1] != -1) {
        banana = (struct BananaActor*)&gActorList[banana_bunch->bananaIndices[1]];
        banana_bunch->bananaIndices[1] = -1;
    } else if (banana_bunch->bananaIndices[0] != -1) {
        banana = (struct BananaActor*)&gActorList[banana_bunch->bananaIndices[0]];
        banana_bunch->bananaIndices[0] = -1;
    } else {
        return;
    }

    banana->state = 1;
    banana->unk_04 = 0x001E;
    if (banana->elderIndex != -1) {
        elderBanana = (struct BananaActor*)&gActorList[banana->elderIndex];
        elderBanana->youngerIndex = -1;
    }
    if (player->unk_094 < 2.0f) {
        var_f0 = ((rawStickY - 30.0f) / 20.0f) + 1.5f;
        var_f12 = 4.0f;
    } else {
        var_f0 = ((rawStickY - 30.0f) / 20.0f) + 1.5f;
        var_f12 = (player->unk_094 * 0.75f) + 4.5f + var_f0;
    }
    vec3f_set(velocity, 0.0f, var_f0, var_f12);
    func_802B64C4(velocity, player->unk_02C[1] + player->unk_0C0);
    banana->velocity[0] = velocity[0];
    banana->velocity[1] = velocity[1];
    banana->velocity[2] = velocity[2];
}

s32 func_802B09C0(s16 bananaId) {
    struct BananaActor *banana;
    if (bananaId == -1) {
        return 0;
    }
    banana = (struct BananaActor*) &gActorList[bananaId];
    if (banana->state == 2) {
        return 1;
    }
    if (banana->state == 3) {
        return 1;
    }
    return 0;
}

void update_obj_banana_bunch(struct BananaBunchParent *banana_bunch) {
    s32 pad[2];
    Player *owner;
    struct Controller *controller;
    s32 someCount;

    owner = &gPlayers[banana_bunch->playerId];
    switch (banana_bunch->state) {
    case 0:
        func_802B2914(banana_bunch, owner, 0);
        banana_bunch->unk_04 = 4;
        banana_bunch->state = 1;
        banana_bunch->bananasAvailable = 1;
        break;
    case 1:
        banana_bunch->unk_04 -= 1;
        if (banana_bunch->unk_04 == 0) {
            func_802B2914(banana_bunch, owner, 1);
            banana_bunch->unk_04 = 4;
            banana_bunch->state = 2;
            banana_bunch->bananasAvailable += 1;
        }
        break;
    case 2:
        banana_bunch->unk_04 -= 1;
        if (banana_bunch->unk_04 == 0) {
            func_802B2914(banana_bunch, owner, 2);
            banana_bunch->unk_04 = 4;
            banana_bunch->state = 3;
            banana_bunch->bananasAvailable += 1;
        }
        break;
    case 3:
        banana_bunch->unk_04 -= 1;
        if (banana_bunch->unk_04 == 0) {
            func_802B2914(banana_bunch, owner, 3);
            banana_bunch->unk_04 = 4;
            banana_bunch->state = 4;
            banana_bunch->bananasAvailable += 1;
        }
        break;
    case 4:
        banana_bunch->unk_04 -= 1;
        if (banana_bunch->unk_04 == 0) {
            func_802B2914(banana_bunch, owner, 4);
            banana_bunch->unk_04 = 4;
            banana_bunch->state = 5;
            banana_bunch->bananasAvailable += 1;
        }
        break;
    case 5:
        banana_bunch->state = 6;
        // Unnecessary type-casting done here purely to help with understanding.
        // We're setting the ->flags of BananaActors, not plain Actors.
        ((struct BananaActor*)&gActorList[banana_bunch->bananaIndices[0]])->flags |= 0x5000;
        ((struct BananaActor*)&gActorList[banana_bunch->bananaIndices[1]])->flags |= 0x5000;
        ((struct BananaActor*)&gActorList[banana_bunch->bananaIndices[2]])->flags |= 0x5000;
        ((struct BananaActor*)&gActorList[banana_bunch->bananaIndices[3]])->flags |= 0x5000;
        ((struct BananaActor*)&gActorList[banana_bunch->bananaIndices[4]])->flags |= 0x5000;
        break;
    case 6:
        someCount = 0;
        if (func_802B09C0(banana_bunch->bananaIndices[0]) == 1) {
            someCount = 1;
        }
        if (func_802B09C0(banana_bunch->bananaIndices[1]) == 1) {
            someCount += 1;
        }
        if (func_802B09C0(banana_bunch->bananaIndices[2]) == 1) {
            someCount += 1;
        }
        if (func_802B09C0(banana_bunch->bananaIndices[3]) == 1) {
            someCount += 1;
        }
        if (func_802B09C0(banana_bunch->bananaIndices[4]) == 1) {
            someCount += 1;
        }
        if (someCount == 0) {
            destroy_actor(banana_bunch);
            owner->unk_00C &= ~0x40000;
        } else if ((owner->unk_000 & 0x4000) != 0) {
            controller = &gControllers[banana_bunch->playerId];
            if ((controller->buttonPressed & 0x2000) != 0) {
                controller->buttonPressed &= ~0x2000;
                func_800C9060(owner - gPlayerOne, 0x19008012);
                if ((controller->rawStickY >= 0x1F) && ((controller->rawStickX < 0x28) && (controller->rawStickX >= -0x27))) {
                    func_802B0788(controller->rawStickY, banana_bunch, owner);
                } else {
                    func_802B0648(banana_bunch);
                }
            }
        }
        break;
    default:
        break;
    }
}

s32 func_802B0E14(s16 arg0) {
    struct ShellActor *temp;
    if (arg0 < 0) {
        return 0;
    }
    temp = (struct ShellActor*) &gActorList[arg0];
    if (temp->type == ACTOR_GREEN_SHELL) {
        if (temp->state == 4) {
            return 1;
        }
        return 0;
    }
    if (temp->state == 6) {
        return 1;
    }
    return 0;
}

void update_obj_triple_shell(struct TripleShellParent *parent, s16 shellType) {
    s32 pad4;
    s32 pad3;
    s16 playerId;
    s16 pad0;
    s32 pad1;
    struct ShellActor *shell;
    Vec3f someVelocity;
    s32 pad2;
    s16 someCount;
    u16 someRotAngle;
    Player *player;

    playerId = parent->playerId;
    player = &gPlayers[playerId];
    parent->rotAngle += parent->rotVelocity;
    someRotAngle = parent->rotAngle;
    switch (parent->state) {
    case 0:
        if (func_802B19EC(parent, &gPlayers[playerId], shellType, 0U) != -1) {
            func_800C9060(playerId, 0x19008012);
            parent->shellsAvailable += 1;
        }
        parent->state = 1;
        break;
    case 1:
        if (parent->rotVelocity > 0) {
            if (someRotAngle >= 0xD556) {
                if (func_802B19EC(parent, &gPlayers[playerId], shellType, 1U) != -1) {
                    func_800C9060(playerId, 0x19008012);
                    parent->shellsAvailable += 1;
                }
                parent->state = 2;
            }
        } else {
            if (someRotAngle < 0x2AAA) {
                if (func_802B19EC(parent, &gPlayers[playerId], shellType, 1U) != -1) {
                    func_800C9060(playerId, 0x19008012);
                    parent->shellsAvailable += 1;
                }
                parent->state = 2;
            }
        }
        break;
    case 2:
        if (parent->rotVelocity > 0) {
            if ((someRotAngle >= 0x2AAB) && (someRotAngle < 0x31C7)) {
                if (func_802B19EC(parent, &gPlayers[playerId], shellType, 2U) != -1) {
                    func_800C9060(playerId, 0x19008012);
                    parent->shellsAvailable += 1;
                }
                parent->state = 3;
            }
        } else if ((someRotAngle < 0xD555) && (someRotAngle >= 0xCE39)) {
            if (func_802B19EC(parent, &gPlayers[playerId], shellType, 2U) != -1) {
                func_800C9060(playerId, 0x19008012);
                parent->shellsAvailable += 1;
            }
            parent->state = 3;
        }
        break;
    case 3:
        parent->state = 4;
        shell = (struct ShellActor*)&gActorList[(s16) parent->shellIndices[0]];
        shell->flags |= 0x4000;
        shell = (struct ShellActor*)&gActorList[(s16) parent->shellIndices[1]];
        shell->flags |= 0x4000;
        shell = (struct ShellActor*)&gActorList[(s16) parent->shellIndices[2]];
        shell->flags |= 0x4000;
        break;
    case 4:
        someCount = 0;
        if (func_802B0E14(parent->shellIndices[0]) == 1) {
            someCount = 1;
        } else {
            parent->shellIndices[0] = -1.0f;
        }
        if (func_802B0E14(parent->shellIndices[1]) == 1) {
            someCount++;
        } else {
            parent->shellIndices[1] = -1.0f;
        }
        if (func_802B0E14(parent->shellIndices[2]) == 1) {
            someCount++;
        } else {
            parent->shellIndices[2] = -1.0f;
        }
        if (someCount == 0) {
            destroy_actor((struct Actor *) parent);
            break;
        }
        if ((gControllers[parent->playerId].buttonPressed & 0x2000) != 0) {
            parent->unk_08 += 1.0f;
            gControllers[parent->playerId].buttonPressed &= ~0x2000;
        }
        if (parent->unk_08 > 0.0f) {
            if (parent->shellIndices[0] > 0.0f) {
                shell = &gActorList[(s16)parent->shellIndices[0]];
                if((shell->rotAngle < 0x38E) || (shell->rotAngle >= -0x38D)) {
                    someVelocity[0] = 0;
                    someVelocity[1] = 0;
                    someVelocity[2] = 8;
                    func_802B64C4(someVelocity, player->unk_02C[1] + player->unk_0C0);
                    shell->velocity[0] = someVelocity[0];
                    shell->velocity[1] = someVelocity[1];
                    shell->velocity[2] = someVelocity[2];
                    shell->state = 2;
                    shell->someTimer = 0x001E;
                    func_800C9060(parent->playerId, 0x19008004);
                    func_800C90F4(parent->playerId, (player->characterId * 0x10) + 0x29008000);
                    if (parent->type == ACTOR_TRIPLE_RED_SHELL) {
                        func_8000ED80(parent->shellIndices[0]);
                    } else {
                        func_8000EDC8(parent->shellIndices[0]);
                    }
                    parent->shellIndices[0] = -1.0f;
                    parent->shellsAvailable -= 1;
                    parent->unk_08 -= 1.0f;
                    break;
                }
            }
            if (parent->shellIndices[1] > 0.0f) {
                shell = &gActorList[(s16)parent->shellIndices[1]];
                if((shell->rotAngle < 0xAA1) || (shell->rotAngle >= 0x38F)) {
                    someVelocity[0] = 0;
                    someVelocity[1] = 0;
                    someVelocity[2] = 8;
                    func_802B64C4(someVelocity, player->unk_02C[1] + player->unk_0C0);
                    shell->velocity[0] = someVelocity[0];
                    shell->velocity[1] = someVelocity[1];
                    shell->velocity[2] = someVelocity[2];
                    shell->state = 2;
                    shell->someTimer = 0x001E;
                    func_800C90F4(parent->playerId, (player->characterId * 0x10) + 0x29008000);
                    func_800C9060(parent->playerId, 0x19008004);
                    if (parent->type == ACTOR_TRIPLE_RED_SHELL) {
                        func_8000ED80(parent->shellIndices[1]);
                    } else {
                        func_8000EDC8(parent->shellIndices[1]);
                    }
                    parent->shellIndices[1] = -1.0f;
                    parent->shellsAvailable -= 1;
                    parent->unk_08 -= 1.0f;
                    break;
                }
            }
            if (parent->shellIndices[2] > 0.0f) {
                shell = &gActorList[(s16)parent->shellIndices[2]];
                if((shell->rotAngle < -0x38E) || (shell->rotAngle >= -0x71B)) {
                    someVelocity[0] = 0;
                    someVelocity[1] = 0;
                    someVelocity[2] = 8;
                    func_802B64C4(someVelocity, player->unk_02C[1] + player->unk_0C0);
                    shell->velocity[0] = someVelocity[0];
                    shell->velocity[1] = someVelocity[1];
                    shell->velocity[2] = someVelocity[2];
                    shell->state = 2;
                    shell->someTimer = 0x001E;
                    func_800C9060(parent->playerId, 0x19008004);
                    func_800C90F4(parent->playerId, (player->characterId * 0x10) + 0x29008000);
                    if (parent->type == ACTOR_TRIPLE_RED_SHELL) {
                        func_8000ED80(parent->shellIndices[2]);
                    } else {
                        func_8000EDC8(parent->shellIndices[2]);
                    }
                    parent->shellIndices[2] = -1.0f;
                    parent->shellsAvailable -= 1;
                    parent->unk_08 -= 1.0f;
                    break;
                }
            }
        }
        break;
    default:
        break;
    }
}

// This function could reasonably be called "spawn_banana_bunch" or similar
s32 func_802B17F4(Player *player) {
    Vec3f startingVelocity = {0.0f, 0.0f, 0.0f};
    Vec3s startingRot      = {0, 0, 0};
    Vec3f startingPos      = {0.0f, 0.0f, 0.0f};
    s16 actorIndex;
    struct BananaBunchParent *bananaBunch;

    actorIndex = func_8029EC88(startingPos, startingRot, startingVelocity, ACTOR_BANANA_BUNCH);
    if (actorIndex < 0) {
        return actorIndex;
    }
    bananaBunch = &gActorList[actorIndex];
    bananaBunch->state = 0;
    bananaBunch->playerId = player - gPlayerOne;
    player->unk_00C |= 0x40000;
    return actorIndex;
}

// This function could reasonably be called "spawn_triple_shell" or similar
s32 func_802B18E4(Player *player, s16 tripleShellType) {
    Vec3f startingVelocity = {0.0f, 0.0f, 0.0f};
    Vec3s startingRot      = {0, 0, 0};
    Vec3f startingPos      = {0.0f, 0.0f, 0.0f};
    s16 actorIndex;
    struct TripleShellParent *parent;

    actorIndex = func_8029EC88(startingPos, startingRot, startingVelocity, tripleShellType);
    if (actorIndex < 0) {
        return actorIndex;
    }
    parent = &gActorList[actorIndex];
    parent->state = 0;
    parent->rotVelocity = 0x05B0;
    parent->rotAngle = -0x8000;
    parent->playerId = player - gPlayerOne;
    parent->shellsAvailable = 0;
    parent->unk_08 = 0.0f;
    return actorIndex;
}

// This function could reasonably be called "spawn_shell_for_triple_shell" or similar
s32 func_802B19EC(struct TripleShellParent *parent, Player *player, s16 shellType, u16 shellId) {
    Vec3f startingVelocity = {0.0f, 0.0f, 0.0f};
    Vec3s startingRot      = {0, 0, 0};
    Vec3f startingPos;
    s16 actorIndex;
    struct ShellActor *shell;

    startingPos[0] = 0.0f;
    startingPos[1] = -player->boundingBoxSize;
    startingPos[2] = player->boundingBoxSize - 4.0f;
    func_802B63B8(startingPos, player->unk_174);
    startingPos[0] += player->pos[0];
    startingPos[1] += player->pos[1];
    startingPos[2] += player->pos[2];

    actorIndex = func_8029EC88(startingPos, startingRot, startingVelocity, shellType);
    if (actorIndex < 0) {
        parent->shellIndices[shellId] = -1.0f;
        return -1;
    }

    shell = &gActorList[actorIndex];
    startingPos[0] = player->pos[0];
    startingPos[1] = player->pos[1];
    startingPos[2] = player->pos[2];
    func_802AD950(&shell->unk30, shell->boundingBoxSize + 1.0f, shell->pos[0], shell->pos[1], shell->pos[2], startingPos[0], startingPos[1], startingPos[2]);
    func_802B4E30(shell);
    shell->flags = 0x9000;
    switch (shellType) {
    case ACTOR_GREEN_SHELL:
        shell->state = 4;
        break;
    case ACTOR_RED_SHELL:
        shell->state = 6;
        break;
    }
    shell->rotVelocity = 0;
    shell->rotAngle = -0x8000;
    shell->playerId = player - gPlayerOne;
    shell->parentIndex = (struct Actor*)parent - gActorList;
    shell->shellId = shellId;
    parent->shellIndices[shellId] = (struct Actor*)shell - gActorList;
    return 1;
}

// This function could reasonably be called "spawn_green_shell" or similar
s32 func_802B1C9C(Player *player) {
    Vec3f startingVelocity = {0.0f, 0.0f, 0.0f};
    Vec3s startingRot      = {0, 0, 0};
    Vec3f startingPos;
    s16 actorIndex;
    struct ShellActor *shell;

    startingPos[0] = 0.0f;
    startingPos[1] = -player->boundingBoxSize;
    startingPos[2] = player->boundingBoxSize - 4.0f;
    func_802B63B8(startingPos, player->unk_174);
    startingPos[0] += player->pos[0];
    startingPos[1] += player->pos[1];
    startingPos[2] += player->pos[2];
    actorIndex = func_8029EC88(startingPos, startingRot, startingVelocity, ACTOR_GREEN_SHELL);
    if (actorIndex < 0) {
        return actorIndex;
    }

    shell = &gActorList[actorIndex];
    startingPos[0] = player->pos[0];
    startingPos[1] = player->pos[1];
    startingPos[2] = player->pos[2];
    func_802AD950(&shell->unk30, shell->boundingBoxSize + 1.0f, shell->pos[0], shell->pos[1], shell->pos[2], startingPos[0], startingPos[1], startingPos[2]);
    func_802B4E30(shell);
    shell->state = 0;
    shell->rotVelocity = 0;
    shell->rotAngle = -0x8000;
    shell->playerId = player - gPlayerOne;
    return actorIndex;
}

// This function could reasonably be called "spawn_red_shell" or similar
s32 func_802B1E48(Player *player) {
    Vec3f startingVelocity = {0.0f, 0.0f, 0.0f};
    Vec3s startingRot      = {0, 0, 0};
    Vec3f startingPos;
    s16 actorIndex;
    struct ShellActor *shell;

    startingPos[0] = 0.0f;
    startingPos[1] = -player->boundingBoxSize;
    startingPos[2] = player->boundingBoxSize - 4.0f;
    func_802B63B8(startingPos, player->unk_174);
    startingPos[0] += player->pos[0];
    startingPos[1] += player->pos[1];
    startingPos[2] += player->pos[2];
    actorIndex = func_8029EC88(startingPos, startingRot, startingVelocity, ACTOR_RED_SHELL);
    if (actorIndex < 0) {
        return actorIndex;
    }

    shell = &gActorList[actorIndex];
    startingPos[0] = player->pos[0];
    startingPos[1] = player->pos[1];
    startingPos[2] = player->pos[2];
    func_802AD950(&shell->unk30, shell->boundingBoxSize + 1.0f, shell->pos[0], shell->pos[1], shell->pos[2], startingPos[0], startingPos[1], startingPos[2]);
    func_802B4E30(shell);
    shell->state = 0;
    shell->rotVelocity = 0;
    shell->rotAngle = player->unk_02C[1] - 0x8000;
    shell->playerId = player - gPlayerOne;
    return actorIndex;
}

// This function could reasonably be called "spawn_blue_shell"
// Interestingly blue shells start their life as a red shell,
// and then just change the type from red to blue shell
void func_802B1FFC(Player *player) {
    gActorList[func_802B1E48(player)].type = ACTOR_BLUE_SPINY_SHELL;
}

void update_obj_banana(struct BananaActor *banana) {
    f32 pad0;
    Player *player;
    struct BananaActor *elderBanana;
    struct Controller *controller;
    Vec3f someOtherVelocity;
    Vec3f someVelocity;
    f32 temp_f0;
    f32 var_f8;
    f32 var_f12;
    f32 pad1;
    f32 pad2;
    f32 pad3;
    f32 temp_f12;
    f32 temp_f2;
    f32 temp_f14;
    f32 temp_f16;
    f32 unkX;
    f32 unkY;
    f32 unkZ;

    player = &gPlayers[banana->rot[0]];
    switch (banana->state) {
    case 0:
        temp_f2  = player->pos[0] - banana->pos[0];
        temp_f14 = player->pos[1] - banana->pos[1];
        temp_f16 = player->pos[2] - banana->pos[2];
        temp_f12 = sqrtf((temp_f2 * temp_f2) + (temp_f14 * temp_f14) + (temp_f16 * temp_f16)) / 10.0f;
        if (temp_f12 == 0.0f) {
            banana->pos[0] = player->pos[0] + 0.2f;
            banana->pos[1] = player->pos[1] + 0.2f;
            banana->pos[2] = player->pos[2] + 0.2f;
        } else {
            temp_f2  /= temp_f12;
            temp_f14 /= temp_f12;
            temp_f16 /= temp_f12;
            banana->pos[0] = player->pos[0] - temp_f2;
            banana->pos[1] = player->pos[1] - temp_f14 - 2.0f;
            banana->pos[2] = player->pos[2] - temp_f16;
        }
        func_802ADDC8(&banana->unk30, banana->boundingBoxSize + 1.0f, banana->pos[0], banana->pos[1], banana->pos[2]);
        func_802B4E30((struct Actor *) banana);
        if ((player->unk_000 & 0x4000) != 0) {
            if (D_800DC51C != 0) {
                controller = gControllerOne;
            } else {
                controller = &gControllers[banana->rot[0]];
            }
            if ((controller->buttonDepressed & 0x2000) != 0) {
                controller->buttonDepressed &= ~0x2000;
                banana->state = 1;
                banana->unk_04 = 0x00B4;
                player->unk_00C &= ~0x40000;
                func_800C9060(player - gPlayerOne, 0x19008012U);
                pad1 = controller->rawStickY;
                if ((pad1 > 30.0f) && (controller->rawStickX < 10) && (controller->rawStickX >= -9)) {
                    pad1 = pad1 - ((f32) 30);
                    pad1 = (pad1 / 20.0f) + 0.5f;
                    if (player->unk_094 < 2.0f) {
                        temp_f0 = 4.0f;
                    } else {
                        temp_f0 = (player->unk_094 * 0.75f) + 3.5f + pad1;
                    }
                    vec3f_set(someVelocity, 0, pad1, temp_f0);
                    func_802B64C4(someVelocity, player->unk_02C[1] + player->unk_0C0);
                    banana->velocity[0] = someVelocity[0];
                    banana->velocity[1] = someVelocity[1];
                    banana->velocity[2] = someVelocity[2];
                } else {
                    banana->velocity[0] = 0;
                    banana->velocity[1] = 1.5f;
                    banana->velocity[2] = 0;
                }
            }
        }
        break;
    case 1:
        if (banana->unk_04 != 0) {
            banana->unk_04 -= 1;
            if (banana->unk_04 == 0) {
                banana->flags &= ~0x1000;
            }
        }
        banana->pos[0] += banana->velocity[0];
        banana->pos[2] += banana->velocity[2];
        if (banana->velocity[1] > -1.0f) {
            banana->velocity[1] -= 0.15f;
        }
        banana->pos[1] += banana->velocity[1];
        if ((banana->pos[2] < (f32) D_8015F6F2) || ((f32) D_8015F6F0 < banana->pos[2]) || (banana->pos[0] < (f32) D_8015F6EA) || ((f32) D_8015F6E8 < banana->pos[0]) || (banana->pos[1] < (f32) D_8015F6EE)) {
            func_8029FDC8((struct Actor *) banana);
        } else {
            func_802ADDC8(&banana->unk30, banana->boundingBoxSize + 1.0f, banana->pos[0], banana->pos[1], banana->pos[2]);
            banana->unk30.unk34 = 1;
            if ((banana->unk30.unk34 != 0) && (banana->unk30.unk44 < 0.0f)) {
                someOtherVelocity[0] = -banana->unk30.unk60[0];
                someOtherVelocity[1] = -banana->unk30.unk60[1];
                someOtherVelocity[2] = -banana->unk30.unk60[2];
                banana->pos[0] += someOtherVelocity[0] * banana->unk30.unk44;
                banana->pos[1] += someOtherVelocity[1] * banana->unk30.unk44;
                banana->pos[2] += someOtherVelocity[2] * banana->unk30.unk44;
                banana->flags &= ~0x1000;
                banana->state = 4;
            }
        }
        break;
    case 2:
        someVelocity[0] = 0.0f;
        someVelocity[1] = 0.0f;
        someVelocity[2] = -5.0f;
        func_802B64C4(someVelocity, player->unk_02C[1] + player->unk_0C0);
        unkX = player->pos[0] + someVelocity[0];
        unkY = player->pos[1] + someVelocity[1];
        unkZ = player->pos[2] + someVelocity[2];
        temp_f2  = unkX - banana->pos[0];
        temp_f14 = unkY - banana->pos[1];
        temp_f16 = unkZ - banana->pos[2];
        temp_f0 = sqrtf((temp_f2 * temp_f2) + (temp_f14 * temp_f14) + (temp_f16 * temp_f16));
        if (temp_f0 == 0.0f) {
            banana->pos[0] = player->pos[0] + 0.2f;
            banana->pos[1] = player->pos[1] + 0.2f;
            banana->pos[2] = player->pos[2] + 0.2f;
        } else {
            temp_f2   /= temp_f0;
            temp_f14  /= temp_f0;
            temp_f16  /= temp_f0;
            banana->pos[0] = someVelocity[0] + (unkX - temp_f2);
            banana->pos[1] = unkY - temp_f14 - 2.0f;
            banana->pos[2] = unkZ - temp_f16;
        }
        func_802ADDC8(&banana->unk30, banana->boundingBoxSize + 1.0f, banana->pos[0], banana->pos[1], banana->pos[2]);
        func_802B4E30((struct Actor *) banana);
        break;
    case 3:
        elderBanana = (struct BananaActor*)&gActorList[banana->elderIndex];
        temp_f2  = elderBanana->pos[0] - banana->pos[0];
        temp_f14 = elderBanana->pos[1] - banana->pos[1];
        temp_f16 = elderBanana->pos[2] - banana->pos[2];
        temp_f12 = sqrtf((temp_f2 * temp_f2) + (temp_f14 * temp_f14) + (temp_f16 * temp_f16)) / 5.0f;
        if (temp_f12 == 0.0f) {
            banana->pos[0] = elderBanana->pos[0] + 0.2f;
            banana->pos[1] = elderBanana->pos[1] + 0.2f;
            banana->pos[2] = elderBanana->pos[2] + 0.2f;
        } else {
            temp_f2  /= temp_f12;
            temp_f14 /= temp_f12;
            temp_f16 /= temp_f12;
            banana->pos[0] = elderBanana->pos[0] - temp_f2;
            banana->pos[1] = elderBanana->pos[1] - temp_f14 - 2.0f;
            banana->pos[2] = elderBanana->pos[2] - temp_f16;
        }
        var_f8 = banana->pos[2];
        func_802ADDC8(&banana->unk30, banana->boundingBoxSize + 1.0f, banana->pos[0], banana->pos[1], banana->pos[2]);
        func_802B4E30((struct Actor *) banana);
        break;
    case 5:
        banana->velocity[1] -= 0.3f;
        if (banana->velocity[1] < -5.0f) {
            banana->velocity[1] = -5.0f;
        }
        banana->pos[1] += banana->velocity[1];
        banana->rot[0] += 0x16C;
        banana->rot[1] -= 0x5B0;
        banana->rot[2] += 0x38E;
        banana->unk_04 -= 1;
        if (banana->unk_04 == 0) {
            destroy_actor((struct Actor *) banana);
        }
        break;
    case 4:
        banana->flags |= 0xC000;
        banana->flags &= ~0x1000;
        break;
    default:
        break;
    }
}

// This function could reasonably be called "spawn_bananas_for_banana_bunch" or similar
void func_802B2914(struct BananaBunchParent *banana_bunch, Player *player, s16 bananaId) {
    s16 actorIndex;
    Vec3f startingVelocity;
    Vec3s startingRot;
    Vec3f startingPos;
    s32 pad0;
    s32 pad1;
    struct BananaActor *newBanana;
    struct BananaActor *tempBanana;

    startingPos[0] = 0.0f;
    startingPos[1] = -player->boundingBoxSize;
    startingPos[2] = -(player->boundingBoxSize + 4.0f);
    func_802B63B8(startingPos, player->unk_174);
    startingPos[0] += player->pos[0];
    startingPos[1] += player->pos[1];
    startingPos[2] += player->pos[2];
    startingVelocity[0] = player->unk_034[0];
    startingVelocity[1] = player->unk_034[1];
    startingVelocity[2] = player->unk_034[2];
    startingRot[0] = 0;
    startingRot[1] = 0;
    startingRot[2] = 0;
    actorIndex = func_8029EC88(startingPos, startingRot, startingVelocity, ACTOR_BANANA);
    if (actorIndex >= 0) {
        newBanana = (struct BananaActor*)&gActorList[actorIndex];
        startingPos[0] = player->pos[0];
        startingPos[1] = player->pos[1];
        startingPos[2] = player->pos[2];
        func_802AD950(&newBanana->unk30, newBanana->boundingBoxSize + 1.0f, newBanana->pos[0], newBanana->pos[1], newBanana->pos[2], startingPos[0], startingPos[1], startingPos[2]);
        func_802B4E30((struct Actor*)newBanana);
        newBanana->flags = 0x9000;
        newBanana->playerId = player - gPlayerOne;
        newBanana->parentIndex = (struct Actor*)banana_bunch - gActorList;
        newBanana->youngerIndex = -1;
        newBanana->unk_04 = 0x0014;
        newBanana->bananaId = bananaId;
        switch (bananaId) {
        case 0:
            newBanana->state = 2;
            banana_bunch->bananaIndices[0] = actorIndex;
            newBanana->elderIndex = -1;
            break;
        case 1:
            newBanana->state = 3;
            banana_bunch->bananaIndices[1] = actorIndex;
            newBanana->elderIndex = banana_bunch->bananaIndices[0];
            tempBanana = (struct BananaActor*)&gActorList[banana_bunch->bananaIndices[0]];
            tempBanana->youngerIndex = actorIndex;
            break;
        case 2:
            newBanana->state = 3;
            banana_bunch->bananaIndices[2] = actorIndex;
            newBanana->elderIndex = banana_bunch->bananaIndices[1];
            tempBanana = (struct BananaActor*)&gActorList[banana_bunch->bananaIndices[1]];
            tempBanana->youngerIndex = actorIndex;
            break;
        case 3:
            newBanana->state = 3;
            banana_bunch->bananaIndices[3] = actorIndex;
            newBanana->elderIndex = banana_bunch->bananaIndices[2];
            tempBanana = (struct BananaActor*)&gActorList[banana_bunch->bananaIndices[2]];
            tempBanana->youngerIndex = actorIndex;
            break;
        case 4:
            newBanana->state = 3;
            banana_bunch->bananaIndices[4] = actorIndex;
            newBanana->elderIndex = banana_bunch->bananaIndices[3];
            tempBanana = (struct BananaActor*)&gActorList[banana_bunch->bananaIndices[3]];
            tempBanana->youngerIndex = actorIndex;
            break;
        }
        if ((player->unk_000 & 0x4000) != 0) {
            func_800C9060(player - gPlayerOne, 0x19008012);
        }
    }
}

// This function could reasonably be called "spawn_fake_itembox" or similar
s32 func_802B2C40(Player *player) {
    struct FakeItemBox *itemBox;
    s32 pad[5];
    s16 actorIndex;
    Vec3f startingVelocity;
    Vec3s startingRot;
    Vec3f startingPos;

    startingPos[0] = 0.0f;
    startingPos[1] = -player->boundingBoxSize;
    startingPos[2] = -(player->boundingBoxSize + 4.0f);
    func_802B63B8(startingPos, player->unk_174);
    startingPos[0] += player->pos[0];
    startingPos[1] += player->pos[1];
    startingPos[2] += player->pos[2];
    startingVelocity[0] = player->unk_034[0];
    startingVelocity[1] = player->unk_034[1];
    startingVelocity[2] = player->unk_034[2];
    startingRot[0] = 0;
    startingRot[1] = 0;
    startingRot[2] = 0;
    actorIndex = func_8029EC88(startingPos, startingRot, startingVelocity, ACTOR_FAKE_ITEM_BOX);
    if (actorIndex < 0) {
        return actorIndex;
    }
    itemBox = (struct FakeItemBox*)&gActorList[actorIndex];
    itemBox->playerId = (player - gPlayerOne);
    itemBox->state = 0;
    player->unk_00C |= 0x40000;
    return actorIndex;
}

// This function could reasonably be called "spawn_banana" or similar
s32 func_802B2D70(Player *player) {
    s32 pad[6];
    u16 playerId;
    s16 actorIndex;
    struct BananaActor *banana;
    Vec3f startingVelocity;
    Vec3s startingRot;
    Vec3f startingPos;

    playerId = player - gPlayerOne;
    if (playerId >= 8) {
        return -1;
    }
    // Extremely weird fake match to fix a tiny stack difference
    startingPos[0, 0] = 0.0f;
    startingPos[1] = -player->boundingBoxSize;
    startingPos[2] = -(player->boundingBoxSize + 4.0f);
    func_802B63B8(startingPos, player->unk_174);
    startingPos[0] += player->pos[0];
    startingPos[1] += player->pos[1];
    startingPos[2] += player->pos[2];
    startingVelocity[0] = player->unk_034[0];
    startingVelocity[1] = player->unk_034[1];
    startingVelocity[2] = player->unk_034[2];
    startingRot[0] = 0;
    startingRot[1] = 0;
    startingRot[2] = 0;
    actorIndex = func_8029EC88(startingPos, startingRot, startingVelocity, ACTOR_BANANA);
    if (actorIndex < 0) {
        return actorIndex;
    }
    banana = &gActorList[actorIndex];
    banana->playerId = playerId;
    banana->state = 0;
    banana->unk_04 = 0x0014;
    player->unk_00C |= 0x40000;
    return actorIndex;
}

// Something related to the thunderbolt item
void func_802B2EBC(Player *player) {
    s32 playerIndex;
    Player *otherPlayer;

    func_8009E5BC();
    if ((player->unk_000 & 0x4000) != 0) {
        func_800CAB4C(player - gPlayerOne);
    }

    for (playerIndex = 0; playerIndex < 8; playerIndex++) {
        otherPlayer = &gPlayers[playerIndex];
        if (player != otherPlayer) {
            otherPlayer->unk_00C |= 0x4000;
        }
    }
}

// Handles item use?
void func_802B2FA0(Player *player) {
    s32 playerId = player - gPlayerOne;

    switch (player->unk_010) {
    case ITEM_GREEN_SHELL:
        func_802B1C9C(player);
        break;
    case ITEM_RED_SHELL:
        func_802B1E48(player);
        break;
    case ITEM_BLUE_SPINY_SHELL:
        func_802B1FFC(player);
        break;
    case ITEM_BANANA:
        func_802B2D70(player);
        break;
    case ITEM_BANANA_BUNCH:
        func_802B17F4(player);
        break;
    case ITEM_MUSHROOM:
        player->unk_00C |= 0x200;
        break;
    case ITEM_DOUBLE_MUSHROOM:
        player->unk_00C |= 0x200;
        break;
    case ITEM_TRIPLE_MUSHROOM:
        player->unk_00C |= 0x200;
        break;
    case ITEM_SUPER_MUSHROOM:
        player->unk_00C |= 0x200;
        break;
    case ITEM_BOO:
        player->unk_00C |= 0x800;
        break;
    case ITEM_STAR:
        player->unk_00C |= 0x2000;
        break;
    case ITEM_THUNDERBOLT:
        func_802B2EBC(player);
        break;
    case ITEM_FAKE_ITEM_BOX:
        func_802B2C40(player);
        break;
    case ITEM_TRIPLE_GREEN_SHELL:
        func_802B18E4(player, ACTOR_TRIPLE_GREEN_SHELL);
        break;
    case ITEM_TRIPLE_RED_SHELL:
        func_802B18E4(player, ACTOR_TRIPLE_RED_SHELL);
        break;
    }
    func_8007AC9C(playerId);
}

// Check if a player is using an item?
void func_802B30EC(void) {
    Player *player;
    struct Controller *target;
    struct Controller *controller;
    struct Controller *loopController;

    for (player = &gPlayers[0], loopController = &gControllers[0], target = &gControllers[4]; loopController != target; player++, loopController++) {
        controller = loopController;
        if (func_800910E4(player) == 0) {
            if((player->unk_000 & 0x100) != 0){
                if ((player - gPlayerTwo) == 0) {
                    controller = gControllerSix;
                } else if((player - gPlayerThree) == 0) {
                    controller = gControllerSeven;
                } else {
                    if ((player - gPlayerOne) == 0) {
                        controller = gControllerEight;
                    }
                }
            }

            if (((player->unk_000 & 0x4000) != 0) && (player->unk_010 != ITEM_NONE) && ((player->unk_000 & 0x2000) == 0)) {
                if ((controller->buttonPressed & 0x2000) != 0) {
                    controller->buttonPressed &= ~0x2000;
                    func_802B2FA0(player);
                }
            }
        }
    }
}

void update_obj_green_shell(struct ShellActor *shell) {
    Player *player;
    f32 pad9;
    f32 padA;
    Vec3f somePos2;
    Vec3f somePosVel;
    f32 var_f2;
    struct Controller *controller;
    struct TripleShellParent *parent;
    f32 pad0;
    f32 pad1;
    f32 pad2;
    f32 pad3;
    f32 pad4;
    f32 pad5;
    f32 pad6;
    f32 pad7;
    f32 pad8;

    pad0 = shell->pos[0];
    pad6 = shell->pos[1];
    pad1 = shell->pos[2];
    if ((pad1 < D_8015F6F2) || (D_8015F6F0 < pad1) || (pad0 < D_8015F6EA) || (D_8015F6E8 < pad0) || (pad6 < D_8015F6EE)) {
        func_8029FDC8((struct Actor *) shell);
    }
    shell->rotVelocity += 0x71C;
    switch (shell->state) {
    case 0:
        player = &gPlayers[shell->playerId];
        func_802B0210(&player->unk_110, &shell->unk30);
        somePosVel[0] = 0.0f;
        somePosVel[1] = player->boundingBoxSize;
        somePosVel[2] = -(player->boundingBoxSize + shell->boundingBoxSize + 2.0f);
        func_802B63B8(somePosVel, player->unk_174);
        shell->pos[0] = player->pos[0] + somePosVel[0];
        pad2 = player->pos[1] - somePosVel[1];
        shell->pos[2] = player->pos[2] + somePosVel[2];
        pad0 = func_802ABE30(shell->pos[0], pad2, shell->pos[2], player->unk_110.unk3A);
        pad1 = pad2 - pad0;
        if ((pad1 < 5.0f) && (pad1 > -5.0f)) {
            shell->pos[1] = shell->boundingBoxSize + pad0;
        } else {
            shell->pos[1] = pad2;
        }
        if ((player->unk_000 & 0x4000) != 0) {
            controller = &gControllers[shell->playerId];
            if ((controller->buttonDepressed & 0x2000) != 0) {
                controller->buttonDepressed &= ~0x2000;
                if (controller->rawStickY < -0x2D) {
                    var_f2 = 8.0f;
                    if (player->unk_094 > 8.0f) {
                        var_f2 = player->unk_094 * 1.2f;
                    }
                    somePosVel[0] = 0.0f;
                    somePosVel[1] = 0.0f;
                    somePosVel[2] = -var_f2;
                    func_802B64C4(somePosVel, player->unk_02C[1] + player->unk_0C0);
                    shell->velocity[0] = somePosVel[0];
                    shell->velocity[1] = somePosVel[1];
                    shell->velocity[2] = somePosVel[2];
                    shell->state = 2;
                    func_800C9060(shell->playerId, 0x19008004U);
                    func_800C90F4(shell->playerId, (player->characterId * 0x10) + 0x29008000);
                    func_8000EDC8((struct Actor*)shell - gActorList);
                    return;
                } else {
                    shell->state = 1;
                    if (player->unk_0C0 > 0) {
                        shell->rotAngle = 0x78E3;
                    } else {
                        shell->rotAngle = -0x78E4;
                    }
                }
            }
        }
        break;
    case 1:
        player = &gPlayers[shell->playerId];
        if (shell->rotAngle > 0) {
            shell->rotAngle -= 0xE38;
            if (shell->rotAngle < 0) {
                shell->state = 2;
                shell->someTimer = 0x001E;
                func_800C9060(shell->playerId, 0x19008004U);
                func_800C90F4(shell->playerId, (player->characterId * 0x10) + 0x29008000);
                func_8000EDC8((struct Actor*)shell - gActorList);
            }
        } else {
            shell->rotAngle += 0xE38;
            if (shell->rotAngle > 0) {
                shell->state = 2;
                shell->someTimer = 0x001E;
                func_800C9060(shell->playerId, 0x19008004U);
                func_800C90F4(shell->playerId, (player->characterId * 0x10) + 0x29008000);
                func_8000EDC8((struct Actor*)shell - gActorList);
            }
        }
        if (shell->state == 2) {
            var_f2 = 8.0f;
            if (player->unk_094 > 8.0f) {
                var_f2 = player->unk_094 * 1.2f;
            }
            somePosVel[0] = 0.0f;
            somePosVel[1] = 0.0f;
            somePosVel[2] = var_f2;
            func_802B64C4(somePosVel, player->unk_02C[1] + player->unk_0C0);
            shell->velocity[0] = somePosVel[0];
            shell->velocity[1] = somePosVel[1];
            shell->velocity[2] = somePosVel[2];
        } else {
            somePosVel[0] = sins(shell->rotAngle) * 6.0f;
            somePosVel[1] = shell->boundingBoxSize - player->boundingBoxSize;
            somePosVel[2] = coss(shell->rotAngle) * 6.0f;
            func_802B63B8(somePosVel, player->unk_174);
            shell->pos[0] = player->pos[0] + somePosVel[0];
            shell->pos[1] = player->pos[1] + somePosVel[1];
            shell->pos[2] = player->pos[2] + somePosVel[2];
        }
        break;
    case 2:
        if (shell->parentIndex > 0) {
            shell->parentIndex -= 1;
            if (shell->parentIndex == 0) {
                shell->flags &= ~0x1000;
            }
        }
        shell->velocity[1] -= 0.5f;
        if (shell->velocity[1] < -2.0f) {
            shell->velocity[1] = -2.0f;
        }
        somePos2[0] = shell->pos[0];
        somePos2[1] = shell->pos[1];
        somePos2[2] = shell->pos[2];
        shell->pos[0] += shell->velocity[0];
        shell->pos[1] += shell->velocity[1];
        shell->pos[2] += shell->velocity[2];
        func_802AD950(&shell->unk30, 4.0f, shell->pos[0], shell->pos[1], shell->pos[2], somePos2[0], somePos2[1], somePos2[2]);
        func_802B4E30((struct Actor *) shell);
        if ((shell->unk30.unk3C < 0.0f) || (shell->unk30.unk40 < 0.0f)) {
            func_802AC098(&shell->unk30, shell->velocity);
            func_800C98B8(shell->pos, shell->velocity, 0x19008054U);
            shell->flags |= 0x80;
        }
        break;
    case 4:
        player = &gPlayers[shell->playerId];
        parent = &gActorList[shell->parentIndex];
        if (parent->type != ACTOR_TRIPLE_GREEN_SHELL) {
            func_8029FDC8((struct Actor *) shell);
        } else {
            shell->rotAngle += parent->rotVelocity;
            somePosVel[0] = sins(shell->rotAngle) * 8.0f;
            somePosVel[1] = shell->boundingBoxSize - player->boundingBoxSize;
            somePosVel[2] = coss(shell->rotAngle) * 8.0f;
            func_802B63B8(somePosVel, player->unk_174);
            somePos2[0] = shell->pos[0];
            somePos2[1] = shell->pos[1];
            somePos2[2] = shell->pos[2];
            shell->pos[0] = player->pos[0] + somePosVel[0];
            shell->pos[1] = player->pos[1] + somePosVel[1];
            shell->pos[2] = player->pos[2] + somePosVel[2];
            func_802AD950(&shell->unk30, 4.0f, shell->pos[0], shell->pos[1], shell->pos[2], somePos2[0], somePos2[1], somePos2[2]);
            func_802B4E30((struct Actor *) shell);
        }
        break;
    case 5:
        // Somehow, this fake match affects stack management up in case 2
        shell->velocity[1] -= (0, 0.3f);
        if (shell->velocity[1] < -5.0f) {
            shell->velocity[1] = -5.0f;
        }
        shell->rotAngle += 0x5B0;
        shell->someTimer -= 1;
        shell->pos[1] += shell->velocity[1];
        if (shell->someTimer == 0) {
            destroy_actor((struct Actor *) shell);
        }
        break;
    default:
        break;
    }
}

void func_802B3B44(struct ShellActor *shell) {
    u16 currentWaypoint;
    u16 nextWayPoint;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f12_3;
    f32 temp_f14_2;
    f32 temp_f16_2;
    f32 temp_f2;
    f32 temp_f12;
    f32 temp_f28;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f12_0;
    f32 temp_f12_1;
    f32 temp_f12_2;
    f32 temp_f18_3;
    f32 temp_f16_3;
    f32 temp_f26;
    Vec3f origPos;

    currentWaypoint = shell->pathIndex;
    temp_f2  = D_80164490[currentWaypoint].wayPointX;
    temp_f12 = D_80164490[currentWaypoint].wayPointY;
    temp_f28 = D_80164490[currentWaypoint].wayPointZ;
    nextWayPoint = currentWaypoint + 1;

    if (nextWayPoint >= D_80164430) {
        nextWayPoint -= D_80164430;
    }

    temp_f20 = temp_f2  - shell->pos[0];
    temp_f22 = temp_f12 - shell->pos[1];
    temp_f24 = temp_f28 - shell->pos[2];
    temp_f0 = (temp_f20 * temp_f20) + (temp_f22 * temp_f22) + (temp_f24 * temp_f24);
    if (temp_f0 > 400.0f) {
        temp_f18_3 = D_80164490[nextWayPoint].wayPointX;
        temp_f16_3 = D_80164490[nextWayPoint].wayPointY;
        temp_f26   = D_80164490[nextWayPoint].wayPointZ;

        temp_f12_0 = temp_f18_3 - shell->pos[0];
        temp_f12_1 = temp_f16_3 - shell->pos[1];
        temp_f12_2 = temp_f26   - shell->pos[2];

        temp_f0_3 = (temp_f12_0 * temp_f12_0) + (temp_f12_1 * temp_f12_1) + (temp_f12_2 * temp_f12_2);
        if (temp_f0_3 < temp_f0) {
            shell->pathIndex = nextWayPoint;
        } else {
            temp_f0_2 = sqrtf(temp_f0) * 4.0f;
            temp_f20 /= temp_f0_2;
            temp_f22 /= temp_f0_2;
            temp_f24 /= temp_f0_2;

            temp_f12_3 = shell->velocity[0];
            temp_f14_2 = shell->velocity[1];
            temp_f16_2 = shell->velocity[2];

            temp_f12_3 += temp_f20;
            temp_f14_2 += temp_f22;
            temp_f16_2 += temp_f24;
            temp_f0 = sqrtf((temp_f12_3 * temp_f12_3) + (temp_f14_2 * temp_f14_2) + (temp_f16_2 * temp_f16_2));
            if (temp_f0 > 6.0f) {
                temp_f0 /= 6.0f;
                temp_f12_3 /= temp_f0;
                temp_f14_2 /= temp_f0;
                temp_f16_2 /= temp_f0;
            }
            shell->velocity[0] = temp_f12_3;
            shell->velocity[1] = temp_f14_2;
            shell->velocity[2] = temp_f16_2;

            origPos[0] = shell->pos[0];
            origPos[1] = shell->pos[1];
            origPos[2] = shell->pos[2];

            shell->pos[0] += temp_f12_3;
            shell->pos[1] += temp_f14_2;
            shell->pos[2] += temp_f16_2;
            func_802AD950(&shell->unk30, 4.0f, shell->pos[0], shell->pos[1], shell->pos[2], origPos[0], origPos[1], origPos[2]);
            func_802B4E30((struct Actor *) shell);
        }
    } else {
        if (temp_f0 > 5.0f) {
            shell->pos[0] = temp_f2;
            shell->pos[1] = shell->boundingBoxSize + temp_f12;
            shell->pos[2] = temp_f28;
            shell->pathIndex = nextWayPoint;
        } else {
            temp_f18_3 = D_80164490[nextWayPoint].wayPointX;
            temp_f16_3 = D_80164490[nextWayPoint].wayPointY;
            temp_f26   = D_80164490[nextWayPoint].wayPointZ;

            shell->pos[0] =  (temp_f2 + temp_f18_3)  * 0.5f;
            shell->pos[1] = ((temp_f12 + temp_f16_3) * 0.5f) + shell->boundingBoxSize;
            shell->pos[2] =  (temp_f28 + temp_f26)   * 0.5f;

            shell->velocity[0] = (temp_f18_3 - temp_f2)  * 0.5f;
            shell->velocity[1] = (temp_f16_3 - temp_f12) * 0.5f;
            shell->velocity[2] = (temp_f26   - temp_f28) * 0.5f;
        }
    }
}

void func_802B3E7C(struct ShellActor *shell, Player *player) {
    f32 x_velocity;
    f32 z_velocity;
    f32 xz_dist;
    Vec3f newPosition;

    x_velocity = player->pos[0];
    x_velocity -= shell->pos[0];
    z_velocity = player->pos[2];
    z_velocity -= shell->pos[2];
    xz_dist = sqrtf((x_velocity * x_velocity) + (z_velocity * z_velocity)) / 8;
    if (xz_dist == 0.0f) {
        x_velocity = 0.0f;
        z_velocity = 0.0f;
    } else {
        x_velocity /= xz_dist;
        z_velocity /= xz_dist;
    }

    newPosition[0] = shell->pos[0];
    newPosition[1] = shell->pos[1];
    newPosition[2] = shell->pos[2];
    shell->pos[0] += x_velocity;
    shell->pos[1] -= 2.0f;
    shell->pos[2] += z_velocity;
    shell->velocity[0] = x_velocity;
    shell->velocity[1] = -2.0f;
    shell->velocity[2] = z_velocity;

    if (player->unk_0BC & 0x80000000) {
        func_8029FDC8((struct Actor *) shell);
    } else {
        func_802AD950(&shell->unk30, 4.0f, shell->pos[0], shell->pos[1], shell->pos[2], newPosition[0], newPosition[1], newPosition[2]);
        func_802B4E30((struct Actor *) shell);
        func_802B4104(shell);
    }
}

/**
 * Only used in Battle mode
 * Likely trying to find the nearest player that is not the shell's owner and is not dead
**/
s16 func_802B3FD0(Player *owner, struct ShellActor *shell) {
    Player *player;
    s32 playerIndex;
    f32 playerToShellDistance;
    s16 playerId = -1;
    f32 smallestDistance = 25000000.0f;

    for (playerIndex = 0; playerIndex < 4; playerIndex++) {
        player = &gPlayers[playerIndex];
        if ((player->unk_000 & 0x8000) == 0) {continue;}
        if (player == owner) {continue; }
        if (gPlayerBalloonCount[playerIndex] < 0) { continue; }
            // func_802B51E8 is not quite a 3D distance function, it doubles (rather than squares) the Z difference of the positions
            playerToShellDistance = func_802B51E8(player->pos, shell->pos);
            if (playerToShellDistance < smallestDistance) {
                smallestDistance = playerToShellDistance;
                playerId = player - gPlayerOne;
            }

    }

    return playerId;
}

void func_802B4104(struct ShellActor *shell) {
    if ((shell->unk30.unk3C < 0.0f) && ((shell->unk30.unk48[1] < 0.25f) || (shell->unk30.unk48[1] > -0.25f))) {
        func_8029FDC8((struct Actor *) shell);
        func_800C98B8(shell->pos, shell->velocity, 0x19008054U);
        shell->flags |= 0x80;
    } else if ((shell->unk30.unk40 < 0.0f) && ((shell->unk30.unk54[1] < 0.25f) || (shell->unk30.unk54[1] < -0.25f))) {
        func_8029FDC8((struct Actor *) shell);
        func_800C98B8(shell->pos, shell->velocity, 0x19008054U);
        shell->flags |= 0x80;
    }
}

void update_obj_red_blue_shell(struct ShellActor *shell) {
    f32 pad9;
    Player *player;
    f32 temp_f0;
    f32 temp_f14;
    f32 temp_f2;
    s16 temp_v0;
    s16 pad3;
    Vec3f somePosVel;
    struct Controller *controller;
    struct TripleShellParent *parent;
    f32 pad0;
    f32 pad1;
    f32 pad2;
    f32 pad4;
    f32 pad5;
    f32 pad6;
    f32 pad7;
    f32 pad8;
    f32 pad10;
    f32 pad11;
    f32 pad12;
    s16 pad13;
    s16 pad13_2;
    f32 pad14;
    f32 pad15;
    f32 pad16;
    f32 pad17;
    Vec3f origPos;

    pad1 = shell->pos[0];
    pad0 = shell->pos[2];
    pad2 = shell->pos[1];
    pad13 = shell->type;
    if ((pad0 < (f32) D_8015F6F2) || ((f32) D_8015F6F0 < pad0) || (pad1 < (f32) D_8015F6EA) || ((f32) D_8015F6E8 < pad1) || (pad2 < (f32) D_8015F6EE)) {
        func_8029FDC8((struct Actor *) shell);
    }

    shell->rotVelocity += 0x71C;
    switch (shell->state) {
    case 0:
        player = &gPlayers[shell->playerId];
        func_802B0210(&player->unk_110, &shell->unk30);
        somePosVel[0] = 0.0f;
        somePosVel[1] = player->boundingBoxSize;
        somePosVel[2] = -(player->boundingBoxSize + shell->boundingBoxSize + 2.0f);
        func_802B63B8(somePosVel, player->unk_174);
        shell->pos[0] = player->pos[0] + somePosVel[0];
        pad7          = player->pos[1] - somePosVel[1];
        shell->pos[2] = player->pos[2] + somePosVel[2];
        temp_f0 = func_802ABE30(shell->pos[0], pad7, shell->pos[2], player->unk_110.unk3A);
        temp_f2 = pad7 - temp_f0;

        if ((temp_f2 < 5.0f) && (temp_f2 > -5.0f)) {
            shell->pos[1] = shell->boundingBoxSize + temp_f0;
        } else {
            shell->pos[1] = pad7;
        }

        if ((player->unk_000 & 0x4000) != 0) {
            if (D_800DC51C != 0) {
                controller = gControllerOne;
            } else {
                controller = &gControllers[shell->playerId];
            }
        } else {
            controller = gControllerOne;
        }

        if ((controller->buttonDepressed & 0x2000) != 0) {
            controller->buttonDepressed &= ~0x2000;
            shell->state = 1;
            if (player->unk_0C0 > 0) {
                shell->rotAngle = 0x78E3;
            } else {
                shell->rotAngle = -0x78E4;
            }
        }
        break;
    case 1:
        player = &gPlayers[shell->playerId];
        if (shell->rotAngle > 0) {
            shell->rotAngle -= 0x71C;
            if (shell->rotAngle < 0) {
                shell->state = 2;
                func_800C9060(shell->playerId, 0x19008004U);
                func_800C90F4(shell->playerId, (player->characterId * 0x10) + 0x29008000);
                if (pad13 == ACTOR_RED_SHELL) {
                    func_8000ED80((struct Actor*)shell - gActorList);
                } else {
                    func_8000EE10((struct Actor*)shell - gActorList);
                    func_800C9D80(shell->pos, shell->velocity, 0x51018008U);
                }
            }
        } else {
            shell->rotAngle += 0x71C;
            if (shell->rotAngle > 0) {
                shell->state = 2;
                func_800C9060(shell->playerId, 0x19008004U);
                func_800C90F4(shell->playerId, (player->characterId * 0x10) + 0x29008000);
                if (pad13 == ACTOR_RED_SHELL) {
                    func_8000ED80((struct Actor*)shell - gActorList);
                } else {
                    func_8000EE10((struct Actor*)shell - gActorList);
                    func_800C9D80(shell->pos, shell->velocity, 0x51018008U);
                }
            }
        }
        if (shell->state == 2) {
            shell->someTimer = 0x001E;
            temp_f0 = 8.0f;
            if (player->unk_094 > 8.0f) {
                temp_f0 = player->unk_094 * 1.2f;
            }
            somePosVel[0] = 0.0f;
            somePosVel[1] = 0.0f;
            somePosVel[2] = temp_f0;
            func_802B64C4(somePosVel, (s16) (player->unk_02C[1] + player->unk_0C0));
            shell->velocity[0] = somePosVel[0];
            shell->velocity[1] = somePosVel[1];
            shell->velocity[2] = somePosVel[2];
        } else {
            somePosVel[0] = sins(shell->rotAngle) * 8.0f;
            somePosVel[1] = shell->boundingBoxSize - player->boundingBoxSize;
            somePosVel[2] = coss(shell->rotAngle) * 8.0f;
            func_802B63B8(somePosVel, player->unk_174);
            shell->pos[0] = player->pos[0] + somePosVel[0];
            shell->pos[1] = player->pos[1] + somePosVel[1];
            shell->pos[2] = player->pos[2] + somePosVel[2];
        }
        break;
    case 2:
        player = &gPlayers[shell->playerId];
        shell->someTimer -= 1;
        if (shell->someTimer == 0) {
            shell->flags &= 0xEFFF;
            if (shell->type == ACTOR_BLUE_SPINY_SHELL) {
                shell->targetPlayer = gPlayerPositionLUT[0];
                shell->state = 8;
                shell->shellId = 1000.0f;
                temp_v0 = gNearestWaypointByPlayerId[player - gPlayerOne] + 8;
                if ((s32) D_80164430 < temp_v0) {
                    temp_v0 -= D_80164430;
                }
                shell->pathIndex = temp_v0;
            } else if (gModeSelection == BATTLE) {
                shell->shellId = 1000.0f;
                shell->targetPlayer = func_802B3FD0(player, shell);
                if (shell->targetPlayer < 0) {
                    shell->flags = 0x8000;
                    shell->velocity[1] = 3.0f;
                    shell->pathIndex = 0;
                    shell->someTimer = 0x003C;
                    shell->state = 7;
                } else {
                    shell->state = 3;
                }
            } else {
                if (player->currentRank == 0) {
                    shell->state = 4;
                    shell->someTimer = 0x0258;
                    temp_v0 = gNearestWaypointByPlayerId[player - gPlayerOne] + 8;
                    if ((s32) D_80164430 < temp_v0) {
                        temp_v0 -= D_80164430;
                    }
                    shell->pathIndex = temp_v0;
                } else if (player->currentRank >= 5) {
                    shell->state = 5;
                    shell->shellId = 1000.0f;
                    temp_v0 = gNearestWaypointByPlayerId[player - gPlayerOne] + 8;
                    if ((s32) D_80164430 < temp_v0) {
                        temp_v0 -= D_80164430;
                    }
                    shell->pathIndex = temp_v0;
                    shell->targetPlayer = gPlayerPositionLUT[player->currentRank - 1];
                } else {
                    shell->state = 3;
                    shell->shellId = 1000.0f;
                    shell->targetPlayer = gPlayerPositionLUT[player->currentRank - 1];
                }
            }
        }
        shell->velocity[1] -= 0.5;
        if (shell->velocity[1] < -2.0f) {
            shell->velocity[1] = -2.0f;
        }
        origPos[0] = shell->pos[0];
        origPos[1] = shell->pos[1];
        origPos[2] = shell->pos[2];
        shell->pos[0] += shell->velocity[0];
        shell->pos[1] += shell->velocity[1];
        shell->pos[2] += shell->velocity[2];
        func_802AD950(&shell->unk30, 4.0f, shell->pos[0], shell->pos[1], shell->pos[2], origPos[0], origPos[1], origPos[2]);
        func_802B4E30((struct Actor *) shell);
        func_802B4104(shell);
        break;
    case 3:
        func_802B3E7C(shell, &gPlayers[shell->targetPlayer]);
        break;
    case 4:
        func_802B3B44(shell);
        if (shell->someTimer == 0) {
            if ((shell->flags & 0xF) == 0) {
                func_8029FDC8((struct Actor *) shell);
            } else {
                shell->someTimer -= 1;
            }
        }
        break;
    case 5:
        func_802B3B44(shell);
        player = &gPlayers[shell->targetPlayer];
        temp_f0 = player->pos[0];
        temp_f0 -= shell->pos[0];
        temp_f2 = player->pos[2];
        temp_f2 -= shell->pos[2];
        if (((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) < 40000.0f) {
            shell->state = 3;
        }
        break;
    case 6:
        player = &gPlayers[shell->playerId];
        parent = &gActorList[shell->parentIndex];
        if (parent->type != ACTOR_TRIPLE_RED_SHELL) {
            func_8029FDC8((struct Actor *) shell);
        } else {
            shell->rotAngle += parent->rotVelocity;
            somePosVel[0] = sins(shell->rotAngle) * 8.0f;
            somePosVel[1] = shell->boundingBoxSize - player->boundingBoxSize;
            somePosVel[2] = coss(shell->rotAngle) * 8.0f;
            func_802B63B8(somePosVel, player->unk_174);
            origPos[0] = shell->pos[0];
            origPos[1] = shell->pos[1];
            origPos[2] = shell->pos[2];
            shell->pos[0] = player->pos[0] + somePosVel[0];
            shell->pos[1] = player->pos[1] + somePosVel[1];
            shell->pos[2] = player->pos[2] + somePosVel[2];
            func_802AD950(&shell->unk30, 4.0f, shell->pos[0], shell->pos[1], shell->pos[2], origPos[0], origPos[1], origPos[2]);
            func_802B4E30((struct Actor *) shell);
        }
        break;
    case 7:
        shell->velocity[1] -= 0.3f;
        if (shell->velocity[1] < -5.0f) {
            shell->velocity[1] = -5.0f;
        }
        shell->rotAngle += 0x5B0;
        shell->someTimer -= 1;
        shell->pos[1] += shell->velocity[1];
        if (shell->someTimer == 0) {
            destroy_actor((struct Actor *) shell);
        }
        break;
    case 8:
        func_802B3B44(shell);
        shell->targetPlayer = gPlayerPositionLUT[0];
        player = &gPlayers[gPlayerPositionLUT[0]];
        temp_f0 = player->pos[0];
        temp_f0 -= shell->pos[0];
        temp_f2 = player->pos[2];
        temp_f2 -= shell->pos[2];
        if (((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) < 40000.0f) {
            shell->state = 9;
        }
        break;
    case 9:
        func_802B3E7C(shell, &gPlayers[shell->targetPlayer]);
        break;
    default:
        break;
    }
}

void func_802B4E30(struct Actor *arg0) {
    if ((arg0->unk30.unk44 < 0.0f) && (arg0->unk30.unk34 == 1)) {
        arg0->pos[0] -= (arg0->unk30.unk60[0] * arg0->unk30.unk44);
        arg0->pos[1] -= (arg0->unk30.unk60[1] * arg0->unk30.unk44);
        arg0->pos[2] -= (arg0->unk30.unk60[2] * arg0->unk30.unk44);
    }
    if ((arg0->unk30.unk3C < 0.0f) && (arg0->unk30.unk30 == 1)) {
        arg0->pos[0] -= (arg0->unk30.unk48[0] * arg0->unk30.unk3C);
        arg0->pos[1] -= (arg0->unk30.unk48[1] * arg0->unk30.unk3C);
        arg0->pos[2] -= (arg0->unk30.unk48[2] * arg0->unk30.unk3C);
    }
    if ((arg0->unk30.unk40 < 0.0f) && (arg0->unk30.unk32 == 1)) {
        arg0->pos[0] -= (arg0->unk30.unk54[0] * arg0->unk30.unk40);
        arg0->pos[1] -= (arg0->unk30.unk54[1] * arg0->unk30.unk40);
        arg0->pos[2] -= (arg0->unk30.unk54[2] * arg0->unk30.unk40);
    }
}
