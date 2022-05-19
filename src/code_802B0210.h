#ifndef CODE_802B0210_H
#define CODE_802B0210_H

#include "types.h"
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
void update_obj_green_shell(struct ShellActor*);
void update_obj_red_blue_shell(struct ShellActor*);
void update_obj_banana(struct BananaActor*);
void func_802B30EC();
void func_802B4E30(struct Actor*);

// audio/external.c
extern void func_800C9060(Player*, s32);

extern struct Actor gActorList[];
extern Player gPlayers[];

#endif
