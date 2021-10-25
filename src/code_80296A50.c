#include <ultra64.h>
#include <PR/os.h>
#include <macros.h>
#include "types.h"
#include <common_structs.h>

extern s32 D_800DDB40;
/*
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
*/
GLOBAL_ASM("asm/non_matchings/code_80296A50/func_80296A50.s")


GLOBAL_ASM("asm/non_matchings/code_80296A50/func_80296D10.s")


// 801646F0     // 80161B68
// Actor leave screen
/*
void func_80297230(Camera *arg0, Item *arg1) {
    switch((arg0 - D_800DDB40) / 0xB8) { // / 0xB8
        case 0:
            arg1->unk2 = (s16) (arg1->unk2 & 0xFFFE);
            break;
        case 1:
            arg1->unk2 = (s16) (arg1->unk2 & 0xFFFD);
            break;
        case 2:
            arg1->unk2 = (s16) (arg1->unk2 & 0xFFFB);
            break;
        case 3:
            arg1->unk2 = (s16) (arg1->unk2 & 0xFFF7);
            break;
    }
}
*/
GLOBAL_ASM("asm/non_matchings/code_80296A50/func_80297230.s")
/*
void func_802972B8(Camera *arg0, Item *arg1) {
        switch((arg0 - D_800DDB40) / 0xB8) {
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

*/
GLOBAL_ASM("asm/non_matchings/code_80296A50/func_802972B8.s")
/*
void func_80297340(void *arg0) {
    ? sp38;
    s16 sp36;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;

    sp36 = (s16) (s32) D_8015F8D0.unk8;
    if ((D_800DC50C != 9) && (func_802B5520(&sp38, &D_8015F8D0), (func_802B4FF8(&sp38, 0) != 0))) {
        if ((f32) sp36 < arg0->unk8) {
            if (D_800DC5BC != 0) {
                temp_v0 = gDisplayListHead;
                gDisplayListHead = (void *) (temp_v0 + 8);
                temp_v0->unk0 = 0xF8000000;
                temp_v0->unk4 = (s32) ((D_801625EC << 0x18) | ((D_801625F4 & 0xFF) << 0x10) | ((D_801625F0 & 0xFF) << 8) | 0xFF);
                temp_v0_2 = gDisplayListHead;
                gDisplayListHead = (void *) (temp_v0_2 + 8);
                temp_v0_2->unk0 = 0x6000000;
                temp_v0_2->unk4 = &D_0D001C20;
                return;
            }
            temp_v0_3 = gDisplayListHead;
            gDisplayListHead = (void *) (temp_v0_3 + 8);
            temp_v0_3->unk4 = 0xD001B90;
            temp_v0_3->unk0 = 0x6000000;
            return;
        }
        if (D_800DC5BC != 0) {
            temp_v0_4 = gDisplayListHead;
            gDisplayListHead = (void *) (temp_v0_4 + 8);
            temp_v0_4->unk0 = 0xF8000000;
            temp_v0_4->unk4 = (s32) ((D_801625EC << 0x18) | ((D_801625F4 & 0xFF) << 0x10) | ((D_801625F0 & 0xFF) << 8) | 0xFF);
            temp_v0_5 = gDisplayListHead;
            gDisplayListHead = (void *) (temp_v0_5 + 8);
            temp_v0_5->unk0 = 0x6000000;
            temp_v0_5->unk4 = &D_0D001C88;
            return;
        }
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = (void *) (temp_v0_6 + 8);
        temp_v0_6->unk4 = 0xD001BD8;
        temp_v0_6->unk0 = 0x6000000;
        // Duplicate return node #9. Try simplifying control flow for better match
    }
}
void func_802976D8(void *arg0) {
    arg0->unk0 = 0x4000;
    arg0->unk2 = 0;
    arg0->unk4 = 0;
}

*/
GLOBAL_ASM("asm/non_matchings/code_80296A50/func_80297340.s")

GLOBAL_ASM("asm/non_matchings/code_80296A50/code_80296A50.s")