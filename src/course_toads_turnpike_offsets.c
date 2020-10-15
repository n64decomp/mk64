#include <PR/ultratypes.h>
#include <PR/mbi.h>
#include "course_offsets.h"

extern u8 gTexture645134[];
extern u8 gTexture64FE68[];
extern u8 gTexture6607C0[];
extern u8 gTexture6608C8[];
extern u8 gTextureGrass11[];
extern u8 gTextureSignNintendoRed0[];
extern u8 gTextureSignNintendoRed1[];
extern u8 gTexture671A88[];
extern u8 gTextureRoad2[];
extern u8 gTextureRoad3[];
extern u8 gTextureRoad4[];
extern u8 gTextureRoadFinish0[];
extern u8 gTextureSignToadYellow[];
extern u8 gTextureSignToadGreen[];
extern u8 gTextureSignMergingLanes[];
extern u8 gTexture65127C[];
extern u8 gTextureRoad5[];
extern u8 gTextureSignToadRed[];
extern u8 gTexture668228[];
extern Gfx D_toads_turnpike_0D005398[];
extern Gfx D_toads_turnpike_06019518[];
extern Gfx D_toads_turnpike_0D0053B0[];
extern Gfx D_toads_turnpike_06019020[];
extern Gfx D_toads_turnpike_0601A068[];
extern Gfx D_toads_turnpike_06019DF0[];
extern Gfx D_toads_turnpike_0D0053C8[];
extern Gfx D_toads_turnpike_0601A6C8[];
extern Gfx D_toads_turnpike_0D0053F0[];
extern Gfx D_toads_turnpike_0601A5F8[];
extern Gfx D_toads_turnpike_0D005418[];
extern Gfx D_toads_turnpike_0601BE48[];
extern Gfx D_toads_turnpike_0601B778[];
extern Gfx D_toads_turnpike_0601CAA8[];
extern Gfx D_toads_turnpike_0601C700[];
extern Gfx D_toads_turnpike_0601D018[];
extern Gfx D_toads_turnpike_0601CE70[];
extern Gfx D_toads_turnpike_0601EB48[];
extern Gfx D_toads_turnpike_0601E458[];
extern Gfx D_toads_turnpike_06020008[];
extern Gfx D_toads_turnpike_0601F9D0[];
extern Gfx D_toads_turnpike_060205A8[];
extern Gfx D_toads_turnpike_06020510[];
extern Gfx D_toads_turnpike_06021E28[];
extern Gfx D_toads_turnpike_06021780[];
extern Gfx D_toads_turnpike_06023078[];
extern Gfx D_toads_turnpike_06022BA0[];
extern Gfx D_toads_turnpike_06023848[];
extern Gfx D_toads_turnpike_060237F8[];

const course_texture toads_turnpike_textures[] = {
    {gTexture645134, 0x052C, 0x0800, 0x0},
    {gTexture64FE68, 0x0258, 0x1000, 0x0},
    {gTexture6607C0, 0x0105, 0x0800, 0x0},
    {gTexture6608C8, 0x0106, 0x0800, 0x0},
    {gTextureGrass11, 0x01F8, 0x0800, 0x0},
    {gTextureSignNintendoRed0, 0x02A6, 0x1000, 0x0},
    {gTextureSignNintendoRed1, 0x02F7, 0x1000, 0x0},
    {gTexture671A88, 0x012D, 0x0800, 0x0},
    {gTextureRoad2 , 0x02AE, 0x1000, 0x0},
    {gTextureRoad3 , 0x0286, 0x1000, 0x0},
    {gTextureRoad4 , 0x0282, 0x1000, 0x0},
    {gTextureRoadFinish0, 0x0338, 0x1000, 0x0},
    {gTextureSignToadYellow, 0x0723, 0x1000, 0x0},
    {gTextureSignToadGreen, 0x071F, 0x1000, 0x0},
    {gTextureSignMergingLanes, 0x0118, 0x0800, 0x0},
    {gTexture65127C, 0x01AB, 0x0800, 0x0},
    {gTextureRoad5 , 0x02B9, 0x1000, 0x0},
    {gTextureSignToadRed, 0x0610, 0x1000, 0x0},
    {gTexture668228, 0x0130, 0x0800, 0x0},
    {0x00000000    , 0x0000, 0x0000, 0x0},
};

