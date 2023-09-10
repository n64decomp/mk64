#ifndef ALL_COURSE_PACKED_H
#define ALL_COURSE_PACKED_H

/** WARNING!!!
 * Each course #defines a token that looks like `d_course_<course_name_here>_packed_end`.
 * These macros only work if the the last Gfx array in each packed.inc.c file has its length hardcoded
 * in the accompanying header file. If that array is resized or moved the #defines will become
 * incorrect
 **/

#include "courses/battle/big_donut/packed.inc.h"
#include "courses/battle/block_fort/packed.inc.h"
#include "courses/battle/double_deck/packed.inc.h"
#include "courses/battle/skyscraper/packed.inc.h"
#include "courses/flower_cup/choco_mountain/packed.inc.h"
#include "courses/flower_cup/frappe_snowland/packed.inc.h"
#include "courses/flower_cup/mario_raceway/packed.inc.h"
#include "courses/flower_cup/toads_turnpike/packed.inc.h"
#include "courses/mushroom_cup/kalimari_desert/packed.inc.h"
#include "courses/mushroom_cup/koopa_troopa_beach/packed.inc.h"
#include "courses/mushroom_cup/luigi_raceway/packed.inc.h"
#include "courses/mushroom_cup/moo_moo_farm/packed.inc.h"
#include "courses/special_cup/banshee_boardwalk/packed.inc.h"
#include "courses/special_cup/dks_jungle_parkway/packed.inc.h"
#include "courses/special_cup/rainbow_road/packed.inc.h"
#include "courses/special_cup/yoshi_valley/packed.inc.h"
#include "courses/star_cup/bowsers_castle/packed.inc.h"
#include "courses/star_cup/royal_raceway/packed.inc.h"
#include "courses/star_cup/sherbet_land/packed.inc.h"
#include "courses/star_cup/wario_stadium/packed.inc.h"

#endif
