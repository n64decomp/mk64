#include <ultra64.h>
#include <macros.h>
#include <PR/gbi.h>
#include <main.h>
#include <types.h>
#include <common_structs.h>
#include <variables.h>
#include <config.h>
#include "camera.h"

void select_framebuffer();

extern Gfx *gDisplayListHead;

extern struct UnkStruct_800DC5EC *D_800DC5EC;
extern struct UnkStruct_800DC5EC *D_800DC5F0;
extern struct UnkStruct_800DC5EC *D_800DC5F4;
extern struct UnkStruct_800DC5EC *D_800DC5F8;

extern u16 D_800DC5B0;

void init_rdp();
extern s32 gGamestateNext;
extern s16 gIsInQuitToMenuTransition;
extern u16 gQuitToMenuTransitionCounter;
extern s32 gMenuSelection;
extern s32 D_800E86A4;
extern s32 gMenuSelectionFromQuit;

extern s32 D_801502B4;
extern uintptr_t *gPhysicalFramebuffers[];
extern u16 sRenderingFramebuffer;


Vp D_802B8880[] = {
    {640, 480, 511, 0,
     640, 480, 511, 0},
};

Vtx D_802B8890[] = {
    {  SCREEN_WIDTH,  SCREEN_HEIGHT,   -1, 0,   0,    0, 0xC8, 0xC8, 0xFF, 0xFF},
    {  SCREEN_WIDTH,  120,   -1, 0,   0,    0, 0x1E, 0x1E, 0xFF, 0xFF},
    {    0,  120,   -1, 0,   0,    0, 0x1E, 0x1E, 0xFF, 0xFF},
    {    0,  SCREEN_HEIGHT,   -1, 0,   0,    0, 0xC8, 0xC8, 0xFF, 0xFF},
    {  SCREEN_WIDTH,  120,   -1, 0,   0,    0, 0x00, 0xDC, 0x00, 0xFF},
    {  SCREEN_WIDTH,    0,   -1, 0,   0,    0, 0x78, 0xFF, 0x78, 0xFF},
    {    0,    0,   -1, 0,   0,    0, 0x78, 0xFF, 0x78, 0xFF},
    {    0,  120,   -1, 0,   0,    0, 0x00, 0xDC, 0x00, 0xFF},
};

Vtx D_802B8910[] = {
    {  SCREEN_WIDTH,  SCREEN_HEIGHT,   -1,  0,  0,    0, 0xC8, 0xC8, 0xFF, 0xFF},
    {  SCREEN_WIDTH,  120,   -1,  0,  0,    0, 0x1E, 0x1E, 0xFF, 0xFF},
    {    0,  120,   -1,  0,  0,    0, 0x1E, 0x1E, 0xFF, 0xFF},
    {    0,  SCREEN_HEIGHT,   -1,  0,  0,    0, 0xC8, 0xC8, 0xFF, 0xFF},
    {  SCREEN_WIDTH,  120,   -1,  0,  0,    0, 0x00, 0xDC, 0x00, 0xFF},
    {  SCREEN_WIDTH,    0,   -1,  0,  0,    0, 0x78, 0xFF, 0x78, 0xFF},
    {    0,    0,   -1,  0,  0,    0, 0x78, 0xFF, 0x78, 0xFF},
    {    0,  120,   -1,  0,  0,    0, 0x00, 0xDC, 0x00, 0xFF},
};

Vtx D_802B8990[] = {
    {  SCREEN_WIDTH,  SCREEN_HEIGHT,   -1, 0,   0,    0, 0xC8, 0xC8, 0xFF, 0xFF},
    {  SCREEN_WIDTH,  120,   -1, 0,   0,    0, 0x1E, 0x1E, 0xFF, 0xFF},
    {    0,  120,   -1, 0,   0,    0, 0x1E, 0x1E, 0xFF, 0xFF},
    {    0,  SCREEN_HEIGHT,   -1, 0,   0,    0, 0xC8, 0xC8, 0xFF, 0xFF},
    {  SCREEN_WIDTH,  120,   -1, 0,   0,    0, 0x00, 0xDC, 0x00, 0xFF},
    {  SCREEN_WIDTH,    0,   -1, 0,   0,    0, 0x78, 0xFF, 0x78, 0xFF},
    {    0,    0,   -1, 0,   0,    0, 0x78, 0xFF, 0x78, 0xFF},
    {    0,  120,   -1, 0,   0,    0, 0x00, 0xDC, 0x00, 0xFF},
};

Vtx D_802B8A10[] = {
    {  SCREEN_WIDTH,  SCREEN_HEIGHT,   -1, 0,   0,    0, 0xC8, 0xC8, 0xFF, 0xFF},
    {  SCREEN_WIDTH,  120,   -1, 0,   0,    0, 0x1E, 0x1E, 0xFF, 0xFF},
    {    0,  120,   -1, 0,   0,    0, 0x1E, 0x1E, 0xFF, 0xFF},
    {    0,  SCREEN_HEIGHT,   -1, 0,   0,    0, 0xC8, 0xC8, 0xFF, 0xFF},
    {  SCREEN_WIDTH,  120,   -1, 0,   0,    0, 0x00, 0xDC, 0x00, 0xFF},
    {  SCREEN_WIDTH,    0,   -1, 0,   0,    0, 0x78, 0xFF, 0x78, 0xFF},
    {    0,    0,   -1, 0,   0,    0, 0x78, 0xFF, 0x78, 0xFF},
    {    0,  120,   -1, 0,   0,    0, 0x00, 0xDC, 0x00, 0xFF},
};

void func_802A3730(struct UnkStruct_800DC5EC *arg0) {
    s32 ulx;
    s32 uly;
    s32 lrx;
    s32 lry;
    s32 screenWidth = arg0->screenWidth * 2;
    s32 screenHeight = arg0->screenHeight * 2;
    s32 screenStartX = arg0->screenStartX * 4;
    s32 screenStartY = arg0->screenStartY * 4;

    arg0->viewport.vp.vscale[0] = screenWidth;
    arg0->viewport.vp.vscale[1] = screenHeight;
    arg0->viewport.vp.vscale[2] = 511;
    arg0->viewport.vp.vscale[3] = 0;

    arg0->viewport.vp.vtrans[0] = screenStartX;
    arg0->viewport.vp.vtrans[1] = screenStartY;
    arg0->viewport.vp.vtrans[2] = 511;
    arg0->viewport.vp.vtrans[3] = 0;

    gSPViewport(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&arg0->viewport));

    screenWidth /= 4;
    screenHeight /= 4;

    screenStartX /= 4;
    screenStartY /= 4;

    lrx = screenStartX + screenWidth;
    if (lrx > SCREEN_WIDTH) {
        lrx = SCREEN_WIDTH;
    }

    lry = screenStartY + screenHeight;
    if (lry > SCREEN_HEIGHT) {
        lry = SCREEN_HEIGHT;
    }
    ulx = 0;
    uly = 0;

    gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, ulx, uly, lrx, lry);
}

UNUSED void func_802A38AC(void) {

}

void func_802A38B4(void) {
    s32 temp_v0_3;
    void *temp_v0;
    void *temp_v0_2;

    init_rdp();
    select_framebuffer();

    gDPFullSync(gDisplayListHead++);
    gSPEndDisplayList(gDisplayListHead++);

    if (gQuitToMenuTransitionCounter != 0) {
        gQuitToMenuTransitionCounter--;
        return;
    }
    gGamestateNext = gMenuSelectionFromQuit;
    gGamestate = 255;
    gIsInQuitToMenuTransition = 0;
    gQuitToMenuTransitionCounter = 0;
    D_800E86A4 = 1;

    switch(gMenuSelectionFromQuit) {
        case START_MENU_FROM_QUIT:
            if (gMenuSelection != LOGO_INTRO_MENU) {
                gMenuSelection = START_MENU;
            }
            break;
        case MAIN_MENU_FROM_QUIT:
            gMenuSelection = MAIN_MENU;
            break;
        case PLAYER_SELECT_MENU_FROM_QUIT:
            gMenuSelection = PLAYER_SELECT_MENU;
            break;
        case COURSE_SELECT_MENU_FROM_QUIT:
            gMenuSelection = COURSE_SELECT_MENU;
            break;
    }
}

