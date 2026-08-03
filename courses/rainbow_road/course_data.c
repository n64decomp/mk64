//! @todo Replace addresses with variables
#include <ultra64.h>
#include <macros.h>
#include <PR/gbi.h>
#include <actor_types.h>
#include <path.h>
#include <course.h>
#include <animation.h>
#include <mk64.h>

#include "course_displaylists.inc.h"
#include "course_textures.linkonly.h"

Gfx d_course_rainbow_road_dl_0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPNoOp(),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetTexturePersp(G_TP_PERSP),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, gRRTextureStarOutline),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_80[] = {
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 6, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, gRRTextureRainbow),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 2047, 128),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_D8[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),           gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),  gsSPDisplayList(d_course_rainbow_road_packed_dl_308),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_0),    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),  gsSPDisplayList(d_course_rainbow_road_packed_dl_EA8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_B90),  gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1850), gsSPDisplayList(d_course_rainbow_road_packed_dl_1758),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1528), gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1978), gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1BC0), gsSPDisplayList(d_course_rainbow_road_packed_dl_1A20),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80), gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_178[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1168),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_EA8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_D88),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_B90),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1978),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1D30),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1BC0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1B28),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1A20),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_210[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_EA8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_D88),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_B90),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1BC0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1B28),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1A20),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_288[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),           gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),  gsSPDisplayList(d_course_rainbow_road_packed_dl_308),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_0),    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1168), gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_D88),  gsSPDisplayList(d_course_rainbow_road_packed_dl_B90),
    gsSPDisplayList(d_course_rainbow_road_dl_80),          gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758), gsSPDisplayList(d_course_rainbow_road_packed_dl_1528),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0), gsSPDisplayList(d_course_rainbow_road_packed_dl_1978),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1D30), gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1B28), gsSPDisplayList(d_course_rainbow_road_packed_dl_1A20),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80), gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_338[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_5C8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_498),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_308),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1698),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_15F8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1528),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1978),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1FC8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_3D0[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),           gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),  gsSPDisplayList(d_course_rainbow_road_packed_dl_5C8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_308),  gsSPDisplayList(d_course_rainbow_road_packed_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),  gsSPDisplayList(d_course_rainbow_road_packed_dl_1168),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),  gsSPDisplayList(d_course_rainbow_road_packed_dl_EA8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_D88),  gsSPDisplayList(d_course_rainbow_road_packed_dl_B90),
    gsSPDisplayList(d_course_rainbow_road_dl_80),          gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758), gsSPDisplayList(d_course_rainbow_road_packed_dl_1698),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1528), gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1978), gsSPDisplayList(d_course_rainbow_road_packed_dl_1D30),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70), gsSPDisplayList(d_course_rainbow_road_packed_dl_1BC0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1B28), gsSPDisplayList(d_course_rainbow_road_packed_dl_1A20),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80), gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_4A0[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_5C8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_498),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_EA8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_D88),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1698),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_15F8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1BC0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1B28),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_528[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),           gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),  gsSPDisplayList(d_course_rainbow_road_packed_dl_5C8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_498),  gsSPDisplayList(d_course_rainbow_road_packed_dl_308),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_0),    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1168), gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_D88),  gsSPDisplayList(d_course_rainbow_road_packed_dl_B90),
    gsSPDisplayList(d_course_rainbow_road_dl_80),          gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758), gsSPDisplayList(d_course_rainbow_road_packed_dl_1698),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_15F8), gsSPDisplayList(d_course_rainbow_road_packed_dl_1528),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0), gsSPDisplayList(d_course_rainbow_road_packed_dl_1978),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1D30), gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1B28), gsSPDisplayList(d_course_rainbow_road_packed_dl_1A20),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80), gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_5F8[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),           gsSPDisplayList(d_course_rainbow_road_packed_dl_730),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_5C8),  gsSPDisplayList(d_course_rainbow_road_packed_dl_498),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_308),  gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758), gsSPDisplayList(d_course_rainbow_road_packed_dl_1698),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_15F8), gsSPDisplayList(d_course_rainbow_road_packed_dl_1528),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1FC8), gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_658[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_5C8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_498),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_308),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_0),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1698),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_15F8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1528),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1FC8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_6E0[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),           gsSPDisplayList(d_course_rainbow_road_packed_dl_730),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_5C8),  gsSPDisplayList(d_course_rainbow_road_packed_dl_498),
    gsSPDisplayList(d_course_rainbow_road_dl_80),          gsSPDisplayList(d_course_rainbow_road_packed_dl_1758),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1698), gsSPDisplayList(d_course_rainbow_road_packed_dl_15F8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1FC8), gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_730[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_5C8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_498),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_308),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_0),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1698),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_15F8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1528),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1FC8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_7A8[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),           gsSPDisplayList(d_course_rainbow_road_packed_dl_5C8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_498),  gsSPDisplayList(d_course_rainbow_road_packed_dl_308),
    gsSPDisplayList(d_course_rainbow_road_dl_80),          gsSPDisplayList(d_course_rainbow_road_packed_dl_1698),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_15F8), gsSPDisplayList(d_course_rainbow_road_packed_dl_1528),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1FC8), gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_7F8[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_5C8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_498),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_308),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_0),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1698),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_15F8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1528),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1FC8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_880[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),           gsSPDisplayList(d_course_rainbow_road_packed_dl_730),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_5C8),  gsSPDisplayList(d_course_rainbow_road_packed_dl_498),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_308),  gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758), gsSPDisplayList(d_course_rainbow_road_packed_dl_1698),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_15F8), gsSPDisplayList(d_course_rainbow_road_packed_dl_1528),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1FC8), gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_8E0[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_5C8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_498),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_308),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_0),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1698),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_15F8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1528),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1FC8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_958[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),           gsSPDisplayList(d_course_rainbow_road_packed_dl_730),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_5C8),  gsSPDisplayList(d_course_rainbow_road_packed_dl_498),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_308),  gsSPDisplayList(d_course_rainbow_road_packed_dl_0),
    gsSPDisplayList(d_course_rainbow_road_dl_80),          gsSPDisplayList(d_course_rainbow_road_packed_dl_1758),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1698), gsSPDisplayList(d_course_rainbow_road_packed_dl_15F8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1528), gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1FC8), gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_9C8[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_5C8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_498),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_308),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1698),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_15F8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1528),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1978),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1D30),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_A70[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_5C8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_498),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_308),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1698),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_15F8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1528),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1FC8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_B08[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_498),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_308),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_15F8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1528),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1978),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1D30),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_B70[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),           gsSPDisplayList(d_course_rainbow_road_packed_dl_730),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_5C8),  gsSPDisplayList(d_course_rainbow_road_packed_dl_498),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_308),  gsSPDisplayList(d_course_rainbow_road_packed_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),  gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758), gsSPDisplayList(d_course_rainbow_road_packed_dl_1698),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_15F8), gsSPDisplayList(d_course_rainbow_road_packed_dl_1528),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0), gsSPDisplayList(d_course_rainbow_road_packed_dl_1978),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80), gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_BF0[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),           gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_308),  gsSPDisplayList(d_course_rainbow_road_packed_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),  gsSPDisplayList(d_course_rainbow_road_packed_dl_1168),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),  gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1850), gsSPDisplayList(d_course_rainbow_road_packed_dl_1528),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0), gsSPDisplayList(d_course_rainbow_road_packed_dl_1978),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1D30), gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80), gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_C70[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),           gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),  gsSPDisplayList(d_course_rainbow_road_packed_dl_5C8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_498),  gsSPDisplayList(d_course_rainbow_road_packed_dl_308),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_0),    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),  gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1850), gsSPDisplayList(d_course_rainbow_road_packed_dl_1758),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1698), gsSPDisplayList(d_course_rainbow_road_packed_dl_15F8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1528), gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1978), gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80), gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_D10[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),           gsSPDisplayList(d_course_rainbow_road_packed_dl_308),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_0),    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1168), gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),
    gsSPDisplayList(d_course_rainbow_road_dl_80),          gsSPDisplayList(d_course_rainbow_road_packed_dl_1528),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0), gsSPDisplayList(d_course_rainbow_road_packed_dl_1978),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1D30), gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80), gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_D80[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_308),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1168),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1698),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1528),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1978),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1D30),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_E08[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),           gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_0),    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1168), gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_D88),  gsSPDisplayList(d_course_rainbow_road_packed_dl_B90),
    gsSPDisplayList(d_course_rainbow_road_dl_80),          gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0), gsSPDisplayList(d_course_rainbow_road_packed_dl_1978),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1D30), gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1B28), gsSPDisplayList(d_course_rainbow_road_packed_dl_1A20),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80), gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_E98[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_308),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1168),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_D88),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_B90),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1698),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1528),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1978),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1D30),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1B28),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1A20),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_F50[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),           gsSPDisplayList(d_course_rainbow_road_packed_dl_308),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_0),    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1168), gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1528), gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1978), gsSPDisplayList(d_course_rainbow_road_packed_dl_1D30),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80), gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_FB0[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),           gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),  gsSPDisplayList(d_course_rainbow_road_packed_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),  gsSPDisplayList(d_course_rainbow_road_packed_dl_1168),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),  gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1850), gsSPDisplayList(d_course_rainbow_road_packed_dl_1758),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0), gsSPDisplayList(d_course_rainbow_road_packed_dl_1978),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1D30), gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80), gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_1030[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1168),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_D88),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_B90),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1978),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1D30),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1B28),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1A20),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_10A8[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1168),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_D88),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_B90),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1978),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1D30),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1BC0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1B28),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1A20),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_1150[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1168),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1978),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1D30),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_1198[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),           gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),  gsSPDisplayList(d_course_rainbow_road_packed_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),  gsSPDisplayList(d_course_rainbow_road_packed_dl_1168),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),  gsSPDisplayList(d_course_rainbow_road_packed_dl_EA8),
    gsSPDisplayList(d_course_rainbow_road_dl_80),          gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758), gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1978), gsSPDisplayList(d_course_rainbow_road_packed_dl_1D30),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70), gsSPDisplayList(d_course_rainbow_road_packed_dl_1BC0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80), gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_1228[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1168),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_EA8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_D88),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_B90),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1D30),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1BC0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1B28),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1A20),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_12A0[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),           gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),  gsSPDisplayList(d_course_rainbow_road_packed_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1168), gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_EA8),  gsSPDisplayList(d_course_rainbow_road_packed_dl_D88),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_B90),  gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1850), gsSPDisplayList(d_course_rainbow_road_packed_dl_1758),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0), gsSPDisplayList(d_course_rainbow_road_packed_dl_1D30),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70), gsSPDisplayList(d_course_rainbow_road_packed_dl_1BC0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1B28), gsSPDisplayList(d_course_rainbow_road_packed_dl_1A20),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80), gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_1340[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),           gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),  gsSPDisplayList(d_course_rainbow_road_packed_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),  gsSPDisplayList(d_course_rainbow_road_packed_dl_1168),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),  gsSPDisplayList(d_course_rainbow_road_packed_dl_EA8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_D88),  gsSPDisplayList(d_course_rainbow_road_packed_dl_B90),
    gsSPDisplayList(d_course_rainbow_road_dl_80),          gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758), gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1978), gsSPDisplayList(d_course_rainbow_road_packed_dl_1D30),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70), gsSPDisplayList(d_course_rainbow_road_packed_dl_1BC0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1B28), gsSPDisplayList(d_course_rainbow_road_packed_dl_1A20),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80), gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_13F0[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_EA8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_D88),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_B90),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1BC0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1B28),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1A20),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_1488[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),           gsSPDisplayList(d_course_rainbow_road_packed_dl_1168),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),  gsSPDisplayList(d_course_rainbow_road_packed_dl_EA8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_D88),  gsSPDisplayList(d_course_rainbow_road_packed_dl_B90),
    gsSPDisplayList(d_course_rainbow_road_dl_80),          gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1BC0), gsSPDisplayList(d_course_rainbow_road_packed_dl_1B28),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1A20), gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_14E8[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_EA8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_D88),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1BC0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1B28),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_1530[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),           gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),  gsSPDisplayList(d_course_rainbow_road_packed_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),  gsSPDisplayList(d_course_rainbow_road_packed_dl_1168),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),  gsSPDisplayList(d_course_rainbow_road_packed_dl_EA8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_D88),  gsSPDisplayList(d_course_rainbow_road_packed_dl_B90),
    gsSPDisplayList(d_course_rainbow_road_dl_80),          gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758), gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70), gsSPDisplayList(d_course_rainbow_road_packed_dl_1BC0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1B28), gsSPDisplayList(d_course_rainbow_road_packed_dl_1A20),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E80), gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_15D0[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1168),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_EA8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_D88),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_B90),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1978),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1D30),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1BC0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1B28),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1A20),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_1678[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_EA8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_D88),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_B90),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1BC0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1B28),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1A20),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_16C0[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_EA8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_D88),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_B90),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1BC0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1B28),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1A20),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_1738[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1168),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_EA8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_D88),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_B90),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1978),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1D30),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1BC0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1B28),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1A20),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_17D0[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1168),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_EA8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_D88),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_B90),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1978),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1D30),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1BC0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1B28),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1A20),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_1878[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_EA8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_D88),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_B90),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1BC0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1B28),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1A20),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_18D0[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_730),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_EA8),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_D88),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_B90),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1758),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1BC0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1B28),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1A20),
    gsSPEndDisplayList(),
};

