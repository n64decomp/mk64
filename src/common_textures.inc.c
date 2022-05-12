#include <types.h>
#include <macros.h>
#include <PR/gbi.h>

// This file appears to contain course non-specific content.

// From common_textures.bin
// Vtx 1210-1750

// Somehow these symbols need to be linked in. For now, raw addresses are used.

/*
extern s8 D_03004000[];
extern s8 D_03004800[];
extern s8 D_03005000[];
extern s8 D_03005800[];
extern s8 D_03006000[];
extern s8 D_03006800[];
extern s8 D_03007000[];
extern s8 D_03007800[];
extern s8 D_03008000[];
extern s8 D_03008800[];
*/

s8 D_0D000000[] = { // tlut
    #include "textures/132B50_00000_tlut.rgba16.inc.c"
};

s8 D_0D000200[] = { // tlut
    #include "textures/132B50_00200.rgba16.inc.c"
};

static Vtx D_0D001200[] = {
    {{{   -80,     100,       0}, 0, {0, 900}, {0xff, 0xff, 0xff, 0xff}}},
};

static Vtx D_0D001210[] = {
    {{{     4,       0,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0x00}}},
    {{{     0,      20,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0x00}}},
    {{{    -4,       0,       0}, 0, {0, 0}, {0xfe, 0x02, 0x00, 0x00}}},
};

static Vtx D_0D001240[] = {
    {{{     4,       0,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0x00}}},
    {{{     0,      20,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0x00}}},
    {{{    -4,       0,       0}, 0, {0, 0}, {0xf4, 0x89, 0x00, 0x00}}},
};

static Vtx D_0D001270[] = {
    {{{     4,       0,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0x00}}},
    {{{     0,      20,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0x00}}},
    {{{    -4,       0,       0}, 0, {0, 0}, {0xe7, 0xf3, 0x00, 0x00}}},
};

static Vtx D_0D0012A0[] = {
    {{{     4,       0,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0x00}}},
    {{{     0,      20,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0x00}}},
    {{{    -4,       0,       0}, 0, {0, 0}, {0xa6, 0xfe, 0x23, 0x00}}},
};
static Vtx D_0D0012D0[] = { 
    {{{     4,       0,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0x00}}},
    {{{     0,      20,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0x00}}},
    {{{    -4,       0,       0}, 0, {0, 0}, {0x00, 0x9c, 0x23, 0x00}}},
};
static Vtx D_0D001300[] = {  
    {{{     4,       0,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0x00}}},
    {{{     0,      20,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0x00}}},
    {{{    -4,       0,       0}, 0, {0, 0}, {0x00, 0x94, 0xa5, 0x00}}},
};

static Vtx D_0D001330[] = {
    {{{     4,       0,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0x00}}},
    {{{     0,      20,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0x00}}},
    {{{    -4,       0,       0}, 0, {0, 0}, {0x00, 0x50, 0x9d, 0x00}}},
};

static Vtx D_0D001360[] = {
    {{{     4,       0,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0x00}}},
    {{{     0,      20,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0x00}}},
    {{{    -4,       0,       0}, 0, {0, 0}, {0x00, 0x00, 0x9b, 0x00}}},
};

static Vtx D_0D001390[] = {
    {{{   -80,     100,       0}, 0, {0, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -40,     100,       0}, 0, {2012, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -40,     115,       0}, 0, {2012, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -80,     115,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -80,      85,       0}, 0, {0, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -40,      85,       0}, 0, {2012, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -40,     100,       0}, 0, {2012, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -80,     100,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -40,     100,       0}, 0, {0, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     0,     100,       0}, 0, {2012, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     0,     115,       0}, 0, {2012, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -40,     115,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -40,      85,       0}, 0, {0, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     0,      85,       0}, 0, {2012, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     0,     100,       0}, 0, {2012, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -40,     100,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     0,     100,       0}, 0, {0, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    40,     100,       0}, 0, {2012, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    40,     115,       0}, 0, {2012, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     0,     115,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     0,      85,       0}, 0, {0, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    40,      85,       0}, 0, {2012, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    40,     100,       0}, 0, {2012, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     0,     100,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    40,     100,       0}, 0, {0, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    80,     100,       0}, 0, {2012, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    80,     115,       0}, 0, {2012, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    40,     115,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    40,      85,       0}, 0, {0, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    80,      85,       0}, 0, {2012, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    80,     100,       0}, 0, {2012, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    40,     100,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
};

static Vtx D_0D001590[] = {
    {{{   -92,       0,       0}, 0, {0, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -89,       0,       0}, 0, {990, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -89,     115,       0}, 0, {990, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -92,     115,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    89,       0,       0}, 0, {0, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    92,       0,       0}, 0, {990, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    92,     115,       0}, 0, {990, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    89,     115,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -88,     110,       0}, 0, {0, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -80,     110,       0}, 0, {990, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -80,     115,       0}, 0, {990, 290}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -88,     115,       0}, 0, {0, 290}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -88,      82,       0}, 0, {0, 660}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -80,      85,       0}, 0, {990, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -80,      90,       0}, 0, {990, 116}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -88,      87,       0}, 0, {0, 65240}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    80,     110,       0}, 0, {990, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    88,     110,       0}, 0, {0, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    88,     115,       0}, 0, {0, 224}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    80,     115,       0}, 0, {990, 224}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    80,      85,       0}, 0, {0, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    88,      82,       0}, 0, {990, 990}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    88,      87,       0}, 0, {990, 22}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    80,      90,       0}, 0, {0, 2}, {0xff, 0xff, 0xff, 0xff}}},
};

