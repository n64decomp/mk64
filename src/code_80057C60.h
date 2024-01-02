#ifndef CODE_80057C60_H
#define CODE_80057C60_H

#include "common_structs.h"
#include "objects.h"
#include "camera.h"

// code_80057C60
#define D_8018C3F0_SIZE 128

#define D_8018C630_SIZE 128

#define D_8018C870_SIZE 0x40

// Maximum number of leaves that can be falling?
#define D_8018C970_SIZE 0x40
// Number of leaves to spawn each bonk?
#define D_8018C970_SPAWN_SIZE 0x14

#define D_8018C8C0_SIZE 0x64

typedef struct {
    char unk_00[0x4];
    Vec3f unk_04;
    char unk_10[0x4];
    s32 objectIndex;
    char unk_18[0x8];
} struct_D_8018CE10; // size = 0x20

void func_8005C674(s8 arg0, s16 *arg1, s16 *arg2, s16 *arg3);
void func_80057C60(void);
void func_80057CE4(void);
void func_80057DD0(void);
void func_80057FC4(u32);

void func_80058090(u32);
void func_800581C8(void);
void func_800582CC(void);
void func_80058394(void);
void func_8005845C(void);
void func_80058538(u32);
void func_80058640(void);
void func_800586FC(void);
void func_800587A4(void);
void func_8005884C(void);
void func_800588F4(s32);
void func_80058B58(s32);
void func_80058BF4(void);
void func_80058C20(u32);
void func_80058DB4(u32);
void func_80058F48(void);
void func_80058F78(void);
void func_80059AC8(void);

void func_80059024(void);
void func_8005902C(void);
void func_800590D4(void);
void func_800591B4(void);
void func_80059358(void);
void func_80059360(void);
void func_800593F0(void);
void func_800593F8(void);
void func_80059488(s32);
void func_800594F0(void);
void func_800594F8(void);
void func_80059528(void);
void func_80059530(void);
void func_80059560(s32);
void func_800596A8(void);
void func_800596D8(void);
void func_80059710(void);
void func_80059718(void);
void func_80059750(void);
void func_80059780(void);
void func_800597B8(void);
void func_800597E8(void);
void func_80059820(s32);
void randomize_seed_from_controller(s32);
void func_8005994C(void);
void func_8005995C(void);
void func_80059A88(s32);
void func_80059C50(void);
void func_80059D00(void);

void func_8005A070(void);
void func_8005A14C(s32);
void func_8005A380(void);
void func_8005A3C0(void);
void func_8005A71C(void);
void func_8005A74C(void);
void func_8005A99C(void);
void func_8005AA34(void);
void func_8005AA4C(void);
void func_8005AA6C(s32);
void func_8005AA80(void);
void func_8005AA94(s32);
void func_8005AAF0(void);
void func_8005AB20(void);
void func_8005AB60(void);

void func_8005B7A0(void);

void func_8005B914(void);

void func_8005C360(f32);
void func_8005C64C(s32*);
void func_8005C654(s32*);
void func_8005C65C(s32);
void func_8005C6B4(s8, s16*, s16*, s16*);
void func_8005C728(void);
void func_8005C980(void);
void func_8005CB60(s32, s32);

void func_8005D0FC(s32);
void func_8005D18C(void);
void func_8005D1F4(s32);

void func_8005D290(void);
void func_8005D6C0(Player*);
void func_8005D794(Player*, UnkPlayerStruct258*, f32, f32, f32, s8, s8);
s32  func_8005D7D8(UnkPlayerStruct258*, s8, f32);
s32  func_8005D800(UnkPlayerStruct258*, s32, s16);
s32  func_8005D82C(UnkPlayerStruct258*, s32, s16);
void func_8005D898(Player*, s16, s32, s8, s8);
void func_8005DA30(Player*, s16, s32, s8, s8);
void func_8005DAD0(void);
void func_8005DAD8(UnkPlayerStruct258*, s16, s16, s16);
void func_8005DAF4(Player*, s16, s32, s32);
void func_8005EA94(Player*, s16, s32, s8);
void func_8005ED48(Player*, s16, s32, s32);

void func_8005F90C(Player*, s16, s32, s32);