Gfx d_course_rainbow_road_dl_1948[] = {
    gsSPDisplayList(d_course_rainbow_road_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_918),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_A48),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1168),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_FF0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_D88),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_B90),
    gsSPDisplayList(d_course_rainbow_road_dl_80),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1850),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_13A0),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1978),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1D30),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1C70),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1B28),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1A20),
    gsSPEndDisplayList(),
};

#ifndef VERSION_JP  /* VERSION_JP path order: moved to end of file */
TrackPathPoint d_course_rainbow_road_unknown_path[] = {
#include "courses/rainbow_road/d_course_rainbow_road_unknown_path.inc.c"
};
#endif

#ifndef VERSION_JP  /* VERSION_JP path order: moved to end of file */
TrackPathPoint d_course_rainbow_road_track_path[] = {
#include "courses/rainbow_road/d_course_rainbow_road_track_path.inc.c"
};
#endif

// some textures 0x5400
u8 d_course_rainbow_road_neon_mushroom_tlut_list[][512] = {
    {
#include "assets/courses/rainbow_road/gTLUTRainbowRoadNeonMushroom1.inc.c"
    },
    {
#include "assets/courses/rainbow_road/gTLUTRainbowRoadNeonMushroom2.inc.c"
    },
    {
#include "assets/courses/rainbow_road/gTLUTRainbowRoadNeonMushroom3.inc.c"
    },
    {
#include "assets/courses/rainbow_road/gTLUTRainbowRoadNeonMushroom4.inc.c"
    },
    {
#include "assets/courses/rainbow_road/gTLUTRainbowRoadNeonMushroom5.inc.c"
    },
};

