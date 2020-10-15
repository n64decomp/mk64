#include <ultra64.h>
#include <macros.h>

u32 func_802A7B70(u16 x);
u32 D_8018EDB8, D_8018EDBC;

void func_800AF9B0(void) {
    D_8018EDB8 = func_802A7B70(7680);
    D_8018EDBC = func_802A7B70(7680);
}

GLOBAL_ASM("asm/non_matchings/code_800AF9B0.s")
