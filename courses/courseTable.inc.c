#include <ultra64.h>
#include <macros.h>
#include "types.h"

/*
#include "courses/mushroom_cup/luigi_raceway/model.inc.c"
#include "courses/mushroom_cup/moo_moo_farm/model.inc.c"
#include "courses/mushroom_cup/koopa_beach/model.inc.c"
#include "courses/mushroom_cup/kalimari_desert/model.inc.c"

#include "courses/flower_cup/toads_turnpike/model.inc.c"
#include "courses/flower_cup/frappe_snowland/model.inc.c"
#include "courses/flower_cup/choco_mountain/model.inc.c"
#include "courses/flower_cup/mario_raceway/model.inc.c"

#include "courses/star_cup/wario_stadium/model.inc.c"
#include "courses/star_cup/sherbet_land/model.inc.c"
#include "courses/star_cup/royal_raceway/model.inc.c"
#include "courses/star_cup/bowsers_castle/model.inc.c"

#include "courses/special_cup/dks_jungle_parkway/model.inc.c"
#include "courses/special_cup/yoshi_valley/model.inc.c"
#include "courses/special_cup/banshee_boardwalk/model.inc.c"
#include "courses/special_cup/rainbow_road/model.inc.c"

#include "courses/battle/block_fort/model.inc.c"
#include "courses/battle/big_donut/model.inc.c"
#include "courses/battle/double_deck/model.inc.c"
#include "courses/battle/skyscraper/model.inc.c"
*/


extern u32 _course_mario_raceway_dl_mio0SegmentRomStart[];
extern u32 _course_mario_raceway_dl_mio0SegmentRomEnd[];
extern u32 _mario_raceway_vertexSegmentRomStart[];
extern u32 _mario_raceway_vertexSegmentRomEnd[];
extern u32 _course_mario_raceway_offsetsSegmentRomStart[];
extern u32 _course_mario_raceway_offsetsSegmentRomEnd[];
extern u32 d_course_mario_raceway_packed[];
extern u32 mario_raceway_textures[];

extern u32 _course_choco_mountain_dl_mio0SegmentRomStart[];
extern u32 _course_choco_mountain_dl_mio0SegmentRomEnd[];
extern u32 _choco_mountain_vertexSegmentRomStart[];
extern u32 _choco_mountain_vertexSegmentRomEnd[];
extern u32 _course_choco_mountain_offsetsSegmentRomStart[];
extern u32 _course_choco_mountain_offsetsSegmentRomEnd[];
extern u32 d_course_choco_mountain_packed[];
extern u32 choco_mountain_textures[];

extern u32 _course_bowsers_castle_dl_mio0SegmentRomStart[];
extern u32 _course_bowsers_castle_dl_mio0SegmentRomEnd[];
extern u32 _bowsers_castle_vertexSegmentRomStart[];
extern u32 _bowsers_castle_vertexSegmentRomEnd[];
extern u32 _course_bowsers_castle_offsetsSegmentRomStart[];
extern u32 _course_bowsers_castle_offsetsSegmentRomEnd[];
extern u32 d_course_bowsers_castle_packed[];
extern u32 bowsers_castle_textures[];

extern u32 _course_banshee_boardwalk_dl_mio0SegmentRomStart[];
extern u32 _course_banshee_boardwalk_dl_mio0SegmentRomEnd[];
extern u32 _banshee_boardwalk_vertexSegmentRomStart[];
extern u32 _banshee_boardwalk_vertexSegmentRomEnd[];
extern u32 _course_banshee_boardwalk_offsetsSegmentRomStart[];
extern u32 _course_banshee_boardwalk_offsetsSegmentRomEnd[];
extern u32 d_course_banshee_boardwalk_packed[];
extern u32 banshee_boardwalk_textures[];

