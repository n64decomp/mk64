#include <ultra64.h>
#include <macros.h>
#include <defines.h>
#include "global.h"

#include "code_800AF9B0.h"

#include "code_80091750.h"
#include "memory.h"
#include "main.h"
#include "math_util.h"

/*** Data ***/
Ambient D_800E8680 = {{
    {31, 31, 31}, 0,
    {31, 31, 31}, 0,
}};

Light D_800E8688 = {{
    {255, 255, 255}, 0,
    {255, 255, 255}, 0,
    { 40,  40,  20}, 0,
}};

/*** BSS ****/
s16 D_8018EDB0;
s16 D_8018EDB2;
s16 D_8018EDB4;
Vtx *D_8018EDB8;
Vtx *D_8018EDBC;

/*** utils **/
#define SQ(x) ((x) * (x))

void func_800AF9B0(void) {
    D_8018EDB8 = (void *)func_802A7B70(480 * sizeof(Vtx));
    D_8018EDBC = (void *)func_802A7B70(480 * sizeof(Vtx));
}

// could be a normal vertex, not a color...
void func_800AF9E4(Vtx *arg0, s32 arg1, s32 arg2, s32 arg3, s16 arg4, s16 arg5, s32 arg6, s32 arg7) {
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
            (arg0 + i)->v.ob[1] += (f32)SQ(arg1) * -0.07f;
        } else {
            (arg0 + i)->v.ob[1] += (f32)SQ(arg1 + 1) * -0.07f;
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

void func_800AFC54(Vtx *arg0, s32 arg1, s32 arg2, s32 arg3, s16 arg4[3]);
#ifdef NON_MATCHING
// guess on Vtx type?
void func_800AFC54(Vtx *arg0, s32 arg1, s32 arg2, s32 arg3, s16 arg4[3]) {
    Vtx *a1, *a2, *a3;
    s32 saved1, saved2, saved3;
    f32 res;
    s32 a, b, c, d, e, f;
    f32 f14, f16, f18;

    a1 = &arg0[arg1];
    a2 = &arg0[arg2];
    a3 = &arg0[arg3];   

    saved1 = a2->v.ob[0];
    saved2 = a2->v.ob[1];
    saved3 = a2->v.ob[2];


    a = saved2 - a1->v.ob[1];
    e = saved3 - a1->v.ob[2];
    d = a3->v.ob[1] - saved2;
    b = a3->v.ob[2] - saved3;
    f = a3->v.ob[0] - saved1;
    c = saved1 - a1->v.ob[0];


    f14 = ((a) * (b)) - ((e) * (d));
    f16 = ((e) * (f)) - ((c) * (b));
    f18 = ((c) * (d)) - ((a) * (f));


    res = sqrtf(SQ(f14) + SQ(f16) + SQ(f18));

    if (res < 0.001) {
        res = 0.001;
    }

    arg4[0] = f14 * (f32)(1.0 / res) * 120.0f;
    arg4[1] = f16 * (f32)(1.0 / res) * 120.0f;
    arg4[2] = f18 * (f32)(1.0 / res) * 120.0f;
}
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800AFC54.s")
#endif

void func_800AFE00(Vtx *arg0, s16 (*arg1)[3], s32 arg2, s32 arg3);
#ifdef MIPS_TO_C
// guessing on the Vtx kind again
void func_800AFE00(Vtx *arg0, s16 (*arg1)[3], s32 arg2, s32 arg3) {
    s32 idx1; // v0
    s32 idx2; // v0
    s16 sp14[6];
    Vtx *sec, *third, *fourth;
    s32 i;

    if (arg2 == 0) {
        idx1 = 0;
    } else {
        idx1 = arg2 - 1;
    }

    if (arg2 == arg3) {
        idx2 = arg3;
    } else {
        idx2 = arg2 + 1;
    }

    for (i = 0; i < 3; i++) {
        sp14[i + 0] = (arg1[arg2][i] + arg1[idx1][i]) / 2;
        sp14[i + 3] = (arg1[arg2][i] + arg1[idx2][i]) / 2;
        // L800AFEB4
    }


    i = 0;
    sec = arg0 + 1;
    third = arg0 + 2;
    fourth = arg0 + 3;
    
    while (i != 480) {
        (arg0 + i)->v.cn[0] = sp14[0];
        (arg0 + i)->v.cn[1] = sp14[1];
        (arg0 + i)->v.cn[2] = sp14[2];
        (sec + i)->v.cn[0] = sp14[3];
        (sec + i)->v.cn[1] = sp14[4];
        (sec + i)->v.cn[2] = sp14[5];
        (third + i)->v.cn[0] = sp14[0];
        (third + i)->v.cn[1] = sp14[1];
        (third + i)->v.cn[2] = sp14[2];
        (fourth + i)->v.cn[0] = sp14[3];
        (fourth + i)->v.cn[1] = sp14[4];
        (fourth + i)->v.cn[2] = sp14[5];

        i += 3 * sizeof(Vtx);
        i++;i--;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800AFE00.s")
#endif

void func_800AFF58(Vtx *arg0) {
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

#ifdef NON_MATCHING
void func_800B0004(void) {
    s32 i, j;
    Vtx *spBC;
    UNUSED u32 pad[0x10];
    u32 sp64; // offset?

    gSPLight(gDisplayListHead++, VIRTUAL_TO_PHYSICAL2(&D_800E8688), LIGHT_1);
    gSPLight(gDisplayListHead++, VIRTUAL_TO_PHYSICAL2(&D_800E8680), LIGHT_2);
    gSPNumLights(gDisplayListHead++, NUMLIGHTS_1);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADE | G_SHADING_SMOOTH);
    gDPSetCombineLERP(gDisplayListHead++, PRIMITIVE, 0, SHADE, 0, 0, 0, 0, SHADE, PRIMITIVE, 0, SHADE, 0, 0, 0, 0, SHADE);
    gSPClearGeometryMode(gDisplayListHead++, G_CULL_BACK);
    gSPSetGeometryMode(gDisplayListHead++, G_LIGHTING);

    spBC = D_8018EDB4 % 2 ? (void *)D_8018EDB8 : (void *)D_8018EDBC;

    D_8018EDB2 = 0x9C0;
    
    for (i = 0, sp64 = 0; i < 10; i++, sp64 += 0x30) {
        // L800B018C
        for (j = 0; j < 12; j++) {
            f32 res1, res2;
            // L800B01A0
            res1 = sins((u16)(D_8018EDB0 - (j * D_8018EDB2))) * 84.0f * (f32)j * 0.18f;
            res2 = sins((u16)(D_8018EDB0 - ((j+1) * D_8018EDB2))) * 84.0f * (f32)(j+1) * 0.18f;
            func_800AF9E4(
                spBC + j + sp64,
                j,
                i,
                84,
                res1,
                res2,
                j * 84,
                84
            );
        }
    }
    // will probably have to retype this function
    func_800AFF58((void *)spBC);
    D_8018EDB0 += D_8018EDB2;
    D_8018EDB4 += 1;

    gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
    gSPNumLights(gDisplayListHead++, NUMLIGHTS_1);
    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
}
#else
GLOBAL_ASM("asm/non_matchings/menus/func_800B0004.s")
#endif
