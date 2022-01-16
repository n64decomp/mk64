#ifndef CODE_8008C1D0_H
#define CODE_8008C1D0_H

#include "common_structs.h"

/* Function Prototypes */

void func_8008C310(Player*);
void func_8008C354(Player*, s8);
void func_8008C528(Player*, s8);
void func_8008C62C(Player*, s8);
void func_8008C6D0(Player*, s8);
void func_8008D0E4(Player*, s8);
void func_8008D3B0(Player*, s8);
void func_8008D554(Player*);
void func_8008D760(Player*);
void func_8008D97C(Player*);
void func_8008E884(Player*, s8);
void func_8008EC34(Player*, s8);
void func_8008EEC4(Player*);
void func_8008F0E8(Player*);
void func_8008F3E0(Player*);
void func_8008F5A4(Player*, s8);
void func_8008F86C(Player*, s8);
void func_8008FDA8(Player*, s8);
void func_8008FEDC(Player*, s8);
void func_8008C8C4(Player*, s8);
void func_8008C6D0(Player*, s8);
void func_80090778(Player*);
void func_80090868(Player*);
void func_800098FC(u32, Player*);

// code_8001F980
void move_f32_towards(f32*, f32, f32);
// code_800431B0
void func_800569F4(s32);
void func_80056A40(s32, s32);
void func_80056A94(s32, Player*);
// code_80057C60
void func_8006B8B4(Player*, s8); 
// code_80027D00.c
s32  func_80031F48(Player*, float);
// audio/external.c
void func_800C90F4(s32, s32);
void func_800C9060();
void func_800C9250(s32);
void func_800CA59C(u8);
void func_800CA730(u8);
void func_800CA984(s32); 
void func_800CAACC(u8);
void func_800CAFC0(u8);

/* This is where I'd put my static data, if I had any */

extern u16 D_800DC51C;
extern f32 D_800E3710[];
extern f32 D_800E3730[];
extern f32 D_800E3750[];
extern f32 D_800E3770[];
extern f32 D_800E37B0[];
extern f32 D_800E3790[];
extern f32 D_800E37D0[];
extern f32 D_800E37F0[];
extern f32 D_800EF568;
extern f32 D_800EF56C;
extern f64 D_800EF588;
extern f64 D_800EF5A0;
extern s16 D_80165190[4][8];
extern f32 D_80165280[];
extern s32 D_80165420[];
extern s32 D_80165440[];
extern s32 D_80165460[];
extern s32 D_80165480[];
extern s32 D_8018D900[];
extern s16 D_8018D920[];
extern s32 D_8018D930[];
extern s32 D_8018D950[];
extern s32 D_8018D970[];


#endif
