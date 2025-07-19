#include <ultra64.h>
#include <macros.h>
#include <defines.h>

#include "code_800AF9B0.h"

#include "menu_items.h"
#include "memory.h"
#include "main.h"
#include "math_util.h"

/*** Data ***/
Ambient D_800E8680 = { {
    { 31, 31, 31 },
    0,
    { 31, 31, 31 },
    0,
} };

Light D_800E8688 = { {
    { 255, 255, 255 },
    0,
    { 255, 255, 255 },
    0,
    { 40, 40, 20 },
    0,
} };

/*** BSS ****/
s16 D_8018EDB0;
s16 D_8018EDB2;
s16 D_8018EDB4;
Vtx* D_8018EDB8;
Vtx* D_8018EDBC;

void func_800AF9B0(void) {
    D_8018EDB8 = (void*) get_next_available_memory_addr(480 * sizeof(Vtx));
    D_8018EDBC = (void*) get_next_available_memory_addr(480 * sizeof(Vtx));
}

// could be a normal vertex, not a color...
void func_800AF9E4(Vtx* arg0, s32 arg1, s32 arg2, s32 arg3, s16 arg4, s16 arg5, s32 arg6, s32 arg7) {
    s32 r, g, b;
    s32 i;

    for (i = 0; i < 4; i++) {
        (arg0 + i)->v.ob[0] = ((i % 2) * arg7) + arg6 - 504;
        if (i / 2 == 0) {
            (arg0 + i)->v.ob[1] = (arg2 * arg3) - 420;
        } else {
            (arg0 + i)->v.ob[1] = (arg2 * arg3) + arg3 - 420;
        }
        if (i % 2 == 0) {
            (arg0 + i)->v.ob[1] += (f32) SQ(arg1) * -0.07f;
        } else {
            (arg0 + i)->v.ob[1] += (f32) SQ(arg1 + 1) * -0.07f;
        }

        (arg0 + i)->v.cn[0] = 0;
        (arg0 + i)->v.cn[1] = 0;
        (arg0 + i)->v.cn[2] = 120;
        (arg0 + i)->v.cn[3] = 255;

        if (i % 2 == 0) {
            (arg0 + i)->v.ob[2] = arg4;
        } else {
            (arg0 + i)->v.ob[2] = arg5;
        }
    }

    if ((((arg1 / 2) + (arg2 / 2)) & 1) == 0) {
        r = g = b = 0;
    } else {
        r = g = b = 255;
    }

    gDPSetPrimColor(gDisplayListHead++, 0, 0, r, g, b, 255);
    gDPPipeSync(gDisplayListHead++);
    gSPVertex(gDisplayListHead++, VIRTUAL_TO_PHYSICAL2(arg0), 4, 0);
    gSP1Triangle(gDisplayListHead++, 1, 2, 0, 0);
    gSP1Triangle(gDisplayListHead++, 3, 2, 1, 0);
}

void func_800AFC54(Vtx* vtx, s32 a, s32 b, s32 c, Vec3s out) {
    s32 varA0;
    s32 varA2;
    s32 varA4;
    s32 varB0;
    s32 varB2;
    s32 varB4;
    s32 varC0;
    s32 varC2;
    s32 varC4;
    f32 dx;
    f32 dy;
    f32 dz;
    f32 length;

    varA0 = (vtx + a)->v.ob[0];
    varA2 = (vtx + a)->v.ob[1];
    varA4 = (vtx + a)->v.ob[2];

    varB0 = (vtx + b)->v.ob[0];
    varB2 = (vtx + b)->v.ob[1];
    varB4 = (vtx + b)->v.ob[2];

    varC0 = (vtx + c)->v.ob[0];
    varC2 = (vtx + c)->v.ob[1];
    varC4 = (vtx + c)->v.ob[2];

    dx = ((varB2 - varA2) * (varC4 - varB4)) - ((varB4 - varA4) * (varC2 - varB2));
    dy = ((varB4 - varA4) * (varC0 - varB0)) - ((varB0 - varA0) * (varC4 - varB4));
    dz = ((varB0 - varA0) * (varC2 - varB2)) - ((varB2 - varA2) * (varC0 - varB0));

    length = sqrtf((dx * dx) + (dy * dy) + (dz * dz));

    if (length < 0.001) {
        length = 0.001;
    }
    length = 1.0 / length;
    out[0] = (dx * length) * 120.0f;
    out[1] = (dy * length) * 120.0f;
    out[2] = (dz * length) * 120.0f;
}