void func_802A39E0(struct UnkStruct_800DC5EC *arg0) {
    s32 ulx = arg0->screenStartX - (arg0->screenWidth / 2);
    s32 uly = arg0->screenStartY - (arg0->screenHeight / 2);
    s32 lrx = arg0->screenStartX + (arg0->screenWidth / 2);
    s32 lry = arg0->screenStartY + (arg0->screenHeight / 2);

    if (ulx < 0) {
        ulx = 0;
    }
    if (uly < 0) {
        uly = 0;
    }
    if (lrx > SCREEN_WIDTH) {
        lrx = SCREEN_WIDTH;
    }
    if (lry > SCREEN_HEIGHT) {
        lry = SCREEN_HEIGHT;
    }
    if (ulx >= lrx) {
        lrx = ulx + 2;
    }
    if (uly >= lry) {
        lry = uly + 2;
    }

    gDPPipeSync(gDisplayListHead++);
    gDPSetCycleType(gDisplayListHead++, G_CYC_FILL);
    gDPSetDepthImage(gDisplayListHead++, D_801502B4);
    gDPSetColorImage(gDisplayListHead++, G_IM_FMT_RGBA, G_IM_SIZ_16b, SCREEN_WIDTH, D_801502B4);
    gDPSetFillColor(gDisplayListHead++, 0xFFFCFFFC);
    gDPPipeSync(gDisplayListHead++);
    gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, ulx, uly, lrx, lry);

    gDPFillRectangle(gDisplayListHead++, ulx, uly, lrx - 1, lry -1);

    gDPPipeSync(gDisplayListHead++);
    gDPSetColorImage(gDisplayListHead++, G_IM_FMT_RGBA, G_IM_SIZ_16b, SCREEN_WIDTH, VIRTUAL_TO_PHYSICAL(gPhysicalFramebuffers[sRenderingFramebuffer])); // 0x1FFFFFFF
    gDPSetCycleType(gDisplayListHead++, G_CYC_1CYCLE);
    gDPSetDepthSource(gDisplayListHead++, G_ZS_PIXEL);
}

/**
 * Initialize the z-buffer for the current frame.
 */
void init_z_buffer(void) {
    gDPPipeSync(gDisplayListHead++);
    gDPSetCycleType(gDisplayListHead++, G_CYC_FILL);
    gDPSetDepthImage(gDisplayListHead++, D_801502B4);
    gDPSetColorImage(gDisplayListHead++, G_IM_FMT_RGBA, G_IM_SIZ_16b, SCREEN_WIDTH, D_801502B4);
    gDPSetFillColor(gDisplayListHead++, 0xFFFCFFFC);
    gDPPipeSync(gDisplayListHead++);
    gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    gDPFillRectangle(gDisplayListHead++, 0, 0, 319, 239);
    gDPPipeSync(gDisplayListHead++);
    gDPSetColorImage(gDisplayListHead++, G_IM_FMT_RGBA, G_IM_SIZ_16b, SCREEN_WIDTH, VIRTUAL_TO_PHYSICAL(gPhysicalFramebuffers[sRenderingFramebuffer]));
    gDPSetCycleType(gDisplayListHead++, G_CYC_1CYCLE);
    gDPSetDepthSource(gDisplayListHead++, G_ZS_PIXEL);
}

/**
 * Sets the initial RDP (Reality Display Processor) rendering settings.
 **/
void init_rdp(void) {
    gDPPipeSync(gDisplayListHead++);
    gDPPipelineMode(gDisplayListHead++, G_PM_1PRIMITIVE);
    gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    gDPSetCombineMode(gDisplayListHead++, G_CC_SHADE, G_CC_SHADE);
    gDPSetTextureLOD(gDisplayListHead++, G_TL_TILE);
    gDPSetTextureLUT(gDisplayListHead++, G_TT_NONE);
    gDPSetTextureDetail(gDisplayListHead++, G_TD_CLAMP);
    gDPSetTexturePersp(gDisplayListHead++, G_TP_PERSP);
    gDPSetTextureFilter(gDisplayListHead++, G_TF_BILERP);
    gDPSetTextureConvert(gDisplayListHead++, G_TC_FILT);
    gDPSetCombineKey(gDisplayListHead++, G_CK_NONE);
    gDPSetAlphaCompare(gDisplayListHead++, G_AC_NONE);
    gDPSetRenderMode(gDisplayListHead++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
    gDPNoOp(gDisplayListHead++);
    gDPSetColorDither(gDisplayListHead++, G_CD_DISABLE);
    gDPPipeSync(gDisplayListHead++);
    gSPClipRatio(gDisplayListHead++);
    // F3DEX2 may need FRUSTRATIO_1 as an argument to clip ratio.
}

UNUSED void func_802A40A4(void) {}
UNUSED void func_802A40AC(void) {}
UNUSED void func_802A40B4(void) {}
UNUSED void func_802A40BC(void) {}
UNUSED void func_802A40C4(void) {}
UNUSED void func_802A40CC(void) {}
UNUSED void func_802A40D4(void) {}
UNUSED void func_802A40DC(void) {}

#define G_CLEAR_ALL_MODES 0xFFFFFFFF

UNUSED s32 set_viewport2(void) {
    gSPViewport(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&D_800DC5EC->viewport));
    gSPClearGeometryMode(gDisplayListHead++, G_CLEAR_ALL_MODES);
    gSPSetGeometryMode(gDisplayListHead++, G_ZBUFFER | G_SHADE |
        G_CULL_BACK | G_LIGHTING | G_SHADING_SMOOTH | G_CLIPPING);
}

void set_viewport(void) {
    gSPViewport(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&D_802B8880));
    gSPClearGeometryMode(gDisplayListHead++, G_CLEAR_ALL_MODES);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADE | G_CULL_BACK | G_SHADING_SMOOTH);
}

extern s32 D_800DC5D0;
extern s32 D_800DC5D4;
extern s32 D_800DC5D8;

/**
 * Tells the RDP which of the three framebuffers it shall draw to.
 */
void select_framebuffer(void) {
    gDPSetColorImage(gDisplayListHead++, G_IM_FMT_RGBA, G_IM_SIZ_16b, SCREEN_WIDTH, VIRTUAL_TO_PHYSICAL(gPhysicalFramebuffers[sRenderingFramebuffer]));
    gDPSetFillColor(gDisplayListHead++, GPACK_RGBA5551(D_800DC5D0, D_800DC5D4, D_800DC5D8, 1) << 0x10 | GPACK_RGBA5551(D_800DC5D0, D_800DC5D4, D_800DC5D8, 1));
    gDPPipeSync(gDisplayListHead++);
    gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    gDPFillRectangle(gDisplayListHead++, 0, 0, SCREEN_WIDTH-1, SCREEN_HEIGHT-1);
    gDPPipeSync(gDisplayListHead++);
    gDPSetCycleType(gDisplayListHead++, G_CYC_1CYCLE);
}

