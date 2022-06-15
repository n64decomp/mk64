#include <ultra64.h>
#include <macros.h>
#include "math_util.h"
#include "common_structs.h"
#include "code_80027D00.h"
#include "code_8008C1D0.h"
#include "code_8003DC40.h"

void func_8003DC40(Player *player) {
    player->unk_DAC = 1.0f;
}

UNUSED void func_8003DC50(Player *player, Vec3f arg1) {
    s32 thing1 = 0;
    s32 thing2 = 0;
    // Praise Fake Match!!
    if(player){};
    if (player->unk_230 <= player->unk_23C) {
        if (player->unk_110.unk48[1] >= 0.1736) {
            arg1[0] = (player->unk_206 / 182) * 0x78;
            arg1[2] = -(player->unk_0C4 / 182) * 0x78;
        } else {
            arg1[0] = thing1;
            arg1[2] = thing2;
        }
    } else if (player->unk_110.unk48[1] >= 0.1736) {
        arg1[0] = (player->unk_206 / 182) * 0x78;
        arg1[2] = -(player->unk_0C4 / 182) * 0x78;
    } else {
        arg1[0] = thing1;
        arg1[2] = thing2;
    }
    arg1[1] = 0.0f;
    func_802B63B8(arg1, player->unk_174);
}

UNUSED void func_8003DE4C(Player *player, Vec3f arg1) {
    s32 thing1 = 0;
    s32 thing2 = 0;
    // Praise Fake Match!!
    if(player){};
    if (player->unk_230 <= player->unk_23C) {
        if (player->unk_110.unk54[1] >= 0.1736) {
            arg1[0] = (player->unk_206 / 182) * 0x78;
            arg1[2] = -(player->unk_0C4 / 182) * 0x78;
        } else {
            arg1[0] = thing1;
            arg1[2] = thing2;
        }
    } else if (player->unk_110.unk54[1] >= 0.1736) {
        arg1[0] = (player->unk_206 / 182) * 0x78;
        arg1[2] = -(player->unk_0C4 / 182) * 0x78;
    } else {
        arg1[0] = thing1;
        arg1[2] = thing2;
    }
    arg1[1] = 0.0f;
    func_802B63B8(arg1, player->unk_174);
}

void func_8003E048(Player *player, Vec3f arg1, Vec3f arg2, Vec3f arg3, f32 *arg4, f32 *arg5, f32 *arg6, f32 *arg7) {
    *arg5 += arg1[0] * player->unk_110.unk44 * 1;
    *arg6 += arg1[1] * player->unk_110.unk44 * 0.1;
    *arg7 += arg1[2] * player->unk_110.unk44 * 1;
    func_8002A5F4(arg1, *arg4, arg2, 1, 2);
    if (player->unk_110.unk60[1] <= 0.8829f) {
        arg3[0] = ((player->unk_206 / 182) * 0xB4);
        arg3[2] = (-(player->unk_0C4 / 182) * 0xB4);
        func_80031F48(player, 4.0f);
        player->unk_DAC = 0.5f;
        if ((player->unk_0BC & 0x2000) != 0) {
            func_8008D554(player);
            player->unk_09C /= 2;
            player->unk_08C /= 2;
        }
    } else if ((((player->unk_094 / 18.0f) * 216.0f) > 20.0f) || ((player->unk_0BC & 0x10000) == 0x10000)) {
        arg3[0] = ((player->unk_206 / 182) * 0x32);
        arg3[2] = (-(player->unk_0C4 / 182) * 0x3C);
    } else {
        arg3[0] = 0.0f;
        arg3[2] = (-(player->unk_0C4 / 182) * 0x32);
    }
    arg3[1] = 0.0f;
    func_802B63B8(arg3, player->unk_174);
}

void func_8003E37C(Player *player, Vec3f arg1, Vec3f arg2, Vec3f arg3, f32 *arg4, f32 *arg5, f32 *arg6, f32 *arg7) {
    *arg5 += arg1[0] * player->unk_110.unk44 * 1;
    *arg6 += arg1[1] * player->unk_110.unk44 * 0.2;
    *arg7 += arg1[2] * player->unk_110.unk44 * 1;
    func_8002A5F4(arg1, *arg4, arg2, 0.5f, 2);
    if ((player->unk_110.unk60[1] <= 0.7318f) || (player->unk_0F8 == 0x000C)) {
        arg3[0] = ((player->unk_206 / 182) * 0xB4);
        arg3[2] = (-(player->unk_0C4 / 182) * 0xB4);
        if (((player->unk_094 / 18.0f) * 216.0f) >= 8.0f) {
            func_80031F48(player, 5.0f);
        }
        player->unk_DAC = 0.5f;
        if ((player->unk_0BC & 0x2000) != 0) {
            func_8008D554(player);
            player->unk_09C /= 2;
            player->unk_08C /= 2;
        }
    } else if ((((player->unk_094 / 18.0f) * 216.0f) > 20.0f) || ((player->unk_0BC & 0x10000) == 0x10000)) {
        arg3[0] = ((player->unk_206 / 182) * 0x32);
        arg3[2] = (-(player->unk_0C4 / 182) * 0x32);
    } else {
        arg3[0] = 0.0f;
        arg3[2] = (-(player->unk_0C4 / 182) * 0x32);
    }
    arg3[1] = 0.0f;
    func_802B63B8(arg3, player->unk_174);
}

