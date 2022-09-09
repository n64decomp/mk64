#include <ultra64.h>
#include <macros.h>
#include "types.h"
#include "functions.h"
#include "variables.h"
#include "kart_attributes.h"
#include "waypoints.h"
#include "code_80005FD0.h"
#include "code_8001F980.h"
#include "code_80027D00.h"
#include "code_800431B0.h"
#include "code_80057C60.h"
#include "code_8008C1D0.h"
#include <defines.h>

UNUSED void func_unnamed(void) {

}

void func_8008C1D8(UNUSED s32 *arg0) {

}

void func_8008C1E0(UNUSED s32 arg0, UNUSED s32 arg1)  {
    arg1 = 4;
}

UNUSED void func_unnamed1(UNUSED s32 arg0) {

}

UNUSED void func_unnamed2(UNUSED s32 arg0) {

}

UNUSED void func_unnamed3(void) {

}

void func_8008C204(void) {

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
    if (((player->unk_000 & PLAYER_HUMAN) == PLAYER_HUMAN) && ((player->unk_000 & PLAYER_INVISIBLE_OR_BOMB) != PLAYER_INVISIBLE_OR_BOMB)) {
        func_800C90F4(arg1, (temp_v1 * 0x10) + 0x29008005);
        func_800C9060(arg1, 0x19009005);
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
            if (gModeSelection == BATTLE) {
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

void func_8008C73C(Player *player, s8 arg1) {
    func_8008C354(player, arg1);
    if (((player->unk_0BC & 0x80) != 0x80) && ((player->unk_0BC & 0x40) != 0x40)) {
        player->unk_0BC &= ~0x10;

        if ((player->unk_0C0 / 182) >= 0) {
            player->unk_0BC |= 0x40;
        } else {
            player->unk_0BC |= 0x80;
        }

        player->unk_0B6 |= 0x80;
        player->unk_0C0 = 0; player->unk_07C = 0; player->unk_078 = 0; player->unk_0AE = player->unk_02C[1]; player->unk_0B2 = 2;
        D_80165190[0][arg1] = 1;
        D_80165190[1][arg1] = 1;
        D_80165190[2][arg1] = 1;
        D_80165190[3][arg1] = 1;
        D_80165280[arg1] = player->unk_09C;
        D_80165480[arg1] = 0;
        D_80165460[arg1] = 0;
        D_80165440[arg1] = 0;
        D_80165420[arg1] = 0;
        D_8018D920[arg1] = 0;

        if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) != 0x100)) {
            func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008003);
        } else {
            func_800098FC(arg1, player);
        }
    }
}

void func_8008C8C4(Player* player, s8 arg1) {
    player->unk_0BC &= ~0x80;
    player->unk_0BC &= ~0x40;
    player->unk_0A8 = 0;
    player->unk_02C[1] = player->unk_0AE;
    player->unk_07C = 0;
    player->unk_0C0 = 0;
    player->unk_0BC &= ~0x800;

    D_80165190[0][arg1] = 1;
    D_80165190[1][arg1] = 1;
    D_80165190[2][arg1] = 1;
    D_80165190[3][arg1] = 1;

    player->unk_046 &= 0xFFBF;

    if ((D_80165460[arg1] == 1) && ((player->unk_000 & 0x4000) == 0x4000)) {
        player->unk_09C = (f32) (player->unk_09C + 100.0f);
    }
    if ((gModeSelection == VERSUS) && ((player->unk_000 & 0x1000) == 0x1000) && (D_800DC51C == 0) && ((player->unk_0CA & 2) == 0) && (gPlayerPositions[arg1] != 0)) {
        player->unk_00C = (s32) (player->unk_00C | 0x400000);
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
extern ? D_8018D920;
static ? D_800E6F60;                                /* unable to generate initializer */

void func_8008C9EC(Player *player, s8 arg1) {
    s16 *temp_a0;
    s16 *temp_a0_2;
    s16 *temp_v0;
    s16 *temp_v0_2;
    s16 temp_t7;
    s16 temp_t8;
    s16 temp_v1;
    s16 temp_v1_2;

    sp30[0].unk0 = (s32) D_800E6F60.unk0;
    sp30[0].unk4 = (s32) D_800E6F60.unk4;
    sp30[0].unk8 = (u16) D_800E6F60.unk8;
    player->unk_206 = 0;
    player->unk_0C4 = 0;
    if ((player->unk_046 & 0x40) == 0x40) {
        func_80031F48(player, 100.0f);
    } else {
        if ((player->unk_000 & 0x4000) == 0x4000) {
            func_80031F48(player, 1.0f);
        } else {
            func_80031F48(player, 4.0f);
        }
        if (!(player->unk_000 & 0x4000)) {
            func_80031F48(player, 30.0f);
        }
    }
    if ((player->unk_0BC & 0x80) == 0x80) {
        temp_a0 = &(&sp30[0])[player->unk_0B2];
        player->unk_02E -= *temp_a0;
        temp_v0 = (arg1 * 2) + &D_8018D920;
        temp_t7 = *temp_v0 - *temp_a0;
        *temp_v0 = temp_t7;
        temp_v1 = player->unk_0B2;
        if ((s16) ((s32) (temp_t7 & 0xFFFF) / (s32) (0x10000 / (s32) (0x168 / (s32) ((s16) (&sp30[0])[temp_v1] / 182)))) == 0) {
            player->unk_0B2 = temp_v1 - 1;
            if (player->unk_0B2 <= 0) {
                if (gModeSelection == 3) {
                    func_8006B8B4(player, arg1);
                }
                func_8008C8C4(player, arg1);
            }
        }
    } else {
        temp_a0_2 = &(&sp30[0])[player->unk_0B2];
        player->unk_02E += *temp_a0_2;
        temp_v0_2 = (arg1 * 2) + &D_8018D920;
        temp_t8 = *temp_v0_2 - *temp_a0_2;
        *temp_v0_2 = temp_t8;
        temp_v1_2 = player->unk_0B2;
        if ((s16) ((s32) (temp_t8 & 0xFFFF) / (s32) (0x10000 / (s32) (0x168 / (s32) ((s16) (sp + (temp_v1_2 * 2))->unk30 / 182)))) == 0) {
            player->unk_0B2 = temp_v1_2 - 1;
            if (player->unk_0B2 <= 0) {
                func_8008C8C4(player, arg1);
                if (gModeSelection == 3) {
                    func_8006B8B4(player, arg1);
                }
            }
        }
    }
    if ((D_80165460[arg1] == 1) && ((player->unk_000 & 0x4000) == 0x4000)) {
        D_80165480[arg1] = 0x00000078;
        if (player->unk_09C <= 90.0f) {
            player->unk_09C = 90.0f;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008C9EC.s")
#endif

void func_8008CDC0(Player* player, s8 arg1) {
    func_8008C354(player, arg1);

    player->unk_00C &= ~1;
    player->unk_0B4 = 0;
    player->unk_0B8 = 3.0f;
    player->unk_0AC = 1;
    player->unk_0BC &= ~0x10;
    
    if (((player->unk_07C >> 0x10) >= 0x14) || ((player->unk_07C >> 0x10) < -0x13) || (((player->unk_094 / 18.0f) * 216.0f) <= 30.0f) || ((player->unk_0BC & 8) != 0) || (((player->unk_000 & 0x4000) == 0) && ((player->unk_0BC & 0x1000) == 0))) {
        func_8008C73C(player, arg1);
    }
    else {
        player->unk_0BC |= 0x800;
    }
}

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

void func_8008D0E4(Player* player, UNUSED s8 arg1) {
    player->unk_0BC &= ~0x800;
}

void func_8008D0FC(Player *player, s8 arg1) {
    func_8008C354(player, arg1);

    player->unk_00C &= ~0x80;
    player->unk_0B4 = 0;
    player->unk_0B8 = 2.0f;
    player->unk_0AC = 1;
    player->unk_0BC &= ~0x10;
    player->unk_044 |= 0x4000;
}

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

void func_8008D3B0(Player* player, UNUSED s8 arg1) {
    player->unk_044 &= 0xBFFF;
}

void func_8008D3C4(Player* player, s8 arg1) {

    func_8008C354(player, arg1);

    player->unk_0BC |= 0x2000;
    player->unk_00C &= ~0x200;
    player->unk_DB4 = 0;
    player->unk_DBC = 8.0f;
    
    if (D_8015F890 != 1) {
        if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) != 0x100)) {
            func_800C9250(arg1);
            func_800C9060(arg1, 0x1900A40B);
        }
    } else {
        if (player == gPlayerOne) {
            func_800C9250(arg1);
            func_800C9060(arg1, 0x1900A40B);
        }
    }

    player->boostTimer = 0x50;
}

void func_8008D4B4(Player* player) {
    player->unk_09C = (f32) player->unk_214;
    if ( player->boostTimer > 0) {
        --player->boostTimer;
    }

    if (player->boostTimer != 0) {
        move_f32_towards(&player->boostPower, 400.0f, 0.5f);
    } else {
        move_f32_towards(&player->boostPower, 0.0f, 0.1f);
    }
    
    if (player->boostPower <= 1.0f) {
        player->unk_0BC &= ~0x2000;
    }
}

void func_8008D554(Player* player) {
    player->unk_0BC &= ~0x2000;
    player->boostPower = 0.0f;
}

void func_8008D570(Player *player, s8 arg1) {
    func_8008C354(player, arg1);

    player->unk_0AE = player->unk_02C[1];
    player->unk_0BC |= 0x80000;
    player->unk_0BC &= ~0x10;
    player->unk_00C &= ~0x1000;
    player->kartHopJerk = D_800E3730[player->characterId];
    player->kartHopAcceleration = 0.0f;
    player->kartHopVelocity = (f32) D_800E3710[player->characterId];
    player->unk_0B2 = 1;
    player->unk_0C0 = 0;
    player->unk_07C = 0;
    player->unk_078 = 0;
    D_8018D920[arg1] = 0;

    if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) != 0x100)) {
        func_800C9060(arg1, 0x19008002);
    }

    if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) != 0x100)) {
        func_800C90F4(arg1, (player->characterId * 0x10) + 0x2900800C);
    }
}

