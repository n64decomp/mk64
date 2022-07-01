#ifndef ACTORS_EXTENDED_H
#define ACTORS_EXTENDED_H

#include "common_structs.h"
#include "actor_types.h"

void func_802B0210(UnkActorInner*, UnkActorInner*);
void func_802B02B4(struct ShellActor*, s32);
void func_802B039C(struct BananaActor*);
void func_802B0464(s16);
void func_802B04E8(struct BananaActor*, s16);
void func_802B0570(struct BananaActor*);
void func_802B0648(struct BananaBunchParent*);
void func_802B0788(s16, struct BananaBunchParent*, Player*);
s32  func_802B09C0(s16);
void update_obj_banana_bunch(struct BananaBunchParent*);
s32  func_802B0E14(s16);
void update_obj_triple_shell(struct TripleShellParent*, s16);
s32  func_802B17F4(Player*);
s32  func_802B18E4(Player*, s16);
s32  func_802B19EC(struct TripleShellParent*, Player*, s16, u16);
s32  func_802B1C9C(Player*);
s32  func_802B1E48(Player*);
void func_802B1FFC(Player*);
void update_obj_banana(struct BananaActor*);
void func_802B2914(struct BananaBunchParent*, Player*, s16);
s32  func_802B2C40(Player*);
s32  func_802B2D70(Player*);
void func_802B2EBC(Player*);
void func_802B2FA0(Player*);
void func_802B30EC();
void update_obj_green_shell(struct ShellActor*);
void func_802B3B44(struct ShellActor*);
void func_802B3E7C(struct ShellActor*, Player*);
s16  func_802B3FD0(Player*, struct ShellActor*);
void func_802B4104(struct ShellActor*);
void update_obj_red_blue_shell(struct ShellActor*);
void func_802B4E30(struct Actor*);

// audio/external.c
extern void func_800C9060(u8, s32);
extern void func_800C90F4(u8, u32);
extern void func_800CAB4C(u8);

// code_80005FD0.c
s32 func_8000ED80(s32);
s32 func_8000EDC8(s32);
s32 func_8000EE10(s32);

extern f32 D_802B9F68;

extern s16 gPlayerBalloonCount[];

extern struct Actor gActorList[];
extern Player gPlayers[];
extern Player *gPlayerOne;
extern Player *gPlayerTwo;
extern Player *gPlayerThree;
extern struct Controller gControllers[];
extern struct Controller *gControllerOne;
extern struct Controller *gControllerSix;
extern struct Controller *gControllerSeven;
extern struct Controller *gControllerEight;

extern u16 D_800DC51C;
extern s16 D_8015F6E8;
extern s16 D_8015F6EA;
extern s16 D_8015F6F0;
extern s16 D_8015F6F2;
extern s16 gPlayerPositionLUT[];

#endif // ACTORS_EXTENDED_H
