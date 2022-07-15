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

void func_802B4FF0();
s32  func_802B4FF8(Mat4, s32);
f32  func_802B51E8(Vec3f, Vec3f);
u32  func_802B5224(Vec3f, Vec3f);
u32  func_802B5258(Vec3f, Vec3s);
void vec3f_set(Vec3f, f32, f32, f32);
void vec3s_set(Vec3s, s16, s16, s16);
void *vec3f_copy(Vec3f, Vec3f);
void vec3s_copy(Vec3s, Vec3s);
void *sm64_vec3f_set(Vec3f, f32, f32, f32);
void func_802B5398(s32*, s32*, s32);
void mtxf_identity(Mat4);
void func_802B5450(Mat4, Mat4, Mat4);
void func_802B54EC(Mat4, Mat4, Mat4);
void mtxf_translate(Mat4, Vec3f);
void func_802B5564(Mat4, u16*, f32, f32, f32, f32, f32);
void func_802B59DC(Mat4, s16);
void func_802B5A44(Mat4, s16);
void func_802B5AAC(Mat4, s16);
void func_802B5CAC(s16, s16, Vec3f);
void func_802B5D30(s16, s16, s32);
void func_802B5F00(Mat4, f32);
void func_802B5F74(Mat4, Vec3f, Vec3s);
void func_802B60B4(Mat4, Vec3s, Vec3s);
void func_802B6214(Mat4, Vec3s, Vec3s);
void func_802B6374(Vec3f);
void func_802B63B8(Vec3f, Mat3);
void func_802B6434(Vec3f, Mat4);
void func_802B64B0(s32, s32, s32, s32);
void func_802B64C4(Vec3f, s16);
void func_802B6BC0(Mat4, s16, f32, f32, f32);
void func_802B6D58(Mat4, Vec3f, Vec3f);
void func_802B71CC(Mat4, Mat4, Mat4);
void func_802B75F8(Mtx*, Mat4);
u16  atan2_lookup(f32, f32);
u16  atan2s(f32, f32);
f32  func_802B79B8(f32, f32);
u16  func_802B7B50(f32, f32);
void func_802B7C18(f32);
s16  func_802B7C40(f32);
void func_802B7C6C(f32);
s16  func_802B7CA8(f32);
f32 func_802B7CE8(f32);
s16  func_802B7D28(f32);
u16  random_u16();
u16  random_int(u16);
s16  func_802B7F34(f32, f32, f32, f32);
void func_802B7F7C(Vec3f, Vec3f, Vec3s);
f32  sins(u16);
f32  coss(u16);
s32  func_802B8058(u16, u16, u16);
f32  func_802B80D0(Vec3f, Vec3f, u16, f32, f32, f32);

extern f64 D_802B9FB0; // = 0.017453292222222222;
extern f32 D_802B9FD8; // = 1000000.0f;
extern f64 D_802BA018; // = 3.141592653589793;
extern u16 gRandomSeed16;

#endif // MATH_UTIL_H
