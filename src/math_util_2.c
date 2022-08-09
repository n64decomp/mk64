#include <ultra64.h>
#include <macros.h>
#include <common_structs.h>
#include "math_util_2.h"
#include "main.h"
#include "variables.h"
#include "math_util.h"
#include "objects.h"

#include "memory.h"

#pragma intrinsic (sqrtf)

UNUSED void func_80040E50(s32 *arg0, s32 arg1) {
    *arg0 = (s32) (*arg0 | arg1);
}

UNUSED void func_80040E60(s32 *arg0,s32 arg1) {
    *arg0 = (s32) (*arg0 & ~arg1);
}

UNUSED void func_80040E74(s32 *arg0, s32 arg1) {
    *arg0 = (s32) (*arg0 ^ arg1);
}

UNUSED s32 func_80040E84(s32 *arg0, s32 arg1) {
    s32 phi_v1;

    phi_v1 = 0;
    if ((*arg0 & arg1) != 0) {
        phi_v1 = 1;
    }
    return phi_v1;
}

UNUSED s32 func_80040EA4(s32 *arg0, s32 arg1) {
    s32 phi_v1;

    phi_v1 = 0;
    if ((*arg0 & arg1) == 0) {
        phi_v1 = 1;
    }
    return phi_v1;
}

void func_80040EC4(Vec3f arg0, Vec3f arg1) {
    arg0[0] = arg1[0];
    arg0[1] = arg1[1];
    arg0[2] = arg1[2];
}

s32 f32_step_up_towards(f32 *value, f32 target, f32 step) {
    s32 targetReached = 0;

    if (*value < target) {
        *value += step;
        if (target <= *value) {
            *value = target;
            targetReached = 1;
        }
    }
    return targetReached;
}

s32 f32_step_down_towards(f32 *value, f32 target, f32 step) {
    s32 targetReached = 0;

    if (target < *value) {
        *value -= step;
        if (*value <= target) {
            *value = target;
            targetReached = 1;
        }
    }
    return targetReached;
}

s32 s32_step_up_towards(s32 *value, s32 target, s32 step) {
    s32 targetReached = 0;

    if (*value < target) {
        *value = *value + step;
        targetReached = 0;
        if (*value  >= target) {
            *value = target;
            targetReached = 1;
        }
    }
    return targetReached;
}

s32 s32_step_down_towards(s32 *value, s32 target, s32 step) {
    s32 targetReached = 0;

    if (target < *value) {
        *value = *value - step;;
        if (target >= *value) {
            *value = target;
            targetReached = 1;
        }
    }
    return targetReached;
}

s32 s16_step_up_towards(s16 *value, s16 target, s16 step) {
    s32 targetReached = 0;

    if (*value < target) {
        *value = *value + step;
        if (*value >= target) {
            *value = target;
            targetReached = 1;
        }
    }
    return targetReached;
}

s32 u16_step_up_towards(u16 *value, u16 target, u16 step) {
    s32 targetReached = 0;

    if (*value < target) {
        *value += step;
        if (*value >= target) {
            *value = target;
            targetReached = 1;
        }
    }
    return targetReached;
}

s32 s16_step_down_towards(s16 *value, s16 target, s16 step) {
    s32 targetReached = 0;

    if (target < *value) {
        *value -= step;
        if (target >= *value) {
            *value = target;
            targetReached = 1;
        }
    }
    return targetReached;
}

// wtf is up with the argument types for this one?
s32 u16_step_down_towards(u16 *value, s32 target, s32 step) {
    s32 targetReached = 0;
    s32 temp = *value;

    if (target < temp) {
        temp -= step;
        if (target >= temp) {
            temp = target;
            targetReached = 1;
        }
        *value = temp;
    }
    return targetReached;
}

UNUSED s32 f32_step_up_towards_alternate(f32 *value, f32 target, f32 *step) {
    s32 targetReached = 0;

    if (*value < target) {
        *value += *step;
        if (target <= *value) {
            *value = target;
            targetReached = 1;
        }
    }
    return targetReached;
}

UNUSED s32 f32_step_down_towards_alternate(f32 *value, f32 target, f32 *step) {
    s32 targetReached = 0;

    if (target < *value) {
        *value -= *step;
        if (*value <= target) {
            *value = target;
            targetReached = 1;
        }
    }
    return targetReached;
}