static Vtx D_0D001710[] = {
    {{{    80,      85,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -80,      85,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -80,     115,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    80,     115,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},

};

Gfx D_0D001750[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_SHADE | G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR | G_LOD),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsSPEndDisplayList(),
};

Gfx D_0D001780[] = {
    gsSPVertex(D_0D001210, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx D_0D001798[] = {
    gsSPVertex(D_0D001240, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx D_0D0017B0[] = {
    gsSPVertex(D_0D001270, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx D_0D0017C8[] = {
    gsSPVertex(D_0D0012A0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx D_0D0017E0[] = {
    gsSPVertex(D_0D0012D0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx D_0D0017F8[] = {
    gsSPVertex(D_0D001300, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx D_0D001810[] = {
    gsSPVertex(D_0D001330, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx D_0D001828[] = {
    gsSPVertex(D_0D001360, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx D_0D001840[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPLoadTLUT_pal256(D_0D000000),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 6, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0xFC, 0x7C),
    gsDPLoadTextureBlock(0x03004000, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(D_0D001390, 32, 0),
    gsSP1Quadrangle(0, 1, 2, 3, 0),
    gsDPLoadTextureBlock(0x03004800, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSP1Quadrangle(4, 5, 6, 7, 0),
    gsDPLoadTextureBlock(0x03005000, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSP1Quadrangle(8, 9, 10, 11, 0),
    gsDPLoadTextureBlock(0x03005800, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSP1Quadrangle(12, 13, 14, 15, 0),
    gsDPLoadTextureBlock(0x03006000, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSP1Quadrangle(16, 17, 18, 19, 0),
    gsDPLoadTextureBlock(0x03006800, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSP1Quadrangle(20, 21, 22, 23, 0),
    gsDPLoadTextureBlock(0x03007000, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSP1Quadrangle(24, 25, 26, 27, 0),
    gsDPLoadTextureBlock(0x03007800, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSP1Quadrangle(28, 29, 30, 31, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPEndDisplayList(),
};

Gfx D_0D001AB8[] = {
    gsSPClearGeometryMode(G_CULL_BACK),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, 0x03008000),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 124, 124),
    gsSPVertex(D_0D001590, 24, 0),
    gsSP1Quadrangle(0, 1, 2, 3, 0),
    gsSP1Quadrangle(4, 5, 6, 7, 0),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, 0x03008800),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 124, 124),
    gsSP1Quadrangle(8, 9, 10, 11, 0),
    gsSP1Quadrangle(12, 13, 14, 15, 0),
    gsSP1Quadrangle(16, 17, 18, 19, 0),
    gsSP1Quadrangle(20, 21, 22, 23, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx D_0D001B68[] = {
    gsSPTexture(1, 1, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsSPVertex(D_0D001710, 4, 0),
    gsSP1Quadrangle(0, 1, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx D_0D001B90[] = {
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(D_0D001840),
    gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
    gsSPDisplayList(D_0D001AB8),
    gsDPPipeSync(),
    gsSPEndDisplayList(),
};

Gfx D_0D001BD8[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
    gsSPDisplayList(D_0D001AB8),
    gsDPSetCombineMode(G_CC_DECALRGB, G_CC_DECALRGB),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(D_0D001B68),
    gsSPEndDisplayList(),
};

Gfx D_0D001C20[] = {
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_2CYCLE),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_PASS2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(D_0D001840),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_PASS2),
    gsSPDisplayList(D_0D001AB8),
    gsSPClearGeometryMode(G_FOG),
    gsDPSetCycleType(G_CYC_1CYCLE),
    gsDPPipeSync(),
    gsSPEndDisplayList(),
};

Gfx D_0D001C88[] = {
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_2CYCLE),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_PASS2),
    gsSPDisplayList(D_0D001AB8),
    gsDPSetCombineMode(G_CC_DECALRGB, G_CC_PASS2),
    gsSPDisplayList(D_0D001B68),
    gsSPClearGeometryMode(G_FOG),
    gsDPSetCycleType(G_CYC_1CYCLE),
    gsDPPipeSync(),
    gsSPEndDisplayList(),
};


static Vtx D_0D001CE8[] = {
    {{{    -5,       0,      -5}, 0, {0, 0}, {0x00, 0x00, 0x00, 0x80}}},
    {{{    -5,       0,       5}, 0, {0, 0}, {0x00, 0x00, 0x00, 0x80}}},
    {{{     5,       0,       5}, 0, {0, 0}, {0x00, 0x00, 0x00, 0x80}}},
    {{{     5,       0,      -5}, 0, {0, 0}, {0x00, 0x00, 0x00, 0x80}}},
};

static Vtx D_0D001D28[] = {
    {{{     3,      -5,       0}, 0, {1024, 1945}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     3,       5,       0}, 0, {1024, 65434}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -3,       5,       0}, 0, {0, 65434}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -3,      -5,       0}, 0, {0, 1945}, {0xff, 0xff, 0xff, 0xff}}},
};

static Vtx D_0D001D68[] = {
    {{{     5,       0,       5}, 0, {0, 0}, {0x00, 0x00, 0xff, 0x99}}},
    {{{     5,       0,      -5}, 0, {0, 0}, {0x00, 0xff, 0xff, 0x99}}},
    {{{     0,       7,       0}, 0, {0, 0}, {0x00, 0xff, 0x00, 0x99}}},
};

static Vtx D_0D001D98[] = {
    {{{     5,       0,      -5}, 0, {0, 0}, {0x00, 0xff, 0xff, 0x99}}},
    {{{    -5,       0,      -5}, 0, {0, 0}, {0xff, 0x82, 0x00, 0x99}}},
    {{{     0,       7,       0}, 0, {0, 0}, {0x00, 0xff, 0x00, 0x99}}},
};

static Vtx D_0D001DC8[] = {
    {{{    -5,       0,      -5}, 0, {0, 0}, {0xff, 0x82, 0x00, 0x99}}},
    {{{    -5,       0,       5}, 0, {0, 0}, {0xff, 0xff, 0x00, 0x99}}},
    {{{     0,       7,       0}, 0, {0, 0}, {0x00, 0xff, 0x00, 0x99}}},
};

static Vtx D_0D001DF8[] = {
    {{{    -5,       0,       5}, 0, {0, 0}, {0xff, 0xff, 0x00, 0x99}}},
    {{{     5,       0,       5}, 0, {0, 0}, {0x00, 0x00, 0xff, 0x99}}},
    {{{     0,       7,       0}, 0, {0, 0}, {0x00, 0xff, 0x00, 0x99}}},
};

static Vtx D_0D001E28[] = {
    {{{     5,       0,       5}, 0, {0, 0}, {0x00, 0x00, 0xff, 0x99}}},
    {{{    -5,       0,       5}, 0, {0, 0}, {0xff, 0xff, 0x00, 0x99}}},
    {{{     0,      -7,       0}, 0, {0, 0}, {0xff, 0x00, 0x04, 0x99}}},
};

static Vtx D_0D001E58[] = {  
    {{{     5,       0,      -5}, 0, {0, 0}, {0x00, 0xff, 0xff, 0x99}}},
    {{{     5,       0,       5}, 0, {0, 0}, {0x00, 0x00, 0xff, 0x99}}},
    {{{     0,      -7,       0}, 0, {0, 0}, {0xff, 0x00, 0x04, 0x99}}},

};
static Vtx D_0D001E88[] = {
    {{{    -5,       0,      -5}, 0, {0, 0}, {0xff, 0x82, 0x00, 0x99}}},
    {{{     5,       0,      -5}, 0, {0, 0}, {0x00, 0xff, 0xff, 0x99}}},
    {{{     0,      -7,       0}, 0, {0, 0}, {0xff, 0x00, 0x04, 0x99}}},
};

static Vtx D_0D001EB8[] = {
    {{{    -5,       0,       5}, 0, {0, 0}, {0xff, 0xff, 0x00, 0x99}}},
    {{{    -5,       0,      -5}, 0, {0, 0}, {0xff, 0x82, 0x00, 0x99}}},
    {{{     0,      -7,       0}, 0, {0, 0}, {0xff, 0x00, 0x04, 0x99}}},
};

// D_0D001EE8
static s8 gItemBoxQuestionMark_Texture[] = {
    #include "textures/132B50_01EE8.rgba16.inc.c"
};

Gfx D_0D002EE8[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 1, 1, G_OFF),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPNoOp(),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsDPSetRenderMode(G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2),
    gsSPVertex(D_0D001CE8, 4, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSP1Triangle(0, 2, 3, 0),
    gsDPSetAlphaCompare(G_AC_NONE),
    gsSPEndDisplayList(),
};

static Vtx D_0D002F40[] = {
    {{{    -3,       5,       0}, 0, {1024, 2048}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -3,      -5,       0}, 0, {1024, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     3,      -5,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     3,       5,       0}, 0, {0, 2048}, {0xff, 0xff, 0xff, 0xff}}},
};

Gfx D_0D002F80[] = {
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA),
    gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 6, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 124, 252),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, gItemBoxQuestionMark_Texture),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 2047, 256),
    gsSPVertex(D_0D002F40, 4, 0),
    gsSP1Quadrangle(0, 1, 2, 3, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx D_0D003008[] = {
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA),
    gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 6, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 124, 252),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, gItemBoxQuestionMark_Texture),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 2047, 256),
    gsSPVertex(D_0D001D28, 4, 0),
    gsSP1Quadrangle(0, 1, 2, 3, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx D_0D003090[] = {
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsSPTexture(1, 1, 0, G_TX_RENDERTILE, G_OFF),
    gsSPVertex(D_0D001D68, 24, 0),
    gsSP1Triangle(9, 10, 11, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsSP1Triangle(3, 4, 5, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSP1Triangle(12, 13, 14, 0),
    gsSP1Triangle(15, 16, 17, 0),
    gsSP1Triangle(18, 19, 20, 0),
    gsSP1Triangle(21, 22, 23, 0),
    gsSPEndDisplayList(),
};

Gfx D_0D0030F8[] = {
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsSPTexture(1, 1, 0, G_TX_RENDERTILE, G_OFF),
    gsSPVertex(D_0D001D68, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx D_0D003128[] = {
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsSPTexture(1, 1, 0, G_TX_RENDERTILE, G_OFF),
    gsSPVertex(D_0D001D98, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx D_0D003158[] = {
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsSPTexture(1, 1, 0, G_TX_RENDERTILE, G_OFF),
    gsSPVertex(D_0D001DC8, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx D_0D003188[] = {
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsSPTexture(1, 1, 0, G_TX_RENDERTILE, G_OFF),
    gsSPVertex(D_0D001DF8, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx D_0D0031B8[] = {
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsSPTexture(1, 1, 0, G_TX_RENDERTILE, G_OFF),
    gsSPVertex(D_0D001E28, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx D_0D0031E8[] = {
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsSPTexture(1, 1, 0, G_TX_RENDERTILE, G_OFF),
    gsSPVertex(D_0D001E58, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx D_0D003218[] = {
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsSPTexture(1, 1, 0, G_TX_RENDERTILE, G_OFF),
    gsSPVertex(D_0D001E88, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx D_0D003248[] = {
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsSPTexture(1, 1, 0, G_TX_RENDERTILE, G_OFF),
    gsSPVertex(D_0D001EB8, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx D_0D003278[] = {
    gsSPDisplayList(D_0D003090),
    gsSPEndDisplayList(),
};

Gfx D_0D003288[] = {
    gsSPDisplayList(D_0D003278),
    gsSPEndDisplayList(),
};

static Vtx D_0D003298[] = {
    {{{     4,      -3,       0}, 0, {1228, 1024}, {0xff, 0xfe, 0xfe, 0xff}}},
    {{{     0,       4,       0}, 0, {512, 65332}, {0xc1, 0xff, 0x00, 0xff}}},
    {{{    -4,      -3,       0}, 0, {65332, 1024}, {0xff, 0xfe, 0xfe, 0xff}}},
    {{{     0,      -3,       4}, 0, {1228, 1024}, {0xd3, 0xda, 0xad, 0xff}}},
    {{{     0,      -3,      -4}, 0, {65332, 1024}, {0xd3, 0xda, 0xad, 0xff}}},
};

static Vtx D_0D0032E8[] = {
    {{{     6,      -3,       0}, 0, {2048, 1024}, {0xff, 0xfe, 0xfe, 0xff}}},
    {{{     0,       4,       0}, 0, {1023, 65127}, {0xc1, 0xff, 0x00, 0xff}}},
    {{{    -6,      -3,       0}, 0, {0, 1024}, {0xff, 0xfe, 0xfe, 0xff}}},
    {{{     0,      -3,       6}, 0, {2048, 1024}, {0xd3, 0xda, 0xad, 0xff}}},
    {{{     0,       4,       0}, 0, {1024, 65127}, {0xc1, 0xff, 0x00, 0xff}}},
    {{{     0,      -3,      -6}, 0, {0, 1024}, {0xd3, 0xda, 0xad, 0xff}}},
};


// D_0D003348
s8 gBananaTexture[] = {
    #include "textures/132B50_03348.rgba16.inc.c"
};

s8 D_0D003B48[] = {
    #include "textures/132B50_03B48.rgba16.inc.c"
};

// 0x4B48
Gfx D_0D004B48[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA),
    gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 124, 124),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, gBananaTexture),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(D_0D003298, 5, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSP1Triangle(3, 1, 4, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};


Gfx D_0D004BD8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA),
    gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, 6, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 252, 124),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, D_0D003B48),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 2047, 128),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(D_0D0032E8, 6, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSP1Triangle(3, 4, 5, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

// four tluts
// Possibly only two tluts with a size of 2E8 each.
s8 D_0D004C68[] = {
    #include "textures/132B50_04C68_tlut.rgba16.inc.c"
};

s8 D_0D004E38[] = {
    #include "textures/132B50_04E38_tlut.rgba16.inc.c"
};
// Possibly part of 4E38
s8 D_0D004E68[] = {
    #include "textures/132B50_04E68_tlut.rgba16.inc.c"
};
// 5038
s8 D_0D005068[] = {
    #include "textures/132B50_05068_tlut.rgba16.inc.c"
};

//static s32 fileSplitPad[4] = { 0 };

static Vtx D_0D005238[] = {
    {{{     3,       6,       0}, 0, {1984, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -3,       6,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -3,       0,       0}, 0, {0, 1920}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     3,       0,       0}, 0, {1984, 1920}, {0xff, 0xff, 0xff, 0xff}}},
};

static Vtx D_0D005278[] = {

    {{{     3,       6,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -3,       6,       0}, 0, {1984, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -3,       0,       0}, 0, {1984, 1920}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     3,       0,       0}, 0, {0, 1920}, {0xff, 0xff, 0xff, 0xff}}},

};

Gfx D_0D0052B8[] = {
    gsSPTexture(32768, 32768, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 124, 124),
    gsSP1Quadrangle(0, 1, 2, 3, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 1, 1, G_OFF),
    gsDPPipeSync(),
    gsSPEndDisplayList(),
};

Gfx D_0D005308[] = {
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPTexture(32768, 32768, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | CVG_X_ALPHA | FORCE_BL | GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA), AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | CVG_X_ALPHA | FORCE_BL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsSPEndDisplayList(),
};

Gfx D_0D005338[] = {
    gsSPDisplayList(D_0D005308),
    gsSPVertex(D_0D005238, 4, 0),
    gsSP1Quadrangle(0, 1, 2, 3, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPPipeSync(),
    gsSPEndDisplayList(),
};

Gfx D_0D005368[] = {
    gsSPDisplayList(D_0D005308),
    gsSPVertex(D_0D005278, 4, 0),
    gsSP1Quadrangle(0, 1, 2, 3, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPPipeSync(),
    gsSPEndDisplayList(),
};

Gfx D_0D005398[] = {
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsSPEndDisplayList(),
};

Gfx D_0D0053B0[] = {
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA),
    gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2),
    gsSPEndDisplayList(),
};

Gfx D_0D0053C8[] = {
    gsDPSetCycleType(G_CYC_2CYCLE),
    gsSPSetGeometryMode(G_FOG | G_SHADING_SMOOTH),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_PASS2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPEndDisplayList(),
};

Gfx D_0D0053F0[] = {
    gsDPSetCycleType(G_CYC_2CYCLE),
    gsSPSetGeometryMode(G_FOG | G_SHADING_SMOOTH),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_PASS2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPEndDisplayList(),
};

Gfx D_0D005418[] = {
    gsDPSetCycleType(G_CYC_1CYCLE),
    gsSPClearGeometryMode(G_FOG),
    gsSPEndDisplayList(),
};

static Vtx D_0D005430[] = {
    {{{    -2,      -2,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     1,      -2,       0}, 0, {192, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     1,       1,       0}, 0, {192, 192}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -2,       1,       0}, 0, {0, 192}, {0xff, 0xff, 0xff, 0xff}}},
};

static Vtx D_0D005470[] = {
    {{{    -4,      -4,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     3,      -4,       0}, 0, {448, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     3,       3,       0}, 0, {448, 448}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -4,       3,       0}, 0, {0, 448}, {0xff, 0xff, 0xff, 0xff}}},
};

static Vtx D_0D0054B0[] = {
    {{{    -4,      -8,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     3,      -8,       0}, 0, {448, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     3,       7,       0}, 0, {448, 960}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -4,       7,       0}, 0, {0, 960}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -4,      -8,       0}, 0, {0, 0}, {0xff, 0xff, 0x80, 0xff}}},
    {{{     3,      -8,       0}, 0, {448, 0}, {0xff, 0xff, 0x80, 0xff}}},
    {{{     3,       7,       0}, 0, {448, 960}, {0xff, 0x80, 0x00, 0xff}}},
    {{{    -4,       7,       0}, 0, {0, 960}, {0xff, 0x80, 0x00, 0xff}}},
    {{{    -3,      -7,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0xff}}},
    {{{     4,      -7,       0}, 0, {448, 0}, {0x00, 0x00, 0x00, 0xff}}},
    {{{     4,       8,       0}, 0, {448, 960}, {0x00, 0x00, 0x00, 0xff}}},
    {{{    -3,       8,       0}, 0, {0, 960}, {0x00, 0x00, 0x00, 0xff}}},
    {{{    -4,     -80,       0}, 0, {0, 0}, {0xff, 0xff, 0x80, 0xff}}},
    {{{     3,     -80,       0}, 0, {448, 0}, {0xff, 0xff, 0x80, 0xff}}},
    {{{     3,      79,       0}, 0, {448, 10176}, {0xff, 0x80, 0x00, 0xff}}},
    {{{    -4,      79,       0}, 0, {0, 10176}, {0xff, 0x80, 0x00, 0xff}}},
    {{{    -6,      -6,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     5,      -6,       0}, 0, {704, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     5,       5,       0}, 0, {704, 704}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -6,       5,       0}, 0, {0, 704}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -6,      -8,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     5,      -8,       0}, 0, {704, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     5,       7,       0}, 0, {704, 960}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -6,       7,       0}, 0, {0, 960}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -6,      -8,       0}, 0, {0, 0}, {0xff, 0xff, 0x80, 0xff}}},
    {{{     5,      -8,       0}, 0, {704, 0}, {0xff, 0xff, 0x80, 0xff}}},
    {{{     5,       7,       0}, 0, {704, 960}, {0xff, 0x80, 0x00, 0xff}}},
    {{{    -6,       7,       0}, 0, {0, 960}, {0xff, 0x80, 0x00, 0xff}}},
    {{{    -5,      -7,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0xff}}},
    {{{     6,      -7,       0}, 0, {704, 0}, {0x00, 0x00, 0x00, 0xff}}},
    {{{     6,       8,       0}, 0, {704, 960}, {0x00, 0x00, 0x00, 0xff}}},
    {{{    -5,       8,       0}, 0, {0, 960}, {0x00, 0x00, 0x00, 0xff}}},
    {{{    -6,     -80,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     5,     -80,       0}, 0, {704, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     5,      79,       0}, 0, {704, 10176}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -6,      79,       0}, 0, {0, 10176}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -6,     -80,       0}, 0, {0, 0}, {0xff, 0xff, 0x80, 0xff}}},
    {{{     5,     -80,       0}, 0, {704, 0}, {0xff, 0xff, 0x80, 0xff}}},
    {{{     5,      79,       0}, 0, {704, 10176}, {0xff, 0x80, 0x00, 0xff}}},
    {{{    -6,      79,       0}, 0, {0, 10176}, {0xff, 0x80, 0x00, 0xff}}},
    {{{    -6,     -96,       0}, 0, {0, 0}, {0xff, 0xff, 0x80, 0xff}}},
    {{{     5,     -96,       0}, 0, {704, 0}, {0xff, 0xff, 0x80, 0xff}}},
    {{{     5,      95,       0}, 0, {704, 12224}, {0xff, 0x80, 0x00, 0xff}}},
    {{{    -6,      95,       0}, 0, {0, 12224}, {0xff, 0x80, 0x00, 0xff}}},
};

static Vtx D_0D005770[] = {
    {{{    -8,      -8,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     7,      -8,       0}, 0, {960, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     7,       7,       0}, 0, {960, 960}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -8,       7,       0}, 0, {0, 960}, {0xff, 0xff, 0xff, 0xff}}},
};

static Vtx D_0D0057B0[] = {
    {{{    -8,      -8,       0}, 0, {960, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     7,      -8,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     7,       7,       0}, 0, {0, 960}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -8,       7,       0}, 0, {960, 960}, {0xff, 0xff, 0xff, 0xff}}},
};

static Vtx D_0D0057F0[] = {
    {{{    -8,       0,      -8}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     7,       0,      -8}, 0, {960, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     7,       0,       7}, 0, {960, 960}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -8,       0,       7}, 0, {0, 960}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -8,      -8,       0}, 0, {0, 0}, {0xff, 0xff, 0x80, 0xff}}},
    {{{     7,      -8,       0}, 0, {960, 0}, {0xff, 0xff, 0x80, 0xff}}},
    {{{     7,       7,       0}, 0, {960, 960}, {0xff, 0x80, 0x00, 0xff}}},
    {{{    -8,       7,       0}, 0, {0, 960}, {0xff, 0x80, 0x00, 0xff}}},
    {{{    -6,      -6,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0xff}}},
    {{{     9,      -6,       0}, 0, {960, 0}, {0x00, 0x00, 0x00, 0xff}}},
    {{{     9,       9,       0}, 0, {960, 960}, {0x00, 0x00, 0x00, 0xff}}},
    {{{    -6,       9,       0}, 0, {0, 960}, {0x00, 0x00, 0x00, 0xff}}},
    {{{     0,      -8,       0}, 0, {448, 0}, {0x00, 0x00, 0x00, 0xff}}},
    {{{     8,       8,       0}, 0, {960, 960}, {0x00, 0x00, 0x00, 0xff}}},
    {{{    -8,       8,       0}, 0, {0, 960}, {0x00, 0x00, 0x00, 0xff}}},
};

static Vtx D_0D0058E0[] = {
    {{{    -8,      -8,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     7,      -8,       0}, 0, {960, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     7,       7,       0}, 0, {960, 960}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -8,       7,       0}, 0, {0, 960}, {0xff, 0xff, 0xff, 0xff}}},
};

static Vtx D_0D005920[] = {
    {{{    -4,     -32,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     3,     -32,       0}, 0, {960, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     3,      31,       0}, 0, {960, 960}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -4,      31,       0}, 0, {0, 960}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -8,     -80,       0}, 0, {0, 0}, {0xff, 0xff, 0x80, 0xff}}},
    {{{     7,     -80,       0}, 0, {960, 0}, {0xff, 0xff, 0x80, 0xff}}},
    {{{     7,      79,       0}, 0, {960, 10176}, {0xff, 0x80, 0x00, 0xff}}},
    {{{    -8,      79,       0}, 0, {0, 10176}, {0xff, 0x80, 0x00, 0xff}}},
    {{{   -10,     -10,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     9,     -10,       0}, 0, {1216, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     9,       9,       0}, 0, {1216, 1216}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -10,       9,       0}, 0, {0, 1216}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -12,     -12,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    11,     -12,       0}, 0, {1472, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    11,      11,       0}, 0, {1472, 1472}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -12,      11,       0}, 0, {0, 1472}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -12,     -24,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    11,     -24,       0}, 0, {1472, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    11,      23,       0}, 0, {1472, 3008}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -12,      23,       0}, 0, {0, 3008}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -14,     -14,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    13,     -14,       0}, 0, {1728, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    13,      13,       0}, 0, {1728, 1728}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -14,      13,       0}, 0, {0, 1728}, {0xff, 0xff, 0xff, 0xff}}},
};

static Vtx D_0D005AA0[] = {
    {{{   -16,      -8,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    15,      -8,       0}, 0, {1984, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    15,       7,       0}, 0, {1984, 960}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -16,       7,       0}, 0, {0, 960}, {0xff, 0xff, 0xff, 0xff}}},
};

static Vtx D_0D005AE0[] = {
    {{{   -16,     -16,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    15,     -16,       0}, 0, {1984, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    15,      15,       0}, 0, {1984, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -16,      15,       0}, 0, {0, 1984}, {0xff, 0xff, 0xff, 0xff}}},
};

static Vtx D_0D005B20[] = {
    {{{   -16,     -16,       0}, 0, {1984, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    15,     -16,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    15,      15,       0}, 0, {0, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -16,      15,       0}, 0, {1984, 1984}, {0xff, 0xff, 0xff, 0xff}}},
};

static Vtx D_0D005B60[] = {
    {{{   -16,       0,     -16}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    15,       0,     -16}, 0, {1984, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    15,       0,      15}, 0, {1984, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -16,       0,      15}, 0, {0, 1984}, {0xff, 0xff, 0xff, 0xff}}},
};

