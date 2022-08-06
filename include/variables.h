#ifndef _VARIABLES_H_
#define _VARIABLES_H_

#include "global.h"
#include "defines.h"
#include "common_structs.h"

extern s32   gActiveScreenMode; // D_800DC52C

extern s32   gCCSelection;                          // D_800DC548
extern s8    gCharacterIdByGPOverallRank[8];        // D_8018D9D0
extern s8    gCharacterGridSelections[4];           // D_8018EDE4
extern s8    gCharacterSelections[4];               // D_800E86A8
extern s8    gControllerPakMenuSelection;           // D_8018EDF0
extern s32   gControllerPakNumPagesFree;            // D_8018EB80
extern s8    gControllerPakSelectedTableRow;        // D_800E86C0
extern f32   gCourseCompletionPercentByPlayerId[8]; // D_801644D0
extern f32   gCourseCompletionPercentByRank[8];     // D_80162FD8
extern s8    gCourseRecordsMenuSelection;           // D_8018EDF8
extern f32   gCourseTimer;                          // D_800DC598
extern const s16 gCupCourseOrder[NUM_CUPS][NUM_COURSES_PER_CUP]; // D_800F2BB4
extern s8    gCupCourseSelection;                   // D_8018EE0B
extern char *gCupNames[];                           // D_800E7500
extern s8    gCupSelection;                         // D_8018EE09
// Maps course IDs (as defined in the COURSES enum) to the cup they belong to
extern u8    gCupSelectionByCourseId[NUM_COURSES];  // D_800E7664
extern s16   gCurrentCourseId;                      // D_800DC5A0

extern s8    gDebugMenuSelection;                   // D_8018EDEF
extern char *gDebugSoundModeNames[NUM_SOUND_MODES]; // D_800E7700
extern Gfx  *gDisplayListHead;                      // D_80150298

extern u16   gEnableDebugMode; // D_800DC520

extern s32   gGlobalTimer;                    // D_800DC54C
extern s8    gGPPointsByCharacterId[8];       // D_8018D9C8
extern s16   gGPCurrentRacePlayerIdByRank[8]; // D_80164360

extern s8    gHumanPlayerCount;

extern s32   gIsMirrorMode; // D_800DC604

extern f32   gKartFrictionTable[];
extern f32   gKartBoundingBoxTable[];
extern f32   gKartGravityTable[];

extern f32   gLapCompletionPercentByPlayerId[8]; // D_801644A8
extern s32   gLapCountByPlayerId[8];             // D_80164390

extern s32   gMenuTimingCounter; // D_8018EE00
extern s32   gMenuSelection;     // D_800E86A0
extern s32   gModeSelection;     // D_800DC53C

// Indicates the ID of the next title screen demo that will be played
extern s8    gNextDemoId;           // D_800E86BC

// Maps course IDs (as defined in the COURSES enum) to an index in a given cup's track order
extern u8    gPerCupIndexByCourseId[NUM_COURSES]; // D_800EFD50
extern s32   gPlayerCountSelection1;
extern s32   gPlayerIsThrottleActive[];           // D_801653E0
extern s32   gPlayerPositions[];                  // D_801643B8

extern u8    gSaveDataSoundMode;               // D_8018ED14
extern u8    gSaveDataSoundModeBackup;         // D_8018ED8C
//extern u32   gScreenModeSelection;             // D_800DC530
extern u32   gSegmentTable[16];                // D_80150258
extern OSMesgQueue gSIEventMesgQueue;          // D_8014F0B8
extern u8    gSoundMode;                       // D_8018EDF2
extern char *gSoundModeNames[NUM_SOUND_MODES]; // D_800E7710

// Indexed by Player ID. Track time in seconds since player has last crossed the finish line
extern f32   gTimePlayerLastTouchedFinishLine[8]; // D_8015F898
extern s8    gTimeTrialDataCourseIndex;           // D_8018EDF7

extern Player gPlayers[8];
extern Player* gPlayerOne;
extern Player* gPlayerTwo;
extern Player* gPlayerThree;
extern Player* gPlayerFour;
extern Player* gPlayerFive;
extern Player* gPlayerSix;
extern Player* gPlayerSeven;
extern Player* gPlayerEight;
extern Player* gPlayerOneCopy;

extern SaveData D_8018EB90;

extern struct_8018CA70_entry D_8018CA70[];

extern Mtx D_80183D60[];

extern struct_D_8018CE10 D_8018CE10[];
extern struct_D_802874D8 D_802874D8;

//extern struct GfxPool *gGfxPool; // D_8014EF40

extern mk64_surface_map_ram *D_8015F580; // This is techinally a pointer to an array, but declaring it as such create regalloc issues elsewhere
extern u16 D_8015F588; // Number of entires in D_8015F580

extern Vec3f D_80165070[];

extern Vp D_802B8880[];

extern Gfx  D_0D0077A0[];

extern s32  gGamestate;
extern u16  D_800DC51C;
extern s32  D_800DC540;
extern u16  D_800DC5FC;

extern u16  D_80150112;

extern u16  D_8015F890;

extern u16  D_80162DD4[];
extern u16  D_80162DD8;
extern s32  D_80162DE0;
extern s32  D_80162DE4;
extern s32  D_80162DE8;

extern f32  D_80164510[];
extern s32  D_80164A28;
extern s16  D_80164AF0;

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

extern s8   D_801657E8;

extern s8   D_801658FE;

extern s32  D_8018D120;
extern s32  D_8018D900[];

extern s8   D_8018EDEC;

#endif
