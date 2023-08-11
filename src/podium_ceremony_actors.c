#include <ultra64.h>
#include <macros.h>
#include <PR/gu.h>
#include <mk64.h>
#include <types.h>
#include <debug.h>
#include <common_structs.h>
#include "main.h"
#include "memory.h"
#include "variables.h"
#include "common_textures.h"
#include "code_8001F980.h"
#include "hud_renderer.h"
#include "podium_ceremony_actors.h"
#include "camera_junk.h"
#include "code_80027D00.h"
#include "code_80057C60.h"
#include "code_80005FD0.h"
#include "code_80281C40.h"
#include "math_util.h"

s32 fireworkConeColour[] = {
    0x00FF4080, // pink
    0x008040FF, // purple
    0x0040FF40, // green
    0x00FFFF40  // yellow
};

/**
 * Mainly colours the explosion effect.
 * Appears to colour the cones as well.
*/
s32 fireworkColour[] = {
    0x007F2040, // red
    0x0040207F, // purple
    0x00207F20, // green
    0x007F7F20  // gold/yellow
};

u16 sRandomSeed16 = 0;

UnkStruct_80284E64 D_80284E64 = {
    1,
    0xF3AF,
    34,
    0xFE2D,
    0,
    0,
    0,
    0,
};

UnkStruct_80284E64 D_80284E70 = {
    3,
    0xF3AF,
    34,
    0xFE2D,
    0,
    0,
    0,
    0,
};

UnkStruct_80284E64 D_80284E7C = {
    2,
    0xF3AF,
    34,
    0xFE2D,
    0,
    0,
    0,
    0,
};

UnkStruct_80284E64 D_80284E88 = {
    0,
    0xF2CC,
    250,
    0xFE11,
    0,
    0,
    0,
    0,
};

void func_80280650(void) {

}

void set_actor_with_next(struct UnkStruct_80280658 *arg0) {
    UnkStruct_80284E64 *temp_v0 = arg0->unk28;

    arg0->unk10[0] = temp_v0->unk2;
    arg0->unk10[1] = temp_v0->unk4;
    arg0->unk10[2] = temp_v0->unk6;
    
    // Place value in the high bits of s16.
    // Example: 85, 0b01010101 -> 0b0101010100000000
    arg0->unkA = temp_v0->unk8 << 8;
    arg0->unkC = temp_v0->unk9 << 8;
    arg0->unkE = temp_v0->unkA << 8;
    arg0->unk4 = temp_v0->unk0;
}

struct UnkStruct_80280658 *find_available_entry(void) {
    UNUSED s32 pad[2];
    struct UnkStruct_80280658 *phi_a0 = D_802874F8;
    s32 i;

    for (i = 0; i < 200 ; i++) {

        // Find an unused actor, initialize and return it.
        if ((phi_a0->unk0 & 1) == 0) {
            bzero(phi_a0, 0x4C);
            phi_a0->unk0 = 1;
            phi_a0->unk24 = 1.0f;
            return phi_a0;
        }

        phi_a0++;
    }
    return NULL;
}

struct UnkStruct_80280658 *new_actor(UnkStruct_80284E64 *arg0) {
    struct UnkStruct_80280658 *actor = find_available_entry();

    // @bug No null check.
    // todo: What am I even supposed to return here?
    // I guess the other funcs need checks too
    #ifdef AVOID_UB
    if (actor == NULL) {
        // Something has gone terribly wrongg
        while(1);
        return NULL; // prevent warnings
    }
    #endif

    // Linked list?
    actor->unk28 = arg0;
    set_actor_with_next(actor);
    return actor;
}

