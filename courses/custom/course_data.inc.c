// todo: Replace addresses with variables
#include <ultra64.h>
#include <macros.h>
#include <PR/gbi.h>
#include <actor_types.h>
#include <waypoints.h>
#include <course.h>

#include "course_data.inc.h"

Gfx d_custom_data_dl[] = {
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x07000000),
    gsSPEndDisplayList(),
};

struct TrackWayPoint d_course_path[] = {
    {150, 150, 0, 1},
    {154, 150, 0, 1},
    {158, 150, 0, 1},
    {162, 150, 0, 1},
    {166, 150, 0, 2},
    {170, 150, 0, 2},
    {174, 150, 0, 2},
    {178, 150, 0, 2},
    {182, 150, 0, 2},
    {186, 150, 0, 3},
    {190, 150, 0, 3},
    {194, 150, 0, 3},
    {198, 150, 0, 3},
    {202, 150, 0, 3},
    {206, 150, 0, 3},
    {210, 150, 0, 3},
    {-32768, -32768, -32768, 0},
};

// Item box spawn locations
struct ActorSpawnData d_custom_spawns[] = {
    {{ -40, 222, 824 }, {0} },
    {{ 125, 200, 573 }, {0} },
    {{ -302, 251, 889 }, {0} },
    {{ 38, 203, 654 }, {0} },
    {{ 22, 207, 716 }, {0} },
    {{ 110, 205, 682 }, {0} },
    {{ 681, 205, 53 }, {1} },
    {{ 759, 218, -253 }, {1} },
    {{ 798, 221, 172 }, {1} },
    {{ 557, 200, -111 }, {1} },
    {{ 629, 201, -126 }, {1} },
    {{ 704, 207, -137 }, {1} },
    {{ -111, 200, -554 }, {2} },
    {{ 72, 250, -933 }, {2} },
    {{ -25, 207, -705 }, {2} },
    {{ -21, 225, -843 }, {2} },
    {{ -83, 220, -807 }, {2} },
    {{ -49, 214, -775 }, {2} },
    {{ -807, 220, 53 }, {3} },
    {{ -859, 242, 300 }, {3} },
    {{ -672, 207, -219 }, {3} },
    {{ -885, 108, -59 }, {3} },
    {{ -793, 103, -33 }, {3} },
    {{ -757, 214, 166 }, {3} },
    {{ -32768, 0, 0 }, {0} },
};

TrackSections d_course_luigi_raceway_addr[] = {
    { 0x07000000, 1, 1, 0 },
};