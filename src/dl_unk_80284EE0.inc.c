#include <types.h>
#include <PR/gbi.h>

extern Gfx D_070067E8[];
extern Gfx D_0700AEF8[];
extern Gfx D_0700A970[];
extern Gfx D_0700AC30[];
extern Gfx D_07000CE0[];
extern Gfx D_07000E88[];
extern Gfx D_0700A618[];
extern Gfx D_070023F8[];
extern Gfx D_07002478[];
extern Gfx D_07001438[];
extern Gfx D_07003728[];
extern Gfx D_070036B8[];
extern Gfx D_07003628[];
extern Gfx D_07003540[];
extern Gfx D_07003DC0[];
extern Gfx D_07003E50[];
extern Gfx D_07003F18[];
extern Gfx D_070050B0[];
extern Gfx D_07005138[];
extern Gfx D_070055D0[];
extern Gfx D_07005B50[];
extern Gfx D_07005C00[];
extern Gfx D_07005D18[];
extern Gfx D_07005DC8[];
extern Gfx D_07005EF8[];
extern Gfx D_07005740[];
extern Gfx D_070057F0[];
extern Gfx D_070058E8[];
extern Gfx D_07001788[];
extern Gfx D_07001AA0[];
extern Gfx D_07001A30[];
extern Gfx D_07003790[];
extern Gfx D_070006D0[];
extern Gfx D_070004D0[];
extern Gfx D_07000840[];

// Unknown displaylists
Gfx D_80284EE0[] = {
    gsDPSetCycleType(G_CYC_1CYCLE),
    gsDPPipelineMode(G_PM_1PRIMITIVE),
    gsDPSetTextureLOD(G_TL_TILE),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetTextureDetail(G_TD_CLAMP),
    gsDPSetTexturePersp(G_TP_PERSP),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetTextureConvert(G_TC_FILT),
    gsDPSetCombineKey(G_CK_NONE),
    gsDPSetAlphaCompare(G_AC_NONE),
    gsDPSetColorDither(G_CD_DISABLE),
    gsDPSetColorDither(G_CD_MAGICSQ),
    gsDPSetRenderMode(G_RM_OPA_SURF, G_RM_OPA_SURF2),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsSPClearGeometryMode(G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR | G_LOD),
    gsSPSetGeometryMode(G_SHADE | G_SHADING_SMOOTH),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsSPEndDisplayList(),
};

Gfx D_80284F70[] = {
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPDisplayList(D_070067E8),
    gsSPDisplayList(D_0700AEF8),
    gsSPDisplayList(D_07001438),
    gsSPDisplayList(D_0700A970),
    gsSPDisplayList(D_07000CE0),
    gsSPDisplayList(D_07000E88),
    gsSPDisplayList(D_0700A618),
    gsSPDisplayList(D_0700AC30),
    gsSPDisplayList(D_07003728),
    gsSPDisplayList(D_070036B8),
    gsSPDisplayList(D_07003628),
    gsSPDisplayList(D_07003540),
    gsSPDisplayList(D_07003DC0),
    gsSPDisplayList(D_07003E50),
    gsSPDisplayList(D_07003F18),
    gsSPDisplayList(D_070050B0),
    gsSPDisplayList(D_07005138),
    gsSPDisplayList(D_070055D0),
    gsSPDisplayList(D_07005B50),
    gsSPDisplayList(D_07005C00),
    gsSPDisplayList(D_07005D18),
    gsSPDisplayList(D_07005DC8),
    gsSPDisplayList(D_07005EF8),
    gsSPDisplayList(D_07005740),
    gsSPDisplayList(D_070057F0),
    gsSPDisplayList(D_070058E8),
    gsSPDisplayList(D_07001788),
    gsSPDisplayList(D_07001AA0),
    gsSPDisplayList(D_07001A30),
    gsSPDisplayList(D_070023F8),
    gsSPDisplayList(D_07002478),
    gsSPDisplayList(D_07003790),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA),
    gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(D_070006D0),
    gsSPDisplayList(D_070004D0),
    gsSPDisplayList(D_07000840),
    gsSPEndDisplayList(),
};