u8 d_course_rainbow_road_neon_mario_tlut_list[][512] = {
    {
#include "assets/courses/rainbow_road/gTLUTRainbowRoadNeonMario1.inc.c"
    },
    {
#include "assets/courses/rainbow_road/gTLUTRainbowRoadNeonMario2.inc.c"
    },
    {
#include "assets/courses/rainbow_road/gTLUTRainbowRoadNeonMario3.inc.c"
    },
    {
#include "assets/courses/rainbow_road/gTLUTRainbowRoadNeonMario4.inc.c"
    },
    {
#include "assets/courses/rainbow_road/gTLUTRainbowRoadNeonMario5.inc.c"
    },
};

u8 d_course_rainbow_road_neon_boo_tlut_list[][512] = {
    {
#include "assets/courses/rainbow_road/gTLUTRainbowRoadNeonBoo1.inc.c"
    },
    {
#include "assets/courses/rainbow_road/gTLUTRainbowRoadNeonBoo2.inc.c"
    },
    {
#include "assets/courses/rainbow_road/gTLUTRainbowRoadNeonBoo3.inc.c"
    },
    {
#include "assets/courses/rainbow_road/gTLUTRainbowRoadNeonBoo4.inc.c"
    },
    {
#include "assets/courses/rainbow_road/gTLUTRainbowRoadNeonBoo5.inc.c"
    },
};

u16 d_course_rainbow_road_static_tluts[] = {
#include "rainbow_road_tluts/gTLUTRainbowRoadNeonPeach.rgba16.inc.c"
};

/* @warning array oob func_80086074 */
u16 d_tlut_rainbow_road_neon_luigi[] = {
#include "rainbow_road_tluts/gTLUTRainbowRoadNeonLuigi.rgba16.inc.c"
};

/* @warning array oob func_80086074 */
u16 d_tlut_rainbow_road_neon_dk[] = {
#include "rainbow_road_tluts/gTLUTRainbowRoadNeonDonkeyKong.rgba16.inc.c"
};

/* @warning array oob func_80086074 */
u16 d_tlut_rainbow_road_neon_yoshi[] = {
#include "rainbow_road_tluts/gTLUTRainbowRoadNeonYoshi.rgba16.inc.c"
};

/* @warning array oob func_80086074 */
u16 d_tlut_rainbow_road_neon_bowser[] = {
#include "rainbow_road_tluts/gTLUTRainbowRoadNeonBowser.rgba16.inc.c"
};

/* @warning array oob func_80086074 */
u16 d_tlut_rainbow_road_neon_wario[] = {
#include "rainbow_road_tluts/gTLUTRainbowRoadNeonWario.rgba16.inc.c"
};

/* @warning array oob func_80086074 */
u16 d_tlut_rainbow_road_neon_toad[] = {
#include "rainbow_road_tluts/gTLUTRainbowRoadNeonToad.rgba16.inc.c"
};

u8 d_course_rainbow_road_neon_mushroom[] = {
#include "assets/courses/rainbow_road/gTextureRainbowRoadNeonMushroom.inc.c"
};

u8 d_course_rainbow_road_neon_mario[] = {
#include "assets/courses/rainbow_road/gTextureRainbowRoadNeonMario.inc.c"
};

u8 d_course_rainbow_road_neon_boo[] = {
#include "assets/courses/rainbow_road/gTextureRainbowRoadNeonBoo.inc.c"
};

u8 d_course_rainbow_road_static_textures[][4096] = {
    {
#include "assets/courses/rainbow_road/gTextureRainbowRoadNeonPeach.inc.c"
    },
    {
#include "assets/courses/rainbow_road/gTextureRainbowRoadNeonLuigi.inc.c"
    },
    {
#include "assets/courses/rainbow_road/gTextureRainbowRoadNeonDonkeyKong.inc.c"
    },
    {
#include "assets/courses/rainbow_road/gTextureRainbowRoadNeonYoshi.inc.c"
    },
    {
#include "assets/courses/rainbow_road/gTextureRainbowRoadNeonBowser.inc.c"
    },
    {
#include "assets/courses/rainbow_road/gTextureRainbowRoadNeonWario.inc.c"
    },
    {
#include "assets/courses/rainbow_road/gTextureRainbowRoadNeonToad.inc.c"
    },
};

// unk data
u64 d_course_rainbow_road_unk_double = 1;
u64 d_course_rainbow_road_unk_double2 = 1;

// unk light
Lights1 d_course_rainbow_road_light1 = gdSPDefLights1(102, 102, 102, 255, 255, 255, 40, 40, 40);

u8 d_course_rainbow_road_sphere[] = {
#include "assets/courses/rainbow_road/gTextureRainbowRoadSphere.inc.c"
};

u8 d_course_rainbow_road_reflection_map_metal[] = {
#include "assets/courses/rainbow_road/gTextureRainbowRoadReflectionMapMetal.inc.c"
};

u8 d_course_rainbow_road_reflection_map_gold[] = {
#include "assets/courses/rainbow_road/gTextureRainbowRoadReflectionMapGold.inc.c"
};

u8 d_course_rainbow_road_chain_chomp_tongue[] = {
#include "assets/courses/rainbow_road/gTextureRainbowRoadChainChompTongue.inc.c"
};

u8 d_course_rainbow_road_chain_chomp_eye[] = {
#include "assets/courses/rainbow_road/gTextureRainbowRoadChainChompEye.inc.c"
};

Vtx d_course_rainbow_road_chomp_lower_jaw_model[] = {
    { { { 281, 6, -451 }, 0, { 0, 0 }, { 0x2D, 0xFB, 0x8A, 0x00 } } },
    { { { 223, -71, -469 }, 0, { 0, 0 }, { 0x2D, 0xFB, 0x8A, 0x00 } } },
    { { { 181, 6, -490 }, 0, { 0, 0 }, { 0x2D, 0xFB, 0x8A, 0x00 } } },
    { { { 399, 6, -401 }, 0, { 0, 0 }, { 0x31, 0xEE, 0x8D, 0xFF } } },
    { { { 322, -105, -415 }, 0, { 0, 0 }, { 0x31, 0xEE, 0x8D, 0xFF } } },
    { { { 281, 6, -451 }, 0, { 0, 0 }, { 0x31, 0xEE, 0x8D, 0xFF } } },
    { { { 458, 6, -260 }, 0, { 0, 0 }, { 0x73, 0xEC, 0xD0, 0xFF } } },
    { { { 400, -155, -330 }, 0, { 0, 0 }, { 0x73, 0xEC, 0xD0, 0xFF } } },
    { { { 399, 6, -401 }, 0, { 0, 0 }, { 0x73, 0xEC, 0xD0, 0xFF } } },
    { { { 563, 6, 0 }, 0, { 0, 0 }, { 0x72, 0xE3, 0xD3, 0xFF } } },
    { { { 451, -210, -138 }, 0, { 0, 0 }, { 0x72, 0xE3, 0xD3, 0xFF } } },
    { { { 458, 6, -260 }, 0, { 0, 0 }, { 0x72, 0xE3, 0xD3, 0xFF } } },
    { { { 458, 6, 260 }, 0, { 0, 0 }, { 0x72, 0xE2, 0x2E, 0xFF } } },
    { { { 451, -210, 138 }, 0, { 0, 0 }, { 0x72, 0xE2, 0x2E, 0xFF } } },
    { { { 563, 6, 0 }, 0, { 0, 0 }, { 0x72, 0xE2, 0x2E, 0xFF } } },
    { { { 399, 6, 401 }, 0, { 0, 0 }, { 0x73, 0xEC, 0x30, 0xFF } } },
    { { { 400, -155, 330 }, 0, { 0, 0 }, { 0x73, 0xEC, 0x30, 0x00 } } },
    { { { 458, 6, 260 }, 0, { 0, 0 }, { 0x73, 0xEC, 0x30, 0x00 } } },
    { { { 281, 6, 451 }, 0, { 0, 0 }, { 0x31, 0xEE, 0x73, 0xFF } } },
    { { { 322, -105, 415 }, 0, { 0, 0 }, { 0x31, 0xEE, 0x73, 0xFF } } },
    { { { 399, 6, 401 }, 0, { 0, 0 }, { 0x31, 0xEE, 0x73, 0xFF } } },
    { { { 181, 6, 490 }, 0, { 0, 0 }, { 0x2D, 0xFB, 0x76, 0xFF } } },
    { { { 223, -71, 469 }, 0, { 0, 0 }, { 0x2D, 0xFB, 0x76, 0xFF } } },
    { { { 281, 6, 451 }, 0, { 0, 0 }, { 0x2D, 0xFB, 0x76, 0xFF } } },
};

