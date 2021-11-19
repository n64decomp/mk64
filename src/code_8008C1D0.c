#include <ultra64.h>
#include <macros.h>
#include "types.h"
#include "common_structs.h"
#include "functions.h"

// external funcs
extern s32 func_80031F48(Player *player, float arg1);
extern s32 func_8006B8B4();
extern s32 gModeSelection;
extern s16 D_80165190[4][8];
extern f32 D_80165280[];
extern s32 D_80165420[];
extern s32 D_80165440[];
extern s32 D_80165460[];
extern s32 D_80165480[];
// unk extern
extern s32 D_8018D920[];





// this file funcs
extern s32 func_8008D0E4(); // static
extern s32 func_8008D3B0(); // static
extern s32 func_8008D554(); // static
extern s32 func_8008D760(); // static
extern s32 func_8008D97C(); // static
extern s32 func_8008E884(); // static
extern s32 func_8008EC34(); // static
extern s32 func_8008EEC4(); // static
extern s32 func_8008F0E8(void *); // static
extern s32 func_8008F3E0(void *); // static
extern s32 func_8008F5A4(void *, s8); // static
extern s32 func_8008FEDC(void *, s8); // static

extern void func_8008C8C4(Player *player, s8 arg1);
extern void func_8008C6D0(Player *player, s8 arg1);
extern void func_800C90F4();
extern void func_800C9060();
extern void func_800098FC();

extern f32 D_800E37B0[];
extern f32 D_800E3790[];
extern u16 D_800DC51C;

// bss
extern s32 D_801643B8[];

UNUSED void func_unnamed(void) {

}

UNUSED void func_8008C1D8(UNUSED s32 arg0) {

}

UNUSED void func_8008C1E0(UNUSED s32 arg0, UNUSED s32 arg1)  {
        arg1 = 4;
}

UNUSED void func_unnamed1(UNUSED s32 arg0) {

}

UNUSED void func_unnamed2(UNUSED s32 arg0) {

}

UNUSED void func_unnamed3(void) {

}

UNUSED void func_8008C204(void) {

}

UNUSED void func_unnamed4(void) {

}

UNUSED void func_8008C214(void) {

}

UNUSED void func_unnamed5(void) {

}

UNUSED void func_unnamed6(void) {

}

UNUSED void func_unnamed7(void) {

}

UNUSED void func_unnamed8(void) {

}

UNUSED void func_8008C23C(void) {

}

UNUSED void func_unnamed9(void) {

}
UNUSED void func_unnamed10(void) {

}
UNUSED void func_unnamed11(void) {

}
UNUSED void func_unnamed12(void) {

}
UNUSED void func_unnamed13(void) {

}
UNUSED void func_unnamed14(void) {

}
UNUSED void func_unnamed15(void) {

}
UNUSED void func_unnamed16(void) {

}
UNUSED void func_unnamed17(void) {

}
UNUSED void func_unnamed18(void) {

}
UNUSED void func_unnamed19(void) {

}
UNUSED void func_unnamed20(void) {

}
UNUSED void func_unnamed21(void) {

}

UNUSED void func_unnamed22(UNUSED s32 arg0, UNUSED s32 arg1) {
    arg1 = 4;
}

UNUSED void func_unnamed23(void) {

}

UNUSED void func_unnamed24(void) {

}

UNUSED void func_unnamed25(void) {

}

UNUSED void func_unnamed26(void) {

}

UNUSED void func_unnamed27(void) {


}

UNUSED void func_unnamed28(void) {

}

UNUSED void func_unnamed29(void) {

}

UNUSED void func_unnamed30(void) {

}

UNUSED void func_unnamed31(void) {

}

UNUSED void func_unnamed32(void) {

}

UNUSED void func_unnamed33(void) {

}


void func_8008C310(Player *player) {
    if ((player->unk_00C & 2) || (player->unk_00C & 4) || ((player->unk_00C << 9) < 0) || (player->unk_00C & 0x1000000)) {
        player->unk_0B6 = ((u16)player->unk_0B6 | 0x1000);
    }
}

UNUSED void func_unnamed34(void) {

}

void func_8008C354(Player *player, s8 arg1) {

    if ((player->unk_0BC & 0x400) == 0x400) {
        func_8008C6D0(player, arg1);
    }
    if (((player->unk_0BC & 0x80) == 0x80) || (player->unk_0BC & 0x40) == 0x40) {
        func_8008C8C4(player, arg1);
    }
    if ((player->unk_0BC & 0x800) == 0x800) {
        func_8008D0E4(player, arg1);
    }
    if ((player->unk_044 & 0x4000) != 0) {
        func_8008D3B0(player, arg1);
    }
    if ((player->unk_0BC & 0x2000) == 0x2000) {
        func_8008D554(player);
    }
    if ((player->unk_0BC & 0x80000) == 0x80000) {
        func_8008D760(player);
    }
    if ((player->unk_0BC & 0x800000) == 0x800000) {
        func_8008D97C(player);
    }
    if ((player->unk_0BC & 0x1000000) == 0x1000000) {
        func_8008E884(player, arg1);
    }
    if ((player->unk_0BC & 0x2000000) == 0x2000000) {
        func_8008EC34(player, arg1);
    }
    if ((player->unk_0BC & 0x100000) == 0x100000) {
        func_8008EEC4(player);
    }
    if ((player->unk_0BC & 4) == 4) {
        func_8008F0E8(player);
    }
    if ((player->unk_0BC & 0x4000) == 0x4000) {
        func_8008F3E0(player);
    }
    if ((player->unk_0BC & 0x10000) == 0x10000) {
        func_8008F5A4(player, arg1);
    }
    if ((player->unk_0BC & 0x10000000) == 0x10000000) {
        func_8008FEDC(player, arg1);
    }
    player->unk_044 = (s16) (player->unk_044 & 0xFFFE);
    player->unk_0BC = (s32) (player->unk_0BC & ~0x20);
}

void func_8008C528(Player *player, s8 arg1) {
    UNUSED s32 sp24;
    s32 temp_v1;
    func_8008C354(player, arg1);
    func_8008C310(player);
    temp_v1 = player->characterId;
    player->unk_0C2 = 0;
    player->kartHopJerk = D_800E37B0[temp_v1];
    player->kartHopAcceleration = 0.0f;

    player->kartHopVelocity = D_800E3790[temp_v1];
    player->unk_0A8 = 0;
    player->unk_0BC = player->unk_0BC | 0x400;
    player->unk_0BC = player->unk_0BC & ~0x10;
    player->unk_0C0 = 0;
    player->unk_236 = 2;
    player->unk_042 = 0;
    if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) != 0x100)) {
        func_800C90F4( (u8) arg1, (temp_v1 * 0x10) + 0x29008005);
        func_800C9060( (u8) arg1, 0x19009005);
    } else {
        func_800098FC(arg1, player);
    }
    player->unk_00C = (s32) (player->unk_00C & ~4);
}

void func_8008C62C(Player *player, s8 arg1) {

    func_80031F48(player, 5.0f);
    player->unk_0A8 += (s16)0xA0;
    player->unk_042 += (s16)0x71C;
    if (player->unk_0A8 >= 0x2000) {
        player->unk_0A8 = 0;
        player->unk_236 = (s16) (player->unk_236 - 1);
        if (player->unk_236 == 0) {
            player->unk_0A8 = 0x2000;
            func_8008C6D0(player, arg1);
            if (gModeSelection == 3) {
                func_8006B8B4(player, arg1);
            }
        }
    }
}

