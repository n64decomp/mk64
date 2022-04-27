#ifndef CODE_80281780_H
#define CODE_80281780_H

// variables found in code_80281780.c; not necessarily ones that belong there
extern void func_802A4D18();
extern void func_802A74BC();
extern void load_course();
extern u32 set_segment_base_addr();
extern int func_802AA88C();
extern void func_802AF5AC();
extern void func_80295C6C();
extern void func_80281780();
extern void func_802818BC();
extern void func_8003D080();
extern void func_8006E9C0();
extern void func_8001C05C();
extern void func_80280FB0();
extern void func_802816B8();
extern void func_80093E60();
extern void *gHeapEndPtr;

extern s16 gCurrentCourseId;
extern u16 D_800DC5B4;

extern s32 gIsMirrorMode;
extern s32 gScreenModeSelection;
extern s32 gActiveScreenMode;
extern s32 gModeSelection;
extern u16 D_800DC5BC;
extern u16 D_800DC5C8;
extern struct UnkStruct_800DC5EC *D_800DC5EC;

extern s32 gMenuSelectionFromEndingSequence; //D_80287550;
extern s32 D_80287554;
extern f32 D_801647A4;
extern f32 D_80150130[];

extern s32 gPrevLoadedAddress;
extern s32 D_8015F734;

extern s32 D_8015F730;

extern f32 D_8015F8E4;
extern s16 D_8015F6EA;
extern s16 D_8015F6EE;
extern s16 D_8015F6F2;
extern u16 D_8015F6E8;
extern u16 D_8015F6EC; // s16 or u16?
extern u16 D_8015F6F0;
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

#endif
