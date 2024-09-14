#ifndef ALL_COURSE_MODEL_H
#define ALL_COURSE_MODEL_H

#include "macros.h"
#include <common_structs.h>

/** WARNING!!!
 * This header file has the sizes of the vertex array's hard coded.
 * If those arrays ever have their sizes changed that MUST be reflected
 * in this file or problems will arise in other parts of the code
 **/

extern CourseVtx d_course_big_donut_vertex[0x48D];
extern CourseVtx d_course_block_fort_vertex[0x440];
extern CourseVtx d_course_double_deck_vertex[0x22B];
extern CourseVtx d_course_skyscraper_vertex[0x43E];
extern CourseVtx d_course_choco_mountain_vertex[0x15B8];
extern CourseVtx d_course_frappe_snowland_vertex[0x1599];
extern CourseVtx d_course_mario_raceway_vertex[0x167D];
extern CourseVtx d_course_toads_turnpike_vertex[0x18D7];
extern CourseVtx d_course_kalimari_desert_vertex[0x18F9];
extern CourseVtx d_course_koopa_troopa_beach_vertex[0x24A0];
extern CourseVtx d_course_luigi_raceway_vertex[0x1730];
extern CourseVtx d_course_moo_moo_farm_vertex[0x1F24];
extern CourseVtx d_course_banshee_boardwalk_vertex[0x1351];
extern CourseVtx d_course_dks_jungle_parkway_vertex[0x162F];
extern CourseVtx d_course_rainbow_road_vertex[0xC27];
extern CourseVtx d_course_yoshi_valley_vertex[0xE88];
extern CourseVtx d_course_bowsers_castle_vertex[0x2537];
extern CourseVtx d_course_royal_raceway_vertex[0x2072];
extern CourseVtx d_course_sherbet_land_vertex[0xA76];
extern CourseVtx d_course_wario_stadium_vertex[0x17B3];

#define d_course_big_donut_vertex_count ARRAY_COUNT(d_course_big_donut_vertex)
#define d_course_block_fort_vertex_count ARRAY_COUNT(d_course_block_fort_vertex)
#define d_course_double_deck_vertex_count ARRAY_COUNT(d_course_double_deck_vertex)
#define d_course_skyscraper_vertex_count ARRAY_COUNT(d_course_skyscraper_vertex)
#define d_course_choco_mountain_vertex_count ARRAY_COUNT(d_course_choco_mountain_vertex)
#define d_course_frappe_snowland_vertex_count ARRAY_COUNT(d_course_frappe_snowland_vertex)
#define d_course_mario_raceway_vertex_count ARRAY_COUNT(d_course_mario_raceway_vertex)
#define d_course_toads_turnpike_vertex_count ARRAY_COUNT(d_course_toads_turnpike_vertex)
#define d_course_kalimari_desert_vertex_count ARRAY_COUNT(d_course_kalimari_desert_vertex)
#define d_course_koopa_troopa_beach_vertex_count ARRAY_COUNT(d_course_koopa_troopa_beach_vertex)
#define d_course_luigi_raceway_vertex_count ARRAY_COUNT(d_course_luigi_raceway_vertex)
#define d_course_moo_moo_farm_vertex_count ARRAY_COUNT(d_course_moo_moo_farm_vertex)
#define d_course_banshee_boardwalk_vertex_count ARRAY_COUNT(d_course_banshee_boardwalk_vertex)
#define d_course_dks_jungle_parkway_vertex_count ARRAY_COUNT(d_course_dks_jungle_parkway_vertex)
#define d_course_rainbow_road_vertex_count ARRAY_COUNT(d_course_rainbow_road_vertex)
#define d_course_yoshi_valley_vertex_count ARRAY_COUNT(d_course_yoshi_valley_vertex)
#define d_course_bowsers_castle_vertex_count ARRAY_COUNT(d_course_bowsers_castle_vertex)
#define d_course_royal_raceway_vertex_count ARRAY_COUNT(d_course_royal_raceway_vertex)
#define d_course_sherbet_land_vertex_count ARRAY_COUNT(d_course_sherbet_land_vertex)
#define d_course_wario_stadium_vertex_count ARRAY_COUNT(d_course_wario_stadium_vertex)

#endif // ALL_COURSE_MODEL_H