void func_8008D698(Player* player, s8 arg1) {
    s16 temp;
 
    if (player->unk_0B2 == 0) {
        player->unk_02C[1] = player->unk_0AE;
        temp = 0;
    } else {
        player->unk_02C[1] -= 1820;
        D_8018D920[arg1] -= 1820;
        temp = ((u16) D_8018D920[arg1] / 1820);
    }
    if (temp == 0) {
        --player->unk_0B2;
        if (player->unk_0B2 <= 0) {
            player->unk_0B2 = 0;
        }
        if ((player->unk_0B2 == 0) && ((player->unk_0BC & 8) != 8)) {
            func_8008D760(player);
        }
    }
}

void func_8008D760(Player* player) {
    player->unk_0A8 = 0;
    player->unk_07C = 0;
    player->unk_0C0 = 0;
    player->unk_02C[1] = player->unk_0AE;
    player->unk_0BC &= 0xFFF7FFFF;
    player->unk_100 = gKartGravityTable[player->characterId];
    player->unk_000 &= 0xFF7F;
}

void func_8008D7B0(Player* player, s8 arg1) {
    func_8008C354(player, arg1);

    player->unk_0AE = player->unk_02C[1];
    player->unk_0BC |= 0x800000;
    player->unk_0BC &= ~0x10;
    player->unk_00C &= 0xFFFDFFFF;
    player->kartHopJerk = D_800E3770[player->characterId];
    player->kartHopAcceleration = 0.0f;
    player->kartHopVelocity = D_800E3750[player->characterId];
    D_8018D920[arg1] = 0;
    player->unk_0B2 = 4;
    player->unk_0C0 = 0;
    player->unk_07C = 0;
    player->unk_078 = 0;

    if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) != 0x100)) {
        func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008003);
    }
}

void func_8008D8B4(Player* player, s8 arg1) {
    s16 temp;

    if (player->unk_0B2 == 0) {
        player->unk_02C[1] = player->unk_0AE;
        temp = 0;
    } else {
        player->unk_02C[1] -= 1820;
        D_8018D920[arg1] -= 1820;
        temp = ((u16) (D_8018D920[arg1]) / 1820);
    }
    if (temp == 0) {
        --player->unk_0B2;
        if (player->unk_0B2 <= 0) {
            player->unk_0B2 = 0;
        }
        if ((player->unk_0B2 == 0) && ((player->unk_0BC & 8) != 8)) {
            func_8008D97C(player);
        }
    }
}

void func_8008D97C(Player *player) {
    player->unk_0A8 = 0;
    player->unk_07C = 0;
    player->unk_0C0 = 0;
    player->unk_02C[1] = player->unk_0AE;
    player->unk_0BC &= 0xFF7FFFFF;
    player->unk_100 = gKartGravityTable[player->characterId];
}

void func_8008D9C0(Player* player) {
    player->unk_DA0 += 8.0f;
    if (player->unk_DA0 >= 140.0f) {
        player->unk_DA0 = 140.0f;
    }

    if (player->unk_D98 == 1) {
        player->unk_D9C += player->unk_DA0;
        if (D_800EF568 <= player->unk_D9C) {
            player->unk_DA0 = 10.0f;
            player->unk_D98 *= -1;
        }
    }
    if (player->unk_D98 == -1) {
        player->unk_D9C -= player->unk_DA0;
        if (player->unk_D9C <= D_800EF56C) {
            player->unk_DA0 = 10.0f;
            player->unk_D98 *= -1;
        }
    }
}

void func_8008DABC(Player *player, s8 arg1) {
    func_8008C354(player, arg1);

    if ((player->unk_0BC & 0x4000000) == 0) {
        player->unk_DB6 = 0;
        player->unk_238 = 0;
        player->unk_DC4 = 4.5f;
        D_8018D990[arg1] = 0;
        player->unk_0BC &= ~0x08000010;
        D_80165190[0][arg1] = 1;
        D_80165190[1][arg1] = 1;
        D_80165190[2][arg1] = 1;
        D_80165190[3][arg1] = 1;
        player->unk_D98 = 1;
        player->unk_D9C = 0.0f;
        player->unk_DA0 = 65.0f;

        if ((player->unk_00C & 0x100) != 0) {
            player->unk_046 |= 0x80;
        }

        if (((player->unk_000 & 0x4000) != 0) && ((player->unk_0BC & 0x04000000) == 0)) {
            func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008005);
        }

        player->unk_0BC |= 0x04000000;
        if (((player->unk_000) & 0x1000) != 0) {
            func_800098FC(arg1, player);
        }
    }
}

void func_8008DC08(Player* player, s8 arg1) {
    player->unk_0C2 = 0;
    player->unk_0A8 = 0;
    player->unk_07C = 0;
    player->unk_0C0 = 0;
    player->unk_08C = 0.0f;
    player->unk_09C = 0.0f;
    if ((player->unk_110.unk44 >= 600.0f) || ((player->unk_0BC & 0x1000) != 0)) { D_8018D990[arg1] = 3; } // placed block on same line to match

    switch (D_8018D990[arg1]) { 
    case 0:
        player->unk_DC4 = 4.5f;
        if (player->unk_238 < 0x3D) {
            ++player->unk_238;
        }

        if ((player->unk_046 & 0x80) != 0) {
            if ((player->unk_00C & 0x100) == 0) {
                D_8018D990[arg1] = 1;
                player->unk_238 = 0;
                if ((player->unk_000 & 0x4000) != 0) {
                    func_800C9060(arg1, 0x1901904B);
                    break;
                }
            }
        } else {
            ++player->unk_238;
            if (player->unk_238 >= 0x1E) {
                D_8018D990[arg1] = 1;
                player->unk_238 = 0;
                if ((player->unk_000 & 0x4000) != 0) {
                    func_800C9060(arg1, 0x1901904B);
                    break;
                }
            }
            break;
        }

        break;
    case 1:
        player->unk_DC4 = 4.5f;
        player->pos[1] += D_800EF570;
        ++player->unk_238;
        
        if ((player->unk_046 & 0x80) != 0) {
            if (player->unk_238 >= 0x32) {
                D_8018D990[arg1] = 2;
                player->unk_238 = 0;
                player->unk_046 &= 0xFF7F;
            }
        } else if (player->unk_238 >= 0x50) {
            D_8018D990[arg1] = 2;
            player->unk_238 = 0;
        }

        player->unk_DA0 += 6.0f;
        if (player->unk_DA0 >= 90.0f) {
            player->unk_DA0 = 90.0f;
        }

        player->unk_D9C += player->unk_DA0;
        if (D_800EF578 <= player->unk_D9C) {
            player->unk_DA0 = 0.0f;
            break;
        }
        break;
    case 2:
        ++player->unk_238;
        if (player->unk_238 >= 0x259) {
            D_8018D990[arg1] = 3;
            player->unk_238 = 0;
        }

        if (player->unk_110.unk44 >= 600.0f) {
            D_8018D990[arg1] = 3;
        }

        player->unk_DC4 = 4.5f;
        player->pos[1] -= D_800EF580;

        if ((player->unk_0BC & 8) != 8) {
            D_8018D990[arg1] = 3;
            player->unk_238 = 0;
        }

        func_8008D9C0(player);
        break;
    case 3:
        player->unk_DC4 = 3.0f;
        player->unk_0BC &= ~0x04000000;
        player->unk_DB6 = 0;
        player->unk_0BC |= 0x08000000;
        player->unk_224 = 1.0f;
        player->boundingBoxSize = gKartBoundingBoxSizeTable[player->characterId];
        D_80165190[0][arg1] = 1;
        D_80165190[1][arg1] = 1;
        D_80165190[2][arg1] = 1;
        D_80165190[3][arg1] = 1;

        if ((player->unk_000 & 0x4000) != 0) {
            func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008008);
        }
        break;
    }
}

