#ifndef CODE_80057C60_H
#define CODE_80057C60_H

#include "common_structs.h"

// code_80057C60

void func_80057C60();
void func_80057CE4();
void func_80057DD0();
void func_80057FC4(u32);

void func_80058090(u32);
void func_800581C8();
void func_800582CC();
void func_80058394();
void func_8005845C();
void func_80058538(u32);
void func_80058640();
void func_800586FC();
void func_800587A4();
void func_8005884C();
void func_800588F4(s32);
void func_80058B58();
void func_80058BF4();
void func_80058C20(u32);
void func_80058DB4(u32);
void func_80058F48();
void func_80058F78();

void func_80059024();
void func_8005902C();
void func_800590D4();
void func_800591B4();
void func_80059358();
void func_80059360();
void func_800593F0();
void func_800593F8();
void func_80059488(s32);
void func_800594F0();
void func_800594F8();
void func_80059528();
void func_80059530();
void func_80059560(s32);
void func_800596A8();
void func_800596D8();
void func_80059710();
void func_80059718();
void func_80059750();
void func_80059780();
void func_800597B8();
void func_800597E8();
void func_80059820(s32);
void func_800598D4(s32);
void func_8005994C();
void func_8005995C();
void func_80059A88(s32);
void func_80059D00();

void func_8005A070();
void func_8005A14C(s32);
void func_8005A380();
void func_8005A3C0();
void func_8005A71C();
void func_8005A74C();
void func_8005A99C();
void func_8005AA34();
void func_8005AA4C();
void func_8005AA6C(s32);
void func_8005AA80();
void func_8005AA94(s32);
void func_8005AAF0();
void func_8005AB20();

void func_8005B914();

void func_8005C360(f32);
void func_8005C6B4(s8, s16*, s16*, s16*);
void func_8005C728();
void func_8005CB60(s32, s32);

void func_8005D0FC(s32);
void func_8005D18C();
void func_8005D1F4(s32);

void func_80062B18(f32*, f32*, f32*, f32, f32, f32, u16, u16);
void func_80062F98(Player*, s16, s8, s8);

void func_800630C0(Player*, s16, s8, s8);
void func_800631A8(Player*, s16, s8, s8);
void func_80063268(Player*, s16, s8, s8);
void func_80063408(Player*, s16, s8, s8);
void func_800635D4(Player*, s16, s8, s8);
void func_800639DC(Player*, s16, s8, s8);
void func_80063BD4(Player*, s16, s8, s8);
void func_80063D58(Player*, s16, s8, s8);

void func_800643A8(Player*, s16, s8, s8);
void func_800647C8(Player*, s16, s8, s8);
void func_800648E4(Player*, s16, s8, s8);
void func_80064988(Player*, s16, s8, s8);
void func_800649F4(Player*, s16, s8, s8);
void func_80064B30(Player*, s16, s8, s8);
void func_80064C74(Player*, s16, s8, s8);
void func_80064DEC(Player*, s16, s8, s8);
void func_80064EA4(Player*, s16, s8, s8);
void func_80064F88(Player*, s16, s8, s8);

void func_80065030(Player*, s16, s8, s8);
void func_800650FC(Player*, s16, s8, s8);
void func_800651F4(Player*, s16, s8, s8);
void func_800658A0(Player*, s8, s16, s8);

void func_80066998(Player*, s8, s16, s8);

void func_80067964(Player*, s8, s32, s8, s32);
void func_80067D3C(Player*, s8, s32, s32, f32, s32);

void func_8006801C(Player*, s8, s32, s32, f32, s32);
void func_80068310(Player*, s8, s32, s8, s32);
void func_80068724(Player*, s8, s32, s8, s32);
void func_80068AA4(Player*, s8, s32, s8, s32);
void func_80068DA0(Player*, s8, s32, s8, s32);

void func_8006A280(Player*, s8, s16, s8);
void func_8006A7C0(Player*, f32, f32, s8, s8);
void func_8006AFD0(Player*, s16, s8, s8);

void func_8006B87C(Player*, s8);
void func_8006B8B4(Player*, s8);
void func_8006B974(s32, s8, s8);
void func_8006B9CC(Player*, s8);
void func_8006BA94(Player*, s8, s8);