static Vtx D_0D005BD0[] = {
    {{{     0,      18,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    16,      -9,       0}, 0, {1984, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -16,      -9,       0}, 0, {1984, 1984}, {0xff, 0xff, 0xff, 0xff}}},
};

static Vtx D_0D005C00[] = {
    {{{     0,      18,       0}, 0, {0, 0}, {0x00, 0x00, 0x78, 0xff}}},
    {{{    16,      -9,       0}, 0, {1984, 0}, {0x00, 0x00, 0x78, 0xff}}},
    {{{   -16,      -9,       0}, 0, {1984, 1984}, {0x00, 0x00, 0x78, 0xff}}},
};

static Vtx D_0D005C30[] = {
    {{{     0,      18,       0}, 0, {0, 0}, {0xd5, 0x2c, 0x66, 0xff}}},
    {{{    16,      -9,       0}, 0, {1984, 0}, {0x66, 0xd3, 0x2b, 0xff}}},
    {{{   -16,      -9,       0}, 0, {1984, 1984}, {0x2a, 0x99, 0xd6, 0xff}}},
    {{{   -20,     -15,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    19,     -15,       0}, 0, {2496, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    19,      16,       0}, 0, {2496, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -20,      16,       0}, 0, {0, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -20,     -19,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    19,     -19,       0}, 0, {2496, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    19,      20,       0}, 0, {2496, 2496}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -20,      20,       0}, 0, {0, 2496}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -24,      -8,       0}, 0, {0, 0}, {0xff, 0xff, 0x80, 0xff}}},
    {{{    23,      -8,       0}, 0, {3008, 0}, {0xff, 0xff, 0x80, 0xff}}},
    {{{    23,       7,       0}, 0, {3008, 960}, {0xff, 0x80, 0x00, 0xff}}},
    {{{   -24,       7,       0}, 0, {0, 960}, {0xff, 0x80, 0x00, 0xff}}},
    {{{   -24,      -8,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0xff}}},
    {{{    23,      -8,       0}, 0, {3008, 0}, {0x00, 0x00, 0x00, 0xff}}},
    {{{    23,       7,       0}, 0, {3008, 960}, {0x00, 0x00, 0x00, 0xff}}},
    {{{   -24,       7,       0}, 0, {0, 960}, {0x00, 0x00, 0x00, 0xff}}},
    {{{   -24,     -19,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    23,     -19,       0}, 0, {3008, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    23,      20,       0}, 0, {3008, 2496}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -24,      20,       0}, 0, {0, 2496}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -24,     -19,       0}, 0, {3008, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    23,     -19,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    23,      20,       0}, 0, {0, 2496}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -24,      20,       0}, 0, {3008, 2496}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -24,     -19,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0xff}}},
    {{{    23,     -19,       0}, 0, {3008, 0}, {0x00, 0x00, 0x00, 0xff}}},
    {{{    23,       0,       0}, 0, {3008, 1216}, {0x00, 0x00, 0x00, 0xff}}},
    {{{   -24,       0,       0}, 0, {0, 1216}, {0x00, 0x00, 0x00, 0xff}}},
    {{{   -24,       0,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0xff}}},
    {{{    23,       0,       0}, 0, {3008, 0}, {0x00, 0x00, 0x00, 0xff}}},
    {{{    23,      19,       0}, 0, {3008, 1216}, {0x00, 0x00, 0x00, 0xff}}},
    {{{   -24,      19,       0}, 0, {0, 1216}, {0x00, 0x00, 0x00, 0xff}}},
    {{{   -24,     -23,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    23,     -23,       0}, 0, {3008, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    23,       0,       0}, 0, {3008, 1472}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -24,       0,       0}, 0, {0, 1472}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -24,       0,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
};

static Vtx D_0D005EB0[] = {
    {{{    23,       0,       0}, 0, {3008, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    23,      23,       0}, 0, {3008, 1472}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -24,      23,       0}, 0, {0, 1472}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -28,     -35,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    27,     -35,       0}, 0, {3520, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    27,       0,       0}, 0, {3520, 2240}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -28,       0,       0}, 0, {0, 2240}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -28,       0,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
};
    
static Vtx D_0D005F30[] = {
    {{{    27,       0,       0}, 0, {3520, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    27,      35,       0}, 0, {3520, 2240}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -28,      35,       0}, 0, {0, 2240}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -10,     -35,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    45,     -35,       0}, 0, {3520, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    45,       0,       0}, 0, {3520, 2240}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -10,       0,       0}, 0, {0, 2240}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -10,       0,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
};

static Vtx D_0D005FB0[] = {
    {{{    45,       0,       0}, 0, {3520, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    45,      35,       0}, 0, {3520, 2240}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -10,      35,       0}, 0, {0, 2240}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,     -16,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
};

static Vtx D_0D005FF0[] = {
    {{{    31,     -16,       0}, 0, {4032, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,      15,       0}, 0, {4032, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,      15,       0}, 0, {0, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -53,     -16,       0}, 0, {0, 0}, {0xff, 0x00, 0x00, 0xff}}},
};

static Vtx D_0D006030[] = {
    {{{    10,     -16,       0}, 0, {4032, 0}, {0xff, 0x00, 0x00, 0xff}}},
    {{{    10,      15,       0}, 0, {4032, 1984}, {0xff, 0x00, 0x00, 0xff}}},
    {{{   -53,      15,       0}, 0, {0, 1984}, {0xff, 0x00, 0x00, 0xff}}},
    {{{   -32,     -32,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,     -32,       0}, 0, {4032, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,      31,       0}, 0, {4032, 4032}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,      31,       0}, 0, {0, 4032}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,     -32,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0xff}}},
};

static Vtx D_0D0060B0[] = {  
    {{{    31,     -32,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0xff}}},
    {{{    31,      31,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0xff}}},
    {{{   -32,      31,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0xff}}},
    {{{   -32,     -31,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,     -31,       0}, 0, {4032, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,       0,       0}, 0, {4032, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,       0,       0}, 0, {0, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,       0,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
};
    

static Vtx D_0D006130[] = {  
    {{{    31,       0,       0}, 0, {4032, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,      31,       0}, 0, {4032, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,      31,       0}, 0, {0, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,     -31,       0}, 0, {4032, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,     -31,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,       0,       0}, 0, {0, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,       0,       0}, 0, {4032, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,       0,       0}, 0, {4032, 0}, {0xff, 0xff, 0xff, 0xff}}},
};

static Vtx D_0D0061B0[] = {  
    {{{    31,       0,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,      31,       0}, 0, {0, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,      31,       0}, 0, {4032, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,     -31,     -12}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,     -31,     -12}, 0, {4032, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,       0,     -12}, 0, {4032, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,       0,     -12}, 0, {0, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,       0,     -12}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,       0,     -12}, 0, {4032, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,      31,     -12}, 0, {4032, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,      31,     -12}, 0, {0, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,     -31,       0}, 0, {4032, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,     -31,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,       0,       0}, 0, {0, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,       0,       0}, 0, {4032, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,       0,       0}, 0, {4032, 0}, {0xff, 0xff, 0xff, 0xff}}},
};

static Vtx D_0D0062B0[] = {  
    {{{    31,       0,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,      31,       0}, 0, {0, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,      31,       0}, 0, {4032, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,     -32,      20}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,     -32,      20}, 0, {4032, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,      31,      20}, 0, {4032, 4032}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,      31,      20}, 0, {0, 4032}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -31,     -32,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     0,     -32,       0}, 0, {1984, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     0,      31,       0}, 0, {1984, 4032}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -31,      31,       0}, 0, {0, 4032}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     1,     -32,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    32,     -32,       0}, 0, {1984, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    32,      31,       0}, 0, {1984, 4032}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     1,      31,       0}, 0, {0, 4032}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,     -31,       0}, 0, {64, 64}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,     -31,       0}, 0, {4096, 64}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,       0,       0}, 0, {4096, 2048}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,       0,       0}, 0, {64, 2048}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,       1,       0}, 0, {64, 64}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,       1,       0}, 0, {4096, 64}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,      32,       0}, 0, {4096, 2048}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,      32,       0}, 0, {64, 2048}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,     -48,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,     -48,       0}, 0, {4032, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,     -16,       0}, 0, {4032, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,     -16,       0}, 0, {0, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,     -16,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,     -16,       0}, 0, {4032, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,      15,       0}, 0, {4032, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,      15,       0}, 0, {0, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,      15,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
};

static Vtx D_0D0064B0[] = {
    {{{    31,      15,       0}, 0, {4032, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,      47,       0}, 0, {4032, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,      47,       0}, 0, {0, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,     -47,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,     -47,       0}, 0, {4032, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,       0,       0}, 0, {4032, 3008}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,       0,       0}, 0, {0, 3008}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,       0,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,       0,       0}, 0, {4032, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    31,      47,       0}, 0, {4032, 3008}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -32,      47,       0}, 0, {0, 3008}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -36,     -23,       0}, 0, {0, 32}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    35,     -23,       0}, 0, {4544, 32}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    35,       0,       0}, 0, {4544, 1504}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -36,       0,       0}, 0, {0, 1504}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -36,       0,       0}, 0, {0, 32}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    35,       0,       0}, 0, {4544, 32}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    35,      23,       0}, 0, {4544, 1504}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -36,      23,       0}, 0, {0, 1504}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -36,     -23,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    35,     -23,       0}, 0, {4544, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    35,       0,       0}, 0, {4544, 1472}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -36,       0,       0}, 0, {0, 1472}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -36,       0,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    35,       0,       0}, 0, {4544, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    35,      23,       0}, 0, {4544, 1472}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -36,      23,       0}, 0, {0, 1472}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -36,     -23,       0}, 0, {0, 16}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    35,     -23,       0}, 0, {4544, 16}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    35,       0,       0}, 0, {4544, 1488}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -36,       0,       0}, 0, {0, 1488}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -36,       0,       0}, 0, {0, 16}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    35,       0,       0}, 0, {4544, 16}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    35,      23,       0}, 0, {4544, 1488}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -36,      23,       0}, 0, {0, 1488}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -36,     -23,       0}, 0, {0, 32}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    35,     -23,       0}, 0, {4544, 32}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    35,       0,       0}, 0, {4544, 1504}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -36,       0,       0}, 0, {0, 1504}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -36,       0,       0}, 0, {0, 32}, {0xff, 0xff, 0xff, 0xff}}},
};

static Vtx D_0D006730[] = {
    {{{    35,       0,       0}, 0, {4544, 32}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    35,      23,       0}, 0, {4544, 1504}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -36,      23,       0}, 0, {0, 1504}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -36,     -27,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    35,     -27,       0}, 0, {4544, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    35,       0,       0}, 0, {4544, 1728}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -36,       0,       0}, 0, {0, 1728}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -36,       0,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    35,       0,       0}, 0, {4544, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    35,      27,       0}, 0, {4544, 1728}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -36,      27,       0}, 0, {0, 1728}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -40,     -24,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    40,     -24,       0}, 0, {5056, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    40,       0,       0}, 0, {5056, 1472}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -40,       0,       0}, 0, {0, 1472}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -40,       0,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    40,       0,       0}, 0, {5056, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    40,      24,       0}, 0, {5056, 1472}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -40,      24,       0}, 0, {0, 1472}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -48,      -8,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    47,      -8,       0}, 0, {6080, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    47,       7,       0}, 0, {6080, 960}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -48,       7,       0}, 0, {0, 960}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -56,     -16,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    55,     -16,       0}, 0, {7104, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    55,      15,       0}, 0, {7104, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -56,      15,       0}, 0, {0, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -56,     -16,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0xff}}},
};