void func_80060504(Player*, s16, s32, s32);
void func_800608E0(Player*, s16, s32, s8, s8);
void func_80060B14(Player*, s16, s32, s8, s8);
void func_80060BCC(Player*, s16, s32, s32);
void func_80060F50(Player*, s16, s8, s8, s8);

void func_80061094(Player*, s16, s8, s8, s8);
void func_80061130(Player*, s16, s32, s8, s8);
void func_80061224(Player*, s16, s32, s8, s8);
void func_800612F8(Player*, s32, s32, s8);
void func_80061430(Player*, s32, s32, s8);
void func_800615AC(Player*, s16, s32, s8);
void func_80061754(Player*, s16, s32, s32, s32);
void func_8006199C(Player*, s16, s32, s8, s8);
void func_80061A34(Player*, s16, s32, s8);
void func_80061D4C(Player*, s16, s32, s8);
void func_80061EF4(Player*, s16, s32, s8);

void func_800621BC(Player*, s16, s32, s8);
void func_80062484(Player*, UnkPlayerStruct258*, s32);
void func_800624D8(Player*, s32, s32, s8);
void func_800628C0(Player*, s8, s8, s8);
void func_80062914(Player*, s8, s8, s8);
void func_80062968(Player*, s8, s8, s8);
void func_800629BC(Player*, s8, s8, s8);
void func_80062A18(Player*, s8, s8, s8);
void func_80062AA8(Player*, s8, s8, s8);
void func_80062B18(f32*, f32*, f32*, f32, f32, f32, u16, u16);
void func_80062C74(Player*, s16, s32, s32);
void func_80062F98(Player*, s16, s8, s8);

void func_800630C0(Player*, s16, s8, s8);
void func_800631A8(Player*, s16, s8, s8);
void func_80063268(Player*, s16, s8, s8);
void func_80063408(Player*, s16, s8, s8);
void func_800635D4(Player*, s16, s8, s8);
void func_800639DC(Player*, s16, s8, s8);
void func_80063BD4(Player*, s16, s8, s8);
void func_80063D58(Player*, s16, s8, s8);
void func_80063FBC(Player*, s16, s32, s32);

void func_80064184(Player*, s16, s8, s8);
void func_800643A8(Player*, s16, s8, s8);
void func_800644E8(Player*, s16, s8, s8);
void func_80064664(Player*, s16, s8, s8);
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
void func_800652D4(Vec3f, Vec3s, f32);
void func_8006538C(Player*, s8, s16, s8);
void func_800658A0(Player*, s8, s16, s8);
void func_80065AB0(Player*, s8, s16, s8);
void func_80065F0C(Player*, s8, s16, s8);

void func_800664E0(Player*, s8, s16, s8);
void func_80066998(Player*, s8, s16, s8);
void func_80066BAC(Player*, s8, s16, s8);

void func_80067280(Player*, s8, s16, s8);
void func_80067604(Player*, s8, s16, s8);
void func_80067964(Player*, s8, f32, s8, s8);
void func_80067D3C(Player*, s8, u8*, s8, f32, s32);

void func_8006801C(Player*, s8, u8*, s8, f32, s32);
void func_80068310(Player*, s8, f32, s8, s8);
void func_80068724(Player*, s8, f32, s8, s8);
void func_80068AA4(Player*, s8, f32, s8, s8);
void func_80068DA0(Player*, s8, f32, s8, s8);

void func_800691B8(Player*, s8, s16, s8);
void func_80069444(Player*, s8, s16, s8);
void func_800696CC(Player*, s8, s16, s8, f32);
void func_80069938(Player*, s8, s16, s8);
void func_80069BA8(Player*, s8, s16, s8);
void func_80069DB8(Player*, s8, s16, s8);

void func_8006A01C(Player*, s8, s16, s8);
void func_8006A280(Player*, s8, s16, s8);
void func_8006A50C(Player*, f32, f32, s8, s8, s16);
void func_8006A7C0(Player*, f32, f32, s8, s8);
void func_8006AFD0(Player*, s8, s16, s8);

