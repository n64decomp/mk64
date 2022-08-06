#ifndef _FUNCTIONS_H_
#define _FUNCTIONS_H_

#include "common_structs.h"

void mio0decode(u8* arg0, u8* arg1);

void func_8000F2DC(void);
void func_8000F628(void);
void func_8000EEDC(void);
void func_802B6540(f32* arg0, f32 arg1, f32 arg2, f32 arg3, s16 arg4);
void func_80295BF8(s32 arg0);
void func_8005D6C0(Player* player);
void func_8006B7E4(Player* player, s32 arg1);
void func_800267AC(Player* player, s8 arg1, s8 arg2);
void func_8005D290(void);
// TODO: should rot, arg4, and arg5 be rotx, roty, and rotz?
void func_8001C4D0(f32 x, f32 y, f32 z, s16 rot, s16 arg4, s32 arg5);
void func_8003DB5C(void);
void func_8003D080(void);



#endif