void func_8008DF98(Player* player, s8 arg1) {
    func_8008C354(player, arg1);

    player->unk_00C &= ~0x4000;
    player->unk_0BC |= 0x40020000;
    player->unk_0BC &= ~0x10;
    player->unk_08C *= D_800EF588;
    player->unk_0B0 = 0;
    player->unk_224 = 1.0f;
    D_8018D930[arg1] = gCourseTimer;
    player->unk_0AE = player->unk_02C[1];
    player->unk_0B2 = 2;
    player->unk_0C0 = 0;
    player->unk_07C = 0;    
    player->unk_078 = 0;
    
    D_80165190[0][arg1] = 1;
    D_80165190[1][arg1] = 1;
    D_80165190[2][arg1] = 1;
    D_80165190[3][arg1] = 1;

    D_8018D920[arg1] = 0;

    if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) != 0x100)) {
        func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008003);
    } else {
        func_800098FC(arg1, player);
    }
    if (gModeSelection == BATTLE) {
        func_8006B8B4(player, arg1);
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
extern ? D_8018D920;

void func_8008E118(Player *player, s8 arg1) {
    s16 *temp_v0_2;
    s16 *temp_v0_3;
    s16 *temp_v0_4;
    s16 temp_t0;
    s32 temp_v0;
    s8 temp_t1;
    s8 var_a2;

    temp_v0 = player->unk_0BC;
    var_a2 = arg1;
    if (((temp_v0 & 0x8000) == 0x8000) && ((temp_v0 & 0x04000000) != 0x04000000)) {
        player->unk_0BC = temp_v0 & 0xFFFDFFFF;
        player->unk_0A8 = 0;
        player->unk_07C = 0;
        player->unk_0C0 = 0;
        temp_t1 = arg1;
        player->unk_02E = player->unk_0AE;
        arg1 = arg1;
        func_8008E3C0(player, temp_t1);
        temp_v0_2 = &(*D_80165190)[arg1];
        temp_v0_2->unk0 = 1;
        temp_v0_2->unk10 = 1;
        temp_v0_2->unk20 = 1;
        temp_v0_2->unk30 = 1;
        func_8008DABC(player, arg1);
        return;
    }
    if ((temp_v0 & 0x20000) == 0x20000) {
        player->unk_02E -= 0x5B0;
        temp_v0_3 = (var_a2 * 2) + &D_8018D920;
        temp_t0 = *temp_v0_3 - 0x5B0;
        *temp_v0_3 = temp_t0;
        if ((s16) ((s32) (temp_t0 & 0xFFFF) / 1456) == 0) {
            player->unk_0B2 -= 1;
            if (player->unk_0B2 <= 0) {
                player->unk_0A8 = 0;
                player->unk_0BC &= 0xFFFDFFFF;
                player->unk_07C = 0;
                player->unk_0C0 = 0;
                temp_v0_4 = &(*D_80165190)[var_a2];
                player->unk_02E = player->unk_0AE;
                temp_v0_4->unk0 = 1;
                temp_v0_4->unk10 = 1;
                temp_v0_4->unk20 = 1;
                temp_v0_4->unk30 = 1;
            }
        }
        func_80031F48(player, 1.0f);
        return;
    }
    player->unk_0B0 += 1;
    player->unk_08C = (f32) ((f64) player->unk_08C * 0.6);
    if ((player->unk_0B0 == 1) && (player->unk_000 & 0x4000)) {
        arg1 = var_a2;
        func_800C90F4(var_a2 & 0xFF, (player->characterId * 0x10) + 0x29008005);
        var_a2 = arg1;
    }
    if ((player->unk_0B0 >= 0) && (player->unk_0B0 < 0x1CC)) {
        move_f32_towards(&player->unk_224, 0.7f, 0.1f);
        move_f32_towards(&player->boundingBoxSize, (f32) ((f64) gKartBoundingBoxSizeTable[player->characterId] * 0.9), 0.1f);
        return;
    }
    arg1 = var_a2;
    func_8008E3C0(player, var_a2);
    if (player->unk_000 & 0x4000) {
        func_800C90F4(arg1 & 0xFF, (player->characterId * 0x10) + 0x29008008);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008E118.s")
#endif

void func_8008E3C0(Player* player, UNUSED s8 arg1) {
    move_f32_towards(&player->unk_224, 1.0f, 0.1f);
    move_f32_towards(&player->boundingBoxSize, gKartBoundingBoxSizeTable[player->characterId], 0.1f);
    
    player->unk_0BC &= ~0x40000000;
    player->unk_224 = 1.0f;
    player->boundingBoxSize = gKartBoundingBoxSizeTable[player->characterId];
    player->unk_DC4 = 3.0f;
    player->unk_DB6 = 0;
    player->unk_0BC |= 0x08000000;
    
    if ((player->unk_0BC & 0x20000) == 0x20000) {
        player->unk_02C[1] = player->unk_0AE;
    }
    
    player->unk_0BC &= ~0x20000;
}

void func_8008E4A4(Player* player, s8 arg1) {
    player->unk_206 = 0;
    player->unk_0C4 = 0;
    player->unk_0C0 = 0;
    player->unk_07C = 0;
    player->unk_0C2 = 0xF;
    player->unk_042 += 0xAAA;
    player->unk_08C = 0.0f;
    player->unk_09C = 0.0f;
    player->unk_034[0] = 0.0f;
    player->unk_034[2] = 0.0f;
    player->unk_0BC &= ~0xC0;

    if ((player->unk_0BC & 8) != 8) {
        ++player->unk_0E0;
    }

    if (player->unk_0E0 == 3) {
        player->unk_0BC &= ~0x01000000;
        player->unk_0A8 = 0;
        player->unk_236 = 0;
        D_80165190[0][arg1] = 1;
        D_80165190[1][arg1] = 1;
        D_80165190[2][arg1] = 1;
        D_80165190[3][arg1] = 1;
        player->unk_042 = 0;
        player->unk_000 &= ~0x80;

        if ((D_80165460[arg1] == 1) && ((player->unk_000 & 0x4000) == 0x4000)) {
            player->unk_09C += 100.0f;
        }
        if (gModeSelection == 3) {
            func_8006B8B4(player, arg1);
        }
    } else {
        player->unk_0A8 += 0x80;
        if (player->unk_0A8 >= 0x2000) {
            player->unk_0A8 = 0;
            --player->unk_236;
            if (player->unk_236 == 0) {
                player->unk_0BC &= ~0x01000000;
                player->unk_236 = 0;
                D_80165190[0][arg1] = 1;
                D_80165190[1][arg1] = 1;
                D_80165190[2][arg1] = 1;
                D_80165190[3][arg1] = 1;
                player->unk_042 = 0;

                if (gModeSelection == 3) {
                    func_8006B8B4(player, arg1);
                }
                if ((D_80165460[arg1] == 1) && ((player->unk_000 & 0x4000) == 0x4000)) {
                    player->unk_09C += 100.0f;
                }

                player->unk_000 &= ~0x80;
            }
        }
    }
}

void func_8008E6C0(Player *player, s8 arg1)
{
    func_8008C354(player, arg1);
    func_8008C310(player);

    player->unk_0A8 = 0;
    player->unk_0BC |= 0x01000000;
    player->unk_0BC &= ~0x10;
    player->kartHopJerk = 0.0f;
    player->kartHopAcceleration = 0.0f;
    player->kartHopVelocity = 0.0f;
    player->kartHopJerk = D_800E3730[player->characterId];
    player->kartHopVelocity = D_800E3710[player->characterId];
    player->unk_236 = 4;
    player->unk_042 = 0;
    player->unk_0E0 = 0;

    if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) != 0x100)) {
        if (((gModeSelection == VERSUS) && ((player->unk_000 & 0x1000) != 0)) && (D_800DC51C == 0)) {
            func_800CA24C(arg1);
        }

        if (1) {
        }

        func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008005);
        if (((gModeSelection == VERSUS) && ((player->unk_000 & 0x1000) != 0)) && (D_800DC51C == 0)) {
            func_800CA24C(arg1);
        }
        func_800C9060(arg1, 0x19009005);
    } else {
        func_800098FC(arg1, player);
    }

    player->unk_00C &= ~0x00480000;
    player->unk_0B6 |= 0x40;
    D_80165480[arg1] = 0;
    D_80165460[arg1] = 0;
    D_80165440[arg1] = 0;
    D_80165420[arg1] = 0;
}

