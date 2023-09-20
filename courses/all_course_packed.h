#ifndef ALL_COURSE_PACKED_H
#define ALL_COURSE_PACKED_H

/** WARNING!!!
 * Each course #defines a token that looks like `d_course_<course_name_here>_packed_end`.
 * These macros only work if the the last Gfx array in each packed.inc.c file has its length hardcoded
 * in the accompanying header file. If that array is resized or moved the #defines will become
 * incorrect
 **/

#include "courses/big_donut/displaylists.inc.h"
#include "courses/block_fort/displaylists.inc.h"
#include "courses/double_deck/displaylists.inc.h"
#include "courses/skyscraper/displaylists.inc.h"
#include "courses/choco_mountain/displaylists.inc.h"
#include "courses/frappe_snowland/displaylists.inc.h"
#include "courses/mario_raceway/displaylists.inc.h"
#include "courses/toads_turnpike/displaylists.inc.h"
#include "courses/kalimari_desert/displaylists.inc.h"
#include "courses/koopa_troopa_beach/displaylists.inc.h"
#include "courses/luigi_raceway/displaylists.inc.h"
#include "courses/moo_moo_farm/displaylists.inc.h"
#include "courses/banshee_boardwalk/displaylists.inc.h"
#include "courses/dks_jungle_parkway/displaylists.inc.h"
#include "courses/rainbow_road/displaylists.inc.h"
#include "courses/yoshi_valley/displaylists.inc.h"
#include "courses/bowsers_castle/displaylists.inc.h"
#include "courses/royal_raceway/displaylists.inc.h"
#include "courses/sherbet_land/displaylists.inc.h"
#include "courses/wario_stadium/displaylists.inc.h"

#endif // ALL_COURSE_PACKED_H
