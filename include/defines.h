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

/**
 * Indexes for accessing Time Trial records
**/
#define TIME_TRIAL_3LAP_RECORD_1 0
#define TIME_TRIAL_3LAP_RECORD_2 1
#define TIME_TRIAL_3LAP_RECORD_3 2
#define TIME_TRIAL_3LAP_RECORD_4 3
#define TIME_TRIAL_3LAP_RECORD_5 4
#define TIME_TRIAL_1LAP_RECORD   5

/**
 * Text color options
 * The 2 cycling options cycle through Blue -> Green -> Red
 * Cycle 2 appears to be one step ahead of Cycle 1
 * Other values like 6 and 7 sort of work, they cause rapid
 * flashing between 2 colors, but also cause individual characters
 * to be cutoff on their right side
**/
#define TEXT_BLUE                   0
#define TEXT_GREEN                  1
#define TEXT_RED                    2
#define TEXT_YELLOW                 3
#define TEXT_BLUE_GREEN_RED_CYCLE_1 4
#define TEXT_BLUE_GREEN_RED_CYCLE_2 5


/**
 * Sound mode options
 * Option 2 appears to be unused, as such its probably not
 * a valid option
**/
#define SOUND_STEREO      0
#define SOUND_HEADPHONES  1
#define SOUND_UNUSED      2
#define SOUND_MONO        3
#define NUM_SOUND_MODES   4

/**
 * Title screen demo options
 * All demos use 100 CC
**/
#define DEMO_ONE   0 // Mario,                  Mario Raceway,   Grand Prix
#define DEMO_TWO   1 // Yoshi DK,               Choco Mountain,  Versus
#define DEMO_THREE 2 // Luigi,                  Kalamari Desert, Grand Prix
#define DEMO_FOUR  3 // Wario Yoshi Bowser,     Wario Stadium,   Versus
#define DEMO_FIVE  4 // Bowser,                 Bowser Castle,   Grand Prix
#define DEMO_SIX   5 // Mario Luigi Peach Toad, Sherbert Land,   Versus
#define NUM_DEMOS  6

#endif // DEFINES_H