static Vtx D_0D0068F0[] = {
    {{{    55,     -16,       0}, 0, {7104, 0}, {0x00, 0x00, 0x00, 0xff}}},
    {{{    55,      15,       0}, 0, {7104, 1984}, {0x00, 0x00, 0x00, 0xff}}},
    {{{   -56,      15,       0}, 0, {0, 1984}, {0x00, 0x00, 0x00, 0xff}}},
    {{{   -64,     -32,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    63,     -32,       0}, 0, {8128, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    63,      31,       0}, 0, {8128, 4032}, {0xff, 0xff, 0xff, 0xff}}},
    {{{   -64,      31,       0}, 0, {0, 4032}, {0xff, 0xff, 0xff, 0xff}}},

};

Gfx D_0D006930[] = {
    gsSP1Triangle(0, 2, 1, 0),
    gsSPEndDisplayList(),
};

Gfx D_0D006940[] = {
    gsSP2Triangles(0, 2, 1, 0, 0, 3, 2, 0),
    gsSPEndDisplayList(),
};

Gfx D_0D006950[] = {
    gsSPVertex(D_0D005470, 4, 0),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_0D006968[] = {
    gsSPVertex(D_0D0054B0, 4, 0),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_0D006980[] = {
    gsSPVertex(D_0D005770, 4, 0),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_0D006998[] = {
    gsSPVertex(D_0D0057B0, 4, 0),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_0D0069B0[] = {
    gsSPVertex(D_0D0057F0, 4, 0),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_0D0069C8[] = {
    gsSPVertex(D_0D005AA0, 4, 0),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_0D0069E0[] = {
    gsSPVertex(D_0D005AE0, 4, 0),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_0D0069F8[] = {
    gsSPVertex(D_0D005B20, 4, 0),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_0D006A10[] = {
    gsSPVertex(D_0D005B60, 4, 0),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_0D006A28[] = {
    gsSPVertex(D_0D0058E0, 4, 0),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};

Gfx D_0D006A40[] = {
    gsSPVertex(D_0D005920, 4, 0),
    gsSPDisplayList(D_0D006940),
    gsSPEndDisplayList(),
};






// Texture Block shadow i4
s8 D_0D006A58[] = {
    #include "textures/132B50_06A58.i4.inc.c"
};

s8 D_0D006AD8[] = {
    #include "textures/132B50_06AD8.ia8.inc.c"
};

// tlut
s8 D_0D006ED8[] = {
    #include "textures/132B50_06ED8_tlut.rgba16.inc.c"
};

s8 D_0D006EF8[] = {
    #include "textures/132B50_06EF8.rgba16.ci4.inc.c"
};

// 0x76F8
Gfx D_0D0076F8[] = {
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_1CYCLE),
    gsDPSetTextureLOD(G_TL_TILE),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetTextureDetail(G_TD_CLAMP),
    gsDPSetTexturePersp(G_TP_PERSP),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetTextureConvert(G_TC_FILT),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsDPSetCombineKey(G_CK_NONE),
    gsDPSetAlphaCompare(G_AC_NONE),
    gsDPSetRenderMode(G_RM_OPA_SURF, G_RM_OPA_SURF2),
    gsDPNoOp(),
    gsDPSetColorDither(G_CD_DISABLE),
    gsSPSetGeometryMode(G_SHADE | G_CULL_BACK),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPEndDisplayList(),
};

Gfx D_0D007780[] = {
    gsDPSetTexturePersp(G_TP_PERSP),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsSPEndDisplayList(),
};

Gfx D_0D0077A0[] = {
    gsSPDisplayList(D_0D007780),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsSPSetGeometryMode(G_SHADE | G_CULL_BACK | G_SHADING_SMOOTH),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPEndDisplayList(),
};

Gfx D_0D0077D0[] = {
    gsSPDisplayList(D_0D007780),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsSPSetGeometryMode(G_SHADE | G_CULL_BACK | G_LIGHTING | G_SHADING_SMOOTH),
    gsSPEndDisplayList(),
};

Gfx D_0D0077F8[] = {
    gsSPDisplayList(D_0D007780),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsSPSetGeometryMode(G_SHADE | G_CULL_BACK | G_LIGHTING),
    gsSPClearGeometryMode(G_SHADING_SMOOTH),
    gsSPEndDisplayList(),
};

Gfx D_0D007828[] = {
    gsSPDisplayList(D_0D007780),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsSPSetGeometryMode(G_SHADE | G_CULL_BACK | G_LIGHTING | G_SHADING_SMOOTH),
    gsSPEndDisplayList(),
};

Gfx D_0D007850[] = {
    gsSPDisplayList(D_0D007780),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2),
    gsSPSetGeometryMode(G_SHADE | G_CULL_BACK | G_LIGHTING | G_SHADING_SMOOTH),
    gsSPEndDisplayList(),
};

Gfx D_0D007878[] = {
    gsSPDisplayList(D_0D007780),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2),
    gsSPSetGeometryMode(G_SHADE | G_CULL_BACK | G_LIGHTING | G_SHADING_SMOOTH),
    gsSPEndDisplayList(),
};

Gfx D_0D0078A0[] = {
    gsSPDisplayList(D_0D007780),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsSPSetGeometryMode(G_SHADE | G_CULL_BACK | G_SHADING_SMOOTH),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPEndDisplayList(),
};

Gfx D_0D0078D0[] = {
    gsSPDisplayList(D_0D007780),
    gsDPSetRenderMode(G_RM_OPA_SURF, G_RM_OPA_SURF2),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsSPSetGeometryMode(G_SHADE | G_SHADING_SMOOTH),
    gsSPEndDisplayList(),
};

Gfx D_0D0078F8[] = {
    gsDPSetTexturePersp(G_TP_PERSP),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetAlphaCompare(G_AC_NONE),
    gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
    gsSPTexture(32768, 32768, 0, G_TX_RENDERTILE, G_ON),
    gsSPEndDisplayList(),
};

Gfx D_0D007928[] = {
    gsSPDisplayList(D_0D0078F8),
    gsDPSetRenderMode(G_RM_TEX_EDGE, G_RM_TEX_EDGE2),
    gsDPSetTextureFilter(G_TF_POINT),
    gsSPEndDisplayList(),
};

Gfx D_0D007948[] = {
    gsSPDisplayList(D_0D0078F8),
    gsDPSetRenderMode(G_RM_TEX_EDGE, G_RM_TEX_EDGE2),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsSPEndDisplayList(),
};

Gfx D_0D007968[] = {
    gsSPDisplayList(D_0D0078F8),
    gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
    gsDPSetTextureFilter(G_TF_POINT),
    gsSPEndDisplayList(),
};

Gfx D_0D007988[] = {
    gsSPDisplayList(D_0D0078F8),
    gsDPSetRenderMode(G_RM_AA_TEX_EDGE, G_RM_AA_TEX_EDGE2),
    gsDPSetTextureFilter(G_TF_POINT),
    gsSPEndDisplayList(),
};

Gfx D_0D0079A8[] = {
    gsSPDisplayList(D_0D0078F8),
    gsDPSetRenderMode(G_RM_AA_TEX_EDGE, G_RM_AA_TEX_EDGE2),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsSPEndDisplayList(),
};

Gfx D_0D0079C8[] = {
    gsSPDisplayList(D_0D0078F8),
    gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsSPEndDisplayList(),
};

Gfx D_0D0079E8[] = {
    gsSPDisplayList(D_0D0078F8),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_WRAP | ZMODE_XLU | CVG_X_ALPHA | FORCE_BL | GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA), AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_WRAP | ZMODE_XLU | CVG_X_ALPHA | FORCE_BL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsSPEndDisplayList(),
};

Gfx D_0D007A08[] = {
    gsDPSetTexturePersp(G_TP_PERSP),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetAlphaCompare(G_AC_NONE),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPTexture(32768, 32768, 0, G_TX_RENDERTILE, G_ON),
    gsSPEndDisplayList(),
};

Gfx D_0D007A40[] = {
    gsSPDisplayList(D_0D007A08),
    gsDPSetTextureFilter(G_TF_POINT),
    gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
    gsSPEndDisplayList(),
};

Gfx D_0D007A60[] = {
    gsSPDisplayList(D_0D007A08),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
    gsSPEndDisplayList(),
};

Gfx D_0D007A80[] = {
    gsSPDisplayList(D_0D007A08),
    gsDPSetTextureFilter(G_TF_POINT),
    gsDPSetRenderMode(G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2),
    gsSPEndDisplayList(),
};

Gfx D_0D007AA0[] = {
    gsSPDisplayList(D_0D007A08),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetRenderMode(G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2),
    gsSPEndDisplayList(),
};

Gfx D_0D007AC0[] = {
    gsSPDisplayList(D_0D007A08),
    gsDPSetTextureFilter(G_TF_POINT),
    gsDPSetRenderMode(G_RM_ZB_XLU_SURF, G_RM_ZB_XLU_SURF2),
    gsSPEndDisplayList(),
};

Gfx D_0D007AE0[] = {
    gsSPDisplayList(D_0D007A08),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetRenderMode(G_RM_ZB_XLU_SURF, G_RM_ZB_XLU_SURF2),
    gsSPEndDisplayList(),
};

Gfx D_0D007B00[] = {
    gsSPDisplayList(D_0D007A08),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2),
    gsSPEndDisplayList(),
};

Gfx D_0D007B20[] = {
    gsSPDisplayList(D_0D007A08),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2),
    gsDPSetPrimColor(0, 0, 0x14, 0x14, 0x14, 0x00),
    gsDPSetCombineLERP(0, 0, 0, PRIMITIVE, 0, 0, 0, TEXEL0, 0, 0, 0, PRIMITIVE, 0, 0, 0, TEXEL0),
    gsDPLoadTextureBlock_4b(D_0D006A58, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSPDisplayList(D_0D006980),
    gsSPTexture(32768, 32768, 0, G_TX_RENDERTILE, G_OFF),
    gsSPEndDisplayList(),
};

Gfx D_0D007B98[] = {
    gsSPDisplayList(D_0D007A08),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2),
    gsDPSetPrimColor(0, 0, 0x14, 0x14, 0x14, 0x00),
    gsDPSetCombineLERP(0, 0, 0, PRIMITIVE, 0, 0, 0, TEXEL0, 0, 0, 0, PRIMITIVE, 0, 0, 0, TEXEL0),
    gsDPLoadTextureBlock_4b(D_0D006A58, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSPDisplayList(D_0D0069B0),
    gsSPTexture(32768, 32768, 0, G_TX_RENDERTILE, G_OFF),
    gsSPEndDisplayList(),
};

Gfx D_0D007C10[] = {
    gsSPDisplayList(D_0D007A08),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2),
    gsDPSetPrimColor(0, 0, 0x1E, 0x0A, 0x00, 0xC8),
    gsDPSetCombineMode(G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM),
    gsDPLoadTextureBlock(D_0D006AD8, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSPDisplayList(D_0D006A10),
    gsSPTexture(32768, 32768, 0, G_TX_RENDERTILE, G_OFF),
    gsSPEndDisplayList(),
};

Gfx D_0D007C88[] = {
    gsDPSetTexturePersp(G_TP_PERSP),
    gsDPSetAlphaCompare(G_AC_NONE),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
    gsSPTexture(32768, 32768, 0, G_TX_RENDERTILE, G_ON),
    gsSPEndDisplayList(),
};

Gfx D_0D007CB8[] = {
    gsSPDisplayList(D_0D007C88),
    gsDPSetTextureFilter(G_TF_POINT),
    gsDPSetRenderMode(G_RM_TEX_EDGE, G_RM_TEX_EDGE2),
    gsSPEndDisplayList(),
};

Gfx D_0D007CD8[] = {
    gsSPDisplayList(D_0D007C88),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetRenderMode(G_RM_TEX_EDGE, G_RM_TEX_EDGE2),
    gsSPEndDisplayList(),
};

Gfx D_0D007CF8[] = {
    gsSPDisplayList(D_0D007C88),
    gsDPSetTextureFilter(G_TF_AVERAGE),
    gsDPSetRenderMode(G_RM_TEX_EDGE, G_RM_TEX_EDGE2),
    gsSPEndDisplayList(),
};

Gfx D_0D007D18[] = {
    gsSPDisplayList(D_0D007C88),
    gsDPSetRenderMode(G_RM_AA_TEX_EDGE, G_RM_AA_TEX_EDGE2),
    gsDPSetTextureFilter(G_TF_POINT),
    gsSPEndDisplayList(),
};

Gfx D_0D007D38[] = {
    gsSPDisplayList(D_0D007C88),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetRenderMode(G_RM_AA_TEX_EDGE, G_RM_AA_TEX_EDGE2),
    gsSPEndDisplayList(),
};

Gfx D_0D007D58[] = {
    gsSPDisplayList(D_0D007C88),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetRenderMode(G_RM_ZB_OPA_SURF, G_RM_ZB_OPA_SURF2),
    gsSPEndDisplayList(),
};

Gfx D_0D007D78[] = {
    gsSPDisplayList(D_0D007C88),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2),
    gsSPEndDisplayList(),
};

Gfx D_0D007D98[] = {
    gsSPDisplayList(D_0D007C88),
    gsDPSetTextureFilter(G_TF_POINT),
    gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2),
    gsSPEndDisplayList(),
};

Gfx D_0D007DB8[] = {
    gsSPDisplayList(D_0D007C88),
    gsDPSetTextureFilter(G_TF_POINT),
    gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
    gsSPEndDisplayList(),
};

Gfx D_0D007DD8[] = {
    gsSPDisplayList(D_0D007C88),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
    gsSPEndDisplayList(),
};

Gfx D_0D007DF8[] = {
    gsSPDisplayList(D_0D007C88),
    gsDPSetTextureFilter(G_TF_POINT),
    gsDPSetRenderMode(G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2),
    gsSPEndDisplayList(),
};

Gfx D_0D007E18[] = {
    gsSPDisplayList(D_0D007C88),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetRenderMode(G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2),
    gsSPEndDisplayList(),
};

Gfx D_0D007E38[] = {
    gsSPDisplayList(D_0D007C88),
    gsDPSetTextureFilter(G_TF_POINT),
    gsDPSetRenderMode(G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2),
    gsSPEndDisplayList(),
};

Gfx D_0D007E58[] = {
    gsSPDisplayList(D_0D007C88),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetRenderMode(G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2),
    gsSPEndDisplayList(),
};

Gfx D_0D007E78[] = {
    gsSPDisplayList(D_0D007C88),
    gsDPSetTextureFilter(G_TF_POINT),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_WRAP | ZMODE_XLU | CVG_X_ALPHA | FORCE_BL | GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA), AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_WRAP | ZMODE_XLU | CVG_X_ALPHA | FORCE_BL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPEndDisplayList(),
};

Gfx D_0D007E98[] = {
    gsSPDisplayList(D_0D007C88),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_WRAP | ZMODE_XLU | CVG_X_ALPHA | FORCE_BL | GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA), AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_WRAP | ZMODE_XLU | CVG_X_ALPHA | FORCE_BL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPEndDisplayList(),
};

