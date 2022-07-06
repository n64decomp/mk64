#ifndef CODE_80005FD0_H
#define CODE_80005FD0_H

#include "common_structs.h"

/* Function Prototypes */
s16  func_80005FD0(Vec3f, Vec3f);
s32  func_80006018(f32, f32, f32, f32, f32, f32, f32, f32);
void func_80006114(Vec3f, Vec3f, s16);
s32  func_800061DC(Vec3f, f32, s32);
s32  func_80007BF8(u16, u16, u16, u16, u16);
void func_80008DC0(s32);
s32  func_80008E58(s32, s32);
void func_80008F38(s32);
void func_80009000(s32);
void func_800090F0(s32, Player*);
s32  func_8000B7E4(s32, u16);
s32  func_8000B820(s32);
f32  func_8000B874(f32, f32, u16, s32);
void func_8000B95C(s32, u16, s32);
s16  func_8000BD94(f32, f32, f32, s32);
s16  func_8000C0BC(f32, f32, f32, u16, s32*);
s16  func_8000C884(f32, f32, f32, s16, s32, u16);
s16  func_8000C9DC(f32, f32, f32, s16, s32);
void func_8000CBA4(f32, f32, f32, s16*);
void func_8000CBF8(f32, f32, f32, s16*, s32);
s16  func_8000CC88(f32, f32, f32, Player*, s32, s32*);
s16  func_8000CD24(f32, f32, f32, s16, Player*, s32, s32);
s16  func_8000D24C(f32, f32, f32, s32*);
s16  func_8000D2B4(f32, f32, f32, s16, s32);
s16  func_8000D33C(f32, f32, f32, s16, s32);
void func_8000F0E0(void);
void func_8000F124(void);
void func_80010218(s32);
f32  func_80010480(s32, u16);
void func_800107C4(s32);
s16  func_80010CB0(s32, s32);
void func_80010DBC(s32);
f32  func_80010F40(f32, f32, f32, s32);
f32  func_80010FA0(f32, f32, f32, s32);
s32  process_path_data(struct TrackWayPoint*, struct TrackWayPoint*);
f32  func_80013C74(s16, s16);
f32  func_800145A8(s16, f32, s16);
void func_80014D30(s32, s32);
void func_8001968C();

/* This is where I'd put my static data, if I had any */
// Might belong in menus.h?
extern s8 D_8018EDF3;

// Suspected to be the "width" of each wayPoint. See data_0DD0A0_1.s
extern f32 D_800DCA4C[];

// See bss_80005FD0.s
extern UnkActorInner D_80162E70;

#endif
