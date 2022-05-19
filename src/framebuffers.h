#ifndef FRAMEBUFFERS_H
#define FRAMEBUFFERS_H

#include <PR/ultratypes.h>
#include "config.h"

extern u8 gRandomSeed16[22768];
extern u8 D_802BFB80[77824];
extern u8 D_802D2B80[32768];
extern u8 D_802DAB80[20480];
extern u8 D_802DFB80[2][2][18688];
extern u16 D_802F1F80[2][4][2048];

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