extern u32 _course_yoshi_valley_dl_mio0SegmentRomStart[];
extern u32 _course_yoshi_valley_dl_mio0SegmentRomEnd[];
extern u32 _yoshi_valley_vertexSegmentRomStart[];
extern u32 _yoshi_valley_vertexSegmentRomEnd[];
extern u32 _course_yoshi_valley_offsetsSegmentRomStart[];
extern u32 _course_yoshi_valley_offsetsSegmentRomEnd[];
extern u32 d_course_yoshi_valley_packed[];
extern u32 yoshi_valley_textures[];

extern u32 _course_frappe_snowland_dl_mio0SegmentRomStart[];
extern u32 _course_frappe_snowland_dl_mio0SegmentRomEnd[];
extern u32 _frappe_snowland_vertexSegmentRomStart[];
extern u32 _frappe_snowland_vertexSegmentRomEnd[];
extern u32 _course_frappe_snowland_offsetsSegmentRomStart[];
extern u32 _course_frappe_snowland_offsetsSegmentRomEnd[];
extern u32 d_course_frappe_snowland_packed[];
extern u32 frappe_snowland_textures[];

extern u32 _course_koopa_troopa_beach_dl_mio0SegmentRomStart[];
extern u32 _course_koopa_troopa_beach_dl_mio0SegmentRomEnd[];
extern u32 _koopa_troopa_beach_vertexSegmentRomStart[];
extern u32 _koopa_troopa_beach_vertexSegmentRomEnd[];
extern u32 _course_koopa_troopa_beach_offsetsSegmentRomStart[];
extern u32 _course_koopa_troopa_beach_offsetsSegmentRomEnd[];
extern u32 d_course_koopa_troopa_beach_packed[];
extern u32 koopa_troopa_beach_textures[];

extern u32 _course_royal_raceway_dl_mio0SegmentRomStart[];
extern u32 _course_royal_raceway_dl_mio0SegmentRomEnd[];
extern u32 _royal_raceway_vertexSegmentRomStart[];
extern u32 _royal_raceway_vertexSegmentRomEnd[];
extern u32 _course_royal_raceway_offsetsSegmentRomStart[];
extern u32 _course_royal_raceway_offsetsSegmentRomEnd[];
extern u32 d_course_royal_raceway_packed[];
extern u32 royal_raceway_textures[];

extern u32 _course_luigi_raceway_dl_mio0SegmentRomStart[];
extern u32 _course_luigi_raceway_dl_mio0SegmentRomEnd[];
extern u32 _luigi_raceway_vertexSegmentRomStart[];
extern u32 _luigi_raceway_vertexSegmentRomEnd[];
extern u32 _course_luigi_raceway_offsetsSegmentRomStart[];
extern u32 _course_luigi_raceway_offsetsSegmentRomEnd[];
extern u32 d_course_luigi_raceway_packed[];
extern u32 luigi_raceway_textures[];

extern u32 _course_moo_moo_farm_dl_mio0SegmentRomStart[];
extern u32 _course_moo_moo_farm_dl_mio0SegmentRomEnd[];
extern u32 _moo_moo_farm_vertexSegmentRomStart[];
extern u32 _moo_moo_farm_vertexSegmentRomEnd[];
extern u32 _course_moo_moo_farm_offsetsSegmentRomStart[];
extern u32 _course_moo_moo_farm_offsetsSegmentRomEnd[];
extern u32 d_course_moo_moo_farm_packed[];
extern u32 moo_moo_farm_textures[];

extern u32 _course_toads_turnpike_dl_mio0SegmentRomStart[];
extern u32 _course_toads_turnpike_dl_mio0SegmentRomEnd[];
extern u32 _toads_turnpike_vertexSegmentRomStart[];
extern u32 _toads_turnpike_vertexSegmentRomEnd[];
extern u32 _course_toads_turnpike_offsetsSegmentRomStart[];
extern u32 _course_toads_turnpike_offsetsSegmentRomEnd[];
extern u32 d_course_toads_turnpike_packed[];
extern u32 toads_turnpike_textures[];

