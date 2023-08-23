#ifndef CODE_802AAA70_H
#define CODE_802AAA70_H

#include "common_structs.h"

void  nullify_displaylist(uintptr_t);
void  func_802AAAAC(Collision*);
f32   func_802AAB4C(Player*);
s8    get_surface_type(u16);
s16   func_802ABD40(u16);
s16   func_802ABD7C(u16);
s16   func_802ABDB8(u16);
s16   func_802ABDF4(u16);
f32   func_802ABE30(f32, f32, f32, u16);
f32   func_802ABEAC(Collision*, Vec3f);
void  process_shell_collision(Vec3f, f32, Vec3f, f32);
void  func_802AC114(Vec3f, f32, Vec3f, f32);
u16   func_802AD950(Collision*, f32, f32, f32, f32, f32, f32, f32);
u16   func_802ADDC8(Collision*, f32, f32, f32, f32);
f32   func_802AE1C0(f32, f32, f32);
void  set_vtx_buffer(uintptr_t, u32, u32);
s32   is_line_intersecting_rectangle(s16, s16, s16, s16, s16, s16, s16, s16);
s32   is_triangle_intersecting_bounding_box(s16, s16, s16, s16, u16);
void  func_802AF314();
void  set_vertex_data_with_defaults(Gfx*);
void  set_vertex_data_with_default_section_id(Gfx*, s8);
void  find_and_set_vertex_data(Gfx*, s8, u16);
void  find_and_set_tile_size(uintptr_t, s32, s32);
void  set_vertex_colours(u32, u32, s32, s8, u8, u8, u8);
void  find_vtx_and_set_colours(uintptr_t, s8, u8, u8, u8);
void  subtract_scaled_vector(Vec3f, f32, Vec3f);

extern Vtx *vtxBuffer[];
extern s16 D_8015F6EE;
extern f32 D_8015F8E4;

#endif