Gfx d_course_rainbow_road_dl_151A8[] = {
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_TEXTURE_GEN),
    gsDPLoadTextureBlock(d_course_rainbow_road_reflection_map_gold, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0,
                         G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_DECALRGB, G_CC_DECALRGB),
    gsSPTexture(0x07C0, 0x07C0, 0, G_TX_RENDERTILE, G_ON),
    gsSPVertex(d_course_rainbow_road_chomp_lower_jaw_model, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSPClearGeometryMode(G_TEXTURE_GEN),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsSPEndDisplayList(),
};

Vtx d_course_rainbow_road_chomp_body_lower_model1[] = {
    { { { -156, 533, -156 }, 0, { 0, 0 }, { 0xDE, 0x75, 0xDE, 0x00 } } },
    { { { -220, 533, 0 }, 0, { 0, 0 }, { 0xD0, 0x75, 0x00, 0x00 } } },
    { { { 0, 577, 0 }, 0, { 0, 0 }, { 0x00, 0x7F, 0x00, 0x00 } } },
    { { { -288, 408, -288 }, 0, { 0, 0 }, { 0xC1, 0x5A, 0xC1, 0xFF } } },
    { { { -408, 408, 0 }, 0, { 0, 0 }, { 0xA7, 0x5A, 0x00, 0xFF } } },
    { { { -377, 220, -377 }, 0, { 0, 0 }, { 0xAE, 0x30, 0xAE, 0xFF } } },
    { { { -533, 220, 0 }, 0, { 0, 0 }, { 0x8B, 0x30, 0x00, 0xFF } } },
    { { { -408, 0, -408 }, 0, { 0, 0 }, { 0xA7, 0x00, 0xA7, 0xFF } } },
    { { { -577, 0, 0 }, 0, { 0, 0 }, { 0x81, 0x00, 0x00, 0xFF } } },
    { { { -377, 220, 377 }, 0, { 0, 0 }, { 0xAE, 0x30, 0x52, 0xFF } } },
    { { { -408, 0, 408 }, 0, { 0, 0 }, { 0xA7, 0x00, 0x59, 0xFF } } },
    { { { -288, 408, 288 }, 0, { 0, 0 }, { 0xC1, 0x5A, 0x3F, 0xFF } } },
    { { { -156, 533, 156 }, 0, { 0, 0 }, { 0xDE, 0x75, 0x22, 0xFF } } },
    { { { 0, 533, -220 }, 0, { 0, 0 }, { 0x00, 0x75, 0xD0, 0xFF } } },
    { { { 0, 408, -408 }, 0, { 0, 0 }, { 0x00, 0x5A, 0xA7, 0xFF } } },
    { { { 0, 220, -533 }, 0, { 0, 0 }, { 0x00, 0x30, 0x8B, 0xFF } } },
    { { { 0, 0, -577 }, 0, { 0, 0 }, { 0x00, 0x18, 0x84, 0x00 } } },
    { { { 0, 220, 533 }, 0, { 0, 0 }, { 0x00, 0x30, 0x75, 0xFF } } },
    { { { 0, 0, 577 }, 0, { 0, 0 }, { 0x00, 0x18, 0x7C, 0xFF } } },
    { { { 0, 408, 408 }, 0, { 0, 0 }, { 0x00, 0x5A, 0x59, 0xFF } } },
    { { { 0, 533, 220 }, 0, { 0, 0 }, { 0x00, 0x75, 0x30, 0xFF } } },
    { { { 156, 533, -156 }, 0, { 0, 0 }, { 0x22, 0x75, 0xDE, 0xFF } } },
    { { { 288, 408, -288 }, 0, { 0, 0 }, { 0x3F, 0x5A, 0xC1, 0xFF } } },
    { { { 377, 220, -377 }, 0, { 0, 0 }, { 0x52, 0x30, 0xAE, 0xFF } } },
    { { { 408, 0, -408 }, 0, { 0, 0 }, { 0x58, 0x18, 0xA8, 0xFF } } },
    { { { 377, 220, 377 }, 0, { 0, 0 }, { 0x52, 0x30, 0x52, 0xFF } } },
    { { { 408, 0, 408 }, 0, { 0, 0 }, { 0x58, 0x18, 0x58, 0xFF } } },
    { { { 288, 408, 288 }, 0, { 0, 0 }, { 0x3F, 0x5A, 0x3F, 0xFF } } },
    { { { 156, 533, 156 }, 0, { 0, 0 }, { 0x22, 0x75, 0x22, 0xFF } } },
    { { { 220, 533, 0 }, 0, { 0, 0 }, { 0x30, 0x75, 0x00, 0xFF } } },
    { { { 408, 408, 0 }, 0, { 0, 0 }, { 0x59, 0x5A, 0x00, 0xFF } } },
    { { { 533, 220, 0 }, 0, { 0, 0 }, { 0x75, 0x30, 0x00, 0xFF } } },
};

Vtx d_course_rainbow_road_chomp_body_lower_model2[] = {
    { { { 377, 220, -377 }, 0, { 0, 0 }, { 0x52, 0x30, 0xAE, 0xFF } } },
    { { { 533, 220, 0 }, 0, { 0, 0 }, { 0x75, 0x30, 0x00, 0xFF } } },
    { { { 577, 0, 0 }, 0, { 0, 0 }, { 0x7C, 0x18, 0x00, 0xFF } } },
    { { { 408, 0, -408 }, 0, { 0, 0 }, { 0x58, 0x18, 0xA8, 0xFF } } },
    { { { 377, 220, 377 }, 0, { 0, 0 }, { 0x52, 0x30, 0x52, 0xFF } } },
    { { { 408, 0, 408 }, 0, { 0, 0 }, { 0x58, 0x18, 0x58, 0xFF } } },
    { { { 408, 408, 0 }, 0, { 0, 0 }, { 0x59, 0x5A, 0x00, 0xFF } } },
    { { { 288, 408, 288 }, 0, { 0, 0 }, { 0x3F, 0x5A, 0x3F, 0xFF } } },
    { { { 220, 533, 0 }, 0, { 0, 0 }, { 0x30, 0x75, 0x00, 0xFF } } },
    { { { 156, 533, 156 }, 0, { 0, 0 }, { 0x22, 0x75, 0x22, 0xFF } } },
    { { { 0, 577, 0 }, 0, { 0, 0 }, { 0x00, 0x7F, 0x00, 0x00 } } },
};