void func_802A4300(void) {

    if (gActiveScreenMode == SCREEN_MODE_1P) {
        return;
    }
    if (D_800DC5B0 != 0) {
        return;
    }

    gDPPipeSync(gDisplayListHead++);
    gDPSetCycleType(gDisplayListHead++, G_CYC_FILL);
    gDPSetColorImage(gDisplayListHead++, G_IM_FMT_RGBA, G_IM_SIZ_16b, SCREEN_WIDTH, VIRTUAL_TO_PHYSICAL(gPhysicalFramebuffers[sRenderingFramebuffer]));
    gDPSetFillColor(gDisplayListHead++, 0x00010001);
    gSPViewport(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&D_802B8880));
    gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    gDPPipeSync(gDisplayListHead++);

    switch(gActiveScreenMode) {
        case SCREEN_MODE_2P_SPLITSCREEN_VERTICAL:
            gDPFillRectangle(gDisplayListHead++, 157, 0, 159, 239);
            break;
        case SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL:
            gDPFillRectangle(gDisplayListHead++, 0, 119, 319, 121);
            break;
        case SCREEN_MODE_3P_4P_SPLITSCREEN:
            gDPFillRectangle(gDisplayListHead++, 157, 0, 159, 239);
            gDPFillRectangle(gDisplayListHead++, 0, 119, 319, 121);
            break;
    }
    gDPPipeSync(gDisplayListHead++);
    gDPSetCycleType(gDisplayListHead++, G_CYC_1CYCLE);

}

extern s32 D_801625EC;
extern s32 D_801625F0;
extern s32 D_801625F4;

struct Skybox {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8;
    s16 unkA;
};

// unreferenced F3D. Perhaps goes in an unused func?
s32 D_802B8A90[] = {
    0xe7000000, 0x00000000, 0xb900031d, 0x0f0a4000,
    0xba001402, 0x00300000, 0xf7000000, 0x00000000,
    0xf64fc3bc, 0x00000000, 0xe7000000, 0x00000000,
    0xba001402, 0x00000000, 0xb8000000, 0x00000000,
};

struct Skybox sSkyColors[21] = {
    {128, 4280, 6136, 216, 7144, 32248},
    {255, 255, 255, 255, 255, 255},
    {48, 1544, 49528, 0, 0, 0},
    {0, 0, 0, 0, 0, 0},
    {113, 70, 255, 255, 184, 99},
    {28, 11, 90, 0, 99, 164},
    {48, 1688, 54136, 216, 7144, 32248},
    {238, 144, 255, 255, 224, 240},
    {128, 4280, 6136, 216, 7144, 32248},
    {0, 18, 255, 197, 211, 255},
    {0, 2, 94, 209, 65, 23},
    {195, 231, 255, 255, 0xc0, 0},
    {128, 4280, 6136, 216, 7144, 32248},
    {0, 0, 0, 0, 0, 0},
    {20, 30, 56, 40, 60, 110},
    {128, 4280, 6136, 216, 7144, 32248},
    {0, 0, 0, 0, 0, 0},
    {113, 70, 255, 255, 184, 99},
    {255, 174, 0, 255, 229, 124},
    {0, 0, 0, 0, 0, 0},
    {238, 144, 255, 255, 224, 240},
};

struct Skybox D_802B8BCC[21] = {
    {0, 0, 0, 0, 0, 0},
    {255, 255, 255, 255, 255, 255},
    {0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0},
    {95, 40, 15, 0, 0, 0},
    {0, 99, 164, 0, 0, 0},
    {48, 1688, 54136, 0, 0, 0},
    {255, 224, 240, 0, 0, 0},
    {216, 7144, 32248, 0, 0, 0},
    {255, 184, 99, 0, 0, 0},
    {209, 65, 23, 0, 0, 0},
    {255, 192, 0, 0, 0, 0},
    {216, 7144, 32248, 128, 4280, 6136},
    {0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0},
    {216, 7144, 32248, 0, 0, 0},
    {0, 0, 0, 0, 0, 0},
    {255, 224, 240, 0, 0, 0},
    {22, 145, 22, 0, 0, 0},
    {0, 0, 0, 0, 0, 0},
    {255, 224, 240, 0, 0, 0},
};
extern u16 D_800DC5BC;

void func_802A450C(Vtx *skybox) {
    s32 i;

    if (D_800DC5BC != 0) {

        if (D_801625EC < 0) {
            D_801625EC = 0;
        }

        if (D_801625F4 < 0) {
            D_801625F4 = 0;
        }

        if (D_801625F0 < 0) {
            D_801625F0 = 0;
        }

        if (D_801625EC > 255) {
            D_801625EC = 255;
        }

        if (D_801625F4 > 255) {
            D_801625F4 = 255;
        }

        if (D_801625F0 > 255) {
            D_801625F0 = 255;
        }

        for (i = 0; i < 8; i++) {

            skybox[i].v.cn[0] = (s16) D_801625EC;
            skybox[i].v.cn[1] = (s16) D_801625F4;
            skybox[i].v.cn[2] = (s16) D_801625F0;
        }
        return;
    }
    skybox[0].v.cn[0] = sSkyColors[gCurrentCourseId].unk0;
    skybox[0].v.cn[1] = sSkyColors[gCurrentCourseId].unk2;
    skybox[0].v.cn[2] = sSkyColors[gCurrentCourseId].unk4;
    skybox[1].v.cn[0] = sSkyColors[gCurrentCourseId].unk6;
    skybox[1].v.cn[1] = sSkyColors[gCurrentCourseId].unk8;
    skybox[1].v.cn[2] = sSkyColors[gCurrentCourseId].unkA;
    skybox[2].v.cn[0] = sSkyColors[gCurrentCourseId].unk6;
    skybox[2].v.cn[1] = sSkyColors[gCurrentCourseId].unk8;
    skybox[2].v.cn[2] = sSkyColors[gCurrentCourseId].unkA;
    skybox[3].v.cn[0] = sSkyColors[gCurrentCourseId].unk0;
    skybox[3].v.cn[1] = sSkyColors[gCurrentCourseId].unk2;
    skybox[3].v.cn[2] = sSkyColors[gCurrentCourseId].unk4;
    skybox[4].v.cn[0] = D_802B8BCC[gCurrentCourseId].unk0;
    skybox[4].v.cn[1] = D_802B8BCC[gCurrentCourseId].unk2;
    skybox[4].v.cn[2] = D_802B8BCC[gCurrentCourseId].unk4;
    skybox[5].v.cn[0] = D_802B8BCC[gCurrentCourseId].unk6;
    skybox[5].v.cn[1] = D_802B8BCC[gCurrentCourseId].unk8;
    skybox[5].v.cn[2] = D_802B8BCC[gCurrentCourseId].unkA;
    skybox[6].v.cn[0] = D_802B8BCC[gCurrentCourseId].unk6;
    skybox[6].v.cn[1] = D_802B8BCC[gCurrentCourseId].unk8;
    skybox[6].v.cn[2] = D_802B8BCC[gCurrentCourseId].unkA;
    skybox[7].v.cn[0] = D_802B8BCC[gCurrentCourseId].unk0;
    skybox[7].v.cn[1] = D_802B8BCC[gCurrentCourseId].unk2;
    skybox[7].v.cn[2] = D_802B8BCC[gCurrentCourseId].unk4;
}

extern Mtx *D_0D008E98;
extern struct GfxPool *gGfxPool;

