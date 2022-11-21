#ifndef CEREMONY_AND_CREDITS_H
#define CEREMONY_AND_CREDITS_H

#include "common_structs.h"

struct struct_80282C40 {
    s8 unk0;
    s8 unk1;
    s8 unk2;
    u8 unk3;
    s8 unk4;
    s8 unk5;
    Vec3s unk6;
};

struct struct_80285D80 {
    u8 unk0[6];
    s16 unk6[3];
};

struct struct_80286A04 {
    u8 unk0;
    u8 unk1;
    struct struct_80285D80 *unk4;
    struct struct_80285D80 *unk8;
    u16 unkC;
};

/* Function Prototypes */

void vec3f_set_dupe(Vec3f, f32, f32, f32);
void vec3s_set_dupe(Vec3s, s16, s16, s16);
void vec3f_clear(Vec3f);
void vec3s_clear(Vec3s);
void vec3f_copy_dupe(Vec3f, Vec3f);
void vec3s_copy_dupe(Vec3s, Vec3s);
void func_80282040();
void func_80282048();
void func_80282050(Vec3f, Vec3f, s16);
void func_802820F8(Vec3f, Vec3f, s16);
s32  f32_lerp(f32*, f32, f32);
s32  func_80282200(s16*, s16, s16);
s32  set_transition_colour_fade_alpha_ending(f32*, f32, f32);
s32  func_80282364(s16*, s16, s16);
void reset_spline();
void func_80282434(Camera*);
void func_80282454(Vec3f, Vec3f, f32*, s16*, s16*);
void func_80282504(Vec3f, Vec3f, f32, s16, s16);
void func_802825C8(Vec3f, Vec3f, Vec3f, Vec3s);
s32  func_80282D90(Camera*, struct struct_80286A04*, struct struct_80286A04*, s32);
void func_80282E58(Camera*, struct struct_80282C40*, s32);
void func_80282F00(s16*, s16);
void func_80283240(s16);
s32  cutscene_event(CameraEvent event, Camera*, s16, s16);
s32  func_80283330(s32);
s32  func_80283428();
void func_80283968(Camera*);
void func_80283994(CinematicCamera*);
void func_802839B4(Camera*);
void func_802839CC(Camera*);
void func_802839E0(Camera*);
void func_80283A34(CinematicCamera*);
void func_80283A54(Camera*);
void func_80283A7C(CinematicCamera*);
void func_80283B6C(Camera*);
void func_80283BA4(Camera*);
void func_80283BF0(CinematicCamera*);
void func_80283C14(Camera*);
void func_80283C38(Camera*);
void func_80283C58(CinematicCamera*);
void func_80283C78(s32);
void func_80283CA8(CinematicCamera*);
void func_80283CD0(s32);
void play_sound_farewell(s32);
void func_80283D2C(CinematicCamera*);
void func_80283EA0(Camera*);
void func_80283ED0(Camera*);
void func_80283EF8(Camera*);
void func_80283F6C(Camera*);
void func_80283FCC(Camera*);
void func_80283FF4(Camera*);
void func_80284068(Camera*);
void func_802840C8(Camera*);
void func_80284154(Camera*);
void func_80284184(Camera*);
void func_802841E8(Camera*);
void func_8028422C(Camera*);
void func_802842A8(Camera*);
void func_802842D8(Camera*);
void func_80284418(Camera*);
void func_80284494(Camera*);
void func_802844FC(Camera*);
void func_8028454C(Camera*);
void func_802845EC(Camera*);
void func_8028461C(Camera*);
void func_80284648(Camera*);
void func_802846AC();
void func_802846B4(Camera*);
void func_80284CC0();

/* This is where I'd put my static data, if I had any */

extern u16 D_800DC5E4;
extern s32 D_80283FCC;
extern s32 D_80283FF4;
extern f32 D_802856B0;
extern f32 D_802856B4;
extern f32 D_802856B8;
extern f32 D_802856BC;
extern f32 D_802856C0;
extern struct struct_80282C40 D_802856DC[];
extern struct struct_80282C40 D_80285718[];
extern struct struct_80282C40 D_80285754[];
extern struct struct_80282C40 D_80285784[];
extern struct struct_80282C40 D_802857B4[];
extern struct struct_80282C40 D_802857CC[];
extern struct struct_80282C40 D_802857F0[];
extern struct struct_80282C40 D_80285850[];
extern struct struct_80282C40 D_802858B0[];
extern struct struct_80282C40 D_802858C8[];
extern struct struct_80282C40 D_80285910[];
extern struct struct_80282C40 D_80285928[];
extern struct struct_80282C40 D_80285940[];
extern struct struct_80282C40 D_80285A10[];
extern struct struct_80282C40 D_80285A4C[];
extern struct struct_80282C40 D_80285A88[];
extern struct struct_80282C40 D_80285AB8[];
extern struct struct_80282C40 D_80285AE8[];
extern struct struct_80282C40 D_80285B00[];
extern struct struct_80282C40 D_80285B18[];
extern struct struct_80282C40 D_80285B54[];
extern struct struct_80282C40 D_80285B90[];
extern struct struct_80282C40 D_80285BA8[];
extern struct struct_80282C40 D_80285C38[];
extern struct struct_80282C40 D_80285C74[];
extern s16 D_80285D14;
extern s32 D_802876D4;
extern s32 D_802876D8;
//extern struct credits_data_1FA0 *D_802876E0;

#endif // CEREMONY_AND_CREDITS_H
