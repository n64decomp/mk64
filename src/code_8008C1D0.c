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
    temp_v1 = player->unk_254;
    player->unk_0C2 = 0;
    player->unk_0F0 = D_800E37B0[temp_v1];
    player->unk_0F4 = 0.0f;

    player->unk_0EC = D_800E3790[temp_v1];
    player->posY = 0;
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
    player->posY += (s16)0xA0;
    player->unk_042 += (s16)0x71C;
    if (player->posY >= 0x2000) {
        player->posY = 0;
        player->unk_236 = (s16) (player->unk_236 - 1);
        if (player->unk_236 == 0) {
            player->posY = 0x2000;
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
    player->posY = 0;
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

/*
void func_8008C73C(Player *player, s8 arg1, s8 unk3, s8 unk4) {
    s32 temp_v0;
    func_8008C354(player, arg1);
    //temp_v0 = player->unk_0BC;
    if (((player->unk_0BC & 0x80) != 0x80) && ((player->unk_0BC & 0x40) != 0x40)) {
        player->unk_0BC = player->unk_0BC & ~0x10;
        if (((s32) player->unk_0C0 / 182) >= 0) {
            player->unk_0BC = (s32) ((player->unk_0BC & ~0x10) | 0x40);
        } else {
            player->unk_0BC = (s32) (player->unk_0BC | 0x80);
        }
        player->unk_0B4 = (u16) (player->unk_0B4 | 0x80);
        player->unk_0B0 = 2;
        player->unk_0C0 = 0;
        player->unk_07C = 0;
        player->unk_078 = 0;
        player->unk_0AE = (s16) player->unk_02E;
        D_80165190[0][arg1] = 1;
        D_80165190[1][arg1] = 1;
        D_80165190[2][arg1] = 1;
        D_80165190[3][arg1] = 1;
        D_80165280[arg1++] = (f32) player->unk_09C;
        D_80165480[arg1++] = 0.0f;
        D_80165460[arg1++] = 0.0f;
        D_80165440[arg1++] = 0.0f;
        D_80165420[arg1++] = 0.0f;
        D_8018D920[D_80165190[0][0]] = 0;
        if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) != 0x100)) {
            func_800C90F4(arg1 & 0xFF, (player->unk_254 * 0x10) + 0x29008003, player, player->unk_000);
            return;
        }
        func_800098FC(arg1, player, player, player->unk_000);
        // Duplicate return node #9. Try simplifying control flow for better match
    }
}
*/
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008C73C.s")
/*
void func_8008C8C4(Player *player, s8 arg1) {
    s32 temp_v1;

    
    

    player->unk_0BC = player->unk_0BC & ~0x80;
    player->unk_0BC = player->unk_0BC & ~0x40;
    

    player->unk_02E = player->unk_0AE;
    player->posY = 0;
    player->unk_07C = 0;
    player->unk_0C0 = 0;
    player->unk_0BC &= ~0x800;

    D_80165190[0][arg1] = 1;
    D_80165190[1][arg1] = 1;
    D_80165190[2][arg1] = 1;
    D_80165190[3][arg1] = 1;
    
    player->unk_046 &= 0xFFBF;
    temp_v1 = arg1++;
    if ((D_80165460[temp_v1] == 1) && (player->unk_000 & 0x4000 == 0x4000)) {
        player->unk_09C += 100.0f;
        
    }
    if (gModeSelection == 2 && player->unk_000 & 0x1000 == 0x1000 && D_800DC51C == 0 && player->unk_0CA & 2 == 0 && D_801643B8[temp_v1] != 0) {
        
        player->unk_00C |= 0x400000;

        
    }
}
*/
GLOBAL_ASM("asm/non_matchings/code_8008C1D0/func_8008C8C4.s")

GLOBAL_ASM("asm/non_matchings/code_8008C1D0/code_8008C1D0.s")
