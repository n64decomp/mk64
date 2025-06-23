#ifndef MATH_UTIL_H
#define MATH_UTIL_H

#include <PR/ultratypes.h>

// #define sins(x) gSineTable[(u16) (x) >> 4]
// #define coss(x) gCosineTable[(u16) (x) >> 4]

// #define min(a, b) ((a) <= (b) ? (a) : (b))
// #define max(a, b) ((a) > (b) ? (a) : (b))

#define sqr(x) ((x) * (x))

// Here to appease the pragma gods
double fabs(double x);

void func_802B5794(Mat4, Vec3f, Vec3f); // Unused
s32 func_802B4F60(s32, Vec3f, s32, f32, f32); // Unused
s32 render_set_position(Mat4, s32);
f32 dist_squared_bugged(Vec3f, Vec3f);
s32 get_xz_angle_between_points(Vec3f, Vec3f);
u32 func_802B5258(Vec3f, Vec3s); // Unused
void vec3f_set(Vec3f, f32, f32, f32);
void vec3s_set(Vec3s, s16, s16, s16);
void* vec3f_copy_return(Vec3f, Vec3f);
void vec3s_copy(Vec3s, Vec3s);
void* vec3f_set_return(Vec3f, f32, f32, f32);
void mtxf_copy(Mat4, Mat4);
void mtxf_copy_n_element(s32*, s32*, s32);
void mtxf_identity(Mat4);
void add_translate_mat4_vec3f(Mat4, Mat4, Vec3f);
void add_translate_mat4_vec3f_lite(Mat4, Mat4, Vec3f);
void mtxf_translate(Mat4, Vec3f);
void mtxf_projection(Mat4, u16*, f32, f32, f32, f32, f32);
void mtxf_lookat(Mat4, Vec3f, Vec3f);
void mtxf_rotate_x(Mat4, s16);
void mtxf_rotate_y(Mat4, s16);
void mtxf_s16_rotate_z(Mat4, s16);
void func_802B5B14(Vec3f b, Vec3s rotate); // Unused
void func_802B5CAC(s16, s16, Vec3f); // Unused
void func_802B5D30(s16, s16, s32); // Unused
void set_course_lighting(Lights1*, s16, s16, s32);
void mtxf_scale(Mat4, f32);
void mtxf_rotation_zxy_translate(Mat4, Vec3f, Vec3s);
void mtxf_transform_vec3f_mat3(Vec3f, Mat3);
void mtxf_transform_vec3f_mat4(Vec3f, Mat4);
void vec3f_rotate_y(Vec3f, s16);
void calculate_orientation_matrix(Mat3, f32, f32, f32, s16);
void calculate_rotation_matrix(Mat3, s16, f32, f32, f32);
void func_802B6BC0(Mat4, s16, f32, f32, f32); // Unused
void func_802B6D58(Mat4, Vec3f, Vec3f); // Unused
void mtxf_multiplication(Mat4, Mat4, Mat4);
void mtxf_to_mtx(Mtx*, Mat4);
u16 atan2_lookup(f32, f32);
u16 atan2s(f32, f32);
f32 atan2f(f32, f32);
s16 atan1s(f32);
s16 asin1s(f32);
f32 acos1f(f32);
u16 random_u16(void);
u16 random_int(u16);
s16 angle_from_coords(f32, f32, f32, f32);
void planar_angles(Vec3f, Vec3f, Vec3s);
f32 sins(u16);
f32 coss(u16);
s32 is_between_angle(u16, u16, u16);
f32 render_distance_squared(Vec3f, Vec3f, u16, f32, f32, f32);

extern s32 D_802B91C0[]; // Unused
extern Vec3f D_802B91C8;

#endif // MATH_UTIL_H
