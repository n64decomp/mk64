#ifndef COURSE_H
#define COURSE_H

#include <ultra64.h>
#include <PR/gbi.h>
#include <macros.h>

/**
 * @file Include for course gfx.inc.c.
*/

typedef struct {
    Gfx *addr;
    u8 surfaceType;
    u8 sectionId;
    u16 flags;
} TrackSections;

#endif // COURSE_H