void func_8006B7E4(Player*, s8);
void func_8006B87C(Player*, s8);
void func_8006B8B4(Player*, s8);
void func_8006B974(s32, s8, s8);
void func_8006B9CC(Player*, s8);
void func_8006BA94(Player*, s8, s8);
void render_balloon(Vec3f, f32, s16, s16);

void func_8006C0C8(Vec3f, f32, s32, s16);
void func_8006C294(Vec3f, f32, s32, s16);
void func_8006C4D4(Vec3f, f32, s32, s16, s16);
void func_8006C6AC(Player*, s16, s8, s8);
void func_8006C9B8(Player*, s16, s8, s8);
void func_8006CEC0(Player*, s16, s8, s8);

void func_8006D194(Player*, s8, s8);
void func_8006D474(Player*, s8, s8);
void func_8006DC54(Player*, s8, s8);
void func_8006DD3C(Player*, s8, s8);

void func_8006E058(void);
void func_8006E420(Player*, s8, s8);
void func_8006E5AC(Player*, s8, s8);
void func_8006E634(Player*, s8, s8);
void func_8006E6BC(Player*, s8, s8);
void func_8006E744(Player*, s8, s8);
void func_8006E7CC(Player*, s8, s8);
void func_8006E848(Player*, s8, s8);
void func_8006E8C4(Player*, s8, s8);
void func_8006E940(Player*, s8, s8);

// data/data_code_80071F00_2.s
extern Vtx gBalloonVertexPlane1[];
extern Vtx gBalloonVertexPlane2[];

extern s16 D_800E4730[];
extern u8 **D_800E4770[];
extern u8 **D_800E47A0[];
extern s32 D_800E47DC[];
extern s32 D_800E480C[];

extern u8 D_800E52D0[];
extern u8 D_800E55D0[14][3];
extern u16 D_800E55A0[];
extern u16 D_800E55B0[16];

extern u16 D_800E67B8[][4];

extern u16 D_800E6834[][4];

extern u16 D_800E694C[];
extern u16 D_800E69B0[][4];
extern u16 D_800E69F4[][4];

extern u8 D_800E6F30[][3];
extern u8 D_800E6F48[][3];



// BSS, presumably

extern f32 D_801652A0[];

extern s32 D_80165590;
extern s32 D_80165594;
extern s32 D_80165598;
extern s32 D_8016559C;
extern s32 D_801655A4;
extern s32 D_801655AC;
extern s32 D_801655B4;
extern s32 D_801655BC;
extern s32 D_801655C0;
extern s32 D_801655C4;
extern s32 D_801655C8;
extern s32 D_801655CC;
extern s32 D_801655D8;
extern s32 D_801655E8;
extern s32 D_801655F0;
extern s32 D_801655F8;

extern s32 D_80165608;
extern s32 D_80165618;
extern s32 D_80165628;
extern s32 D_80165638;
extern u32 D_80165648;
extern u32 D_80165658[];
extern s32 D_80165678;
extern u16 D_801656B0;
extern u16 D_801656C0;
extern u16 D_801656D0;
extern u16 D_801656E0;
extern s16 D_801656F0;
extern s16 D_80165708;
extern s16 D_80165710;
extern s16 D_80165730;
extern s16 D_80165738;
extern s16 D_80165740;
extern s16 D_80165748;
extern s16 D_80165718;
extern s16 D_80165720;
extern s16 D_80165728;

extern s16 gNumActiveThwomps;
extern s32 D_80165754;
extern ThwompSpawn *gThowmpSpawnList;

extern Vec4s D_80165760;
extern s8 D_8016576A;
extern Vec4s D_80165770;
extern s16 D_8016578C;
extern Vec4s D_80165780;

extern s16 D_80165790;
extern s16 D_80165794;
extern s8 D_8016579C;
extern u16 D_8016579E;
extern u16 D_801657A2;
extern s8 D_801657AE;
extern s8 D_801657B0;
extern s8 D_801657B2;
extern s8 D_801657B4;
extern s8 D_801657B8[];
extern s8 D_801657C8;
extern s8 D_801657D0[];
extern s8 D_801657D8;
extern s8 D_801657E2;
extern s8 D_801657E3;
extern s8 D_801657E4;
extern s8 D_801657E5;
extern bool8 D_801657E6;
extern u8 D_801657E7;
extern bool8 D_801657E8;
extern bool8 D_801657F0;
extern bool8 D_801657F8;
extern s32 D_801657FC;

