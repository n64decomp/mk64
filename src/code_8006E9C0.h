#ifndef CODE_8006E9C0_H
#define CODE_8006E9C0_H

#include "common_structs.h"

void func_8006E9C0();
void func_8006EA5C();
void func_8006ED60();
s32  func_8006ED94(s32*, s32, s32, s32);
void func_8006EE44();
void func_80070190();
void func_80070714();

extern s32 gScreenModeSelection;
extern s32 gTextureLogoMarioKart64;
extern s16 D_80165730;
extern s16 D_80165738;
extern s16 D_80165740;
extern s16 D_80165748;
extern s32 D_80183D5C;
extern s8  D_8018EDF3;
extern s32 D_8018D1E0;
extern s32 D_8018D9B0;

extern struct_8018CA70_entry D_8018CA70[];
// These are all *technically* hardcoded references to spots in D_8018CA70, but there's something weird
// going on match wise in func_8006EA5C that means we have to (for now) leave them as separate variables
extern s8 D_8018CAE0;
extern s8 D_8018CAE1;
extern s8 D_8018CAE2;
extern s8 D_8018CAF1;
extern s8 D_8018CB64;
extern s8 D_8018CB65;
extern s8 D_8018CB66;
extern s8 D_8018CB75;
extern s8 D_8018CBE8;
extern s8 D_8018CBE9;
extern s8 D_8018CBEA;
extern s8 D_8018CBF9;
extern s8 D_8018CC6C;
extern s8 D_8018CC6D;
extern s8 D_8018CC6E;
extern s8 D_8018CC7D;

#endif