void func_8008C6D0(Player *player, s8 arg1) {

    player->unk_206 = 0;
    player->unk_0C4 = 0;
    player->unk_0BC = (s32) (player->unk_0BC & ~0x400);
    player->unk_0A8 = 0;
    player->unk_0C0 = 0;
    player->unk_07C = 0;
    player->unk_236 = 0;
    player->unk_078 = 0;
    player->unk_09C = 0.0f;
    D_80165190[0][arg1] = 1;
    D_80165190[1][arg1] = 1;
    D_80165190[2][arg1] = 1;
    D_80165190[3][arg1] = 1;
    player->unk_042 = 0;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_800098FC(s8, void *, void *, u16);           /* extern */
? func_8008C354(s8);                                /* extern */
? func_800C90F4(s32, s32, void *, u16);             /* extern */
extern ? D_80165190;
extern ? D_80165280;
extern ? D_80165420;
extern ? D_80165440;
extern ? D_80165460;
extern ? D_80165480;
extern ? D_8018D920;

void func_8008C73C(void *arg0, s8 arg1) {
    s32 temp_a0;
    s32 temp_t0;
    s32 temp_v0;
    s32 temp_v0_2;
    u16 temp_a3;
    void *temp_v1;

    func_8008C354(arg1);
    temp_v0 = arg0->unkBC;
    if (((temp_v0 & 0x80) != 0x80) && ((temp_v0 & 0x40) != 0x40)) {
        temp_t0 = temp_v0 & ~0x10;
        arg0->unkBC = temp_t0;
        temp_a0 = arg1 * 2;
        if ((arg0->unkC0 / 182) >= 0) {
            arg0->unkBC = temp_t0 | 0x40;
        } else {
            arg0->unkBC = arg0->unkBC | 0x80;
        }
        arg0->unkB6 = arg0->unkB6 | 0x80;
        arg0->unkB2 = 2;
        arg0->unkC0 = 0;
        arg0->unk7C = 0;
        arg0->unk78 = 0;
        temp_v1 = temp_a0 + &D_80165190;
        arg0->unkAE = arg0->unk2E;
        temp_v1->unk0 = 1;
        temp_v1->unk10 = 1;
        temp_v1->unk20 = 1;
        temp_v1->unk30 = 1;
        temp_v0_2 = arg1 * 4;
        *(&D_80165280 + temp_v0_2) = arg0->unk9C;
        *(&D_80165480 + temp_v0_2) = 0;
        *(&D_80165460 + temp_v0_2) = 0;
        *(&D_80165440 + temp_v0_2) = 0;
        *(&D_80165420 + temp_v0_2) = 0;
        *(&D_8018D920 + temp_a0) = 0;
        temp_a3 = arg0->unk0;
        if (((temp_a3 & 0x4000) == 0x4000) && ((temp_a3 & 0x100) != 0x100)) {
            func_800C90F4(arg1 & 0xFF, (arg0->unk254 * 0x10) + 0x29008003, arg0, temp_a3);
            return;
        }
        func_800098FC(arg1, arg0, arg0, temp_a3);
        /* Duplicate return node #9. Try simplifying control flow for better match */
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008C73C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
extern u16 D_800DC51C;
extern ? D_801643B8;
extern ? D_80165190;
extern ? D_80165460;
extern s32 gModeSelection;

void func_8008C8C4(void *arg0, s8 arg1) {
    s32 temp_t1;
    s32 temp_t9;
    s32 temp_v1;
    void *temp_v0;

    temp_t9 = arg0->unkBC & ~0x80;
    temp_t1 = temp_t9 & ~0x40;
    arg0->unkBC = temp_t9;
    arg0->unkBC = temp_t1;
    arg0->unkA8 = 0;
    arg0->unk7C = 0;
    arg0->unkC0 = 0;
    arg0->unkBC = temp_t1 & ~0x800;
    temp_v0 = (arg1 * 2) + &D_80165190;
    arg0->unk2E = arg0->unkAE;
    temp_v0->unk0 = 1;
    temp_v0->unk10 = 1;
    temp_v0->unk20 = 1;
    temp_v0->unk30 = 1;
    temp_v1 = arg1 * 4;
    arg0->unk46 = arg0->unk46 & 0xFFBF;
    if ((*(&D_80165460 + temp_v1) == 1) && ((arg0->unk0 & 0x4000) == 0x4000)) {
        arg0->unk9C = arg0->unk9C + 100.0f;
    }
    if ((gModeSelection == 2) && ((arg0->unk0 & 0x1000) == 0x1000) && (D_800DC51C == 0) && ((arg0->unkCA & 2) == 0) && (*(&D_801643B8 + temp_v1) != 0)) {
        arg0->unkC = arg0->unkC | 0x400000;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008C8C4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_80031F48(void *, ?);                         /* extern */
? func_8006B8B4(void *, s8, ? *);                   /* extern */
? func_8008C8C4(void *, s8);                        /* extern */
extern ? D_80165460;
extern ? D_80165480;
extern ? D_8018D920;
extern s32 gModeSelection;
static ? D_800E6F60;                                /* unable to generate initializer; const */

void func_8008C9EC(void *arg0, s8 arg1) {
    ? sp30;
    s16 *temp_a0;
    s16 *temp_a0_2;
    s16 *temp_v0;
    s16 *temp_v0_2;
    s16 temp_t7;
    s16 temp_t8;
    s16 temp_v1;
    s16 temp_v1_2;
    s32 temp_t7_2;

    sp30.unk0 = D_800E6F60.unk0;
    sp30.unk4 = D_800E6F60.unk4;
    sp30.unk8 = D_800E6F60.unk8;
    arg0->unk206 = 0;
    arg0->unkC4 = 0;
    if ((arg0->unk46 & 0x40) == 0x40) {
        func_80031F48(0x42C80000);
    } else {
        if ((arg0->unk0 & 0x4000) == 0x4000) {
            func_80031F48(arg0, 0x3F800000);
        } else {
            func_80031F48(arg0, 0x40800000);
        }
        if ((arg0->unk0 & 0x4000) == 0) {
            func_80031F48(arg0, 0x41F00000);
        }
    }
    if ((arg0->unkBC & 0x80) == 0x80) {
        temp_a0 = &sp30 + (arg0->unkB2 * 2);
        arg0->unk2E = arg0->unk2E - *temp_a0;
        temp_v0 = (arg1 * 2) + &D_8018D920;
        temp_t7 = *temp_v0 - *temp_a0;
        *temp_v0 = temp_t7;
        temp_v1 = arg0->unkB2;
        if (((temp_t7 & 0xFFFF) / (0x10000 / (0x168 / (*(&sp30 + (temp_v1 * 2)) / 182)))) == 0) {
            arg0->unkB2 = temp_v1 - 1;
            if (arg0->unkB2 <= 0) {
                if (gModeSelection == 3) {
                    func_8006B8B4(arg0, arg1, &sp30);
                }
                func_8008C8C4(arg0, arg1);
            }
        }
    } else {
        temp_a0_2 = (arg0->unkB2 * 2) + &sp30;
        arg0->unk2E = arg0->unk2E + *temp_a0_2;
        temp_v0_2 = (arg1 * 2) + &D_8018D920;
        temp_t8 = *temp_v0_2 - *temp_a0_2;
        *temp_v0_2 = temp_t8;
        temp_v1_2 = arg0->unkB2;
        if (((temp_t8 & 0xFFFF) / (0x10000 / (0x168 / ((sp + (temp_v1_2 * 2))->unk30 / 182)))) == 0) {
            arg0->unkB2 = temp_v1_2 - 1;
            if (arg0->unkB2 <= 0) {
                func_8008C8C4(arg0, arg1);
                if (gModeSelection == 3) {
                    func_8006B8B4(arg0, arg1);
                }
            }
        }
    }
    temp_t7_2 = arg1 * 4;
    if ((*(&D_80165460 + temp_t7_2) == 1) && ((arg0->unk0 & 0x4000) == 0x4000)) {
        *(&D_80165480 + temp_t7_2) = 0x78;
        if (arg0->unk9C <= 90.0f) {
            arg0->unk9C = 90.0f;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008C9EC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8008C354(s8);                                /* extern */
? func_8008C73C(void *, s8);                        /* extern */

void func_8008CDC0(void *arg0, s8 arg1) {
    s32 temp_t0;
    s32 temp_t1;

    func_8008C354(arg1);
    temp_t0 = arg0->unkBC & ~0x10;
    temp_t1 = arg0->unk7C >> 0x10;
    arg0->unkC = arg0->unkC & ~1;
    arg0->unkB4 = 0;
    arg0->unkAC = 1;
    arg0->unkBC = temp_t0;
    arg0->unkB8 = 3.0f;
    if ((temp_t1 >= 0x14) || (temp_t1 < -0x13) || (((arg0->unk94 / 18.0f) * 216.0f) <= 30.0f) || ((temp_t0 & 8) != 0) || (((arg0->unk0 & 0x4000) == 0) && ((temp_t0 & 0x1000) == 0))) {
        func_8008C73C(arg0, arg1);
        return;
    }
    arg0->unkBC = temp_t0 | 0x800;
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008CDC0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8008C73C(void *, s8, s16, s16);              /* extern */
? func_800C90F4(u8, s32, s16, s16);                 /* extern */

void func_8008CEB0(void *arg0, s8 arg1) {
    f32 sp2C;
    s16 sp2A;
    s16 sp28;
    s16 sp26;
    f32 temp_f0;
    f32 temp_f0_2;
    s16 temp_a3;
    s16 temp_a3_2;
    s16 temp_lo;
    s16 temp_v1;
    s32 temp_f16;
    s32 temp_v0;
    s32 temp_v0_2;
    s16 phi_a2;
    s16 phi_a3;
    s32 phi_a2_2;
    s16 phi_a2_3;
    f32 phi_f0;
    s16 phi_v1;

    temp_v1 = arg0->unkB4 + 1;
    temp_f0 = arg0->unkB8;
    temp_a3 = arg0->unkAC;
    temp_f16 = (temp_v1 * temp_f0) - (0.2 * (temp_v1 * temp_v1));
    phi_a2 = temp_f16;
    phi_a3 = temp_a3;
    phi_f0 = temp_f0;
    phi_v1 = temp_v1;
    if ((temp_v1 != 0) && (temp_f16 < 0)) {
        temp_v0 = arg0->unkBC;
        temp_a3_2 = temp_a3 * -1;
        temp_f0_2 = temp_f0 * 0.8;
        phi_a3 = temp_a3_2;
        phi_f0 = temp_f0_2;
        phi_v1 = 0;
        if ((temp_v0 & 1) == 1) {
            arg0->unkBC = temp_v0 | 0x40000;
        }
        if (temp_f0_2 <= 1.0f) {
            temp_v0_2 = arg0->unkBC & ~0x800;
            arg0->unkBC = temp_v0_2;
            if ((temp_v0_2 & 0x40000) != 0x40000) {
                sp2A = 0;
                sp26 = temp_f16;
                sp28 = temp_a3_2;
                sp2C = temp_f0_2;
                func_8008C73C(arg0, arg1, temp_f16, temp_a3_2);
                goto block_9;
            }
            arg0->unkB6 = arg0->unkB6 | 0x20;
            arg0->unkBC = temp_v0_2 & 0xFFFBFFFF;
            if ((arg0->unk0 & 0x4000) == 0x4000) {
                sp2C = temp_f0_2;
                sp28 = temp_a3_2;
                sp26 = temp_f16;
                sp2A = 0;
                func_800C90F4(arg1, (arg0->unk254 * 0x10) + 0x29008008, temp_f16, temp_a3_2);
block_9:
                phi_a2 = temp_f16;
                phi_a3 = temp_a3 * -1;
                phi_f0 = sp2C;
                phi_v1 = 0;
            }
        }
    }
    temp_lo = phi_a2 * phi_a3;
    phi_a2_2 = temp_lo;
    if ((temp_lo <= 0) && (phi_a3 == 1)) {
        phi_a2_2 = 0;
    }
    phi_a2_3 = phi_a2_2;
    if ((phi_a2_2 >= 0) && (phi_a3 == -1)) {
        phi_a2_3 = 0;
    }
    arg0->unk78 = arg0->unk78 + (phi_a2_3 * 0x12);
    arg0->unkB8 = phi_f0;
    arg0->unkB4 = phi_v1;
    arg0->unkAC = phi_a3;
    if ((arg0->unkBC & 8) != 0) {
        func_8008C73C(arg0, arg1, phi_a2_3, phi_a3);
        arg0->unkBC = arg0->unkBC & ~0x800;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008CEB0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
void func_8008D0E4(void *arg0, ? arg1) {
    arg0->unkBC = arg0->unkBC & ~0x800;
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008D0E4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8008C354(s8);                                /* extern */

void func_8008D0FC(void *arg0, s8 arg1) {
    func_8008C354(arg1);
    arg0->unkC = arg0->unkC & ~0x80;
    arg0->unkB4 = 0;
    arg0->unkAC = 1;
    arg0->unkBC = arg0->unkBC & ~0x10;
    arg0->unk44 = arg0->unk44 | 0x4000;
    arg0->unkB8 = 2.0f;
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008D0FC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8008C73C(void *, s8, s16, s16);              /* extern */
? func_800C90F4(u8, s32, s16, s16);                 /* extern */

void func_8008D170(void *arg0, s8 arg1) {
    f32 sp2C;
    s16 sp2A;
    s16 sp28;
    s16 sp26;
    f32 temp_f0;
    f32 temp_f0_2;
    s16 temp_a3;
    s16 temp_a3_2;
    s16 temp_lo;
    s16 temp_v1;
    s32 temp_f16;
    s32 temp_v0;
    s32 temp_v0_2;
    s16 phi_a2;
    s16 phi_a3;
    s32 phi_a2_2;
    s16 phi_a2_3;
    f32 phi_f0;
    s16 phi_v1;

    temp_v1 = arg0->unkB4 + 1;
    temp_f0 = arg0->unkB8;
    temp_a3 = arg0->unkAC;
    temp_f16 = (temp_v1 * temp_f0) - (0.1 * (temp_v1 * temp_v1));
    phi_a2 = temp_f16;
    phi_a3 = temp_a3;
    phi_f0 = temp_f0;
    phi_v1 = temp_v1;
    if ((temp_v1 != 0) && (temp_f16 < 0)) {
        temp_v0 = arg0->unkBC;
        temp_a3_2 = temp_a3 * -1;
        temp_f0_2 = temp_f0 * 0.9;
        phi_a3 = temp_a3_2;
        phi_f0 = temp_f0_2;
        phi_v1 = 0;
        if (((temp_v0 & 1) == 1) || ((arg0->unk44 & 0x20) == 0)) {
            arg0->unkBC = temp_v0 | 0x40000;
        }
        if (temp_f0_2 <= 1.3) {
            temp_v0_2 = arg0->unkBC;
            arg0->unk44 = arg0->unk44 & 0xBFFF;
            if ((temp_v0_2 & 0x40000) != 0x40000) {
                sp2A = 0;
                sp26 = temp_f16;
                sp28 = temp_a3_2;
                sp2C = temp_f0_2;
                func_8008C73C(arg0, arg1, temp_f16, temp_a3_2);
                goto block_10;
            }
            arg0->unkB6 = arg0->unkB6 | 0x20;
            arg0->unkBC = temp_v0_2 & 0xFFFBFFFF;
            if ((arg0->unk0 & 0x4000) == 0x4000) {
                sp2C = temp_f0_2;
                sp28 = temp_a3_2;
                sp26 = temp_f16;
                sp2A = 0;
                func_800C90F4(arg1, (arg0->unk254 * 0x10) + 0x29008008, temp_f16, temp_a3_2);
block_10:
                phi_a2 = temp_f16;
                phi_a3 = temp_a3 * -1;
                phi_f0 = sp2C;
                phi_v1 = 0;
            }
        }
    }
    temp_lo = phi_a2 * phi_a3;
    phi_a2_2 = temp_lo;
    if ((temp_lo <= 0) && (phi_a3 == 1)) {
        phi_a2_2 = 0;
    }
    phi_a2_3 = phi_a2_2;
    if ((phi_a2_2 >= 0) && (phi_a3 == -1)) {
        phi_a2_3 = 0;
    }
    arg0->unk78 = arg0->unk78 + (phi_a2_3 * 0x14);
    arg0->unkB8 = phi_f0;
    arg0->unkB4 = phi_v1;
    arg0->unkAC = phi_a3;
    if ((arg0->unkBC & 8) != 0) {
        func_8008C73C(arg0, arg1, phi_a2_3, phi_a3);
        arg0->unk44 = arg0->unk44 & 0xBFFF;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008D170.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
void func_8008D3B0(void *arg0, ? arg1) {
    arg0->unk44 = arg0->unk44 & 0xBFFF;
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008D3B0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8008C354(s8);                                /* extern */
? func_800C9060(s32, ?);                            /* extern */
? func_800C9250(s32, s8);                           /* extern */
extern s32 D_800DC4DC;
extern u16 D_8015F890;

void func_8008D3C4(void *arg0, s8 arg1) {
    s32 sp24;
    s32 temp_a0;
    s32 temp_a0_2;
    s8 temp_a1;
    u16 temp_v0;

    temp_a1 = arg1;
    arg1 = temp_a1;
    func_8008C354(temp_a1);
    arg0->unkBC = arg0->unkBC | 0x2000;
    arg0->unkC = arg0->unkC & ~0x200;
    arg0->unkDB4 = 0;
    arg0->unkDBC = 8.0f;
    if (D_8015F890 != 1) {
        temp_v0 = arg0->unk0;
        if ((temp_v0 & 0x4000) == 0x4000) {
            temp_a0 = arg1 & 0xFF;
            if ((temp_v0 & 0x100) != 0x100) {
                sp24 = temp_a0;
                func_800C9250(temp_a0, arg1);
                func_800C9060(temp_a0, 0x1900A40B);
            }
        }
    } else {
        temp_a0_2 = arg1 & 0xFF;
        if (arg0 == D_800DC4DC) {
            sp24 = temp_a0_2;
            func_800C9250(temp_a0_2, arg1);
            func_800C9060(temp_a0_2, 0x1900A40B);
        }
    }
    arg0->unkDC = 0x50;
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008D3C4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_800225CC(void *, ?, ?, void *);              /* extern */

void func_8008D4B4(void *arg0) {
    s16 temp_v0;
    void *temp_a0;
    void *temp_a3;

    temp_v0 = arg0->unkDC;
    temp_a3 = arg0;
    arg0->unk9C = arg0->unk214;
    if (temp_v0 > 0) {
        arg0->unkDC = temp_v0 - 1;
    }
    if (arg0->unkDC != 0) {
        temp_a0 = temp_a3 + 0x80;
        arg0 = temp_a3;
        func_800225CC(temp_a0, 0x43C80000, 0x3F000000, temp_a3);
    } else {
        arg0 = temp_a3;
        func_800225CC(temp_a3 + 0x80, 0, 0x3DCCCCCD, temp_a3);
    }
    if (arg0->unk80 <= 1.0f) {
        arg0->unkBC = arg0->unkBC & ~0x2000;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008D4B4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
void func_8008D554(void *arg0) {
    arg0->unkBC = arg0->unkBC & ~0x2000;
    arg0->unk80 = 0.0f;
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008D554.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8008C354(s8);                                /* extern */
? func_800C9060(s32, ?, void *, s8);                /* extern */
? func_800C90F4(s32, s32, void *, s8);              /* extern */
extern ? D_800E3710;
extern ? D_800E3730;
extern ? D_8018D920;

void func_8008D570(void *arg0, s8 arg1) {
    s32 temp_a0;
    s32 temp_t0;
    s32 temp_t3;
    s32 temp_t8;
    u16 temp_v1;
    u16 temp_v1_2;
    void *temp_a2;
    s32 phi_a0;
    u16 phi_v1;
    void *phi_a2;

    func_8008C354(arg1);
    temp_a2 = arg0;
    temp_t8 = temp_a2->unkBC | 0x80000;
    temp_t0 = temp_t8 & ~0x10;
    temp_a2->unkBC = temp_t8;
    temp_t3 = temp_a2->unk254 * 4;
    temp_a2->unkBC = temp_t0;
    temp_a2->unkC = temp_a2->unkC & ~0x1000;
    temp_a2->unkAE = temp_a2->unk2E;
    temp_a2->unkF0 = *(&D_800E3730 + temp_t3);
    temp_a2->unkF4 = 0.0f;
    temp_a2->unkB2 = 1;
    temp_a2->unkC0 = 0;
    temp_a2->unk7C = 0;
    temp_a2->unk78 = 0;
    temp_a2->unkEC = *(&D_800E3710 + temp_t3);
    *(&D_8018D920 + (arg1 * 2)) = 0;
    temp_v1 = temp_a2->unk0;
    temp_a0 = temp_v1 & 0x4000;
    phi_a0 = temp_a0;
    phi_v1 = temp_v1;
    phi_a2 = temp_a2;
    if ((temp_a0 == 0x4000) && ((temp_v1 & 0x100) != 0x100)) {
        arg0 = temp_a2;
        func_800C9060(arg1 & 0xFF, 0x19008002, temp_a2, arg1);
        temp_v1_2 = arg0->unk0;
        phi_a0 = temp_v1_2 & 0x4000;
        phi_v1 = temp_v1_2;
        phi_a2 = arg0;
    }
    if ((phi_a0 == 0x4000) && ((phi_v1 & 0x100) != 0x100)) {
        func_800C90F4(arg1 & 0xFF, (phi_a2->unk254 * 0x10) + 0x2900800C, phi_a2, arg1);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008D570.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8008D760(s8);                                /* extern */
extern ? D_8018D920;

void func_8008D698(void *arg0, s8 arg1) {
    s16 *temp_v0;
    s16 temp_t5;
    s32 temp_t7;
    s32 phi_v1;

    if (arg0->unkB2 == 0) {
        arg0->unk2E = arg0->unkAE;
        phi_v1 = 0;
    } else {
        arg0->unk2E = arg0->unk2E - 0x71C;
        temp_v0 = (arg1 * 2) + &D_8018D920;
        temp_t5 = *temp_v0 - 0x71C;
        temp_t7 = ((temp_t5 & 0xFFFF) / 1820) << 0x10;
        *temp_v0 = temp_t5;
        phi_v1 = temp_t7 >> 0x10;
    }
    if (phi_v1 == 0) {
        arg0->unkB2 = arg0->unkB2 - 1;
        if (arg0->unkB2 <= 0) {
            arg0->unkB2 = 0;
        }
        if ((arg0->unkB2 == 0) && ((arg0->unkBC & 8) != 8)) {
            func_8008D760(arg1);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008D698.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
extern ? gKartGravityTable;

void func_8008D760(void *arg0) {
    arg0->unkA8 = 0;
    arg0->unk7C = 0;
    arg0->unkC0 = 0;
    arg0->unkBC = arg0->unkBC & 0xFFF7FFFF;
    arg0->unk2E = arg0->unkAE;
    arg0->unk0 = arg0->unk0 & 0xFF7F;
    arg0->unk100 = *(&gKartGravityTable + (arg0->unk254 * 4));
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008D760.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8008C354(s8);                                /* extern */
? func_800C90F4(s32, s32, void *, s8);              /* extern */
extern ? D_800E3750;
extern ? D_800E3770;
extern ? D_8018D920;

void func_8008D7B0(void *arg0, s8 arg1) {
    s32 temp_t0;
    s32 temp_t2;
    s32 temp_t5;
    s8 temp_a1;
    u16 temp_v1;

    temp_a1 = arg1;
    arg1 = arg1;
    func_8008C354(temp_a1);
    temp_t0 = arg0->unkBC | 0x800000;
    temp_t2 = temp_t0 & ~0x10;
    arg0->unkBC = temp_t0;
    temp_t5 = arg0->unk254 * 4;
    arg0->unkBC = temp_t2;
    arg0->unkC = arg0->unkC & 0xFFFDFFFF;
    arg0->unkAE = arg0->unk2E;
    arg0->unkF0 = *(&D_800E3770 + temp_t5);
    arg0->unkF4 = 0.0f;
    arg0->unkEC = *(&D_800E3750 + temp_t5);
    *(&D_8018D920 + (arg1 * 2)) = 0;
    temp_v1 = arg0->unk0;
    arg0->unkB2 = 4;
    arg0->unkC0 = 0;
    arg0->unk7C = 0;
    arg0->unk78 = 0;
    if (((temp_v1 & 0x4000) == 0x4000) && ((temp_v1 & 0x100) != 0x100)) {
        func_800C90F4(arg1 & 0xFF, (arg0->unk254 * 0x10) + 0x29008003, arg0, arg1);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008D7B0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8008D97C(s8);                                /* extern */
extern ? D_8018D920;

void func_8008D8B4(void *arg0, s8 arg1) {
    s16 *temp_v0;
    s16 temp_t5;
    s32 temp_t7;
    s32 phi_v1;

    if (arg0->unkB2 == 0) {
        arg0->unk2E = arg0->unkAE;
        phi_v1 = 0;
    } else {
        arg0->unk2E = arg0->unk2E - 0x71C;
        temp_v0 = (arg1 * 2) + &D_8018D920;
        temp_t5 = *temp_v0 - 0x71C;
        temp_t7 = ((temp_t5 & 0xFFFF) / 1820) << 0x10;
        *temp_v0 = temp_t5;
        phi_v1 = temp_t7 >> 0x10;
    }
    if (phi_v1 == 0) {
        arg0->unkB2 = arg0->unkB2 - 1;
        if (arg0->unkB2 <= 0) {
            arg0->unkB2 = 0;
        }
        if ((arg0->unkB2 == 0) && ((arg0->unkBC & 8) != 8)) {
            func_8008D97C(arg1);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008D8B4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
extern ? gKartGravityTable;

void func_8008D97C(void *arg0) {
    arg0->unkA8 = 0;
    arg0->unk7C = 0;
    arg0->unkC0 = 0;
    arg0->unkBC = arg0->unkBC & 0xFF7FFFFF;
    arg0->unk2E = arg0->unkAE;
    arg0->unk100 = *(&gKartGravityTable + (arg0->unk254 * 4));
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008D97C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
void func_8008D9C0(void *arg0) {
    arg0->unkDA0 = arg0->unkDA0 + 8.0f;
    if (arg0->unkDA0 >= 140.0f) {
        arg0->unkDA0 = 140.0f;
    }
    if (arg0->unkD98 == 1) {
        arg0->unkD9C = arg0->unkD9C + arg0->unkDA0;
        if (arg0->unkD9C >= 2002.0f) {
            arg0->unkDA0 = 10.0f;
            arg0->unkD98 = arg0->unkD98 * -1;
        }
    }
    if (arg0->unkD98 == -1) {
        arg0->unkD9C = arg0->unkD9C - arg0->unkDA0;
        if (arg0->unkD9C <= -2002.0f) {
            arg0->unkDA0 = 10.0f;
            arg0->unkD98 = arg0->unkD98 * -1;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008D9C0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_800098FC(s8, void *, void *, s8);            /* extern */
? func_8008C354(s8);                                /* extern */
? func_800C90F4(s32, s32, void *, s8);              /* extern */
extern ? D_80165190;
extern ? D_8018D990;

void func_8008DABC(void *arg0, s8 arg1) {
    s32 temp_a0;
    s8 temp_a1;
    s8 temp_a3;
    u16 temp_a1_2;
    u16 temp_v0_2;
    void *temp_a2;
    void *temp_v0;
    void *phi_a2;
    u16 phi_v0;
    s8 phi_a3;

    temp_a1 = arg1;
    arg1 = arg1;
    func_8008C354(temp_a1);
    temp_a2 = arg0;
    temp_a3 = arg1;
    phi_a2 = temp_a2;
    phi_a3 = temp_a3;
    if ((temp_a2->unkBC << 5) >= 0) {
        temp_a2->unkDB6 = 0;
        temp_a2->unk238 = 0;
        temp_a2->unkDC4 = 4.5f;
        *(&D_8018D990 + (temp_a3 * 4)) = 0;
        temp_a2->unkBC = temp_a2->unkBC & 0xF7FFFFEF;
        temp_v0 = (temp_a3 * 2) + &D_80165190;
        temp_v0->unk0 = 1;
        temp_v0->unk10 = 1;
        temp_v0->unk20 = 1;
        temp_v0->unk30 = 1;
        temp_a2->unkD98 = 1;
        temp_a2->unkD9C = 0.0f;
        temp_a2->unkDA0 = 65.0f;
        if ((temp_a2->unkC & 0x100) != 0) {
            temp_a2->unk46 = temp_a2->unk46 | 0x80;
        }
        temp_v0_2 = temp_a2->unk0;
        phi_v0 = temp_v0_2;
        if ((temp_v0_2 & 0x4000) != 0) {
            temp_a0 = temp_a3 & 0xFF;
            if ((temp_a2->unkBC & 0x4000000) == 0) {
                temp_a1_2 = temp_a2->unk254;
                arg1 = temp_a3;
                arg0 = temp_a2;
                func_800C90F4(temp_a0, (temp_a1_2 * 0x10) + 0x29008005, temp_a2, temp_a3);
                phi_a2 = arg0;
                phi_v0 = arg0->unk0;
                phi_a3 = arg1;
            }
        }
        phi_a2->unkBC = phi_a2->unkBC | 0x4000000;
        if ((phi_v0 & 0x1000) != 0) {
            func_800098FC(phi_a3, phi_a2, phi_a2, phi_a3);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008DABC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8008D9C0(f32, void *, s32, void *, s8);      /* extern */
? func_800C9060(f32, s32, ?, void *, s8);           /* extern */
? func_800C90F4(f32, s32, s32, void *, s8);         /* extern */
extern ? D_80165190;
extern ? D_8018D990;
extern ? gKartBoundingBoxTable;

void func_8008DC08(void *arg0, s8 arg1) {
    s16 temp_v0_3;
    s32 *temp_v1;
    s32 temp_t0;
    s32 temp_t2;
    s32 temp_v0;
    void *temp_v0_2;

    arg0->unkC2 = 0;
    arg0->unkA8 = 0;
    arg0->unk7C = 0;
    arg0->unkC0 = 0;
    arg0->unk8C = 0.0f;
    arg0->unk9C = 0.0f;
    if ((arg0->unk124 >= 600.0f) || ((arg0->unkBC & 0x1000) != 0)) {
        *(&D_8018D990 + (arg1 * 4)) = 3;
    }
    temp_v1 = (arg1 * 4) + &D_8018D990;
    temp_v0 = *temp_v1;
    if (temp_v0 != 0) {
        if (temp_v0 != 1) {
            if (temp_v0 != 2) {
                if (temp_v0 != 3) {
                    return;
                }
                temp_t0 = arg0->unkBC & 0xFBFFFFFF;
                temp_t2 = temp_t0 | 0x8000000;
                arg0->unkBC = temp_t0;
                arg0->unkDB6 = 0;
                arg0->unkBC = temp_t2;
                arg0->unkDC4 = 3.0f;
                arg0->unk224 = 1.0f;
                temp_v0_2 = (arg1 * 2) + &D_80165190;
                arg0->unk70 = *(&gKartBoundingBoxTable + (arg0->unk254 * 4));
                temp_v0_2->unk0 = 1;
                temp_v0_2->unk10 = 1;
                temp_v0_2->unk20 = 1;
                temp_v0_2->unk30 = 1;
                if ((arg0->unk0 & 0x4000) != 0) {
                    func_800C90F4(0.0f, arg1 & 0xFF, (arg0->unk254 * 0x10) + 0x29008008, arg0, arg1);
                }
                /* Duplicate return node #35. Try simplifying control flow for better match */
                return;
            }
            arg0->unk238 = arg0->unk238 + 1;
            if (arg0->unk238 >= 0x259) {
                *temp_v1 = 3;
                arg0->unk238 = 0;
            }
            if (arg0->unk124 >= 600.0f) {
                *temp_v1 = 3;
            }
            arg0->unkDC4 = 4.5f;
            arg0->unk18 = arg0->unk18 - 0.085;
            if ((arg0->unkBC & 8) != 8) {
                *temp_v1 = 3;
                arg0->unk238 = 0;
            }
            func_8008D9C0(0.0f, arg0, 3, arg0, arg1);
            return;
        }
        arg0->unkDC4 = 4.5f;
        arg0->unk238 = arg0->unk238 + 1;
        arg0->unk18 = arg0->unk18 + 0.13;
        if ((arg0->unk46 & 0x80) != 0) {
            if (arg0->unk238 >= 0x32) {
                *temp_v1 = 2;
                arg0->unk238 = 0;
                arg0->unk46 = arg0->unk46 & 0xFF7F;
            }
        } else if (arg0->unk238 >= 0x50) {
            *temp_v1 = 2;
            arg0->unk238 = 0;
        }
        arg0->unkDA0 = arg0->unkDA0 + 6.0f;
        if (arg0->unkDA0 >= 90.0f) {
            arg0->unkDA0 = 90.0f;
        }
        arg0->unkD9C = arg0->unkD9C + arg0->unkDA0;
        if (arg0->unkD9C >= 3458.0f) {
            arg0->unkDA0 = 0.0f;
            return;
        }
        /* Duplicate return node #35. Try simplifying control flow for better match */
        return;
    }
    temp_v0_3 = arg0->unk238;
    arg0->unkDC4 = 4.5f;
    if (temp_v0_3 < 0x3D) {
        arg0->unk238 = temp_v0_3 + 1;
    }
    if ((arg0->unk46 & 0x80) != 0) {
        if (((arg0->unkC & 0x100) == 0) && (*temp_v1 = 1, arg0->unk238 = 0, ((arg0->unk0 & 0x4000) != 0))) {
            func_800C9060(0.0f, arg1 & 0xFF, 0x1901904B, arg0, arg1);
            return;
        }
        /* Duplicate return node #35. Try simplifying control flow for better match */
        return;
    }
    arg0->unk238 = arg0->unk238 + 1;
    if ((arg0->unk238 >= 0x1E) && (*temp_v1 = 1, arg0->unk238 = 0, ((arg0->unk0 & 0x4000) != 0))) {
        func_800C9060(0.0f, arg1 & 0xFF, 0x1901904B, arg0, arg1);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008DC08.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_800098FC(s8, void *);                        /* extern */
? func_8006B8B4(void *, s8);                        /* extern */
? func_8008C354(s8);                                /* extern */
? func_800C90F4(s32, s32);                          /* extern */
extern ? D_80165190;
extern ? D_8018D920;
extern ? D_8018D930;
extern f32 gCourseTimer;
extern s32 gModeSelection;

void func_8008DF98(void *arg0, s8 arg1) {
    s32 temp_t1;
    s32 temp_t3;
    s32 temp_v1;
    u16 temp_a0;
    void *temp_v0;

    func_8008C354(arg1);
    temp_t1 = arg0->unkBC | 0x40020000;
    temp_t3 = temp_t1 & ~0x10;
    arg0->unkBC = temp_t1;
    arg0->unkC = arg0->unkC & ~0x4000;
    arg0->unkBC = temp_t3;
    arg0->unkB0 = 0;
    arg0->unk224 = 1.0f;
    temp_v1 = arg1 * 2;
    arg0->unk8C = arg0->unk8C * 0.6;
    temp_v0 = temp_v1 + &D_80165190;
    *(&D_8018D930 + (arg1 * 4)) = gCourseTimer;
    arg0->unkB2 = 2;
    arg0->unkC0 = 0;
    arg0->unk7C = 0;
    arg0->unk78 = 0;
    arg0->unkAE = arg0->unk2E;
    temp_v0->unk0 = 1;
    temp_v0->unk10 = 1;
    temp_v0->unk20 = 1;
    temp_v0->unk30 = 1;
    *(&D_8018D920 + temp_v1) = 0;
    temp_a0 = arg0->unk0;
    if (((temp_a0 & 0x4000) == 0x4000) && ((temp_a0 & 0x100) != 0x100)) {
        func_800C90F4(arg1 & 0xFF, (arg0->unk254 * 0x10) + 0x29008003);
    } else {
        func_800098FC(arg1, arg0);
    }
    if (gModeSelection == 3) {
        func_8006B8B4(arg0, arg1);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008DF98.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_800225CC(void *, f32, ?);                    /* extern */
? func_80031F48(void *, ?, s8);                     /* extern */
? func_8008DABC(void *, s8, s8);                    /* extern */
? func_8008E3C0(s8, s8, s8);                        /* extern */
? func_800C90F4(s32, s32, s8);                      /* extern */
extern ? D_80165190;
extern ? D_8018D920;
extern ? gKartBoundingBoxTable;

void func_8008E118(void *arg0, s8 arg1) {
    s16 *temp_v0_3;
    s16 temp_t0;
    s32 temp_a0;
    s32 temp_v0;
    s8 temp_a2;
    s8 temp_t1;
    void *temp_v0_2;
    void *temp_v0_4;
    s8 phi_a2;

    temp_v0 = arg0->unkBC;
    temp_a2 = arg1;
    phi_a2 = temp_a2;
    if (((temp_v0 & 0x8000) == 0x8000) && ((temp_v0 & 0x4000000) != 0x4000000)) {
        arg0->unkBC = temp_v0 & 0xFFFDFFFF;
        arg0->unkA8 = 0;
        arg0->unk7C = 0;
        arg0->unkC0 = 0;
        temp_t1 = arg1;
        arg0->unk2E = arg0->unkAE;
        arg1 = arg1;
        func_8008E3C0(temp_t1, temp_a2);
        temp_v0_2 = (arg1 * 2) + &D_80165190;
        temp_v0_2->unk0 = 1;
        temp_v0_2->unk10 = 1;
        temp_v0_2->unk20 = 1;
        temp_v0_2->unk30 = 1;
        func_8008DABC(arg0, arg1, arg1);
        return;
    }
    temp_a0 = temp_a2 * 2;
    if ((temp_v0 & 0x20000) == 0x20000) {
        arg0->unk2E = arg0->unk2E - 0x5B0;
        temp_v0_3 = temp_a0 + &D_8018D920;
        temp_t0 = *temp_v0_3 - 0x5B0;
        *temp_v0_3 = temp_t0;
        if (((temp_t0 & 0xFFFF) / 1456) == 0) {
            arg0->unkB2 = arg0->unkB2 - 1;
            if (arg0->unkB2 <= 0) {
                arg0->unkA8 = 0;
                arg0->unkBC = arg0->unkBC & 0xFFFDFFFF;
                arg0->unk7C = 0;
                arg0->unkC0 = 0;
                temp_v0_4 = temp_a0 + &D_80165190;
                arg0->unk2E = arg0->unkAE;
                temp_v0_4->unk0 = 1;
                temp_v0_4->unk10 = 1;
                temp_v0_4->unk20 = 1;
                temp_v0_4->unk30 = 1;
            }
        }
        func_80031F48(arg0, 0x3F800000, temp_a2);
        return;
    }
    arg0->unkB0 = arg0->unkB0 + 1;
    arg0->unk8C = arg0->unk8C * 0.6;
    if ((arg0->unkB0 == 1) && ((arg0->unk0 & 0x4000) != 0)) {
        arg1 = temp_a2;
        func_800C90F4(temp_a2 & 0xFF, (arg0->unk254 * 0x10) + 0x29008005, temp_a2);
        phi_a2 = arg1;
    }
    if ((arg0->unkB0 >= 0) && (arg0->unkB0 < 0x1CC)) {
        func_800225CC(arg0 + 0x224, 0.7f, 0x3DCCCCCD);
        func_800225CC(arg0 + 0x70, *(&gKartBoundingBoxTable + (arg0->unk254 * 4)) * 0.9, 0x3DCCCCCD);
        return;
    }
    arg1 = phi_a2;
    func_8008E3C0(arg0, phi_a2, phi_a2);
    if ((arg0->unk0 & 0x4000) != 0) {
        func_800C90F4(arg1 & 0xFF, (arg0->unk254 * 0x10) + 0x29008008, arg1);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008E118.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_800225CC(void *, s32, ?, void *);            /* extern */
extern ? gKartBoundingBoxTable;

void func_8008E3C0(void *arg0, ? arg1) {
    s32 temp_t3;
    s32 temp_t9;
    void *temp_a3;

    temp_a3 = arg0;
    arg0 = temp_a3;
    func_800225CC(arg0 + 0x224, 0x3F800000, 0x3DCCCCCD, temp_a3);
    func_800225CC(arg0 + 0x70, *(&gKartBoundingBoxTable + (arg0->unk254 * 4)), 0x3DCCCCCD, arg0);
    temp_t9 = arg0->unkBC & 0xBFFFFFFF;
    arg0->unkBC = temp_t9;
    arg0->unk224 = 1.0f;
    temp_t3 = temp_t9 | 0x8000000;
    arg0->unkDB6 = 0;
    arg0->unkBC = temp_t3;
    arg0->unk70 = *(&gKartBoundingBoxTable + (arg0->unk254 * 4));
    arg0->unkDC4 = 3.0f;
    if ((temp_t3 & 0x20000) == 0x20000) {
        arg0->unk2E = arg0->unkAE;
    }
    arg0->unkBC = (temp_t9 | 0x8000000) & 0xFFFDFFFF;
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008E3C0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8006B8B4(s8, s32);                           /* extern */
extern ? D_80165190;
extern ? D_80165460;
extern s32 gModeSelection;

void func_8008E4A4(void *arg0, s8 arg1) {
    s32 temp_t2;
    s32 temp_t4;
    s8 temp_a1;
    u16 temp_t3;
    void *temp_v0;
    void *temp_v0_2;
    s8 phi_a1;

    temp_t2 = arg0->unkBC & ~0xC0;
    temp_t4 = temp_t2 & 8;
    temp_a1 = arg1;
    arg0->unk206 = 0;
    arg0->unkC4 = 0;
    arg0->unkC0 = 0;
    arg0->unk7C = 0;
    arg0->unkC2 = 0xF;
    arg0->unk42 = arg0->unk42 + 0xAAA;
    arg0->unkBC = temp_t2;
    arg0->unk8C = 0.0f;
    arg0->unk9C = 0.0f;
    arg0->unk34 = 0.0f;
    arg0->unk3C = 0.0f;
    phi_a1 = temp_a1;
    if (temp_t4 != 8) {
        arg0->unkE0 = arg0->unkE0 + 1;
    }
    if (arg0->unkE0 == 3) {
        arg0->unkBC = arg0->unkBC & 0xFEFFFFFF;
        arg0->unkA8 = 0;
        arg0->unk236 = 0;
        temp_v0 = (temp_a1 * 2) + &D_80165190;
        temp_v0->unk0 = 1;
        temp_v0->unk10 = 1;
        temp_v0->unk20 = 1;
        temp_v0->unk30 = 1;
        temp_t3 = arg0->unk0 & ~0x80;
        arg0->unk42 = 0;
        arg0->unk0 = temp_t3;
        if ((*(&D_80165460 + (temp_a1 * 4)) == 1) && ((temp_t3 & 0x4000) == 0x4000)) {
            arg0->unk9C = arg0->unk9C + 100.0f;
        }
        if (gModeSelection == 3) {
            func_8006B8B4(temp_a1, 3);
            return;
        }
        /* Duplicate return node #16. Try simplifying control flow for better match */
        return;
    }
    arg0->unkA8 = arg0->unkA8 + 0x80;
    if (arg0->unkA8 >= 0x2000) {
        arg0->unkA8 = 0;
        arg0->unk236 = arg0->unk236 - 1;
        if (arg0->unk236 == 0) {
            arg0->unkBC = arg0->unkBC & 0xFEFFFFFF;
            arg0->unk236 = 0;
            temp_v0_2 = (temp_a1 * 2) + &D_80165190;
            temp_v0_2->unk0 = 1;
            temp_v0_2->unk10 = 1;
            temp_v0_2->unk20 = 1;
            temp_v0_2->unk30 = 1;
            arg0->unk42 = 0;
            if (gModeSelection == 3) {
                arg1 = temp_a1;
                func_8006B8B4(temp_a1, 3);
                phi_a1 = arg1;
            }
            if ((*(&D_80165460 + (phi_a1 * 4)) == 1) && ((arg0->unk0 & 0x4000) == 0x4000)) {
                arg0->unk9C = arg0->unk9C + 100.0f;
            }
            arg0->unk0 = arg0->unk0 & 0xFF7F;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008E4A4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_800098FC(s8, void *, u16);                   /* extern */
? func_8008C310(void *);                            /* extern */
? func_8008C354(s8);                                /* extern */
? func_800C9060(u8, ?);                             /* extern */
? func_800C90F4(u8, s32, u16);                      /* extern */
? func_800CA24C(u8);                                /* extern */
extern u16 D_800DC51C;
extern ? D_800E3710;
extern ? D_800E3730;
extern ? D_80165420;
extern ? D_80165440;
extern ? D_80165460;
extern ? D_80165480;
extern s32 gModeSelection;

void func_8008E6C0(void *arg0, s8 arg1) {
    s32 sp20;
    s32 temp_t4;
    s32 temp_t7;
    s32 temp_t9;
    s32 temp_v0;
    u16 temp_a2;
    u16 temp_v1;

    func_8008C354(arg1);
    func_8008C310(arg0);
    temp_a2 = arg0->unk254;
    temp_t7 = arg0->unkBC | 0x1000000;
    temp_t9 = temp_t7 & ~0x10;
    arg0->unkBC = temp_t7;
    temp_v0 = temp_a2 * 4;
    arg0->unkA8 = 0;
    arg0->unkBC = temp_t9;
    arg0->unkF0 = 0.0f;
    arg0->unkF4 = 0.0f;
    arg0->unkEC = 0.0f;
    arg0->unkF0 = *(&D_800E3730 + temp_v0);
    temp_v1 = arg0->unk0;
    arg0->unk236 = 4;
    arg0->unk42 = 0;
    arg0->unkE0 = 0;
    arg0->unkEC = *(&D_800E3710 + temp_v0);
    if (((temp_v1 & 0x4000) == 0x4000) && ((temp_v1 & 0x100) != 0x100)) {
        if ((gModeSelection == 2) && ((temp_v1 & 0x1000) != 0) && (D_800DC51C == 0)) {
            func_800CA24C(arg1);
        }
        sp20 = arg1;
        func_800C90F4(arg1, (arg0->unk254 * 0x10) + 0x29008005, arg0->unk254);
        if ((gModeSelection == 2) && ((arg0->unk0 & 0x1000) != 0) && (D_800DC51C == 0)) {
            func_800CA24C(unksp23);
        }
        func_800C9060(unksp23, 0x19009005);
    } else {
        func_800098FC(arg1, arg0, temp_a2);
    }
    arg0->unkC = arg0->unkC & 0xFFB7FFFF;
    arg0->unkB6 = arg0->unkB6 | 0x40;
    temp_t4 = arg1 * 4;
    *(&D_80165480 + temp_t4) = 0;
    *(&D_80165460 + temp_t4) = 0;
    *(&D_80165440 + temp_t4) = 0;
    *(&D_80165420 + temp_t4) = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008E6C0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
extern ? D_80165190;

void func_8008E884(void *arg0, s8 arg1) {
    void *temp_v0;

    arg0->unkBC = arg0->unkBC & 0xFEFFFFFF;
    arg0->unkA8 = 0;
    arg0->unk236 = 0;
    temp_v0 = (arg1 * 2) + &D_80165190;
    temp_v0->unk0 = 1;
    temp_v0->unk10 = 1;
    temp_v0->unk20 = 1;
    temp_v0->unk30 = 1;
    arg0->unk42 = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008E884.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8006B8B4(s8);                                /* extern */
extern ? D_80165190;
extern ? D_80165460;
extern s32 gModeSelection;

void func_8008E8D8(void *arg0, s8 arg1) {
    s32 temp_t2;
    s32 temp_t4;
    void *temp_v0;
    void *temp_v0_2;

    temp_t2 = arg0->unkBC & ~0xC0;
    arg0->unk42 = arg0->unk42 + 0xAAA;
    temp_t4 = temp_t2 & 8;
    arg0->unk206 = 0;
    arg0->unkC4 = 0;
    arg0->unkC0 = 0;
    arg0->unk7C = 0;
    arg0->unkC2 = 0xF;
    arg0->unkBC = temp_t2;
    arg0->unk9C = 0.0f;
    arg0->unk8C = arg0->unk8C / 2.0f;
    if (temp_t4 != 8) {
        arg0->unkE0 = arg0->unkE0 + 1;
    }
    temp_v0 = (arg1 * 2) + &D_80165190;
    if (arg0->unkE0 == 4) {
        arg0->unkBC = arg0->unkBC & 0xFDFFFFFF;
        arg0->unkA8 = 0;
        arg0->unk236 = 0;
        temp_v0->unk30 = 1;
        temp_v0->unk0 = 1;
        temp_v0->unk10 = 1;
        temp_v0->unk20 = 1;
        arg0->unk42 = 0;
        if ((*(&D_80165460 + (arg1 * 4)) == 1) && ((arg0->unk0 & 0x4000) == 0x4000)) {
            arg0->unk9C = arg0->unk9C + 100.0f;
        }
        if (gModeSelection == 3) {
            func_8006B8B4(arg1);
            return;
        }
        /* Duplicate return node #15. Try simplifying control flow for better match */
        return;
    }
    arg0->unkA8 = arg0->unkA8 + 0x90;
    if (arg0->unkA8 >= 0x2000) {
        arg0->unkA8 = 0;
        arg0->unk236 = arg0->unk236 - 1;
        if (arg0->unk236 == 0) {
            arg0->unkBC = arg0->unkBC & 0xFDFFFFFF;
            arg0->unk236 = 0;
            temp_v0_2 = (arg1 * 2) + &D_80165190;
            temp_v0_2->unk0 = 1;
            temp_v0_2->unk10 = 1;
            temp_v0_2->unk20 = 1;
            temp_v0_2->unk30 = 1;
            arg0->unk42 = 0;
            if ((*(&D_80165460 + (arg1 * 4)) == 1) && ((arg0->unk0 & 0x4000) == 0x4000)) {
                arg0->unk9C = arg0->unk9C + 100.0f;
            }
            if (gModeSelection == 3) {
                func_8006B8B4(arg1);
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008E8D8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_800098FC(s8, void *);                        /* extern */
? func_8008C310(void *);                            /* extern */
? func_8008C354(s8);                                /* extern */
? func_800C9060(u8, ?);                             /* extern */
? func_800C90F4(u8, s32);                           /* extern */
extern ? D_800E3710;
extern ? D_800E3730;
extern ? D_80165420;
extern ? D_80165440;
extern ? D_80165460;
extern ? D_80165480;

void func_8008EAE0(void *arg0, s8 arg1) {
    s32 sp20;
    s32 temp_t7;
    s32 temp_v0;
    u16 temp_a0;
    u16 temp_v1;

    func_8008C354(arg1);
    func_8008C310(arg0);
    temp_v1 = arg0->unk254;
    temp_v0 = temp_v1 * 4;
    arg0->unkA8 = 0;
    arg0->unkBC = arg0->unkBC & ~0x10;
    arg0->unkF0 = 0.0f;
    arg0->unkF4 = 0.0f;
    arg0->unkEC = 0.0f;
    arg0->unkF0 = *(&D_800E3730 + temp_v0);
    temp_a0 = arg0->unk0;
    arg0->unk236 = 4;
    arg0->unk42 = 0;
    arg0->unkE0 = 0;
    arg0->unkEC = *(&D_800E3710 + temp_v0);
    if (((temp_a0 & 0x4000) == 0x4000) && ((temp_a0 & 0x100) != 0x100)) {
        sp20 = arg1;
        func_800C90F4(arg1, (temp_v1 * 0x10) + 0x29008005);
        func_800C9060(arg1, 0x19009005);
    } else {
        func_800098FC(arg1, arg0);
    }
    arg0->unkBC = arg0->unkBC | 0x2000000;
    arg0->unkB6 = arg0->unkB6 | 0x40;
    arg0->unkC = arg0->unkC & 0xFEFFFFFD;
    temp_t7 = arg1 * 4;
    *(&D_80165480 + temp_t7) = 0;
    *(&D_80165460 + temp_t7) = 0;
    *(&D_80165440 + temp_t7) = 0;
    *(&D_80165420 + temp_t7) = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008EAE0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
extern ? D_80165190;

void func_8008EC34(void *arg0, s8 arg1) {
    void *temp_v0;

    arg0->unkBC = arg0->unkBC & 0xFDFFFFFF;
    arg0->unkA8 = 0;
    arg0->unk236 = 0;
    temp_v0 = (arg1 * 2) + &D_80165190;
    temp_v0->unk0 = 1;
    temp_v0->unk10 = 1;
    temp_v0->unk20 = 1;
    temp_v0->unk30 = 1;
    arg0->unk42 = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008EC34.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8008C354(s8);                                /* extern */
? func_800C9060(s32, ?);                            /* extern */
? func_800C90F4(s32, s32, s8);                      /* extern */
extern s32 D_800DC4DC;
extern u16 D_8015F890;

void func_8008EC88(void *arg0, s8 arg1) {
    s32 sp24;
    s32 temp_a0;
    s32 temp_a0_2;
    s8 temp_a1;
    u16 temp_v0;

    temp_a1 = arg1;
    arg1 = arg1;
    func_8008C354(temp_a1);
    arg0->unkBC = arg0->unkBC | 0x100000;
    arg0->unkC = arg0->unkC & 0xFF7FFFFF;
    arg0->unkDB4 = 0;
    arg0->unkDBC = 8.0f;
    if (D_8015F890 != 1) {
        temp_v0 = arg0->unk0;
        if ((temp_v0 & 0x4000) == 0x4000) {
            temp_a0 = arg1 & 0xFF;
            if ((temp_v0 & 0x100) == 0) {
                sp24 = temp_a0;
                func_800C90F4(temp_a0, (arg0->unk254 * 0x10) + 0x29008001, arg1);
                func_800C9060(temp_a0, 0x1900A40B);
            }
        }
    } else {
        temp_a0_2 = arg1 & 0xFF;
        if (arg0 == D_800DC4DC) {
            sp24 = temp_a0_2;
            func_800C90F4(temp_a0_2, (arg0->unk254 * 0x10) + 0x29008001, arg1);
            func_800C9060(temp_a0_2, 0x1900A40B);
        }
    }
    arg0->unk44 = arg0->unk44 & 0xFFFE;
    arg0->unkBC = arg0->unkBC & ~0x20;
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008EC88.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_800225CC(void *, ?, ?, void *);              /* extern */

void func_8008EDC0(void *arg0) {
    void *temp_a0;
    void *temp_a3;

    temp_a3 = arg0;
    arg0->unk9C = arg0->unk214;
    if (arg0->unk256 > 0) {
        arg0->unk9C = 0.0f;
    }
    if ((temp_a3->unkF8 != 0xFE) && ((temp_a3->unkBC & 8) != 8)) {
        temp_a0 = temp_a3 + 0x80;
        arg0 = temp_a3;
        func_800225CC(temp_a0, 0, 0x3F800000, temp_a3);
    } else {
        arg0 = temp_a3;
        func_800225CC(temp_a3 + 0x80, 0x43C80000, 0x3C23D70A, temp_a3);
    }
    if (arg0->unk80 <= 1.0f) {
        arg0->unkBC = arg0->unkBC & 0xFFEFFFFF;
        arg0->unk80 = 0.0f;
        if (arg0->unkC2 >= 0x33) {
            arg0->unk9C = arg0->unk9C * 0.7;
            arg0->unk8C = arg0->unk8C * 0.7;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008EDC0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
void func_8008EEC4(void *arg0) {
    arg0->unkBC = arg0->unkBC & 0xFFEFFFFF;
    arg0->unk80 = 0.0f;
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008EEC4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8008C354(s8);                                /* extern */
? func_800C9060(s32, ?);                            /* extern */
? func_800C90F4(s32, s32, s8);                      /* extern */
extern s32 D_800DC4DC;
extern u16 D_8015F890;

void func_8008EEE4(void *arg0, s8 arg1) {
    s32 sp24;
    s32 temp_a0;
    s32 temp_a0_2;
    s8 temp_a1;
    u16 temp_v0;

    temp_a1 = arg1;
    arg1 = arg1;
    func_8008C354(temp_a1);
    arg0->unkBC = arg0->unkBC | 4;
    arg0->unkC = arg0->unkC & 0xFFFF7FFF;
    if (D_8015F890 != 1) {
        temp_v0 = arg0->unk0;
        if ((temp_v0 & 0x4000) == 0x4000) {
            temp_a0 = arg1 & 0xFF;
            if ((temp_v0 & 0x100) == 0) {
                sp24 = temp_a0;
                func_800C90F4(temp_a0, (arg0->unk254 * 0x10) + 0x29008001, arg1);
                func_800C9060(temp_a0, 0x1900A40B);
            }
        }
    } else {
        temp_a0_2 = arg1 & 0xFF;
        if (arg0 == D_800DC4DC) {
            sp24 = temp_a0_2;
            func_800C90F4(temp_a0_2, (arg0->unk254 * 0x10) + 0x29008001, arg1);
            func_800C9060(temp_a0_2, 0x1900A40B);
        }
    }
    arg0->unk44 = arg0->unk44 & 0xFFFE;
    arg0->unkBC = arg0->unkBC & ~0x20;
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008EEE4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_800225CC(void *, ?, ?, void *);              /* extern */
extern s32 D_800E261C;

void func_8008F008(void *arg0) {
    void *temp_a0;
    void *temp_a3;

    temp_a3 = arg0;
    arg0->unk9C = *(D_800E261C + (arg0->unk254 * 4));
    if ((arg0->unkF8 != 0xFC) && (temp_a0 = arg0 + 0x80, ((arg0->unkBC & 8) != 8))) {
        arg0 = temp_a3;
        func_800225CC(temp_a0, 0, 0x3F800000, temp_a3);
    } else {
        arg0 = temp_a3;
        func_800225CC(temp_a3 + 0x80, 0x43960000, 0x3DCCCCCD, temp_a3);
    }
    if (arg0->unk80 <= 1.0f) {
        arg0->unkBC = arg0->unkBC & ~4;
        arg0->unk80 = 0.0f;
        arg0->unk9C = arg0->unk9C / 2.0f;
        arg0->unk8C = arg0->unk8C / 2.0f;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008F008.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
void func_8008F0E8(void *arg0) {
    arg0->unkBC = arg0->unkBC & ~4;
    arg0->unk80 = 0.0f;
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008F0E8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8008C354(s8);                                /* extern */
? func_800C90F4(s32, s32, void *, s8);              /* extern */
extern ? D_8018D920;

void func_8008F104(void *arg0, s8 arg1) {
    s8 temp_a1;
    u16 temp_v0;

    temp_a1 = arg1;
    arg1 = arg1;
    func_8008C354(temp_a1);
    arg0->unkB2 = 2;
    arg0->unkC0 = 0;
    arg0->unk7C = 0;
    arg0->unkBC = arg0->unkBC | 0x4000;
    arg0->unk78 = 0;
    arg0->unkAE = arg0->unk2E;
    *(&D_8018D920 + (arg1 * 2)) = -0x8000;
    temp_v0 = arg0->unk0;
    if (((temp_v0 & 0x4000) == 0x4000) && ((temp_v0 & 0x100) != 0x100)) {
        func_800C90F4(arg1 & 0xFF, (arg0->unk254 * 0x10) + 0x29008003, arg0, arg1);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008F104.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
extern ? D_8018D920;

void func_8008F1B8(void *arg0, s8 arg1) {
    s16 *temp_v0_2;
    s16 *temp_v0_3;
    s16 *temp_v0_4;
    s16 *temp_v0_5;
    s16 temp_t2;
    s16 temp_t5;
    s16 temp_t7;
    s16 temp_t8;
    s16 temp_v0;

    temp_v0 = arg0->unkB2;
    arg0->unk8C = arg0->unk210 * 0.05;
    if (temp_v0 < 0) {
        if ((arg0->unk44 & 0x80) == 0x80) {
            arg0->unk2E = arg0->unk2E + 0xB6;
            temp_v0_2 = (arg1 * 2) + &D_8018D920;
            temp_t5 = *temp_v0_2 + 0xB6;
            *temp_v0_2 = temp_t5;
            if (((temp_t5 & 0xFFFF) / 182) == 0xB4) {
                arg0->unkBC = arg0->unkBC & ~0x4000;
                arg0->unk0 = arg0->unk0 & 0xFF7F;
                arg0->unk9C = arg0->unk9C / 3.0f;
                return;
            }
            /* Duplicate return node #13. Try simplifying control flow for better match */
            return;
        }
        temp_v0_3 = (arg1 * 2) + &D_8018D920;
        arg0->unk2E = arg0->unk2E - 0xB6;
        temp_t8 = *temp_v0_3 - 0xB6;
        *temp_v0_3 = temp_t8;
        if (((temp_t8 & 0xFFFF) / 182) == 0xB4) {
            arg0->unkBC = arg0->unkBC & ~0x4000;
            arg0->unk0 = arg0->unk0 & 0xFF7F;
            arg0->unk9C = arg0->unk9C / 3.0f;
            return;
        }
        /* Duplicate return node #13. Try simplifying control flow for better match */
        return;
    }
    if ((temp_v0 & 1) != 0) {
        arg0->unk2E = arg0->unk2E - 0x16C;
        temp_v0_4 = (arg1 * 2) + &D_8018D920;
        temp_t2 = *temp_v0_4 - 0x16C;
        *temp_v0_4 = temp_t2;
        if (((temp_t2 & 0xFFFF) / 364) < 0x47) {
            arg0->unkB2 = arg0->unkB2 - 1;
        }
        arg0->unk44 = arg0->unk44 | 0x80;
        arg0->unk44 = arg0->unk44 & 0xFFBF;
        return;
    }
    arg0->unk2E = arg0->unk2E + 0x16C;
    temp_v0_5 = (arg1 * 2) + &D_8018D920;
    temp_t7 = *temp_v0_5 + 0x16C;
    *temp_v0_5 = temp_t7;
    if (((temp_t7 & 0xFFFF) / 364) >= 0x6E) {
        arg0->unkB2 = arg0->unkB2 - 1;
    }
    arg0->unk44 = arg0->unk44 | 0x40;
    arg0->unk44 = arg0->unk44 & 0xFF7F;
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008F1B8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
void func_8008F3E0(void *arg0) {
    arg0->unkBC = arg0->unkBC & ~0x4000;
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008F3E0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_80090778();                                  /* extern */
? func_80090868(void *);                            /* extern */

void func_8008F3F4(void *arg0, ? arg1) {
    arg0->unkA8 = arg0->unkA8 + 0x80;
    arg0->unk42 = arg0->unk42 + 0x71C;
    arg0->unk7C = 0;
    arg0->unk9C = 0.0f;
    arg0->unk8C = arg0->unk8C / 2.0f;
    if (arg0->unkA8 >= 0x2000) {
        arg0->unkA8 = 0;
        arg0->unk236 = arg0->unk236 - 1;
        if (arg0->unk236 == 0) {
            arg0->unkBC = arg0->unkBC & 0xFFFEFFFF;
            func_80090778();
            func_80090868(arg0);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008F3F4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8008C354(void *, s8, void *);                /* extern */
? func_8008F86C(void *, s8);                        /* extern */
? func_800C90F4(u8, s32, void *);                   /* extern */
extern s32 gModeSelection;

void func_8008F494(void *arg0, s8 arg1) {
    s32 temp_t5;
    s32 temp_t7;
    s32 temp_v0;
    u16 temp_v0_2;
    u16 temp_v0_3;
    void *temp_a0;
    void *temp_a2;

    temp_v0 = arg0->unkBC;
    temp_a2 = arg0;
    temp_a0 = temp_a2;
    if ((((temp_v0 & 0x80) != 0) || ((temp_v0 & 0x40) != 0) || ((temp_v0 << 7) < 0) || ((temp_v0 << 6) < 0) || ((temp_v0 & 0x400) != 0)) && (gModeSelection == 3)) {
        temp_a2->unk44 = temp_a2->unk44 | 0x8000;
    }
    arg0 = temp_a2;
    func_8008C354(temp_a0, arg1, temp_a2);
    func_8008F86C(arg0, arg1);
    temp_v0_2 = arg0->unk0;
    arg0->unkA8 = 0;
    temp_t5 = arg0->unkBC | 0x10000;
    temp_t7 = temp_t5 & ~0x10;
    arg0->unkBC = temp_t5;
    arg0->unkBC = temp_t7;
    arg0->unk236 = 0x1E;
    arg0->unk42 = 0;
    if (((temp_v0_2 & 0x4000) != 0) && ((temp_v0_2 & 0x100) == 0) && ((arg0->unkCA & 2) == 0)) {
        temp_v0_3 = arg0->unkDE;
        if (((temp_v0_3 & 1) == 0) && ((temp_v0_3 & 2) == 0)) {
            func_800C90F4(arg1, (arg0->unk254 * 0x10) + 0x29008004, arg0);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008F494.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8006B8B4(s8);                                /* extern */
extern ? D_80165190;

void func_8008F5A4(void *arg0, s8 arg1) {
    void *temp_v0;

    if ((arg0->unk44 & 0x8000) != 0) {
        func_8006B8B4(arg1);
        arg0->unk44 = arg0->unk44 & 0x7FFF;
    }
    arg0->unk206 = 0;
    arg0->unkC4 = 0;
    arg0->unkBC = arg0->unkBC & 0xFFFEFFFF;
    arg0->unkA8 = 0;
    arg0->unkC0 = 0;
    arg0->unk7C = 0;
    arg0->unk236 = 0;
    arg0->unk78 = 0;
    arg0->unk9C = 0.0f;
    temp_v0 = (arg1 * 2) + &D_80165190;
    temp_v0->unk0 = 1;
    temp_v0->unk10 = 1;
    temp_v0->unk20 = 1;
    temp_v0->unk30 = 1;
    arg0->unk42 = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008F5A4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_800CA730(s32, s8, s32, s32 *);               /* extern */
? func_800CAACC(s32, s8, s32, s32 *);               /* extern */
extern ? D_8018D900;
extern ? D_8018D930;
extern f32 gCourseTimer;

void func_8008F650(void *arg0, s8 arg1) {
    s32 *sp20;
    s32 *sp18;
    s32 *temp_a3;
    s32 *temp_v0;
    s32 temp_a2;
    s32 temp_v1;
    u16 temp_a0;
    s32 phi_v1;

    temp_a2 = arg1 * 4;
    temp_a3 = temp_a2 + &D_8018D930;
    temp_v1 = gCourseTimer - *temp_a3;
    phi_v1 = temp_v1;
    if (temp_v1 >= 9) {
        temp_v0 = temp_a2 + &D_8018D900;
        *temp_v0 = 1;
        temp_a0 = arg0->unk0;
        if (((temp_a0 & 0x4000) == 0x4000) && ((temp_a0 & 0x100) != 0x100)) {
            if (1 == 1) {
                sp18 = temp_v0;
                sp20 = temp_a3;
                func_800CA730(arg1 & 0xFF, arg1, temp_a2, temp_a3);
                *temp_v0 = 0;
                phi_v1 = gCourseTimer - *temp_a3;
            }
        } else if (*temp_v0 == 1) {
            sp18 = temp_v0;
            sp20 = temp_a3;
            func_800CAACC(arg1 & 0xFF, arg1, temp_a2, temp_a3);
            *temp_v0 = 0;
            phi_v1 = gCourseTimer - *temp_a3;
        }
    }
    if (phi_v1 >= 0xA) {
        arg0->unkBC = arg0->unkBC & ~0x200;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008F650.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8008C354(s8);                                /* extern */
? func_800CA59C(s32, u16, s8, s32);                 /* extern */
? func_800CA984(s32, u16, s8, s32);                 /* extern */
extern ? D_8018D900;
extern ? D_8018D930;
extern f32 gCourseTimer;

void func_8008F778(void *arg0, s8 arg1) {
    s32 *sp1C;
    s32 *temp_v1;
    s32 temp_v0;
    s8 temp_a1;
    u16 temp_a1_2;

    temp_a1 = arg1;
    arg1 = arg1;
    func_8008C354(temp_a1);
    arg0->unkBC = arg0->unkBC | 0x200;
    arg0->unkC = arg0->unkC & ~0x2000;
    temp_v0 = arg1 * 4;
    temp_v1 = temp_v0 + &D_8018D900;
    *(&D_8018D930 + temp_v0) = gCourseTimer;
    *temp_v1 = 1;
    temp_a1_2 = arg0->unk0;
    if (((temp_a1_2 & 0x4000) == 0x4000) && ((temp_a1_2 & 0x100) != 0x100)) {
        if (1 == 1) {
            sp1C = temp_v1;
            func_800CA59C(arg1 & 0xFF, temp_a1_2, arg1, 1);
            *temp_v1 = 2;
            return;
        }
        /* Duplicate return node #6. Try simplifying control flow for better match */
        return;
    }
    if (*temp_v1 == 1) {
        sp1C = temp_v1;
        func_800CA984(arg1 & 0xFF, temp_a1_2, arg1, 1);
        *temp_v1 = 2;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008F778.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_800CA730(s32, s8);                           /* extern */
? func_800CAACC(s32, s8);                           /* extern */

void func_8008F86C(void *arg0, s8 arg1) {
    u16 temp_v0;

    temp_v0 = arg0->unk0;
    arg0->unkBC = arg0->unkBC & ~0x200;
    if (((temp_v0 & 0x4000) == 0x4000) && ((temp_v0 & 0x100) != 0x100)) {
        func_800CA730(arg1 & 0xFF, arg1);
        return;
    }
    func_800CAACC(arg1 & 0xFF, arg1);
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008F86C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_800CB064(s32, s8, void *, s16);              /* extern */
extern ? D_8018D950;
extern ? D_8018D970;
extern f32 gCourseTimer;

void func_8008F8DC(void *arg0, s8 arg1) {
    s32 sp18;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 temp_a0;
    s32 temp_t7;
    s32 temp_t8;
    s32 temp_v1;
    s8 temp_a1;
    void *temp_a2;
    void *phi_a2;
    s8 phi_a1;

    temp_a1 = arg1;
    temp_v1 = temp_a1 * 4;
    temp_a2 = arg0;
    phi_a2 = temp_a2;
    phi_a1 = temp_a1;
    if ((gCourseTimer - *(&D_8018D950 + temp_v1)) < 7) {
        arg0->unkC6 = arg0->unkC6 - 2;
        temp_v0 = temp_v1 + &D_8018D970;
        if (arg0->unkC6 < 0x61) {
            arg0->unkC6 = 0x60;
        }
        temp_t7 = *temp_v0 - 2;
        *temp_v0 = temp_t7;
        if (temp_t7 <= 0) {
            *temp_v0 = 0;
            return;
        }
        /* Duplicate return node #11. Try simplifying control flow for better match */
        return;
    }
    temp_a2->unkC6 = temp_a2->unkC6 + 4;
    if (temp_a2->unkC6 >= 0xF0) {
        temp_a2->unkC6 = 0xFF;
        *(&D_8018D970 + temp_v1) = 0xFF;
        temp_a2->unkBC = temp_a2->unkBC & 0x7FFFFFFF;
        if ((temp_a2->unk0 & 0x4000) != 0) {
            temp_a0 = temp_a1 & 0xFF;
            sp18 = temp_v1;
            arg1 = temp_a1;
            arg0 = temp_a2;
            func_800CB064(temp_a0, temp_a1, temp_a2, 0xFF);
            phi_a2 = arg0;
            phi_a1 = arg1;
        }
    }
    temp_v0_2 = (temp_a1 * 4) + &D_8018D970;
    temp_t8 = *temp_v0_2 + 8;
    *temp_v0_2 = temp_t8;
    if (temp_t8 >= 0xF0) {
        *temp_v0_2 = 0xFF;
        phi_a2->unkC6 = 0xFF;
        phi_a2->unkBC = phi_a2->unkBC & 0x7FFFFFFF;
        if ((phi_a2->unk0 & 0x4000) != 0) {
            func_800CB064(phi_a1 & 0xFF, phi_a1, phi_a2, 0xFF);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008F8DC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8008C354(void *, s8, void *);                /* extern */
? func_800CAFC0(s32, s8, void *);                   /* extern */
extern ? D_8018D950;
extern ? D_8018D970;
extern f32 gCourseTimer;

void func_8008FA38(void *arg0, s8 arg1) {
    s16 temp_v1;
    s32 temp_v0_2;
    s8 temp_a1;
    void *temp_a0;
    void *temp_a2;
    void *temp_v0;
    s16 phi_v1;

    temp_a1 = arg1;
    temp_a2 = arg0;
    if ((arg0->unk0 & 0x4000) != 0) {
        arg0->unk44 = arg0->unk44 | 0x200;
        phi_v1 = 0;
        do {
            temp_v1 = phi_v1 + 1;
            temp_v0 = temp_a2 + (phi_v1 * 0x48);
            temp_v0->unk274 = 0;
            temp_v0->unk276 = 0;
            temp_v0->unk26A = 0;
            phi_v1 = temp_v1;
        } while (temp_v1 < 0xA);
    }
    temp_a0 = temp_a2;
    arg1 = temp_a1;
    arg0 = temp_a2;
    func_8008C354(temp_a0, temp_a1, temp_a2);
    temp_v0_2 = arg1 * 4;
    arg0->unkBC = arg0->unkBC | 0x80000000;
    arg0->unkC = arg0->unkC & ~0x800;
    *(&D_8018D950 + temp_v0_2) = gCourseTimer;
    *(&D_8018D970 + temp_v0_2) = 0xFF;
    if ((arg0->unk0 & 0x4000) != 0) {
        func_800CAFC0(arg1 & 0xFF, arg1, arg0);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008FA38.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_800CB064(s32, s8, void *);                   /* extern */
extern ? D_8018D970;

void func_8008FB30(void *arg0, s8 arg1) {
    s32 *temp_v0;
    s32 temp_a0;
    s32 temp_t9;
    s8 temp_a1;
    void *temp_a2;
    s8 phi_a1;
    void *phi_a2;

    arg0->unkC6 = arg0->unkC6 + 8;
    temp_a1 = arg1;
    temp_a2 = arg0;
    phi_a1 = temp_a1;
    phi_a2 = temp_a2;
    if (arg0->unkC6 >= 0xF0) {
        arg0->unkC6 = 0xFF;
        *(&D_8018D970 + (arg1 * 4)) = 0xFF;
        arg0->unkBC = arg0->unkBC & 0x7FFFFFFF;
        if ((arg0->unk0 & 0x4000) != 0) {
            temp_a0 = arg1 & 0xFF;
            arg1 = arg1;
            arg0 = temp_a2;
            func_800CB064(temp_a0, temp_a1, temp_a2);
            phi_a1 = arg1;
            phi_a2 = arg0;
        }
    }
    temp_v0 = (phi_a1 * 4) + &D_8018D970;
    temp_t9 = *temp_v0 + 0x10;
    *temp_v0 = temp_t9;
    if (temp_t9 >= 0xE0) {
        *temp_v0 = 0xFF;
        phi_a2->unkC6 = 0xFF;
        phi_a2->unkBC = phi_a2->unkBC & 0x7FFFFFFF;
        if ((phi_a2->unk0 & 0x4000) != 0) {
            func_800CB064(phi_a1 & 0xFF, phi_a1, phi_a2);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008FB30.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
s32 func_80027D00(u16 *);                           /* extern */
? func_80056A94(s32, u16 *);                        /* extern */

void func_8008FC1C(u16 *arg0) {
    s32 temp_a0;
    u16 *temp_a1;

    temp_a1 = arg0;
    if ((*arg0 & 0x40) != 0) {
        arg0 = temp_a1;
        temp_a0 = func_80027D00(temp_a1);
        *arg0 = 0x7000;
        func_80056A94(temp_a0, arg0);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008FC1C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_800569F4(s8);                                /* extern */
? func_8008FDA8(s8);                                /* extern */

void func_8008FC64(void *arg0, s8 arg1) {
    s32 temp_t0;

    arg0->unkC6 = arg0->unkC6 - 4;
    if (arg0->unkC6 < 5) {
        temp_t0 = arg0->unkC & 0xFBFFFFFF;
        arg0->unkC = temp_t0;
        arg0->unkC6 = 0;
        arg0->unkC = temp_t0 | 0x8000000;
        arg0->unk0 = arg0->unk0 | 0x40;
        func_8008FDA8(arg1);
        func_800569F4(arg1);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008FC64.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_80056A40(s8, s16, s8);                       /* extern */

void func_8008FCDC(void *arg0, s8 arg1) {
    arg0->unkC6 = arg0->unkC6 + 2;
    if (arg0->unkC6 >= 0xF0) {
        arg0->unkC6 = 0xFF;
        arg0->unkC = arg0->unkC & 0xF7FFFFFF;
    }
    func_80056A40(arg1, arg0->unkC6, arg1);
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008FCDC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
void func_8008FD4C(void *arg0, ? arg1) {
    s16 temp_v0;
    void *temp_v1;
    s16 phi_v0;

    arg0->unkC = arg0->unkC | 0x4000000;
    arg0->unk44 = arg0->unk44 | 0x200;
    phi_v0 = 0;
    do {
        temp_v0 = phi_v0 + 1;
        temp_v1 = arg0 + (phi_v0 * 0x48);
        temp_v1->unk274 = 0;
        temp_v1->unk276 = 0;
        temp_v1->unk26A = 0;
        phi_v0 = temp_v0;
    } while (temp_v0 < 0xA);
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008FD4C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
void func_8008FDA8(void *arg0, ? arg1) {
    s16 temp_v0;
    void *temp_v1;
    s16 phi_v0;

    arg0->unk44 = arg0->unk44 | 0x200;
    phi_v0 = 0;
    do {
        temp_v0 = phi_v0 + 1;
        temp_v1 = arg0 + (phi_v0 * 0x48);
        temp_v1->unk274 = 0;
        temp_v1->unk276 = 0;
        temp_v1->unk26A = 0;
        phi_v0 = temp_v0;
    } while (temp_v0 < 0xA);
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008FDA8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
//This function did not have a glabel in the original assembly, as such it may
//be unused/unnamed
? func_8008C354(s8);                                /* extern */
extern ? D_800E37D0;
extern ? D_800E37F0;

void func_8008FDF4(void *arg0, s8 arg1) {
    s32 temp_t0;
    s32 temp_t9;

    func_8008C354(arg1);
    temp_t9 = arg0->unkBC & ~0x10;
    temp_t0 = arg0->unk254 * 4;
    arg0->unkBC = temp_t9;
    arg0->unkF4 = 0.0f;
    arg0->unkF0 = *(&D_800E37F0 + temp_t0);
    arg0->unkC = arg0->unkC & 0xFFEFFFFF;
    arg0->unkBC = temp_t9 | 0x10000000;
    arg0->unkEC = *(&D_800E37D0 + temp_t0);
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008FDF4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
//This function did not have a glabel in the original assembly, as such it may
//be unused/unnamed
void func_8008FE84(void *arg0, ? arg1) {
    s32 temp_t7;

    temp_t7 = arg0->unkBC & ~0x10;
    arg0->unkBC = temp_t7;
    if ((temp_t7 & 8) != 8) {
        arg0->unkBC = temp_t7 & 0xEFFFFFFF;
        arg0->unk9C = arg0->unk9C / 2.0f;
        arg0->unk8C = arg0->unk8C / 2.0f;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008FE84.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
void func_8008FEDC(void *arg0, ? arg1) {
    arg0->unkBC = arg0->unkBC & 0xEFFFFFFF;
    arg0->unkF0 = 0.0f;
    arg0->unkEC = 0.0f;
    arg0->unkF4 = 0.0f;
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008FEDC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
extern ? D_80164438;
extern u16 D_801645C8;
extern ? D_80165320;
static s16 gCurrentCourseId;                        /* type too large by 2; unable to generate initializer */

void func_8008FF08(void *arg0, s8 arg1) {
    s16 temp_t8;
    s16 temp_v0;
    s16 temp_v0_2;
    s16 temp_v0_3;
    s16 temp_v0_4;
    s16 temp_v0_5;
    s16 temp_v0_6;
    s16 temp_v0_7;
    s16 temp_v0_8;
    s32 temp_v1_3;
    s32 temp_v1_4;
    u16 temp_v1;
    u16 temp_v1_2;
    u16 temp_v1_5;

    temp_t8 = gCurrentCourseId;
    switch (temp_t8) {
    case 2:
        temp_v1 = *(&D_80164438 + (arg1 * 2));
        if ((temp_v1 >= 0x235) && (temp_v1 < 0x247)) {
            arg0->unk220 = 0x214;
            return;
        }
        if ((temp_v1 >= 0x267) && (temp_v1 < 0x277)) {
            arg0->unk220 = 0x25B;
            return;
        }
        arg0->unk220 = temp_v1;
        temp_v0 = arg0->unk220;
        if (temp_v0 < 0) {
            arg0->unk220 = D_801645C8 + temp_v0;
            return;
        }
        return;
    case 3:
        temp_v1_2 = *(&D_80164438 + (arg1 * 2));
        if ((temp_v1_2 >= 0x12C) && (temp_v1_2 < 0x13C)) {
            arg0->unk220 = 0x12C;
            return;
        }
        arg0->unk220 = temp_v1_2;
        temp_v0_2 = arg0->unk220;
        if (temp_v0_2 < 0) {
            arg0->unk220 = D_801645C8 + temp_v0_2;
            return;
        }
        /* Duplicate return node #34. Try simplifying control flow for better match */
        return;
    case 4:
    case 13:
        arg0->unk220 = *(&D_80165320 + (arg1 * 2));
        return;
    case 5:
        temp_v1_3 = arg1 * 2;
        temp_v0_3 = *(&D_80164438 + temp_v1_3);
        if ((temp_v0_3 >= 0xF0) && (temp_v0_3 < 0x105)) {
            arg0->unk220 = 0xF0;
            return;
        }
        arg0->unk220 = *(&D_80165320 + temp_v1_3);
        temp_v0_4 = arg0->unk220;
        if (temp_v0_4 < 0) {
            arg0->unk220 = D_801645C8 + temp_v0_4;
            return;
        }
        /* Duplicate return node #34. Try simplifying control flow for better match */
        return;
    case 7:
        temp_v1_4 = arg1 * 2;
        temp_v0_5 = *(&D_80164438 + temp_v1_4);
        if ((temp_v0_5 >= 0x258) && (temp_v0_5 < 0x2A4)) {
            arg0->unk220 = 0x258;
            return;
        }
        arg0->unk220 = *(&D_80165320 + temp_v1_4);
        temp_v0_6 = arg0->unk220;
        if (temp_v0_6 < 0) {
            arg0->unk220 = D_801645C8 + temp_v0_6;
            return;
        }
        /* Duplicate return node #34. Try simplifying control flow for better match */
        return;
    case 18:
        temp_v1_5 = *(&D_80164438 + (arg1 * 2));
        if ((temp_v1_5 >= 0xB9) && (temp_v1_5 < 0x119)) {
            arg0->unk220 = 0xB9;
            return;
        }
        arg0->unk220 = temp_v1_5;
        temp_v0_7 = arg0->unk220;
        if (temp_v0_7 < 0) {
            arg0->unk220 = D_801645C8 + temp_v0_7;
            return;
        }
        /* Duplicate return node #34. Try simplifying control flow for better match */
        return;
    case 15:
    case 16:
    case 17:
    case 19:
        arg0->unk220 = 0;
        return;
    default:
        arg0->unk220 = *(&D_80164438 + (arg1 * 2));
        temp_v0_8 = arg0->unk220;
        if (temp_v0_8 < 0) {
            arg0->unk220 = D_801645C8 + temp_v0_8;
        }
        /* Duplicate return node #34. Try simplifying control flow for better match */
        return;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008FF08.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
extern s32 D_80164550;
extern u16 D_801645C8;
extern ? D_80165310;
static s16 gCurrentCourseId;                        /* type too large by 2; unable to generate initializer */
static ? D_800E6F6C;                                /* unable to generate initializer; const */
static ? D_800E6F7C;                                /* unable to generate initializer; const */
static ? D_800E6F8C;                                /* unable to generate initializer; const */
static ? D_800E6F9C;                                /* unable to generate initializer; const */
static ? D_800E6FAC;                                /* unable to generate initializer; const */
static ? D_800E6FBC;                                /* unable to generate initializer; const */
static ? D_800E6FCC;                                /* unable to generate initializer; const */
static ? D_800E6FDC;                                /* unable to generate initializer; const */
static ? D_800E6FEC;                                /* unable to generate initializer; const */
static ? D_800E6FFC;                                /* unable to generate initializer; const */
static ? D_800E700C;                                /* unable to generate initializer; const */
static ? D_800E701C;                                /* unable to generate initializer; const */
static ? D_800E702C;                                /* unable to generate initializer; const */
static ? D_800E703C;                                /* unable to generate initializer; const */
static ? D_800E704C;                                /* unable to generate initializer; const */
static ? D_800E705C;                                /* unable to generate initializer; const */

void func_80090178(void *arg0, s8 arg1, void *arg2, void *arg3) {
    ? spF8;
    ? spE8;
    ? spD8;
    ? spC8;
    ? spB8;
    ? spA8;
    ? sp98;
    ? sp88;
    ? sp78;
    ? sp68;
    ? sp58;
    ? sp48;
    ? sp38;
    ? sp28;
    ? sp18;
    ? sp8;
    s16 temp_t9;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    u16 *temp_t0;
    u16 temp_t1;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    f32 phi_f10;

    spF8.unk0 = D_800E6F6C.unk0;
    spF8.unk4 = D_800E6F6C.unk4;
    spF8.unk8 = D_800E6F6C.unk8;
    spF8.unkC = D_800E6F6C.unkC;
    spE8.unk0 = D_800E6F7C.unk0;
    spE8.unk4 = D_800E6F7C.unk4;
    spE8.unk8 = D_800E6F7C.unk8;
    spE8.unkC = D_800E6F7C.unkC;
    spD8.unk0 = D_800E6F8C.unk0;
    spD8.unk4 = D_800E6F8C.unk4;
    spD8.unk8 = D_800E6F8C.unk8;
    spD8.unkC = D_800E6F8C.unkC;
    spC8.unk0 = D_800E6F9C.unk0;
    spC8.unk4 = D_800E6F9C.unk4;
    spC8.unk8 = D_800E6F9C.unk8;
    spC8.unkC = D_800E6F9C.unkC;
    spB8.unk0 = D_800E6FAC.unk0;
    spB8.unk4 = D_800E6FAC.unk4;
    spB8.unk8 = D_800E6FAC.unk8;
    spB8.unkC = D_800E6FAC.unkC;
    spA8.unk0 = D_800E6FBC.unk0;
    spA8.unk4 = D_800E6FBC.unk4;
    spA8.unk8 = D_800E6FBC.unk8;
    spA8.unkC = D_800E6FBC.unkC;
    sp98.unk0 = D_800E6FCC.unk0;
    sp98.unk4 = D_800E6FCC.unk4;
    sp98.unk8 = D_800E6FCC.unk8;
    sp98.unkC = D_800E6FCC.unkC;
    sp88.unk0 = D_800E6FDC.unk0;
    sp88.unk4 = D_800E6FDC.unk4;
    sp88.unk8 = D_800E6FDC.unk8;
    sp88.unkC = D_800E6FDC.unkC;
    sp78.unk4 = D_800E6FEC.unk4;
    sp78.unk0 = D_800E6FEC.unk0;
    sp78.unk8 = D_800E6FEC.unk8;
    sp78.unkC = D_800E6FEC.unkC;
    sp68.unk0 = D_800E6FFC.unk0;
    sp68.unk4 = D_800E6FFC.unk4;
    sp68.unkC = D_800E6FFC.unkC;
    sp68.unk8 = D_800E6FFC.unk8;
    sp58.unk0 = D_800E700C.unk0;
    sp58.unk4 = D_800E700C.unk4;
    sp58.unkC = D_800E700C.unkC;
    sp58.unk8 = D_800E700C.unk8;
    sp48.unk0 = D_800E701C.unk0;
    sp48.unk4 = D_800E701C.unk4;
    sp48.unkC = D_800E701C.unkC;
    sp48.unk8 = D_800E701C.unk8;
    sp38.unk0 = D_800E702C.unk0;
    sp38.unk4 = D_800E702C.unk4;
    sp38.unkC = D_800E702C.unkC;
    sp38.unk8 = D_800E702C.unk8;
    sp28.unk0 = D_800E703C.unk0;
    sp28.unk4 = D_800E703C.unk4;
    sp28.unkC = D_800E703C.unkC;
    sp28.unk8 = D_800E703C.unk8;
    sp18.unk0 = D_800E704C.unk0;
    sp18.unk4 = D_800E704C.unk4;
    sp18.unkC = D_800E704C.unkC;
    sp18.unk8 = D_800E704C.unk8;
    sp8.unk0 = D_800E705C.unk0;
    sp8.unk4 = D_800E705C.unk4;
    sp8.unkC = D_800E705C.unkC;
    sp8.unk8 = D_800E705C.unk8;
    temp_t9 = gCurrentCourseId;
    switch (temp_t9) {
    case 4:
        temp_t0 = (arg1 * 2) + &D_80165310;
        temp_v1 = (&D_80164550)[*temp_t0] + (arg0->unk220 * 8);
        arg2->unk0 = temp_v1->unk0;
        arg2->unk4 = temp_v1->unk2;
        arg2->unk8 = temp_v1->unk4;
        temp_t1 = *temp_t0;
        temp_v1_2 = (((arg0->unk220 + 5) % ((&D_801645C8)[temp_t1] + 1)) * 8) + (&D_80164550)[temp_t1];
        arg3->unk0 = temp_v1_2->unk0;
        arg3->unk4 = temp_v1_2->unk2;
        arg3->unk8 = temp_v1_2->unk4;
        return;
    case 15:
        temp_a0 = arg1 * 4;
        arg2->unk4 = 0.0f;
        arg2->unk0 = *(&spF8 + temp_a0);
        arg2->unk8 = *(&spE8 + temp_a0);
        arg3->unk4 = 0.0f;
        arg3->unk0 = *(&spD8 + temp_a0);
        phi_f10 = *(&spC8 + temp_a0);
block_8:
        arg3->unk8 = phi_f10;
        return;
    case 16:
        temp_a0_2 = arg1 * 4;
        arg2->unk4 = 480.0f;
        arg2->unk0 = *(&spB8 + temp_a0_2);
        arg2->unk8 = *(&spA8 + temp_a0_2);
        arg3->unk4 = 480.0f;
        arg3->unk0 = *(&sp98 + temp_a0_2);
        arg3->unk8 = *(&sp88 + temp_a0_2);
        return;
    case 17:
        temp_a0_3 = arg1 * 4;
        arg2->unk4 = 0.0f;
        arg2->unk0 = (sp + temp_a0_3)->unk78;
        arg2->unk8 = (sp + temp_a0_3)->unk68;
        arg3->unk4 = 0.0f;
        arg3->unk0 = (sp + temp_a0_3)->unk58;
        arg3->unk8 = (sp + temp_a0_3)->unk48;
        return;
    case 19:
        temp_a0_4 = arg1 * 4;
        arg2->unk4 = 200.0f;
        arg2->unk0 = (sp + temp_a0_4)->unk38;
        arg2->unk8 = (sp + temp_a0_4)->unk28;
        arg3->unk4 = 200.0f;
        arg3->unk0 = (sp + temp_a0_4)->unk18;
        phi_f10 = (sp + temp_a0_4)->unk8;
        goto block_8;
    default:
        temp_v1_3 = D_80164550 + (arg0->unk220 * 8);
        arg2->unk0 = temp_v1_3->unk0;
        arg2->unk4 = temp_v1_3->unk2;
        arg2->unk8 = temp_v1_3->unk4;
        temp_v1_4 = (((arg0->unk220 + 5) % (D_801645C8 + 1)) * 8) + D_80164550;
        arg3->unk0 = temp_v1_4->unk0;
        arg3->unk4 = temp_v1_4->unk2;
        phi_f10 = temp_v1_4->unk4;
        goto block_8;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_80090178.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
s32 func_80027D00();                                /* extern */
? func_8008C354(void *, s8);                        /* extern */
? func_8008E3C0(void *, s8);                        /* extern */
? func_8008F86C(void *, s8);                        /* extern */

void func_80090778(void *arg0) {
    s32 sp2C;
    s32 sp24;
    s32 temp_v0;
    s32 temp_v0_2;

    temp_v0 = func_80027D00();
    sp2C = temp_v0;
    arg0->unk78 = 0;
    arg0->unk7C = 0;
    arg0->unkC0 = 0;
    arg0->unkCA = arg0->unkCA | 8;
    arg0->unkBC = arg0->unkBC & ~0x10;
    arg0->unk222 = 0;
    arg0->unk8C = 0.0f;
    func_8008C354(arg0, temp_v0);
    sp24 = unksp2F;
    func_8008F86C(arg0, unksp2F);
    temp_v0_2 = arg0->unkBC;
    arg0->unkDB4 = 0;
    arg0->unkC2 = 0;
    arg0->unkDBC = 0.0f;
    if ((temp_v0_2 & 0x40000000) == 0x40000000) {
        if ((temp_v0_2 & 0x20000) == 0x20000) {
            arg0->unkBC = temp_v0_2 & 0xFFFDFFFF;
            arg0->unkA8 = 0;
            arg0->unk7C = 0;
            arg0->unkC0 = 0;
            arg0->unk2E = arg0->unkAE;
        }
        func_8008E3C0(arg0, unksp2F);
    }
    arg0->unkBC = arg0->unkBC & ~0x20;
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_80090778.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
s8 func_80027D00();                                 /* extern */
? func_8008FF08(void *, s8);                        /* extern */
static s16 gCurrentCourseId;                        /* type too large by 2; unable to generate initializer */

void func_80090868(void *arg0) {
    s16 temp_v0;
    s16 temp_v0_2;
    s8 temp_a1;
    void *temp_a0;

    arg0->unk78 = 0;
    arg0->unk7C = 0;
    arg0->unkC0 = 0;
    arg0->unk8C = 0.0f;
    temp_a0 = arg0;
    temp_a1 = func_80027D00();
    if ((temp_a0->unkCA & 2) != 2) {
        temp_a0->unkD98 = 1;
        temp_a0->unkD9C = 0.0f;
        temp_a0->unkDA0 = 0.5f;
        arg0 = temp_a0;
        func_8008FF08(temp_a0, temp_a1);
        arg0->unk222 = 0;
        arg0->unkCA = arg0->unkCA | 2;
        arg0->unkC8 = 0;
        if ((arg0->unkDE & 1) == 1) {
            temp_v0 = gCurrentCourseId;
            if ((temp_v0 == 2) || (temp_v0 == 0x13)) {
                arg0->unkCA = arg0->unkCA | 0x1000;
            } else {
                arg0->unkCA = arg0->unkCA | 0x2000;
            }
            temp_v0_2 = gCurrentCourseId;
            if ((temp_v0_2 == 0xC) || (temp_v0_2 == 0x10) || (temp_v0_2 == 0xD)) {
                arg0->unkCA = arg0->unkCA & 0xCFFF;
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_80090868.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_800225CC(void *, f32, ?);                    /* extern */
? func_80022634(void *, ?, ?);                      /* extern */
? func_8006B8B4(void *, s8);                        /* extern */
? func_8008C354(s8);                                /* extern */
? func_8008F104(void *, s8);                        /* extern */
? func_8008FB30(void *, s8);                        /* extern */
? func_80090178(void *, s8, f32 *, ? *);            /* extern */
? func_8009E020(s8, ?);                             /* extern */
? func_8009E088(s8, ?);                             /* extern */
? func_800C9018(u8, ?);                             /* extern */
s32 func_802B5224(f32 *, ? *);                      /* extern */
f32 func_802B8018(s32);                             /* extern */
f32 func_802B8038(s32);                             /* extern */
extern ? D_80004334;
extern void *D_80164550;
extern ? D_801652A0;
extern ? D_80165330;
extern s32 gModeSelection;

void func_80090970(void *arg0, s8 arg1, s8 arg2) {
    f32 sp44;
    ? sp38;
    f32 *sp28;
    f32 *temp_v0_2;
    f32 temp_f6;
    s16 temp_v0;
    s16 temp_v0_6;
    s16 temp_v1;
    s16 temp_v1_2;
    s32 temp_at;
    s32 temp_v0_5;
    u16 temp_t7;
    u16 temp_v0_3;
    u16 temp_v0_4;
    void *temp_v0_7;
    f32 phi_at;

    arg0->unkC2 = 0xC;
    arg0->unk78 = 0;
    arg0->unk7C = 0;
    arg0->unkC0 = 0;
    arg0->unk8C = 0.0f;
    func_8008C354(arg1);
    temp_t7 = arg0->unk222;
    switch (temp_t7) {
    case 0:
        temp_v1 = arg0->unkCA;
        if ((temp_v1 & 1) == 1) {
            temp_v0 = arg0->unkC8;
            if ((temp_v0 < 0x3C) || ((temp_v1 & 2) != 2)) {
                arg0->unkC8 = temp_v0 + 1;
                temp_at = arg0->unkC8 < 0x3C;
                phi_at = (bitwise f32) temp_at;
                if (temp_at == 0) {
                    arg0->unkC8 = 0x3C;
                }
            } else {
                temp_v0_2 = (arg1 * 4) + &D_801652A0;
                sp28 = temp_v0_2;
                func_800225CC(arg0 + 0x18, *temp_v0_2 + 100.0f, 0x3C449BA6);
                func_80022634(arg0 + (arg2 * 2) + 0xCC, 0, 0x3E4CCCCD);
                phi_at = 40.0f;
                if ((*sp28 + 40.0f) <= arg0->unk18) {
                    arg0->unk222 = 1;
                    arg0->unkC6 = 0xFF;
                    arg0->unkCA = arg0->unkCA | 4;
                    phi_at = 40.0f;
                }
            }
        } else {
            phi_at = 100.0f;
            if ((temp_v1 & 2) == 2) {
                func_800225CC(arg0 + 0x18, arg0->unk74 + 100.0f, 0x3CCCCCCD);
                func_80022634(arg0 + (arg2 * 2) + 0xCC, 0, 0x3E4CCCCD);
                phi_at = 40.0f;
                if ((arg0->unk74 + 40.0f) <= arg0->unk18) {
                    arg0->unk222 = 1;
                    arg0->unkC6 = 0xFF;
                    arg0->unkCA = arg0->unkCA | 4;
                    phi_at = 40.0f;
                }
            }
        }
        if (&D_80004334 != (arg0->unkBC & &D_80004334)) {
            // Error: Got lui instruction with macro other than %hi
            // At instruction: lui $at, %lo(D_80004334)
        } else {
            func_8008FB30(arg0, arg1);
        default:
block_49:
            phi_at = 180.0f;
        }
        break;
    case 1:
        temp_v0_3 = arg0->unk0;
        if (((temp_v0_3 & 0x4000) == 0x4000) && ((temp_v0_3 & 0x1000) == 0)) {
            func_8009E088(arg1, 0xA);
        }
        if ((arg0->unkCA & 1) == 1) {
            func_800225CC(arg0 + 0x18, *(&D_801652A0 + (arg1 * 4)) + 40.0f, 0x3CA3D70A);
            arg0->unkC6 = arg0->unkC6 - 8;
            if (arg0->unkC6 < 9) {
                arg0->unkC6 = 0;
                arg0->unk222 = 2;
                arg0->unkCA = arg0->unkCA & 0xFFFE;
            }
        } else {
            func_800225CC(arg0 + 0x18, arg0->unk24 + 40.0f, 0x3CA3D70A);
            arg0->unkC6 = arg0->unkC6 - 8;
            if (arg0->unkC6 < 9) {
                arg0->unkC6 = 0;
                arg0->unk222 = 2;
            }
        }
        arg0->unkCA = arg0->unkCA & 0xDFFF;
        goto block_49;
    case 2:
        func_80090178(arg0, arg1, &sp44, &sp38);
        arg0->unk2E = -func_802B5224(&sp44, &sp38);
        arg0->unk14 = sp44;
        arg0->unk18 = sp48 + 40.0f;
        arg0->unk222 = 3;
        arg0->unk1C = sp4C;
        goto block_49;
    case 3:
        *(&D_80165330 + (arg1 * 2)) = 0;
        temp_v0_4 = arg0->unk0;
        if (((temp_v0_4 & 0x4000) == 0x4000) && ((temp_v0_4 & 0x1000) == 0)) {
            func_8009E020(arg1, 0x14);
        }
        func_80090178(arg0, arg1, &sp44, &sp38);
        arg0->unk14 = sp44;
        arg0->unk18 = sp48 + 40.0f;
        arg0->unk1C = sp4C;
        temp_v0_5 = arg1 * 0x1C70;
        sp28 = temp_v0_5;
        arg0->unk1C = (func_802B8038((temp_v0_5 - arg0->unk2E) & 0xFFFF) * -5.0f) + arg0->unk1C;
        temp_f6 = func_802B8018((temp_v0_5 - arg0->unk2E) & 0xFFFF) * -5.0f;
        arg0->unkC6 = arg0->unkC6 + 8;
        arg0->unk14 = temp_f6 + arg0->unk14;
        if (arg0->unkC6 >= 0xF0) {
            arg0->unkC6 = 0xFF;
            arg0->unk222 = 4;
            arg0->unkCA = arg0->unkCA & 0xFFFB;
            arg0->unkC8 = 0;
        }
        goto block_49;
    case 4:
        temp_v0_6 = arg0->unkC8;
        if ((temp_v0_6 == 0x96) || (temp_v0_6 == 0xC8) || (temp_v0_6 == 0xFA)) {
            arg0->unk1C = (func_802B8038(-arg0->unk2E & 0xFFFF) * -10.0f) + arg0->unk1C;
            arg0->unk14 = (func_802B8018(-arg0->unk2E & 0xFFFF) * -10.0f) + arg0->unk14;
        }
        if (arg0->unkC8 == 0xFC) {
            temp_v0_7 = D_80164550;
            arg0->unk14 = temp_v0_7->unk0;
            arg0->unk18 = temp_v0_7->unk2;
            arg0->unk1C = temp_v0_7->unk4;
        }
        func_800225CC(arg0 + 0x18, (arg0->unk74 + arg0->unk70) - 2.0f, 0x3D23D70A);
        arg0->unkC8 = arg0->unkC8 + 1;
        phi_at = (bitwise f32) 8;
        if ((arg0->unkBC & 8) == 8) {
            // Error: %hi macro outside of lui
            // At instruction: andi $t8, $v0, %hi(D_80004334)
            if (MIPS2C_ERROR()) {
                // Error: Got lui instruction with macro other than %hi
                // At instruction: lui $at, %lo(D_80004334)
            } else {
                goto block_41;
            }
        } else {
block_41:
            arg0->unkCA = arg0->unkCA & 0xEFFF;
            if (arg0->unkC8 >= 0x5B) {
                if ((arg0->unk0 & 0x4000) != 0) {
                    func_800C9018(arg1, 0x100FA28);
                }
                if (gModeSelection == 3) {
                    func_8006B8B4(arg0, arg1);
                }
                arg0->unkCA = arg0->unkCA & 0xFFFD;
                temp_v1_2 = arg0->unkCA;
                arg0->unkDE = arg0->unkDE & 0xFFFB;
                if ((temp_v1_2 & 0x80) != 0x80) {
                    arg0->unkCA = temp_v1_2 & 0xFFF7;
                    if ((arg0->unk214 * 0.9) <= arg0->unk9C) {
                        func_8008F104(arg0, arg1);
                    }
                }
            }
            goto block_49;
        }
        break;
    }
    arg0->unkDA0 = arg0->unkDA0 + 8.0f;
    if (phi_at <= arg0->unkDA0) {
        arg0->unkDA0 = phi_at;
    }
    if (arg0->unkD98 == 1) {
        arg0->unkD9C = arg0->unkD9C + arg0->unkDA0;
        if (arg0->unkD9C >= 1820.0f) {
            arg0->unkDA0 = 0.0f;
            arg0->unkD98 = arg0->unkD98 * -1;
        }
    }
    if (arg0->unkD98 == -1) {
        arg0->unkD9C = arg0->unkD9C - arg0->unkDA0;
        if (arg0->unkD9C <= -1820.0f) {
            arg0->unkDA0 = 0.0f;
            arg0->unkD98 = arg0->unkD98 * -1;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_80090970.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_800910E4(void *arg0) {
    s16 temp_t1;
    s16 temp_v1;
    u16 temp_v1_2;
    s32 phi_v0;
    s32 phi_v0_2;

    temp_v1 = arg0->unkCA;
    phi_v0 = 0;
    phi_v0_2 = 0;
    if (((temp_v1 & 2) == 2) || ((temp_v1 & 8) == 8) || (temp_v1_2 = arg0->unk0, ((temp_v1_2 & 0x40) != 0)) || ((temp_v1_2 & 0x800) != 0) || ((temp_v1_2 & 0x8000) == 0)) {
        return 1;
    }
    temp_t1 = arg0->unk10;
    switch (temp_t1) {
    case 12:
    case 13:
    case 14:
    case 15:
        if ((arg0->unkBC & 8) != 0) {
            return 1;
        }
        phi_v0 = 0x5F934EC4;
    default:
block_13:
        if ((arg0->unkBC & phi_v0) != 0) {
            return 1;
        }
        return 0;
    case 10:
        phi_v0_2 = 0xDF934EC4;
        /* fallthrough */
    case 11:
        phi_v0 = phi_v0_2 | 0xDF934EC4;
        goto block_13;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_800910E4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
extern ? D_8018D920;

void func_800911B4(void *arg0, s8 arg1) {
    s32 temp_v0;
    void *temp_v1;
    void *phi_v1;
    s32 phi_v0;

    arg0->unk44 = arg0->unk44 | 0x1800;
    arg0->unkAE = arg0->unk2E;
    arg0->unk44 = arg0->unk44 & 0xFBFF;
    arg0->unk44 = arg0->unk44 | 0x2000;
    arg0->unkF4 = 0.0f;
    arg0->unkF0 = 0.002f;
    arg0->unkB2 = 2;
    arg0->unkC0 = 0;
    arg0->unk7C = 0;
    arg0->unk78 = 0;
    arg0->unkEC = 2.6f;
    *(&D_8018D920 + (arg1 * 2)) = 0;
    arg0->unkB22 = 0;
    arg0->unkB2E = 0;
    arg0->unkB2C = 0;
    arg0->unkADA = 0;
    arg0->unkAE6 = 0;
    arg0->unkAE4 = 0;
    phi_v1 = arg0 + 0x90;
    phi_v0 = 2;
    do {
        temp_v0 = phi_v0 + 4;
        phi_v1->unkB2C = 0;
        phi_v1->unkB2E = 0;
        phi_v1->unkB22 = 0;
        phi_v1->unkB74 = 0;
        phi_v1->unkB76 = 0;
        phi_v1->unkB6A = 0;
        phi_v1->unkBBC = 0;
        phi_v1->unkBBE = 0;
        phi_v1->unkBB2 = 0;
        temp_v1 = phi_v1 + 0x120;
        temp_v1->unk9C4 = 0;
        temp_v1->unk9C6 = 0;
        temp_v1->unk9BA = 0;
        phi_v1 = temp_v1;
        phi_v0 = temp_v0;
    } while (temp_v0 != 0xA);
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_800911B4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
extern s8 D_801658BC;
extern ? D_8018D920;
extern ? gKartGravityTable;
static ? D_800E706C;                                /* unable to generate initializer; const */

void func_80091298(void *arg0, s8 arg1) {
    ? spC;
    f32 temp_f0;
    f32 temp_f2;
    s16 *temp_a2;
    s16 temp_t9;
    s32 temp_t8;
    s16 phi_v1;

    spC.unk0 = D_800E706C.unk0;
    spC.unk4 = D_800E706C.unk4;
    spC.unk8 = D_800E706C.unk8;
    arg0->unk44 = arg0->unk44 | 0x2000;
    if (arg0->unkB2 == 0) {
        phi_v1 = 0;
    } else {
        temp_a2 = (arg1 * 2) + &D_8018D920;
        arg0->unk2E = arg0->unk2E - 0xE38;
        temp_t9 = *temp_a2 - 0xE38;
        temp_t8 = (temp_t9 & 0xFFFF) / 3640;
        *temp_a2 = temp_t9;
        phi_v1 = temp_t8;
    }
    if (((phi_v1 == 9) && (arg0->unkB2 == 1)) || ((phi_v1 == 0) && (arg0->unkB2 == 2)) || (arg0->unkB2 == 0)) {
        arg0->unkB2 = arg0->unkB2 - 1;
        if (arg0->unkB2 <= 0) {
            arg0->unkB2 = 0;
        }
        if (arg0->unkB2 == 0) {
            temp_f2 = arg0->unk70;
            temp_f0 = *(&spC + (arg1 * 4));
            if ((arg0->unk18 - (temp_f2 + 1.0f)) <= temp_f0) {
                arg0->unkDCC = 0;
                arg0->unkA8 = 0;
                arg0->unk18 = (temp_f0 + temp_f2) + 1.08;
                arg0->unk7C = 0;
                arg0->unkC0 = 0;
                arg0->unk44 = arg0->unk44 & 0xF7FF;
                arg0->unkDC0 = 3.0f;
                arg0->unkD4 = 0;
                arg0->unk100 = *(&gKartGravityTable + (arg0->unk254 * 4));
                arg0->unk0 = arg0->unk0 | 0x2000;
                arg0->unk94 = 0.0f;
                arg0->unk8C = 0.0f;
                arg0->unk9C = 0.0f;
                if (arg1 == 0) {
                    D_801658BC = 1;
                }
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_80091298.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
extern ? gPlayers;

void func_80091440(s8 arg0) {
    s16 temp_v1;
    void *temp_v0;

    temp_v0 = (arg0 * 0xDD8) + &gPlayers;
    temp_v1 = temp_v0->unk44;
    if ((temp_v1 & 0x800) == 0) {
        temp_v0->unk44 = temp_v1 | 0x2400;
        temp_v0->unk0 = temp_v0->unk0 & 0xDFFF;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_80091440.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
extern void *D_800DC4FC;
extern s16 D_80152308;
extern u16 D_8015F6F8;

void func_800914A0(void) {
    s16 temp_t8;
    s32 temp_v1;
    u16 temp_v0;

    temp_t8 = D_800DC4FC->unk6 + 7;
    D_80152308 = temp_t8;
    temp_v0 = D_8015F6F8;
    temp_v1 = temp_t8 & 0xFFFF;
    if (temp_v0 < temp_v1) {
        D_80152308 = temp_v1 - temp_v0;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_800914A0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
//This function did not have a glabel in the original assembly, as such it may
//be unused/unnamed
? func_800914A0(s16, s32, s16);                     /* extern */
? func_802ADDC8(void *, ?, f32, f32, f32);          /* extern */
s16 func_802B7830(f32, f32);                        /* extern */
f32 sqrtf(f32, f32);                                /* extern */
extern void *D_800DC4FC;
extern u16 D_80152308;
extern s16 D_8015F6F8;
extern u32 D_8015F718;
extern ? cameras;
extern ? gSegmentTable;
static ? D_800E7080;                                /* unable to generate initializer; const */
static ? D_800E708C;                                /* unable to generate initializer; const */

void func_800914E0(void) {
    ? sp64;
    ? sp58;
    s32 sp48;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f4;
    f32 temp_f8;
    s16 temp_a0;
    s16 temp_a0_2;
    s16 temp_a3;
    s16 temp_v0_2;
    u16 temp_t0;
    u32 temp_v0;
    void *temp_v0_3;
    u16 phi_t0;
    void **phi_t1;

    sp64.unk0 = D_800E7080.unk0;
    sp64.unk4 = D_800E7080.unk4;
    sp64.unk8 = D_800E7080.unk8;
    sp58.unk0 = D_800E708C.unk0;
    sp58.unk4 = D_800E708C.unk4;
    sp58.unk8 = D_800E708C.unk8;
    temp_v0 = D_8015F718;
    temp_a0 = temp_v0 & 0xFFFFFF;
    sp48 = *(&gSegmentTable + ((temp_v0 >> 0x18) * 4)) + temp_a0 + 0x80000000;
    temp_t0 = D_80152308;
    temp_a3 = D_800DC4FC->unk6;
    temp_v0_2 = temp_a3 - temp_t0;
    cameras.unk18 = 0.0f;
    cameras.unk20 = 0.0f;
    cameras.unk1C = 1.0f;
    phi_t0 = temp_t0;
    phi_t1 = &D_800DC4FC;
    if (temp_v0_2 == 7) {
        func_800914A0(temp_a0, 7, temp_a3);
        phi_t0 = D_80152308;
        goto block_5;
    }
    if (temp_v0_2 < 0xE) {
        temp_a0_2 = temp_v0_2 + D_8015F6F8;
        if (temp_a0_2 == 7) {
            func_800914A0(temp_a0_2, 7, temp_a3);
            phi_t0 = D_80152308;
block_5:
            phi_t1 = &D_800DC4FC;
        }
    }
    temp_v0_3 = (phi_t0 * 8) + sp48;
    temp_f8 = temp_v0_3->unk0 + 0xA;
    cameras.unk0 = temp_f8;
    temp_f16 = temp_v0_3->unk2 + 7;
    *(&cameras + 4) = temp_f16;
    temp_f4 = temp_v0_3->unk4 - 0x14;
    *(&cameras + 8) = temp_f4;
    *(&cameras + 0xC) = (*phi_t1)->unk14;
    *(&cameras + 0x10) = (*phi_t1)->unk18;
    *(&cameras + 0x14) = (*phi_t1)->unk1C;
    func_802ADDC8(&cameras + 0x54, 0x41A00000, temp_f8, temp_f16, temp_f4);
    temp_f12 = *(&cameras + 0xC) - cameras.unk0;
    sp38 = temp_f12;
    temp_f14 = *(&cameras + 0x14) - *(&cameras + 8);
    sp34 = *(&cameras + 0x10) - *(&cameras + 4);
    sp30 = temp_f14;
    *(&cameras + 0x26) = func_802B7830(temp_f12, temp_f14);
    *(&cameras + 0x24) = func_802B7830(sqrtf((sp38 * sp38) + (temp_f14 * temp_f14), temp_f14), sp34);
    *(&cameras + 0x28) = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_800914E0.s")
#endif
