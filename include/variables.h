#ifndef _VARIABLES_H_
#define _VARIABLES_H_

#include "global.h"

extern s32 gCCSelection;
extern s8 gCourseSelection;
extern s16 gCurrentCourseId;
extern s8 gCupSelection;
extern s8 gHumanPlayerCount;
extern f32 gKartFrictionTable[];
extern f32 gKartBoundingBoxTable[];
extern f32 gKartGravityTable[];
extern s8 gGPOverallRanks[8];
extern s32 gModeSelection;
extern s32 gPlayerCountSelection1;
// Indexed by Player ID. Track time in seconds since player has last crossed the finish line
extern f32 gTimePlayerLastTouchedFinishLine[8]; // D_8015F898
// Indexed by Player ID. Tracks the percentage of the track has been completed
extern f32 gTrackCompletionPercentByPlayerId[8]; // D_801644D0
// Indexed by Rank. Tracks the percentage of the track has been completed
extern f32 gTrackCompletionPercentByRank[8]; // D_80162FD8

extern struct_D_802874D8 D_802874D8;
extern s16 D_801650D0[4][8];
extern s16 D_80165110[4][8];
extern s16 D_80165150[4][8];
extern s16 D_80165190[4][8];
extern s16 D_801651D0[4][8];
extern struct_D_8018CE10 D_8018CE10[];
extern struct_D_802DFB80 D_802DFB80[][8];
extern struct_D_802BFB80 D_802BFB80[][8];
extern s32 D_800DC52C;
extern s32 D_800DC50C;
extern s16 D_80165578;
extern s16 D_8016557A;
extern s16 D_8016557C;
extern s16 D_8016557E;
extern s16 D_80165574;
extern s16 D_80165576;
extern s16 D_80165570;
extern s16 D_80165572;
extern s16 D_80165580;
extern s16 D_80165582;
extern s8 D_800E86A8[4];
extern s16 D_80165270[8];
extern Player* D_800DC4DC;
extern Player* D_800DC4E0;
extern Player* D_800DC4E4;
extern Player* D_800DC4E8;
extern Player* D_800DC4EC;
extern Player* D_800DC4F0;
extern Player* D_800DC4F4;
extern Player* D_800DC4F8;
extern Player* D_800DC4FC;
extern u16 D_800DC51C;
extern s8 D_8018EDEF;
extern s32 D_80164A28;
extern s32 D_801643B8[];
extern s16 D_8016556E;
extern s32 D_80162DE0;
extern s32 D_80162DE4;
extern s32 D_80162DE8;
extern u16 D_8015F890;
extern u16 D_80162DD4[];
extern u16 D_80162DD8;
extern s16* D_80164550;
extern f32 D_80165210[];
extern f32 D_80165230[];
extern struct_D_800E261C D_800E261C;
extern f32 D_80164510[];
extern s32 D_80165420[];
extern s32 D_80165440[];
extern s32 D_80165460[];
extern s32 D_80165480[];
extern s32 D_801654E0[];
extern s32 D_80165500[];
extern s32 D_80165520[];
extern s32 D_80165540[];
extern s32 D_8018D900;
extern s32 D_801652E0[];
extern s32 D_801652C0[];
extern s16 D_80165020[];
extern Vec3f D_80165070[];
extern f32 D_80165280[];
extern f32 D_801652A0[];
extern s32 D_801653E0[];
extern s32 D_80165400[];
extern s32 D_801654A0[];
extern s32 D_801654C0[];
extern s16 D_80165300[];
extern Camera *camera1;
extern Camera *camera2;
extern Camera *camera3;
extern Camera *camera4;
extern s32 D_8016524C;

#endif