Gfx D_0D007EB8[] = {
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_1CYCLE),
    gsDPSetAlphaCompare(G_AC_NONE),
    gsSPEndDisplayList(),
};

Gfx D_0D007ED8[] = {
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetTexturePersp(G_TP_NONE),
    gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
    gsSPEndDisplayList(),
};

Gfx D_0D007EF8[] = {
    gsSPDisplayList(D_0D007ED8),
    gsDPSetRenderMode(G_RM_TEX_EDGE, G_RM_TEX_EDGE2),
    gsDPSetTextureFilter(G_TF_POINT),
    gsSPEndDisplayList(),
};

Gfx D_0D007F18[] = {
    gsSPDisplayList(D_0D007ED8),
    gsDPSetRenderMode(G_RM_TEX_EDGE, G_RM_TEX_EDGE2),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsSPEndDisplayList(),
};

Gfx D_0D007F38[] = {
    gsSPDisplayList(D_0D007ED8),
    gsDPSetTextureFilter(G_TF_POINT),
    gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
    gsSPEndDisplayList(),
};

Gfx D_0D007F58[] = {
    gsSPDisplayList(D_0D007ED8),
    gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsSPEndDisplayList(),
};

Gfx D_0D007F78[] = {
    gsSPDisplayList(D_0D007ED8),
    gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsSPEndDisplayList(),
};

Gfx D_0D007F98[] = {
    gsSPDisplayList(D_0D007ED8),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_WRAP | ZMODE_XLU | CVG_X_ALPHA | FORCE_BL | GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA), AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_WRAP | ZMODE_XLU | CVG_X_ALPHA | FORCE_BL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsSPEndDisplayList(),
};

Gfx D_0D007FB8[] = {
    gsDPSetTexturePersp(G_TP_NONE),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
    gsDPSetAlphaCompare(G_AC_NONE),
    gsSPEndDisplayList(),
};

Gfx D_0D007FE0[] = {
    gsSPDisplayList(D_0D007FB8),
    gsDPSetTextureFilter(G_TF_POINT),
    gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
    gsSPEndDisplayList(),
};

Gfx D_0D008000[] = {
    gsSPDisplayList(D_0D007FB8),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
    gsSPEndDisplayList(),
};

Gfx D_0D008020[] = {
    gsDPSetTexturePersp(G_TP_NONE),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
    gsSPEndDisplayList(),
};

Gfx D_0D008040[] = {
    gsSPDisplayList(D_0D008020),
    gsDPSetTextureFilter(G_TF_POINT),
    gsDPSetRenderMode(G_RM_TEX_EDGE, G_RM_TEX_EDGE2),
    gsSPEndDisplayList(),
};

Gfx D_0D008060[] = {
    gsSPDisplayList(D_0D008020),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetRenderMode(G_RM_TEX_EDGE, G_RM_TEX_EDGE2),
    gsSPEndDisplayList(),
};

Gfx D_0D008080[] = {
    gsSPDisplayList(D_0D007EF8),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal16(0, D_0D006ED8),
    gsDPLoadSync(),
    gsDPLoadTextureBlock_4b(&D_0D006ED8[0x20], G_IM_FMT_CI, 128, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSPEndDisplayList(),
};

Gfx D_0D008108[] = {
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_COPY),
    gsSPEndDisplayList(),
};

Gfx D_0D008120[] = {
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_1CYCLE),
    gsSPEndDisplayList(),
};

Gfx D_0D008138[] = {
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_2CYCLE),
    gsSPEndDisplayList(),
};

// 0x8150 unk data prob texture
s8 D_0D008150[] = {
    #include "textures/132B50_08150.ia8.inc.c"
};

s8 D_0D008470[] = {
    #include "textures/132B50_08470.ia8.inc.c"
};

s8 D_0D008790[] = {
    #include "textures/132B50_08790.ia8.inc.c"
};
// D_0D008858 part of 08790

// D_0D008984 part of 08790

// D_0D008B14 part of 08790


static Vtx D_0D008B78[] = {
    {{{     2,       2,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     2,      -2,       0}, 0, {0, 960}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -2,      -2,       0}, 0, {960, 960}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -2,       2,       0}, 0, {960, 0}, {0xff, 0xff, 0xff, 0xff}}},
};

static Vtx D_0D008BB8[] = {
    {{{     2,       4,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     2,       0,       0}, 0, {0, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -2,       0,       0}, 0, {1984, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -2,       4,       0}, 0, {1984, 0}, {0xff, 0xff, 0xff, 0xff}}},
};

static Vtx D_0D008BF8[] = {
    {{{     2,       2,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     2,      -2,       0}, 0, {0, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -2,      -2,       0}, 0, {1984, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -2,       2,       0}, 0, {1984, 0}, {0xff, 0xff, 0xff, 0xff}}},
};

static Vtx D_0D008C38[] = {
    {{{     2,       2,       0}, 0, {1984, 0}, {0xff, 0xff, 0xff, 0xff}}},
    {{{     2,      -2,       0}, 0, {1984, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -2,      -2,       0}, 0, {0, 1984}, {0xff, 0xff, 0xff, 0xff}}},
    {{{    -2,       2,       0}, 0, {0, 0}, {0xff, 0xff, 0xff, 0xff}}},
};

Gfx D_0D008C78[] = {
    gsSP1Triangle(0, 1, 2, 0),
    gsSP1Triangle(0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx D_0D008C90[] = {
    gsDPPipeSync(),
    gsDPSetAlphaCompare(G_AC_NONE),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2),
    gsSPTexture(32768, 32768, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetTexturePersp(G_TP_PERSP),
    gsSPEndDisplayList(),
};

Gfx D_0D008CD8[] = {
    gsDPPipeSync(),
    gsDPSetAlphaCompare(G_AC_NONE),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPTexture(32768, 32768, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetTexturePersp(G_TP_PERSP),
    gsSPEndDisplayList(),
};

Gfx D_0D008D10[] = {
    gsDPPipeSync(),
    gsDPSetAlphaCompare(G_AC_NONE),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | CVG_X_ALPHA | FORCE_BL | GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA), AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | CVG_X_ALPHA | FORCE_BL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(32768, 32768, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetTexturePersp(G_TP_PERSP),
    gsSPEndDisplayList(),
};

Gfx D_0D008D58[] = {
    gsDPPipeSync(),
    gsDPSetTexturePersp(G_TP_PERSP),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPNoOp(),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsSPTexture(32768, 32768, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetRenderMode(G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsSPEndDisplayList(),
};

Gfx D_0D008DA0[] = {
    gsSPDisplayList(D_0D008C78),
    gsSPTexture(1, 1, 0, G_TX_RENDERTILE, G_OFF),
    gsSPEndDisplayList(),
};

Gfx D_0D008DB8[] = {
    gsDPPipeSync(),
    gsDPSetTexturePersp(G_TP_PERSP),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPNoOp(),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsSPTexture(32768, 32768, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPEndDisplayList(),
};

Gfx D_0D008DF8[] = {
    gsDPSetRenderMode(G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2),
    gsSPVertex(D_0D008B78, 4, 0),
    gsSPDisplayList(D_0D008DA0),
    gsDPSetAlphaCompare(G_AC_NONE),
    gsSPEndDisplayList(),
};

Gfx D_0D008E20[] = {
    gsDPSetRenderMode(G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2),
    gsSPVertex(D_0D008BB8, 4, 0),
    gsSPDisplayList(D_0D008DA0),
    gsDPSetAlphaCompare(G_AC_NONE),
    gsSPEndDisplayList(),
};

Gfx D_0D008E48[] = {
    gsDPSetRenderMode(G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2),
    gsSPVertex(D_0D008BF8, 4, 0),
    gsSPDisplayList(D_0D008DA0),
    gsDPSetAlphaCompare(G_AC_NONE),
    gsSPEndDisplayList(),
};

Gfx D_0D008E70[] = {
    gsDPSetRenderMode(G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2),
    gsSPVertex(D_0D008C38, 4, 0),
    gsSPDisplayList(D_0D008DA0),
    gsDPSetAlphaCompare(G_AC_NONE),
    gsSPEndDisplayList(),
};

static Vtx D_0D008E98[] = {

    {{{     1,       0,       0}, 0, {0, 1}, {0x00, 0x00, 0x00, 0x00}}},
    {{{     0,       0,       1}, 0, {0, 0}, {0x00, 0x00, 0x00, 0x01}}},
    {{{     0,       0,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0x00}}},
    {{{     0,       0,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0x00}}},
    {{{     0,     410,       0}, 0, {0, 0}, {0x00, 0x00, 0x00, 0x00}}},
    {{{     0,       0,       0}, 546, {0, 0}, {0x00, 0x00, 0x00, 0x00}}},
    {{{     0,       0,       0}, 0, {65535, 3}, {0x00, 0x00, 0x00, 0x00}}},
    {{{    -1,       3,      -1}, 3, {65535, 3}, {0x00, 0x01, 0x00, 0x00}}},
    {{{     1,       3,       0}, 2, {65535, 65535}, {0x00, 0x00, 0x00, 0x00}}},
    {{{     1,       2,       0}, 6, {11, 30}, {0x00, 0x00, 0x00, 0x01}}},
    {{{    55,      74,       0}, 1, {90, 105}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   139,     155,       0}, 1, {177, 205}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   225,     242,       0}, 1, {292, 313}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   352,     373,       0}, 1, {452, 465}, {0x00, 0x00, 0x00, 0x01}}},
    {{{    -1,      -1,       0}, 0, {1, 2}, {0x00, 0x00, 0x00, 0x06}}},
    {{{    10,      25,       0}, 1, {190, 210}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   270,     290,       0}, 1, {410, 440}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   540,     550,       0}, 1, {65535, 65535}, {0x00, 0x00, 0x00, 0x00}}},
    {{{     1,       2,       0}, 6, {60, 80}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   125,     140,       0}, 1, {170, 185}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   230,     240,       0}, 1, {275, 285}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   310,     320,       0}, 1, {321, 349}, {0x00, 0x00, 0x00, 0x03}}},
    {{{   350,     360,       0}, 1, {385, 415}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   450,     468,       0}, 1, {470, 477}, {0x00, 0x00, 0x00, 0x09}}},
    {{{   480,     485,       0}, 11, {543, 546}, {0x00, 0x00, 0x00, 0x09}}},
    {{{   548,     550,       0}, 11, {565, 568}, {0x00, 0x00, 0x00, 0x02}}},
    {{{   630,     631,       0}, 6, {635, 640}, {0x00, 0x00, 0x00, 0x0a}}},
    {{{   645,     655,       0}, 1, {65535, 65535}, {0x00, 0x00, 0x00, 0x00}}},
    {{{     1,       2,       0}, 6, {15, 30}, {0x00, 0x00, 0x00, 0x01}}},
    {{{    55,      65,       0}, 1, {125, 150}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   265,     270,       0}, 1, {275, 285}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   305,     320,       0}, 2, {330, 340}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   375,     385,       0}, 1, {547, 570}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   582,     600,       0}, 1, {65535, 65535}, {0x00, 0x00, 0x00, 0x00}}},
    {{{     1,       2,       0}, 6, {70, 94}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   120,     133,       0}, 1, {150, 170}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   249,     265,       0}, 1, {360, 395}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   635,     655,       0}, 1, {65535, 65535}, {0x00, 0x00, 0x00, 0x00}}},
    {{{     1,       2,       0}, 6, {15, 30}, {0x00, 0x00, 0x00, 0x01}}},
    {{{    41,      63,       0}, 1, {115, 155}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   200,     215,       0}, 1, {240, 241}, {0x00, 0x00, 0x00, 0x09}}},
    {{{   264,     265,       0}, 10, {270, 290}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   345,     375,       0}, 1, {493, 544}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   583,     605,       0}, 1, {65535, 65535}, {0x00, 0x00, 0x00, 0x00}}},
    {{{     1,       2,       0}, 6, {75, 100}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   135,     150,       0}, 1, {355, 390}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   505,     525,       0}, 1, {65535, 65535}, {0x00, 0x00, 0x00, 0x00}}},
    {{{     1,       2,       0}, 6, {65, 80}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   165,     166,       0}, 9, {180, 210}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   220,     221,       0}, 10, {250, 275}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   360,     380,       0}, 1, {440, 480}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   600,     601,       0}, 9, {689, 690}, {0x00, 0x00, 0x00, 0x0a}}},
    {{{   695,     725,       0}, 1, {65535, 65535}, {0x00, 0x00, 0x00, 0x00}}},
    {{{     1,       2,       0}, 6, {128, 275}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   320,     345,       0}, 1, {465, 565}, {0x00, 0x00, 0x00, 0x01}}},
    {{{    -1,      -1,       0}, 0, {1, 2}, {0x00, 0x00, 0x00, 0x06}}},
    {{{    75,     100,       0}, 1, {175, 210}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   275,     300,       0}, 1, {65535, 65535}, {0x00, 0x00, 0x00, 0x00}}},
    {{{     1,       2,       0}, 6, {106, 188}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   220,     386,       0}, 1, {583, 765}, {0x00, 0x00, 0x00, 0x01}}},
    {{{    -1,      -1,       0}, 0, {1, 2}, {0x00, 0x00, 0x00, 0x06}}},
    {{{   245,     262,       0}, 1, {585, 606}, {0x00, 0x00, 0x00, 0x01}}},
    {{{    -1,      -1,       0}, 0, {1, 2}, {0x00, 0x00, 0x00, 0x06}}},
    {{{     7,      38,       0}, 1, {36, 54}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   129,     150,       0}, 1, {380, 410}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   425,     445,       0}, 1, {456, 500}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   594,     625,       0}, 1, {65535, 65535}, {0x00, 0x00, 0x00, 0x00}}},
    {{{     1,       2,       0}, 6, {4, 5}, {0x00, 0x00, 0x00, 0x09}}},
    {{{   129,     130,       0}, 10, {555, 560}, {0x00, 0x00, 0x00, 0x09}}},
    {{{   827,     832,       0}, 10, {810, 845}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   910,     993,       0}, 1, {1390, 1600}, {0x00, 0x00, 0x00, 0x01}}},
    {{{    -1,      -1,       0}, 0, {1, 2}, {0x00, 0x00, 0x00, 0x06}}},
    {{{    80,     120,       0}, 1, {200, 250}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   252,     253,       0}, 9, {273, 295}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   300,     315,       0}, 1, {333, 384}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   400,     401,       0}, 10, {405, 435}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   445,     475,       0}, 1, {485, 525}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   585,     615,       0}, 1, {685, 735}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   783,     820,       0}, 1, {956, 984}, {0x00, 0x00, 0x00, 0x01}}},
    {{{  1005,    1050,       0}, 1, {1063, 1088}, {0x00, 0x00, 0x00, 0x01}}},
    {{{  1130,    1131,       0}, 9, {1169, 1170}, {0x00, 0x00, 0x00, 0x0a}}},
    {{{  1195,    1240,       0}, 1, {1262, 1300}, {0x00, 0x00, 0x00, 0x01}}},
    {{{    -1,      -1,       0}, 0, {1, 2}, {0x00, 0x00, 0x00, 0x06}}},
    {{{    20,      40,       0}, 1, {190, 191}, {0x00, 0x00, 0x00, 0x09}}},
    {{{   259,     260,       0}, 10, {315, 335}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   353,     370,       0}, 1, {398, 430}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   458,     485,       0}, 1, {510, 535}, {0x00, 0x00, 0x00, 0x01}}},
    {{{   580,     660,       0}, 3, {65535, 65535}, {0x00, 0x00, 0x00, 0x00}}},

};

