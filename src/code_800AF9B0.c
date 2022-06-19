#include <ultra64.h>
#include <macros.h>
#include <defines.h>
#include "global.h"

#include "code_800AF9B0.h"

#include "code_80091750.h"
#include "memory.h"

void func_800AF9B0(void) {
    D_8018EDB8 = func_802A7B70(7680);
    D_8018EDBC = func_802A7B70(7680);
}


#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern f32 D_800F2B30;
extern void *gDisplayListHead;

void func_800AF9E4(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s16 arg4, s16 arg5, s32 arg6, s32 arg7) {
    f32 temp_f0;
    s32 temp_a1;
    s32 temp_lo;
    s32 temp_t1;
    s32 temp_v0;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_a3_4;
    void *temp_a3_5;
    void *temp_v1;
    s32 phi_v0;
    s16 phi_t6;
    s32 phi_a1;
    s32 phi_v1;
    s32 phi_v0_2;

    temp_lo = arg2 * arg3;
    temp_f0 = D_800F2B30;
    phi_v0 = 0;
    phi_v0_2 = 0;
    do {
        temp_v1 = arg0 + (phi_v0 * 0x10);
        temp_a1 = phi_v0 % 2;
        temp_t1 = arg1 + 1;
        temp_v1->unk0 = ((temp_a1 * arg7) + arg6) - 0x1F8;
        temp_v0 = phi_v0 + 1;
        phi_v0 = temp_v0;
        if ((phi_v0 / 2) == 0) {
            temp_v1->unk2 = temp_lo - 0x1A4;
        } else {
            temp_v1->unk2 = (temp_lo + arg3) - 0x1A4;
        }
        if (temp_a1 == 0) {
            phi_t6 = temp_v1->unk2 + ((arg1 * arg1) * temp_f0);
        } else {
            phi_t6 = temp_v1->unk2 + ((temp_t1 * temp_t1) * temp_f0);
        }
        temp_v1->unk2 = phi_t6;
        temp_v1->unkC = 0;
        temp_v1->unkD = 0;
        temp_v1->unkE = 0x78;
        temp_v1->unkF = 0xFF;
        if (temp_a1 == 0) {
            temp_v1->unk4 = arg4;
        } else {
            temp_v1->unk4 = arg5;
        }
    } while (temp_v0 != 4);
    if ((((arg1 / 2) + (arg2 / 2)) & 1) == 0) {
        phi_a1 = 0;
        phi_v1 = 0;
    } else {
        phi_a1 = 0xFF;
        phi_v1 = 0xFF;
        phi_v0_2 = 0xFF;
    }
    temp_a3 = gDisplayListHead;
    gDisplayListHead = temp_a3 + 8;
    temp_a3->unk0 = 0xFA000000;
    temp_a3->unk4 = (phi_a1 << 0x18) | ((phi_v1 & 0xFF) << 0x10) | ((phi_v0_2 & 0xFF) << 8) | 0xFF;
    temp_a3_2 = gDisplayListHead;
    gDisplayListHead = temp_a3_2 + 8;
    temp_a3_2->unk4 = 0;
    temp_a3_2->unk0 = 0xE7000000;
    temp_a3_3 = gDisplayListHead;
    gDisplayListHead = temp_a3_3 + 8;
    temp_a3_3->unk0 = 0x400103F;
    temp_a3_3->unk4 = arg0 + 0x80000000;
    temp_a3_4 = gDisplayListHead;
    gDisplayListHead = temp_a3_4 + 8;
    temp_a3_4->unk4 = 0x20400;
    temp_a3_4->unk0 = 0xBF000000;
    temp_a3_5 = gDisplayListHead;
    gDisplayListHead = temp_a3_5 + 8;
    temp_a3_5->unk4 = 0x60402;
    temp_a3_5->unk0 = 0xBF000000;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800AF9B0/func_800AF9E4.s")
#endif

#ifdef MIPS_TO_C
struct Unk001 {
    /* 0x00 */ s16 unk00;
    /* 0x02 */ s16 unk02;
    /* 0x04 */ s16 unk04;
    /* 0x06 */ u8 pad06[0x10 - 0x06];
}; // sizeof == 0x10

struct Unk002 {
    /* 0x00 */ s16 unk00;
    /* 0x02 */ s16 unk02;
    /* 0x04 */ s16 unk04;
}; // sizeof >= 0x0C

void func_800AFC54(struct Unk001 *arg0, s32 arg1, s32 arg2, s32 arg3, struct Unk002 *arg4) {
    s16 t9, t1, t2, t3;

    t9 = arg0[arg3].unk00;
    t1 = arg0[arg2].unk00;

}

#else
GLOBAL_ASM("asm/non_matchings/code_800AF9B0/func_800AFC54.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_800AFE00(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s16 sp1A;
    s16 sp14;
    s16 *temp_a1;
    s16 *temp_a3;
    s32 temp_v0;
    s32 temp_v1;
    void *temp_a1_2;
    void *temp_a3_2;
    void *temp_t1;
    void *temp_t3;
    s16 *phi_a3;
    s16 *phi_t0;
    s16 *phi_a1;
    s16 *phi_t1;
    s32 phi_v1;
    s32 phi_v0;
    s32 phi_v1_2;

    if (arg2 == 0) {
        phi_v0 = 0;
    } else {
        phi_v0 = arg2 - 1;
    }
    phi_a1 = &sp14;
    if (arg2 == arg3) {
        phi_v1_2 = arg3;
    } else {
        phi_v1_2 = arg2 + 1;
    }
    phi_a3 = arg1 + (arg2 * 6);
    phi_t0 = arg1 + (phi_v0 * 6);
    phi_t1 = arg1 + (phi_v1_2 * 6);
    do {
        temp_a1 = phi_a1 + 2;
        temp_a3 = phi_a3 + 2;
        temp_a1->unk-2 = (*phi_a3 + *phi_t0) / 2;
        temp_a1->unk4 = (temp_a3->unk-2 + *phi_t1) / 2;
        phi_a3 = temp_a3;
        phi_t0 += 2;
        phi_a1 = temp_a1;
        phi_t1 += 2;
    } while (temp_a1 != &sp1A);
    phi_v1 = 0;
    do {
        temp_v0 = phi_v1 * 0x10;
        temp_a1_2 = arg0 + temp_v0;
        temp_a1_2->unkC = sp14;
        temp_a3_2 = arg0 + 0x10 + temp_v0;
        temp_t1 = arg0 + 0x20 + temp_v0;
        temp_a1_2->unkD = sp16;
        temp_t3 = arg0 + 0x30 + temp_v0;
        temp_v1 = phi_v1 + 0x30;
        temp_a1_2->unkE = sp18;
        temp_a3_2->unkC = sp1A;
        temp_a3_2->unkD = sp1C;
        temp_a3_2->unkE = sp1E;
        temp_t1->unkC = sp14;
        temp_t1->unkD = sp16;
        temp_t1->unkE = sp18;
        temp_t3->unkC = sp1A;
        temp_t3->unkD = sp1C;
        temp_t3->unkE = sp1E;
        phi_v1 = temp_v1;
    } while (temp_v1 != 0x1E0);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800AF9B0/func_800AFE00.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800AFC54(s32, ?, ?, ?, ? *); // extern
? func_800AFE00(s32, ? *, s32, ?); // extern

void func_800AFF58(s32 arg0) {
    ? sp88;
    ? sp40;
    s32 temp_s0;
    u32 temp_s2;
    s32 phi_s1;
    ? *phi_s2;
    s32 phi_s1_2;
    s32 phi_s0;

    phi_s1 = 0;
    phi_s2 = &sp40;
    phi_s1_2 = 0;
    do {
        func_800AFC54((phi_s1 * 0x10) + arg0, 1, 2, 0, phi_s2);
        temp_s2 = phi_s2 + 6;
        phi_s1 += 4;
        phi_s2 = temp_s2;
    } while (temp_s2 < &sp88);
    phi_s0 = 0;
    do {
        func_800AFE00((phi_s1_2 * 0x10) + arg0, &sp40, phi_s0, 0xB);
        temp_s0 = phi_s0 + 1;
        phi_s1_2 += 4;
        phi_s0 = temp_s0;
    } while (temp_s0 != 0xC);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800AF9B0/func_800AFF58.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800AF9E4(s32, s32, s32, ?, s32, s32, s32, s32); // extern
? func_800AFF58(s32); // extern
f32 sins(s32); // extern
extern ? D_800E8680;
extern ? D_800E8688;
extern f32 D_800F2B44;
extern s16 D_8018EDB0;
extern s16 D_8018EDB2;
extern s16 D_8018EDB4;
extern s32 D_8018EDB8;
extern s32 D_8018EDBC;
extern void *gDisplayListHead;

void func_800B0004(void) {
    s32 spBC;
    s32 sp64;
    f32 temp_f22;
    s32 temp_fp;
    s32 temp_s1;
    s32 temp_s4;
    void *temp_a0;
    void *temp_a1;
    void *temp_a2;
    void *temp_a3;
    void *temp_t0;
    void *temp_t1;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    s32 phi_s0;
    s32 phi_s3;
    s32 phi_fp;
    s32 phi_s2;

    temp_a0 = gDisplayListHead;
    gDisplayListHead = temp_a0 + 8;
    temp_a0->unk0 = 0x3860010;
    temp_a0->unk4 = &D_800E8688 - 0x80000000;
    temp_a1 = gDisplayListHead;
    gDisplayListHead = temp_a1 + 8;
    temp_a1->unk0 = 0x3880010;
    temp_a1->unk4 = &D_800E8680 - 0x80000000;
    temp_a2 = gDisplayListHead;
    gDisplayListHead = temp_a2 + 8;
    temp_a2->unk4 = 0x80000040;
    temp_a2->unk0 = 0xBC000002;
    temp_a3 = gDisplayListHead;
    gDisplayListHead = temp_a3 + 8;
    temp_a3->unk4 = 0x204;
    temp_a3->unk0 = 0xB7000000;
    temp_t0 = gDisplayListHead;
    gDisplayListHead = temp_t0 + 8;
    temp_t0->unk4 = -0x604;
    temp_t0->unk0 = 0xFC327E64;
    temp_t1 = gDisplayListHead;
    gDisplayListHead = temp_t1 + 8;
    temp_t1->unk4 = 0x2000;
    temp_t1->unk0 = 0xB6000000;
    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk4 = 0x20000;
    temp_v0->unk0 = 0xB7000000;
    if ((D_8018EDB4 % 2) != 0) {
        spBC = D_8018EDB8;
    } else {
        spBC = D_8018EDBC;
    }
    D_8018EDB2 = 0x9C0;
    temp_f22 = D_800F2B44;
    sp64 = 0;
    phi_fp = 0;
    do {
        phi_s0 = 0;
        phi_s3 = 0;
        phi_s2 = 0;
loop_5:
        temp_s1 = phi_s0 + 1;
        temp_s4 = sins((D_8018EDB0 - (phi_s0 * D_8018EDB2)) & 0xFFFF) * 84.0f * phi_s0 * temp_f22;
        func_800AF9E4((phi_s3 * 0x10) + spBC + (sp64 * 0x10), phi_s0, phi_fp, 0x54, temp_s4, sins((D_8018EDB0 - (temp_s1 * D_8018EDB2)) & 0xFFFF) * 84.0f * temp_s1 * temp_f22, phi_s2, 0x54);
        phi_s0 = temp_s1;
        phi_s3 += 4;
        phi_s2 += 0x54;
        if (temp_s1 != 0xC) {
            goto loop_5;
        }
        temp_fp = phi_fp + 1;
        sp64 += 0x30;
        phi_fp = temp_fp;
    } while (temp_fp != 0xA);
    func_800AFF58(spBC);
    D_8018EDB0 = D_8018EDB0 + D_8018EDB2;
    D_8018EDB4 = D_8018EDB4 + 1;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk0 = 0xB7000000;
    temp_v0_2->unk4 = 0x2000;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk4 = 0x80000040;
    temp_v0_3->unk0 = 0xBC000002;
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk4 = 0x20000;
    temp_v0_4->unk0 = 0xB6000000;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800AF9B0/func_800B0004.s")
#endif


