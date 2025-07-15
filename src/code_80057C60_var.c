#include <ultra64.h>
#include <macros.h>
#include "code_80057C60.h"

s16 D_8018CFE0;
f32 D_8018CFE4;
s16 D_8018CFE8;
f32 D_8018CFEC;
s16 D_8018CFF0;
f32 D_8018CFF4;
s16 D_8018CFF8;
UNUSED s32 D_8018CFFC;
s16 D_8018D000;
UNUSED s32 D_8018D004;
s16 D_8018D008;
f32 D_8018D00C;
s16 D_8018D010;
UNUSED s32 D_8018D014;
s16 D_8018D018;
f32 xOrientation;
s16 D_8018D020;
f32 D_8018D028[8];
s16 D_8018D048;
f32 D_8018D050[8];
s16 D_8018D070;
f32 D_8018D078[8];
s16 D_8018D098;
f32 D_8018D0A0[8];
s16 D_8018D0C0;
f32 D_8018D0C8[8];
s16 D_8018D0E8;
f32 D_8018D0F0[8];
s16 D_8018D110;
s32 D_8018D114;
UNUSED s32 D_8018D118[2];
s32 gMatrixHudCount;
UNUSED s32 D_8018D128[6];
s32 D_8018D140;
UNUSED s32 D_8018D148[2];
s32 D_8018D150;
UNUSED s32 D_8018D154;
s32 D_8018D158;
UNUSED s32 D_8018D15C;
s32 D_8018D160;
UNUSED s32 D_8018D164;
s32 D_8018D168;
s16 D_8018D16C;
s32 D_8018D170;
//! Used for cycling through snowflakes in func_80078790
s16 D_8018D174;
s32 D_8018D178;
//! Also next free spot in D_8018CC80?
s16 D_8018D17C;
s32 D_8018D180;
s16 D_8018D184;
s32 gIsHUDVisible;
s16 D_8018D18C;
s32 D_8018D190;
/**
 * Exact use unknown, something related to the mole groups
 * Maybe be indicating that a given mole in a given group is active?
 */
s8 D_8018D198[NUM_GROUP1_MOLES];
s32 D_8018D1A0;
s8 D_8018D1A8[NUM_GROUP2_MOLES];
s32 D_8018D1B4;
s8 D_8018D1B8[NUM_GROUP3_MOLES];
s32 D_8018D1C4;
/**
 * These seem to be limits on different object types in Moo Moo Farm
 * See init_course_objects in code_8006E9C0.c
 * Maybe max number of active moles in a given group of moles?
 */
s32 D_8018D1C8;
s32 D_8018D1CC;
s32 D_8018D1D0;
s32 D_8018D1D4;
s32 D_8018D1D8;
s32 D_8018D1DC;
u8* gGameLogoAddress;
UNUSED s32 D_8018D1E4;
f32 D_8018D1E8;
s32 D_8018D1EC;
//! Number of used spots in D_8018CC80?
s32 D_8018D1F0;
UNUSED s32 D_8018D1F4;
//! Next free spot in D_8018CC80?
s32 D_8018D1F8;
s32 D_8018D1FC;
s16 D_8018D200;
s32 D_8018D204;
s16 D_8018D208;
s32 D_8018D20C;
s16 D_8018D210;
bool D_8018D214;
s16 D_8018D218;
s32 D_8018D21C;
/**
 * Destination for decompressed exhaust textures (I think)
 * I'm not how much I like this "pointer to an array" setup, but if it matches it matches
 */