extern u32 _course_kalimari_desert_dl_mio0SegmentRomStart[];
extern u32 _course_kalimari_desert_dl_mio0SegmentRomEnd[];
extern u32 _kalimari_desert_vertexSegmentRomStart[];
extern u32 _kalimari_desert_vertexSegmentRomEnd[];
extern u32 _course_kalimari_desert_offsetsSegmentRomStart[];
extern u32 _course_kalimari_desert_offsetsSegmentRomEnd[];
extern u32 d_course_kalimari_desert_packed[];
extern u32 kalimari_desert_textures[];

extern u32 _course_sherbet_land_dl_mio0SegmentRomStart[];
extern u32 _course_sherbet_land_dl_mio0SegmentRomEnd[];
extern u32 _sherbet_land_vertexSegmentRomStart[];
extern u32 _sherbet_land_vertexSegmentRomEnd[];
extern u32 _course_sherbet_land_offsetsSegmentRomStart[];
extern u32 _course_sherbet_land_offsetsSegmentRomEnd[];
extern u32 d_course_sherbet_land_packed[];
extern u32 sherbet_land_textures[];

extern u32 _course_rainbow_road_dl_mio0SegmentRomStart[];
extern u32 _course_rainbow_road_dl_mio0SegmentRomEnd[];
extern u32 _rainbow_road_vertexSegmentRomStart[];
extern u32 _rainbow_road_vertexSegmentRomEnd[];
extern u32 _course_rainbow_road_offsetsSegmentRomStart[];
extern u32 _course_rainbow_road_offsetsSegmentRomEnd[];
extern u32 d_course_rainbow_road_packed[];
extern u32 rainbow_road_textures[];

extern u32 _course_wario_stadium_dl_mio0SegmentRomStart[];
extern u32 _course_wario_stadium_dl_mio0SegmentRomEnd[];
extern u32 _wario_stadium_vertexSegmentRomStart[];
extern u32 _wario_stadium_vertexSegmentRomEnd[];
extern u32 _course_wario_stadium_offsetsSegmentRomStart[];
extern u32 _course_wario_stadium_offsetsSegmentRomEnd[];
extern u32 d_course_wario_stadium_packed[];
extern u32 wario_stadium_textures[];

extern u32 _course_block_fort_dl_mio0SegmentRomStart[];
extern u32 _course_block_fort_dl_mio0SegmentRomEnd[];
extern u32 _block_fort_vertexSegmentRomStart[];
extern u32 _block_fort_vertexSegmentRomEnd[];
extern u32 _course_block_fort_offsetsSegmentRomStart[];
extern u32 _course_block_fort_offsetsSegmentRomEnd[];
extern u32 d_course_block_fort_packed[];
extern u32 block_fort_textures[];

extern u32 _course_skyscraper_dl_mio0SegmentRomStart[];
extern u32 _course_skyscraper_dl_mio0SegmentRomEnd[];
extern u32 _skyscraper_vertexSegmentRomStart[];
extern u32 _skyscraper_vertexSegmentRomEnd[];
extern u32 _course_skyscraper_offsetsSegmentRomStart[];
extern u32 _course_skyscraper_offsetsSegmentRomEnd[];
extern u32 d_course_skyscraper_packed[];
extern u32 skyscraper_textures[];

extern u32 _course_double_deck_dl_mio0SegmentRomStart[];
extern u32 _course_double_deck_dl_mio0SegmentRomEnd[];
extern u32 _double_deck_vertexSegmentRomStart[];
extern u32 _double_deck_vertexSegmentRomEnd[];
extern u32 _course_double_deck_offsetsSegmentRomStart[];
extern u32 _course_double_deck_offsetsSegmentRomEnd[];
extern u32 d_course_double_deck_packed[];
extern u32 double_deck_textures[];

extern u32 _course_dks_jungle_parkway_dl_mio0SegmentRomStart[];
extern u32 _course_dks_jungle_parkway_dl_mio0SegmentRomEnd[];
extern u32 _dks_jungle_parkway_vertexSegmentRomStart[];
extern u32 _dks_jungle_parkway_vertexSegmentRomEnd[];
extern u32 _course_dks_jungle_parkway_offsetsSegmentRomStart[];
extern u32 _course_dks_jungle_parkway_offsetsSegmentRomEnd[];
extern u32 d_course_dks_jungle_parkway_packed[];
extern u32 dks_jungle_parkway_textures[];