u16 random_u16_credits(void) {
    u16 temp1, temp2;

    if (sRandomSeed16 == 22026) {
        sRandomSeed16 = 0;
    }

    temp1 = (sRandomSeed16 & 0x00FF) << 8;
    temp1 = temp1 ^ sRandomSeed16;

    sRandomSeed16 = ((temp1 & 0x00FF) << 8) + ((temp1 & 0xFF00) >> 8);

    temp1 = ((temp1 & 0x00FF) << 1) ^ sRandomSeed16;
    temp2 = (temp1 >> 1) ^ 0xFF80;
    
    if ((temp1 & 1) == 0) {
        if (temp2 == 43605) {
            sRandomSeed16 = 0;
        } else {
            sRandomSeed16 = temp2 ^ 0x1FF4;
        }
    } else {
        sRandomSeed16 = temp2 ^ 0x8180;
    }

    return sRandomSeed16;
}

f32 random_float_between_0_and_1(void) {
    return random_u16_credits() / 65536.0f;
}

f32 random_who_knows(f32 arg0) {
    return (random_float_between_0_and_1() * arg0) - (arg0 * 0.5f);
}

void func_80280884(void) {

}

extern s16 D_802874CA;

void func_8028088C(struct UnkStruct_80280658 *arg0) {
    func_8006BB34(arg0->unk10, 1.0f, arg0->unk2E, arg0->unk2C);
    arg0->unk10[1] += 0.8f;
    arg0->unk2E = sins(arg0->unk30) * arg0->unk34;
    arg0->unk30 += arg0->unk32;
    arg0->unk3C++;
    if (arg0->unk3C >= 0x321) {
        arg0->unk0 = 0;
    }
    if (D_802874CA == 1) {
        arg0->unk0 = 0;
    }
}

/**
 * Spawns an aerial shell that ascends into the sky.
 * (note that the explode effect is a different actor)
*/
void spawn_firework_cone(Firework *cone) {
    Firework *actor;

    if (cone->unk44 < 0x1E) {
        cone->unk10[1] += 2.5f;
        cone->unk10[0] += random_who_knows(0.2f);
        cone->unk10[2] += random_who_knows(0.2f);
    } else if (cone->unk2C == 4) {
        actor = (Firework *) new_actor(&D_80284E7C);
        actor->unk10[0] = cone->unk10[0];
        actor->unk10[1] = cone->unk10[1];
        actor->unk10[2] = cone->unk10[2];
        actor->unk30 = fireworkConeColour[cone->unk48];
        actor->unk3C = 0xFF;
        actor->unk40 = -0x11;
        actor->unk44 = 0x64;
        actor->unk34 = 1.8700001f;
        actor->unk38 = 1.8700001f;
    }
}

Mat4 D_80287500;

void func_80280A28(Vec3f arg0, Vec3s arg1, f32 arg2) {
    Mat4 sp20;

    func_80021E10(sp20, arg0, arg1);
    sp20[0][0] = D_80287500[0][0] * arg2;
    sp20[0][1] = D_80287500[1][0] * arg2;
    sp20[0][2] = D_80287500[2][0] * arg2;
    sp20[1][0] = D_80287500[0][1] * arg2;
    sp20[1][1] = D_80287500[1][1] * arg2;
    sp20[1][2] = D_80287500[2][1] * arg2;
    sp20[2][0] = D_80287500[0][2] * arg2;
    sp20[2][1] = D_80287500[1][2] * arg2;
    sp20[2][2] = D_80287500[2][2] * arg2;
    func_80022180(&gGfxPool->mtxPool[D_80164AF0 + 0x3EB], sp20);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[D_80164AF0 + 0x3EB]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
}

