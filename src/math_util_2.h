#ifndef MATH_UTIL_2_H
#define MATH_UTIL_2_H

#include "types.h"
#include "common_structs.h"

/* Function Prototypes */

// Unused functions
void func_80040E50(s32*, s32);
void func_80040E60(s32*,s32);
void func_80040E74(s32*, s32);
s32 func_80040E84(s32*, s32);
s32 func_80040EA4(s32*, s32);
s32 f32_step_up_towards_alternate(f32*, f32, f32*);
s32 f32_step_down_towards_alternate(f32*, f32, f32*);
s32 s32_step_up_towards_alternate(s32*, s32, s32*);
s32 s32_step_down_towards_alternate(s32*, s32, s32*);
s32 s16_step_up_towards_alternate(s16*, s16, s16*);
s32 s16_step_down_towards_alternate(s16*, s16, s16*);
s32 s32_step_towards(s32*, s32, s32);
s32 func_80041608(f32, f32, f32, f32, f32);
s32 func_80041680(f32, f32);
s32 func_800416AC(f32, f32);
void func_80041F54(s32, s32);
void func_80042000(u16);
void func_800420A8(f32);
void func_8004214C(u16, f32);
void func_800421FC(s32, s32, f32);
void func_800423F0(Mat4, u16, u16, u16);
void func_8004252C(Mat4, u16, u16);
void func_80042984(Mat4, f32);
void func_800429B8(Mat4, f32);
void func_800429EC(Mat4, f32);
void func_80042B5C(Vec3f, Vec3f, Vec3s);
void func_80042EB8(Vec3f, Vec3f, f32);


void func_80040EC4(Vec3f, Vec3f);
s32 f32_step_up_towards(f32*, f32, f32);
s32 f32_step_down_towards(f32*, f32, f32);
s32 s32_step_up_towards(s32*, s32, s32);
s32 s32_step_down_towards(s32*, s32, s32);
s32 s16_step_up_towards(s16*, s16, s16);
s32 u16_step_up_towards(u16*, u16, u16);
s32 s16_step_down_towards(s16*, s16, s16);
s32 u16_step_down_towards(u16*, s32, s32);
s32 s16_step_towards(s16*, s16, s16);
s32 f32_step_towards(f32*, f32, f32);
void func_80041480(s16*, s16, s16, s16*);
s32 vec3f_set_dupe_2_electric_boogaloo(Vec3f, f32, f32, f32);
Vec3f *func_80041530(Vec3f dest);
Vec3f *func_80041594(Vec3f, Vec3f, Vec3f);
s32 func_80041658(f32, f32);
f32 func_800416D8(f32, f32, u16);
f32 func_80041724(f32, f32, u16);
s32 func_80041770(f32, f32, f32, f32);
u16 func_800417B4(u16, u16);
s32 func_800418AC(f32, f32, Vec3f);
s32 func_800418E8(f32, f32, Vec3f);
s32 func_80041924(UnkActorInner*, Vec3f);
s32 func_80041980(Vec3f, Camera*, u16);
void func_800419F8();
void func_80041A78(Mat4, s32, s32);
void func_80041AD8(Mat4, u16);
void func_80041B68(Mat4, f32);
void func_80041BBC(Mat4, u16, f32);
void func_80041C64(Mat4, s32, s32, u16, f32);
void func_80041D24();
void func_80041D34();
void func_80041EF4();
void func_80042330(s32, s32, u16, f32);
void func_800425D0(Mat4, Vec3f, Vec3s, f32);
void func_80042760(Mat4, Vec3f, Vec3f, f32);
void func_800427DC(s32, Mat4);
void func_80042A20(Mat4, Vec3f, Vec3f, u16, f32);
void func_80042D14(Vec3f, Vec3f, Vec3s);
void func_80042E00(Vec3f, Vec3s, f32);
void func_80042F70(Vec3f, Vec3su, f32);
void func_80043050(Vec3f, Vec3f, f32);
void func_80043104(s32);

/* This is where I'd put my static data, if I had any */

extern Vec3s D_80165834;
extern s8    D_80165840[];
extern s8    D_801658FE;
extern s32   D_8018D120;

#endif // MATH_UTIL_2_H
