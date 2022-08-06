#ifndef FRAMEBUFFERS_H
#define FRAMEBUFFERS_H

#include <PR/ultratypes.h>
#include "config.h"
#include "common_structs.h"

typedef struct {
    char unk_00[0x1000];
} struct_D_802BFB80; // size = 0x1000

typedef struct {
    char unk_00[0x920];
} struct_D_802DFB80; // size = 0x920

typedef struct {
    char unk_00[0x200];
} struct_D_802F1F80; // size = 0x200

extern u16 gRandomSeed16;
extern u8 randomSeedPadding[216];
extern u8 frameBufferPadding[22544];
extern struct_D_802BFB80 D_802BFB80[][2][8];
extern struct_D_802DFB80 D_802DFB80[][2][8];
extern struct_D_802F1F80 D_802F1F80[][4][8];

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