void func_8003E6EC(Player *player, Vec3f arg1, Vec3f arg2, Vec3f arg3, f32 *arg4, f32 *arg5, f32 *arg6, f32 *arg7) {
    *arg5 += arg1[0] * player->unk_110.unk44 * 1;
    *arg6 += arg1[1] * player->unk_110.unk44 * 0.1;
    *arg7 += arg1[2] * player->unk_110.unk44 * 1;
    func_8002A5F4(arg1, *arg4, arg2, 0.5f, 2);
    if (player->unk_110.unk60[1] <= 0.8829f) {
        arg3[0] = ((player->unk_206 / 182) * 0xB4);
        arg3[2] = (-(player->unk_0C4 / 182) * 0xB4);
        func_80031F48(player, 4.0f);
        func_8003DC40(player);
    } else if ((((player->unk_094 / 18.0f) * 216.0f) > 20.0f) || ((player->unk_0BC & 0x10000) == 0x10000)) {
        arg3[0] = ((player->unk_206 / 182) * 0x32);
        arg3[2] = (-(player->unk_0C4 / 182) * 0x3C);
    } else {
        arg3[0] = 0.0f;
        arg3[2] = (-(player->unk_0C4 / 182) * 0x32);
    }
    arg3[1] = 0.0f;
    func_802B63B8(arg3, player->unk_174);
}

void func_8003E9EC(Player *player, Vec3f arg1, Vec3f arg2, Vec3f arg3, f32 *arg4, f32 *arg5, f32 *arg6, f32 *arg7) {
    *arg5 += arg1[0] * player->unk_110.unk44 * 1;
    *arg6 += arg1[1] * player->unk_110.unk44 * 0.1;
    *arg7 += arg1[2] * player->unk_110.unk44 * 1;
    func_8002A5F4(arg1, *arg4, arg2, 1.2f, 2);
    if (player->unk_110.unk60[1] <= 0.8357f) {
        arg3[0] = ((player->unk_206 / 182) * 0x78);
        arg3[2] = (-(player->unk_0C4 / 182) * 0xB4);
        func_80031F48(player, 4.0f);
        func_8003DC40(player);
    } else {
        if ((((player->unk_094 / 18.0f) * 216.0f) > 20.0f) || ((player->unk_0BC & 0x10000) == 0x10000)) {
            if ((player->boundingBoxCorners[2].surfaceType == 1) || (player->boundingBoxCorners[3].surfaceType == 1) || (player->boundingBoxCorners[1].surfaceType == 1) || (player->boundingBoxCorners[0].surfaceType == 1)) {
                arg3[0] = ((player->unk_206 / 182) * 5);
            } else {
                arg3[0] = ((player->unk_206 / 182) * 0x28);
            }
            arg3[2] = (-(player->unk_0C4 / 182) * 0x28);
        } else {
            arg3[0] = 0.0f;
            arg3[2] = (-(player->unk_0C4 / 182) * 0x32);
        }
        if ((player->unk_0BC & 0x10000) != 0) {
            arg3[0] = ((player->unk_206 / 182) * 0x78);
            arg3[2] = (-(player->unk_0C4 / 182) * 0xB4);
        }
    }
    arg3[1] = 0.0f;
    func_802B63B8(arg3, player->unk_174);
}

void func_8003EE2C(Player *player, Vec3f arg1, Vec3f arg2, Vec3f arg3, f32 *arg4, f32 *arg5, f32 *arg6, f32 *arg7) {
    *arg5 += arg1[0] * player->unk_110.unk44 * 1;
    *arg6 += arg1[1] * player->unk_110.unk44 * 0.1;
    *arg7 += arg1[2] * player->unk_110.unk44 * 1;
    func_8002A5F4(arg1, *arg4, arg2, 0.5f, 2);
    if (player->unk_110.unk60[1] <= 0.8357f) {
        arg3[0] = ((player->unk_206 / 182) * 0x78);
        arg3[2] = (-(player->unk_0C4 / 182) * 0xB4);
        func_80031F48(player, 4.0f);
        func_8003DC40(player);
    } else if ((((player->unk_094 / 18.0f) * 216.0f) > 20.0f) || ((player->unk_0BC & 0x10000) == 0x10000)) {
        arg3[0] = ((player->unk_206 / 182) * 0x32);
        arg3[2] = (-(player->unk_0C4 / 182) * 0x3C);
    } else {
        arg3[0] = 0.0f;
        arg3[2] = (-(player->unk_0C4 / 182) * 0x32);
    }
    arg3[1] = 0.0f;
    func_802B63B8(arg3, player->unk_174);
}