void func_800AFE00(Vtx* arg0, Vec3s* arg1, s32 arg2, s32 arg3) {
    s32 idx1;
    s32 idx2;
    s32 i;
    Vtx* vtx;
    s16 sp14[2][3];

    idx1 = (arg2 == 0) ? 0 : arg2 - 1;
    idx2 = (arg2 == arg3) ? arg3 : arg2 + 1;

    for (i = 0; i < 3; i++) {
        sp14[0][i] = (arg1[idx1][i] + arg1[arg2][i]) / 2;
        sp14[1][i] = (arg1[idx2][i] + arg1[arg2][i]) / 2;
    }

    for (idx2 = 0; idx2 < 0x1E0; idx2 += 0x30) {
        for (i = 0; i < 4; i++) {
            vtx = &arg0[i];
            vtx[idx2 / 1].v.cn[0] = sp14[i % 2][0];
            vtx[idx2 / 1].v.cn[1] = sp14[i % 2][1];
            vtx[idx2 / 1].v.cn[2] = sp14[i % 2][2];
        }
    }
}

void func_800AFF58(Vtx* arg0) {
    UNUSED u32 pad88[26];
    s32 i, j;
    s16 sp40[12][3];

    for (i = 0, j = 0; i < ARRAY_COUNT(sp40); i++, j += 4) {
        func_800AFC54(&arg0[j], 1, 2, 0, sp40[i]);
    }

    for (i = 0, j = 0; i < ARRAY_COUNT(sp40); i++, j += 4) {
        func_800AFE00(&arg0[j], sp40, i, 11);
    }
}

void func_800B0004(void) {
    Vtx* vtxs;
    s32 res1;
    s32 res2;
    UNUSED u32 pad[0x4];
    s32 i;
    s32 j;
    s32 k;
    s16 idx;
    idx = 4;
    gSPLight(gDisplayListHead++, VIRTUAL_TO_PHYSICAL2(&D_800E8688), LIGHT_1);
    gSPLight(gDisplayListHead++, VIRTUAL_TO_PHYSICAL2(&D_800E8680), LIGHT_2);
    gSPNumLights(gDisplayListHead++, NUMLIGHTS_1);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADE | G_SHADING_SMOOTH);
    gDPSetCombineLERP(gDisplayListHead++, PRIMITIVE, 0, SHADE, 0, 0, 0, 0, SHADE, PRIMITIVE, 0, SHADE, 0, 0, 0, 0,
                      SHADE);
    gSPClearGeometryMode(gDisplayListHead++, G_CULL_BACK);
    gSPSetGeometryMode(gDisplayListHead++, G_LIGHTING);
    vtxs = (D_8018EDB4 % 2) ? (D_8018EDB8) : (D_8018EDBC);
    D_8018EDB2 = 0x9C0;
    for (i = 0; i < 10; i++) {
        for (k = 0, j = 0; j < 12; j++, k += 84) {
            res1 = ((sins(D_8018EDB0 - (j * D_8018EDB2)) * 84.0f) * j) * 0.18f;
            res2 = ((sins(D_8018EDB0 - ((j + 1) * D_8018EDB2)) * 84.0f) * (j + 1)) * 0.18f;
            func_800AF9E4(&(&vtxs[j * idx])[i * 48], j, i, 84, res1, res2, k, 84);
        }
    }

    func_800AFF58(vtxs);
    D_8018EDB0 += D_8018EDB2;
    ++D_8018EDB4;
    gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
    gSPNumLights(gDisplayListHead++, NUMLIGHTS_1);
    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
}
