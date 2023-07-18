#ifndef CODE_802AAA70_H
#define CODE_802AAA70_H

#include "common_structs.h"

void  nullify_displaylist(uintptr_t);
void  func_802AAAAC(UnkActorInner*);
f32   func_802AAB4C(Player*);
s8    func_802ABD10(u16);
s16   func_802ABD40(u16);
s16   func_802ABD7C(u16);
s16   func_802ABDB8(u16);
s16   func_802ABDF4(u16);
f32   func_802ABE30(f32, f32, f32, u16);
f32   func_802ABEAC(UnkActorInner*, Vec3f);
void  process_shell_collision(Vec3f, f32, Vec3f, f32);
void  func_802AC098(UnkActorInner*, f32*);
void  func_802AC114(Vec3f, f32, Vec3f, f32);
void  func_802AD950(UnkActorInner*, f32, f32, f32, f32, f32, f32, f32);
s32   func_802ADDC8(UnkActorInner*, f32, f32, f32, f32);
f32   func_802AE1C0(f32, f32, f32);
void  func_802AED6C(Vtx*, s32, s32);
s32   func_802AEE1C(s16, s16, s16, s16, s16, s16, s16, s16);
s32   func_802AF0FC(s16, s16, s16, s16, u16);
void  func_802AF314();
void  func_802AF588(s32);
void  func_802AF5AC(s32, s8);
void  func_802AF5D8(u32, s8, u16);
void  func_802AF7B4(uintptr_t, s32, s32);
void  func_802AF83C(Vtx*, u32, s32, s8, u8, u8, u8);
void  func_802AF8BC(Gfx*, s8, u8, u8, u8);
void  func_802AF9F0(Vec3f, f32, Vec3f);

extern Vtx *D_8015F668[];
extern s16 D_8015F6EE;
extern f32 D_8015F8E4;

#endif
