#ifndef SPLINE_H
#define SPLINE_H

#include "common_structs.h"

/*
These are some very good videos about splines/Bezier curves in general

The Beauty of Bezier Curves
https://www.youtube.com/watch?v=aVwxzDHniEw

The Continuity of Splines
https://www.youtube.com/watch?v=jvPPXbo87ds
*/

/*
This stuff is all about the b-splines used objects like Lakitu and the Boos on Banshee Boardwalk
For splines used during the award ceremony and credits, see src/ending/ceremony_and_credits.h
*/

typedef struct {
    /* 0x0 */ Vec3s pos;
    // Don't really know what to call this member.
    // It somehow controls the speed of travel along a segment of the spline but I don't really get how it works
    /* 0x6 */ s16 velocity;
} SplineControlPoint; // size = 0x8

// WARNING!!!
// You really, really shouldn't use this type for actual spline data. This is intended as a generic SplineData
// type. I would use a union, but that would cause significant ugliness elsewhere in the codebase
typedef struct {
    // This name is a little misleading
    // The control point arrays have more control points in them than this number indicates. Not sure why though.
    s16 numControlPoints;
    // This has to be an array for this to work, so just make it size 1
    SplineControlPoint controlPoints[1];
} SplineData;

// All other SplineDataXX types are for use as data only. The size of the array in them matters a lot.
// But object structs should never have members with these types, just use the plain SplineData type

// Ghosts in BansheeBoardwalk x 2
// Seagulls in KoopaTroopaBeach x 2
// Penguins in Sherbet Land x 1
typedef struct {
    s16 numControlPoints;
    SplineControlPoint controlPoints[23];
} SplineData23;

// Ghosts in BansheeBoardwalk x 2
// Seagulls in KoopaTroopaBeach x 1
typedef struct {
    s16 numControlPoints;
    SplineControlPoint controlPoints[24];
} SplineData24;


// Ghosts in BansheeBoardwalk x 1
// Seagulls in KoopaTroopaBeach x 1
// Penguins in Sherbet Land x 1
typedef struct {
    s16 numControlPoints;
    SplineControlPoint controlPoints[25];
} SplineData25;

// Data of this type is unreferenced or only referenced in an unused function
typedef struct {
    s16 numControlPoints;
    SplineControlPoint controlPoints[4];
} SplineDataUnused4;

// Lakitu Countdown
typedef struct {
    s16 numControlPoints;
    SplineControlPoint controlPoints[15];
} SplineData15;

// Lakitu Checkered Flag
typedef struct {
    s16 numControlPoints;
    SplineControlPoint controlPoints[21];
} SplineData21;

typedef struct {
    s16 numControlPoints;
    SplineControlPoint controlPoints[13];
} SplineDataUnused13;

// Lakitu Second/Final Lap
typedef struct {
    s16 numControlPoints;
    SplineControlPoint controlPoints[12];
} SplineData12;

// Lakitu Reverse
typedef struct {
    s16 numControlPoints;
    SplineControlPoint controlPoints[8];
} SplineData8;

#endif