void func_8008E884(Player* player, s8 arg1) {
    player->unk_0BC &= ~0x01000000;
    player->unk_0A8 = 0;
    player->unk_236 = 0;
    D_80165190[0][arg1] = 1;
    D_80165190[1][arg1] = 1;
    D_80165190[2][arg1] = 1;
    D_80165190[3][arg1] = 1;
    player->unk_042 = 0;
}

void func_8008E8D8(Player *player, s8 arg1) {
    player->unk_206 = 0;
    player->unk_0C4 = 0;
    player->unk_0C0 = 0;
    player->unk_07C = 0;
    player->unk_0C2 = 0xF;
    player->unk_042 += 0xAAA;
    player->unk_08C /= 2;
    player->unk_09C = 0.0f;
    player->unk_0BC &= ~0xC0;

    if ((player->unk_0BC & 8) != 8) {
        ++player->unk_0E0;
    }

    if (player->unk_0E0 == 4) {
        player->unk_0BC &= ~0x02000000;
        player->unk_0A8 = 0;
        player->unk_236 = 0;
        D_80165190[3][arg1] = 1;
        D_80165190[0][arg1] = 1;
        D_80165190[1][arg1] = 1;
        D_80165190[2][arg1] = 1;
        player->unk_042 = 0;

        if ((D_80165460[arg1] == 1) && ((player->unk_000 & 0x4000) == 0x4000)) {
            player->unk_09C += 100.0f;
        }

        if (gModeSelection == BATTLE) {
            func_8006B8B4(player, arg1);
        }
    } else {
        player->unk_0A8 = (s16)(player->unk_0A8 + 0x90);
        if (((s32)player->unk_0A8) >= 0x2000) {
            player->unk_0A8 = 0;
            --player->unk_236;
            if (player->unk_236 == 0) {
                player->unk_0BC &= ~0x02000000;
                player->unk_236 = 0;
                D_80165190[0][arg1] = 1;
                D_80165190[1][arg1] = 1;
                D_80165190[2][arg1] = 1;
                D_80165190[3][arg1] = 1;
                player->unk_042 = 0;
                if ((D_80165460[arg1] == 1) && ((player->unk_000 & 0x4000) == 0x4000)) {
                    player->unk_09C += 100.0f;
                }

                if (gModeSelection == BATTLE) {
                    func_8006B8B4(player, arg1);
                }
            }
        }
    }
}

void func_8008EAE0(Player* player, s8 arg1) {
    func_8008C354(player, arg1);
    func_8008C310(player);

    player->unk_0A8 = 0;
    player->unk_0BC &= ~0x10;
    player->kartHopJerk = 0.0f;
    player->kartHopAcceleration = 0.0f;
    player->kartHopVelocity = 0.0f;
    player->kartHopJerk = D_800E3730[player->characterId];
    player->kartHopVelocity = D_800E3710[player->characterId];
    player->unk_236 = 4;
    player->unk_042 = 0;
    player->unk_0E0 = 0;
    
    if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) != 0x100)) {
        func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008005);
        func_800C9060(arg1, 0x19009005);
    } else {
        func_800098FC(arg1, player);
    }
    
    player->unk_0BC |= 0x02000000;
    player->unk_0B6 |= 0x40;
    player->unk_00C &= ~0x01000002;

    D_80165480[arg1] = 0;
    D_80165460[arg1] = 0;
    D_80165440[arg1] = 0;
    D_80165420[arg1] = 0;
}

void func_8008EC34(Player* player, s8 arg1) {
    player->unk_0BC &= ~0x02000000;
    player->unk_0A8 = 0;
    player->unk_236 = 0;
    D_80165190[0][arg1] = 1;
    D_80165190[1][arg1] = 1;
    D_80165190[2][arg1] = 1;
    D_80165190[3][arg1] = 1;
    player->unk_042 = 0;
}

void func_8008EC88(Player* player, s8 arg1) {
    func_8008C354(player, arg1);

    player->unk_0BC |= 0x100000;
    player->unk_00C &= ~0x00800000;
    player->unk_DB4 = 0;
    player->unk_DBC = 8.0f;
    if (D_8015F890 != 1) {
        if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) == 0)) {
            func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008001);
            func_800C9060(arg1, 0x1900A40B);
        }
    } else if (player == gPlayerOne) {
        func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008001);
        func_800C9060(arg1, 0x1900A40B);
    }
    player->unk_044 &= ~0x1;
    player->unk_0BC &= ~0x20;
}

void func_8008EDC0(Player* player) {
    f64 temp_f0;

    player->unk_09C = player->unk_214;
    if ((u16) player->unk_256 > 0) {
        player->unk_09C = 0.0f;
    }
    if ((player->unk_0F8 != 0xFE) && ((player->unk_0BC & 8) != 8)) {
        move_f32_towards(&player->boostPower, 0, 1.0f);
    } else {
        move_f32_towards(&player->boostPower, 400.0f, 0.01f);
    }
    if (player->boostPower <= 1.0f) {
        player->unk_0BC &= ~0x00100000;
        player->boostPower = 0.0f;
        if (player->unk_0C2 >= 0x33) {
            temp_f0 = D_800EF5A0;
            player->unk_09C = (player->unk_09C * temp_f0);
            player->unk_08C = (player->unk_08C * temp_f0);
        }
    }
}

void func_8008EEC4(Player* player) {
    player->unk_0BC &= ~0x00100000;
    player->boostPower = 0.0f;
}

void func_8008EEE4(Player* player, s8 arg1) {
    func_8008C354(player, arg1);

    player->unk_0BC |= 0x4;
    player->unk_00C &= ~0x8000;

    if (D_8015F890 != 1) {
        if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) == 0)) {
            func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008001);
            func_800C9060(arg1, 0x1900A40B);
        }
    } else if (player == gPlayerOne) {
        func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008001);
        func_800C9060(arg1, 0x1900A40B);
    }

    player->unk_044 &= ~0x1;
    player->unk_0BC &= ~0x20;
}

void func_8008F008(Player* player) {
    player->unk_09C = D_800E261C[0][player->characterId];

    if ((player->unk_0F8 != 0xFC) && ((player->unk_0BC & 8) != 8)) {
        move_f32_towards(&player->boostPower, 0, 1.0f);
    } else {
        move_f32_towards(&player->boostPower, 300.0f, 0.1f);
    }
    
    if (player->boostPower <= 1.0f) {
        player->unk_0BC &= ~0x4;
        player->boostPower = 0.0f;
        player->unk_09C /= 2;
        player->unk_08C /= 2;
    }
}

void func_8008F0E8(Player* player) {
    player->unk_0BC &= ~4;
    player->boostPower = 0.0f;
}

void func_8008F104(Player* player, s8 arg1) {
    func_8008C354(player, arg1);

    player->unk_0AE = player->unk_02C[1];
    player->unk_0B2 = 2;
    player->unk_0C0 = 0;
    player->unk_07C = 0;
    player->unk_0BC |= 0x4000;   
    player->unk_078 = 0;
    D_8018D920[arg1] = -0x8000;
    
    if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) != 0x100)) {
        func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008003);
    }
}

