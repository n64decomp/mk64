#include <ultra64.h>
#include <macros.h>
#include <common_structs.h>
#include "code_80040E50.h"
#include "main.h"
#include "variables.h"
#include "math_util.h"

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

s32 func_80041500(Vec3f arg0, f32 arg1, f32 arg2, f32 arg3) {
    arg0[0] = arg1;
    arg0[1] = arg2;
    arg0[2] = arg3;
    return &arg0;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
// weird diff
Vec3f *func_80041530(Vec3f dest) {
    f32 invsqrt = 1.0f / sqrtf(dest[0] * dest[0] + dest[1] * dest[1] + dest[2] * dest[2]);
    dest[0] *= invsqrt;
    dest[1] *= invsqrt;
    dest[2] *= invsqrt;
    return  (Vec3f *) dest;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_80041530.s")
#endif

Vec3f *func_80041594(Vec3f arg0, Vec3f arg1, Vec3f arg2) {

    arg0[0] = (arg1[1] * arg2[2]) - (arg2[1] * arg1[2]);
    arg0[1] = (arg1[2] * arg2[0]) - (arg2[2] * arg1[0]);
    arg0[2] = (arg1[0] * arg2[1]) - (arg2[0] * arg1[1]);

    return &arg0;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
UNUSED s32 func_80041608(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    f32 temp_f0;
    f32 temp_f2;
    s32 phi_v1 = 0;

    temp_f0 = arg2 - arg0;
    temp_f2 = arg3 - arg1;
    if (((arg2 - arg0 * arg2 - arg0) + (temp_f2 * temp_f2)) <= (arg4 * arg4)) {
        return phi_v1 = 1;
    }
    return phi_v1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_80041608.s")
#endif

s32 func_80041658(f32 arg0, f32 arg1) {
    return -func_802B7830(arg0, arg1) & 0xFFFF;
}

UNUSED s32 func_80041680(f32 arg0, f32 arg1) {
    return func_802B7830(arg1, arg0);
}

UNUSED s32 func_800416AC(f32 arg0, f32 arg1) {
    return func_802B7830(arg1, arg0);
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
    return func_802B7830(arg1 - arg0, arg3 - arg2);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_800417B4(s32 arg0, s32 arg1) {
    s32 temp_t0;
    s32 temp_t6;
    s32 temp_t7;

    temp_t6 = arg0 & 0xFFFF;
    temp_t7 = arg1 & 0xFFFF;
    if ((temp_t7 >> 8) != (temp_t6 >> 8)) {
        temp_t0 = (temp_t7 - temp_t6) & 0xFFFF;
        if (temp_t0 < 0x400) {
            return (temp_t6 + 0x80) & 0xFFFF;
        } else if (temp_t0 < 0x800) {
            return (temp_t6 + 0x200) & 0xFFFF;
        } else if (temp_t0 < 0x4000) {
            return (temp_t6 + 0x400) & 0xFFFF;
        } else if (temp_t0 < 0x8000) {
            return (temp_t6 + 0x700) & 0xFFFF;
        } else if (temp_t0 < 0xC000) {
            return (temp_t6 - 0x700) & 0xFFFF;
        } else if (temp_t0 < 0xF800) {
            return (temp_t6 - 0x400) & 0xFFFF;
        } else if (temp_t0 < 0xFC00) {
            return (temp_t6 - 0x200) & 0xFFFF;
        } else {
            return (temp_t6 - 0x80) & 0xFFFF;
        }
    }
    return temp_t7 & 0xFFFF;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_800417B4.s")
#endif

s32 func_800418AC(f32 arg0, f32 arg1, Vec3f arg2) {
    return func_802B7830(arg0 - arg2[0], arg1 - arg2[2]);
}

s32 func_800418E8(f32 arg0, f32 arg1, Vec3f arg2) {
    return func_802B7830(arg0 - arg2[1], arg1 - arg2[2]);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_802ADDC8(s32, s32, s32, f32); // extern

s32 func_80041924(Vec3f arg0, Vec3f arg1) {
    s32 phi_v1 = 0;

    func_802ADDC8(0x41200000, arg1[0], arg1[1], arg1[2]);
    if (arg0[1] == 1) {
        phi_v1 = 1;
    }
    return phi_v1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_80041924.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_80041770(f32, f32, s32, s32); // extern

s32 func_80041980(void *arg0, void *arg1, u16 arg2) {
    s32 sp18;
    s32 temp_t9;
    s32 phi_t0;

    sp18 = 0;
    temp_t9 = ((func_80041770(arg1->unk0, arg0->unk0, arg1->unk8, arg0->unk8) + (arg2 / 2)) - arg1->unk26) & 0xFFFF;
    phi_t0 = sp18;
    if ((temp_t9 >= 0) && (arg2 >= temp_t9)) {
        phi_t0 = 1;
    }
    return phi_t0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_80041980.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80042D14(f32 *, f32 *, ? *); // extern
extern ? D_80165834;
extern ? D_80165840;

void func_800419F8(void) {
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp18;
    f32 *temp_a1;

    temp_a1 = &sp24;
    sp24 = 0.0f;
    sp28 = 0.0f;
    sp2C = 120.0f;
    func_80042D14(&sp18, temp_a1, &D_80165834);
    D_80165840.unk0 = sp18;
    D_80165840.unk1 = sp1C;
    D_80165840.unk2 = sp20;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_800419F8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_80041A78(void *arg0, s32 arg1, s32 arg2) {
    arg0->unk10 = 0.0f;
    arg0->unk20 = 0.0f;
    arg0->unk4 = 0.0f;
    arg0->unk30 = arg1;
    arg0->unk24 = 0.0f;
    arg0->unk8 = 0.0f;
    arg0->unk18 = 0.0f;
    arg0->unk38 = 0.0f;
    arg0->unk34 = arg2;
    arg0->unkC = 0.0f;
    arg0->unk1C = 0.0f;
    arg0->unk2C = 0.0f;
    arg0->unk0 = 1.0f;
    arg0->unk14 = 1.0f;
    arg0->unk28 = 1.0f;
    arg0->unk3C = 1.0f;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_80041A78.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
f32 sins(u16, void *); // extern
f32 coss(u16); // extern

void func_80041AD8(void *arg0, u16 arg1) {
    f32 sp1C;
    f32 temp_f0;
    void *temp_a2;

    temp_a2 = arg0;
    arg0 = temp_a2;
    sp1C = sins(arg1, temp_a2);
    temp_f0 = coss(arg1);
    arg0->unk0 = temp_f0;
    arg0->unk10 = -sp1C;
    arg0->unk14 = temp_f0;
    arg0->unk4 = sp1C;
    arg0->unk20 = 0.0f;
    arg0->unk30 = 0.0f;
    arg0->unk24 = 0.0f;
    arg0->unk34 = 0.0f;
    arg0->unk8 = 0.0f;
    arg0->unk18 = 0.0f;
    arg0->unk38 = 0.0f;
    arg0->unkC = 0.0f;
    arg0->unk1C = 0.0f;
    arg0->unk2C = 0.0f;
    arg0->unk28 = 1.0f;
    arg0->unk3C = 1.0f;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_80041AD8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_80041B68(void *arg0, f32 arg1) {
    arg0->unk10 = 0.0f;
    arg0->unk20 = 0.0f;
    arg0->unk30 = 0.0f;
    arg0->unk4 = 0.0f;
    arg0->unk24 = 0.0f;
    arg0->unk34 = 0.0f;
    arg0->unk8 = 0.0f;
    arg0->unk18 = 0.0f;
    arg0->unk38 = 0.0f;
    arg0->unkC = 0.0f;
    arg0->unk1C = 0.0f;
    arg0->unk2C = 0.0f;
    arg0->unk28 = 1.0f;
    arg0->unk3C = 1.0f;
    arg0->unk0 = arg1;
    arg0->unk14 = arg1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_80041B68.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
f32 sins(u16, void *); // extern
f32 coss(u16); // extern

void func_80041BBC(void *arg0, u16 arg1, f32 arg2) {
    f32 sp1C;
    f32 temp_f12;
    void *temp_a2;

    temp_a2 = arg0;
    arg0 = temp_a2;
    sp1C = sins(arg1, temp_a2);
    temp_f12 = coss(arg1) * arg2;
    arg0->unk20 = 0.0f;
    arg0->unk0 = temp_f12;
    arg0->unk14 = temp_f12;
    arg0->unk24 = 0.0f;
    arg0->unk10 = -sp1C * arg2;
    arg0->unk8 = 0.0f;
    arg0->unk18 = 0.0f;
    arg0->unk4 = sp1C * arg2;
    arg0->unk38 = 0.0f;
    arg0->unkC = 0.0f;
    arg0->unk1C = 0.0f;
    arg0->unk2C = 0.0f;
    arg0->unk30 = 1.0f;
    arg0->unk34 = 1.0f;
    arg0->unk28 = 1.0f;
    arg0->unk3C = 1.0f;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_80041BBC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
f32 sins(u16); // extern
f32 coss(u16); // extern

void func_80041C64(void *arg0, s32 arg1, s32 arg2, u16 arg3, f32 arg4) {
    f32 sp24;
    f32 temp_f12;

    sp24 = sins(arg3);
    temp_f12 = coss(arg3) * arg4;
    arg0->unk20 = 0.0f;
    arg0->unk0 = temp_f12;
    arg0->unk10 = -sp24 * arg4;
    arg0->unk14 = temp_f12;
    arg0->unk4 = sp24 * arg4;
    arg0->unk24 = 0.0f;
    arg0->unk30 = arg1;
    arg0->unk8 = 0.0f;
    arg0->unk18 = 0.0f;
    arg0->unk38 = 0.0f;
    arg0->unkC = 0.0f;
    arg0->unk1C = 0.0f;
    arg0->unk2C = 0.0f;
    arg0->unk28 = 1.0f;
    arg0->unk3C = 1.0f;
    arg0->unk34 = arg2;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_80041C64.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern s8 D_801658FE;

void func_80041D24(void) {
    D_801658FE = 1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_80041D24.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 5bd751fca3befef73d6a2e20d84a88cc918a77fe
void guOrtho(Mtx *, f32, f32, f32, f32, f32, f32, f32); /* extern */
extern s32 gActiveScreenMode;
extern s8 D_801658FE;
extern Mtx D_80183D60;

void func_80041D34(void) {
    guOrtho(&D_80183D60, 0.0f, 320.0f, 240.0f, 0.0f, -1.0f, 1.0f, 1.0f);
    switch (gActiveScreenMode) {                              /* irregular */
    case 0:
        guOrtho(&gGfxPool->mtxPool[5], 0.0f, 320.0f, 240.0f, 0.0f, -1.0f, 1.0f, 1.0f);
        break;
    case 2:
        guOrtho(&gGfxPool->mtxPool[5], 0.0f, 160.0f, 120.0f, 0.0f, -1.0f, 1.0f, 1.0f);
        break;
    case 1:
        if (D_801658FE == 0) {
            guOrtho(&gGfxPool->mtxPool[5], 0.0f, 320.0f, 120.0f, 0.0f, -1.0f, 1.0f, 1.0f);
            break;
        }
        guOrtho(&gGfxPool->mtxPool[5], 0.0f, 320.0f, 240.0f, 0.0f, -1.0f, 1.0f, 1.0f);
        break;
    case 3:
        guOrtho(&gGfxPool->mtxPool[5], 0.0f, 320.0f, 240.0f, 0.0f, -1.0f, 1.0f, 1.0f);
        break;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_80041D34.s")
#endif

void func_80041EF4(void) {
    gDPSetTexturePersp(gDisplayListHead++, G_TP_PERSP);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[5]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
}

#ifdef MIPS_TO_C
? func_80022180(s32, ? *, s32 *);                   /* extern */
? func_80041A78(? *, s32, ?);                       /* extern */
extern s32 D_8018D120;
extern void *gDisplayListHead;
extern s32 gGfxPool;

UNUSED void func_80041F54(s32 arg0, ? arg1) {
    ? sp20;
    void *temp_v1;

    func_80041A78(&sp20, arg0, arg1);
    func_80022180(gGfxPool + (D_8018D120 << 6) + 0x2C0, &sp20, &D_8018D120);
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x01020040;
    temp_v1->unk4 = (s32) ((gGfxPool + (D_8018D120 << 6) + 0x2C0) & 0x1FFFFFFF);
    D_8018D120 += 1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_80041F54.s")
#endif

#ifdef MIPS_TO_C
? func_80022180(s32, ? *, s32 *);                   /* extern */
? func_80041AD8(? *, s32);                          /* extern */
extern s32 D_8018D120;
extern void *gDisplayListHead;
extern s32 gGfxPool;

UNUSED void func_80042000(s32 arg0) {
    ? sp20;
    void *temp_v1;

    func_80041AD8(&sp20, arg0 & 0xFFFF);
    func_80022180(gGfxPool + (D_8018D120 << 6) + 0x2C0, &sp20, &D_8018D120);
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x01020040;
    temp_v1->unk4 = (s32) ((gGfxPool + (D_8018D120 << 6) + 0x2C0) & 0x1FFFFFFF);
    D_8018D120 += 1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_80042000.s")
#endif

#ifdef MIPS_TO_C
? func_80022180(s32, ? *, s32 *);                   /* extern */
? func_80041B68(? *, f32);                          /* extern */
extern s32 D_8018D120;
extern void *gDisplayListHead;
extern s32 gGfxPool;

UNUSED void func_800420A8(f32 arg0) {
    ? sp20;
    void *temp_v1;

    func_80041B68(&sp20, arg0);
    func_80022180(gGfxPool + (D_8018D120 << 6) + 0x2C0, &sp20, &D_8018D120);
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x01020040;
    temp_v1->unk4 = (s32) ((gGfxPool + (D_8018D120 << 6) + 0x2C0) & 0x1FFFFFFF);
    D_8018D120 += 1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_800420A8.s")
#endif

#ifdef MIPS_TO_C
? func_80022180(s32, ? *, s32 *);                   /* extern */
? func_80041BBC(?, ? *, u16, ?);                    /* extern */
extern s32 D_8018D120;
extern void *gDisplayListHead;
extern s32 gGfxPool;

UNUSED void func_8004214C(u16 arg0, ? arg1) {
    ? sp20;
    void *temp_v1;

    func_80041BBC(arg1, &sp20, arg0, arg1);
    func_80022180(gGfxPool + (D_8018D120 << 6) + 0x2C0, &sp20, &D_8018D120);
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x01020040;
    temp_v1->unk4 = (s32) ((gGfxPool + (D_8018D120 << 6) + 0x2C0) & 0x1FFFFFFF);
    D_8018D120 += 1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_8004214C.s")
#endif

#ifdef MIPS_TO_C
? func_80022180(s32, ? *);                          /* extern */
? func_80041A78(? *, s32, s32);                     /* extern */
? func_80041B68(? *, s32, void **);                 /* extern */
extern s32 D_8018D120;
extern void *gDisplayListHead;
extern s32 gGfxPool;

UNUSED void func_800421FC(s32 arg0, s32 arg1, s32 arg2) {
    ? sp30;
    void *temp_v1;
    void *temp_v1_2;

    func_80041A78(&sp30, arg0, arg1);
    func_80022180(gGfxPool + (D_8018D120 << 6) + 0x2C0, &sp30);
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x01020040;
    temp_v1->unk4 = (s32) ((gGfxPool + (D_8018D120 << 6) + 0x2C0) & 0x1FFFFFFF);
    D_8018D120 += 1;
    func_80041B68(&sp30, arg2, &gDisplayListHead);
    func_80022180(gGfxPool + (D_8018D120 << 6) + 0x2C0, &sp30);
    temp_v1_2 = gDisplayListHead;
    gDisplayListHead = temp_v1_2 + 8;
    temp_v1_2->unk0 = 0x01000040;
    temp_v1_2->unk4 = (s32) ((gGfxPool + (D_8018D120 << 6) + 0x2C0) & 0x1FFFFFFF);
    D_8018D120 += 1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_800421FC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80022180(void *, ? *, s32 *); // extern
? func_80041C64(f32, ? *, s32, s32, u16, f32); // extern
extern s32 D_8018D120;
extern void *gDisplayListHead;

void func_80042330(s32 arg0, s32 arg1, u16 arg2, f32 arg3) {
    ? sp28;
    void *temp_v1;

    func_80041C64(arg3, &sp28, arg0, arg1, arg2, arg3);
    func_80022180(gGfxPool + (D_8018D120 << 6) + 0x2C0, &sp28, &D_8018D120);
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x1020040;
    temp_v1->unk4 = (gGfxPool + (D_8018D120 << 6) + 0x2C0) & 0x1FFFFFFF;
    D_8018D120 = D_8018D120 + 1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_80042330.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
f32 sins(u16); // extern
f32 coss(u16); // extern

void func_800425D0(void *arg0, void *arg1, void *arg2, f32 arg3) {
    f32 sp44;
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f22;
    f32 temp_f8;

    sp44 = sins(arg2->unk0);
    temp_f22 = coss(arg2->unk0);
    sp3C = sins(arg2->unk2);
    sp38 = coss(arg2->unk2);
    sp34 = sins(arg2->unk4);
    temp_f0 = coss(arg2->unk4);
    temp_f12 = sp44 * sp3C;
    temp_f8 = temp_f12 * temp_f0;
    arg0->unk0 = ((sp38 * temp_f0) + (temp_f12 * sp34)) * arg3;
    arg0->unk10 = ((-sp38 * sp34) + temp_f8) * arg3;
    arg0->unk20 = temp_f22 * sp3C * arg3;
    arg0->unk30 = arg1->unk0;
    arg0->unk4 = temp_f22 * sp34 * arg3;
    arg0->unk14 = temp_f22 * temp_f0 * arg3;
    temp_f12_2 = sp44 * sp38;
    arg0->unk24 = -sp44 * arg3;
    arg0->unk34 = arg1->unk4;
    arg0->unk8 = ((-sp3C * temp_f0) + (temp_f12_2 * sp34)) * arg3;
    arg0->unk18 = ((sp3C * sp34) + (temp_f12_2 * temp_f0)) * arg3;
    arg0->unk28 = temp_f22 * sp38 * arg3;
    arg0->unkC = 0.0f;
    arg0->unk1C = 0.0f;
    arg0->unk2C = 0.0f;
    arg0->unk3C = 1.0f;
    arg0->unk38 = arg1->unk8;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_800425D0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_80042760(void *arg0, void *arg1, void *arg2, f32 arg3) {
    f32 temp_f0;

    arg0->unk10 = 0.0f;
    arg0->unk20 = 0.0f;
    arg0->unk0 = arg3;
    temp_f0 = -arg3;
    arg0->unk4 = 0.0f;
    arg0->unk14 = temp_f0;
    arg0->unk24 = 0.0f;
    arg0->unk30 = arg1->unk0 - arg2->unk0;
    arg0->unk28 = temp_f0;
    arg0->unk8 = 0.0f;
    arg0->unk18 = 0.0f;
    arg0->unk34 = arg1->unk4 - arg2->unk4;
    arg0->unkC = 0.0f;
    arg0->unk1C = 0.0f;
    arg0->unk2C = 0.0f;
    arg0->unk3C = 1.0f;
    arg0->unk38 = arg1->unk8 - arg2->unk8;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_80042760.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
f32 sins(u16); // extern
f32 coss(u16); // extern
extern ? D_80165C18;

void func_800427DC(s32 arg0, void *arg1) {
    f32 sp3C;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f20;
    f32 temp_f8;
    void *temp_s0;

    temp_s0 = (arg0 * 0xE0) + &D_80165C18;
    sp3C = sins(temp_s0->unkB2);
    temp_f20 = coss(temp_s0->unkB2);
    sp34 = sins(temp_s0->unkB4);
    sp30 = coss(temp_s0->unkB4);
    sp2C = sins(temp_s0->unkB6);
    temp_f0 = coss(temp_s0->unkB6);
    temp_f12 = sp3C * sp34;
    temp_f8 = temp_f12 * temp_f0;
    arg1->unk0 = temp_s0->unk0 * ((sp30 * temp_f0) + (temp_f12 * sp2C));
    arg1->unk10 = temp_s0->unk0 * ((-sp30 * sp2C) + temp_f8);
    arg1->unk20 = temp_s0->unk0 * (temp_f20 * sp34);
    arg1->unk30 = temp_s0->unk4;
    arg1->unk4 = temp_s0->unk0 * (temp_f20 * sp2C);
    arg1->unk14 = temp_s0->unk0 * (temp_f20 * temp_f0);
    temp_f12_2 = sp3C * sp30;
    arg1->unk24 = temp_s0->unk0 * -sp3C;
    arg1->unk34 = temp_s0->unk8;
    arg1->unk8 = temp_s0->unk0 * ((-sp34 * temp_f0) + (temp_f12_2 * sp2C));
    arg1->unk18 = temp_s0->unk0 * ((sp34 * sp2C) + (temp_f12_2 * temp_f0));
    arg1->unk28 = temp_s0->unk0 * (temp_f20 * sp30);
    arg1->unkC = 0.0f;
    arg1->unk1C = 0.0f;
    arg1->unk2C = 0.0f;
    arg1->unk3C = 1.0f;
    arg1->unk38 = temp_s0->unkC;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_800427DC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80041500(f32 *, f32, ?, f32); // extern
? func_80041530(f32 *); // extern
? func_80041594(f32 *, f32 *, f32 *); // extern
f32 sins(u16); // extern
f32 coss(u16); // extern

void func_80042A20(void *arg0, f32 *arg1, void *arg2, u16 arg3, f32 arg4) {
    f32 sp44;
    f32 sp38;
    f32 sp2C;
    f32 sp24;

    sp24 = sins(arg3);
    func_80041500(&sp44, sp24, 0, coss(arg3));
    func_80041530(arg1);
    func_80041594(&sp38, arg1, &sp44);
    func_80041530(&sp38);
    func_80041594(&sp2C, &sp38, arg1);
    func_80041530(&sp2C);
    arg0->unk0 = sp38 * arg4;
    arg0->unk4 = sp3C * arg4;
    arg0->unk8 = sp40 * arg4;
    arg0->unk30 = arg2->unk0;
    arg0->unk10 = arg1->unk0 * arg4;
    arg0->unk14 = arg1->unk4 * arg4;
    arg0->unk18 = arg1->unk8 * arg4;
    arg0->unk34 = arg2->unk4;
    arg0->unk20 = sp2C * arg4;
    arg0->unk24 = sp30 * arg4;
    arg0->unk28 = sp34 * arg4;
    arg0->unkC = 0.0f;
    arg0->unk1C = 0.0f;
    arg0->unk2C = 0.0f;
    arg0->unk3C = 1.0f;
    arg0->unk38 = arg2->unk8;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_80042A20.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
f32 sins(u16); // extern
f32 coss(u16); // extern

void func_80042D14(void *arg0, void *arg1, void *arg2) {
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    f32 sp1C;
    f32 sp18;
    f32 temp_f0;

    sp2C = arg1->unk0;
    sp28 = arg1->unk4;
    sp24 = arg1->unk8;
    sp20 = sins(arg2->unk0);
    sp1C = coss(arg2->unk0);
    sp18 = sins(arg2->unk2);
    temp_f0 = coss(arg2->unk2);
    arg0->unk0 = (sp2C * temp_f0) - (sp24 * sp18);
    arg0->unk4 = (sp2C * sp20 * sp18) + (sp28 * sp1C) + (sp24 * sp20 * temp_f0);
    arg0->unk8 = ((sp2C * sp1C * sp18) - (sp28 * sp20)) + (sp24 * sp1C * temp_f0);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_80042D14.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
//? func_80022180(void *, ? *, s32 *); // extern
//? func_800425D0(?, ? *, s32, s32, ?); // extern
extern s32 D_8018D120;
extern void *gDisplayListHead;
extern Gfx gGfxPool[];

void func_80042E00(s32 arg0, s32 arg1) {
    Gfx sp20;
    void *temp_v1;

    func_800425D0(arg0, arg1);
    func_80022180(gGfxPool[&D_8018D120], &sp20, &D_8018D120);


    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&D_8018D120), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    //D_8018D120++;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_80042E00.s")
#endif

#ifdef MIPS_TO_C
UNUSED void func_80042EB8(s32 arg0, s32 arg1, ? arg2) {
    ? sp20;
    void* temp_v1;

    func_80042760(arg2, &sp20, arg0, arg1, arg2);
    func_80022180(gGfxPool + (D_8018D120 << 6) + 0x2C0, &sp20, &D_8018D120);
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x01020040;
    temp_v1->unk4 = (s32) ((gGfxPool + (D_8018D120 << 6) + 0x2C0) & 0x1FFFFFFF);
    D_8018D120 += 1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_80042EB8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80022180(void *, ? *, s32 *); // extern
? func_800425D0(?, ? *, s32, s16 *, ?); // extern
extern s32 D_8018D120;
extern void *gDisplayListHead;

void func_80042F70(s32 arg0, void *arg1, ? arg2) {
    ? sp28;
    u16 sp24;
    s16 sp22;
    s16 sp20;
    void *temp_v1;

    sp20 = arg1->unk0 + 0x8000;
    sp22 = arg1->unk2 + 0x8000;
    sp24 = arg1->unk4;
    func_800425D0(arg2, &sp28, arg0, &sp20, arg2);
    func_80022180(gGfxPool + (D_8018D120 << 6) + 0x2C0, &sp28, &D_8018D120);
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x1020040;
    temp_v1->unk4 = (gGfxPool + (D_8018D120 << 6) + 0x2C0) & 0x1FFFFFFF;
    D_8018D120 = D_8018D120 + 1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_80042F70.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80022180(void *, ? *, s32 *); // extern
? func_80042A20(f32, ? *, s32, ?, f32); // extern
extern s32 D_8018D120;
extern void *gDisplayListHead;

void func_80043050(s32 arg0, f32 arg2) {
    ? sp28;
    void *temp_v1;

    func_80042A20(arg2, &sp28, arg0, 0, arg2);
    func_80022180(gGfxPool + (D_8018D120 << 6) + 0x2C0, &sp28, &D_8018D120);
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x1020040;
    temp_v1->unk4 = (gGfxPool + (D_8018D120 << 6) + 0x2C0) & 0x1FFFFFFF;
    D_8018D120 = D_8018D120 + 1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_80043050.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80022180(void *, ? *, s32 *); // extern
? func_800427DC(? *); // extern
extern s32 D_8018D120;
extern void *gDisplayListHead;

void func_80043104(void) {
    ? sp20;
    void *temp_v1;

    func_800427DC(&sp20);
    func_80022180(gGfxPool + (D_8018D120 << 6) + 0x2C0, &sp20, &D_8018D120);
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x1020040;
    temp_v1->unk4 = (gGfxPool + (D_8018D120 << 6) + 0x2C0) & 0x1FFFFFFF;
    D_8018D120 = D_8018D120 + 1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80040E50/func_80043104.s")
#endif
