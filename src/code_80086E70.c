#include <ultra64.h>
#include <macros.h>
#include <common_structs.h>
#include <types.h>
#include "camera.h"
#include "objects.h"
#include "math_util.h"
#include "math_util_2.h"
#include "memory.h"
#include "code_80071F00.h"
#include "code_80086E70.h"

void func_80086E70(s32 arg0) {
    D_80165C18[arg0].unk_0AE = 1;// * 0xE0)) = 1;
    func_800721E8(arg0, 8);
}

void func_80086EAC(s32 arg0, s32 arg1, s16 arg2) {
    D_80165C18[arg0].unk_0DD = arg1;
    D_80165C18[arg0].unk_0AE = arg2;
    func_800721E8(arg0, 8);
}

void func_80086EF0(s32 arg0) {
    func_80086E70(arg0);
}

void func_80086F10(s32 arg0, s32 arg1, s32 arg2) {
    func_80086E70(arg0);
    D_80165C18[arg0].unk_0DE = arg1;
    D_80165C18[arg0].unk_080 = arg2;
}

void func_80086F60(s32 arg0) {
    D_80165C18[arg0].unk_0AE = 0;
    D_80165C18[arg0].unk_0DD = 0;
    D_80165C18[arg0].unk_0DE = 0;
    func_800721E8(arg0, 8);
}

s32 func_80086FA4(s32 arg0) {
    s32 ret = 0;
    if (D_80165C18[arg0].unk_0AE == 0) {
        ret = 1;
    }
    return ret;
}

void func_80086FD4(s32 arg0) {
    func_800721E8(arg0, 8);
    D_80165C18[arg0].unk_0AE += 1;
}

void func_8008701C(s32 arg0, s32 arg1) {
    func_800721E8(arg0, 8);
    D_80165C18[arg0].unk_0AE = arg1;
}

s32 func_80087060(s32 objectIndex, s32 arg1) {
    s32 sp1C;

    sp1C = 0;
    if (func_80072270(objectIndex, 8) != 0) {
        func_800721C0(objectIndex, 8);
        D_80165C18[objectIndex].unk_0B0 = arg1;
    }
    D_80165C18[objectIndex].unk_0B0--;
    if (D_80165C18[objectIndex].unk_0B0 < 0) {
        func_800721E8(objectIndex, 8);
        sp1C = 1;
    }
    return sp1C;
}

s32 func_80087104(s32 objectIndex, u16 arg1) {
    s32 sp24;

    sp24 = 0;
    if (func_80072270(objectIndex, 8) != 0) {
        func_800721C0(objectIndex, 8);
        D_80165C18[objectIndex].unk_0B0 = random_int(arg1);
    }
    D_80165C18[objectIndex].unk_0B0--;
    if (D_80165C18[objectIndex].unk_0B0 < 0) {
        func_800721E8(objectIndex, 8);
        sp24 = 1;
    }
    return sp24;
}

s32 func_800871AC(s32 objectIndex, s32 arg1) {
    s32 sp24;

    sp24 = 0;
    if (func_80072270(objectIndex, 8) != 0) {
        func_800721C0(objectIndex, 8);
        D_80165C18[objectIndex].unk_0B0 = (s16) arg1;
    }
    D_80165C18[objectIndex].unk_0B0--;
    if (D_80165C18[objectIndex].unk_0B0 < 0) {
        func_800721E8(objectIndex, 8);
        func_80086FD4(objectIndex);
        sp24 = 1;
    }
    return sp24;
}

UNUSED void func_80087258(s32 objectIndex, s32 arg1, f32 arg2) {
    D_80165C18[objectIndex].unk_028[1] += arg2;
    D_80165C18[objectIndex].unk_028[2] -= arg2;
}

UNUSED s32 func_80087294(s32 objectIndex, Player *player) {
    return func_80041770(player->pos[0], D_80165C18[objectIndex].unk_004[0], player->pos[2], D_80165C18[objectIndex].unk_004[2]);
}

s32 func_800872D8(s32 objectIndex, Camera *camera) {
    return atan2s(D_80165C18[objectIndex].unk_004[0] - camera->pos[0], D_80165C18[objectIndex].unk_004[2] - camera->pos[2]);
}

u16 func_80087324(s32 objectIndex) {
    return -atan2s(D_80165C18[objectIndex].unk_038[1], D_80165C18[objectIndex].unk_038[2]);
}

s32 func_80087368(s32 objectIndex) {
    return atan2s(D_80165C18[objectIndex].unk_038[0], D_80165C18[objectIndex].unk_038[2]);
}

UNUSED void func_800873A4(s32 objectIndex) {
    D_80165C18[objectIndex].unk_0BE = func_800417B4(D_80165C18[objectIndex].unk_0BE, func_80087324(objectIndex));
}

void func_800873F4(s32 objectIndex) {
    D_80165C18[objectIndex].unk_0C0 = func_800417B4(D_80165C18[objectIndex].unk_0C0, func_80087368(objectIndex));
}

UNUSED void func_80087444(s32 objectIndex) {
    D_80165C18[objectIndex].unk_038[0] = D_80165C18[objectIndex].unk_034 * sins(D_80165C18[objectIndex].unk_0C0);
}

UNUSED void func_8008748C(s32 objectIndex) {
    D_80165C18[objectIndex].unk_038[1] = D_80165C18[objectIndex].unk_034 * coss(D_80165C18[objectIndex].unk_0BE);
}

UNUSED void func_800874D4(s32 objectIndex) {
    D_80165C18[objectIndex].unk_038[2] = D_80165C18[objectIndex].unk_034 * coss(D_80165C18[objectIndex].unk_0C0);
}

void func_8008751C(s32 objectIndex) {
    D_80165C18[objectIndex].unk_038[0] = D_80165C18[objectIndex].unk_034 * sins(D_80165C18[objectIndex].unk_0C0);
    D_80165C18[objectIndex].unk_038[2] = D_80165C18[objectIndex].unk_034 * coss(D_80165C18[objectIndex].unk_0C0);
}

void func_8008757C(s32 objectIndex) {
    f32 sp24;

    sp24 = coss(D_80165C18[objectIndex].unk_0BE);
    D_80165C18[objectIndex].unk_038[0] = (D_80165C18[objectIndex].unk_034 * sp24) * sins(D_80165C18[objectIndex].unk_0C0);
    D_80165C18[objectIndex].unk_038[1] = -D_80165C18[objectIndex].unk_034 * sins(D_80165C18[objectIndex].unk_0BE);
    sp24 = coss(D_80165C18[objectIndex].unk_0BE);
    D_80165C18[objectIndex].unk_038[2] = (D_80165C18[objectIndex].unk_034 * sp24) * coss(D_80165C18[objectIndex].unk_0C0);
}

void func_80087620(s32 objectIndex) {
    D_80165C18[objectIndex].unk_038[0] = D_80165C18[objectIndex].unk_034 * sins(D_80165C18[objectIndex].unk_0C0 + 0x8000);
    D_80165C18[objectIndex].unk_038[2] = D_80165C18[objectIndex].unk_034 * coss(D_80165C18[objectIndex].unk_0C0 + 0x8000);
}

void func_800876A0(s32 objectIndex) {
    D_80165C18[objectIndex].unk_028[0] += D_80165C18[objectIndex].unk_034 * sins(D_80165C18[objectIndex].unk_0C0);
    D_80165C18[objectIndex].unk_028[2] += D_80165C18[objectIndex].unk_034 * coss(D_80165C18[objectIndex].unk_0C0);
}

void func_80087710(s32 objectIndex) {
    D_80165C18[objectIndex].unk_028[0] += D_80165C18[objectIndex].unk_038[0];
    D_80165C18[objectIndex].unk_028[1] += D_80165C18[objectIndex].unk_038[1];
    D_80165C18[objectIndex].unk_028[2] += D_80165C18[objectIndex].unk_038[2];
}

void func_8008775C(s32 objectIndex) {
    D_80165C18[objectIndex].unk_028[0] += D_80165C18[objectIndex].unk_038[0];
    D_80165C18[objectIndex].unk_028[2] += D_80165C18[objectIndex].unk_038[2];
}

UNUSED void func_80087798(s32 objectIndex) {
    D_80165C18[objectIndex].unk_028[0] += D_80165C18[objectIndex].unk_038[0];
}

void func_800877C4(s32 objectIndex) {
    D_80165C18[objectIndex].unk_028[1] += D_80165C18[objectIndex].unk_038[1];
}

UNUSED void func_800877F0(s32 objectIndex) {
    D_80165C18[objectIndex].unk_028[2] += D_80165C18[objectIndex].unk_038[2];
}

void func_8008781C(s32 arg0) {
    func_8008751C(arg0);
    func_8008775C(arg0);
}

void func_80087844(s32 arg0) {
    func_8008757C(arg0);
    func_80087710(arg0);
}

f32 func_8008786C(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    return (((arg4 - arg2) / (arg3 - arg1)) * (arg0 - arg1)) + arg2;
}

s32 func_8008789C(s32 objectIndex, s32 arg1) {
    s32 sp24;

    sp24 = 0;
    if (func_80072270(objectIndex, 8) != 0) {
        func_800721C0(objectIndex, 8);
        func_8008751C(objectIndex);
        D_80165C18[objectIndex].unk_0B0 = arg1;
    }
    D_80165C18[objectIndex].unk_0B0--;
    if (D_80165C18[objectIndex].unk_0B0 < 0) {
        func_800721E8(objectIndex, 8);
        sp24 = 1;
    } else {
        func_8008775C(objectIndex);
    }
    return sp24;
}

s32 func_80087954(s32 objectIndex, s32 arg1) {
    s32 sp24;

    sp24 = 0;
    if (func_80072270(objectIndex, 8) != 0) {
        func_800721C0(objectIndex, 8);
        func_80087620(objectIndex);
        D_80165C18[objectIndex].unk_0B0 = arg1;
    }
    D_80165C18[objectIndex].unk_0B0--;
    if (D_80165C18[objectIndex].unk_0B0 < 0) {
        func_800721E8(objectIndex, 8);
        sp24 = 1;
    } else {
        func_8008775C(objectIndex);
    }
    return sp24;
}

