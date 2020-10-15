#include <ultra64.h>
#include <macros.h>

extern void func_800C8F44(u16 arg0);
extern u16 D_800DC5A8;

void func_800029B0(void) {
    switch(D_800DC5A8) {
        case 0:
            func_800C8F44(127);
            break;
        case 1:
            func_800C8F44(75);
            break;
        case 2:
            func_800C8F44(0);
            break;
    }
}

GLOBAL_ASM("asm/non_matchings/code_800029B0.s")
