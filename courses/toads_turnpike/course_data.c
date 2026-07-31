//! @todo Replace addresses with variables
#include <ultra64.h>
#include <macros.h>
#include <PR/gbi.h>
#include <actor_types.h>
#include <path.h>
#include <course.h>
#include <mk64.h>

#include "course_displaylists.inc.h"
#include "course_textures.linkonly.h"

Gfx d_course_toads_turnpike_dl_0[] = {
    gsSPClearGeometryMode(G_CULL_BACK),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_PASS2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 6, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, gTTTexture64FE68),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 2047, 128),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_60[] = {
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_PASS2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_80[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_618),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_768),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_7E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_B48),
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_32A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_33A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3478),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3548),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_38E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_44C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_45B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4678),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4738),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4BE0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5880),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5C80),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6110),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1A58),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1BB8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1CB8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1E30),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_158[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_618),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6E8),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_B48),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_AA8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_32A0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_33A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_38E8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_44C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_45B8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4BE0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5880), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6030), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6110),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1A58), gsSPDisplayList(d_course_toads_turnpike_packed_dl_2328),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_24C0), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1F8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_618),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_768),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_B48),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_AA8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_32A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_33A8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3478),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3548),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_38E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_44C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_45B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4BE0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5880),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5C80),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6030),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6110),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1A58),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1BB8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1CB8),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2328),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_24C0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_2D0[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_618),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6E8),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_768),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_B48),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_AA8),
#endif
    gsSPDisplayList(d_course_toads_turnpike_dl_60),          gsSPDisplayList(d_course_toads_turnpike_packed_dl_32A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_33A8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3478),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_38E8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_44C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_45B8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4BE0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5880), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5C80),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6030),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6110),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1A58), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_380[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_618),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_768),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_7E8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_32A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_33A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3478),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3548),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_44C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_45B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4678),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4738),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5880),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5C80),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1A58),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1BB8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1CB8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1E30),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_438[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_618),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6E8),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_768),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_B48),  gsSPDisplayList(d_course_toads_turnpike_dl_60),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_32A0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_33A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3478), gsSPDisplayList(d_course_toads_turnpike_packed_dl_38E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_44C0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_45B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4678), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4BE0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5880), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6110),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1A58), gsSPDisplayList(d_course_toads_turnpike_packed_dl_1BB8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_24C0), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_4E8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_618),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6E8),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_768),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_B48),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_7E8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_32A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_33A8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3478),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3548),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_38E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_44C0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_45B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4678), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4BE0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5880), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5C80),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6110), gsSPDisplayList(d_course_toads_turnpike_packed_dl_1A58),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1BB8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_1CB8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_24C0), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_5B8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_618),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6E8),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_768),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#else
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_B48),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_7E8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_32A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_33A8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3478),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_44C0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_45B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4678), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5880),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5C80),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6110),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1A58), gsSPDisplayList(d_course_toads_turnpike_packed_dl_1BB8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1CB8), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_668[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_6E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_768),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_7E8),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_540),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_33A8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3478),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3548), gsSPDisplayList(d_course_toads_turnpike_packed_dl_31E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_45B8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4678),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4738), gsSPDisplayList(d_course_toads_turnpike_packed_dl_43A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5C80), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5770),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1CB8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_1E30),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_18C0), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_718[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_618),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6E8),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_768),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_7E8),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_B48),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_32A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_33A8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3478),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3548), gsSPDisplayList(d_course_toads_turnpike_packed_dl_44C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_45B8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4678),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4738), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5880),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5C80), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6110),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1A58), gsSPDisplayList(d_course_toads_turnpike_packed_dl_1BB8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1CB8), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_7D8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_618),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6E8),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_768),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_7E8),  gsSPDisplayList(d_course_toads_turnpike_dl_60),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_33A8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3478),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3548), gsSPDisplayList(d_course_toads_turnpike_packed_dl_45B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4678), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4738),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5880), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5C80),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6110),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1BB8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1CB8), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_878[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_618),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6E8),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_768),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_7E8),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_540),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_33A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3478), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3548),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_31E8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_45B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4678), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4738),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_43A8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5880),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5C80), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5770),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6110),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1BB8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1CB8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_1E30),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_18C0), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_948[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_768),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_7E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_540),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_160),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3478),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3548),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_31E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4678),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4738),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_43A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5C80),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5770),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5270),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1CB8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1E30),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_18C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1078),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_9F0[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_768),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_7E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_540),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_618),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_B48),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_33A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3478),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3548),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_31E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_45B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4678),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4738),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_43A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5880),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5C80),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5770),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6110),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1A58),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1BB8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1CB8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1E30),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_AC8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_6E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_768),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_7E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_540),  gsSPDisplayList(d_course_toads_turnpike_dl_60),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_33A8),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3478),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3548), gsSPDisplayList(d_course_toads_turnpike_packed_dl_31E8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_45B8),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4678),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4738), gsSPDisplayList(d_course_toads_turnpike_packed_dl_43A8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5880),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5C80),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5770),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6110),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1BB8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_1CB8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1E30), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_B88[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_768),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_7E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_540),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_160),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_33A8),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3478),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3548),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_31E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2E40),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_45B8),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4678),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4738),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_43A8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5880),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5C80),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5770),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5270),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6110),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1BB8),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1CB8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1E30),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_18C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1078),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_C70[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_7E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_540),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_160),
    gsSPDisplayList(d_course_toads_turnpike_dl_60),          gsSPDisplayList(d_course_toads_turnpike_packed_dl_3548),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_31E8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_2E40),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4738), gsSPDisplayList(d_course_toads_turnpike_packed_dl_43A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E90), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5C80),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5770), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5270),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5360),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_18C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1078), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_D00[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_7E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_540),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_160),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_768),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_218),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3478),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3548), gsSPDisplayList(d_course_toads_turnpike_packed_dl_31E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2E40), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4738),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_43A8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E90),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5C80), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5770),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5270), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5360),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1CB8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_1E30),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_18C0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_1078),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_11B8), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_DD0[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_7E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_540),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_160),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_768),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3548), gsSPDisplayList(d_course_toads_turnpike_packed_dl_31E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2E40), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4738),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_43A8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E90),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5C80),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5770), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5270),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1CB8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_1E30),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_18C0), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_E70[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_7E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_540),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_160),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_218),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3548),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_31E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2E40),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2EE0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4738),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_43A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E90),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5C80),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5770),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5270),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5360),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_18C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1078),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_11B8),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_F18[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_540),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_160),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_218),
    gsSPDisplayList(d_course_toads_turnpike_dl_60),          gsSPDisplayList(d_course_toads_turnpike_packed_dl_31E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2E40), gsSPDisplayList(d_course_toads_turnpike_packed_dl_2EE0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_43A8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E90),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3F80), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5770),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5270), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5360),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_18C0),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1078),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_11B8), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_FA8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_540),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_160),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_218),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_7E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_300),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3548),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_31E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2E40),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2EE0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2FA0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_43A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E90),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3F80),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5C80),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5770),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5270),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5360),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5480),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1E30),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_18C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1078),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_11B8),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1070[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_540),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_160),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_218),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_7E8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3548),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_31E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2E40),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2EE0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_43A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E90),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3F80),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5C80),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5770),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5270),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5360),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1E30),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_18C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1078),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1118[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_540),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_160),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_218),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_300),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_31E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2E40),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2EE0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2FA0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_43A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E90),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3F80),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5770),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5270),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5360),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5480),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_18C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1078),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_11B8),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_11C0[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_160),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_218),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_300),
    gsSPDisplayList(d_course_toads_turnpike_dl_60),          gsSPDisplayList(d_course_toads_turnpike_packed_dl_2E40),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2EE0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_2FA0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E90), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3F80),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_40A8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5770),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5270), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5360),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5480), gsSPDisplayList(d_course_toads_turnpike_packed_dl_1078),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_11B8), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1250[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_160),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_218),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_300),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2E40), gsSPDisplayList(d_course_toads_turnpike_packed_dl_2EE0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2FA0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3060),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E90), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3F80),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_40A8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5770),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5270), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5360),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5480), gsSPDisplayList(d_course_toads_turnpike_packed_dl_55A0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_18C0),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1078),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_11B8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_13B0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_15E8), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1310[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_540),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_160),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_218),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_300),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_31E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2E40), gsSPDisplayList(d_course_toads_turnpike_packed_dl_2EE0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2FA0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_43A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E90), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3F80),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_40A8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5770),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5270), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5360),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5480), gsSPDisplayList(d_course_toads_turnpike_packed_dl_55A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_18C0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_1078),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_11B8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_13B0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_15E8), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_13E0[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_160),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_218),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_300),
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2E40),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2EE0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2FA0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E90),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3F80),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_40A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5270),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5360),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5480),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_11B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_13B0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1468[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_218),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_300),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E8),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_160),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2E40),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2EE0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2FA0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3060),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3F80),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_40A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_41D0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5270),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5360),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5480),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_55A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1078),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_11B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_13B0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1510[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_218),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_300),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E8),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4C0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2EE0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2FA0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3060),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3F80),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_40A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_41D0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5360),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5480),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_55A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_56B0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_13B0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_15E8),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_15A8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_218),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_300),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E8),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_160),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4C0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2E40),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2EE0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_2FA0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3060), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3F80),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_40A8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_41D0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5270),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5360), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5480),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_55A0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_56B0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1078), gsSPDisplayList(d_course_toads_turnpike_packed_dl_11B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_13B0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_15E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6908), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1678[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_218),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_300),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E8),
    gsSPDisplayList(d_course_toads_turnpike_dl_60),          gsSPDisplayList(d_course_toads_turnpike_packed_dl_2EE0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2FA0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3060),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3F80), gsSPDisplayList(d_course_toads_turnpike_packed_dl_40A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_41D0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5360),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5480), gsSPDisplayList(d_course_toads_turnpike_packed_dl_55A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_11B8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_13B0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_15E8), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1708[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_300),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E8),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_4C0),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_218),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2EE0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_2FA0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3060), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3118),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3AD0),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_40A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_41D0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_42E8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4E30),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5360),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5480), gsSPDisplayList(d_course_toads_turnpike_packed_dl_55A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_56B0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5D90),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6348),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_11B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_13B0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_15E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1780), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6908),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6848), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_17F8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_300),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4C0),
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2FA0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3060),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3118),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3AD0),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_40A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_41D0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_42E8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4E30),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5480),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_55A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_56B0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5D90),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6348),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_15E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1780),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6908),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6788),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_18C0[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_300),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E8),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_4C0),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_8C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_D08),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2FA0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3060), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3118),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3638), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3AD0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_40A8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_41D0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_42E8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4850),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4E30), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5480),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_55A0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_56B0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5D90), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6348),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_13B0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_15E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1780), gsSPDisplayList(d_course_toads_turnpike_packed_dl_1F70),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6908), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6848),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6788), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_19C0[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_300),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E8),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_4C0),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_218),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2FA0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3060),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3118), gsSPDisplayList(d_course_toads_turnpike_packed_dl_40A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_41D0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_42E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5360), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5480),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_55A0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_56B0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_13B0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_15E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1780), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1A60[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4C0),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_8C0),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_300),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_D08),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2FA0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3060), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3118),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3638), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3AD0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_41D0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_42E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4850),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4E30),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5480), gsSPDisplayList(d_course_toads_turnpike_packed_dl_55A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_56B0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5D90),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6348), gsSPDisplayList(d_course_toads_turnpike_packed_dl_13B0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_15E8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_1780),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1F70), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6908),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6848),
#else
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6788),
#endif
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1B50[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4C0),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_8C0),
    gsSPDisplayList(d_course_toads_turnpike_dl_60),          gsSPDisplayList(d_course_toads_turnpike_packed_dl_3060),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3118), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3638),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3AD0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_41D0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_42E8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4850),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4E30), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_55A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_56B0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5D90),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6348), gsSPDisplayList(d_course_toads_turnpike_packed_dl_15E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1780), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6908),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6788), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1C10[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_8C0),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_D08),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3060),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3118),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3638),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3AD0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3B58),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_41D0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_42E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4850),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4E30),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4EF0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_55A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_56B0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5D90),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6348),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6408),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_64C8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1780),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1F70),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2798),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_28D8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_29B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6908),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6848),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6788),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1D18[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_8C0),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_300),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2FA0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3060),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3118),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3638),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_41D0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_42E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4850),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5480),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_55A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_56B0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5D90),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_13B0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_15E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1780),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1DC0[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_4C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_8C0),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_D08),
    gsSPDisplayList(d_course_toads_turnpike_dl_60),          gsSPDisplayList(d_course_toads_turnpike_packed_dl_3118),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3638), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3AD0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_42E8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4850),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4E30), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_55A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_56B0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5D90),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6348), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6408),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1780), gsSPDisplayList(d_course_toads_turnpike_packed_dl_1F70),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2798), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6908),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6848), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1E80[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_4C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_8C0),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_D08),
    gsSPDisplayList(d_course_toads_turnpike_dl_60),          gsSPDisplayList(d_course_toads_turnpike_packed_dl_3118),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3638), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3AD0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_42E8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4850),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4E30), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_55A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_56B0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5D90),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6348), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6408),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1780), gsSPDisplayList(d_course_toads_turnpike_packed_dl_1F70),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2798), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6908),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6788), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1F40[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_4C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_8C0),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_D08),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_D88),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3118), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3638),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3AD0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3B58),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_42E8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4850),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4E30), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4EF0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_56B0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5D90),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6348), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6408),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_64C8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_1780),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1F70), gsSPDisplayList(d_course_toads_turnpike_packed_dl_2798),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_28D8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_29B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6908), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6848),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6788), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_2030[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_8C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_D08),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3E8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3118),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3638),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3AD0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_42E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4850),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4E30),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_55A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_56B0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5D90),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6348),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_15E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1780),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1F70),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6908),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6848),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6788),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_20F8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_4C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_8C0),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_D08),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_D88),  gsSPDisplayList(d_course_toads_turnpike_dl_60),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3118), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3638),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3AD0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3B58),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_42E8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4850),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4E30), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4EF0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_56B0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5D90),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6348), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6408),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_64C8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_1F70),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2798), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6908),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6848), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_21C8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_4C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_8C0),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_D08),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_D88),  gsSPDisplayList(d_course_toads_turnpike_dl_60),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3118), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3638),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3AD0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3B58),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_42E8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4850),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4E30), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4EF0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_56B0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5D90),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6348), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6408),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_64C8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_1780),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1F70), gsSPDisplayList(d_course_toads_turnpike_packed_dl_2798),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_28D8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6908),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6788), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_22A8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_8C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_D08),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_D88),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_E08),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3638), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3AD0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3B58), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4850),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4E30), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4EF0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5D90), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6348),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6408), gsSPDisplayList(d_course_toads_turnpike_packed_dl_64C8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_65B8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_2798),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_28D8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_29B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2AF8), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_2358[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_8C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_D08),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_D88),
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3118),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3638),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3AD0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3B58),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_42E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4850),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4E30),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4EF0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_55A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_56B0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5D90),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6348),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6408),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_15E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1780),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1F70),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2798),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6908),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6848),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6788),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_2440[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_D08),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_D88),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_E08),
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3118),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3638),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3AD0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3B58), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3C28),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_42E8),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4850),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4E30), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4EF0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4FB0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_56B0),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5D90), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6348),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6408), gsSPDisplayList(d_course_toads_turnpike_packed_dl_64C8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_65B8),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2798),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_28D8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_29B8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2AF8),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6908),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6848), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_2530[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_D08),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_D88),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_E08),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_EC0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3118),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3638),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3AD0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3B58),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3C28),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3D00),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_42E8),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4850),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4E30),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4EF0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4FB0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_56B0),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5D90),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6348),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6408),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_64C8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_65B8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2798),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_28D8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_29B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6908),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6788),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_2628[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_D08),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_D88),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_E08),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_EC0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3AD0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3B58),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3C28), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3D00),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4E30), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4EF0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4FB0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6348),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6408), gsSPDisplayList(d_course_toads_turnpike_packed_dl_64C8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_65B8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_2798),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_28D8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_29B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2AF8), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_26D8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_D08),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_D88),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_E08),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_8C0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3118),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3638),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3AD0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3B58),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3C28),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_42E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4850),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4E30),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4EF0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4FB0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_56B0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5D90),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6348),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6408),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_64C8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1F70),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2798),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_28D8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6908),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6848),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6788),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_27D0[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_D88),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_E08),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_EC0),
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3118),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3B58),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3C28),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3D00),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_42E8),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4EF0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4FB0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_50A0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_56B0),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6348),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6408),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_64C8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_65B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2798),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_28D8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_29B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2AF8),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_2898[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_D88),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_E08),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_EC0),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_C30),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3B58),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3C28),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3D00),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_39A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4EF0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4FB0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_50A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6348),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6408),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_64C8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_65B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6230),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_28D8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_29B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2AF8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6908),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_2960[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_D88),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_E08),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_EC0),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_C30),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3B58), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3C28),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3D00), gsSPDisplayList(d_course_toads_turnpike_packed_dl_39A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4EF0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4FB0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_50A0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6408),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_64C8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_65B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6230), gsSPDisplayList(d_course_toads_turnpike_packed_dl_29B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2AF8), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_2A00[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_D88),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_E08),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_EC0),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_D08),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3118), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3AD0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3B58), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3C28),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3D00), gsSPDisplayList(d_course_toads_turnpike_packed_dl_42E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4E30), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4EF0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4FB0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_50A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_56B0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5D90),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6348), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6408),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_64C8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_65B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1F70), gsSPDisplayList(d_course_toads_turnpike_packed_dl_2798),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_28D8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_29B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6908), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_2AF0[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_E08),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_EC0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_C30),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_D88),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3C28),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3D00),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_39A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4FB0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_50A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4D10),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6408),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_64C8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_65B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6230),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_29B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2AF8),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_2B88[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_E08),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_EC0),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_C30),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_940),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3C28), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3D00),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_39A8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_36C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4FB0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_50A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4D10), gsSPDisplayList(d_course_toads_turnpike_packed_dl_64C8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_65B8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6230),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5E50), gsSPDisplayList(d_course_toads_turnpike_packed_dl_29B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2AF8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_2600),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2050), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_2C38[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_E08),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_EC0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_C30),
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3C28),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3D00),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_39A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4FB0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_50A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4D10),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_64C8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_65B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6230),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2AF8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2600),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_2CC0[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_D88),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_E08),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_EC0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_C30),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_D88),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_940),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3B58),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3C28),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3D00),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_39A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4EF0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4FB0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_50A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4D10),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6348),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6408),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_64C8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_65B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6230),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5E50),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2798),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_28D8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_29B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2AF8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2600),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2050),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6908),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_2DB8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_EC0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_C30),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_940),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_E08),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3D00),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_39A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_36C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_50A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4D10),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4910),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_64C8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_65B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6230),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5E50),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2AF8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2600),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_2E50[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_EC0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_C30),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_940),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_A28),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3D00), gsSPDisplayList(d_course_toads_turnpike_packed_dl_39A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_36C0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3780),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_50A0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4D10),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4910), gsSPDisplayList(d_course_toads_turnpike_packed_dl_65B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6230), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5E50),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5F78), gsSPDisplayList(d_course_toads_turnpike_packed_dl_2600),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2050), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_2EF0[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_EC0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_C30),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_940),
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3D00),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_39A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_36C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_50A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4D10),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4910),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_65B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6230),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5E50),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2AF8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2600),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_2F78[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_EC0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_C30),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_940),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_E08),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_A28),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3D00),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_39A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_36C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3780),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_50A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4D10),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4910),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_64C8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_65B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6230),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5E50),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5F78),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2AF8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2600),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2050),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_3030[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_C30),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_940),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_A28),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_EC0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_AA8),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_39A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_36C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3780),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3850),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4D10),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4910),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4A40),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_65B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6230),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5E50),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5F78),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6030),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6110),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2AF8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2600),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2050),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_21E8),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_30F8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_C30),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_940),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_A28),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_AA8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_39A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_36C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3780),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4D10),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4910),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4A40),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6230),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5E50),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5F78),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6030),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2050),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_21E8),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_3190[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_C30),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_940),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_A28),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_EC0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_39A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_36C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3780),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4D10),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4910),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4A40),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_65B8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6230),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5E50),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5F78),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2600),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2050),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_3228[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_C30),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_940),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_A28),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_AA8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_B48),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_39A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_36C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3780),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3850),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4D10),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4910),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4A40),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4B00),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6230),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5E50),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5F78),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6030),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6110),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2600),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2050),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_21E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2328),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_32F0[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_940),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_A28),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_AA8),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_C30),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_B48),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_36C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3780), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3850),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4910), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4A40),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4B00), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6230),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5E50), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5F78),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6030), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6110),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2050), gsSPDisplayList(d_course_toads_turnpike_packed_dl_21E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2328), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_33A0[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_940),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_A28),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_AA8),
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_36C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3780),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3850),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4910),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4A40),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4B00),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5E50),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5F78),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6030),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6110),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2050),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_21E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2328),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_3438[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_940),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_A28),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_AA8),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_C30),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_36C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3780),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3850),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4910),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4A40),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4B00),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6230),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5E50),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5F78),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6030),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2050),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_21E8),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_34D0[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_940),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_A28),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_AA8),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_B48),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_36C0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3780),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3850), gsSPDisplayList(d_course_toads_turnpike_packed_dl_38E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4910), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4A40),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4B00), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5E50),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5F78), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6030),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6110), gsSPDisplayList(d_course_toads_turnpike_packed_dl_21E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2328), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_3570[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_A28),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_AA8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_B48),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_618),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3780),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3850),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_38E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4A40),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4B00),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4BE0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5880),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5E50),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5F78),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6030),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6110),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_21E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2328),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_24C0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_3618[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_A28),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_AA8),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_B48),
    gsSPDisplayList(d_course_toads_turnpike_dl_60),          gsSPDisplayList(d_course_toads_turnpike_packed_dl_3780),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3850), gsSPDisplayList(d_course_toads_turnpike_packed_dl_38E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4A40), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4B00),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4BE0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5E50),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5F78), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6030),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6110), gsSPDisplayList(d_course_toads_turnpike_packed_dl_21E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2328), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_36A8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_940),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_A28),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_AA8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_B48),  gsSPDisplayList(d_course_toads_turnpike_dl_60),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_36C0), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3780),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3850), gsSPDisplayList(d_course_toads_turnpike_packed_dl_38E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4910), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4A40),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4B00), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4BE0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5E50), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5F78),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6030), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6110),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2050), gsSPDisplayList(d_course_toads_turnpike_packed_dl_21E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2328), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_3758[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_A28),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_AA8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_B48),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_618),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3780),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3850),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_38E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4A40),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4B00),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4BE0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5880),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5F78),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6030),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6110),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2328),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_24C0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_37F0[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_618),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6E8),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_AA8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_B48),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_768),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_7E8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_A28),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_32A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_33A8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3478),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3780),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3850),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_38E8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_44C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_45B8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4678),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4B00), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4BE0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5880), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5C80),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5E50),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5F78),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6030), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6110),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1A58), gsSPDisplayList(d_course_toads_turnpike_packed_dl_1BB8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1CB8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_1E30),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_21E8),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2328),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_24C0), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_3910[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_618),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_AA8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_B48),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_A28),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_32A0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3780),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3850),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_38E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_44C0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4A40),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4B00),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4BE0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5880),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5E50),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5F78),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6030),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6110),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_21E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2328),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_24C0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_39C8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),           gsSPDisplayList(d_course_toads_turnpike_packed_dl_618),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6E8),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_AA8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_B48),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#else
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_768),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_940),  gsSPDisplayList(d_course_toads_turnpike_packed_dl_A28),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_32A0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_33A8),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3478),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3780), gsSPDisplayList(d_course_toads_turnpike_packed_dl_3850),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_38E8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_44C0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_45B8),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4A40),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4B00), gsSPDisplayList(d_course_toads_turnpike_packed_dl_4BE0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5880),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5AE8),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5C80),
#endif
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5E50), gsSPDisplayList(d_course_toads_turnpike_packed_dl_5F78),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6030), gsSPDisplayList(d_course_toads_turnpike_packed_dl_6110),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1A58), gsSPDisplayList(d_course_toads_turnpike_packed_dl_2050),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_21E8), gsSPDisplayList(d_course_toads_turnpike_packed_dl_2328),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_24C0), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_3AD8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_618),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_AA8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_B48),
    gsSPDisplayList(d_course_toads_turnpike_dl_60),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_32A0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_33A8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3850),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_38E8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_44C0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4B00),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_4BE0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5880),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_5958),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6030),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6110),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_1A58),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2328),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_24C0),
    gsSPEndDisplayList(),
};

