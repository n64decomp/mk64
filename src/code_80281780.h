#ifndef CODE_80281780_H
#define CODE_80281780_H

/* Function Prototypes */

void debug_switch_character_ceremony_cutscene(void);
s32 func_80281880(s32 arg0);
void func_802818BC(void);
void load_ceremony_cutscene(void);

extern u32 set_segment_base_addr();

extern void func_80093E60();

extern void func_802816B8();

extern void func_80295C6C();

extern void func_802A4D18();

extern s16 gCurrentCourseId;
extern u16 D_800DC5B4;

extern s32 gIsMirrorMode;
extern s32 gScreenModeSelection;
extern s32 gActiveScreenMode;
extern s32 gModeSelection;
extern u16 D_800DC5BC;
extern u16 D_800DC5C8;
extern struct UnkStruct_800DC5EC *D_800DC5EC;

extern u32 gMenuSelectionFromEndingSequence; //D_80287550;
extern s32 D_80287554;
extern f32 D_801647A4;
extern f32 D_80150130[];

extern s32 D_8015F734;

extern s32 D_8015F730;

extern f32 D_8015F8E4;
extern s16 D_8015F6EA;
extern s16 D_8015F6EE;
extern s16 D_8015F6F2;
extern s16 D_8015F6E8;
extern s16 D_8015F6EC; // s16 or u16?
extern s16 D_8015F6F0;
extern s32 D_8015F59C;
extern s32 D_8015F5A0;
extern s32 D_8015F58C;

extern s32 D_00821D10;
extern s32 D_00825800;
extern s32 D_00831DC0;
extern s32 D_00835BA0;

extern s32 D_801625F8;
extern f32 D_801625FC;

extern struct Controller *gControllerOne;
extern s8 gCharacterSelections[];
extern u16 gEnableDebugMode;

extern void *D_80284ED0;
extern s8 gGPOverallRanks[8];
extern s8 D_8018EDF3;

extern s32 _data_821D10SegmentRomStart;
extern s32 _data_825800SegmentRomStart;
extern s32 _course_banshee_boardwalk_dl_mio0SegmentRomStart;
extern s32 _course_yoshi_valley_dl_mio0SegmentRomStart;

#endif // CODE_80281780_H
