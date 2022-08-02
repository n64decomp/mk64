#ifndef CODE_8001F980_H
#define CODE_8001F980_H

#include "types.h"
#include "common_structs.h"

/* Function Prototypes */

void func_8001F980(s32*, s32*);
u16  func_8001FB0C(Player*, Camera*, f32, f32);
u16  func_8001FD78(Player*, f32, f32, f32);
void func_80020000(Player*, Camera*, u8, u8);
void func_8002088C();
void func_80020F1C();
void func_80021244(Player*, s8, s8);
void func_800215DC();
void func_800219BC();
void func_80021C78();
void func_80021D40();
void func_80021DA8();
void func_80021E10(Mat4, Vec3f, Vec3s);
void func_80021F50(Mat4, Vec3f);
void func_80021F84(Mat4, f32);
void func_80021FF8(Mtx*, Mat4);
void func_80022180(Mtx*, Mat4);
s32  func_800224F0(s16*, s16, s16);
void func_8002276C();
void move_s32_towards(s32*, s32, f32);
void move_f32_towards(f32*, f32, f32);
void move_s16_towards(s16*, s16, f32);
void move_u16_towards(u16*, s16, f32);
void func_80022A98(Player*, s8);
void func_80022B50(Player*, s8);
void func_80022BC4(Player*, s8);
void func_80022DB4(Player*, s8);
void func_800235AC(Player*, s8);
void func_80026A48(Player*, s8);
void func_80030A34(Player*);

/* This is where I'd put my static data, if I had any */

extern u16 D_800DC51C;
extern s32 D_800DDB58;
extern f64 D_800ED680;
extern f64 D_800ED688;
extern s32 D_80164A28;
extern u16 D_8015F894;

#endif
