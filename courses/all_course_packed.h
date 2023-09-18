#ifndef ALL_COURSE_PACKED_H
#define ALL_COURSE_PACKED_H

/** WARNING!!!
 * Each course #defines a token that looks like `d_course_<course_name_here>_packed_end`.
 * These macros only work if the the last Gfx array in each packed.inc.c file has its length hardcoded
 * in the accompanying header file. If that array is resized or moved the #defines will become
 * incorrect
 **/

#include "courses/big_donut/packed.inc.h"
#include "courses/block_fort/packed.inc.h"
#include "courses/double_deck/packed.inc.h"
#include "courses/skyscraper/packed.inc.h"
#include "courses/choco_mountain/packed.inc.h"
#include "courses/frappe_snowland/packed.inc.h"
#include "courses/mario_raceway/packed.inc.h"
#include "courses/toads_turnpike/packed.inc.h"
#include "courses/kalimari_desert/packed.inc.h"
#include "courses/koopa_troopa_beach/packed.inc.h"
#include "courses/luigi_raceway/packed.inc.h"
#include "courses/moo_moo_farm/packed.inc.h"
#include "courses/banshee_boardwalk/packed.inc.h"
#include "courses/dks_jungle_parkway/packed.inc.h"
#include "courses/rainbow_road/packed.inc.h"
#include "courses/yoshi_valley/packed.inc.h"
#include "courses/bowsers_castle/packed.inc.h"
#include "courses/royal_raceway/packed.inc.h"
#include "courses/sherbet_land/packed.inc.h"
#include "courses/wario_stadium/packed.inc.h"

#endif