Vtx d_course_rainbow_road_chomp_body_lower_model3[] = {
    { { { 0, 0, -581 }, 0, { 1154, 138 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 582, 0, 0 }, 0, { 470, 1104 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 411, 0, 411 }, 0, { -12, 822 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 0, 0, 582 }, 0, { -210, 138 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 411, 0, -410 }, 0, { 954, 822 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Gfx d_course_rainbow_road_dl_15550[] = {
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_TEXTURE_GEN),
    gsDPLoadTextureBlock(d_course_rainbow_road_reflection_map_metal, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0,
                         G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_DECALRGB, G_CC_DECALRGB),
    gsSPTexture(0x07C0, 0x07C0, 0, G_TX_RENDERTILE, G_ON),
    gsSPVertex(d_course_rainbow_road_chomp_body_lower_model1, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(1, 3, 4, 0, 4, 3, 5, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 5, 7, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 6, 8, 0),
    gsSP2Triangles(9, 8, 10, 0, 11, 4, 6, 0),
    gsSP2Triangles(11, 6, 9, 0, 12, 1, 4, 0),
    gsSP2Triangles(12, 4, 11, 0, 1, 12, 2, 0),
    gsSP2Triangles(13, 0, 2, 0, 0, 13, 14, 0),
    gsSP2Triangles(0, 14, 3, 0, 3, 14, 15, 0),
    gsSP2Triangles(3, 15, 5, 0, 5, 15, 16, 0),
    gsSP2Triangles(5, 16, 7, 0, 17, 9, 10, 0),
    gsSP2Triangles(17, 10, 18, 0, 19, 11, 9, 0),
    gsSP2Triangles(19, 9, 17, 0, 20, 12, 11, 0),
    gsSP2Triangles(20, 11, 19, 0, 12, 20, 2, 0),
    gsSP2Triangles(21, 13, 2, 0, 13, 21, 22, 0),
    gsSP2Triangles(13, 22, 14, 0, 14, 22, 23, 0),
    gsSP2Triangles(14, 23, 15, 0, 15, 23, 24, 0),
    gsSP2Triangles(15, 24, 16, 0, 25, 17, 18, 0),
    gsSP2Triangles(25, 18, 26, 0, 27, 19, 17, 0),
    gsSP2Triangles(27, 17, 25, 0, 28, 20, 19, 0),
    gsSP2Triangles(28, 19, 27, 0, 20, 28, 2, 0),
    gsSP2Triangles(29, 21, 2, 0, 21, 29, 30, 0),
    gsSP2Triangles(21, 30, 22, 0, 22, 30, 31, 0),
    gsSP1Triangle(22, 31, 23, 0),
    gsSPVertex(d_course_rainbow_road_chomp_body_lower_model2, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 4, 0, 6, 4, 1, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP1Triangle(9, 8, 10, 0),
    gsSPClearGeometryMode(G_TEXTURE_GEN),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_rainbow_road_chain_chomp_tongue),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_rainbow_road_chomp_body_lower_model3, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 4, 1, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPEndDisplayList(),
};

Vtx d_course_rainbow_road_chomp_upper_jaw_model[] = {
    { { { 181, -6, -490 }, 0, { 0, 0 }, { 0x2D, 0x05, 0x8A, 0x00 } } },
    { { { 223, 71, -469 }, 0, { 0, 0 }, { 0x2D, 0x05, 0x8A, 0x00 } } },
    { { { 281, -6, -451 }, 0, { 0, 0 }, { 0x2D, 0x05, 0x8A, 0x00 } } },
    { { { 281, -6, -451 }, 0, { 0, 0 }, { 0x31, 0x11, 0x8D, 0xFF } } },
    { { { 322, 105, -416 }, 0, { 0, 0 }, { 0x31, 0x11, 0x8D, 0xFF } } },
    { { { 399, -6, -401 }, 0, { 0, 0 }, { 0x31, 0x11, 0x8D, 0xFF } } },
    { { { 399, -6, -401 }, 0, { 0, 0 }, { 0x70, 0x24, 0xD1, 0xFF } } },
    { { { 375, 158, -330 }, 0, { 0, 0 }, { 0x70, 0x24, 0xD1, 0xFF } } },
    { { { 458, -6, -260 }, 0, { 0, 0 }, { 0x70, 0x24, 0xD1, 0xFF } } },
    { { { 458, -6, -260 }, 0, { 0, 0 }, { 0x73, 0x1A, 0xD2, 0xFF } } },
    { { { 454, 225, -138 }, 0, { 0, 0 }, { 0x73, 0x1A, 0xD2, 0xFF } } },
    { { { 563, -6, 0 }, 0, { 0, 0 }, { 0x73, 0x1A, 0xD2, 0xFF } } },
    { { { 563, -6, 0 }, 0, { 0, 0 }, { 0x73, 0x1A, 0x2E, 0xFF } } },
    { { { 454, 225, 138 }, 0, { 0, 0 }, { 0x73, 0x1A, 0x2E, 0xFF } } },
    { { { 458, -6, 260 }, 0, { 0, 0 }, { 0x73, 0x1A, 0x2E, 0xFF } } },
    { { { 458, -6, 260 }, 0, { 0, 0 }, { 0x70, 0x24, 0x2F, 0xFF } } },
    { { { 375, 158, 330 }, 0, { 0, 0 }, { 0x70, 0x24, 0x2F, 0x00 } } },
    { { { 399, -6, 401 }, 0, { 0, 0 }, { 0x70, 0x24, 0x2F, 0x00 } } },
    { { { 399, -6, 401 }, 0, { 0, 0 }, { 0x31, 0x11, 0x73, 0xFF } } },
    { { { 322, 105, 416 }, 0, { 0, 0 }, { 0x31, 0x11, 0x73, 0xFF } } },
    { { { 281, -6, 451 }, 0, { 0, 0 }, { 0x31, 0x11, 0x73, 0xFF } } },
    { { { 281, -6, 451 }, 0, { 0, 0 }, { 0x2D, 0x05, 0x76, 0xFF } } },
    { { { 223, 71, 469 }, 0, { 0, 0 }, { 0x2D, 0x05, 0x76, 0xFF } } },
    { { { 181, -6, 490 }, 0, { 0, 0 }, { 0x2D, 0x05, 0x76, 0xFF } } },
};

Gfx d_course_rainbow_road_dl_158C0[] = {
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_TEXTURE_GEN),
    gsDPLoadTextureBlock(d_course_rainbow_road_reflection_map_gold, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0,
                         G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_DECALRGB, G_CC_DECALRGB),
    gsSPTexture(0x07C0, 0x07C0, 0, G_TX_RENDERTILE, G_ON),
    gsSPVertex(d_course_rainbow_road_chomp_upper_jaw_model, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_TEXTURE_GEN),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsSPEndDisplayList(),
};

Vtx d_course_rainbow_road_chomp_body_upper_back_model1[] = {
    { { { 0, -577, 0 }, 0, { 0, 0 }, { 0x00, 0x81, 0x00, 0x00 } } },
    { { { -220, -533, 0 }, 0, { 0, 0 }, { 0xD0, 0x8B, 0x00, 0x00 } } },
    { { { -156, -533, -156 }, 0, { 0, 0 }, { 0xDE, 0x8B, 0xDE, 0x00 } } },
    { { { -408, -408, 0 }, 0, { 0, 0 }, { 0xA7, 0xA6, 0x00, 0xFF } } },
    { { { -288, -408, -288 }, 0, { 0, 0 }, { 0xC1, 0xA6, 0xC1, 0xFF } } },
    { { { -533, -220, 0 }, 0, { 0, 0 }, { 0x8B, 0xD0, 0x00, 0xFF } } },
    { { { -377, -220, -377 }, 0, { 0, 0 }, { 0xAE, 0xD0, 0xAE, 0xFF } } },
    { { { -577, 0, 0 }, 0, { 0, 0 }, { 0x81, 0x00, 0x00, 0xFF } } },
    { { { -408, 0, -408 }, 0, { 0, 0 }, { 0xA7, 0x00, 0xA7, 0xFF } } },
    { { { -408, 0, 408 }, 0, { 0, 0 }, { 0xA7, 0x00, 0x59, 0xFF } } },
    { { { -377, -220, 377 }, 0, { 0, 0 }, { 0xAE, 0xD0, 0x52, 0xFF } } },
    { { { -288, -408, 288 }, 0, { 0, 0 }, { 0xC1, 0xA6, 0x3F, 0xFF } } },
    { { { -156, -533, 156 }, 0, { 0, 0 }, { 0xDE, 0x8B, 0x22, 0xFF } } },
    { { { 0, -533, -220 }, 0, { 0, 0 }, { 0x00, 0x8B, 0xD0, 0xFF } } },
    { { { 0, -408, -408 }, 0, { 0, 0 }, { 0x00, 0xA6, 0xA7, 0xFF } } },
    { { { 0, -220, -533 }, 0, { 0, 0 }, { 0x00, 0xD1, 0x8B, 0xFF } } },
    { { { 0, 0, -577 }, 0, { 0, 0 }, { 0x12, 0xE5, 0x86, 0x00 } } },
    { { { 0, 0, 577 }, 0, { 0, 0 }, { 0x00, 0xE8, 0x7C, 0xFF } } },
    { { { 0, -220, 533 }, 0, { 0, 0 }, { 0x02, 0xCE, 0x74, 0xFF } } },
    { { { 0, -408, 408 }, 0, { 0, 0 }, { 0x03, 0xA7, 0x5A, 0xFF } } },
    { { { 0, -533, 220 }, 0, { 0, 0 }, { 0x00, 0x8B, 0x30, 0xFF } } },
    { { { 156, -533, -156 }, 0, { 0, 0 }, { 0x22, 0x8B, 0xDE, 0xFF } } },
    { { { 288, -408, -288 }, 0, { 0, 0 }, { 0x3F, 0xA8, 0xBF, 0x00 } } },
    { { { 367, -215, -367 }, 0, { 0, 0 }, { 0x52, 0xD0, 0xAD, 0xFF } } },
    { { { 408, 0, -408 }, 0, { 0, 0 }, { 0x61, 0xE2, 0xB5, 0xFF } } },
    { { { 408, 0, 408 }, 0, { 0, 0 }, { 0x4B, 0xE2, 0x61, 0xFF } } },
    { { { 367, -215, 367 }, 0, { 0, 0 }, { 0x53, 0xD0, 0x52, 0xFF } } },
    { { { 288, -408, 288 }, 0, { 0, 0 }, { 0x41, 0xA8, 0x3F, 0xFF } } },
    { { { 156, -533, 156 }, 0, { 0, 0 }, { 0x22, 0x8B, 0x22, 0xFF } } },
    { { { 220, -533, 0 }, 0, { 0, 0 }, { 0x30, 0x8B, 0x00, 0xFF } } },
    { { { 408, -408, 0 }, 0, { 0, 0 }, { 0x5A, 0xA7, 0xFD, 0xFF } } },
    { { { 533, -220, 0 }, 0, { 0, 0 }, { 0x75, 0xCF, 0x00, 0xFF } } },
};

Vtx d_course_rainbow_road_chomp_body_upper_back_model2[] = {
    { { { 408, 0, -408 }, 0, { 0, 0 }, { 0x61, 0xE2, 0xB5, 0xFF } } },
    { { { 577, 0, 0 }, 0, { 0, 0 }, { 0x7A, 0xE5, 0x12, 0xFF } } },
    { { { 533, -220, 0 }, 0, { 0, 0 }, { 0x75, 0xCF, 0x00, 0xFF } } },
    { { { 367, -215, -367 }, 0, { 0, 0 }, { 0x52, 0xD0, 0xAD, 0xFF } } },
    { { { 408, 0, 408 }, 0, { 0, 0 }, { 0x4B, 0xE2, 0x61, 0xFF } } },
    { { { 367, -215, 367 }, 0, { 0, 0 }, { 0x53, 0xD0, 0x52, 0xFF } } },
    { { { 288, -408, 288 }, 0, { 0, 0 }, { 0x41, 0xA8, 0x3F, 0xFF } } },
    { { { 408, -408, 0 }, 0, { 0, 0 }, { 0x5A, 0xA7, 0xFD, 0xFF } } },
    { { { 156, -533, 156 }, 0, { 0, 0 }, { 0x22, 0x8B, 0x22, 0x00 } } },
    { { { 220, -533, 0 }, 0, { 0, 0 }, { 0x30, 0x8B, 0x00, 0xFF } } },
    { { { 0, -577, 0 }, 0, { 0, 0 }, { 0x00, 0x81, 0x00, 0xFF } } },
};

Vtx d_course_rainbow_road_chomp_body_upper_back_model3[] = {
    { { { 0, 0, 582 }, 0, { 990, 380 }, { 0xB2, 0xB2, 0xB2, 0xFF } } },
    { { { 411, 0, -410 }, 0, { 118, 880 }, { 0xB2, 0xB2, 0xB2, 0xFF } } },
    { { { 0, 0, -581 }, 0, { -52, 472 }, { 0xB2, 0xB2, 0xB2, 0xFF } } },
    { { { 582, 0, 0 }, 0, { 496, 1020 }, { 0xB2, 0xB2, 0xB2, 0xFF } } },
    { { { 411, 0, 411 }, 0, { 856, 816 }, { 0xB2, 0xB2, 0xB2, 0xFF } } },
};

Gfx d_course_rainbow_road_dl_15C68[] = {
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_TEXTURE_GEN),
    gsDPLoadTextureBlock(d_course_rainbow_road_reflection_map_metal, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0,
                         G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_DECALRGB, G_CC_DECALRGB),
    gsSPTexture(0x07C0, 0x07C0, 0, G_TX_RENDERTILE, G_ON),
    gsSPVertex(d_course_rainbow_road_chomp_body_upper_back_model1, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(3, 2, 1, 0, 5, 6, 4, 0),
    gsSP2Triangles(5, 4, 3, 0, 7, 8, 6, 0),
    gsSP2Triangles(7, 6, 5, 0, 9, 7, 5, 0),
    gsSP2Triangles(9, 5, 10, 0, 10, 5, 3, 0),
    gsSP2Triangles(10, 3, 11, 0, 11, 3, 1, 0),
    gsSP2Triangles(11, 1, 12, 0, 0, 12, 1, 0),
    gsSP2Triangles(0, 2, 13, 0, 4, 14, 13, 0),
    gsSP2Triangles(4, 13, 2, 0, 6, 15, 14, 0),
    gsSP2Triangles(6, 14, 4, 0, 8, 16, 15, 0),
    gsSP2Triangles(8, 15, 6, 0, 17, 9, 10, 0),
    gsSP2Triangles(17, 10, 18, 0, 18, 10, 11, 0),
    gsSP2Triangles(18, 11, 19, 0, 19, 11, 12, 0),
    gsSP2Triangles(19, 12, 20, 0, 0, 20, 12, 0),
    gsSP2Triangles(0, 13, 21, 0, 14, 22, 21, 0),
    gsSP2Triangles(14, 21, 13, 0, 15, 23, 22, 0),
    gsSP2Triangles(15, 22, 14, 0, 16, 24, 23, 0),
    gsSP2Triangles(16, 23, 15, 0, 25, 17, 18, 0),
    gsSP2Triangles(25, 18, 26, 0, 26, 18, 19, 0),
    gsSP2Triangles(26, 19, 27, 0, 27, 19, 20, 0),
    gsSP2Triangles(27, 20, 28, 0, 0, 28, 20, 0),
    gsSP2Triangles(0, 21, 29, 0, 22, 30, 29, 0),
    gsSP2Triangles(22, 29, 21, 0, 23, 31, 30, 0),
    gsSP1Triangle(23, 30, 22, 0),
    gsSPVertex(d_course_rainbow_road_chomp_body_upper_back_model2, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(2, 5, 6, 0, 2, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP1Triangle(10, 9, 8, 0),
    gsSPClearGeometryMode(G_TEXTURE_GEN),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_rainbow_road_chain_chomp_tongue),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_rainbow_road_chomp_body_upper_back_model3, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(0, 4, 3, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPEndDisplayList(),
};

Vtx d_course_rainbow_road_chomp_eyes_model[] = {
    { { { 341, -287, 410 }, 0, { 990, 0 }, { 0x69, 0xE7, 0x41, 0xFF } } },
    { { { 505, -32, 246 }, 0, { 0, 990 }, { 0x69, 0xE7, 0x41, 0xFF } } },
    { { { 374, -49, 450 }, 0, { 990, 990 }, { 0x69, 0xE7, 0x41, 0xFF } } },
    { { { 341, -287, 410 }, 0, { 990, 0 }, { 0x69, 0xE7, 0x42, 0xFF } } },
    { { { 473, -270, 206 }, 0, { 0, 0 }, { 0x69, 0xE7, 0x42, 0xFF } } },
    { { { 505, -32, 246 }, 0, { 0, 990 }, { 0x69, 0xE7, 0x42, 0xFF } } },
    { { { 374, -49, -449 }, 0, { 990, 990 }, { 0x69, 0xE7, 0xBF, 0xFF } } },
    { { { 505, -32, -245 }, 0, { 0, 990 }, { 0x69, 0xE7, 0xBF, 0xFF } } },
    { { { 341, -287, -409 }, 0, { 990, 0 }, { 0x69, 0xE7, 0xBF, 0xFF } } },
    { { { 505, -32, -245 }, 0, { 0, 990 }, { 0x69, 0xE7, 0xBE, 0xFF } } },
    { { { 473, -270, -205 }, 0, { 0, 0 }, { 0x69, 0xE7, 0xBE, 0xFF } } },
    { { { 341, -287, -409 }, 0, { 990, 0 }, { 0x69, 0xE7, 0xBE, 0xFF } } },
};

Gfx d_course_rainbow_road_dl_15F18[] = {
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsSPClearGeometryMode(G_SHADING_SMOOTH),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_rainbow_road_chain_chomp_eye),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPLight(&d_course_rainbow_road_light1.l, 1),
    gsSPLight(&d_course_rainbow_road_light1.a, 2),
    gsSPVertex(d_course_rainbow_road_chomp_eyes_model, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPEndDisplayList(),
};

// 0x06015FC8
s16 d_rainbow_road_chomp_angle[] = {
    0x0000, 0x3fff, 0x9602, 0x9483, 0x90d2, 0x8c1b, 0x878e, 0x845a, 0x83ac, 0x88ae, 0x9264, 0x9bc5, 0x9fc9,
    0x9c7c, 0x950f, 0x8c27, 0x846d, 0x808a, 0x8348, 0x8abb, 0x9273, 0x9602, 0x6fb2, 0x70c6, 0x7369, 0x76ba,
    0x79d6, 0x7bdd, 0x7beb, 0x7752, 0x6ed7, 0x66ca, 0x6379, 0x6692, 0x6d54, 0x756c, 0x7c87, 0x8054, 0x7e7c,
    0x78b0, 0x728d, 0x6fb2, 0x9602, 0x9483, 0x90d2, 0x8c1b, 0x878e, 0x845a, 0x83ac, 0x88ae, 0x9264, 0x9bc5,
    0x9fc9, 0x9c7c, 0x950f, 0x8c27, 0x846d, 0x808a, 0x8348, 0x8abb, 0x9273, 0x9602, 0x6fb2, 0x70c6, 0x7369,
    0x76ba, 0x79d6, 0x7bdd, 0x7beb, 0x7752, 0x6ed7, 0x66ca, 0x6379, 0x6692, 0x6d54, 0x756c, 0x7c87, 0x8054,
    0x7e7c, 0x78b0, 0x728d, 0x6fb2, 0x6fb2, 0x70c6, 0x7369, 0x76ba, 0x79d6, 0x7bdd, 0x7beb, 0x7752, 0x6ed7,
    0x66ca, 0x6379, 0x6692, 0x6d54, 0x756c, 0x7c87, 0x8054, 0x7e7c, 0x78b0, 0x728d, 0x6fb2, 0x3fff, 0x0000,
};

// 0x06016098
AnimationLimbVector d_rainbow_road_chomp_animation_matrix[] = {
    {
        { 0x0001, 0x0000 },
        { 0x0001, 0x0000 },
        { 0x0001, 0x0000 },
    },
    {
        { 0x0001, 0x0000 },
        { 0x0001, 0x0001 },
        { 0x0001, 0x0000 },
    },
    {
        { 0x0001, 0x0000 },
        { 0x0001, 0x0000 },
        { 0x0014, 0x002a },
    },
    {
        { 0x0001, 0x0000 },
        { 0x0001, 0x0000 },
        { 0x0014, 0x0002 },
    },
    {
        { 0x0001, 0x0000 },
        { 0x0001, 0x0066 },
        { 0x0001, 0x0000 },
    },
    {
        { 0x0001, 0x0000 },
        { 0x0001, 0x0000 },
        { 0x0014, 0x0052 },
    },
    {
        { 0x0001, 0x0000 },
        { 0x0001, 0x0000 },
        { 0x0014, 0x003e },
    },
    {
        { 0x0001, 0x0000 },
        { 0x0001, 0x0000 },
        { 0x0014, 0x0016 },
    },
};

// 0x060160F8
Animation d_rainbow_road_unk2 = {
    0x00010000, 0x00000000, 0x0014, 0x0007, d_rainbow_road_chomp_angle, d_rainbow_road_chomp_animation_matrix,
};

// 0x0601610C
Animation* d_rainbow_road_unk3[] = {
    &d_rainbow_road_unk2,
};

// 0x06016110
u32 d_rainbow_road_unk4[] = {
    ANIMATION_DISABLE_AUTOMATIC_POP,

    ANIMATION_ADD_POS(0x00000000, 0x0000023a, 0x00000000),

    ANIMATION_DISABLE_AUTOMATIC_POP,

    ANIMATION_RENDER_MODEL(d_course_rainbow_road_dl_15550),

    ANIMATION_RENDER_MODEL(d_course_rainbow_road_dl_151A8),

    ANIMATION_POP_MATRIX,

    ANIMATION_ADD_POS(0x00000000, 0x0000023a, 0x00000000),

    ANIMATION_DISABLE_AUTOMATIC_POP,

    ANIMATION_RENDER_MODEL(d_course_rainbow_road_dl_15C68),

    ANIMATION_RENDER_MODEL(d_course_rainbow_road_dl_158C0),

    ANIMATION_RENDER_MODEL(d_course_rainbow_road_dl_15F18),

    ANIMATION_POP_MATRIX,

    ANIMATION_POP_MATRIX,

    ANIMATION_STOP,
};

// No idea what this stuff is
u32 d_rainbow_road_unk5[] = {
    0x00000000, 0x00000000, 0x00000002, 0x00000000, 0x00000002,
};

// unk double. Likely apart of above data.
// u64 d_course_rainbow_road_unk_double3 = 2;

Gfx d_course_rainbow_road_dl_16220[] = {
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1FB8),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPNoOp(),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetTexturePersp(G_TP_PERSP),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, gRRTextureStarOutline),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1318),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 6, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, gRRTextureRainbow),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 2047, 128),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_1E18),
    gsSPDisplayList(d_course_rainbow_road_packed_dl_2068),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