void func_802A487C(Vtx *arg0, UNUSED s32 arg1, UNUSED s32 arg2, UNUSED s32 arg3, UNUSED s32 arg4) {

    init_rdp();
    if (gCurrentCourseId != COURSE_RAINBOW_ROAD) {

        gDPSetRenderMode(gDisplayListHead++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
        gSPClearGeometryMode(gDisplayListHead++, G_ZBUFFER | G_LIGHTING);
        guOrtho(&gGfxPool->mtxPool[0], 0.0f, 320.0f, 0.0f, 240.0f, 0.0f, 5.0f, 1.0f);
        gDPHalf1(gDisplayListHead++, 0xFFFF);
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[0]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&D_0D008E98), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPVertex(gDisplayListHead++, &arg0[4], 4, 0);
        gSP2Triangles(gDisplayListHead++, 0, 3, 1, 0, 1, 3, 2, 0);
    }
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
//? init_rdp(); // extern
//? func_802A450C(); // extern
//? func_802B5564(? *, ? *, s32, s32, f32, f32, f32); // extern
//? func_802B5794(? *, void *, void *); // extern
//? func_802B6434(f32 *, ? *); // extern
//? func_802B71CC(? *, ? *, ? *); // extern

extern s32 D_80150148;
extern f32 D_8015014C;
extern f32 D_80150150;
extern f32 D_802B9BB0;
// gControllers
void func_802A4A0C(Vtx *arg0, struct UnkStruct_800DC5EC *arg1, s32 arg2, s32 arg3) {
    Camera *sp13C = arg1->camera;
    s32 sp128;
    s32 spE8;
    s32 spA8;
    s32 sp68;

    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f6;
    s16 temp_t5;

    func_802A450C(arg0);
    sp64 = D_802B9BB0;
    sp5C = 0.0f;
    sp60 = 0.0f;

    func_802B5564(&spE8, &sp128, sp13C->unk30, D_80150148, D_80150150, D_8015014C, 1.0f);
    func_802B5794(&spA8, sp13C, sp13C->unk);
    func_802B71CC(&sp68, &spE8, &spA8);
    sp58 = spA4 + ((sp74 * sp5C) + (sp84 * sp60) + (sp94 * sp64));
    func_802B6434(&sp5C, &sp68);
    temp_f0 = 1.0 / sp58;
    temp_f18 = sp5C * temp_f0;
    temp_f6 = sp60 * temp_f0;
    temp_f10 = temp_f18 * 160.0f;
    sp5C = temp_f18;
    temp_f16 = temp_f6 * 120.0f;
    sp60 = temp_f6;
    sp5C = temp_f10;
    sp60 = temp_f16;
    temp_t5 = 0x78 - temp_f16;
    arg1->pathCounter = temp_t5;
    arg0->v.ob[0] = temp_t5;//->unk12 = temp_t5;
    arg0->v.ob[1] = temp_t5; // = temp_t5; //unk22
    arg0->v.ob[4] = temp_t5;//unk42 = temp_t5;
    arg0->v.ob[7] = temp_t5;//unk72 = temp_t5;
    init_rdp();

    gDPSetRenderMode(gDisplayListHead++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
    gSPClearGeometryMode(gDisplayListHead++, G_ZBUFFER | G_LIGHTING);
    guOrtho(&gGfxPool->mtxPool[0], 0.0f, 320.0f, 0.0f, 240.0f, 0.0f, 5.0f, 1.0f);
    gDPHalf1(gDisplayListHead++, 0xFFFF);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[0]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&D_0D008E98), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPVertex(gDisplayListHead++, &arg0, 4, 0);
    gSP2Triangles(gDisplayListHead++, 0, 3, 1, 0, 1, 3, 2, 0);

/*
    temp_v0->unk0 = 0xB900031D;
    temp_v0->unk4 = 0xF0A4000;

    temp_v0_2->unk0 = 0xB6000000;
    temp_v0_2->unk4 = 0x20001;

    guOrtho(gGfxPool, 0.0f, 320.0f, 0.0f, 240.0f, 0.0f, 5.0f, 1.0f);

    temp_v0_3->unk4 = 0xFFFF;
    temp_v0_3->unk0 = 0xB4000000;

    temp_v0_4->unk0 = 0x1030040;
    temp_v0_4->unk4 = gGfxPool & 0x1FFFFFFF;
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk4 = &D_0D008E98 & 0x1FFFFFFF;
    temp_v0_5->unk0 = 0x1020040;

    temp_v0_6->unk4 = arg0;
    temp_v0_6->unk0 = 0x400103F;

    temp_v0_7->unk0 = 0xB1000602;
    temp_v0_7->unk4 = 0x20604;
*/
    if (gCurrentCourseId == COURSE_RAINBOW_ROAD) {

        gSPVertex(gDisplayListHead++, &arg0[4], 4, 0);
        gSP2Triangles(gDisplayListHead++, 0, 3, 1, 0, 0, 0, 0, 0);

/*
        temp_v0_8->unk4 = arg0 + 0x40;
        temp_v0_8->unk0 = 0x400103F;

        temp_v0_9->unk4 = 0x20604;
        temp_v0_9->unk0 = 0xB1000602;
        */
    }
}
#else
GLOBAL_ASM("asm/non_matchings/skybox/func_802A4A0C.s")
#endif

#ifdef MIPS_TO_C
extern s32 gScreenModeSelection;
void func_802A4D18(void) {
    f32 phi_f10;

    if (gGamestate != RACING) {
        D_8015014C = 6800.0f; // D_802B9BB4
        D_80150150 = 3.0f;
    } else {
        //if (gCurrentCourseId < COURSE_BIG_DONUT) {
            switch (gCurrentCourseId) {
            case 2:
            case 3:
            case 13:
            case 15:
            case 16:
                D_8015014C = 2700.0f; // D_802B9C04
                phi_f10 = 2.0f;
                goto block_11;
            case 1:
            case 17:
                D_8015014C = 1500.0f; // D_802B9C08
                D_80150150 = 2.0f;
                break;
            case 6:
                D_8015014C = 5000.0f; // D_802B9C0C
                D_80150150 = 1.0f;
                break;
            case 14:
                D_8015014C = 4800.0f;
                phi_f10 = 10.0f;
                goto block_11;
            case 0:
            case 4:
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
            case 12:
            case 18:
                D_8015014C = 4500.0f; // D_802B9C10
                D_80150150 = 9.0f;
                break;
            case 11:
                D_8015014C = 7000.0f; // D_802B9C14;
                D_80150150 = 10.0f;
                break;
            //} endofswitch
        //} else {
            default:
            D_8015014C = 6800.0f; // D_802B9C18
            phi_f10 = 3.0f;

            D_80150150 = phi_f10;
        }
    }

    switch(gScreenModeSelection) {
        case 0:
            D_80150148 = 1.3333333730697632f; // D_802B9C1C
            break;
        case 1:
            D_80150148 = (f32) 2.6666667461395264f; // D_802B9C24
            break;
        case 2:
            D_80150148 = 0.6666666865348816f; // D_802B9C20
            break;
        case 3:
            D_80150148 = 1.3333333730697632f; // D_802B9C28
            break;
    }
}

#else
GLOBAL_ASM("asm/non_matchings/skybox/func_802A4D18.s")
#endif

//extern f32 D_80150134;
//extern f32 D_80150138;
//extern f32 D_8015013C;

extern f32 D_80150130[];

void func_802A4EF4(void) {
    switch(gActiveScreenMode) {
        case 0:
            func_8001F394(gPlayerOne, &D_80150130[0]);
            break;

        case 2:
            func_8001F394(gPlayerOne, &D_80150130[0]);
            func_8001F394(gPlayerTwo, &D_80150130[1]);
            break;
        case 1:
            func_8001F394(gPlayerOne, &D_80150130[0]);
            func_8001F394(gPlayerTwo, &D_80150130[1]);
            break;
        case 3:
            func_8001F394(gPlayerOne, &D_80150130[0]);
            func_8001F394(gPlayerTwo, &D_80150130[1]);
            func_8001F394(gPlayerThree, &D_80150130[2]);
            func_8001F394(gPlayerFour, &D_80150130[3]);
            break;
    }
}

extern u16 D_800DC5B4;

void func_802A5004(void) {

    init_rdp();
    func_802A3730(D_800DC5F0);

    gSPClearGeometryMode(gDisplayListHead++, 0xFFFFFFFF);

    gSPSetGeometryMode(gDisplayListHead++, G_SHADE | G_SHADING_SMOOTH | G_CLIPPING);

    func_802A39E0(D_800DC5F0);
    if (D_800DC5B4 != 0) {
        func_802A4A0C(&D_802B8910, D_800DC5F0, SCREEN_WIDTH, SCREEN_HEIGHT, &D_80150130[1]);
        func_80057FC4(2);
        func_802A487C(&D_802B8910, D_800DC5F0, SCREEN_WIDTH, SCREEN_HEIGHT, &D_80150130[1]);
        func_80093A30(2);
    }
}

void func_802A50EC(void) {

    init_rdp();
    func_802A3730(D_800DC5EC);

    gSPClearGeometryMode(gDisplayListHead++, 0xFFFFFFFF);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADE | G_SHADING_SMOOTH | G_CLIPPING);

    func_802A39E0(D_800DC5EC);
    if (D_800DC5B4 != 0) {
        func_802A4A0C(&D_802B8890, D_800DC5EC, SCREEN_WIDTH, SCREEN_HEIGHT, &D_80150130[0]);
        func_80057FC4(1);
        func_802A487C(&D_802B8890, D_800DC5EC, SCREEN_WIDTH, SCREEN_HEIGHT, &D_80150130[0]);
        func_80093A30(1);
    }
}

