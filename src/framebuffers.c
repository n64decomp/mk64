#include <ultra64.h>

#include "config.h"

u8 D_802BA290[224];

u8 frameBufferPadding[22544];

u8 D_802BFB80[77824];

u8 D_802D2B80[32768]; // Luigi raceway course path ghost
u8 D_802DAB80[20480];
u16 D_802DFB80[37376];
u16 D_802F1F80[16382];

u16 gZBuffer[SCREEN_WIDTH * SCREEN_HEIGHT];

#ifdef AVOID_UB
u16 gFramebuffers[3][SCREEN_WIDTH * SCREEN_HEIGHT];
#else
u16 gFramebuffer0[SCREEN_WIDTH * SCREEN_HEIGHT];
u16 gFramebuffer1[SCREEN_WIDTH * SCREEN_HEIGHT];
u16 gFramebuffer2[SCREEN_WIDTH * SCREEN_HEIGHT];
#endif