void func_8003F138(Player *player, Vec3f arg1, Vec3f arg2, Vec3f arg3, f32 *arg4, f32 *arg5, f32 *arg6, f32 *arg7) {
    *arg5 += arg1[0] * player->unk_110.unk44 * 1;
    *arg6 += arg1[1] * player->unk_110.unk44 * 0.1;
    *arg7 += arg1[2] * player->unk_110.unk44 * 1;
    func_8002A5F4(arg1, *arg4, arg2, 0.5f, 2);
    if (player->unk_0F8 == 8) {
        player->unk_044 &= ~1;
    }
    if (player->unk_110.unk60[1] <= 0.8357f) {
        arg3[0] = ((player->unk_206 / 182) * 0xC8);
        arg3[2] = (-(player->unk_0C4 / 182) * 0xC8);
        func_80031F48(player, 4.0f);
        player->unk_DAC = 0.5f;
        arg3[0] = 0;
    } else if ((((player->unk_094 / 18.0f) * 216.0f) > 20.0f) || ((player->unk_0BC & 0x10000) == 0x10000)) {
        arg3[0] = ((player->unk_206 / 182) * 0x78);
        arg3[2] = (-(player->unk_0C4 / 182) * 0x78);
        arg3[0] = 0;
    } else {
        arg3[0] = 0.0f;
        arg3[2] = (-(player->unk_0C4 / 182) * 0x32);
    }
    arg3[1] = 0.0f;
    arg3[2] = 0.0f;
    func_802B63B8(arg3, player->unk_174);
}

