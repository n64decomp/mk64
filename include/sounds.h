#ifndef SOUNDS_H
#define SOUNDS_H

// todo: format like sm64 sounds.h
// The sound cue bit fields can be split up into its basic pieces and put back together.


/* Intro */
#define SOUND_INTRO_LOGO 0x49018008
// Welcome to Mario Kart. Used in intro and credits.
#define SOUND_INTRO_WELCOME 0x49009009
#define SOUND_INTRO_ENTER_MENU 0x4900801A

/* Menus */
#define SOUND_MENU_OK_CLICKED 0x49008016

#define SOUND_MENU_CURSOR_MOVE 0x49008000
#define SOUND_MENU_GO_BACK 0x49008002
// Used elsewhere, seems same as above sound.
#define SOUND_ACTION_GO_BACK_2 0x49008005

#define SOUND_ACTION_UNKNOWN_CONFIRMATION 0x49008006

#define SOUND_MENU_SELECT 0x49008001

// Mario Grand Prix
#define SOUND_MENU_GP 0x4900900A
// Versus
#define SOUND_MENU_VERSUS 0x4900900C
// Time Trials
#define SOUND_MENU_TIME_TRIALS 0x4900900B
// Battle
#define SOUND_MENU_BATTLE 0x4900900D
// Select a level (Select a CC)
#define SOUND_MENU_SELECT_LEVEL 0x4900900E
// OK?
#define SOUND_MENU_OK 0x4900900F

// Select your player
#define SOUND_MENU_SELECT_PLAYER 0x49009012

// Select map
#define SOUND_MENU_SELECT_MAP 0x49009013

// Plays in option if no controller pak.
#define SOUND_MENU_FILE_NOT_FOUND 0x4900FF07

// Option
#define SOUND_MENU_OPTION 0x49009010
// Data
#define SOUND_MENU_DATA 0x49009011

// On delete course record?
#define SOUND_MENU_EXPLOSION 0x4900801D

#define SOUND_MENU_STEREO 0x49008024
#define SOUND_MENU_HEADPHONES 0x49008025
#define SOUND_MENU_MONO 0x49008029


/* Staging */
// Red and orange staging lights that Lakitu holds.
#define SOUND_ACTION_COUNTDOWN_LIGHT 0x49008003
#define SOUND_ACTION_GREEN_LIGHT 0x49008004
// Activates when light turns green.
#define SOUND_ACTION_REV_ENGINE 0x49008018
#define SOUND_ACTION_REV_ENGINE_2 0x49008019

/* Racing */

// Volume Mode and unknown
#define SOUND_ACTION_PING 0x4900801C

#define SOUND_ACTION_TYRE_SQUEAL 0x100F908

// Falling rock and bomb sound.
#define SOUND_ACTION_EXPLOSION 0x19009005

#define SOUND_ACTION_EXPLOSION_2 0x1900F00C

/* Items */
// There's likely more of these but they are in func arguments.
// Did not rename in-case unrelated.
#define SOUND_ITEM_STAR 0x31029008
#define SOUND_ITEM_THUNDERBOLT 0x5101C00C


/* Score Screen */
// Coin pickup sound (perfect fourth; B to E)
#define SOUND_ACTION_COUNT_SCORE 0x49008017
#define SOUND_ACTION_NEXT_COURSE 0x49008015
// Same sound as ENTER_MENU
#define SOUND_ACTION_CONTINUE_UNKNOWN 0x4900801B


/* Ceremony */
// Congratulation
#define SOUND_CEREMONY_CONGRATULATION 0x49009014
#define SOUND_CEREMONY_BALLOON_POP 0x4900801E
#define SOUND_CEREMONY_FISH 0x4900801F
#define SOUND_CEREMONY_FISH_2 0x49008020
#define SOUND_CEREMONY_SHOOT_TROPHY 0x49008021
#define SOUND_CEREMONY_PODIUM 0x49008022

// The sound of the trophy. Plays in the background
#define SOUND_CEREMONY_TROPHY 0x49008023

/* Credits */
// Hey, you're very good. See you next time!
#define SOUND_CREDITS_FAREWELL 0x49008026





#endif // SOUNDS_H