void func_802A51D4(void) {

    init_rdp();
    func_802A39E0(D_800DC5EC);
    func_802A3730(D_800DC5EC);

    gSPClearGeometryMode(gDisplayListHead++, 0xFFFFFFFF);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADE | G_SHADING_SMOOTH | G_CLIPPING);

    if (D_800DC5B4 != 0) {
        func_802A4A0C(&D_802B8890, D_800DC5EC, SCREEN_WIDTH, SCREEN_HEIGHT, &D_80150130[0]);
        func_80057FC4(3);
        func_802A487C(&D_802B8890, D_800DC5EC, SCREEN_WIDTH, SCREEN_HEIGHT, &D_80150130[0]);
        func_80093A30(3);
    }
}

void func_802A52BC(void) {

    init_rdp();
    func_802A39E0(D_800DC5F0);
    func_802A3730(D_800DC5F0);

    gSPClearGeometryMode(gDisplayListHead++, 0xFFFFFFFF);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADE | G_SHADING_SMOOTH | G_CLIPPING);

    if (D_800DC5B4 != 0) {
        func_802A4A0C(&D_802B8910, D_800DC5F0, SCREEN_WIDTH, SCREEN_HEIGHT, &D_80150130[1]);
        func_80057FC4(4);
        func_802A487C(&D_802B8910, D_800DC5F0, SCREEN_WIDTH, SCREEN_HEIGHT, &D_80150130[1]);
        func_80093A30(4);
    }
}

void func_802A53A4(void) {

    move_segment_table_to_dmem();
    init_rdp();
    func_802A3730(D_800DC5EC);

    gSPClearGeometryMode(gDisplayListHead++, 0xFFFFFFFF);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADE | G_SHADING_SMOOTH | G_CLIPPING);

    init_z_buffer();
    select_framebuffer();
    if (D_800DC5B4 != 0) {
        func_802A4A0C(&D_802B8890, D_800DC5EC, 0x140, 0xF0, &D_80150130[0]);
        if (gGamestate != CREDITS_SEQUENCE) {
            func_80057FC4(0);
        }
        func_802A487C(&D_802B8890, D_800DC5EC, 0x140, 0xF0, &D_80150130[0]);
        func_80093A30(0);
    }
}

void func_802A54A8(void) {

    init_rdp();
    func_802A39E0(D_800DC5EC);
    func_802A3730(D_800DC5EC);

    gSPClearGeometryMode(gDisplayListHead++, 0xFFFFFFFF);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADE | G_SHADING_SMOOTH | G_CLIPPING);

    if (D_800DC5B4 != 0) {
        func_802A4A0C(&D_802B8890, D_800DC5EC, 0x140, 0xF0, &D_80150130[0]);
        func_80057FC4(8);
        func_802A487C(&D_802B8890, D_800DC5EC, 0x140, 0xF0, &D_80150130[0]);
        func_80093A30(8);
    }
}

void func_802A5590(void) {

    init_rdp();
    func_802A39E0(D_800DC5F0);
    func_802A3730(D_800DC5F0);

    gSPClearGeometryMode(gDisplayListHead++, 0xFFFFFFFF);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADE | G_SHADING_SMOOTH | G_CLIPPING);

    if (D_800DC5B4 != 0) {
        func_802A4A0C(&D_802B8910, D_800DC5F0, SCREEN_WIDTH, SCREEN_HEIGHT, &D_80150130[1]);
        func_80057FC4(9);
        func_802A487C(&D_802B8910, D_800DC5F0, SCREEN_WIDTH, SCREEN_HEIGHT, &D_80150130[1]);
        func_80093A30(9);
    }
}

void func_802A5678(void) {

    init_rdp();
    func_802A39E0(D_800DC5F4);
    func_802A3730(D_800DC5F4);

    gSPClearGeometryMode(gDisplayListHead++, 0xFFFFFFFF);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADE | G_SHADING_SMOOTH | G_CLIPPING);

    if (D_800DC5B4 != 0) {
        func_802A4A0C(&D_802B8990, D_800DC5F4, SCREEN_WIDTH, SCREEN_HEIGHT, &D_80150130[2]);
        func_80057FC4(10);
        func_802A487C(&D_802B8990, D_800DC5F4, SCREEN_WIDTH, SCREEN_HEIGHT, &D_80150130[2]);
        func_80093A30(10);
    }
}



void func_802A5760(void) {

    init_rdp();

    gSPClearGeometryMode(gDisplayListHead++, 0xFFFFFFFF);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADE | G_SHADING_SMOOTH | G_CLIPPING);

    if (gPlayerCountSelection1 == 3) {

        gDPPipeSync(gDisplayListHead++);
        func_802A39E0(D_800DC5F8);
        gDPSetCycleType(gDisplayListHead++, G_CYC_FILL);
        gDPSetColorImage(gDisplayListHead++, G_IM_FMT_RGBA, G_IM_SIZ_16b, SCREEN_WIDTH, VIRTUAL_TO_PHYSICAL(gPhysicalFramebuffers[sRenderingFramebuffer]));
        gDPSetFillColor(gDisplayListHead++, 0x00010001);
        gDPPipeSync(gDisplayListHead++);
        gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 160, 120, SCREEN_WIDTH, SCREEN_HEIGHT);
        gDPFillRectangle(gDisplayListHead++, 160, 120, SCREEN_WIDTH-1, SCREEN_HEIGHT-1);
        gDPPipeSync(gDisplayListHead++);
        gDPSetCycleType(gDisplayListHead++, G_CYC_1CYCLE);

        func_802A3730(D_800DC5F8);

    } else {
        func_802A3730(D_800DC5F8);
        func_802A39E0(D_800DC5F8);

        if (D_800DC5B4 != 0) {
            func_802A4A0C(&D_802B8A10, D_800DC5F8, SCREEN_WIDTH, SCREEN_HEIGHT, &D_80150130[3]);
            func_80057FC4(11);
            func_802A487C(&D_802B8A10, D_800DC5F8, SCREEN_WIDTH, SCREEN_HEIGHT, &D_80150130[3]);
            func_80093A30(11);
        }
    }
}

extern f32 D_80150148;
extern f32 D_80150150;
extern f32 D_8015014C;


extern u16 D_800DC5C8;
extern u16 D_800DC5B8;
extern Camera cameras[];

void func_802A59A4(void) {
    Camera *camera = &cameras[0];
    u16 spAA[32];
    s32 sp5C[8];

    func_802A53A4();
    init_rdp();
    func_802A3730(D_800DC5EC);

    gSPSetGeometryMode(gDisplayListHead++, G_ZBUFFER | G_SHADE | G_CULL_BACK | G_LIGHTING | G_SHADING_SMOOTH);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
    guPerspective(&gGfxPool->mtxPool[1], &spAA[23], D_80150130[0], D_80150148, D_80150150, D_8015014C, 1.0f);
    gDPHalf1(gDisplayListHead++, spAA[23]);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[1]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);

    guLookAt(&gGfxPool->mtxPool[7], camera->pos[0], camera->pos[1], camera->pos[2],
             camera->lookAt[0], camera->lookAt[1], camera->lookAt[2], camera->up[0],
             camera->up[1], camera->up[2]);
    if (D_800DC5C8 == 0) {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[7]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
        mtxf_identity(sp5C);
        func_802B4FF8(sp5C, 0);
    } else {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[7]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    }
    func_80295A38(D_800DC5EC);
    if (D_800DC5C8 == 1) {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[7]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
        mtxf_identity(sp5C);
        func_802B4FF8(sp5C, 0);
    }
    func_802A3008(D_800DC5EC);
    func_80058090(0);
    func_800212B4();
    func_8029122C(D_800DC5EC, 0);
    func_80021B0C();
    func_802A2F34(D_800DC5EC);
    func_80058538(0);
    func_80058BF4();
    if (D_800DC5B8 != 0) {
        func_80058C20(0);
    }
    func_80093A5C(0);
    if (D_800DC5B8 != 0) {
        func_80058DB4(0);
    }
}