void func_8008F1B8(Player* player, s8 arg1) {
    s16 temp;

    player->unk_08C = (player->unk_210 * D_800EF5A8);
    if (player->unk_0B2 < 0) {
        if ((player->unk_044 & 0x80) == 0x80) {
            player->unk_02C[1] += 182;
            D_8018D920[arg1] += 182;

            temp = ((u16) D_8018D920[arg1] / 182);
            if (temp == 180) {
                player->unk_0BC &= ~0x4000;
                player->unk_000 &= ~0x80;
                player->unk_09C /= 3.0f;
            }
        } else {

            player->unk_02C[1] -= 182;
            D_8018D920[arg1] -= 182;
            temp = ((u16) D_8018D920[arg1] / 182);
            if (temp == 180) {
                player->unk_0BC &= ~0x4000;
                player->unk_000 &= ~0x80;
                player->unk_09C /= 3.0f;
            }
        }
    } else {
        if ((player->unk_0B2 & 1) != 0) {
            player->unk_02C[1] -= 364;
            D_8018D920[arg1] -= 364;
            temp = ((u16) D_8018D920[arg1] / 364);
            if (temp < 71) {
                --player->unk_0B2;
            }
            player->unk_044 |= 0x80;
            player->unk_044 &= ~0x40;
            return;
        }
        player->unk_02C[1] += 364;
        D_8018D920[arg1] += 364;
        temp = ((u16) D_8018D920[arg1] / 364);
        if (temp >= 110) {
            --player->unk_0B2;
        }
        player->unk_044 |= 0x40;
        player->unk_044 &= ~0x80;
    }
}

void func_8008F3E0(Player* player) {
    player->unk_0BC &= ~0x4000;
}

void func_8008F3F4(Player* player, UNUSED s8 arg1) {
    player->unk_0A8 += 0x80;
    player->unk_042 += 0x71C;
    player->unk_07C = 0;
    player->unk_09C = 0.0f;
    player->unk_08C /= 2;
    if (player->unk_0A8 >= 0x2000) {
        player->unk_0A8 = 0;
        --player->unk_236;
        if (player->unk_236 == 0) {
            player->unk_0BC &= ~0x00010000;
            func_80090778(player);
            func_80090868(player);
        }
    }
}

void func_8008F494(Player* player, s8 arg1) {
    if ((((player->unk_0BC & 0x80) != 0) ||
         ((player->unk_0BC & 0x40) != 0) ||
         ((player->unk_0BC << 7) < 0) ||
         ((player->unk_0BC << 6) < 0) ||
         ((player->unk_0BC & 0x400) != 0)) && (gModeSelection == 3)) {
        player->unk_044 |= 0x8000;
    }

    func_8008C354(player, arg1);
    func_8008F86C(player, arg1);
 
    player->unk_0A8 = 0;
    player->unk_0BC |= 0x10000;
    player->unk_0BC &= ~0x10;
    player->unk_236 = 0x1E;
    player->unk_042 = 0;
    
    if (((player->unk_000 & 0x4000) != 0) &&
        ((player->unk_000 & 0x100) == 0) &&
        ((player->unk_0CA & 2) == 0) &&
        ((player->unk_0DE & 1) == 0) &&
        ((player->unk_0DE & 2) == 0)) {
        func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008004);
    }
}

void func_8008F5A4(Player* player, s8 arg1) {

    if ((player->unk_044 & 0x8000) != 0) {
        func_8006B8B4(player, arg1);
        player->unk_044 &= ~0x8000;
    }
    
    player->unk_206 = 0;
    player->unk_0C4 = 0;
    player->unk_0BC &= ~0x10000;
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

void func_8008F650(Player* player, s8 arg1) {
    if (((s32) gCourseTimer - D_8018D930[arg1]) >= 9) {
        D_8018D900[arg1] = 1;

        if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) != 0x100)) {
            if (D_8018D900[arg1] == 1) {
                func_800CA730(arg1);
                D_8018D900[arg1] = 0;
            }
        } else if (D_8018D900[arg1] == 1) {
            func_800CAACC((u8)arg1);
            D_8018D900[arg1] = 0;
        }
    }

    if (((s32) gCourseTimer - D_8018D930[arg1]) >= 0xA) {
        player->unk_0BC &= ~0x200;
    }
}

void func_8008F778(Player* player, s8 arg1) {
    func_8008C354(player, arg1);

    player->unk_0BC |= 0x200;
    player->unk_00C &= ~0x2000;
    D_8018D930[arg1] = gCourseTimer;
    D_8018D900[arg1] = 1;
    if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) != 0x100)) {
        if (D_8018D900[arg1] == 1) {
            func_800CA59C(arg1);
            D_8018D900[arg1] = 2;
        }
    } else if (D_8018D900[arg1] == 1) {
        func_800CA984(arg1);
        D_8018D900[arg1] = 2;
    }
}

void func_8008F86C(Player* player, s8 arg1) {
    player->unk_0BC &= ~0x200;
    if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) != 0x100)) {
        func_800CA730(arg1);
        return;
    }
    func_800CAACC(arg1);
}

void func_8008F8DC(Player* arg0, s8 arg1) {
    s32 tmp;
    tmp = ((s32) gCourseTimer) - D_8018D950[arg1];
    if (tmp < 7) {
        arg0->unk_0C6 -= 2;
  
        if (arg0->unk_0C6 < 0x61) {
            arg0->unk_0C6 = 0x60;
        }
        D_8018D970[arg1] -= 2;
        if (D_8018D970[arg1] <= 0) {
            D_8018D970[arg1] = 0;
        }
    } else {
        arg0->unk_0C6 += 4;
        if (arg0->unk_0C6 >= 0xF0) {
            arg0->unk_0C6 = 0xFF;
            D_8018D970[arg1] = 0xFF;
            arg0->unk_0BC &= ~0x80000000;
            if ((arg0->unk_000 & 0x4000) != 0) {
                func_800CB064(arg1);
            }
        }

        D_8018D970[arg1] += 8;
        if (D_8018D970[arg1] >= 0xF0) {
            D_8018D970[arg1] = 0xFF;
            arg0->unk_0C6 = 0xFF;
            arg0->unk_0BC &= ~0x80000000;
            if ((arg0->unk_000 & 0x4000) != 0) {
                func_800CB064(arg1);
            }
        }
    }
}

void func_8008FA38(Player* player, s8 arg1) {
    s16 temp_v1;

    if ((player->unk_000 & 0x4000) != 0) {
        player->unk_044 |= 0x200;
      
        for (temp_v1 = 0; temp_v1 < 10; ++temp_v1) {
            player->unk_258[temp_v1].unk_01C = 0;
            player->unk_258[temp_v1].unk_01E = 0;
            player->unk_258[temp_v1].unk_012 = 0;
        }
    }

    func_8008C354(player, arg1);

    player->unk_0BC |= 0x80000000;
    player->unk_00C &= ~0x800;
    D_8018D950[arg1] = gCourseTimer;
    D_8018D970[arg1] = 0xFF;

    if ((player->unk_000 & 0x4000) != 0) {
        func_800CAFC0(arg1);
    }
}

void func_8008FB30(Player* arg0, s8 arg1) {
    arg0->unk_0C6 += 8;
    if (arg0->unk_0C6 >= 0xF0) {
        arg0->unk_0C6 = 0xFF;
        D_8018D970[arg1] = 0xFF;

        arg0->unk_0BC &= ~0x80000000;
        if ((arg0->unk_000 & 0x4000) != 0) {
            func_800CB064(arg1);
        }
    }

    D_8018D970[arg1] += 0x10;
    if (D_8018D970[arg1] >= 0xE0) {
        D_8018D970[arg1] = 0xFF;
        arg0->unk_0C6 = 0xFF;
        arg0->unk_0BC &= ~0x80000000;
        if ((arg0->unk_000 & 0x4000) != 0) {
            func_800CB064(arg1);
        }
    }
}

void func_8008FC1C(Player* player) {
    s32 playerIndex;

    if ((player->unk_000 & 0x40) != 0) {
        playerIndex = get_player_index_for_player(player);
        player->unk_000 = 0x7000;
        func_80056A94(playerIndex);
    }
}

