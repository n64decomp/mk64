#include "data/path_spawn_metadata.h"
#include "courses/all_course_data.h"
#include <assets/ceremony_data.h>

#if !ENABLE_CUSTOM_COURSE_ENGINE
// @warning Array contains an extra zero element at the end.
CPUBehaviour* cpu_BehaviourLUT[] = {
#include "assets/course_metadata/cpu_BehaviourLUT.inc.c"

};
#else

#endif

TrackPathPoint nullPath = { 0x8000, 0x0000, 0x0000, 0x0000 };

#if !ENABLE_CUSTOM_COURSE_ENGINE
TrackPathPoint* gCoursePathTable[][4] = {
#include "assets/course_metadata/gCoursePathTableUnknown.inc.c"
};

TrackPathPoint* gCoursePathTable2[][4] = {
#include "assets/course_metadata/gCoursePathTable.inc.c"
};

/// @warning Array contains an extra zero element at the end.
s16 cpu_SteeringSensitivity[] = {
#include "assets/course_metadata/cpu_SteeringSensitivity.inc.c"
};

// Possibly maximum cpu separation
f32 cpu_CourseMaximumSeparation[] = {
#include "assets/course_metadata/cpu_CourseMaximumSeparation.inc.c"
};

// Possibly minimum cpu separation
f32 cpu_CourseMinimumSeparation[] = {
#include "assets/course_metadata/cpu_CourseMinimumSeparation.inc.c"
};
#else

#endif

// I think the types for D_800DCAF4, D_800DCB34, and D_800DCBB4 are all
// wrong in some way based on their usage in func_800088D8
// But I cannot be bothered to figure it out
// Used as a ptr in D_800DCBB4
s16 D_800DCAF4[] = {
    0x0014, 0x0005, 0x000a, 0x000f, 0x0014, 0x0019, 0x001e, 0x0023, 0x001e, 0x0019, 0x0032,
    0x004b, 0x0064, 0x007d, 0x0096, 0x00af, 0x0028, 0x001e, 0x003c, 0x005a, 0x0078, 0x0096,
    0x00b4, 0x00d2, 0x0032, 0x0028, 0x0050, 0x0078, 0x00a0, 0x00c8, 0x00f0, 0x0118,
};

// Used as a ptr in D_800DCBB4
s16 D_800DCB34[] = {
    0x0014, 0x0005, 0x000a, 0x000f, 0x0014, 0x0019, 0x001e, 0x0023, 0x001e, 0x0019, 0x002d, 0x0041, 0x005a,
    0x0073, 0x008c, 0x00a5, 0x0028, 0x0003, 0x0006, 0x0010, 0x002e, 0x0031, 0x003b, 0x0059, 0x0032, 0x001e,
    0x003c, 0x003f, 0x0049, 0x004e, 0x006c, 0x008a, 0x000a, 0x0005, 0x000a, 0x000f, 0x0014, 0x0019, 0x001e,
    0x0023, 0x000a, 0x0005, 0x0005, 0x0005, 0x0005, 0x0005, 0x0005, 0x0005, 0x000a, 0x0005, 0x0005, 0x0005,
    0x0005, 0x0005, 0x0005, 0x0005, 0x000a, 0x0005, 0x0005, 0x0005, 0x0005, 0x0005, 0x0005, 0x0005,
};

s16* D_800DCBB4[] = {
#include "assets/course_metadata/D_800DCBB4.inc.c"
};

BombKartSpawn gBombKartSpawns[][NUM_BOMB_KARTS_MAX] = {
#include "assets/course_metadata/gBombKartSpawns.inc.c"
};

#if !ENABLE_CUSTOM_COURSE_ENGINE
struct _struct_gCoursePathSizes_0x10 gCoursePathSizes[] = {
#include "assets/course_metadata/gCoursePathSizes.inc.c"
};
#else

#endif

s32 D_800DDB20 = 0x00000000;

s32 D_800DDB24 = 0x00000001;
