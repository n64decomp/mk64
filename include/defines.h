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
#define NUM_CUPS     5

/**
 * Character IDs
 * Note that these are not the same as the values
 * found in gCharacterGridSelections as those are
 * ordered by table
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
 * Options for gMenuSelection
**/
#define OPTIONS_MENU 5
#define DATA_MENU 6
#define COURSE_DATA_MENU 7
#define LOGO_INTRO_MENU 8
#define CONTROLLER_PAK_MENU 9
#define START_MENU 10
#define MAIN_MENU 11
#define PLAYER_SELECT_MENU 12
#define COURSE_SELECT_MENU 13
#define RACING_DUPLICATE 14

/**
 * Options for gMenuSelectionFromQuit and gMenuSelectionFromEndingSequence
**/
#define START_MENU_FROM_QUIT 0
#define MAIN_MENU_FROM_QUIT 1
#define PLAYER_SELECT_MENU_FROM_QUIT 2
#define COURSE_SELECT_MENU_FROM_QUIT 3
#define RACING 4
#define ENDING_SEQUENCE 5
#define CREDITS_SEQUENCE 9

/**
 * Options for gMainMenuSelectionDepth
**/
#define BLANK_MAIN_MENU 0
#define OPTIONS_SELECTION 1
#define DATA_SELECTION 2
#define PLAYER_NUM_SELECTION 3
#define GAME_MODE_SELECTION 4
#define GAME_MODE_CC_OR_TIME_TRIALS_OPTIONS_SELECTION 5 // Selecting CC for GP and Versus. Selecting "Begin" or "Data" for Time Trials. Unused for Battle
#define CONFIRM_OK_SELECTION 6
#define CONFIRM_OK_SELECTION_FROM_BACK_OUT 7
#define TIME_TRAILS_DATA_SELECTION_FROM_BACK_OUT 8

/**
 * Options for gControllerPakMenuSelection
**/
#define CONTROLLER_PAK_MENU_SELECT_RECORD 1
#define CONTROLLER_PAK_MENU_END 2
#define CONTROLLER_PAK_MENU_ERASE 3
#define CONTROLLER_PAK_MENU_QUIT 4
#define CONTROLLER_PAK_MENU_TABLE_GAME_DATA 5
#define CONTROLLER_PAK_MENU_GO_TO_ERASING 6
#define CONTROLLER_PAK_MENU_ERASING 7
#define CONTROLLER_PAK_MENU_ERASE_ERROR_NOT_ERASED 8
#define CONTROLLER_PAK_MENU_ERASE_ERROR_NO_PAK 9
#define CONTROLLER_PAK_MENU_ERASE_ERROR_PAK_CHANGED 10

/**
 * Options for gDebugMenuSelection
 */
#define DEBUG_MENU_DISABLED 1
#define DEBUG_MENU_DEBUG_MODE 2
#define DEBUG_MENU_COURSE 3
#define DEBUG_MENU_SCREEN_MODE 4
#define DEBUG_MENU_PLAYER 5
#define DEBUG_MENU_SOUND_MODE 6
#define DEBUG_MENU_GIVE_ALL_GOLD_CUP 7
#define DEBUG_MENU_EXITED 64

/**
 * Options for gDebugGotoScene
 */
#define DEBUG_GOTO_RACING 0
#define DEBUG_GOTO_ENDING_SEQUENCE 1
#define DEBUG_GOTO_CREDITS_SEQUENCE_CC_50 2
#define DEBUG_GOTO_CREDITS_SEQUENCE_CC_EXTRA 3

/**
 * Options for gScreenModeSelection
 */
#define SCREEN_MODE_1P 0
#define SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL 1
#define SCREEN_MODE_2P_SPLITSCREEN_VERTICAL 2
#define SCREEN_MODE_3P_4P_SPLITSCREEN 3
#define NUM_SCREEN_MODES 4

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

#define CUP_COURSE_ONE      0
#define CUP_COURSE_TWO      1
#define CUP_COURSE_THREE    2
#define CUP_COURSE_FOUR     3
#define NUM_COURSES_PER_CUP 4

/**
 * Item IDs
**/
#define NO_ITEM             0
#define BANANA              1
#define BANANA_BUNCH        2
#define GREEN_SHELL         3
#define TRIPLE_GREEN_SHELL  4
#define RED_SHELL           5
#define TRIPLE_RED_SHELL    6
#define BLUE_SHELL          7
#define THUNDERBOLT         8
#define FAKE_ITEM_BOX       9
#define STARMAN             10
#define BOO                 11
#define MUSHROOM            12
#define DOUBLE_MUSHROOM     13
#define SUPER_MUSHROOM      14
#define GOLD_MUSHROOM       15

/**
 * Max representable time, 100 minutes measured in centiseconds
 */
#define MAX_TIME 0x927C0

#endif // DEFINES_H
