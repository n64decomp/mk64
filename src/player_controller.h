#ifndef player_controller_H
#define player_controller_H

#include "common_structs.h"
#include "camera.h"

/* Function Prototypes */

void func_8002E594(Player*, Camera*, s8, s8);

s32 get_player_index_for_player(Player*);
void func_80027DA8(Player*, s8);
void func_80027EDC(Player*, s8);

void func_80029B4C(Player *, f32, f32, f32);
void func_8002F730(Player *player, Camera *camera, s8 arg2, s8 arg3);

void func_80028864(Player*, Camera*, s8, s8);
void func_80028C44(Player*, Camera*, s8, s8);
void func_80028D3C(Player*, Camera*, s8, s8);
void func_80028E70(Player*, Camera*, s8, s8);
void func_80028F5C(s32, s32, s32, s32);
void func_80028F70(void);

void func_80029060(void);
void func_80029150(void);
void func_80029158(void);
void func_800291E8(void);
void func_800291F0(void);
void func_800291F8(void);
void func_80029200(Player*, s8);
void func_8002934C(Player*, Camera*, s8, s8);

void func_8002A194(Player*, f32, f32, f32);
void func_8002A5F4(Vec3f, f32, Vec3f, f32, f32);
void func_8002A704(Player*, s8);
void func_8002A79C(Player*, s8);
void func_8002A8A4(Player*, s8);
void func_8002AA50(Player*);
void func_8002AAC0(Player*);
void func_8002AB70(Player*);
void func_8002AE20(void);
void func_8002AE28(void);
void func_8002AE30(void);
void func_8002AE38(Player*, s8, f32, f32, f32, f32);

void func_8002B218(Player*);
void func_8002B308(Player*, s8, s8);
void func_8002B5C0(Player*, s8, s8);
void func_8002B830(Player*, s8, s8);
void func_8002B8A4(Player*, Player*);
void func_8002B9CC(Player*, s8, s32);
void func_8002BD58(Player*);
void func_8002BF4C(Player*, s8);

void func_8002C11C(Player*);
void func_8002C17C(Player*, s8);
void func_8002C4F8(Player*, s8);
void func_8002C7E4(Player*, s8, s8);
void func_8002C954(Player*, s8, Vec3f);
void func_8002CD48(Player*, s8, s8);

void func_8002D028(Player*, s8);
void func_8002D268(Player*, Camera*, s8, s8);

void func_8002E4C4(Player*);
void control_cpu_movement(Player*,Camera*, s8, s8);

void func_8002FCA8(Player*, s8);
void func_8002FE84(Player*, f32);

f32  func_80030150(Player*, s8);
void func_80030A34(Player*);
void detect_triple_a_combo_a_released(Player*);
void detect_triple_a_combo_a_pressed(Player*);
void player_speed(Player*);
void func_80031F48(Player*, f32);
void detect_triple_b_combo_b_released(Player*);
void detect_triple_b_combo_b_pressed(Player*);
void func_800323E4(Player*);
void func_80032700(Player*);
void func_80032CB0(Player*, f32);
void func_80032D94(Player*);
void func_80033280(Player*, f32);
void func_800332E8(Player*, s32);
void func_800337CC(Player*, f32, s32);
void func_80033850(Player*, f32);
void func_80033884(Player*, s32*, s32*, s32, s32, s32, s32);
void func_80033940(Player*, s32*, s32, s32, f32);
void func_800339C4(Player*, s32*, s32, s32, f32);
void func_80033A40(Player*, s32*, s32*, s32, s32, s32, f32);
void func_80033AE0(Player*, struct Controller*, s8);

void func_8003680C(Player*, s16);
void func_80036C5C(Player*);
void func_80036CB4(Player*);
void func_80036DB4(Player*, Vec3f, Vec3f);

void func_800371F4(Player*, Vec3f, Vec3f);
void func_80037614(Player*, Vec3f, Vec3f);
void func_8003777C(Player*, Vec3f, Vec3f);
void func_800378E8(Player*, Vec3f, Vec3f);
void func_80037A4C(Player*, Vec3f, Vec3f);
void func_80037BB4(Player*player, Vec3f);
void func_80037CFC(Player*, struct Controller*, s8);

