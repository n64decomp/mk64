#ifndef CODE_80027D00_H
#define CODE_80027D00_H

#include "common_structs.h"
#include "camera.h"

/* Function Prototypes */

s32 get_player_index_for_player(Player*);
void func_80028F70();
void func_80029060();
void func_80029150();
void func_80029158();
void func_800291E8();
void func_800291F0();
void func_800291F8();
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
void func_8002AE20();
void func_8002AE28();
void func_8002AE30();
void func_8002AE38(Player*, s8, f32, f32, f32, f32);
void func_8002B218(Player*);
void func_8002B308(Player*, s8, s8);
void func_8002B5C0(Player*, s8, s8);
void func_8002B830(Player*, s8, s8);
void func_8002B8A4(Player*, Player*);
void func_8002BD58(Player*);
void func_8002C11C(Player*);
void func_8002C17C(Player*, s8);
void func_8002D268(Player*, Camera*, s8, s8);
void func_8002E4C4(Player*);
void func_8002FCA8(Player*, s8);
void func_8002FE84(Player*, f32);
f32  func_80030150(Player*, s8);
void func_80030A34(Player*);
void func_80030C34(Player*);
void func_80030E00(Player*);
void func_80030FC8(Player*);
void func_80031F48(Player*, f32);
void func_80032050(Player*);
void func_8003221C(Player*);
void func_800323E4(Player*);
void func_80032700(Player*);
void func_80032CB0(Player*, f32);
void func_80032D94(Player*);
void func_80033280(Player*, f32);
void func_800332E8(Player*, s32);
void func_800337CC(Player*, f32, s32);
void func_80033850(Player*, f32);
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
void func_800382DC();
s16  func_80038534(struct Controller*);
s16  func_800388B0(struct Controller*);
void func_80038BE4(Player*, s16);

/* This is where I'd put my static data, if I had any */

extern s16 D_800E3810[];
extern s16 D_800E3820[];
extern s16 D_800E3830[];
extern s16 D_800E3840[];
extern s16 D_800E3850[];
extern s16 D_800E3860[];
extern s16 D_800E3870[];
extern s16 D_800E3880[];
extern s16 *D_800E3890[];

extern s16 D_800E38B0[];
extern s16 D_800E38BC[];
extern s16 D_800E38C8[];
extern s16 D_800E38D4[];
extern s16 D_800E38E0[];
extern s16 D_800E38EC[];
extern s16 D_800E38F8[];
extern s16 D_800E3904[];
extern s16 D_800E3910[];
extern s16 D_800E391C[];
extern s16 D_800E3928[];
extern s16 D_800E3934[];
extern s16 D_800E3940[];
extern s16 D_800E394C[];
extern s16 D_800E3958[];
extern s16 D_800E3964[];
extern s16 D_800E3970[];
extern s16 D_800E397C[];
extern s16 D_800E3988[];
extern s16 D_800E3994[];
extern s16 D_800E39A0[];
extern s16 D_800E39AC[];
extern s16 D_800E39B8[];
extern s16 D_800E39C4[];
extern s16 D_800E39D0[];
extern s16 D_800E39DC[];
extern s16 D_800E39E8[];
extern s16 D_800E39F4[];
extern s16 D_800E3A00[];
extern s16 D_800E3A0C[];
extern s16 D_800E3A18[];
extern s16 D_800E3A24[];
extern s16 D_800E3A30[];
extern s16 D_800E3A3C[];
extern s16 D_800E3A48[];
extern s16 D_800E3A54[];
extern s16 D_800E3A60[];
extern s16 D_800E3A6C[];
extern s16 D_800E3A78[];
extern s16 D_800E3A84[];
extern s16 D_800E3A90[];
extern s16 D_800E3A9C[];
extern s16 D_800E3AA8[];
extern s16 D_800E3AB4[];
extern s16 D_800E3AC0[];
extern s16 D_800E3ACC[];
extern s16 D_800E3AD8[];
extern s16 D_800E3AE4[];
extern s16 D_800E3AF0[];
extern s16 D_800E3AFC[];
extern s16 D_800E3B08[];
extern s16 D_800E3B14[];
extern s16 D_800E3B20[];
extern s16 D_800E3B2C[];
extern s16 D_800E3B38[];
extern s16 D_800E3B44[];
extern s16 *D_800E3B50[];
extern s16 *D_800E3B70[];
extern s16 *D_800E3B90[];
extern s16 *D_800E3BB0[];
extern s16 *D_800E3BD0[];
extern s16 *D_800E3BF0[];
extern s16 *D_800E3C10[];
extern s16 *D_800E3C30[];
extern s16 **D_800E3C50[];

extern s16 D_80164AF0;
extern Player *D_801653C0[8];

extern s16 D_801656F0;
extern s32 gRaceFrameCounter;

extern struct Controller *gControllerEight;
extern struct Controller *gControllerFour;
extern struct Controller *gControllerOne;
extern struct Controller *gControllerSeven;
extern struct Controller *gControllerSix;
extern struct Controller *gControllerThree;
extern struct Controller *gControllerTwo;

#endif