extern u32 _course_big_donut_dl_mio0SegmentRomStart[];
extern u32 _course_big_donut_dl_mio0SegmentRomEnd[];
extern u32 _big_donut_vertexSegmentRomStart[];
extern u32 _big_donut_vertexSegmentRomEnd[];
extern u32 _course_big_donut_offsetsSegmentRomStart[];
extern u32 _course_big_donut_offsetsSegmentRomEnd[];
extern u32 d_course_big_donut_packed[];
extern u32 big_donut_textures[];

/*
extern mk64_Vtx d_course_mario_raceway_vertex[];
extern mk64_Vtx d_course_choco_mountain_vertex[];
extern mk64_Vtx d_course_bowsers_castle_vertex[];
extern mk64_Vtx d_course_banshee_boardwalk_vertex[];
extern mk64_Vtx d_course_yoshi_valley_vertex[];
extern mk64_Vtx d_course_frappe_snowland_vertex[];
extern mk64_Vtx d_course_koopa_troopa_beach_vertex[];
extern mk64_Vtx d_course_royal_raceway_vertex[];
extern mk64_Vtx d_course_luigi_raceway_vertex[];
extern mk64_Vtx d_course_moo_moo_farm_vertex[];
extern mk64_Vtx d_course_toads_turnpike_vertex[];
extern mk64_Vtx d_course_kalimari_desert_vertex[];
extern mk64_Vtx d_course_sherbet_land_vertex[];
extern mk64_Vtx d_course_rainbow_road_vertex[];
extern mk64_Vtx d_course_wario_stadium_vertex[];
extern mk64_Vtx d_course_block_fort_vertex[];
extern mk64_Vtx d_course_skyscraper_vertex[];
extern mk64_Vtx d_course_double_deck_vertex[];
extern mk64_Vtx d_course_dks_jungle_parkway_vertex[];
extern mk64_Vtx d_course_big_donut_vertex[];
*/