struct ActorSpawnData d_course_rainbow_road_item_box_spawns[] = {
    { { 250, 999, -5279 }, { 0 } },  { { 256, 999, -5248 }, { 0 } },  { { 279, 999, -5241 }, { 0 } },
    { { 284, 999, -5214 }, { 0 } },  { { -89, 964, -3421 }, { 0 } },  { { -79, 964, -3398 }, { 0 } },
    { { -69, 964, -3383 }, { 0 } },  { { -61, 964, -3362 }, { 0 } },  { { -1660, 506, -601 }, { 1 } },
    { { -1699, 506, -587 }, { 1 } }, { { -1697, 506, -638 }, { 1 } }, { { -1732, 507, -560 }, { 1 } },
    { { -1781, 712, 797 }, { 1 } },  { { -1764, 712, 806 }, { 1 } },  { { -1737, 712, 815 }, { 1 } },
    { { -1715, 712, 824 }, { 1 } },  { { -2022, 743, 2338 }, { 2 } }, { { -2006, 743, 2369 }, { 2 } },
    { { -1982, 743, 2377 }, { 2 } }, { { -1983, 743, 2407 }, { 2 } }, { { 1463, 785, 1982 }, { 2 } },
    { { 1466, 785, 1956 }, { 2 } },  { { 1473, 785, 1928 }, { 2 } },  { { 1460, 785, 2003 }, { 2 } },
    { { -124, 931, 2735 }, { 3 } },  { { -112, 931, 2711 }, { 3 } },  { { -113, 931, 2667 }, { 3 } },
    { { -100, 930, 2689 }, { 3 } },  { { 326, 1348, 2146 }, { 3 } },  { { 348, 1349, 2135 }, { 3 } },
    { { 371, 1349, 2135 }, { 3 } },  { { 397, 1349, 2128 }, { 3 } },  { { -32768, 0, 0 }, { 0 } },
};

