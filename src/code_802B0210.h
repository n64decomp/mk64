#ifndef CODE_802B0210_H
#define CODE_802B0210_H

#include "common_structs.h"
#include "actor_types.h"

void func_802B0210(UnkActorInner*, UnkActorInner*);
void func_802B02B4(struct ShellActor*, s32);
void func_802B0464(s16);
void func_802B04E8(struct BananaActor*, s16);
void func_802B0570(struct BananaActor*);
s32  func_802B09C0(s16);
void update_obj_banana_bunch(struct BananaBunchParent*);
s32  func_802B0E14(s16);
void update_obj_triple_shell(struct TripleShellParent*, s16);
s32  func_802B17F4(Player*);
s32  func_802B18E4(Player*, s16);
s32  func_802B19EC(struct TripleShellParent*, Player*, s16, u16);
s32  func_802B1E48(Player*);
void func_802B1FFC(Player*);
void update_obj_green_shell(struct ShellActor*);
void update_obj_red_blue_shell(struct ShellActor*);
void update_obj_banana(struct BananaActor*);
void func_802B2914(struct BananaBunchParent*, Player*, s16);
s32  func_802B2C40(Player*);
s32  func_802B2D70(Player*);
void func_802B2EBC(Player*);
void func_802B2FA0(Player*);
void func_802B30EC();
void func_802B3E7C(struct ShellActor*, Player*);
void func_802B4104(struct ShellActor*);
void func_802B4E30(struct Actor*);

// src/code_80091750.c
void func_8009E5BC();

// audio/external.c
extern void func_800C9060(u8, s32);
extern void func_800C90F4(u8, u32);
extern void func_800CAB4C(u8);

extern f32 D_802B9F68;

extern s16 gPlayerBalloonCount[];

extern struct Actor gActorList[];
extern Player gPlayers[];
extern Player *gPlayerOne;
extern Player *gPlayerTwo;
extern Player *gPlayerThree;
extern struct Controller gControllers[];
extern struct Controller *gControllerEight;
extern struct Controller *gControllerSeven;
extern struct Controller *gControllerSix;

#endif
