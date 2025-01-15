#ifndef COURSE_H
#define COURSE_H

#include <ultra64.h>
#include <PR/gbi.h>
#include <macros.h>
#include "path.h"

/**
 * @file Include for course gfx.inc.c.
 */

typedef struct {
    Gfx* addr;
    u8 surfaceType;
    u8 sectionId;
    u16 flags;
} TrackSections;

struct _struct_gCoursePathSizes_0x10 {
    /* 0x00 */ u16 firstPath;
    /* 0x02 */ u16 secondPath;
    /* 0x04 */ u16 thirdPath;
    /* 0x06 */ u16 fourthPath;
    /* 0x08 */ u16 unk8;
    /* 0x0A */ char padA[6];
}; // size 0x10

#if !ENABLE_CUSTOM_COURSE_ENGINE
typedef enum {
    /* 0x00 */ COURSE_MARIO_RACEWAY = 0,
    /* 0x01 */ COURSE_CHOCO_MOUNTAIN,
    /* 0x02 */ COURSE_BOWSER_CASTLE,
    /* 0x03 */ COURSE_BANSHEE_BOARDWALK,
    /* 0x04 */ COURSE_YOSHI_VALLEY,
    /* 0x05 */ COURSE_FRAPPE_SNOWLAND,
    /* 0x06 */ COURSE_KOOPA_BEACH,
    /* 0x07 */ COURSE_ROYAL_RACEWAY,
    /* 0x08 */ COURSE_LUIGI_RACEWAY,
    /* 0x09 */ COURSE_MOO_MOO_FARM,
    /* 0x0A */ COURSE_TOADS_TURNPIKE,
    /* 0x0B */ COURSE_KALAMARI_DESERT,
    /* 0x0C */ COURSE_SHERBET_LAND,
    /* 0x0D */ COURSE_RAINBOW_ROAD,
    /* 0x0E */ COURSE_WARIO_STADIUM,
    /* 0x0F */ COURSE_BLOCK_FORT,
    /* 0x10 */ COURSE_SKYSCRAPER,
    /* 0x11 */ COURSE_DOUBLE_DECK,
    /* 0x12 */ COURSE_DK_JUNGLE,
    /* 0x13 */ COURSE_BIG_DONUT,
    /* 0x14 */ COURSE_AWARD_CEREMONY,
    /* 0x15 */ NUM_COURSES
} COURSES;

#else

#define COURSE_MARIO_RACEWAY
#define COURSE_CHOCO_MOUNTAIN
#define COURSE_BOWSER_CASTLE
#define COURSE_BANSHEE_BOARDWALK
#define COURSE_YOSHI_VALLEY
#define COURSE_FRAPPE_SNOWLAND
#define COURSE_KOOPA_BEACH
#define COURSE_ROYAL_RACEWAY
#define COURSE_LUIGI_RACEWAY
#define COURSE_MOO_MOO_FARM
#define COURSE_TOADS_TURNPIKE
#define COURSE_KALAMARI_DESERT
#define COURSE_SHERBET_LAND
#define COURSE_RAINBOW_ROAD
#define COURSE_WARIO_STADIUM
#define COURSE_BLOCK_FORT
#define COURSE_SKYSCRAPER
#define COURSE_DOUBLE_DECK
#define COURSE_DK_JUNGLE
#define COURSE_BIG_DONUT
#define COURSE_AWARD_CEREMONY
#define NUM_COURSES

#endif

#if !ENABLE_CUSTOM_COURSE_ENGINE
extern s16 gCurrentCourseId;
extern s16* D_800DCBB4[];
#define GET_COURSE_800DCBB4(n) D_800DCBB4[gCurrentCourseId][n]
extern f32 cpu_CourseMaximumSeparation[];
#define GET_COURSE_AIMaximumSeparation cpu_CourseMaximumSeparation[gCurrentCourseId]
extern struct _struct_gCoursePathSizes_0x10 gCoursePathSizes[];
#define GET_COURSE_PathSizes gCoursePathSizes[gCurrentCourseId]
extern s16 cpu_SteeringSensitivity[];
#define GET_COURSE_AISteeringSensitivity cpu_SteeringSensitivity[gCurrentCourseId]
extern f32 cpu_CourseMinimumSeparation[];
#define GET_COURSE_AIMinimumSeparation cpu_CourseMinimumSeparation[gCurrentCourseId]
extern TrackPathPoint* gCoursePathTable[][4];
#define GET_COURSE_PathTable(p) segmented_to_virtual_dupe_2(gCoursePathTable[gCurrentCourseId][p])
extern TrackPathPoint* gCoursePathTable2[][4];
#define GET_COURSE_PathTable2(p) segmented_to_virtual_dupe_2(gCoursePathTable2[gCurrentCourseId][p])
extern CPUBehaviour* cpu_BehaviourLUT[];
#define GET_COURSE_AIBehaviour segmented_to_virtual_dupe_2(cpu_BehaviourLUT[i])
extern char* gCourseNames[];
#define GET_COURSE_Name gCourseNames[gCurrentCourseId]
extern char* gCourseNamesDup[];
#define GET_COURSE_NameDup gCourseNamesDup[gCupCourseOrder[gCupSelection][gCourseIndexInCup]]
extern char* gDebugCourseNames[];
#define GET_COURSE_debugName gDebugCourseNames[gCurrentCourseId]
extern f32 gCourseFarPersp;
#define gCourseFarPersp gCourseFarPersp
extern f32 gCourseNearPersp;
#define gCourseNearPersp gCourseNearPersp
#define GET_COURSE_D_0D0096B8(cc) *(f32*) segmented_to_virtual_dupe_2(&D_0D0096B8[gCurrentCourseId][cc])
#define GET_COURSE_cpu_OffTrackTargetSpeed(cc) \
    *(f32*) segmented_to_virtual_dupe_2(&cpu_OffTrackTargetSpeed[gCurrentCourseId][cc])
#define GET_COURSE_cpu_CurveTargetSpeed(cc) \
    *(f32*) segmented_to_virtual_dupe_2(&cpu_CurveTargetSpeed[gCurrentCourseId][cc])
#define GET_COURSE_cpu_NormalTargetSpeed(cc) \
    *(f32*) segmented_to_virtual_dupe_2(&cpu_NormalTargetSpeed[gCurrentCourseId][cc])
#else
#define gCurrentCourseId
#define GET_COURSE_800DCBB4(n)
#define GET_COURSE_AIMaximumSeparation
#define GET_COURSE_PathSizes
#define GET_COURSE_AISteeringSensitivity
#define GET_COURSE_AIMinimumSeparation
#define GET_COURSE_PathTable(p)
#define GET_COURSE_PathTable2(p)
#define GET_COURSE_AIBehaviour
#define GET_COURSE_Name
#define GET_COURSE_NameDup
#define GET_COURSE_debugName
#define gCourseFarPersp
#define gCourseNearPersp
#define GET_COURSE_D_0D0096B8(cc)
#define GET_COURSE_cpu_OffTrackTargetSpeed(cc)
#define GET_COURSE_cpu_CurveTargetSpeed(cc)
#define GET_COURSE_cpu_NormalTargetSpeed(cc)
#endif

#endif // COURSE_H
