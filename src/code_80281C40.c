#include <ultra64.h>
#include <PR/gu.h>
#include <macros.h>
#include "main.h"
#include "math_util.h"
#include "skybox_and_splitscreen.h"
#include "hud_renderer.h"
#include "code_80057C60.h"
#include "code_80091750.h"
#include "code_80280650.h"
#include "code_80281C40.h"
#include "ceremony_and_credits.h"
#include "code_8001F980.h"

void func_80281C40(void) {
    s32 i;

    for (i = 0; i < D_802874FC; i++) {
        func_800579F8(D_80287560[i].unk0, D_80287560[i].unk2, (s8 *) D_80287560[i].unk8, D_80287560[i].unk4);
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
    Camera *camera = &cameras[0];
    UNUSED s32 pad[3];
    u16 perspNorm;
    Mat4 matrix;
    UNUSED s32 pad2[3];

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
    guPerspective((Mtx*) &gGfxPool->mtxPool[1], &perspNorm, D_80150130[0], D_80150148, D_80150150, D_8015014C, 1.0f);
    gDPHalf1(gDisplayListHead++, perspNorm);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[1]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    guLookAt((Mtx*) &gGfxPool->mtxPool[7], camera->pos[0], camera->pos[1], camera->pos[2], camera->lookAt[0], camera->lookAt[1], camera->lookAt[2], camera->up[0], camera->up[1], camera->up[2]);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[7]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
    mtxf_identity(matrix);
    func_802B4FF8(matrix, 0);
    gSPDisplayList(gDisplayListHead++, &D_00284F70);
    func_800212B4();
    gSPDisplayList(gDisplayListHead++, &D_00284EE0);
    func_80281438();
    func_80058090(0);
    func_80021B0C();
    gSPDisplayList(gDisplayListHead++, &D_00284EE0);
    func_80093F10();
    transition_sliding_borders();
    func_80281C40();
    init_rdp();
}