// 0x3B80
#ifndef VERSION_JP  /* VERSION_JP path order: moved to end of file */
TrackPathPoint d_course_toads_turnpike_unknown_path[] = {
#include "courses/toads_turnpike/d_course_toads_turnpike_unknown_path.inc.c"
};
#endif

#ifndef VERSION_JP  /* VERSION_JP path order: moved to end of file */
TrackPathPoint d_course_toads_turnpike_track_path[] = {
#include "courses/toads_turnpike/d_course_toads_turnpike_track_path.inc.c"
};
#endif

// 0x59B8
// Appears to be two windshields? Leaf texture or mask?
u8 d_course_toads_turnpike_unk_windshield1[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeTruckWindshieldLeft.inc.c"
};

u8 d_course_toads_turnpike_unk_windshield2[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeTruckWindshieldRight.inc.c"
};

// 0x69B8
u8 d_course_toads_turnpike_truck_box1[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeTruckBox1.inc.c"
};

// 0x71B8
u8 d_course_toads_turnpike_truck1_headlights[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeTruckHeadlights.inc.c"
};

// 0x79B8
u8 d_course_toads_turnpike_truck1_tyre[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeTruckTyre.inc.c"
};

// 0x81B8
u8 d_course_toads_turnpike_truck1_cab[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeTruckCab.inc.c"
};

// 0x89B8
u8 d_course_toads_turnpike_truck1_cab_side[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeTruckCabSide.inc.c"
};

// 0x91B8
u8 d_course_toads_turnpike_bus_back_lod0[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeBusBackLod0.inc.c"
};

// 0xA1B8
u8 d_course_toads_turnpike_bus_side[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeBusSide.inc.c"
};

// 0xB1B8 Bus is right-hand drive. High resolution
u8 d_course_toads_turnpike_bus_door_lod0[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeBusDoorLod0.inc.c"
};

// 0xB9B8
u8 d_course_toads_turnpike_bus_window[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeBusWindow.inc.c"
};

// 0xC1B8
u8 d_course_toads_turnpike_bus_front_lod0[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeBusFrontLod0.inc.c"
};

// 0xD1B8 Black fill
u8 d_course_toads_turnpike_black[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeBusUnknown1.inc.c"
};

// 0xD9B8
u8 d_course_toads_turnpike_bus_driver_window[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeBusDriverWindow.inc.c"
};

// 0xE1B8 Low resolution.
u8 d_course_toads_turnpike_bus_door_lod1[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeBusDoorLod1.inc.c"
};

// 0xE9B8 Low resolution. The lod0 high resolution version is
// window and side.
u8 d_course_toads_turnpike_bus_side_lod1[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeBusSideLod1.inc.c"
};

// 0xF1B8
u8 d_course_toads_turnpike_bus_front_lod1[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeBusFrontLod1.inc.c"
};

// 0xF9B8
u8 d_course_toads_turnpike_bus_back_lod1[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeBusBackLod1.inc.c"
};

// 0x101B8
u8 d_course_toads_turnpike_tanker_truck_stripe[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeTankerStripe.inc.c"
};

// 0x109B8
u8 d_course_toads_turnpike_tanker_truck_windshield[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeTankerWindshield.inc.c"
};

// 0x111B8 Radiator.
u8 d_course_toads_turnpike_tanker_truck_front[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeTankerFront.inc.c"
};

// 0x119B8
u8 d_course_toads_turnpike_tanker_truck_headlights[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeTankerHeadlights.inc.c"
};

// 0x121B8
u8 d_course_toads_turnpike_tanker_truck_bumper[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeTankerBumper.inc.c"
};

// 0x129B8
u8 d_course_toads_turnpike_tanker_truck_side_back_lod1[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeTankerSideBackLod1.inc.c"
};

// 0x131B8
u8 d_course_toads_turnpike_tanker_truck_back_lod1[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeTankerBackLod1.inc.c"
};

// 0x139B8
u8 d_course_toads_turnpike_tanker_truck_side_front_lod1[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeTankerSideFrontLod1.inc.c"
};

// 0x141B8
u8 d_course_toads_turnpike_tanker_truck_front_lod1[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeTankerFrontLod1.inc.c"
};

// 0x149B8
u8 d_course_toads_turnpike_truck_box2[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeTruckBox2.inc.c"
};

// 0x151B8
u8 d_course_toads_turnpike_truck_box3[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeTruckBox3.inc.c"
};

// 0x159B8
u8 d_course_toads_turnpike_car_headlights[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeCarHeadlights.inc.c"
};

// 0x161B8
u8 d_course_toads_turnpike_car_taillights[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeCarTaillights.inc.c"
};

// 0x169B8
u8 d_course_toads_turnpike_car_front_lod1[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeCarFrontLod1.inc.c"
};

// 0x171B8
u8 d_course_toads_turnpike_car_back_lod1[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeCarBackLod1.inc.c"
};

// 0x179B8
u8 d_course_toads_turnpike_car_side_lod1[] = {
#include "assets/courses/toads_turnpike/gTextureToadsTurnpikeCarSideLod1.inc.c"
};