/* C:\Users\MegaMech\decomp\actors\mk64\bin\common_textures.bin (2022-04-12 1:00:51 PM)
   StartOffset(h): 00009418, EndOffset(h): 00009957, Length(h): 00000540 */
// unk data. Maybe texture?
/*
u8 rawData[1344] = {
	0x40, 0x85, 0x55, 0x55, 0x40, 0xB2, 0xAA, 0xAB, 0x40, 0xC5, 0x55, 0x55,
	0x40, 0xD8, 0x00, 0x00, 0x40, 0x85, 0x55, 0x55, 0x40, 0xB2, 0xAA, 0xAB,
	0x40, 0xC5, 0x55, 0x55, 0x40, 0xD8, 0x00, 0x00, 0x40, 0x85, 0x55, 0x55,
	0x40, 0xB2, 0xAA, 0xAB, 0x40, 0xC5, 0x55, 0x55, 0x40, 0xD8, 0x00, 0x00,
	0x40, 0x85, 0x55, 0x55, 0x40, 0xB2, 0xAA, 0xAB, 0x40, 0xC5, 0x55, 0x55,
	0x40, 0xD8, 0x00, 0x00, 0x40, 0x85, 0x55, 0x55, 0x40, 0xB2, 0xAA, 0xAB,
	0x40, 0xC5, 0x55, 0x55, 0x40, 0xD8, 0x00, 0x00, 0x40, 0x85, 0x55, 0x55,
	0x40, 0xB2, 0xAA, 0xAB, 0x40, 0xC5, 0x55, 0x55, 0x40, 0xD8, 0x00, 0x00,
	0x40, 0x85, 0x55, 0x55, 0x40, 0xB2, 0xAA, 0xAB, 0x40, 0xC5, 0x55, 0x55,
	0x40, 0xD8, 0x00, 0x00, 0x40, 0x85, 0x55, 0x55, 0x40, 0xB2, 0xAA, 0xAB,
	0x40, 0xC5, 0x55, 0x55, 0x40, 0xD8, 0x00, 0x00, 0x40, 0x85, 0x55, 0x55,
	0x40, 0xB2, 0xAA, 0xAB, 0x40, 0xC5, 0x55, 0x55, 0x40, 0xD8, 0x00, 0x00,
	0x40, 0x85, 0x55, 0x55, 0x40, 0xB2, 0xAA, 0xAB, 0x40, 0xC5, 0x55, 0x55,
	0x40, 0xD8, 0x00, 0x00, 0x40, 0x85, 0x55, 0x55, 0x40, 0xB2, 0xAA, 0xAB,
	0x40, 0xC5, 0x55, 0x55, 0x40, 0xD8, 0x00, 0x00, 0x40, 0x85, 0x55, 0x55,
	0x40, 0xB2, 0xAA, 0xAB, 0x40, 0xC5, 0x55, 0x55, 0x40, 0xD8, 0x00, 0x00,
	0x40, 0x85, 0x55, 0x55, 0x40, 0xB2, 0xAA, 0xAB, 0x40, 0xC5, 0x55, 0x55,
	0x40, 0xD8, 0x00, 0x00, 0x40, 0x85, 0x55, 0x55, 0x40, 0xB2, 0xAA, 0xAB,
	0x40, 0xC5, 0x55, 0x55, 0x40, 0xD8, 0x00, 0x00, 0x40, 0x85, 0x55, 0x55,
	0x40, 0xB2, 0xAA, 0xAB, 0x40, 0xC5, 0x55, 0x55, 0x40, 0xD8, 0x00, 0x00,
	0x40, 0x85, 0x55, 0x55, 0x40, 0xB2, 0xAA, 0xAB, 0x40, 0xC5, 0x55, 0x55,
	0x40, 0xD8, 0x00, 0x00, 0x40, 0x85, 0x55, 0x55, 0x40, 0xB2, 0xAA, 0xAB,
	0x40, 0xC5, 0x55, 0x55, 0x40, 0xD8, 0x00, 0x00, 0x40, 0x85, 0x55, 0x55,
	0x40, 0xB2, 0xAA, 0xAB, 0x40, 0xC5, 0x55, 0x55, 0x40, 0xD8, 0x00, 0x00,
	0x40, 0x85, 0x55, 0x55, 0x40, 0xB2, 0xAA, 0xAB, 0x40, 0xC5, 0x55, 0x55,
	0x40, 0xD8, 0x00, 0x00, 0x40, 0x85, 0x55, 0x55, 0x40, 0xB2, 0xAA, 0xAB,
	0x40, 0xC5, 0x55, 0x55, 0x40, 0xD8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x40, 0x70, 0x00, 0x00, 0x40, 0xA5, 0x55, 0x55, 0x40, 0xB8, 0x00, 0x00,
	0x40, 0xCA, 0xAA, 0xAB, 0x40, 0x70, 0x00, 0x00, 0x40, 0xA5, 0x55, 0x55,
	0x40, 0xB8, 0x00, 0x00, 0x40, 0xCA, 0xAA, 0xAB, 0x40, 0x70, 0x00, 0x00,
	0x40, 0xA5, 0x55, 0x55, 0x40, 0xB8, 0x00, 0x00, 0x40, 0xCA, 0xAA, 0xAB,
	0x40, 0x70, 0x00, 0x00, 0x40, 0xA5, 0x55, 0x55, 0x40, 0xB8, 0x00, 0x00,
	0x40, 0xCA, 0xAA, 0xAB, 0x40, 0x70, 0x00, 0x00, 0x40, 0x92, 0xAA, 0xAB,
	0x40, 0x92, 0xAA, 0xAB, 0x40, 0x92, 0xAA, 0xAB, 0x40, 0x70, 0x00, 0x00,
	0x40, 0xA5, 0x55, 0x55, 0x40, 0xB8, 0x00, 0x00, 0x40, 0xCA, 0xAA, 0xAB,
	0x40, 0x70, 0x00, 0x00, 0x40, 0xA5, 0x55, 0x55, 0x40, 0xB8, 0x00, 0x00,
	0x40, 0xCA, 0xAA, 0xAB, 0x40, 0x70, 0x00, 0x00, 0x40, 0xA5, 0x55, 0x55,
	0x40, 0xB8, 0x00, 0x00, 0x40, 0xCA, 0xAA, 0xAB, 0x40, 0x70, 0x00, 0x00,
	0x40, 0xA5, 0x55, 0x55, 0x40, 0xB8, 0x00, 0x00, 0x40, 0xCA, 0xAA, 0xAB,
	0x40, 0x70, 0x00, 0x00, 0x40, 0xA5, 0x55, 0x55, 0x40, 0xB8, 0x00, 0x00,
	0x40, 0xCA, 0xAA, 0xAB, 0x40, 0x85, 0x55, 0x55, 0x40, 0xB2, 0xAA, 0xAB,
	0x40, 0xC5, 0x55, 0x55, 0x40, 0xD8, 0x00, 0x00, 0x40, 0x70, 0x00, 0x00,
	0x40, 0xA5, 0x55, 0x55, 0x40, 0xB8, 0x00, 0x00, 0x40, 0xCA, 0xAA, 0xAB,
	0x40, 0x70, 0x00, 0x00, 0x40, 0xA5, 0x55, 0x55, 0x40, 0xB8, 0x00, 0x00,
	0x40, 0xCA, 0xAA, 0xAB, 0x40, 0x70, 0x00, 0x00, 0x40, 0xA5, 0x55, 0x55,
	0x40, 0xB8, 0x00, 0x00, 0x40, 0xCA, 0xAA, 0xAB, 0x40, 0x70, 0x00, 0x00,
	0x40, 0xA5, 0x55, 0x55, 0x40, 0xB8, 0x00, 0x00, 0x40, 0xCA, 0xAA, 0xAB,
	0x40, 0x70, 0x00, 0x00, 0x40, 0xA5, 0x55, 0x55, 0x40, 0xB8, 0x00, 0x00,
	0x40, 0xCA, 0xAA, 0xAB, 0x40, 0x70, 0x00, 0x00, 0x40, 0xA5, 0x55, 0x55,
	0x40, 0xB8, 0x00, 0x00, 0x40, 0xCA, 0xAA, 0xAB, 0x40, 0x70, 0x00, 0x00,
	0x40, 0xA5, 0x55, 0x55, 0x40, 0xB8, 0x00, 0x00, 0x40, 0xCA, 0xAA, 0xAB,
	0x40, 0x70, 0x00, 0x00, 0x40, 0xA5, 0x55, 0x55, 0x40, 0xB8, 0x00, 0x00,
	0x40, 0xCA, 0xAA, 0xAB, 0x40, 0x70, 0x00, 0x00, 0x40, 0xA5, 0x55, 0x55,
	0x40, 0xB8, 0x00, 0x00, 0x40, 0xCA, 0xAA, 0xAB, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x40, 0x55, 0x55, 0x55, 0x40, 0x7A, 0xAA, 0xAB, 0x40, 0x90, 0x00, 0x00,
	0x40, 0xA2, 0xAA, 0xAB, 0x40, 0x55, 0x55, 0x55, 0x40, 0x7A, 0xAA, 0xAB,
	0x40, 0x90, 0x00, 0x00, 0x40, 0xA2, 0xAA, 0xAB, 0x40, 0x55, 0x55, 0x55,
	0x40, 0x7A, 0xAA, 0xAB, 0x40, 0x90, 0x00, 0x00, 0x40, 0xA2, 0xAA, 0xAB,
	0x40, 0x55, 0x55, 0x55, 0x40, 0x7A, 0xAA, 0xAB, 0x40, 0x90, 0x00, 0x00,
	0x40, 0xA2, 0xAA, 0xAB, 0x40, 0x55, 0x55, 0x55, 0x40, 0x55, 0x55, 0x55,
	0x40, 0x55, 0x55, 0x55, 0x40, 0x55, 0x55, 0x55, 0x40, 0x55, 0x55, 0x55,
	0x40, 0x7A, 0xAA, 0xAB, 0x40, 0x90, 0x00, 0x00, 0x40, 0xA2, 0xAA, 0xAB,
	0x40, 0x55, 0x55, 0x55, 0x40, 0x7A, 0xAA, 0xAB, 0x40, 0x90, 0x00, 0x00,
	0x40, 0xA2, 0xAA, 0xAB, 0x40, 0x55, 0x55, 0x55, 0x40, 0x7A, 0xAA, 0xAB,
	0x40, 0x90, 0x00, 0x00, 0x40, 0xA2, 0xAA, 0xAB, 0x40, 0x55, 0x55, 0x55,
	0x40, 0x7A, 0xAA, 0xAB, 0x40, 0x90, 0x00, 0x00, 0x40, 0xA2, 0xAA, 0xAB,
	0x40, 0x55, 0x55, 0x55, 0x40, 0x7A, 0xAA, 0xAB, 0x40, 0x90, 0x00, 0x00,
	0x40, 0xA2, 0xAA, 0xAB, 0x40, 0x55, 0x55, 0x55, 0x40, 0x7A, 0xAA, 0xAB,
	0x40, 0x90, 0x00, 0x00, 0x40, 0xA2, 0xAA, 0xAB, 0x40, 0x55, 0x55, 0x55,
	0x40, 0x7A, 0xAA, 0xAB, 0x40, 0x90, 0x00, 0x00, 0x40, 0xA2, 0xAA, 0xAB,
	0x40, 0x55, 0x55, 0x55, 0x40, 0x7A, 0xAA, 0xAB, 0x40, 0x90, 0x00, 0x00,
	0x40, 0xA2, 0xAA, 0xAB, 0x40, 0x55, 0x55, 0x55, 0x40, 0x7A, 0xAA, 0xAB,
	0x40, 0x90, 0x00, 0x00, 0x40, 0xA2, 0xAA, 0xAB, 0x40, 0x55, 0x55, 0x55,
	0x40, 0x7A, 0xAA, 0xAB, 0x40, 0x90, 0x00, 0x00, 0x40, 0xA2, 0xAA, 0xAB,
	0x40, 0x55, 0x55, 0x55, 0x40, 0x7A, 0xAA, 0xAB, 0x40, 0x90, 0x00, 0x00,
	0x40, 0xA2, 0xAA, 0xAB, 0x40, 0x55, 0x55, 0x55, 0x40, 0x7A, 0xAA, 0xAB,
	0x40, 0x90, 0x00, 0x00, 0x40, 0xA2, 0xAA, 0xAB, 0x40, 0x55, 0x55, 0x55,
	0x40, 0x7A, 0xAA, 0xAB, 0x40, 0x90, 0x00, 0x00, 0x40, 0xA2, 0xAA, 0xAB,
	0x40, 0x55, 0x55, 0x55, 0x40, 0x7A, 0xAA, 0xAB, 0x40, 0x90, 0x00, 0x00,
	0x40, 0xA2, 0xAA, 0xAB, 0x40, 0x55, 0x55, 0x55, 0x40, 0x7A, 0xAA, 0xAB,
	0x40, 0x90, 0x00, 0x00, 0x40, 0xA2, 0xAA, 0xAB, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x40, 0x70, 0x00, 0x00, 0x40, 0xA5, 0x55, 0x55, 0x40, 0xB8, 0x00, 0x00,
	0x40, 0xCA, 0xAA, 0xAB, 0x40, 0x70, 0x00, 0x00, 0x40, 0xA5, 0x55, 0x55,
	0x40, 0xB8, 0x00, 0x00, 0x40, 0xCA, 0xAA, 0xAB, 0x40, 0x70, 0x00, 0x00,
	0x40, 0xA5, 0x55, 0x55, 0x40, 0xB8, 0x00, 0x00, 0x40, 0xCA, 0xAA, 0xAB,
	0x40, 0x70, 0x00, 0x00, 0x40, 0xA5, 0x55, 0x55, 0x40, 0xB8, 0x00, 0x00,
	0x40, 0xCA, 0xAA, 0xAB, 0x40, 0x3A, 0xAA, 0xAB, 0x40, 0x70, 0x00, 0x00,
	0x40, 0x70, 0x00, 0x00, 0x40, 0x70, 0x00, 0x00, 0x40, 0x70, 0x00, 0x00,
	0x40, 0xA5, 0x55, 0x55, 0x40, 0xB8, 0x00, 0x00, 0x40, 0xCA, 0xAA, 0xAB,
	0x40, 0x70, 0x00, 0x00, 0x40, 0xA5, 0x55, 0x55, 0x40, 0xB8, 0x00, 0x00,
	0x40, 0xCA, 0xAA, 0xAB, 0x40, 0x70, 0x00, 0x00, 0x40, 0xA5, 0x55, 0x55,
	0x40, 0xB8, 0x00, 0x00, 0x40, 0xCA, 0xAA, 0xAB, 0x40, 0x70, 0x00, 0x00,
	0x40, 0xA5, 0x55, 0x55, 0x40, 0xB8, 0x00, 0x00, 0x40, 0xCA, 0xAA, 0xAB,
	0x40, 0x70, 0x00, 0x00, 0x40, 0xA5, 0x55, 0x55, 0x40, 0xB8, 0x00, 0x00,
	0x40, 0xCA, 0xAA, 0xAB, 0x40, 0x70, 0x00, 0x00, 0x40, 0xA5, 0x55, 0x55,
	0x40, 0xB8, 0x00, 0x00, 0x40, 0xCA, 0xAA, 0xAB, 0x40, 0x70, 0x00, 0x00,
	0x40, 0xA5, 0x55, 0x55, 0x40, 0xB8, 0x00, 0x00, 0x40, 0xCA, 0xAA, 0xAB,
	0x40, 0x70, 0x00, 0x00, 0x40, 0xA5, 0x55, 0x55, 0x40, 0xB8, 0x00, 0x00,
	0x40, 0xCA, 0xAA, 0xAB, 0x40, 0x70, 0x00, 0x00, 0x40, 0xA5, 0x55, 0x55,
	0x40, 0xB8, 0x00, 0x00, 0x40, 0xCA, 0xAA, 0xAB, 0x40, 0x70, 0x00, 0x00,
	0x40, 0xA5, 0x55, 0x55, 0x40, 0xB8, 0x00, 0x00, 0x40, 0xCA, 0xAA, 0xAB,
	0x40, 0x70, 0x00, 0x00, 0x40, 0xA5, 0x55, 0x55, 0x40, 0xB8, 0x00, 0x00,
	0x40, 0xCA, 0xAA, 0xAB, 0x40, 0x70, 0x00, 0x00, 0x40, 0xA5, 0x55, 0x55,
	0x40, 0xB8, 0x00, 0x00, 0x40, 0xCA, 0xAA, 0xAB, 0x40, 0x70, 0x00, 0x00,
	0x40, 0xA5, 0x55, 0x55, 0x40, 0xB8, 0x00, 0x00, 0x40, 0xCA, 0xAA, 0xAB,
	0x40, 0x70, 0x00, 0x00, 0x40, 0xA5, 0x55, 0x55, 0x40, 0xB8, 0x00, 0x00,
	0x40, 0xCA, 0xAA, 0xAB, 0x40, 0x70, 0x00, 0x00, 0x40, 0xA5, 0x55, 0x55,
	0x40, 0xB8, 0x00, 0x00, 0x40, 0xCA, 0xAA, 0xAB, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};
*/

