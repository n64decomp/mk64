#include <ultra64.h>
#include <macros.h>

extern u32 func_802B5224(void);
extern s32 gIsMirrorMode;

s16 func_80005FD0(void) {
    s16 temp_ret;
    s16 phi_v1;

    temp_ret = func_802B5224();
    phi_v1 = temp_ret;
    if (gIsMirrorMode != 0) {
        phi_v1 = -temp_ret;
    }
    return phi_v1;
}

GLOBAL_ASM("asm/non_matchings/code_80005FD0.s")
