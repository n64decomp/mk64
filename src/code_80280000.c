#include <ultra64.h>
#include <macros.h>
#include <defines.h>
#include <PR/gu.h>

#include "main.h"
#include "types.h"
#include "camera.h"
#include "code_80281780.h"
#include <config.h>

extern Gfx *gDisplayListHead;

extern f32 D_80150148, D_8015014C, D_80150150;
extern f32 D_80150130[4];
extern s16 gCreditsCourseId;
extern u16 D_80150112;
extern u16 D_80164AF0;
extern u32 D_8018D120;
extern s32 gPrevLoadedAddress;
extern mk64_surface_map_ram (*D_8015F580)[];
extern u16 D_8015F588; // Number of entires in D_8015F580

extern u16 gIsInQuitToMenuTransition, gQuitToMenuTransitionCounter;
extern s32 D_802874A0;

extern u16 atan2s(f32, f32);
extern u16 D_80164714, D_80164716, D_80164718;
extern u16 D_800DC5E4;
extern u32 gGamestate;
extern u32 D_802874FC;

extern u16 D_800DC518;

void func_80280000(void) {
    func_802966A0();
    func_80059AC8();
    func_80059AC8();
    func_8005A070();
}

void func_80280038(void) {
    Camera *camera = &cameras[0];
    u16 sp44[36];

    D_80150112 = 0;
    D_80164AF0 = 0;
    D_8018D120 = 0;
    init_rdp();
    func_802A53A4();
    init_rdp();
    func_80057FC4(0);
    gSPSetGeometryMode(gDisplayListHead++, G_ZBUFFER | G_SHADE | G_CULL_BACK | G_SHADING_SMOOTH);
    guPerspective(&gGfxPool->mtxPool[1], &sp44[37], D_80150130[0], D_80150148, D_80150150, D_8015014C, 1.0f);
    gDPHalf1(gDisplayListHead++, sp44[37]);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[1]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    guLookAt(&gGfxPool->mtxPool[7], camera->pos[0], camera->pos[1], camera->pos[2], camera->lookAt[0], camera->lookAt[1], camera->lookAt[2], camera->up[0], camera->up[1], camera->up[2]);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[7]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
    gCurrentCourseId = gCreditsCourseId;
    mtxf_identity(&sp44);
    func_802B4FF8(&sp44, 0);
    func_80295A38(D_800DC5EC);
    func_802A3008(D_800DC5EC);
    func_80058090(0);
    func_80058538(0);
    func_80284CC0();
    func_80281C40();
    init_rdp();
    func_80093F10();
    init_rdp();
}

void func_80280268(s32 arg0) {
    gIsInQuitToMenuTransition = 1;
    gQuitToMenuTransitionCounter = 5;
    D_802874A0 = 1;
    if ((arg0 < 0) || ((arg0 >= 0x14))) {
        arg0 = 0;
    }
    gCreditsCourseId = arg0;
}

void credits_loop(void) {
    Camera *camera = &cameras[0];

    f32 temp_f12;
    f32 temp;
    f32 temp_f14;

    D_802874A0 = 0;
    if (gIsInQuitToMenuTransition) {
        gQuitToMenuTransitionCounter--;
        if (gQuitToMenuTransitionCounter == 0) {
            gIsInQuitToMenuTransition = 0;
            gGamestateNext = CREDITS_SEQUENCE;
            gGamestate = 255;
        }
    } else {

        D_802874FC = 0;
        func_80283648(camera);
        temp_f12 = camera->lookAt[0] - camera->pos[0];
        temp = camera->lookAt[1] - camera->pos[1];
        temp_f14 = camera->lookAt[2] - camera->pos[2];
        camera->rot[1] = atan2s(temp_f12, temp_f14);
        camera->rot[0] = atan2s(sqrtf((temp_f12 * temp_f12) + (temp_f14 * temp_f14)), temp);
        camera->rot[2] = 0;
        if (D_802874A0 != 0) {
            D_800DC5E4++;
        } else {
            func_80280000();
            func_80280038();
            gDPFullSync(gDisplayListHead++);
            gSPEndDisplayList(gDisplayListHead++);
        }
    }
}

void load_credits(void) {
    Camera *camera = &cameras[0];

    gCurrentCourseId = gCreditsCourseId;
    D_800DC5B4 = 1;
    D_800DC518 = 1;
    func_802A4D18();
    func_802A74BC();
    camera->unk_B4 = 60.0f;
    D_80150130[0] = 60.0f;
    D_800DC5EC->screenWidth = SCREEN_WIDTH;
    D_800DC5EC->screenHeight = SCREEN_HEIGHT;
    D_800DC5EC->screenStartX = 160;
    D_800DC5EC->screenStartY = 120;
    gScreenModeSelection = SCREEN_MODE_1P;
    gActiveScreenMode = SCREEN_MODE_1P;
    gPrevLoadedAddress = D_8015F734;
    load_course(gCurrentCourseId);
    D_8015F730 = gPrevLoadedAddress;
    set_segment_base_addr(0xB, func_802AA88C(&_data_821D10SegmentRomStart, &_data_825800SegmentRomStart));
    D_8015F6EA = -0x15A1;
    D_8015F6EE = -0x15A1;
    D_8015F6F2 = -0x15A1;
    D_8015F6E8 = 0x15A1;
    D_8015F6EC = 0x15A1;
    D_8015F6F0 = 0x15A1;
    D_8015F59C = 0;
    D_8015F5A0 = 0;
    D_8015F58C = 0;
    D_8015F588 = 0;
    D_800DC5BC = 0;
    D_800DC5C8 = 0;
    D_8015F580 = gPrevLoadedAddress;
    camera->pos[0] = 1400.0f;
    camera->pos[1] = 300.0f;
    camera->pos[2] = 1400.0f;
    camera->lookAt[0] = 0.0f;
    camera->lookAt[1] = 0.0f;
    camera->lookAt[2] = 0.0f;
    camera->up[0] = 0.0f;
    camera->up[1] = 1.0f;
    camera->up[2] = 0.0f;
    func_80283430();
    func_80003040();
    func_8006E9C0();
    func_80093E60();
    func_80092688();
    if (D_800DC5EC) {}
    D_801625F8 = ((s32)gHeapEndPtr - gPrevLoadedAddress);
    D_801625FC = ((f32)D_801625F8 / 1000.0f);
}
