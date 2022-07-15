#ifndef MENUS_H
#define MENUS_H

#include "PR/os.h"
#include "common_structs.h"
#include <types.h>
#include <defines.h>

/* functions */
void update_menus(void);
void func_800B3F74(s32 menuSelection);
void func_800B44BC(void);
s32  func_800B4520(void);

/* data */
extern s32 gMenuSelection;
extern s32 D_800E86A4;
extern s8 gCharacterSelections[4];
extern s8 D_800E86AC[4];
extern s8 D_800E86B0[4][3];
extern s8 gNextDemoId;
extern s8 gControllerPakSelectedTableRow;
extern s8 D_800E86C4[12];
extern s8 D_800E86D0[16];

extern const s8 D_800F2B60[5][3];
extern const s32 gGameModeFromNumPlayersAndRowSelection[5][3];
extern const s16 gCupCourseOrder[5][4];

extern s32 D_8018EDC0;
extern f32 D_8018EDC4;
extern f32 D_8018EDC8;
extern f32 D_8018EDCC;
extern f32 D_8018EDD0;
extern f32 D_8018EDD4;
extern f32 D_8018EDD8;
extern f32 D_8018EDDC;
extern s32 D_8018EDE0;
extern s8 gCharacterGridSelections[4];
extern s8 D_8018EDE8[4];
extern s8 D_8018EDEC;
extern s8 gMainMenuSelectionDepth;
extern s8 D_8018EDEE;
extern s8 gDebugMenuSelection;
extern s8 gControllerPakMenuSelection;
extern s8 D_8018EDF1;
extern u8 gSoundMode;
extern s8 D_8018EDF3;
extern s8 D_8018EDF4;
extern s8 D_8018EDF5;
extern s8 D_8018EDF6;
extern s8 gTimeTrialDataCourseIndex;
extern s8 gCourseRecordsMenuSelection;
extern s8 D_8018EDF9;
extern s8 gDebugGotoScene;
extern s8 D_8018EDFB;
extern s8 D_8018EDFC;
extern s32 gMenuTimingCounter;
extern s8 D_8018EE08;
extern s8 gCupSelection;
extern s8 gCupCourseSelection;
extern s8 D_8018EE0C;
extern struct_8018EE10_entry D_8018EE10[2];

#endif /* MENUS_H */
