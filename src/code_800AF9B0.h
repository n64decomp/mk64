#ifndef CODE_800AF9B0_H
#define CODE_800AF9B0_H

#include "PR/os.h"
#include "common_structs.h"

/* Function Prototypes */

void func_800AF9B0();
void func_800B13B0(struct Controller*, s32);
s32  func_800B34E8(s32);
void func_800B3B58(struct Controller*, u16);
void func_800B44AC();
void func_800B44BC();
s32  func_800B4520();
void func_800B45E0(s32);
void func_800B4670();
void func_800B46D0();
void func_800B4728(s32);
void func_800B4820();
s32  func_800B4874(s32);
s32  func_800B492C();
s32  func_800B49E4();
void func_800B4A10();
s32  func_800B4E24(s32);
s32  func_800B4EB4(s32, s32);
s32  func_800B4F2C();
s32  func_800B4FB0(s32);
u8   func_800B54C0(s32, s32);
u8   func_800B54EC(s32, s32);
u8   func_800B5508(s32, s32, s32);
s32  func_800B5530(s32);
s32  func_800B555C();
s32  func_800B557C();
void func_800B559C(s32);
void func_800B5948();
s32  func_800B5B2C(s32);
s32  func_800B5F30();
s32  func_800B6014();
s32  func_800B6A68();

// audio/external.c
void play_sound2(s32);
void func_800CA330(s32);

// memory.c
u32  func_802A7B70(u16);

/* This is where I'd put my static data, if I had any */

extern s32         D_800DC540;
extern u16         D_800E86F0;
extern s32         D_800E86F4;
extern s8          D_800E86F8;
extern s8          D_800E86FC;
extern u8          D_800F2E64;
extern u8          D_800F2E74;
extern s32         D_8018E7A8;
extern s8          D_8018E7B0;
extern OSPfs       D_8018E868;
extern OSPfs       D_8018E8D0;
extern s32         D_8018EB78;
extern s32         D_8018EB7C;
extern s32         D_8018EB84;
extern u8          D_8018ED10[4]; // Direct reference to the grandPrixPoints section of save data
extern u8          D_8018ED11;
extern u8          D_8018ED12;
extern u8          D_8018ED13;
extern s8          D_8018ED16;
extern s8          D_8018ED17;
extern u32         D_8018EDB8;
extern u32         D_8018EDBC;
extern s8          D_8018EDE5;
extern s8          D_8018EDE6;
extern s8          D_8018EDE7;
extern s8          D_8018EDEC;
extern s8          D_8018EE0A;

#endif