#ifndef CODE_8001F980_H
#define CODE_8001F980_H

#include "types.h"
#include "common_structs.h"

#define SOME_TEXTURE_POINTER_MATH 0x800

/* Function Prototypes */

void func_8001F980(s32*, s32*);
void func_8001F9E4(Player*, Camera*, s8);
u16  func_8001FB0C(Player*, Camera*, f32, f32);
u16  func_8001FD78(Player*, f32, f32, f32);
void func_80020000(Player*, Camera*, u8, u8);
void func_8002088C();
void func_80020F1C();
void func_80020524();
void func_80021244(Player*, s8, s8);
void func_800215DC();
void func_8002186C();
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
void func_80022744();
void func_8002276C();
void func_80022A98(Player*, s8);
void func_80022B50(Player*, s8);
void func_80022BC4(Player*, s8);
void func_80022CA8(Player*, s8, s8, s8);
void func_80022D60(Player*, s8, s8, s8);
void func_80022DB4(Player*, s8);
void func_80022E84(Player*, s8, s8, s8);
void func_80022F14(Player*, s8, s32, f32);
void func_80023038(Player*, s8, s32, f32);
s32  func_800230E4(s32, s8);
void func_800231D8(Player*, s8);
void func_800235AC(Player*, s8);
void func_80023BF0(Player*, s8, s8, s8);
void func_80023C84(Player*, s8, s8);
void func_80026A48(Player*, s8);
void func_80030A34(Player*);
void func_8002701C();
void func_80027024(s32, s32, s32);

/* This is where I'd put my static data, if I had any */

extern u16 D_8015F894;

extern s32 D_80164A28;
extern s16 D_80164AAE[];
extern s16 D_80164AB0[];
extern s16 D_80164ABE[];
extern s16 D_80164AC0[];
extern s32 D_80164AD0[];
extern u16 D_80164B10[];
extern u16 D_80164B20[];
extern u16 D_80164B30[];
extern u16 D_80164B40[];
extern u16 D_80164B50[];
extern u16 D_80164B60[];
extern s32 D_80164B80[];

extern u32 D_8018D474;
extern s32 D_8018D930[];

extern Gfx D_0D008C78[];
extern Gfx D_0D008D58[];

extern u16 D_800DC51C;
extern s32 D_800DDB58;
extern Vtx *D_800DDBB4[];
extern f32 D_800DDBD4[];
extern s32 D_800DDE74[];
extern Vtx D_800E51D0[];
extern f64 D_800ED680;
extern f64 D_800ED688;
extern f32 D_800ED6A8;

#endif
