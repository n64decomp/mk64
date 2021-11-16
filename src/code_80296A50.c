#include <ultra64.h>
#include <macros.h>
#include <PR/os.h>
#include "types.h"
#include <common_structs.h>
#include "actor_types.h"

extern Camera *camera1;

#ifdef MIPS_TO_C
void func_80296A50(s32 arg0, s32 arg3) {
    void *sp1C;
    s16 temp_t3;
    s16 temp_t7;
    s16 temp_v0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    u16 temp_t1;
    void *phi_a1;
    u16 phi_a2;
    void *phi_a1_2;
    u16 phi_a2_2;
    s32 phi_a2_3;
    void *phi_a1_3;
    u16 phi_a2_4;
    s32 phi_a2_5;
    void *phi_a1_4;
    u16 phi_a2_6;
    s32 phi_a3;
    temp_t1 = D_8015F900;
    if ((s32) temp_t1 < 0x64) {
        phi_a1 = (temp_t1 * 0x70) + &D_8015F9B8;
        phi_a2 = temp_t1;
loop_2:
        if ((arg0 != phi_a1) && ((phi_a1->unk2 & 0xF) == 0) && (phi_a1->unk0 == 7)) {
            if (phi_a1->unk6 == 2) {
                sp1C = phi_a1;
                func_8000EE58(phi_a2, phi_a1, phi_a2, 2);
            }
            D_8015F6FE = (u16) (D_8015F6FE - 1);
            func_8029E854(phi_a1, phi_a1);
            return;
        }
        temp_a2 = phi_a2 + 1;
        phi_a1 += 0x70;
        phi_a2 = (u16) temp_a2;
        if (temp_a2 >= 0x64) {
            goto block_10;
        }
        goto loop_2;
    }
block_10:
    phi_a2_3 = (s32) D_8015F900;
    if ((s32) D_8015F900 < 0x64) {
        phi_a1_2 = ((s32) D_8015F900 * 0x70) + &D_8015F9B8;
        phi_a2_2 = (u16) (s32) D_8015F900;
loop_12:
        if ((arg0 != phi_a1_2) && ((phi_a1_2->unk2 & 0xF) == 0) && (phi_a1_2->unk0 == 8) && (temp_t3 = phi_a1_2->unk6, (((u32) (temp_t3 - 2) < 8U) != 0))) {
            switch (temp_t3) { // switch 1
            case 2: // switch 1
            case 3: // switch 1
            case 4: // switch 1
            case 5: // switch 1
            case 8: // switch 1
            case 9: // switch 1
                sp1C = phi_a1_2;
                func_8000EE58(phi_a2_2, phi_a1_2, phi_a2_2);
                // fallthrough
            case 7: // switch 1
                D_8015F6FE = (u16) (D_8015F6FE - 1);
                func_8029E854(phi_a1_2, phi_a1_2);
                return;
            }
        } else {
        default: // switch 1
            temp_a2_2 = phi_a2_2 + 1;
            phi_a1_2 += 0x70;
            phi_a2_2 = (u16) temp_a2_2;
            if (temp_a2_2 >= 0x64) {
                phi_a2_3 = (s32) temp_t1;
                goto block_21;
            }
            goto loop_12;
        }
    } else {
block_21:
        phi_a2_5 = phi_a2_3;
        phi_a3 = arg3;
        if (phi_a2_3 < 0x64) {
            phi_a1_3 = (phi_a2_3 * 0x70) + &D_8015F9B8;
            phi_a2_4 = (u16) phi_a2_3;
loop_23:
            if ((arg0 != phi_a1_3) && (phi_a1_3->unk0 == 7)) {
                temp_v0 = phi_a1_3->unk6;
                if (temp_v0 != 2) {
                    if (temp_v0 != 7) {
                        goto block_30;
                    }
                    goto block_29;
                }
                sp1C = phi_a1_3;
                func_8000EE58(phi_a2_4, phi_a1_3, phi_a2_4, 2);
block_29:
                D_8015F6FE = (u16) (D_8015F6FE - 1);
                func_8029E854(phi_a1_3, phi_a1_3);
                return;
            }
block_30:
            temp_a2_3 = phi_a2_4 + 1;
            phi_a1_3 += 0x70;
            phi_a2_4 = (u16) temp_a2_3;
            if (temp_a2_3 >= 0x64) {
                phi_a2_5 = (s32) temp_t1;
                phi_a3 = 2;
                goto block_32;
            }
            goto loop_23;
        }
block_32:
        if (phi_a2_5 < 0x64) {
            phi_a1_4 = (phi_a2_5 * 0x70) + &D_8015F9B8;
            phi_a2_6 = (u16) phi_a2_5;
loop_34:
            if ((arg0 != phi_a1_4) && (phi_a1_4->unk0 == 8) && (temp_t7 = phi_a1_4->unk6, (((u32) (temp_t7 - 2) < 8U) != 0))) {
                switch (temp_t7) { // switch 2
                case 2: // switch 2
                case 3: // switch 2
                case 4: // switch 2
                case 5: // switch 2
                case 8: // switch 2
                case 9: // switch 2
                    sp1C = phi_a1_4;
                    func_8000EE58(phi_a2_6, phi_a1_4, phi_a2_6, phi_a3);
                    // fallthrough
                case 7: // switch 2
                    D_8015F6FE = (u16) (D_8015F6FE - 1);
                    func_8029E854(phi_a1_4, phi_a1_4);
                    return;
                }
            } else {
            default: // switch 2
                temp_a2_4 = phi_a2_6 + 1;
                phi_a1_4 += 0x70;
                phi_a2_6 = (u16) temp_a2_4;
                if (temp_a2_4 >= 0x64) {
                    // Duplicate return node #41. Try simplifying control flow for better match
                    return;
                }
                goto loop_34;
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_80296A50.s")
#endif

//
GLOBAL_ASM("asm/non_matchings/code_actors/func_80296D10.s")
//

//#ifdef MIPS_TO_C
// 801646F0     // 80161B68
// Actor leave screen
void func_80297230(Camera *arg0, Item *arg1) {
    switch(arg0 - camera1) { // / 0xB8
        case 0:
            arg1->unk2 &= 0xFFFE;
            break;
        case 1:
            arg1->unk2 &= 0xFFFD;
            break;
        case 2:
            arg1->unk2 &= 0xFFFB;
            break;
        case 3:
            arg1->unk2 &= 0xFFF7;
            break;
    }
}
//#else
//GLOBAL_ASM("asm/non_matchings/code_actors/func_80297230.s")
//#endif

//#ifdef MIPS_TO_C
void func_802972B8(Camera *arg0, Item *arg1) {
        switch(arg0 - camera1) {
        case 0:
            arg1->unk2 = (s16) (arg1->unk2 | 1);
            break;
        case 1:
            arg1->unk2 = (s16) (arg1->unk2 | 2);
            break;
        case 2:
            arg1->unk2 = (s16) (arg1->unk2 | 4);
            break;
        case 3:
            arg1->unk2 = (s16) (arg1->unk2 | 8);
            break;
    }
}
//#else
//GLOBAL_ASM("asm/non_matchings/code_actors/func_802972B8.s")
//#endif

//
GLOBAL_ASM("asm/non_matchings/code_actors/func_80297340.s")
//

void func_802976D8(struct UnkStruct_802976D8 *arg0) {
    arg0->unk0 = 0x4000;
    arg0->unk2 = 0;
    arg0->unk4 = 0;
}
#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_802976D8(void *); // extern
s16 func_802B7830(f32, f32, void *); // extern

void func_802976EC(void *arg0, void *arg1) {
    f32 sp1C;
    f32 sp18;
    f32 temp_f14;

    if (arg0->unk4 == 0) {
        func_802976D8(arg1);
        return;
    }
    sp1C = arg0->unk30;
    temp_f14 = arg0->unk34;
    sp18 = temp_f14;
    arg1->unk0 = func_802B7830(arg0->unk38, temp_f14) + 0x4000;
    arg1->unk2 = 0;
    arg1->unk4 = func_802B7830(sp1C, temp_f14, arg1);
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_802976EC.s")
#endif

f32 func_802ABE30(f32, f32, f32, u16); // extern

void func_80297760(struct bigboi *arg0, struct bigboi *arg1) {
    arg1->unk_000 = arg0->unk_018;
    arg1->unk_004 = arg0->unk_01C;
    arg1->unk_008 = arg0->unk_020;
    arg1->unk_004 = func_802ABE30(arg1->unk_000, arg1->unk_004, arg1->unk_008, arg0->unk_03A);
}

void func_802977B0(struct bigboi *arg0) {
    arg0->unk_1C4 = arg0->unk_1C4 | 2;
    arg0->unk_1AC = arg0->unk_1AC | 2;
    arg0->unk_1F4 = arg0->unk_1F4 | 2;
    arg0->unk_1DC = arg0->unk_1DC | 2;
}

void func_802977E4(struct bigboi *arg0) {
    arg0->unk_1C4 = arg0->unk_1C4 & 0xFFFD;
    arg0->unk_1AC = arg0->unk_1AC & 0xFFFD;
    arg0->unk_1F4 = arg0->unk_1F4 & 0xFFFD;
    arg0->unk_1DC = arg0->unk_1DC & 0xFFFD;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern ? D_0D004E38;
extern s16 D_802BA060;
extern ? gSegmentTable;

void func_80297818(void) {
    s16 *temp_v0;
    s16 *temp_v1;
    s16 temp_a0;
    s16 temp_a0_2;
    s16 temp_a0_3;
    s16 temp_a0_4;
    s32 temp_a1;
    s16 *phi_v1;
    s16 *phi_v0;
    s32 phi_a1;

    phi_v1 = *(&gSegmentTable + ((&D_0D004E38 >> 0x18) * 4)) + (&D_0D004E38 & 0xFFFFFF) + 0x80000000;
    phi_v0 = &D_802BA060;
    phi_a1 = 0;
    do {
        temp_a0 = *phi_v1;
        temp_a1 = phi_a1 + 4;
        temp_v1 = phi_v1 + 8;
        *phi_v0 = ((temp_a0 & 0xF800) >> 5) | ((temp_a0 & 0x7C0) << 5) | (temp_a0 & 0x3E) | (temp_a0 & 1);
        temp_a0_2 = temp_v1->unk-6;
        temp_v0 = phi_v0 + 8;
        temp_v0->unk-6 = ((temp_a0_2 & 0xF800) >> 5) | ((temp_a0_2 & 0x7C0) << 5) | (temp_a0_2 & 0x3E) | (temp_a0_2 & 1);
        temp_a0_3 = temp_v1->unk-4;
        temp_v0->unk-4 = ((temp_a0_3 & 0xF800) >> 5) | ((temp_a0_3 & 0x7C0) << 5) | (temp_a0_3 & 0x3E) | (temp_a0_3 & 1);
        temp_a0_4 = temp_v1->unk-2;
        temp_v0->unk-2 = ((temp_a0_4 & 0xF800) >> 5) | ((temp_a0_4 & 0x7C0) << 5) | (temp_a0_4 & 0x3E) | (temp_a0_4 & 1);
        phi_v1 = temp_v1;
        phi_v0 = temp_v0;
        phi_a1 = temp_a1;
    } while (temp_a1 != 0x100);
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_80297818.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_802B4FF8(? *, ?); // extern
? func_802B5F00(? *, s32); // extern
? func_802B5F74(? *, void *, ?, void *); // extern
extern ? D_0D007B20;
extern void *gDisplayListHead;

void func_8029794C(void *arg0, ? arg1, s32 arg2) {
    ? sp20;
    void *temp_a1;
    void *temp_a3;
    void *temp_v1;

    temp_a3 = arg0;
    temp_a1 = temp_a3;
    arg0->unk4 = arg0->unk4 + 2.0f;
    arg0 = temp_a3;
    func_802B5F74(&sp20, temp_a1, arg1, temp_a3);
    func_802B5F00(&sp20, arg2);
    if (func_802B4FF8(&sp20, 0) != 0) {
        temp_v1 = gDisplayListHead;
        gDisplayListHead = temp_v1 + 8;
        temp_v1->unk0 = 0x6000000;
        temp_v1->unk4 = &D_0D007B20;
        arg0->unk4 = arg0->unk4 - 2.0f;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029794C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_802976EC(void *, ? *, void *); // extern
? func_80297760(void *, ? *); // extern
? func_8029794C(? *, ? *, ?); // extern

void func_802979F8(void *arg0, ? arg1) {
    ? sp24;
    ? sp1C;
    void *temp_a0;
    void *temp_a2;

    temp_a2 = arg0;
    temp_a0 = arg0 + 0x30;
    if (arg0->unk34 != 0) {
        arg0 = temp_a2;
        func_802976EC(temp_a0, &sp1C, temp_a2);
        func_80297760(arg0, &sp24);
        func_8029794C(&sp24, &sp1C, 0x3EE66666);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_802979F8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
/*
Failed to decompile function func_80297A50:

Unable to determine jump table for jr instruction at func_80297A50.s line 48.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
*/
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_80297A50.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
f32 func_802B8018(s32, void *); // extern
f32 func_802B8038(u16, void *); // extern
extern f64 D_802B9610;

void update_obj_yoshi_valley_egg(void *arg0) {
    s16 temp_t7;
    void *temp_a1;

    temp_a1 = arg0;
    temp_t7 = arg0->unk10 + 0x5B;
    arg0->unk10 = temp_t7;
    arg0 = temp_a1;
    arg0->unk18 = (func_802B8018(temp_t7 & 0xFFFF, temp_a1) * arg0->unk8) + arg0->unk24;
    arg0->unk20 = (func_802B8038(arg0->unk10, arg0) * arg0->unk8) + arg0->unk2C;
    if ((arg0->unk2 & 0x400) != 0) {
        arg0->unk28 = arg0->unk28 - D_802B9610;
        if (arg0->unk28 < -3.0f) {
            arg0->unk28 = -3.0f;
        }
        arg0->unk1C = arg0->unk1C + arg0->unk28;
        if (arg0->unk1C < 0.0f) {
            arg0->unk1C = 0.0f;
            arg0->unk28 = 0.0f;
            arg0->unk2 = arg0->unk2 & 0xFBFF;
        }
        arg0->unk12 = arg0->unk12 - 0x4FA;
    }
    arg0->unk12 = arg0->unk12 - 0x222;
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/update_obj_yoshi_valley_egg.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void update_obj_trees_cacti_shrubs(void *arg0) {
    s16 temp_v0;

    temp_v0 = arg0->unk2;
    if (((temp_v0 & 0x800) == 0) && ((temp_v0 & 0x400) != 0)) {
        arg0->unk1C = arg0->unk1C + 4.0f;
        if (arg0->unk1C > 800.0f) {
            arg0->unk2 = arg0->unk2 | 0x800;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/update_obj_trees_cacti_shrubs.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800C9060(f32, f32, s32, ?, void *, Player **); // extern
s32 func_802ABD10(u16, void *); // extern
extern s32 D_80162DF8;
extern ? D_80164438;
extern s32 D_80164490;
extern f32 D_802B9618;
extern f32 D_802B961C;
extern f32 D_802B9620;
extern ? gPlayers;

void update_obj_kiwano_fruit(void *arg0) {
    void *sp24;
    f32 sp20;
    f32 sp1C;
    f32 sp18;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f2;
    f32 temp_f2_2;
    s16 temp_a0;
    s32 temp_t7;
    s32 temp_v0_2;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_v0;
    void *temp_v1;
    void *phi_a2;
    s16 phi_a0;
    void *phi_a2_2;
    void *phi_a2_3;

    temp_t7 = arg0->unk4 * 0xDD8;
    temp_v1 = temp_t7 + &gPlayers;
    temp_a2 = arg0;
    phi_a2 = temp_a2;
    phi_a2_2 = temp_a2;
    phi_a2_3 = temp_a2;
    if (((temp_v1->unk0 & 0x1000) != 0) || (temp_v1->unk114 == 0)) {
        temp_a2->unk6 = 0;
        return;
    }
    temp_a0 = temp_a2->unk6;
    phi_a0 = temp_a0;
    if (temp_a0 != 0) {
        if (temp_a0 != 1) {
            if (temp_a0 != 2) {

            } else {
                temp_a2->unk28 = temp_a2->unk28 - D_802B9620;
                temp_a2->unk18 = temp_a2->unk18 + temp_a2->unk24;
                temp_a2->unk1C = temp_a2->unk1C + temp_a2->unk28;
                temp_a2->unk20 = temp_a2->unk20 + temp_a2->unk2C;
                temp_a2->unk8 = temp_a2->unk8 - 1.0f;
                if (temp_a2->unk8 < 0.0f) {
                    temp_a2->unk6 = 0;
                }
                goto block_17;
            }
        } else {
            goto block_9;
        }
        goto block_18;
    }
    arg0 = temp_a2;
    sp24 = temp_v1;
    phi_a2 = arg0;
    if ((func_802ABD10(temp_v1->unk11A, temp_a2) & 0xFF) == 8) {
        arg0->unk6 = 1;
        arg0->unk24 = 80.0f;
block_9:
        temp_v0 = D_80164490 + (*(&D_80164438 + (((((temp_t7 + &gPlayers) - D_800DC4DC) / 0xDD8) & 0xFFFF) * 2)) * 8);
        temp_f2 = (temp_t7 + &gPlayers)->unk14 - temp_v0->unk0;
        arg0 = phi_a2;
        sp20 = temp_f2;
        sp24 = temp_t7 + &gPlayers;
        temp_f16 = (temp_t7 + &gPlayers)->unk18 - temp_v0->unk2;
        sp1C = temp_f16;
        temp_f14 = (temp_t7 + &gPlayers)->unk1C - temp_v0->unk4;
        sp18 = temp_f14;
        temp_a2_2 = arg0;
        temp_f18 = temp_a2_2->unk24;
        temp_f12 = temp_f18 / sqrtf((temp_f2 * temp_f2) + (temp_f16 * temp_f16) + (temp_f14 * temp_f14));
        temp_f2_2 = temp_f2 * temp_f12;
        temp_f16_2 = temp_f16 * temp_f12;
        temp_a2_2->unk18 = (temp_t7 + &gPlayers)->unk14 + temp_f2_2;
        temp_f14_2 = temp_f14 * temp_f12;
        temp_a2_2->unk1C = (temp_t7 + &gPlayers)->unk18 + temp_f16_2;
        temp_a2_2->unk24 = temp_f18 - 2.0f;
        temp_a2_2->unk20 = (temp_t7 + &gPlayers)->unk1C + temp_f14_2;
        phi_a2_3 = temp_a2_2;
        if (temp_a2_2->unk24 <= 0.0f) {
            temp_a2_2->unk6 = 2;
            temp_a2_2->unk8 = 30.0f;
            temp_a2_2->unk24 = 0.0f;
            temp_a2_2->unk28 = D_802B9618;
            temp_a2_2->unk2C = 0.0f;
            temp_v0_2 = (temp_t7 + &gPlayers)->unkBC;
            if ((temp_v0_2 & 0x200) != 0) {
                arg0 = temp_a2_2;
                func_800C9060(temp_f12, temp_f14_2, (((temp_t7 + &gPlayers) - D_800DC4DC) / 0xDD8) & 0xFF, 0x1900A052, temp_a2_2, &D_800DC4DC);
                phi_a2_3 = arg0;
            } else {
                temp_f12_2 = D_802B961C;
                (temp_t7 + &gPlayers)->unkBC = temp_v0_2 | 0x8000;
                (temp_t7 + &gPlayers)->unk14 = (temp_t7 + &gPlayers)->unk14 - (temp_f2_2 * 4.0f);
                (temp_t7 + &gPlayers)->unk1C = (temp_t7 + &gPlayers)->unk1C - (temp_f14_2 * 4.0f);
                (temp_t7 + &gPlayers)->unk34 = (temp_t7 + &gPlayers)->unk34 - (temp_f2_2 * temp_f12_2);
                (temp_t7 + &gPlayers)->unk3C = (temp_t7 + &gPlayers)->unk3C - (temp_f14_2 * temp_f12_2);
                arg0 = temp_a2_2;
                func_800C9060(temp_f12_2, temp_f14_2, (((temp_t7 + &gPlayers) - D_800DC4DC) / 0xDD8) & 0xFF, 0x19007018, temp_a2_2, &D_800DC4DC);
                phi_a2_3 = arg0;
                if (gModeSelection != 0) {
                    D_80162DF8 = 1;
                }
            }
        }
block_17:
        phi_a0 = phi_a2_3->unk6;
        phi_a2_2 = phi_a2_3;
block_18:
        if (phi_a0 != 0) {
            phi_a2_2->unk12 = phi_a2_2->unk12 + 1;
            if (phi_a2_2->unk12 == 8) {
                phi_a2_2->unk12 = 0;
                phi_a2_2->unk10 = phi_a2_2->unk10 + 1;
                if (phi_a2_2->unk10 == 3) {
                    phi_a2_2->unk10 = 0;
                }
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/update_obj_kiwano_fruit.s")
#endif

void update_obj_paddle_wheel(struct choochoo *arg0) {
    arg0->unk6 += 0x38E;
}

extern void func_800C9D80(f32 *arg0, f32 *arg1, s32 arg2); // extern

void update_obj_train_engine(struct choochooTrain *arg0) {
    arg0->unk6 -= 0x666;
    
    if (arg0->unk8 != 0.0f) {
        arg0->unk8 = 0.0f;
        func_800C9D80(&arg0->unk18, &arg0->unk24, 0x51018000);
    }
}

void update_obj_train_car1(struct choochoo *arg0) {
    arg0->unk6 -= 0x4FA;
}

void update_obj_train_car2(struct choochoo *arg0) {
    arg0->unk6 -= 0x666;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void update_obj_piranha_plant(void *arg0) {
    s16 temp_v0;

    temp_v0 = arg0->unk2;
    if ((temp_v0 & 0x800) == 0) {
        if ((temp_v0 & 0x400) != 0) {
            arg0->unk1C = arg0->unk1C + 4.0f;
            if (arg0->unk1C > 800.0f) {
                arg0->unk2 = arg0->unk2 | 0x800;
                return;
            }
            // Duplicate return node #21. Try simplifying control flow for better match
            return;
        }
        if (arg0->unk4 == 1) {
            arg0->unk24 = arg0->unk24 + 1;
            if (arg0->unk24 >= 0x3D) {
                arg0->unk24 = 6;
            }
        } else {
            arg0->unk24 = 0;
        }
        if (arg0->unk6 == 1) {
            arg0->unk26 = arg0->unk26 + 1;
            if (arg0->unk26 >= 0x3D) {
                arg0->unk26 = 6;
            }
        } else {
            arg0->unk26 = 0;
        }
        if (arg0->unk8 == 1) {
            arg0->unk28 = arg0->unk28 + 1;
            if (arg0->unk28 >= 0x3D) {
                arg0->unk28 = 6;
            }
        } else {
            arg0->unk28 = 0;
        }
        if (arg0->unkA == 1) {
            arg0->unk2A = arg0->unk2A + 1;
            if (arg0->unk2A >= 0x3D) {
                arg0->unk2A = 6;
                return;
            }
            // Duplicate return node #21. Try simplifying control flow for better match
            return;
        }
        arg0->unk2A = 0;
        // Duplicate return node #21. Try simplifying control flow for better match
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/update_obj_piranha_plant.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_802B4FF8(void *, ?); // extern
f32 func_802B80D0(void *, u16, ?, f32, f32); // extern
extern ? D_06006990;
extern f32 D_802B9624;
extern f32 D_802B9628;
extern s32 D_802BA058;
extern void *gDisplayListHead;

void func_80298328(void *arg0, void *arg1, void *arg2) {
    s16 sp36;
    f32 sp2C;
    f32 temp_f0;
    f32 temp_f2;
    s32 temp_lo;
    s32 temp_lo_2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    s32 phi_t4;
    s16 phi_t4_2;

    temp_lo = (arg0 - camera1) / 0xB8;
    if ((arg2->unk2 & 0x800) == 0) {
        sp36 = temp_lo;
        temp_f0 = func_802B80D0(arg2 + 0x18, arg0->unk26, 0, (&D_80150130)[temp_lo], D_802B9624);
        temp_f2 = temp_f0;
        if (temp_f0 < 0.0f) {
            if (sp36 != 0) {
                if (sp36 != 1) {
                    if (sp36 != 2) {
                        if (sp36 != 3) {
                            return;
                        }
                        arg2->unkA = -1;
                        return;
                    }
                    arg2->unk8 = -1;
                    return;
                }
                arg2->unk6 = -1;
                return;
            }
            arg2->unk4 = -1;
            return;
        }
        arg1->unk30 = arg2->unk18;
        arg1->unk34 = arg2->unk1C;
        arg1->unk38 = arg2->unk20;
        sp2C = temp_f2;
        sp36 = sp36;
        if (func_802B4FF8(arg1, 0) != 0) {
            if (D_802B9628 < temp_f2) {
                phi_t4 = 0;
                if (sp36 != 0) {
                    if (sp36 != 1) {
                        if (sp36 != 2) {
                            if (sp36 != 3) {

                            } else {
                                arg2->unkA = 0;
                            }
                        } else {
                            arg2->unk8 = 0;
                        }
                    } else {
                        arg2->unk6 = 0;
                    }
                } else {
                    arg2->unk4 = 0;
                }
            } else {
                if (sp36 != 0) {
                    if (sp36 != 1) {
                        if (sp36 != 2) {
                            if (sp36 != 3) {

                            } else {
                                arg2->unkA = 1;
                            }
                        } else {
                            arg2->unk8 = 1;
                        }
                    } else {
                        arg2->unk6 = 1;
                    }
                } else {
                    arg2->unk4 = 1;
                }
                if (sp36 != 0) {
                    if (sp36 != 1) {
                        if (sp36 != 2) {
                            if (sp36 != 3) {
                                phi_t4 = sp34;
                            } else {
                                phi_t4 = arg2->unk2A;
                            }
                        } else {
                            phi_t4 = arg2->unk28;
                        }
                    } else {
                        phi_t4 = arg2->unk26;
                    }
                } else {
                    phi_t4 = arg2->unk24;
                }
            }
            temp_lo_2 = phi_t4 / 6;
            phi_t4_2 = temp_lo_2;
            if (temp_lo_2 >= 9) {
                phi_t4_2 = 8;
            }
            temp_v0 = gDisplayListHead;
            gDisplayListHead = temp_v0 + 8;
            temp_v0->unk0 = 0xFD500000;
            temp_v0->unk4 = ((phi_t4_2 << 0xB) + D_802BA058) & 0x1FFFFFFF;
            temp_v0_2 = gDisplayListHead;
            gDisplayListHead = temp_v0_2 + 8;
            temp_v0_2->unk0 = 0xF5500000;
            temp_v0_2->unk4 = 0x7080100;
            temp_v0_3 = gDisplayListHead;
            gDisplayListHead = temp_v0_3 + 8;
            temp_v0_3->unk4 = 0;
            temp_v0_3->unk0 = 0xE6000000;
            temp_v0_4 = gDisplayListHead;
            gDisplayListHead = temp_v0_4 + 8;
            temp_v0_4->unk4 = 0x73FF200;
            temp_v0_4->unk0 = 0xF3000000;
            temp_v0_5 = gDisplayListHead;
            gDisplayListHead = temp_v0_5 + 8;
            temp_v0_5->unk4 = 0;
            temp_v0_5->unk0 = 0xE7000000;
            temp_v0_6 = gDisplayListHead;
            gDisplayListHead = temp_v0_6 + 8;
            temp_v0_6->unk0 = 0xF5480800;
            temp_v0_6->unk4 = 0x80100;
            temp_v0_7 = gDisplayListHead;
            gDisplayListHead = temp_v0_7 + 8;
            temp_v0_7->unk0 = 0xF2000000;
            temp_v0_7->unk4 = 0x7C0FC;
            if (gCurrentCourseId == 0) {
                temp_v0_8 = gDisplayListHead;
                gDisplayListHead = temp_v0_8 + 8;
                temp_v0_8->unk4 = &D_06006990;
                temp_v0_8->unk0 = 0x6000000;
                return;
            }
            temp_v0_9 = gDisplayListHead;
            gDisplayListHead = temp_v0_9 + 8;
            temp_v0_9->unk4 = 0x600D850;
            temp_v0_9->unk0 = 0x6000000;
            // Duplicate return node #45. Try simplifying control flow for better match
            return;
        }
        // Duplicate return node #45. Try simplifying control flow for better match
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_80298328.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
/*
Failed to decompile function func_802986B4:

Unable to determine jump table for jr instruction at func_802986B4.s line 145.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
*/
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_802986B4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800C9060(s32, ?); // extern
? func_800C90F4(s32, s32); // extern
? func_800C98B8(void *, void *, ?); // extern
s32 func_8029EEB8(void *, f32 *, ?, ?, f32); // extern
extern ? D_06013F78;
extern f32 D_802B964C;
extern f32 gCourseDirection;
extern ? gSegmentTable;

void func_80298AC0(void *arg0) {
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 *temp_a1;
    s16 *temp_s0;
    s16 temp_v0;
    s16 temp_v0_2;
    s16 phi_v0;
    s16 *phi_s0;

    temp_s0 = *(&gSegmentTable + ((&D_06013F78 >> 0x18) * 4)) + (&D_06013F78 & 0xFFFFFF) + 0x80000000;
    temp_v0 = *temp_s0;
    phi_v0 = temp_v0;
    phi_s0 = temp_s0;
    if (temp_v0 != -0x8000) {
loop_2:
        temp_a1 = &sp64;
        sp64 = phi_v0 * gCourseDirection;
        sp68 = phi_s0->unk2;
        sp6C = phi_s0->unk4;
        if (func_8029EEB8(arg0, temp_a1, 0x40A00000, 0x42200000, D_802B964C) == 1) {
            if ((arg0->unkBC & 0x200) != 0) {
                func_800C98B8(arg0 + 0x14, arg0 + 0x34, 0x19018010);
                func_800C90F4(((arg0 - D_800DC4DC) / 0xDD8) & 0xFF, (arg0->unk254 * 0x10) + 0x2900800D);
                phi_s0->unk6 = phi_s0->unk6 | 0x400;
            }
            if ((arg0->unk0 & 0x100) == 0) {
                func_800C9060(((arg0 - D_800DC4DC) / 0xDD8) & 0xFF, 0x19007018);
                return;
            }
            // Duplicate return node #8. Try simplifying control flow for better match
            return;
        }
        temp_v0_2 = phi_s0->unkA;
        phi_v0 = temp_v0_2;
        phi_s0 += 0xA;
        if (temp_v0_2 == -0x8000) {
            // Duplicate return node #8. Try simplifying control flow for better match
            return;
        }
        goto loop_2;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_80298AC0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_80298AC0(Player *arg0); // extern
s8 func_802ABD10(u16); // extern
extern Player *gPlayers;

void func_80298C94(void) {
    Player *phi_s0;
    s32 i;
    s8 temp_s0;
    for (i = 0; i < 4; i++) {
        phi_s0 = &gPlayers[i];
        if ((phi_s0->unk_000 & 0xC000) != 0) {

            temp_s0 = (u8)func_802ABD10(phi_s0->unk_11A);

            if (temp_s0 == 8) {
                func_80298AC0(phi_s0);
            }
        }
        //temp_s0 = phi_s0 + 0xDD8;
        //phi_s0 = temp_s0;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_80298C94.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern ? D_06013F78;
extern ? gSegmentTable;

void func_80298D10(void) {
    s16 *temp_v1;
    s16 *temp_v1_2;
    s16 *phi_v1;

    temp_v1 = *(&gSegmentTable + ((&D_06013F78 >> 0x18) * 4)) + (&D_06013F78 & 0xFFFFFF) + 0x80000000;
    phi_v1 = temp_v1;
    if (*temp_v1 != -0x8000) {
        do {
            phi_v1->unk6 = phi_v1->unk6 & 0xF;
            temp_v1_2 = phi_v1 + 0xA;
            temp_v1_2->unk-8 = phi_v1->unk8;
            phi_v1 = temp_v1_2;
        } while (phi_v1->unkA != -0x8000);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_80298D10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_802B4FF8(? *, ?); // extern
? func_802B5F74(? *, f32 *, ? *); // extern
f32 func_802B80D0(void *, f32 *, u16, f32, f32, f32); // extern
extern ? D_06010CC0;
extern ? D_06011DC8;
extern ? D_06012EF0;
extern ? D_060138D0;
extern ? D_06013F78;
extern u16 D_800DC5FC;
extern u16 D_80150112;
extern ? D_802B87E0;
extern f32 D_802B9650;
extern f32 D_802B9654;
extern f32 gCourseDirection;
extern s32 *gDisplayListHead;
extern ? gSegmentTable;

void func_80298D7C(void *arg0, ? *arg1, ? arg2) {
    f32 spDC;
    f32 spD8;
    f32 spD4;
    ? sp90;
    ? sp88;
    f32 *temp_a1;
    f32 *temp_s7;
    s16 *temp_s1;
    s16 *temp_s1_2;
    s16 temp_s0;
    s16 temp_t0;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s32 *temp_v0_4;
    s32 *temp_v0_5;
    s32 *temp_v0_6;
    s32 *temp_v0_7;
    s32 *temp_v0_8;
    s16 *phi_s1;
    f32 phi_f22;
    s32 *phi_v0;

    temp_s1 = *(&gSegmentTable + ((&D_06013F78 >> 0x18) * 4)) + (&D_06013F78 & 0xFFFFFF) + 0x80000000;
    sp88.unk0 = D_802B87E0.unk0;
    sp88.unk4 = D_802B87E0.unk4;
    phi_s1 = temp_s1;
    if (D_800DC50C == 9) {
        phi_f22 = D_802B9650;
    } else {
        phi_f22 = D_802B9654;
    }
    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk4 = -1;
    temp_v0->unk0 = 0xBB000001;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk4 = -0xC07;
    temp_v0_2->unk0 = 0xFC127E24;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk0 = 0xB900031D;
    temp_v0_3->unk4 = 0x553078;
    temp_s7 = &spD4;
    if (*temp_s1 != -0x8000) {
loop_5:
        temp_s0 = phi_s1->unk6;
        if ((temp_s0 & 0x800) != 0) {
            goto block_29;
        }
        if (((temp_s0 & 0x400) != 0) && ((D_800DC5FC == 0) || (arg0 == camera1))) {
            phi_s1->unk2 = phi_s1->unk2 + 0xA;
            if (phi_s1->unk2 >= 0x321) {
                phi_s1->unk6 = phi_s1->unk6 | 0x800;
            }
        }
        temp_a1 = temp_s7;
        spD4 = phi_s1->unk0 * gCourseDirection;
        spD8 = phi_s1->unk2;
        spDC = phi_s1->unk4;
        temp_t0 = temp_s0 & 0xF;
        if (func_802B80D0(arg0, temp_a1, arg0->unk26, 0.0f, (&D_80150130)[(arg0 - camera1) / 0xB8], phi_f22) < 0.0f) {
            goto block_29;
        }
        if (temp_t0 == 6) {
            func_802B5F74(&sp90, temp_s7, &sp88);
            if (D_80150112 < 0x80) {
                func_802B4FF8(&sp90, 0);
                goto block_19;
            }
        } else {
            arg1->unk30 = spD4;
            arg1->unk34 = spD8;
            arg1->unk38 = spDC;
            if (D_80150112 < 0x80) {
                func_802B4FF8(arg1, 0);
block_19:
                temp_v0_4 = gDisplayListHead;
                gDisplayListHead = temp_v0_4 + 8;
                temp_v0_4->unk4 = 0x20000;
                temp_v0_4->unk0 = 0xB6000000;
                if (temp_t0 != 0) {
                    if (temp_t0 != 4) {
                        if (temp_t0 != 5) {
                            if (temp_t0 != 6) {

                            } else {
                                temp_v0_5 = gDisplayListHead;
                                gDisplayListHead = temp_v0_5 + 8;
                                temp_v0_5->unk4 = &D_060138D0;
                                phi_v0 = temp_v0_5;
                                goto block_28;
                            }
                        } else {
                            temp_v0_6 = gDisplayListHead;
                            gDisplayListHead = temp_v0_6 + 8;
                            temp_v0_6->unk4 = &D_06012EF0;
                            phi_v0 = temp_v0_6;
                            goto block_28;
                        }
                    } else {
                        temp_v0_7 = gDisplayListHead;
                        gDisplayListHead = temp_v0_7 + 8;
                        temp_v0_7->unk4 = &D_06011DC8;
                        phi_v0 = temp_v0_7;
                        goto block_28;
                    }
                } else {
                    temp_v0_8 = gDisplayListHead;
                    gDisplayListHead = temp_v0_8 + 8;
                    temp_v0_8->unk4 = &D_06010CC0;
                    phi_v0 = temp_v0_8;
block_28:
                    *phi_v0 = 0x6000000;
                }
block_29:
                temp_s1_2 = phi_s1 + 0xA;
                phi_s1 = temp_s1_2;
                if (*temp_s1_2 != -0x8000) {
                    goto loop_5;
                }
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_80298D7C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8029794C(void *, void *, ?, void *); // extern
s32 func_802B4FF8(void *, ?); // extern
f32 func_802B80D0(void *, u16, ?, f32, f32); // extern
extern ? D_06006A68;
extern ? D_0D004C68;
extern f32 D_802B9658;
extern f32 D_802B965C;
extern void *gDisplayListHead;

void func_80299144(void *arg0, void *arg1, void *arg2) {
    s16 sp4A;
    void *sp28;
    f32 temp_f0;
    s16 temp_v0;
    void *temp_a1;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;

    temp_v0 = arg2->unk2;
    temp_a1 = arg2 + 0x18;
    if ((temp_v0 & 0x800) == 0) {
        sp28 = temp_a1;
        sp4A = temp_v0;
        temp_f0 = func_802B80D0(temp_a1, arg0->unk26, 0, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B9658);
        if (!(temp_f0 < 0.0f)) {
            if (((temp_v0 & 0x400) == 0) && (temp_f0 < D_802B965C)) {
                func_8029794C(sp28, arg2 + 0x10, 0x40400000, arg1);
            }
            arg1->unk30 = arg2->unk18;
            arg1->unk34 = arg2->unk1C;
            arg1->unk38 = arg2->unk20;
            if (func_802B4FF8(arg1, 0) != 0) {
                temp_v0_2 = gDisplayListHead;
                gDisplayListHead = temp_v0_2 + 8;
                temp_v0_2->unk0 = 0xFD100000;
                temp_v0_2->unk4 = &D_0D004C68;
                temp_v0_3 = gDisplayListHead;
                gDisplayListHead = temp_v0_3 + 8;
                temp_v0_3->unk4 = 0;
                temp_v0_3->unk0 = 0xE8000000;
                temp_v0_4 = gDisplayListHead;
                gDisplayListHead = temp_v0_4 + 8;
                temp_v0_4->unk4 = 0x7000000;
                temp_v0_4->unk0 = 0xF5000100;
                temp_v0_5 = gDisplayListHead;
                gDisplayListHead = temp_v0_5 + 8;
                temp_v0_5->unk4 = 0;
                temp_v0_5->unk0 = 0xE6000000;
                temp_v0_6 = gDisplayListHead;
                gDisplayListHead = temp_v0_6 + 8;
                temp_v0_6->unk4 = 0x73FC000;
                temp_v0_6->unk0 = 0xF0000000;
                temp_v0_7 = gDisplayListHead;
                gDisplayListHead = temp_v0_7 + 8;
                temp_v0_7->unk4 = 0;
                temp_v0_7->unk0 = 0xE7000000;
                temp_v0_8 = gDisplayListHead;
                gDisplayListHead = temp_v0_8 + 8;
                temp_v0_8->unk4 = &D_06006A68;
                temp_v0_8->unk0 = 0x6000000;
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_80299144.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8029794C(void *, void *, ?, void *); // extern
s32 func_802B4FF8(void *, ?); // extern
f32 func_802B80D0(void *, u16, ?, f32, f32); // extern
extern ? D_06015B48;
extern ? D_0D004C68;
extern f32 D_802B9660;
extern f32 D_802B9664;
extern void *gDisplayListHead;

void func_8029930C(void *arg0, void *arg1, void *arg2) {
    s16 sp4A;
    void *sp28;
    f32 temp_f0;
    s16 temp_v0;
    void *temp_a1;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;

    temp_v0 = arg2->unk2;
    temp_a1 = arg2 + 0x18;
    if ((temp_v0 & 0x800) == 0) {
        sp28 = temp_a1;
        sp4A = temp_v0;
        temp_f0 = func_802B80D0(temp_a1, arg0->unk26, 0, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B9660);
        if (!(temp_f0 < 0.0f)) {
            if (((temp_v0 & 0x400) == 0) && (temp_f0 < D_802B9664)) {
                func_8029794C(sp28, arg2 + 0x10, 0x40333333, arg1);
            }
            arg1->unk30 = arg2->unk18;
            arg1->unk34 = arg2->unk1C;
            arg1->unk38 = arg2->unk20;
            if (func_802B4FF8(arg1, 0) != 0) {
                temp_v0_2 = gDisplayListHead;
                gDisplayListHead = temp_v0_2 + 8;
                temp_v0_2->unk0 = 0xFD100000;
                temp_v0_2->unk4 = &D_0D004C68;
                temp_v0_3 = gDisplayListHead;
                gDisplayListHead = temp_v0_3 + 8;
                temp_v0_3->unk4 = 0;
                temp_v0_3->unk0 = 0xE8000000;
                temp_v0_4 = gDisplayListHead;
                gDisplayListHead = temp_v0_4 + 8;
                temp_v0_4->unk4 = 0x7000000;
                temp_v0_4->unk0 = 0xF5000100;
                temp_v0_5 = gDisplayListHead;
                gDisplayListHead = temp_v0_5 + 8;
                temp_v0_5->unk4 = 0;
                temp_v0_5->unk0 = 0xE6000000;
                temp_v0_6 = gDisplayListHead;
                gDisplayListHead = temp_v0_6 + 8;
                temp_v0_6->unk4 = 0x73FC000;
                temp_v0_6->unk0 = 0xF0000000;
                temp_v0_7 = gDisplayListHead;
                gDisplayListHead = temp_v0_7 + 8;
                temp_v0_7->unk4 = 0;
                temp_v0_7->unk0 = 0xE7000000;
                temp_v0_8 = gDisplayListHead;
                gDisplayListHead = temp_v0_8 + 8;
                temp_v0_8->unk4 = &D_06015B48;
                temp_v0_8->unk0 = 0x6000000;
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029930C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8029794C(void *, void *, ?, void *); // extern
s32 func_802B4FF8(void *, ?); // extern
f32 func_802B80D0(void *, u16, ?, f32, f32); // extern
extern ? D_0600D4A0;
extern ? D_0D004C68;
extern f32 D_802B9668;
extern f32 D_802B966C;
extern void *gDisplayListHead;

void func_802994D4(void *arg0, void *arg1, void *arg2) {
    s16 sp4A;
    void *sp28;
    f32 temp_f0;
    s16 temp_v0;
    void *temp_a1;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;

    temp_v0 = arg2->unk2;
    temp_a1 = arg2 + 0x18;
    if ((temp_v0 & 0x800) == 0) {
        sp28 = temp_a1;
        sp4A = temp_v0;
        temp_f0 = func_802B80D0(temp_a1, arg0->unk26, 0, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B9668);
        if (!(temp_f0 < 0.0f)) {
            if (((temp_v0 & 0x400) == 0) && (temp_f0 < D_802B966C)) {
                func_8029794C(sp28, arg2 + 0x10, 0x40333333, arg1);
            }
            arg1->unk30 = arg2->unk18;
            arg1->unk34 = arg2->unk1C;
            arg1->unk38 = arg2->unk20;
            if (func_802B4FF8(arg1, 0) != 0) {
                temp_v0_2 = gDisplayListHead;
                gDisplayListHead = temp_v0_2 + 8;
                temp_v0_2->unk0 = 0xFD100000;
                temp_v0_2->unk4 = &D_0D004C68;
                temp_v0_3 = gDisplayListHead;
                gDisplayListHead = temp_v0_3 + 8;
                temp_v0_3->unk4 = 0;
                temp_v0_3->unk0 = 0xE8000000;
                temp_v0_4 = gDisplayListHead;
                gDisplayListHead = temp_v0_4 + 8;
                temp_v0_4->unk4 = 0x7000000;
                temp_v0_4->unk0 = 0xF5000100;
                temp_v0_5 = gDisplayListHead;
                gDisplayListHead = temp_v0_5 + 8;
                temp_v0_5->unk4 = 0;
                temp_v0_5->unk0 = 0xE6000000;
                temp_v0_6 = gDisplayListHead;
                gDisplayListHead = temp_v0_6 + 8;
                temp_v0_6->unk4 = 0x73FC000;
                temp_v0_6->unk0 = 0xF0000000;
                temp_v0_7 = gDisplayListHead;
                gDisplayListHead = temp_v0_7 + 8;
                temp_v0_7->unk4 = 0;
                temp_v0_7->unk0 = 0xE7000000;
                temp_v0_8 = gDisplayListHead;
                gDisplayListHead = temp_v0_8 + 8;
                temp_v0_8->unk4 = &D_0600D4A0;
                temp_v0_8->unk0 = 0x6000000;
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_802994D4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8029794C(void *, void *, ?, void *); // extern
s32 func_802B4FF8(void *, ?); // extern
f32 func_802B80D0(void *, u16, ?, f32, f32); // extern
extern ? D_06013F20;
extern ? D_0D004C68;
extern f32 D_802B9670;
extern void *gDisplayListHead;

void func_8029969C(void *arg0, void *arg1, void *arg2) {
    s16 sp4A;
    void *sp28;
    f32 temp_f0;
    s16 temp_v0;
    void *temp_a1;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;

    temp_v0 = arg2->unk2;
    temp_a1 = arg2 + 0x18;
    if ((temp_v0 & 0x800) == 0) {
        sp28 = temp_a1;
        sp4A = temp_v0;
        temp_f0 = func_802B80D0(temp_a1, arg0->unk26, 0, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B9670);
        if (!(temp_f0 < 0.0f)) {
            if (((temp_v0 & 0x400) == 0) && (temp_f0 < 600.0f)) {
                func_8029794C(sp28, arg2 + 0x10, 0x40A00000, arg1);
            }
            arg1->unk30 = arg2->unk18;
            arg1->unk34 = arg2->unk1C;
            arg1->unk38 = arg2->unk20;
            if (func_802B4FF8(arg1, 0) != 0) {
                temp_v0_2 = gDisplayListHead;
                gDisplayListHead = temp_v0_2 + 8;
                temp_v0_2->unk0 = 0xFD100000;
                temp_v0_2->unk4 = &D_0D004C68;
                temp_v0_3 = gDisplayListHead;
                gDisplayListHead = temp_v0_3 + 8;
                temp_v0_3->unk4 = 0;
                temp_v0_3->unk0 = 0xE8000000;
                temp_v0_4 = gDisplayListHead;
                gDisplayListHead = temp_v0_4 + 8;
                temp_v0_4->unk4 = 0x7000000;
                temp_v0_4->unk0 = 0xF5000100;
                temp_v0_5 = gDisplayListHead;
                gDisplayListHead = temp_v0_5 + 8;
                temp_v0_5->unk4 = 0;
                temp_v0_5->unk0 = 0xE6000000;
                temp_v0_6 = gDisplayListHead;
                gDisplayListHead = temp_v0_6 + 8;
                temp_v0_6->unk4 = 0x73FC000;
                temp_v0_6->unk0 = 0xF0000000;
                temp_v0_7 = gDisplayListHead;
                gDisplayListHead = temp_v0_7 + 8;
                temp_v0_7->unk4 = 0;
                temp_v0_7->unk0 = 0xE7000000;
                temp_v0_8 = gDisplayListHead;
                gDisplayListHead = temp_v0_8 + 8;
                temp_v0_8->unk4 = &D_06013F20;
                temp_v0_8->unk0 = 0x6000000;
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029969C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8029794C(void *, void *, ?, void *); // extern
s32 func_802B4FF8(void *, ?); // extern
f32 func_802B80D0(void *, u16, ?, f32, f32); // extern
extern ? D_0600FC70;
extern ? D_0D004C68;
extern f32 D_802B9674;
extern f32 D_802B9678;
extern void *gDisplayListHead;

void func_80299864(void *arg0, void *arg1, void *arg2) {
    s16 sp4A;
    void *sp28;
    f32 temp_f0;
    s16 temp_v0;
    void *temp_a1;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;

    temp_v0 = arg2->unk2;
    temp_a1 = arg2 + 0x18;
    if ((temp_v0 & 0x800) == 0) {
        sp28 = temp_a1;
        sp4A = temp_v0;
        temp_f0 = func_802B80D0(temp_a1, arg0->unk26, 0, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B9674);
        if (!(temp_f0 < 0.0f)) {
            if (((temp_v0 & 0x400) == 0) && (temp_f0 < D_802B9678)) {
                func_8029794C(sp28, arg2 + 0x10, 0x40333333, arg1);
            }
            arg1->unk30 = arg2->unk18;
            arg1->unk34 = arg2->unk1C;
            arg1->unk38 = arg2->unk20;
            if (func_802B4FF8(arg1, 0) != 0) {
                temp_v0_2 = gDisplayListHead;
                gDisplayListHead = temp_v0_2 + 8;
                temp_v0_2->unk0 = 0xFD100000;
                temp_v0_2->unk4 = &D_0D004C68;
                temp_v0_3 = gDisplayListHead;
                gDisplayListHead = temp_v0_3 + 8;
                temp_v0_3->unk4 = 0;
                temp_v0_3->unk0 = 0xE8000000;
                temp_v0_4 = gDisplayListHead;
                gDisplayListHead = temp_v0_4 + 8;
                temp_v0_4->unk4 = 0x7000000;
                temp_v0_4->unk0 = 0xF5000100;
                temp_v0_5 = gDisplayListHead;
                gDisplayListHead = temp_v0_5 + 8;
                temp_v0_5->unk4 = 0;
                temp_v0_5->unk0 = 0xE6000000;
                temp_v0_6 = gDisplayListHead;
                gDisplayListHead = temp_v0_6 + 8;
                temp_v0_6->unk4 = 0x73FC000;
                temp_v0_6->unk0 = 0xF0000000;
                temp_v0_7 = gDisplayListHead;
                gDisplayListHead = temp_v0_7 + 8;
                temp_v0_7->unk4 = 0;
                temp_v0_7->unk0 = 0xE7000000;
                temp_v0_8 = gDisplayListHead;
                gDisplayListHead = temp_v0_8 + 8;
                temp_v0_8->unk4 = &D_0600FC70;
                temp_v0_8->unk0 = 0x6000000;
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_80299864.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8029794C(void *, void *, ?, void *); // extern
s32 func_802B4FF8(void *, ?); // extern
f32 func_802B80D0(void *, u16, ?, f32, f32); // extern
extern ? D_0600D578;
extern ? D_0D004C68;
extern f32 D_802B967C;
extern f32 D_802B9680;
extern void *gDisplayListHead;

void func_80299A2C(void *arg0, void *arg1, void *arg2) {
    s16 sp4A;
    void *sp28;
    f32 temp_f0;
    s16 temp_v0;
    void *temp_a1;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;

    temp_v0 = arg2->unk2;
    temp_a1 = arg2 + 0x18;
    if ((temp_v0 & 0x800) == 0) {
        sp28 = temp_a1;
        sp4A = temp_v0;
        temp_f0 = func_802B80D0(temp_a1, arg0->unk26, 0, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B967C);
        if (!(temp_f0 < 0.0f)) {
            if (((temp_v0 & 0x400) == 0) && (temp_f0 < D_802B9680)) {
                func_8029794C(sp28, arg2 + 0x10, 0x40333333, arg1);
            }
            arg1->unk30 = arg2->unk18;
            arg1->unk34 = arg2->unk1C;
            arg1->unk38 = arg2->unk20;
            if (func_802B4FF8(arg1, 0) != 0) {
                temp_v0_2 = gDisplayListHead;
                gDisplayListHead = temp_v0_2 + 8;
                temp_v0_2->unk0 = 0xFD100000;
                temp_v0_2->unk4 = &D_0D004C68;
                temp_v0_3 = gDisplayListHead;
                gDisplayListHead = temp_v0_3 + 8;
                temp_v0_3->unk4 = 0;
                temp_v0_3->unk0 = 0xE8000000;
                temp_v0_4 = gDisplayListHead;
                gDisplayListHead = temp_v0_4 + 8;
                temp_v0_4->unk4 = 0x7000000;
                temp_v0_4->unk0 = 0xF5000100;
                temp_v0_5 = gDisplayListHead;
                gDisplayListHead = temp_v0_5 + 8;
                temp_v0_5->unk4 = 0;
                temp_v0_5->unk0 = 0xE6000000;
                temp_v0_6 = gDisplayListHead;
                gDisplayListHead = temp_v0_6 + 8;
                temp_v0_6->unk4 = 0x73FC000;
                temp_v0_6->unk0 = 0xF0000000;
                temp_v0_7 = gDisplayListHead;
                gDisplayListHead = temp_v0_7 + 8;
                temp_v0_7->unk4 = 0;
                temp_v0_7->unk0 = 0xE7000000;
                temp_v0_8 = gDisplayListHead;
                gDisplayListHead = temp_v0_8 + 8;
                temp_v0_8->unk4 = &D_0600D578;
                temp_v0_8->unk0 = 0x6000000;
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_80299A2C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8029794C(void *, void *, ?, void *); // extern
s32 func_802B4FF8(void *, ?); // extern
f32 func_802B80D0(void *, u16, ?, f32, f32); // extern
extern ? D_060090C8;
extern ? D_0D004C68;
extern f32 D_802B9684;
extern f32 D_802B9688;
extern void *gDisplayListHead;

void func_80299BF4(void *arg0, void *arg1, void *arg2) {
    s16 sp4A;
    void *sp28;
    f32 temp_f0;
    s16 temp_v0;
    void *temp_a1;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;

    temp_v0 = arg2->unk2;
    temp_a1 = arg2 + 0x18;
    if ((temp_v0 & 0x800) == 0) {
        sp28 = temp_a1;
        sp4A = temp_v0;
        temp_f0 = func_802B80D0(temp_a1, arg0->unk26, 0, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B9684);
        if (!(temp_f0 < 0.0f)) {
            if (((temp_v0 & 0x400) == 0) && (temp_f0 < D_802B9688)) {
                func_8029794C(sp28, arg2 + 0x10, 0x40333333, arg1);
            }
            arg1->unk30 = arg2->unk18;
            arg1->unk34 = arg2->unk1C;
            arg1->unk38 = arg2->unk20;
            if (func_802B4FF8(arg1, 0) != 0) {
                temp_v0_2 = gDisplayListHead;
                gDisplayListHead = temp_v0_2 + 8;
                temp_v0_2->unk0 = 0xFD100000;
                temp_v0_2->unk4 = &D_0D004C68;
                temp_v0_3 = gDisplayListHead;
                gDisplayListHead = temp_v0_3 + 8;
                temp_v0_3->unk4 = 0;
                temp_v0_3->unk0 = 0xE8000000;
                temp_v0_4 = gDisplayListHead;
                gDisplayListHead = temp_v0_4 + 8;
                temp_v0_4->unk4 = 0x7000000;
                temp_v0_4->unk0 = 0xF5000100;
                temp_v0_5 = gDisplayListHead;
                gDisplayListHead = temp_v0_5 + 8;
                temp_v0_5->unk4 = 0;
                temp_v0_5->unk0 = 0xE6000000;
                temp_v0_6 = gDisplayListHead;
                gDisplayListHead = temp_v0_6 + 8;
                temp_v0_6->unk4 = 0x73FC000;
                temp_v0_6->unk0 = 0xF0000000;
                temp_v0_7 = gDisplayListHead;
                gDisplayListHead = temp_v0_7 + 8;
                temp_v0_7->unk4 = 0;
                temp_v0_7->unk0 = 0xE7000000;
                temp_v0_8 = gDisplayListHead;
                gDisplayListHead = temp_v0_8 + 8;
                temp_v0_8->unk4 = &D_060090C8;
                temp_v0_8->unk0 = 0x6000000;
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_80299BF4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8029794C(void *, void *, ?, void *); // extern
s32 func_802B4FF8(void *, ?); // extern
f32 func_802B80D0(void *, u16, ?, f32, f32); // extern
extern ? D_060075A0;
extern f32 D_802B968C;
extern f32 D_802B9690;
extern void *gDisplayListHead;

void func_80299DBC(void *arg0, void *arg1, void *arg2) {
    s16 sp32;
    void *sp28;
    f32 temp_f0;
    s16 temp_v0;
    void *temp_a1;
    void *temp_v1;

    temp_v0 = arg2->unk2;
    temp_a1 = arg2 + 0x18;
    if ((temp_v0 & 0x800) == 0) {
        sp28 = temp_a1;
        sp32 = temp_v0;
        temp_f0 = func_802B80D0(temp_a1, arg0->unk26, 0, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B968C);
        if (!(temp_f0 < 0.0f)) {
            if (((temp_v0 & 0x400) == 0) && (temp_f0 < D_802B9690)) {
                func_8029794C(sp28, arg2 + 0x10, 0x40333333, arg1);
            }
            arg1->unk30 = arg2->unk18;
            arg1->unk34 = arg2->unk1C;
            arg1->unk38 = arg2->unk20;
            if (func_802B4FF8(arg1, 0) != 0) {
                temp_v1 = gDisplayListHead;
                gDisplayListHead = temp_v1 + 8;
                temp_v1->unk0 = 0x6000000;
                temp_v1->unk4 = &D_060075A0;
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_80299DBC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8029794C(void *, void *, ?, void *); // extern
s32 func_802B4FF8(void *, ?); // extern
f32 func_802B80D0(void *, u16, ?, f32, f32); // extern
extern ? D_06008528;
extern f32 D_802B9694;
extern f32 D_802B9698;
extern void *gDisplayListHead;

void func_80299EDC(void *arg0, void *arg1, void *arg2) {
    s16 sp32;
    void *sp28;
    f32 temp_f0;
    s16 temp_v0;
    void *temp_a1;
    void *temp_v1;

    temp_v0 = arg2->unk2;
    temp_a1 = arg2 + 0x18;
    if ((temp_v0 & 0x800) == 0) {
        sp28 = temp_a1;
        sp32 = temp_v0;
        temp_f0 = func_802B80D0(temp_a1, arg0->unk26, 0, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B9694);
        if (!(temp_f0 < 0.0f)) {
            if (((temp_v0 & 0x400) == 0) && (temp_f0 < D_802B9698)) {
                func_8029794C(sp28, arg2 + 0x10, 0x3F800000, arg1);
            }
            arg1->unk30 = arg2->unk18;
            arg1->unk34 = arg2->unk1C;
            arg1->unk38 = arg2->unk20;
            if (func_802B4FF8(arg1, 0) != 0) {
                temp_v1 = gDisplayListHead;
                gDisplayListHead = temp_v1 + 8;
                temp_v1->unk0 = 0x6000000;
                temp_v1->unk4 = &D_06008528;
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_80299EDC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8029794C(void *, void *, ?, void *); // extern
s32 func_802B4FF8(void *, ?); // extern
f32 func_802B80D0(void *, u16, ?, f32, f32); // extern
extern ? D_06008628;
extern f32 D_802B969C;
extern f32 D_802B96A0;
extern void *gDisplayListHead;

void func_80299FFC(void *arg0, void *arg1, void *arg2) {
    s16 sp32;
    void *sp28;
    f32 temp_f0;
    s16 temp_v0;
    void *temp_a1;
    void *temp_v1;

    temp_v0 = arg2->unk2;
    temp_a1 = arg2 + 0x18;
    if ((temp_v0 & 0x800) == 0) {
        sp28 = temp_a1;
        sp32 = temp_v0;
        temp_f0 = func_802B80D0(temp_a1, arg0->unk26, 0, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B969C);
        if (!(temp_f0 < 0.0f)) {
            if (((temp_v0 & 0x400) == 0) && (temp_f0 < D_802B96A0)) {
                func_8029794C(sp28, arg2 + 0x10, 0x3F800000, arg1);
            }
            arg1->unk30 = arg2->unk18;
            arg1->unk34 = arg2->unk1C;
            arg1->unk38 = arg2->unk20;
            if (func_802B4FF8(arg1, 0) != 0) {
                temp_v1 = gDisplayListHead;
                gDisplayListHead = temp_v1 + 8;
                temp_v1->unk0 = 0x6000000;
                temp_v1->unk4 = &D_06008628;
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_80299FFC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8029794C(void *, void *, ?, void *); // extern
s32 func_802B4FF8(void *, ?); // extern
f32 func_802B80D0(void *, u16, ?, f32, f32); // extern
extern ? D_06008728;
extern f32 D_802B96A4;
extern f32 D_802B96A8;
extern void *gDisplayListHead;

void func_8029A11C(void *arg0, void *arg1, void *arg2) {
    s16 sp32;
    void *sp28;
    f32 temp_f0;
    s16 temp_v0;
    void *temp_a1;
    void *temp_v1;

    temp_v0 = arg2->unk2;
    temp_a1 = arg2 + 0x18;
    if ((temp_v0 & 0x800) == 0) {
        sp28 = temp_a1;
        sp32 = temp_v0;
        temp_f0 = func_802B80D0(temp_a1, arg0->unk26, 0, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B96A4);
        if (!(temp_f0 < 0.0f)) {
            if (((temp_v0 & 0x400) == 0) && (temp_f0 < D_802B96A8)) {
                func_8029794C(sp28, arg2 + 0x10, 0x3F4CCCCD, arg1);
            }
            arg1->unk30 = arg2->unk18;
            arg1->unk34 = arg2->unk1C;
            arg1->unk38 = arg2->unk20;
            if (func_802B4FF8(arg1, 0) != 0) {
                temp_v1 = gDisplayListHead;
                gDisplayListHead = temp_v1 + 8;
                temp_v1->unk0 = 0x6000000;
                temp_v1->unk4 = &D_06008728;
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029A11C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_802B4FF8(void *, ?); // extern
extern ? D_06013BB8;
extern void *gDisplayListHead;

void func_8029A23C(s32 arg0, void *arg1, void *arg2) {
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;

    if (arg2->unk6 != 0) {
        arg1->unk30 = arg2->unk18;
        arg1->unk34 = arg2->unk1C;
        arg1->unk38 = arg2->unk20;
        if (func_802B4FF8(arg1, 0) != 0) {
            temp_v0 = gDisplayListHead;
            gDisplayListHead = temp_v0 + 8;
            temp_v0->unk0 = 0xFD500000;
            temp_v0->unk4 = ((arg2->unk10 << 0xA) + 0x3009000) & 0x1FFFFFFF;
            temp_v0_2 = gDisplayListHead;
            gDisplayListHead = temp_v0_2 + 8;
            temp_v0_2->unk0 = 0xF5500000;
            temp_v0_2->unk4 = 0x7080200;
            temp_v0_3 = gDisplayListHead;
            gDisplayListHead = temp_v0_3 + 8;
            temp_v0_3->unk4 = 0;
            temp_v0_3->unk0 = 0xE6000000;
            temp_v0_4 = gDisplayListHead;
            gDisplayListHead = temp_v0_4 + 8;
            temp_v0_4->unk4 = 0x71FF200;
            temp_v0_4->unk0 = 0xF3000000;
            temp_v0_5 = gDisplayListHead;
            gDisplayListHead = temp_v0_5 + 8;
            temp_v0_5->unk4 = 0;
            temp_v0_5->unk0 = 0xE7000000;
            temp_v0_6 = gDisplayListHead;
            gDisplayListHead = temp_v0_6 + 8;
            temp_v0_6->unk0 = 0xF5480800;
            temp_v0_6->unk4 = 0x80200;
            temp_v0_7 = gDisplayListHead;
            gDisplayListHead = temp_v0_7 + 8;
            temp_v0_7->unk0 = 0xF2000000;
            temp_v0_7->unk4 = 0x7C07C;
            temp_v0_8 = gDisplayListHead;
            gDisplayListHead = temp_v0_8 + 8;
            temp_v0_8->unk0 = 0x6000000;
            temp_v0_8->unk4 = &D_06013BB8;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029A23C.s")
#endif

#ifdef MIPS_TO_C
/*
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_80297230(void *, void *); // extern
void func_802972B8(void *, void *); // extern
void func_802979F8(void *, ?, void *); // extern
s32 func_802B4FF8(void *, ?, void *); // extern
f32 func_802B80D0(s32, u16, ?, f32, f32); // extern
extern ? D_0D005338;
extern ? D_0D005368;
extern ? D_802B87E8;
extern f32 D_802B96AC;
extern f32 D_802B96B0;
extern s32 D_802BA050;
extern s32 D_802BA054;
extern void *gDisplayListHead;

void func_8029A3AC(void *arg0, void *arg1, void *arg2) {
    u16 sp7C;
    ? sp58;
    s32 sp54;
    f32 sp50;
    f32 temp_f0;
    s32 temp_t3;
    u16 temp_t8;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    s32 phi_t3;

    sp58.unk0 = D_802B87E8.unk0;
    sp58.unk4 = D_802B87E8.unk4;
    sp58.unk8 = D_802B87E8.unk8;
    sp58.unkC = D_802B87E8.unkC;
    sp58.unk10 = D_802B87E8.unk10;
    sp58.unk14 = D_802B87E8.unk14;
    sp58.unk18 = D_802B87E8.unk18;
    sp58.unk1C = D_802B87E8.unk1C;
    temp_f0 = func_802B80D0(arg2 + 0x18, arg0->unk26, 0, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B96AC);
    if (temp_f0 < 0.0f) {
        func_80297230(arg0, arg2);
        return;
    }
    sp50 = temp_f0;
    func_802972B8(arg0, arg2);
    if (temp_f0 < D_802B96B0) {
        func_802979F8(arg2, 0x4059999A, arg1);
    }
    if (arg2->unk0 == 0x2A) {
        phi_t3 = D_802BA054;
    } else {
        phi_t3 = D_802BA050;
    }
    temp_t8 = (arg2->unk10 / 0x1111) & 0xFFFF;
    arg1->unk30 = arg2->unk18;
    temp_t3 = phi_t3 + (sp + (temp_t8 * 2))->unk58;
    arg1->unk34 = (arg2->unk1C - arg2->unkC) + 1.0f;
    arg1->unk38 = arg2->unk20;
    sp7C = temp_t8;
    sp54 = temp_t3;
    if (func_802B4FF8(arg1, 0, arg1) != 0) {
        temp_v0 = gDisplayListHead;
        gDisplayListHead = temp_v0 + 8;
        temp_v0->unk0 = 0xFD500000;
        temp_v0->unk4 = temp_t3 & 0x1FFFFFFF;
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->unk0 = 0xF5500000;
        temp_v0_2->unk4 = 0x7080200;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->unk4 = 0;
        temp_v0_3->unk0 = 0xE6000000;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->unk4 = 0x71FF200;
        temp_v0_4->unk0 = 0xF3000000;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->unk4 = 0;
        temp_v0_5->unk0 = 0xE7000000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->unk0 = 0xF5480800;
        temp_v0_6->unk4 = 0x80200;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->unk0 = 0xF2000000;
        temp_v0_7->unk4 = 0x7C07C;
        if (sp7C < 8) {
            temp_v0_8 = gDisplayListHead;
            gDisplayListHead = temp_v0_8 + 8;
            temp_v0_8->unk0 = 0x6000000;
            temp_v0_8->unk4 = &D_0D005338;
            return;
        }
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        temp_v0_9->unk0 = 0x6000000;
        temp_v0_9->unk4 = &D_0D005368;
        // Duplicate return node #11. Try simplifying control flow for better match
    }
}
*/
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029A3AC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8029A3AC(); // extern
extern ? D_0D004E38;
extern void *gDisplayListHead;

void func_8029A690(void) {
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;

    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk0 = 0xFD100000;
    temp_v0->unk4 = &D_0D004E38;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk4 = 0;
    temp_v0_2->unk0 = 0xE8000000;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk4 = 0x7000000;
    temp_v0_3->unk0 = 0xF5000100;
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk4 = 0;
    temp_v0_4->unk0 = 0xE6000000;
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk4 = 0x73FC000;
    temp_v0_5->unk0 = 0xF0000000;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->unk4 = 0;
    temp_v0_6->unk0 = 0xE7000000;
    func_8029A3AC();
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029A690.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8029A3AC(); // extern
extern ? D_802BA060;
extern void *gDisplayListHead;

void func_8029A75C(void) {
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;

    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk0 = 0xFD100000;
    temp_v0->unk4 = &D_802BA060;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk4 = 0;
    temp_v0_2->unk0 = 0xE8000000;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk4 = 0x7000000;
    temp_v0_3->unk0 = 0xF5000100;
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk4 = 0;
    temp_v0_4->unk0 = 0xE6000000;
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk4 = 0x73FC000;
    temp_v0_5->unk0 = 0xF0000000;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->unk4 = 0;
    temp_v0_6->unk0 = 0xE7000000;
    func_8029A3AC();
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029A75C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8029A3AC(); // extern
extern ? D_0D005038;
extern void *gDisplayListHead;

void func_8029A828(void) {
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;

    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk0 = 0xFD100000;
    temp_v0->unk4 = &D_0D005038;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk4 = 0;
    temp_v0_2->unk0 = 0xE8000000;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk4 = 0x7000000;
    temp_v0_3->unk0 = 0xF5000100;
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk4 = 0;
    temp_v0_4->unk0 = 0xE6000000;
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk4 = 0x73FC000;
    temp_v0_5->unk0 = 0xF0000000;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->unk4 = 0;
    temp_v0_6->unk0 = 0xE7000000;
    func_8029A3AC();
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029A828.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_80297230(void *, void *); // extern
? func_802972B8(void *, void *); // extern
s32 func_802B4FF8(? *, ?); // extern
? func_802B5F74(? *, s32, s16 *); // extern
f32 func_802B80D0(s32, u16, ?, f32, f32); // extern
extern ? D_0D004B48;
extern ? D_0D004BD8;
extern f32 D_802B96B4;
extern void *gDisplayListHead;

void func_8029A8F4(void *arg0, ? arg1, void *arg2) {
    s16 sp80;
    s16 sp7E;
    s16 sp7C;
    ? sp3C;
    s32 sp2C;
    f32 temp_f0;
    s16 *temp_a2;
    s32 temp_a1;
    void *temp_v1;
    void *temp_v1_2;

    temp_a1 = arg2 + 0x18;
    sp2C = temp_a1;
    if (func_802B80D0(temp_a1, arg0->unk26, 0, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B96B4) < 0.0f) {
        func_80297230(arg0, arg2);
        return;
    }
    temp_f0 = arg2->unk1C;
    if ((D_8015F6EC + 800.0f) < temp_f0) {
        func_80297230(arg0, arg2);
        return;
    }
    if (temp_f0 < (D_8015F6EE - 800.0f)) {
        func_80297230(arg0, arg2);
        return;
    }
    func_802972B8(arg0, arg2);
    temp_a2 = &sp7C;
    if (arg2->unk6 == 5) {
        func_802B5F74(&sp3C, sp2C, arg2 + 0x10);
    } else {
        sp7C = 0;
        sp7E = 0;
        sp80 = 0;
        func_802B5F74(&sp3C, sp2C, temp_a2);
    }
    if (func_802B4FF8(&sp3C, 0) != 0) {
        if (arg2->unk6 != 5) {
            temp_v1 = gDisplayListHead;
            gDisplayListHead = temp_v1 + 8;
            temp_v1->unk0 = 0x6000000;
            temp_v1->unk4 = &D_0D004B48;
            return;
        }
        temp_v1_2 = gDisplayListHead;
        gDisplayListHead = temp_v1_2 + 8;
        temp_v1_2->unk0 = 0x6000000;
        temp_v1_2->unk4 = &D_0D004BD8;
        // Duplicate return node #13. Try simplifying control flow for better match
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029A8F4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void update_obj_wario_stadium_sign(void *arg0) {
    arg0->unk12 = arg0->unk12 + 0xB6;
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/update_obj_wario_stadium_sign.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800C98B8(void *, void *, ?, void *); // extern
extern ? D_801637B8;

void update_obj_railroad_crossing(void *arg0) {
    if (*(&D_801637B8 + (arg0->unk6 * 2)) != 0) {
        arg0->unk4 = arg0->unk4 + 1;
        if (arg0->unk4 >= 0x29) {
            arg0->unk4 = 1;
        }
        if ((arg0->unk4 == 1) || (arg0->unk4 == 0x14)) {
            func_800C98B8(arg0 + 0x18, arg0 + 0x24, 0x19017016, arg0);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/update_obj_railroad_crossing.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void update_obj_mario_raceway_sign(void *arg0) {
    s16 temp_v0;

    temp_v0 = arg0->unk2;
    if ((temp_v0 & 0x800) == 0) {
        if ((temp_v0 & 0x400) != 0) {
            arg0->unk1C = arg0->unk1C + 4.0f;
            if (arg0->unk1C > 800.0f) {
                arg0->unk2 = arg0->unk2 | 0x800;
                arg0->unk12 = arg0->unk12 + 0x71C;
                return;
            }
            // Duplicate return node #5. Try simplifying control flow for better match
            return;
        }
        arg0->unk12 = arg0->unk12 + 0xB6;
        // Duplicate return node #5. Try simplifying control flow for better match
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/update_obj_mario_raceway_sign.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
/*
Failed to decompile function func_8029AC18:

Unable to determine jump table for jr instruction at func_8029AC18.s line 59.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
*/
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029AC18.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_802B4FF8(? *, ?); // extern
? func_802B5520(? *, ? *); // extern
? func_802B59DC(? *, s16); // extern
? func_802B5F74(? *, s32, s32); // extern
? func_802B71CC(? *, ? *, ? *); // extern
f32 func_802B80D0(s32, u16, ?, f32, f32); // extern
? load_giant_egg(? *, ?, ?, ?); // extern
extern ? D_0600E058;
extern ? D_0600E730;
extern ? D_0600FC28;
extern ? D_800DC628;
extern ? D_800DC630;
extern f32 D_802B96DC;
extern void *gDisplayListHead;

void func_8029AE1C(void *arg0, void *arg1, ? arg2, s32 arg3) {
    ? sp120;
    ? spE0;
    ? spA0;
    ? sp60;
    s32 sp30;
    s32 temp_a1;
    s32 temp_t6;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    temp_t6 = arg3 & 0xFFFF;
    if ((temp_t6 < 0x15) || (temp_t6 >= 0x19)) {
        temp_a1 = arg1 + 0x18;
        sp30 = temp_a1;
        if (!(func_802B80D0(temp_a1, arg0->unk26, 0x47AFC800, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B96DC) < 0.0f)) {
            temp_v0 = gDisplayListHead;
            gDisplayListHead = temp_v0 + 8;
            temp_v0->unk4 = 0x80000040;
            temp_v0->unk0 = 0xBC000002;
            temp_v0_2 = gDisplayListHead;
            gDisplayListHead = temp_v0_2 + 8;
            temp_v0_2->unk0 = 0x3860010;
            temp_v0_2->unk4 = &D_800DC630;
            temp_v0_3 = gDisplayListHead;
            gDisplayListHead = temp_v0_3 + 8;
            temp_v0_3->unk4 = &D_800DC628;
            temp_v0_3->unk0 = 0x3880010;
            temp_v0_4 = gDisplayListHead;
            gDisplayListHead = temp_v0_4 + 8;
            temp_v0_4->unk0 = 0xB7000000;
            temp_v0_4->unk4 = 0x20204;
            func_802B5F74(&spE0, temp_a1, arg1 + 0x10);
            if (func_802B4FF8(&spE0, 1) != 0) {
                temp_v0_5 = gDisplayListHead;
                gDisplayListHead = temp_v0_5 + 8;
                temp_v0_5->unk4 = &D_0600E730;
                temp_v0_5->unk0 = 0x6000000;
                temp_v0_6 = gDisplayListHead;
                gDisplayListHead = temp_v0_6 + 8;
                temp_v0_6->unk4 = &D_0600E058;
                temp_v0_6->unk0 = 0x6000000;
                func_802B59DC(&spE0, arg1->unk6);
                load_giant_egg(&sp120, 0, 0x41800000, 0xC37F0000);
                func_802B5520(&spA0, &sp120);
                func_802B71CC(&sp60, &spE0, &spA0);
                if (func_802B4FF8(&sp60, 3) != 0) {
                    temp_v0_7 = gDisplayListHead;
                    gDisplayListHead = temp_v0_7 + 8;
                    temp_v0_7->unk4 = 0x2000;
                    temp_v0_7->unk0 = 0xB6000000;
                    temp_v0_8 = gDisplayListHead;
                    gDisplayListHead = temp_v0_8 + 8;
                    temp_v0_8->unk4 = &D_0600FC28;
                    temp_v0_8->unk0 = 0x6000000;
                    temp_v0_9 = gDisplayListHead;
                    gDisplayListHead = temp_v0_9 + 8;
                    temp_v0_9->unk4 = 0;
                    temp_v0_9->unk0 = 0xBD000000;
                    temp_v0_10 = gDisplayListHead;
                    gDisplayListHead = temp_v0_10 + 8;
                    temp_v0_10->unk4 = 0x2000;
                    temp_v0_10->unk0 = 0xB7000000;
                }
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029AE1C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_802B4FF8(? *, ?); // extern
? func_802B5F74(? *, s32, s32); // extern
f32 func_802B80D0(s32, u16, ?, f32, f32); // extern
extern ? D_06023858;
extern ? D_060238A0;
extern ? D_060238E8;
extern f32 D_802B96E0;
extern f32 D_802B96E4;
extern f32 D_802B96E8;
extern f32 D_802B96EC;
extern s32 *gDisplayListHead;
extern ? toads_turnpike_dl_0;
extern ? toads_turnpike_dl_1;
extern ? toads_turnpike_dl_2;

void func_8029B06C(void *arg0, void *arg1) {
    ? spD8;
    f32 sp54;
    s32 sp24;
    f32 temp_f0;
    f32 temp_f2;
    s16 temp_v0_3;
    s32 *temp_v0;
    s32 *temp_v0_10;
    s32 *temp_v0_11;
    s32 *temp_v0_2;
    s32 *temp_v0_4;
    s32 *temp_v0_5;
    s32 *temp_v0_6;
    s32 *temp_v0_7;
    s32 *temp_v0_8;
    s32 *temp_v0_9;
    s32 temp_a1;
    s32 *phi_v0;
    s32 phi_a1;
    s32 *phi_v0_2;

    temp_a1 = arg1 + 0x18;
    sp24 = temp_a1;
    temp_f0 = func_802B80D0(temp_a1, arg0->unk26, 0x451C4000, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B96E0);
    temp_f2 = temp_f0;
    if (!(temp_f0 < 0.0f)) {
        temp_v0 = gDisplayListHead;
        gDisplayListHead = temp_v0 + 8;
        temp_v0->unk4 = -1;
        temp_v0->unk0 = 0xBB000001;
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->unk4 = 0x20000;
        temp_v0_2->unk0 = 0xB6000000;
        sp54 = temp_f2;
        func_802B5F74(&spD8, temp_a1, arg1 + 0x10);
        if (func_802B4FF8(&spD8, 0) != 0) {
            temp_v0_3 = arg1->unk6;
            phi_a1 = 0x6000000;
            if (temp_v0_3 != 0) {
                if (temp_v0_3 != 1) {
                    if (temp_v0_3 != 2) {

                    } else {
                        temp_v0_4 = gDisplayListHead;
                        gDisplayListHead = temp_v0_4 + 8;
                        temp_v0_4->unk4 = &D_060238E8;
                        phi_v0 = temp_v0_4;
                        goto block_9;
                    }
                } else {
                    temp_v0_5 = gDisplayListHead;
                    gDisplayListHead = temp_v0_5 + 8;
                    temp_v0_5->unk4 = &D_060238A0;
                    phi_v0 = temp_v0_5;
                    goto block_9;
                }
            } else {
                temp_v0_6 = gDisplayListHead;
                gDisplayListHead = temp_v0_6 + 8;
                temp_v0_6->unk4 = &D_06023858;
                phi_v0 = temp_v0_6;
block_9:
                *phi_v0 = 0x6000000;
                phi_a1 = 0x6000000;
            }
            if (D_800DC52C == 0) {
                if (temp_f2 < D_802B96E4) {
                    temp_v0_7 = gDisplayListHead;
                    gDisplayListHead = temp_v0_7 + 8;
                    temp_v0_7->unk4 = &toads_turnpike_dl_0;
                    phi_v0_2 = temp_v0_7;
                } else if (temp_f2 < D_802B96E8) {
                    temp_v0_8 = gDisplayListHead;
                    gDisplayListHead = temp_v0_8 + 8;
                    temp_v0_8->unk4 = &toads_turnpike_dl_1;
                    phi_v0_2 = temp_v0_8;
                } else {
                    temp_v0_9 = gDisplayListHead;
                    gDisplayListHead = temp_v0_9 + 8;
                    temp_v0_9->unk4 = &toads_turnpike_dl_2;
                    phi_v0_2 = temp_v0_9;
                }
            } else if (temp_f2 < D_802B96EC) {
                temp_v0_10 = gDisplayListHead;
                gDisplayListHead = temp_v0_10 + 8;
                temp_v0_10->unk4 = &toads_turnpike_dl_1;
                phi_v0_2 = temp_v0_10;
            } else {
                temp_v0_11 = gDisplayListHead;
                gDisplayListHead = temp_v0_11 + 8;
                temp_v0_11->unk4 = &toads_turnpike_dl_2;
                phi_v0_2 = temp_v0_11;
            }
            *phi_v0_2 = phi_a1;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029B06C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_802B4FF8(? *, ?); // extern
? func_802B5F74(? *, s32, s32); // extern
f32 func_802B80D0(s32, u16, ?, f32, f32); // extern
extern f32 D_802B96F0;
extern f32 D_802B96F4;
extern f32 D_802B96F8;
extern f32 D_802B96FC;
extern s32 *gDisplayListHead;
extern ? toads_turnpike_dl_3;
extern ? toads_turnpike_dl_4;
extern ? toads_turnpike_dl_5;

void func_8029B2E4(void *arg0, s32 arg1) {
    ? spC8;
    f32 sp44;
    s32 sp24;
    f32 temp_f0;
    f32 temp_f2;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s32 *temp_v0_4;
    s32 *temp_v0_5;
    s32 *temp_v0_6;
    s32 *temp_v0_7;
    s32 temp_a1;
    s32 *phi_v0;

    temp_a1 = arg1 + 0x18;
    sp24 = temp_a1;
    temp_f0 = func_802B80D0(temp_a1, arg0->unk26, 0x451C4000, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B96F0);
    temp_f2 = temp_f0;
    if (!(temp_f0 < 0.0f) && (temp_v0 = gDisplayListHead, gDisplayListHead = temp_v0 + 8, temp_v0->unk4 = -1, temp_v0->unk0 = 0xBB000001, temp_v0_2 = gDisplayListHead, gDisplayListHead = temp_v0_2 + 8, temp_v0_2->unk4 = 0x20000, temp_v0_2->unk0 = 0xB6000000, sp44 = temp_f2, func_802B5F74(&spC8, temp_a1, arg1 + 0x10), (func_802B4FF8(&spC8, 0) != 0))) {
        if (D_800DC52C == 0) {
            if (temp_f2 < D_802B96F4) {
                temp_v0_3 = gDisplayListHead;
                gDisplayListHead = temp_v0_3 + 8;
                temp_v0_3->unk4 = &toads_turnpike_dl_3;
                temp_v0_3->unk0 = 0x6000000;
                return;
            }
            if (temp_f2 < D_802B96F8) {
                temp_v0_4 = gDisplayListHead;
                gDisplayListHead = temp_v0_4 + 8;
                temp_v0_4->unk4 = &toads_turnpike_dl_4;
                phi_v0 = temp_v0_4;
                goto block_11;
            }
            temp_v0_5 = gDisplayListHead;
            gDisplayListHead = temp_v0_5 + 8;
            temp_v0_5->unk4 = &toads_turnpike_dl_5;
            temp_v0_5->unk0 = 0x6000000;
            return;
        }
        if (temp_f2 < D_802B96FC) {
            temp_v0_6 = gDisplayListHead;
            gDisplayListHead = temp_v0_6 + 8;
            temp_v0_6->unk4 = &toads_turnpike_dl_4;
            temp_v0_6->unk0 = 0x6000000;
            return;
        }
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->unk4 = &toads_turnpike_dl_5;
        phi_v0 = temp_v0_7;
block_11:
        *phi_v0 = 0x6000000;
        // Duplicate return node #12. Try simplifying control flow for better match
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029B2E4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_802B4FF8(? *, ?); // extern
? func_802B5F00(? *, ?); // extern
? func_802B5F74(? *, s32, s32); // extern
f32 func_802B80D0(s32, u16, ?, f32, f32); // extern
extern f32 D_802B9700;
extern f32 D_802B9704;
extern f32 D_802B9708;
extern f32 D_802B970C;
extern s32 *gDisplayListHead;
extern ? toads_turnpike_dl_10;
extern ? toads_turnpike_dl_11;
extern ? toads_turnpike_dl_9;

void func_8029B4E0(void *arg0, s32 arg1) {
    ? spC8;
    f32 sp44;
    s32 sp24;
    f32 temp_f0;
    f32 temp_f2;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s32 *temp_v0_4;
    s32 *temp_v0_5;
    s32 *temp_v0_6;
    s32 *temp_v0_7;
    s32 temp_a1;
    s32 *phi_v0;

    temp_a1 = arg1 + 0x18;
    sp24 = temp_a1;
    temp_f0 = func_802B80D0(temp_a1, arg0->unk26, 0x451C4000, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B9700);
    temp_f2 = temp_f0;
    if (!(temp_f0 < 0.0f) && (temp_v0 = gDisplayListHead, gDisplayListHead = temp_v0 + 8, temp_v0->unk4 = -1, temp_v0->unk0 = 0xBB000001, temp_v0_2 = gDisplayListHead, gDisplayListHead = temp_v0_2 + 8, temp_v0_2->unk4 = 0x20000, temp_v0_2->unk0 = 0xB6000000, sp44 = temp_f2, func_802B5F74(&spC8, temp_a1, arg1 + 0x10), func_802B5F00(&spC8, 0x3DCCCCCD), (func_802B4FF8(&spC8, 0) != 0))) {
        if (D_800DC52C == 0) {
            if (temp_f2 < D_802B9704) {
                temp_v0_3 = gDisplayListHead;
                gDisplayListHead = temp_v0_3 + 8;
                temp_v0_3->unk4 = &toads_turnpike_dl_9;
                temp_v0_3->unk0 = 0x6000000;
                return;
            }
            if (temp_f2 < D_802B9708) {
                temp_v0_4 = gDisplayListHead;
                gDisplayListHead = temp_v0_4 + 8;
                temp_v0_4->unk4 = &toads_turnpike_dl_10;
                phi_v0 = temp_v0_4;
                goto block_11;
            }
            temp_v0_5 = gDisplayListHead;
            gDisplayListHead = temp_v0_5 + 8;
            temp_v0_5->unk4 = &toads_turnpike_dl_11;
            temp_v0_5->unk0 = 0x6000000;
            return;
        }
        if (temp_f2 < D_802B970C) {
            temp_v0_6 = gDisplayListHead;
            gDisplayListHead = temp_v0_6 + 8;
            temp_v0_6->unk4 = &toads_turnpike_dl_10;
            temp_v0_6->unk0 = 0x6000000;
            return;
        }
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->unk4 = &toads_turnpike_dl_11;
        phi_v0 = temp_v0_7;
block_11:
        *phi_v0 = 0x6000000;
        // Duplicate return node #12. Try simplifying control flow for better match
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029B4E0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_802B4FF8(? *, ?); // extern
? func_802B5F74(? *, s32, s32); // extern
f32 func_802B80D0(s32, u16, ?, f32, f32); // extern
extern f32 D_802B9710;
extern f32 D_802B9714;
extern f32 D_802B9718;
extern f32 D_802B971C;
extern s32 *gDisplayListHead;
extern ? toads_turnpike_dl_6;
extern ? toads_turnpike_dl_7;
extern ? toads_turnpike_dl_8;

void func_8029B6EC(void *arg0, s32 arg1) {
    ? spC8;
    f32 sp44;
    s32 sp24;
    f32 temp_f0;
    f32 temp_f2;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s32 *temp_v0_4;
    s32 *temp_v0_5;
    s32 *temp_v0_6;
    s32 *temp_v0_7;
    s32 temp_a1;
    s32 *phi_v0;

    temp_a1 = arg1 + 0x18;
    sp24 = temp_a1;
    temp_f0 = func_802B80D0(temp_a1, arg0->unk26, 0x451C4000, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B9710);
    temp_f2 = temp_f0;
    if (!(temp_f0 < 0.0f) && (temp_v0 = gDisplayListHead, gDisplayListHead = temp_v0 + 8, temp_v0->unk4 = -1, temp_v0->unk0 = 0xBB000001, temp_v0_2 = gDisplayListHead, gDisplayListHead = temp_v0_2 + 8, temp_v0_2->unk4 = 0x20000, temp_v0_2->unk0 = 0xB6000000, sp44 = temp_f2, func_802B5F74(&spC8, temp_a1, arg1 + 0x10), (func_802B4FF8(&spC8, 0) != 0))) {
        if (D_800DC52C == 0) {
            if (temp_f2 < D_802B9714) {
                temp_v0_3 = gDisplayListHead;
                gDisplayListHead = temp_v0_3 + 8;
                temp_v0_3->unk4 = &toads_turnpike_dl_6;
                temp_v0_3->unk0 = 0x6000000;
                return;
            }
            if (temp_f2 < D_802B9718) {
                temp_v0_4 = gDisplayListHead;
                gDisplayListHead = temp_v0_4 + 8;
                temp_v0_4->unk4 = &toads_turnpike_dl_7;
                phi_v0 = temp_v0_4;
                goto block_11;
            }
            temp_v0_5 = gDisplayListHead;
            gDisplayListHead = temp_v0_5 + 8;
            temp_v0_5->unk4 = &toads_turnpike_dl_8;
            temp_v0_5->unk0 = 0x6000000;
            return;
        }
        if (temp_f2 < D_802B971C) {
            temp_v0_6 = gDisplayListHead;
            gDisplayListHead = temp_v0_6 + 8;
            temp_v0_6->unk4 = &toads_turnpike_dl_7;
            temp_v0_6->unk0 = 0x6000000;
            return;
        }
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->unk4 = &toads_turnpike_dl_8;
        phi_v0 = temp_v0_7;
block_11:
        *phi_v0 = 0x6000000;
        // Duplicate return node #12. Try simplifying control flow for better match
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029B6EC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_802B4FF8(? *, ?); // extern
? func_802B5520(? *, ? *); // extern
? func_802B59DC(? *, s16); // extern
? func_802B5F74(? *, ? *, s32); // extern
? func_802B71CC(? *, ? *, ? *); // extern
f32 func_802B80D0(? *, u16, ?, f32, f32); // extern
? load_giant_egg(? *, ?, ?, ?); // extern
extern ? D_0601B978;
extern ? D_0601C0F0;
extern ? D_0601D160;
extern ? D_0601D670;
extern ? D_0601E480;
extern ? D_0601E910;
extern ? D_06022D28;
extern ? D_06022D70;
extern ? D_06022DB8;
extern f32 D_802B9720;
extern f32 D_802B9724;
extern f32 D_802B9728;
extern f32 D_802B972C;
extern void *gDisplayListHead;

void func_8029B8E8(void *arg0, void *arg1) {
    ? sp160;
    ? sp120;
    ? spE0;
    ? spA0;
    f32 sp9C;
    ? *sp30;
    ? *temp_a1;
    f32 temp_f0;
    f32 temp_f2;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_16;
    void *temp_v0_17;
    void *temp_v0_18;
    void *temp_v0_19;
    void *temp_v0_20;
    void *temp_v0_21;
    void *temp_v0_22;
    void *temp_v0_23;
    void *temp_v0_24;
    void *temp_v0_25;
    void *temp_v0_26;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    temp_a1 = arg1 + 0x18;
    sp30 = temp_a1;
    temp_f0 = func_802B80D0(temp_a1, arg0->unk26, 0x451C4000, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B9720);
    temp_f2 = temp_f0;
    if (!(temp_f0 < 0.0f)) {
        temp_v0 = gDisplayListHead;
        gDisplayListHead = temp_v0 + 8;
        temp_v0->unk4 = 0x20000;
        temp_v0->unk0 = 0xB6000000;
        sp9C = temp_f2;
        func_802B5F74(&sp120, temp_a1, arg1 + 0x10);
        if (func_802B4FF8(&sp120, 0) != 0) {
            if (temp_f2 < D_802B9724) {
                temp_v0_2 = gDisplayListHead;
                gDisplayListHead = temp_v0_2 + 8;
                temp_v0_2->unk4 = &D_0601C0F0;
                temp_v0_2->unk0 = 0x6000000;
                temp_v0_3 = gDisplayListHead;
                gDisplayListHead = temp_v0_3 + 8;
                temp_v0_3->unk4 = &D_0601B978;
                temp_v0_3->unk0 = 0x6000000;
            } else if (temp_f2 < D_802B9728) {
                temp_v0_4 = gDisplayListHead;
                gDisplayListHead = temp_v0_4 + 8;
                temp_v0_4->unk4 = &D_0601D670;
                temp_v0_4->unk0 = 0x6000000;
                temp_v0_5 = gDisplayListHead;
                gDisplayListHead = temp_v0_5 + 8;
                temp_v0_5->unk4 = &D_0601D160;
                temp_v0_5->unk0 = 0x6000000;
            } else {
                temp_v0_6 = gDisplayListHead;
                gDisplayListHead = temp_v0_6 + 8;
                temp_v0_6->unk4 = &D_0601E910;
                temp_v0_6->unk0 = 0x6000000;
                temp_v0_7 = gDisplayListHead;
                gDisplayListHead = temp_v0_7 + 8;
                temp_v0_7->unk4 = &D_0601E480;
                temp_v0_7->unk0 = 0x6000000;
            }
            if (!(D_802B972C < temp_f2)) {
                temp_v0_8 = gDisplayListHead;
                gDisplayListHead = temp_v0_8 + 8;
                temp_v0_8->unk4 = 0x2000;
                temp_v0_8->unk0 = 0xB6000000;
                temp_v0_9 = gDisplayListHead;
                gDisplayListHead = temp_v0_9 + 8;
                temp_v0_9->unk4 = &D_06022D28;
                temp_v0_9->unk0 = 0x6000000;
                func_802B59DC(&sp120, arg1->unk6);
                load_giant_egg(&sp160, 0x41880000, 0x40C00000, 0x42000000);
                func_802B5520(&spE0, &sp160);
                func_802B71CC(&spA0, &sp120, &spE0);
                if (func_802B4FF8(&spA0, 3) != 0) {
                    temp_v0_10 = gDisplayListHead;
                    gDisplayListHead = temp_v0_10 + 8;
                    temp_v0_10->unk4 = &D_06022DB8;
                    temp_v0_10->unk0 = 0x6000000;
                    temp_v0_11 = gDisplayListHead;
                    gDisplayListHead = temp_v0_11 + 8;
                    temp_v0_11->unk4 = 0;
                    temp_v0_11->unk0 = 0xBD000000;
                    sp30 = &D_06022DB8;
                    func_802B59DC(&sp120, arg1->unk6);
                    load_giant_egg(&sp160, 0xC1880000, 0x40C00000, 0x42000000);
                    func_802B5520(&spE0, &sp160);
                    func_802B71CC(&spA0, &sp120, &spE0);
                    if (func_802B4FF8(&spA0, 3) != 0) {
                        temp_v0_12 = gDisplayListHead;
                        gDisplayListHead = temp_v0_12 + 8;
                        temp_v0_12->unk0 = 0x6000000;
                        temp_v0_12->unk4 = sp30;
                        temp_v0_13 = gDisplayListHead;
                        gDisplayListHead = temp_v0_13 + 8;
                        temp_v0_13->unk4 = 0;
                        temp_v0_13->unk0 = 0xBD000000;
                        func_802B59DC(&sp120, arg1->unk6 + 0x16C);
                        load_giant_egg(&sp160, 0x41880000, 0x40C00000, 0x41800000);
                        func_802B5520(&spE0, &sp160);
                        func_802B71CC(&spA0, &sp120, &spE0);
                        if (func_802B4FF8(&spA0, 3) != 0) {
                            temp_v0_14 = gDisplayListHead;
                            gDisplayListHead = temp_v0_14 + 8;
                            temp_v0_14->unk0 = 0x6000000;
                            temp_v0_14->unk4 = sp30;
                            temp_v0_15 = gDisplayListHead;
                            gDisplayListHead = temp_v0_15 + 8;
                            temp_v0_15->unk4 = 0;
                            temp_v0_15->unk0 = 0xBD000000;
                            func_802B59DC(&sp120, arg1->unk6 + 0x16C);
                            load_giant_egg(&sp160, 0xC1880000, 0x40C00000, 0x41800000);
                            func_802B5520(&spE0, &sp160);
                            func_802B71CC(&spA0, &sp120, &spE0);
                            if (func_802B4FF8(&spA0, 3) != 0) {
                                temp_v0_16 = gDisplayListHead;
                                gDisplayListHead = temp_v0_16 + 8;
                                temp_v0_16->unk0 = 0x6000000;
                                temp_v0_16->unk4 = sp30;
                                temp_v0_17 = gDisplayListHead;
                                gDisplayListHead = temp_v0_17 + 8;
                                temp_v0_17->unk4 = 0;
                                temp_v0_17->unk0 = 0xBD000000;
                                func_802B59DC(&sp120, arg1->unk6 + 0x444);
                                load_giant_egg(&sp160, 0x41880000, 0x41400000, 0xC1400000);
                                func_802B5520(&spE0, &sp160);
                                func_802B71CC(&spA0, &sp120, &spE0);
                                if (func_802B4FF8(&spA0, 3) != 0) {
                                    temp_v0_18 = gDisplayListHead;
                                    gDisplayListHead = temp_v0_18 + 8;
                                    temp_v0_18->unk4 = &D_06022D70;
                                    temp_v0_18->unk0 = 0x6000000;
                                    temp_v0_19 = gDisplayListHead;
                                    gDisplayListHead = temp_v0_19 + 8;
                                    temp_v0_19->unk4 = 0;
                                    temp_v0_19->unk0 = 0xBD000000;
                                    sp30 = &D_06022D70;
                                    func_802B59DC(&sp120, arg1->unk6 + 0x444);
                                    load_giant_egg(&sp160, 0xC1880000, 0x41400000, 0xC1400000);
                                    func_802B5520(&spE0, &sp160);
                                    func_802B71CC(&spA0, &sp120, &spE0);
                                    if (func_802B4FF8(&spA0, 3) != 0) {
                                        temp_v0_20 = gDisplayListHead;
                                        gDisplayListHead = temp_v0_20 + 8;
                                        temp_v0_20->unk0 = 0x6000000;
                                        temp_v0_20->unk4 = sp30;
                                        temp_v0_21 = gDisplayListHead;
                                        gDisplayListHead = temp_v0_21 + 8;
                                        temp_v0_21->unk4 = 0;
                                        temp_v0_21->unk0 = 0xBD000000;
                                        func_802B59DC(&sp120, arg1->unk6 + 0x2D8);
                                        load_giant_egg(&sp160, 0x41880000, 0x41400000, 0xC2080000);
                                        func_802B5520(&spE0, &sp160);
                                        func_802B71CC(&spA0, &sp120, &spE0);
                                        if (func_802B4FF8(&spA0, 3) != 0) {
                                            temp_v0_22 = gDisplayListHead;
                                            gDisplayListHead = temp_v0_22 + 8;
                                            temp_v0_22->unk0 = 0x6000000;
                                            temp_v0_22->unk4 = sp30;
                                            temp_v0_23 = gDisplayListHead;
                                            gDisplayListHead = temp_v0_23 + 8;
                                            temp_v0_23->unk4 = 0;
                                            temp_v0_23->unk0 = 0xBD000000;
                                            func_802B59DC(&sp120, arg1->unk6 + 0x2D8);
                                            load_giant_egg(&sp160, 0xC1880000, 0x41400000, 0xC2080000);
                                            func_802B5520(&spE0, &sp160);
                                            func_802B71CC(&spA0, &sp120, &spE0);
                                            if (func_802B4FF8(&spA0, 3) != 0) {
                                                temp_v0_24 = gDisplayListHead;
                                                gDisplayListHead = temp_v0_24 + 8;
                                                temp_v0_24->unk0 = 0x6000000;
                                                temp_v0_24->unk4 = sp30;
                                                temp_v0_25 = gDisplayListHead;
                                                gDisplayListHead = temp_v0_25 + 8;
                                                temp_v0_25->unk4 = 0;
                                                temp_v0_25->unk0 = 0xBD000000;
                                                temp_v0_26 = gDisplayListHead;
                                                gDisplayListHead = temp_v0_26 + 8;
                                                temp_v0_26->unk4 = 0x2000;
                                                temp_v0_26->unk0 = 0xB7000000;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029B8E8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_802B4FF8(? *, ?); // extern
? func_802B5520(? *, ? *); // extern
? func_802B59DC(? *, s16); // extern
? func_802B5F74(? *, ? *, s32); // extern
? func_802B71CC(? *, ? *, ? *); // extern
f32 func_802B80D0(? *, u16, ?, f32, f32); // extern
? load_giant_egg(? *, ?, ?, ?); // extern
extern ? D_0601F228;
extern ? D_0601F708;
extern ? D_0601FAF8;
extern ? D_06022D28;
extern ? D_06022DB8;
extern f32 D_802B9730;
extern f32 D_802B9734;
extern f32 D_802B9738;
extern f32 D_802B973C;
extern void *gDisplayListHead;

void func_8029BFB0(void *arg0, void *arg1) {
    ? sp100;
    ? spF4;
    ? spB4;
    ? sp74;
    f32 sp70;
    ? *sp30;
    ? *temp_a1;
    f32 temp_f0;
    f32 temp_f2;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    temp_a1 = arg1 + 0x18;
    sp30 = temp_a1;
    temp_f0 = func_802B80D0(temp_a1, arg0->unk26, 0x441C4000, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B9730);
    temp_f2 = temp_f0;
    if (!(temp_f0 < 0.0f)) {
        temp_v0 = gDisplayListHead;
        gDisplayListHead = temp_v0 + 8;
        temp_v0->unk4 = 0x20000;
        temp_v0->unk0 = 0xB6000000;
        sp70 = temp_f2;
        func_802B5F74(&sp100, temp_a1, arg1 + 0x10);
        if (func_802B4FF8(&sp100, 0) != 0) {
            if (temp_f2 < D_802B9734) {
                temp_v0_2 = gDisplayListHead;
                gDisplayListHead = temp_v0_2 + 8;
                temp_v0_2->unk4 = &D_0601F228;
                temp_v0_2->unk0 = 0x6000000;
            } else if (temp_f2 < D_802B9738) {
                temp_v0_3 = gDisplayListHead;
                gDisplayListHead = temp_v0_3 + 8;
                temp_v0_3->unk4 = &D_0601F708;
                temp_v0_3->unk0 = 0x6000000;
            } else {
                temp_v0_4 = gDisplayListHead;
                gDisplayListHead = temp_v0_4 + 8;
                temp_v0_4->unk4 = &D_0601FAF8;
                temp_v0_4->unk0 = 0x6000000;
            }
            if (!(D_802B973C < temp_f2)) {
                temp_v0_5 = gDisplayListHead;
                gDisplayListHead = temp_v0_5 + 8;
                temp_v0_5->unk4 = 0x2000;
                temp_v0_5->unk0 = 0xB6000000;
                temp_v0_6 = gDisplayListHead;
                gDisplayListHead = temp_v0_6 + 8;
                temp_v0_6->unk4 = &D_06022D28;
                temp_v0_6->unk0 = 0x6000000;
                func_802B59DC(&sp100, arg1->unk6);
                load_giant_egg(&spF4, 0x41880000, 0x40C00000, 0x41000000);
                func_802B5520(&spB4, &spF4);
                func_802B71CC(&sp74, &sp100, &spB4);
                if (func_802B4FF8(&sp74, 3) != 0) {
                    temp_v0_7 = gDisplayListHead;
                    gDisplayListHead = temp_v0_7 + 8;
                    temp_v0_7->unk4 = &D_06022DB8;
                    temp_v0_7->unk0 = 0x6000000;
                    temp_v0_8 = gDisplayListHead;
                    gDisplayListHead = temp_v0_8 + 8;
                    temp_v0_8->unk4 = 0;
                    temp_v0_8->unk0 = 0xBD000000;
                    sp30 = &D_06022DB8;
                    func_802B59DC(&sp100, arg1->unk6);
                    load_giant_egg(&spF4, 0xC1880000, 0x40C00000, 0x41000000);
                    func_802B5520(&spB4, &spF4);
                    func_802B71CC(&sp74, &sp100, &spB4);
                    if (func_802B4FF8(&sp74, 3) != 0) {
                        temp_v0_9 = gDisplayListHead;
                        gDisplayListHead = temp_v0_9 + 8;
                        temp_v0_9->unk0 = 0x6000000;
                        temp_v0_9->unk4 = sp30;
                        temp_v0_10 = gDisplayListHead;
                        gDisplayListHead = temp_v0_10 + 8;
                        temp_v0_10->unk4 = 0;
                        temp_v0_10->unk0 = 0xBD000000;
                        func_802B59DC(&sp100, arg1->unk6 + 0x444);
                        load_giant_egg(&spF4, 0x41880000, 0x40C00000, 0xC1000000);
                        func_802B5520(&spB4, &spF4);
                        func_802B71CC(&sp74, &sp100, &spB4);
                        if (func_802B4FF8(&sp74, 3) != 0) {
                            temp_v0_11 = gDisplayListHead;
                            gDisplayListHead = temp_v0_11 + 8;
                            temp_v0_11->unk0 = 0x6000000;
                            temp_v0_11->unk4 = sp30;
                            temp_v0_12 = gDisplayListHead;
                            gDisplayListHead = temp_v0_12 + 8;
                            temp_v0_12->unk4 = 0;
                            temp_v0_12->unk0 = 0xBD000000;
                            func_802B59DC(&sp100, arg1->unk6 + 0x444);
                            load_giant_egg(&spF4, 0xC1880000, 0x40C00000, 0xC1000000);
                            func_802B5520(&spB4, &spF4);
                            func_802B71CC(&sp74, &sp100, &spB4);
                            if (func_802B4FF8(&sp74, 3) != 0) {
                                temp_v0_13 = gDisplayListHead;
                                gDisplayListHead = temp_v0_13 + 8;
                                temp_v0_13->unk0 = 0x6000000;
                                temp_v0_13->unk4 = sp30;
                                temp_v0_14 = gDisplayListHead;
                                gDisplayListHead = temp_v0_14 + 8;
                                temp_v0_14->unk4 = 0;
                                temp_v0_14->unk0 = 0xBD000000;
                                temp_v0_15 = gDisplayListHead;
                                gDisplayListHead = temp_v0_15 + 8;
                                temp_v0_15->unk4 = 0x2000;
                                temp_v0_15->unk0 = 0xB7000000;
                            }
                        }
                    }
                }
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029BFB0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_802B4FF8(? *, ?); // extern
? func_802B5520(? *, ? *); // extern
? func_802B59DC(? *, s16); // extern
? func_802B5F74(? *, ? *, s32); // extern
? func_802B71CC(? *, ? *, ? *); // extern
f32 func_802B80D0(? *, u16, ?, f32, f32); // extern
? load_giant_egg(? *, ?, ?, ?); // extern
extern ? D_06020A08;
extern ? D_06020A20;
extern ? D_06021220;
extern ? D_06021550;
extern ? D_06021A80;
extern ? D_06021C90;
extern ? D_06022D28;
extern ? D_06022DB8;
extern f32 D_802B9740;
extern f32 D_802B9744;
extern f32 D_802B9748;
extern f32 D_802B974C;
extern void *gDisplayListHead;

void func_8029C3CC(void *arg0, void *arg1) {
    ? sp128;
    ? sp11C;
    ? spDC;
    ? sp9C;
    f32 sp98;
    ? *sp2C;
    ? *temp_a1;
    f32 temp_f0;
    f32 temp_f2;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_16;
    void *temp_v0_17;
    void *temp_v0_18;
    void *temp_v0_19;
    void *temp_v0_20;
    void *temp_v0_21;
    void *temp_v0_22;
    void *temp_v0_23;
    void *temp_v0_24;
    void *temp_v0_25;
    void *temp_v0_26;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    temp_a1 = arg1 + 0x18;
    sp2C = temp_a1;
    temp_f0 = func_802B80D0(temp_a1, arg0->unk26, 0x44FD2000, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B9740);
    temp_f2 = temp_f0;
    if (!(temp_f0 < 0.0f)) {
        temp_v0 = gDisplayListHead;
        gDisplayListHead = temp_v0 + 8;
        temp_v0->unk4 = 0x20000;
        temp_v0->unk0 = 0xB6000000;
        sp98 = temp_f2;
        func_802B5F74(&sp128, temp_a1, arg1 + 0x10);
        if (func_802B4FF8(&sp128, 0) != 0) {
            if (temp_f2 < D_802B9744) {
                temp_v0_2 = gDisplayListHead;
                gDisplayListHead = temp_v0_2 + 8;
                temp_v0_2->unk4 = &D_06020A20;
                temp_v0_2->unk0 = 0x6000000;
                temp_v0_3 = gDisplayListHead;
                gDisplayListHead = temp_v0_3 + 8;
                temp_v0_3->unk4 = &D_06020A08;
                temp_v0_3->unk0 = 0x6000000;
            } else if (temp_f2 < D_802B9748) {
                temp_v0_4 = gDisplayListHead;
                gDisplayListHead = temp_v0_4 + 8;
                temp_v0_4->unk4 = &D_06021550;
                temp_v0_4->unk0 = 0x6000000;
                temp_v0_5 = gDisplayListHead;
                gDisplayListHead = temp_v0_5 + 8;
                temp_v0_5->unk4 = &D_06021220;
                temp_v0_5->unk0 = 0x6000000;
            } else {
                temp_v0_6 = gDisplayListHead;
                gDisplayListHead = temp_v0_6 + 8;
                temp_v0_6->unk4 = &D_06021C90;
                temp_v0_6->unk0 = 0x6000000;
                temp_v0_7 = gDisplayListHead;
                gDisplayListHead = temp_v0_7 + 8;
                temp_v0_7->unk4 = &D_06021A80;
                temp_v0_7->unk0 = 0x6000000;
            }
            if (!(D_802B974C < temp_f2)) {
                temp_v0_8 = gDisplayListHead;
                gDisplayListHead = temp_v0_8 + 8;
                temp_v0_8->unk4 = 0x2000;
                temp_v0_8->unk0 = 0xB6000000;
                temp_v0_9 = gDisplayListHead;
                gDisplayListHead = temp_v0_9 + 8;
                temp_v0_9->unk4 = &D_06022D28;
                temp_v0_9->unk0 = 0x6000000;
                func_802B59DC(&sp128, arg1->unk6);
                load_giant_egg(&sp11C, 0x41880000, 0x40C00000, 0x41E00000);
                func_802B5520(&spDC, &sp11C);
                func_802B71CC(&sp9C, &sp128, &spDC);
                if (func_802B4FF8(&sp9C, 3) != 0) {
                    temp_v0_10 = gDisplayListHead;
                    gDisplayListHead = temp_v0_10 + 8;
                    temp_v0_10->unk4 = &D_06022DB8;
                    temp_v0_10->unk0 = 0x6000000;
                    temp_v0_11 = gDisplayListHead;
                    gDisplayListHead = temp_v0_11 + 8;
                    temp_v0_11->unk4 = 0;
                    temp_v0_11->unk0 = 0xBD000000;
                    sp2C = &D_06022DB8;
                    func_802B59DC(&sp128, arg1->unk6);
                    load_giant_egg(&sp11C, 0xC1880000, 0x40C00000, 0x41E00000);
                    func_802B5520(&spDC, &sp11C);
                    func_802B71CC(&sp9C, &sp128, &spDC);
                    if (func_802B4FF8(&sp9C, 3) != 0) {
                        temp_v0_12 = gDisplayListHead;
                        gDisplayListHead = temp_v0_12 + 8;
                        temp_v0_12->unk0 = 0x6000000;
                        temp_v0_12->unk4 = sp2C;
                        temp_v0_13 = gDisplayListHead;
                        gDisplayListHead = temp_v0_13 + 8;
                        temp_v0_13->unk4 = 0;
                        temp_v0_13->unk0 = 0xBD000000;
                        func_802B59DC(&sp128, arg1->unk6 + 0x222);
                        load_giant_egg(&sp11C, 0x41880000, 0x40C00000, 0x41400000);
                        func_802B5520(&spDC, &sp11C);
                        func_802B71CC(&sp9C, &sp128, &spDC);
                        if (func_802B4FF8(&sp9C, 3) != 0) {
                            temp_v0_14 = gDisplayListHead;
                            gDisplayListHead = temp_v0_14 + 8;
                            temp_v0_14->unk0 = 0x6000000;
                            temp_v0_14->unk4 = sp2C;
                            temp_v0_15 = gDisplayListHead;
                            gDisplayListHead = temp_v0_15 + 8;
                            temp_v0_15->unk4 = 0;
                            temp_v0_15->unk0 = 0xBD000000;
                            func_802B59DC(&sp128, arg1->unk6 + 0x222);
                            load_giant_egg(&sp11C, 0xC1880000, 0x40C00000, 0x41400000);
                            func_802B5520(&spDC, &sp11C);
                            func_802B71CC(&sp9C, &sp128, &spDC);
                            if (func_802B4FF8(&sp9C, 3) != 0) {
                                temp_v0_16 = gDisplayListHead;
                                gDisplayListHead = temp_v0_16 + 8;
                                temp_v0_16->unk0 = 0x6000000;
                                temp_v0_16->unk4 = sp2C;
                                temp_v0_17 = gDisplayListHead;
                                gDisplayListHead = temp_v0_17 + 8;
                                temp_v0_17->unk4 = 0;
                                temp_v0_17->unk0 = 0xBD000000;
                                func_802B59DC(&sp128, arg1->unk6 + 0x5B0);
                                load_giant_egg(&sp11C, 0x41880000, 0x40C00000, 0xC1000000);
                                func_802B5520(&spDC, &sp11C);
                                func_802B71CC(&sp9C, &sp128, &spDC);
                                if (func_802B4FF8(&sp9C, 3) != 0) {
                                    temp_v0_18 = gDisplayListHead;
                                    gDisplayListHead = temp_v0_18 + 8;
                                    temp_v0_18->unk0 = 0x6000000;
                                    temp_v0_18->unk4 = sp2C;
                                    temp_v0_19 = gDisplayListHead;
                                    gDisplayListHead = temp_v0_19 + 8;
                                    temp_v0_19->unk4 = 0;
                                    temp_v0_19->unk0 = 0xBD000000;
                                    func_802B59DC(&sp128, arg1->unk6 + 0x5B0);
                                    load_giant_egg(&sp11C, 0xC1880000, 0x40C00000, 0xC1000000);
                                    func_802B5520(&spDC, &sp11C);
                                    func_802B71CC(&sp9C, &sp128, &spDC);
                                    if (func_802B4FF8(&sp9C, 3) != 0) {
                                        temp_v0_20 = gDisplayListHead;
                                        gDisplayListHead = temp_v0_20 + 8;
                                        temp_v0_20->unk0 = 0x6000000;
                                        temp_v0_20->unk4 = sp2C;
                                        temp_v0_21 = gDisplayListHead;
                                        gDisplayListHead = temp_v0_21 + 8;
                                        temp_v0_21->unk4 = 0;
                                        temp_v0_21->unk0 = 0xBD000000;
                                        func_802B59DC(&sp128, arg1->unk6 + 0x16C);
                                        load_giant_egg(&sp11C, 0x41880000, 0x40C00000, 0xC1C00000);
                                        func_802B5520(&spDC, &sp11C);
                                        func_802B71CC(&sp9C, &sp128, &spDC);
                                        if (func_802B4FF8(&sp9C, 3) != 0) {
                                            temp_v0_22 = gDisplayListHead;
                                            gDisplayListHead = temp_v0_22 + 8;
                                            temp_v0_22->unk0 = 0x6000000;
                                            temp_v0_22->unk4 = sp2C;
                                            temp_v0_23 = gDisplayListHead;
                                            gDisplayListHead = temp_v0_23 + 8;
                                            temp_v0_23->unk4 = 0;
                                            temp_v0_23->unk0 = 0xBD000000;
                                            func_802B59DC(&sp128, arg1->unk6 + 0x16C);
                                            load_giant_egg(&sp11C, 0xC1880000, 0x40C00000, 0xC1C00000);
                                            func_802B5520(&spDC, &sp11C);
                                            func_802B71CC(&sp9C, &sp128, &spDC);
                                            if (func_802B4FF8(&sp9C, 3) != 0) {
                                                temp_v0_24 = gDisplayListHead;
                                                gDisplayListHead = temp_v0_24 + 8;
                                                temp_v0_24->unk0 = 0x6000000;
                                                temp_v0_24->unk4 = sp2C;
                                                temp_v0_25 = gDisplayListHead;
                                                gDisplayListHead = temp_v0_25 + 8;
                                                temp_v0_25->unk4 = 0;
                                                temp_v0_25->unk0 = 0xBD000000;
                                                temp_v0_26 = gDisplayListHead;
                                                gDisplayListHead = temp_v0_26 + 8;
                                                temp_v0_26->unk4 = 0x2000;
                                                temp_v0_26->unk0 = 0xB7000000;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029C3CC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
f32 func_802ABE30(f32, f32, ?32, u16); // extern
s32 func_802B4FF8(? *, ?); // extern
? func_802B5F74(? *, f32 *, s16 *); // extern
f32 func_802B80D0(f32 *, u16, ?, f32, f32); // extern
extern ? D_06006F88;
extern ? D_06006FE0;
extern f32 D_802B9750;
extern f32 D_802B9754;
extern void *gDisplayListHead;

void func_8029CA90(void *arg0, void *arg1) {
    s16 sp9C;
    s16 sp9A;
    s16 sp98;
    ?32 sp94;
    f32 sp90;
    f32 sp8C;
    ? sp4C;
    f32 *sp2C;
    f32 *temp_a1;
    f32 temp_f0;
    f32 temp_f0_2;
    void *temp_v1;
    void *temp_v1_2;

    temp_a1 = arg1 + 0x18;
    if (arg1->unk4 == 0) {
        sp2C = temp_a1;
        temp_f0 = func_802B80D0(temp_a1, arg0->unk26, 0x43C80000, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B9750);
        if (!(temp_f0 < 0.0f)) {
            if ((temp_f0 < D_802B9754) && (arg1->unk34 == 1)) {
                sp8C = arg1->unk18;
                sp94 = arg1->unk20;
                temp_f0_2 = func_802ABE30(sp8C, arg1->unk1C, sp94, arg1->unk3A);
                sp98 = 0;
                sp9A = 0;
                sp9C = 0;
                sp90 = temp_f0_2 + 2.0f;
                func_802B5F74(&sp4C, &sp8C, &sp98);
                if (func_802B4FF8(&sp4C, 0) != 0) {
                    temp_v1 = gDisplayListHead;
                    gDisplayListHead = temp_v1 + 8;
                    temp_v1->unk0 = 0x6000000;
                    temp_v1->unk4 = &D_06006F88;
                    goto block_6;
                }
            } else {
block_6:
                func_802B5F74(&sp4C, sp2C, arg1 + 0x10);
                if (func_802B4FF8(&sp4C, 0) != 0) {
                    temp_v1_2 = gDisplayListHead;
                    gDisplayListHead = temp_v1_2 + 8;
                    temp_v1_2->unk4 = &D_06006FE0;
                    temp_v1_2->unk0 = 0x6000000;
                }
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029CA90.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_8029EC88(f32 *, ? *, ? *, ?); // extern
? func_802B52BC(? *, ?, ?, ?); // extern
? load_giant_egg(? *, ?, ?, ?); // extern
extern ? D_8015F9B8;
extern f32 gCourseDirection;
extern ? gSegmentTable;

void place_piranha_plants(u32 arg0) {
    f32 sp68;
    f32 sp64;
    f32 sp60;
    ? sp54;
    ? sp4C;
    f32 *temp_a0;
    s16 *temp_s0;
    s16 *temp_s0_2;
    s16 temp_s1;
    s16 temp_s1_2;
    void *temp_v1;
    s16 phi_s1;
    s16 *phi_s0;

    temp_s0 = *(&gSegmentTable + ((arg0 >> 0x18) * 4)) + (arg0 & 0xFFFFFF) + 0x80000000;
    load_giant_egg(&sp54, 0, 0, 0);
    func_802B52BC(&sp4C, 0, 0, 0);
    temp_s1 = *temp_s0;
    phi_s1 = temp_s1;
    if (temp_s1 != -0x8000) {
        phi_s0 = temp_s0;
        do {
            temp_a0 = &sp60;
            sp60 = phi_s1 * gCourseDirection;
            sp64 = phi_s0->unk2;
            sp68 = phi_s0->unk4;
            temp_s0_2 = phi_s0 + 8;
            temp_v1 = &D_8015F9B8 + (func_8029EC88(temp_a0, &sp4C, &sp54, 0xA) * 0x70);
            temp_v1->unk4 = 0;
            temp_v1->unk6 = 0;
            temp_v1->unk8 = 0;
            temp_v1->unkA = 0;
            temp_v1->unk24 = 0;
            temp_v1->unk26 = 0;
            temp_v1->unk28 = 0;
            temp_v1->unk2A = 0;
            temp_s1_2 = *temp_s0_2;
            phi_s1 = temp_s1_2;
            phi_s0 = temp_s0_2;
        } while (temp_s1_2 != -0x8000);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/place_piranha_plants.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_802976EC(void *, void *); // extern
s32 func_8029EC88(f32 *, ? *, ? *, ?); // extern
? func_802ADDC8(void *, ?, s32, s32, f32); // extern
? func_802B52BC(? *, ?, ?, ?); // extern
? load_giant_egg(? *, ?, ?, ?); // extern
extern ? D_8015F9B8;
extern f32 gCourseDirection;
extern ? gSegmentTable;

void place_palm_trees(u32 arg0) {
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    ? sp60;
    ? sp58;
    f32 *temp_a0;
    f32 temp_f8;
    s16 *temp_s0;
    s16 temp_v0;
    s16 temp_v0_2;
    s32 temp_a2;
    s32 temp_a3;
    void *temp_s1;
    s16 phi_v0;
    s16 *phi_s0;

    temp_s0 = *(&gSegmentTable + ((arg0 >> 0x18) * 4)) + (arg0 & 0xFFFFFF) + 0x80000000;
    load_giant_egg(&sp60, 0, 0, 0);
    func_802B52BC(&sp58, 0, 0, 0);
    temp_v0 = *temp_s0;
    phi_v0 = temp_v0;
    if (temp_v0 != -0x8000) {
        phi_s0 = temp_s0;
        do {
            temp_a0 = &sp6C;
            sp6C = phi_v0 * gCourseDirection;
            sp70 = phi_s0->unk2;
            sp74 = phi_s0->unk4;
            temp_s1 = &D_8015F9B8 + (func_8029EC88(temp_a0, &sp58, &sp60, 0x19) * 0x70);
            temp_f8 = temp_s1->unk20;
            temp_a2 = temp_s1->unk18;
            temp_a3 = temp_s1->unk1C;
            temp_s1->unk4 = phi_s0->unk6;
            func_802ADDC8(temp_s1 + 0x30, 0x40A00000, temp_a2, temp_a3, temp_f8);
            func_802976EC(temp_s1 + 0x30, temp_s1 + 0x10);
            temp_v0_2 = phi_s0->unk8;
            phi_v0 = temp_v0_2;
            phi_s0 += 8;
        } while (temp_v0_2 != -0x8000);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/place_palm_trees.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_802B52BC(void *, ?, ?, ?); // extern
? load_giant_egg(s32, ?, ?, ?); // extern
extern ? D_802B8848;
extern f32 gCourseDirection;
extern ? gSegmentTable;

void func_8029CF0C(u32 arg0, void *arg1) {
    ? sp24;
    s16 temp_v1;
    void *temp_v0;

    sp24.unk0 = D_802B8848.unk0;
    sp24.unk4 = D_802B8848.unk4;
    temp_v1 = arg1->unk6;
    temp_v0 = *(&gSegmentTable + ((arg0 >> 0x18) * 4)) + (arg0 & 0xFFFFFF) + 0x80000000 + (temp_v1 * 8);
    arg1->unk4 = *(&sp24 + (temp_v1 * 2));
    arg1->unk18 = temp_v0->unk0 * gCourseDirection;
    arg1->unk1C = temp_v0->unk2 + 10.0f;
    arg1->unk20 = temp_v0->unk4;
    load_giant_egg(arg1 + 0x24, 0, 0, 0);
    func_802B52BC(arg1 + 0x10, 0, 0, 0);
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029CF0C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_8029EC88(f32 *, ? *, ? *, ?); // extern
? func_802AAAAC(void *); // extern
? func_802B52BC(? *, ?, ?, ?); // extern
? load_giant_egg(? *, ?, ?, ?); // extern
extern ? D_8015F9B8;
extern f32 gCourseDirection;
extern ? gSegmentTable;

void place_falling_rocks(u32 arg0) {
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    ? sp58;
    ? sp50;
    f32 *temp_s4;
    s16 *temp_s0;
    s16 temp_v0;
    s16 temp_v0_2;
    void *temp_a0;
    void *temp_v1;
    s16 phi_v0;
    s16 *phi_s0;

    temp_s0 = *(&gSegmentTable + ((arg0 >> 0x18) * 4)) + (arg0 & 0xFFFFFF) + 0x80000000;
    temp_v0 = *temp_s0;
    phi_v0 = temp_v0;
    phi_s0 = temp_s0;
    if (temp_v0 != -0x8000) {
        temp_s4 = &sp64;
        do {
            sp64 = phi_v0 * gCourseDirection;
            sp68 = phi_s0->unk2 + 10.0f;
            sp6C = phi_s0->unk4;
            load_giant_egg(&sp58, 0, 0, 0);
            func_802B52BC(&sp50, 0, 0, 0);
            temp_v1 = &D_8015F9B8 + (func_8029EC88(temp_s4, &sp50, &sp58, 5) * 0x70);
            temp_a0 = temp_v1 + 0x30;
            temp_v1->unk6 = phi_s0->unk6;
            func_802AAAAC(temp_a0);
            temp_v0_2 = phi_s0->unk8;
            phi_v0 = temp_v0_2;
            phi_s0 += 8;
        } while (temp_v0_2 != -0x8000);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/place_falling_rocks.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800C98B8(void *, void *, ?); // extern
? func_8029CF0C(? *, void *); // extern
? func_802AC114(f32, f32 *, f32, void *, ?); // extern
? func_802ADDC8(f32, f32, void *, ?, f32, f32, f32); // extern
extern ? D_06007230;
extern f32 D_802B9758;
extern f64 D_802B9760;
extern f32 D_802B9768;
extern f32 D_802B976C;
extern f32 D_802B9770;
extern f32 D_802B9774;
extern f32 D_802B9778;

void update_obj_falling_rocks(void *arg0) {
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp3C;
    f32 sp34;
    void *sp30;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f10;
    f32 temp_f14;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f4;
    s16 temp_v0;
    void *temp_s1;
    void *temp_s1_2;
    void *temp_s1_3;
    f32 phi_f12;

    temp_v0 = arg0->unk4;
    if (temp_v0 != 0) {
        arg0->unk4 = temp_v0 - 1;
        return;
    }
    if (arg0->unk1C < D_8015F8E4) {
        func_8029CF0C(&D_06007230, arg0);
    }
    temp_f14 = D_802B9758;
    arg0->unk10 = arg0->unk10 + ((arg0->unk2C * temp_f14) / 20.0f);
    arg0->unk14 = arg0->unk14 + ((arg0->unk24 * temp_f14) / 20.0f);
    arg0->unk28 = arg0->unk28 - D_802B9760;
    if (arg0->unk28 < -2.0f) {
        arg0->unk28 = -2.0f;
    }
    arg0->unk18 = arg0->unk18 + arg0->unk24;
    arg0->unk1C = arg0->unk1C + arg0->unk28;
    arg0->unk20 = arg0->unk20 + arg0->unk2C;
    sp3C = arg0->unk28;
    func_802ADDC8(arg0->unk24, temp_f14, arg0 + 0x30, 0x41200000, arg0->unk18, arg0->unk1C, arg0->unk20);
    temp_f2 = arg0->unk44;
    phi_f12 = 0.0f;
    if (temp_f2 < 0.0f) {
        temp_s1 = arg0 + 0x24;
        sp44 = -arg0->unk60;
        sp48 = -arg0->unk64;
        sp4C = -arg0->unk68;
        temp_f0 = arg0->unk44;
        arg0->unk18 = arg0->unk18 + (sp44 * temp_f0);
        arg0->unk1C = arg0->unk1C + (sp48 * temp_f0);
        arg0->unk20 = arg0->unk20 + (sp4C * temp_f0);
        func_802AC114(0.0f, &sp44, temp_f2, temp_s1, 0x40000000);
        arg0->unk28 = D_802B9768 * sp3C;
        func_800C98B8(arg0 + 0x18, temp_s1, 0x1900800F);
    }
    temp_f2_2 = arg0->unk3C;
    phi_f12 = 0.0f;
    if (temp_f2_2 < 0.0f) {
        sp48 = -arg0->unk4C;
        if (sp48 == 0.0f) {
            arg0->unk28 = arg0->unk28 * D_802B976C;
            return;
        }
        temp_f4 = -arg0->unk48;
        temp_s1_2 = arg0 + 0x24;
        sp44 = temp_f4;
        sp4C = -arg0->unk50;
        temp_f0_2 = arg0->unk3C;
        arg0->unk18 = arg0->unk18 + (temp_f4 * temp_f0_2);
        arg0->unk1C = arg0->unk1C + (sp48 * temp_f0_2);
        arg0->unk20 = arg0->unk20 + (sp4C * temp_f0_2);
        sp30 = arg0 + 0x18;
        sp34 = D_802B9770 * sp3C;
        func_802AC114(0.0f, &sp44, temp_f2_2, temp_s1_2, 0x40000000);
        arg0->unk28 = sp34;
        func_800C98B8(sp30, temp_s1_2, 0x1900800F);
        goto block_12;
    }
block_12:
    temp_f2_3 = arg0->unk40;
    if (temp_f2_3 < phi_f12) {
        sp48 = -arg0->unk58;
        if (phi_f12 == sp48) {
            arg0->unk28 = arg0->unk28 * D_802B9774;
            return;
        }
        temp_s1_3 = arg0 + 0x24;
        temp_f10 = -arg0->unk54;
        sp44 = temp_f10;
        sp4C = -arg0->unk5C;
        temp_f0_3 = arg0->unk40;
        arg0->unk18 = arg0->unk18 + (temp_f10 * temp_f0_3);
        arg0->unk1C = arg0->unk1C + (sp48 * temp_f0_3);
        arg0->unk20 = arg0->unk20 + (sp4C * temp_f0_3);
        sp30 = arg0 + 0x18;
        sp3C = arg0->unk28;
        func_802AC114(phi_f12, &sp44, temp_f2_3, temp_s1_3, 0x40000000);
        arg0->unk28 = D_802B9778 * sp3C;
        func_800C98B8(sp30, temp_s1_3, 0x1900800F);
        // Duplicate return node #16. Try simplifying control flow for better match
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/update_obj_falling_rocks.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
/*
Failed to decompile function place_segment_06:

Unable to determine jump table for jr instruction at place_segment_06.s line 73.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
*/
#else
GLOBAL_ASM("asm/non_matchings/code_actors/place_segment_06.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s16 func_8029EC88(f32 *, s16 *, ? *, ?); // extern
? load_giant_egg(? *, ?, ?, ?); // extern
s16 random_u16(); // extern
extern s16 D_800DC648;
extern ? D_8015F9B8;
extern f32 gCourseDirection;
extern ? gSegmentTable;

void place_all_item_boxes(u32 arg0) {
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    ? sp60;
    s16 sp5C;
    s16 sp5A;
    s16 sp58;
    f32 *temp_s5;
    f32 temp_f0;
    f32 temp_f16;
    s16 *temp_s0;
    s16 *temp_s0_2;
    s16 *temp_s6;
    s16 temp_s1;
    s16 temp_v1;
    s16 temp_v1_2;
    void *temp_v0;
    s16 phi_v1;
    s16 *phi_s0;

    temp_s0 = *(&gSegmentTable + ((arg0 >> 0x18) * 4)) + (arg0 & 0xFFFFFF) + 0x80000000;
    phi_s0 = temp_s0;
    if ((gModeSelection != 1) && (D_800DC648 != 0)) {
        load_giant_egg(&sp60, 0, 0, 0);
        temp_v1 = *temp_s0;
        phi_v1 = temp_v1;
        if (temp_v1 != -0x8000) {
            temp_s6 = &sp58;
            temp_s5 = &sp6C;
            do {
                sp6C = phi_v1 * gCourseDirection;
                sp70 = phi_s0->unk2;
                sp74 = phi_s0->unk4;
                sp58 = random_u16();
                sp5A = random_u16();
                sp5C = random_u16();
                temp_s1 = func_8029EC88(temp_s5, temp_s6, &sp60, 0xC);
                temp_f0 = func_802AE1C0(sp6C, sp70 + 10.0f, sp74);
                temp_f16 = temp_f0 - 20.0f;
                temp_s0_2 = phi_s0 + 8;
                temp_v0 = &D_8015F9B8 + (temp_s1 * 0x70);
                temp_v0->unk8 = temp_f0;
                temp_v0->unk1C = temp_f16;
                temp_v0->unk24 = sp70;
                temp_v1_2 = *temp_s0_2;
                phi_v1 = temp_v1_2;
                phi_s0 = temp_s0_2;
            } while (temp_v1_2 != -0x8000);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/place_all_item_boxes.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_8029EC88(? *, ? *, ? *, ?); // extern
extern ? D_8015F9B8;
extern u16 gPlayers;

void func_8029D9F8(void) {
    ? sp64;
    ? sp58;
    ? sp50;
    s16 temp_s0;
    u16 temp_v0;
    u16 *phi_s1;
    s16 phi_s0;

    phi_s1 = &gPlayers;
    phi_s0 = 0;
    do {
        temp_v0 = *phi_s1;
        if (((temp_v0 & 0x4000) != 0) && ((temp_v0 & 0x100) == 0)) {
            (&D_8015F9B8 + (func_8029EC88(&sp64, &sp50, &sp58, 0x2D) * 0x70))->unk4 = phi_s0;
        }
        temp_s0 = phi_s0 + 1;
        phi_s1 += 0xDD8;
        phi_s0 = temp_s0;
    } while (temp_s0 != 4);
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029D9F8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern s16 D_80150110;
extern ? D_8015F9B8;
extern ? D_80162578;

void func_8029DAB8(void) {
    ? *temp_v1;
    ? *phi_v1;

    D_80150110 = 0;
    phi_v1 = &D_8015F9B8;
    do {
        temp_v1 = phi_v1 + 0x1C0;
        temp_v1->unk-14E = 0;
        temp_v1->unk-150 = 0;
        temp_v1->unk-14C = 0;
        temp_v1->unk-14A = 0;
        temp_v1->unk-148 = 0.0f;
        temp_v1->unk-144 = 0.0f;
        temp_v1->unk-DE = 0;
        temp_v1->unk-E0 = 0;
        temp_v1->unk-DC = 0;
        temp_v1->unk-DA = 0;
        temp_v1->unk-D8 = 0.0f;
        temp_v1->unk-D4 = 0.0f;
        temp_v1->unk-6E = 0;
        temp_v1->unk-70 = 0;
        temp_v1->unk-6C = 0;
        temp_v1->unk-6A = 0;
        temp_v1->unk-68 = 0.0f;
        temp_v1->unk-64 = 0.0f;
        temp_v1->unk-1BE = 0;
        temp_v1->unk-1C0 = 0;
        temp_v1->unk-1BC = 0;
        temp_v1->unk-1BA = 0;
        temp_v1->unk-1B8 = 0.0f;
        temp_v1->unk-1B4 = 0.0f;
        phi_v1 = temp_v1;
    } while (temp_v1 != &D_80162578);
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029DAB8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
/*
Failed to decompile function func_8029DB44:

Unable to determine jump table for jr instruction at func_8029DB44.s line 30.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
*/
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029DB44.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
/*
Failed to decompile function func_8029E158:

Unable to determine jump table for jr instruction at func_8029E158.s line 150.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
*/
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029E158.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800C99E0(void *, ?, void *); // extern

void func_8029E7DC(void *arg0) {
    s16 temp_v0;

    temp_v0 = arg0->unk2;
    if ((temp_v0 & 0x200) != 0) {
        func_800C99E0(arg0 + 0x18, 0x19019053, arg0);
        return;
    }
    if ((temp_v0 & 0x100) != 0) {
        func_800C99E0(arg0 + 0x18, 0x19018010, arg0);
        return;
    }
    if ((temp_v0 & 0x80) != 0) {
        func_800C99E0(arg0 + 0x18, 0x19008054, arg0);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029E7DC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8029E7DC(); // extern
extern u16 D_80150110;

void func_8029E854(void *arg0) {
    func_8029E7DC();
    arg0->unk2 = 0;
    arg0->unk0 = 0;
    D_80150110 = D_80150110 - 1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029E854.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
/*
Failed to decompile function func_8029E890:

Unable to determine jump table for jr instruction at func_8029E890.s line 186.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
*/
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029E890.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80296D10(? *, s32, s32, s32, s32); // extern
s16 func_8029E890(s16); // extern
extern u16 D_80150110;
extern ? D_8015F9B8;

s16 func_8029EC88(s32 arg0, s32 arg1, s32 arg2, s16 arg3) {
    s32 sp24;
    s32 temp_v1;
    u16 temp_t0;
    ? *phi_a0;
    s32 phi_v1;

    temp_t0 = D_80150110;
    if (temp_t0 >= 0x64) {
        return func_8029E890(arg3);
    }
    phi_a0 = &D_8015F9B8;
    phi_v1 = 0;
loop_3:
    if (phi_a0->unk2 == 0) {
        D_80150110 = temp_t0 + 1;
        sp24 = phi_v1;
        func_80296D10(phi_a0, arg0, arg1, arg2, arg3);
        return phi_v1;
    }
    temp_v1 = phi_v1 + 1;
    phi_a0 += 0x70;
    phi_v1 = temp_v1;
    if (temp_v1 == 0x64) {
        return -1;
    }
    goto loop_3;
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029EC88.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_8029EC88(s32, s32 *, s32 *, s32); // extern
void func_802B52BC(s32 *, s32, s32, s32); // extern
void load_giant_egg(s32 *, s32, s32, s32); // extern

void func_8029ED38(s32 *arg0, s32 arg1) {
    //? sp24;
    //? sp1C;

    load_giant_egg(&arg0, 0, 0, 0);
    func_802B52BC(&arg1, 0, 0, 0);
    func_8029EC88(arg0, &arg1, &arg0, arg1);
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029ED38.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern f32 D_802B988C;
extern f32 D_802B9890;
extern f32 D_802B9894;
extern f32 D_802B9898;

? func_8029EEB8(void *arg0, void *arg1, f32 arg2, f32 arg3, f32 arg4) {
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp28;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f10;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f22;
    f32 temp_f2;
    f32 temp_f2_2;
    s32 temp_v0;
    f32 phi_f2;

    temp_f0 = arg0->unk70;
    temp_f22 = temp_f0 + arg2;
    temp_f20 = arg1->unk0 - arg0->unk14;
    temp_f12 = temp_f0 + arg3;
    if (temp_f22 < temp_f20) {
        return 0;
    }
    temp_f2 = -temp_f22;
    if (temp_f20 < temp_f2) {
        return 0;
    }
    temp_f0_2 = arg1->unk4 - arg0->unk18;
    if (temp_f12 < temp_f0_2) {
        return 0;
    }
    if (temp_f0_2 < -temp_f12) {
        return 0;
    }
    temp_f14 = arg1->unk8 - arg0->unk1C;
    if (temp_f22 < temp_f14) {
        return 0;
    }
    if (temp_f14 < temp_f2) {
        return 0;
    }
    temp_f12_2 = (temp_f20 * temp_f20) + (temp_f0_2 * temp_f0_2) + (temp_f14 * temp_f14);
    if (temp_f12_2 < D_802B988C) {
        return 0;
    }
    if ((temp_f22 * temp_f22) < temp_f12_2) {
        return 0;
    }
    sp44 = temp_f14;
    temp_f0_3 = sqrtf(temp_f12_2);
    sp28 = temp_f0_3 - temp_f22;
    temp_v0 = arg0->unkBC;
    temp_f16 = arg0->unk34;
    temp_f18 = arg0->unk3C;
    if ((temp_v0 & 0x200) != 0) {
        goto block_25;
    }
    if (temp_f0_3 < D_802B9890) {
        temp_f10 = temp_f16 * temp_f16;
        arg0 = arg0;
        sp40 = temp_f16;
        sp3C = temp_f18;
        temp_f0_4 = sqrtf(temp_f10 + (temp_f18 * temp_f18));
        phi_f2 = temp_f0_4;
        if (temp_f0_4 < 0.5f) {
            phi_f2 = 0.5f;
        }
        arg0->unk34 = 0.0f;
        arg0->unk3C = 0.0f;
        arg0->unk14 = arg0->unk14 + ((temp_f16 / phi_f2) * temp_f22);
        arg0->unk1C = arg0->unk1C + ((temp_f18 / phi_f2) * temp_f22);
        goto block_25;
    }
    temp_f14_2 = temp_f14 / temp_f0_3;
    arg0->unkBC = temp_v0 | 0x8000;
    sp3C = temp_f18;
    sp40 = temp_f16;
    arg1 = arg1;
    arg0 = arg0;
    temp_f20_2 = temp_f20 / temp_f0_3;
    sp44 = temp_f14_2;
    temp_f0_5 = sqrtf((temp_f16 * temp_f16) + (temp_f18 * temp_f18));
    if (temp_f0_5 < 0.25f) {
        temp_f0_6 = D_802B9894;
        arg0->unk14 = arg1->unk0 - (temp_f20_2 * temp_f22 * temp_f0_6);
        arg0->unk34 = 0.0f;
        arg0->unk3C = 0.0f;
        arg0->unk1C = arg1->unk8 - (temp_f14_2 * temp_f22 * temp_f0_6);
        return 1;
    }
    temp_f2_2 = temp_f0_5 * (((temp_f20_2 * temp_f16) + (temp_f14_2 * temp_f18)) / temp_f0_5) * arg4 * D_802B9898;
    arg0->unk34 = arg0->unk34 - (temp_f20_2 * temp_f2_2);
    arg0->unk3C = arg0->unk3C - (temp_f14_2 * temp_f2_2);
    arg0->unk14 = arg0->unk14 + (temp_f20_2 * sp28 * 0.5f);
    arg0->unk1C = arg0->unk1C + (temp_f14_2 * sp28 * 0.5f);
block_25:
    return 1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029EEB8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800C9060(s32, ?); // extern
? func_800C90F4(s32, s32); // extern
? func_800C98B8(void *, void *, ?); // extern
s32 func_8029EEB8(s32, ?, ?, f32); // extern
extern f32 D_802B989C;

? func_8029F1F8(void *arg0, void *arg1) {
    u16 temp_v0;

    if (func_8029EEB8(arg1 + 0x18, 0x40E00000, 0x43480000, D_802B989C) == 1) {
        temp_v0 = arg0->unk0;
        if ((temp_v0 & 0x4000) != 0) {
            if ((arg0->unkBC & 0x200) != 0) {
                arg1->unk2 = arg1->unk2 | 0x400;
                func_800C98B8(arg0 + 0x14, arg0 + 0x34, 0x19018010);
                func_800C90F4(((arg0 - D_800DC4DC) / 0xDD8) & 0xFF, (arg0->unk254 * 0x10) + 0x2900800D);
                return 1;
            }
            if ((temp_v0 & 0x100) == 0) {
                func_800C9060(((arg0 - D_800DC4DC) / 0xDD8) & 0xFF, 0x1900701A);
            }
            goto block_6;
        }
block_6:
        return 1;
    }
    return 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029F1F8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800C9060(s32, ?); // extern
? func_800C90F4(s32, s32); // extern
? func_800C98B8(void *, void *, ?); // extern
s32 func_8029EEB8(void *, f32, f32, f32); // extern

? func_8029F2FC(void *arg0, void *arg1) {
    f32 temp_f0;
    u16 temp_v0;

    temp_f0 = arg1->unkC;
    if (func_8029EEB8(arg1 + 0x18, temp_f0, temp_f0, 2.5f) == 1) {
        temp_v0 = arg0->unk0;
        if ((temp_v0 & 0x4000) != 0) {
            if ((arg0->unkBC & 0x200) != 0) {
                arg1->unk2 = arg1->unk2 | 0x400;
                func_800C98B8(arg0 + 0x14, arg0 + 0x34, 0x1901A24A);
                func_800C90F4(((arg0 - D_800DC4DC) / 0xDD8) & 0xFF, (arg0->unk254 * 0x10) + 0x2900800D);
                return 1;
            }
            if ((temp_v0 & 0x100) == 0) {
                func_800C9060(((arg0 - D_800DC4DC) / 0xDD8) & 0xFF, 0x1900A052);
            }
            goto block_6;
        }
block_6:
        return 1;
    }
    return 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029F2FC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8008DABC(void *, s8); // extern
? func_800C90F4(s32, s32); // extern
? func_800C98B8(void *, void *, ?, void *); // extern
? func_802977B0(void *); // extern
extern s32 D_80162DF8;

? func_8029F408(void *arg0, void *arg1) {
    f32 sp1C;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f2;
    f32 temp_f2_2;
    void *temp_a0;
    void *temp_a3;

    temp_f2 = arg1->unk18 - arg0->unk14;
    if ((temp_f2 < 0.0f) && (temp_f2 < -60.0f)) {
        return 0;
    }
    if (temp_f2 > 60.0f) {
        return 0;
    }
    temp_f0 = arg1->unk20 - arg0->unk1C;
    if ((temp_f0 < 0.0f) && (temp_f0 < -60.0f)) {
        return 0;
    }
    if (temp_f0 > 60.0f) {
        return 0;
    }
    arg0 = arg0;
    temp_f0_2 = sqrtf((temp_f2 * temp_f2) + (temp_f0 * temp_f0));
    temp_f2_2 = temp_f0_2;
    temp_a0 = arg0;
    if (temp_f0_2 > 60.0f) {
        return 0;
    }
    arg0 = arg0;
    sp1C = temp_f2_2;
    func_802977B0(temp_a0);
    temp_a3 = arg0;
    if ((temp_a3->unk18 - arg1->unk1C) < 0.0f) {
        return 0;
    }
    if ((temp_a3->unk70 + arg1->unkC) < temp_f2_2) {
        return 0;
    }
    if ((temp_a3->unk0 & 0x4000) != 0) {
        if ((temp_a3->unkBC & 0x200) != 0) {
            arg1->unk2 = arg1->unk2 | 0x400;
            arg1->unk28 = 8.0f;
            arg0 = temp_a3;
            func_800C98B8(temp_a3 + 0x14, temp_a3 + 0x34, 0x19018010, temp_a3);
            func_800C90F4(((arg0 - D_800DC4DC) / 0xDD8) & 0xFF, (arg0->unk254 * 0x10) + 0x2900800D);
        } else {
            arg0 = temp_a3;
            func_8008DABC(temp_a3, (temp_a3 - D_800DC4DC) / 0xDD8);
            if ((gModeSelection == 1) && ((arg0->unk0 & 0x1000) == 0)) {
                D_80162DF8 = 1;
            }
        }
    } else {
        func_8008DABC(temp_a3, (temp_a3 - D_800DC4DC) / 0xDD8);
    }
    return 1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029F408.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80077AB0(f32 *, ?); // extern
? func_800C9060(s32, ?); // extern
? func_800C90F4(s32, s32); // extern
? func_800C98B8(void *, void *, ?, void *); // extern
? func_802977B0(void *); // extern
extern f32 D_802B98A0;
extern f32 D_802B98A4;
extern f32 D_802B98A8;

? func_8029F69C(void *arg0, void *arg1) {
    f32 sp54;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f10;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f18_2;
    f32 temp_f2;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f6;
    f32 temp_f6_2;
    s16 temp_v0_3;
    s32 temp_cond;
    s32 temp_v0_2;
    u16 temp_v0;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a1;
    void *temp_a3;
    void *phi_a3;
    void *phi_a3_2;

    temp_f6 = arg0->unk14;
    temp_f4 = arg1->unk18;
    temp_f18 = temp_f4 - temp_f6;
    temp_f16 = arg1->unk8;
    if ((temp_f18 < 0.0f) && (temp_f18 < -temp_f16)) {
        return 0;
    }
    if (temp_f16 < temp_f18) {
        return 0;
    }
    temp_f10 = arg1->unk20;
    temp_f4_2 = arg0->unk1C;
    temp_f14 = temp_f10 - temp_f4_2;
    if ((temp_f14 < 0.0f) && (temp_f14 < -temp_f16)) {
        return 0;
    }
    if (temp_f16 < temp_f14) {
        return 0;
    }
    temp_f0 = arg0->unk18 - arg1->unk1C;
    if (temp_f0 < 0.0f) {
        return 0;
    }
    if (arg1->unk6 < temp_f0) {
        return 0;
    }
    arg0 = arg0;
    sp4C = temp_f14;
    sp40 = temp_f16;
    sp54 = temp_f18;
    temp_f0_2 = sqrtf((temp_f18 * temp_f18) + (temp_f14 * temp_f14));
    temp_cond = temp_f16 < temp_f0_2;
    sp3C = temp_f0_2;
    temp_a0 = arg0;
    if (temp_cond) {
        return 0;
    }
    arg0 = arg0;
    sp4C = temp_f14;
    sp54 = temp_f18;
    func_802977B0(temp_a0);
    temp_a3 = arg0;
    temp_f6_2 = arg1->unkC;
    temp_f4_3 = temp_a3->unk70;
    temp_f16_2 = temp_f4_3 + temp_f6_2;
    phi_a3 = temp_a3;
    if (temp_f16_2 < sp3C) {
        return 0;
    }
    sp48 = temp_a3->unk34;
    sp44 = temp_a3->unk3C;
    temp_v0 = temp_a3->unk0;
    if ((temp_v0 & 0x4000) != 0) {
        temp_a0_2 = temp_a3 + 0x14;
        temp_a1 = temp_a3 + 0x34;
        if ((temp_a3->unkBC & 0x200) != 0) {
            arg1->unk2 = arg1->unk2 | 0x400;
            arg0 = temp_a3;
            func_800C98B8(temp_a0_2, temp_a1, 0x19018010, temp_a3);
            func_800C90F4(((arg0 - D_800DC4DC) / 0xDD8) & 0xFF, (arg0->unk254 * 0x10) + 0x2900800D);
            goto block_36;
        }
        if ((temp_v0 & 0x100) == 0) {
            arg0 = temp_a3;
            sp4C = temp_f14;
            sp40 = temp_f16_2;
            sp54 = temp_f18;
            func_800C9060(((temp_a3 - D_800DC4DC) / 0xDD8) & 0xFF, 0x19007018);
            phi_a3 = arg0;
        }
        goto block_23;
    }
block_23:
    temp_v0_2 = phi_a3->unkBC;
    phi_a3_2 = phi_a3;
    if ((temp_v0_2 & 0x200) == 0) {
        phi_a3->unkBC = temp_v0_2 | 0x8000;
    }
    temp_v0_3 = gCurrentCourseId;
    sp20 = arg1->unk18;
    sp24 = arg1->unk1C;
    sp28 = arg1->unk20;
    if (((temp_v0_3 == 0) || (temp_v0_3 == 4) || (temp_v0_3 == 7) || (temp_v0_3 == 8)) && (phi_a3->unk94 > 1.0f)) {
        arg0 = phi_a3;
        sp4C = temp_f10 - temp_f4_2;
        sp40 = temp_f4_3 + temp_f6_2;
        sp54 = temp_f4 - temp_f6;
        func_80077AB0(&sp20, 0);
        phi_a3_2 = arg0;
    }
    if (sp3C < D_802B98A0) {
        arg0 = phi_a3_2;
        sp4C = temp_f10 - temp_f4_2;
        sp40 = temp_f4_3 + temp_f6_2;
        sp54 = temp_f4 - temp_f6;
        sqrtf((sp48 * sp48) + (sp44 * sp44));
        temp_f0_3 = D_802B98A4;
        arg0->unk34 = 0.0f;
        arg0->unk3C = 0.0f;
        arg0->unk14 = sp20 - ((temp_f4 - temp_f6) * (temp_f4_3 + temp_f6_2) * temp_f0_3);
        arg0->unk1C = sp28 - ((temp_f10 - temp_f4_2) * (temp_f4_3 + temp_f6_2) * temp_f0_3);
        goto block_36;
    }
    arg0 = phi_a3_2;
    sp4C = temp_f10 - temp_f4_2;
    sp40 = temp_f4_3 + temp_f6_2;
    sp54 = temp_f4 - temp_f6;
    temp_f0_4 = sqrtf((sp48 * sp48) + (sp44 * sp44));
    temp_f14_2 = (temp_f10 - temp_f4_2) / sp3C;
    temp_f18_2 = (temp_f4 - temp_f6) / sp3C;
    if (temp_f0_4 < 0.25f) {
        temp_f0_5 = D_802B98A8;
        arg0->unk14 = sp20 - (temp_f18_2 * (temp_f4_3 + temp_f6_2) * temp_f0_5);
        arg0->unk34 = 0.0f;
        arg0->unk3C = 0.0f;
        arg0->unk1C = sp28 - (temp_f14_2 * (temp_f4_3 + temp_f6_2) * temp_f0_5);
        return 1;
    }
    temp_f12 = temp_f0_4 * (((temp_f18_2 * sp48) + (temp_f14_2 * sp44)) / temp_f0_4) * 1.5f;
    arg0->unk34 = arg0->unk34 - (temp_f18_2 * temp_f12);
    arg0->unk3C = arg0->unk3C - (temp_f14_2 * temp_f12);
    temp_f2 = sp3C - (temp_f4_3 + temp_f6_2);
    arg0->unk14 = arg0->unk14 + (temp_f18_2 * temp_f2 * 0.5f);
    arg0->unk1C = arg0->unk1C + (temp_f14_2 * temp_f2 * 0.5f);
block_36:
    return 1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029F69C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern f32 D_802B98AC;

? func_8029FB80(void *arg0, void *arg1) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f2;

    temp_f0 = arg0->unk70 + arg1->unkC;
    temp_f2 = arg1->unk18 - arg0->unk14;
    if (temp_f0 < temp_f2) {
        return 0;
    }
    temp_f12 = -temp_f0;
    if (temp_f2 < temp_f12) {
        return 0;
    }
    temp_f14 = arg1->unk1C - arg0->unk18;
    if (temp_f0 < temp_f14) {
        return 0;
    }
    if (temp_f14 < temp_f12) {
        return 0;
    }
    temp_f16 = arg1->unk20 - arg0->unk1C;
    if (temp_f0 < temp_f16) {
        return 0;
    }
    if (temp_f16 < temp_f12) {
        return 0;
    }
    temp_f12_2 = (temp_f2 * temp_f2) + (temp_f14 * temp_f14) + (temp_f16 * temp_f16);
    if (temp_f12_2 < D_802B98AC) {
        return 0;
    }
    if ((temp_f0 * temp_f0) < temp_f12_2) {
        return 0;
    }
    return 1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029FB80.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern f32 D_802B98B0;

? func_8029FCA4(void *arg0, void *arg1) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f2;

    temp_f0 = arg0->unkC + arg1->unkC;
    temp_f2 = arg0->unk18 - arg1->unk18;
    if (temp_f0 < temp_f2) {
        return 0;
    }
    temp_f12 = -temp_f0;
    if (temp_f2 < temp_f12) {
        return 0;
    }
    temp_f14 = arg0->unk1C - arg1->unk1C;
    if (temp_f0 < temp_f14) {
        return 0;
    }
    if (temp_f14 < temp_f12) {
        return 0;
    }
    temp_f16 = arg0->unk20 - arg1->unk20;
    if (temp_f0 < temp_f16) {
        return 0;
    }
    if (temp_f16 < temp_f12) {
        return 0;
    }
    temp_f12_2 = (temp_f2 * temp_f2) + (temp_f14 * temp_f14) + (temp_f16 * temp_f16);
    if (temp_f12_2 < D_802B98B0) {
        return 0;
    }
    if ((temp_f0 * temp_f0) < temp_f12_2) {
        return 0;
    }
    return 1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029FCA4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
/*
Failed to decompile function func_8029FDC8:

Unable to determine jump table for jr instruction at func_8029FDC8.s line 29.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
*/
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_8029FDC8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800C98B8(void *, void *, ?, void *); // extern

void func_802A00E8(void *arg0, void *arg1) {
    s16 temp_v0;
    s16 temp_v0_2;
    s16 temp_v0_3;
    s16 temp_v0_4;
    s16 temp_v0_5;
    s16 temp_v0_6;

    temp_v0 = arg0->unk0;
    if (temp_v0 != 7) {
        if (temp_v0 != 8) {
            if (temp_v0 != 0xD) {
                if (temp_v0 != 0x2A) {
                    goto block_15;
                }
                if (arg0->unk6 == 0) {
                    arg0->unk2 = arg0->unk2 | 0x200;
                    func_800C98B8(arg0 + 0x18, arg0 + 0x24, 0x19019053, arg0);
                    return;
                }
                goto block_15;
            }
            if (arg0->unk6 == 0) {
                arg0->unk2 = arg0->unk2 | 0x200;
                func_800C98B8(arg0 + 0x18, arg0 + 0x24, 0x19019053, arg0);
                return;
            }
            goto block_15;
        }
        temp_v0_2 = arg0->unk6;
        if ((temp_v0_2 == 0) || (temp_v0_2 == 6)) {
            arg0->unk2 = arg0->unk2 | 0x200;
            func_800C98B8(arg0 + 0x18, arg0 + 0x24, 0x19019053, arg0);
            return;
        }
        goto block_15;
    }
    temp_v0_3 = arg0->unk6;
    if ((temp_v0_3 == 0) || (temp_v0_3 == 4)) {
        arg0->unk2 = arg0->unk2 | 0x200;
        func_800C98B8(arg0 + 0x18, arg0 + 0x24, 0x19019053, arg0);
        return;
    }
block_15:
    temp_v0_4 = arg1->unk0;
    if (temp_v0_4 != 7) {
        if (temp_v0_4 != 8) {
            if (temp_v0_4 != 0xD) {
                if (temp_v0_4 != 0x2A) {
                    goto block_30;
                }
                if (arg1->unk6 == 0) {
                    arg1->unk2 = arg1->unk2 | 0x200;
                    func_800C98B8(arg1 + 0x18, arg1 + 0x24, 0x19019053, arg0);
                    return;
                }
                goto block_30;
            }
            if (arg1->unk6 == 0) {
                arg1->unk2 = arg1->unk2 | 0x200;
                func_800C98B8(arg1 + 0x18, arg1 + 0x24, 0x19019053, arg0);
                return;
            }
            goto block_30;
        }
        temp_v0_5 = arg1->unk6;
        if ((temp_v0_5 == 0) || (temp_v0_5 == 6)) {
            arg1->unk2 = arg1->unk2 | 0x200;
            func_800C98B8(arg1 + 0x18, arg1 + 0x24, 0x19019053, arg0);
            return;
        }
        goto block_30;
    }
    temp_v0_6 = arg1->unk6;
    if ((temp_v0_6 == 0) || (temp_v0_6 == 4)) {
        arg1->unk2 = arg1->unk2 | 0x200;
        func_800C98B8(arg1 + 0x18, arg1 + 0x24, 0x19019053, arg0);
        return;
    }
block_30:
    arg0->unk2 = arg0->unk2 | 0x100;
    func_800C98B8(arg0 + 0x18, arg0 + 0x24, 0x19018010, arg0);
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_802A00E8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800C98B8(void *, void *, ?); // extern
s32 func_8029FCA4(); // extern
? func_8029FDC8(void *); // extern
? func_802A00E8(void *, void *); // extern

void func_802A0350(void *arg0, void *arg1) {
    s16 temp_v0;
    s32 phi_v1;

    if (func_8029FCA4() == 1) {
        temp_v0 = arg0->unk0;
        phi_v1 = 0x2A;
        if ((temp_v0 == 0x2A) && (arg1->unk0 == 0x2A)) {
            func_8029FDC8(arg0);
            func_8029FDC8(arg1);
            arg0->unk2 = arg0->unk2 | 0x100;
            func_800C98B8(arg0 + 0x18, arg0 + 0x24, 0x19018010);
            return;
        }
        if (temp_v0 == 0x2A) {
            if (arg0->unk6 == 0) {
                func_8029FDC8(arg0);
            }
            phi_v1 = 0x2A;
        } else {
            func_8029FDC8(arg0);
        }
        if (phi_v1 == arg1->unk0) {
            if (arg1->unk6 == 0) {
                func_8029FDC8(arg1);
            }
        } else {
            func_8029FDC8(arg1);
        }
        func_802A00E8(arg0, arg1);
        // Duplicate return node #14. Try simplifying control flow for better match
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_802A0350.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
/*
Failed to decompile function func_802A0450:

Unable to determine jump table for jr instruction at func_802A0450.s line 23.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
*/
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_802A0450.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_802977E4(? *); // extern
? func_802A0450(? *, void *); // extern
extern ? D_800FD850;
extern ? D_8015F9B8;
extern ? gPlayers;

void func_802A0D54(void) {
    ? *temp_s1;
    s16 temp_v0;
    s32 temp_s0;
    void *temp_a1;
    ? *phi_s1;
    s32 phi_s0;

    phi_s1 = &gPlayers;
    do {
        if (((phi_s1->unk0 & 0x8000) != 0) && ((phi_s1->unkBC & 0x4000000) == 0)) {
            func_802977E4(phi_s1);
            phi_s0 = 0;
            do {
                if ((phi_s1->unkBC & 0x4000000) == 0) {
                    temp_a1 = &D_8015F9B8 + (phi_s0 * 0x70);
                    temp_v0 = temp_a1->unk2;
                    if (((temp_v0 & 0x8000) != 0) && ((temp_v0 & 0x4000) != 0)) {
                        func_802A0450(phi_s1, temp_a1);
                    }
                }
                temp_s0 = phi_s0 + 1;
                phi_s0 = temp_s0;
            } while (temp_s0 != 0x64);
        }
        temp_s1 = phi_s1 + 0xDD8;
        phi_s1 = temp_s1;
    } while (temp_s1 != &D_800FD850);
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_802A0D54.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_802A0350(void *, void *); // extern
extern u16 D_8015F900;
extern ? D_8015F9B8;

void func_802A0E44(void) {
    s32 sp44;
    s16 temp_v0;
    s16 temp_v0_2;
    s16 temp_v0_3;
    s16 temp_v0_4;
    s16 temp_v0_5;
    s32 temp_s1;
    s32 temp_s1_2;
    u16 temp_v1;
    void *temp_a1;
    void *phi_s0;
    u16 phi_v1;
    s32 phi_s1;

    temp_v1 = D_8015F900;
    phi_v1 = temp_v1;
    if (temp_v1 < 0x63) {
        phi_s0 = (temp_v1 * 0x70) + &D_8015F9B8;
        do {
            temp_v0 = phi_s0->unk2;
            if ((temp_v0 & 0x8000) == 0) {
                sp44 = phi_v1 + 1;
            } else if ((temp_v0 & 0x4000) == 0) {
                sp44 = phi_v1 + 1;
            } else {
                temp_v0_2 = phi_s0->unk0;
                temp_s1 = phi_v1 + 1;
                phi_s1 = temp_s1;
                if ((temp_v0_2 != 6) && (temp_v0_2 != 7) && (temp_v0_2 != 8) && (temp_v0_2 != 0xD) && (temp_v0_2 != 0x2A)) {
                    sp44 = phi_v1 + 1;
                } else {
                    sp44 = temp_s1;
                    if (temp_s1 < 0x64) {
                        do {
                            temp_v0_3 = phi_s0->unk2;
                            if (((temp_v0_3 & 0x8000) != 0) && ((temp_v0_3 & 0x4000) != 0)) {
                                temp_a1 = &D_8015F9B8 + (phi_s1 * 0x70);
                                temp_v0_4 = temp_a1->unk2;
                                if (((temp_v0_4 & 0x8000) != 0) && ((temp_v0_4 & 0x4000) != 0)) {
                                    temp_v0_5 = temp_a1->unk0;
                                    if (temp_v0_5 != 6) {
                                        if (temp_v0_5 != 7) {
                                            if (temp_v0_5 != 8) {
                                                if ((temp_v0_5 != 0xD) && (temp_v0_5 != 0x2A)) {

                                                } else {
                                                    func_802A0350(phi_s0, temp_a1);
                                                }
                                            } else if ((phi_s0->unk0 != 8) || (phi_s0->unk14 != temp_a1->unk14)) {
                                                func_802A0350(phi_s0, temp_a1);
                                            }
                                        } else if ((phi_s0->unk0 != 7) || (phi_s0->unk14 != temp_a1->unk14)) {
                                            func_802A0350(phi_s0, temp_a1);
                                        }
                                    } else if (phi_s0->unk0 != 6) {
                                        func_802A0350(phi_s0, temp_a1);
                                    }
                                }
                            }
                            temp_s1_2 = phi_s1 + 1;
                            phi_s1 = temp_s1_2;
                        } while (temp_s1_2 != 0x64);
                    }
                }
            }
            phi_s0 += 0x70;
            phi_v1 = sp44;
        } while (sp44 < 0x63);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_802A0E44.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
f32 func_802ABEAC(void *, void *, void *); // extern
extern ? D_8015F9B8;
extern f32 D_802B99CC;

void func_802A1064(void *arg0) {
    f32 temp_f6;
    void *temp_a1;
    void *temp_a2;

    temp_a2 = arg0;
    if ((((arg0 - &D_8015F9B8) / 0x70) < 0x65) && ((arg0->unk2 & 0x8000) != 0)) {
        temp_a1 = temp_a2 + 0x18;
        if (arg0->unk0 == 0xD) {
            arg0->unk6 = 1;
            arg0 = temp_a2;
            temp_f6 = func_802ABEAC(arg0 + 0x30, temp_a1, temp_a2) + D_802B99CC;
            arg0->unk4 = 0x64;
            arg0->unk28 = temp_f6;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_802A1064.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800C9060(s32, ?); // extern
? func_8029E854(void *); // extern
? func_802A1064(void *, u16); // extern
? func_802ADDC8(f32, f32, void *, f32, f32, f32, f32); // extern
? func_802B4E30(void *); // extern
extern f32 D_802B99D0;
extern f32 D_802B99D4;
extern ? gControllers;
extern ? gPlayers;

void update_obj_fake_item_box(void *arg0) {
    u32 sp74;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    void *sp2C;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f2;
    f32 temp_f2_2;
    s16 temp_v0;
    s16 temp_v0_2;
    s16 temp_v0_3;
    s16 temp_v1_2;
    u16 temp_a1;
    u32 temp_v1;
    void *temp_v0_4;
    void *temp_v1_3;

    temp_v1 = arg0->unk24;
    temp_v0 = arg0->unk6;
    if (temp_v0 != 0) {
        if (temp_v0 != 1) {
            if (temp_v0 != 2) {
                func_8029E854(arg0);
                // Duplicate return node #26. Try simplifying control flow for better match
                return;
            }
            temp_v0_2 = arg0->unk4;
            if ((temp_v0_2 >= 0x14) || (temp_v0_2 < 0)) {
                func_8029E854(arg0);
                return;
            }
            arg0->unk4 = temp_v0_2 + 1;
            arg0->unk10 = arg0->unk10 + 0x444;
            arg0->unk12 = arg0->unk12 - 0x2D8;
            arg0->unk14 = arg0->unk14 + 0x16C;
            return;
        }
        temp_f0 = arg0->unk8;
        if (temp_f0 < 1.0f) {
            arg0->unk8 = temp_f0 + D_802B99D0;
            goto block_11;
        }
        if (temp_f0 >= 1.0f) {
            arg0->unk8 = 1.0f;
block_11:
        }
        temp_f2 = arg0->unk1C;
        temp_f12 = arg0->unk28;
        arg0->unkC = arg0->unk8 * 5.5f;
        if (temp_f12 <= temp_f2) {
            arg0->unk1C = temp_f12;
        } else {
            arg0->unk1C = temp_f2 + D_802B99D4;
        }
        temp_v1_2 = arg0->unk2;
        if ((temp_v1_2 & 0x1000) != 0) {
            temp_v0_3 = arg0->unk4;
            if ((temp_v0_3 <= 0) || (temp_v0_3 >= 0x12D)) {
                arg0->unk2 = temp_v1_2 & 0xEFFF;
                arg0->unk4 = 0;
            } else {
                arg0->unk4 = temp_v0_3 - 1;
            }
        }
        arg0->unk10 = arg0->unk10 - 0xB6;
        arg0->unk12 = arg0->unk12 + 0x16C;
        arg0->unk14 = arg0->unk14 - 0xB6;
        return;
    }
    arg0->unkC = arg0->unk8 * 5.5f;
    arg0->unk10 = arg0->unk10 - 0xB6;
    arg0->unk12 = arg0->unk12 + 0x16C;
    arg0->unk14 = arg0->unk14 - 0xB6;
    temp_v0_4 = (temp_v1 * 0xDD8) + &gPlayers;
    temp_f14 = temp_v0_4->unk14 - arg0->unk18;
    temp_f16 = temp_v0_4->unk18 - arg0->unk1C;
    sp48 = temp_f14;
    temp_f18 = temp_v0_4->unk1C - arg0->unk20;
    sp44 = temp_f16;
    sp74 = temp_v1;
    sp40 = temp_f18;
    sp2C = temp_v0_4;
    temp_f2_2 = sqrtf((temp_f14 * temp_f14) + (temp_f16 * temp_f16) + (temp_f18 * temp_f18)) / 10.0f;
    temp_f14_2 = temp_f14 / temp_f2_2;
    temp_f16_2 = temp_f16 / temp_f2_2;
    arg0->unk18 = temp_v0_4->unk14 - temp_f14_2;
    arg0->unk1C = (temp_v0_4->unk18 - temp_f16_2) - 1.0f;
    arg0->unk20 = temp_v0_4->unk1C - (temp_f18 / temp_f2_2);
    func_802ADDC8(1.0f, temp_f14_2, arg0 + 0x30, arg0->unkC, arg0->unk18, arg0->unk1C, arg0->unk20);
    func_802B4E30(arg0);
    temp_v1_3 = (sp74 * 0x10) + &gControllers;
    if (((temp_v0_4->unk0 & 0x4000) != 0) && (temp_a1 = temp_v1_3->unk8, ((temp_a1 & 0x2000) != 0))) {
        temp_v1_3->unk8 = temp_a1 & 0xDFFF;
        sp2C = temp_v0_4;
        func_802A1064(arg0, temp_a1);
        temp_v0_4->unkC = temp_v0_4->unkC & 0xFFFBFFFF;
        func_800C9060(((temp_v0_4 - D_800DC4DC) / 0xDD8) & 0xFF, 0x19008012);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/update_obj_fake_item_box.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_8029EC88(f32 *, ? *, ? *, ?); // extern
? func_802B52BC(? *, ?, ?, ?); // extern
? load_giant_egg(? *, ?, ?, ?); // extern
extern ? D_8015F9B8;
extern void *D_802BA05C;

void func_802A14BC(f32 arg0, f32 arg1, f32 arg2) {
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    ? sp28;
    ? sp20;
    f32 *temp_a0;

    if (gModeSelection != 1) {
        func_802B52BC(&sp20, 0, 0, 0);
        load_giant_egg(&sp28, 0, 0, 0);
        temp_a0 = &sp34;
        sp34 = arg0;
        sp38 = arg1;
        sp3C = arg2;
        D_802BA05C = (func_8029EC88(temp_a0, &sp20, &sp28, 0x2B) * 0x70) + &D_8015F9B8;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_802A14BC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void update_obj_item_box_hot_air_balloon(void *arg0) {
    s16 temp_v0;
    s16 temp_v0_2;

    temp_v0 = arg0->unk6;
    if (temp_v0 != 3) {
        if (temp_v0 == 5) {
            arg0->unk10 = arg0->unk10 + 0xB6;
            arg0->unk12 = arg0->unk12 - 0x16C;
            arg0->unk14 = arg0->unk14 + 0xB6;
            return;
        }
        // Duplicate return node #6. Try simplifying control flow for better match
        return;
    }
    temp_v0_2 = arg0->unk4;
    if (temp_v0_2 == 0x14) {
        arg0->unk6 = 5;
        arg0->unk2 = -0x4000;
        return;
    }
    arg0->unk4 = temp_v0_2 + 1;
    arg0->unk10 = arg0->unk10 + 0x444;
    arg0->unk12 = arg0->unk12 - 0x2D8;
    arg0->unk14 = arg0->unk14 + 0x16C;
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/update_obj_item_box_hot_air_balloon.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern f32 D_802B99D8;
extern f32 D_802B99DC;

void update_obj_item_box(void *arg0) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f2;
    s16 temp_v0;
    s16 temp_v0_2;

    temp_v0 = arg0->unk6;
    if (temp_v0 != 0) {
        if (temp_v0 != 1) {
            if (temp_v0 != 2) {
                if (temp_v0 != 3) {
                    return;
                }
                temp_v0_2 = arg0->unk4;
                if (temp_v0_2 == 0x14) {
                    arg0->unk6 = 0;
                    arg0->unk2 = -0x4000;
                    arg0->unk1C = arg0->unk8 - 20.0f;
                    return;
                }
                arg0->unk4 = temp_v0_2 + 1;
                arg0->unk10 = arg0->unk10 + 0x444;
                arg0->unk12 = arg0->unk12 - 0x2D8;
                arg0->unk14 = arg0->unk14 + 0x16C;
                return;
            }
            arg0->unk10 = arg0->unk10 + 0xB6;
            arg0->unk12 = arg0->unk12 - 0x16C;
            arg0->unk14 = arg0->unk14 + 0xB6;
            return;
        }
        temp_f0 = arg0->unk1C;
        temp_f2 = arg0->unk24;
        temp_f12 = D_802B99D8;
        if ((temp_f0 - temp_f2) < temp_f12) {
            arg0->unk1C = temp_f0 + D_802B99DC;
            return;
        }
        arg0->unk6 = 2;
        arg0->unk2 = -0x4000;
        arg0->unk1C = temp_f2 + temp_f12;
        return;
    }
    arg0->unk6 = 1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/update_obj_item_box.s")
#endif

#ifdef MIPS_TO_C
/*
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_80297230(void *, void *); // extern
? func_802972B8(void *, void *); // extern
s32 func_802B4FF8(f32 *, ?); // extern
? func_802B5450(f32 *, f32 *, f32 *, f32 *); // extern
? func_802B5F00(f32 *, f32 *, f32); // extern
? func_802B5F74(f32 *, s32, s16 *); // extern
f32 func_802B80D0(s32, u16, ?, f32, f32); // extern
extern ? D_0D002F80;
extern ? D_0D003090;
extern ? D_0D0030F8;
extern ? D_0D003128;
extern ? D_0D003158;
extern ? D_0D003188;
extern ? D_0D0031B8;
extern ? D_0D0031E8;
extern f32 D_802B99E0;
extern f32 D_802B99E4;
extern f32 D_802B99E8;
extern f32 D_802B99EC;
extern f32 D_802B99F0;
extern f32 D_802B99F4;
extern f32 D_802B99F8;
extern f32 D_802B99FC;
extern void *gDisplayListHead;

void func_802A171C(void *arg0, void *arg1) {
    s16 sp184;
    s16 sp182;
    s16 sp180;
    f32 sp170;
    f32 sp16C;
    f32 sp168;
    f32 sp128;
    f32 spE8;
    f32 spA4;
    s32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 *temp_a2;
    f32 *temp_a2_2;
    f32 *temp_a2_3;
    f32 *temp_a2_4;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f12;
    f32 temp_f2;
    f32 temp_f2_2;
    s16 temp_v1;
    s32 temp_a1;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_16;
    void *temp_v0_17;
    void *temp_v0_18;
    void *temp_v0_19;
    void *temp_v0_20;
    void *temp_v0_21;
    void *temp_v0_22;
    void *temp_v0_23;
    void *temp_v0_24;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    f32 phi_f0;

    temp_a1 = arg1 + 0x18;
    sp38 = temp_a1;
    if (func_802B80D0(temp_a1, arg0->unk26, 0x451C4000, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B99E0) < 0.0f) {
        func_80297230(arg0, arg1);
        return;
    }
    temp_f0 = arg1->unk1C;
    if ((D_8015F6EC + 800.0f) < temp_f0) {
        func_80297230(arg0, arg1);
        return;
    }
    if (temp_f0 < (D_8015F6EE - 800.0f)) {
        func_80297230(arg0, arg1);
        return;
    }
    func_802972B8(arg0, arg1);
    sp180 = 0;
    sp184 = 0;
    sp182 = arg1->unk12;
    func_802B5F74(&sp128, sp38, &sp180);
    func_802B5F00(&sp128, arg1->unk8);
    if (arg1->unk6 != 2) {
        if ((func_802B4FF8(&sp128, 0) != 0) && (temp_v0 = gDisplayListHead, gDisplayListHead = temp_v0 + 8, temp_v0->unk0 = 0x6000000, temp_v0->unk4 = &D_0D002F80, func_802B5F74(&sp128, sp38, arg1 + 0x10), func_802B5F00(&sp128, arg1->unk8), (func_802B4FF8(&sp128, 0) != 0))) {
            temp_v0_2 = gDisplayListHead;
            gDisplayListHead = temp_v0_2 + 8;
            temp_v0_2->unk4 = 0x20000;
            temp_v0_2->unk0 = 0xB6000000;
            temp_v0_3 = gDisplayListHead;
            gDisplayListHead = temp_v0_3 + 8;
            temp_v0_3->unk0 = 0xFC121824;
            temp_v0_3->unk4 = 0xFF33FFFF;
            temp_v1 = arg1->unk12;
            if ((temp_v1 < 0xAA1) && (temp_v1 > 0)) {
                temp_v0_4 = gDisplayListHead;
                gDisplayListHead = temp_v0_4 + 8;
                temp_v0_4->unk0 = 0xB900031D;
                temp_v0_4->unk4 = 0x552078;
            } else if ((temp_v1 >= 0x6AA5) && (temp_v1 < 0x754E)) {
                temp_v0_5 = gDisplayListHead;
                gDisplayListHead = temp_v0_5 + 8;
                temp_v0_5->unk0 = 0xB900031D;
                temp_v0_5->unk4 = 0x552078;
            } else if ((temp_v1 >= 0x38E1) && (temp_v1 < 0x438A)) {
                temp_v0_6 = gDisplayListHead;
                gDisplayListHead = temp_v0_6 + 8;
                temp_v0_6->unk0 = 0xB900031D;
                temp_v0_6->unk4 = 0x552078;
            } else if ((temp_v1 >= 0xC711) && (temp_v1 < 0xD1BA)) {
                temp_v0_7 = gDisplayListHead;
                gDisplayListHead = temp_v0_7 + 8;
                temp_v0_7->unk0 = 0xB900031D;
                temp_v0_7->unk4 = 0x552078;
            } else {
                temp_v0_8 = gDisplayListHead;
                gDisplayListHead = temp_v0_8 + 8;
                temp_v0_8->unk4 = 0;
                temp_v0_8->unk0 = 0xC0000000;
                temp_v0_9 = gDisplayListHead;
                gDisplayListHead = temp_v0_9 + 8;
                temp_v0_9->unk4 = 0x504B50;
                temp_v0_9->unk0 = 0xB900031D;
            }
            temp_v0_10 = gDisplayListHead;
            gDisplayListHead = temp_v0_10 + 8;
            temp_v0_10->unk0 = 0x6000000;
            temp_v0_10->unk4 = &D_0D003090;
            return;
        }
        // Duplicate return node #39. Try simplifying control flow for better match
        return;
    }
    temp_v0_11 = gDisplayListHead;
    gDisplayListHead = temp_v0_11 + 8;
    temp_v0_11->unk4 = 0x20000;
    temp_v0_11->unk0 = 0xB6000000;
    temp_v0_12 = gDisplayListHead;
    gDisplayListHead = temp_v0_12 + 8;
    temp_v0_12->unk4 = 0x2000;
    temp_v0_12->unk0 = 0xB6000000;
    temp_v0_13 = gDisplayListHead;
    gDisplayListHead = temp_v0_13 + 8;
    temp_v0_13->unk4 = 0;
    temp_v0_13->unk0 = 0xC0000000;
    spA4 = arg1->unk4;
    func_802B5F74(&sp128, sp38, arg1 + 0x10);
    if (spA4 < 10.0f) {
        phi_f0 = 1.0f;
    } else {
        phi_f0 = 1.0f - ((spA4 - 10.0f) * D_802B99E4);
    }
    func_802B5F00((bitwise f32 *) spA4, &sp128, phi_f0);
    if ((arg1->unk4 & 1) != 0) {
        temp_v0_14 = gDisplayListHead;
        gDisplayListHead = temp_v0_14 + 8;
        temp_v0_14->unk4 = 0x552078;
        temp_v0_14->unk0 = 0xB900031D;
    } else {
        temp_v0_15 = gDisplayListHead;
        gDisplayListHead = temp_v0_15 + 8;
        temp_v0_15->unk4 = 0x4045D8;
        temp_v0_15->unk0 = 0xB900031D;
    }
    sp168 = 0.0f;
    temp_f2 = 2.0f * spA4;
    sp170 = spA4;
    sp16C = temp_f2;
    sp38 = (bitwise s32) temp_f2;
    func_802B5450(&sp128, &spE8, &sp168);
    if (func_802B4FF8(&spE8, 0) != 0) {
        temp_v0_16 = gDisplayListHead;
        gDisplayListHead = temp_v0_16 + 8;
        temp_v0_16->unk0 = 0x6000000;
        temp_v0_16->unk4 = &D_0D003158;
        temp_f2_2 = D_802B99E8 * spA4;
        temp_f12 = 0.5f * spA4;
        sp168 = temp_f2_2;
        sp34 = temp_f2_2;
        sp16C = D_802B99EC * spA4;
        sp170 = temp_f12;
        sp30 = temp_f12;
        func_802B5450((bitwise f32 *) temp_f12, &sp128, &spE8, &sp168);
        if (func_802B4FF8(&spE8, 0) != 0) {
            temp_v0_17 = gDisplayListHead;
            gDisplayListHead = temp_v0_17 + 8;
            temp_v0_17->unk0 = 0x6000000;
            temp_v0_17->unk4 = &D_0D0031B8;
            temp_f0_2 = -0.5f * spA4;
            temp_a2 = &sp168;
            sp168 = sp34;
            sp16C = D_802B99F0 * spA4;
            sp170 = temp_f0_2;
            sp2C = temp_f0_2;
            func_802B5450(&sp128, &spE8, temp_a2);
            if (func_802B4FF8(&spE8, 0) != 0) {
                temp_v0_18 = gDisplayListHead;
                gDisplayListHead = temp_v0_18 + 8;
                temp_v0_18->unk4 = &D_0D003128;
                temp_v0_18->unk0 = 0x6000000;
                if ((arg1->unk4 & 1) == 0) {
                    temp_v0_19 = gDisplayListHead;
                    gDisplayListHead = temp_v0_19 + 8;
                    temp_v0_19->unk4 = 0x552078;
                    temp_v0_19->unk0 = 0xB900031D;
                } else {
                    temp_v0_20 = gDisplayListHead;
                    gDisplayListHead = temp_v0_20 + 8;
                    temp_v0_20->unk4 = 0x4045D8;
                    temp_v0_20->unk0 = 0xB900031D;
                }
                temp_a2_2 = &sp168;
                sp168 = 0.0f;
                sp16C = D_802B99F4 * spA4;
                sp170 = -1.0f * spA4;
                func_802B5450(&sp128, &spE8, temp_a2_2);
                if (func_802B4FF8(&spE8, 0) != 0) {
                    temp_v0_21 = gDisplayListHead;
                    gDisplayListHead = temp_v0_21 + 8;
                    temp_v0_21->unk4 = &D_0D0031E8;
                    temp_v0_21->unk0 = 0x6000000;
                    temp_f0_3 = D_802B99F8 * spA4;
                    temp_a2_3 = &sp168;
                    sp170 = sp2C;
                    sp168 = temp_f0_3;
                    sp34 = temp_f0_3;
                    sp16C = D_802B99FC * spA4;
                    func_802B5450(&sp128, &spE8, temp_a2_3);
                    if (func_802B4FF8(&spE8, 0) != 0) {
                        temp_v0_22 = gDisplayListHead;
                        gDisplayListHead = temp_v0_22 + 8;
                        temp_v0_22->unk4 = &D_0D003188;
                        temp_v0_22->unk0 = 0x6000000;
                        temp_a2_4 = &sp168;
                        sp168 = sp34;
                        sp16C = (bitwise f32) sp38;
                        sp170 = sp30;
                        func_802B5450(&sp128, &spE8, temp_a2_4);
                        if (func_802B4FF8(&spE8, 0) != 0) {
                            temp_v0_23 = gDisplayListHead;
                            gDisplayListHead = temp_v0_23 + 8;
                            temp_v0_23->unk4 = &D_0D0030F8;
                            temp_v0_23->unk0 = 0x6000000;
                            temp_v0_24 = gDisplayListHead;
                            gDisplayListHead = temp_v0_24 + 8;
                            temp_v0_24->unk4 = 0x2000;
                            temp_v0_24->unk0 = 0xB7000000;
                        }
                    }
                }
            }
        }
    }
}
*/
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_802A171C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_802B4FF8(f32 *, ?); // extern
? func_802B5450(f32 *, f32 *, f32 *, f32 *); // extern
? func_802B5F00(f32, f32 *, f32); // extern
? func_802B5F74(f32 *, f32 *, s16 *, void *); // extern
f32 func_802B80D0(f32 *, u16, ?, f32, f32); // extern
extern ? D_0D002EE8;
extern ? D_0D003008;
extern ? D_0D003090;
extern ? D_0D0030F8;
extern ? D_0D003128;
extern ? D_0D003158;
extern ? D_0D003188;
extern ? D_0D0031B8;
extern ? D_0D0031E8;
extern f32 D_802B9A00;
extern f32 D_802B9A04;
extern f32 D_802B9A08;
extern f32 D_802B9A0C;
extern f32 D_802B9A10;
extern f32 D_802B9A14;
extern f32 D_802B9A18;
extern f32 D_802B9A1C;
extern f32 D_802B9A20;
extern f32 D_802B9A24;
extern void *gDisplayListHead;

void func_802A1EA0(void *arg0, void *arg1) {
    f32 sp17C;
    f32 sp178;
    f32 sp174;
    f32 sp170;
    f32 sp16C;
    f32 sp168;
    s16 sp164;
    s16 sp162;
    s16 sp160;
    f32 sp15C;
    f32 sp118;
    f32 spD8;
    f32 *sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 *temp_a1;
    f32 *temp_a2_2;
    f32 *temp_a2_3;
    f32 *temp_a2_4;
    f32 *temp_a2_5;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f12;
    f32 temp_f2;
    f32 temp_f2_2;
    s16 *temp_a2;
    s16 temp_a0;
    s16 temp_v1;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_16;
    void *temp_v0_17;
    void *temp_v0_18;
    void *temp_v0_19;
    void *temp_v0_20;
    void *temp_v0_21;
    void *temp_v0_22;
    void *temp_v0_23;
    void *temp_v0_24;
    void *temp_v0_25;
    void *temp_v0_26;
    void *temp_v0_27;
    void *temp_v0_28;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    s16 phi_a0;
    s16 phi_a0_2;
    void *phi_t1;
    f32 phi_f0;

    temp_a1 = arg1 + 0x18;
    sp38 = temp_a1;
    temp_f0 = func_802B80D0(temp_a1, arg0->unk26, 0, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B9A00);
    if (!(temp_f0 < 0.0f) && !(D_802B9A04 < temp_f0)) {
        temp_a0 = arg1->unk6;
        phi_a0 = temp_a0;
        if ((temp_a0 == 2) && (temp_f0 < D_802B9A08)) {
            sp160 = 0;
            sp164 = 0;
            sp162 = arg1->unk12;
            sp168 = arg1->unk18;
            sp16C = arg1->unk8 + 2.0f;
            sp170 = arg1->unk20;
            func_802B5F74(&sp118, &sp168, &sp160);
            if (func_802B4FF8(&sp118, 0) != 0) {
                temp_v0 = gDisplayListHead;
                gDisplayListHead = temp_v0 + 8;
                temp_v0->unk0 = 0x6000000;
                temp_v0->unk4 = &D_0D002EE8;
                sp162 = arg1->unk12 * 2;
                sp16C = arg1->unk1C;
                func_802B5F74(&sp118, &sp168, &sp160, arg1);
                if (func_802B4FF8(&sp118, 0) != 0) {
                    temp_v0_2 = gDisplayListHead;
                    gDisplayListHead = temp_v0_2 + 8;
                    temp_v0_2->unk4 = &D_0D003008;
                    temp_v0_2->unk0 = 0x6000000;
                    phi_a0 = arg1->unk6;
                    goto block_7;
                }
            }
        } else {
block_7:
            phi_a0_2 = phi_a0;
            phi_t1 = arg1;
            if (phi_a0 == 5) {
                func_802B5F74(&sp118, sp38, arg1 + 0x10);
                if (func_802B4FF8(&sp118, 0) != 0) {
                    temp_v0_3 = gDisplayListHead;
                    gDisplayListHead = temp_v0_3 + 8;
                    temp_v0_3->unk4 = &D_0D003008;
                    temp_v0_3->unk0 = 0x6000000;
                    phi_a0_2 = arg1->unk6;
                    phi_t1 = arg1;
                    goto block_10;
                }
            } else {
block_10:
                temp_a2 = phi_t1 + 0x10;
                if (phi_a0_2 != 3) {
                    func_802B5F74(&sp118, sp38, temp_a2);
                    if (func_802B4FF8(&sp118, 0) != 0) {
                        temp_v0_4 = gDisplayListHead;
                        gDisplayListHead = temp_v0_4 + 8;
                        temp_v0_4->unk4 = 0x20000;
                        temp_v0_4->unk0 = 0xB6000000;
                        temp_v0_5 = gDisplayListHead;
                        gDisplayListHead = temp_v0_5 + 8;
                        temp_v0_5->unk0 = 0xFC121824;
                        temp_v0_5->unk4 = 0xFF33FFFF;
                        temp_v1 = arg1->unk12;
                        if ((temp_v1 < 0xAA1) && (temp_v1 > 0)) {
                            temp_v0_6 = gDisplayListHead;
                            gDisplayListHead = temp_v0_6 + 8;
                            temp_v0_6->unk0 = 0xB900031D;
                            temp_v0_6->unk4 = 0x552078;
                        } else if ((temp_v1 >= 0x6AA5) && (temp_v1 < 0x754E)) {
                            temp_v0_7 = gDisplayListHead;
                            gDisplayListHead = temp_v0_7 + 8;
                            temp_v0_7->unk0 = 0xB900031D;
                            temp_v0_7->unk4 = 0x552078;
                        } else if ((temp_v1 >= 0x38E1) && (temp_v1 < 0x438A)) {
                            temp_v0_8 = gDisplayListHead;
                            gDisplayListHead = temp_v0_8 + 8;
                            temp_v0_8->unk0 = 0xB900031D;
                            temp_v0_8->unk4 = 0x552078;
                        } else if ((temp_v1 >= 0xC711) && (temp_v1 < 0xD1BA)) {
                            temp_v0_9 = gDisplayListHead;
                            gDisplayListHead = temp_v0_9 + 8;
                            temp_v0_9->unk0 = 0xB900031D;
                            temp_v0_9->unk4 = 0x552078;
                        } else {
                            temp_v0_10 = gDisplayListHead;
                            gDisplayListHead = temp_v0_10 + 8;
                            temp_v0_10->unk4 = 0;
                            temp_v0_10->unk0 = 0xC0000000;
                            temp_v0_11 = gDisplayListHead;
                            gDisplayListHead = temp_v0_11 + 8;
                            temp_v0_11->unk4 = 0x504B50;
                            temp_v0_11->unk0 = 0xB900031D;
                        }
                        temp_v0_12 = gDisplayListHead;
                        gDisplayListHead = temp_v0_12 + 8;
                        temp_v0_12->unk4 = 0x200;
                        temp_v0_12->unk0 = 0xB7000000;
                        temp_v0_13 = gDisplayListHead;
                        gDisplayListHead = temp_v0_13 + 8;
                        temp_v0_13->unk0 = 0x6000000;
                        temp_v0_13->unk4 = &D_0D003090;
                        goto block_42;
                    }
                } else {
                    temp_v0_14 = gDisplayListHead;
                    gDisplayListHead = temp_v0_14 + 8;
                    temp_v0_14->unk4 = 0x20000;
                    temp_v0_14->unk0 = 0xB6000000;
                    temp_v0_15 = gDisplayListHead;
                    gDisplayListHead = temp_v0_15 + 8;
                    temp_v0_15->unk4 = 0x2000;
                    temp_v0_15->unk0 = 0xB6000000;
                    temp_v0_16 = gDisplayListHead;
                    gDisplayListHead = temp_v0_16 + 8;
                    temp_v0_16->unk4 = 0;
                    temp_v0_16->unk0 = 0xC0000000;
                    sp15C = phi_t1->unk4;
                    func_802B5F74(&sp118, sp38, temp_a2);
                    if (sp15C < 10.0f) {
                        phi_f0 = 1.0f;
                    } else {
                        phi_f0 = 1.0f - ((sp15C - 10.0f) * D_802B9A0C);
                    }
                    func_802B5F00(sp15C, &sp118, phi_f0);
                    if ((arg1->unk4 & 1) != 0) {
                        temp_v0_17 = gDisplayListHead;
                        gDisplayListHead = temp_v0_17 + 8;
                        temp_v0_17->unk4 = 0x552078;
                        temp_v0_17->unk0 = 0xB900031D;
                    } else {
                        temp_v0_18 = gDisplayListHead;
                        gDisplayListHead = temp_v0_18 + 8;
                        temp_v0_18->unk4 = 0x4045D8;
                        temp_v0_18->unk0 = 0xB900031D;
                    }
                    sp174 = 0.0f;
                    temp_f2 = 2.0f * sp15C;
                    sp17C = sp15C;
                    sp178 = temp_f2;
                    sp38 = (bitwise f32 *) temp_f2;
                    func_802B5450(&sp118, &spD8, &sp174);
                    if (func_802B4FF8(&spD8, 0) != 0) {
                        temp_v0_19 = gDisplayListHead;
                        gDisplayListHead = temp_v0_19 + 8;
                        temp_v0_19->unk0 = 0x6000000;
                        temp_v0_19->unk4 = &D_0D003158;
                        temp_f2_2 = D_802B9A10 * sp15C;
                        temp_f12 = 0.5f * sp15C;
                        sp174 = temp_f2_2;
                        sp34 = temp_f2_2;
                        sp178 = D_802B9A14 * sp15C;
                        sp17C = temp_f12;
                        sp30 = temp_f12;
                        func_802B5450((bitwise f32 *) temp_f12, &sp118, &spD8, &sp174);
                        if (func_802B4FF8(&spD8, 0) != 0) {
                            temp_v0_20 = gDisplayListHead;
                            gDisplayListHead = temp_v0_20 + 8;
                            temp_v0_20->unk0 = 0x6000000;
                            temp_v0_20->unk4 = &D_0D0031B8;
                            temp_f0_2 = -0.5f * sp15C;
                            temp_a2_2 = &sp174;
                            sp174 = sp34;
                            sp178 = D_802B9A18 * sp15C;
                            sp17C = temp_f0_2;
                            sp2C = temp_f0_2;
                            func_802B5450(&sp118, &spD8, temp_a2_2);
                            if (func_802B4FF8(&spD8, 0) != 0) {
                                temp_v0_21 = gDisplayListHead;
                                gDisplayListHead = temp_v0_21 + 8;
                                temp_v0_21->unk4 = &D_0D003128;
                                temp_v0_21->unk0 = 0x6000000;
                                if ((arg1->unk4 & 1) == 0) {
                                    temp_v0_22 = gDisplayListHead;
                                    gDisplayListHead = temp_v0_22 + 8;
                                    temp_v0_22->unk4 = 0x552078;
                                    temp_v0_22->unk0 = 0xB900031D;
                                } else {
                                    temp_v0_23 = gDisplayListHead;
                                    gDisplayListHead = temp_v0_23 + 8;
                                    temp_v0_23->unk4 = 0x4045D8;
                                    temp_v0_23->unk0 = 0xB900031D;
                                }
                                temp_a2_3 = &sp174;
                                sp174 = 0.0f;
                                sp178 = D_802B9A1C * sp15C;
                                sp17C = -1.0f * sp15C;
                                func_802B5450(&sp118, &spD8, temp_a2_3);
                                if (func_802B4FF8(&spD8, 0) != 0) {
                                    temp_v0_24 = gDisplayListHead;
                                    gDisplayListHead = temp_v0_24 + 8;
                                    temp_v0_24->unk4 = &D_0D0031E8;
                                    temp_v0_24->unk0 = 0x6000000;
                                    temp_f0_3 = D_802B9A20 * sp15C;
                                    temp_a2_4 = &sp174;
                                    sp17C = sp2C;
                                    sp174 = temp_f0_3;
                                    sp34 = temp_f0_3;
                                    sp178 = D_802B9A24 * sp15C;
                                    func_802B5450(&sp118, &spD8, temp_a2_4);
                                    if (func_802B4FF8(&spD8, 0) != 0) {
                                        temp_v0_25 = gDisplayListHead;
                                        gDisplayListHead = temp_v0_25 + 8;
                                        temp_v0_25->unk4 = &D_0D003188;
                                        temp_v0_25->unk0 = 0x6000000;
                                        temp_a2_5 = &sp174;
                                        sp174 = sp34;
                                        sp178 = (bitwise f32) sp38;
                                        sp17C = sp30;
                                        func_802B5450(&sp118, &spD8, temp_a2_5);
                                        if (func_802B4FF8(&spD8, 0) != 0) {
                                            temp_v0_26 = gDisplayListHead;
                                            gDisplayListHead = temp_v0_26 + 8;
                                            temp_v0_26->unk4 = &D_0D0030F8;
                                            temp_v0_26->unk0 = 0x6000000;
                                            temp_v0_27 = gDisplayListHead;
                                            gDisplayListHead = temp_v0_27 + 8;
                                            temp_v0_27->unk4 = 0x2000;
                                            temp_v0_27->unk0 = 0xB7000000;
block_42:
                                            temp_v0_28 = gDisplayListHead;
                                            gDisplayListHead = temp_v0_28 + 8;
                                            temp_v0_28->unk4 = -1;
                                            temp_v0_28->unk0 = 0xBB000001;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_802A1EA0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_802B4FF8(? *, ?); // extern
? func_802B5F74(? *, s32, s32); // extern
f32 func_802B80D0(s32, u16, ?, f32, f32); // extern
extern ? D_0600CA60;
extern f32 D_802B9A28;
extern void *gDisplayListHead;

void func_802A269C(void *arg0, s32 arg1) {
    ? sp38;
    s32 sp24;
    s32 temp_a1;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;

    temp_a1 = arg1 + 0x18;
    sp24 = temp_a1;
    if (!(func_802B80D0(temp_a1, arg0->unk26, 0, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B9A28) < 0.0f)) {
        temp_v0 = gDisplayListHead;
        gDisplayListHead = temp_v0 + 8;
        temp_v0->unk4 = 0x200;
        temp_v0->unk0 = 0xB7000000;
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->unk4 = 0x20000;
        temp_v0_2->unk0 = 0xB6000000;
        func_802B5F74(&sp38, temp_a1, arg1 + 0x10);
        if (func_802B4FF8(&sp38, 0) != 0) {
            temp_v0_3 = gDisplayListHead;
            gDisplayListHead = temp_v0_3 + 8;
            temp_v0_3->unk0 = 0x6000000;
            temp_v0_3->unk4 = &D_0600CA60;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_802A269C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_802976D8(s16 *); // extern
? func_8029794C(f32 *, s16 *, ?); // extern
s32 func_802B4FF8(? *, ?); // extern
? func_802B5F74(? *, s32, s16 *); // extern
f32 func_802B80D0(s32, u16, ?, f32, f32); // extern
extern ? D_06016D70;
extern ? D_06017FA8;
extern f32 D_802B9A2C;
extern f32 D_802B9A30;
extern void *gDisplayListHead;

void func_802A27A0(void *arg0, ? *arg1, void *arg2, u16 arg3) {
    ? sp60;
    s16 sp5C;
    s16 sp5A;
    s16 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    s32 sp30;
    f32 temp_f0;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    f32 phi_f2;

    if (D_800DC50C != 9) {
        temp_f0 = func_802B80D0(arg2 + 0x18, arg0->unk26, 0x43480000, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B9A2C);
        phi_f2 = temp_f0;
        if (temp_f0 < 0.0f) {
            return;
        }
        goto block_4;
    }
    arg3 = 0xF;
    phi_f2 = 0.0f;
block_4:
    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk4 = 0x200;
    temp_v0->unk0 = 0xB7000000;
    if ((arg3 >= 0xD) && (arg3 < 0x14)) {
        sp30 = arg2 + 0x18;
        if (phi_f2 < D_802B9A30) {
            sp4C = arg2->unk18;
            sp50 = 3.0f;
            sp54 = arg2->unk20;
            func_802976D8(&sp58);
            func_8029794C(&sp4C, &sp58, 0x41200000);
        }
        sp58 = 0;
        sp5C = 0;
        sp5A = arg2->unk12;
        func_802B5F74(&sp60, sp30, &sp58);
        if (func_802B4FF8(&sp60, 0) != 0) {
            temp_v0_2 = gDisplayListHead;
            gDisplayListHead = temp_v0_2 + 8;
            temp_v0_2->unk4 = 0x20000;
            temp_v0_2->unk0 = 0xB7000000;
            temp_v0_3 = gDisplayListHead;
            gDisplayListHead = temp_v0_3 + 8;
            temp_v0_3->unk0 = 0x6000000;
            temp_v0_3->unk4 = &D_06016D70;
            return;
        }
        // Duplicate return node #12. Try simplifying control flow for better match
        return;
    }
    arg1->unk30 = arg2->unk18;
    arg1->unk34 = arg2->unk1C;
    arg1->unk38 = arg2->unk20;
    if (func_802B4FF8(arg1, 0) != 0) {
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->unk4 = 0x20000;
        temp_v0_4->unk0 = 0xB6000000;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->unk0 = 0x6000000;
        temp_v0_5->unk4 = &D_06017FA8;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_802A27A0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_802B4FF8(? *, ?); // extern
? func_802B5F74(? *, void *, void *); // extern
f32 func_802B80D0(void *, u16, ?, f32, f32); // extern
extern ? D_06009330;
extern f32 D_802B9A34;
extern void *gDisplayListHead;

void func_802A29BC(void *arg0, ? arg1, void *arg2) {
    ? sp40;
    void *sp28;
    void *temp_a1;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;

    temp_a1 = arg2 + 0x18;
    if ((arg2->unk2 & 0x800) == 0) {
        sp28 = temp_a1;
        if (!(func_802B80D0(temp_a1, arg0->unk26, 0, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B9A34) < 0.0f)) {
            temp_v0 = gDisplayListHead;
            gDisplayListHead = temp_v0 + 8;
            temp_v0->unk4 = 0x200;
            temp_v0->unk0 = 0xB7000000;
            temp_v0_2 = gDisplayListHead;
            gDisplayListHead = temp_v0_2 + 8;
            temp_v0_2->unk4 = 0x20000;
            temp_v0_2->unk0 = 0xB6000000;
            func_802B5F74(&sp40, temp_a1, arg2 + 0x10);
            if (func_802B4FF8(&sp40, 0) != 0) {
                temp_v0_3 = gDisplayListHead;
                gDisplayListHead = temp_v0_3 + 8;
                temp_v0_3->unk0 = 0x6000000;
                temp_v0_3->unk4 = &D_06009330;
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_802A29BC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_802B4FF8(? *, ?); // extern
? func_802B5F74(? *, s32, s32); // extern
f32 func_802B80D0(s32, u16, ?, f32, f32); // extern
extern ? D_06010AE8;
extern ? D_06010C10;
extern ? D_06010D38;
extern ? D_801637B8;
extern ? D_802B8864;
extern f32 D_802B9A38;
extern void *gDisplayListHead;

void func_802A2AD0(void *arg0, void *arg1) {
    ? sp80;
    ? sp40;
    s32 sp20;
    s32 temp_a1;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;

    sp80.unk0 = D_802B8864.unk0;
    sp80.unk4 = D_802B8864.unk4;
    temp_a1 = arg1 + 0x18;
    sp20 = temp_a1;
    if (!(func_802B80D0(temp_a1, arg0->unk26, 0, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B9A38) < 0.0f)) {
        func_802B5F74(&sp40, temp_a1, arg1 + 0x10);
        if (func_802B4FF8(&sp40, 0) != 0) {
            temp_v0 = gDisplayListHead;
            gDisplayListHead = temp_v0 + 8;
            temp_v0->unk4 = 0x20000;
            temp_v0->unk0 = 0xB7000000;
            temp_v0_2 = gDisplayListHead;
            gDisplayListHead = temp_v0_2 + 8;
            temp_v0_2->unk4 = 0x2000;
            temp_v0_2->unk0 = 0xB6000000;
            if (*(&D_801637B8 + (arg1->unk6 * 2)) != 0) {
                if (arg1->unk4 < 0x14) {
                    temp_v0_3 = gDisplayListHead;
                    gDisplayListHead = temp_v0_3 + 8;
                    temp_v0_3->unk4 = &D_06010AE8;
                    temp_v0_3->unk0 = 0x6000000;
                } else {
                    temp_v0_4 = gDisplayListHead;
                    gDisplayListHead = temp_v0_4 + 8;
                    temp_v0_4->unk4 = &D_06010C10;
                    temp_v0_4->unk0 = 0x6000000;
                }
            } else {
                temp_v0_5 = gDisplayListHead;
                gDisplayListHead = temp_v0_5 + 8;
                temp_v0_5->unk0 = 0x6000000;
                temp_v0_5->unk4 = &D_06010D38;
            }
            temp_v0_6 = gDisplayListHead;
            gDisplayListHead = temp_v0_6 + 8;
            temp_v0_6->unk4 = 0x2000;
            temp_v0_6->unk0 = 0xB7000000;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_802A2AD0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8029794C(void *, void *, ?); // extern
s32 func_802B4FF8(? *, ?); // extern
? func_802B5F74(? *, void *, ? *); // extern
f32 func_802B80D0(void *, u16, ?, f32, f32); // extern
extern ? D_060185F8;
extern ? D_060186B8;
extern ? D_06018948;
extern ? D_06018A08;
extern ? D_06018C98;
extern ? D_06018D58;
extern ? D_802B886C;
extern f32 D_802B9A3C;
extern f32 D_802B9A40;
extern s32 *gDisplayListHead;

void func_802A2C78(void *arg0, ? arg1, void *arg2) {
    ? spA8;
    ? sp68;
    s16 sp62;
    void *sp20;
    f32 temp_f0;
    s16 temp_a2;
    s16 temp_v0;
    s32 *temp_v0_10;
    s32 *temp_v0_11;
    s32 *temp_v0_12;
    s32 *temp_v0_13;
    s32 *temp_v0_14;
    s32 *temp_v0_15;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s32 *temp_v0_4;
    s32 *temp_v0_5;
    s32 *temp_v0_6;
    s32 *temp_v0_7;
    s32 *temp_v0_8;
    s32 *temp_v0_9;
    void *temp_a1;
    s32 *phi_v0;

    spA8.unk0 = D_802B886C.unk0;
    spA8.unk4 = D_802B886C.unk4;
    temp_v0 = arg2->unk2;
    temp_a1 = arg2 + 0x18;
    if (((temp_v0 & 0x800) == 0) && (sp20 = temp_a1, sp62 = temp_v0, temp_f0 = func_802B80D0(temp_a1, arg0->unk26, 0, (&D_80150130)[(arg0 - camera1) / 0xB8], D_802B9A3C), !(temp_f0 < 0.0f))) {
        if (((temp_v0 & 0x400) == 0) && (temp_f0 < D_802B9A40)) {
            func_8029794C(sp20, arg2 + 0x10, 0x40000000);
        }
        func_802B5F74(&sp68, sp20, &spA8);
        if (func_802B4FF8(&sp68, 0) != 0) {
            temp_v0_2 = gDisplayListHead;
            gDisplayListHead = temp_v0_2 + 8;
            temp_v0_2->unk4 = 0;
            temp_v0_2->unk0 = 0xBA000E02;
            temp_v0_3 = gDisplayListHead;
            gDisplayListHead = temp_v0_3 + 8;
            temp_v0_3->unk4 = 0x20000;
            temp_v0_3->unk0 = 0xB7000000;
            temp_a2 = arg2->unk4;
            if (temp_a2 != 0) {
                if (temp_a2 != 1) {
                    if (temp_a2 != 2) {
                        return;
                    }
                    temp_v0_4 = gDisplayListHead;
                    gDisplayListHead = temp_v0_4 + 8;
                    temp_v0_4->unk4 = &D_06018D58;
                    temp_v0_4->unk0 = 0x6000000;
                    temp_v0_5 = gDisplayListHead;
                    gDisplayListHead = temp_v0_5 + 8;
                    temp_v0_5->unk4 = 0x2000;
                    temp_v0_5->unk0 = 0xB6000000;
                    temp_v0_6 = gDisplayListHead;
                    gDisplayListHead = temp_v0_6 + 8;
                    temp_v0_6->unk4 = &D_06018C98;
                    temp_v0_6->unk0 = 0x6000000;
                    temp_v0_7 = gDisplayListHead;
                    gDisplayListHead = temp_v0_7 + 8;
                    temp_v0_7->unk4 = 0x2000;
                    phi_v0 = temp_v0_7;
                    goto block_13;
                }
                temp_v0_8 = gDisplayListHead;
                gDisplayListHead = temp_v0_8 + 8;
                temp_v0_8->unk4 = &D_06018A08;
                temp_v0_8->unk0 = 0x6000000;
                temp_v0_9 = gDisplayListHead;
                gDisplayListHead = temp_v0_9 + 8;
                temp_v0_9->unk4 = 0x2000;
                temp_v0_9->unk0 = 0xB6000000;
                temp_v0_10 = gDisplayListHead;
                gDisplayListHead = temp_v0_10 + 8;
                temp_v0_10->unk4 = &D_06018948;
                temp_v0_10->unk0 = 0x6000000;
                temp_v0_11 = gDisplayListHead;
                gDisplayListHead = temp_v0_11 + 8;
                temp_v0_11->unk4 = 0x2000;
                phi_v0 = temp_v0_11;
                goto block_13;
            }
            temp_v0_12 = gDisplayListHead;
            gDisplayListHead = temp_v0_12 + 8;
            temp_v0_12->unk4 = &D_060186B8;
            temp_v0_12->unk0 = 0x6000000;
            temp_v0_13 = gDisplayListHead;
            gDisplayListHead = temp_v0_13 + 8;
            temp_v0_13->unk4 = 0x2000;
            temp_v0_13->unk0 = 0xB6000000;
            temp_v0_14 = gDisplayListHead;
            gDisplayListHead = temp_v0_14 + 8;
            temp_v0_14->unk4 = &D_060185F8;
            temp_v0_14->unk0 = 0x6000000;
            temp_v0_15 = gDisplayListHead;
            gDisplayListHead = temp_v0_15 + 8;
            temp_v0_15->unk4 = 0x2000;
            phi_v0 = temp_v0_15;
block_13:
            *phi_v0 = 0xB7000000;
            // Duplicate return node #14. Try simplifying control flow for better match
            return;
        }
        // Duplicate return node #14. Try simplifying control flow for better match
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_802A2C78.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_802A171C(s32, ? *); // extern
? func_802A1EA0(s32, ? *); // extern
extern s32 D_8015F8DC;
extern ? D_8015F9B8;
extern ? D_80162578;

void func_802A2F34(void *arg0) {
    ? *temp_s0;
    s16 temp_v0;
    s32 temp_s1;
    ? *phi_s0;

    temp_s1 = arg0->unk4;
    D_8015F8DC = 0;
    phi_s0 = &D_8015F9B8;
    do {
        if (phi_s0->unk2 != 0) {
            temp_v0 = phi_s0->unk0;
            if (temp_v0 != 0xC) {
                if (temp_v0 != 0xD) {
                    if (temp_v0 != 0x2B) {

                    } else {
                        func_802A1EA0(temp_s1, phi_s0);
                    }
                } else {
                    func_802A171C(temp_s1, phi_s0);
                }
            } else {
                func_802A1EA0(temp_s1, phi_s0);
            }
        }
        temp_s0 = phi_s0 + 0x70;
        phi_s0 = temp_s0;
    } while (temp_s0 != &D_80162578);
}
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_802A2F34.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
/*
Failed to decompile function func_802A3008:

Unable to determine jump table for jr instruction at func_802A3008.s line 121.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
*/
#else
GLOBAL_ASM("asm/non_matchings/code_actors/func_802A3008.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
/*
Failed to decompile function update_simple_objects:

Unable to determine jump table for jr instruction at update_simple_objects.s line 19.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
*/
#else
GLOBAL_ASM("asm/non_matchings/code_actors/update_simple_objects.s")
#endif