// 0x181B8
Vtx d_course_toads_turnpike_truck_model_lod0[] = {
    { { { -14, 0, -29 }, 0, { 56, 56 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 12, -29 }, 0, { 56, 967 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 12, -41 }, 0, { 967, 967 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 0, -41 }, 0, { 967, 56 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 0, -41 }, 0, { 967, 56 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 12, -41 }, 0, { 967, 967 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 12, -29 }, 0, { 56, 967 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 0, -29 }, 0, { 56, 56 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_truck_unknown_model1[] = {
    { { { -12, 12, 40 }, 0, { 75, 981 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 0, 40 }, 0, { 964, 981 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 0, 52 }, 0, { 964, 37 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 13, 52 }, 0, { 69, 37 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 13, 52 }, 0, { 69, 37 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 0, 52 }, 0, { 964, 37 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 0, 40 }, 0, { 964, 981 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 12, 40 }, 0, { 75, 981 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_truck_unknown_model2[] = {
    { { { -14, 0, -35 }, 0, { 2689, -145 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 3, -41 }, 0, { 1784, -145 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 3, -41 }, 0, { 1784, 1169 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 0, -35 }, 0, { 2689, 1169 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 9, -41 }, 0, { 1784, -145 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 9, -41 }, 0, { 1784, 1169 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 12, -35 }, 0, { 2689, -145 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 12, -35 }, 0, { 2689, 1169 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 9, -30 }, 0, { 3595, -145 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 9, -30 }, 0, { 3595, 1169 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 3, -30 }, 0, { 3595, -145 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 3, -30 }, 0, { 3595, 1169 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_truck_unknown_model3[] = {
    { { { -12, 0, 46 }, 0, { -4245, 152 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 3, 40 }, 0, { -5930, 152 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 3, 40 }, 0, { -5930, 870 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 0, 46 }, 0, { -4245, 870 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 9, 40 }, 0, { -5930, 152 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 9, 40 }, 0, { -5930, 870 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 13, 46 }, 0, { -4245, 152 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 13, 46 }, 0, { -4245, 870 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 9, 52 }, 0, { -2561, 152 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 9, 52 }, 0, { -2561, 870 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 3, 52 }, 0, { -2561, 152 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 3, 52 }, 0, { -2561, 870 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_truck_unknown_model4[] = {
    { { { 6, 8, -45 }, 0, { 3003, -738 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 6, 15, -41 }, 0, { 2018, -3079 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -5, 15, -41 }, 0, { 2018, -3079 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -5, 8, -45 }, 0, { 3003, -738 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -5, 15, -52 }, 0, { 2533, -3079 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -5, 12, -52 }, 0, { 2901, -2018 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -5, 8, -45 }, 0, { 3003, -738 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -5, 15, -41 }, 0, { 2018, -3079 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 15, -41 }, 0, { 2018, -3079 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 8, -45 }, 0, { 3003, -738 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 12, -52 }, 0, { 2901, -2018 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 15, -52 }, 0, { 2533, -3079 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 12, -52 }, 0, { 2901, -2018 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -5, 12, -52 }, 0, { 2901, -2018 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -5, 15, -52 }, 0, { 2533, -3079 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 6, 15, -52 }, 0, { 2533, -3079 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 6, 12, -59 }, 0, { -867, 353 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 12, -52 }, 0, { -867, 353 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 8, -45 }, 0, { -594, 1034 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 8, -59 }, 0, { -594, 1034 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 12, -60 }, 0, { -2069, 361 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 8, -60 }, 0, { -1796, 1043 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -14, 8, -60 }, 0, { 2031, 1017 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -14, 12, -60 }, 0, { 1758, 335 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -5, 8, -59 }, 0, { 829, 1025 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -5, 12, -59 }, 0, { 555, 343 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -5, 8, -45 }, 0, { 829, 1025 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -5, 12, -52 }, 0, { 555, 343 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_truck_unknown_model5[] = {
    { { { -10, 20, 64 }, 0, { 434, 830 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 36, 59 }, 0, { 654, 505 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 37, 39 }, 0, { -9, 423 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 37, 39 }, 0, { -9, 423 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 36, 59 }, 0, { 654, 505 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 20, 64 }, 0, { 434, 830 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 36, 59 }, 0, { 221, 415 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 20, 64 }, 0, { 327, 878 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 20, 64 }, 0, { 819, 809 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 36, 59 }, 0, { 714, 346 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_truck_unknown_model6[] = {
    { { { -12, 19, 62 }, 0, { 1836, 895 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 20, 64 }, 0, { 2047, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 37, 39 }, 0, { 1836, -3069 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 20, 64 }, 0, { 4937, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 19, 62 }, 0, { 5148, 895 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 37, 39 }, 0, { 5148, -3069 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 3, 62 }, 0, { 663, 3371 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 19, 62 }, 0, { 1167, 273 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 20, 64 }, 0, { 883, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 19, 62 }, 0, { 1024, 1150 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 15, 51 }, 0, { 985, 1390 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 13, 37, 39 }, 0, { 1632, -2587 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 3, 62 }, 0, { 663, 3371 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 13, 3, 56 }, 0, { 643, 3490 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 13, 15, 39 }, 0, { 943, 1649 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 11, 36, 59 }, 0, { 1653, -2715 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 38, 39 }, 0, { 1342, -2824 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 3, 62 }, 0, { 663, 3371 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 3, 62 }, 0, { -427, 3161 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 19, 64 }, 0, { 87, -5 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 20, 64 }, 0, { 883, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 19, 62 }, 0, { 1167, 273 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 19, 62 }, 0, { -3970, 185 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 19, 62 }, 0, { -3827, -691 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 37, 39 }, 0, { -3362, -3552 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 15, 51 }, 0, { -4009, 425 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -10, 36, 59 }, 0, { -2988, -3831 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 38, 39 }, 0, { -3015, -3665 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 15, 39 }, 0, { -4051, 684 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -12, 3, 56 }, 0, { -4350, 2525 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -12, 3, 62 }, 0, { -4331, 2407 }, { 0x77, 0x77, 0x77, 0xFF } } },
};

Vtx d_course_toads_turnpike_truck_unknown_model7[] = {
    { { { -10, 20, 64 }, 0, { -3474, -842 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 19, 64 }, 0, { -2725, -548 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 7, 19, 64 }, 0, { 87, -5 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 20, 64 }, 0, { 883, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 7, 3, 62 }, 0, { -427, 3161 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 3, 62 }, 0, { 663, 3371 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 38, 39 }, 0, { 1342, -2824 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 38, 39 }, 0, { -3015, -3665 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 36, 59 }, 0, { -2988, -3831 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 36, 59 }, 0, { 1369, -2989 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_truck_unknown_model8[] = {
    { { { -6, 19, 64 }, 0, { 381, -11526 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 3, 62 }, 0, { -33, 2135 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -6, 3, 64 }, 0, { -38, 2283 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -6, 3, 64 }, 0, { -38, 2283 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 7, 3, 64 }, 0, { 376, 2283 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 7, 19, 64 }, 0, { 796, -11526 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 7, 3, 64 }, 0, { 376, 2283 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 7, 3, 62 }, 0, { 380, 2135 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 13, 3, 56 }, 0, { 0, 964 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -12, 3, 56 }, 0, { 662, 964 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -12, 15, 51 }, 0, { 662, 614 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 13, 15, 51 }, 0, { 0, 614 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -12, 15, 39 }, 0, { 662, 473 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 13, 15, 39 }, 0, { 0, 473 }, { 0x77, 0x77, 0x77, 0xFF } } },
};

Vtx d_course_toads_turnpike_truck_unknown_model9[] = {
    { { { 10, 3, 65 }, 0, { -30, 1085 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 7, 3, 64 }, 0, { 91, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 3, 64 }, 0, { 642, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -9, 3, 65 }, 0, { 764, 1085 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_truck_unknown_model10[] = {
    { { { 10, 3, 65 }, 0, { 887, 846 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 10, 7, 65 }, 0, { 811, 520 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -9, 7, 65 }, 0, { 219, 638 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -9, 3, 65 }, 0, { 295, 964 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 3, 62 }, 0, { 975, 828 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 7, 62 }, 0, { 899, 502 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 3, 62 }, 0, { 213, 981 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 7, 62 }, 0, { 137, 655 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_truck_unknown_model11[] = {
    { { { 15, 15, 38 }, 0, { 0, 1024 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 15, 51, 38 }, 0, { 0, -3046 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 51, 38 }, 0, { 1094, -3046 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 15, 38 }, 0, { 1094, 1024 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 51, -63 }, 0, { 5183, -1019 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 51, 38 }, 0, { 0, -1019 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 51, 38 }, 0, { 0, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 51, -63 }, 0, { 5183, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 15, -63 }, 0, { 1094, 1024 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 51, -63 }, 0, { 1094, -3046 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 15, 51, -63 }, 0, { 0, -3046 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 15, 15, -63 }, 0, { 0, 1024 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 15, 38 }, 0, { 0, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 51, 38 }, 0, { 0, -3046 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 51, -63 }, 0, { 5183, -3046 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 15, -63 }, 0, { 5183, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 15, -63 }, 0, { 5183, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 51, -63 }, 0, { 5183, -3046 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 51, 38 }, 0, { 0, -3046 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 15, 38 }, 0, { 0, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_truck_unknown_model12[] = {
    { { { 15, 15, -63 }, 0, { 0, 874 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 15, 15, 38 }, 0, { 2764, 874 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 6, 15, -30 }, 0, { 911, 680 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 6, 15, -41 }, 0, { 618, 682 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 6, 15, -63 }, 0, { 0, 681 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 7, 15, 38 }, 0, { 2764, 710 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -5, 15, -30 }, 0, { 911, 475 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -5, 15, -41 }, 0, { 618, 473 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 6, 15, -52 }, 0, { 309, 682 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -5, 15, -52 }, 0, { 309, 473 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -5, 15, -63 }, 0, { 0, 473 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -15, 15, 38 }, 0, { 2764, 281 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -15, 15, -63 }, 0, { 0, 281 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -5, 15, -63 }, 0, { 0, 474 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -6, 15, 38 }, 0, { 2764, 445 }, { 0x77, 0x77, 0x77, 0xFF } } },
};

Vtx d_course_toads_turnpike_truck_unknown_model13[] = {
    { { { -5, 3, -26 }, 0, { 2700, 927 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -5, 15, -30 }, 0, { 1529, -3079 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 6, 15, -30 }, 0, { 1529, -3079 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 6, 3, -26 }, 0, { 2694, 928 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -6, 15, 38 }, 0, { -1558, -3079 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 3, 34 }, 0, { 0, 1024 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 7, 3, 34 }, 0, { 0, 1024 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 7, 15, 38 }, 0, { -1558, -3079 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 3, -26 }, 0, { 2694, 928 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 6, 15, -30 }, 0, { 1529, -3079 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -5, 15, -30 }, 0, { 1529, -3079 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -5, 3, -26 }, 0, { 2694, 928 }, { 0x99, 0x99, 0x99, 0xFF } } },
};

// 0x18DB8
Gfx d_course_toads_turnpike_dl_18DB8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_tyre),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_truck_model_lod0, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_18E38[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_tyre),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_truck_unknown_model1, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_18EB8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_tyre),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_truck_unknown_model2, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSP2Triangles(10, 0, 3, 0, 10, 3, 11, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_18F58[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_tyre),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_truck_unknown_model3, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSP2Triangles(10, 0, 3, 0, 10, 3, 11, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_18FF8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_18F58),
    gsSPDisplayList(d_course_toads_turnpike_dl_18EB8),
    gsSPDisplayList(d_course_toads_turnpike_dl_18E38),
    gsSPDisplayList(d_course_toads_turnpike_dl_18DB8),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_19020[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_18FF8),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_19030[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_unk_windshield1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_truck_unknown_model4, 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(20, 16, 19, 0, 20, 19, 21, 0),
    gsSP2Triangles(22, 24, 25, 0, 22, 25, 23, 0),
    gsSP2Triangles(24, 26, 27, 0, 24, 27, 25, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_190E8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_unk_windshield2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_truck_unknown_model5, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_19168[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_headlights),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPVertex(d_course_toads_turnpike_truck_unknown_model6, 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 10, 0),
    gsSP2Triangles(7, 10, 11, 0, 10, 9, 12, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 14, 11, 0),
    gsSP2Triangles(15, 11, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 20, 21, 17, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 24, 0, 24, 28, 25, 0),
    gsSP2Triangles(25, 29, 30, 0, 25, 30, 22, 0),
    gsSPVertex(d_course_toads_turnpike_truck_unknown_model7, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_unk_windshield1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_truck_unknown_model8, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 0, 0, 6, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 13, 11, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_192B0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_headlights),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPVertex(d_course_toads_turnpike_truck_unknown_model9, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_unk_windshield2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_truck_unknown_model10, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0),
    gsSP2Triangles(6, 3, 2, 0, 6, 2, 7, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_19390[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPVertex(d_course_toads_turnpike_truck_unknown_model11, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_unk_windshield1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_truck_unknown_model12, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 1, 5, 2, 0),
    gsSP2Triangles(3, 2, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 4, 0),
    gsSP2Triangles(7, 6, 11, 0, 7, 11, 12, 0),
    gsSP2Triangles(7, 12, 13, 0, 6, 14, 11, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_19450[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_unk_windshield1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_truck_unknown_model13, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 5, 0, 10, 5, 4, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_194E0[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_19390),
    gsSPDisplayList(d_course_toads_turnpike_dl_19450),
    gsSPDisplayList(d_course_toads_turnpike_dl_192B0),
    gsSPDisplayList(d_course_toads_turnpike_dl_19168),
    gsSPDisplayList(d_course_toads_turnpike_dl_190E8),
    gsSPDisplayList(d_course_toads_turnpike_dl_19030),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_19518[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_194E0),
    gsSPEndDisplayList(),
};

// 0x19528
Vtx d_course_toads_turnpike_truck_model_lod1[] = {
    { { { 13, 0, 48 }, 0, { -82, 1182 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 4, 0, 48 }, 0, { -441, 1182 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 4, 13, 48 }, 0, { -441, 1706 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 13, 48 }, 0, { -82, 1706 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -3, 0, 48 }, 0, { -746, 1182 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 0, 48 }, 0, { -1106, 1182 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 13, 48 }, 0, { -1106, 1706 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -3, 13, 48 }, 0, { -746, 1706 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 0, 54 }, 0, { 46, 962 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 0, 42 }, 0, { 952, 962 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 13, 42 }, 0, { 952, 46 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 13, 54 }, 0, { 46, 46 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 13, 54 }, 0, { 46, 46 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 13, 42 }, 0, { 952, 46 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 0, 42 }, 0, { 952, 962 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 0, 54 }, 0, { 46, 962 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_truck_unknown_model14[] = {
    { { { 15, 0, -34 }, 0, { -82, 1182 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 0, -34 }, 0, { -441, 1182 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 13, -34 }, 0, { -441, 1706 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 13, -34 }, 0, { -82, 1706 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 0, -34 }, 0, { -746, 1182 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 0, -34 }, 0, { -1106, 1182 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 13, -34 }, 0, { -1106, 1706 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 13, -34 }, 0, { -746, 1706 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 12, -28 }, 0, { 48, 48 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 12, -40 }, 0, { 961, 48 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 0, -40 }, 0, { 961, 971 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 0, -28 }, 0, { 48, 971 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 0, -28 }, 0, { 48, 971 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 0, -40 }, 0, { 961, 971 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 12, -40 }, 0, { 961, 48 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 12, -28 }, 0, { 48, 48 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_truck_unknown_model15[] = {
    { { { 15, 15, 38 }, 0, { 0, 1024 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 15, 51, 38 }, 0, { 0, -3046 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 51, 38 }, 0, { 1094, -3046 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 15, 38 }, 0, { 1094, 1024 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 15, -63 }, 0, { 1094, 1024 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 51, -63 }, 0, { 1094, -3046 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 15, 51, -63 }, 0, { 0, -3046 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 15, 15, -63 }, 0, { 0, 1024 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 15, 38 }, 0, { 0, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 51, 38 }, 0, { 0, -3046 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 51, -63 }, 0, { 5183, -3046 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 15, -63 }, 0, { 5183, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 15, -63 }, 0, { 5183, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 51, -63 }, 0, { 5183, -3046 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 51, 38 }, 0, { 0, -3046 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 15, 38 }, 0, { 0, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 51, -63 }, 0, { 5183, -1019 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 51, 38 }, 0, { 0, -1019 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 51, 38 }, 0, { 0, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 51, -63 }, 0, { 5183, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_truck_unknown_model16[] = {
    { { { 6, 2, 34 }, 0, { 341, 1024 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 6, 3, -26 }, 0, { 2986, 768 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 6, 15, -30 }, 0, { 1911, -3072 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 15, 38 }, 0, { -1280, -3328 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -5, 15, 38 }, 0, { -1280, -3328 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -5, 15, -30 }, 0, { 1911, -3072 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -5, 3, -26 }, 0, { 2986, 768 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { -5, 2, 34 }, 0, { 341, 1024 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { -5, 3, -26 }, 0, { 2700, 927 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -5, 15, -30 }, 0, { 1529, -3079 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 6, 15, -30 }, 0, { 1529, -3079 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 6, 3, -26 }, 0, { 2694, 928 }, { 0x77, 0x77, 0x77, 0xFF } } },
};

Vtx d_course_toads_turnpike_truck_unknown_model17[] = {
    { { { 0, 8, -45 }, 0, { 3346, -795 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 0, 15, -41 }, 0, { 2374, -3099 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 0, 15, -52 }, 0, { 2886, -3099 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 0, 12, -52 }, 0, { 3244, -2075 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 0, 8, -60 }, 0, { 1945, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 0, 8, -45 }, 0, { 1945, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 0, 12, -52 }, 0, { 1881, 384 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 0, 12, -60 }, 0, { 1881, 384 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 8, -60 }, 0, { 0, 1023 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -14, 8, -60 }, 0, { 3891, 1024 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -14, 12, -60 }, 0, { 3827, 384 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 12, -60 }, 0, { -63, 383 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_truck_unknown_model18[] = {
    { { { -11, 21, 64 }, 0, { 8764, 8671 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 38, 39 }, 0, { 2048, 8671 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -11, 15, 39 }, 0, { 2048, 8671 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -11, 3, 56 }, 0, { 6713, 8671 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -11, 3, 62 }, 0, { 8018, 8671 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -11, 3, 62 }, 0, { -8466, 4391 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 3, 62 }, 0, { -1843, 4391 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 21, 64 }, 0, { -1843, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -11, 21, 64 }, 0, { -8466, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 7, 20, 65 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 7, 15, 65 }, 0, { 0, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 15, 65 }, 0, { 1023, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 20, 65 }, 0, { 1023, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -11, 20, 65 }, 0, { 1024, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -11, 15, 65 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 15, 65 }, 0, { 0, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 20, 65 }, 0, { 1024, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 21, 64 }, 0, { 8764, 2047 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 3, 62 }, 0, { 8018, 2047 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 12, 3, 56 }, 0, { 6713, 2047 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 12, 15, 39 }, 0, { 2047, 2047 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 38, 39 }, 0, { 2047, 2047 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 38, 39 }, 0, { 2960, 2047 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 38, 39 }, 0, { 3071, -5610 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 36, 60 }, 0, { 3071, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 36, 60 }, 0, { 8876, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 38, 39 }, 0, { 8876, -5610 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_truck_unknown_model19[] = {
    { { { 10, 3, 65 }, 0, { 835, 784 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 10, 7, 65 }, 0, { 831, 515 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -9, 7, 65 }, 0, { 328, 594 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -9, 3, 65 }, 0, { 333, 863 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 3, 62 }, 0, { 910, 772 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 7, 62 }, 0, { 905, 503 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 7, 62 }, 0, { 253, 606 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 3, 62 }, 0, { 258, 875 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 36, 60 }, 0, { 224, 326 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -11, 21, 64 }, 0, { 266, 914 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 21, 64 }, 0, { 849, 804 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 36, 60 }, 0, { 808, 216 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 36, 60 }, 0, { 525, 213 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 21, 64 }, 0, { 643, 675 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 38, 39 }, 0, { 50, 313 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -11, 21, 64 }, 0, { 620, 889 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 36, 60 }, 0, { 711, 445 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 38, 39 }, 0, { 189, 489 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_truck_unknown_model20[] = {
    { { { -6, 4, 63 }, 0, { -16, 1535 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 7, 4, 63 }, 0, { 578, 1535 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 7, 19, 65 }, 0, { 908, -8703 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 19, 65 }, 0, { 313, -8703 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Gfx d_course_toads_turnpike_dl_19CF8[] = {
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_tyre),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_truck_model_lod1, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_19D68[] = {
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_tyre),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_truck_unknown_model14, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_19DD8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_19D68),
    gsSPDisplayList(d_course_toads_turnpike_dl_19CF8),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_19DF0[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_19DD8),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_19E00[] = {
    gsSPVertex(d_course_toads_turnpike_truck_unknown_model15, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_19E38[] = {
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_unk_windshield1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_truck_unknown_model16, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_19EA0[] = {
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_unk_windshield1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_truck_unknown_model17, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_19F08[] = {
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_headlights),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_truck_unknown_model18, 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(2, 4, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 22, 17, 0, 23, 24, 25, 0),
    gsSP1Triangle(23, 25, 26, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_unk_windshield2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_truck_unknown_model19, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0),
    gsSP2Triangles(2, 6, 7, 0, 2, 7, 3, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_unk_windshield1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_truck_unknown_model20, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1A040[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_19E00),
    gsSPDisplayList(d_course_toads_turnpike_dl_19F08),
    gsSPDisplayList(d_course_toads_turnpike_dl_19EA0),
    gsSPDisplayList(d_course_toads_turnpike_dl_19E38),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1A068[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_1A040),
    gsSPEndDisplayList(),
};

// 0x1A078
Vtx d_course_toads_turnpike_truck_model_lod2[] = {
    { { { -14, 12, -28 }, 0, { 48, 48 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 12, -40 }, 0, { 961, 48 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 0, -40 }, 0, { 961, 971 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 0, -28 }, 0, { 48, 971 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 0, -28 }, 0, { 48, 971 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 0, -40 }, 0, { 961, 971 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 12, -40 }, 0, { 961, 48 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 12, -28 }, 0, { 48, 48 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 0, -34 }, 0, { -82, 1182 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 0, -34 }, 0, { -441, 1182 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 13, -34 }, 0, { -441, 1706 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 13, -34 }, 0, { -82, 1706 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 0, -34 }, 0, { -746, 1182 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 0, -34 }, 0, { -1106, 1182 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 13, -34 }, 0, { -1106, 1706 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 13, -34 }, 0, { -746, 1706 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_truck_unknown_model21[] = {
    { { { -10, 0, 65 }, 0, { 33, 1011 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 0, 65 }, 0, { 969, 1011 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 36, 59 }, 0, { 969, -230 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 36, 59 }, 0, { 33, -230 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_truck_unknown_model22[] = {
    { { { 11, 38, 39 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 36, 59 }, 0, { 813, 40 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 0, 65 }, 0, { 1024, 1023 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 11, 0, 39 }, 0, { 0, 1023 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -10, 38, 39 }, 0, { 375, 656 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 36, 59 }, 0, { 682, 656 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 36, 59 }, 0, { 650, 366 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 38, 39 }, 0, { 343, 366 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 0, 39 }, 0, { 0, 1024 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -10, 0, 65 }, 0, { 1023, 1024 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -10, 36, 59 }, 0, { 813, 40 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 38, 39 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_truck_unknown_model23[] = {
    { { { 15, 15, 38 }, 0, { 0, 1024 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 15, 51, 38 }, 0, { 0, -3046 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 51, 38 }, 0, { 1094, -3046 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 15, 38 }, 0, { 1094, 1024 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 15, -63 }, 0, { 1094, 1024 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 51, -63 }, 0, { 1094, -3046 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 15, 51, -63 }, 0, { 0, -3046 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 15, 15, -63 }, 0, { 0, 1024 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 15, 38 }, 0, { 0, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 51, 38 }, 0, { 0, -3046 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 51, -63 }, 0, { 5183, -3046 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 15, -63 }, 0, { 5183, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 15, -63 }, 0, { 5183, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 51, -63 }, 0, { 5183, -3046 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 51, 38 }, 0, { 0, -3046 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 15, 38 }, 0, { 0, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 51, -63 }, 0, { 5183, -1019 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 51, 38 }, 0, { 0, -1019 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 51, 38 }, 0, { 0, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 51, -63 }, 0, { 5183, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_truck_unknown_model24[] = {
    { { { -5, 3, -26 }, 0, { 2700, 927 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -5, 15, -30 }, 0, { 1529, -3079 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 6, 15, -30 }, 0, { 1529, -3079 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 6, 3, -26 }, 0, { 2694, 928 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 6, 2, 34 }, 0, { 341, 1024 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 6, 3, -26 }, 0, { 2986, 768 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 6, 15, -30 }, 0, { 1911, -3072 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 15, 38 }, 0, { -1280, -3328 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -5, 15, 38 }, 0, { -1280, -3328 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -5, 15, -30 }, 0, { 1911, -3072 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -5, 3, -26 }, 0, { 2986, 768 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { -5, 2, 34 }, 0, { 341, 1024 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 15, 8, -60 }, 0, { 0, 1023 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -14, 8, -60 }, 0, { 3891, 1024 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -14, 12, -60 }, 0, { 3827, 384 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 12, -60 }, 0, { -63, 383 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Gfx d_course_toads_turnpike_dl_1A4B8[] = {
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_tyre),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_truck_model_lod2, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1A528[] = {
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_cab),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_truck_unknown_model21, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_cab_side),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_truck_unknown_model22, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1A5E0[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_1A528),
    gsSPDisplayList(d_course_toads_turnpike_dl_1A4B8),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1A5F8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_1A5E0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1A608[] = {
    gsSPVertex(d_course_toads_turnpike_truck_unknown_model23, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1A640[] = {
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_unk_windshield1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_truck_unknown_model24, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1A6B0[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_1A608),
    gsSPDisplayList(d_course_toads_turnpike_dl_1A640),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1A6C8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_1A6B0),
    gsSPEndDisplayList(),
};

// 0x1A6D8
Vtx d_course_toads_turnpike_bus_model_lod0[] = {
    { { { -5, 1, -33 }, 0, { 67, 984 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -5, 1, -47 }, 0, { 970, 984 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -5, 16, -47 }, 0, { 970, 31 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -5, 16, -33 }, 0, { 67, 31 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 16, -33 }, 0, { 67, 31 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 16, -47 }, 0, { 970, 31 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 1, -47 }, 0, { 970, 984 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 1, -33 }, 0, { 67, 984 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 5, 16, -33 }, 0, { 67, 31 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 5, 16, -47 }, 0, { 970, 31 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 5, 1, -47 }, 0, { 970, 984 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 5, 1, -33 }, 0, { 67, 984 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 1, -33 }, 0, { 67, 984 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 1, -47 }, 0, { 970, 984 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 16, -47 }, 0, { 970, 31 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 16, -33 }, 0, { 67, 31 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model1[] = {
    { { { -7, 1, 47 }, 0, { 54, 986 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -7, 1, 33 }, 0, { 963, 986 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -7, 16, 33 }, 0, { 963, 45 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -7, 16, 47 }, 0, { 54, 45 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 16, 47 }, 0, { 54, 45 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 16, 33 }, 0, { 963, 45 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 1, 33 }, 0, { 963, 986 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 1, 47 }, 0, { 54, 986 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model2[] = {
    { { { 16, 1, 47 }, 0, { 54, 986 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 1, 33 }, 0, { 963, 986 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 16, 33 }, 0, { 963, 45 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 16, 47 }, 0, { 54, 45 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 7, 16, 47 }, 0, { 54, 45 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 7, 16, 33 }, 0, { 963, 45 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 7, 1, 33 }, 0, { 963, 986 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 7, 1, 47 }, 0, { 54, 986 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model3[] = {
    { { { 13, 6, -83 }, 0, { 337, 791 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { -13, 6, -83 }, 0, { 661, 773 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { -13, 10, -83 }, 0, { 661, 674 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 13, 10, -83 }, 0, { 337, 692 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 15, 10, -81 }, 0, { 312, 693 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 15, 6, -81 }, 0, { 312, 807 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 6, -81 }, 0, { 686, 786 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 10, -81 }, 0, { 686, 672 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model4[] = {
    { { { 12, 4, 71 }, 0, { 773, 780 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 14, 4, 69 }, 0, { 809, 773 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 14, 10, 69 }, 0, { 831, 549 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 10, 71 }, 0, { 795, 556 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 10, 71 }, 0, { 291, 652 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 4, 71 }, 0, { 270, 877 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -14, 10, 69 }, 0, { 255, 659 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 4, 69 }, 0, { 234, 884 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 13, 4, 69 }, 0, { 781, 807 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -13, 4, 69 }, 0, { 256, 908 }, { 0x77, 0x77, 0x77, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model5[] = {
    { { { -15, 28, 67 }, 0, { 1207, 992 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -15, 49, 64 }, 0, { 972, 103 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 49, 49 }, 0, { 0, 99 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 28, 49 }, 0, { 0, 992 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 53, 63 }, 0, { 933, -42 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 53, 49 }, 0, { 0, -42 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model6[] = {
    { { { 12, 49, 66 }, 0, { 756, 377 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -13, 49, 66 }, 0, { 330, 402 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -13, 28, 69 }, 0, { 327, 847 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 28, 69 }, 0, { 774, 821 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model7[] = {
    { { { 13, 53, 49 }, 0, { 1001, 811 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 53, 63 }, 0, { 1, 811 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 49, 64 }, 0, { -40, 616 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 49, 49 }, 0, { 1001, 621 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 28, 67 }, 0, { -292, -568 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 15, 28, 49 }, 0, { 1001, -568 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 28, 69 }, 0, { 1007, 1031 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 28, 67 }, 0, { 1078, 1013 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 12, 49, 66 }, 0, { 983, 85 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 15, 49, 64 }, 0, { 1078, 111 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 53, 63 }, 0, { 1078, -36 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 49, 64 }, 0, { -56, 111 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 28, 67 }, 0, { -56, 1013 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -13, 49, 66 }, 0, { 37, 85 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -13, 28, 69 }, 0, { 14, 1031 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 53, 63 }, 0, { -56, -36 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 28, 49 }, 0, { 1001, -804 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 28, 67 }, 0, { -292, -804 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 15, 6, 67 }, 0, { -292, 1007 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 15, 5, 51 }, 0, { 1001, 1009 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model8[] = {
    { { { -13, 28, -83 }, 0, { 987, 1100 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -13, 50, -83 }, 0, { 987, 133 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 13, 50, -83 }, 0, { 36, 133 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 13, 28, -83 }, 0, { 36, 1100 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -13, 53, 63 }, 0, { -155, -364 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 49, 66 }, 0, { -44, 0 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 12, 49, 66 }, 0, { 1066, 0 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 13, 53, 63 }, 0, { 1177, -364 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 28, -81 }, 0, { 1023, 1024 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { 15, 50, -81 }, 0, { 1023, 56 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 49, 49 }, 0, { -9200, 92 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 28, 49 }, 0, { -9200, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 53, -81 }, 0, { 1023, -56 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 53, 49 }, 0, { -9200, -56 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 53, 49 }, 0, { -9200, -56 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 53, -81 }, 0, { 1024, -56 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 53, -81 }, 0, { 1023, -56 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 50, -81 }, 0, { 1023, 56 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 49, 49 }, 0, { -9200, 92 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 28, -81 }, 0, { 1023, 1023 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { -15, 28, 49 }, 0, { -9200, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model9[] = {
    { { { 15, 28, -81 }, 0, { 2048, 2 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { 15, 10, -81 }, 0, { 24, 2 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 13, 10, -83 }, 0, { 24, 136 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 13, 28, -83 }, 0, { 2048, 136 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -13, 10, -83 }, 0, { 24, 1911 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -13, 28, -83 }, 0, { 2048, 1911 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 10, -81 }, 0, { 24, 2045 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -15, 28, -81 }, 0, { 2048, 2045 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model10[] = {
    { { { -15, 28, -81 }, 0, { 2048, 867 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { -15, 17, -33 }, 0, { 1053, -2408 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { -15, 17, 33 }, 0, { 1053, -6912 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { -15, 28, 49 }, 0, { 2048, -7993 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 17, -47 }, 0, { 1053, -1453 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { -15, 10, -81 }, 0, { 376, 867 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -15, 6, -30 }, 0, { 20, -2613 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 5, 29 }, 0, { 17, -6633 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 18, 47 }, 0, { 1093, -7822 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { -15, 28, 67 }, 0, { 2048, -9201 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -15, 5, 51 }, 0, { 17, -8129 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 6, 67 }, 0, { 20, -9201 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { -13, 53, 63 }, 0, { 4, 6121 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 53, 63 }, 0, { 2048, 6121 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 53, 49 }, 0, { 2048, 5538 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 53, 49 }, 0, { 4, 5538 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 53, -81 }, 0, { 2048, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 53, -81 }, 0, { 4, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 17, -47 }, 0, { 1053, -1453 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -15, 6, -50 }, 0, { 20, -1248 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 15, 6, -50 }, 0, { 20, -1248 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 15, 17, -47 }, 0, { 1053, -1453 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -15, 17, -33 }, 0, { 1053, -2408 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 15, 17, -33 }, 0, { 1053, -2408 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 15, 6, -30 }, 0, { 20, -2613 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -15, 6, -30 }, 0, { 20, -2613 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 15, 18, 47 }, 0, { 1093, -7822 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 15, 28, 49 }, 0, { 2048, -7993 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 5, 51 }, 0, { 17, -8129 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 15, 5, 29 }, 0, { 17, -6633 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 15, 6, -30 }, 0, { 20, -2613 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 15, 17, -33 }, 0, { 1053, -2408 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model11[] = {
    { { { 15, 5, 29 }, 0, { 17, -6633 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 15, 17, -33 }, 0, { 1053, -2408 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { 15, 17, 33 }, 0, { 1053, -6912 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { 15, 17, -47 }, 0, { 1053, -1453 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 15, 28, -81 }, 0, { 2048, 867 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { 15, 28, 49 }, 0, { 2048, -7993 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 18, 47 }, 0, { 1093, -7822 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 15, 17, -47 }, 0, { 1053, -1834 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 15, 17, -33 }, 0, { 1053, -2936 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -15, 17, -33 }, 0, { 1053, -2936 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -15, 17, -47 }, 0, { 1053, -1834 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 15, 17, 33 }, 0, { 1053, -6912 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 15, 18, 47 }, 0, { 1093, -7822 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -15, 18, 47 }, 0, { 1093, -7822 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -15, 17, 33 }, 0, { 1053, -6912 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -15, 5, 29 }, 0, { 17, -6633 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 15, 5, 29 }, 0, { 17, -6633 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 15, 5, 51 }, 0, { 17, -8129 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -15, 5, 51 }, 0, { 17, -8129 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -15, 6, -50 }, 0, { 20, -1248 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 17, -47 }, 0, { 1053, -1453 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { -15, 10, -81 }, 0, { 376, 867 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -15, 6, -81 }, 0, { 20, 867 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 13, 50, -83 }, 0, { 3982, 1023 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 13, 53, -81 }, 0, { 4208, 867 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 50, -81 }, 0, { 3982, 867 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 50, -83 }, 0, { 3982, 1023 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { -13, 53, -81 }, 0, { 4208, 867 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 28, -81 }, 0, { 2047, 867 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { 13, 28, -83 }, 0, { 2048, 1023 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 28, -81 }, 0, { 2048, 867 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { -15, 50, -81 }, 0, { 3982, 867 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model12[] = {
    { { { -15, 28, -81 }, 0, { 2048, 867 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { -13, 50, -83 }, 0, { 3982, 1023 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { -13, 28, -83 }, 0, { 2048, 1023 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 50, -81 }, 0, { 3982, 867 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 53, -81 }, 0, { 4208, 867 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 17, -47 }, 0, { 1053, -1453 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 15, 6, -50 }, 0, { 20, -1248 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 15, 6, -81 }, 0, { 20, 867 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 15, 10, -81 }, 0, { 376, 867 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 15, 28, -81 }, 0, { 2048, 867 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model13[] = {
    { { { 13, 6, 69 }, 0, { 3831, 2818 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { 15, 6, 67 }, 0, { 4087, 2818 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 15, 28, 67 }, 0, { 4087, 0 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 13, 28, 69 }, 0, { 3831, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 28, 69 }, 0, { 255, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 6, 69 }, 0, { 255, 2818 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { -15, 28, 67 }, 0, { 0, 0 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -15, 6, 67 }, 0, { 0, 2818 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model14[] = {
    { { { -5, 12, -46 }, 0, { 8507, 1693 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 12, -46 }, 0, { 13115, 3997 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 16, -40 }, 0, { 13115, 2290 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -5, 16, -40 }, 0, { 8507, -13 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -5, 5, -46 }, 0, { 8507, 5107 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 5, -46 }, 0, { 13115, 7411 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 12, -33 }, 0, { 13115, 3997 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -5, 12, -33 }, 0, { 8507, 1693 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 5, -33 }, 0, { 13115, 7411 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -5, 5, -33 }, 0, { 8507, 5107 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 1, -40 }, 0, { 13115, 9118 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -5, 1, -40 }, 0, { 8507, 6814 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 5, 1, -40 }, 0, { 8507, 6814 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 1, -40 }, 0, { 13115, 9118 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 5, -33 }, 0, { 13115, 7411 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 5, 5, -33 }, 0, { 8507, 5107 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 5, 5, -46 }, 0, { 8507, 5107 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 5, -46 }, 0, { 13115, 7411 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 12, -33 }, 0, { 13115, 3997 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 5, 12, -33 }, 0, { 8507, 1693 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 5, 12, -46 }, 0, { 8507, 1693 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 12, -46 }, 0, { 13115, 3997 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 16, -40 }, 0, { 13115, 2290 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 5, 16, -40 }, 0, { 8507, -13 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model15[] = {
    { { { -7, 12, 34 }, 0, { 9435, 2213 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 12, 34 }, 0, { 12109, 3551 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 16, 40 }, 0, { 12815, 2140 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -7, 16, 40 }, 0, { 10140, 802 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -7, 5, 34 }, 0, { 8024, 5036 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 5, 34 }, 0, { 10698, 6373 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 12, 47 }, 0, { 12109, 3551 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -7, 12, 47 }, 0, { 9435, 2213 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 5, 47 }, 0, { 10698, 6373 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -7, 5, 47 }, 0, { 8024, 5036 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 1, 40 }, 0, { 9993, 7784 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -7, 1, 40 }, 0, { 7318, 6447 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 7, 5, 34 }, 0, { 8024, 5036 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 5, 34 }, 0, { 10698, 6373 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 1, 40 }, 0, { 9993, 7784 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 7, 1, 40 }, 0, { 7318, 6447 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 5, 47 }, 0, { 10698, 6373 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 7, 5, 47 }, 0, { 8024, 5036 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 12, 47 }, 0, { 12109, 3551 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 7, 12, 47 }, 0, { 9435, 2213 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 7, 12, 34 }, 0, { 9435, 2213 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 12, 34 }, 0, { 12109, 3551 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 16, 40 }, 0, { 12815, 2140 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 7, 16, 40 }, 0, { 10140, 802 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Gfx d_course_toads_turnpike_dl_1B5C8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_tyre),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_bus_model_lod0, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1B658[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_tyre),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model1, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1B6D8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_tyre),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model2, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1B758[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_1B6D8),
    gsSPDisplayList(d_course_toads_turnpike_dl_1B658),
    gsSPDisplayList(d_course_toads_turnpike_dl_1B5C8),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1B778[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_1B758),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1B788[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_unk_windshield2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model3, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0),
    gsSP2Triangles(1, 6, 7, 0, 1, 7, 2, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1B810[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_unk_windshield2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model4, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 0, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 0, 5, 0, 8, 5, 9, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1B8A0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_bus_driver_window),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model5, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_unk_windshield2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model6, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_bus_door_lod0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model7, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(9, 10, 8, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 15, 11, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_bus_window),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model8, 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(9, 12, 13, 0, 9, 13, 10, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(14, 17, 18, 0, 17, 19, 20, 0),
    gsSP1Triangle(17, 20, 18, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0x0000, G_TX_RENDERTILE, 0, G_TX_MIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_MIRROR | G_TX_WRAP, 6, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_bus_back_lod0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 2047, 128),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model9, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 3, 0, 4, 3, 2, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 6, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_bus_side),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 2047, 128),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model10, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 0, 4, 0, 0, 5, 4, 0),
    gsSP2Triangles(6, 7, 2, 0, 6, 2, 1, 0),
    gsSP2Triangles(6, 1, 1, 0, 2, 8, 9, 0),
    gsSP2Triangles(2, 9, 3, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 11, 9, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 15, 0, 14, 16, 17, 0),
    gsSP2Triangles(14, 17, 17, 0, 14, 17, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model11, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 2, 1, 0, 5, 1, 4, 0),
    gsSP2Triangles(6, 2, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 11, 0),
    gsSP2Triangles(15, 11, 14, 0, 17, 18, 13, 0),
    gsSP2Triangles(17, 13, 12, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(24, 23, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(23, 25, 28, 0, 23, 28, 29, 0),
    gsSP1Triangle(30, 31, 26, 0),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model12, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP1Triangle(5, 8, 9, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_MIRROR | G_TX_WRAP, 6, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_bus_front_lod0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 2047, 128),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model13, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 0, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1BC78[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_black),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model14, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(3, 2, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 5, 0, 11, 5, 4, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 13, 0, 16, 13, 12, 0),
    gsSP2Triangles(15, 14, 18, 0, 15, 18, 19, 0),
    gsSP2Triangles(20, 21, 17, 0, 20, 17, 16, 0),
    gsSP2Triangles(19, 18, 22, 0, 19, 22, 23, 0),
    gsSP2Triangles(23, 22, 21, 0, 23, 21, 20, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1BD48[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_black),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model15, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(3, 2, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 5, 0, 11, 5, 4, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0),
    gsSP2Triangles(17, 16, 18, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 13, 0, 20, 13, 12, 0),
    gsSP2Triangles(19, 18, 22, 0, 19, 22, 23, 0),
    gsSP2Triangles(23, 22, 21, 0, 23, 21, 20, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1BE18[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_1BD48), gsSPDisplayList(d_course_toads_turnpike_dl_1BC78),
    gsSPDisplayList(d_course_toads_turnpike_dl_1B8A0), gsSPDisplayList(d_course_toads_turnpike_dl_1B810),
    gsSPDisplayList(d_course_toads_turnpike_dl_1B788), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1BE48[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_1BE18),
    gsSPEndDisplayList(),
};

// 0x1BE58
Vtx d_course_toads_turnpike_bus_model_lod1[] = {
    { { { 16, 1, -33 }, 0, { 67, 984 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 1, -47 }, 0, { 970, 984 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 16, -47 }, 0, { 970, 31 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 16, -33 }, 0, { 67, 31 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 16, -33 }, 0, { 67, 31 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 16, -47 }, 0, { 970, 31 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 1, -47 }, 0, { 970, 984 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 1, -33 }, 0, { 67, 984 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model16[] = {
    { { { 16, 1, 47 }, 0, { 54, 986 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 1, 33 }, 0, { 963, 986 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 16, 33 }, 0, { 963, 45 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 16, 47 }, 0, { 54, 45 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 16, 47 }, 0, { 54, 45 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 16, 33 }, 0, { 963, 45 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 1, 33 }, 0, { 963, 986 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 1, 47 }, 0, { 54, 986 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model17[] = {
    { { { -6, 1, -39 }, 0, { 2073, 998 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -16, 1, -39 }, 0, { -46, 998 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 16, -39 }, 0, { -46, -1977 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 16, -39 }, 0, { 2073, -1977 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 16, 1, -39 }, 0, { 6445, 998 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 5, 1, -39 }, 0, { 4192, 998 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 5, 16, -39 }, 0, { 4192, -1977 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 16, 16, -39 }, 0, { 6445, -1977 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model18[] = {
    { { { -8, 1, 41 }, 0, { 1638, 998 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -16, 1, 41 }, 0, { 0, 998 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 16, 41 }, 0, { 0, -2047 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -8, 16, 41 }, 0, { 1638, -2047 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 16, 1, 41 }, 0, { 6457, 998 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 8, 1, 41 }, 0, { 4819, 998 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 8, 16, 41 }, 0, { 4819, -2047 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 16, 16, 41 }, 0, { 6457, -2047 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model19[] = {
    { { { -15, 29, 68 }, 0, { 1207, 992 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -15, 53, 63 }, 0, { 933, -42 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 53, 49 }, 0, { 0, -42 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 28, 49 }, 0, { 0, 992 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model20[] = {
    { { { 15, 10, -81 }, 0, { 24, 2 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -15, 10, -81 }, 0, { 24, 2045 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -15, 28, -81 }, 0, { 2048, 2045 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 15, 28, -81 }, 0, { 2048, 2 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model21[] = {
    { { { 15, 29, 68 }, 0, { 4087, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 29, 68 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 12, 69 }, 0, { 0, 2085 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { 15, 12, 69 }, 0, { 4087, 2085 }, { 0x88, 0x88, 0x88, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model22[] = {
    { { { 15, 53, 49 }, 0, { 1001, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 53, 63 }, 0, { 68, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 29, 68 }, 0, { -205, 507 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 15, 12, 69 }, 0, { -205, 910 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 15, 5, 51 }, 0, { 1001, 1025 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 15, 6, 69 }, 0, { -205, 1024 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model23[] = {
    { { { 15, 53, 49 }, 0, { 1023, -20 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 18, 47 }, 0, { 827, 710 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 15, 17, 33 }, 0, { -222, 719 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 15, 5, 51 }, 0, { 1181, 962 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 15, 53, -79 }, 0, { -9043, -20 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 17, -33 }, 0, { -5419, 719 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 15, 17, -47 }, 0, { -6522, 719 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 15, 6, -50 }, 0, { -6758, 961 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 15, 6, -81 }, 0, { -9200, 961 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 15, 10, -81 }, 0, { -9200, 878 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 15, 28, -81 }, 0, { -9200, 486 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 15, 51, -81 }, 0, { -9200, 20 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 5, 29 }, 0, { -544, 962 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 15, 6, -30 }, 0, { -5183, 961 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 17, -47 }, 0, { -6522, 719 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -15, 28, -81 }, 0, { -9200, 491 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -15, 10, -81 }, 0, { -9200, 878 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -15, 6, -81 }, 0, { -9200, 961 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 6, -50 }, 0, { -6758, 961 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 51, -81 }, 0, { -9200, 20 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 17, -33 }, 0, { -5419, 719 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -15, 53, -79 }, 0, { -9043, -20 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 17, 33 }, 0, { -222, 719 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -15, 53, 49 }, 0, { 1023, -20 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 18, 47 }, 0, { 827, 710 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -15, 28, 49 }, 0, { 1023, 486 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { -15, 6, -30 }, 0, { -5183, 961 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 5, 29 }, 0, { -544, 962 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 5, 51 }, 0, { 1181, 962 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 12, 69 }, 0, { 2575, 827 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 29, 68 }, 0, { 2496, 481 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -15, 6, 69 }, 0, { 2575, 961 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model24[] = {
    { { { -15, 17, -47 }, 0, { -1654, 719 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -15, 6, -50 }, 0, { -1417, 961 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 15, 6, -50 }, 0, { -1417, 961 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 15, 17, -47 }, 0, { -1654, 719 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -15, 17, -33 }, 0, { -2756, 719 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 15, 17, -33 }, 0, { -2756, 719 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 15, 6, -30 }, 0, { -2993, 961 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -15, 6, -30 }, 0, { -2993, 961 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 15, 5, 51 }, 0, { -9358, 962 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -15, 5, 51 }, 0, { -9358, 962 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -15, 18, 47 }, 0, { -9004, 710 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 15, 18, 47 }, 0, { -9004, 710 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 15, 53, -79 }, 0, { 866, -20 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 51, -81 }, 0, { 1023, -20 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { -15, 51, -81 }, 0, { 1023, -20 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { -15, 53, -79 }, 0, { 866, -20 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 51, -81 }, 0, { 1023, -20 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 53, 49 }, 0, { -9200, -20 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 53, 49 }, 0, { -9200, -20 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 28, -81 }, 0, { 1059, 533 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 51, -81 }, 0, { 1059, 15 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 15, 51, -81 }, 0, { -35, 15 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 15, 28, -81 }, 0, { -35, 533 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -15, 53, 63 }, 0, { -10279, -21 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 53, 63 }, 0, { -10279, -21 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 53, 49 }, 0, { -9202, -21 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 53, 49 }, 0, { -9202, -21 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 5, 29 }, 0, { -7632, 962 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 15, 5, 29 }, 0, { -7632, 962 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 15, 17, 33 }, 0, { -7953, 719 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -15, 17, 33 }, 0, { -7953, 719 }, { 0x77, 0x77, 0x77, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model25[] = {
    { { { -15, 12, 69 }, 0, { 87, 132 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 6, 69 }, 0, { 87, 498 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { 15, 6, 69 }, 0, { 963, 498 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { 15, 12, 69 }, 0, { 963, 132 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 10, -81 }, 0, { 135, 312 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 6, -81 }, 0, { 133, 572 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -15, 6, -81 }, 0, { 893, 529 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -15, 10, -81 }, 0, { 895, 269 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 53, 63 }, 0, { 1021, -20 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -15, 53, 63 }, 0, { 0, -20 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -15, 29, 68 }, 0, { 0, 493 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 29, 68 }, 0, { 1021, 493 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Gfx d_course_toads_turnpike_dl_1C628[] = {
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_tyre),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_bus_model_lod1, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1C688[] = {
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_tyre),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model16, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1C6E8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_1C688),
    gsSPDisplayList(d_course_toads_turnpike_dl_1C628),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1C700[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_1C6E8),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1C710[] = {
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_black),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model17, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1C770[] = {
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_black),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model18, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1C7D0[] = {
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_bus_driver_window),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model19, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0x0000, G_TX_RENDERTILE, 0, G_TX_MIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_MIRROR | G_TX_WRAP, 6, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_bus_back_lod0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 2047, 128),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model20, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_MIRROR | G_TX_WRAP, 6, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_bus_front_lod0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 2047, 128),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model21, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_bus_door_lod1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model22, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 3, 5, 4, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_bus_side_lod1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model23, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 0, 2, 0, 4, 2, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(6, 10, 11, 0, 6, 9, 10, 0),
    gsSP2Triangles(6, 11, 4, 0, 6, 4, 5, 0),
    gsSP2Triangles(2, 12, 13, 0, 2, 13, 5, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(14, 17, 18, 0, 14, 19, 15, 0),
    gsSP2Triangles(14, 20, 21, 0, 14, 21, 19, 0),
    gsSP2Triangles(20, 22, 23, 0, 20, 23, 21, 0),
    gsSP2Triangles(24, 25, 23, 0, 24, 23, 22, 0),
    gsSP2Triangles(20, 26, 27, 0, 20, 27, 22, 0),
    gsSP2Triangles(24, 28, 25, 0, 28, 29, 30, 0),
    gsSP2Triangles(28, 30, 25, 0, 28, 31, 29, 0),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model24, 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(13, 16, 16, 0, 17, 12, 15, 0),
    gsSP2Triangles(17, 15, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_bus_front_lod1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model25, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1CA88[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_1C7D0),
    gsSPDisplayList(d_course_toads_turnpike_dl_1C770),
    gsSPDisplayList(d_course_toads_turnpike_dl_1C710),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1CAA8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_1CA88),
    gsSPEndDisplayList(),
};

// 0x1CAB8
Vtx d_course_toads_turnpike_bus_model_lod2[] = {
    { { { 16, 1, 47 }, 0, { 54, 986 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 1, 33 }, 0, { 963, 986 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 16, 33 }, 0, { 963, 45 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 16, 47 }, 0, { 54, 45 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 16, 47 }, 0, { 54, 45 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 16, 33 }, 0, { 963, 45 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 1, 33 }, 0, { 963, 986 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 1, 47 }, 0, { 54, 986 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model26[] = {
    { { { 16, 1, -33 }, 0, { 67, 984 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 1, -47 }, 0, { 970, 984 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 16, -47 }, 0, { 970, 31 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 16, 16, -33 }, 0, { 67, 31 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 16, -33 }, 0, { 67, 31 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 16, -47 }, 0, { 970, 31 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 1, -47 }, 0, { 970, 984 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -16, 1, -33 }, 0, { 67, 984 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model27[] = {
    { { { -15, 5, 49 }, 0, { 0, 2050 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { -15, 6, 67 }, 0, { 1207, 2049 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { -15, 53, 67 }, 0, { 1216, -42 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { -15, 53, 49 }, 0, { 0, -42 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model28[] = {
    { { { 15, 6, -81 }, 0, { 2, 1024 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -15, 6, -81 }, 0, { 1024, 1024 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -15, 53, -81 }, 0, { 1024, -21 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 15, 53, -81 }, 0, { 2, -21 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model29[] = {
    { { { 15, 6, 67 }, 0, { -183, 1024 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 15, 5, 49 }, 0, { 1023, 1025 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 15, 53, 49 }, 0, { 1023, 0 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { 15, 53, 67 }, 0, { -189, 0 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model30[] = {
    { { { -15, 6, -81 }, 0, { 10224, 1024 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { -15, 5, 49 }, 0, { 0, 1025 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { -15, 53, 49 }, 0, { 0, -21 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { -15, 53, -81 }, 0, { 10224, -21 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { 15, 6, -81 }, 0, { 10224, 1024 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 15, 53, -81 }, 0, { 10224, -21 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { 15, 53, 49 }, 0, { 0, -21 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { 15, 5, 49 }, 0, { 0, 1025 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
};

Vtx d_course_toads_turnpike_bus_unknown_model31[] = {
    { { { 15, 53, 49 }, 0, { 1057, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 53, -81 }, 0, { 1057, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 53, -81 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 53, 49 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 53, 67 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 15, 53, 67 }, 0, { 1058, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -15, 6, 67 }, 0, { 1, 1024 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { 15, 6, 67 }, 0, { 1022, 1024 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { 15, 53, 67 }, 0, { 1024, 0 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -15, 53, 67 }, 0, { 1, 0 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
};

Gfx d_course_toads_turnpike_dl_1CD98[] = {
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_tyre),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_bus_model_lod2, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1CDF8[] = {
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_tyre),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model26, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1CE58[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_1CDF8),
    gsSPDisplayList(d_course_toads_turnpike_dl_1CD98),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1CE70[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_1CE58),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1CE80[] = {
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_bus_driver_window),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model27, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_bus_back_lod1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model28, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_bus_door_lod1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model29, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_bus_side_lod1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model30, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_bus_front_lod1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_bus_unknown_model31, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 2, 0),
    gsSP2Triangles(0, 2, 3, 0, 4, 5, 0, 0),
    gsSP2Triangles(4, 0, 3, 0, 6, 7, 8, 0),
    gsSP1Triangle(6, 8, 9, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1D008[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_1CE80),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1D018[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_1D008),
    gsSPEndDisplayList(),
};

// 0x1D028
Vtx d_course_toads_turnpike_tanker_truck_model_lod0[] = {
    { { { 6, 0, 43 }, 0, { 949, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 11, 43 }, 0, { 73, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 11, 31 }, 0, { 73, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 0, 31 }, 0, { 949, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 0, 43 }, 0, { 949, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 11, 43 }, 0, { 73, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 11, 31 }, 0, { 73, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 0, 31 }, 0, { 949, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 0, 31 }, 0, { 949, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 11, 31 }, 0, { 73, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 11, 43 }, 0, { 73, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 0, 43 }, 0, { 949, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 0, 31 }, 0, { 949, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 11, 31 }, 0, { 73, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 11, 43 }, 0, { 73, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 0, 43 }, 0, { 949, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model1[] = {
    { { { -6, 12, -43 }, 0, { 73, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 0, -43 }, 0, { 949, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 0, -56 }, 0, { 949, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 12, -56 }, 0, { 73, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 12, -43 }, 0, { 73, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 0, -43 }, 0, { 949, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 0, -56 }, 0, { 949, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 12, -56 }, 0, { 73, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 12, -56 }, 0, { 73, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 0, -56 }, 0, { 949, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 0, -43 }, 0, { 949, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 12, -43 }, 0, { 73, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 12, -56 }, 0, { 73, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 0, -56 }, 0, { 949, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 0, -43 }, 0, { 949, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 12, -43 }, 0, { 73, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model2[] = {
    { { { -13, 12, -41 }, 0, { 73, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 0, -41 }, 0, { 949, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 0, -28 }, 0, { 949, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 12, -28 }, 0, { 73, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 12, -41 }, 0, { 73, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 0, -41 }, 0, { 949, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 0, -28 }, 0, { 949, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 12, -28 }, 0, { 73, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 12, -28 }, 0, { 73, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 0, -28 }, 0, { 949, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 0, -41 }, 0, { 949, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 12, -41 }, 0, { 73, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 12, -28 }, 0, { 73, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 0, -28 }, 0, { 949, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 0, -41 }, 0, { 949, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 12, -41 }, 0, { 73, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model3[] = {
    { { { -13, 7, -66 }, 0, { 2591, 10 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 7, -66 }, 0, { -2591, 10 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 2, -66 }, 0, { -2591, 1024 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { -13, 2, -66 }, 0, { 2591, 1024 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { -6, 7, -65 }, 0, { 1171, 10 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { -13, 7, -66 }, 0, { 2591, 10 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { -13, 2, -66 }, 0, { 2591, 1034 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { -6, 3, -65 }, 0, { 1171, 829 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { -6, 7, -65 }, 0, { 1171, 10 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { -6, 4, -56 }, 0, { 1144, 780 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { -6, 7, -63 }, 0, { 1164, 10 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 6, 7, -63 }, 0, { -1164, 10 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 6, 4, -56 }, 0, { -1144, 780 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { 6, 3, -65 }, 0, { -1171, 829 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { 6, 7, -65 }, 0, { -1171, 10 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 13, 2, -66 }, 0, { -2591, 1034 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { 13, 7, -66 }, 0, { -2591, 10 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 6, 7, -65 }, 0, { -1171, 10 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -5, 12, -67 }, 0, { 1125, -941 }, { 0x55, 0x55, 0x55, 0xFF } } },
    { { { 5, 12, -67 }, 0, { -1125, -941 }, { 0x55, 0x55, 0x55, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model4[] = {
    { { { -6, 4, 9 }, 0, { -1575, 1441 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { -13, 4, 15 }, 0, { -2251, 1469 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -13, 11, 13 }, 0, { -2017, -5877 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -5, 12, 9 }, 0, { -1536, -6144 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { 5, 12, -67 }, 0, { 8192, -6144 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 5, 12, 9 }, 0, { -1536, -6144 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 6, 4, 9 }, 0, { -1576, 1456 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 6, 4, -56 }, 0, { 6820, 1456 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 13, 11, 13 }, 0, { 979, 935 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 5, 12, 9 }, 0, { 0, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -5, 12, 9 }, 0, { 0, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 11, 13 }, 0, { 979, 935 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 4, 9 }, 0, { -1576, 1456 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { 5, 12, 9 }, 0, { -1536, -6144 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { 13, 11, 13 }, 0, { -2017, -5877 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 13, 4, 15 }, 0, { -2251, 1469 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -5, 12, 9 }, 0, { -1536, -6144 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -5, 12, -67 }, 0, { 8192, -6144 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -6, 4, -56 }, 0, { 6821, 1441 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -6, 4, 9 }, 0, { -1575, 1441 }, { 0x99, 0x99, 0x99, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model5[] = {
    { { { 11, 24, 34 }, 0, { 635, -1644 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 3, 17, 48 }, 0, { 501, -515 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { 9, 17, 48 }, 0, { 593, -515 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { 11, 13, 49 }, 0, { 637, -493 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 11, 24, 34 }, 0, { 635, -1644 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 14, 14, 41 }, 0, { 698, -1008 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 4, 50 }, 0, { 647, -449 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 14, 4, 45 }, 0, { 688, -790 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 12, 14, 33 }, 0, { 661, -1530 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 13, 11, 13 }, 0, { 671, -3193 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 11, 24, 14 }, 0, { 635, -3066 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -11, 24, 34 }, 0, { 183, -1644 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -3, 17, 48 }, 0, { 317, -515 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { 14, 14, 41 }, 0, { 698, -1008 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 14, 4, 45 }, 0, { 688, -790 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -14, 4, 45 }, 0, { 129, -786 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -14, 14, 41 }, 0, { 120, -1008 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -12, 14, 33 }, 0, { 157, -1533 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 12, 14, 33 }, 0, { 661, -1530 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -12, 4, 29 }, 0, { 157, -1771 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 12, 4, 29 }, 0, { 663, -1781 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -11, 24, 34 }, 0, { 183, -1644 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 14, 33 }, 0, { 157, -1533 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -14, 14, 41 }, 0, { 120, -1008 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -11, 13, 49 }, 0, { 184, -493 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -14, 4, 45 }, 0, { 129, -786 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -12, 4, 50 }, 0, { 171, -449 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -9, 17, 48 }, 0, { 225, -515 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { -13, 11, 13 }, 0, { 147, -3193 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -11, 24, 14 }, 0, { 183, -3066 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 11, 24, 14 }, 0, { 635, -3066 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 13, 11, 13 }, 0, { 671, -3193 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model6[] = {
    { { { 11, 24, 14 }, 0, { 635, -3066 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -11, 24, 14 }, 0, { 183, -3066 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -10, 32, 15 }, 0, { 198, -3031 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 10, 32, 15 }, 0, { 621, -3031 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -13, 11, 13 }, 0, { 147, -3193 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -12, 14, 33 }, 0, { 157, -1533 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -11, 24, 34 }, 0, { 183, -1644 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -11, 24, 14 }, 0, { 183, -3066 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 32, 28 }, 0, { 426, 327 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 10, 32, 28 }, 0, { 424, 372 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 10, 32, 15 }, 0, { -224, 372 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 32, 15 }, 0, { -223, 327 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 24, 14 }, 0, { -292, 706 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 10, 32, 15 }, 0, { -227, 368 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 10, 32, 28 }, 0, { 356, 368 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 24, 34 }, 0, { 648, 706 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -11, 24, 34 }, 0, { 648, 706 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 32, 28 }, 0, { 356, 368 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 32, 15 }, 0, { -227, 368 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -11, 24, 14 }, 0, { -292, 706 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -11, 24, 34 }, 0, { 325, 765 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 11, 24, 34 }, 0, { 877, 765 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 10, 32, 28 }, 0, { 889, 361 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -10, 32, 28 }, 0, { 373, 361 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model7[] = {
    { { { -13, 11, 13 }, 0, { 73, -423 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -13, 4, 15 }, 0, { 942, 0 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -12, 4, 29 }, 0, { 1213, 3407 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -12, 14, 33 }, 0, { 93, 4321 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -12, 4, 50 }, 0, { 32, 1024 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -2, 13, 49 }, 0, { 813, -99 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -11, 13, 49 }, 0, { 85, -99 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 4, 50 }, 0, { 2015, 1024 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 2, 13, 49 }, 0, { 1234, -99 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 14, 20, -70 }, 0, { 53, 1861 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 5, 12, -67 }, 0, { 972, 1057 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -5, 12, -67 }, 0, { 972, 33 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -14, 20, -70 }, 0, { 53, -770 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 12, 14, 33 }, 0, { 93, 4321 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 12, 4, 29 }, 0, { 1213, 3407 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 13, 4, 15 }, 0, { 942, 0 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 13, 11, 13 }, 0, { 73, -423 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 11, 13, 49 }, 0, { 1962, -99 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model8[] = {
    { { { 2, 13, 49 }, 0, { 1239, 918 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 13, 49 }, 0, { -293, 1020 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 9, 17, 48 }, 0, { 65, 90 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 3, 17, 48 }, 0, { 1233, 13 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -3, 17, 48 }, 0, { 1233, 13 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -9, 17, 48 }, 0, { 65, 90 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -11, 13, 49 }, 0, { -293, 1020 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -2, 13, 49 }, 0, { 1239, 918 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 3, 17, 48 }, 0, { 1803, -82 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -3, 17, 48 }, 0, { 1018, 4 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -2, 13, 49 }, 0, { 1177, 893 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 2, 13, 49 }, 0, { 1951, 807 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model9[] = {
    { { { 14, 20, -70 }, 0, { -146, 2340 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { -14, 20, -70 }, 0, { 1232, 2340 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { -14, 31, -70 }, 0, { 1232, 731 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 14, 31, -70 }, 0, { -146, 731 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -8, 39, -67 }, 0, { 954, -460 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 8, 39, -67 }, 0, { 131, -460 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -14, 20, -70 }, 0, { 1433, 2340 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -14, 20, 12 }, 0, { -1182, 2340 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -14, 31, 12 }, 0, { -1182, 731 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 31, -70 }, 0, { 1433, 731 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -5, 12, -67 }, 0, { 1344, 3476 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -5, 12, 9 }, 0, { -1088, 3476 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -8, 39, -67 }, 0, { 1344, -460 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -8, 39, 9 }, 0, { -1088, -460 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 8, 39, 9 }, 0, { -1088, -460 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 8, 39, -67 }, 0, { 1344, -460 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 14, 31, -70 }, 0, { 1433, 731 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 14, 31, 12 }, 0, { -1182, 731 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 14, 20, 12 }, 0, { -1182, 2340 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 14, 20, -70 }, 0, { 1433, 2340 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -14, 20, 12 }, 0, { -89, 2340 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 14, 20, 12 }, 0, { 1170, 2340 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 14, 31, 12 }, 0, { 1170, 731 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -14, 31, 12 }, 0, { -89, 731 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 8, 39, 9 }, 0, { 916, -460 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -8, 39, 9 }, 0, { 164, -460 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -5, 12, 9 }, 0, { 295, 3476 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 5, 12, 9 }, 0, { 785, 3476 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -5, 12, -67 }, 0, { 1023, 60 }, { 0x55, 0x55, 0x55, 0xFF } } },
    { { { 5, 12, -67 }, 0, { 0, 60 }, { 0x55, 0x55, 0x55, 0xFF } } },
    { { { 6, 4, -56 }, 0, { -9, 982 }, { 0x55, 0x55, 0x55, 0xFF } } },
    { { { -6, 4, -56 }, 0, { 1031, 982 }, { 0x55, 0x55, 0x55, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model10[] = {
    { { { 14, 20, 12 }, 0, { -1182, 2340 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 5, 12, 9 }, 0, { -1088, 3476 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 5, 12, -67 }, 0, { 1344, 3476 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 14, 20, -70 }, 0, { 1433, 2340 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model11[] = {
    { { { 12, 2, 52 }, 0, { 2367, 1024 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 13, 2, 50 }, 0, { 2706, 1024 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 13, 8, 50 }, 0, { 2706, 69 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 8, 52 }, 0, { 2367, 69 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 8, 52 }, 0, { -2367, 69 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 2, 52 }, 0, { -2367, 1024 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { -13, 8, 50 }, 0, { -2706, 69 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 2, 50 }, 0, { -2706, 1024 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 12, 2, 52 }, 0, { 2367, 1024 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { 12, 4, 50 }, 0, { 2380, 799 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 4, 50 }, 0, { -2380, 799 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -12, 2, 52 }, 0, { -2367, 1024 }, { 0x99, 0x99, 0x99, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model12[] = {
    { { { -6, 9, -40 }, 0, { 10030, -2503 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 9, -40 }, 0, { 13373, -2503 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 12, -34 }, 0, { 13373, -4267 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 12, -34 }, 0, { 10030, -4267 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 3, -40 }, 0, { 10030, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 3, -40 }, 0, { 13373, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 9, -29 }, 0, { 13373, -2503 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 9, -29 }, 0, { 10030, -2503 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 3, -29 }, 0, { 13373, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 3, -29 }, 0, { 10030, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 0, -34 }, 0, { 13373, 2787 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 0, -34 }, 0, { 10030, 2787 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 3, -29 }, 0, { 10030, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 3, -29 }, 0, { 13373, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 9, -29 }, 0, { 13373, -2503 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 9, -29 }, 0, { 10030, -2503 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 12, -34 }, 0, { 13373, -4267 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 12, -34 }, 0, { 10030, -4267 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 9, -40 }, 0, { 13373, -2503 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 9, -40 }, 0, { 10030, -2503 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 3, -40 }, 0, { 13373, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 3, -40 }, 0, { 10030, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 0, -34 }, 0, { 10030, 2787 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 0, -34 }, 0, { 13373, 2787 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model13[] = {
    { { { -6, 8, 32 }, 0, { 10030, -2503 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 8, 32 }, 0, { 13373, -2503 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 11, 37 }, 0, { 13373, -4267 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 11, 37 }, 0, { 10030, -4267 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 3, 32 }, 0, { 10030, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 3, 32 }, 0, { 13373, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 8, 42 }, 0, { 13373, -2503 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 8, 42 }, 0, { 10030, -2503 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 3, 42 }, 0, { 13373, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 3, 42 }, 0, { 10030, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 0, 37 }, 0, { 13373, 2787 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 0, 37 }, 0, { 10030, 2787 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 3, 32 }, 0, { 10030, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 3, 32 }, 0, { 13373, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 0, 37 }, 0, { 13373, 2787 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 0, 37 }, 0, { 10030, 2787 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 3, 42 }, 0, { 13373, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 3, 42 }, 0, { 10030, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 8, 42 }, 0, { 13373, -2503 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 8, 42 }, 0, { 10030, -2503 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 8, 32 }, 0, { 10030, -2503 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 8, 32 }, 0, { 13373, -2503 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 11, 37 }, 0, { 13373, -4267 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 11, 37 }, 0, { 10030, -4267 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model14[] = {
    { { { -6, 9, -55 }, 0, { 10030, -2503 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 9, -55 }, 0, { 13373, -2503 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 12, -49 }, 0, { 13373, -4267 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 12, -49 }, 0, { 10030, -4267 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 3, -55 }, 0, { 10030, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 3, -55 }, 0, { 13373, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 9, -44 }, 0, { 13373, -2503 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 9, -44 }, 0, { 10030, -2503 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 3, -44 }, 0, { 13373, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 3, -44 }, 0, { 10030, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 0, -49 }, 0, { 13373, 2787 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 0, -49 }, 0, { 10030, 2787 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 3, -44 }, 0, { 10030, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 3, -44 }, 0, { 13373, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 9, -44 }, 0, { 13373, -2503 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 9, -44 }, 0, { 10030, -2503 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 12, -49 }, 0, { 13373, -4267 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 12, -49 }, 0, { 10030, -4267 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 9, -55 }, 0, { 13373, -2503 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 9, -55 }, 0, { 10030, -2503 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 3, -55 }, 0, { 13373, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 3, -55 }, 0, { 10030, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 0, -49 }, 0, { 10030, 2787 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 0, -49 }, 0, { 13373, 2787 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Gfx d_course_toads_turnpike_dl_1E288[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_tyre),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_model_lod0, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1E318[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_tyre),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model1, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1E3A8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_tyre),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model2, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1E438[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_1E3A8),
    gsSPDisplayList(d_course_toads_turnpike_dl_1E318),
    gsSPDisplayList(d_course_toads_turnpike_dl_1E288),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1E458[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_1E438),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1E468[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_tanker_truck_bumper),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model3, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 7, 9, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(13, 15, 16, 0, 13, 16, 17, 0),
    gsSP2Triangles(10, 9, 18, 0, 12, 11, 19, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1E508[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_black),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model4, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_tanker_truck_windshield),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model5, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(4, 3, 5, 0, 6, 7, 5, 0),
    gsSP2Triangles(6, 5, 3, 0, 5, 8, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 4, 0),
    gsSP2Triangles(0, 11, 12, 0, 0, 12, 1, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 13, 0),
    gsSP2Triangles(17, 19, 20, 0, 17, 20, 18, 0),
    gsSP2Triangles(21, 22, 23, 0, 23, 24, 21, 0),
    gsSP2Triangles(23, 25, 26, 0, 23, 26, 24, 0),
    gsSP2Triangles(21, 24, 27, 0, 11, 27, 12, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model6, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_MIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_tanker_truck_front),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model7, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 8, 0),
    gsSP2Triangles(4, 8, 5, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 7, 17, 8, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_tanker_truck_headlights),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model8, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_tanker_truck_stripe),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model9, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(6, 10, 11, 0, 6, 11, 7, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(8, 13, 12, 0, 8, 12, 9, 0),
    gsSP2Triangles(16, 15, 14, 0, 16, 14, 17, 0),
    gsSP2Triangles(18, 19, 16, 0, 18, 16, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(22, 24, 25, 0, 22, 25, 23, 0),
    gsSP2Triangles(20, 26, 27, 0, 20, 27, 21, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model10, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1E810[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_tanker_truck_bumper),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model11, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 0, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1E8A0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_black),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model12, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(3, 2, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 5, 0, 11, 5, 4, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0),
    gsSP2Triangles(17, 16, 18, 0, 17, 18, 19, 0),
    gsSP2Triangles(19, 18, 20, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 13, 0, 22, 13, 12, 0),
    gsSP2Triangles(21, 20, 23, 0, 21, 23, 22, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1E970[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_black),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model13, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(3, 2, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 5, 0, 11, 5, 4, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0),
    gsSP2Triangles(17, 16, 18, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 13, 0, 20, 13, 12, 0),
    gsSP2Triangles(19, 18, 22, 0, 19, 22, 23, 0),
    gsSP2Triangles(23, 22, 21, 0, 23, 21, 20, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1EA40[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_black),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model14, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(3, 2, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 5, 0, 11, 5, 4, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0),
    gsSP2Triangles(17, 16, 18, 0, 17, 18, 19, 0),
    gsSP2Triangles(19, 18, 20, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 13, 0, 22, 13, 12, 0),
    gsSP2Triangles(21, 20, 23, 0, 21, 23, 22, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1EB10[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_1EA40),
    gsSPDisplayList(d_course_toads_turnpike_dl_1E970),
    gsSPDisplayList(d_course_toads_turnpike_dl_1E8A0),
    gsSPDisplayList(d_course_toads_turnpike_dl_1E810),
    gsSPDisplayList(d_course_toads_turnpike_dl_1E508),
    gsSPDisplayList(d_course_toads_turnpike_dl_1E468),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1EB48[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_1EB10),
    gsSPEndDisplayList(),
};

// 0x1EB58
Vtx d_course_toads_turnpike_tanker_truck_model_lod1[] = {
    { { { -13, 12, -56 }, 0, { 73, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 0, -56 }, 0, { 949, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 0, -43 }, 0, { 949, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 12, -43 }, 0, { 73, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 12, -41 }, 0, { 73, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 0, -41 }, 0, { 949, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 0, -28 }, 0, { 949, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 12, -28 }, 0, { 73, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model15[] = {
    { { { -12, 11, 42 }, 0, { 949, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 11, 32 }, 0, { 73, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 0, 32 }, 0, { 73, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 0, 42 }, 0, { 949, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model16[] = {
    { { { 13, 12, -43 }, 0, { 73, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 0, -43 }, 0, { 949, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 0, -56 }, 0, { 949, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 12, -56 }, 0, { 73, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 12, -28 }, 0, { 73, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 0, -28 }, 0, { 949, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 0, -41 }, 0, { 949, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 12, -41 }, 0, { 73, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model17[] = {
    { { { 12, 0, 42 }, 0, { 949, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 0, 32 }, 0, { 73, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 11, 32 }, 0, { 73, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 11, 42 }, 0, { 949, 73 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model18[] = {
    { { { -6, 4, 9 }, 0, { -1575, 1441 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { -13, 11, 13 }, 0, { -2017, -5877 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -5, 12, 9 }, 0, { -1536, -6144 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { -13, 4, 15 }, 0, { -2251, 1469 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 5, 12, -67 }, 0, { 8192, -6144 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 5, 12, 9 }, 0, { -1536, -6144 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 6, 4, 9 }, 0, { -1576, 1456 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 6, 4, -56 }, 0, { 6820, 1456 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 6, 4, 9 }, 0, { -1576, 1456 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { 5, 12, 9 }, 0, { -1536, -6144 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { 13, 11, 13 }, 0, { -2017, -5877 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 13, 4, 15 }, 0, { -2251, 1469 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -5, 12, 9 }, 0, { -1536, -6144 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -5, 12, -67 }, 0, { 8192, -6144 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -6, 4, -56 }, 0, { 6821, 1441 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -6, 4, 9 }, 0, { -1575, 1441 }, { 0x99, 0x99, 0x99, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model19[] = {
    { { { 14, 14, 41 }, 0, { 698, -1008 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 14, 33 }, 0, { 661, -1530 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 11, 24, 34 }, 0, { 635, -1644 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 11, 13 }, 0, { 671, -3193 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 11, 24, 14 }, 0, { 635, -3066 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 13, 49 }, 0, { 637, -493 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 9, 17, 48 }, 0, { 593, -515 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { 12, 4, 50 }, 0, { 647, -449 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 14, 4, 45 }, 0, { 688, -790 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -12, 14, 33 }, 0, { 157, -1533 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -12, 4, 29 }, 0, { 157, -1771 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 12, 4, 29 }, 0, { 663, -1781 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 12, 14, 33 }, 0, { 661, -1530 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -13, 11, 13 }, 0, { 147, -3193 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -12, 14, 33 }, 0, { 157, -1533 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -11, 24, 34 }, 0, { 183, -1644 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -11, 24, 14 }, 0, { 183, -3066 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 14, 41 }, 0, { 120, -1008 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -11, 13, 49 }, 0, { 184, -493 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -9, 17, 48 }, 0, { 225, -515 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { -11, 24, 34 }, 0, { 648, 706 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 32, 28 }, 0, { 356, 368 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 32, 15 }, 0, { -227, 368 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -11, 24, 14 }, 0, { -292, 706 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 32, 28 }, 0, { 426, 327 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 10, 32, 28 }, 0, { 424, 372 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 10, 32, 15 }, 0, { -224, 372 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 32, 15 }, 0, { -223, 327 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 24, 14 }, 0, { -292, 706 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 10, 32, 15 }, 0, { -227, 368 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 10, 32, 28 }, 0, { 356, 368 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 24, 34 }, 0, { 648, 706 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model20[] = {
    { { { 11, 24, 14 }, 0, { 635, -3066 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -11, 24, 14 }, 0, { 183, -3066 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -10, 32, 15 }, 0, { 198, -3031 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 10, 32, 15 }, 0, { 621, -3031 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -13, 11, 13 }, 0, { 147, -3193 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 13, 11, 13 }, 0, { 671, -3193 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -14, 14, 41 }, 0, { 120, -1008 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 4, 45 }, 0, { 129, -786 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -12, 4, 50 }, 0, { 171, -449 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -11, 13, 49 }, 0, { 184, -493 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 11, 24, 34 }, 0, { 635, -1644 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 3, 17, 48 }, 0, { 501, -515 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { 9, 17, 48 }, 0, { 593, -515 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { -11, 24, 34 }, 0, { 183, -1644 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -3, 17, 48 }, 0, { 317, -515 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { -9, 17, 48 }, 0, { 225, -515 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { 14, 14, 41 }, 0, { 698, -1008 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 14, 4, 45 }, 0, { 688, -790 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -14, 4, 45 }, 0, { 129, -786 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -14, 14, 41 }, 0, { 120, -1008 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -11, 24, 34 }, 0, { 325, 765 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 11, 24, 34 }, 0, { 877, 765 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 10, 32, 28 }, 0, { 889, 361 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -10, 32, 28 }, 0, { 373, 361 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model21[] = {
    { { { -12, 4, 50 }, 0, { 32, 1024 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -2, 13, 49 }, 0, { 813, -99 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -11, 13, 49 }, 0, { 85, -99 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 4, 50 }, 0, { 2015, 1024 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 2, 13, 49 }, 0, { 1234, -99 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 13, 49 }, 0, { 1962, -99 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 11, 13 }, 0, { 73, -423 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -13, 4, 15 }, 0, { 942, 0 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -12, 4, 29 }, 0, { 1213, 3407 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -12, 14, 33 }, 0, { 93, 4321 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 12, 14, 33 }, 0, { 93, 4321 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 12, 4, 29 }, 0, { 1213, 3407 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 13, 4, 15 }, 0, { 942, 0 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 13, 11, 13 }, 0, { 73, -423 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 14, 20, -70 }, 0, { 53, 1861 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 5, 12, -67 }, 0, { 972, 1057 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -5, 12, -67 }, 0, { 972, 33 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -14, 20, -70 }, 0, { 53, -770 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model22[] = {
    { { { 3, 17, 48 }, 0, { 1803, -82 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -3, 17, 48 }, 0, { 1018, 4 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -2, 13, 49 }, 0, { 1177, 893 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 2, 13, 49 }, 0, { 1951, 807 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -3, 17, 48 }, 0, { 1233, 13 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -9, 17, 48 }, 0, { 65, 90 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -11, 13, 49 }, 0, { -293, 1020 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -2, 13, 49 }, 0, { 1239, 918 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 2, 13, 49 }, 0, { 1239, 918 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 13, 49 }, 0, { -293, 1020 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 9, 17, 48 }, 0, { 65, 90 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 3, 17, 48 }, 0, { 1233, 13 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model23[] = {
    { { { -14, 20, -70 }, 0, { 1433, 2340 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -14, 20, 12 }, 0, { -1182, 2340 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -14, 31, 12 }, 0, { -1182, 731 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 31, -70 }, 0, { 1433, 731 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -5, 12, -67 }, 0, { 1344, 3476 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -5, 12, 9 }, 0, { -1088, 3476 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -8, 39, -67 }, 0, { 1344, -460 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -8, 39, 9 }, 0, { -1088, -460 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 8, 39, 9 }, 0, { -1088, -460 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 8, 39, -67 }, 0, { 1344, -460 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 14, 31, -70 }, 0, { 1433, 731 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 14, 31, 12 }, 0, { -1182, 731 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 14, 20, -70 }, 0, { -146, 2340 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { -14, 20, -70 }, 0, { 1232, 2340 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { -14, 31, -70 }, 0, { 1232, 731 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 14, 31, -70 }, 0, { -146, 731 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -8, 39, -67 }, 0, { 954, -460 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 8, 39, -67 }, 0, { 131, -460 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 14, 20, 12 }, 0, { -1182, 2340 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 14, 20, -70 }, 0, { 1433, 2340 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -14, 20, 12 }, 0, { -89, 2340 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 14, 20, 12 }, 0, { 1170, 2340 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 14, 31, 12 }, 0, { 1170, 731 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -14, 31, 12 }, 0, { -89, 731 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 8, 39, 9 }, 0, { 916, -460 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { -8, 39, 9 }, 0, { 164, -460 }, { 0xDD, 0xDD, 0xDD, 0xFF } } },
    { { { 5, 12, 9 }, 0, { -1088, 3476 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 5, 12, -67 }, 0, { 1344, 3476 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -5, 12, 9 }, 0, { 295, 3476 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 5, 12, 9 }, 0, { 785, 3476 }, { 0x77, 0x77, 0x77, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model24[] = {
    { { { -5, 12, -67 }, 0, { 1023, 60 }, { 0x55, 0x55, 0x55, 0xFF } } },
    { { { 5, 12, -67 }, 0, { 0, 60 }, { 0x55, 0x55, 0x55, 0xFF } } },
    { { { 6, 4, -56 }, 0, { -9, 982 }, { 0x55, 0x55, 0x55, 0xFF } } },
    { { { -6, 4, -56 }, 0, { 1031, 982 }, { 0x55, 0x55, 0x55, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model25[] = {
    { { { -13, 12, -48 }, 0, { 0, -5376 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 12, -48 }, 0, { 3540, -5376 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 0, -48 }, 0, { 3540, 969 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 0, -48 }, 0, { 0, 969 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 0, -35 }, 0, { 3540, 969 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 0, -35 }, 0, { 0, 969 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 12, -35 }, 0, { 0, -5376 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 12, -35 }, 0, { 3540, -5376 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model26[] = {
    { { { -12, 11, 38 }, 0, { 0, -5376 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 11, 38 }, 0, { 3540, -5376 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -6, 0, 38 }, 0, { 3540, 969 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 0, 38 }, 0, { 0, 969 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model27[] = {
    { { { 13, 0, -48 }, 0, { 0, 969 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 0, -48 }, 0, { 3540, 969 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 12, -48 }, 0, { 3540, -5376 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 12, -48 }, 0, { 0, -5376 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 12, -35 }, 0, { 3540, -5376 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 12, -35 }, 0, { 0, -5376 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 0, -35 }, 0, { 0, 969 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 0, -35 }, 0, { 3540, 969 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model28[] = {
    { { { 12, 0, 38 }, 0, { 0, 969 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 0, 38 }, 0, { 3540, 969 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 6, 11, 38 }, 0, { 3540, -5376 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 11, 38 }, 0, { 0, -5376 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model29[] = {
    { { { 6, 7, -61 }, 0, { -1171, 10 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 6, 4, -56 }, 0, { -1144, 780 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 6, 3, -65 }, 0, { -1171, 829 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 6, 7, -65 }, 0, { -1171, 10 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { -6, 7, -65 }, 0, { 1171, 10 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { -6, 3, -65 }, 0, { 1171, 829 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -6, 4, -56 }, 0, { 1144, 780 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -6, 7, -61 }, 0, { 1156, 10 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { -13, 7, -65 }, 0, { 2591, 10 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { 13, 7, -65 }, 0, { -2591, 10 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { 13, 2, -65 }, 0, { -2591, 1024 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -13, 2, -65 }, 0, { 2591, 1024 }, { 0x99, 0x99, 0x99, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model30[] = {
    { { { 13, 8, 52 }, 0, { 2572, 69 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 8, 52 }, 0, { -2572, 69 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 2, 52 }, 0, { -2572, 1024 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 13, 2, 52 }, 0, { 2572, 1024 }, { 0x99, 0x99, 0x99, 0xFF } } },
};

Gfx d_course_toads_turnpike_dl_1F7D8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_tyre),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_model_lod1, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1F850[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_tyre),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model15, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1F8C0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_tyre),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model16, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1F938[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_tyre),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model17, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1F9A8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_1F938),
    gsSPDisplayList(d_course_toads_turnpike_dl_1F8C0),
    gsSPDisplayList(d_course_toads_turnpike_dl_1F850),
    gsSPDisplayList(d_course_toads_turnpike_dl_1F7D8),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1F9D0[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_1F9A8),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1F9E0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_black),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model18, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_tanker_truck_windshield),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model19, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 4, 2, 0, 2, 5, 0, 0),
    gsSP2Triangles(6, 5, 2, 0, 7, 8, 0, 0),
    gsSP2Triangles(7, 0, 5, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 15, 14, 17, 0),
    gsSP2Triangles(15, 18, 19, 0, 17, 18, 15, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model20, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 1, 0, 0, 4, 0, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 14, 0),
    gsSP2Triangles(10, 14, 11, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_MIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_tanker_truck_front),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model21, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 4, 1, 0, 3, 5, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_tanker_truck_headlights),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model22, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_tanker_truck_stripe),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model23, 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(2, 7, 6, 0, 2, 6, 3, 0),
    gsSP2Triangles(10, 9, 8, 0, 10, 8, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(14, 16, 17, 0, 14, 17, 15, 0),
    gsSP2Triangles(18, 19, 10, 0, 18, 10, 11, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(22, 24, 25, 0, 22, 25, 23, 0),
    gsSP2Triangles(18, 26, 27, 0, 18, 27, 19, 0),
    gsSP2Triangles(20, 28, 29, 0, 20, 29, 21, 0),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model24, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1FCD8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_black),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model25, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1FD58[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_black),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model26, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1FDD0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_black),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model27, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1FE50[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_black),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model28, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1FEC8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_tanker_truck_bumper),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model29, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1FF50[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_tanker_truck_bumper),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model30, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_1FFC8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_1FF50), gsSPDisplayList(d_course_toads_turnpike_dl_1FEC8),
    gsSPDisplayList(d_course_toads_turnpike_dl_1FE50), gsSPDisplayList(d_course_toads_turnpike_dl_1FDD0),
    gsSPDisplayList(d_course_toads_turnpike_dl_1FD58), gsSPDisplayList(d_course_toads_turnpike_dl_1FCD8),
    gsSPDisplayList(d_course_toads_turnpike_dl_1F9E0), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_20008[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_1FFC8),
    gsSPEndDisplayList(),
};

// 0x20018
Vtx d_course_toads_turnpike_tanker_truck_model_lod2[] = {
    { { { 14, 20, 12 }, 0, { -1251, 455 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 14, 0, 12 }, 0, { -1245, 1024 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { 14, 0, -69 }, 0, { 1577, 1024 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { 14, 31, -69 }, 0, { 1577, 142 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 14, 31, 12 }, 0, { -1251, 142 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 8, 39, -67 }, 0, { 1480, -89 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 8, 39, 9 }, 0, { -1148, -89 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -8, 39, -67 }, 0, { 1480, -89 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -8, 39, 9 }, 0, { -1148, -89 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 31, 12 }, 0, { -1251, 142 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 31, -69 }, 0, { 1577, 142 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 0, -69 }, 0, { 1577, 1024 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { -14, 0, 12 }, 0, { -1245, 1024 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { -14, 20, 12 }, 0, { -1251, 455 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model31[] = {
    { { { -14, 31, -69 }, 0, { 974, 238 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -8, 39, -67 }, 0, { 785, 13 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 8, 39, -67 }, 0, { 228, 13 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 14, 31, -69 }, 0, { 39, 238 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 14, 0, -69 }, 0, { 39, 1096 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { -14, 0, -69 }, 0, { 974, 1096 }, { 0xEE, 0xEE, 0xEE, 0xFF } } },
    { { { 14, 31, 12 }, 0, { 39, 238 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 8, 39, 9 }, 0, { 228, 13 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -8, 39, 9 }, 0, { 785, 13 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 31, 12 }, 0, { 974, 238 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 0, 12 }, 0, { 974, 1096 }, { 0xAA, 0xAA, 0xAA, 0xFF } } },
    { { { 14, 0, 12 }, 0, { 39, 1096 }, { 0x88, 0x88, 0x88, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model32[] = {
    { { { -12, 23, 35 }, 0, { 422, 263 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 11, 23, 35 }, 0, { 422, 263 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 11, 32, 28 }, 0, { 612, 0 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -11, 32, 28 }, 0, { 612, 0 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 11, 23, 35 }, 0, { 422, 263 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -12, 23, 35 }, 0, { 422, 263 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -12, 18, 48 }, 0, { 55, 438 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 18, 48 }, 0, { 55, 439 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 0, 50 }, 0, { -6, 1024 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -12, 23, 35 }, 0, { 422, 263 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -13, 0, 12 }, 0, { 1023, 1024 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { -11, 32, 28 }, 0, { 612, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -10, 32, 13 }, 0, { 1004, -13 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 11, 32, 28 }, 0, { 612, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 10, 32, 13 }, 0, { 1004, -13 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 0, 12 }, 0, { 1023, 1024 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { 11, 23, 35 }, 0, { 422, 263 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 0, 12 }, 0, { 1024, 1024 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { 11, 23, 35 }, 0, { 422, 284 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 12, 18, 48 }, 0, { 55, 455 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 13, 0, 50 }, 0, { -6, 1024 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
};

Vtx d_course_toads_turnpike_tanker_truck_unknown_model33[] = {
    { { { 13, 0, 50 }, 0, { 951, 1114 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 12, 18, 48 }, 0, { 909, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -12, 18, 48 }, 0, { 128, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -14, 0, 50 }, 0, { 87, 1115 }, { 0x99, 0x99, 0x99, 0xFF } } },
};

// 0x20348
Gfx d_course_toads_turnpike_dl_20348[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_tanker_truck_side_back_lod1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_model_lod2, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 1, 2, 0),
    gsSP2Triangles(0, 2, 3, 0, 0, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 3, 6, 4, 0),
    gsSP2Triangles(7, 8, 6, 0, 7, 6, 5, 0),
    gsSP2Triangles(9, 8, 7, 0, 9, 7, 10, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP1Triangle(9, 12, 13, 0),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_tanker_truck_back_lod1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model31, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 6, 0, 10, 6, 9, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_20450[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_tanker_truck_side_front_lod1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model32, 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 6, 9, 0, 8, 9, 10, 0),
    gsSP2Triangles(9, 11, 12, 0, 9, 12, 10, 0),
    gsSP2Triangles(11, 13, 14, 0, 11, 14, 12, 0),
    gsSP2Triangles(15, 14, 13, 0, 15, 13, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_204F8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_20450),
    gsSPDisplayList(d_course_toads_turnpike_dl_20348),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_20510[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_204F8),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_20520[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_tanker_truck_front_lod1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_tanker_truck_unknown_model33, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_20598[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_20520),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_205A8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_20598),
    gsSPEndDisplayList(),
};

// 0x205B8
Vtx d_course_toads_turnpike_car_model_lod0[] = {
    { { { 88, 66, -136 }, 0, { 63, 51 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 88, 66, -73 }, 0, { 966, 51 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 88, 0, -73 }, 0, { 966, 965 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 88, 0, -136 }, 0, { 63, 965 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 58, 0, -136 }, 0, { 63, 965 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 58, 0, -73 }, 0, { 966, 965 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 58, 66, -73 }, 0, { 966, 51 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 58, 66, -136 }, 0, { 63, 51 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -58, 66, -136 }, 0, { 63, 51 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -58, 66, -73 }, 0, { 966, 51 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -58, 0, -73 }, 0, { 966, 965 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -58, 0, -136 }, 0, { 63, 965 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -88, 0, -136 }, 0, { 63, 965 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -88, 0, -73 }, 0, { 966, 965 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -88, 66, -73 }, 0, { 966, 51 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -88, 66, -136 }, 0, { 63, 51 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model1[] = {
    { { { -88, 66, 128 }, 0, { 963, 38 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -88, 66, 62 }, 0, { 60, 52 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -88, 0, 62 }, 0, { 60, 992 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -88, 0, 128 }, 0, { 963, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -58, 0, 128 }, 0, { 963, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -58, 0, 62 }, 0, { 60, 992 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -58, 66, 62 }, 0, { 60, 52 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -58, 66, 128 }, 0, { 963, 38 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 58, 66, 128 }, 0, { 963, 38 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 58, 66, 62 }, 0, { 60, 52 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 58, 0, 62 }, 0, { 60, 992 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 58, 0, 128 }, 0, { 963, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 88, 0, 128 }, 0, { 963, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 88, 0, 62 }, 0, { 60, 992 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 88, 66, 62 }, 0, { 60, 52 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 88, 66, 128 }, 0, { 963, 38 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model2[] = {
    { { { 53, 27, -172 }, 0, { 390, 772 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -53, 27, -172 }, 0, { 579, 759 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -60, 23, -182 }, 0, { 592, 773 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 60, 23, -182 }, 0, { 377, 788 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -81, 23, -160 }, 0, { 629, 771 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -81, 44, -160 }, 0, { 629, 698 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -60, 44, -182 }, 0, { 592, 700 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 60, 44, -182 }, 0, { 377, 715 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 81, 44, -160 }, 0, { 339, 718 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 81, 23, -160 }, 0, { 339, 791 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model3[] = {
    { { { -28, 27, 180 }, 0, { 447, 779 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 28, 27, 180 }, 0, { 554, 775 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 57, 24, 185 }, 0, { 610, 788 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -57, 24, 185 }, 0, { 390, 798 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 79, 24, 166 }, 0, { 653, 786 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 79, 49, 166 }, 0, { 655, 668 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 57, 49, 185 }, 0, { 612, 670 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -57, 49, 185 }, 0, { 392, 680 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -79, 49, 166 }, 0, { 349, 682 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -79, 24, 166 }, 0, { 347, 800 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model4[] = {
    { { { -49, 156, 59 }, 0, { 371, 467 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -62, 102, 98 }, 0, { 311, 829 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 62, 102, 98 }, 0, { 864, 771 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 49, 156, 59 }, 0, { 804, 422 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 55, 153, 53 }, 0, { 352, 491 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 100, 89 }, 0, { 506, 708 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 100, 0 }, 0, { 47, 708 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 55, 153, 0 }, 0, { 79, 491 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 100, -15 }, 0, { 427, 649 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 100, -95 }, 0, { 682, 649 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 55, 153, -69 }, 0, { 606, 480 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 55, 153, -15 }, 0, { 433, 480 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 47, 151, -79 }, 0, { 446, 497 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 52, 105, -110 }, 0, { 432, 660 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -52, 105, -110 }, 0, { 707, 660 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -47, 151, -79 }, 0, { 693, 497 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -70, 100, 0 }, 0, { 47, 708 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 100, 89 }, 0, { 506, 708 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -55, 153, 53 }, 0, { 352, 491 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -55, 153, 0 }, 0, { 79, 491 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -55, 153, -69 }, 0, { 606, 480 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 100, -95 }, 0, { 682, 649 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 100, -15 }, 0, { 427, 649 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -55, 153, -15 }, 0, { 433, 480 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model5[] = {
    { { { 28, 92, 173 }, 0, { 1077, -156 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 28, 27, 180 }, 0, { 969, 2228 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { 70, 27, 166 }, 0, { -1093, 2103 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 70, 82, 160 }, 0, { -1003, 78 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 82, 160 }, 0, { -1003, 78 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 27, 166 }, 0, { -1093, 2103 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -28, 27, 180 }, 0, { 969, 2228 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { -28, 92, 173 }, 0, { 1077, -156 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model6[] = {
    { { { 28, 92, 173 }, 0, { 918, 256 }, { 0xFF, 0xF9, 0xFF, 0xFF } } },
    { { { -28, 92, 173 }, 0, { 512, 256 }, { 0xFF, 0xF9, 0xFF, 0xFF } } },
    { { { -28, 27, 180 }, 0, { 512, 1371 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { 28, 27, 180 }, 0, { 918, 1371 }, { 0x88, 0x88, 0x88, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model7[] = {
    { { { 70, 27, -164 }, 0, { 871, -10523 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 70, 91, -164 }, 0, { 871, -10523 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 92, 66, -129 }, 0, { 983, -9810 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 100, -95 }, 0, { 871, -9113 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 81, 66, -78 }, 0, { 927, -8760 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 27, -151 }, 0, { 871, -10262 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -70, 27, -164 }, 0, { 152, -10523 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -70, 27, -151 }, 0, { 152, -10262 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -92, 66, -129 }, 0, { 40, -9810 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 100, -95 }, 0, { 152, -9113 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 91, -164 }, 0, { 152, -10523 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -81, 66, -78 }, 0, { 96, -8760 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -53, 102, -164 }, 0, { 242, -10526 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -53, 92, -172 }, 0, { 242, -10696 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -93, 67, 116 }, 0, { 37, -4786 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 27, 143 }, 0, { 152, -4246 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -70, 27, 166 }, 0, { 152, -3765 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -70, 82, 160 }, 0, { 152, -3885 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 100, 89 }, 0, { 152, -5336 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -28, 92, 173 }, 0, { 369, -3631 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -81, 66, 73 }, 0, { 97, -5671 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 100, 89 }, 0, { 871, -5336 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 82, 160 }, 0, { 871, -3885 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 93, 67, 116 }, 0, { 986, -4786 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 27, 166 }, 0, { 871, -3765 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 70, 27, 143 }, 0, { 871, -4246 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 81, 66, 73 }, 0, { 926, -5671 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 28, 92, 173 }, 0, { 654, -3631 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 55, 153, 53 }, 0, { 792, -6083 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 48, 162, 48 }, 0, { 756, -6190 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 49, 156, 59 }, 0, { 761, -5957 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 62, 102, 98 }, 0, { 829, -5156 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model8[] = {
    { { { 81, 66, 73 }, 0, { 926, -5671 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 100, 0 }, 0, { 871, -7173 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 100, 89 }, 0, { 871, -5336 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 28, 92, 173 }, 0, { 654, -3631 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 62, 102, 98 }, 0, { 829, -5156 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 48, 162, 48 }, 0, { 756, -6190 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 55, 153, 53 }, 0, { 792, -6083 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 55, 153, 0 }, 0, { 792, -7173 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -81, 66, -78 }, 0, { 96, -8760 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 100, -15 }, 0, { 152, -7480 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 100, -95 }, 0, { 152, -9113 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -81, 66, 73 }, 0, { 97, -5671 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 100, 0 }, 0, { 152, -7173 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -75, 29, -52 }, 0, { 126, -8241 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -75, 29, 45 }, 0, { 127, -6248 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -53, 102, -164 }, 0, { 242, -10526 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -52, 105, -110 }, 0, { 243, -9426 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -55, 153, -69 }, 0, { 231, -8589 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -47, 151, -79 }, 0, { 270, -8789 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -70, 100, 89 }, 0, { 152, -5336 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -81, 66, 73 }, 0, { 97, -5671 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -75, 29, 45 }, 0, { 127, -6248 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 75, 29, 45 }, 0, { 896, -6248 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 81, 66, 73 }, 0, { 926, -5671 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 93, 67, 116 }, 0, { 986, -4786 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -93, 67, 116 }, 0, { 37, -4786 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 70, 27, 143 }, 0, { 871, -4246 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -70, 27, 143 }, 0, { 152, -4246 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -62, 102, 98 }, 0, { 194, -5156 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -28, 92, 173 }, 0, { 369, -3631 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -55, 153, 53 }, 0, { 231, -6083 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -62, 102, 98 }, 0, { 194, -5156 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model9[] = {
    { { { -55, 153, 53 }, 0, { 231, -6083 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -62, 102, 98 }, 0, { 194, -5156 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -49, 156, 59 }, 0, { 262, -5957 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 70, 100, -95 }, 0, { 871, -9113 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 91, -164 }, 0, { 871, -10523 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 53, 102, -164 }, 0, { 781, -10526 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 53, 92, -172 }, 0, { 781, -10696 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 52, 105, -110 }, 0, { 780, -9426 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 81, 66, -78 }, 0, { 927, -8760 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 100, -15 }, 0, { 871, -7480 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 47, 151, -79 }, 0, { 753, -8789 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 55, 153, -69 }, 0, { 792, -8589 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 75, 29, 45 }, 0, { 896, -6248 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 75, 29, -52 }, 0, { 897, -8241 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 81, 66, 73 }, 0, { 926, -5671 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 100, 0 }, 0, { 871, -7173 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 81, 66, -78 }, 0, { 927, -8760 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 75, 29, -52 }, 0, { 897, -8241 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -75, 29, -52 }, 0, { 126, -8241 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -81, 66, -78 }, 0, { 96, -8760 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -92, 66, -129 }, 0, { 40, -9810 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 92, 66, -129 }, 0, { 983, -9810 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -70, 27, -151 }, 0, { 152, -10262 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 70, 27, -151 }, 0, { 871, -10262 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 62, 102, 98 }, 0, { 829, -5156 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -62, 102, 98 }, 0, { 194, -5156 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -28, 92, 173 }, 0, { 369, -3631 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 28, 92, 173 }, 0, { 654, -3631 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 49, 156, 59 }, 0, { 761, -5957 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 48, 162, 48 }, 0, { 756, -6190 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -48, 162, 48 }, 0, { 267, -6190 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -52, 105, -110 }, 0, { 243, -9426 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model10[] = {
    { { { -52, 105, -110 }, 0, { 243, -9426 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 53, 102, -164 }, 0, { 781, -10526 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -53, 102, -164 }, 0, { 242, -10526 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -53, 92, -172 }, 0, { 242, -10696 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 53, 92, -172 }, 0, { 781, -10696 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -48, 162, -66 }, 0, { 267, -8514 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -55, 153, -69 }, 0, { 231, -8589 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -55, 153, -15 }, 0, { 231, -7480 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -47, 151, -79 }, 0, { 270, -8789 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -49, 156, 59 }, 0, { 262, -5957 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -48, 162, 48 }, 0, { 267, -6190 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -55, 153, 53 }, 0, { 231, -6083 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -55, 153, 0 }, 0, { 231, -7173 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 48, 162, -66 }, 0, { 756, -8514 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 48, 162, 48 }, 0, { 756, -6190 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 100, 0 }, 0, { 871, -7173 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 100, -15 }, 0, { 871, -7480 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 55, 153, -15 }, 0, { 792, -7480 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 55, 153, 0 }, 0, { 792, -7173 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 100, -15 }, 0, { 152, -7480 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 100, 0 }, 0, { 152, -7173 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 47, 151, -79 }, 0, { 753, -8789 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 55, 153, -69 }, 0, { 792, -8589 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model11[] = {
    { { { -53, 92, -172 }, 0, { 525, -1 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -53, 27, -172 }, 0, { 525, 1210 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { -70, 27, -164 }, 0, { 13, 1210 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -70, 91, -164 }, 0, { 13, 16 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 91, -164 }, 0, { 13, 16 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 27, -164 }, 0, { 13, 1210 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 53, 27, -172 }, 0, { 512, 1210 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { 53, 92, -172 }, 0, { 511, -1 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -53, 27, -172 }, 0, { 2941, 1210 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { -53, 92, -172 }, 0, { 2941, -1 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model12[] = {
    { { { 58, 49, 65 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 88, 49, 65 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 88, 16, 65 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 58, 16, 65 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 58, 66, 95 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 88, 66, 95 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 88, 0, 95 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 58, 0, 95 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 58, 49, 125 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 88, 49, 125 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 58, 16, 125 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 88, 16, 125 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model13[] = {
    { { { -58, 16, 65 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -88, 16, 65 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -88, 49, 65 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -58, 49, 65 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -58, 0, 95 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -88, 0, 95 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -88, 66, 95 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -58, 66, 95 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -88, 49, 125 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -58, 49, 125 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -88, 16, 125 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -58, 16, 125 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model14[] = {
    { { { -58, 16, -134 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -88, 16, -134 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -88, 49, -134 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -58, 49, -134 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -58, 0, -105 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -88, 0, -105 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -88, 66, -105 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -58, 66, -105 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -58, 16, -75 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -88, 16, -75 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -58, 49, -75 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -88, 49, -75 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model15[] = {
    { { { 58, 49, -134 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 88, 49, -134 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 88, 16, -134 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 58, 16, -134 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 58, 66, -105 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 88, 66, -105 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 88, 0, -105 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 58, 0, -105 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 88, 16, -75 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 58, 16, -75 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 88, 49, -75 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 58, 49, -75 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
};

Gfx d_course_toads_turnpike_dl_21648[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_tyre),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_car_model_lod0, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_216D8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_tyre),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model1, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_21768[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_216D8),
    gsSPDisplayList(d_course_toads_turnpike_dl_21648),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_21780[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_21768),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_21790[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_unk_windshield2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model2, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 6, 0),
    gsSP2Triangles(6, 7, 3, 0, 6, 3, 2, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 3, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_21820[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_unk_windshield2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model3, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 6, 0),
    gsSP2Triangles(6, 7, 3, 0, 6, 3, 2, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 3, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_218B0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_unk_windshield2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model4, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_21950[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_car_headlights),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model5, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_car_taillights),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model6, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_21A28[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_car_headlights),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model7, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 2, 3, 0, 2, 5, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 10, 6, 0, 9, 8, 11, 0),
    gsSP2Triangles(10, 12, 13, 0, 12, 10, 9, 0),
    gsSP2Triangles(14, 15, 16, 0, 16, 17, 14, 0),
    gsSP2Triangles(14, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(20, 14, 18, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 23, 0, 21, 23, 26, 0),
    gsSP2Triangles(23, 22, 24, 0, 21, 27, 22, 0),
    gsSP2Triangles(28, 29, 30, 0, 30, 31, 21, 0),
    gsSP1Triangle(30, 21, 28, 0),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 11, 12, 0, 8, 12, 9, 0),
    gsSP2Triangles(13, 14, 11, 0, 13, 11, 8, 0),
    gsSP2Triangles(15, 10, 16, 0, 17, 18, 16, 0),
    gsSP2Triangles(17, 16, 10, 0, 11, 19, 12, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 20, 0),
    gsSP2Triangles(24, 26, 27, 0, 24, 27, 25, 0),
    gsSP2Triangles(28, 19, 29, 0, 30, 19, 31, 0),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model9, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 5, 4, 0, 7, 3, 5, 0),
    gsSP2Triangles(8, 3, 9, 0, 3, 7, 10, 0),
    gsSP2Triangles(3, 10, 11, 0, 12, 13, 8, 0),
    gsSP2Triangles(12, 8, 14, 0, 14, 8, 9, 0),
    gsSP2Triangles(14, 9, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 18, 19, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 16, 0, 20, 22, 23, 0),
    gsSP2Triangles(20, 23, 21, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 26, 27, 0, 28, 29, 30, 0),
    gsSP2Triangles(28, 30, 2, 0, 31, 7, 5, 0),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model10, 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(3, 1, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 5, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 10, 5, 7, 0),
    gsSP2Triangles(10, 7, 12, 0, 13, 5, 10, 0),
    gsSP2Triangles(13, 10, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 12, 0),
    gsSP2Triangles(19, 12, 7, 0, 13, 14, 18, 0),
    gsSP2Triangles(13, 18, 17, 0, 8, 5, 13, 0),
    gsSP2Triangles(8, 13, 21, 0, 21, 13, 22, 0),
    gsSP1Triangle(22, 13, 17, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_car_taillights),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model11, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_21C78[] = {
    gsDPPipeSync(),
    gsSPTexture(0x0001, 0x0001, 0, G_TX_RENDERTILE, G_OFF),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model12, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(3, 2, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 8, 5, 4, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(7, 6, 11, 0, 7, 11, 10, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_21CD0[] = {
    gsDPPipeSync(),
    gsSPTexture(0x0001, 0x0001, 0, G_TX_RENDERTILE, G_OFF),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model13, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(3, 2, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 5, 0, 11, 5, 4, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_21D28[] = {
    gsDPPipeSync(),
    gsSPTexture(0x0001, 0x0001, 0, G_TX_RENDERTILE, G_OFF),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model14, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(3, 2, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 8, 5, 4, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(7, 6, 11, 0, 7, 11, 10, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_21D80[] = {
    gsDPPipeSync(),
    gsSPTexture(0x0001, 0x0001, 0, G_TX_RENDERTILE, G_OFF),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model15, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(3, 2, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 5, 0, 11, 5, 4, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_21DD8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_21D80), gsSPDisplayList(d_course_toads_turnpike_dl_21D28),
    gsSPDisplayList(d_course_toads_turnpike_dl_21CD0), gsSPDisplayList(d_course_toads_turnpike_dl_21C78),
    gsSPDisplayList(d_course_toads_turnpike_dl_21A28), gsSPDisplayList(d_course_toads_turnpike_dl_21950),
    gsSPDisplayList(d_course_toads_turnpike_dl_218B0), gsSPDisplayList(d_course_toads_turnpike_dl_21820),
    gsSPDisplayList(d_course_toads_turnpike_dl_21790), gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_21E28[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_21DD8),
    gsSPEndDisplayList(),
};

// 0x21E38
Vtx d_course_toads_turnpike_car_model_lod1[] = {
    { { { 88, 0, 128 }, 0, { 963, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 88, 0, 62 }, 0, { 60, 992 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 88, 66, 62 }, 0, { 60, 52 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 88, 66, 128 }, 0, { 963, 38 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -58, 0, 128 }, 0, { 963, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -58, 0, 62 }, 0, { 60, 992 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -58, 66, 62 }, 0, { 60, 52 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -58, 66, 128 }, 0, { 963, 38 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 58, 66, 128 }, 0, { 963, 38 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 58, 66, 62 }, 0, { 60, 52 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 58, 0, 62 }, 0, { 60, 992 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 58, 0, 128 }, 0, { 963, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -88, 66, 128 }, 0, { 963, 38 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -88, 66, 62 }, 0, { 60, 52 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -88, 0, 62 }, 0, { 60, 992 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -88, 0, 128 }, 0, { 963, 979 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model16[] = {
    { { { -88, 0, -136 }, 0, { 63, 965 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -88, 0, -73 }, 0, { 966, 965 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -88, 66, -73 }, 0, { 966, 51 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -88, 66, -136 }, 0, { 63, 51 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 58, 0, -136 }, 0, { 63, 965 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 58, 0, -73 }, 0, { 966, 965 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 58, 66, -73 }, 0, { 966, 51 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 58, 66, -136 }, 0, { 63, 51 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -58, 66, -136 }, 0, { 63, 51 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -58, 66, -73 }, 0, { 966, 51 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -58, 0, -73 }, 0, { 966, 965 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -58, 0, -136 }, 0, { 63, 965 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 88, 66, -136 }, 0, { 63, 51 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 88, 66, -73 }, 0, { 966, 51 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 88, 0, -73 }, 0, { 966, 965 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 88, 0, -136 }, 0, { 63, 965 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model17[] = {
    { { { -60, 44, -182 }, 0, { 592, 700 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 60, 44, -182 }, 0, { 377, 715 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 60, 23, -182 }, 0, { 377, 788 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -60, 23, -182 }, 0, { 592, 773 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 81, 44, -160 }, 0, { 339, 718 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 81, 23, -160 }, 0, { 339, 791 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -81, 23, -160 }, 0, { 629, 771 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -81, 44, -160 }, 0, { 629, 698 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 57, 49, 185 }, 0, { 612, 670 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -57, 49, 185 }, 0, { 392, 680 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -57, 24, 185 }, 0, { 390, 798 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { 57, 24, 185 }, 0, { 610, 788 }, { 0x99, 0x99, 0x99, 0xFF } } },
    { { { -79, 49, 166 }, 0, { 349, 682 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -79, 24, 166 }, 0, { 347, 800 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 79, 24, 166 }, 0, { 653, 786 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 79, 49, 166 }, 0, { 655, 668 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model18[] = {
    { { { 57, 65, 95 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 88, 65, 95 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 88, 1, 95 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 57, 1, 95 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -57, 1, 95 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -88, 1, 95 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -88, 65, 95 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -57, 65, 95 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model19[] = {
    { { { 58, 65, -105 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 88, 65, -105 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 88, 1, -105 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 57, 1, -105 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -57, 1, -105 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -88, 1, -105 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -88, 65, -105 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -57, 65, -105 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model20[] = {
    { { { -49, 156, 59 }, 0, { 371, 467 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -62, 102, 98 }, 0, { 311, 829 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 62, 102, 98 }, 0, { 864, 771 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 49, 156, 59 }, 0, { 804, 422 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 55, 153, 53 }, 0, { 352, 491 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 102, 89 }, 0, { 506, 708 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 101, 0 }, 0, { 47, 708 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 55, 153, 0 }, 0, { 79, 491 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 101, -15 }, 0, { 427, 649 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 100, -95 }, 0, { 682, 649 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 55, 153, -69 }, 0, { 606, 480 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 55, 153, -15 }, 0, { 433, 480 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 47, 151, -79 }, 0, { 446, 497 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 52, 105, -110 }, 0, { 432, 660 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -52, 105, -110 }, 0, { 707, 660 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -47, 151, -79 }, 0, { 693, 497 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -70, 101, 0 }, 0, { 47, 708 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 102, 89 }, 0, { 506, 708 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -55, 153, 53 }, 0, { 352, 491 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -55, 153, 0 }, 0, { 79, 491 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -55, 153, -69 }, 0, { 606, 480 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 100, -95 }, 0, { 682, 649 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 101, -15 }, 0, { 427, 649 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -55, 153, -15 }, 0, { 433, 480 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model21[] = {
    { { { 28, 92, 173 }, 0, { 1077, -156 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 28, 27, 180 }, 0, { 969, 2228 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { 70, 27, 166 }, 0, { -1093, 2103 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 70, 82, 160 }, 0, { -1003, 78 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 82, 160 }, 0, { -1003, 78 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 27, 166 }, 0, { -1093, 2103 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -28, 27, 180 }, 0, { 969, 2228 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { -28, 92, 173 }, 0, { 1077, -156 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model22[] = {
    { { { 28, 92, 173 }, 0, { 918, 256 }, { 0xFF, 0xF9, 0xFF, 0xFF } } },
    { { { -28, 92, 173 }, 0, { 512, 256 }, { 0xFF, 0xF9, 0xFF, 0xFF } } },
    { { { -28, 27, 180 }, 0, { 512, 1371 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { 28, 27, 180 }, 0, { 918, 1371 }, { 0x88, 0x88, 0x88, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model23[] = {
    { { { -55, 153, -69 }, 0, { 231, -8589 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -48, 162, -66 }, 0, { 267, -8514 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -47, 151, -79 }, 0, { 270, -8789 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 48, 162, -66 }, 0, { 756, -8514 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 47, 151, -79 }, 0, { 753, -8789 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -48, 162, 43 }, 0, { 267, -6190 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 48, 162, 43 }, 0, { 756, -6190 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -55, 153, 53 }, 0, { 231, -6083 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 55, 153, -69 }, 0, { 792, -8589 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 55, 153, 53 }, 0, { 792, -6083 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 100, -95 }, 0, { 871, -9113 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 52, 105, -110 }, 0, { 780, -9426 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -70, 91, -164 }, 0, { 152, -10523 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -53, 102, -164 }, 0, { 242, -10526 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -53, 92, -172 }, 0, { 242, -10696 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 100, -95 }, 0, { 152, -9113 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 53, 102, -164 }, 0, { 781, -10526 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 53, 92, -172 }, 0, { 781, -10696 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -52, 105, -110 }, 0, { 243, -9426 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -92, 66, -129 }, 0, { 40, -9810 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -81, 66, -78 }, 0, { 96, -8760 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -81, 66, 73 }, 0, { 97, -5671 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 102, 89 }, 0, { 152, -5336 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 91, -164 }, 0, { 871, -10523 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 92, 66, -129 }, 0, { 983, -9810 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 81, 66, -78 }, 0, { 927, -8760 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 81, 66, 73 }, 0, { 926, -5671 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 102, 89 }, 0, { 871, -5336 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 75, 29, 45 }, 0, { 896, -6248 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 75, 29, -52 }, 0, { 897, -8241 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 93, 67, 116 }, 0, { 986, -4786 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model24[] = {
    { { { 70, 101, 0 }, 0, { 871, -7173 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 101, -15 }, 0, { 871, -7480 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 55, 153, -15 }, 0, { 792, -7480 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 55, 153, 0 }, 0, { 792, -7173 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 101, -15 }, 0, { 152, -7480 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 101, 0 }, 0, { 152, -7173 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -55, 153, 0 }, 0, { 231, -7173 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -55, 153, -15 }, 0, { 231, -7480 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -93, 67, 116 }, 0, { 37, -4786 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 82, 160 }, 0, { 152, -3885 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 102, 89 }, 0, { 152, -5336 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 27, 166 }, 0, { 152, -3765 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -28, 92, 173 }, 0, { 369, -3631 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 62, 102, 98 }, 0, { 829, -5156 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -62, 102, 98 }, 0, { 194, -5156 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 28, 92, 173 }, 0, { 654, -3631 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -81, 66, 73 }, 0, { 97, -5671 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 102, 89 }, 0, { 871, -5336 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 82, 160 }, 0, { 871, -3885 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 93, 67, 116 }, 0, { 986, -4786 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 27, 166 }, 0, { 871, -3765 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 49, 156, 59 }, 0, { 761, -5957 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 48, 162, 43 }, 0, { 756, -6190 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -48, 162, 43 }, 0, { 267, -6190 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -49, 156, 59 }, 0, { 262, -5957 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { 55, 153, 53 }, 0, { 792, -6083 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 62, 102, 98 }, 0, { 829, -5156 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -62, 102, 98 }, 0, { 194, -5156 }, { 0xCC, 0xCC, 0xCC, 0xFF } } },
    { { { -55, 153, 53 }, 0, { 231, -6083 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -75, 29, -52 }, 0, { 126, -8241 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -75, 29, 45 }, 0, { 127, -6248 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -81, 66, -78 }, 0, { 96, -8760 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model25[] = {
    { { { 70, 27, -164 }, 0, { 871, -10523 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 70, 91, -164 }, 0, { 871, -10523 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 92, 66, -129 }, 0, { 983, -9810 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -81, 66, 73 }, 0, { 97, -5671 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -75, 29, 45 }, 0, { 127, -6248 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 75, 29, 45 }, 0, { 896, -6248 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 81, 66, 73 }, 0, { 926, -5671 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -92, 66, -129 }, 0, { 40, -9810 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 91, -164 }, 0, { 152, -10523 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 27, -164 }, 0, { 152, -10523 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 93, 67, 116 }, 0, { 986, -4786 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 70, 27, 166 }, 0, { 871, -4246 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -70, 27, 166 }, 0, { 152, -4246 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -93, 67, 116 }, 0, { 37, -4786 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -92, 66, -129 }, 0, { 40, -9810 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -70, 27, -164 }, 0, { 152, -10262 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 70, 27, -164 }, 0, { 871, -10262 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 92, 66, -129 }, 0, { 983, -9810 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 81, 66, -78 }, 0, { 927, -8760 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { 75, 29, -52 }, 0, { 897, -8241 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -75, 29, -52 }, 0, { 126, -8241 }, { 0x77, 0x77, 0x77, 0xFF } } },
    { { { -81, 66, -78 }, 0, { 96, -8760 }, { 0x77, 0x77, 0x77, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model26[] = {
    { { { 70, 91, -164 }, 0, { 13, 16 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 27, -164 }, 0, { 13, 1210 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { 53, 27, -172 }, 0, { 512, 1210 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { 53, 92, -172 }, 0, { 511, -1 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -53, 27, -172 }, 0, { 2941, 1210 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { -53, 92, -172 }, 0, { 2941, -1 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -53, 92, -172 }, 0, { 525, -1 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -53, 27, -172 }, 0, { 525, 1210 }, { 0x88, 0x88, 0x88, 0xFF } } },
    { { { -70, 27, -164 }, 0, { 13, 1210 }, { 0xBB, 0xBB, 0xBB, 0xFF } } },
    { { { -70, 91, -164 }, 0, { 13, 16 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Gfx d_course_toads_turnpike_dl_22A68[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_tyre),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_car_model_lod1, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_22AF8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck1_tyre),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model16, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_22B88[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_22AF8),
    gsSPDisplayList(d_course_toads_turnpike_dl_22A68),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_22BA0[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_22B88),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_22BB0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_unk_windshield2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model17, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(3, 6, 7, 0, 3, 7, 0, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(9, 12, 13, 0, 9, 13, 10, 0),
    gsSP2Triangles(11, 14, 15, 0, 11, 15, 8, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_22C50[] = {
    gsDPPipeSync(),
    gsSPTexture(0x0001, 0x0001, 0, G_TX_RENDERTILE, G_OFF),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model18, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_22C88[] = {
    gsDPPipeSync(),
    gsSPTexture(0x0001, 0x0001, 0, G_TX_RENDERTILE, G_OFF),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model19, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_22CC0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_unk_windshield2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model20, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_22D60[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_car_headlights),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model21, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_car_taillights),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model22, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_22E38[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_car_headlights),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model23, 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(2, 3, 4, 0, 3, 1, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 5, 1, 0, 0),
    gsSP2Triangles(5, 0, 7, 0, 4, 3, 8, 0),
    gsSP2Triangles(8, 3, 6, 0, 8, 6, 9, 0),
    gsSP2Triangles(10, 11, 4, 0, 10, 4, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 12, 15, 0),
    gsSP2Triangles(14, 13, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(13, 15, 18, 0, 18, 11, 16, 0),
    gsSP2Triangles(18, 16, 13, 0, 19, 15, 12, 0),
    gsSP2Triangles(15, 19, 20, 0, 0, 2, 18, 0),
    gsSP2Triangles(0, 18, 15, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 22, 15, 0, 11, 10, 16, 0),
    gsSP2Triangles(10, 23, 16, 0, 24, 23, 10, 0),
    gsSP2Triangles(25, 24, 10, 0, 26, 25, 10, 0),
    gsSP2Triangles(26, 10, 27, 0, 17, 16, 23, 0),
    gsSP2Triangles(28, 29, 25, 0, 28, 25, 26, 0),
    gsSP1Triangle(27, 30, 26, 0),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model24, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 9, 8, 0),
    gsSP2Triangles(9, 12, 10, 0, 13, 14, 12, 0),
    gsSP2Triangles(13, 12, 15, 0, 14, 10, 12, 0),
    gsSP2Triangles(16, 8, 10, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 15, 18, 0, 15, 17, 13, 0),
    gsSP2Triangles(19, 18, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 22, 21, 0),
    gsSP2Triangles(21, 26, 17, 0, 21, 17, 25, 0),
    gsSP2Triangles(27, 24, 28, 0, 27, 28, 10, 0),
    gsSP2Triangles(24, 23, 28, 0, 29, 30, 16, 0),
    gsSP1Triangle(29, 16, 31, 0),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model25, 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_car_taillights),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model26, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_23040[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_22E38),
    gsSPDisplayList(d_course_toads_turnpike_dl_22D60),
    gsSPDisplayList(d_course_toads_turnpike_dl_22CC0),
    gsSPDisplayList(d_course_toads_turnpike_dl_22C88),
    gsSPDisplayList(d_course_toads_turnpike_dl_22C50),
    gsSPDisplayList(d_course_toads_turnpike_dl_22BB0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_23078[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_23040),
    gsSPEndDisplayList(),
};

// 0x23088
Vtx d_course_toads_turnpike_car_model_lod2[] = {
    { { { 88, 1, 85 }, 0, { 929, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -88, 1, 85 }, 0, { 93, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -88, 64, 85 }, 0, { 93, 943 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 88, 64, 85 }, 0, { 929, 943 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 88, 1, -115 }, 0, { 929, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -88, 1, -115 }, 0, { 93, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -88, 64, -115 }, 0, { 94, 943 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 88, 64, -115 }, 0, { 929, 943 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model27[] = {
    { { { -88, 1, -135 }, 0, { 957, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -88, 1, 125 }, 0, { 99, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -88, 64, 125 }, 0, { 99, 624 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -88, 64, -135 }, 0, { 957, 624 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 88, 1, 125 }, 0, { 99, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 88, 1, -135 }, 0, { 957, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 88, 64, -135 }, 0, { 957, 624 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 88, 64, 125 }, 0, { 99, 624 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model28[] = {
    { { { 83, 24, 177 }, 0, { 970, 948 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 83, 92, 173 }, 0, { 970, 428 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -83, 92, 173 }, 0, { 55, 428 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -83, 24, 177 }, 0, { 55, 948 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model29[] = {
    { { { 70, 92, 172 }, 0, { 789, -1536 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 100, 89 }, 0, { 789, -2960 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 100, 89 }, 0, { 236, -2960 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 92, 172 }, 0, { 236, -1536 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 100, 89 }, 0, { 153, 341 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 100, 89 }, 0, { 872, 341 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 53, 162, 43 }, 0, { 757, -12 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -53, 162, 43 }, 0, { 268, -12 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 103, -112 }, 0, { 789, -6389 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 63, 98, -171 }, 0, { 761, -7431 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -63, 98, -171 }, 0, { 263, -7431 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 103, -112 }, 0, { 236, -6389 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -53, 162, 43 }, 0, { 304, -3756 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 53, 162, 43 }, 0, { 720, -3756 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 53, 162, -66 }, 0, { 720, -5608 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -53, 162, -66 }, 0, { 304, -5608 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model30[] = {
    { { { 83, 22, -172 }, 0, { 29, 921 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -83, 22, -172 }, 0, { 996, 921 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -83, 104, -172 }, 0, { 996, 327 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 83, 104, -172 }, 0, { 29, 327 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 103, -112 }, 0, { 174, 349 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 103, -112 }, 0, { 876, 349 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -53, 162, -66 }, 0, { 789, -24 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 53, 162, -66 }, 0, { 261, -24 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model31[] = {
    { { { -70, 100, 89 }, 0, { 235, 382 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -53, 162, 43 }, 0, { 378, 8 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -53, 162, -66 }, 0, { 710, 8 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 103, -112 }, 0, { 850, 365 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 24, -171 }, 0, { 1092, 843 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 63, 98, -171 }, 0, { 1092, 397 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 90, 62, -143 }, 0, { 991, 613 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 70, 103, -112 }, 0, { 883, 366 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 90, 62, -143 }, 0, { 991, 613 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 100, 89 }, 0, { 197, 384 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 90, 62, 133 }, 0, { 47, 613 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 92, 172 }, 0, { -86, 433 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 24, 176 }, 0, { -102, 843 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 90, 62, 133 }, 0, { 47, 613 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 70, 103, -112 }, 0, { 850, 365 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 53, 162, -66 }, 0, { 710, 8 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 53, 162, 43 }, 0, { 378, 8 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 100, 89 }, 0, { 235, 382 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -63, 98, -171 }, 0, { 1092, 397 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 24, -171 }, 0, { 1092, 843 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -90, 62, -143 }, 0, { 991, 613 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -70, 24, 176 }, 0, { -102, 843 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -90, 62, 133 }, 0, { 47, 613 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { -90, 62, -143 }, 0, { 991, 613 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 92, 172 }, 0, { -86, 433 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 100, 89 }, 0, { 197, 384 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -70, 103, -112 }, 0, { 883, 366 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_toads_turnpike_car_unknown_model32[] = {
    { { { 70, 92, 172 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 90, 62, 133 }, 0, { 0, 0 }, { 0x00, 0x00, 0x00, 0xFF } } },
    { { { 70, 100, 89 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 70, 24, 176 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Gfx d_course_toads_turnpike_dl_23538[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_car_front_lod1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPVertex(d_course_toads_turnpike_car_model_lod2, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_car_side_lod1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model27, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_23600[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_car_front_lod1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model28, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_23678[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_car_front_lod1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model29, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_car_back_lod1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model30, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_car_side_lod1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model31, 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 7, 9, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 9, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(12, 4, 8, 0, 12, 8, 10, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 22, 0),
    gsSP2Triangles(19, 22, 23, 0, 22, 21, 24, 0),
    gsSP2Triangles(22, 25, 26, 0, 22, 26, 23, 0),
    gsSP2Triangles(25, 22, 24, 0, 26, 18, 20, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_237D8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_23678),
    gsSPDisplayList(d_course_toads_turnpike_dl_23600),
    gsSPDisplayList(d_course_toads_turnpike_dl_23538),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_237F8[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_237D8),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_23808[] = {
    gsDPPipeSync(),
    gsSPTexture(0x0001, 0x0001, 0, G_TX_RENDERTILE, G_OFF),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(d_course_toads_turnpike_car_unknown_model32, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_23838[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_23808),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_23848[] = {
    gsSPDisplayList(d_course_toads_turnpike_dl_23838),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_23858[] = {
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck_box1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_238A0[] = {
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck_box2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_238E8[] = {
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_toads_turnpike_truck_box3),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPEndDisplayList(),
};

Gfx d_course_toads_turnpike_dl_23930[] = {
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA),
    gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_FA8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_140),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_6AB8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_66E0),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_51C8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_3DE8),
    gsSPDisplayList(d_course_toads_turnpike_packed_dl_2D98),
    gsSPEndDisplayList(),
};

// 0x239A0
Gfx* d_course_toads_turnpike_dl_list[] = {
    d_course_toads_turnpike_dl_80,   d_course_toads_turnpike_dl_1F8,  d_course_toads_turnpike_dl_158,
    d_course_toads_turnpike_dl_2D0,  d_course_toads_turnpike_dl_380,  d_course_toads_turnpike_dl_4E8,
    d_course_toads_turnpike_dl_438,  d_course_toads_turnpike_dl_5B8,  d_course_toads_turnpike_dl_668,
    d_course_toads_turnpike_dl_7D8,  d_course_toads_turnpike_dl_718,  d_course_toads_turnpike_dl_878,
    d_course_toads_turnpike_dl_948,  d_course_toads_turnpike_dl_AC8,  d_course_toads_turnpike_dl_9F0,
    d_course_toads_turnpike_dl_B88,  d_course_toads_turnpike_dl_C70,  d_course_toads_turnpike_dl_DD0,
    d_course_toads_turnpike_dl_D00,  d_course_toads_turnpike_dl_E70,  d_course_toads_turnpike_dl_F18,
    d_course_toads_turnpike_dl_1070, d_course_toads_turnpike_dl_FA8,  d_course_toads_turnpike_dl_1118,
    d_course_toads_turnpike_dl_11C0, d_course_toads_turnpike_dl_1310, d_course_toads_turnpike_dl_1250,
    d_course_toads_turnpike_dl_13E0, d_course_toads_turnpike_dl_1468, d_course_toads_turnpike_dl_15A8,
    d_course_toads_turnpike_dl_1510, d_course_toads_turnpike_dl_1678, d_course_toads_turnpike_dl_1708,
    d_course_toads_turnpike_dl_18C0, d_course_toads_turnpike_dl_17F8, d_course_toads_turnpike_dl_19C0,
    d_course_toads_turnpike_dl_1A60, d_course_toads_turnpike_dl_1C10, d_course_toads_turnpike_dl_1B50,
    d_course_toads_turnpike_dl_1D18, d_course_toads_turnpike_dl_1DC0, d_course_toads_turnpike_dl_1F40,
    d_course_toads_turnpike_dl_1E80, d_course_toads_turnpike_dl_2030, d_course_toads_turnpike_dl_20F8,
    d_course_toads_turnpike_dl_22A8, d_course_toads_turnpike_dl_21C8, d_course_toads_turnpike_dl_2358,
    d_course_toads_turnpike_dl_2440, d_course_toads_turnpike_dl_2628, d_course_toads_turnpike_dl_2530,
    d_course_toads_turnpike_dl_26D8, d_course_toads_turnpike_dl_27D0, d_course_toads_turnpike_dl_2960,
    d_course_toads_turnpike_dl_2898, d_course_toads_turnpike_dl_2A00, d_course_toads_turnpike_dl_2AF0,
    d_course_toads_turnpike_dl_2C38, d_course_toads_turnpike_dl_2B88, d_course_toads_turnpike_dl_2CC0,
    d_course_toads_turnpike_dl_2DB8, d_course_toads_turnpike_dl_2EF0, d_course_toads_turnpike_dl_2E50,
    d_course_toads_turnpike_dl_2F78, d_course_toads_turnpike_dl_3030, d_course_toads_turnpike_dl_3190,
    d_course_toads_turnpike_dl_30F8, d_course_toads_turnpike_dl_3228, d_course_toads_turnpike_dl_32F0,
    d_course_toads_turnpike_dl_3438, d_course_toads_turnpike_dl_33A0, d_course_toads_turnpike_dl_34D0,
    d_course_toads_turnpike_dl_3570, d_course_toads_turnpike_dl_36A8, d_course_toads_turnpike_dl_3618,
    d_course_toads_turnpike_dl_3758, d_course_toads_turnpike_dl_37F0, d_course_toads_turnpike_dl_39C8,
    d_course_toads_turnpike_dl_3910, d_course_toads_turnpike_dl_3AD8,
};

// 0x23AE0
struct ActorSpawnData d_course_toads_turnpike_item_box_spawns[] = {
    { { -18, 0, -1666 }, { 0 } },     { { -18, 0, -1748 }, { 0 } },    { { -22, 0, -1851 }, { 0 } },
    { { -20, 0, -1926 }, { 0 } },     { { -1231, -6, -1166 }, { 1 } }, { { -1165, -8, -1167 }, { 1 } },
    { { -1076, -12, -1168 }, { 1 } }, { { -983, -18, -1167 }, { 1 } }, { { 1916, 0, -1166 }, { 2 } },
    { { 2001, 0, -1166 }, { 2 } },    { { 2080, 0, -1167 }, { 2 } },   { { 2169, 0, -1169 }, { 2 } },
    { { 2004, 0, 1220 }, { 3 } },     { { 1913, 0, 1220 }, { 3 } },    { { 1805, 0, 1217 }, { 3 } },
    { { 1693, 0, 1217 }, { 3 } },     { { -32768, 0, 0 }, { 0 } },
};

// 0x23B68
TrackSections d_course_toads_turnpike_addr[] = {
    { d_course_toads_turnpike_packed_dl_32A0, ASPHALT, 1, 0x0000 },
    { d_course_toads_turnpike_packed_dl_33A8, ASPHALT, 2, 0x0000 },
    { d_course_toads_turnpike_packed_dl_3478, ASPHALT, 3, 0x0000 },
    { d_course_toads_turnpike_packed_dl_3548, ASPHALT, 4, 0x0000 },
    { d_course_toads_turnpike_packed_dl_31E8, ASPHALT, 5, 0x0000 },
    { d_course_toads_turnpike_packed_dl_2E40, ASPHALT, 6, 0x0000 },
    { d_course_toads_turnpike_packed_dl_2EE0, ASPHALT, 7, 0x0000 },
    { d_course_toads_turnpike_packed_dl_2FA0, ASPHALT, 8, 0x0000 },
    { d_course_toads_turnpike_packed_dl_3060, ASPHALT, 9, 0x0000 },
    { d_course_toads_turnpike_packed_dl_3118, ASPHALT, 10, 0x0000 },
    { d_course_toads_turnpike_packed_dl_3638, ASPHALT, 11, 0x0000 },
    { d_course_toads_turnpike_packed_dl_3AD0, ASPHALT, 12, 0x0000 },
    { d_course_toads_turnpike_packed_dl_3B58, ASPHALT, 13, 0x0000 },
    { d_course_toads_turnpike_packed_dl_3C28, ASPHALT, 14, 0x0000 },
    { d_course_toads_turnpike_packed_dl_3D00, ASPHALT, 15, 0x0000 },
    { d_course_toads_turnpike_packed_dl_39A8, ASPHALT, 16, 0x0000 },
    { d_course_toads_turnpike_packed_dl_36C0, ASPHALT, 17, 0x0000 },
    { d_course_toads_turnpike_packed_dl_3780, ASPHALT, 18, 0x0000 },
    { d_course_toads_turnpike_packed_dl_3850, ASPHALT, 19, 0x0000 },
    { d_course_toads_turnpike_packed_dl_38E8, ASPHALT, 20, 0x0000 },
    { d_course_toads_turnpike_packed_dl_FA8, RAMP, 255, 0x0000 },
    { d_course_toads_turnpike_packed_dl_51C8, RAMP, 255, 0x0000 },
    { 0x00000000, 0, 0, 0x0000 },
};

#ifdef VERSION_JP  /* VERSION_JP path order: JP puts the paths last */
TrackPathPoint d_course_toads_turnpike_unknown_path[] = {
#include "courses/toads_turnpike/d_course_toads_turnpike_unknown_path.inc.c"
};
TrackPathPoint d_course_toads_turnpike_track_path[] = {
#include "courses/toads_turnpike/d_course_toads_turnpike_track_path.inc.c"
};
#endif
