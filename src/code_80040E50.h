#ifndef CODE_80040E50_H
#define CODE_80040E50_H

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
s32 func_80041680(f32, f32);
s32 func_800416AC(f32, f32);


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
s32 func_80041500(Vec3f, f32, f32, f32);
Vec3f *func_80041594(Vec3f, Vec3f, Vec3f);
s32 func_80041658(f32, f32);
f32 func_800416D8(f32, f32, u16);
f32 func_80041724(f32, f32, u16);
s32 func_80041770(f32, f32, f32, f32);
s32 func_800418AC(f32, f32, Vec3f);
s32 func_800418E8(f32, f32, Vec3f);
void func_80041EF4();

/* This is where I'd put my static data, if I had any */

#endif