void render_fireworks(Vec3f arg0, f32 arg1, s32 rgb, s16 alpha) {
    Vec3f sp4C;
    Vec3s sp44;
    s16 red;
    s16 green;
    s16 blue;

    sp4C[0] = arg0[0];
    sp4C[1] = arg0[1];
    sp4C[2] = arg0[2];
    sp44[0] = 0;
    sp44[1] = camera1->rot[1];
    sp44[2] = 0;
    func_80280A28(sp4C, sp44, arg1);
    gSPDisplayList(gDisplayListHead++, D_0D008DB8);
    gDPLoadTextureBlock(gDisplayListHead++, D_8018D48C, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    // ???????????????????????????????????
    red   = ((rgb >> 0x10) & 0xFF) & 0xFF;
    green = ((rgb >> 0x08) & 0xFF) & 0xFF;
    blue  = ((rgb >> 0x00) & 0xFF) & 0xFF;
    // ???????????????????????????????????
    func_8004B35C(red, green, blue, alpha);
    gSPDisplayList(gDisplayListHead++, D_0D008E48);
    D_80164AF0 += 1;
}

void func_80280D1C(Firework *actor) {
    s32 i;
    Vec3f sp58;
    if (actor->unk44 < 30) {
        for (i = 0; i < 10; i++) {
        sp58[0] = actor->unk10[0];
        sp58[1] = actor->unk10[1] - i * 2;
        sp58[2] = actor->unk10[2];
        render_fireworks(sp58, ((10 - i) / 10.0f) * 2, fireworkColour[actor->unk48], ( ((((30 - actor->unk44) * 100)) / 30.0f)));
        }

    } else {
        if (actor->unk2C < 5) {
            actor->unk3C += actor->unk40 * 2;
            actor->unk34 += actor->unk38 * 2;
        } else {
            actor->unk3C += actor->unk40 / ( 1.0f + ( ( (actor->unk2C * 7) - 0x23 ) / 10.0f ) );
            actor->unk34 += actor->unk38 / ( 1.0f + ( ( (actor->unk2C * 7) - 0x23 ) / 10.0f ) );
            if (actor->unk3C < 0) {
                actor->unk3C = 0;
            }
        }
        actor->unk2C += 1;
        if (((actor->unk3C > 0) && ((actor->unk34 > 0.0f))) || (actor->unk2C < 30)) {
            render_fireworks(actor->unk10, actor->unk34, actor->unk30, (s16) actor->unk3C);
        } else {
            actor->unk0 = 0;
        }
    }
    actor->unk44 += 1;
}

void func_80280FA0(UNUSED s32 arg0) {

}

void func_80280FA8(UNUSED s32 arg0) {

}

void balloons_and_fireworks_init(void) {
    D_802874E0 = 0;
    D_802874F8 = (struct UnkStruct_80280658 *) get_next_available_memory_addr(0x3B60);
    bzero(D_802874F8, 0x3B60);
    new_actor(&D_80284E88);
}

void func_80280FFC(void) {
    D_802874F4 = 1;
}

void func_8028100C(UNUSED s32 arg0, UNUSED s32 arg1, UNUSED s32 arg2) {

}

/**
 * Spawn balloons!
 * The floats passed to random_who_knows appears to effect the spread of the balloons
*/
void spawn_balloons(s32 arg0, s32 arg1, s32 arg2) {
    s32 i;

    for (i = 0; i < 100; i++) {
        struct UnkStruct_80280658 *balloon;
        balloon = new_actor(&D_80284E64);
        balloon->unk10[0] = random_who_knows(200.0f) + arg0;
        balloon->unk10[1] = random_who_knows(380.0f) + arg1;
        balloon->unk10[2] = random_who_knows(600.0f) + arg2;
        balloon->unk2C = (s16) (s32) (random_float_between_0_and_1() * 7.0f);
        balloon->unk30 = random_u16_credits();
        balloon->unk32 = (s16) (s32) (random_who_knows(400.0f) + 900.0f);
        balloon->unk34 = (s16) (s32) (random_who_knows(2000.0f) + 3000.0f);
    }
}

extern s16 D_802874BE[];
extern s16 D_802874C6;
extern s16 D_802874C8;
extern s32 fireworkColour[];

/**
 * The explosive effect when the firework's charge detonates
 * resulting in a small variety of amusing colours.
*/
void spawn_firework_burst(s32 arg0, s32 arg1, s32 arg2) {
    f32 num;
    static u32 D_80287540;

    if (((f32) random_float_between_0_and_1() * (D_802874BE[0] + 0xD)) < 1.0f) {
        Firework *burst;
        burst = (Firework *) new_actor(&D_80284E70);
        burst->unk10[0] = random_who_knows(0.0f) + arg0;
        burst->unk10[1] = random_who_knows((f32) (D_802874C6 + 100)) + (f32) arg1;
        burst->unk10[2] = random_who_knows((f32) (D_802874C8 + 700)) + (f32) arg2;
        
        num = 1.1f;

        // Wrap the counter from zero to three
        burst->unk48 = D_80287540 % 4U;
        burst->unk30 = fireworkColour[D_80287540 % 4U];
        burst->unk34 = num;
        burst->unk38 = num;
        D_80287540 += 1;
        burst->unk3C = 0xFF;
        burst->unk40 = -0x11;
    }
}

extern s16 D_802874C4;
extern s32 D_802874E0;
extern Mat4 D_80287500;

extern s8 D_802874F5;

/**
 * Allegedly controls fireworks movement.
*/
void fireworks_update(void) {
    Camera *camera = &cameras[0];
    f32 temp_f0;

    guLookAtF(D_80287500, camera->pos[0], camera->pos[1], camera->pos[2], camera->lookAt[0], camera->lookAt[1], camera->lookAt[2], camera->up[0], camera->up[1], camera->up[2]);
    if (D_802874F5 < 3) {
        if (D_802874E0 < 300) {
            temp_f0 = camera->lookAt[1];
            spawn_firework_burst(-0xE0E, (s32) (((temp_f0 - camera->pos[1]) * 1.5f) + temp_f0), -0x258);
        }
        if (D_802874E0 == 120) {
            spawn_balloons(-0xC6C, (s32) ((f32) D_802874C4 + 210.0f), -0x1EF);
        }
    } else if (D_802874E0 == 2) {
        spawn_balloons(-0xC6C, (s32) ((f32) D_802874C4 + 210.0f), -0x1EF);
    }
    
    D_802874E0 += 1;
}

void *D_80284E94[][3] = {
    {func_80280FA8, func_80280FA0, 0},
    {func_80280FA8, func_8028088C, 0},
    {func_80280FA8, func_80280D1C, 0},
    {spawn_firework_cone, 0, func_80280D1C},
};

extern s16 D_802874D0;

void func_80281438(void) {
    void (*func)(void *);
    struct UnkStruct_80280658 *phi_s0;
    s32 i;
    s32 j;
    fireworks_update();
    D_802874D0 = 0;
    for (i = 0; i < 3; i++) {
        phi_s0 = D_802874F8;
        for (j = 0; j < 200; j++) {
            if ((phi_s0->unk0 & 1) != 0) {

                func = D_80284E94[phi_s0->unk4][i];

                if (func != 0) {
                    func(phi_s0);
                }
            }
            phi_s0++;
        }
    }
}

void func_8028150C(void) {
    D_802874D4 = gDisplayListHead;
}

void func_80281520(void) {

}

void func_80281528(void) {

}

void func_80281530(void) {

}

void func_80281538(void) {

}

void func_80281540(void) {

}

void podium_ceremony_loop(void) {
    D_80150112 = 0;
    D_802874FC = 0;
    setup_camera_ending_sequence();
    func_80028F70();
    func_80022744();
    func_80059AC8();
    func_80059AC8();
    func_8005A070();
    if (D_802874F4 != 0) {
        func_8001C14C();
        func_800097E0();
    }
    func_80281D00();
    func_80281540();
#if VARIABLE_WATCH_DEBUG_LIST
	display_dvdl();	 
#endif
    gDPFullSync(gDisplayListHead++);
    gSPEndDisplayList(gDisplayListHead++);
}