extern s8 D_80165800[2];
extern s32 D_80165804;
extern s8 D_80165808;
extern s32 D_8016580C;
extern bool8 D_80165810;
extern s32 D_80165814;
extern bool8 D_80165818;
extern s32 D_8016581C;
extern s8 D_80165820;
extern s8 D_80165828;
extern Vec3su D_8016582C;
extern s8 D_80165832[2];
extern Vec3su D_80165834;
extern s8 D_80165840[];
extern s32 D_80165860;
extern s32 D_8016586C;
extern s32 D_80165878;
extern s32 D_8016587C;
extern u8 *D_80165880;
extern s8 D_80165888;
extern s8 D_80165890;
extern s8 D_80165898;
extern s32 D_8016589C;
extern s8 D_801658A8;
extern s8 D_801658BC;
extern s8 D_801658C6;
extern s8 D_801658CE;
extern s8 D_801658D6;
extern s8 D_801658DC;
extern s8 D_801658E4;
extern s8 D_801658EC;
extern s8 D_801658F4;
extern u8 sRandomItemIndex;
extern s8 D_801658FE;
extern u8 gControllerRandom;

extern s16 D_80165900;
extern s8  D_80165908;

extern s8 D_80165A90;
// This is the object list
extern Objects gObjectList[];
extern s32 objectListSize;
extern Mtx D_80183D60;
extern s32 D_80183DA0;
extern f32 D_80183DA8[];
extern s32 D_80183DB8[];
extern f32 D_80183DC8[];
extern s32 D_80183DD8[];
extern s32 D_80183E38;
extern Vec3f D_80183E40;
extern s32 D_80183E4C;
extern Vec3f D_80183E50;
extern s32 D_80183E5C;
extern s32 D_80183E6C;
extern Vec3f D_80183E70;
extern s32 D_80183E7C;
extern Vec3su D_80183E80;
extern s32 gItemWindowObjectByPlayerId[];
extern Vec3su D_80183E98;
extern s32 indexObjectList1[];
extern s32 indexObjectList2[];
extern u8 D_80183FA8[4][0x2000];
extern s32 indexObjectList3[];
extern u8 *D_8018C028;
extern s32 indexObjectList4[];
extern Collision D_8018C0B0[];
extern s32 D_8018C1B0[];
extern Collision D_8018C3B0;
extern s32 D_8018C3F0[];
extern s32 D_8018C630[];
extern Collision D_8018C830;
extern s32 D_8018C870[];
extern s32 D_8018C970[];
extern hud_player playerHUD[];
extern s32 D_8018CC80[];
extern struct_D_8018CE10 D_8018CE10[];
extern s32 D_8018CF10;
extern Camera *D_8018CF14;
extern s16 D_8018CF18;
extern Player *D_8018CF1C;
extern s16 D_8018CF20;
extern Player *D_8018CF28[];
extern s16 D_8018CF48;
extern s16 D_8018CF50[];
extern s16 D_8018CF60;
extern s16 D_8018CF68[];
extern s16 D_8018CF78;
extern s16 gGPCurrentRaceCharacterIdByRank[];
extern s16 D_8018CF90;
extern s16 D_8018CF98[];
extern s16 D_8018CFA8;
extern s16 D_8018CFB0;
extern s16 D_8018CFB8;
extern s16 D_8018CFC0;
extern s16 D_8018CFC8;
extern f32 D_8018CFCC;
extern s16 D_8018CFD0;
extern f32 D_8018CFD4;
extern s16 D_8018CFD8;
extern s16 D_8018CFE0;
extern f32 D_8018CFE4;
extern s16 D_8018CFE8;
extern f32 D_8018CFEC;
extern s16 D_8018CFF0;
extern f32 D_8018CFF4;
extern s16 D_8018CFF8;
extern s16 D_8018D000;
extern s16 D_8018D008;
extern f32 D_8018D00C;
extern s16 D_8018D010;
extern s16 D_8018D018;
extern f32 xOrientation;