// 0x008284D0, 0x0082B620, 0x0088FA10, 0x0089B510, 0x0088CD70, 0x0088D070, 0x0F000000, 0x0000167D, 0x0F0096F4, 0x00006930, 0x09000000, 0x00000000
struct courseTable gCourseTable[] = {{
	_course_mario_raceway_dl_mio0SegmentRomStart, _course_mario_raceway_dl_mio0SegmentRomEnd,
        _mario_raceway_vertexSegmentRomStart, _mario_raceway_vertexSegmentRomEnd,
        _course_mario_raceway_offsetsSegmentRomStart, _course_mario_raceway_offsetsSegmentRomEnd,
        d_course_mario_raceway_vertex, 0x0000167D,
        d_course_mario_raceway_packed, 0x00006930,
        mario_raceway_textures, (u16) 0, (u16) 0x0000,
}, {
	_course_choco_mountain_dl_mio0SegmentRomStart, _course_choco_mountain_dl_mio0SegmentRomEnd,
        _choco_mountain_vertexSegmentRomStart, _choco_mountain_vertexSegmentRomEnd,
        _course_choco_mountain_offsetsSegmentRomStart, _course_choco_mountain_offsetsSegmentRomEnd,
        d_course_choco_mountain_vertex, 0x000015B8,
        d_course_choco_mountain_packed, 0x00005AE8,
        choco_mountain_textures, 1, 0x0000,
}, {
	_course_bowsers_castle_dl_mio0SegmentRomStart, _course_bowsers_castle_dl_mio0SegmentRomEnd,
        _bowsers_castle_vertexSegmentRomStart, _bowsers_castle_vertexSegmentRomEnd,
        _course_bowsers_castle_offsetsSegmentRomStart, _course_bowsers_castle_offsetsSegmentRomEnd,
        d_course_bowsers_castle_vertex, 0x00002537,
        d_course_bowsers_castle_packed, 0x00009918,
        bowsers_castle_textures, 0, 0x0000,
}, {
	_course_banshee_boardwalk_dl_mio0SegmentRomStart, _course_banshee_boardwalk_dl_mio0SegmentRomEnd,
        _banshee_boardwalk_vertexSegmentRomStart, _banshee_boardwalk_vertexSegmentRomEnd,
        _course_banshee_boardwalk_offsetsSegmentRomStart, _course_banshee_boardwalk_offsetsSegmentRomEnd,
        d_course_banshee_boardwalk_vertex, 0x00001351,
        d_course_banshee_boardwalk_packed, 0x00007340,
        banshee_boardwalk_textures, 1, 0x0000,
}, {
	_course_yoshi_valley_dl_mio0SegmentRomStart, _course_yoshi_valley_dl_mio0SegmentRomEnd,
        _yoshi_valley_vertexSegmentRomStart, _yoshi_valley_vertexSegmentRomEnd,
        _course_yoshi_valley_offsetsSegmentRomStart, _course_yoshi_valley_offsetsSegmentRomEnd,
        d_course_yoshi_valley_vertex, 0x00000E88,
        d_course_yoshi_valley_packed, 0x00008158,
        yoshi_valley_textures, 0, 0x0000,
}, {
	_course_frappe_snowland_dl_mio0SegmentRomStart, _course_frappe_snowland_dl_mio0SegmentRomEnd,
        _frappe_snowland_vertexSegmentRomStart, _frappe_snowland_vertexSegmentRomEnd,
        _course_frappe_snowland_offsetsSegmentRomStart, _course_frappe_snowland_offsetsSegmentRomEnd,
        d_course_frappe_snowland_vertex, 0x00001599,
        d_course_frappe_snowland_packed, 0x00006648,
        frappe_snowland_textures, 0, 0x0000,
}, {
	_course_koopa_troopa_beach_dl_mio0SegmentRomStart, _course_koopa_troopa_beach_dl_mio0SegmentRomEnd,
        _koopa_troopa_beach_vertexSegmentRomStart, _koopa_troopa_beach_vertexSegmentRomEnd,
        _course_koopa_troopa_beach_offsetsSegmentRomStart, _course_koopa_troopa_beach_offsetsSegmentRomEnd,
        d_course_koopa_troopa_beach_vertex, 0x000024A0,
        d_course_koopa_troopa_beach_packed, 0x0000B2B8,
        koopa_troopa_beach_textures, 0, 0x0000,
}, {
	_course_royal_raceway_dl_mio0SegmentRomStart, _course_royal_raceway_dl_mio0SegmentRomEnd,
        _royal_raceway_vertexSegmentRomStart, _royal_raceway_vertexSegmentRomEnd,
        _course_royal_raceway_offsetsSegmentRomStart, _course_royal_raceway_offsetsSegmentRomEnd,
        d_course_royal_raceway_vertex, 0x00002072,
        d_course_royal_raceway_packed, 0x0000B128,
        royal_raceway_textures, 0, 0x0000,
}, {
	_course_luigi_raceway_dl_mio0SegmentRomStart, _course_luigi_raceway_dl_mio0SegmentRomEnd,
        _luigi_raceway_vertexSegmentRomStart, _luigi_raceway_vertexSegmentRomEnd,
        _course_luigi_raceway_offsetsSegmentRomStart, _course_luigi_raceway_offsetsSegmentRomEnd,
        d_course_luigi_raceway_vertex, 0x00001730,
        d_course_luigi_raceway_packed, 0x0000C738,
        luigi_raceway_textures, 0, 0x0000,
}, {
	_course_moo_moo_farm_dl_mio0SegmentRomStart, _course_moo_moo_farm_dl_mio0SegmentRomEnd,
        _moo_moo_farm_vertexSegmentRomStart, _moo_moo_farm_vertexSegmentRomEnd,
        _course_moo_moo_farm_offsetsSegmentRomStart, _course_moo_moo_farm_offsetsSegmentRomEnd,
        d_course_moo_moo_farm_vertex, 0x00001F24,
        d_course_moo_moo_farm_packed, 0x00006738,
        moo_moo_farm_textures, 0, 0x0000,
}, {
	_course_toads_turnpike_dl_mio0SegmentRomStart, _course_toads_turnpike_dl_mio0SegmentRomEnd,
        _toads_turnpike_vertexSegmentRomStart, _toads_turnpike_vertexSegmentRomEnd,
        _course_toads_turnpike_offsetsSegmentRomStart, _course_toads_turnpike_offsetsSegmentRomEnd,
        d_course_toads_turnpike_vertex, 0x000018D7,
        d_course_toads_turnpike_packed, 0x00006B10,
        toads_turnpike_textures, 0, 0x0000,
}, {
	_course_kalimari_desert_dl_mio0SegmentRomStart, _course_kalimari_desert_dl_mio0SegmentRomEnd,
        _kalimari_desert_vertexSegmentRomStart, _kalimari_desert_vertexSegmentRomEnd,
        _course_kalimari_desert_offsetsSegmentRomStart, _course_kalimari_desert_offsetsSegmentRomEnd,
        d_course_kalimari_desert_vertex, 0x000018F9,
        d_course_kalimari_desert_packed, 0x0000A678,
        kalimari_desert_textures, 0, 0x0000,
}, {
	_course_sherbet_land_dl_mio0SegmentRomStart, _course_sherbet_land_dl_mio0SegmentRomEnd,
        _sherbet_land_vertexSegmentRomStart, _sherbet_land_vertexSegmentRomEnd,
        _course_sherbet_land_offsetsSegmentRomStart, _course_sherbet_land_offsetsSegmentRomEnd,
        d_course_sherbet_land_vertex, 0x00000A76,
        d_course_sherbet_land_packed, 0x00003850,
        sherbet_land_textures, 0, 0x0000,
}, {
	_course_rainbow_road_dl_mio0SegmentRomStart, _course_rainbow_road_dl_mio0SegmentRomEnd,
        _rainbow_road_vertexSegmentRomStart, _rainbow_road_vertexSegmentRomEnd,
        _course_rainbow_road_offsetsSegmentRomStart, _course_rainbow_road_offsetsSegmentRomEnd,
        d_course_rainbow_road_vertex, 0x00000C27,
        d_course_rainbow_road_packed, 0x00002100,
        rainbow_road_textures, 0, 0x0000,
}, {
	_course_wario_stadium_dl_mio0SegmentRomStart, _course_wario_stadium_dl_mio0SegmentRomEnd,
        _wario_stadium_vertexSegmentRomStart, _wario_stadium_vertexSegmentRomEnd,
        _course_wario_stadium_offsetsSegmentRomStart, _course_wario_stadium_offsetsSegmentRomEnd,
        d_course_wario_stadium_vertex, 0x000017B3,
        d_course_wario_stadium_packed, 0x0000A4B8,
        wario_stadium_textures, 0, 0x0000,
}, {
	_course_block_fort_dl_mio0SegmentRomStart, _course_block_fort_dl_mio0SegmentRomEnd,
        _block_fort_vertexSegmentRomStart, _block_fort_vertexSegmentRomEnd,
        _course_block_fort_offsetsSegmentRomStart, _course_block_fort_offsetsSegmentRomEnd,
        d_course_block_fort_vertex, 0x00000440,
        d_course_block_fort_packed, 0x000015D0,
        block_fort_textures, 0, 0x0000,
}, {
	_course_skyscraper_dl_mio0SegmentRomStart, _course_skyscraper_dl_mio0SegmentRomEnd,
        _skyscraper_vertexSegmentRomStart, _skyscraper_vertexSegmentRomEnd,
        _course_skyscraper_offsetsSegmentRomStart, _course_skyscraper_offsetsSegmentRomEnd,
        d_course_skyscraper_vertex, 0x0000043E,
        d_course_skyscraper_packed, 0x00001118,
        skyscraper_textures, 0, 0x0000,
}, {
	_course_double_deck_dl_mio0SegmentRomStart, _course_double_deck_dl_mio0SegmentRomEnd,
        _double_deck_vertexSegmentRomStart, _double_deck_vertexSegmentRomEnd,
        _course_double_deck_offsetsSegmentRomStart, _course_double_deck_offsetsSegmentRomEnd,
        d_course_double_deck_vertex, 0x0000022B,
        d_course_double_deck_packed, 0x00000748,
        double_deck_textures, 0, 0x0000,
}, {
	_course_dks_jungle_parkway_dl_mio0SegmentRomStart, _course_dks_jungle_parkway_dl_mio0SegmentRomEnd,
        _dks_jungle_parkway_vertexSegmentRomStart, _dks_jungle_parkway_vertexSegmentRomEnd,
        _course_dks_jungle_parkway_offsetsSegmentRomStart, _course_dks_jungle_parkway_offsetsSegmentRomEnd,
        d_course_dks_jungle_parkway_vertex, 0x0000162F,
        d_course_dks_jungle_parkway_packed, 0x00009C20,
        dks_jungle_parkway_textures, 0, 0x0000,
}, {
	_course_big_donut_dl_mio0SegmentRomStart, _course_big_donut_dl_mio0SegmentRomEnd,
        _big_donut_vertexSegmentRomStart, _big_donut_vertexSegmentRomEnd,
        _course_big_donut_offsetsSegmentRomStart, _course_big_donut_offsetsSegmentRomEnd,
        d_course_big_donut_vertex, 0x0000048D,
        d_course_big_donut_packed, 0x00001078,
        big_donut_textures, 0, 0x0000,
}};