void func_8008FC64(Player* player, s8 arg1) {
    player->unk_0C6 -= 4;
    if (player->unk_0C6 < 5) {
        player->unk_0C6 = 0;
        player->unk_00C &= 0xFBFFFFFF;
        player->unk_00C |= 0x08000000;
        player->unk_000 |= 0x40;
        
        func_8008FDA8(player, arg1);
        func_800569F4(arg1);
    }
}

void func_8008FCDC(Player* player, s8 arg1) {
    player->unk_0C6 += 2;
    if (player->unk_0C6 >= 0xF0) {
        player->unk_0C6 = 0xFF;
        player->unk_00C &= ~0x08000000;
    }

    func_80056A40(arg1, (u32) player->unk_0C6);
}

void func_8008FD4C(Player* player, UNUSED s8 arg1) {
    s16 temp_v0;
    
    player->unk_00C |= 0x04000000;
    player->unk_044 |= 0x200;

    for (temp_v0 = 0; temp_v0 < 10; ++temp_v0) {
        player->unk_258[temp_v0].unk_01C = 0;
        player->unk_258[temp_v0].unk_01E = 0;
        player->unk_258[temp_v0].unk_012 = 0;
    }
}

void func_8008FDA8(Player* player, UNUSED s8 arg1) {
    s16 temp_v0;
    player->unk_044 |= 0x200;
    for (temp_v0 = 0; temp_v0 < 10; ++temp_v0) {
        player->unk_258[temp_v0].unk_01C = 0;
        player->unk_258[temp_v0].unk_01E = 0;
        player->unk_258[temp_v0].unk_012 = 0;
    }
}

void func_8008FDF4(Player* player, UNUSED s8 arg1) {
    func_8008C354(player, arg1);
    
    player->unk_0BC &= ~0x10;
    player->kartHopJerk =  D_800E37F0[player->characterId];
    player->kartHopAcceleration = 0.0f;
    player->kartHopVelocity = D_800E37D0[player->characterId];
    player->unk_00C &= ~0x00100000;
    player->unk_0BC |= 0x10000000;
}

void func_8008FE84(Player* player, UNUSED s8 arg1) {
    player->unk_0BC &= ~0x10;
    if ((player->unk_0BC & 8) != 8) {
        player->unk_0BC &= ~0x10000000;
        player->unk_09C /= 2;
        player->unk_08C /= 2;
    }
}

void func_8008FEDC(Player* player, UNUSED s8 arg1) {
    player->unk_0BC &= ~0x10000000;
    player->kartHopJerk = 0.0f;
    player->kartHopVelocity = 0.0f;
    player->kartHopAcceleration = 0.0f;
}

