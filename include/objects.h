#ifndef OBJECTS_H
#define OBJECTS_H

#include "common_structs.h"

#define OBJECT_LIST_SIZE 0x226
#define SOME_OBJECT_INDEX_LIST_SIZE 32

typedef struct
{
    /* 0x00 */ f32 sizeScaling;
    /* 0x04 */ Vec3f pos;
    /* 0x10 */ Vec3f unk_010;
    /* 0x1C */ Vec3f unk_01C;
    /* 0x28 */ Vec3f unk_028;
    /* 0x34 */ f32 unk_034;
    /* 0x38 */ Vec3f unk_038;
    /* 0x44 */ f32 unk_044;
    /* 0x48 */ s32 unk_048;
    /* 0x4C */ s32 unk_04C;
    /* 0x50 */ s32 unk_050;
    /* 0x54 */ s32 unk_054;
    /* 0x58 */ s32 unk_058;
    /* 0x5C */ s32 unk_05C;
    /* 0x60 */ u8 *activeTLUT;
    /* 0x64 */ u8 *activeTexture;
    /**
     * "list" is something of a misnomer for the names here
     * they can be pointers to just 1 tlut/texture, but it is common for one or the other
     * to be a pointer to an array of tluts/textures.
    **/
    /* 0x68 */ u8 *tlutList; // I feel like this should actually be `u8 (*tlutList)[512]`, but that causes mismatches
    /* 0x6C */ u8 *textureList;
    /* 0x70 */ Gfx *unk_070;
    /* 0x74 */ Vtx *unk_074; // For at least 1 object type this is meant to be a Vtx*. See func_800555BC
    /* 0x78 */ s8  unk_078[0x04];
    /* 0x7C */ Vec4s *unk_07C;
    /* 0x80 */ Vec4s *unk_080; // unk_080[][4]?
    /* 0x84 */ s16 unk_084[0xA];
    /* 0x98 */ u16 unk_098;
    /* 0x9A */ u16 unk_09A;
    /* 0x9C */ s16 unk_09C;
    /* 0x9E */ s16 unk_09E;
    /* 0xA0 */ s16 unk_0A0;
    /* 0xA2 */ s16 unk_0A2;
    /* 0xA4 */ s16 unk_0A4;
    /* 0xA6 */ s16 unk_0A6; // Usually a state tracker
    /* 0xA8 */ s16 unk_0A8;
    /* 0xAA */ s16 unk_0AA;
    /* 0xAC */ s16 unk_0AC;
    /* 0xAE */ s16 unk_0AE;
    /* 0xB0 */ s16 unk_0B0;
    /* 0xB2 */ Vec3su unk_0B2; // rotation, I think
    /* 0xB8 */ Vec3su unk_0B8;
    /* 0xBE */ Vec3su unk_0BE;
    /* 0xC4 */ u16 unk_0C4;
    /* 0xC6 */ u16 unk_0C6;
    /* 0xC8 */ u16 unk_0C8;
    /* 0xCA */ s8  unk_0CA;
    /* 0xCB */ s8  unk_0CB;
    /* 0xCC */ s8  unk_0CC;
    /* 0xCD */ s8  unk_0CD;
    /* 0xCE */ s8  unk_0CE;
    /* 0xCF */ s8  unk_0CF;
    /* 0xD0 */ s8  unk_0D0;
    /* 0xD1 */ s8  unk_0D1;
    /* 0xD2 */ s8  unk_0D2;
    /* 0xD3 */ s8  unk_0D3;
    /* 0xD4 */ s8  unk_0D4;
    /* 0xD5 */ u8  unk_0D5;
    /* 0xD6 */ u8  unk_0D6;
    /* 0xD7 */ u8  unk_0D7;
    /* 0xD8 */ u8  unk_0D8;
    /* 0xD9 */ u8  textureWidth;
    /* 0xDA */ u8  textureHeight;
    /* 0xDB */ u8  unk_0DB;
    /* 0xDC */ u8  unk_0DC;
    /* 0xDD */ u8  unk_0DD;
    /* 0xDE */ s8  unk_0DE;
    /* 0xDF */ u8  unk_0DF;
} struct_80165C18_entry; // size = 0xE0

// This is the object list
extern struct_80165C18_entry D_80165C18[];

// This are other lists of indices in D_80165C18.
/**
 * Lakitu?
**/
extern s32 D_80183DB8[];