u8 (*D_8018D220)[1024];
s32 D_8018D224;
u8 D_8018D228;
s32 D_8018D22C;
//! Something related to the display of the clouds/stars?
s8 D_8018D230;
UNUSED s32 D_8018D238[2];
s32 D_8018D240;
u8* D_8018D248[22];
f32 gMiniMapMarkerScale;
s32 D_8018D2A4;
UNUSED s32 D_8018D2A8;
s32 D_8018D2AC;
s16 D_8018D2B0;
s32 D_8018D2B4;
s16 D_8018D2B8;
s32 D_8018D2BC;
s16 gMiniMapFinishLineX[4];
s32 D_8018D2C8[4];
s16 gMiniMapFinishLineY[4];
s16 gMiniMapX;
UNUSED s32 D_8018D2E4;
s16 gMiniMapY;
UNUSED s32 D_8018D2EC;
s16 D_8018D2F0;
UNUSED s32 D_8018D2F4;
s16 D_8018D2F8;
UNUSED s32 D_8018D2FC;
u16 D_8018D300;
UNUSED s32 D_8018D304;
u16 D_8018D308;
UNUSED s32 D_8018D30C;
u16 D_8018D310;
s32 D_8018D314;
u16 D_8018D318;
UNUSED s32 D_8018D31C;
s32 D_8018D320;
UNUSED s32 D_8018D328[22];
s32 D_8018D380;
s32 D_8018D384;
s32 D_8018D388;
UNUSED s32 D_8018D390[11];
//! Controls number of come object type placed into gObjectParticle2 on Frappe Snowland. So, maybe snowmen/snowflakes?
s32 D_8018D3BC;
//! Limit on some object type (ice chips?) in Sherbet Land
s32 D_8018D3C0;
//! Some sort of limiter on how many of some object type can spawn
s32 D_8018D3C4;
UNUSED s32 D_8018D3C8[3];
s32 D_8018D3D4;
s32 D_8018D3D8;
s32 D_8018D3DC;
//! some alpha
s32 D_8018D3E0;
//! some red
s32 D_8018D3E4;
//! some green
s32 D_8018D3E8;
//! some blue
s32 D_8018D3EC;
s32 D_8018D3F0;
s32 D_8018D3F4;
s32 D_8018D3F8;
s32 gRaceFrameCounter;

s32 D_8018D400;
UNUSED s32 D_8018D404;
UNUSED s32 D_8018D408;
s32 D_8018D40C;
s32 D_8018D410;
UNUSED s32 D_8018D418[2];
u8* D_8018D420;
u8* D_8018D424;
u8* D_8018D428;
u8* D_8018D42C;
u8* D_8018D430;
u8* D_8018D434;
u8* D_8018D438;
u8* D_8018D43C;
u8* D_8018D440;
u8* D_8018D444;
u8* D_8018D448;
u8* D_8018D44C;
u8* D_8018D450;
u8* D_8018D454;
u8* D_8018D458;
u8* D_8018D45C;
u8* D_8018D460;
u8* D_8018D464;
u8* D_8018D468;
u8* D_8018D46C;
u8* D_8018D470;
u8* gLoadedTextureKartShadow;
u8* D_8018D478;
UNUSED u8* D_8018D47C;
u8* D_8018D480;
u8* D_8018D484;
u8* D_8018D488;
u8* D_8018D48C;
u8* D_8018D490;
u8* gLoadedGroundDust;
u8* gLoadedGrassParticle;
u8* D_8018D49C;
u8* D_8018D4A0;
u8* gTextureLoadedOnomatopoeiaPoomp1;
u8* gTextureLoadedOnomatopoeiaPoomp2;
u8* gTextureLoadedOnomatopoeiaWhrrrr1;
u8* gTextureLoadedOnomatopoeiaWhrrrr2;
u8* gTextureLoadedOnomatopoeiaCrash1;
u8* gTextureLoadedOnomatopoeiaCrash2;
u8* D_8018D4BC;
u8* D_8018D4C0;
u8* gTextureLoadedLightningBolt0;
u8* gTextureLoadedLightningBolt1;
Vec3f gPlayerBalloonPosX[8];
Vec3f gPlayerBalloonPosY[8];
Vec3f gPlayerBalloonPosZ[8];
u16 gPlayerBalloonStatus[8][3];
Vec3s D_8018D620[8];
Vec3f D_8018D650[8];
Vec3f D_8018D6B0[8];
Vec3f D_8018D710[8];
Vec3s D_8018D770[8];
Vec3s D_8018D7A0[8];
Vec3s D_8018D7D0[8];

Vec3s D_8018D800[8];
Vec3s D_8018D830[8];
Vec3s gPlayerBalloonRotation[8];
Vec3s D_8018D890[8];
s16 gPlayerBalloonCount[8];
Vec3s gPlayerBalloonDepartingTimer[8];