TrackSections d_course_rainbow_road_addr[] = {
    { d_course_rainbow_road_packed_dl_20C0, ASPHALT, 255, 0x0000 },
    { d_course_rainbow_road_packed_dl_1850, ASPHALT, 1, 0x0000 },
    { d_course_rainbow_road_packed_dl_1758, ASPHALT, 2, 0x0000 },
    { d_course_rainbow_road_packed_dl_1698, ASPHALT, 3, 0x0000 },
    { d_course_rainbow_road_packed_dl_15F8, ASPHALT, 4, 0x0000 },
    { d_course_rainbow_road_packed_dl_1528, ASPHALT, 5, 0x0000 },
    { d_course_rainbow_road_packed_dl_13A0, ASPHALT, 6, 0x0000 },
    { d_course_rainbow_road_packed_dl_1978, ASPHALT, 7, 0x0000 },
    { d_course_rainbow_road_packed_dl_1D30, ASPHALT, 8, 0x0000 },
    { d_course_rainbow_road_packed_dl_1C70, ASPHALT, 9, 0x0000 },
    { d_course_rainbow_road_packed_dl_1BC0, ASPHALT, 10, 0x0000 },
    { d_course_rainbow_road_packed_dl_1B28, ASPHALT, 11, 0x0000 },
    { d_course_rainbow_road_packed_dl_1A20, ASPHALT, 12, 0x0000 },
    { d_course_rainbow_road_packed_dl_1318, RAMP, 255, 0x0000 },
    { 0x00000000, 0, 0, 0x0000 },
};

