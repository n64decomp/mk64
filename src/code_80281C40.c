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

extern u32 D_80287550;
extern s32 D_80287554;
extern u16 D_800DC5C0;
extern u32 D_800DC524;
extern Gfx D_00284F70[];
extern Gfx D_00284EE0[];
extern f32 D_801646F0, D_801646F4, D_801646F8, D_801646FC,
           D_80164700, D_80164704, D_80164708, D_8016470C, D_80164710;
extern f32 D_80150130, D_80150148, D_8015014C, D_80150150;


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
    u16 sp64[48];

    func_802A53A4();
    func_802A3E3C();
    if (D_80287550 != 0xFFFF) {
        func_80000D3C(0);
        if (D_80287554 >= 4) {
            D_800DC5C0 = 0;
            D_800DC524 = D_80287550;
        }
        D_80287554++;
        return;
    }
    func_8028150C();
    gSPSetGeometryMode(gDisplayListHead++, G_ZBUFFER | G_SHADE | G_CULL_BACK | G_SHADING_SMOOTH);
    guPerspective((Mtx*) &gGfxPool->buffer[8], &sp64[39], D_80150130, D_80150148, D_80150150, D_8015014C, 1.0f);
    gDPHalf1(gDisplayListHead++, sp64[39]);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->buffer[8]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    guLookAt((Mtx*) &gGfxPool->buffer[56], D_801646F0, D_801646F4, D_801646F8, D_801646FC, D_80164700, D_80164704, D_80164708, D_8016470C, D_80164710);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->buffer[56]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
    func_802B53C8(&sp64[6]);
    func_802B4FF8(&sp64[6], 0);
    gSPDisplayList(gDisplayListHead++, &D_00284F70);
    func_800212B4();
    gSPDisplayList(gDisplayListHead++, &D_00284EE0);
    // sp38 = &D_00284EE0;
    func_80281438();
    func_80058090(0);
    func_80021B0C();
    gSPDisplayList(gDisplayListHead++, &D_00284EE0);
    func_80093F10();
    func_80284CC0();
    func_80281C40();
    func_802A3E3C();
}
