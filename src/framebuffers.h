#ifndef FRAMEBUFFERS_H
#define FRAMEBUFFERS_H

#include <PR/ultratypes.h>
#include "config.h"
#include "common_structs.h"

/*
 * This type could reasonably be called decodedTexture or similar
 * These are textures that have been passed through mio0decode
 *
 * According to http://ultra64.ca/files/documentation/online-manuals/man/app/te/us/tmf.html
 * This is technically an array of u32's, but each u32 contains 8/4 pixels depending
 * on pixel depth of the texure (4/8 bits respectively) so representing it as u8's should be fine
 */
typedef struct {
    u8 pixel_index_array[0x1000];
} struct_D_802BFB80; // size = 0x1000

/*
 * Texture prior to be being decoded via mio0decode
 * Likely over-sized due to encoded textures having variable size
 */
typedef struct {
    char unk_00[0x920];
} struct_D_802DFB80; // size = 0x920

typedef struct {
    u16 red:5;
    u16 green:5;
    u16 blue:5;
    u16 alpha:1;
} RGBA5551;

/*
 * This type could reasonably be called activeCharacterPalette or similar
 *
 * Appears to be a combination of 2 different palettes:
 *   kart_palette appears to be the palette for all non-wheel elements of the kart (including the driver).
 *   wheel_palette then is the palette for the wheels
 *
 * kart_palette does not appear to be used 100% of the time, more testing is needed to figure out what's going on
 * wheel_palette changes as you drive around while kart_palette is constant
 *
 * The term "palette" appears to be synonymous with "texture lookup table (TLUT)",
 * at least as far as the N64 texture engine is concerned
 * According to http://ultra64.ca/files/documentation/online-manuals/man/app/te/us/tlf.html
 * palettes are techinally arrays of u32's, but I feel using a more meaningful data type
 * helps with understanding
 */
typedef struct {
    /* 0x000 */ RGBA5551  kart_palette[0xC0];
    /* 0x180 */ RGBA5551 wheel_palette[0x40];
} struct_D_802F1F80; // size = 0x200

extern u16 gRandomSeed16;
extern u8 randomSeedPadding[216];
extern u8 frameBufferPadding[22544];
extern struct_D_802BFB80 D_802BFB80[][2][8];
extern struct_D_802DFB80 D_802DFB80[][2][8];

/**
 * SO
 * It would be nice to define D_802F1F80 as ```struct_D_802F1F80 D_802F1F80[2][4][8]```.
 * But due to some register allocation issues in func_80027A20 we have to define it in a different manner
 **/
extern u32 D_802F1F80[][4][1024];

extern u16 gZBuffer[SCREEN_WIDTH * SCREEN_HEIGHT];

// NOTE: This UB fix from sm64 implemented in mk64,
// in-case it has the same issue.
// untested. Unconfirmed if this applies to mk64.

// level_script.c assumes that the frame buffers are adjacent, while game.c's
// -g codegen implies that they are separate variables. This is impossible to
// reconcile without undefined behavior. Avoid that when possible.
#ifdef AVOID_UB
extern u16 gFramebuffers[3][SCREEN_WIDTH * SCREEN_HEIGHT];
#define gFramebuffer0 gFramebuffers[0]
#define gFramebuffer1 gFramebuffers[1]
#define gFramebuffer2 gFramebuffers[2]
#else
extern u16 gFramebuffer0[SCREEN_WIDTH * SCREEN_HEIGHT];
extern u16 gFramebuffer1[SCREEN_WIDTH * SCREEN_HEIGHT];
extern u16 gFramebuffer2[SCREEN_WIDTH * SCREEN_HEIGHT];
#endif

#endif // FRAMEBUFFERS_H
