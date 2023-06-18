#ifndef CODE_80005FD0_H
#define CODE_80005FD0_H

#include "common_structs.h"
#include "vehicles.h"
#include "waypoints.h"

struct struct_801642D8 {
    /* 0x0 */ u16 unk0;
    /* 0x2 */ s16 ffff;
    /* 0x4 */ s16 timer; // confirm?
    /* 0x6 */ s16 laps; // confirm?
    /* 0x8 */ s32 blank;
    /* 0xC */ s32 unkC;
};

struct unk_41F8 {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    u16 unkC;
    u16 unkE;
    s16 unk10;
    // s16 compilerPadding;
    u32 unk14;
    s32 unk18;
};

/* Function Prototypes */

void func_8001C14C(void);
void func_800070F4(void);
void func_80019DF4(void);
void func_80019C50(s32);
void func_80019FB4(s32);
void func_80019D2C(Camera*, Player*, s32);
void func_80019E58(void);
s16  func_80005FD0(Vec3f, Vec3f);
s32  func_80006018(f32, f32, f32, f32, f32, f32, f32, f32);
void func_80006114(Vec3f, Vec3f, s16);
s32  func_800061DC(Vec3f, f32, s32);
void func_800074D4();
s32  func_80007BF8(u16, u16, u16, u16, u16);
void func_80008DC0(s32);
s32  func_80008E58(s32, s32);
void func_80008F38(s32);
void func_80009000(s32);
void func_800090F0(s32, Player*);
void func_800097E0(void);
void func_80009B60(s32);
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
s16  func_8000D6D0(Vec3f, s16*, f32, f32, s32, s32);
s16  func_8000D940(Vec3f, s16*, f32, f32, s32);
s16  func_8000DBAC(Vec3f, s16*, f32);
s32  func_8000ED14(s32, s16);
s32  func_8000ED80(s32);
s32  func_8000EDC8(s32);
void func_8000DF8C(s32);
s32  func_8000EE10(s32);
void func_8000EE58(s32);
void func_8000EF20();
void func_8000EEDC();
void func_8000EF20();
void func_8000F0E0();
void func_8000F124();
void func_8000F2BC(struct TrackWayPoint*, size_t);
void func_80010218(s32);
f32  func_80010480(s32, u16);
void func_800107C4(s32);
s16  func_80010CB0(s32, s32);
void func_80010DBC(s32);
f32  func_80010F40(f32, f32, f32, s32);
f32  func_80010FA0(f32, f32, f32, s32);
s32  process_path_data(struct TrackWayPoint*, struct TrackWayPoint*);
void func_80011AB8(s32);
void func_80011AE4(s32);
void func_80012220(VehicleStuff*);
void func_800122D8();
void func_80012A48(TrainCarStuff*, s16);
void func_80012AC0();
void func_80012DC0(s32, Player*);
void func_800133C4();
void func_80013854(Player*);
f32  func_80013C74(s16, s16);
void func_80013D20(VehicleStuff*);
void func_80013F7C(s32, Player*, VehicleStuff*, f32, f32, s32, u32);
f32  func_800145A8(s16, f32, s16);
void func_800146B8(s32, s32, VehicleStuff*);
void func_8001487C();
void func_800148C4(s32, Player*);
void func_8001490C(s32);
void func_800149D0();
void func_80014A18(s32, Player*);
void func_80014A60(s32);
void func_80014B24();
void func_80014B6C(s32, Player*);
void func_80014BB4(s32);
void func_80014C78();
void func_80014CC0(s32, Player*);
void func_80014D08(s32);
void func_80014D30(s32, s32);
void func_8001530C();
void func_80015314(s32, s32, s32);
void func_80015390(Camera*, Player*, s32);
void func_8001968C();
void func_8001C05C();
void func_80019DE4();
void func_8001A0A4(s16*, Camera*, Player*, s32, s32);
void func_8001A0DC(s16*, Camera*, Player*, s8, s32);
s32  func_8001A310(s32, s32);
void func_8001ABE0(s32, s32);
void func_8001ABEC(struct struct_801642D8*);
void func_8001C3C4(s32);
void func_8001C42C();

/* This is where I'd put my static data, if I had any */
// 0 or 1, only 1 when when in extra (mirror) mode
extern s16 D_8016347A;
// Might belong in menus.h?
extern s8  D_8018EDF3;

// Suspected to be the "width" of each wayPoint. See data_0DD0A0_1.s
extern f32 D_800DCA4C[];

// See bss_80005FD0.s
extern UnkActorInner D_80162E70;
extern s16 D_80162EB0;
extern u16 D_801631E0[8];
extern s32 D_80163488;

extern s32 D_8016337C;
extern s32 gModeSelection;
extern f32 D_800ECFD8;// = 1.1f;
extern f32 D_800ECFDC;// = -1.1f;
extern struct unk_41F8 D_801641F8[];
extern s16 D_80164670;
extern s16 D_80164672;
extern s16 D_80164674;
extern s16 D_80164676;
extern s16 D_80164678;
extern s16 D_8016467A;
extern s16 D_8016467C;
extern s16 D_8016467E;
extern s16 D_801632B8[];
extern s16 D_801632D0[];
extern s16 D_801632E8[];
extern s16 D_801646CC;
extern u16 D_80163E2A;
extern Gfx D_0D0076F8[];

extern struct Controller *gControllerThree;
extern Gfx *gDisplayListHead;
extern s32 D_800DDB20;

#endif
