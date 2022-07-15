#include <ultra64.h>
#include <PR/gu.h>
#include <macros.h>
#include "main.h"

extern Gfx *gDisplayListHead;

struct UnkStruct80287560 {
    s16 unk0;
    s16 unk2;
    s32 unk4;
    s32 unk8;
}; // 0xC

extern struct UnkStruct80287560 D_80287560[];
extern s32 D_802874FC;

extern u32 gMenuSelectionFromEndingSequence;
extern s32 D_80287554;
extern u16 gIsInQuitToMenuTransition;
extern Gfx D_00284F70[];
extern Gfx D_00284EE0[];

extern f32 D_80150148, D_8015014C, D_80150150;

extern f32 D_80150130[];
void func_80281C40(void) {
    s32 i;

    for (i = 0; i < D_802874FC; i++) {
        func_800579F8(D_80287560[i].unk0, D_80287560[i].unk2, D_80287560[i].unk8, D_80287560[i].unk4);
    }
}

void func_80281CB4(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    if (D_802874FC < 0x1E) {
        D_80287560[D_802874FC].unk0 = arg0;
        D_80287560[D_802874FC].unk2 = arg1;
        D_80287560[D_802874FC].unk4 = arg3;
        D_80287560[D_802874FC].unk8 = arg2;
        D_802874FC++;
    }
}

void func_80281D00(void) {
    // could be a struct,
    // but for now we have the oddest way to match this function
    Camera *camera = &cameras[0];
    u16 sp64[46];

    func_802A53A4();
    init_rdp();
    if (gMenuSelectionFromEndingSequence != 0xFFFF) {
        clear_framebuffer(0);
        if (D_80287554 >= 4) {
            gIsInQuitToMenuTransition = 0;
            gGamestateNext = gMenuSelectionFromEndingSequence;
        }
        D_80287554++;
        return;
    }
    func_8028150C();
    gSPSetGeometryMode(gDisplayListHead++, G_ZBUFFER | G_SHADE | G_CULL_BACK | G_SHADING_SMOOTH);
    guPerspective((Mtx*) &gGfxPool->mtxPool[1], &sp64[39], D_80150130[0], D_80150148, D_80150150, D_8015014C, 1.0f);
    gDPHalf1(gDisplayListHead++, sp64[39]);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[1]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    guLookAt((Mtx*) &gGfxPool->mtxPool[7], camera->pos[0], camera->pos[1], camera->pos[2], camera->lookAt[0], camera->lookAt[1], camera->lookAt[2], camera->up[0], camera->up[1], camera->up[2]);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[7]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
    mtxf_identity(&sp64[6]);
    func_802B4FF8(&sp64[6], 0);
    gSPDisplayList(gDisplayListHead++, &D_00284F70);
    func_800212B4();
    gSPDisplayList(gDisplayListHead++, &D_00284EE0);
    func_80281438();
    func_80058090(0);
    func_80021B0C();
    gSPDisplayList(gDisplayListHead++, &D_00284EE0);
    func_80093F10();
    func_80284CC0();
    func_80281C40();
    init_rdp();
}
