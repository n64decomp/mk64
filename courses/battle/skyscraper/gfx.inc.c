#include <ultra64.h>
#include <macros.h>
#include <PR/gbi.h>
#include <actor_types.h>

Gfx d_course_skyscraper_dl[] = {
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA),
    gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(0x07000238),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x07000FE8),
    gsSPDisplayList(0x07000C60),
    gsSPDisplayList(0x07000B70),
    gsSPDisplayList(0x070006B8),
    gsSPDisplayList(0x07000570),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(0x070010C8),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

// Item box spawn locations
struct ActorSpawnData d_course_skyscraper_spawn_item_box[] = {
    {{ -18, 480, 365 }, { 0 }},
    {{ -272, 480, 312 }, { 0 }},
    {{ -312, 480, 359 }, { 0 }},
    {{ -293, 480, 337 }, { 0 }},
    {{ 12, 480, 360 }, { 0 }},
    {{ 363, 480, 14 }, { 1 }},
    {{ 288, 480, 309 }, { 1 }},
    {{ 308, 480, 326 }, { 1 }},
    {{ 325, 480, 345 }, { 1 }},
    {{ 364, 480, -9 }, { 1 }},
    {{ 11, 480, -361 }, { 2 }},
    {{ 281, 480, -306 }, { 2 }},
    {{ 303, 480, -316 }, { 2 }},
    {{ 336, 480, -324 }, { 2 }},
    {{ -11, 480, -363 }, { 2 }},
    {{ -357, 480, -5 }, { 3 }},
    {{ -318, 480, -267 }, { 3 }},
    {{ -357, 480, -312 }, { 3 }},
    {{ -339, 480, -288 }, { 3 }},
    {{ -354, 480, 18 }, { 3 }},
    {{ -66, 485, 0 }, { 4 }},
    {{ 0, 485, -67 }, { 4 }},
    {{ 66, 485, 1 }, { 4 }},
    {{ 1, 485, 67 }, { 4 }},
    {{ -32768, 0, 0 }, { 0 }},
};
