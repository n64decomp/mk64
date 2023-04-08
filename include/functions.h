#ifndef _FUNCTIONS_H_
#define _FUNCTIONS_H_

#include "common_structs.h"

void mio0decode(u8* arg0, u8* arg1);

// Unused mio0decode function.
void func_80040030(u8* arg0, u8* arg1);

void func_8000F2DC(void);
void func_8000F628(void);
void func_8006B7E4(Player* player, s32 arg1);
void func_800267AC(Player* player, s8 arg1, s8 arg2);
void func_8005D290(void);
// TODO: should rot, arg4, and arg5 be rotx, roty, and rotz?
void func_8001C4D0(f32 x, f32 y, f32 z, s16 rot, s16 arg4, s32 arg5);



#endif