// unknown float data
f32 D_0D009418[] = {
    4.1666665f, 5.5833334f, 6.1666665f, 6.75f,
    4.1666665f, 5.5833334f, 6.1666665f, 6.75f,
    4.1666665f, 5.5833334f, 6.1666665f, 6.75f,
    4.1666665f, 5.5833334f, 6.1666665f, 6.75f,
    4.1666665f, 5.5833334f, 6.1666665f, 6.75f,
    4.1666665f, 5.5833334f, 6.1666665f, 6.75f,
    4.1666665f, 5.5833334f, 6.1666665f, 6.75f,
    4.1666665f, 5.5833334f, 6.1666665f, 6.75f,
    4.1666665f, 5.5833334f, 6.1666665f, 6.75f,
    4.1666665f, 5.5833334f, 6.1666665f, 6.75f,
    4.1666665f, 5.5833334f, 6.1666665f, 6.75f,
    4.1666665f, 5.5833334f, 6.1666665f, 6.75f,
    4.1666665f, 5.5833334f, 6.1666665f, 6.75f,
    4.1666665f, 5.5833334f, 6.1666665f, 6.75f,
    4.1666665f, 5.5833334f, 6.1666665f, 6.75f,
    4.1666665f, 5.5833334f, 6.1666665f, 6.75f,
    4.1666665f, 5.5833334f, 6.1666665f, 6.75f,
    4.1666665f, 5.5833334f, 6.1666665f, 6.75f,
    4.1666665f, 5.5833334f, 6.1666665f, 6.75f,
    4.1666665f, 5.5833334f, 6.1666665f, 6.75f,
    0.0f, 0.0f, 0.0f, 0.0f,
};

f32 D_0D009568[] = {
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 4.5833334f, 4.5833334f, 4.5833334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    4.1666665f, 5.5833334f, 6.1666665, 6.75f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    0.0f, 0.0f, 0.0f, 0.0f,
};

f32 D_0D0096B8[] = {
    3.3333332f, 3.9166667f, 4.5f, 5.0833334f,
    3.3333332f, 3.9166667f, 4.5f, 5.0833334f,
    3.3333332f, 3.9166667f, 4.5f, 5.0833334f,
    3.3333332f, 3.9166667f, 4.5f, 5.0833334f,
    3.3333332f, 3.3333332f, 3.3333332f, 3.3333332f,
    3.3333332f, 3.9166667f, 4.5f, 5.0833334f,
    3.3333332f, 3.9166667f, 4.5f, 5.0833334f,
    3.3333332f, 3.9166667f, 4.5f, 5.0833334f,
    3.3333332f, 3.9166667f, 4.5f, 5.0833334f,
    3.3333332f, 3.9166667f, 4.5f, 5.0833334f,
    3.3333332f, 3.9166667f, 4.5f, 5.0833334f,
    3.3333332f, 3.9166667f, 4.5f, 5.0833334f,
    3.3333332f, 3.9166667f, 4.5f, 5.0833334f,
    3.3333332f, 3.9166667f, 4.5f, 5.0833334f,
    3.3333332f, 3.9166667f, 4.5f, 5.0833334f,
    3.3333332f, 3.9166667f, 4.5f, 5.0833334f,
    3.3333332f, 3.9166667f, 4.5f, 5.0833334f,
    3.3333332f, 3.9166667f, 4.5f, 5.0833334f,
    3.3333332f, 3.9166667f, 4.5f, 5.0833334f,
    3.3333332f, 3.9166667f, 4.5f, 5.0833334f,
    0.0f, 0.0f, 0.0f, 0.0f,
};

f32 D_0D009808[] = {
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    2.9166667f, 3.75f, 3.75f, 3.75f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    3.75f, 5.1666665f, 5.75f, 6.3333334f,
    0.0f, 0.0f, 0.0f
};

s32 unkPad = 0;

// Odometer speedometer
s8 D_0D009958[] = {
    #include "textures/132B50_09958.i4.inc.c"
};

// i8? odometer needle
s8 D_0D00A558[] = {
    #include "textures/132B50_0A558.i4.inc.c"
};

// Lap UI Texture
s8 D_D00A958[] = {
    #include "textures/132B50_0A958.rgba16.inc.c"
};

// 123/
s8 D_0D00AB58[] = {
    #include "textures/132B50_0AB58.rgba16.inc.c"
};

// Lap
s8 D_0D00AD58[] = {
    #include "textures/132B50_0AD58.rgba16.inc.c"
};

// 1/3
s8 D_0D00B158[] = {
    #include "textures/132B50_0B158.rgba16.inc.c"
};

// 2/3
s8 D_0D00B558[] = {
    #include "textures/132B50_0B558.rgba16.inc.c"
};

// 3/3
s8 D_0D00B958[] = {
    #include "textures/132B50_0B958.rgba16.inc.c"
};

// total
s8 D_0D00BD58[] = {
    #include "textures/132B50_0BD58.rgba16.inc.c"
};

// time
s8 D_0D00C158[] = {
    #include "textures/132B50_0C158.rgba16.inc.c"
};

// 0123456789'"!
s8 D_0D00C558[] = {
    #include "textures/132B50_0C558.rgba16.inc.c"
};

// first place
s8 D_0D00D258[] = {
    #include "textures/132B50_0D258.i4.inc.c"
};

// second place
s8 D_0D00E258[] = {
    #include "textures/132B50_0E258.i4.inc.c"
};

// third place
s8 D_0D00F258[] = {
    #include "textures/132B50_0F258.i4.inc.c"
};

// fourth place
s8 D_0D010258[] = {
    #include "textures/132B50_10258.i4.inc.c"
};

// fifth place
s8 D_0D011258[] = {
    #include "textures/132B50_11258.i4.inc.c"
};

// sixth place
s8 D_0D012258[] = {
    #include "textures/132B50_12258.i4.inc.c"
};

// seventh place
s8 D_0D013258[] = {
    #include "textures/132B50_13258.i4.inc.c"
};

// eighth place
s8 D_0D014258[] = {
    #include "textures/132B50_14258.i4.inc.c"
};

// First
s8 D_0D015258[] = {
    #include "textures/132B50_15258.i4.inc.c"
};

// Second
s8 D_0D015A58[] = {
    #include "textures/132B50_15A58.i4.inc.c"
};

// Third
s8 D_0D016258[] = {
    #include "textures/132B50_16258.i4.inc.c"
};

// Fourth
s8 D_0D016A58[] = {
    #include "textures/132B50_16A58.i4.inc.c"
};

// 17258 tlut
s8 D_0D017258[] = {
    #include "textures/132B50_17258_tlut.rgba16.inc.c"
};

s16 tlutPad[] = {0x7FE, 0x7FE, 0x7FE, 0x7FE, 0x7FE, 0x7FE, 0x7FE, 0x7FE, 0x7FE, 0x7FE, 0x7FE, 0x7FE, 0x7FE, 0x7FE, 0x7FE, 0x7FE, 0x7FE, 0x7FE, 0x7FE, 0x7FE, 0x7FE, 0x7FE, 0x7FE, 0x7FE, 0x7FE, 0x7FE, 0x7FE, 0x7FE, };

// 1p 2p 3p 4p (includes 4 textures)
// Required to match tlut
s8 D_0D017458[] = {
    #include "textures/132B50_17458_combined_data.inc.c"
};

//s8 D_0D017C58[] = {
//    #include "textures/132B50_17C58.rgba16.ci8.inc.c"
//};

//s8 D_0D018458[] = {
//    #include "textures/132B50_18458.rgba16.ci8.inc.c"
//};

//s8 D_0D018C58[] = {
//    #include "textures/132B50_18C58.rgba16.ci8.inc.c"
//};

// 19458 tlut
//s8 D_0D019458[] = {
//    #include "textures/132B50_19458_tlut.rgba16.inc.c"
//};

// 1 
// s8 D_0D019658[] = {
//     #include "textures/132B50_19658.rgba16.ci8.inc.c"
// };

// // 2
// s8 D_0D019758[] = {
//     #include "textures/132B50_19758.rgba16.ci8.inc.c"
// };

