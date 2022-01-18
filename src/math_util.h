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

s32 func_802B4FF8(Mat4, s32);
void mtxf_identity(Mat4);
void func_802B5398(Mat4, Mat4, s32);
void func_802B5450(Mat4, Mat4, Mat4);
void func_802B54EC(Mat4, Mat4, Mat4);
void mtxf_translate(Mat4, Vec3f);
void func_802B5F00(Mat4, f32);
void func_802B71CC(Mat4, Mat4, Mat4);
void func_802B75F8(Mtx*, Mat4);
u32 func_802B7830(f32, f32);
f32 sins(u16);
f32 coss(u16);

#endif // MATH_UTIL_H