extern s32 D_8015F788;

void func_802A5CB4(void) {
    Camera *camera = &cameras[0];
    u16 sp9A[22];
    s32 sp58[8];

    func_802A50EC();
    init_rdp();
    func_802A3730(D_800DC5EC);


    gSPSetGeometryMode(gDisplayListHead++, G_ZBUFFER | G_SHADE | G_CULL_BACK | G_SHADING_SMOOTH);
    guPerspective(&gGfxPool->mtxPool[1], &sp9A[17], D_80150130[0], D_80150148, D_80150150, D_8015014C, 1.0f);
    gDPHalf1(gDisplayListHead++, sp9A[17]);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[1]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    guLookAt(&gGfxPool->mtxPool[7], camera->pos[0], camera->pos[1], camera->pos[2], camera->lookAt[0], camera->lookAt[1], camera->lookAt[2], camera->up[0], camera->up[1], camera->up[2]);

    if (D_800DC5C8 == 0) {

        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[7]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
        mtxf_identity(sp58);
        func_802B4FF8(sp58, 0);
    } else {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[7]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    }
    func_80295A38(D_800DC5EC);
    if (D_800DC5C8 == 1) {

        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[7]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);

        mtxf_identity(sp58);
        func_802B4FF8(sp58, 0);
    }
    func_802A3008(D_800DC5EC);
    func_80058090(1);
    func_800212B4();
    func_8029122C(D_800DC5EC, 0);
    func_80021B0C();
    func_802A2F34(D_800DC5EC);
    func_80058538(1);
    func_80058BF4();
    if (D_800DC5B8 != 0) {
        func_80058C20(1);
    }
    func_80093A5C(1);
    if (D_800DC5B8 != 0) {
        func_80058DB4(1);
    }
    D_8015F788 += 1;
}

void func_802A5FAC(void) {
    Camera *camera = &cameras[1];
    u16 sp9A[22];
    s32 sp58[8];

    func_802A5004();
    init_rdp();
    func_802A3730(D_800DC5F0);

    gSPSetGeometryMode(gDisplayListHead++, G_ZBUFFER | G_SHADE | G_CULL_BACK | G_SHADING_SMOOTH);
    guPerspective(&gGfxPool->mtxPool[2], &sp9A[17], D_80150130[1], D_80150148, D_80150150, D_8015014C, 1.0f);
    gDPHalf1(gDisplayListHead++, sp9A[17]);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[2]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    guLookAt(&gGfxPool->mtxPool[8], camera->pos[0], camera->pos[1], camera->pos[2], camera->lookAt[0], camera->lookAt[1], camera->lookAt[2], camera->up[0], camera->up[1], camera->up[2]);

    //D_801647A8, D_801647AC, D_801647B0, D_801647B4, D_801647B8, D_801647BC, D_801647C0, D_801647C4, D_801647C8);

    if (D_800DC5C8 == 0) {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[8]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
        mtxf_identity(sp58);
        func_802B4FF8(sp58, 0);
    } else {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[8]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    }
    func_80295A38(D_800DC5F0);
    if (D_800DC5C8 == 1) {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[8]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
        mtxf_identity(sp58);
        func_802B4FF8(sp58, 0);
    }
    func_802A3008(D_800DC5F0);
    func_80058090(2);
    func_800215DC();
    func_8029122C(D_800DC5F0, 1);
    func_80021C78();
    func_802A2F34(D_800DC5F0);
    func_80058BF4();
    func_80058538(2);
    if (D_800DC5B8 != 0) {
        func_80058C20(2);
    }
    func_80093A5C(2);
    if (D_800DC5B8 != 0) {
        func_80058DB4(2);
    }
    D_8015F788 += 1;
}

void func_802A62A4(void) {
    Camera *camera = &cameras[0];
    u16 sp9A[22];
    s32 sp58[8];

    func_802A51D4();
    gSPSetGeometryMode(gDisplayListHead++, G_SHADE | G_CULL_BACK | G_LIGHTING | G_SHADING_SMOOTH);
    init_rdp();
    func_802A3730(D_800DC5EC);
    gSPSetGeometryMode(gDisplayListHead++, G_ZBUFFER | G_SHADE | G_CULL_BACK | G_SHADING_SMOOTH);
    guPerspective(&gGfxPool->mtxPool[1], &sp9A[17], D_80150130[0], D_80150148, D_80150150, D_8015014C, 1.0f);
    gDPHalf1(gDisplayListHead++, sp9A[17]);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[1]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    guLookAt(&gGfxPool->mtxPool[7], camera->pos[0], camera->pos[1], camera->pos[2], camera->lookAt[0], camera->lookAt[1], camera->lookAt[2], camera->up[0], camera->up[1], camera->up[2]);

    if (D_800DC5C8 == 0) {

        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[7]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
        mtxf_identity(sp58);
        func_802B4FF8(sp58, 0);
    } else {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[7]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    }
    func_80295A38(D_800DC5EC);
    if (D_800DC5C8 == 1) {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[7]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
        mtxf_identity(sp58);
        func_802B4FF8(sp58, 0);
    }
    func_802A3008(D_800DC5EC);
    func_80058090(3);
    func_800212B4();
    func_8029122C(D_800DC5EC, 0);
    func_80021B0C();
    func_802A2F34(D_800DC5EC);
    func_80058538(3);
    func_80058BF4();
    if (D_800DC5B8 != 0) {
        func_80058C20(3);
    }
    func_80093A5C(3);
    if (D_800DC5B8 != 0) {
        func_80058DB4(3);
    }
    D_8015F788 += 1;
}

void func_802A65B8(void) {
    Camera *camera = &cameras[1];
    u16 sp9A[22];
    s32 sp58[8];

    func_802A52BC();

    gSPSetGeometryMode(gDisplayListHead++, G_SHADE | G_CULL_BACK | G_LIGHTING | G_SHADING_SMOOTH);
    init_rdp();
    func_802A3730(D_800DC5F0);
    gSPSetGeometryMode(gDisplayListHead++, G_ZBUFFER | G_SHADE | G_CULL_BACK | G_SHADING_SMOOTH);
    guPerspective(&gGfxPool->mtxPool[2], &sp9A[17], D_80150130[1], D_80150148, D_80150150, D_8015014C, 1.0f);
    gDPHalf1(gDisplayListHead++, sp9A[17]);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[2]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    guLookAt(&gGfxPool->mtxPool[8], camera->pos[0], camera->pos[1], camera->pos[2], camera->lookAt[0], camera->lookAt[1], camera->lookAt[2], camera->up[0], camera->up[1], camera->up[2]);

    if (D_800DC5C8 == 0) {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[8]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
        mtxf_identity(sp58);
        func_802B4FF8(sp58, 0);
    } else {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[8]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    }
    func_80295A38(D_800DC5F0);
    if (D_800DC5C8 == 1) {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[8]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
        mtxf_identity(&sp58);
        func_802B4FF8(&sp58, 0);
    }
    func_802A3008(D_800DC5F0);
    func_80058090(4);
    func_800215DC();
    func_8029122C(D_800DC5F0, 1);
    func_80021C78();
    func_802A2F34(D_800DC5F0);
    func_80058538(4);
    func_80058BF4();
    if (D_800DC5B8 != 0) {
        func_80058C20(4);
    }
    func_80093A5C(4);
    if (D_800DC5B8 != 0) {
        func_80058DB4(4);
    }
    D_8015F788 += 1;
}