void func_8006C6AC(Player*, s16, s8, s8);
void func_8006C9B8(Player*, s16, s8, s8);
void func_8006CEC0(Player*, s16, s8, s8);

void func_8006D194(Player*, s8, s8);
void func_8006D474(Player*, s8, s8);
void func_8006DC54(Player*, s8, s8);
void func_8006DD3C(Player*, s8, s8);

void func_8006E058();
void func_8006E420(Player*, s8, s8);
void func_8006E5AC(Player*, s8, s8);
void func_8006E634(Player*, s8, s8);
void func_8006E6BC(Player*, s8, s8);
void func_8006E744(Player*, s8, s8);
void func_8006E7CC(Player*, s8, s8);
void func_8006E848(Player*, s8, s8);
void func_8006E8C4(Player*, s8, s8);
void func_8006E940(Player*, s8, s8);

// skybox_and_splitscreen
void func_802A3730(struct UnkStruct_800DC5EC*);



extern u16 gPlayerBalloonStatus[8][3]; // D_8018D5F0
extern s16 gPlayerBalloonCount[];      // D_8018D8C0
extern s32 gScreenModeSelection;       // D_800DC530

extern struct UnkStruct_800DC5EC *D_800DC5EC;
extern struct UnkStruct_800DC5EC *D_800DC5F0;
extern struct UnkStruct_800DC5EC *D_800DC5F4;
extern struct UnkStruct_800DC5EC *D_800DC5F8;

extern u16 D_800DC5FC;
extern f64 D_800EE5A8;
extern f64 D_800EE5B0;
extern f32 D_800EE5FC;
extern f32 D_800EE600;
extern f32 D_800EE604;
extern f32 D_800EE608;
extern f32 D_800EE60C;
extern f64 D_800EE648;
extern f64 D_800EE650;
extern f64 D_800EE658;
extern f64 D_800EE660;
extern f64 D_800EE668;
extern f64 D_800EE670;
extern f64 D_800EE678;
extern f32 D_800EE680;
extern f32 D_800EE684;
extern f32 D_800EE688;
extern f32 D_800EE68C;
extern f64 D_800EE690;
extern f64 D_800EE698;
extern f64 D_800EE6A0;
extern f64 D_800EE6A8;
extern f64 D_800EE6B0;
extern f64 D_800EE6B8;
extern f64 D_800EE6C0;
extern f64 D_800EE6C8;
extern f64 D_800EE6D0;
extern f64 D_800EE6D8;
extern f64 D_800EE6E0;
extern f64 D_800EE6E8;
extern f64 D_800EE700;
extern f64 D_800EE708;
extern f64 D_800EE710;
extern f64 D_800EE718;
extern f64 D_800EE720;
extern f64 D_800EE728;
extern f64 D_800EE730;
extern f64 D_800EE738;
extern f64 D_800EE740;
extern f64 D_800EE748;
extern f64 D_800EE750;
extern f64 D_800EE758;
extern f64 D_800EE760;
extern f64 D_800EE768;
extern f64 D_800EE770;
extern f64 D_800EE778;
extern f32 D_800EE780;
extern f64 D_800EE788;
extern f64 D_800EE790;
extern f64 D_800EE798;
extern f64 D_800EE7A0;
extern f64 D_800EE7A8;
extern f32 D_800EE7B0;
extern f64 D_800EE7B8;
extern f32 D_800EE948;
extern f32 D_800EE94C;

extern s32 D_80164394;
extern s32 D_80164398;
extern s32 D_8016439C;
extern f32 D_801652A0[];
extern s32 D_801655C0;
extern s32 D_801655F0;
extern s32 D_80165678;
extern s8  D_801657AE;
extern s8  D_801657D8;
extern s8  D_801657E8;

extern s8  D_8018CAE0;

extern s32 D_8018D120;
extern s32 D_8018D170;
extern s32 D_8018D178;
extern s32 D_8018D188;
extern s32 D_8018D190;
extern s32 D_8018D1A0;
extern s32 D_8018D1B4;
extern s32 D_8018D1D4;
extern s32 D_8018D1CC;
extern s32 D_8018D1FC;
extern s32 D_8018D204;
extern s32 D_8018D21C;
extern s32 D_8018D2A4;
extern s32 D_8018D2BC;
extern s32 D_8018D480;
extern s32 D_8018D484;

#endif
