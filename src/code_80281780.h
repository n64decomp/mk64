#ifndef CODE_80281780_H
#define CODE_80281780_H

/* Function Prototypes */

void debug_switch_character_ceremony_cutscene(void);
s32 func_80281880(s32 arg0);
void func_802818BC(void);
void load_ceremony_cutscene(void);

extern void func_80093E60(void);

extern void func_802816B8(void);

extern void func_80295C6C(void);

extern void func_802A4D18(void);

extern s16 gCurrentCourseId;
extern u16 D_800DC5B4;

extern s32 gIsMirrorMode;
extern s32 gScreenModeSelection;
extern s32 gActiveScreenMode;
extern s32 gModeSelection;
extern u16 D_800DC5BC;
extern u16 D_800DC5C8;
extern struct UnkStruct_800DC5EC *D_800DC5EC;

extern s32 D_80287554;
extern f32 D_801647A4;
extern f32 fovPlayers[];

extern s32 D_8015F5A0;

extern s32 D_00821D10;
extern s32 D_00825800;
extern s32 D_00831DC0;
extern s32 D_00835BA0;

extern struct Controller *gControllerOne;
extern s8 gCharacterSelections[];
extern u16 gEnableDebugMode;

extern u8 defaultCharacterIds[];
extern s8 gGPOverallRanks[8];
extern s8 D_8018EDF3;

extern u8 *_data_821D10SegmentRomStart;
extern u8 *_data_825800SegmentRomStart;
extern s32 _course_banshee_boardwalk_dl_mio0SegmentRomStart;
extern s32 _course_yoshi_valley_dl_mio0SegmentRomStart;

#endif // CODE_80281780_H