s32 func_80087A0C(s32 objectIndex, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
    s16 sp36;
    s16 temp_a0;
    s16 temp_v0;
    s32 sp2C;

    sp2C = 0;
    if (func_80072270(objectIndex, 8) != 0) {
        func_800721C0(objectIndex, 8);
        temp_v0 = arg2 - arg1;
        temp_a0 = arg4 - arg3;
        sp36 = sqrtf((temp_v0 * temp_v0) + (temp_a0 * temp_a0));
        D_80165C18[objectIndex].unk_010[1] = 0.0f;
        D_80165C18[objectIndex].unk_0C0 = atan2s(temp_v0, temp_a0);
        func_8008751C(objectIndex);
        D_80165C18[objectIndex].unk_0B0 = sp36 / D_80165C18[objectIndex].unk_034;
    }
    D_80165C18[objectIndex].unk_0B0--;
    if (D_80165C18[objectIndex].unk_0B0 < 0) {
        func_800721E8(objectIndex, 8);
        sp2C = 1;
    } else {
        func_8008775C(objectIndex);
    }
    return sp2C;
}

s32 func_80087B84(s32 objectIndex, f32 arg1, f32 arg2) {
    s32 sp24;

    sp24 = 0;
    if (func_80072270(objectIndex, 8) != 0) {
        func_800721C0(objectIndex, 8);
        D_80165C18[objectIndex].unk_038[1] = -arg1;
    }
    func_800877C4(objectIndex);
    if (D_80165C18[objectIndex].unk_004[1] <= arg2) {
        func_800721E8(objectIndex, 8);
        func_80086FD4(objectIndex);
        sp24 = 1;
    }
    return sp24;
}

s32 func_80087C48(s32 objectIndex, f32 arg1, f32 arg2, s32 arg3) {
    s32 sp24;

    sp24 = 0;
    if (func_80072270(objectIndex, 8) != 0) {
        func_800721C0(objectIndex, 8);
        D_80165C18[objectIndex].unk_038[1] = arg1;
        D_80165C18[objectIndex].unk_0B0 = (s16) arg3;
    }
    D_80165C18[objectIndex].unk_0B0--;
    if (D_80165C18[objectIndex].unk_0B0 < 0) {
        func_800721E8(objectIndex, 8);
        func_80086FD4(objectIndex);
        sp24 = 1;
    } else {
        D_80165C18[objectIndex].unk_038[1] -= arg2;
        func_800877C4(objectIndex);
    }
    return sp24;
}

s32 func_80087D24(s32 objectIndex, f32 arg1, f32 arg2, f32 arg3) {
    s32 sp24;

    sp24 = 0;
    if (func_80072270(objectIndex, 8) != 0) {
        func_800721C0(objectIndex, 8);
        D_80165C18[objectIndex].unk_038[1] = arg1;
    }
    D_80165C18[objectIndex].unk_038[1] -= arg2;
    func_800877C4(objectIndex);
    if (D_80165C18[objectIndex].unk_028[1] <= arg3) {
        func_800721E8(objectIndex, 8);
        D_80165C18[objectIndex].unk_028[1] = arg3;
        func_80086FD4(objectIndex);
        sp24 = 1;
    }
    return sp24;
}

s32 func_80087E08(s32 objectIndex, f32 arg1, f32 arg2, f32 arg3, s16 arg4, s32 arg5) {
    s32 sp2C;
    s32 stackPadding;

    sp2C = 0;
    if (func_80072270(objectIndex, 8) != 0) {
        func_800721C0(objectIndex, 8);
        D_80165C18[objectIndex].unk_028[2] = 0.0f;
        D_80165C18[objectIndex].unk_028[1] = 0.0f;
        D_80165C18[objectIndex].unk_028[0] = 0.0f;
        D_80165C18[objectIndex].unk_034 = arg3;
        D_80165C18[objectIndex].unk_038[1] = arg1;
        D_80165C18[objectIndex].unk_0C0 = arg4;
        func_8008751C(objectIndex);
        D_80165C18[objectIndex].unk_0B0 = arg5;
    }
    D_80165C18[objectIndex].unk_0B0--;
    if (D_80165C18[objectIndex].unk_0B0 < 0) {
        func_800721E8(objectIndex, 8);
        func_80086FD4(objectIndex);
        sp2C = 1;
    } else {
        D_80165C18[objectIndex].unk_038[1] -= arg2;
        func_80087710(objectIndex);
    }
    return sp2C;
}

UNUSED s32 func_80087F14(s32 objectIndex, f32 arg1, f32 arg2, f32 arg3, s16 arg4, s32 arg5) {
    s32 sp2C;
    s32 stackPadding;

    sp2C = 0;
    if (func_80072270(objectIndex, 8) != 0) {
        func_800721C0(objectIndex, 8);
        D_80165C18[objectIndex].unk_028[2] = 0.0f;
        D_80165C18[objectIndex].unk_028[1] = 0.0f;
        D_80165C18[objectIndex].unk_028[0] = 0.0f;
        D_80165C18[objectIndex].unk_034 = arg3;
        D_80165C18[objectIndex].unk_038[1] = arg1;
        D_80165C18[objectIndex].unk_0C0 = arg4;
        func_8008751C(objectIndex);
        D_80165C18[objectIndex].unk_0B0 = gVBlankTimer;
    }
    if (D_80165C18[objectIndex].unk_028[1] <= arg5) {
        func_800721E8(objectIndex, 8);
        func_80086FD4(objectIndex);
        sp2C = 1;
    } else {
        D_80165C18[objectIndex].unk_038[1] -= arg2;
        func_80087710(objectIndex);
    }
    return sp2C;
}

void func_80088038(s32 objectIndex, f32 arg1, u16 arg2) {
    f32 temp_f4;
    f32 sp20;

    temp_f4 = D_80165C18[objectIndex].unk_028[0];
    sp20    = D_80165C18[objectIndex].unk_028[2];
    D_80165C18[objectIndex].unk_0C4 += arg2;
    D_80165C18[objectIndex].unk_028[0] = sins(D_80165C18[objectIndex].unk_0C4) * arg1;
    D_80165C18[objectIndex].unk_028[2] = coss(D_80165C18[objectIndex].unk_0C4) * arg1;
    D_80165C18[objectIndex].unk_038[0] = D_80165C18[objectIndex].unk_028[0] - temp_f4;
    D_80165C18[objectIndex].unk_038[2] = D_80165C18[objectIndex].unk_028[2] - sp20;
}

UNUSED void func_800880DC(void) {

}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern ? D_80165760;
extern ? D_80165770;
extern ? D_80165780;
extern ? D_80165784;
extern ? D_80165C94;

