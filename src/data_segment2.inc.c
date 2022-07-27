#include <macros.h>
#include <types.h>
#include <PR/ultratypes.h>
#include <PR/gbi.h>
#include "data_segment2.h"

Gfx D_02007650[] = {
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_1CYCLE),
    gsDPSetRenderMode(G_RM_AA_OPA_SURF, G_RM_AA_OPA_SURF2),
    gsSPClearGeometryMode(G_ZBUFFER | G_SHADE | G_LIGHTING | G_SHADING_SMOOTH),
    gsDPSetTexturePersp(G_TP_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetPrimColor(0, 0, 0xFF, 0xFF, 0xFF, 0xFF),
    gsDPSetCombineMode(G_CC_DECALRGB, G_CC_DECALRGB),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetAlphaCompare(G_AC_NONE),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPEndDisplayList(),
};

Gfx D_020076B0[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineMode(G_CC_DECALRGB, G_CC_DECALRGB),
    gsDPSetTexturePersp(G_TP_PERSP),
    gsSPSetGeometryMode(G_ZBUFFER),
    gsSPEndDisplayList(),
};

Gfx D_020076E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_SHADE | G_SHADING_SMOOTH),
    gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
    gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
    gsSPEndDisplayList(),
};

Gfx  D_02007708[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_OPA_SURF, G_RM_OPA_SURF2),
    gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
    gsSPEndDisplayList(),
};

Gfx D_02007728[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
    gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
    gsSPEndDisplayList(),
};

Gfx D_02007748[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
    gsDPSetCombineMode(G_CC_MODULATEI_PRIM, G_CC_MODULATEI_PRIM),
    gsSPEndDisplayList(),
};

Gfx D_02007768[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
    gsDPSetCombineMode(G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM),
    gsSPEndDisplayList(),
};

Gfx D_02007788[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, ENVIRONMENT, 0, 0, 0, 0, TEXEL0, TEXEL0, 0, ENVIRONMENT, 0, 0, 0, 0, TEXEL0),
    gsSPEndDisplayList(),
};

Gfx D_020077A8[] = {
    gsDPPipeSync(),
    gsSPTexture(0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_SHADE | G_SHADING_SMOOTH),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPSetTexturePersp(G_TP_PERSP),
    gsSPEndDisplayList(),
};

