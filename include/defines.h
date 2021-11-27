#ifndef DEFINES_H
#define DEFINES_H

/**
 * Racing terms:
 * Staging means aligning a racecar to the starting line.
 * Start sequence means waiting for the light to turn green.
 */

#define PLAYER_INACTIVE             0         // 0x0000
#define PLAYER_EXISTS               (1 << 15) // 0x8000
#define PLAYER_CINEMATIC_MODE       (1 << 11) // 0x0800
#define PLAYER_STAGING              (1 <<  9) // 0x0200
#define PLAYER_START_SEQUENCE       (1 << 13) // 0x2000
#define PLAYER_CPU                  (1 << 12) // 0x1000
#define PLAYER_HUMAN                (1 << 14) // 0x4000
#define PLAYER_INVISIBLE_OR_BOMB    (1 <<  8) // 0x0100
// unused?
#define PLAYER_UNKNOWN              (1 << 10) // 0x0400

// Compiles to -0x1000 in diff.py
#define PLAYER_HUMAN_AND_CPU PLAYER_EXISTS | PLAYER_HUMAN | PLAYER_CPU | PLAYER_START_SEQUENCE

/**
 * Options for gModeSelection
**/
#define GRAND_PRIX  0
#define TIME_TRIALS 1
#define VERSUS      2
#define BATTLE      3

/**
 * Options for gCCSelection
 * CC stands for cubic-centimetres.
 * It measures engine displacement composed from
 * cylinder volume.
 * Generally, the main determiner of horsepower output.
 */

#define CC_50       0
#define CC_100      1
#define CC_150      2
#define CC_EXTRA    3
#define CC_BATTLE   4

/**
 * Options for gCupSelection
 * There is a "cup" for battle mode, probably so that
 * the battle courses could be displayed in the same
 * way race courses are.
**/
#define MUSHROOM_CUP 0
#define FLOWER_CUP   1
#define STAR_CUP     2
#define SPECIAL_CUP  3
#define BATTLE_CUP   4

/**
 * Character IDs
 * Note that these are not the same as the values
 * found in gCharacterSelections as those are more
 * akin to indexes than IDs
**/
#define MARIO  0
#define LUIGI  1
#define YOSHI  2
#define TOAD   3
#define DK     4
#define WARIO  5
#define PEACH  6
#define BOWSER 7

#endif // DEFINES_H