UNUSED s32 s32_step_up_towards_alternate(s32 *value, s32 target, s32 *step) {
    s32 targetReached = 0;

    if (*value < target) {
        *value += *step;
        if (*value >= target) {
            *value = target;
            targetReached = 1;
        }
    }
    return targetReached;
}

UNUSED s32 s32_step_down_towards_alternate(s32 *value, s32 target, s32 *step) {
    s32 targetReached = 0;

    if (target < *value) {
        *value -= *step;
        if (target >= *value) {
            *value = target;
            targetReached = 1;
        }
    }
    return targetReached;
}

UNUSED s32 s16_step_up_towards_alternate(s16 *value, s16 target, s16 *step) {
    s32 targetReached = 0;

    if (*value < target) {
        *value += *step;
        if (*value >= target) {
            *value = target;
            targetReached = 1;
        }
    }
    return targetReached;
}

UNUSED s32 s16_step_down_towards_alternate(s16 *value, s16 target, s16 *step) {
    s32 targetReached = 0;

    if (target < *value) {
        *value -= *step;
        if (target >= *value) {
            *value = target;
            targetReached = 1;
        }
    }
    return targetReached;
}

s32 s16_step_towards(s16 *value, s16 target, s16 step) {
    s32 targetReached = 0;

    if (*value < target) {
        if (step >= 0) {
            *value += step;
        } else {
            *value -= step;
        }
        if (*value >= target) {
            *value = target;
            targetReached = 1;
        }
    } else if (target < *value) {
        if (step >= 0) {
            *value -= step;
        } else {
            *value += step;
        }
        if (target >= *value) {
            *value = target;
            targetReached = 1;
        }
    }
    return targetReached;
}

UNUSED s32 s32_step_towards(s32 *value, s32 target, s32 step) {
    s32 temp_v0;
    s32 targetReached;

    temp_v0 = *value;
    targetReached = 0;
    if (temp_v0 < target) {
        if (step >= 0) {
            *value = (s32) (temp_v0 + step);
        } else {
            *value = (s32) (temp_v0 - step);
        }
        if (*value >= target) {
            *value = target;
            targetReached = 1;
        }

    } else if (target < temp_v0) {
        if (step >= 0) {
            *value = (s32) (temp_v0 - step);
        } else {
            *value = (s32) (temp_v0 + step);
        }
        if (target >= *value) {
            *value = target;
            targetReached = 1;
        }
    }
    return targetReached;
}

s32 f32_step_towards(f32 *value, f32 target, f32 step) {
    s32 targetReached = 0;

    if (*value < target) {
        if (step >= 0.0f) {
            *value += step;
        } else {
            *value -= step;
        }
        if (target <= *value) {
            *value = target;
            targetReached = 1;
        }
    } else if (target < *value) {
        if (step >= 0.0f) {
            *value -= step;
        } else {
            *value += step;
        }
        if (*value <= target) {
            *value = target;
            targetReached = 1;
        }
    }
    return targetReached;
}

void func_80041480(s16 *arg0, s16 arg1, s16 arg2, s16 *arg3) {
    *arg0 += *arg3;
    if (*arg3 >= 0) {
        if (*arg0 >= arg2) {
            *arg0 = arg2;
            *arg3 = -*arg3;
        }
    } else if (arg1 >= *arg0) {
        *arg0 = arg1;
        *arg3 = -*arg3;
    }
}

s32 vec3f_set_dupe_2_electric_boogaloo(Vec3f arg0, f32 arg1, f32 arg2, f32 arg3) {
    arg0[0] = arg1;
    arg0[1] = arg2;
    arg0[2] = arg3;
    return &arg0;
}

Vec3f *func_80041530(Vec3f dest) {
    f32 invsqrt = 1.0f / sqrtf(dest[0] * dest[0] + dest[1] * dest[1] + dest[2] * dest[2]);

    dest[0] = dest[0] * invsqrt;
    dest[1] = dest[1] * invsqrt;
    dest[2] = dest[2] * invsqrt;
    return  &dest;
}

