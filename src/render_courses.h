#ifndef RENDER_COURSES_H
#define RENDER_COURSES_H

void func_8029122C(struct UnkStruct_800DC5EC*, s32);
s32  func_80290C20(Camera*);
void parse_course_displaylists(uintptr_t);
void load_surface_map(uintptr_t, struct UnkStruct_800DC5EC*);
void func_80291198(void);
void func_802911C4(void);
void render_mario_raceway(struct UnkStruct_800DC5EC*);
void render_choco_mountain(struct UnkStruct_800DC5EC*);
void render_bowsers_castle(struct UnkStruct_800DC5EC*);
void render_banshee_boardwalk(struct UnkStruct_800DC5EC*);
void render_yoshi_valley(struct UnkStruct_800DC5EC*);
void render_frappe_snowland(struct UnkStruct_800DC5EC*);
void render_koopa_troopa_beach(struct UnkStruct_800DC5EC*);
void render_royal_raceway(struct UnkStruct_800DC5EC*);
void render_luigi_raceway(struct UnkStruct_800DC5EC*);
void render_toads_turnpike(struct UnkStruct_800DC5EC*);
void render_kalimari_desert(struct UnkStruct_800DC5EC*);
void render_sherbet_land(struct UnkStruct_800DC5EC*);
void render_rainbow_road(struct UnkStruct_800DC5EC*);
void render_wario_stadium(struct UnkStruct_800DC5EC*);
void render_block_fort(struct UnkStruct_800DC5EC*);
void render_skyscraper(struct UnkStruct_800DC5EC*);
void render_double_deck(struct UnkStruct_800DC5EC*);
void render_dks_jungle_parkway(struct UnkStruct_800DC5EC*);
void render_big_donut(struct UnkStruct_800DC5EC*);
void func_8029569C(void);
void func_80295A38(struct UnkStruct_800DC5EC*);
void func_80295BF8(s32);
void func_80295C6C(void);
void func_80295D50(s16, s16);
void func_80295D6C(void);
void func_80295D88(void);
void func_802966A0(void);
void func_802969F8(void);

extern Gfx *gDisplayListHead;
extern s16 gCurrentCourseId;
extern s32 gActiveScreenMode;

extern u16 sRenderedFramebuffer;
extern uintptr_t gSegmentTable[];

extern Player gPlayers[];

extern s32 D_8015F59C;

extern s32 D_800DC5DC;
extern s32 D_800DC5E0;
extern s32 D_802B87C4;
extern s32 D_802B87C8;
extern s32 D_802B87CC;
extern s32 gScreenModeSelection;
extern Gfx mario_raceway_dls[];
extern Gfx choco_mountain_dls[];
extern s32 D_802B87BC;
extern Gfx bowsers_castle_dls[];
extern Gfx banshee_boardwalk_dls[];
extern u8 frappe_snowland_dls[];
extern Gfx d_course_koopa_troopa_beach_dl_list1[];
extern Gfx royal_raceway_dls[];
extern Gfx luigi_raceway_dls[];

extern Gfx D_06013FF8[];
extern Gfx D_06014060[];
extern Lights1 D_800DC610[];
extern Gfx moo_moo_farm_dls[];

extern Gfx toads_turnpike_dls[];

extern Lights1 D_800DC610[]; // Light data?
extern u8 kalimari_desert_dls[];
extern u8 sherbet_land_dls[];
extern Gfx wario_stadium_dls[];

extern Gfx d_course_koopa_troopa_beach_dl_list2[];
extern Gfx D_090001D0[];

extern Gfx D_060071B0[];
extern Gfx D_060076A0[];
extern Gfx D_06009348[];
extern Gfx D_0600CA78[];
extern Gfx D_0600FD40[];
extern Gfx D_06014088[];
extern Gfx D_06018D68[];
extern Gfx D_06022E00[];
extern Gfx D_06023930[];
extern u16 D_800DC518;

extern Gfx D_060072D0[];
extern Gfx D_060079A0[];
extern Gfx D_06009650[];
extern Gfx D_0600CC38[];
extern Gfx D_0600FF28[];
extern Gfx D_060144B8[];
extern Gfx D_06018FD8[];
extern Gfx D_06023070[];
extern Gfx D_06023B68[];
extern u16 D_800DC5BC;                                     /* unable to generate initializer */
extern s32 gGamestate;
extern s32 gModeSelection;
extern u16 gNumActors;
extern s32 gCCSelection;

#endif
