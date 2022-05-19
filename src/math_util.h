#ifndef MATH_UTIL_H
#define MATH_UTIL_H

#include <PR/ultratypes.h>

#include "types.h"
#include "trig_tables.h"

//#define sins(x) gSineTable[(u16) (x) >> 4]
//#define coss(x) gCosineTable[(u16) (x) >> 4]

//#define min(a, b) ((a) <= (b) ? (a) : (b))
//#define max(a, b) ((a) > (b) ? (a) : (b))

#define sqr(x) ((x) * (x))

s32  func_802B4FF8(Mat4, s32);
f32  func_802B51E8(Vec3f, Vec3f);
u32  func_802B5224(Vec3f, Vec3f);
u32  func_802B5258(Vec3f, Vec3s);
void vec3f_set(Vec3f, f32, f32, f32);
void vec3s_set(Vec3s, s16, s16, s16);
void *vec3f_copy(Vec3f, Vec3f);
void vec3s_copy(Vec3s, Vec3s);
void *sm64_vec3f_set(Vec3f, f32, f32, f32);
void mtxf_identity(Mat4);
void func_802B5398(Mat4, Mat4, s32);
void func_802B5450(Mat4, Mat4, Mat4);
void func_802B54EC(Mat4, Mat4, Mat4);
void mtxf_translate(Mat4, Vec3f);
void func_802B5F00(Mat4, f32);
void func_802B71CC(Mat4, Mat4, Mat4);
void func_802B75F8(Mtx*, Mat4);

u16 atan2s(f32, f32);
f32 sins(u16);
f32 coss(u16);

#endif // MATH_UTIL_H