Gfx D_020077D8[] = {
    gsDPPipeSync(),
    gsSPTexture(0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetTexturePersp(G_TP_NONE),
    gsSPEndDisplayList(),
};

Gfx D_020077F8[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
    gsDPSetCombineLERP(0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0),
    gsSPEndDisplayList(),
};

Gfx D_02007818[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
    gsDPSetCombineLERP(0, 0, 0, SHADE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, SHADE, TEXEL0, 0, PRIMITIVE, 0),
    gsSPEndDisplayList(),
};

Gfx D_02007838[] = {
    gsSPVertex(D_02007BB8, 2, 0),
    gsSPVertex(D_02007BD8, 2, 2),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_02007858[] = {
    gsSPVertex(D_02007BB8, 2, 0),
    gsSPVertex(D_02007BF8, 2, 2),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_02007878[] = {
    gsSPVertex(D_02007BB8, 2, 0),
    gsSPVertex(D_02007C18, 2, 2),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_02007898[] = {
    gsSPVertex(D_02007BB8, 2, 0),
    gsSPVertex(D_02007C38, 2, 2),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_020078B8[] = {
    gsSPVertex(D_02007BB8, 2, 0),
    gsSPVertex(D_02007C58, 2, 2),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_020078D8[] = {
    gsSPVertex(D_02007BB8, 2, 0),
    gsSPVertex(D_02007C78, 2, 2),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_020078F8[] = {
    gsSPVertex(D_02007BB8, 2, 0),
    gsSPVertex(D_02007C98, 2, 2),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_02007918[] = {
    gsSPVertex(D_02007BB8, 2, 0),
    gsSPVertex(D_02007CB8, 2, 2),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_02007938[] = {
    gsSPVertex(D_02007CD8, 2, 0),
    gsSPVertex(D_02007CF8, 2, 2),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_02007958[] = {
    gsSPVertex(D_02007CD8, 2, 0),
    gsSPVertex(D_02007D18, 2, 2),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_02007978[] = {
    gsSPVertex(D_02007CD8, 2, 0),
    gsSPVertex(D_02007D38, 2, 2),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_02007998[] = {
    gsSPVertex(D_02007CD8, 2, 0),
    gsSPVertex(D_02007D58, 2, 2),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_020079B8[] = {
    gsSPVertex(D_02007CD8, 2, 0),
    gsSPVertex(D_02007D78, 2, 2),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_020079D8[] = {
    gsSPVertex(D_02007CD8, 2, 0),
    gsSPVertex(D_02007D98, 2, 2),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_020079F8[] = {
    gsSPVertex(D_02007CD8, 2, 0),
    gsSPVertex(D_02007DB8, 2, 2),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_02007A18[] = {
    gsSPVertex(D_02007CD8, 2, 0),
    gsSPVertex(D_02007DD8, 2, 2),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_02007A38[] = {
    gsSPVertex(D_02007DF8, 2, 0),
    gsSPVertex(D_02007E18, 2, 2),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_02007A58[] = {
    gsSPVertex(D_02007DF8, 2, 0),
    gsSPVertex(D_02007E38, 2, 2),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_02007A78[] = {
    gsSPVertex(D_02007DF8, 2, 0),
    gsSPVertex(D_02007E58, 2, 2),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_02007A98[] = {
    gsSPVertex(D_02007DF8, 2, 0),
    gsSPVertex(D_02007E78, 2, 2),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_02007AB8[] = {
    gsSPVertex(D_02007DF8, 2, 0),
    gsSPVertex(D_02007E98, 2, 2),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_02007AD8[] = {
    gsSPVertex(D_02007DF8, 2, 0),
    gsSPVertex(D_02007EB8, 2, 2),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_02007AF8[] = {
    gsSPVertex(D_02007DF8, 2, 0),
    gsSPVertex(D_02007ED8, 2, 2),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_02007B18[] = {
    gsSPVertex(D_02007DF8, 2, 0),
    gsSPVertex(D_02007EF8, 2, 2),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

UNUSED Vtx D_02007B38[] = {
    {{{  0,  0,  0}, 0, {  0,   0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{ 16,  0,  0}, 0, {  0,   0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{ 16, 16,  0}, 0, {  0,   0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{  0, 16,  0}, 0, {  0,   0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{  0, -8,  0}, 0, {  0,   0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{  8, -8,  0}, 0, {448,   0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{  8,  0,  0}, 0, {448, 448}, {0xff, 0x00, 0x00, 0xff}}},
    {{{  0,  0,  0}, 0, {  0, 448}, {0xff, 0x00, 0x00, 0xff}}},
};

// Todo: Place all theces vertices in a single array
// Access the correct vertex using sym[value]
Vtx D_02007BB8[] = {
    {{{ 0, 65520, 0}, 0, {   0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{26, 65520, 0}, 0, {1600, 0}, {0xff, 0xff, 0xff, 0xff}}},
};

Vtx D_02007BD8[] = {
    {{{26, 0, 0}, 0, {1600, 960}, {0x00, 0x00, 0xff, 0xff}}},
    {{{ 0, 0, 0}, 0, {   0, 960}, {0x00, 0x00, 0xff, 0xff}}},
};

Vtx D_02007BF8[] = {
    {{{26, 0, 0}, 0, {1600, 960}, {0x00, 0xff, 0x00, 0xff}}},
    {{{ 0, 0, 0}, 0, {   0, 960}, {0x00, 0xff, 0x00, 0xff}}},
};

Vtx D_02007C18[] = {
    {{{26, 0, 0}, 0, {1600, 960}, {0xff, 0x00, 0x00, 0xff}}},
    {{{ 0, 0, 0}, 0, {   0, 960}, {0xff, 0x00, 0x00, 0xff}}},
};

Vtx D_02007C38[] = {
    {{{26, 0, 0}, 0, {1600, 960}, {0xff, 0xff, 0x00, 0xff}}},
    {{{ 0, 0, 0}, 0, {   0, 960}, {0xff, 0xff, 0x00, 0xff}}},
};

Vtx D_02007C58[] = {
    {{{26, 0, 0}, 0, {1600, 960}, {0xff, 0x00, 0x00, 0xff}}},
    {{{ 0, 0, 0}, 0, {   0, 960}, {0xff, 0x00, 0x00, 0xff}}},
};

Vtx D_02007C78[] = {
    {{{26, 0, 0}, 0, {1600, 960}, {0xff, 0x00, 0x00, 0xff}}},
    {{{ 0, 0, 0}, 0, {   0, 960}, {0xff, 0x00, 0x00, 0xff}}},
};

Vtx D_02007C98[] = {
    {{{26, 0, 0}, 0, {1600, 960}, {0xff, 0x00, 0x00, 0xff}}},
    {{{ 0, 0, 0}, 0, {   0, 960}, {0xff, 0x00, 0x00, 0xff}}},
};

Vtx D_02007CB8[] = {
    {{{26, 0, 0}, 0, {1600, 960}, {0xff, 0x00, 0x00, 0xff}}},
    {{{ 0, 0, 0}, 0, {   0, 960}, {0xff, 0x00, 0x00, 0xff}}},
};

Vtx D_02007CD8[] = {
    {{{ 0, 65520, 0}, 0, {  0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{16, 65520, 0}, 0, {960, 0}, {0xff, 0xff, 0xff, 0xff}}},
};

Vtx D_02007CF8[] = {
    {{{16, 0, 0}, 0, {960, 960}, {0x00, 0x00, 0xff, 0xff}}},
    {{{ 0, 0, 0}, 0, {  0, 960}, {0x00, 0x00, 0xff, 0xff}}},
};

Vtx D_02007D18[] = {
    {{{16, 0, 0}, 0, {960, 960}, {0x00, 0xff, 0x00, 0xff}}},
    {{{ 0, 0, 0}, 0, {  0, 960}, {0x00, 0xff, 0x00, 0xff}}},
};

Vtx D_02007D38[] = {
    {{{16, 0, 0}, 0, {960, 960}, {0xff, 0x00, 0x00, 0xff}}},
    {{{ 0, 0, 0}, 0, {  0, 960}, {0xff, 0x00, 0x00, 0xff}}},
};

Vtx D_02007D58[] = {
    {{{16, 0, 0}, 0, {960, 960}, {0xff, 0xff, 0x00, 0xff}}},
    {{{ 0, 0, 0}, 0, {  0, 960}, {0xff, 0xff, 0x00, 0xff}}},
};

Vtx D_02007D78[] = {
    {{{16, 0, 0}, 0, {960, 960}, {0xff, 0x00, 0x00, 0xff}}},
    {{{ 0, 0, 0}, 0, {  0, 960}, {0xff, 0x00, 0x00, 0xff}}},
};

Vtx D_02007D98[] = {
    {{{16, 0, 0}, 0, {960, 960}, {0xff, 0x00, 0x00, 0xff}}},
    {{{ 0, 0, 0}, 0, {  0, 960}, {0xff, 0x00, 0x00, 0xff}}},
};

Vtx D_02007DB8[] = {
    {{{16, 0, 0}, 0, {960, 960}, {0xff, 0x00, 0x00, 0xff}}},
    {{{ 0, 0, 0}, 0, {  0, 960}, {0xff, 0x00, 0x00, 0xff}}},
};

Vtx D_02007DD8[] = {
    {{{16, 0, 0}, 0, {960, 960}, {0xff, 0x00, 0x00, 0xff}}},
    {{{ 0, 0, 0}, 0, {  0, 960}, {0xff, 0x00, 0x00, 0xff}}},
};

Vtx D_02007DF8[] = {
    {{{ 0, 65504, 0}, 0, {   0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{30, 65504, 0}, 0, {1856, 0}, {0xff, 0xff, 0xff, 0xff}}},
};

Vtx D_02007E18[] = {
    {{{30, 0, 0}, 0, {1856, 1984}, {0x00, 0x00, 0xff, 0xff}}},
    {{{ 0, 0, 0}, 0, {   0, 1984}, {0x00, 0x00, 0xff, 0xff}}},
};

Vtx D_02007E38[] = {
    {{{30, 0, 0}, 0, {1856, 1984}, {0x00, 0xff, 0x00, 0xff}}},
    {{{ 0, 0, 0}, 0, {   0, 1984}, {0x00, 0xff, 0x00, 0xff}}},
};

Vtx D_02007E58[] = {
    {{{30, 0, 0}, 0, {1856, 1984}, {0xff, 0x00, 0x00, 0xff}}},
    {{{ 0, 0, 0}, 0, {   0, 1984}, {0xff, 0x00, 0x00, 0xff}}},
};

Vtx D_02007E78[] = {
    {{{30, 0, 0}, 0, {1856, 1984}, {0xff, 0xff, 0x00, 0xff}}},
    {{{ 0, 0, 0}, 0, {   0, 1984}, {0xff, 0xff, 0x00, 0xff}}},
};

Vtx D_02007E98[] = {
    {{{30, 0, 0}, 0, {1856, 1984}, {0xff, 0x00, 0x00, 0xff}}},
    {{{ 0, 0, 0}, 0, {   0, 1984}, {0xff, 0x00, 0x00, 0xff}}},
};

Vtx D_02007EB8[] = {
    {{{30, 0, 0}, 0, {1856, 1984}, {0xff, 0x00, 0x00, 0xff}}},
    {{{ 0, 0, 0}, 0, {   0, 1984}, {0xff, 0x00, 0x00, 0xff}}},
};

Vtx D_02007ED8[] = {
    {{{30, 0, 0}, 0, {1856, 1984}, {0xff, 0x00, 0x00, 0xff}}},
    {{{ 0, 0, 0}, 0, {   0, 1984}, {0xff, 0x00, 0x00, 0xff}}},
};

Vtx D_02007EF8[] = {
    {{{30, 0, 0}, 0, {1856, 1984}, {0xff, 0x00, 0x00, 0xff}}},
    {{{ 0, 0, 0}, 0, {   0, 1984}, {0xff, 0x00, 0x00, 0xff}}},
};

Gfx D_02007F18[] = {
    gsDPPipeSync(),
    gsDPSetTexturePersp(G_TP_NONE),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetRenderMode(G_RM_OPA_SURF, G_RM_OPA_SURF2),
    gsSPEndDisplayList(),
};

Gfx D_02007F48[] = {
    gsDPPipeSync(),
    gsDPSetTexturePersp(G_TP_PERSP),
    gsSPEndDisplayList(),
};

Gfx D_02007F60[] = {
    gsDPSetCycleType(G_CYC_FILL),
    gsDPSetRenderMode(G_RM_OPA_SURF, G_RM_OPA_SURF2),
    gsSPClearGeometryMode(G_ZBUFFER | G_CULL_BACK | G_LIGHTING),
    gsDPSetFillColor(0x00010001),
    gsDPFillRectangle(0, 0, 319, 239),
    gsSPSetGeometryMode(G_ZBUFFER | G_CULL_BACK | G_LIGHTING),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCycleType(G_CYC_1CYCLE),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsSPSetGeometryMode(G_SHADE | G_CULL_BACK | G_LIGHTING | G_SHADING_SMOOTH),
    gsDPPipeSync(),
    gsSPDisplayList(D_060093F8),
    gsSPEndDisplayList(),
};

Gfx D_02007FC8[] = {
    gsDPSetTexturePersp(G_TP_PERSP),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_ZBUFFER | G_CULL_BACK | G_LIGHTING),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCycleType(G_CYC_1CYCLE),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsSPSetGeometryMode(G_SHADE | G_CULL_BACK | G_LIGHTING | G_SHADING_SMOOTH),
    gsSPEndDisplayList(),
};

Gfx D_02008008[] = {
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_1CYCLE),
    gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
    gsDPSetCombineMode(G_CC_PRIMITIVE, G_CC_PRIMITIVE),
    gsSPEndDisplayList(),
};

Gfx D_02008030[] = {
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_FILL),
    gsDPSetRenderMode(G_RM_OPA_SURF, G_RM_OPA_SURF2),
    gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
    gsSPEndDisplayList(),
};

Gfx D_02008058[] = {
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_1CYCLE),
    gsSPEndDisplayList(),
};