void func_802A68CC(void) {
    Camera *camera = camera1;
    u16 sp9A[22];
    s32 sp58[8];

    func_802A54A8();
    init_rdp();
    func_802A3730(D_800DC5EC);

    gSPSetGeometryMode(gDisplayListHead++, G_ZBUFFER | G_SHADE | G_CULL_BACK | G_SHADING_SMOOTH);
    guPerspective(&gGfxPool->mtxPool[1], &sp9A[17], D_80150130[0], D_80150148, D_80150150, D_8015014C, 1.0f);
    gDPHalf1(gDisplayListHead++, sp9A[17]);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[1]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    guLookAt(&gGfxPool->mtxPool[7], camera->pos[0], camera->pos[1], camera->pos[2], camera->lookAt[0], camera->lookAt[1], camera->lookAt[2], camera->up[0], camera->up[1], camera->up[2]);

    if (D_800DC5C8 == 0) {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[7]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
        mtxf_identity(&sp58);
        func_802B4FF8(&sp58, 0);
    } else {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[7]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    }
    func_80295A38(D_800DC5EC);
    if (D_800DC5C8 == 1) {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[7]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
        mtxf_identity(&sp58);
        func_802B4FF8(&sp58, 0);
    }
    func_802A3008(D_800DC5EC);
    func_80058090(8);
    func_800212B4();
    func_8029122C(D_800DC5EC, 0);
    func_80021B0C();
    func_802A2F34(D_800DC5EC);
    func_80058538(8);
    func_80058BF4();
    if (D_800DC5B8 != 0) {
        func_80058C20(8);
    }
    func_80093A5C(8);
    if (D_800DC5B8 != 0) {
        func_80058DB4(8);
    }
    D_8015F788 += 1;
}

void func_802A6BB0(void) {
    Camera *camera = camera2;
    u16 sp9A[22];
    s32 sp58[8];

    func_802A5590();
    init_rdp();
    func_802A3730(D_800DC5F0);

    gSPSetGeometryMode(gDisplayListHead++, G_ZBUFFER | G_SHADE | G_CULL_BACK | G_SHADING_SMOOTH);
    guPerspective(&gGfxPool->mtxPool[2], &sp9A[17], D_80150130[1], D_80150148, D_80150150, D_8015014C, 1.0f);
    gDPHalf1(gDisplayListHead++, sp9A[17]);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[2]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);

    guLookAt(&gGfxPool->mtxPool[8], camera->pos[0], camera->pos[1], camera->pos[2], camera->lookAt[0], camera->lookAt[1], camera->lookAt[2], camera->up[0], camera->up[1], camera->up[2]);
    if (D_800DC5C8 == 0) {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[8]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
        mtxf_identity(sp58);
        func_802B4FF8(sp58, 0);
    } else {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[8]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    }
    func_80295A38(D_800DC5F0);
    if (D_800DC5C8 == 1) {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[8]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
        mtxf_identity(sp58);
        func_802B4FF8(sp58, 0);
    }
    func_802A3008(D_800DC5F0);
    func_80058090(9);
    func_800215DC();
    func_8029122C(D_800DC5F0, 1);
    func_80021C78();
    func_802A2F34(D_800DC5F0);
    func_80058538(9);
    func_80058BF4();
    if (D_800DC5B8 != 0) {
        func_80058C20(9);
    }
    func_80093A5C(9);
    if (D_800DC5B8 != 0) {
        func_80058DB4(9);
    }
    D_8015F788 += 1;
}

void func_802A6E94(void) {
    Camera *camera = camera3;
    u16 sp9A[22];
    s32 sp58[8];

    func_802A5678();
    init_rdp();
    func_802A3730(D_800DC5F4);
    gSPSetGeometryMode(gDisplayListHead++, G_ZBUFFER | G_SHADE | G_CULL_BACK | G_SHADING_SMOOTH);
    guPerspective(&gGfxPool->mtxPool[3], &sp9A[17], D_80150130[2], D_80150148, D_80150150, D_8015014C, 1.0f);
    gDPHalf1(gDisplayListHead++, sp9A[17]);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[3]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    guLookAt(&gGfxPool->mtxPool[9], camera->pos[0], camera->pos[1], camera->pos[2], camera->lookAt[0], camera->lookAt[1], camera->lookAt[2], camera->up[0], camera->up[1], camera->up[2]);
    if (D_800DC5C8 == 0) {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[9]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);

        mtxf_identity(sp58);
        func_802B4FF8(sp58, 0);
    } else {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[9]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    }
    func_80295A38(D_800DC5F4);
    if (D_800DC5C8 == 1) {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[9]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
        mtxf_identity(sp58);
        func_802B4FF8(sp58, 0);
    }
    func_802A3008(D_800DC5F4);
    func_80058090(10);
    func_8002186C();
    func_8029122C(D_800DC5F4, 2);
    func_80021D40();
    func_802A2F34(D_800DC5F4);
    func_80058538(10);
    func_80058BF4();
    if (D_800DC5B8 != 0) {
        func_80058C20(10);
    }
    func_80093A5C(10);
    if (D_800DC5B8 != 0) {
        func_80058DB4(10);
    }
    D_8015F788 += 1;
}

void func_802A7178(void) {
    Camera *camera = camera4;
    u16 sp92[22];
    s32 sp50[8];

    func_802A5760();
    if (gPlayerCountSelection1 == 3) {
        func_80093A5C(11);
        if (D_800DC5B8 != 0) {
            func_80058DB4(11);
        }
        D_8015F788 += 1;
        return;
    }

    init_rdp();
    func_802A3730(D_800DC5F8);

    gSPSetGeometryMode(gDisplayListHead++, G_ZBUFFER | G_SHADE | G_CULL_BACK | G_SHADING_SMOOTH);
    guPerspective(&gGfxPool->mtxPool[4], &sp92[17], D_80150130[3], D_80150148, D_80150150, D_8015014C, 1.0f);
    gDPHalf1(gDisplayListHead++, sp92[17]);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[4]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    guLookAt(&gGfxPool->mtxPool[10], camera->pos[0], camera->pos[1], camera->pos[2], camera->lookAt[0], camera->lookAt[1], camera->lookAt[2], camera->up[0], camera->up[1], camera->up[2]);
    if (D_800DC5C8 == 0) {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[10]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
        mtxf_identity(sp50);
        func_802B4FF8(sp50, 0);
    } else {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[10]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    }
    func_80295A38(D_800DC5F8);
    if (D_800DC5C8 == 1) {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[10]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
        mtxf_identity(sp50);
        func_802B4FF8(sp50, 0);
    }
    func_802A3008(D_800DC5F8);
    func_80058090(11);
    func_800219BC();
    func_8029122C(D_800DC5F8, 3);
    func_80021DA8();
    func_802A2F34(D_800DC5F8);
    func_80058538(11);
    func_80058BF4();
    if (D_800DC5B8 != 0) {
        func_80058C20(11);
    }
    func_80093A5C(0xB);
    if (D_800DC5B8 != 0) {
        func_80058DB4(11);
    }
    D_8015F788 += 1;
}

extern struct UnkStruct_800DC5EC D_8015F480[];
extern s32 D_8015F790[];

extern struct Controller gControllers[];
extern Player gPlayers[];

