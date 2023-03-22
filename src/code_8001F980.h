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
void func_800212B4();
void func_800215DC();
void func_8002186C();
void func_800219BC();
void func_80021B0C();
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
void func_80024374(Player*, s8, s8);
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
extern void *D_800DDB5C[];
extern Vtx *D_800DDBB4[];
extern f32 D_800DDBD4[];
extern s32 D_800DDE74[];
extern Vtx D_800E51D0[];
extern Vtx D_800E5210[];
extern f64 D_800ED680;
extern f64 D_800ED688;
extern f32 D_800ED6A8;

// There are actually found in data_0DD0A0_2_0.s
extern Vtx D_800E49C0[];
extern Vtx D_800E4AC0[];
extern Vtx D_800E4BC0[];
extern Vtx D_800E4CC0[];
extern Vtx D_800E4DC0[];
extern Vtx D_800E4EC0[];
extern Vtx D_800E4FD0[];
extern Vtx D_800E50D0[];

extern u8 *gKartMarioWheels0[];
extern u8 *gKartMarioWheels1[];
extern u8 *gKartLuigiWheels0[];
extern u8 *gKartLuigiWheels1[];
extern u8 *gKartBowserWheels0[];
extern u8 *gKartBowserWheels1[];
extern u8 *gKartToadWheels0[];
extern u8 *gKartToadWheels1[];
extern u8 *gKartYoshiWheels0[];
extern u8 *gKartYoshiWheels1[];
extern u8 *gKartDKWheels0[];
extern u8 *gKartDKWheels1[];
extern u8 *gKartPeachWheels0[];
extern u8 *gKartPeachWheels1[];
extern u8 *gKartWarioWheels0[];
extern u8 *gKartWarioWheels1[];


extern u8 *D_800DDE34[];
extern u8 *D_800DDE54[];