extern f32 D_8018D028[8];
extern f32 D_8018D050[8];
extern f32 D_8018D078[8];
extern f32 D_8018D0A0[];
extern f32 D_8018D0C8[8];
extern f32 D_8018D0F0[];

extern s32 gMatrixHudCount; // 8018d120
extern s32 D_8018D114;
extern s32 D_8018D150;
extern s32 D_8018D160;
extern s32 D_8018D168;
extern s32 D_8018D170;
extern s32 D_8018D178;
extern s32 D_8018D180;
extern s32 gIsHUDVisible; // 8018d188
extern s32 D_8018D190;
extern s32 D_8018D1A0;
extern s32 D_8018D1B4;
extern s32 D_8018D1D4;
extern s32 D_8018D1CC;
extern f32 D_8018D1E8;
extern s32 D_8018D1FC;

extern s16 D_8018D200;
extern s32 D_8018D204;
extern s16 D_8018D208;
extern s32 D_8018D20C;
extern s16 D_8018D210;
extern bool D_8018D214;
extern s16 D_8018D218;
extern s32 D_8018D21C;
extern s32 D_8018D22C;
extern f32 D_8018D2A0;
extern s32 D_8018D2A4;
extern s32 D_8018D2AC;
extern s32 D_8018D2BC;
extern s32 D_8018D2C8[];
extern s16 D_8018D2E0;
extern s16 D_8018D2E8;

extern s32 D_8018D314;
extern s32 D_8018D320;
extern s32 D_8018D380;
extern s32 D_8018D384;
extern s32 D_8018D388;
extern s32 D_8018D3D4;
extern s32 D_8018D3D8;
extern s32 D_8018D3DC;
extern s32 D_8018D3F0;
extern s32 D_8018D3F4;
extern s32 D_8018D3F8;
extern s32 gRaceFrameCounter; // 8018d3fc

extern s32 D_8018D400;
extern s32 D_8018D40C;
extern s32 D_8018D410;
extern u8 *D_8018D420;
extern u8 *D_8018D424;
extern u8 *D_8018D428;
extern u8 *D_8018D42C;
extern u8 *D_8018D430;
extern u8 *D_8018D434;
extern u8 *D_8018D438;
extern u8 *D_8018D43C;
extern u8 *D_8018D440;
extern u8 *D_8018D444;
extern u8 *D_8018D448;
extern u8 *D_8018D44C;
extern u8 *D_8018D450;
extern u8 *D_8018D454;
extern u8 *D_8018D458;
extern u8 *D_8018D45C;
extern u8 *D_8018D460;
extern u8 *D_8018D464;
extern u8 *D_8018D468;
extern u8 *D_8018D46C;
extern u8 *D_8018D470;
extern u8 *D_8018D478;
extern u8 *D_8018D480;
extern u8 *D_8018D484;
extern u8 *D_8018D488;
extern u8 *D_8018D48C;
extern u8 *D_8018D494;
extern u8 *D_8018D498;
extern u8 *D_8018D49C;
extern u8 *D_8018D4A0;
extern u8 *D_8018D4A4;
extern u8 *D_8018D4A8;
extern u8 *D_8018D4AC;
extern u8 *D_8018D4B0;
extern u8 *D_8018D4B4;
extern u8 *D_8018D4B8;
extern u8 *D_8018D4BC;
extern u8 *D_8018D4C0;
extern u8 *D_8018D4C4;
extern u8 *D_8018D4C8;
extern Vec3f D_8018D4D0[];

extern Vec3f D_8018D530[];
extern Vec3f D_8018D590[];
extern u16 gPlayerBalloonStatus[8][3]; // D_8018D5F0

extern Vec3s D_8018D620[];
extern Vec3f D_8018D650[];
extern Vec3f D_8018D6B0[];

extern Vec3f D_8018D710[];
extern Vec3s D_8018D770[];
extern Vec3s D_8018D7A0[];
extern Vec3s D_8018D7D0[];

extern Vec3s D_8018D800[];
extern Vec3s D_8018D830[];
extern Vec3s D_8018D860[];
extern Vec3s D_8018D890[];
extern s16 gPlayerBalloonCount[];      // D_8018D8C0
extern Vec3s D_8018D8D0[];

#endif
