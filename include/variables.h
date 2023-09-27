#ifndef _VARIABLES_H_
#define _VARIABLES_H_

#include "global.h"
#include "defines.h"
#include "common_structs.h"

extern s8    gCharacterIdByGPOverallRank[8];        // D_8018D9D0
extern f32   gCourseCompletionPercentByPlayerId[8]; // D_801644D0
extern f32   gCourseCompletionPercentByRank[8];     // D_80162FD8
extern char *gCupNames[];                           // D_800E7500
extern s16   gCurrentCourseId;                      // D_800DC5A0

extern s8    gGPPointsByCharacterId[8];       // D_8018D9C8
extern s16   gGPCurrentRacePlayerIdByRank[8]; // D_80164360

extern s8    gHumanPlayerCount;

extern s32   gIsMirrorMode; // D_800DC604

extern f32   gLapCompletionPercentByPlayerId[8]; // D_801644A8
extern s32   gLapCountByPlayerId[8];             // D_80164390

extern s32   gMenuSelection;     // D_800E86A0

// Maps course IDs (as defined in the COURSES enum) to an index in a given cup's track order
extern const u8    gPerCupIndexByCourseId[]; // D_800EFD50
extern s32   gPlayerIsThrottleActive[];           // D_801653E0
extern s32   gGPCurrentRaceRankByPlayerId[];      // D_801643B8

extern char *gSoundModeNames[NUM_SOUND_MODES]; // D_800E7710

extern struct_8018CA70_entry D_8018CA70[];

extern Mtx D_80183D60[];

extern struct_D_8018CE10 D_8018CE10[];

extern Vec3f D_80165070[];

extern Vp D_802B8880[];

extern Gfx  D_0D0077A0[];

extern u16  gIsGamePaused;

extern u16  D_80162DD8;
extern s32  D_80162DE0;
extern s32  D_80162DE4;
extern s32  D_80162DE8;

extern f32  D_80164510[];
extern s32  D_80164A28;
extern s16  gMatrixEffectCount;

extern s16  D_80165020[];
extern s16  D_801650D0[4][8];

extern s16  D_80165110[4][8];
extern s16  D_80165150[4][8];
extern s16  D_80165190[4][8];
extern s16  D_801651D0[4][8];

extern f32  D_80165210[];
extern f32  D_80165230[];
extern f32  D_8016524C;
extern s16  D_80165270[8];
extern f32  D_80165280[];
extern f32  D_801652A0[];
extern s32  D_801652C0[];
extern s32  D_801652E0[];

extern s16  D_80165300[];

extern s32  D_80165400[];
extern s32  D_80165420[];
extern s32  D_80165440[];
extern s32  D_80165460[];
extern s32  D_80165480[];
extern s32  D_801654A0[];
extern s32  D_801654C0[];
extern s32  D_801654E0[];

extern s32  D_80165500[];
extern s32  D_80165520[];
extern s32  D_80165540[];
extern s16  D_8016556E;
extern s16  D_80165570;
extern s16  D_80165572;
extern s16  D_80165574;
extern s16  D_80165576;
extern s16  D_80165578;
extern s16  D_8016557A;
extern s16  D_8016557C;
extern s16  D_8016557E;
extern s16  D_80165580;
extern s16  D_80165582;

extern bool8   D_801657E8;

extern s8   D_801658FE;

extern s32  gMatrixHudCount;
extern s32  D_8018D900[];

#endif