void func_802A74BC(void) {
    struct UnkStruct_800DC5EC *wrapper = &D_8015F480[0];
    Player *player = &gPlayers[0];
    Camera *camera = &cameras[0];
    struct Controller *controller = &gControllers[0];

    // struct? size = 0x10. unk++ doesn't work cause s32 too small.
    s32 *unk = &D_8015F790[0];
    s32 i;

    for (i = 0; i < 4; i++) {
        wrapper->controllers = controller;
        wrapper->camera = camera;
        wrapper->player = player;
        wrapper->unkC = unk;
        wrapper->screenWidth = 4;
        wrapper->screenHeight = 4;
        wrapper->pathCounter = 1;


        switch(gActiveScreenMode) {
            case 0:
                if (i == 0) {
                    wrapper->screenStartX = 160;
                }
                wrapper->screenStartY = 120;
                break;
            case 2:
                if (i == 0) {
                    wrapper->screenStartX = 80;
                    wrapper->screenStartY = 120;
                } else if (i == 1) {
                    wrapper->screenStartX = 240;
                    wrapper->screenStartY = 120;
                }
                break;
            case 1:
                if (i == 0) {
                    wrapper->screenStartX = 160;
                    wrapper->screenStartY = 60;
                } else if (i == 1) {
                    wrapper->screenStartX = 160;
                    wrapper->screenStartY = 180;
                }
                break;
            case 3:
                if (i == 0) {
                    wrapper->screenStartX = 80;
                    wrapper->screenStartY = 60;
                } else if (i == 1) {
                    wrapper->screenStartX = 240;
                    wrapper->screenStartY = 60;
                } else if (i == 2) {
                    wrapper->screenStartX = 80;
                    wrapper->screenStartY = 180;
                } else {
                    wrapper->screenStartX = 240;
                    wrapper->screenStartY = 180;
                }
                break;
        }
        player++;
        camera++;
        wrapper++;
        unk += 0x10;
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_802A7658(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    s32 temp_t5;
    s32 var_a0;
    s32 var_a1;
    s32 var_a2;
    s32 var_v0;
    s32 var_v1;
    u16 *var_t1;
    u16 *var_t3;
    u16 temp_t8;
    u16 temp_t9;
    void *var_t3_2;

    var_v0 = 0;
    var_v1 = 0;
    if (arg3 > 0) {
        var_a2 = (arg1 * 0x140) + arg0;
        do {
            var_a0 = var_a2;
            var_a1 = 0;
            if (arg2 > 0) {
                temp_t5 = arg2 & 3;
                var_t1 = arg5 + (var_v0 * 2);
                if (temp_t5 != 0) {
                    var_t3 = arg4 + (var_a0 * 2);
                    do {
                        temp_t9 = *var_t3;
                        var_a1 += 1;
                        var_v0 += 1;
                        var_t1 += 2;
                        var_a0 += 1;
                        var_t3 += 2;
                        var_t1->unk-2 = temp_t9;
                    } while (temp_t5 != var_a1);
                    if (var_a1 != arg2) {
                        goto block_7;
                    }
                } else {
block_7:
                    var_t3_2 = arg4 + (var_a0 * 2);
                    do {
                        var_a1 += 4;
                        var_v0 += 4;
                        *var_t1 = var_t3_2->unk0;
                        temp_t8 = var_t3_2->unk2;
                        var_t1 += 8;
                        var_t3_2 += 8;
                        var_t1->unk-6 = temp_t8;
                        var_t1->unk-4 = (u16) var_t3_2->unk-4;
                        var_t1->unk-2 = (u16) var_t3_2->unk-2;
                    } while (var_a1 != arg2);
                }
            }
            var_v1 += 1;
            var_a2 += 0x140;
        } while (var_v1 != arg3);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/skybox/func_802A7658.s")
#endif

extern s32 D_800DC5DC;
extern s32 D_800DC5E0;
extern uintptr_t gSegmentTable[];
extern u16 sRenderedFramebuffer;

void func_802A7728(void) {
    s16 temp_v0;

    if (gActiveScreenMode == SCREEN_MODE_3P_4P_SPLITSCREEN) {
        D_800DC5DC = 0;
    } else {
        D_800DC5DC = 128;
    }
    D_800DC5E0 = 0;
    temp_v0 = (s16) sRenderedFramebuffer - 1;
    if (temp_v0 < 0) {
        temp_v0 = 2;
    } else if (temp_v0 > 2) {
        temp_v0 = 0;
    }
    func_802A7658(D_800DC5DC, D_800DC5E0, 64, 32, PHYSICAL_TO_VIRTUAL(gPhysicalFramebuffers[temp_v0]), PHYSICAL_TO_VIRTUAL(gSegmentTable[5]+0x8800));
    func_802A7658(D_800DC5DC + 64, D_800DC5E0, 64, 32, PHYSICAL_TO_VIRTUAL(gPhysicalFramebuffers[temp_v0]), PHYSICAL_TO_VIRTUAL(gSegmentTable[5]+0x9800));
    func_802A7658(D_800DC5DC, D_800DC5E0 + 32, 64, 32, PHYSICAL_TO_VIRTUAL(gPhysicalFramebuffers[temp_v0]), PHYSICAL_TO_VIRTUAL(gSegmentTable[5]+0xA800));
    func_802A7658(D_800DC5DC + 64, D_800DC5E0 + 32, 64, 32, PHYSICAL_TO_VIRTUAL(gPhysicalFramebuffers[temp_v0]), PHYSICAL_TO_VIRTUAL(gSegmentTable[5]+0xB800));
    func_802A7658(D_800DC5DC, D_800DC5E0 + 64, 64, 32, PHYSICAL_TO_VIRTUAL(gPhysicalFramebuffers[temp_v0]), PHYSICAL_TO_VIRTUAL(gSegmentTable[5]+0xC800));
    func_802A7658(D_800DC5DC + 64, D_800DC5E0 + 64, 64, 32, PHYSICAL_TO_VIRTUAL(gPhysicalFramebuffers[temp_v0]), PHYSICAL_TO_VIRTUAL(gSegmentTable[5]+0xD800));
}

void func_802A7940(void) {
    s16 temp_v0;

    if (gActiveScreenMode == SCREEN_MODE_3P_4P_SPLITSCREEN) {
        D_800DC5DC = 0;
    } else {
        D_800DC5DC = 128;
    }
    D_800DC5E0 = 0;
    temp_v0 = (s16) sRenderedFramebuffer - 1;
    if (temp_v0 < 0) {
        temp_v0 = 2;
    } else if (temp_v0 > 2) {
        temp_v0 = 0;
    }
    func_802A7658(D_800DC5DC, D_800DC5E0, 0x40, 0x20, PHYSICAL_TO_VIRTUAL(gPhysicalFramebuffers[temp_v0]), PHYSICAL_TO_VIRTUAL(gSegmentTable[5] + 0xF800));
    func_802A7658(D_800DC5DC + 0x40, D_800DC5E0, 0x40, 0x20, PHYSICAL_TO_VIRTUAL(gPhysicalFramebuffers[temp_v0]), PHYSICAL_TO_VIRTUAL(gSegmentTable[5] + 0x10800));
    func_802A7658(D_800DC5DC, D_800DC5E0 + 0x20, 0x40, 0x20, PHYSICAL_TO_VIRTUAL(gPhysicalFramebuffers[temp_v0]), PHYSICAL_TO_VIRTUAL(gSegmentTable[5] + 0x11800));
    func_802A7658(D_800DC5DC + 0x40, D_800DC5E0 + 0x20, 0x40, 0x20, PHYSICAL_TO_VIRTUAL(gPhysicalFramebuffers[temp_v0]), PHYSICAL_TO_VIRTUAL(gSegmentTable[5] + 0x12800));
    func_802A7658(D_800DC5DC, D_800DC5E0 + 0x40, 0x40, 0x20, PHYSICAL_TO_VIRTUAL(gPhysicalFramebuffers[temp_v0]), PHYSICAL_TO_VIRTUAL(gSegmentTable[5] + 0x13800));
    func_802A7658(D_800DC5DC + 0x40, D_800DC5E0 + 0x40, 0x40, 0x20, PHYSICAL_TO_VIRTUAL(gPhysicalFramebuffers[temp_v0]), PHYSICAL_TO_VIRTUAL(gSegmentTable[5] + 0x14800));
}
