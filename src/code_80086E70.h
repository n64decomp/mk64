#ifndef CODE_80086E70_H
#define CODE_80086E70_H

#include "common_structs.h"
#include "camera.h"

void func_80086E70(s32);
void func_80086EAC(s32, s32, s16);
void func_80086EF0(s32);
void func_80086F10(s32, s32, u16[][4]);
void func_80086F60(s32);
s32  func_80086FA4(s32);
void func_80086FD4(s32);
void func_8008701C(s32, s32);
s32  func_80087060(s32, s32);
s32  func_80087104(s32, u16);
s32  func_800871AC(s32, s32);
void func_80087258(s32, s32, f32);
s32  get_angle_between_player_object(s32, Player*);
s32  angle_between_object_camera(s32, Camera*);
u16  get_x_direction_angle(s32);
s32  get_y_direction_angle(s32);
void func_800873A4(s32);
void func_800873F4(s32);
void func_80087444(s32);
void func_8008748C(s32);
void func_800874D4(s32);
void func_8008751C(s32);
void func_8008757C(s32);
void func_80087620(s32);
void func_800876A0(s32);
void object_add_velocity_offset_xyz(s32);
void object_add_velocity_offset_xz(s32);
void object_add_velocity_offset_x(s32);
void object_add_velocity_offset_y(s32);
void object_add_velocity_offset_z(s32);
void func_8008781C(s32);
void func_80087844(s32);
f32  func_8008786C(f32, f32, f32, f32, f32);
s32  func_8008789C(s32, s32);
s32  func_80087954(s32, s32);
s32  func_80087A0C(s32, s16, s16, s16, s16);
s32  func_80087B84(s32, f32, f32);
s32  func_80087C48(s32, f32, f32, s32);
s32  func_80087D24(s32, f32, f32, f32);
s32  func_80087E08(s32, f32, f32, f32, s16, s32);
s32  func_80087F14(s32, f32, f32, f32, s16, s32);
void func_80088038(s32, f32, u16);
void func_800880DC(void);
void func_800880E4(s32);
void func_80088150(s32);
void func_80088178(s32, s32);
void func_80088228(s32);
s32  func_800882B0(s32, s32);
void func_80088364(s32);
void func_800883FC(s32);
s32  func_8008847C(s32);
s32  func_80088538(s32);
s32  func_8008861C(s32);
void func_800886F4(s32);
void func_800887C0(s32);
s32  get_horizontal_distance_to_player(s32, Player*);
s32  get_distance_to_player(s32, Player*);
u32  get_horizontal_distance_to_camera(s32, Camera*);
s32  get_distance_to_camera(s32, Camera*);
bool  is_within_horizontal_distance_of_player(s32, Player*, f32);
s32  are_between_distance_2d(s32, Player*, f32, f32);
bool  is_within_distance_to_player(s32, Player*, f32);
bool  is_within_horizontal_distance_to_camera(s32, Camera*, f32);
s32  is_within_bounds_to_camera(s32, Camera*, f32, f32);
bool  is_within_distance_to_camera(s32, Camera*, f32);
bool  has_collided_horizontally_with_player(s32, Player*);
bool  has_collided_with_player(s32, Player*);
bool  has_collided_with_player_1d(s32, Player*, f32);
bool  has_collided_with_player_and_within_height(s32, Player*, f32);
f32  func_80088F54(s32, Player*);
s32  func_80088F94(s32, Player*, f32);
void func_80088FF0(Player*);
void func_8008900C(Player*);
void func_80089020(s32, f32*);
void func_800892E0(s32);
f32  func_8008933C(Player*, s32, f32, f32);
void func_80089474(s32, s32, f32, f32, u32);
void func_80089538(s32, s32, f32, f32, u32);
s32  func_800895E4(s32);
void func_800896D4(s32, f32, f32);
void func_80089820(s32, f32, f32, u32);
void func_80089A04(s32, f32, f32);
s32  func_80089B50(s32);
s32  func_80089CBC(s32, f32);
s32  func_80089E18(s32);
s32  func_80089F24(s32);
s32  func_8008A060(s32, Camera*, u16);
s32  func_8008A0B4(s32, Player*, Camera*, u16);
s32  is_object_visible_on_camera(s32, Camera*, u16);
void func_8008A1D0(s32, s32, s32, s32);
void func_8008A2CC(s32, s32, u16);
s32  func_8008A364(s32, s32, u16, s32);
void func_8008A454(s32, s32, s32);
void func_8008A4CC(s32);
void func_8008A610(s32);
void func_8008A6DC(s32, f32);
void func_8008A810(s32);
void func_8008A830(s32);
void func_8008A850(s32);
s32  func_8008A870(Player*);
s32  func_8008A890(Camera*);
s32  func_8008A8B0(s16, s16);
void func_8008A920(s32);
void func_8008A9B8(s32);
void func_8008AA3C(s32);
void func_8008AB10(s32);
void func_8008ABC0(s32);
void func_8008AC40(s32);
void func_8008ACC0(void);
void func_8008ACC8(void);
void func_8008ACD0(void);
void func_8008ACD8(void);
void func_8008ACE0(f32*,f32);
void func_8008ADC0(void);
void func_8008ADC8(void);
void func_8008AE8C(void);
void func_8008AE94(void);
void func_8008AE9C(s32);
void func_8008ADD0(f32*, f32);
void func_8008AFE0(s32, f32);
void func_8008B018(void);
void func_8008B020(void);
void func_8008B028(void);
void func_8008B030(void);
void func_8008B038(s32);
void func_8008B17C(s32, f32);
void func_8008B1B4(void);
void func_8008B1BC(void);
void func_8008B1C4(void);
void func_8008B1CC(void);
void func_8008B1D4(s32);
void func_8008B284(s32);
void func_8008B3E4(s32);
void func_8008B44C(s32);
void func_8008B478(s32, s32);
void func_8008B620(s32);
void func_8008B6A4(s32);
void func_8008B724(s32);
void func_8008B78C(s32);
void set_obj_origin_pos(s32, f32, f32, f32);
void set_obj_origin_offset(s32, f32, f32, f32);
void func_8008B844(s32);
void set_obj_direction_angle(s32, u16, u16, u16);
void set_obj_orientation(s32, u16, u16, u16);
void set_obj_velocity(s32, f32, f32, f32);
void func_8008B928(s32, s16, s16, s16, s16[][4]);
void object_origin_pos_randomise_around_x(s32, s16, u16);
void object_origin_pos_randomise_around_y(s32, s16, u16);
void object_origin_pos_randomise_around_z(s32, s16, u16);
void object_origin_pos_randomise_around_xy(s32, s16, s16, u16, u16);
void object_origin_pos_randomise_around_xz(s32, s16, s16, u16, u16);
void object_origin_pos_randomise_around_xyz(s32, s16, s16, s16, u16, u16, u16);
void object_origin_pos_around_player_one(s32, s16, u16);
void func_8008BEA4(s32, u16, u16);
void func_8008BFC0(s32);
void object_calculate_new_pos_offset(s32);
void func_8008BF64(s32);
void func_8008BFFC(s32);
void func_8008C1B8(s32);
void func_8008C1C0(s32);

extern s16 gCurrentCourseId;

#endif