/*
mk_course mario_raceway,      0x0000167D, 0x00006930, 0
mk_course choco_mountain,     0x000015B8, 0x00005AE8, 1
mk_course bowsers_castle,     0x00002537, 0x00009918, 0
mk_course banshee_boardwalk,  0x00001351, 0x00007340, 1
mk_course yoshi_valley,       0x00000E88, 0x00008158, 0
mk_course frappe_snowland,    0x00001599, 0x00006648, 0
mk_course koopa_troopa_beach, 0x000024A0, 0x0000B2B8, 0
mk_course royal_raceway,      0x00002072, 0x0000B128, 0
mk_course luigi_raceway,      0x00001730, 0x0000C738, 0
mk_course moo_moo_farm,       0x00001F24, 0x00006738, 0
mk_course toads_turnpike,     0x000018D7, 0x00006B10, 0
mk_course kalimari_desert,    0x000018F9, 0x0000A678, 0
mk_course sherbet_land,       0x00000A76, 0x00003850, 0
mk_course rainbow_road,       0x00000C27, 0x00002100, 0
mk_course wario_stadium,      0x000017B3, 0x0000A4B8, 0
mk_course block_fort,         0x00000440, 0x000015D0, 0
mk_course skyscraper,         0x0000043E, 0x00001118, 0
mk_course double_deck,        0x0000022B, 0x00000748, 0
mk_course dks_jungle_parkway, 0x0000162F, 0x00009C20, 0
mk_course big_donut,          0x0000048D, 0x00001078, 0
*/