Vec3f *func_80041594(Vec3f arg0, Vec3f arg1, Vec3f arg2) {

    arg0[0] = (arg1[1] * arg2[2]) - (arg2[1] * arg1[2]);
    arg0[1] = (arg1[2] * arg2[0]) - (arg2[2] * arg1[0]);
    arg0[2] = (arg1[0] * arg2[1]) - (arg2[0] * arg1[1]);

    return &arg0;
}

UNUSED s32 func_80041608(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    f32 temp_f0;
    f32 temp_f2;
    s32 ret = 0;

    temp_f0 = arg2 - arg0;
    temp_f2 = arg3 - arg1;
    if (((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) <= (arg4 * arg4)) {
        ret = 1;
    }
    return ret;
}

s32 func_80041658(f32 arg0, f32 arg1) {
    return -atan2s(arg0, arg1) & 0xFFFF;
}

UNUSED s32 func_80041680(f32 arg0, f32 arg1) {
    return atan2s(arg1, arg0);
}

UNUSED s32 func_800416AC(f32 arg0, f32 arg1) {
    return atan2s(arg1, arg0);
}

f32 func_800416D8(f32 arg0, f32 arg1, u16 arg2) {
    f32 sp1C;

    sp1C = coss(arg2);
    return (sp1C * arg0) - (sins(arg2) * arg1);
}

f32 func_80041724(f32 arg0, f32 arg1, u16 arg2) {
    f32 sp1C;

    sp1C = sins(arg2);
    return (coss(arg2) * arg1) + (sp1C * arg0);
}

s32 func_80041770(f32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    return atan2s(arg1 - arg0, arg3 - arg2);
}

u16 func_800417B4(u16 arg0, u16 arg1) {
    u16 ret;

    if ((arg0 >> 8) != (arg1 >> 8)) {
        ret = arg1 - arg0;
        if (ret < 0x400) {
            ret = arg0 + 0x80;
        } else if (ret < 0x800) {
            ret = arg0 + 0x200;
        } else if (ret < 0x4000) {
            ret = arg0 + 0x400;
        } else if (ret < 0x8000) {
            ret = arg0 + 0x700;
        } else if (ret < 0xC000) {
            ret = arg0 - 0x700;
        }else if (ret < 0xF800) {
            ret = arg0 - 0x400;
        } else if (ret < 0xFC00) {
            ret = arg0 - 0x200;
        } else {
            ret = arg0 - 0x80;
        }
    } else {
        ret = arg1;
    }
    return ret;
}

s32 func_800418AC(f32 arg0, f32 arg1, Vec3f arg2) {
    return atan2s(arg0 - arg2[0], arg1 - arg2[2]);
}

s32 func_800418E8(f32 arg0, f32 arg1, Vec3f arg2) {
    return atan2s(arg0 - arg2[1], arg1 - arg2[2]);
}

s32 func_80041924(UnkActorInner *arg0, Vec3f arg1) {
    s32 ret = 0;

    func_802ADDC8(arg0, 10.0f, arg1[0], arg1[1], arg1[2]);
    if (arg0->unk34 == 1) {
        ret = 1;
    }
    return ret;
}

s32 func_80041980(Vec3f arg0, Camera *arg1, u16 arg2) {
    u16 temp_t9;
    s32 ret;

    ret = 0;
    temp_t9 = (func_80041770(arg1->pos[0], arg0[0], arg1->pos[2], arg0[2]) + (arg2 / 2)) - arg1->rot[1];
    if ((temp_t9 >= 0) && (arg2 >= temp_t9)) {
        ret = 1;
    }
    return ret;
}

void func_800419F8(void) {
    Vec3f sp18;
    Vec3f sp24;

    sp18[0] = 0.0f;
    sp18[1] = 0.0f;
    sp18[2] = 120.0f;
    func_80042D14(sp24, sp18, D_80165834);
    D_80165840[0] = sp24[0];
    D_80165840[1] = sp24[1];
    D_80165840[2] = sp24[2];
}

UNUSED func_80041A70(void) {

}

void func_80041A78(Mat4 arg0, s32 arg1, s32 arg2) {
    arg0[0][0] = 1.0f;
    arg0[1][1] = 1.0f;
    arg0[2][2] = 1.0f;
    arg0[1][0] = 0.0f;
    arg0[2][0] = 0.0f;
    arg0[0][1] = 0.0f;
    arg0[3][0] = arg1;
    arg0[2][1] = 0.0f;
    arg0[0][2] = 0.0f;
    arg0[1][2] = 0.0f;
    arg0[3][2] = 0.0f;
    arg0[3][1] = arg2;
    arg0[0][3] = 0.0f;
    arg0[1][3] = 0.0f;
    arg0[2][3] = 0.0f;
    arg0[3][3] = 1.0f;
}

void func_80041AD8(Mat4 arg0, u16 arg1) {
    f32 sp1C = sins(arg1);
    f32 temp_f0 = coss(arg1);
    
    arg0[0][0] = temp_f0;
    arg0[1][0] = -sp1C;
    arg0[1][1] = temp_f0;
    arg0[0][1] = sp1C;
    arg0[2][0] = 0.0f;
    arg0[3][0] = 0.0f;
    arg0[2][1] = 0.0f;
    arg0[3][1] = 0.0f;
    arg0[0][2] = 0.0f;
    arg0[1][2] = 0.0f;
    arg0[3][2] = 0.0f;
    arg0[0][3] = 0.0f;
    arg0[1][3] = 0.0f;
    arg0[2][3] = 0.0f;
    arg0[2][2] = 1.0f;
    arg0[3][3] = 1.0f;
}

void func_80041B68(Mat4 arg0, f32 arg1) {
    arg0[1][0] = 0.0f;
    arg0[2][0] = 0.0f;
    arg0[3][0] = 0.0f;
    arg0[0][1] = 0.0f;
    arg0[2][1] = 0.0f;
    arg0[3][1] = 0.0f;
    arg0[0][2] = 0.0f;
    arg0[1][2] = 0.0f;
    arg0[3][2] = 0.0f;
    arg0[0][3] = 0.0f;
    arg0[1][3] = 0.0f;
    arg0[2][3] = 0.0f;
    arg0[2][2] = 1.0f;
    arg0[3][3] = 1.0f;
    arg0[0][0] = arg1;
    arg0[1][1] = arg1;
}

void func_80041BBC(Mat4 arg0, u16 arg1, f32 arg2) {
    f32 sp1C = sins(arg1);
    f32 temp_f12 = coss(arg1) * arg2;

    arg0[2][0] = 0.0f;
    arg0[0][0] = temp_f12;
    arg0[1][1] = temp_f12;
    arg0[2][1] = 0.0f;
    arg0[1][0] = -sp1C * arg2;
    arg0[0][2] = 0.0f;
    arg0[1][2] = 0.0f;
    arg0[0][1] = sp1C * arg2;
    arg0[3][2] = 0.0f;
    arg0[0][3] = 0.0f;
    arg0[1][3] = 0.0f;
    arg0[2][3] = 0.0f;
    arg0[3][0] = 1.0f;
    arg0[3][1] = 1.0f;
    arg0[2][2] = 1.0f;
    arg0[3][3] = 1.0f;
}

/**
 * @brief arg1 and arg2 are s32's into floats?!?
 * 
 * @param arg0 
 * @param arg1 
 * @param arg2 
 * @param arg3 
 * @param arg4 
 */
void func_80041C64(Mat4 arg0, s32 arg1, s32 arg2, u16 arg3, f32 arg4) {
  f32 sp24 = sins(arg3);
  f32 temp_f12 = coss(arg3) * arg4;

  arg0[2][0] = 0.0f;
  arg0[0][0] = temp_f12;
  arg0[1][0] = (-sp24) * arg4;
  arg0[3][0] = (f32) arg1;
  arg0[1][1] = temp_f12;
  arg0[0][1] = sp24 * arg4;
  arg0[2][1] = 0.0f;
  arg0[3][1] = (f32) arg2;
  arg0[0][2] = 0.0f;
  arg0[1][2] = 0.0f;
  arg0[2][2] = 1.0f;
  arg0[3][3] = 1.0f;
  arg0[3][2] = 0.0f;
  arg0[0][3] = 0.0f;
  arg0[1][3] = 0.0f;
  arg0[2][3] = 0.0f;
}

// Likely D_801658**[index] = 1; * denotes wildcard
void func_80041D24(void) {
    D_801658FE = 1;
}

void guOrtho(Mtx *, f32, f32, f32, f32, f32, f32, f32); /* extern */
extern s32 gActiveScreenMode;
extern s8 D_801658FE;
extern Mtx D_80183D60[];

void func_80041D34(void) {
    guOrtho(&D_80183D60, 0.0f, 320.0f, 240.0f, 0.0f, -1.0f, 1.0f, 1.0f);
    switch (gActiveScreenMode) {
    case SCREEN_MODE_1P:
        guOrtho(&gGfxPool->mtxPool[5], 0.0f, 320.0f, 240.0f, 0.0f, -1.0f, 1.0f, 1.0f);
        break;
    case SCREEN_MODE_2P_SPLITSCREEN_VERTICAL:
        guOrtho(&gGfxPool->mtxPool[5], 0.0f, 160.0f, 120.0f, 0.0f, -1.0f, 1.0f, 1.0f);
        break;
    case SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL:
        if (D_801658FE == 0) {
            guOrtho(&gGfxPool->mtxPool[5], 0.0f, 320.0f, 120.0f, 0.0f, -1.0f, 1.0f, 1.0f);
        }
        else {
            guOrtho(&gGfxPool->mtxPool[5], 0.0f, 320.0f, 240.0f, 0.0f, -1.0f, 1.0f, 1.0f);
        }
        break;
    case SCREEN_MODE_3P_4P_SPLITSCREEN:
        guOrtho(&gGfxPool->mtxPool[5], 0.0f, 320.0f, 240.0f, 0.0f, -1.0f, 1.0f, 1.0f);
        break;
    }
}

void func_80041EF4(void) {
    gDPSetTexturePersp(gDisplayListHead++, G_TP_PERSP);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[5]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
}

extern s32 D_8018D120;
//void func_80022180(Mtx*, Mat4);

UNUSED void func_80041F54(s32 arg0, s32 arg1) {
    Mat4 matrix;

    func_80041A78(matrix, arg0, arg1);
    func_80022180(&gGfxPool->mtxPool[D_8018D120 + 0xB], matrix);

    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[D_8018D120 + 0xB]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    D_8018D120++;
}

UNUSED void func_80042000(u16 arg0) {
    Mat4 matrix;

    func_80041AD8(matrix, arg0);
    func_80022180(&gGfxPool->mtxPool[D_8018D120 + 0xB], &matrix);

    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[D_8018D120 + 0xB]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    D_8018D120++;
}

UNUSED void func_800420A8(f32 arg0) {
    Mat4 matrix;

    func_80041B68(matrix, arg0);
    func_80022180(&gGfxPool->mtxPool[D_8018D120 + 0xB], matrix);

    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[D_8018D120 + 0xB]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    D_8018D120++;

}

UNUSED void func_8004214C(u16 arg1, f32 arg2) {
    Mat4 matrix;

    func_80041BBC(matrix, arg1, arg2);
    func_80022180(&gGfxPool->mtxPool[D_8018D120 + 0xB], matrix);

    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[D_8018D120 + 0xB]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    D_8018D120++;
}

UNUSED void func_800421FC(s32 arg0, s32 arg1, f32 arg2) {
    Mat4 matrix;

    func_80041A78(matrix, arg0, arg1);
    func_80022180(&gGfxPool->mtxPool[D_8018D120 + 0xB], matrix);

    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[D_8018D120 + 0xB]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    D_8018D120++;

    func_80041B68(matrix, arg2);
    func_80022180(&gGfxPool->mtxPool[D_8018D120 + 0xB], matrix);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[D_8018D120 + 0xB]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
    D_8018D120++;
}

void func_80042330(s32 arg0, s32 arg1, u16 arg2, f32 arg3) {
    Mat4 matrix;
    func_80041C64(matrix, arg0, arg1, arg2, arg3);
    func_80022180(&gGfxPool->mtxPool[D_8018D120 + 0xB], matrix);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[D_8018D120 + 0xB]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    D_8018D120++;
}

UNUSED void func_800423F0(Mat4 arg0, u16 arg1, u16 arg2, u16 arg3) {
    f32 sp3C;
    f32 temp_f20;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 temp_f0;


    sp3C = sins(arg1);
    temp_f20 = coss(arg1);
    sp34 = sins(arg2);
    sp30 = coss(arg2);
    sp2C = sins(arg3);
    temp_f0 = coss(arg3);


    arg0[0][0] = (f32) (sp30 * temp_f0 + (sp3C * sp34 * sp2C));
    arg0[1][0] = (f32) ((-sp30 * sp2C) + (sp3C * sp34 * temp_f0));
    arg0[2][0] = (f32) (temp_f20 * sp34);
    arg0[3][0] = 0.0f;
    arg0[0][1] = (f32) (temp_f20 * sp2C);
    arg0[1][1] = (f32) (temp_f20 * temp_f0);
    arg0[2][1] = (f32) -sp3C;
    arg0[3][1] = 0.0f;
    arg0[0][2] = (f32) ((-sp34 * temp_f0) + (sp3C * sp30 * sp2C));
    arg0[1][2] = (f32) ((sp34 * sp2C) + (sp3C * sp30 * temp_f0));
    arg0[2][2] = (f32) (temp_f20 * sp30);
    arg0[3][2] = 0.0f;
    arg0[0][3] = 0.0f;
    arg0[1][3] = 0.0f;
    arg0[2][3] = 0.0f;
    arg0[3][3] = 1.0f;
}

UNUSED void func_8004252C(Mat4 arg0, u16 arg1, u16 arg2) {
    f32 sp2C = sins(arg1);
    f32 sp28 = coss(arg1);
    f32 sp24 = sins(arg2);
    f32 temp_f0 = coss(arg2);

    arg0[1][0] = sp2C * sp24;
    arg0[2][0] = sp28 * sp24;
    arg0[0][1] = 0.0f;
    arg0[0][0] = temp_f0;
    arg0[2][1] = -sp2C;
    arg0[0][2] = -sp24;
    arg0[1][1] = sp28;
    arg0[1][2] = sp2C * temp_f0;
    arg0[2][2] = sp28 * temp_f0;
}

void func_800425D0(Mat4 arg0, Vec3f arg1, Vec3s arg2, f32 arg3) {
    f32 sp44 = sins(arg2[0]);
    f32 temp_f22 = coss(arg2[0]);
    f32 sp3C = sins(arg2[1]);
    f32 sp38 = coss(arg2[1]);
    f32 sp34 = sins(arg2[2]);
    f32 temp_f0 = coss(arg2[2]);

    arg0[0][0] = ((sp38 * temp_f0) + (sp44 * sp3C * sp34)) * arg3;
    arg0[1][0] = ((-sp38 * sp34) + (sp44 * sp3C * temp_f0)) * arg3;
    arg0[2][0] = (temp_f22 * sp3C) * arg3;
    arg0[3][0] = arg1[0];
    arg0[0][1] = temp_f22 * sp34 * arg3;
    arg0[1][1] = temp_f22 * temp_f0 * arg3;
    arg0[2][1] = -sp44 * arg3;
    arg0[3][1] = arg1[1];
    arg0[0][2] = ((-sp3C * temp_f0) + (sp44 * sp38 * sp34)) * arg3;
    arg0[1][2] = ((sp3C * sp34) + (sp44 * sp38 * temp_f0)) * arg3;
    arg0[2][2] = temp_f22 * sp38 * arg3;
    arg0[3][2] = arg1[2];
    arg0[0][3] = 0.0f;
    arg0[1][3] = 0.0f;
    arg0[2][3] = 0.0f;
    arg0[3][3] = 1.0f;
}

void func_80042760(Mat4 arg0, Vec3f arg1, Vec3f arg2, f32 arg3) {
    arg0[0][0] = arg3;
    arg0[1][0] = 0.0f;
    arg0[2][0] = 0.0f;
    arg0[3][0] = arg1[0] - arg2[0];
    arg0[0][1] = 0.0f;
    arg0[1][1] = -arg3;
    arg0[2][1] = 0.0f;
    arg0[3][1] = arg1[1] - arg2[1];
    arg0[0][2] = 0.0f;
    arg0[1][2] = 0.0f;
    arg0[2][2] = -arg3;
    arg0[3][2] = arg1[2] - arg2[2];
    arg0[0][3] = 0.0f;
    arg0[1][3] = 0.0f;
    arg0[2][3] = 0.0f;
    arg0[3][3] = 1.0f;
}

/**
 * @brief Tried to put the definitions in the declares. However, sp3C wants to be at the top.
 * Something may be possible with some padding. Couldn't find a way though. So we get big mess.
 * 
 * @param arg0
 * @param arg1
 **/

void func_800427DC(s32 arg0, Mat4 arg1) {
    f32 sp3C;
    struct_80165C18_entry *temp_s0 = &D_80165C18[arg0];
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 temp_f0;
    f32 temp_f20;

    sp3C = sins(temp_s0->unk_0B2);
    temp_f20 = coss(temp_s0->unk_0B2);
    sp34 = sins(temp_s0->unk_0B4);
    sp30 = coss(temp_s0->unk_0B4);
    sp2C = sins(temp_s0->unk_0B6);
    temp_f0 = coss(temp_s0->unk_0B6);

    arg1[0][0] = temp_s0->unk_000 * ((sp30 * temp_f0) + (sp3C * sp34 * sp2C));
    arg1[1][0] = temp_s0->unk_000 * ((-sp30 * sp2C) + sp3C * sp34 * temp_f0);
    arg1[2][0] = temp_s0->unk_000 * (temp_f20 * sp34);
    arg1[3][0] = temp_s0->unk_004[0];
    arg1[0][1] = temp_s0->unk_000 * (temp_f20 * sp2C);
    arg1[1][1] = temp_s0->unk_000 * (temp_f20 * temp_f0);
    arg1[2][1] = temp_s0->unk_000 * -sp3C;
    arg1[3][1] = temp_s0->unk_004[1];
    arg1[0][2] = temp_s0->unk_000 * ((-sp34 * temp_f0) + (sp3C * sp30 * sp2C));
    arg1[1][2] = temp_s0->unk_000 * ((sp34 * sp2C) + (sp3C * sp30 * temp_f0));
    arg1[2][2] = temp_s0->unk_000 * (temp_f20 * sp30);
    arg1[3][2] = temp_s0->unk_004[2];
    arg1[0][3] = 0.0f;
    arg1[1][3] = 0.0f;
    arg1[2][3] = 0.0f;
    arg1[3][3] = 1.0f;
}

UNUSED void func_80042984(Mat4 arg0, f32 arg1) {
    arg0[0][0] *= arg1;
    arg0[1][0] *= arg1;
    arg0[2][0] *= arg1;
}

UNUSED void func_800429B8(Mat4 arg0, f32 arg1) {
    arg0[0][1] *= arg1;
    arg0[1][1] *= arg1;
    arg0[2][1] *= arg1;
}

UNUSED void func_800429EC(Mat4 arg0, f32 arg1) {
    arg0[0][2] *= arg1;
    arg0[1][2] *= arg1;
    arg0[2][2] *= arg1;
}

void func_80042A20(Mat4 arg0, Vec3f arg1, Vec3f arg2, u16 arg3, f32 arg4) {
    Vec3f sp44;
    Vec3f sp38;
    Vec3f sp2C;

    vec3f_set_dupe_2_electric_boogaloo(sp44, sins(arg3), 0.0f, coss(arg3));
    func_80041530(arg1);
    func_80041594(sp38, arg1, sp44);
    func_80041530(sp38);
    func_80041594(sp2C, sp38, arg1);
    func_80041530(sp2C);
    arg0[0][0] = sp38[0] * arg4;
    arg0[0][1] = sp38[1] * arg4;
    arg0[0][2] = sp38[2] * arg4;
    arg0[3][0] = arg2[0];
    arg0[1][0] = arg1[0] * arg4;
    arg0[1][1] = arg1[1] * arg4;
    arg0[1][2] = arg1[2] * arg4;
    arg0[3][1] = arg2[1];
    arg0[2][0] = sp2C[0] * arg4;
    arg0[2][1] = sp2C[1] * arg4;
    arg0[2][2] = sp2C[2] * arg4;
    arg0[3][2] = arg2[2];
    arg0[0][3] = 0.0f;
    arg0[1][3] = 0.0f;
    arg0[2][3] = 0.0f;
    arg0[3][3] = 1.0f;
}

UNUSED void func_80042B5C(Vec3f arg0, Vec3f arg1, Vec3s arg2) {
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 temp_f4;
    f32 sp64;
    f32 sp60;
    f32 temp_f8;
    f32 sp58;
    f32 sp54;
    f32 sine1;
    f32 cosine1;
    f32 sine2;
    f32 cosine2;
    f32 sine3;
    f32 cosine3;

    sine1   = sins(arg2[0]);
    cosine1 = coss(arg2[0]);
    sine2   = sins(arg2[1]);
    cosine2 = coss(arg2[1]);
    sine3   = sins(arg2[2]);
    cosine3 = coss(arg2[2]);
    sp74    = arg1[0] * ((cosine2 * cosine3) + ((sine1 * sine2) * sine3));
    temp_f4 = arg1[1] * ((-cosine2 * sine3) + ((sine1 * sine2) * cosine3));
    temp_f8 = arg1[2] * (cosine1 * sine2);
    sp70 = arg1[0] * (cosine1 * sine3);
    sp64 = arg1[1] * (cosine1 * cosine3);
    sp58 = arg1[2] * -sine1;
    sp6C = arg1[0] * ((-sine2 * cosine3) + ((sine1 * cosine2) * sine3));
    sp60 = arg1[1] * ((sine2 * sine3) + ((sine1 * cosine2) * cosine3));
    sp54 = arg1[2] * (cosine1 * cosine2);
    arg0[0] = sp74 + temp_f4 + temp_f8;
    arg0[1] = sp70 + sp64 + sp58;
    arg0[2] = sp6C + sp60 + sp54;
}

void func_80042D14(Vec3f arg0, Vec3f arg1, Vec3s arg2) {
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sine1;
    f32 cosine1;
    f32 sine2;
    f32 cosine2;

    sp2C = arg1[0];
    sp28 = arg1[1];
    sp24 = arg1[2];
    sine1   = sins(arg2[0]);
    cosine1 = coss(arg2[0]);
    sine2   = sins(arg2[1]);
    cosine2 = coss(arg2[1]);
    arg0[0] = (sp2C * cosine2) - (sp24 * sine2);
    arg0[1] = (sp2C * sine1 * sine2) + (sp28 * cosine1) + (sp24 * sine1 * cosine2);
    arg0[2] = ((sp2C * cosine1 * sine2) - (sp28 * sine1)) + (sp24 * cosine1 * cosine2);
}

void func_80042E00(Vec3f arg0, Vec3s arg1, f32 arg2) {
    Mat4 matrix;

    func_800425D0(matrix, arg0, arg1, arg2);
    func_80022180(&gGfxPool->mtxPool[D_8018D120 + 0xB], matrix);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[D_8018D120 + 0xB]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    D_8018D120++;
}

UNUSED void func_80042EB8(Vec3f arg0, Vec3f arg1, f32 arg2) {
    Mat4 matrix;

    func_80042760(matrix, arg0, arg1, arg2);
    func_80022180(&gGfxPool->mtxPool[D_8018D120 + 0xB], matrix);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[D_8018D120 + 0xB]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    D_8018D120++;
}


void func_80042F70(Vec3f arg0, Vec3su arg1, f32 arg2) {
    Mat4 matrix;
    Vec3su sp20;

    sp20[0] = arg1[0] + 0x8000;
    sp20[1] = arg1[1] + 0x8000;
    sp20[2] = arg1[2];
    func_800425D0(matrix, arg0, sp20, arg2);
    func_80022180(&gGfxPool->mtxPool[D_8018D120 + 0xB], matrix);

    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[D_8018D120 + 0xB]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    D_8018D120++;
}

void func_80043050(Vec3f arg0,Vec3f arg1, f32 arg2) {
    Mat4 matrix;

    func_80042A20(matrix, arg1, arg0, 0, arg2);
    func_80022180(&gGfxPool->mtxPool[D_8018D120 + 0xB], matrix);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[D_8018D120 + 0xB]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    D_8018D120++;
}

void func_80043104(s32 arg0) {
    Mat4 sp20;

    func_800427DC(arg0, sp20);
    func_80022180(&gGfxPool->mtxPool[D_8018D120 + 0xB], sp20);

    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[D_8018D120 + 0xB]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    D_8018D120++;
}