Gfx* d_course_rainbow_road_dl_list[] = {
    d_course_rainbow_road_dl_D8,   d_course_rainbow_road_dl_210,  d_course_rainbow_road_dl_178,
    d_course_rainbow_road_dl_288,  d_course_rainbow_road_dl_338,  d_course_rainbow_road_dl_4A0,
    d_course_rainbow_road_dl_3D0,  d_course_rainbow_road_dl_528,  d_course_rainbow_road_dl_5F8,
    d_course_rainbow_road_dl_6E0,  d_course_rainbow_road_dl_658,  d_course_rainbow_road_dl_730,
    d_course_rainbow_road_dl_7A8,  d_course_rainbow_road_dl_880,  d_course_rainbow_road_dl_7F8,
    d_course_rainbow_road_dl_8E0,  d_course_rainbow_road_dl_958,  d_course_rainbow_road_dl_A70,
    d_course_rainbow_road_dl_9C8,  d_course_rainbow_road_dl_B08,  d_course_rainbow_road_dl_B70,
    d_course_rainbow_road_dl_C70,  d_course_rainbow_road_dl_BF0,  d_course_rainbow_road_dl_D10,
    d_course_rainbow_road_dl_D80,  d_course_rainbow_road_dl_E98,  d_course_rainbow_road_dl_E08,
    d_course_rainbow_road_dl_F50,  d_course_rainbow_road_dl_FB0,  d_course_rainbow_road_dl_10A8,
    d_course_rainbow_road_dl_1030, d_course_rainbow_road_dl_1150, d_course_rainbow_road_dl_1198,
    d_course_rainbow_road_dl_12A0, d_course_rainbow_road_dl_1228, d_course_rainbow_road_dl_1340,
    d_course_rainbow_road_dl_13F0, d_course_rainbow_road_dl_14E8, d_course_rainbow_road_dl_1488,
    d_course_rainbow_road_dl_1530, d_course_rainbow_road_dl_15D0, d_course_rainbow_road_dl_16C0,
    d_course_rainbow_road_dl_1678, d_course_rainbow_road_dl_1738, d_course_rainbow_road_dl_17D0,
    d_course_rainbow_road_dl_18D0, d_course_rainbow_road_dl_1878, d_course_rainbow_road_dl_1948,
};

#ifdef VERSION_JP  /* VERSION_JP path order: JP puts the paths last */
TrackPathPoint d_course_rainbow_road_unknown_path[] = {
#include "courses/rainbow_road/d_course_rainbow_road_unknown_path.inc.c"
};
TrackPathPoint d_course_rainbow_road_track_path[] = {
#include "courses/rainbow_road/d_course_rainbow_road_track_path.inc.c"
};
#endif