void func_8003F46C(Player *player, Vec3f arg1, Vec3f arg2, Vec3f arg3, f32 *arg4, f32 *arg5, f32 *arg6, f32 *arg7) {
    arg1[0] = -player->unk_110.unk60[0];
    arg1[1] = -player->unk_110.unk60[1];
    arg1[2] = -player->unk_110.unk60[2];
    if ((player->unk_110.unk60[1] < 0.0f) && ((player->unk_0CA & 2) == 0)) {
        *arg5 += arg1[0] * player->unk_110.unk44 * 1;
        *arg6 += arg1[1] * player->unk_110.unk44 * 1;
        *arg7 += arg1[2] * player->unk_110.unk44 * 1;
        func_8002A5F4(arg1, *arg4, arg2, 1.2f, 0.0f);
        player->kartHopJerk = 0.0f;
        player->kartHopAcceleration = 0.0f;
        player->kartHopVelocity = 0.0f;
        return;
    } else {
        switch (gCurrentCourseId) {
        case 0:
            func_8003E048(player, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
            break;
        case 1:
        case 6:
            func_8003E37C(player, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
            break;
        case 2:
            func_8003E6EC(player, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
            break;
        case 8:
            func_8003E9EC(player, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
            break;
        case 14:
            func_8003EE2C(player, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
            break;
        case 18:
            func_8003F138(player, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
            break;
        default:
            func_8003E048(player, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
            break;
        }
        if (player->unk_0BC & 0x10000) {
            player->unk_DAC = 0.5f;
        }
    }
}

void func_8003F734(Player *player, Vec3f arg1, Vec3f arg2, Vec3f arg3, f32 *arg4, f32 *arg5, f32 *arg6) {
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f0_2;

    arg1[0] = -player->unk_110.unk48[0];
    arg1[1] = -player->unk_110.unk48[1];
    arg1[2] = -player->unk_110.unk48[2];
    if (player->unk_110.unk48[1] == 0) {
        *arg4 += arg1[0] * player->unk_110.unk3C * 1;
        *arg5 += arg1[1] * player->unk_110.unk3C * 0.1;
        *arg6 += arg1[2] * player->unk_110.unk3C * 1;
        if ((player->unk_0C4 < 0) && (((player->unk_094 / 18.0f) * 216.0f) < 10.0f)) {
            func_8002A5F4(arg1, *arg3, arg2, 2.5f, 0);
        } else {
            func_8002A5F4(arg1, *arg3, arg2, 0.5f, 0);
        }
    } else if (player->unk_110.unk48[1] <= 0.5) {
        *arg4 += arg1[0] * player->unk_110.unk3C * 1;
        *arg5 += arg1[1] * player->unk_110.unk3C * 0.1;
        *arg6 += arg1[2] * player->unk_110.unk3C * 1;
        func_8002A5F4(arg1, *arg3, arg2, 1, 0);
        if (((player->unk_0BC << 0xF) >= 0) && ((player->unk_0BC & 8) == 0)) {
            arg2[1] *= -1e-05;
        }
    } else {
        *arg4 += arg1[0] * player->unk_110.unk3C * 1;
        temp_f0_2 = arg1[1] * player->unk_110.unk3C;
        if (temp_f0_2 < 0) {
            *arg5 += temp_f0_2 * 0.1;
        } else {
            *arg5 += temp_f0_2 * 0;
        }
        *arg6 += arg1[2] * player->unk_110.unk3C * 1;
        func_8002A5F4(arg1, *arg3, arg2, 1.2f, 0);
        if (((player->unk_0BC << 0xF) >= 0) && ((player->unk_0BC & 8) == 0)) {
            arg2[1] *= -1e-05;
        }
    }
    player->unk_0BC &= ~0x10;
    temp_f12 = arg1[0] * player->unk_110.unk3C;
    temp_f14 = arg1[2] * player->unk_110.unk3C;
    if (((temp_f12 >= 0) && (temp_f14 >= 0)) || ((temp_f12 < 0) && (temp_f14 >= 0))) {
        temp_f0_2 = player->boundingBoxSize / 2;
        player->unk_218 = *arg4 - temp_f12 - temp_f0_2;
        player->unk_21C = *arg6 - temp_f14 - temp_f0_2;
    }
    if (((temp_f12 < 0) && (temp_f14 < 0)) || ((temp_f12 >= 0) && (temp_f14 < 0))) {
        temp_f0_2 = player->boundingBoxSize / 2;
        player->unk_218 = *arg4 + temp_f12 + temp_f0_2;
        player->unk_21C = *arg6 + temp_f14 + temp_f0_2;
    }
}

void func_8003FBAC(Player *player, Vec3f arg1, Vec3f arg2, Vec3f arg3, f32 *arg4, f32 *arg5, f32 *arg6) {
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f14;

    arg1[0] = -player->unk_110.unk54[0];
    arg1[1] = -player->unk_110.unk54[1];
    arg1[2] = -player->unk_110.unk54[2];
    if (player->unk_110.unk54[1] == 0) {
        *arg4 += arg1[0] * player->unk_110.unk40 * 1;
        *arg5 += arg1[1] * player->unk_110.unk40 * 0.1;
        *arg6 += arg1[2] * player->unk_110.unk40 * 1;
        if ((player->unk_0C4 < 0) && (((player->unk_094 / 18.0f) * 216.0f) < 10.0f)) {
            func_8002A5F4(arg1, *arg3, arg2, 1.5f, 0);
        } else {
            func_8002A5F4(arg1, *arg3, arg2, 0.5f, 0);
        }
    } else if (player->unk_110.unk54[1] <= 0.5) {
        *arg4 += arg1[0] * player->unk_110.unk40 * 1;
        *arg5 += arg1[1] * player->unk_110.unk40 * 0.1;
        *arg6 += arg1[2] * player->unk_110.unk40 * 1;
        func_8002A5F4(arg1, *arg3, arg2, 1, 0);
        if (((player->unk_0BC << 0xF) >= 0) && ((player->unk_0BC & 8) == 0)) {
            arg2[1] *= -1e-05;
        }
    } else {
        *arg4 += arg1[0] * player->unk_110.unk40 * 1;
        temp_f0_2 = arg1[1] * player->unk_110.unk40;
        if (temp_f0_2 < 0) {
            *arg5 += temp_f0_2 * 0.1;
        } else {
            *arg5 += temp_f0_2 * 0;
        }
        *arg6 += arg1[2] * player->unk_110.unk40 * 1;
        func_8002A5F4(arg1, *arg3, arg2, 1.2f, 0);
        if (((player->unk_0BC << 0xF) >= 0) && ((player->unk_0BC & 8) == 0)) {
            arg2[1] *= -1e-05;
        }
    }
    player->unk_0BC &= ~0x10;
    temp_f12 = arg1[0] * player->unk_110.unk40;
    temp_f14 = arg1[2] * player->unk_110.unk40;
    if (((temp_f12 >= 0) && (temp_f14 >= 0)) || ((temp_f12 >= 0) && (temp_f14 < 0))) {
        temp_f0_2 = player->boundingBoxSize / 2;
        player->unk_218 = *arg4 - temp_f12 - temp_f0_2;
        player->unk_21C = *arg6 - temp_f14 - temp_f0_2;
    }
    if (((temp_f12 < 0) && (temp_f14 >= 0)) || ((temp_f12 < 0) && (temp_f14 < 0))) {
        temp_f0_2 = player->boundingBoxSize / 2;
        player->unk_218 = *arg4 + temp_f12 + temp_f0_2;
        player->unk_21C = *arg6 + temp_f14 + temp_f0_2;
    }
}