#ifdef NEEDS_RODATA
void func_8008FF08(Player *player, s8 arg1) {
    s8 arg1Copy;
    arg1Copy = arg1;

    switch (gCurrentCourseId) {
    case COURSE_BOWSER_CASTLE:
        if ((((s16)gNearestWaypointByPlayerId[arg1Copy]) >= 0x235) && (((s16)gNearestWaypointByPlayerId[arg1Copy]) < 0x247)) {
            player->unk_220 = 0x214U;
            break;
        }

        if ((((s16)gNearestWaypointByPlayerId[arg1Copy]) >= 0x267) && (((s16)gNearestWaypointByPlayerId[arg1Copy]) < 0x277)) {
            player->unk_220 = 0x25BU;
            break;
        }

        player->unk_220 = gNearestWaypointByPlayerId[arg1Copy];
        if (player->unk_220 < 0) {
            player->unk_220 = gWaypointCountByPathIndex + player->unk_220;
            break;
        }

        break;
    case COURSE_BANSHEE_BOARDWALK:
        if ((((s16)gNearestWaypointByPlayerId[arg1Copy]) >= 0x12C) && (((s16)gNearestWaypointByPlayerId[arg1Copy]) < 0x13C)) {
            player->unk_220 = 0x12CU;
            break;
        }

        player->unk_220 = gNearestWaypointByPlayerId[arg1Copy];
        if (player->unk_220 < 0) {
            player->unk_220 = gWaypointCountByPathIndex + player->unk_220;
            break;
        }

        break;
    case COURSE_YOSHI_VALLEY:
    case COURSE_RAINBOW_ROAD:
        player->unk_220 = D_80165320[arg1Copy];
        break;
    case COURSE_FRAPPE_SNOWLAND:
        if ((((s16)gNearestWaypointByPlayerId[arg1Copy]) >= 0xF0) && (((s16)gNearestWaypointByPlayerId[arg1Copy]) < 0x105)) {
            player->unk_220 = 0xF0U;
            break;
        }

        player->unk_220 = D_80165320[arg1Copy];
        if (player->unk_220 < 0) {
            player->unk_220 = gWaypointCountByPathIndex + player->unk_220;
            break;
        }

        break;
    case COURSE_ROYAL_RACEWAY:
        if ((((s16)gNearestWaypointByPlayerId[arg1Copy]) >= 0x258) && (((s16)gNearestWaypointByPlayerId[arg1Copy]) < 0x2A4)) {
            player->unk_220 = 0x258U;
            break;
        }

        player->unk_220 = D_80165320[arg1Copy];
        if (player->unk_220 < 0) {
            player->unk_220 = gWaypointCountByPathIndex + player->unk_220;
            break;
        }

        break;
    case COURSE_DK_JUNGLE:
        if ((((s16)gNearestWaypointByPlayerId[arg1Copy]) >= 0xB9) && (((s16)gNearestWaypointByPlayerId[arg1Copy]) < 0x119)) {
            player->unk_220 = 0xB9U;
            break;
        }

        player->unk_220 = gNearestWaypointByPlayerId[arg1Copy];
        if (player->unk_220 < 0) {
            player->unk_220 = gWaypointCountByPathIndex + player->unk_220;
            break;
        }

        break;
    case COURSE_BLOCK_FORT:
    case COURSE_SKYSCRAPER:
    case COURSE_DOUBLE_DECK:
    case COURSE_BIG_DONUT:
        player->unk_220 = 0U;
        break;
    default:
        player->unk_220 = gNearestWaypointByPlayerId[arg1Copy];
        if (player->unk_220 < 0) {
            player->unk_220 = gWaypointCountByPathIndex + player->unk_220;
            break;
        }
        break;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008FF08.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
extern s32 D_80164550;
extern u16 gWaypointCountByPathIndex;
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
        temp_v1_2 = (((arg0->unk220 + 5) % ((&gWaypointCountByPathIndex)[temp_t1] + 1)) * 8) + (&D_80164550)[temp_t1];
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
        temp_v1_4 = (((arg0->unk220 + 5) % (gWaypointCountByPathIndex + 1)) * 8) + D_80164550;
        arg3->unk0 = temp_v1_4->unk0;
        arg3->unk4 = temp_v1_4->unk2;
        phi_f10 = temp_v1_4->unk4;
        goto block_8;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_80090178.s")
#endif

void func_80090778(Player* player) {
    s32 playerIndex = get_player_index_for_player(player);

    player->unk_078 = 0;
    player->unk_07C = 0;
    player->unk_0C0 = 0;
    player->unk_0CA |= 8;
    player->unk_0BC &= ~0x10;
    player->unk_222 = 0;
    player->unk_08C = 0.0f;

    func_8008C354(player, playerIndex);
    func_8008F86C(player, playerIndex);
 
    player->unk_DB4 = 0;
    player->unk_0C2 = 0;
    player->unk_DBC = 0.0f;
    if ((player->unk_0BC & 0x40000000) == 0x40000000) {
        if ((player->unk_0BC & 0x20000) == 0x20000) {
            player->unk_0BC &= ~0x20000;
            player->unk_0A8 = 0;
            player->unk_07C = 0;
            player->unk_0C0 = 0;
            player->unk_02C[1] = player->unk_0AE;
        }
        func_8008E3C0(player, playerIndex);
    }
    player->unk_0BC &= ~0x20;
}

void func_80090868(Player* player) {
    s32 playerIndex;

    player->unk_078 = 0;
    player->unk_07C = 0;
    player->unk_0C0 = 0;
    player->unk_08C = 0.0f;
    playerIndex = get_player_index_for_player(player);

    if ((player->unk_0CA & 2) != 2) {
        player->unk_D98 = 1;
        player->unk_D9C = 0.0f;
        player->unk_DA0 = 0.5f;
        func_8008FF08(player, playerIndex);
        player->unk_222 = 0;
        player->unk_0CA |= 2;
        player->unk_0C8 = 0;
        if ((player->unk_0DE & 1) == 1) {
            if ((gCurrentCourseId == COURSE_BOWSER_CASTLE) || (gCurrentCourseId == COURSE_BIG_DONUT)) {
                player->unk_0CA |= 0x1000;
            } else {
                player->unk_0CA |= 0x2000;
            }

            if ((gCurrentCourseId == COURSE_SHERBET_LAND) || (gCurrentCourseId == COURSE_SKYSCRAPER) || (gCurrentCourseId == COURSE_RAINBOW_ROAD)) {
                player->unk_0CA &= ~0x3000;
            }
        }
    }
}

// Note that D_80004334 is a fake pointer.
// Should put this func through mips to C prior to decomp.
#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
? func_80090178(Player *, s8, f32 *, f32 *);        /* extern */
? func_8009E020(s8, ?);                             /* extern */
? func_8009E088(s8, ?);                             /* extern */
? func_800C9018(u8, ?);                             /* extern */
extern ? D_80165330;

void func_80090970(Player *player, s8 arg1, s8 arg2) {
    f32 sp44;
    f32 sp38;
    f32 *sp28;                                      /* compiler-managed */
    f32 *temp_v0_2;
    f32 temp_f6;
    s16 temp_v0;
    s16 temp_v0_6;
    s16 temp_v1;
    s16 temp_v1_2;
    s32 temp_v0_5;
    s32 temp_v0_8;
    struct TrackWayPoint *temp_v0_7;
    u16 temp_t7;
    u16 temp_v0_3;
    u16 temp_v0_4;

    player->unk_0C2 = 0x000C;
    player->unk_078 = 0;
    player->unk_07C = 0;
    player->unk_0C0 = 0;
    player->unk_08C = 0.0f;
    func_8008C354(player, arg1);
    temp_t7 = (u16) player->unk_222;
    switch (temp_t7) {
    case 0:
        temp_v1 = player->unk_0CA;
        if ((temp_v1 & 1) == 1) {
            temp_v0 = player->unk_0C8;
            if ((temp_v0 < 0x3C) || ((temp_v1 & 2) != 2)) {
                player->unk_0C8 = temp_v0 + 1;
                if (player->unk_0C8 >= 0x3C) {
                    player->unk_0C8 = 0x003C;
                }
            } else {
                temp_v0_2 = &D_801652A0[arg1];
                sp28 = temp_v0_2;
                move_f32_towards(&player->pos[1], *temp_v0_2 + 100.0f, 0.012f);
                move_s16_towards(player + (arg2 * 2) + 0xCC, 0, 0.2f);
                if ((*sp28 + 40.0f) <= player->pos[1]) {
                    player->unk_222 = 1;
                    player->unk_0C6 = 0x00FF;
                    player->unk_0CA |= 4;
                }
            }
        } else if ((temp_v1 & 2) == 2) {
            move_f32_towards(&player->pos[1], player->unk_074 + 100.0f, 0.025f);
            move_s16_towards(player + (arg2 * 2) + 0xCC, 0, 0.2f);
            if ((player->unk_074 + 40.0f) <= player->pos[1]) {
                player->unk_222 = 1;
                player->unk_0C6 = 0x00FF;
                player->unk_0CA |= 4;
            }
        }
        if ((player->unk_0BC & 0x80000000) == 0x80000000) {
            func_8008FB30(player, arg1);
        }
        break;
    case 1:
        temp_v0_3 = player->unk_000;
        if (((temp_v0_3 & 0x4000) == 0x4000) && !(temp_v0_3 & 0x1000)) {
            func_8009E088(arg1, 0xA);
        }
        if ((player->unk_0CA & 1) == 1) {
            move_f32_towards(&player->pos[1], D_801652A0[arg1] + 40.0f, 0.02f);
            player->unk_0C6 -= 8;
            if (player->unk_0C6 < 9) {
                player->unk_0C6 = 0;
                player->unk_222 = 2;
                player->unk_0CA &= 0xFFFE;
            }
        } else {
            move_f32_towards(&player->pos[1], player->rotY + 40.0f, 0.02f);
            player->unk_0C6 -= 8;
            if (player->unk_0C6 < 9) {
                player->unk_0C6 = 0;
                player->unk_222 = 2;
            }
        }
        player->unk_0CA &= 0xDFFF;
        break;
    case 2:
        func_80090178(player, arg1, &sp44, &sp38);
        player->unk_02E = -func_802B5224(&sp44, &sp38);
        player->pos[0] = sp44;
        player->pos[1] = sp48 + 40.0f;
        player->unk_222 = 3;
        player->pos[2] = sp4C;
        break;
    case 3:
        *(&D_80165330 + (arg1 * 2)) = 0;
        temp_v0_4 = player->unk_000;
        if (((temp_v0_4 & 0x4000) == 0x4000) && !(temp_v0_4 & 0x1000)) {
            func_8009E020(arg1, 0x14);
        }
        func_80090178(player, arg1, &sp44, &sp38);
        player->pos[0] = sp44;
        player->pos[1] = sp48 + 40.0f;
        player->pos[2] = sp4C;
        temp_v0_5 = arg1 * 0x1C70;
        sp28 = temp_v0_5;
        player->pos[2] += coss((temp_v0_5 - player->unk_02E) & 0xFFFF) * -5.0f;
        temp_f6 = sins((temp_v0_5 - player->unk_02E) & 0xFFFF) * -5.0f;
        player->unk_0C6 += 8;
        player->pos[0] += temp_f6;
        if (player->unk_0C6 >= 0xF0) {
            player->unk_0C6 = 0x00FF;
            player->unk_222 = 4;
            player->unk_0CA &= 0xFFFB;
            player->unk_0C8 = 0;
        }
        break;
    case 4:
        temp_v0_6 = player->unk_0C8;
        if ((temp_v0_6 == 0x0096) || (temp_v0_6 == 0x00C8) || (temp_v0_6 == 0x00FA)) {
            player->pos[2] += coss(-player->unk_02E & 0xFFFF) * -10.0f;
            player->pos[0] += sins(-player->unk_02E & 0xFFFF) * -10.0f;
        }
        if (player->unk_0C8 == 0x00FC) {
            temp_v0_7 = *D_80164550;
            player->pos[0] = (f32) temp_v0_7->wayPointX;
            player->pos[1] = (f32) temp_v0_7->wayPointY;
            player->pos[2] = (f32) temp_v0_7->wayPointZ;
        }
        move_f32_towards(&player->pos[1], (player->unk_074 + player->boundingBoxSize) - 2.0f, 0.04f);
        temp_v0_8 = player->unk_0BC;
        player->unk_0C8 += 1;
        if (((temp_v0_8 & 8) != 8) || (temp_v0_8 & 0x8000)) {
            player->unk_0CA &= 0xEFFF;
            if (player->unk_0C8 >= 0x5B) {
                if (player->unk_000 & 0x4000) {
                    func_800C9018((u8) arg1, 0x0100FA28);
                }
                if (gModeSelection == 3) {
                    func_8006B8B4(player, arg1);
                }
                player->unk_0CA &= 0xFFFD;
                temp_v1_2 = player->unk_0CA;
                player->unk_0DE &= 0xFFFB;
                if ((temp_v1_2 & 0x80) != 0x80) {
                    player->unk_0CA = temp_v1_2 & 0xFFF7;
                    if (((f64) player->unk_214 * 0.9) <= (f64) player->unk_09C) {
                        func_8008F104(player, arg1);
                    }
                }
            }
        }
        break;
    }
    player->unk_DA0 += 8.0f;
    if (player->unk_DA0 >= 180.0f) {
        player->unk_DA0 = 180.0f;
    }
    if (player->unk_D98 == 1) {
        player->unk_D9C += player->unk_DA0;
        if (player->unk_D9C >= 1820.0f) {
            player->unk_DA0 = 0.0f;
            player->unk_D98 *= -1;
        }
    }
    if (player->unk_D98 == -1) {
        player->unk_D9C -= player->unk_DA0;
        if (player->unk_D9C <= -1820.0f) {
            player->unk_DA0 = 0.0f;
            player->unk_D98 *= -1;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_80090970.s")
#endif

#if NEEDS_RODATA
s32 func_800910E4(Player *arg0) {
    s32 phi_v0;
    phi_v0 = 0;
    if ((((((arg0->unk_0CA & 2) == 2) || ((arg0->unk_0CA & 8) == 8)) || ((arg0->unk_000 & 0x40) != 0)) || ((arg0->unk_000 & 0x800) != 0)) || ((arg0->unk_000 & 0x8000) == 0)) {
        return 1;
    }

    switch (arg0->unk_010) {
    case 12:
    case 13:
    case 14:
    case 15:
        if ((arg0->unk_0BC & 8) != 0) {
            return 1;
        }
        phi_v0 = 0x5F934EC4;
        goto func_800910E4_label;
    case 10:
        phi_v0 = 0xDF934EC4;
    case 11:
        phi_v0 = phi_v0 | 0xDF934EC4;
func_800910E4_label:
    default:
        if ((arg0->unk_0BC & phi_v0) != 0) {
            return 1;
        }
        return 0;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_800910E4.s")
#endif

void func_800911B4(Player* player, s8 arg1) {
    s32 temp_v0;

    player->unk_0AE = player->unk_02C[1];
    player->unk_044 |= 0x1800;
    player->unk_044 &= ~0x0400;
    player->unk_044 |=  0x2000;
    player->kartHopJerk = D_800EF678;
    player->kartHopAcceleration = 0.0f;
    player->kartHopVelocity = D_800EF67C;
    player->unk_0B2 = 2;
    player->unk_0C0 = 0;
    player->unk_07C = 0;
    player->unk_078 = 0;
    D_8018D920[arg1] = 0;

    player->unk_258[31].unk_012 = 0;
    player->unk_258[31].unk_01E = 0;
    player->unk_258[31].unk_01C = 0;
    player->unk_258[30].unk_012 = 0;
    player->unk_258[30].unk_01E = 0;
    player->unk_258[30].unk_01C = 0;

    temp_v0 = 2; do {
        player->unk_258[31 + temp_v0].unk_01C = 0;
        player->unk_258[31 + temp_v0].unk_01E = 0;
        player->unk_258[31 + temp_v0].unk_012 = 0;
        player->unk_258[32 + temp_v0].unk_01C = 0;
        player->unk_258[32 + temp_v0].unk_01E = 0;
        player->unk_258[32 + temp_v0].unk_012 = 0;
        player->unk_258[33 + temp_v0].unk_01C = 0;
        player->unk_258[33 + temp_v0].unk_01E = 0;
        player->unk_258[33 + temp_v0].unk_012 = 0;

        temp_v0 += 4;
        player->unk_258[26 + temp_v0].unk_01C = 0;
        player->unk_258[26 + temp_v0].unk_01E = 0;
        player->unk_258[26 + temp_v0].unk_012 = 0;
    } while (temp_v0 < 10);
}

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc

extern s8 D_801658BC;
extern ? D_8018D920;
static ? D_800E706C;                                /* unable to generate initializer */

void func_80091298(Player *player, s8 arg1) {
    f32 temp_f0;
    f32 temp_f2;
    s16 *temp_a2;
    s16 temp_t9;
    s16 var_v1;

    spC[0].unk0 = D_800E706C.unk0;
    spC[0].unk4 = (s32) D_800E706C.unk4;
    spC[0].unk8 = (s32) D_800E706C.unk8;
    player->unk_044 |= 0x2000;
    if (player->unk_0B2 == 0) {
        var_v1 = 0;
    } else {
        temp_a2 = (arg1 * 2) + &D_8018D920;
        player->unk_02E -= 0xE38;
        temp_t9 = *temp_a2 - 0xE38;
        *temp_a2 = temp_t9;
        var_v1 = (s16) ((s32) (temp_t9 & 0xFFFF) / 3640);
    }
    if (((var_v1 == 9) && (player->unk_0B2 == 1)) || ((var_v1 == 0) && (player->unk_0B2 == 2)) || (player->unk_0B2 == 0)) {
        player->unk_0B2 -= 1;
        if (player->unk_0B2 <= 0) {
            player->unk_0B2 = 0;
        }
        if (player->unk_0B2 == 0) {
            temp_f2 = player->boundingBoxSize;
            temp_f0 = (&spC[0])[arg1];
            if ((player->pos[1] - (temp_f2 + 1.0f)) <= temp_f0) {
                player->unk_DCC = 0;
                player->unk_0A8 = 0;
                player->pos[1] = (f32) ((f64) (temp_f0 + temp_f2) + 1.08);
                player->unk_07C = 0;
                player->unk_0C0 = 0;
                player->unk_044 &= 0xF7FF;
                player->unk_DC0 = 3.0f;
                player->unkD4 = 0;
                player->unk_100 = gKartGravityTable[player->characterId];
                player->unk_000 |= 0x2000;
                player->unk_094 = 0.0f;
                player->unk_08C = 0.0f;
                player->unk_09C = 0.0f;
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

void func_80091440(s8 arg0) {
    if ((gPlayers[arg0].unk_044 & 0x800) == 0) {
        gPlayers[arg0].unk_044 |= 0x2400;
        gPlayers[arg0].unk_000 &= ~0x2000;
    }
}

void func_800914A0(void) {
    D_80152308 = gPlayerOneCopy->unk_006 + 7;
    if ((s32) D_8015F6F8 < D_80152308) {
        D_80152308 -= D_8015F6F8;
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
extern u16 D_80152308;
extern s16 D_8015F6F8;
extern u32 D_8015F718;
static ? D_800E7080;                                /* unable to generate initializer */
static ? D_800E708C;                                /* unable to generate initializer */

void func_800914E0(void) {
    ? sp64;
    ? sp58;
    s32 sp48;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    Player **var_t1;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f4;
    f32 temp_f8;
    s16 temp_a0;
    s16 temp_a0_2;
    s16 temp_v0_2;
    u32 temp_v0;
    void *temp_v0_3;

    sp64.unk0 = (s32) D_800E7080.unk0;
    sp64.unk4 = (s32) D_800E7080.unk4;
    sp64.unk8 = (s32) D_800E7080.unk8;
    sp58.unk0 = (s32) D_800E708C.unk0;
    sp58.unk4 = (s32) D_800E708C.unk4;
    sp58.unk8 = (s32) D_800E708C.unk8;
    temp_v0 = D_8015F718;
    temp_a0 = temp_v0 & 0xFFFFFF;
    var_t1 = &gPlayerOneCopy;
    sp48 = gSegmentTable[temp_v0 >> 0x18] + temp_a0 + 0x80000000;
    temp_v0_2 = (s16) gPlayerOneCopy->unk_006 - D_80152308;
    cameras->up[0] = 0.0f;
    cameras->up[2] = 0.0f;
    cameras->up[1] = 1.0f;
    if (temp_v0_2 == 7) {
        func_800914A0(temp_a0, 7);
        goto block_5;
    }
    if (temp_v0_2 < 0xE) {
        temp_a0_2 = temp_v0_2 + D_8015F6F8;
        if (temp_a0_2 == 7) {
            func_800914A0(temp_a0_2, 7);
block_5:
            var_t1 = &gPlayerOneCopy;
        }
    }
    temp_v0_3 = (D_80152308 * 8) + sp48;
    temp_f8 = (f32) (temp_v0_3->unk0 + 0xA);
    cameras->pos[0] = temp_f8;
    temp_f16 = (f32) (temp_v0_3->unk2 + 7);
    cameras->pos[1] = temp_f16;
    temp_f4 = (f32) (temp_v0_3->unk4 - 0x14);
    cameras->pos[2] = temp_f4;
    cameras->lookAt[0] = (*var_t1)->pos[0];
    cameras->lookAt[1] = (*var_t1)->pos[1];
    cameras->lookAt[2] = (*var_t1)->pos[2];
    func_802ADDC8(&cameras->unk_54, 20.0f, temp_f8, temp_f16, temp_f4);
    temp_f12 = cameras->lookAt[0] - cameras->pos[0];
    sp38 = temp_f12;
    temp_f14 = cameras->lookAt[2] - cameras->pos[2];
    sp34 = cameras->lookAt[1] - cameras->pos[1];
    sp30 = temp_f14;
    cameras->rot[1] = atan2s(temp_f12, temp_f14);
    cameras->rot[0] = atan2s(sqrtf((sp38 * sp38) + (temp_f14 * temp_f14)), sp34);
    cameras->rot[2] = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_800914E0.s")
#endif