// Appears to be a list of object list indices for the Item Window part of the HUD
extern s32 gItemWindowObjectByPlayerId[];

// Used for loop bounds when accessing D_80183EA0
extern s16 D_80165750;
// These seem to be limits on different object types in Moo Moo Farm
// See func_80070780 in code_8006E9C0.c
extern s32 D_8018D1C8;
extern s32 D_8018D1D0;
extern s32 D_8018D1D8;
// Limit on some object type (ice chips?) in Sherbet Land
extern s32 D_8018D3C0;

extern Collision D_8018C0B0[];

/**
 * D_80183EA0, D_80183F28, D_8018BFA8, and D_8018C030 are all lists of indices in D_80165C18.
 * func_80070190 initializes them in such a way that the indicies in each list are not adjacent.
 * First D_80183EA0 gets an unused index, then D_80183F28, then D_8018BFA8, then D_8018C030, and then it loops.
 * 
 * The objects found at the indices in each list appears to be course dependent
 **/ 

#define NUM_CRABS 0xA
#define NUM_NEON_SIGNS 0xA

/**
 * Crabs in Koopa Troopa Beach
 * Hot air balloon in Luigi Raceway?
 * Neon signs in Rainbow Road?
 * Thwomps in Bower's Castle?
 * Penguins in Sherbet Land?
**/
extern s32 D_80183EA0[];
/**
 * Snowmen in Frappe Snowland
 * Chain Chomps in RaindbowRoad?
 * Trophy in award ceremony?
**/
extern s32 D_80183F28[];
extern s32 D_8018BFA8[];
extern s32 D_8018C030[];

#define D_8018C1B0_SIZE 0x80
#define NUM_MOLES 0x1F
#define NUM_SNOWFLAKES 0x32
/**
 * List of object list indices used for:
 *   Moles in Moo Moo Farm
 *   Snow flakes in Frappe Snowland
 *   Segments of the fire breath from the statues in Bowser's Castle
 *   Potentially other things
**/
extern s32 D_8018C1B0[];
// Next free spot in D_8018C1B0? Wraps back around to 0 if it gets bigger than D_8018C1B0_SIZE
extern s32 D_80183E38;
// Used for cycling through snowflakes in func_80078790
extern s16 D_8018D174;

#define D_8018C3F0_SIZE 0x80
/**
 * List of object list indices used for:
 *   Bats in Banshee's Boardwalk (but only 1 player mode?)
**/
extern s32 D_8018C3F0[];
// Next free spot in D_8018C3F0? Wraps back around to 0 if it gets bigger than D_8018C3F0_SIZE
extern s32 D_80183E4C;
// Controls number of come object type placed into D_8018C3F0 on Frappe Snowland. So, maybe snowmen/snowflakes?
extern s32 D_8018D3BC;

#define D_8018C630_SIZE 0x80
extern s32 D_8018C630[];
// Next free spot in D_8018C630?
extern s32 D_80183E5C;
extern s16 D_80165730;
// Tracking a count of some object type, don't know what object type yet
extern s16 D_80165738;

#define D_8018C870_SIZE 0x40
/**
 * List of object list indices. Used both for the fires in the DK Jungle cave
 * and, seemingly for the trail that shells leave behind them.
 * I think they're using the same texture, which would explain the dual use
**/
extern s32 D_8018C870[];
// Next free spot in D_8018C870? Wraps back around to 0 if it gets bigger than D_8018C870_SIZE
extern s32 D_80183E6C;

// Maximum number of leaves that can be falling?
#define D_8018C970_SIZE 0x40
// Number of leaves to spawn each bonk?
#define D_8018C970_SPAWN_SIZE 0x14
// Seemingly a list of object list indices used for the leaves that sometimes fall
// trees when you bonk into them
extern s32 D_8018C970[];
// Next free spot in D_8018C970? Wraps back around to 0 if it gets bigger than D_8018C970_SIZE
extern s32 D_80183E7C;

#define D_8018CC80_SIZE 0x64
// List of object list indices used by the clouds and stars in some stages
// Also used for snowflakes like D_8018C1B0? Not sure what's up with that
extern s32 D_8018CC80[];
// Number of used spots in D_8018CC80?
extern s32 D_8018D1F0;
// Next free spot in D_8018CC80?
extern s32 D_8018D1F8;
// Something related to the display of the clouds/stars?
extern s8 D_8018D230;
// Some sort of limiter on how many of some object type can spawn
extern s32 D_8018D3C4;

#endif
