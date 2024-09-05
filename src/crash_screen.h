#ifndef CRASH_SCREEN_H
#define CRASH_SCREEN_H

#include <ultra64.h>
#include <macros.h>

extern u16 *pFramebuffer;

void crash_screen_set_framebuffer(u16*);

#endif // CRASH_SCREEN_H