void func_800381AC(Player*, struct Controller*, s8);
void func_800382DC(void);
s16  func_80038534(struct Controller*);
s16  func_800388B0(struct Controller*);
void func_80038BE4(Player*, s16);
void func_80038C6C(Player*, Camera*, s8, s8);

/* This is where I'd put my static data, if I had any */

extern s16 gCPUforMario[];
extern s16 gCPUforLuigi[];
extern s16 gCPUforYoshi[];
extern s16 gCPUforToad[];
extern s16 gCPUforDk[];
extern s16 gCPUforWario[];
extern s16 gCPUforPeach[];
extern s16 gCPUforBowser[];
extern s16 *gCPUforPlayer[];

extern s16 gCPUforMarioAndLuigi[];
extern s16 gCPUforMarioAndYoshi[];
extern s16 gCPUforMarioAndToad[];
extern s16 gCPUforMarioAndDk[];
extern s16 gCPUforMarioAndWario[];
extern s16 gCPUforMarioAndPeach[];
extern s16 gCPUforMarioAndBowser[];
extern s16 gCPUforLuigiAndMario[];
extern s16 gCPUforLuigiAndYoshi[];
extern s16 gCPUforLuigiAndToad[];
extern s16 gCPUforLuigiAndDk[];
extern s16 gCPUforLuigiAndWario[];
extern s16 gCPUforLuigiAndPeach[];
extern s16 gCPUforLuigiAndBowser[];
extern s16 gCPUforYoshiAndMario[];
extern s16 gCPUforYoshiAndLuigi[];
extern s16 gCPUforYoshiAndToad[];
extern s16 gCPUforYoshiAndDk[];
extern s16 gCPUforYoshiAndWario[];
extern s16 gCPUforYoshiAndPeach[];
extern s16 gCPUforYoshiAndBowser[];
extern s16 gCPUforToadAndMario[];
extern s16 gCPUforToadAndLuigi[];
extern s16 gCPUforToadAndYoshi[];
extern s16 gCPUforToadAndDk[];
extern s16 gCPUforToadAndWario[];
extern s16 gCPUforToadAndPeach[];
extern s16 gCPUforToadAndBowser[];
extern s16 gCPUforDkAndMario[];
extern s16 gCPUforDkAndLuigi[];
extern s16 gCPUforDkAndToad[];
extern s16 gCPUforDkAndYoshi[];
extern s16 gCPUforDkAndWario[];
extern s16 gCPUforDkAndPeach[];
extern s16 gCPUforDkAndBowser[];
extern s16 gCPUforWarioAndMario[];
extern s16 gCPUforWarioAndLuigi[];
extern s16 gCPUforWarioAndYoshi[];
extern s16 gCPUforWarioAndDk[];
extern s16 gCPUforWarioAndToad[];
extern s16 gCPUforWarioAndPeach[];
extern s16 gCPUforWarioAndBowser[];
extern s16 gCPUforPeachAndMario[];
extern s16 gCPUforPeachAndLuigi[];
extern s16 gCPUforPeachAndYoshi[];
extern s16 gCPUforPeachAndDk[];
extern s16 gCPUforPeachAndWario[];
extern s16 gCPUforPeachAndToad[];
extern s16 gCPUforPeachAndBowser[];
extern s16 gCPUforBowserAndMario[];
extern s16 gCPUforBowserAndLuigi[];
extern s16 gCPUforBowserAndYoshi[];
extern s16 gCPUforBowserAndDk[];
extern s16 gCPUforBowserAndWario[];
extern s16 gCPUforBowserAndToad[];
extern s16 gCPUforBowserAndPeach[];
extern s16 *gListCPUforMario[];
extern s16 *gListCPUforLuigi[];
extern s16 *gListCPUforYoshi[];
extern s16 *gListCPUforToad[];
extern s16 *gListCPUforDk[];
extern s16 *gListCPUforWario[];
extern s16 *gListCPUforPeach[];
extern s16 *gListCPUforBowser[];
extern s16 **gCPUforTwoPlayer[];

extern s16 gMatrixEffectCount;

extern s16 D_801656F0;
extern s32 gRaceFrameCounter;

#endif