const Gfx toads_turnpike_dl_0[] = {
    gsSPDisplayList(D_toads_turnpike_0D005398),
    gsSPDisplayList(D_toads_turnpike_06019518),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(D_toads_turnpike_0D0053B0),
    gsSPDisplayList(D_toads_turnpike_06019020),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

const Gfx toads_turnpike_dl_1[] = {
    gsSPDisplayList(D_toads_turnpike_0D005398),
    gsSPDisplayList(D_toads_turnpike_0601A068),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(D_toads_turnpike_0D0053B0),
    gsSPDisplayList(D_toads_turnpike_06019DF0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

const Gfx toads_turnpike_dl_2[] = {
    gsSPDisplayList(D_toads_turnpike_0D0053C8),
    gsSPDisplayList(D_toads_turnpike_0601A6C8),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(D_toads_turnpike_0D0053F0),
    gsSPDisplayList(D_toads_turnpike_0601A5F8),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPDisplayList(D_toads_turnpike_0D005418),
    gsSPEndDisplayList(),
};

const Gfx toads_turnpike_dl_3[] = {
    gsSPDisplayList(D_toads_turnpike_0D005398),
    gsSPDisplayList(D_toads_turnpike_0601BE48),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(D_toads_turnpike_0D0053B0),
    gsSPDisplayList(D_toads_turnpike_0601B778),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

const Gfx toads_turnpike_dl_4[] = {
    gsSPDisplayList(D_toads_turnpike_0D005398),
    gsSPDisplayList(D_toads_turnpike_0601CAA8),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(D_toads_turnpike_0D0053B0),
    gsSPDisplayList(D_toads_turnpike_0601C700),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

const Gfx toads_turnpike_dl_5[] = {
    gsSPDisplayList(D_toads_turnpike_0D0053C8),
    gsSPDisplayList(D_toads_turnpike_0601D018),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(D_toads_turnpike_0D0053F0),
    gsSPDisplayList(D_toads_turnpike_0601CE70),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPDisplayList(D_toads_turnpike_0D005418),
    gsSPEndDisplayList(),
};

const Gfx toads_turnpike_dl_6[] = {
    gsSPDisplayList(D_toads_turnpike_0D005398),
    gsSPDisplayList(D_toads_turnpike_0601EB48),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(D_toads_turnpike_0D0053B0),
    gsSPDisplayList(D_toads_turnpike_0601E458),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

const Gfx toads_turnpike_dl_7[] = {
    gsSPDisplayList(D_toads_turnpike_0D005398),
    gsSPDisplayList(D_toads_turnpike_06020008),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(D_toads_turnpike_0D0053B0),
    gsSPDisplayList(D_toads_turnpike_0601F9D0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

const Gfx toads_turnpike_dl_8[] = {
    gsSPDisplayList(D_toads_turnpike_0D0053C8),
    gsSPDisplayList(D_toads_turnpike_060205A8),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(D_toads_turnpike_0D0053F0),
    gsSPDisplayList(D_toads_turnpike_06020510),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPDisplayList(D_toads_turnpike_0D005418),
    gsSPEndDisplayList(),
};

const Gfx toads_turnpike_dl_9[] = {
    gsSPDisplayList(D_toads_turnpike_0D005398),
    gsSPDisplayList(D_toads_turnpike_06021E28),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(D_toads_turnpike_0D0053B0),
    gsSPDisplayList(D_toads_turnpike_06021780),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

const Gfx toads_turnpike_dl_10[] = {
    gsSPDisplayList(D_toads_turnpike_0D005398),
    gsSPDisplayList(D_toads_turnpike_06023078),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(D_toads_turnpike_0D0053B0),
    gsSPDisplayList(D_toads_turnpike_06022BA0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

const Gfx toads_turnpike_dl_11[] = {
    gsSPDisplayList(D_toads_turnpike_0D0053C8),
    gsSPDisplayList(D_toads_turnpike_06023848),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(D_toads_turnpike_0D0053F0),
    gsSPDisplayList(D_toads_turnpike_060237F8),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPDisplayList(D_toads_turnpike_0D005418),
    gsSPEndDisplayList(),
};