// These all come the kart data stuff, they should end up in their own inc.c eventually
extern u8 gKartMario168Wheel0[];
extern u8 gKartMario147Wheel0[];
extern u8 gKartMario126Wheel0[];
extern u8 gKartMario105Wheel0[];
extern u8 gKartMario084Wheel0[];
extern u8 gKartMario063Wheel0[];
extern u8 gKartMario042Wheel0[];
extern u8 gKartMario021Wheel0[];
extern u8 gKartMario000Wheel0[];
extern u8 gKartMario269Wheel0[];
extern u8 gKartMario269Wheel0[];
extern u8 gKartMario249Wheel0[];
extern u8 gKartMario229Wheel0[];
extern u8 gKartMario229Wheel0[];
extern u8 gKartMario229Wheel0[];
extern u8 gKartMario209Wheel0[];
extern u8 gKartMario189Wheel0[];
extern u8 gKartMario189Wheel0[];
extern u8 gKartLuigi168Wheel0[];
extern u8 gKartLuigi147Wheel0[];
extern u8 gKartLuigi126Wheel0[];
extern u8 gKartLuigi105Wheel0[];
extern u8 gKartLuigi084Wheel0[];
extern u8 gKartLuigi063Wheel0[];
extern u8 gKartLuigi042Wheel0[];
extern u8 gKartLuigi021Wheel0[];
extern u8 gKartLuigi000Wheel0[];
extern u8 gKartLuigi269Wheel0[];
extern u8 gKartLuigi269Wheel0[];
extern u8 gKartLuigi249Wheel0[];
extern u8 gKartLuigi229Wheel0[];
extern u8 gKartLuigi229Wheel0[];
extern u8 gKartLuigi229Wheel0[];
extern u8 gKartLuigi209Wheel0[];
extern u8 gKartLuigi189Wheel0[];
extern u8 gKartLuigi189Wheel0[];
extern u8 gKartBowser168Wheel0[];
extern u8 gKartBowser147Wheel0[];
extern u8 gKartBowser126Wheel0[];
extern u8 gKartBowser105Wheel0[];
extern u8 gKartBowser084Wheel0[];
extern u8 gKartBowser063Wheel0[];
extern u8 gKartBowser042Wheel0[];
extern u8 gKartBowser021Wheel0[];
extern u8 gKartBowser000Wheel0[];
extern u8 gKartBowser269Wheel0[];
extern u8 gKartBowser269Wheel0[];
extern u8 gKartBowser249Wheel0[];
extern u8 gKartBowser229Wheel0[];
extern u8 gKartBowser229Wheel0[];
extern u8 gKartBowser229Wheel0[];
extern u8 gKartBowser209Wheel0[];
extern u8 gKartBowser189Wheel0[];
extern u8 gKartBowser189Wheel0[];
extern u8 gKartToad168Wheel0[];
extern u8 gKartToad147Wheel0[];
extern u8 gKartToad126Wheel0[];
extern u8 gKartToad105Wheel0[];
extern u8 gKartToad084Wheel0[];
extern u8 gKartToad063Wheel0[];
extern u8 gKartToad042Wheel0[];
extern u8 gKartToad021Wheel0[];
extern u8 gKartToad000Wheel0[];
extern u8 gKartToad269Wheel0[];
extern u8 gKartToad269Wheel0[];
extern u8 gKartToad249Wheel0[];
extern u8 gKartToad229Wheel0[];
extern u8 gKartToad229Wheel0[];
extern u8 gKartToad229Wheel0[];
extern u8 gKartToad209Wheel0[];
extern u8 gKartToad189Wheel0[];
extern u8 gKartToad189Wheel0[];
extern u8 gKartYoshi168Wheel0[];
extern u8 gKartYoshi147Wheel0[];
extern u8 gKartYoshi126Wheel0[];
extern u8 gKartYoshi105Wheel0[];
extern u8 gKartYoshi084Wheel0[];
extern u8 gKartYoshi063Wheel0[];
extern u8 gKartYoshi042Wheel0[];
extern u8 gKartYoshi021Wheel0[];
extern u8 gKartYoshi000Wheel0[];
extern u8 gKartYoshi269Wheel0[];
extern u8 gKartYoshi269Wheel0[];
extern u8 gKartYoshi249Wheel0[];
extern u8 gKartYoshi229Wheel0[];
extern u8 gKartYoshi229Wheel0[];
extern u8 gKartYoshi229Wheel0[];
extern u8 gKartYoshi209Wheel0[];
extern u8 gKartYoshi189Wheel0[];
extern u8 gKartYoshi189Wheel0[];
extern u8 gKartDK168Wheel0[];
extern u8 gKartDK147Wheel0[];
extern u8 gKartDK126Wheel0[];
extern u8 gKartDK105Wheel0[];
extern u8 gKartDK084Wheel0[];
extern u8 gKartDK063Wheel0[];
extern u8 gKartDK042Wheel0[];
extern u8 gKartDK021Wheel0[];
extern u8 gKartDK000Wheel0[];
extern u8 gKartDK269Wheel0[];
extern u8 gKartDK269Wheel0[];
extern u8 gKartDK249Wheel0[];
extern u8 gKartDK229Wheel0[];
extern u8 gKartDK229Wheel0[];
extern u8 gKartDK229Wheel0[];
extern u8 gKartDK209Wheel0[];
extern u8 gKartDK189Wheel0[];
extern u8 gKartDK189Wheel0[];
extern u8 gKartPeach168Wheel0[];
extern u8 gKartPeach147Wheel0[];
extern u8 gKartPeach126Wheel0[];
extern u8 gKartPeach105Wheel0[];
extern u8 gKartPeach084Wheel0[];
extern u8 gKartPeach063Wheel0[];
extern u8 gKartPeach042Wheel0[];
extern u8 gKartPeach021Wheel0[];
extern u8 gKartPeach000Wheel0[];
extern u8 gKartPeach269Wheel0[];
extern u8 gKartPeach269Wheel0[];
extern u8 gKartPeach249Wheel0[];
extern u8 gKartPeach229Wheel0[];
extern u8 gKartPeach229Wheel0[];
extern u8 gKartPeach229Wheel0[];
extern u8 gKartPeach209Wheel0[];
extern u8 gKartPeach189Wheel0[];
extern u8 gKartPeach189Wheel0[];
extern u8 gKartWario168Wheel0[];
extern u8 gKartWario147Wheel0[];
extern u8 gKartWario126Wheel0[];
extern u8 gKartWario105Wheel0[];
extern u8 gKartWario084Wheel0[];
extern u8 gKartWario063Wheel0[];
extern u8 gKartWario042Wheel0[];
extern u8 gKartWario021Wheel0[];
extern u8 gKartWario000Wheel0[];
extern u8 gKartWario269Wheel0[];
extern u8 gKartWario269Wheel0[];
extern u8 gKartWario249Wheel0[];
extern u8 gKartWario229Wheel0[];
extern u8 gKartWario229Wheel0[];
extern u8 gKartWario229Wheel0[];
extern u8 gKartWario209Wheel0[];
extern u8 gKartWario189Wheel0[];
extern u8 gKartWario189Wheel0[];

#endif