void func_800880E4(s32 arg0) {
    ? *temp_a1;
    ? *temp_a2;
    ? *temp_a3;
    void *temp_v0;
    void *phi_v0;
    ? *phi_a1;
    ? *phi_a2;
    ? *phi_a3;

    phi_v0 = *(&D_80165C94 + (arg0 * 0xE0));
    phi_a1 = &D_80165760;
    phi_a2 = &D_80165770;
    phi_a3 = &D_80165780;
    do {
        temp_a3 = phi_a3 + 2;
        temp_a1 = phi_a1 + 2;
        temp_a1->unk-2 = phi_v0->unk0;
        temp_a2 = phi_a2 + 2;
        temp_v0 = phi_v0 + 8;
        temp_a2->unk-2 = phi_v0->unk2;
        temp_a3->unk-2 = temp_v0->unk-4;
        phi_v0 = temp_v0;
        phi_a1 = temp_a1;
        phi_a2 = temp_a2;
        phi_a3 = temp_a3;
    } while (temp_a3 != &D_80165784);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_800880E4.s")
#endif

void func_80088150(s32 arg0) {
    D_80165C18[arg0].unk_07C += 8;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 atan2s(f32, f32); // extern
extern ? D_80165760;
extern ? D_80165780;
extern ? D_80165C18;

void func_80088178(s32 arg0, s32 arg1) {
    s16 temp_a1;
    u16 temp_a0;
    void *temp_v1;

    temp_v1 = (arg0 * 0xE0) + &D_80165C18;
    temp_a0 = temp_v1->unkC0;
    temp_a1 = atan2s(D_80165760.unk2 - D_80165760.unk0, D_80165780.unk2 - D_80165780.unk0) - temp_a0;
    if (temp_a1 > 0) {
        temp_v1->unkC0 = temp_a0 + (arg1 << 8);
        return;
    }
    if (temp_a1 < 0) {
        temp_v1->unkC0 = temp_a0 - (arg1 << 8);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_80088178.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
void func_80088228(s32 objectIndex) {
    s32 temp_v1;
    struct_80165C18_entry *temp_v0;

    temp_v0 = &D_80165C18[objectIndex];
    temp_v1 = temp_v0->unk_080 + 2;
    temp_v0->unk_084[9] = 0;
    temp_v0->unk_07C = temp_v1;
    temp_v0->unk_084[8] = temp_v1->unk-2;
    temp_v0->unk_028[0] = (f32) temp_v1->unk0;
    temp_v0->unk_028[1] = (f32) temp_v1->unk2;
    temp_v0->unk_028[2] = (f32) temp_v1->unk4;
    func_80086FD4(objectIndex);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_80088228.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern s16 D_80165762;
extern s16 D_80165772;
extern s16 D_80165782;
extern ? D_80165C18;

? func_800882B0(s32 arg0, s32 arg1) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f2;
    void *temp_a2;
    ? phi_v1;

    temp_a2 = (arg0 * 0xE0) + &D_80165C18;
    temp_f0 = D_80165762 - temp_a2->unk28;
    temp_f2 = D_80165772 - temp_a2->unk2C;
    temp_f12 = D_80165782 - temp_a2->unk30;
    phi_v1 = 0;
    if ((((temp_f0 * temp_f0) + (temp_f2 * temp_f2) + (temp_f12 * temp_f12)) - (arg1 * arg1)) <= 0) {
        phi_v1 = 1;
    }
    return phi_v1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_800882B0.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
? func_800880E4();                                  /* extern */
? func_80088178(s32, ?);                            /* extern */
s32 func_800882B0(s32, ?);                          /* extern */

void func_80088364(s32 objectIndex) {
    s16 temp_t9;
    struct_80165C18_entry *temp_v0;

    func_800880E4();
    func_80088178(objectIndex, 1);
    func_800876A0(objectIndex);
    if (func_800882B0(objectIndex, 0xA) != 0) {
        temp_v0 = &D_80165C18[objectIndex];
        temp_t9 = (u16) temp_v0->unk_084[9] + 1;
        temp_v0->unk_084[9] = temp_t9;
        if (((temp_t9 & 0xFFFF) + 3) == (u16) temp_v0->unk_084[8]) {
            temp_v0->unk_0AE += 1;
            return;
        }
        func_80088150(objectIndex);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_80088364.s")
#endif

s32 func_80088538(s32 objectIndex) {
    s32 sp2C;

    sp2C = 0;
    func_800721E8(objectIndex, 0x00800000);
    if (func_8007223C(objectIndex, 0x00000400) != 0) {
        func_802ADDC8(&D_8018C3B0, 10.0f, D_80165C18[objectIndex].unk_004[0], 20.0f, D_80165C18[objectIndex].unk_004[2]);
        if (D_8018C3B0.unk34 == 1) {
            sp2C = 1;
            func_800721C0(objectIndex, 0x00800000);
        }
        D_80165C18[objectIndex].unk_044 = func_802ABE30(D_80165C18[objectIndex].unk_004[0], 0.0f, D_80165C18[objectIndex].unk_004[2], D_8018C3B0.unk3A);
        D_80165C18[objectIndex].unk_0B8[0] = atan2s(D_8018C3B0.unk60[2], D_8018C3B0.unk60[1]) + 0x4000;
        D_80165C18[objectIndex].unk_0B8[2] = atan2s(D_8018C3B0.unk60[0], D_8018C3B0.unk60[1]);
    }
    return sp2C;
}

s32 func_8008861C(s32 objectIndex) {
    s32 sp2C;

    sp2C = 0;
    func_800721E8(objectIndex, 0x00800000);
    if (func_8007223C(objectIndex, 0x00000400) != 0) {
        func_802ADDC8(&D_8018C3B0, 10.0f, D_80165C18[objectIndex].unk_004[0], 20.0f, D_80165C18[objectIndex].unk_004[2]);
        if (D_8018C3B0.unk34 == 1) {
            sp2C = 1;
            func_800721C0(objectIndex, 0x00800000);
        }
        D_80165C18[objectIndex].unk_044 = func_802ABE30(D_80165C18[objectIndex].unk_004[0], 0.0f, D_80165C18[objectIndex].unk_004[2], D_8018C3B0.unk3A);
        D_80165C18[objectIndex].unk_01C[0] = D_8018C3B0.unk60[0];
        D_80165C18[objectIndex].unk_01C[1] = D_8018C3B0.unk60[1];
        D_80165C18[objectIndex].unk_01C[2] = D_8018C3B0.unk60[2];
    }
    return sp2C;
}

void func_800886F4(s32 objectIndex) {
    func_802ADDC8(&D_8018C3B0, 10.0f, D_80165C18[objectIndex].unk_004[0], 20.0f, D_80165C18[objectIndex].unk_004[2]);
    if (D_8018C3B0.unk34 == 1) {
        func_800721C0(objectIndex, 0x00800000);
        D_80165C18[objectIndex].unk_044 = func_802ABE30(D_80165C18[objectIndex].unk_004[0], 0.0f, D_80165C18[objectIndex].unk_004[2], D_8018C3B0.unk3A);
        D_80165C18[objectIndex].unk_0B8[0] = atan2s(D_8018C3B0.unk60[2], D_8018C3B0.unk60[1]) + 0x4000;
        D_80165C18[objectIndex].unk_0B8[2] = atan2s(D_8018C3B0.unk60[0], D_8018C3B0.unk60[1]);
        return;
    }
    func_800721E8(objectIndex, 0x00800000);
}

void func_800887C0(s32 objectIndex) {
    func_802ADDC8(&D_8018C3B0, 10.0f, D_80165C18[objectIndex].unk_004[0], 20.0f, D_80165C18[objectIndex].unk_004[2]);
    if (D_8018C3B0.unk34 == 1) {
        func_800721C0(objectIndex, 0x00800000);
        D_80165C18[objectIndex].unk_044 = func_802ABE30(D_80165C18[objectIndex].unk_004[0], 0.0f, D_80165C18[objectIndex].unk_004[2], D_8018C3B0.unk3A);
        D_80165C18[objectIndex].unk_038[0] = D_8018C3B0.unk60[0];
        D_80165C18[objectIndex].unk_038[1] = D_8018C3B0.unk60[1];
        D_80165C18[objectIndex].unk_038[2] = D_8018C3B0.unk60[2];
        return;
    }
    func_800721E8(objectIndex, 0x00800000);
}

UNUSED s32 func_80088880(s32 objectIndex, Player *player) {
    s32 temp_f10;
    s32 temp_f6;

    temp_f10 = D_80165C18[objectIndex].unk_004[0] - player->pos[0];
    temp_f6  = D_80165C18[objectIndex].unk_004[2] - player->pos[2];
    return (temp_f10 * temp_f10) + (temp_f6 * temp_f6);
}

UNUSED s32 func_800888E8(s32 objectIndex, Player *player) {
    s32 temp_f10;
    s32 temp_f18;
    s32 temp_f6;

    temp_f10 = D_80165C18[objectIndex].unk_004[0] - player->pos[0];
    temp_f6  = D_80165C18[objectIndex].unk_004[1] - player->pos[1];
    temp_f18 = D_80165C18[objectIndex].unk_004[2] - player->pos[2];
    return (temp_f10 * temp_f10) + (temp_f6 * temp_f6) + (temp_f18 * temp_f18);
}

u32 func_8008896C(s32 objectIndex, Camera *camera) {
    s32 temp_f10;
    s32 temp_f6;

    temp_f10 = D_80165C18[objectIndex].unk_004[0] - camera->pos[0];
    temp_f6  = D_80165C18[objectIndex].unk_004[2] - camera->pos[2];
    return (temp_f10 * temp_f10) + (temp_f6 * temp_f6);
}

UNUSED s32 func_800889D4(s32 objectIndex, Camera *camera) {
    s32 temp_f10;
    s32 temp_f18;
    s32 temp_f6;

    temp_f10 = D_80165C18[objectIndex].unk_004[0] - camera->pos[0];
    temp_f6  = D_80165C18[objectIndex].unk_004[1] - camera->pos[1];
    temp_f18 = D_80165C18[objectIndex].unk_004[2] - camera->pos[2];
    return (temp_f10 * temp_f10) + (temp_f6 * temp_f6) + (temp_f18 * temp_f18);
}

s32 func_80088A58(s32 objectIndex, Player *player, f32 arg2) {
    f32 temp_f0;
    f32 temp_f2;
    s32 var_v1;

    var_v1 = 0;
    temp_f0 = D_80165C18[objectIndex].unk_004[0] - player->pos[0];
    temp_f2 = D_80165C18[objectIndex].unk_004[2] - player->pos[2];
    if (((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) <= (arg2 * arg2)) {
        var_v1 = 1;
    }
    return var_v1;
}

s32 func_80088AC0(s32 objectIndex, Player *player, f32 arg2, f32 arg3) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f2;
    s32 var_v1;

    var_v1 = 0;
    temp_f0 = D_80165C18[objectIndex].unk_004[0] - player->pos[0];
    temp_f2 = D_80165C18[objectIndex].unk_004[2] - player->pos[2];
    temp_f12 = (temp_f0 * temp_f0) + (temp_f2 * temp_f2);
    if (((arg2 * arg2) <= temp_f12) && (temp_f12 <= (arg3 * arg3))) {
        var_v1 = 1;
    }
    return var_v1;
}

s32 func_80088B40(s32 objectIndex, Player *player, f32 arg2) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f2;
    s32 var_v1;

    var_v1 = 0;
    temp_f0  = D_80165C18[objectIndex].unk_004[0] - player->pos[0];
    temp_f2  = D_80165C18[objectIndex].unk_004[1] - player->pos[1];
    temp_f12 = D_80165C18[objectIndex].unk_004[2] - player->pos[2];
    if (((temp_f0 * temp_f0) + (temp_f2 * temp_f2) + (temp_f12 * temp_f12)) <= (arg2 * arg2)) {
        var_v1 = 1;
    }
    return var_v1;
}

s32 func_80088BB8(s32 objectIndex, Camera *camera, f32 arg2) {
    f32 temp_f0;
    f32 temp_f2;
    s32 var_v1;

    var_v1 = 0;
    temp_f0 = D_80165C18[objectIndex].unk_004[0] - camera->pos[0];
    temp_f2 = D_80165C18[objectIndex].unk_004[2] - camera->pos[2];
    if (((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) <= (arg2 * arg2)) {
        var_v1 = 1;
    }
    return var_v1;
}

UNUSED s32 func_80088C20(s32 objectIndex, Camera *camera, f32 arg2, f32 arg3) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f2;
    s32 var_v1;

    var_v1 = 0;
    temp_f0  = D_80165C18[objectIndex].unk_004[0] - camera->pos[0];
    temp_f2  = D_80165C18[objectIndex].unk_004[2] - camera->pos[2];
    temp_f12 = (temp_f0 * temp_f0) + (temp_f2 * temp_f2);
    if (((arg2 * arg2) <= temp_f12) && (temp_f12 <= (arg3 * arg3))) {
        var_v1 = 1;
    }
    return var_v1;
}

UNUSED s32 func_80088CA0(s32 objectIndex, Camera *camera, f32 arg2) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f2;
    s32 var_v1;

    var_v1 = 0;
    temp_f0  = D_80165C18[objectIndex].unk_004[0] - camera->pos[0];
    temp_f2  = D_80165C18[objectIndex].unk_004[1] - camera->pos[1];
    temp_f12 = D_80165C18[objectIndex].unk_004[2] - camera->pos[2];
    if (((temp_f0 * temp_f0) + (temp_f2 * temp_f2) + (temp_f12 * temp_f12)) <= (arg2 * arg2)) {
        var_v1 = 1;
    }
    return var_v1;
}

s32 func_80088D18(s32 objectIndex, Player *player) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f2;
    f32 var_f18;
    s32 var_v1;
    u16 temp_t8;

    var_v1 = 0;
    temp_f0  = D_80165C18[objectIndex].unk_004[0] - player->pos[0];
    temp_f2  = D_80165C18[objectIndex].unk_004[2] - player->pos[2];
    temp_f12 = D_80165C18[objectIndex].unk_0C8 + player->boundingBoxSize;
    if (((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) <= (temp_f12 * temp_f12)) {
        var_v1 = 1;
    }
    return var_v1;
}

s32 func_80088DA4(s32 objectIndex, Player *player) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;
    s32 var_v1;
    struct_80165C18_entry *temp_v0;

    var_v1 = 0;
    temp_f0  = D_80165C18[objectIndex].unk_004[0] - player->pos[0];
    temp_f2  = D_80165C18[objectIndex].unk_004[1] - player->pos[1];
    temp_f12 = D_80165C18[objectIndex].unk_004[2] - player->pos[2];
    temp_f14 = D_80165C18[objectIndex].unk_0C8 + player->boundingBoxSize;
    if (((temp_f0 * temp_f0) + (temp_f2 * temp_f2) + (temp_f12 * temp_f12)) <= (temp_f14 * temp_f14)) {
        var_v1 = 1;
    }
    return var_v1;
}

UNUSED s32 func_80088E48(s32 objectIndex, Player *player, f32 arg2) {
    f32 temp_f0;
    s32 var_v1;

    var_v1 = 0;
    temp_f0 = D_80165C18[objectIndex].unk_004[1] - player->pos[1];
    if ((temp_f0 * temp_f0) <= (arg2 * arg2)) {
        var_v1 = 1;
    }
    return var_v1;
}

s32 func_80088E98(s32 objectIndex, Player *player, f32 arg2) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 var_f2;
    s32 var_v1;

    var_v1 = 0;
    temp_f0  = D_80165C18[objectIndex].unk_004[0] - player->pos[0];
    var_f2   = D_80165C18[objectIndex].unk_004[1] - player->pos[1];
    temp_f12 = D_80165C18[objectIndex].unk_004[2] - player->pos[2];
    temp_f14 = D_80165C18[objectIndex].unk_0C8 + player->boundingBoxSize;
    if (var_f2 < 0.0f) {
        var_f2 = -var_f2;
    }
    if ((((temp_f0 * temp_f0) + (temp_f12 * temp_f12)) <= (temp_f14 * temp_f14)) && (var_f2 <= arg2)) {
        var_v1 = 1;
    }
    return var_v1;
}

f32 func_80088F54(s32 objectIndex, Player *player) {
    f32 var_f2;

    var_f2 = D_80165C18[objectIndex].unk_004[1] - player->unk_074;
    if (var_f2 < 0.0f) {
        var_f2 = -var_f2;
    }
    return var_f2;
}

UNUSED s32 func_80088F94(s32 objectIndex, Player *player, f32 arg2) {
    f32 var_f0;
    s32 var_v1;

    var_f0 = D_80165C18[objectIndex].unk_004[1] - player->unk_074;
    var_v1 = 0;
    if (var_f0 < 0.0f) {
        var_f0 = -var_f0;
    }
    if (var_f0 <= arg2) {
        var_v1 = 1;
    }
    return var_v1;
}

void func_80088FF0(Player *player) {
    player->unk_08C = 0.0f;
    player->unk_09C = 0.0f;
    player->unk_034[0] = 0.0f;
    player->unk_034[2] = 0.0f;
}

UNUSED void func_8008900C(Player *player) {
    player->unk_08C = 0.0f;
    player->unk_09C = 0.0f;
}

#ifdef NEEDS_RODATA
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
extern Player *gPlayerOne;
extern s16 gCurrentCourseId;                               /* unable to generate initializer */
// These are all .rodata
extern f32 D_800EF4A0;
extern f32 D_800EF4A4;
extern f32 D_800EF4A8;
extern f32 D_800EF4AC;
extern f32 D_800EF4B0;
extern f32 D_800EF4B4;
extern f32 D_800EF4B8;
extern f32 D_800EF4BC;
extern f32 D_800EF4C0;
extern f32 D_800EF4C4;
extern f32 D_800EF4C8;
extern f32 D_800EF4CC;
extern f32 D_800EF4D0;
extern f32 D_800EF4D4;

void func_80089020(s32 playerId, f32 *arg1) {
    f32 var_f0;
    f32 var_f2;
    Player *player = &gPlayerOne[playerId];

    if (*arg1 >= 0.0f) {
        var_f2 = *arg1;
    } else {
        var_f2 = -*arg1;
    }
    if (player->unk_0BC & 0xC0) {
        if (gCurrentCourseId == 0x000C) {
            if (var_f2 <= 0.5) {
                var_f0 = 0.025f;
            } else if (var_f2 <= 2.0) {
                var_f0 = 0.075f;
            } else if (var_f2 <= 4.0) {
                var_f0 = 0.15f;
            } else {
                var_f0 = 0.25f;
            }
        } else {
            if (var_f2 <= 2.0) {
                var_f0 = 0.1f;
            } else if (var_f2 <= 3.0) {
                var_f0 = 0.15f;
            } else if (var_f2 <= 4.0) {
                var_f0 = 0.2f;
            } else {
                var_f0 = 0.25f;
            }
        }
    } else if (gCurrentCourseId == 0x000C) {
        if (var_f2 <= 0.5) {
            var_f0 = 0.025f;
        } else if (var_f2 <= 2.0) {
            var_f0 = 0.075f;
        } else if (var_f2 <= 4.0) {
            var_f0 = 0.1f;
        } else {
            var_f0 = 0.15f;
        }
    } else {
        if (var_f2 <= 2.0) {
            var_f0 = 0.06f;
        } else if (var_f2 <= 3.0) {
            var_f0 = 0.07f;
        } else if (var_f2 <= 4.0) {
            var_f0 = 0.1f;
        } else {
            var_f0 = 0.075f;
        }
    }
    f32_step_towards(arg1, 0.0f, var_f0);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_80089020.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
typedef struct {
    /* 0x00 */ char pad0[4];
    /* 0x04 */ f32 unk_04;
    /* 0x08 */ char pad8[4];
    /* 0x0C */ f32 unk_0C;
    /* 0x10 */ char pad10[0xE];                     /* maybe part of unk_0C[4]? */
    /* 0x1E */ s8 unk1E;                            /* inferred */
    /* 0x1F */ char pad1F[1];
} struct_D_8018CE10;                                /* size = 0x20 */

void func_800892E0(s32 objectIndex) {
    struct_D_8018CE10 *sp1C;
    s8 temp_v1;
    struct_D_8018CE10 *temp_v0;

    temp_v0 = &D_8018CE10[objectIndex];
    sp1C = temp_v0;
    func_80089020(objectIndex, &temp_v0->unk_04);
    func_80089020(objectIndex, &temp_v0->unk_0C);
    temp_v1 = temp_v0->unk1E;
    if (temp_v1 > 0) {
        temp_v0->unk1E = temp_v1 - 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_800892E0.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc

f32 func_8008933C(Player *player, s32 objectIndex, f32 arg2, f32 arg3) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 var_f2;
    struct_80165C18_entry *temp_v0;
    struct_D_8018CE10 *temp_v1;

    temp_v1 = &D_8018CE10[(s32) (player - gPlayerOne) / 3544];
    var_f2 = 0.0f;
    if (temp_v1->unk1E == 0) {
        player->unk_046 |= 2;
        player->unk_0BC |= 0x8000;
        temp_v1->unk1E = 4;
        temp_v0 = &D_80165C18[objectIndex];
        temp_f2 = temp_v0->unk_038[0];
        if ((temp_f2 * (player->pos[0] - temp_v0->unk_004[0])) >= 0.0f) {
            temp_v1->unk_04 = (temp_f2 * arg3) + (-player->unk_034[0] * arg2);
        } else {
            temp_v1->unk_04 = -player->unk_034[0] * arg2;
        }
        temp_f2_2 = temp_v0->unk_038[2];
        if ((temp_f2_2 * (player->pos[2] - temp_v0->unk_004[2])) >= 0.0f) {
            temp_v1->unk_0C = (temp_f2_2 * arg3) + (-player->unk_034[2] * arg2);
        } else {
            temp_v1->unk_0C = -player->unk_034[2] * arg2;
        }
        temp_f0 = temp_v1->unk_0C;
        temp_f12 = temp_v1->unk_04;
        var_f2 = (temp_f0 * temp_f0) + (temp_f12 * temp_f12);
    }
    return var_f2;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_8008933C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80072180(); // extern
s32 func_8007223C(?); // extern
f32 func_8008933C(Player *, s32, s32, s32); // extern
? func_800C9060(u8, s32); // extern

void func_80089474(s32 arg0, u8 arg1, s32 arg2, s32 arg3, s32 arg4) {
    Player *sp18;

    sp18 = &gPlayerOne[arg1];
    if (func_8007223C(0x4000000) != 0) {
        func_80072180();
    }
    if ((func_8008933C(sp18, arg0, arg2, arg3) >= 4.0) && ((sp18->unk_000 & 0x1000) != 0x1000)) {
        func_800C9060(arg1, arg4);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_80089474.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
? func_80072180();                                  /* extern */
f32 func_8008933C(Player *, s32, s32, f32);         /* extern */
extern s32 D_8018D158;

void func_80089820(s32 objectIndex, s32 arg1, f32 arg2, u32 arg3) {
    Player *var_s0;
    s32 var_s1;
    u16 temp_v0;

    var_s0 = gPlayerOne;
    func_800721E8(objectIndex, 0x02000000);
    if (func_8007223C(objectIndex, 0x00000200) != 0) {
        var_s1 = 0;
        if (D_8018D158 > 0) {
            do {
                if ((D_80165C18[objectIndex].unk_0A6 != 0) && !(var_s0->unk_0BC & 0x80000000)) {
                    temp_v0 = var_s0->unk_000;
                    if ((temp_v0 & 0x8000) && !(temp_v0 & 0x100) && (func_80088D18(objectIndex, var_s0) != 0)) {
                        if (var_s0->unk_0BC & 0x200) {
                            func_800721C0(objectIndex, 0x02000000);
                        } else {
                            if (func_8007223C(objectIndex, 0x04000000) != 0) {
                                func_80072180();
                            }
                            if (((f64) func_8008933C(var_s0, objectIndex, arg1, (f32) ((f64) arg2 * 1.1)) >= 4.0) && ((var_s0->unk_000 & 0x1000) != 0x1000)) {
                                func_800C9060(var_s1 & 0xFF, arg3);
                            }
                        }
                    }
                }
                var_s1 += 1;
                var_s0 += 0xDD8;
            } while (var_s1 < D_8018D158);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_80089820.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
? func_80072180();                                  /* extern */
? func_8008933C(Player *, s32, s32, f32);           /* extern */
extern s32 D_8018D158;

void func_80089A04(s32 objectIndex, s32 arg1, f32 arg2) {
    Player *var_s0;
    s32 var_s1;

    var_s0 = gPlayerOne;
    if (func_8007223C(objectIndex, 0x00000200) != 0) {
        var_s1 = 0;
        if (D_8018D158 > 0) {
            do {
                if ((D_80165C18[objectIndex].unk_0A6 != 0) && !(var_s0->unk_0BC & 0x80000200) && (func_80088DA4(objectIndex, var_s0) != 0)) {
                    func_8008933C(var_s0, objectIndex, arg1, (f32) ((f64) arg2 * 1.1));
                    if (func_8007223C(objectIndex, 0x04000000) != 0) {
                        func_80072180();
                    }
                }
                var_s1 += 1;
                var_s0 += 0xDD8;
            } while (var_s1 < D_8018D158);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_80089A04.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
? func_80072180();                                  /* extern */
extern s32 D_8018D158;

s32 func_80089B50(s32 objectIndex) {
    s32 sp40;
    Player *var_s0;
    s32 var_s1;
    s32 var_s2;
    u16 temp_v0;

    var_s1 = 0;
    sp40 = 0;
    var_s0 = gPlayerOne;
    if (func_8007223C(objectIndex, 0x00000200) != 0) {
        var_s2 = 0;
        if (D_8018D158 > 0) {
            do {
                if ((D_80165C18[objectIndex].unk_0A6 != 0) && !(var_s0->unk_0BC & 0x81000000)) {
                    temp_v0 = var_s0->unk_000;
                    if ((temp_v0 & 0x8000) && !(temp_v0 & 0x100) && (func_80088D18(objectIndex, var_s0) != 0)) {
                        sp40 = 1;
                        if (!(var_s0->unk_0BC & 0x200)) {
                            var_s0->unk_00C |= 0x400000;
                            if (func_8007223C(objectIndex, 0x04000000) != 0) {
                                func_80072180();
                            }
                        } else {
                            func_800C9060(var_s1 & 0xFF, 0x19018010U);
                        }
                    }
                }
                var_s2 += 1;
                var_s0 += 0xDD8;
                var_s1 += 1;
            } while (var_s2 < D_8018D158);
        }
    }
    return sp40;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_80089B50.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
? func_80072180();                                  /* extern */
extern s32 D_8018D158;

s32 func_80089CBC(s32 objectIndex, f32 arg1) {
    Player *var_s0;
    s32 var_s1;
    s32 var_s7;
    u16 temp_v0;

    var_s7 = 0;
    var_s0 = gPlayerOne;
    if (func_8007223C(objectIndex, 0x00000200) != 0) {
        var_s1 = 0;
        if (D_8018D158 > 0) {
            do {
                if ((D_80165C18[objectIndex].unk_0A6 != 0) && !(var_s0->unk_0BC & 0x81000000)) {
                    temp_v0 = var_s0->unk_000;
                    if ((temp_v0 & 0x8000) && !(temp_v0 & 0x100) && (func_80088E98(objectIndex, var_s0, arg1) != 0)) {
                        var_s7 = 1;
                        if (!(var_s0->unk_0BC & 0x200)) {
                            var_s0->unk_00C |= 0x400000;
                            if (func_8007223C(objectIndex, 0x04000000) != 0) {
                                func_80072180();
                            }
                        }
                    }
                }
                var_s1 += 1;
                var_s0 += 0xDD8;
            } while (var_s1 < D_8018D158);
        }
    }
    return var_s7;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_80089CBC.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
? func_80072180();                                  /* extern */
extern s32 D_8018D158;

s32 func_80089F24(s32 objectIndex) {
    Player *var_s0;
    s32 var_s1;
    s32 var_s7;
    u16 temp_v0;

    var_s7 = 0;
    var_s0 = gPlayerOne;
    if (func_8007223C(objectIndex, 0x00000200) != 0) {
        var_s1 = 0;
        if (D_8018D158 > 0) {
            do {
                if ((D_80165C18[objectIndex].unk_0A6 != 0) && !(var_s0->unk_0BC & 0x800002C0)) {
                    temp_v0 = var_s0->unk_000;
                    if ((temp_v0 & 0x8000) && !(temp_v0 & 0x100) && (func_80088D18(objectIndex, var_s0) != 0)) {
                        var_s7 = 1;
                        if (func_8007223C(objectIndex, 0x04000000) != 0) {
                            func_80072180();
                        }
                        var_s0->unk_00C |= 0x200000;
                    }
                }
                var_s1 += 1;
                var_s0 += 0xDD8;
            } while (var_s1 < D_8018D158);
        }
    }
    return var_s7;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_80089F24.s")
#endif

s32 func_8008A060(s32 objectIndex, Camera *camera, u16 arg2) {
    u16 temp_t3;
    s32 var_v1;

    var_v1 = 0;
    temp_t3 = (((u16)camera->rot[1] - D_80165C18[objectIndex].unk_0C0) + (arg2 >> 1));
    if ((temp_t3 >= 0) && (arg2 >= temp_t3)) {
        var_v1 = 1;
    }
    return var_v1;
}

s32 func_8008A0B4(s32 objectIndex, Player *player, Camera *camera, u16 arg3) {
    u16 temp_t3;
    f32 x_diff;
    f32 z_diff;
    s32 var_t0;

    var_t0 = 0;
    x_diff = D_80165C18[objectIndex].unk_004[0] - player->pos[0];
    z_diff = D_80165C18[objectIndex].unk_004[2] - player->pos[2];
    temp_t3 = ((u16) camera->rot[1] - atan2s(x_diff, z_diff)) + (arg3 >> 1);
    if ((temp_t3 >= 0) && (arg3 >= temp_t3)) {
        var_t0 = 1;
    }
    return var_t0;
}

s32 func_8008A140(s32 objectIndex, Camera *camera, u16 arg2) {
    u16 temp_t2;
    s32 var_t0;

    var_t0 = 0;
    temp_t2 = (func_80041770(camera->pos[0], D_80165C18[objectIndex].unk_004[0], camera->pos[2], D_80165C18[objectIndex].unk_004[2]) + ((s32) arg2 / 2)) - camera->rot[1];
    if ((temp_t2 >= 0) && (arg2 >= temp_t2)) {
        var_t0 = 1;
    }
    return var_t0;
}

void func_8008A1D0(s32 objectIndex, s32 cameraId, s32 arg2, s32 arg3) {
    s32 temp_v0;
    u16 var_a2;
    Camera *camera;

    camera = &camera1[cameraId];
    func_800721E8(objectIndex, 0x00140000);
    temp_v0 = func_8008896C(objectIndex, camera);
    if (temp_v0 < 0x2711U) {
        var_a2 = 0x5555;
    } else if (temp_v0 < 0x9C41U) {
        var_a2 = 0x4000;
    } else {
        var_a2 = 0x2AAB;
    }
    if ((func_8008A140(objectIndex, camera, var_a2) != 0) && ((u32) (arg3 * arg3) >= temp_v0)) {
        func_800721C0(objectIndex, 0x00040000);
        if (temp_v0 >= (u32) (arg2 * arg2)) {
            func_800721C0(objectIndex, 0x00100000);
        }
    }
}

// This function is really cool, it tests the value of an unitialized local variable
UNUSED void func_8008A2CC(s32 objectIndex, s32 cameraId, u16 arg2) {
    Camera *camera;
    u32 no_init;
    u16 var_a2;

    camera = &camera1[cameraId];
    func_800721E8(objectIndex, 0x00040000);
    if (no_init < 0x2711U) {
        var_a2 = 0x5555;
    } else if (no_init < 0x9C41U) {
        var_a2 = 0x4000;
    } else {
        var_a2 = arg2;
    }
    if (func_8008A140(objectIndex, camera, var_a2) != 0) {
        func_800721C0(objectIndex, 0x00040000);
    }
}

u32 func_8008A364(s32 objectIndex, s32 cameraId, u16 arg2, s32 arg3) {
    Camera *camera;
    u32 var_v1;
    u16 var_a2;

    camera = &camera1[cameraId];
    func_800721E8(objectIndex, 0x00060000);
    var_v1 = func_8008896C(objectIndex, camera);
    if (var_v1 < (arg3 * arg3)) {
        func_800721C0(objectIndex, 0x00020000);
        if (var_v1 < 0x2711U) {
            var_a2 = 0x5555;
        } else if (var_v1 < 0x9C41U) {
            var_a2 = 0x4000;
        } else {
            var_a2 = arg2;
        }
        if (func_8008A140(objectIndex, camera, var_a2) != 0) {
            func_800721C0(objectIndex, 0x00040000);
        }
    }
    return var_v1;
}

void func_8008A454(s32 objectIndex, s32 cameraId, s32 arg2) {
    if (func_8008896C(objectIndex, &camera1[cameraId]) < (u32) (arg2 * arg2)) {
        func_800721C0(objectIndex, 0x00000020);
    } else {
        func_800721E8(objectIndex, 0x00000020);
    }
}

void func_8008A4CC(s32 objectIndex) {
    s32 loopIndex;
    Camera *camera;

    func_800721E8(objectIndex, 0x00070000);
    for (loopIndex = 0, camera = camera1; loopIndex < gPlayerCountSelection1; loopIndex++, camera++) {
        if (D_80165C18[objectIndex].unk_0A6 != 0) {
            if ((D_8018CF68[loopIndex] >= (D_80165C18[objectIndex].unk_0DF - 1)) && ((D_80165C18[objectIndex].unk_0DF + 1) >= D_8018CF68[loopIndex])) {
                func_800721C0(objectIndex, 0x00010000);
                if (D_8018CF68[loopIndex] == D_80165C18[objectIndex].unk_0DF) {
                    func_800721C0(objectIndex, 0x00020000);
                }
                if (func_8008A140(objectIndex, camera, 0x2AABU) != 0) {
                    func_800721C0(objectIndex, 0x00040000);
                }
            }
        }
    }
}

UNUSED void func_8008A610(s32 objectIndex) {
    s32 loopIndex;
    Camera *camera;

    func_800721E8(objectIndex, 0x00040000);
    for (camera = camera1, loopIndex = 0; loopIndex < gPlayerCountSelection1; loopIndex++, camera++) {
        if ((D_80165C18[objectIndex].unk_0A6 != 0) && (func_8008A140(objectIndex, camera, 0x2AABU) != 0)) {
            func_800721C0(objectIndex, 0x00040000);
        }
    }
}

#ifdef NEEDS_RODATA
extern f64 D_800EF4F0;// = 500.0;
void func_8008A6DC(s32 objectIndex, f32 arg1) {
    u16 var_a2;
    s32 loopIndex;
    Camera *camera;

    func_800721E8(objectIndex, 0x00060000);
    for (camera = camera1, loopIndex = 0; loopIndex < gPlayerCountSelection1; loopIndex++, camera++) {
        if ((D_80165C18[objectIndex].unk_0A6 != 0) && (func_80088BB8(objectIndex, camera, arg1) != 0)) {
            func_800721C0(objectIndex, 0x00020000);
            if (arg1 <= 500.0) {
                var_a2 = 0x4000;
            } else {
                var_a2 = 0x2AAB;
            }
            if (func_8008A140(objectIndex, camera, var_a2) != 0) {
                func_800721C0(objectIndex, 0x00040000);
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_8008A6DC.s")
#endif

UNUSED void func_8008A810(s32 arg0) {
    func_8008A6DC(arg0, 500.0f);
}

UNUSED void func_8008A830(s32 arg0) {
    func_8008A6DC(arg0, 1000.0f);
}

UNUSED void func_8008A850(s32 arg0) {
    func_8008A6DC(arg0, 2000.0f);
}

UNUSED s32 func_8008A870(Player *player) {
    return func_802ABD40(player->unk_110.unk3A);
}

s32 func_8008A890(Camera *camera) {
    return func_802ABD40(camera->unk_54.unk3A);
}

s32 func_8008A8B0(s16 arg0, s16 arg1) {
    s32 var_v1;
    s16* var_v0;
    s32 i;
    var_v1 = 0;
    for (i = 0; i < gPlayerCountSelection1; i++) {
        var_v0 = &D_8018CF68[i];
        if ((*var_v0 >= arg0) && (arg1 >= *var_v0)) {
            var_v1 = 1;
        }
    }
    return var_v1;
}

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
void func_8008A920(s32 objectIndex) {
    s32 temp_v0;
    struct_80165C18_entry *temp_v1;

    temp_v1 = &D_80165C18[objectIndex];
    temp_v0 = temp_v1->unk_07C;
    temp_v1->unk_038[0] = (f32) (temp_v0->unk8 - temp_v0->unk0) / (f32) temp_v0->unk6;
    temp_v1->unk_038[1] = (f32) (temp_v0->unkA - temp_v0->unk2) / (f32) temp_v0->unk6;
    temp_v1->unk_038[2] = (f32) (temp_v0->unkC - temp_v0->unk4) / (f32) temp_v0->unk6;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_8008A920.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
? func_8008A920();                                  /* extern */

void func_8008A9B8(s32 objectIndex) {
    s32 temp_t9;
    struct_80165C18_entry *temp_v0;

    temp_v0 = &D_80165C18[objectIndex];
    temp_t9 = temp_v0->unk_07C + 8;
    temp_v0->unk_07C = temp_t9;
    temp_v0->unk_09A = (s16) (0x2710 / (s16) temp_t9->unk6);
    temp_v0->unk_098 = 0;
    func_8008A920();
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_8008A9B8.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
? func_8008A920();                                  /* extern */

void func_8008AA3C(s32 objectIndex) {
    s32 temp_v1;
    struct_80165C18_entry *temp_v0;

    temp_v0 = &D_80165C18[objectIndex];
    temp_v1 = temp_v0->unk_080 + 2;
    temp_v0->unk_07C = temp_v1;
    temp_v0->unk_084[9] = 0;
    temp_v0->unk_098 = 0;
    temp_v0->unk_084[8] = temp_v1->unk-2;
    temp_v0->unk_028[0] = (f32) temp_v1->unk0;
    temp_v0->unk_028[1] = (f32) temp_v1->unk2;
    temp_v0->unk_028[2] = (f32) temp_v1->unk4;
    temp_v0->unk_09A = (s16) (0x2710 / (s16) temp_v1->unk6);
    func_8008A920();
    func_80086FD4(objectIndex);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_8008AA3C.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
? func_8008A9B8();                                  /* extern */

void func_8008AB10(s32 objectIndex) {
    s16 temp_t0;
    s16 temp_t3;
    struct_80165C18_entry *temp_v0;

    temp_v0 = &D_80165C18[objectIndex];
    temp_v0->unk_028[0] += temp_v0->unk_038[0];
    temp_t0 = (u16) temp_v0->unk_098 + (u16) temp_v0->unk_09A;
    temp_v0->unk_028[1] += temp_v0->unk_038[1];
    temp_v0->unk_028[2] += temp_v0->unk_038[2];
    temp_v0->unk_098 = temp_t0;
    if ((temp_t0 & 0xFFFF) >= 0x2710) {
        temp_t3 = (u16) temp_v0->unk_084[9] + 1;
        temp_v0->unk_084[9] = temp_t3;
        if (((temp_t3 & 0xFFFF) + 1) == (u16) temp_v0->unk_084[8]) {
            temp_v0->unk_0AE += 1;
            return;
        }
        func_8008A9B8();
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_8008AB10.s")
#endif

UNUSED void func_8008ABC0(s32 arg0) {
    switch (D_80165C18[arg0].unk_0AE) {
        case 1:
            func_8008AA3C();
            break;
        case 2:
            func_8008AB10();
            break;
        case 3:
            func_80086F60(arg0);
            /* fallthrough */
        case 0:
            break;
    }
}

UNUSED void func_8008AC40(s32 arg0) {
    switch (D_80165C18[arg0].unk_0AE) {
        case 1:
            func_8008AA3C();
            break;
        case 2:
            func_8008AB10();
            break;
        case 3:
            func_8008701C(arg0, 1);
            /* fallthrough */
        case 0:
            break;
    }
}

UNUSED void func_8008ACC0(void) {

}

UNUSED void func_8008ACC8(void) {

}

UNUSED void func_8008ACD0(void) {

}

UNUSED void func_8008ACD8(void) {

}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern f64 D_800EF4F8;
extern f64 D_800EF500;

void func_8008ACE0(void *arg0, f32 arg1) {
    f32 temp_f14;
    f32 temp_f2;
    f64 temp_f0;
    f64 temp_f16;
    f64 temp_f18;

    temp_f0 = arg1;
    temp_f2 = 1.0 - temp_f0;
    temp_f14 = arg1 * arg1;
    temp_f18 = temp_f14;
    temp_f16 = temp_f14 * arg1;
    arg0->unk0 = (temp_f2 * temp_f2 * temp_f2) / 6.0;
    arg0->unk4 = ((temp_f16 * 0.5) - temp_f18) + D_800EF4F8;
    arg0->unk8 = (temp_f16 * -0.5) + (0.5 * temp_f18) + (0.5 * temp_f0) + D_800EF500;
    arg0->unkC = temp_f16 / 6.0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_8008ACE0.s")
#endif

UNUSED void func_8008ADC0(void) {

}

UNUSED void func_8008ADC8(void) {

}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_8008ADD0(void *arg0, f32 arg1) {
    f64 temp_f0;
    f64 temp_f14;
    f64 temp_f16;
    f64 temp_f2;

    temp_f0 = arg1;
    temp_f16 = 2.0 * temp_f0;
    temp_f2 = 1.0 - temp_f0;
    temp_f14 = arg1 * arg1;
    arg0->unk0 = temp_f2 * -0.5 * temp_f2;
    arg0->unk4 = (temp_f14 * 1.5) - temp_f16;
    arg0->unk8 = (((temp_f14 * 3.0) - temp_f16) - 1.0) * -0.5;
    arg0->unkC = temp_f14 * 0.5;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_8008ADD0.s")
#endif

UNUSED void func_8008AE8C(void) {

}

UNUSED void func_8008AE94(void) {

}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern ? D_80165760;
extern ? D_80165770;
extern ? D_80165780;
extern ? D_80165C18;
extern ? D_80183DC8;

void func_8008AE9C(s32 arg0) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;
    void *temp_v0;

    temp_f2 = D_80183DC8.unk0;
    temp_f12 = D_80183DC8.unk4;
    temp_f14 = D_80183DC8.unk8;
    temp_f0 = D_80183DC8.unkC;
    temp_v0 = (arg0 * 0xE0) + &D_80165C18;
    temp_v0->unk38 = (D_80165760.unk6 * temp_f0) + ((temp_f2 * D_80165760.unk0) + (temp_f12 * D_80165760.unk2) + (temp_f14 * D_80165760.unk4));
    temp_v0->unk3C = (D_80165770.unk6 * temp_f0) + ((temp_f2 * D_80165770.unk0) + (temp_f12 * D_80165770.unk2) + (temp_f14 * D_80165770.unk4));
    temp_v0->unk40 = (D_80165780.unk6 * temp_f0) + ((temp_f2 * D_80165780.unk0) + (temp_f12 * D_80165780.unk2) + (temp_f14 * D_80165780.unk4));
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_8008AE9C.s")
#endif

void func_8008AFE0(s32 arg0, f32 arg1) {
    func_8008ADD0(&D_80183DC8, arg1);
    func_8008AE9C(arg0);
}

UNUSED void func_8008B018(void) {

}

UNUSED void func_8008B020(void) {

}

UNUSED void func_8008B028(void) {

}

UNUSED void func_8008B030(void) {

}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern ? D_80165760;
extern ? D_80165770;
extern ? D_80165780;
extern ? D_80165C18;
extern ? D_80183DA8;

void func_8008B038(s32 arg0) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;
    void *temp_v0;

    temp_f2 = D_80183DA8.unk0;
    temp_f12 = D_80183DA8.unk4;
    temp_f14 = D_80183DA8.unk8;
    temp_f0 = D_80183DA8.unkC;
    temp_v0 = (arg0 * 0xE0) + &D_80165C18;
    temp_v0->unk28 = (D_80165760.unk6 * temp_f0) + ((temp_f2 * D_80165760.unk0) + (temp_f12 * D_80165760.unk2) + (temp_f14 * D_80165760.unk4));
    temp_v0->unk2C = (D_80165770.unk6 * temp_f0) + ((temp_f2 * D_80165770.unk0) + (temp_f12 * D_80165770.unk2) + (temp_f14 * D_80165770.unk4));
    temp_v0->unk30 = (D_80165780.unk6 * temp_f0) + ((temp_f2 * D_80165780.unk0) + (temp_f12 * D_80165780.unk2) + (temp_f14 * D_80165780.unk4));
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_8008B038.s")
#endif

void func_8008B17C(s32 arg0, f32 arg1) {
    func_8008ACE0(&D_80183DA8, arg1);
    func_8008B038(arg0);
}

UNUSED void func_8008B1B4(void) {

}

UNUSED void func_8008B1BC(void) {

}

UNUSED void func_8008B1C4(void) {

}

UNUSED void func_8008B1CC(void) {

}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern s16 D_80165760;
extern s16 D_80165762;
extern s16 D_80165764;
extern s16 D_80165766;
extern s16 D_80165770;
extern s16 D_80165772;
extern s16 D_80165774;
extern s16 D_80165776;
extern s16 D_80165780;
extern s16 D_80165782;
extern s16 D_80165784;
extern s16 D_80165786;
extern ? D_80165C94;

void func_8008B1D4(s32 arg0) {
    s16 *temp_v0;
    void *temp_v0_2;

    temp_v0 = *(&D_80165C94 + (arg0 * 0xE0));
    temp_v0_2 = temp_v0 + 0x18;
    D_80165760 = *temp_v0;
    D_80165770 = temp_v0_2->unk-16;
    D_80165780 = temp_v0_2->unk-14;
    D_80165762 = temp_v0_2->unk-10;
    D_80165772 = temp_v0_2->unk-E;
    D_80165782 = temp_v0_2->unk-C;
    D_80165764 = temp_v0_2->unk-8;
    D_80165774 = temp_v0_2->unk-6;
    D_80165784 = temp_v0_2->unk-4;
    D_80165766 = temp_v0_2->unk0;
    D_80165776 = temp_v0_2->unk2;
    D_80165786 = temp_v0_2->unk4;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_8008B1D4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern s16 D_80165760;
extern s16 D_80165762;
extern s16 D_80165764;
extern s16 D_80165766;
extern s16 D_80165770;
extern s16 D_80165772;
extern s16 D_80165774;
extern s16 D_80165776;
extern s16 D_80165780;
extern s16 D_80165782;
extern s16 D_80165784;
extern s16 D_80165786;
extern ? D_80165C18;

void func_8008B284(s32 arg0) {
    s32 sp0;
    s16 *temp_v0_2;
    s16 temp_a1;
    u16 temp_a2;
    void *temp_v0;
    void *temp_v0_3;
    void *temp_v1;
    s16 *phi_v0;
    void *phi_v0_2;
    void *phi_v0_3;

    temp_v1 = (arg0 * 0xE0) + &D_80165C18;
    temp_a2 = temp_v1->unk94;
    temp_a1 = temp_v1->unk96;
    temp_v0 = temp_v1->unk7C;
    if ((temp_a2 - 4) >= temp_a1) {
        sp0 = 0x2710;
    } else if ((temp_a1 + 3) == temp_a2) {
        sp0 = 2;
    } else if ((temp_a1 + 2) == temp_a2) {
        sp0 = 1;
    } else if ((temp_a1 + 1) == temp_a2) {
        sp0 = 0;
    }
    D_80165760 = temp_v0->unk0;
    temp_v0_2 = temp_v0 + 8;
    D_80165770 = temp_v0->unk2;
    D_80165780 = temp_v0_2->unk-4;
    phi_v0 = temp_v0_2;
    if (sp0 == 0) {
        phi_v0 = temp_v1->unk80 + 2;
    }
    temp_v0_3 = phi_v0 + 8;
    D_80165762 = *phi_v0;
    D_80165772 = temp_v0_3->unk-6;
    D_80165782 = temp_v0_3->unk-4;
    phi_v0_2 = temp_v0_3;
    if (sp0 == 1) {
        phi_v0_2 = temp_v1->unk80 + 2;
    }
    D_80165764 = phi_v0_2->unk0;
    D_80165774 = phi_v0_2->unk2;
    D_80165784 = phi_v0_2->unk4;
    if (sp0 == 2) {
        phi_v0_3 = temp_v1->unk80 + 2;
    } else {
        phi_v0_3 = phi_v0_2 + 8;
    }
    D_80165766 = phi_v0_3->unk0;
    D_80165776 = phi_v0_3->unk2;
    D_80165786 = phi_v0_3->unk4;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_8008B284.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
void func_8008B3E4(s32 objectIndex) {
    s32 temp_v1;
    struct_80165C18_entry *temp_v0;

    if (func_80072270(objectIndex, 8) != 0) {
        temp_v0 = &D_80165C18[objectIndex];
        temp_v0->unk_084[9] = 0;
        temp_v0->unk_098 = 0;
        temp_v1 = temp_v0->unk_080 + 2;
        temp_v0->unk_07C = temp_v1;
        temp_v0->unk_084[8] = temp_v1->unk-2;
        func_800721C0(objectIndex, 8);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_8008B3E4.s")
#endif

void func_8008B44C(s32 arg0) {
    D_80165C18[arg0].unk_098 = 0;
    D_80165C18[arg0].unk_07C += 8;
}

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
? func_8008B1D4(s32);                               /* extern */
? func_8008B284(s32);                               /* extern */
? func_8008B3E4();                                  /* extern */
extern f64 D_800EF508;
extern f64 D_800EF510;

void func_8008B478(s32 objectIndex, s32 arg1) {
    f32 sp34;
    struct_80165C18_entry *sp24;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 var_f6;
    s32 temp_v0;
    struct_80165C18_entry *temp_v1;
    u16 temp_t9;
    u32 temp_t3;

    func_8008B3E4();
    if (arg1 != 0) {
        func_8008B284(objectIndex);
    } else {
        func_8008B1D4(objectIndex);
    }
    temp_v1 = &D_80165C18[objectIndex];
    temp_t9 = (u16) temp_v1->unk_098;
    var_f6 = (f32) temp_t9;
    if ((s32) temp_t9 < 0) {
        var_f6 += 4294967296.0f;
    }
    sp24 = temp_v1;
    temp_f0 = (f32) ((f64) var_f6 / 10000.0);
    sp34 = temp_f0;
    func_8008B17C(objectIndex, temp_f0);
    if (func_8007223C(objectIndex, 0x00000800) != 0) {
        sp24 = temp_v1;
        func_8008AFE0(objectIndex, sp34);
    }
    temp_v0 = temp_v1->unk_07C;
    temp_f0_2 = (f32) temp_v0->unk6;
    temp_t3 = (u32) (10000.0 / (f64) ((((f32) temp_v0->unkE - temp_f0_2) * sp34) + temp_f0_2));
    temp_v1->unk_09A = (s16) temp_t3;
    temp_v1->unk_098 = (u16) temp_v1->unk_098 + temp_t3;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_8008B478.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
? func_8008B478(?);                                 /* extern */

void func_8008B620(s32 objectIndex) {
    s16 temp_t0;
    struct_80165C18_entry *temp_v0;

    func_8008B478(0);
    temp_v0 = &D_80165C18[objectIndex];
    if ((s32) (u16) temp_v0->unk_098 >= 0x2710) {
        temp_t0 = (u16) temp_v0->unk_084[9] + 1;
        temp_v0->unk_084[9] = temp_t0;
        if (((temp_t0 & 0xFFFF) + 3) == (u16) temp_v0->unk_084[8]) {
            temp_v0->unk_0AE += 1;
            return;
        }
        func_8008B44C(objectIndex);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_8008B620.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
? func_8008B478(?);                                 /* extern */

void func_8008B6A4(s32 objectIndex) {
    s16 temp_t0;
    struct_80165C18_entry *temp_v0;

    func_8008B478(1);
    temp_v0 = &D_80165C18[objectIndex];
    if ((s32) (u16) temp_v0->unk_098 >= 0x2710) {
        temp_t0 = (u16) temp_v0->unk_084[9] + 1;
        temp_v0->unk_084[9] = temp_t0;
        if ((temp_t0 & 0xFFFF) == (u16) temp_v0->unk_084[8]) {
            func_800721E8(objectIndex, 8);
            return;
        }
        func_8008B44C(objectIndex);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_8008B6A4.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
? func_8008B620();                                  /* extern */
extern ? D_80165CC6;

void func_8008B724(s32 objectIndex) {
    s16 temp_v0;

    temp_v0 = *(&D_80165CC6 + (objectIndex * 0xE0));
    switch (temp_v0) {                              /* irregular */
    case 1:
        func_8008B620();
        return;
    case 2:
        func_80086F60(objectIndex);
        /* fallthrough */
    case 0:
        return;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_8008B724.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8008B6A4(); // extern
extern ? D_80165CC6;

void func_8008B78C(s32 arg0) {
    s16 temp_v0;

    temp_v0 = *(&D_80165CC6 + (arg0 * 0xE0));
    if ((temp_v0 != 0) && (temp_v0 == 1)) {
        func_8008B6A4();
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_8008B78C.s")
#endif

void func_8008B7D4(s32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    D_80165C18[arg0].unk_010[0] = arg1;
    D_80165C18[arg0].unk_010[1] = arg2;
    D_80165C18[arg0].unk_010[2] = arg3;
}

void func_8008B80C(s32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    D_80165C18[arg0].unk_028[0] = arg1;
    D_80165C18[arg0].unk_028[1] = arg2;
    D_80165C18[arg0].unk_028[2] = arg3;
}

void func_8008B844(s32 arg0) {
    f32 temp_f0 = D_80165C18[arg0].unk_010[0];

    D_80165C18[arg0].unk_004[0] = D_80165C18[arg0].unk_028[0] + temp_f0;
    D_80165C18[arg0].unk_004[1] = D_80165C18[arg0].unk_028[1] + temp_f0;
    D_80165C18[arg0].unk_004[2] = D_80165C18[arg0].unk_028[2] + temp_f0;
}

void func_8008B888(s32 arg0, u16 arg1, u16 arg2, u16 arg3) {
    D_80165C18[arg0].unk_0BE = arg1;
    D_80165C18[arg0].unk_0C0 = arg2;
    D_80165C18[arg0].unk_0C2 = arg3;
}

void func_8008B8BC(s32 arg0, u16 arg1, u16 arg2, u16 arg3) {
    D_80165C18[arg0].unk_0B2 = arg1;
    D_80165C18[arg0].unk_0B4 = arg2;
    D_80165C18[arg0].unk_0B6 = arg3;
}

void func_8008B8F0(s32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    D_80165C18[arg0].unk_038[0] = arg1;
    D_80165C18[arg0].unk_038[1] = arg2;
    D_80165C18[arg0].unk_038[2] = arg3;
}

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
extern ? D_80165C28;

void func_8008B928(s32 objectIndex, s16 arg1, s16 arg2, s16 arg3, s32 arg4) {
    s32 temp_v0;
    struct_80165C18_entry *temp_s0;

    temp_s0 = &D_80165C18[objectIndex];
    temp_s0->unk_010[0] = (f32) arg1;
    temp_s0->unk_010[1] = (f32) arg2;
    temp_s0->unk_080 = arg4;
    temp_s0->unk_010[2] = (f32) arg3;
    temp_s0->unk_038[0] = (f32) (arg4->unkA - arg4->unk2);
    temp_s0->unk_038[1] = (f32) (arg4->unkC - arg4->unk4);
    temp_s0->unk_038[2] = (f32) (arg4->unkE - arg4->unk6);
    temp_v0 = func_80087368(objectIndex);
    temp_s0->unk_0C0 = (u16) temp_v0;
    temp_s0->unk_038[2] = func_800416D8(temp_s0->unk_038[2], temp_s0->unk_038[0], -temp_v0 & 0xFFFF);
    temp_s0->unk_0BE = func_80087324(objectIndex);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_8008B928.s")
#endif

UNUSED void func_8008BA40(s32 objectIndex, s16 arg1, u16 arg2) {
    s16 test;

    test = random_int(arg2) - (arg2 / 2);
    D_80165C18[objectIndex].unk_010[0] = arg1 + test;
}

void func_8008BAB4(s32 objectIndex, s16 arg1, u16 arg2) {
    s16 test;

    test = random_int(arg2) - (arg2 / 2);
    D_80165C18[objectIndex].unk_010[1] = arg1 + test;
}

UNUSED void func_8008BB28(s32 objectIndex, s16 arg1, u16 arg2) {
    s16 test;

    test = random_int(arg2) - (arg2 / 2);
    D_80165C18[objectIndex].unk_010[2] = arg1 + test;
}

UNUSED void func_8008BB9C(s32 objectIndex, s16 arg1, s16 arg2, u16 arg3, u16 arg4) {
    s16 sp1E;
    s16 temp_v0;

    sp1E    = random_int(arg3) - ((s32) arg3 / 2);
    temp_v0 = random_int(arg4) - ((s32) arg4 / 2);
    D_80165C18[objectIndex].unk_010[0] = arg1 + sp1E;
    D_80165C18[objectIndex].unk_010[1] = arg2 + temp_v0;
}

UNUSED void func_8008BC58(s32 objectIndex, s16 arg1, s16 arg2, u16 arg3, u16 arg4) {
    s16 sp1E;
    s16 temp_v0;

    sp1E    = random_int(arg3) - ((s32) arg3 / 2);
    temp_v0 = random_int(arg4) - ((s32) arg4 / 2);
    D_80165C18[objectIndex].unk_010[0] = arg1 + sp1E;
    D_80165C18[objectIndex].unk_010[2] = arg2 + temp_v0;
}

void func_8008BD14(s32 objectIndex, s16 arg1, s16 arg2, s16 arg3, u16 arg4, u16 arg5, u16 arg6) {
    s16 sp1E;
    s16 sp1C;
    s16 temp_v0;

    sp1E    = random_int(arg4) - ((s32) arg4 / 2);
    sp1C    = random_int(arg5) - ((s32) arg5 / 2);
    temp_v0 = random_int(arg6) - ((s32) arg6 / 2);
    D_80165C18[objectIndex].unk_010[0] = arg1 + sp1E;
    D_80165C18[objectIndex].unk_010[1] = arg2 + sp1C;
    D_80165C18[objectIndex].unk_010[2] = arg3 + temp_v0;
}

void func_8008BE0C(s32 objectIndex, s16 arg1, u16 arg2) {
    D_80165C18[objectIndex].unk_010[0] = gPlayerOneCopy->pos[0] + (sins(arg2) * arg1);
    D_80165C18[objectIndex].unk_010[2] = gPlayerOneCopy->pos[2] + (coss(arg2) * arg1);
}

void func_8008BEA4(s32 objectIndex, u16 arg1, u16 arg2) {
    u16 thing;
    u16 thing2;

    thing  = random_int(arg1);
    thing2 = camera1->rot[1] + random_int(arg2) - ((s32) arg2 / 2);
    func_8008BE0C(objectIndex, thing, thing2);
}

void func_8008BF18(s32 objectIndex) {
    D_80165C18[objectIndex].unk_004[0] = D_80165C18[objectIndex].unk_010[0] + D_80165C18[objectIndex].unk_028[0];
    D_80165C18[objectIndex].unk_004[1] = D_80165C18[objectIndex].unk_010[1] + D_80165C18[objectIndex].unk_028[1];
    D_80165C18[objectIndex].unk_004[2] = D_80165C18[objectIndex].unk_010[2] + D_80165C18[objectIndex].unk_028[2];
}

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
extern ? D_80183E40;
extern ? D_80183E80;

void func_8008BF64(s32 objectIndex) {
    struct_80165C18_entry *temp_v0;

    temp_v0 = &D_80165C18[objectIndex];
    D_80183E40.unk0 = (f32) temp_v0->unk_004[0];
    D_80183E40.unk4 = (f32) temp_v0->unk_004[1];
    D_80183E40.unk8 = (f32) temp_v0->unk_004[2];
    D_80183E80.unk0 = (u16) temp_v0->unk_0BE;
    D_80183E80.unk2 = (u16) temp_v0->unk_0C0;
    D_80183E80.unk4 = (u16) temp_v0->unk_0C2;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_8008BF64.s")
#endif

void func_8008BFC0(s32 objectIndex) {
    D_80165C18[objectIndex].unk_09C = D_80165C18[objectIndex].unk_004[0];
    D_80165C18[objectIndex].unk_09E = D_80165C18[objectIndex].unk_004[1];
}

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
? func_80088228();                                  /* extern */
? func_80088364();                                  /* extern */
? func_8008B620();                                  /* extern */
? func_8008B6A4();                                  /* extern */

void func_8008BFFC(s32 objectIndex) {
    s16 temp_v0;
    s16 temp_v0_2;
    s16 temp_v0_3;
    s16 temp_v0_4;
    s16 temp_v0_5;
    s16 temp_v0_6;
    struct_80165C18_entry *temp_v1;
    u8 temp_t8;

    temp_v1 = &D_80165C18[objectIndex];
    temp_t8 = (u8) temp_v1->unk_0DE;
    switch (temp_t8) {
    case 1:
        if (temp_v1->unk_0AE == 1) {
            func_8008B620();
            return;
        }
    default:
    case 0:                                         /* switch 1 */
    case 0:                                         /* switch 2 */
    case 0:                                         /* switch 3 */
        return;
    case 2:
        temp_v0 = temp_v1->unk_0AE;
        if ((temp_v0 != 0) && (temp_v0 == 1)) {
            func_8008B6A4();
            return;
        }
        break;
    case 3:
        temp_v0_2 = temp_v1->unk_0AE;
        if ((temp_v0_2 != 0) && (temp_v0_2 == 1)) {
            func_8008B620();
            return;
        }
        break;
    case 4:
        temp_v0_3 = temp_v1->unk_0AE;
        switch (temp_v0_3) {                        /* switch 1; irregular */
        case 1:                                     /* switch 1 */
            func_8008B620();
            return;
        case 2:                                     /* switch 1 */
            func_80086F60(objectIndex);
            return;
        }
        break;
    case 5:
        temp_v0_4 = temp_v1->unk_0AE;
        switch (temp_v0_4) {                        /* switch 2; irregular */
        case 1:                                     /* switch 2 */
            func_8008B620();
            return;
        case 2:                                     /* switch 2 */
            func_80086F60(objectIndex);
            return;
        }
        break;
    case 6:
        temp_v0_5 = temp_v1->unk_0AE;
        if ((temp_v0_5 != 0) && (temp_v0_5 == 1)) {
            func_8008B620();
            return;
        }
        break;
    case 7:
        temp_v0_6 = temp_v1->unk_0AE;
        switch (temp_v0_6) {                        /* switch 3; irregular */
        case 1:                                     /* switch 3 */
            func_80088228();
            return;
        case 2:                                     /* switch 3 */
            func_80088364();
            break;
        }
        break;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80086E70/func_8008BFFC.s")
#endif

UNUSED void func_8008C1B8(s32 arg0) {

}

UNUSED void func_8008C1C0(s32 arg0) {

}
