#ifndef RENDER_COURSES_H
#define RENDER_COURSES_H

struct Unk0CAC {
    s32 unk0;
    u8 unk4;
    u8 unk5;
    u16 unk6;
};

void func_8029122C(struct UnkStruct_800DC5EC*, s32);
s32  func_80290C20(Camera*);
void func_80290CAC(uintptr_t);
void load_surface_map(uintptr_t, struct UnkStruct_800DC5EC*);
void func_80291198();
void func_802911C4();
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
void func_8029569C();
void func_80295A38(struct UnkStruct_800DC5EC*);
void func_80295BF8(s32);
void func_80295C6C();
void func_80295D50(s16, s16);
void func_80295D6C();
void func_80295D88();
void func_802966A0();
void func_802969F8();

extern Gfx *gDisplayListHead;
extern s16 gCurrentCourseId;
extern u32 gNextFreeMemoryAddress;
extern s32 gActiveScreenMode;

extern u16 sRenderedFramebuffer;
extern uintptr_t gSegmentTable[];

extern Player gPlayers[];

extern s32 D_8015F59C;
extern s32 D_8015F5A0;

extern s32 D_800DC5DC;
extern s32 D_800DC5E0;
extern s32 D_802B87C4;
extern s32 D_802B87C8;
extern s32 D_802B87CC;
extern s32 D_8015F5A4;
extern s32 gScreenModeSelection;
extern Gfx mario_raceway_dls[];
extern s32 D_801625EC;
extern s32 D_801625F0;
extern s32 D_801625F4;
extern Gfx choco_mountain_dls[];
extern s32 D_802B87BC;
extern Gfx bowsers_castle_dls[];
extern Gfx banshee_boardwalk_dls[];
extern Gfx D_0600B278[];
extern Gfx yoshi_valley_dls[];
extern u8 frappe_snowland_dls[];
extern Gfx koopa_troopa_beach_dls[];
extern Gfx royal_raceway_dls[];
extern Gfx luigi_raceway_dls[];
extern s32 D_801625EC;
extern s32 D_801625F0;
extern s32 D_801625F4;

extern Gfx D_06013FF8[];
extern Gfx D_06014060[];
extern Lights1 D_800DC610[];
extern Gfx moo_moo_farm_dls[];

extern Gfx toads_turnpike_dls[];

extern Lights1 D_800DC610[]; // Light data?
extern u8 kalimari_desert_dls[];
extern u8 sherbet_land_dls[];
extern Gfx wario_stadium_dls[];

extern Gfx D_06009228[];
extern Gfx D_060164B8[];
extern Gfx D_06019578[];
extern Gfx D_090001D0[];

extern Gfx dks_jungle_parkway_dls[];
extern Gfx D_060071B0[];
extern Gfx D_060076A0[];
extern Gfx D_06009148[];
extern Gfx D_06009348[];
extern Gfx D_06009AE8[];
extern Gfx D_0600B308[];
extern Gfx D_0600CA78[];
extern Gfx D_0600D8E8[];
extern Gfx D_0600FD40[];
extern Gfx D_06013C30[];
extern Gfx D_06014088[];
extern Gfx D_06016220[];
extern Gfx D_06018020[];
extern Gfx D_06018D68[];
extern Gfx D_06022E00[];
extern Gfx D_06023930[];
extern Gfx D_sherbet_land_06000000[];
extern u16 D_800DC518;
extern u16 D_8015F58A;

extern u16 D_8015F700;
extern u16 D_8015F702;
extern f32 D_8015F8E8;
extern f32 D_8015F8E4;

extern s16 D_8015F6EA;
extern s16 D_8015F6F2;
extern s16 D_8015F6EE;
extern u16 D_8015F588;
extern s16 D_8015F6F4;
extern s16 D_8015F6F6;
extern s16 D_8015F6F4;
extern s16 D_8015F6F6;
extern Gfx D_060072D0[];
extern Gfx D_060079A0[];
extern Gfx D_060093D8[];
extern Gfx D_06009650[];
extern Gfx D_06009C20[];
extern Gfx D_0600B458[];
extern Gfx D_0600CC38[];
extern Gfx D_0600DC28[];
extern Gfx D_0600FF28[];
extern Gfx D_06014338[];
extern Gfx D_060144B8[];
extern Gfx D_06016440[];
extern Gfx D_06016558[];
extern Gfx D_06018240[];
extern Gfx D_06018FD8[];
extern Gfx D_06023070[];
extern Gfx D_06023B68[];
extern Vec3f D_8015F590;
extern u16 D_800DC5BC;                                     /* unable to generate initializer */
extern s32 gGamestate;
extern s32 gModeSelection;
extern u16 gNumActors;
extern s32 D_8015F58C;
extern mk64_surface_map_ram *D_8015F580;
extern s32 gCCSelection;

#endif
