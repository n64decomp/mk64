#ifndef RENDER_COURSES_H
#define RENDER_COURSES_H

#include "code_800029B0.h"

void func_8029122C(struct ScreenContext*, s32);
s32 func_80290C20(Camera*);
void parse_course_displaylists(uintptr_t);
void render_course_segments(uintptr_t, struct ScreenContext*);
void func_80291198(void);
void func_802911C4(void);
void render_mario_raceway(struct ScreenContext*);
void render_choco_mountain(struct ScreenContext*);
void render_bowsers_castle(struct ScreenContext*);
void render_banshee_boardwalk(struct ScreenContext*);
void render_yoshi_valley(struct ScreenContext*);
void render_frappe_snowland(struct ScreenContext*);
void render_koopa_troopa_beach(struct ScreenContext*);
void render_royal_raceway(struct ScreenContext*);
void render_luigi_raceway(struct ScreenContext*);
void render_toads_turnpike(struct ScreenContext*);
void render_kalimari_desert(struct ScreenContext*);
void render_sherbet_land(struct ScreenContext*);
void render_rainbow_road(struct ScreenContext*);
void render_wario_stadium(struct ScreenContext*);
void render_block_fort(struct ScreenContext*);
void render_skyscraper(struct ScreenContext*);
void render_double_deck(struct ScreenContext*);
void render_dks_jungle_parkway(struct ScreenContext*);
void render_big_donut(struct ScreenContext*);
void render_course_credits(void);
void render_course(struct ScreenContext*);
void func_80295BF8(s32);
void func_80295C6C(void);
void func_80295D50(s16, s16);
void func_80295D6C(void);
void course_generate_collision_mesh(void);
void course_update_water(void);
void func_802969F8(void);

extern s32 D_8015F59C;

extern s32 D_802B87C4;
extern s32 D_802B87C8;
extern s32 D_802B87CC;
extern s32 D_802B87BC;

extern Lights1 D_800DC610[];

extern Lights1 D_800DC610[]; // Light data?

extern u16 gNumCollisionTriangles;

#endif