/*
# Course data table 122390 / 802B8D80
glabel gCourseTable
.word 0x008284D0, 0x0082B620, 0x0088FA10, 0x0089B510, 0x0088CD70, 0x0088D070, 0x0F000000, 0x0000167D, 0x0F0096F4, 0x00006930, 0x09000000, 0x00000000
.word 0x0082B620, 0x0082DF40, 0x0089B510, 0x008A7640, 0x0088D070, 0x0088D340, 0x0F000000, 0x000015B8, 0x0F00A0B4, 0x00005AE8, 0x09000000, 0x00010000
.word 0x0082DF40, 0x00831DC0, 0x008A7640, 0x008B9630, 0x0088D340, 0x0088D6C0, 0x0F000000, 0x00002537, 0x0F00E368, 0x00009918, 0x09000000, 0x00000000
.word 0x00831DC0, 0x00835BA0, 0x008B9630, 0x008C2510, 0x0088D6C0, 0x0088D9C0, 0x0F000000, 0x00001351, 0x0F0068E8, 0x00007340, 0x09000000, 0x00010000
.word 0x00835BA0, 0x0083F740, 0x008C2510, 0x008CC900, 0x0088D9C0, 0x0088DAB0, 0x0F000000, 0x00000E88, 0x0F007D90, 0x00008158, 0x09000000, 0x00000000
.word 0x0083F740, 0x00842E40, 0x008CC900, 0x008D8E50, 0x0088DAB0, 0x0088DB40, 0x0F000000, 0x00001599, 0x0F009D24, 0x00006648, 0x09000000, 0x00000000
.word 0x00842E40, 0x0084ABD0, 0x008D8E50, 0x008EC390, 0x0088DB40, 0x0088DC50, 0x0F000000, 0x000024A0, 0x0F00FD78, 0x0000B2B8, 0x09000000, 0x00000000
.word 0x0084ABD0, 0x0084E8E0, 0x008EC390, 0x008FE640, 0x0088DC50, 0x0088E120, 0x0F000000, 0x00002072, 0x0F00EC60, 0x0000B128, 0x09000000, 0x00000000
.word 0x0084E8E0, 0x00852E20, 0x008FE640, 0x0090B3E0, 0x0088E120, 0x0088E590, 0x0F000000, 0x00001730, 0x0F009800, 0x0000C738, 0x09000000, 0x00000000
.word 0x00852E20, 0x00857E80, 0x0090B3E0, 0x0091B980, 0x0088E590, 0x0088E8D0, 0x0F000000, 0x00001F24, 0x0F00DAEC, 0x00006738, 0x09000000, 0x00000000
.word 0x00857E80, 0x008666A0, 0x0091B980, 0x00928C70, 0x0088E8D0, 0x0088ECD0, 0x0F000000, 0x000018D7, 0x0F00A5D0, 0x00006B10, 0x09000000, 0x00000000
.word 0x008666A0, 0x0086ECF0, 0x00928C70, 0x00936FD0, 0x0088ECD0, 0x0088EFB0, 0x0F000000, 0x000018F9, 0x0F00B394, 0x0000A678, 0x09000000, 0x00000000
.word 0x0086ECF0, 0x00872A00, 0x00936FD0, 0x0093CC60, 0x0088EFB0, 0x0088F2A0, 0x0F000000, 0x00000A76, 0x0F0049F8, 0x00003850, 0x09000000, 0x00000000
.word 0x00872A00, 0x008804A0, 0x0093CC60, 0x009438C0, 0x0088F2A0, 0x0088F300, 0x0F000000, 0x00000C27, 0x0F005A5C, 0x00002100, 0x09000000, 0x00000000
.word 0x008804A0, 0x00885630, 0x009438C0, 0x00951780, 0x0088F300, 0x0088F600, 0x0F000000, 0x000017B3, 0x0F00A9CC, 0x0000A4B8, 0x09000000, 0x00000000
.word 0x00885630, 0x00885780, 0x00951780, 0x00953890, 0x0088F600, 0x0088F680, 0x0F000000, 0x00000440, 0x0F0018D8, 0x000015D0, 0x09000000, 0x00000000
.word 0x00885780, 0x008858A0, 0x00953890, 0x00955620, 0x0088F680, 0x0088F800, 0x0F000000, 0x0000043E, 0x0F001678, 0x00001118, 0x09000000, 0x00000000
.word 0x008858A0, 0x00885A10, 0x00955620, 0x00956670, 0x0088F800, 0x0088F830, 0x0F000000, 0x0000022B, 0x0F000CD4, 0x00000748, 0x09000000, 0x00000000
.word 0x00885A10, 0x0088CC50, 0x00956670, 0x00963EF0, 0x0088F830, 0x0088F9C0, 0x0F000000, 0x0000162F, 0x0F00A45C, 0x00009C20, 0x09000000, 0x00000000
.word 0x0088CC50, 0x0088CD70, 0x00963EF0, 0x00966260, 0x0088F9C0, 0x0088FA10, 0x0F000000, 0x0000048D, 0x0F001B84, 0x00001078, 0x09000000, 0x00000000
*/