// // 3
// s8 D_0D019858[] = {
//     #include "textures/132B50_19858.rgba16.ci8.inc.c"
// };

// // 4
// s8 D_0D019958[] = {
//     #include "textures/132B50_19958.rgba16.ci8.inc.c"
// };

// // 5
// s8 D_0D019A58[] = {
//     #include "textures/132B50_19A58.rgba16.ci8.inc.c"
// };

// // 6
// s8 D_0D019B58[] = {
//     #include "textures/132B50_19B58.rgba16.ci8.inc.c"
// };

// // 7
// s8 D_0D019C58[] = {
//     #include "textures/132B50_19C58.rgba16.ci8.inc.c"
// };

// // 8
// s8 D_0D019D58[] = {
//     #include "textures/132B50_19D58.rgba16.ci8.inc.c"
// };

// // 0
// s8 D_0D01A058[] = {
//     #include "textures/132B50_1A058.rgba16.ci8.inc.c"
// };

// // 1
// s8 D_0D01A098[] = {
//     #include "textures/132B50_1A098.rgba16.ci8.inc.c"
// };

// // 2
// s8 D_0D01A0D8[] = {
//     #include "textures/132B50_1A0D8.rgba16.ci8.inc.c"
// };

// // 3
// s8 D_0D01A118[] = {
//     #include "textures/132B50_1A118.rgba16.ci8.inc.c"
// };

// // 4
// s8 D_0D01A158[] = {
//     #include "textures/132B50_1A158.rgba16.ci8.inc.c"
// };

// // 5
// s8 D_0D01A198[] = {
//     #include "textures/132B50_1A198.rgba16.ci8.inc.c"
// };

// // 6
// s8 D_0D01A1D8[] = {
//     #include "textures/132B50_1A1D8.rgba16.ci8.inc.c"
// };

// // 7
// s8 D_0D01A218[] = {
//     #include "textures/132B50_1A218.rgba16.ci8.inc.c"
// };

// // 8
// s8 D_0D01A258[] = {
//     #include "textures/132B50_1A258.rgba16.ci8.inc.c"
// };

// // 9
// s8 D_0D01A298[] = {
//     #include "textures/132B50_1A298.rgba16.ci8.inc.c"
// };

// some padding or file split?

// Square
s8 D_0D01A2D8[] = {
    #include "textures/132B50_1A2D8.ia4.inc.c"
};


// 1A4D8 mario tlut
s8 D_0D01A4D8[] = {
    #include "textures/132B50_1A4D8_tlut.rgba16.inc.c"
};

// 1A6D8 luigi tlut
s8 D_0D01A6D8[] = {
    #include "textures/132B50_1A6D8_tlut.rgba16.inc.c"
};

// 1A8D8 peach tlut
s8 D_0D01A8D8[] = {
    #include "textures/132B50_1A8D8_tlut.rgba16.inc.c"
};

// 1AAD8 toad tlut
s8 D_0D01AAD8[] = {
    #include "textures/132B50_1AAD8_tlut.rgba16.inc.c"
};

// 1ACD8 yoshi tlut
s8 D_0D01ACD8[] = {
    #include "textures/132B50_1ACD8_tlut.rgba16.inc.c"
};

// 1AED8 dk tlut
s8 D_0D01AED8[] = {
    #include "textures/132B50_1AED8_tlut.rgba16.inc.c"
};

// 1B0D8 wario tlut
s8 D_0D01B0D8[] = {
    #include "textures/132B50_1B0D8_tlut.rgba16.inc.c"
};

// 1B2D8 bowser tlut
s8 D_0D01B2D8[] = {
    #include "textures/132B50_1B2D8_tlut.rgba16.inc.c"
};

// 1B4D8 bob-omb tlut and question mark?
s8 D_0D01B4D8[] = {
    #include "textures/132B50_1B4D8_tlut.rgba16.inc.c"
};


// Mario
s8 D_0D01B6D8[] = {
    #include "textures/132B50_1B6D8.rgba16.ci8.inc.c"
};

// Luigi
s8 D_0D01BAD8[] = {
    #include "textures/132B50_1BAD8.rgba16.ci8.inc.c"
};

// Peach
s8 D_0D01BED8[] = {
    #include "textures/132B50_1BED8.rgba16.ci8.inc.c"
};

// Toad
s8 D_0D01C2D8[] = {
    #include "textures/132B50_1C2D8.rgba16.ci8.inc.c"
};

// Yoshi
s8 D_0D01C6D8[] = {
    #include "textures/132B50_1C6D8.rgba16.ci8.inc.c"
};

// Donkey Kong
s8 D_0D01CAD8[] = {
    #include "textures/132B50_1CAD8.rgba16.ci8.inc.c"
};

// Wario
s8 D_0D01CED8[] = {
    #include "textures/132B50_1CED8.rgba16.ci8.inc.c"
};

// Bowser
s8 D_0D01D2D8[] = {
    #include "textures/132B50_1D2D8.rgba16.ci8.inc.c"
};

// Bob-omb
s8 D_0D01D6D8[] = {
    #include "textures/132B50_1D6D8.rgba16.ci8.inc.c"
};

// Question Mark
s8 D_0D01DAD8[] = {
    #include "textures/132B50_1DAD8.rgba16.ci8.inc.c"
};

// 1DED8 tlut item frames
s8 D_0D01DED8[] = {
    #include "textures/132B50_1DED8_tlut.rgba16.inc.c"
};

s8 D_0D01E0D8[] = {
    #include "textures/132B50_1E0D8_tlut.rgba16.inc.c"
};

s8 D_0D01E2D8[] = {
    #include "textures/132B50_1E2D8_tlut.rgba16.inc.c"
};

s8 D_0D01E4D8[] = {
    #include "textures/132B50_1E4D8_tlut.rgba16.inc.c"
};

s8 D_0D01E6D8[] = {
    #include "textures/132B50_1E6D8_tlut.rgba16.inc.c"
};

s8 D_0D01E8D8[] = {
    #include "textures/132B50_1E8D8_tlut.rgba16.inc.c"
};

s8 D_0D01EAD8[] = {
    #include "textures/132B50_1EAD8_tlut.rgba16.inc.c"
};

s8 D_0D01ECD8[] = {
    #include "textures/132B50_1ECD8_tlut.rgba16.inc.c"
};

s8 D_0D01EED8[] = {
    #include "textures/132B50_1EED8_tlut.rgba16.inc.c"
};

s8 D_0D01F0D8[] = {
    #include "textures/132B50_1F0D8_tlut.rgba16.inc.c"
};

s8 D_0D01F2D8[] = {
    #include "textures/132B50_1F2D8_tlut.rgba16.inc.c"
};

s8 D_0D01F4D8[] = {
    #include "textures/132B50_1F4D8_tlut.rgba16.inc.c"
};

s8 D_0D01F6D8[] = {
    #include "textures/132B50_1F6D8_tlut.rgba16.inc.c"
};

s8 D_0D01F8D8[] = {
    #include "textures/132B50_1F8D8_tlut.rgba16.inc.c"
};

s8 D_0D01FAD8[] = {
    #include "textures/132B50_1FAD8_tlut.rgba16.inc.c"
};

s8 D_0D01FCD8[] = {
    #include "textures/132B50_1FCD8_tlut.rgba16.inc.c"
};

// UI Item Frames
s8 D_0D01FED8[] = {
    #include "textures/132B50_1FED8.rgba16.ci8.inc.c"
};

s8 D_0D0203D8[] = {
    #include "textures/132B50_203D8.rgba16.ci8.inc.c"
};

s8 D_0D0208D8[] = {
    #include "textures/132B50_208D8.rgba16.ci8.inc.c"
};

s8 D_0D020DD8[] = {
    #include "textures/132B50_20DD8.rgba16.ci8.inc.c"
};

s8 D_0D0212D8[] = {
    #include "textures/132B50_212D8.rgba16.ci8.inc.c"
};

s8 D_0D0217D8[] = {
    #include "textures/132B50_217D8.rgba16.ci8.inc.c"
};

s8 D_0D021CD8[] = {
    #include "textures/132B50_21CD8.rgba16.ci8.inc.c"
};

s8 D_0D0221D8[] = {
    #include "textures/132B50_221D8.rgba16.ci8.inc.c"
};

s8 D_0D0226D8[] = {
    #include "textures/132B50_226D8.rgba16.ci8.inc.c"
};

s8 D_0D022BD8[] = {
    #include "textures/132B50_22BD8.rgba16.ci8.inc.c"
};

s8 D_0D0230D8[] = {
    #include "textures/132B50_230D8.rgba16.ci8.inc.c"
};

s8 D_0D0235D8[] = {
    #include "textures/132B50_235D8.rgba16.ci8.inc.c"
};

s8 D_0D023AD8[] = {
    #include "textures/132B50_23AD8.rgba16.ci8.inc.c"
};

s8 D_0D023FD8[] = {
    #include "textures/132B50_23FD8.rgba16.ci8.inc.c"
};

s8 D_0D0244D8[] = {
    #include "textures/132B50_244D8.rgba16.ci8.inc.c"
};

s8 D_0D0249D8[] = {
    #include "textures/132B50_249D8.rgba16.ci8.inc.c"
};

// Unk data. Perhaps not an img nor tlut.
s8 D_0D024ED8[] = {
    #include "textures/132B50_24ED8_tlut.rgba16.inc.c"
};

// traffic light tlut
s8 D_0D025ED8[] = {
    #include "textures/132B50_25ED8_tlut.rgba16.inc.c"
};


// unused traffic light textures

UNUSED s8 D_0D0260D8[] = {
    #include "textures/132B50_260D8.rgba16.ci8.inc.c"
};

UNUSED s8 D_0D026558[] = {
    #include "textures/132B50_26558.rgba16.ci8.inc.c"
};

UNUSED s8 D_0D0269D8[] = {
    #include "textures/132B50_269D8.rgba16.ci8.inc.c"
};

UNUSED s8 D_0D026E58[] = {
    #include "textures/132B50_26E58.rgba16.ci8.inc.c"
};

UNUSED s8 D_0D0272D8[] = {
    #include "textures/132B50_272D8.rgba16.ci8.inc.c"
};

UNUSED s8 D_0D027758[] = {
    #include "textures/132B50_27758.rgba16.ci8.inc.c"
};

UNUSED s8 D_0D027BD8[] = {
    #include "textures/132B50_27BD8.rgba16.ci8.inc.c"
};

UNUSED s8 D_0D028058[] = {
    #include "textures/132B50_28058.rgba16.ci8.inc.c"
};

UNUSED s8 D_0D0284D8[] = {
    #include "textures/132B50_284D8.rgba16.ci8.inc.c"
};

UNUSED s8 D_0D028958[] = {
    #include "textures/132B50_28958.rgba16.ci8.inc.c"
};

// leaf
s8 D_0D028DD8[] = {
    #include "textures/132B50_28DD8.rgba16.inc.c"
};

// leaf
s8 D_0D0291D8[] = {
    #include "textures/132B50_291D8.rgba16.inc.c"
};


// Some sort of smoke or effect
// NON_MATCHING
// @bug probably requires being extracted as i4 for mobility
// Needs rgba16 to match
s8 D_0D0293D8[] = {
    #include "textures/132B50_293D8.i4.inc.c"
};

// Some sort of smoke or effect
// NON_MATCHING
// @bug probably requires being extracted as i8 for mobility
// Needs rgba16 to match
// bin for now cause refuses to match
s8 D_0D029458[] = {
    #include "textures/132B50_29458.i8.inc.c"
};

// 2A858 tlut
s8 D_0D029858[] = {
    #include "textures/132B50_29858.rgba16.ci8.inc.c"
};

s8 D_0D029C58[] = {
    #include "textures/132B50_29C58.rgba16.ci8.inc.c"
};

s8 D_0D02A058[] = {
    #include "textures/132B50_2A058.rgba16.ci8.inc.c"
};

s8 D_0D02A458[] = {
    #include "textures/132B50_2A458.rgba16.ci8.inc.c"
};

// tlut
s8 D_0D02A858[] = {
    #include "textures/132B50_2A858_tlut.rgba16.inc.c"
};


s8 D_0D02AA58[] = {
    #include "textures/132B50_2AA58.rgba16.inc.c"
};

s8 D_0D02AC58[] = {
    #include "textures/132B50_2AC58.i8.inc.c"
};

s8 D_0D02B058[] = {
    #include "textures/132B50_2B058.i8.inc.c"
};

s8 D_0D02B458[] = {
    #include "textures/132B50_2B458.i8.inc.c"
};

s8 D_0D02B858[] = {
    #include "textures/132B50_2B858.i8.inc.c"
};

s8 D_0D02BC58[] = {
    #include "textures/132B50_2BC58.i8.inc.c"
};

s8 D_0D02C058[] = {
    #include "textures/132B50_2C058.i8.inc.c"
};

s8 D_0D02C458[] = {
    #include "textures/132B50_2C458.i8.inc.c"
};

s8 D_0D02C858[] = {
    #include "textures/132B50_2C858.i8.inc.c"
};

// minimap cars
s8 D_0D02CC58[] = {
    #include "textures/132B50_2CC58.rgba16.inc.c"
};

s8 D_0D02CCD8[] = {
    #include "textures/132B50_2CCD8.rgba16.inc.c"
};

s8 D_0D02CD58[] = {
    #include "textures/132B50_2CD58.rgba16.inc.c"
};

s8 D_0D02CDD8[] = {
    #include "textures/132B50_2CDD8.rgba16.inc.c"
};

s8 D_0D02CE58[] = {
    #include "textures/132B50_2CE58.rgba16.inc.c"
};

s8 D_0D02CED8[] = {
    #include "textures/132B50_2CED8.rgba16.inc.c"
};

s8 D_0D02CF58[] = {
    #include "textures/132B50_2CF58.rgba16.inc.c"
};

s8 D_0D02CFD8[] = {
    #include "textures/132B50_2CFD8.rgba16.inc.c"
};

// last minimap car
s8 D_0D02D058[] = {
    #include "textures/132B50_2D058.rgba16.inc.c"
};

// progress dot
s8 D_0D02D0D8[] = {
    #include "textures/132B50_2D0D8.rgba16.inc.c"
};

