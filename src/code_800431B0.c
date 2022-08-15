#include <ultra64.h>
#include <macros.h>
#include <defines.h>
#include <common_structs.h>
#include <actor_types.h>
#include <config.h>
#include "math_util_2.h"
#include "code_8001F980.h"
#include "code_800431B0.h"
#include "code_80071F00.h"

void func_800431B0(Vec3f arg0, Vec3s arg1, f32 arg2, s32 arg3) {
    func_80042E00(arg0, arg1, arg2);
    gSPVertex(gDisplayListHead++, arg3, 4, 0);
    gSPDisplayList(gDisplayListHead++, D_0D006940);
}

void func_80043220(Vec3f arg0, Vec3s arg1, f32 arg2, s32 arg3) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, &D_0D0077A0);
    gSPDisplayList(gDisplayListHead++, arg3);
}

UNUSED void func_800433288(Vec3f arg0, Vec3s arg1, f32 arg2, s32 arg3) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D0077A0);
    gSPClearGeometryMode(gDisplayListHead++, G_CULL_BOTH);
    gSPDisplayList(gDisplayListHead++, arg3);
    gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
}

void func_80043328(Vec3f arg0, Vec3s arg1, f32 arg2, s32 arg3) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D0077D0);
    gSPDisplayList(gDisplayListHead++, arg3);
}

UNUSED void *func_80043390(Vec3f arg0, Vec3s arg1, f32 arg2, s32 arg3) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D0077F8);
    gSPDisplayList(gDisplayListHead++, arg3);
}

UNUSED void func_800433F8(Vec3f arg0, Vec3s arg1, f32 arg2, s32 arg3) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007828);
    gSPDisplayList(gDisplayListHead++, arg3);
}

UNUSED void func_80043460(Vec3f arg0, Vec3s arg1, f32 arg2, s32 arg3) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007828);
    gSPClearGeometryMode(gDisplayListHead++, G_CULL_BOTH);
    gSPDisplayList(gDisplayListHead++, arg3);
    gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
}

void func_80043500(Vec3f arg0, Vec3s arg1, f32 arg2, s32 arg3) {

    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007850);
    gSPClearGeometryMode(gDisplayListHead++, G_CULL_BOTH);
    gSPDisplayList(gDisplayListHead++, arg3);
    gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
}

void func_800435A0(s32 arg0, Vec3su arg1, f32 arg2, Gfx *arg3, s32 arg4) {
    func_80042F70(arg0, arg1, arg2);

    gSPDisplayList(gDisplayListHead++, D_0D007878);
    gDPSetPrimColor(gDisplayListHead++, 0, 0, 0xFF, 0xFF, 0xFF, arg4);
    gSPClearGeometryMode(gDisplayListHead++, G_CULL_BOTH);
    gSPDisplayList(gDisplayListHead++, arg3);
    gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
}

UNUSED void func_80043668(Vec3f arg0, Vec3s arg1, f32 arg2, Vtx *arg3) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D0078A0);
    gSPDisplayList(gDisplayListHead++, arg3);
}

UNUSED void func_800436D0(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D0078A0);
    gSPVertex(gDisplayListHead++, arg4, 3, 0);
    gSPDisplayList(gDisplayListHead++, D_0D006930);

}

UNUSED void func_80043764(s32 arg0, s32 arg1, u16 arg2, f32 arg3, Vtx *arg4) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D0078A0);
    gSPVertex(gDisplayListHead++, arg4, 4, 0);
    gSPDisplayList(gDisplayListHead++, D_0D006940);
}

UNUSED void func_800437F8(s32 arg0, s32 arg1, u16 arg2, f32 arg3, struct Vtx4_800431B0 *arg4, s32 arg5) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D0078A0);

    gDPSetRenderMode(gDisplayListHead++, G_RM_CLD_SURF, G_RM_CLD_SURF2);
    arg4->vtx[0].v.cn[3] = arg5;
    arg4->vtx[1].v.cn[3] = arg5;
    arg4->vtx[2].v.cn[3] = arg5;
    arg4->vtx[3].v.cn[3] = arg5;
    gSPVertex(gDisplayListHead++, arg4, 4, 0);
    gSPDisplayList(gDisplayListHead++, D_0D006940);
}

UNUSED void func_800438C4(s32 arg0, s32 arg1, u16 arg2, f32 arg3, struct Vtx4_800431B0 *arg4, s32 arg5) {
    arg4->vtx[1].v.ob[0] = arg5;
    arg4->vtx[2].v.ob[0] = arg5;
  func_80042330(arg0, arg1, arg2, arg3);
  gSPDisplayList(gDisplayListHead++, D_0D0078A0);
  gDPSetRenderMode(gDisplayListHead++, G_RM_CLD_SURF, G_RM_CLD_SURF2);
  gSPVertex(gDisplayListHead++, arg4, 4, 0);
  gSPDisplayList(gDisplayListHead++, D_0D006940);

}

UNUSED void func_8004398C(s32 arg0, s32 arg1, u16 arg2, f32 arg3, struct Vtx4_800431B0 *arg4, s32 arg5) {
    arg4->vtx[0].v.ob[0] = arg5;
    arg4->vtx[3].v.ob[0] = arg5;
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D0078A0);
    gDPSetRenderMode(gDisplayListHead++, G_RM_CLD_SURF, G_RM_CLD_SURF2);
    gSPVertex(gDisplayListHead++, arg4, 4, 0);
    gSPDisplayList(gDisplayListHead++, D_0D006940);
}
    
s32 func_80043A54(s32 arg0) {
    s32 temp_a1;
    s32 phi_v0;
    s32 phi_v1 = 0;

    phi_v0 = arg0;
    do {
        phi_v1++;
        temp_a1 = phi_v0 / 2;
        phi_v0 = temp_a1;
    } while (temp_a1 != 1);
    return phi_v1;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307


void func_80043A84(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_t4;
    s32 temp_t6;
    void *temp_a3;
    void *temp_t3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    s32 phi_t1;
    s32 phi_t2;
    s32 phi_a0;

    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk4 = arg0;
    temp_v0->unk0 = 0xFD180000;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk4 = 0x7080200;
    temp_v0_2->unk0 = 0xF5180000;
    temp_t3 = gDisplayListHead;
    gDisplayListHead = temp_t3 + 8;
    temp_t3->unk4 = 0;
    temp_t3->unk0 = 0xE6000000;
    temp_a3 = gDisplayListHead;
    temp_t4 = (arg1 * arg2) - 1;
    gDisplayListHead = temp_a3 + 8;
    temp_a3->unk0 = 0xF3000000;
    if (temp_t4 < 0x7FF) {
        phi_a0 = temp_t4;
    } else {
        phi_a0 = 0x7FF;
    }
    temp_t6 = (arg1 * 4) / 8;
    if (temp_t6 <= 0) {
        phi_t1 = 1;
    } else {
        phi_t1 = temp_t6;
    }
    if (temp_t6 <= 0) {
        phi_t2 = 1;
    } else {
        phi_t2 = temp_t6;
    }
    temp_a3->unk4 = (((phi_t1 + 0x7FF) / phi_t2) & 0xFFF) | 0x7000000 | ((phi_a0 & 0xFFF) << 0xC);
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk4 = 0;
    temp_v0_3->unk0 = 0xE7000000;
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk0 = (((((arg1 * 2) + 7) >> 3) & 0x1FF) << 9) | 0xF5180000;
    temp_v0_4->unk4 = 0x80200;
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk0 = 0xF2000000;
    temp_v0_5->unk4 = ((((arg1 - 1) * 4) & 0xFFF) << 0xC) | (((arg2 - 1) * 4) & 0xFFF);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80043A84.s")
#endif

void func_80043C28(s8 *image, s32 width, s32 arg2) {
    gDPSetTextureImage(gDisplayListHead++, G_IM_FMT_RGBA, G_IM_SIZ_32b, width, image);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_RGBA, G_IM_SIZ_32b, (((width * 2) + 7) >> 3), 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gDisplayListHead++);
    
    gDPLoadTile(gDisplayListHead++, G_TX_LOADTILE, 0, 0, (width - 1) << 0x2, (arg2 - 1) << 0x2);
    gDPPipeSync(gDisplayListHead++);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_RGBA, G_IM_SIZ_32b, (((width * 2) + 7) >> 3), 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(gDisplayListHead++, G_TX_RENDERTILE, 0,  0, (width - 1) << 0x2, (arg2 - 1) << 0x2);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307


void func_80043D50(s32 arg0, s32 arg1, s32 arg2) {
    void *sp4;
    s32 temp_t1;
    s32 temp_t4;
    s32 temp_v0_4;
    void *temp_a3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    s32 phi_t2;
    s32 phi_t3;
    s32 phi_a0;

    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk4 = arg0;
    temp_v0->unk0 = 0xFD100000;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk4 = 0x70C0300;
    temp_v0_2->unk0 = 0xF5100000;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk4 = 0;
    temp_v0_3->unk0 = 0xE6000000;
    temp_a3 = gDisplayListHead;
    temp_t4 = (arg1 * arg2) - 1;
    gDisplayListHead = temp_a3 + 8;
    temp_a3->unk0 = 0xF3000000;
    if (temp_t4 < 0x7FF) {
        phi_a0 = temp_t4;
    } else {
        phi_a0 = 0x7FF;
    }
    temp_t1 = arg1 * 2;
    temp_v0_4 = temp_t1 / 8;
    phi_t2 = temp_v0_4;
    if (temp_v0_4 <= 0) {
        phi_t2 = 1;
    }
    if (temp_v0_4 <= 0) {
        phi_t3 = 1;
    } else {
        phi_t3 = temp_v0_4;
    }
    temp_a3->unk4 = (((phi_t2 + 0x7FF) / phi_t3) & 0xFFF) | 0x7000000 | ((phi_a0 & 0xFFF) << 0xC);
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk4 = 0;
    temp_v0_5->unk0 = 0xE7000000;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->unk0 = ((((temp_t1 + 7) >> 3) & 0x1FF) << 9) | 0xF5100000;
    temp_v0_6->unk4 = 0xC0300;
    temp_v0_7 = gDisplayListHead;
    gDisplayListHead = temp_v0_7 + 8;
    sp4 = temp_v0_7;
    temp_v0_7->unk0 = 0xF2000000;
    temp_v0_7->unk4 = ((((arg1 - 1) * 4) & 0xFFF) << 0xC) | (((arg2 - 1) * 4) & 0xFFF);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80043D50.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307


void func_80043EF8(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    void *sp18;
    void *sp14;
    s32 sp0;
    s32 temp_a3;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_v0_3;
    void *temp_t1;
    void *temp_t5;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    s32 phi_t3;
    s32 phi_t4;
    s32 phi_a0;

    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk4 = arg0;
    temp_v0->unk0 = 0xFD100000;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_t9 = (arg3 & 0xF) * 0x10;
    temp_v0_2->unk4 = temp_t9 | 0x7080100;
    temp_v0_2->unk0 = 0xF5100000;
    temp_t5 = gDisplayListHead;
    gDisplayListHead = temp_t5 + 8;
    temp_t5->unk4 = 0;
    temp_t5->unk0 = 0xE6000000;
    temp_t1 = gDisplayListHead;
    gDisplayListHead = temp_t1 + 8;
    temp_t8 = (arg1 * arg2) - 1;
    temp_t1->unk0 = 0xF3000000;
    sp0 = temp_t8;
    if (temp_t8 < 0x7FF) {
        phi_a0 = temp_t8;
    } else {
        phi_a0 = 0x7FF;
    }
    temp_a3 = arg1 * 2;
    temp_v0_3 = temp_a3 / 8;
    phi_t3 = temp_v0_3;
    if (temp_v0_3 <= 0) {
        phi_t3 = 1;
    }
    if (temp_v0_3 <= 0) {
        phi_t4 = 1;
    } else {
        phi_t4 = temp_v0_3;
    }
    temp_t1->unk4 = (((phi_t3 + 0x7FF) / phi_t4) & 0xFFF) | 0x7000000 | ((phi_a0 & 0xFFF) << 0xC);
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk4 = 0;
    temp_v0_4->unk0 = 0xE7000000;
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    sp18 = temp_v0_5;
    temp_v0_5->unk0 = ((((temp_a3 + 7) >> 3) & 0x1FF) << 9) | 0xF5100000;
    temp_v0_5->unk4 = temp_t9 | 0x80100;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    sp14 = temp_v0_6;
    temp_v0_6->unk0 = 0xF2000000;
    temp_v0_6->unk4 = ((((arg1 - 1) * 4) & 0xFFF) << 0xC) | (((arg2 - 1) * 4) & 0xFFF);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80043EF8.s")
#endif

void func_800440B8(s8 *image, s32 width, s32 arg2) {
    gDPSetTextureImage(gDisplayListHead++, G_IM_FMT_RGBA, G_IM_SIZ_16b, width, image);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_RGBA, G_IM_SIZ_16b, (((width * 2) + 7) >> 3), 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gDisplayListHead++);
    
    gDPLoadTile(gDisplayListHead++, G_TX_LOADTILE, 0, 0, (width - 1) << 0x2, (arg2 - 1) << 0x2);
    gDPPipeSync(gDisplayListHead++);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_RGBA, G_IM_SIZ_16b, (((width * 2) + 7) >> 3), 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(gDisplayListHead++, G_TX_RENDERTILE, 0,  0, (width - 1) << 0x2, (arg2 - 1) << 0x2);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307


void func_800441E0(s32 arg0, s32 arg1, s32 arg2) {
    void *sp4;
    s32 temp_t1;
    s32 temp_t4;
    s32 temp_v0_4;
    void *temp_a3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    s32 phi_t2;
    s32 phi_t3;
    s32 phi_a0;

    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk4 = arg0;
    temp_v0->unk0 = 0xFD700000;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk4 = 0x7080200;
    temp_v0_2->unk0 = 0xF5700000;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk4 = 0;
    temp_v0_3->unk0 = 0xE6000000;
    temp_a3 = gDisplayListHead;
    temp_t4 = (arg1 * arg2) - 1;
    gDisplayListHead = temp_a3 + 8;
    temp_a3->unk0 = 0xF3000000;
    if (temp_t4 < 0x7FF) {
        phi_a0 = temp_t4;
    } else {
        phi_a0 = 0x7FF;
    }
    temp_t1 = arg1 * 2;
    temp_v0_4 = temp_t1 / 8;
    phi_t2 = temp_v0_4;
    if (temp_v0_4 <= 0) {
        phi_t2 = 1;
    }
    if (temp_v0_4 <= 0) {
        phi_t3 = 1;
    } else {
        phi_t3 = temp_v0_4;
    }
    temp_a3->unk4 = (((phi_t2 + 0x7FF) / phi_t3) & 0xFFF) | 0x7000000 | ((phi_a0 & 0xFFF) << 0xC);
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk4 = 0;
    temp_v0_5->unk0 = 0xE7000000;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->unk0 = ((((temp_t1 + 7) >> 3) & 0x1FF) << 9) | 0xF5700000;
    temp_v0_6->unk4 = 0x80200;
    temp_v0_7 = gDisplayListHead;
    gDisplayListHead = temp_v0_7 + 8;
    sp4 = temp_v0_7;
    temp_v0_7->unk0 = 0xF2000000;
    temp_v0_7->unk4 = ((((arg1 - 1) * 4) & 0xFFF) << 0xC) | (((arg2 - 1) * 4) & 0xFFF);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800441E0.s")
#endif

void func_80044388(s8 *image, s32 width, s32 arg2) {

    gDPSetTextureImage(gDisplayListHead++, G_IM_FMT_IA, G_IM_SIZ_16b, width, image);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_IA, G_IM_SIZ_16b, (((width * 2) + 7) >> 3), 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gDisplayListHead++);
    gDPLoadTile(gDisplayListHead++, G_TX_LOADTILE, 0, 0, (width - 1) << 0x2, (arg2 - 1) << 0x2);
    gDPPipeSync(gDisplayListHead++);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_IA, G_IM_SIZ_16b, (((width * 2) + 7) >> 3), 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(gDisplayListHead++, G_TX_RENDERTILE, 0, 0, (width - 1) << 0x2, (arg2 - 1) << 0x2);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307


void func_800444B0(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_t3;
    s32 temp_v0_4;
    void *temp_a3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    s32 phi_t1;
    s32 phi_t2;
    s32 phi_a0;

    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk4 = arg0;
    temp_v0->unk0 = 0xFD700000;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk0 = 0xF5700000;
    temp_v0_2->unk4 = 0x7080200;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk4 = 0;
    temp_v0_3->unk0 = 0xE6000000;
    temp_a3 = gDisplayListHead;
    temp_t3 = (((arg1 * arg2) + 1) >> 1) - 1;
    gDisplayListHead = temp_a3 + 8;
    temp_a3->unk0 = 0xF3000000;
    if (temp_t3 < 0x7FF) {
        phi_a0 = temp_t3;
    } else {
        phi_a0 = 0x7FF;
    }
    temp_v0_4 = arg1 / 8;
    phi_t1 = temp_v0_4;
    if (temp_v0_4 <= 0) {
        phi_t1 = 1;
    }
    if (temp_v0_4 <= 0) {
        phi_t2 = 1;
    } else {
        phi_t2 = temp_v0_4;
    }
    temp_a3->unk4 = (((phi_t1 + 0x7FF) / phi_t2) & 0xFFF) | 0x7000000 | ((phi_a0 & 0xFFF) << 0xC);
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk4 = 0;
    temp_v0_5->unk0 = 0xE7000000;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->unk4 = 0x80200;
    temp_v0_6->unk0 = ((((arg1 + 7) >> 3) & 0x1FF) << 9) | 0xF5680000;
    temp_v0_7 = gDisplayListHead;
    gDisplayListHead = temp_v0_7 + 8;
    temp_v0_7->unk0 = 0xF2000000;
    temp_v0_7->unk4 = ((((arg1 - 1) * 4) & 0xFFF) << 0xC) | (((arg2 - 1) * 4) & 0xFFF);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800444B0.s")
#endif

void func_80044658(s8 *image, s32 width, s32 arg2) {
    gDPSetTextureImage(gDisplayListHead++, G_IM_FMT_IA, G_IM_SIZ_8b, width, image);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_IA, G_IM_SIZ_8b, (((width) + 7) >> 3), 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gDisplayListHead++);
    gDPLoadTile(gDisplayListHead++, G_TX_LOADTILE, 0, 0, (width - 1) << 0x2, (arg2 - 1) << 0x2);
    gDPPipeSync(gDisplayListHead++);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_IA, G_IM_SIZ_8b, (((width) + 7) >> 3), 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(gDisplayListHead++, G_TX_RENDERTILE, 0, 0, (width - 1) << 0x2, (arg2 - 1) << 0x2);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307


void func_8004477C(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_t3;
    s32 temp_v0_4;
    void *temp_a3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    s32 phi_t1;
    s32 phi_t2;
    s32 phi_a0;

    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk4 = arg0;
    temp_v0->unk0 = 0xFD900000;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk0 = 0xF5900000;
    temp_v0_2->unk4 = 0x7080200;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk4 = 0;
    temp_v0_3->unk0 = 0xE6000000;
    temp_a3 = gDisplayListHead;
    temp_t3 = (((arg1 * arg2) + 1) >> 1) - 1;
    gDisplayListHead = temp_a3 + 8;
    temp_a3->unk0 = 0xF3000000;
    if (temp_t3 < 0x7FF) {
        phi_a0 = temp_t3;
    } else {
        phi_a0 = 0x7FF;
    }
    temp_v0_4 = arg1 / 8;
    phi_t1 = temp_v0_4;
    if (temp_v0_4 <= 0) {
        phi_t1 = 1;
    }
    if (temp_v0_4 <= 0) {
        phi_t2 = 1;
    } else {
        phi_t2 = temp_v0_4;
    }
    temp_a3->unk4 = (((phi_t1 + 0x7FF) / phi_t2) & 0xFFF) | 0x7000000 | ((phi_a0 & 0xFFF) << 0xC);
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk4 = 0;
    temp_v0_5->unk0 = 0xE7000000;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->unk4 = 0x80200;
    temp_v0_6->unk0 = ((((arg1 + 7) >> 3) & 0x1FF) << 9) | 0xF5880000;
    temp_v0_7 = gDisplayListHead;
    gDisplayListHead = temp_v0_7 + 8;
    temp_v0_7->unk0 = 0xF2000000;
    temp_v0_7->unk4 = ((((arg1 - 1) * 4) & 0xFFF) << 0xC) | (((arg2 - 1) * 4) & 0xFFF);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004477C.s")
#endif

#ifdef NON_MATCHING

void func_80044924(s8 *image, s32 width, s32 arg2) {
   // s32 a;
    s32 temp_t3;
    
    gDPSetTextureImage(gDisplayListHead++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, image);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gDisplayListHead++);

    //temp_t3 = (((width * arg2) + 3) >> 2) - 1;
/*
    if (temp_t3 < 0x7FF) {
        a = temp_t3;
    } else {
        a = 0x7FF;
    }
*/
    temp_t3 = (((width * arg2) + 3) >> 2) - 1;
    gDPLoadBlock(gDisplayListHead++, G_TX_RENDERTILE, 0, 0, MIN(temp_t3, 0x7FF), ((width / 16) + 0x7FF) / (width / 16));
    gDPPipeSync(gDisplayListHead++);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_IA, G_IM_SIZ_4b, ((((width * 2) + 7) >> 3) << 9), 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(gDisplayListHead++, G_TX_RENDERTILE, 0, 0, (width - 1) << 0x2, (arg2 - 1) << 0x2);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80044924.s")
#endif
//gDPSetTextureImage(gDisplayListHead++, G_IM_FMT_IA, G_IM_SIZ_8b, 1, 0x00000000);
//gDPLoadTile(gDisplayListHead++, G_TX_RENDERTILE, 0, 0, 0, 0);

#ifdef NON_MATCHING
UNUSED void func_80044AB8(s8 *image, s32 width, s32 arg2) {
    gDPSetTextureImage(gDisplayListHead++, G_IM_FMT_IA, G_IM_SIZ_8b, width, image);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_IA, G_IM_SIZ_8b, (((width >> 1) + 7) >> 3), 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gDisplayListHead++);
    gDPLoadTile(gDisplayListHead++, G_TX_LOADTILE, 0, 0, ((width - 1) * 2) << 0x2, (arg2 - 1) << 0x2);
    gDPPipeSync(gDisplayListHead++);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_IA, G_IM_SIZ_4b, (((width >> 1) + 7) >> 3), 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(gDisplayListHead++, G_TX_RENDERTILE, 0, 0, ((width - 1) * 2) << 0x2, (arg2 - 1) << 0x2);
}
#else
//gDPSetTile(gDisplayListHead++, G_IM_FMT_IA, G_IM_SIZ_4b, 0, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80044AB8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307


void func_80044BF8(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_t3;
    s32 temp_v0_4;
    void *temp_a3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    s32 phi_t1;
    s32 phi_t2;
    s32 phi_a0;

    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk4 = arg0;
    temp_v0->unk0 = 0xFD900000;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk0 = 0xF5900000;
    temp_v0_2->unk4 = 0x7080200;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk4 = 0;
    temp_v0_3->unk0 = 0xE6000000;
    temp_a3 = gDisplayListHead;
    temp_t3 = (((arg1 * arg2) + 1) >> 1) - 1;
    gDisplayListHead = temp_a3 + 8;
    temp_a3->unk0 = 0xF3000000;
    if (temp_t3 < 0x7FF) {
        phi_a0 = temp_t3;
    } else {
        phi_a0 = 0x7FF;
    }
    temp_v0_4 = arg1 / 8;
    phi_t1 = temp_v0_4;
    if (temp_v0_4 <= 0) {
        phi_t1 = 1;
    }
    if (temp_v0_4 <= 0) {
        phi_t2 = 1;
    } else {
        phi_t2 = temp_v0_4;
    }
    temp_a3->unk4 = (((phi_t1 + 0x7FF) / phi_t2) & 0xFFF) | 0x7000000 | ((phi_a0 & 0xFFF) << 0xC);
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk4 = 0;
    temp_v0_5->unk0 = 0xE7000000;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->unk4 = 0x80200;
    temp_v0_6->unk0 = ((((arg1 + 7) >> 3) & 0x1FF) << 9) | 0xF5880000;
    temp_v0_7 = gDisplayListHead;
    gDisplayListHead = temp_v0_7 + 8;
    temp_v0_7->unk0 = 0xF2000000;
    temp_v0_7->unk4 = ((((arg1 - 1) * 4) & 0xFFF) << 0xC) | (((arg2 - 1) * 4) & 0xFFF);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80044BF8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307


void func_80044DA0(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_t0;
    s32 temp_t3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    s32 phi_a0;

    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk0 = 0xFD900000;
    temp_v0->unk4 = arg0;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk0 = 0xF5900000;
    temp_v0_2->unk4 = 0x7080200;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk0 = 0xE6000000;
    temp_v0_3->unk4 = 0;
    temp_v0_4 = gDisplayListHead;
    temp_t3 = (((arg1 * arg2) + 3) >> 2) - 1;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk0 = 0xF3000000;
    if (temp_t3 < 0x7FF) {
        phi_a0 = temp_t3;
    } else {
        phi_a0 = 0x7FF;
    }
    temp_t0 = arg1 / 0x10;
    temp_v0_4->unk4 = ((phi_a0 & 0xFFF) << 0xC) | 0x7000000 | (((temp_t0 + 0x7FF) / temp_t0) & 0xFFF);
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk0 = 0xE7000000;
    temp_v0_5->unk4 = 0;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->unk4 = 0x80200;
    temp_v0_6->unk0 = (((((arg1 >> 1) + 7) >> 3) & 0x1FF) << 9) | 0xF5800000;
    temp_v0_7 = gDisplayListHead;
    gDisplayListHead = temp_v0_7 + 8;
    temp_v0_7->unk0 = 0xF2000000;
    temp_v0_7->unk4 = ((((arg1 - 1) * 4) & 0xFFF) << 0xC) | (((arg2 - 1) * 4) & 0xFFF);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80044DA0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307


void func_80044F34(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_t0;
    s32 temp_t3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    s32 phi_a0;

    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk0 = 0xFD900000;
    temp_v0->unk4 = arg0;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk0 = 0xF5900000;
    temp_v0_2->unk4 = 0x7080200;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk0 = 0xE6000000;
    temp_v0_3->unk4 = 0;
    temp_v0_4 = gDisplayListHead;
    temp_t3 = (((arg1 * arg2) + 3) >> 2) - 1;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk0 = 0xF3000000;
    if (temp_t3 < 0x7FF) {
        phi_a0 = temp_t3;
    } else {
        phi_a0 = 0x7FF;
    }
    temp_t0 = arg1 / 0x10;
    temp_v0_4->unk4 = ((phi_a0 & 0xFFF) << 0xC) | 0x7000000 | (((temp_t0 + 0x7FF) / temp_t0) & 0xFFF);
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk0 = 0xE7000000;
    temp_v0_5->unk4 = 0;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->unk4 = 0x80200;
    temp_v0_6->unk0 = (((((arg1 >> 1) + 7) >> 3) & 0x1FF) << 9) | 0xF5800000;
    temp_v0_7 = gDisplayListHead;
    gDisplayListHead = temp_v0_7 + 8;
    temp_v0_7->unk0 = 0xF2000000;
    temp_v0_7->unk4 = ((((arg1 - 1) * 4) & 0xFFF) << 0xC) | (((arg2 - 1) * 4) & 0xFFF);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80044F34.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_80043A54(s32); // extern


void func_800450C8(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_a1;
    s32 temp_t0;
    s32 temp_t6;
    s32 temp_v0;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    void *temp_v1_5;
    void *temp_v1_6;
    void *temp_v1_7;
    s32 phi_t3;

    temp_v0 = func_80043A54(arg1);
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0xFD900000;
    temp_v1->unk4 = arg0;
    temp_v1_2 = gDisplayListHead;
    temp_t6 = (temp_v0 & 0xF) * 0x10;
    gDisplayListHead = temp_v1_2 + 8;
    temp_v1_2->unk0 = 0xF5900000;
    temp_v1_2->unk4 = temp_t6 | 0x7080100;
    temp_v1_3 = gDisplayListHead;
    gDisplayListHead = temp_v1_3 + 8;
    temp_v1_3->unk0 = 0xE6000000;
    temp_v1_3->unk4 = 0;
    temp_v1_4 = gDisplayListHead;
    temp_t0 = (((arg1 * arg2) + 3) >> 2) - 1;
    gDisplayListHead = temp_v1_4 + 8;
    temp_v1_4->unk0 = 0xF3000000;
    if (temp_t0 < 0x7FF) {
        phi_t3 = temp_t0;
    } else {
        phi_t3 = 0x7FF;
    }
    temp_a1 = arg1 / 0x10;
    temp_v1_4->unk4 = ((phi_t3 & 0xFFF) << 0xC) | 0x7000000 | (((temp_a1 + 0x7FF) / temp_a1) & 0xFFF);
    temp_v1_5 = gDisplayListHead;
    gDisplayListHead = temp_v1_5 + 8;
    temp_v1_5->unk0 = 0xE7000000;
    temp_v1_5->unk4 = 0;
    temp_v1_6 = gDisplayListHead;
    gDisplayListHead = temp_v1_6 + 8;
    temp_v1_6->unk4 = temp_t6 | 0x80100;
    temp_v1_6->unk0 = (((((arg1 >> 1) + 7) >> 3) & 0x1FF) << 9) | 0xF5800000;
    temp_v1_7 = gDisplayListHead;
    gDisplayListHead = temp_v1_7 + 8;
    temp_v1_7->unk0 = 0xF2000000;
    temp_v1_7->unk4 = ((((arg1 - 1) * 4) & 0xFFF) << 0xC) | (((arg2 - 1) * 4) & 0xFFF);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800450C8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307


void func_800452A4(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_t3;
    s32 temp_v0_4;
    void *temp_a3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    s32 phi_t1;
    s32 phi_t2;
    s32 phi_a0;

    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk4 = arg0;
    temp_v0->unk0 = 0xFD500000;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk0 = 0xF5500000;
    temp_v0_2->unk4 = 0x7080200;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk4 = 0;
    temp_v0_3->unk0 = 0xE6000000;
    temp_a3 = gDisplayListHead;
    temp_t3 = (((arg1 * arg2) + 1) >> 1) - 1;
    gDisplayListHead = temp_a3 + 8;
    temp_a3->unk0 = 0xF3000000;
    if (temp_t3 < 0x7FF) {
        phi_a0 = temp_t3;
    } else {
        phi_a0 = 0x7FF;
    }
    temp_v0_4 = arg1 / 8;
    phi_t1 = temp_v0_4;
    if (temp_v0_4 <= 0) {
        phi_t1 = 1;
    }
    if (temp_v0_4 <= 0) {
        phi_t2 = 1;
    } else {
        phi_t2 = temp_v0_4;
    }
    temp_a3->unk4 = (((phi_t1 + 0x7FF) / phi_t2) & 0xFFF) | 0x7000000 | ((phi_a0 & 0xFFF) << 0xC);
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk4 = 0;
    temp_v0_5->unk0 = 0xE7000000;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->unk4 = 0x80200;
    temp_v0_6->unk0 = ((((arg1 + 7) >> 3) & 0x1FF) << 9) | 0xF5480000;
    temp_v0_7 = gDisplayListHead;
    gDisplayListHead = temp_v0_7 + 8;
    temp_v0_7->unk0 = 0xF2000000;
    temp_v0_7->unk4 = ((((arg1 - 1) * 4) & 0xFFF) << 0xC) | (((arg2 - 1) * 4) & 0xFFF);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800452A4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307


void func_8004544C(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    void *sp4;
    s32 temp_t5;
    s32 temp_t6;
    s32 temp_v0_3;
    void *temp_t1;
    void *temp_t4;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    s32 phi_t2;
    s32 phi_t3;
    s32 phi_a0;

    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk4 = arg0;
    temp_v0->unk0 = 0xFD500000;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_t6 = (arg3 & 0xF) * 0x10;
    temp_v0_2->unk0 = 0xF5500000;
    temp_v0_2->unk4 = temp_t6 | 0x7080100;
    temp_t4 = gDisplayListHead;
    gDisplayListHead = temp_t4 + 8;
    temp_t4->unk4 = 0;
    temp_t4->unk0 = 0xE6000000;
    temp_t1 = gDisplayListHead;
    temp_t5 = (((arg1 * arg2) + 1) >> 1) - 1;
    gDisplayListHead = temp_t1 + 8;
    temp_t1->unk0 = 0xF3000000;
    if (temp_t5 < 0x7FF) {
        phi_a0 = temp_t5;
    } else {
        phi_a0 = 0x7FF;
    }
    temp_v0_3 = arg1 / 8;
    phi_t2 = temp_v0_3;
    if (temp_v0_3 <= 0) {
        phi_t2 = 1;
    }
    if (temp_v0_3 <= 0) {
        phi_t3 = 1;
    } else {
        phi_t3 = temp_v0_3;
    }
    temp_t1->unk4 = (((phi_t2 + 0x7FF) / phi_t3) & 0xFFF) | 0x7000000 | ((phi_a0 & 0xFFF) << 0xC);
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk4 = 0;
    temp_v0_4->unk0 = 0xE7000000;
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk4 = temp_t6 | 0x80100;
    temp_v0_5->unk0 = ((((arg1 + 7) >> 3) & 0x1FF) << 9) | 0xF5480000;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    sp4 = temp_v0_6;
    temp_v0_6->unk0 = 0xF2000000;
    temp_v0_6->unk4 = ((((arg1 - 1) * 4) & 0xFFF) << 0xC) | (((arg2 - 1) * 4) & 0xFFF);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004544C.s")
#endif

#ifdef MIPS_TO_C
UNUSED void func_80045614(s32 arg0, s32 arg1, s32 arg2) {
    void *sp14;
    void *sp10;
    void *spC;
    s32 sp0;
    s32 temp_t0;
    s32 temp_t2;
    s32 temp_t5;
    s32 temp_t7;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;

    temp_v0 = gDisplayListHead;
    temp_t0 = arg1 - 1;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk0 = (s32) ((temp_t0 & 0xFFF) | 0xFD480000);
    temp_v0->unk4 = arg0;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_t2 = ((((s32) (arg1 + 7) >> 3) & 0x1FF) << 9) | 0xF5480000;
    temp_v0_2->unk4 = 0x07080200;
    temp_v0_2->unk0 = temp_t2;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk4 = 0;
    temp_v0_3->unk0 = 0xE6000000;
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk0 = 0xF4000000;
    temp_t5 = ((temp_t0 * 4) & 0xFFF) << 0xC;
    temp_t7 = ((arg2 - 1) * 4) & 0xFFF;
    sp0 = temp_t7;
    temp_v0_4->unk4 = (s32) (temp_t5 | 0x07000000 | temp_t7);
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    sp14 = temp_v0_5;
    temp_v0_5->unk4 = 0;
    temp_v0_5->unk0 = 0xE7000000;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    sp10 = temp_v0_6;
    temp_v0_6->unk4 = 0x80200;
    temp_v0_6->unk0 = temp_t2;
    temp_v0_7 = gDisplayListHead;
    gDisplayListHead = temp_v0_7 + 8;
    spC = temp_v0_7;
    temp_v0_7->unk0 = 0xF2000000;
    temp_v0_7->unk4 = (s32) (temp_t5 | sp0);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80045614.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern s32 *gDisplayListHead;

void func_80045738(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 *sp4C;
    s32 *sp28;
    s32 *sp24;
    s32 *sp20;
    s32 *sp1C;
    s32 spC;
    s32 sp4;
    s32 sp0;
    s32 *temp_t0;
    s32 *temp_t1;
    s32 *temp_v0;
    s32 *temp_v0_10;
    s32 *temp_v0_11;
    s32 *temp_v0_13;
    s32 *temp_v0_14;
    s32 *temp_v0_15;
    s32 *temp_v0_16;
    s32 *temp_v0_17;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s32 *temp_v0_5;
    s32 *temp_v0_6;
    s32 *temp_v0_7;
    s32 *temp_v0_8;
    s32 *temp_v0_9;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_lo;
    s32 temp_t5;
    s32 temp_t6;
    s32 temp_t8;
    s32 temp_v0_12;
    s32 temp_v0_4;
    s32 phi_t3;
    s32 phi_t2;
    s32 phi_t4;
    s32 phi_t3_2;
    s32 phi_t2_2;
    s32 phi_t4_2;

    temp_t0 = gDisplayListHead;
    gDisplayListHead = temp_t0 + 8;
    temp_t0->unk0 = 0xFCFFFFFF;
    temp_t0->unk4 = 0xFFFCF438;
    temp_t1 = gDisplayListHead;
    gDisplayListHead = temp_t1 + 8;
    temp_t1->unk4 = arg1;
    temp_t1->unk0 = 0xFD900000;
    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk0 = 0xF5900100;
    temp_v0->unk4 = 0x70C0300;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk0 = 0xE6000000;
    temp_v0_2->unk4 = 0;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    sp4C = temp_v0_3;
    temp_v0_3->unk0 = 0xF3000000;
    temp_lo = arg2 * arg3;
    temp_t5 = ((temp_lo + 1) >> 1) - 1;
    spC = temp_lo;
    phi_t4 = 0x7FF;
    phi_t4_2 = 0x7FF;
    if (temp_t5 < 0x7FF) {
        phi_t4 = temp_t5;
    }
    temp_v0_4 = arg2 / 8;
    phi_t3 = temp_v0_4;
    if (temp_v0_4 <= 0) {
        phi_t3 = 1;
    }
    if (temp_v0_4 <= 0) {
        phi_t2 = 1;
    } else {
        phi_t2 = temp_v0_4;
    }
    sp4C->unk4 = (((phi_t3 + 0x7FF) / phi_t2) & 0xFFF) | 0x7000000 | ((phi_t4 & 0xFFF) << 0xC);
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk0 = 0xE7000000;
    temp_v0_5->unk4 = 0;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->unk0 = ((((arg2 + 7) >> 3) & 0x1FF) << 9) | 0xF5880000 | 0x100;
    temp_v0_6->unk4 = 0xC0300;
    temp_v0_7 = gDisplayListHead;
    gDisplayListHead = temp_v0_7 + 8;
    temp_v0_7->unk0 = 0xF2000000;
    temp_t6 = (((arg2 - 1) * 4) & 0xFFF) << 0xC;
    temp_t8 = ((arg3 - 1) * 4) & 0xFFF;
    sp0 = temp_t8;
    sp4 = temp_t6;
    temp_v0_7->unk4 = temp_t6 | temp_t8;
    temp_v0_8 = gDisplayListHead;
    gDisplayListHead = temp_v0_8 + 8;
    temp_v0_8->unk0 = 0xFD100000;
    temp_v0_8->unk4 = arg0;
    temp_v0_9 = gDisplayListHead;
    gDisplayListHead = temp_v0_9 + 8;
    temp_v0_9->unk0 = 0xF5100000;
    temp_v0_9->unk4 = 0x70C0300;
    temp_v0_10 = gDisplayListHead;
    gDisplayListHead = temp_v0_10 + 8;
    temp_v0_10->unk0 = 0xE6000000;
    temp_v0_10->unk4 = 0;
    temp_v0_11 = gDisplayListHead;
    gDisplayListHead = temp_v0_11 + 8;
    temp_v0_11->unk0 = 0xF3000000;
    temp_a0 = spC - 1;
    if (temp_a0 < 0x7FF) {
        phi_t4_2 = temp_a0;
    }
    temp_a0_2 = arg2 * 2;
    temp_v0_12 = temp_a0_2 / 8;
    phi_t3_2 = temp_v0_12;
    if (temp_v0_12 <= 0) {
        phi_t3_2 = 1;
    }
    if (temp_v0_12 <= 0) {
        phi_t2_2 = 1;
    } else {
        phi_t2_2 = temp_v0_12;
    }
    temp_v0_11->unk4 = (((phi_t3_2 + 0x7FF) / phi_t2_2) & 0xFFF) | 0x7000000 | ((phi_t4_2 & 0xFFF) << 0xC);
    temp_v0_13 = gDisplayListHead;
    gDisplayListHead = temp_v0_13 + 8;
    temp_v0_13->unk0 = 0xE7000000;
    temp_v0_13->unk4 = 0;
    temp_v0_14 = gDisplayListHead;
    gDisplayListHead = temp_v0_14 + 8;
    sp28 = temp_v0_14;
    temp_v0_14->unk4 = 0xC0300;
    temp_v0_14->unk0 = ((((temp_a0_2 + 7) >> 3) & 0x1FF) << 9) | 0xF5100000;
    temp_v0_15 = gDisplayListHead;
    gDisplayListHead = temp_v0_15 + 8;
    sp24 = temp_v0_15;
    temp_v0_15->unk0 = 0xF2000000;
    temp_v0_15->unk4 = sp4 | sp0;
    temp_v0_16 = gDisplayListHead;
    gDisplayListHead = temp_v0_16 + 8;
    sp20 = temp_v0_16;
    temp_v0_16->unk0 = ((((arg2 + 7) >> 3) & 0x1FF) << 9) | 0xF5880000 | 0x100;
    sp20->unk4 = 0x1000000;
    temp_v0_17 = gDisplayListHead;
    gDisplayListHead = temp_v0_17 + 8;
    sp1C = temp_v0_17;
    temp_v0_17->unk0 = 0xF2000000;
    sp1C->unk4 = sp4 | 0x1000000 | sp0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80045738.s")
#endif

void func_80045B2C(Vtx *arg0) {
    gSPVertex(gDisplayListHead++, arg0, 4, 0);
    gSPDisplayList(gDisplayListHead++, D_0D006940);
}

void func_80045B74(Vtx *arg0) {
    gSPVertex(gDisplayListHead++, arg0, 3, 0);
    gSPDisplayList(gDisplayListHead++, D_0D006930);
}

UNUSED void func_80045BBC(Vec3f arg0, Vec3s arg1, f32 arg2, Vtx *arg3) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D0078A0);
    gSPVertex(gDisplayListHead++, arg3, 4, 0);
    gSPDisplayList(gDisplayListHead++, D_0D006940);
}

UNUSED void func_80045C48(Vec3f arg0, Vec3s arg1, f32 arg2, Vtx *arg3) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D0078D0);
    gSPClearGeometryMode(gDisplayListHead++, G_CULL_BOTH);
    gSPVertex(gDisplayListHead++, arg3, 4, 0);
    gSPDisplayList(gDisplayListHead++, D_0D006940);
    gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80043D50(s32, s32, s32); // extern
? func_80045B2C(s32); // extern


void func_80045D0C(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 temp_lo;
    s32 temp_s2;
    void *temp_v1;
    s32 phi_s1;
    s32 phi_s0;
    s32 phi_s2;

    temp_lo = arg3 / arg4;
    phi_s1 = arg0;
    phi_s0 = 0;
    phi_s2 = 0;
    if (temp_lo > 0) {
        do {
            func_80043D50(phi_s1, arg2, arg4);
            func_80045B2C((phi_s0 * 0x10) + arg1);
            temp_s2 = phi_s2 + 1;
            phi_s1 += arg2 * arg4 * 2;
            phi_s0 += 4;
            phi_s2 = temp_s2;
        } while (temp_s2 != temp_lo);
    }
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0xBB000000;
    temp_v1->unk4 = 0x10001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80045D0C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80043D50(s32, s32, s32); // extern
? func_80045B2C(s32); // extern


void func_80045E10(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 temp_lo;
    s32 temp_s2;
    void *temp_v1;
    s32 phi_s1;
    s32 phi_s0;
    s32 phi_s2;

    temp_lo = arg3 / arg4;
    phi_s1 = arg0;
    phi_s0 = 0;
    phi_s2 = 0;
    if (temp_lo > 0) {
        do {
            func_80043D50(phi_s1, arg2, arg4);
            func_80045B2C((phi_s0 * 0x10) + arg1);
            temp_s2 = phi_s2 + 1;
            phi_s1 += arg2 * (arg4 - 1) * 2;
            phi_s0 += 4;
            phi_s2 = temp_s2;
        } while (temp_s2 != temp_lo);
    }
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0xBB000000;
    temp_v1->unk4 = 0x10001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80045E10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80043EF8(s32, s32, s32, s32); // extern
? func_80045B2C(s32); // extern


void func_80045F18(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    s32 temp_lo;
    s32 temp_s2;
    void *temp_v1;
    s32 phi_s1;
    s32 phi_s0;
    s32 phi_s2;

    temp_lo = arg3 / arg4;
    phi_s1 = arg0;
    phi_s0 = 0;
    phi_s2 = 0;
    if (temp_lo > 0) {
        do {
            func_80043EF8(phi_s1, arg2, arg4, arg5);
            func_80045B2C((phi_s0 * 0x10) + arg1);
            temp_s2 = phi_s2 + 1;
            phi_s1 += arg2 * (arg4 - 1) * 2;
            phi_s0 += 4;
            phi_s2 = temp_s2;
        } while (temp_s2 != temp_lo);
    }
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0xBB000000;
    temp_v1->unk4 = 0x10001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80045F18.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80045738(s32, s32, s32, s32); // extern
? func_80045B2C(s32); // extern
extern ? D_0D008120;
extern ? D_0D008138;


void func_80046030(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_s3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    s32 phi_s1;
    s32 phi_s2;
    s32 phi_s0;
    s32 phi_s3;

    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk0 = 0x6000000;
    temp_v0->unk4 = &D_0D008138;
    temp_lo = arg4 / arg5;
    phi_s1 = arg0;
    phi_s2 = arg1;
    phi_s0 = 0;
    phi_s3 = 0;
    if (temp_lo > 0) {
        temp_lo_2 = arg3 * (arg5 - 1);
        do {
            func_80045738(phi_s1, phi_s2, arg3, arg5);
            func_80045B2C((phi_s0 * 0x10) + arg2);
            temp_s3 = phi_s3 + 1;
            phi_s1 += temp_lo_2 * 2;
            phi_s2 += temp_lo_2;
            phi_s0 += 4;
            phi_s3 = temp_s3;
        } while (temp_s3 != temp_lo);
    }
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk0 = 0xBB000000;
    temp_v0_2->unk4 = 0x10001;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk0 = 0x6000000;
    temp_v0_3->unk4 = &D_0D008120;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80046030.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80043A84(s32, s32, s32); // extern
? func_80045B2C(s32); // extern


void func_800461A4(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 temp_lo;
    s32 temp_s2;
    void *temp_v1;
    s32 phi_s1;
    s32 phi_s0;
    s32 phi_s2;

    temp_lo = arg3 / arg4;
    phi_s1 = arg0;
    phi_s0 = 0;
    phi_s2 = 0;
    if (temp_lo > 0) {
        do {
            func_80043A84(phi_s1, arg2, arg4);
            func_80045B2C((phi_s0 * 0x10) + arg1);
            temp_s2 = phi_s2 + 1;
            phi_s1 += arg2 * arg4 * 4;
            phi_s0 += 4;
            phi_s2 = temp_s2;
        } while (temp_s2 != temp_lo);
    }
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0xBB000000;
    temp_v1->unk4 = 0x10001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800461A4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80043A84(s32, s32, s32); // extern
? func_80045B2C(s32); // extern


void func_800462A8(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 temp_lo;
    s32 temp_s2;
    void *temp_v1;
    s32 phi_s1;
    s32 phi_s0;
    s32 phi_s2;

    temp_lo = arg3 / arg4;
    phi_s1 = arg0;
    phi_s0 = 0;
    phi_s2 = 0;
    if (temp_lo > 0) {
        do {
            func_80043A84(phi_s1, arg2, arg4);
            func_80045B2C((phi_s0 * 0x10) + arg1);
            temp_s2 = phi_s2 + 1;
            phi_s1 += arg2 * (arg4 - 1) * 4;
            phi_s0 += 4;
            phi_s2 = temp_s2;
        } while (temp_s2 != temp_lo);
    }
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0xBB000000;
    temp_v1->unk4 = 0x10001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800462A8.s")
#endif

void func_800463B0(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007928);
    func_80045D0C(arg4, arg5, arg6, arg7, arg9);
}

void func_80046424(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007968);
    func_8004B614(D_801656C0, D_801656D0, D_801656E0, 128, 128, 128, 255);
    func_80045D0C(arg4, arg5, arg6, arg7, arg9);
}

void func_800464D0(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {

    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007948);
    func_80045E10(arg4, arg5, arg6, arg7, arg9);
}

UNUSED void func_80046544(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D0079A8);
    func_80045E10(arg4, arg5, arg6, arg7, arg9);
}

void func_800465B8(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D0079E8);

    func_8004B2BC(arg4);
    func_80045E10(arg5, arg6, arg7, arg8, argA);
}

UNUSED void func_80046634(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007948);
    func_80046030(arg4, arg5, arg6, arg7, arg8, argA);
}

void func_800466B0(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007948);
    func_80043D50(arg4, arg6, arg7, &gDisplayListHead);
    func_80045B74(arg5);
}

UNUSED void func_80046720(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007928);
    func_800461A4(arg4, arg5, arg6, arg7, arg9);
}

UNUSED void func_80046794(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007948);
    func_800462A8(arg4, arg5, arg6, arg7, arg9);
}

void func_80046808(Vec3f arg0, Vec3s arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007948);
    func_80045E10(arg3, arg4, arg5, arg6, arg8);
}

UNUSED void func_80046874(Vec3f arg0, Vec3s arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D0079C8);
    func_80045E10(arg3, arg4, arg5, arg6, arg8);
}

void func_800468E0(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D0079C8);
    func_80045F18(arg3, arg4, arg5, arg6, arg8, arg9);
}

UNUSED void func_80046954(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8) {

    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D0079C8);
    gSPClearGeometryMode(gDisplayListHead++, G_CULL_BOTH);
    func_80045E10(arg3, arg4, arg5, arg6, arg8);
    gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
}

void func_80046A00(Vec3f arg0, Vec3s arg1, f32 arg2, s32 arg3, Vtx *arg4, s32 arg5, s32 arg6) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007948);
    func_80043D50(arg3, arg5, arg6, &gDisplayListHead);
    func_80045B74(arg4);
}

UNUSED void func_80046A68(Vec3f arg0, Vec3s arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D0079C8);
    func_800462A8(arg3, arg4, arg5, arg6, arg8);
}

UNUSED void func_80046AD4(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4) {
    func_800464D0(arg0, arg1, arg2, arg3, arg4, D_0D005470, 8, 8, 8, 8);
}

UNUSED void func_80046B38(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4) {
    func_800464D0(arg0, arg1, arg2, arg3, arg4, D_0D005770, 16, 16, 16, 16);
}

UNUSED void func_80046B9C(Vec3f arg0, Vec3s arg1, f32 arg2, s32 arg3) {
    func_80046808(arg0, arg1, arg2, arg3, D_0D005770, 16, 16, 16, 16);
}

UNUSED void func_80046BEC(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5) {
    func_800466B0(arg0, arg1, arg2, arg3, arg4, arg5, 16, 16);
}

UNUSED void func_80046C3C(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4) {
    func_80046A00(arg0, arg1, arg2, arg3, arg4, 16, 16);
}

UNUSED void func_80046C78(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4) {
    func_800464D0(arg0, arg1, arg2, arg3, arg4, D_0D005AE0, 32, 32, 32, 32);
}

UNUSED void func_80046CDC(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4) {
    func_800464D0(arg0, arg1, arg2, arg3, arg4, D_0D005FB0, 64, 32, 64, 32);
}

UNUSED void func_80046D40(Vec3f arg0, Vec3s arg1, f32 arg2, s32 arg3) {
    func_80046808(arg0, arg1, arg2, arg3, D_0D005FB0, 64, 32, 64, 32);
}

UNUSED void func_80046D90(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4) {
    func_800464D0(arg0, arg1, arg2, arg3, arg4, D_0D0060B0, 64, 64, 64, 32);
}

UNUSED void func_80046DF4(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5) {
    func_800465B8(arg0, arg1, arg2, arg3, arg4, arg5, D_0D0060B0, 64, 64, 64, 32);
}

void func_80046E60(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {

    gSPDisplayList(gDisplayListHead++, D_0D007D78);
    gDPLoadTLUT_pal256(gDisplayListHead++, arg0);
    func_800452A4(arg1, arg2, arg3);
}

void func_80046F60(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    gSPDisplayList(gDisplayListHead++, D_0D007D78);
    gDPLoadTLUT_pal256(gDisplayListHead++, arg0);
    func_8004544C(arg1, arg2, arg3, arg4);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800452A4(s32, s32, s32); // extern
extern ? D_0D006940;


void func_80047068(s32 arg0, s32 arg1, s32 arg2, ? arg3, s32 arg4, s32 arg5, s32 arg6) {
    s32 temp_lo;
    s32 temp_s3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    s32 phi_s2;
    s32 phi_s1;
    s32 phi_s3;
gDPLoadTLUT_pal256(gDisplayListHead++, arg0);

    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk0 = 0xFD100000;
    temp_v0->unk4 = arg0;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk4 = 0;
    temp_v0_2->unk0 = 0xE8000000;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk4 = 0x7000000;
    temp_v0_3->unk0 = 0xF5000100;
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk4 = 0;
    temp_v0_4->unk0 = 0xE6000000;
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk4 = 0x73FC000;
    temp_v0_5->unk0 = 0xF0000000;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->unk4 = 0;
    temp_v0_6->unk0 = 0xE7000000;
    temp_lo = arg4 / arg6;
    phi_s2 = arg1;
    phi_s1 = 0;
    phi_s3 = 0;
    if (temp_lo > 0) {
        do {
            func_800452A4(phi_s2, arg5, arg6);
            temp_v0_7 = gDisplayListHead;
            gDisplayListHead = temp_v0_7 + 8;
            temp_v0_7->unk0 = 0x400103F;
            temp_s3 = phi_s3 + 1;
            temp_v0_7->unk4 = (phi_s1 * 0x10) + arg2;
            temp_v0_8 = gDisplayListHead;
            gDisplayListHead = temp_v0_8 + 8;
            temp_v0_8->unk4 = &D_0D006940;
            temp_v0_8->unk0 = 0x6000000;
            phi_s2 += arg5 * arg6;
            phi_s1 += 4;
            phi_s3 = temp_s3;
        } while (temp_s3 != temp_lo);
    }
    temp_v0_9 = gDisplayListHead;
    gDisplayListHead = temp_v0_9 + 8;
    temp_v0_9->unk0 = 0xBB000000;
    temp_v0_9->unk4 = 0x10001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80047068.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800452A4(s32, s32, s32); // extern
extern ? D_0D006940;


void func_80047270(s32 arg0, s32 arg1, s32 arg2, ? arg3, s32 arg4, s32 arg5, s32 arg6) {
    s32 temp_lo;
    s32 temp_s3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    s32 phi_s2;
    s32 phi_s1;
    s32 phi_s3;

    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk0 = 0xFD100000;
    temp_v0->unk4 = arg0;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk4 = 0;
    temp_v0_2->unk0 = 0xE8000000;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk4 = 0x7000000;
    temp_v0_3->unk0 = 0xF5000100;
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk4 = 0;
    temp_v0_4->unk0 = 0xE6000000;
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk4 = 0x73FC000;
    temp_v0_5->unk0 = 0xF0000000;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->unk4 = 0;
    temp_v0_6->unk0 = 0xE7000000;
    temp_lo = arg4 / arg6;
    phi_s2 = arg1;
    phi_s1 = 0;
    phi_s3 = 0;
    if (temp_lo > 0) {
        do {
            func_800452A4(phi_s2, arg5, arg6);
            temp_v0_7 = gDisplayListHead;
            gDisplayListHead = temp_v0_7 + 8;
            temp_v0_7->unk0 = 0x400103F;
            temp_s3 = phi_s3 + 1;
            temp_v0_7->unk4 = (phi_s1 * 0x10) + arg2;
            temp_v0_8 = gDisplayListHead;
            gDisplayListHead = temp_v0_8 + 8;
            temp_v0_8->unk4 = &D_0D006940;
            temp_v0_8->unk0 = 0x6000000;
            phi_s2 += arg5 * (arg6 - 1);
            phi_s1 += 4;
            phi_s3 = temp_s3;
        } while (temp_s3 != temp_lo);
    }
    temp_v0_9 = gDisplayListHead;
    gDisplayListHead = temp_v0_9 + 8;
    temp_v0_9->unk0 = 0xBB000000;
    temp_v0_9->unk4 = 0x10001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80047270.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004544C(s32, s32, s32, s32); // extern
extern ? D_0D006940;


void func_8004747C(s32 arg0, s32 arg1, s32 arg2, ? arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    s32 temp_lo;
    s32 temp_s3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    s32 phi_s2;
    s32 phi_s1;
    s32 phi_s3;

    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk0 = 0xFD100000;
    temp_v0->unk4 = arg0;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk4 = 0;
    temp_v0_2->unk0 = 0xE8000000;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk4 = 0x7000000;
    temp_v0_3->unk0 = 0xF5000100;
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk4 = 0;
    temp_v0_4->unk0 = 0xE6000000;
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk4 = 0x73FC000;
    temp_v0_5->unk0 = 0xF0000000;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->unk4 = 0;
    temp_v0_6->unk0 = 0xE7000000;
    temp_lo = arg4 / arg6;
    phi_s2 = arg1;
    phi_s1 = 0;
    phi_s3 = 0;
    if (temp_lo > 0) {
        do {
            func_8004544C(phi_s2, arg5, arg6, arg7);
            temp_v0_7 = gDisplayListHead;
            gDisplayListHead = temp_v0_7 + 8;
            temp_v0_7->unk0 = 0x400103F;
            temp_s3 = phi_s3 + 1;
            temp_v0_7->unk4 = (phi_s1 * 0x10) + arg2;
            temp_v0_8 = gDisplayListHead;
            gDisplayListHead = temp_v0_8 + 8;
            temp_v0_8->unk4 = &D_0D006940;
            temp_v0_8->unk0 = 0x6000000;
            phi_s2 += arg5 * (arg6 - 1);
            phi_s1 += 4;
            phi_s3 = temp_s3;
        } while (temp_s3 != temp_lo);
    }
    temp_v0_9 = gDisplayListHead;
    gDisplayListHead = temp_v0_9 + 8;
    temp_v0_9->unk0 = 0xBB000000;
    temp_v0_9->unk4 = 0x10001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004747C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800452A4(s32, s32, s32); // extern
extern ? D_0D006940;


void func_8004768C(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    s32 temp_lo;
    s32 temp_s3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    s32 phi_s2;
    s32 phi_s1;
    s32 phi_s3;

    temp_lo = arg3 / arg5;
    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk0 = 0xFD100000;
    temp_v0->unk4 = arg0;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk4 = 0;
    temp_v0_2->unk0 = 0xE8000000;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk4 = 0x7000000;
    temp_v0_3->unk0 = 0xF5000100;
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk4 = 0;
    temp_v0_4->unk0 = 0xE6000000;
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk4 = 0x73FC000;
    temp_v0_5->unk0 = 0xF0000000;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->unk4 = 0;
    temp_v0_6->unk0 = 0xE7000000;
    phi_s2 = arg1;
    phi_s1 = 0;
    phi_s3 = 0;
    if (temp_lo > 0) {
        do {
            func_800452A4(phi_s2, arg5, arg4);
            temp_v0_7 = gDisplayListHead;
            gDisplayListHead = temp_v0_7 + 8;
            temp_v0_7->unk0 = 0x400103F;
            temp_s3 = phi_s3 + 1;
            temp_v0_7->unk4 = (phi_s1 * 0x10) + arg2;
            temp_v0_8 = gDisplayListHead;
            gDisplayListHead = temp_v0_8 + 8;
            temp_v0_8->unk4 = &D_0D006940;
            temp_v0_8->unk0 = 0x6000000;
            phi_s2 += arg5 * arg4;
            phi_s1 += 4;
            phi_s3 = temp_s3;
        } while (temp_s3 != temp_lo);
    }
    temp_v0_9 = gDisplayListHead;
    gDisplayListHead = temp_v0_9 + 8;
    temp_v0_9->unk0 = 0xBB000000;
    temp_v0_9->unk4 = 0x10001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004768C.s")
#endif

void func_8004788C(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007CB8);
    func_80047068(arg4, arg5, arg6, arg7, arg8, arg9, argA);
}

void func_80047910(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007CD8);
    func_80047270(arg4, arg5, arg6, arg7, arg8, arg9, argA);
}

void func_80047994(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007CF8);
    func_80047270(arg4, arg5, arg6, arg7, arg8, arg9, argA);
}

void func_80047A18(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007D18);
    func_80047068(arg4, arg5, arg6, arg7, arg8, arg9, argA);
}

void func_80047A9C(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007D38);
    func_80047270(arg4, arg5, arg6, arg7, arg8, arg9, argA);
}

UNUSED void func_80047B20(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007D38);
    func_8004768C(arg4, arg5, arg6, arg7, arg8, arg9);
}

void func_80047B9C(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA, s32 argB) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007DB8);
    func_8004B2BC(arg4);
    func_80047068(arg5, arg6, arg7, arg8, arg9, argA, argB);
}

UNUSED void func_80047C28(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA, s32 argB) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007DD8);
    func_8004B2BC(arg4);
    func_80047270(arg5, arg6, arg7, arg8, arg9, argA, argB);
}

void func_80047CB4(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA, s32 argB) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007E38);
    func_8004B2BC(arg4);
    func_80047068(arg5, arg6, arg7, arg8, arg9, argA, argB);
}

UNUSED void func_80047D40(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA, s32 argB) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007E58);
    func_8004B2BC(arg4);
    func_80047270(arg5, arg6, arg7, arg8, arg9, argA, argB);
}

UNUSED void func_80047DCC(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007CB8);
    func_80047068(arg3, arg4, arg5, arg6, arg7, arg8, arg9);
}

void func_80047E48(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007CD8);
    func_80047270(arg3, arg4, arg5, arg6, arg7, arg8, arg9);
}

UNUSED void func_80047EC4(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007D18);
    func_80047068(arg3, arg4, arg5, arg6, arg7, arg8, arg9);
}

void func_80047F40(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007D38);
    func_80047270(arg3, arg4, arg5, arg6, arg7, arg8, arg9);
}

UNUSED void func_80047FBC(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007D58);
    func_80047270(arg3, arg4, arg5, arg6, arg7, arg8, arg9);
}

UNUSED void func_80048038(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007D98);
    func_80047068(arg3, arg4, arg5, arg6, arg7, arg8, arg9);
}

void func_800480B4(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007D78);
    func_80047270(arg3, arg4, arg5, arg6, arg7, arg8, arg9);
}

void func_80048130(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007D78);
    func_8004747C(arg3, arg4, arg5, arg6, arg7, arg8, arg9, argA);
}

UNUSED void func_800481B4(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007D78);
    func_8004768C(arg3, arg4, arg5, arg6, arg7, arg8);
}

UNUSED void func_80048228(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007DB8);
    func_8004B2BC(arg3);
    func_80047068(arg4, arg5, arg6, arg7, arg8, arg9, argA);
}

void func_800482AC(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007DD8);
    func_8004B2BC(arg3);
    func_80047270(arg4, arg5, arg6, arg7, arg8, arg9, argA);
}

UNUSED void func_80048330(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007E38);
    func_8004B2BC(arg3);
    func_80047068(arg4, arg5, arg6, arg7, arg8, arg9, argA);
}

void func_800483B4(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007E58);
    func_8004B2BC(arg3);
    func_80047270(arg4, arg5, arg6, arg7, arg8, arg9, argA);
}

void func_80048438(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007DF8);
    func_8004B2BC(arg3);
    func_80047068(arg4, arg5, arg6, arg7, arg8, arg9, argA);
}

void func_800484BC(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007E18);
    func_8004B2BC(arg3);
    func_80047270(arg4, arg5, arg6, arg7, arg8, arg9, argA);
}

void func_80048540(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007E98);
    func_8004B2BC(arg3);
    func_80047270(arg4, arg5, arg6, arg7, arg8, arg9, argA);
}

void func_800485C4(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA) {

    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007E98);
    gDPSetAlphaCompare(gDisplayListHead++, G_AC_DITHER);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);

    func_8004B2BC(arg3);
    func_80047270(arg4, arg5, arg6, arg7, arg8, arg9, argA);
    
    gDPSetAlphaCompare(gDisplayListHead++, G_AC_NONE);
}

UNUSED void func_800486B0(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    func_8004788C(arg0, arg1, arg2, arg3, arg4, arg5, arg6, 24, 48, 24, 48);
}

UNUSED void func_80048718(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    func_8004788C(arg0, arg1, arg2, arg3, arg4, arg5, arg6, 32, 32, 32, 32);
}

UNUSED void func_80048780(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    func_80048540(arg0, arg1, arg2, arg3, arg4, arg5, arg6, 48, 48, 48, 40);
}

UNUSED void func_800487DC(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    func_8004788C(arg0, arg1, arg2, arg3, arg4, arg5, arg6, 48, 48, 48, 48);
}

UNUSED void func_80048844(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    func_8004788C(arg0, arg1, arg2, arg3, arg4, arg5, arg6, 64, 32, 64, 32);
}

UNUSED void func_800488AC(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    func_8004788C(arg0, arg1, arg2, arg3, arg4, arg5, arg6, 64, 64, 64, 32);
}

UNUSED void func_80048914(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    func_80047910(arg0, arg1, arg2, arg3, arg4, arg5, arg6, 64, 64, 64, 32);
}

UNUSED void func_8004897C(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    func_80047994(arg0, arg1, arg2, arg3, arg4, arg5, arg6, 64, 64, 64, 32);
}

UNUSED void func_800489E4(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    func_80047A18(arg0, arg1, arg2, arg3, arg4, arg5, arg6, 64, 64, 64, 32);
}

UNUSED void func_80048A4C(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    func_80047A9C(arg0, arg1, arg2, arg3, arg4, arg5, arg6, 64, 64, 64, 32);
}

UNUSED void func_80048AB4(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    func_80047B9C(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, 64, 64, 64, 32);
}

UNUSED void func_80048B24(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    func_80047CB4(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, 64, 64, 64, 32);
}

UNUSED void func_80048B94(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    func_80047E48(arg0, arg1, arg2, arg3, arg4, arg5, 64, 64, 64, 32);
}

UNUSED void func_80048BE8(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    func_80047F40(arg0, arg1, arg2, arg3, arg4, arg5, 64, 64, 64, 32);
}

UNUSED void func_80048C3C(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    func_800480B4(arg0, arg1, arg2, arg3, arg4, arg5, 64, 64, 64, 32);
}

UNUSED void func_80048C90(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    func_800482AC(arg0, arg1, arg2, arg3, arg4, arg5, arg6, 64, 64, 64, 32);
}

UNUSED void func_80048CEC(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    func_800483B4(arg0, arg1, arg2, arg3, arg4, arg5, arg6, 64, 64, 64, 32);
}

UNUSED void func_80048D48(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    func_800484BC(arg0, arg1, arg2, arg3, arg4, arg5, arg6, 64, 64, 64, 32);
}

UNUSED void func_80048DA4(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    func_80048540(arg0, arg1, arg2, arg3, arg4, arg5, arg6, 64, 64, 64, 32);
}

UNUSED void func_80048E00(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    func_80047910(arg0, arg1, arg2, arg3, arg4, arg5, arg6, 72, 48, 72, 24);
}

UNUSED void func_80048E68(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    func_80047A18(arg0, arg1, arg2, arg3, arg4, arg5, arg6, 72, 48, 72, 24);
}

UNUSED void func_80048ED0(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    func_80047A9C(arg0, arg1, arg2, arg3, arg4, arg5, arg6, 72, 48, 72, 24);
}

UNUSED void func_80048F38(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    func_800480B4(arg0, arg1, arg2, arg3, arg4, arg5, 72, 48, 72, 24);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800441E0(s32, s32, s32); // extern
extern ? D_0D006940;


void func_80048F8C(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    s32 sp5C;
    s32 sp40;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_s0;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_v0_3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_4;
    s32 phi_v0;
    s32 phi_s3;
    s32 phi_s2;
    s32 phi_s0;
    s32 phi_v0_2;
    s32 phi_s3_2;
    s32 phi_s2_2;

    temp_lo = arg3 / arg5;
    sp40 = temp_lo;
    phi_v0 = 0;
    phi_s3_2 = arg0;
    phi_s2_2 = 0;
    if (temp_lo > 0) {
        temp_lo_2 = arg2 / arg4;
        do {
            phi_s3 = phi_s3_2;
            phi_s2 = phi_s2_2;
            phi_s0 = 0;
            phi_v0_2 = phi_v0;
            if (temp_lo_2 > 0) {
                sp5C = phi_v0;
                do {
                    func_800441E0(phi_s3, arg4, arg5);
                    temp_v0 = gDisplayListHead;
                    gDisplayListHead = temp_v0 + 8;
                    temp_v0->unk0 = 0x400103F;
                    temp_s0 = phi_s0 + 1;
                    temp_v0->unk4 = (phi_s2 * 0x10) + arg1;
                    temp_v0_2 = gDisplayListHead;
                    temp_s3 = phi_s3 + (arg4 * arg5 * 2);
                    gDisplayListHead = temp_v0_2 + 8;
                    temp_s2 = phi_s2 + 4;
                    temp_v0_2->unk4 = &D_0D006940;
                    temp_v0_2->unk0 = 0x6000000;
                    phi_s3 = temp_s3;
                    phi_s2 = temp_s2;
                    phi_s0 = temp_s0;
                    phi_s3_2 = temp_s3;
                    phi_s2_2 = temp_s2;
                } while (temp_s0 != temp_lo_2);
                phi_v0_2 = sp5C;
            }
            temp_v0_3 = phi_v0_2 + 1;
            phi_v0 = temp_v0_3;
        } while (temp_v0_3 != sp40);
    }
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk0 = 0xBB000000;
    temp_v0_4->unk4 = 0x10001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80048F8C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80044388(s32, s32, s32); // extern
extern ? D_0D006940;


void func_80049130(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    s32 sp5C;
    s32 sp40;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_s0;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_v0_3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_4;
    s32 phi_v0;
    s32 phi_s3;
    s32 phi_s2;
    s32 phi_s0;
    s32 phi_v0_2;
    s32 phi_s3_2;
    s32 phi_s2_2;

    temp_lo = arg3 / arg5;
    sp40 = temp_lo;
    phi_v0 = 0;
    phi_s3_2 = arg0;
    phi_s2_2 = 0;
    if (temp_lo > 0) {
        temp_lo_2 = arg2 / arg4;
        do {
            phi_s3 = phi_s3_2;
            phi_s2 = phi_s2_2;
            phi_s0 = 0;
            phi_v0_2 = phi_v0;
            if (temp_lo_2 > 0) {
                sp5C = phi_v0;
                do {
                    func_80044388(phi_s3, arg4, arg5);
                    temp_v0 = gDisplayListHead;
                    gDisplayListHead = temp_v0 + 8;
                    temp_v0->unk0 = 0x400103F;
                    temp_s0 = phi_s0 + 1;
                    temp_v0->unk4 = (phi_s2 * 0x10) + arg1;
                    temp_v0_2 = gDisplayListHead;
                    temp_s3 = phi_s3 + (arg4 * arg5 * 2);
                    gDisplayListHead = temp_v0_2 + 8;
                    temp_s2 = phi_s2 + 4;
                    temp_v0_2->unk4 = &D_0D006940;
                    temp_v0_2->unk0 = 0x6000000;
                    phi_s3 = temp_s3;
                    phi_s2 = temp_s2;
                    phi_s0 = temp_s0;
                    phi_s3_2 = temp_s3;
                    phi_s2_2 = temp_s2;
                } while (temp_s0 != temp_lo_2);
                phi_v0_2 = sp5C;
            }
            temp_v0_3 = phi_v0_2 + 1;
            phi_v0 = temp_v0_3;
        } while (temp_v0_3 != sp40);
    }
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk0 = 0xBB000000;
    temp_v0_4->unk4 = 0x10001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80049130.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800444B0(s32, s32, s32); // extern
extern ? D_0D006940;


void func_800492D4(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    s32 sp5C;
    s32 sp40;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_s0;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_v0_3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_4;
    s32 phi_v0;
    s32 phi_s3;
    s32 phi_s2;
    s32 phi_s0;
    s32 phi_v0_2;
    s32 phi_s3_2;
    s32 phi_s2_2;

    temp_lo = arg3 / arg5;
    sp40 = temp_lo;
    phi_v0 = 0;
    phi_s3_2 = arg0;
    phi_s2_2 = 0;
    if (temp_lo > 0) {
        temp_lo_2 = arg2 / arg4;
        do {
            phi_s3 = phi_s3_2;
            phi_s2 = phi_s2_2;
            phi_s0 = 0;
            phi_v0_2 = phi_v0;
            if (temp_lo_2 > 0) {
                sp5C = phi_v0;
                do {
                    func_800444B0(phi_s3, arg4, arg5);
                    temp_v0 = gDisplayListHead;
                    gDisplayListHead = temp_v0 + 8;
                    temp_v0->unk0 = 0x400103F;
                    temp_s0 = phi_s0 + 1;
                    temp_v0->unk4 = (phi_s2 * 0x10) + arg1;
                    temp_v0_2 = gDisplayListHead;
                    temp_s3 = phi_s3 + (arg4 * arg5);
                    gDisplayListHead = temp_v0_2 + 8;
                    temp_s2 = phi_s2 + 4;
                    temp_v0_2->unk4 = &D_0D006940;
                    temp_v0_2->unk0 = 0x6000000;
                    phi_s3 = temp_s3;
                    phi_s2 = temp_s2;
                    phi_s0 = temp_s0;
                    phi_s3_2 = temp_s3;
                    phi_s2_2 = temp_s2;
                } while (temp_s0 != temp_lo_2);
                phi_v0_2 = sp5C;
            }
            temp_v0_3 = phi_v0_2 + 1;
            phi_v0 = temp_v0_3;
        } while (temp_v0_3 != sp40);
    }
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk0 = 0xBB000000;
    temp_v0_4->unk4 = 0x10001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800492D4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80044658(s32, s32, s32); // extern
extern ? D_0D006940;


void func_80049478(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    s32 sp5C;
    s32 sp40;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_s0;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_v0_3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_4;
    s32 phi_v0;
    s32 phi_s3;
    s32 phi_s2;
    s32 phi_s0;
    s32 phi_v0_2;
    s32 phi_s3_2;
    s32 phi_s2_2;

    temp_lo = arg3 / arg5;
    sp40 = temp_lo;
    phi_v0 = 0;
    phi_s3_2 = arg0;
    phi_s2_2 = 0;
    if (temp_lo > 0) {
        temp_lo_2 = arg2 / arg4;
        do {
            phi_s3 = phi_s3_2;
            phi_s2 = phi_s2_2;
            phi_s0 = 0;
            phi_v0_2 = phi_v0;
            if (temp_lo_2 > 0) {
                sp5C = phi_v0;
                do {
                    func_80044658(phi_s3, arg4, arg5);
                    temp_v0 = gDisplayListHead;
                    gDisplayListHead = temp_v0 + 8;
                    temp_v0->unk0 = 0x400103F;
                    temp_s0 = phi_s0 + 1;
                    temp_v0->unk4 = (phi_s2 * 0x10) + arg1;
                    temp_v0_2 = gDisplayListHead;
                    temp_s3 = phi_s3 + (arg4 * arg5);
                    gDisplayListHead = temp_v0_2 + 8;
                    temp_s2 = phi_s2 + 4;
                    temp_v0_2->unk4 = &D_0D006940;
                    temp_v0_2->unk0 = 0x6000000;
                    phi_s3 = temp_s3;
                    phi_s2 = temp_s2;
                    phi_s0 = temp_s0;
                    phi_s3_2 = temp_s3;
                    phi_s2_2 = temp_s2;
                } while (temp_s0 != temp_lo_2);
                phi_v0_2 = sp5C;
            }
            temp_v0_3 = phi_v0_2 + 1;
            phi_v0 = temp_v0_3;
        } while (temp_v0_3 != sp40);
    }
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk0 = 0xBB000000;
    temp_v0_4->unk4 = 0x10001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80049478.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80044924(s32, s32, s32); // extern
extern ? D_0D006940;


void func_8004961C(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    s32 sp5C;
    s32 sp40;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_s0;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_v0_3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_4;
    s32 phi_v0;
    s32 phi_s3;
    s32 phi_s2;
    s32 phi_s0;
    s32 phi_v0_2;
    s32 phi_s3_2;
    s32 phi_s2_2;

    temp_lo = arg3 / arg5;
    sp40 = temp_lo;
    phi_v0 = 0;
    phi_s3_2 = arg0;
    phi_s2_2 = 0;
    if (temp_lo > 0) {
        temp_lo_2 = arg2 / arg4;
        do {
            phi_s3 = phi_s3_2;
            phi_s2 = phi_s2_2;
            phi_s0 = 0;
            phi_v0_2 = phi_v0;
            if (temp_lo_2 > 0) {
                sp5C = phi_v0;
                do {
                    func_80044924(phi_s3, arg4, arg5);
                    temp_v0 = gDisplayListHead;
                    gDisplayListHead = temp_v0 + 8;
                    temp_v0->unk0 = 0x400103F;
                    temp_s0 = phi_s0 + 1;
                    temp_v0->unk4 = (phi_s2 * 0x10) + arg1;
                    temp_v0_2 = gDisplayListHead;
                    temp_s3 = phi_s3 + ((arg4 * arg5) / 2);
                    gDisplayListHead = temp_v0_2 + 8;
                    temp_s2 = phi_s2 + 4;
                    temp_v0_2->unk4 = &D_0D006940;
                    temp_v0_2->unk0 = 0x6000000;
                    phi_s3 = temp_s3;
                    phi_s2 = temp_s2;
                    phi_s0 = temp_s0;
                    phi_s3_2 = temp_s3;
                    phi_s2_2 = temp_s2;
                } while (temp_s0 != temp_lo_2);
                phi_v0_2 = sp5C;
            }
            temp_v0_3 = phi_v0_2 + 1;
            phi_v0 = temp_v0_3;
        } while (temp_v0_3 != sp40);
    }
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk0 = 0xBB000000;
    temp_v0_4->unk4 = 0x10001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004961C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80044BF8(s32, s32, s32); // extern
extern ? D_0D006940;


void func_800497CC(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    s32 sp5C;
    s32 sp40;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_s0;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_v0_3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_4;
    s32 phi_v0;
    s32 phi_s3;
    s32 phi_s2;
    s32 phi_s0;
    s32 phi_v0_2;
    s32 phi_s3_2;
    s32 phi_s2_2;

    temp_lo = arg3 / arg5;
    sp40 = temp_lo;
    phi_v0 = 0;
    phi_s3_2 = arg0;
    phi_s2_2 = 0;
    if (temp_lo > 0) {
        temp_lo_2 = arg2 / arg4;
        do {
            phi_s3 = phi_s3_2;
            phi_s2 = phi_s2_2;
            phi_s0 = 0;
            phi_v0_2 = phi_v0;
            if (temp_lo_2 > 0) {
                sp5C = phi_v0;
                do {
                    func_80044BF8(phi_s3, arg4, arg5);
                    temp_v0 = gDisplayListHead;
                    gDisplayListHead = temp_v0 + 8;
                    temp_v0->unk0 = 0x400103F;
                    temp_s0 = phi_s0 + 1;
                    temp_v0->unk4 = (phi_s2 * 0x10) + arg1;
                    temp_v0_2 = gDisplayListHead;
                    temp_s3 = phi_s3 + (arg4 * arg5);
                    gDisplayListHead = temp_v0_2 + 8;
                    temp_s2 = phi_s2 + 4;
                    temp_v0_2->unk4 = &D_0D006940;
                    temp_v0_2->unk0 = 0x6000000;
                    phi_s3 = temp_s3;
                    phi_s2 = temp_s2;
                    phi_s0 = temp_s0;
                    phi_s3_2 = temp_s3;
                    phi_s2_2 = temp_s2;
                } while (temp_s0 != temp_lo_2);
                phi_v0_2 = sp5C;
            }
            temp_v0_3 = phi_v0_2 + 1;
            phi_v0 = temp_v0_3;
        } while (temp_v0_3 != sp40);
    }
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk0 = 0xBB000000;
    temp_v0_4->unk4 = 0x10001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800497CC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80044DA0(s32, s32, s32); // extern
extern ? D_0D006940;


void func_80049970(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    s32 sp5C;
    s32 sp40;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_s0;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_v0_3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_4;
    s32 phi_v0;
    s32 phi_s3;
    s32 phi_s2;
    s32 phi_s0;
    s32 phi_v0_2;
    s32 phi_s3_2;
    s32 phi_s2_2;

    temp_lo = arg3 / arg5;
    sp40 = temp_lo;
    phi_v0 = 0;
    phi_s3_2 = arg0;
    phi_s2_2 = 0;
    if (temp_lo > 0) {
        temp_lo_2 = arg2 / arg4;
        do {
            phi_s3 = phi_s3_2;
            phi_s2 = phi_s2_2;
            phi_s0 = 0;
            phi_v0_2 = phi_v0;
            if (temp_lo_2 > 0) {
                sp5C = phi_v0;
                do {
                    func_80044DA0(phi_s3, arg4, arg5);
                    temp_v0 = gDisplayListHead;
                    gDisplayListHead = temp_v0 + 8;
                    temp_v0->unk0 = 0x400103F;
                    temp_s0 = phi_s0 + 1;
                    temp_v0->unk4 = (phi_s2 * 0x10) + arg1;
                    temp_v0_2 = gDisplayListHead;
                    temp_s3 = phi_s3 + ((arg4 * arg5) / 2);
                    gDisplayListHead = temp_v0_2 + 8;
                    temp_s2 = phi_s2 + 4;
                    temp_v0_2->unk4 = &D_0D006940;
                    temp_v0_2->unk0 = 0x6000000;
                    phi_s3 = temp_s3;
                    phi_s2 = temp_s2;
                    phi_s0 = temp_s0;
                    phi_s3_2 = temp_s3;
                    phi_s2_2 = temp_s2;
                } while (temp_s0 != temp_lo_2);
                phi_v0_2 = sp5C;
            }
            temp_v0_3 = phi_v0_2 + 1;
            phi_v0 = temp_v0_3;
        } while (temp_v0_3 != sp40);
    }
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk0 = 0xBB000000;
    temp_v0_4->unk4 = 0x10001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80049970.s")
#endif

void func_80049B20(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007A40);
    func_80048F8C(arg4, arg5, arg6, arg7, arg8, arg9);
}

UNUSED void func_80049B9C(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007A40);
    func_80049130(arg4, arg5, arg6, arg7, arg8, arg9);
}

void func_80049C18(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007A40);
    func_800492D4(arg4, arg5, arg6, arg7, arg8, arg9);
}

void func_80049C94(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007A60);
    func_800492D4(arg4, arg5, arg6, arg7, arg8, arg9);
}

void func_80049D10(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007A80);
    func_800492D4(arg4, arg5, arg6, arg7, arg8, arg9);
}

void func_80049D8C(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007AA0);
    func_800492D4(arg4, arg5, arg6, arg7, arg8, arg9);
}

UNUSED void func_80049E08(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA, s32 argB, s32 argC, s32 argD) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007A40);
    func_8004B35C(arg4, arg5, arg6, arg7);
    func_800492D4(arg8, arg9, argA, argB, argC, argD);
}

UNUSED void func_80049E98(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA, s32 argB, s32 argC, s32 argD) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007A60);
    func_8004B35C(arg4, arg5, arg6, arg7);
    func_800492D4(arg8, arg9, argA, argB, argC, argD);
}

UNUSED void func_80049F28(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA, s32 argB, s32 argC, s32 argD) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007B00);
    func_8004B35C(arg4, arg5, arg6, arg7);
    func_800492D4(arg8, arg9, argA, argB, argC, argD);
}

UNUSED void func_80049FB8(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007A40);
    func_80049478(arg4, arg5, arg6, arg7, arg8, arg9);
}

UNUSED void func_8004A034(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007A60);
    func_80049478(arg4, arg5, arg6, arg7, arg8, arg9);
}

void func_8004A0B0(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007A40);
    func_8004961C(arg4, arg5, arg6, arg7, arg8, arg9);
}

UNUSED void func_8004A12C(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA, s32 argB, s32 argC, s32 argD) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007A60);
    func_8004B35C(arg4, arg5, arg6, arg7);
    func_8004961C(arg8, arg9, argA, argB, argC, argD);
}
UNUSED void func_8004A1BC(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {

    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007A40);
    gDPSetCombineLERP(gDisplayListHead++, 1, 0, SHADE, 0, 0, 0, 0, TEXEL0, 1, 0, SHADE, 0, 0, 0, 0, TEXEL0);
    func_80049970(arg4, arg5, arg6, arg7, arg8, arg9);
}

void func_8004A258(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007A60);
    gDPSetCombineLERP(gDisplayListHead++, 1, 0, SHADE, 0, 0, 0, 0, TEXEL0, 1, 0, SHADE, 0, 0, 0, 0, TEXEL0);
    func_80049970(arg4, arg5, arg6, arg7, arg8, arg9);
}

void func_8004A2F4(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA, s32 argB, s32 argC, s32 argD) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007A40);
    func_8004B414(arg4, arg5, arg6, arg7);
    func_80049970(arg8, arg9, argA, argB, argC, argD);
}

void func_8004A384(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA, s32 argB, s32 argC, s32 argD) {
    func_80042330(arg0, arg1, arg2, arg3);
    gSPDisplayList(gDisplayListHead++, D_0D007A60);
    func_8004B414(arg4, arg5, arg6, arg7);
    func_80049970(arg8, arg9, argA, argB, argC, argD);
}

void func_8004A414(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007A40);
    func_800492D4(arg3, arg4, arg5, arg6, arg7, arg8);
}

UNUSED void func_8004A488(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007A60);
    func_800492D4(arg3, arg4, arg5, arg6, arg7, arg8);
}

UNUSED void func_8004A4FC(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007AC0);
    func_800492D4(arg3, arg4, arg5, arg6, arg7, arg8);
}

UNUSED void func_8004A570(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007AE0);
    func_800492D4(arg3, arg4, arg5, arg6, arg7, arg8);
}

UNUSED void func_8004A5E4(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4) {
    func_8004A414(arg0, arg1, arg2, arg3, arg4, 16, 16, 16, 16);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
//s32 func_80041924(); // extern
//? func_80043050(? *, void *, s32); // extern
//f32 func_802ABE30(f32, ?, ? *, ?32, u16); // extern
//extern ? D_0D007B98;
//extern f64 D_800EE030;
//extern ? D_80183E50;

extern Gfx D_0D007B98[];
extern f64 D_800EE030;

s32 func_80041924(UnkActorInner*, f32);


f32  func_802ABE30(f32, f32, f32, u16);
void func_80043050(Vec3f, Vec3f, f32);

struct UnknownStruct8004A630 {
    Vec3f unk0;
    f32 unk4;
};

void func_8004A630(UnkActorInner *arg0, Vec3f arg1, f32 arg2) {

    if (func_80041924(arg0, arg2) == 0) { return; }
    
    D_80183E50[1] = (f32)func_802ABE30(arg2, 0.0f, D_80183E50[0], arg0->unk3A) + D_800EE030;
    D_80183E50[0] = arg1[0];
    D_80183E50[2] = arg1[2];
    func_80043050(D_80183E50, arg0->unk60, arg2);

    gSPDisplayList(gDisplayListHead++, D_0D007B98);
/*
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x6000000;
    temp_v1->unk4 = &D_0D007B98;
    */
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004A630.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
extern f32 D_80183E50;

void func_8004A6EC(s32 objectIndex, f32 arg1) {
    Gfx *temp_v1;
    struct_80165C18_entry *temp_v0;

    if ((func_8007223C(objectIndex, 0x00000020) != 0) && (func_8007223C(objectIndex, 0x00800000) != 0)) {
        temp_v0 = &D_80165C18[objectIndex];
        D_80183E50.unk0 = temp_v0->unk_004[0];
        D_80183E50.unk8 = (f32) temp_v0->unk_004[2];
        D_80183E50.unk4 = (f32) ((f64) temp_v0->unk_044 + 0.8);
        func_80042E00(&D_80183E50, temp_v0->unk_0B8, arg1);
        temp_v1 = gDisplayListHead;
        gDisplayListHead = temp_v1 + 8;
        temp_v1->words.w0 = 0x06000000;
        temp_v1->words.w1 = (u32) D_0D007B20;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004A6EC.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
extern f32 D_80183E50;
extern s16 D_80183E98;

void func_8004A7AC(s32 objectIndex, f32 arg1) {
    Gfx *temp_v1;
    struct_80165C18_entry *temp_v0;

    if (func_8007223C(objectIndex, 0x00000020) != 0) {
        temp_v0 = &D_80165C18[objectIndex];
        D_80183E50.unk0 = temp_v0->unk_004[0];
        D_80183E98.unk0 = 0x4000;
        D_80183E98.unk2 = 0;
        D_80183E98.unk4 = 0;
        D_80183E50.unk4 = (f32) ((f64) temp_v0->unk_044 + 0.8);
        D_80183E50.unk8 = (f32) temp_v0->unk_004[2];
        func_80042E00(&D_80183E50, &D_80183E98, arg1);
        temp_v1 = gDisplayListHead;
        gDisplayListHead = temp_v1 + 8;
        temp_v1->words.w0 = 0x06000000;
        temp_v1->words.w1 = (u32) D_0D007B20;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004A7AC.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
extern ? D_0D007B98;
extern f32 D_80183E50;

void func_8004A870(s32 objectIndex, f32 arg1) {
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    struct_80165C18_entry *temp_v0;

    if ((func_8007223C(objectIndex, 0x00000020) != 0) && (func_8007223C(objectIndex, 0x00800000) != 0)) {
        temp_v0 = &D_80165C18[objectIndex];
        D_80183E50.unk0 = temp_v0->unk_004[0];
        D_80183E50.unk8 = (f32) temp_v0->unk_004[2];
        D_80183E50.unk4 = (f32) ((f64) temp_v0->unk_044 + 0.8);
        func_80042A20((f32 (*)[4]) &sp30[0], temp_v0->unk_01C, &D_80183E50, 0U, arg1);
        func_80022180(&gGfxPool->mtxPool[D_8018D120] + 0x2C0, (f32 (*)[4]) &sp30[0]);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->words.w0 = 0x01020040;
        temp_v0_2->words.w1 = (s32) (&gGfxPool->mtxPool[D_8018D120] + 0x2C0) & 0x1FFFFFFF;
        temp_v0_3 = gDisplayListHead;
        D_8018D120 += 1;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->words.w0 = 0x06000000;
        temp_v0_3->words.w1 = (u32) &D_0D007B98;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004A870.s")
#endif

void func_8004A9B8(f32 arg0) {
    func_80043050(D_80183E50, D_80183E70, arg0);
    gSPDisplayList(gDisplayListHead++, D_0D007C10);
}

UNUSED void func_8004AA10(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8) {
    func_80042E00(arg0, arg1, arg2);
    gSPDisplayList(gDisplayListHead++, D_0D007AE0);
    func_8004B6C4(D_80165860, D_8016586C, D_80165878);
    func_800497CC(arg3, arg4, arg5, arg6, arg7, arg8);
}

UNUSED void func_8004AAA0(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5) {
    func_80049B20(arg0, arg1, arg2, arg3, arg4, arg5, 16, 16, 16, 16);
}

UNUSED void func_8004AB00(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5) {
    func_80049C18(arg0, arg1, arg2, arg3, arg4, arg5, 16, 16, 16, 16);
}

UNUSED void func_8004AB60(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5) {
    func_8004A0B0(arg0, arg1, arg2, arg3, arg4, arg5, 16, 16, 16, 16);
}

UNUSED void func_8004ABC0(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5) {
    func_80049B20(arg0, arg1, arg2, arg3, arg4, arg5, 32, 32, 32, 32);
}

UNUSED void func_8004AC20(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5) {
    func_80049C18(arg0, arg1, arg2, arg3, arg4, arg5, 32, 32, 32, 32);
}

UNUSED void func_8004AC80(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5) {
    func_8004A0B0(arg0, arg1, arg2, arg3, arg4, arg5, 32, 32, 32, 32);
}

UNUSED void func_8004ACE0(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4) {
    func_8004A414(arg0, arg1, arg2, arg3, arg4, 32, 32, 32, 32);
}

UNUSED void func_8004AD2C(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5) {
    func_80049B20(arg0, arg1, arg2, arg3, arg4, arg5, 64, 32, 64, 32);
}

UNUSED void func_8004AD8C(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5) {
    func_80049C18(arg0, arg1, arg2, arg3, arg4, arg5, 64, 32, 64, 32);
}

UNUSED void func_8004ADEC(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5) {
    func_80049C94(arg0, arg1, arg2, arg3, arg4, arg5, 64, 32, 64, 32);
}

UNUSED void func_8004AE4C(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5) {
    func_80049D10(arg0, arg1, arg2, arg3, arg4, arg5, 64, 32, 64, 32);
}

UNUSED void func_8004AEAC(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5) {
    func_80049D8C(arg0, arg1, arg2, arg3, arg4, arg5, 64, 32, 64, 32);
}

UNUSED void func_8004AF0C(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5) {
    func_80049C18(arg0, arg1, arg2, arg3, arg4, arg5, 64, 64, 64, 64);
}

UNUSED void func_8004AF6C(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5) {
    func_80049B20(arg0, arg1, arg2, arg3, arg4, arg5, 64, 64, 64, 32);
}

UNUSED void func_8004AFCC(s32 arg0, s32 arg1, u16 arg2, f32 arg3, s32 arg4, s32 arg5) {
    func_80049C18(arg0, arg1, arg2, arg3, arg4, arg5, 64, 96, 64, 48);
}

UNUSED void func_8004B02C(void) {
    gDPSetRenderMode(gDisplayListHead++, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_WRAP | ZMODE_XLU | CVG_X_ALPHA | FORCE_BL | GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA), AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_WRAP | ZMODE_XLU | CVG_X_ALPHA | FORCE_BL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA));
}

void func_8004B05C(u8 *texture) {
    gDPLoadTLUT_pal256(gDisplayListHead++, texture);
    gDPLoadSync(gDisplayListHead++);
    gDPSetTexturePersp(gDisplayListHead++, G_TP_NONE);
}

void func_8004B138(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    gDPSetPrimColor(gDisplayListHead++, 0, 0, arg0, arg1, arg2, arg3);
}

UNUSED void func_8004B180(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    gDPSetEnvColor(gDisplayListHead++, arg0, arg1, arg2, arg3);
}

void func_8004B1C8(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    gDPSetPrimColor(gDisplayListHead++, 0, 0, arg0, arg1, arg2, arg6);
    gDPSetEnvColor(gDisplayListHead++, arg3, arg4, arg5, 0xFF);
}

UNUSED void func_8004B254(s32 arg0, s32 arg1, s32 arg2) {
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetPrimColor(gDisplayListHead++, 0, 0, arg0, arg1, arg2, 0xFF);
}

void func_8004B2BC(s32 arg0) {
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetPrimColor(gDisplayListHead++, 0, 0, 0xFF, 0xFF, 0xFF, arg0);
}

void func_8004B310(s32 arg0) {
    gDPSetCombineLERP(gDisplayListHead++, 0, 0, 0, TEXEL0, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, TEXEL0, TEXEL0, 0, PRIMITIVE, 0);
    gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x00, 0x00, arg0);
}

void func_8004B35C(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetPrimColor(gDisplayListHead++, 0, 0, arg0, arg1, arg2, arg3);
}

void func_8004B3C8(s32 arg0) {
    gDPSetCombineLERP(gDisplayListHead++, 0, 0, 0, 1, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, 1, TEXEL0, 0, PRIMITIVE, 0);
    gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x00, 0x00, arg0);
}

void func_8004B414(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    gDPSetCombineLERP(gDisplayListHead++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0);
    gDPSetPrimColor(gDisplayListHead++, 0, 0, arg0, arg1, arg2, arg3);
}

void func_8004B480(s32 arg0, s32 arg1, s32 arg2) {
    gDPSetCombineLERP(gDisplayListHead++, 0, 0, 0, PRIMITIVE, 0, 0, 0, TEXEL0, 0, 0, 0, PRIMITIVE, 0, 0, 0, TEXEL0);
    gDPSetPrimColor(gDisplayListHead++, 0, 0, arg0, arg1, arg2, 0xFF);
}

UNUSED void func_8004B4E8(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    gDPSetCombineLERP(gDisplayListHead++, 1, 0, SHADE, PRIMITIVE, 0, 0, 0, TEXEL0, 1, 0, SHADE, PRIMITIVE, 0, 0, 0, TEXEL0);
    gDPSetPrimColor(gDisplayListHead++, 0, 0, arg0, arg1, arg2, arg3);
}

UNUSED void func_8004B554(s32 arg0) {
    gDPSetCombineLERP(gDisplayListHead++, 0, 0, 0, SHADE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, SHADE, TEXEL0, 0, PRIMITIVE, 0);
    gDPSetPrimColor(gDisplayListHead++, 0, 0, 0xFF, 0xFF, 0xFF, arg0);
}

UNUSED void func_8004B5A8(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    gDPSetPrimColor(gDisplayListHead++, 0, 0, arg0, arg1, arg2, arg3);
    gDPSetCombineLERP(gDisplayListHead++, 1, PRIMITIVE_ALPHA, TEXEL0, PRIMITIVE, 0, 0, 0, TEXEL0, 1, PRIMITIVE_ALPHA, TEXEL0, PRIMITIVE, 0, 0, 0, TEXEL0);
}

void func_8004B614(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    gDPSetPrimColor(gDisplayListHead++, 0, 0, arg0, arg1, arg2, arg6);
    gDPSetEnvColor(gDisplayListHead++, arg3, arg4, arg5, 0xFF);
    gDPSetCombineLERP(gDisplayListHead++, 1, ENVIRONMENT, TEXEL0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0, 1, ENVIRONMENT, TEXEL0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0);
}

void func_8004B6C4(s32 arg0, s32 arg1, s32 arg2) {
    gDPSetCombineLERP(gDisplayListHead++, 0, 0, 0, PRIMITIVE, 0, 0, 0, TEXEL0, 0, 0, 0, PRIMITIVE, 0, 0, 0, TEXEL0);
    gDPSetPrimColor(gDisplayListHead++, 0, 0, arg0, arg1, arg2, 0xFF);
}

void func_8004B72C(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    gDPSetPrimColor(gDisplayListHead++, 0, 0, arg0, arg1, arg2, arg6);
    gDPSetEnvColor(gDisplayListHead++, arg3, arg4, arg5, 0xFF);
    gDPSetCombineLERP(gDisplayListHead++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307


void func_8004B7DC(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    void *temp_v1_5;
    void *temp_v1_6;

    if (arg6 == 0) {

        gSPTextureRectangle
        //gTexRect(gDisplayListHead++, ((arg0 + arg2) - 1) << 0xC, (arg1 + arg3) - 1, arg0, arg1, G_TX_RENDERTILE);
        //gDPHalf2(gDisplayListHead++, arg4);
        //gSPModifyVertex(gDisplayListHead++, 0, arg5, 0x10000400);

/*
        temp_v1 = gDisplayListHead;
        gDisplayListHead = temp_v1 + 8;
        temp_v1->unk4 = (((arg0 * 4) & 0xFFF) << 0xC) | ((arg1 * 4) & 0xFFF);
        temp_v1->unk0 = (((((arg0 + arg2) - 1) * 4) & 0xFFF) << 0xC) | 0xE4000000 | ((((arg1 + arg3) - 1) * 4) & 0xFFF);
        temp_v1_2 = gDisplayListHead;
        gDisplayListHead = temp_v1_2 + 8;
        temp_v1_2->unk0 = 0xB3000000;
        temp_v1_2->unk4 = (arg4 << 0x15) | ((arg5 << 5) & 0xFFFF);
        temp_v1_3 = gDisplayListHead;
        gDisplayListHead = temp_v1_3 + 8;
        temp_v1_3->unk0 = 0xB2000000;
        temp_v1_3->unk4 = 0x10000400;
        */
        
    } else {

        //gSPTextureRectangle(gDisplayListHead++, arg0 << 0xC, arg1, arg0 + arg2 << 0xC, arg3, arg4, arg5);
/*
        gTexRect(gDisplayListHead++, ((arg0 + arg2) - 1) << 0xC, (arg1 + arg3) - 1, arg0, arg1, G_TX_RENDERTILE);
        gDPHalf2(gDisplayListHead++, arg4);
        gSPModifyVertex(gDisplayListHead++, 0, arg5, 0x10000400);
        */
/*
        temp_v1_4 = gDisplayListHead;
        gDisplayListHead = temp_v1_4 + 8;
        temp_v1_4->unk4 = (((arg0 * 4) & 0xFFF) << 0xC) | ((arg1 * 4) & 0xFFF);
        temp_v1_4->unk0 = ((((arg0 + arg2) * 4) & 0xFFF) << 0xC) | 0xE4000000 | (((arg1 + arg3) * 4) & 0xFFF);
        temp_v1_5 = gDisplayListHead;
        gDisplayListHead = temp_v1_5 + 8;
        temp_v1_5->unk0 = 0xB3000000;
        temp_v1_5->unk4 = (arg4 << 0x15) | ((arg5 << 5) & 0xFFFF);
        temp_v1_6 = gDisplayListHead;
        gDisplayListHead = temp_v1_6 + 8;
        temp_v1_6->unk0 = 0xB2000000;
        temp_v1_6->unk4 = 0x4000400;
        */
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004B7DC.s")
#endif

void func_8004B950(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    func_8004B7DC(arg0, arg1, arg2, arg3, 0, 0, arg4);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004B7DC(s32, s32, s32, s32, s32, s32, s32); // extern

void func_8004B97C(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 sp2C;
    s32 phi_a1;
    s32 phi_v1;
    s32 phi_v0;

    phi_a1 = arg1;
    if (-arg2 < arg0) {
        phi_v0 = 0;
        if (-arg3 < arg1) {
            sp2C = arg0;
            phi_v1 = 0;
            if (arg0 < 0) {
                sp2C = 0;
                phi_v1 = -arg0;
            }
            if (arg1 < 0) {
                phi_a1 = 0;
                phi_v0 = -arg1;
            }
            func_8004B7DC(sp2C, phi_a1, arg2 - phi_v1, arg3 - phi_v0, phi_v1, phi_v0, arg4);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004B97C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004B7DC(s32, s32, s32, s32, s32, s32, s32); // extern

void func_8004BA08(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 sp2C;
    s32 phi_a1;
    s32 phi_v1;
    s32 phi_v0;

    phi_a1 = arg1;
    if (-arg2 < arg0) {
        phi_v0 = 0;
        if (-arg3 < arg1) {
            sp2C = arg0;
            phi_v1 = 0;
            if (arg0 < 0) {
                sp2C = 0;
                phi_v1 = -arg0;
            }
            if (arg1 < 0) {
                phi_a1 = 0;
                phi_v0 = -arg1;
            }
            func_8004B7DC(sp2C, phi_a1, arg2 - phi_v1, arg3 - phi_v0, phi_v1 + arg2, phi_v0, arg4);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004BA08.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004B7DC(s32, s32, s32, s32, s32, s32, s32); // extern

void func_8004BA98(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    s32 phi_a3;
    s32 phi_v0;
    s32 phi_v1;

    phi_a3 = arg3;
    if ((-arg2 < arg0) && (-arg3 < arg1)) {
        sp34 = arg0;
        sp30 = arg1;
        sp2C = arg2;
        phi_v0 = arg4;
        phi_v1 = arg5;
        if (arg0 < 0) {
            sp34 = 0;
            sp2C = arg2 + arg0;
            phi_v0 = arg4 - arg0;
        }
        if (arg1 < 0) {
            sp30 = 0;
            phi_a3 = arg3 + arg1;
            phi_v1 = arg5 - arg1;
        }
        func_8004B7DC(sp34, sp30, sp2C, phi_a3, phi_v0, phi_v1, arg6);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004BA98.s")
#endif

UNUSED void func_8004BB34(void) {

}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307

void func_8004BB3C(s32 arg0, s32 arg1, s32 arg2, s32 arg3, f32 arg4) {
    s32 temp_f18;
    s32 temp_f18_2;
    s32 temp_t4;
    s32 temp_t5;
    s32 temp_t9;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    s32 phi_v0;
    s32 phi_t0;
    s32 phi_v1;
    s32 phi_t1;
    s16 phi_a1;
    s16 phi_a0;

    temp_f18 = ((arg2 * 4) * arg4) + 0.5;
    temp_f18_2 = ((arg3 * 4) * arg4) + 0.5;
    temp_t4 = (arg0 * 4) - (temp_f18 / 2);
    temp_t5 = (arg1 * 4) - (temp_f18_2 / 2);
    phi_v0 = temp_t4;
    phi_t0 = temp_f18;
    phi_v1 = temp_t5;
    phi_t1 = temp_f18_2;
    if (-temp_f18 < temp_t4) {
        phi_a0 = 0;
        if (-temp_f18_2 < temp_t5) {
            phi_a1 = 0;
            if (temp_t4 < 0) {
                phi_v0 = 0;
                phi_t0 = temp_f18 + temp_t4;
                phi_a1 = (temp_t4 * -8) / arg4;
            }
            if (temp_t5 < 0) {
                phi_v1 = 0;
                phi_t1 = temp_f18_2 + temp_t5;
                phi_a0 = (temp_t5 * -8) / arg4;
            }
            temp_a3 = gDisplayListHead;
            gDisplayListHead = temp_a3 + 8;
            temp_a3->unk0 = (((phi_v0 + phi_t0) & 0xFFF) << 0xC) | 0xE4000000 | ((phi_v1 + phi_t1) & 0xFFF);
            temp_a3->unk4 = ((phi_v0 & 0xFFF) << 0xC) | (phi_v1 & 0xFFF);
            temp_a3_2 = gDisplayListHead;
            gDisplayListHead = temp_a3_2 + 8;
            temp_a3_2->unk0 = 0xB3000000;
            temp_a3_2->unk4 = (phi_a1 << 0x10) | (phi_a0 & 0xFFFF);
            temp_a3_3 = gDisplayListHead;
            gDisplayListHead = temp_a3_3 + 8;
            temp_a3_3->unk0 = 0xB2000000;
            temp_t9 = ((1024.0f / arg4) + 0.5) & 0xFFFF;
            temp_a3_3->unk4 = (temp_t9 << 0x10) | temp_t9;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004BB3C.s")
#endif

#ifdef MIPS_TO_C
UNUSED void func_8004BD14(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    void *sp70;
    s32 sp3C;
    s32 sp38;
    s32 sp34;
    s32 sp28;
    s32 sp24;
    s32 temp_ra;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t5;
    s32 temp_t6;
    s32 temp_t7;
    s32 temp_t9;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_16;
    void *temp_v0_17;
    void *temp_v0_18;
    void *temp_v0_19;
    void *temp_v0_20;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk0 = 0x06000000;
    temp_v0->unk4 = &D_0D007F38;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk0 = 0x06000000;
    temp_v0_2->unk4 = &D_0D008138;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk4 = 0;
    temp_v0_3->unk0 = 0xBA001001;
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk0 = 0xFA000000;
    temp_v0_4->unk4 = (s32) (arg4 & 0xFF);
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk4 = 0x1FFC9238;
    temp_v0_5->unk0 = 0xFC2527FF;
    temp_v0_6 = gDisplayListHead;
    temp_t7 = arg2 - 1;
    gDisplayListHead = temp_v0_6 + 8;
    temp_t9 = (temp_t7 & 0xFFF) | 0xFD100000;
    sp38 = temp_t9;
    sp3C = temp_t7;
    temp_v0_6->unk0 = temp_t9;
    temp_v0_6->unk4 = arg5;
    temp_v0_7 = gDisplayListHead;
    gDisplayListHead = temp_v0_7 + 8;
    temp_t6 = ((((u32) ((sp3C * 2) + 9) >> 3) & 0x1FF) << 9) | 0xF5100000;
    sp34 = temp_t6;
    temp_v0_7->unk4 = 0x07080200;
    temp_v0_7->unk0 = temp_t6;
    temp_v0_8 = gDisplayListHead;
    gDisplayListHead = temp_v0_8 + 8;
    sp70 = temp_v0_8;
    temp_v0_8->unk4 = 0;
    temp_v0_8->unk0 = 0xE6000000;
    temp_v0_9 = gDisplayListHead;
    gDisplayListHead = temp_v0_9 + 8;
    temp_v0_9->unk0 = 0xF4000000;
    temp_t3 = sp34 | 0x100;
    temp_t5 = ((sp3C * 4) & 0xFFF) << 0xC;
    temp_ra = ((arg3 - 1) * 4) & 0xFFF;
    temp_t2 = temp_t5 | 0x07000000 | temp_ra;
    temp_v0_9->unk4 = temp_t2;
    temp_v0_10 = gDisplayListHead;
    gDisplayListHead = temp_v0_10 + 8;
    temp_v0_10->unk4 = 0;
    temp_v0_10->unk0 = 0xE7000000;
    temp_v0_11 = gDisplayListHead;
    gDisplayListHead = temp_v0_11 + 8;
    temp_v0_11->unk4 = 0x80200;
    temp_v0_11->unk0 = sp34;
    temp_v0_12 = gDisplayListHead;
    gDisplayListHead = temp_v0_12 + 8;
    temp_v0_12->unk4 = (s32) (temp_t5 | temp_ra);
    temp_v0_12->unk0 = 0xF2000000;
    temp_v0_13 = gDisplayListHead;
    gDisplayListHead = temp_v0_13 + 8;
    temp_v0_13->unk0 = sp38;
    temp_v0_13->unk4 = arg6;
    temp_v0_14 = gDisplayListHead;
    gDisplayListHead = temp_v0_14 + 8;
    temp_v0_14->unk4 = 0x07080200;
    temp_v0_14->unk0 = temp_t3;
    temp_v0_15 = gDisplayListHead;
    sp24 = temp_t3;
    sp28 = temp_t2;
    gDisplayListHead = temp_v0_15 + 8;
    temp_v0_15->unk4 = 0;
    temp_v0_15->unk0 = 0xE6000000;
    temp_v0_16 = gDisplayListHead;
    gDisplayListHead = temp_v0_16 + 8;
    temp_v0_16->unk0 = 0xF4000000;
    temp_v0_16->unk4 = sp28;
    temp_v0_17 = gDisplayListHead;
    gDisplayListHead = temp_v0_17 + 8;
    temp_v0_17->unk4 = 0;
    temp_v0_17->unk0 = 0xE7000000;
    temp_v0_18 = gDisplayListHead;
    gDisplayListHead = temp_v0_18 + 8;
    temp_v0_18->unk4 = 0x01080200;
    temp_v0_18->unk0 = sp24;
    temp_v0_19 = gDisplayListHead;
    gDisplayListHead = temp_v0_19 + 8;
    temp_v0_19->unk0 = 0xF2000000;
    temp_v0_19->unk4 = (s32) (temp_t5 | 0x01000000 | temp_ra);
    func_8004B950(arg0, arg1, arg2, arg3, 2);
    temp_v0_20 = gDisplayListHead;
    gDisplayListHead = temp_v0_20 + 8;
    temp_v0_20->unk0 = 0x06000000;
    temp_v0_20->unk4 = &D_0D008120;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004BD14.s")
#endif

void func_8004C024(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6) {

    gDPSetPrimColor(gDisplayListHead++, 0, 0, arg3, arg4, arg5, arg6);
    gDPSetTextureLUT(gDisplayListHead++, G_TT_NONE);
    gDPSetTexturePersp(gDisplayListHead++, G_TP_NONE);
    gDPSetCombineMode(gDisplayListHead++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
    gDPSetRenderMode(gDisplayListHead++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
    func_8004B97C(arg0, arg1, arg2, 1, 1);
}

void func_8004C148(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6) {


    gDPSetPrimColor(gDisplayListHead++, 0, 0, arg3, arg4, arg5, arg6);
    gDPSetTextureLUT(gDisplayListHead++, G_TT_NONE);
    gDPSetTexturePersp(gDisplayListHead++, G_TP_NONE);
    gDPSetCombineMode(gDisplayListHead++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
    gDPSetRenderMode(gDisplayListHead++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
    func_8004B97C(arg0, arg1, 1, arg2, 1);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80043D50(s32, u32, u32); // extern
? func_8004B97C(s32, s32, u32, u32, s32); // extern

void func_8004C268(s32 arg0, s32 arg1, s32 arg2, u32 arg3, u32 arg4, u32 arg5, s32 arg6) {
    u32 temp_lo;
    u32 temp_s2;
    s32 phi_s1;
    s32 phi_s0;
    u32 phi_s2;

    temp_lo = arg4 / arg5;
    phi_s1 = arg2;
    phi_s0 = arg1 - (arg4 >> 1);
    phi_s2 = 0;
    if (temp_lo != 0) {
        do {
            func_80043D50(phi_s1, arg3, arg5);
            func_8004B97C(arg0 - (arg3 >> 1), phi_s0, arg3, arg5, arg6);
            temp_s2 = phi_s2 + 1;
            phi_s1 += arg3 * arg5 * 2;
            phi_s0 += arg5;
            phi_s2 = temp_s2;
        } while (temp_s2 < temp_lo);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004C268.s")
#endif

UNUSED void func_8004C354() {
}

UNUSED void func_8004C35C() {
}

void func_8004C364(s32 arg0, s32 arg1, u32 arg2, u32 arg3, s32 arg4) {
    gSPDisplayList(gDisplayListHead++, D_0D008108);
    gSPDisplayList(gDisplayListHead++, D_0D007EF8);
    gDPSetAlphaCompare(gDisplayListHead++, G_AC_THRESHOLD);
    func_80043D50(arg4, arg2, arg3);
    func_8004B97C(arg0 - (arg2 >> 1), arg1 - (arg3 >> 1), arg2, arg3, 0);
    gSPDisplayList(gDisplayListHead++, D_0D007EB8);
}

void func_8004C450(s32 arg0, s32 arg1, u32 arg2, u32 arg3, s32 arg4) {

    gSPDisplayList(gDisplayListHead++, D_0D007F38);
    func_8004B614(D_801656C0, D_801656D0, D_801656E0, 0x80, 0x80, 0x80, 0xFF);
    func_80043D50(arg4, arg2, arg3);
    func_8004B97C(arg0 - (arg2 >> 1), arg1 - (arg3 >> 1), arg2, arg3, 1);
    gSPDisplayList(gDisplayListHead++, D_0D007EB8);
}

UNUSED void func_8004C53C(s32 arg0, s32 arg1, u32 arg2, u32 arg3, s32 arg4) {

    gSPDisplayList(gDisplayListHead++, D_0D008108);
    gSPDisplayList(gDisplayListHead++, D_0D007EF8);
    gDPSetAlphaCompare(gDisplayListHead++, G_AC_THRESHOLD);
    func_800440B8(arg4, arg2, arg3);
    func_8004B97C(arg0 - (arg2 >> 1), arg1 - (arg3 >> 1), arg2, arg3, 0);
    gSPDisplayList(gDisplayListHead++, D_0D007EB8);
}

void func_8004C628(s32 arg0, s32 arg1, u32 arg2, u32 arg3, s32 arg4) {

    gSPDisplayList(gDisplayListHead++, D_0D007EF8);
    gDPSetAlphaCompare(gDisplayListHead++, G_AC_THRESHOLD);
    func_80043A84(arg4, arg2, arg3);
    func_8004B97C(arg0 - (arg2 >> 1), arg1 - (arg3 >> 1), arg2, arg3, 1);
    gSPDisplayList(gDisplayListHead++, D_0D007EB8);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80043C28(s32, u32, u32); // extern
? func_8004B950(s32, s32, u32, u32, s32); // extern
extern ? D_0D007EB8;
extern ? D_0D007EF8;


void func_8004C6FC(s16 arg0, s16 arg1, s32 arg2, u32 arg3, u32 arg4) {
    s32 temp_s3;
    s32 temp_t5;
    s32 temp_v0_3;
    u32 temp_t3;
    u32 temp_t8;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_4;
    u32 phi_t2;
    s32 phi_s5;
    u32 phi_s0;
    s32 phi_s4;
    u32 phi_s6;
    s32 phi_s3;
    u32 phi_s0_2;

    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk0 = 0x6000000;
    temp_v0->unk4 = &D_0D007EF8;
    temp_v0_2 = gDisplayListHead;
    temp_t8 = arg3 * arg4 * 4;
    gDisplayListHead = temp_v0_2 + 8;
    temp_t3 = temp_t8 >> 0xC;
    temp_v0_2->unk4 = 0x504240;
    temp_v0_2->unk0 = 0xB900031D;
    phi_t2 = temp_t3;
    phi_s5 = arg2;
    phi_s4 = arg1 - (arg4 >> 1);
    phi_s6 = temp_t8;
    if ((temp_t8 & 0xFFF) != 0) {
        phi_t2 = temp_t3 + 1;
    }
    phi_s0 = arg4 / phi_t2;
    phi_s3 = 0;
    if (phi_t2 > 0) {
        do {
            temp_t5 = arg3 * phi_s0 * 4;
            func_80043C28(phi_s5, arg3, phi_s0);
            func_8004B950(arg0 - (arg3 >> 1), phi_s4, arg3, phi_s0, 1);
            temp_v0_3 = phi_s6 - temp_t5;
            phi_s5 += temp_t5;
            phi_s0_2 = phi_s0;
            if (temp_v0_3 < 0) {
                phi_s0_2 = phi_s6 / arg3;
            } else {
                phi_s6 = temp_v0_3;
            }
            temp_s3 = phi_s3 + 1;
            phi_s0 = phi_s0_2;
            phi_s4 += phi_s0_2;
            phi_s3 = temp_s3;
        } while (temp_s3 < phi_t2);
    }
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk0 = 0x6000000;
    temp_v0_4->unk4 = &D_0D007EB8;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004C6FC.s")
#endif

void func_8004C8D4(s16 arg0, s16 arg1) {
    func_8004C6FC(arg0, arg1, D_8018D1E0, 0x100, 0x80);
}

void func_8004C91C(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    gSPDisplayList(gDisplayListHead++, D_0D008108);
    gSPDisplayList(gDisplayListHead++, D_0D007EF8);
    gDPSetAlphaCompare(gDisplayListHead++, G_AC_THRESHOLD);
    func_8004C268(arg0, arg1, arg2, arg3, arg4, arg5, 0);
    gSPDisplayList(gDisplayListHead++, D_0D007EB8);
}

void func_8004C9D8(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    gSPDisplayList(gDisplayListHead++, D_0D007F38);
    func_8004B2BC(arg2);
    func_8004C268(arg0, arg1, arg3, arg4, arg5, arg7, 1);
}

void func_8004CA58(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    gSPDisplayList(gDisplayListHead++, D_0D007F78);
    func_80043D50(arg3, arg4, arg5);
    func_8004BB3C(arg0, arg1, arg4, arg5, arg2);
}

void func_8004CAD0(s32 arg0, s32 arg1, s32 arg2) {
    func_8004C364(arg0, arg1, 8, 8, arg2);
}

UNUSED void func_8004CB00(s32 arg0, s32 arg1, s32 arg2) {
    func_8004C364(arg0, arg1, 8, 16, arg2);
}

UNUSED void func_8004CB30(s32 arg0, s32 arg1, s32 arg2) {
    func_8004C364(arg0, arg1, 16, 16, arg2);
}

void func_8004CB60(s32 arg0, s32 arg1, s32 arg2) {
    func_8004C364(arg0, arg1, 32, 8, arg2);
}

void func_8004CB90(s32 arg0, s32 arg1, s32 arg2) {
    func_8004C364(arg0, arg1, 32, 16, arg2);
}

UNUSED void func_8004CBC0(s32 arg0, s32 arg1, f32 arg2, s32 arg3) {
    func_8004CA58(arg0, arg1, arg2, arg3, 32, 16);
}

UNUSED void func_8004CBF4(s32 arg0, s32 arg1, s32 arg2) {
    func_8004C364(arg0, arg1, 32, 32, arg2);
}

UNUSED void func_8004CC24(s32 arg0, s32 arg1, s32 arg2) {
    func_8004C628(arg0, arg1, 32, 32, arg2);
}

UNUSED void func_8004CC54(s32 arg0, s32 arg1, s32 arg2) {
    func_8004C364(arg0, arg1, 40, 32, arg2);
}

UNUSED void func_8004CC84(s32 arg0, s32 arg1, s32 arg2) {
    func_8004C91C(arg0, arg1, arg2, 48, 48, 24);
}

UNUSED void func_8004CCB4(s32 arg0, s32 arg1, s32 arg2) {
    func_8004C364(arg0, arg1, 64, 32, arg2);
}

UNUSED void func_8004CCE4(s32 arg0, s32 arg1, f32 arg2, s32 arg3) {
    func_8004CA58(arg0, arg1, arg2, arg3, 64, 32);
}

UNUSED void func_8004CD18(s32 arg0, s32 arg1, s32 arg2) {
    func_8004C91C(arg0, arg1, arg2, 64, 64, 32);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800441E0(s32, s32, s32); // extern
void *func_8004B97C(s32, s32, s32, s32, s32); // extern
extern ? D_0D007FE0;


void *func_8004CD48(s32 arg0, s32 arg1, ? arg2, s32 arg3, s32 arg4, s32 arg5) {
    s32 sp40;
    s32 temp_lo;
    s32 temp_s1;
    s32 temp_s4;
    void *temp_v0;
    void *temp_v1;
    s32 phi_s4;
    s32 phi_s0;
    s32 phi_s1;
    void *phi_v0;

    temp_lo = arg4 / arg5;
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x6000000;
    temp_v1->unk4 = &D_0D007FE0;
    phi_s0 = arg1 - (arg4 / 2);
    phi_s1 = 0;
    phi_v0 = temp_v1;
    if (temp_lo > 0) {
        phi_s4 = sp40;
        do {
            func_800441E0(phi_s4, arg3, arg5);
            temp_v0 = func_8004B97C(arg0 - (arg3 / 2), phi_s0, arg3, arg5, 1);
            temp_s1 = phi_s1 + 1;
            temp_s4 = phi_s4 + (arg3 * arg5 * 2);
            phi_s4 = temp_s4;
            phi_s0 += arg5;
            phi_s1 = temp_s1;
            phi_v0 = temp_v0;
        } while (temp_s1 != temp_lo);
        sp40 = temp_s4;
    }
    return phi_v0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004CD48.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800444B0(s32, s32, s32); // extern
? func_8004B97C(s32, s32, s32, s32, s32); // extern

void func_8004CE8C(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    s32 temp_lo;
    s32 temp_s2;
    s32 phi_s1;
    s32 phi_s0;
    s32 phi_s2;

    temp_lo = arg4 / arg5;
    phi_s1 = arg2;
    phi_s0 = arg1 - (arg4 / 2);
    phi_s2 = 0;
    if (temp_lo > 0) {
        do {
            func_800444B0(phi_s1, arg3, arg5);
            func_8004B97C(arg0 - (arg3 / 2), phi_s0, arg3, arg5, 1);
            temp_s2 = phi_s2 + 1;
            phi_s1 += arg3 * arg5;
            phi_s0 += arg5;
            phi_s2 = temp_s2;
        } while (temp_s2 != temp_lo);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004CE8C.s")
#endif

void func_8004CF9C(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    gSPDisplayList(gDisplayListHead++, D_0D007FE0);
    func_8004CE8C(arg0, arg1, arg2, arg3, arg4, arg6);
}

UNUSED void func_8004CFF0(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    gSPDisplayList(gDisplayListHead++, D_0D008000);
    func_8004CE8C(arg0, arg1, arg2, arg3, arg4, arg6);
}

UNUSED void func_8004D044(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA) {
    gSPDisplayList(gDisplayListHead++, D_0D007FE0);
    func_8004B35C(arg3, arg4, arg5, arg6);
    func_8004CE8C(arg0, arg1, arg2, arg7, arg8, argA);
}

UNUSED void func_8004D0CC(void) {

}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80044924(s32, s32, s32); // extern
void *func_8004B97C(s32, s32, s32, s32, s32); // extern
extern ? D_0D007FE0;


void *func_8004D0D4(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    s32 temp_lo;
    s32 temp_s2;
    void *temp_v1;
    s32 phi_s1;
    s32 phi_s0;
    s32 phi_s2;
    void *phi_v0;

    temp_lo = arg4 / arg5;
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x6000000;
    temp_v1->unk4 = &D_0D007FE0;
    phi_s1 = arg2;
    phi_s0 = arg1 - (arg4 / 2);
    phi_s2 = 0;
    phi_v0 = temp_v1;
    if (temp_lo > 0) {
        do {
            func_80044924(phi_s1, arg3, arg5);
            temp_s2 = phi_s2 + 1;
            phi_s1 += arg3 * arg5;
            phi_s0 += arg5;
            phi_s2 = temp_s2;
            phi_v0 = func_8004B97C(arg0 - (arg3 / 2), phi_s0, arg3, arg5, 1);
        } while (temp_s2 != temp_lo);
    }
    return phi_v0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004D0D4.s")
#endif

#ifdef MIPS_TO_C
UNUSED void func_8004D210(s32 arg0, s32 arg1, s32 arg2, ? arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 argA) {
    s32 temp_lo;
    s32 var_s0;
    s32 var_s3;
    s32 var_s4;
    void *temp_v1;

    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x06000000;
    temp_v1->unk4 = &D_0D007FE0;
    var_s3 = arg1 - (arg8 / 2);
    var_s4 = arg2;
    func_8004B35C(arg3, arg4, arg5, arg6);
    var_s0 = 0;
    temp_lo = arg8 / argA;
    if (temp_lo > 0) {
        do {
            func_80044924(var_s4, arg7, argA);
            func_8004B97C(arg0 - (arg7 / 2), var_s3, arg7, argA, 1);
            var_s0 += 1;
            var_s4 += (s32) (arg7 * argA) / 2;
            var_s3 += argA;
        } while (var_s0 != temp_lo);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004D210.s")
#endif


#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80044F34(s32, s32, s32); // extern
? func_8004B414(?, s32, s32, s32); // extern
? func_8004B97C(s32, s32, s32, s32, s32); // extern
extern ? D_0D007FE0;


void func_8004D37C(s32 arg0, s32 arg1, s32 arg2, ? arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 argA) {
    s32 temp_lo;
    s32 temp_s0;
    void *temp_v1;
    s32 phi_s4;
    s32 phi_s3;
    s32 phi_s0;

    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x6000000;
    temp_v1->unk4 = &D_0D007FE0;
    func_8004B414(arg3, arg4, arg5, arg6);
    temp_lo = arg8 / argA;
    phi_s4 = arg2;
    phi_s3 = arg1 - (arg8 / 2);
    phi_s0 = 0;
    if (temp_lo > 0) {
        do {
            func_80044F34(phi_s4, arg7, argA);
            func_8004B97C(arg0 - (arg7 / 2), phi_s3, arg7, argA, 1);
            temp_s0 = phi_s0 + 1;
            phi_s4 += (arg7 * argA) / 2;
            phi_s3 += argA;
            phi_s0 = temp_s0;
        } while (temp_s0 != temp_lo);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004D37C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800450C8(s32, s32, s32); // extern
? func_8004B414(?, s32, s32, s32); // extern
? func_8004BA08(s32, s32, s32, s32, s32); // extern
extern ? D_0D007FE0;


void func_8004D4E8(s32 arg0, s32 arg1, s32 arg2, ? arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 argA) {
    s32 temp_lo;
    s32 temp_s0;
    void *temp_v1;
    s32 phi_s4;
    s32 phi_s3;
    s32 phi_s0;

    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x6000000;
    temp_v1->unk4 = &D_0D007FE0;
    func_8004B414(arg3, arg4, arg5, arg6);
    temp_lo = arg8 / argA;
    phi_s4 = arg2;
    phi_s3 = arg1 - (arg8 / 2);
    phi_s0 = 0;
    if (temp_lo > 0) {
        do {
            func_800450C8(phi_s4, arg7, argA);
            func_8004BA08(arg0 - (arg7 / 2), phi_s3, arg7, argA, 1);
            temp_s0 = phi_s0 + 1;
            phi_s4 += (arg7 * argA) / 2;
            phi_s3 += argA;
            phi_s0 = temp_s0;
        } while (temp_s0 != temp_lo);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004D4E8.s")
#endif

#ifdef MIPS_TO_C
UNUSED void func_8004D654(s32 arg0, s32 arg1, s32 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg8, s32 arg9, s32 argB) {
    s32 temp_lo;
    s32 var_s0;
    s32 var_s2;
    void *temp_v1;

    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x06000000;
    temp_v1->unk4 = &D_0D008000;
    var_s2 = arg2;
    func_8004B480(arg4, arg5, arg6, arg2);
    var_s0 = 0;
    temp_lo = arg9 / argB;
    if (temp_lo > 0) {
        do {
            func_80044F34(var_s2, arg8, argB);
            func_8004BB3C(arg0, arg1, arg8, arg9, arg3);
            var_s0 += 1;
            var_s2 += (s32) (arg8 * argB) / 2;
        } while (var_s0 != temp_lo);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004D654.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800441E0(s32, s32, ?); // extern
? func_8004B97C(s32, s32, s32, ?, s32); // extern
f32 sins(s32); // extern
extern ? D_0D007FE0;
extern u16 D_801656B0;
extern s16 D_80165708;
extern s16 D_80165710;
extern f32 D_8018D00C;


void func_8004D7B4(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 sp5C;
    f32 temp_f20;
    s16 temp_s7;
    s32 temp_s0;
    s32 temp_s4;
    s32 temp_s5;
    void *temp_v1;
    s16 phi_s1;
    s32 phi_s2;
    s32 phi_s3;
    s32 phi_s4;

    D_801656B0 = D_801656B0 + D_80165710;
    temp_f20 = D_8018D00C;
    temp_v1 = gDisplayListHead;
    temp_s7 = D_80165708;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x6000000;
    temp_v1->unk4 = &D_0D007FE0;
    phi_s1 = D_801656B0;
    phi_s2 = arg2;
    phi_s3 = arg1 - (arg4 / 2);
    phi_s4 = 0;
    if (arg4 > 0) {
        sp5C = arg3 * 2;
        do {
            temp_s0 = phi_s1 & 0xFFFF;
            temp_s5 = (sins(temp_s0 & 0xFFFF) * temp_f20) + (arg0 - (arg3 / 2));
            sins(temp_s0 & 0xFFFF);
            func_800441E0(phi_s2, arg3, 1);
            func_8004B97C(temp_s5, phi_s3, arg3, 1, 1);
            temp_s4 = phi_s4 + 1;
            phi_s1 = phi_s1 + temp_s7;
            phi_s2 += sp5C;
            phi_s3 += 1;
            phi_s4 = temp_s4;
        } while (temp_s4 != arg4);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004D7B4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800444B0(s32, s32, ?); // extern
? func_8004B97C(s32, s32, s32, ?, s32); // extern
f32 sins(s32); // extern
extern ? D_0D007FE0;
extern u16 D_801656B0;
extern s16 D_80165708;
extern s16 D_80165710;
extern f32 D_8018D00C;


void func_8004D93C(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    f32 temp_f20;
    s16 temp_s7;
    s32 temp_s0;
    s32 temp_s5;
    s32 temp_s6;
    void *temp_v1;
    s16 phi_s1;
    s32 phi_s2;
    s32 phi_s4;
    s32 phi_s5;

    D_801656B0 = D_801656B0 + D_80165710;
    temp_f20 = D_8018D00C;
    temp_v1 = gDisplayListHead;
    temp_s7 = D_80165708;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x6000000;
    temp_v1->unk4 = &D_0D007FE0;
    phi_s1 = D_801656B0;
    phi_s2 = arg2;
    phi_s4 = arg1 - (arg4 / 2);
    phi_s5 = 0;
    if (arg4 > 0) {
        do {
            temp_s0 = phi_s1 & 0xFFFF;
            temp_s6 = (sins(temp_s0 & 0xFFFF) * temp_f20) + (arg0 - (arg3 / 2));
            sins(temp_s0 & 0xFFFF);
            func_800444B0(phi_s2, arg3, 1);
            func_8004B97C(temp_s6, phi_s4, arg3, 1, 1);
            temp_s5 = phi_s5 + 1;
            phi_s1 = phi_s1 + temp_s7;
            phi_s2 += arg3;
            phi_s4 += 1;
            phi_s5 = temp_s5;
        } while (temp_s5 != arg4);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004D93C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80044924(s32, s32, ?); // extern
? func_8004B97C(s32, s32, s32, ?, s32); // extern
f32 sins(s32); // extern
extern ? D_0D007FE0;
extern u16 D_801656B0;
extern s16 D_80165708;
extern s16 D_80165710;
extern f32 D_8018D00C;


void func_8004DAB8(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    f32 temp_f20;
    s16 temp_s7;
    s32 temp_s0;
    s32 temp_s5;
    s32 temp_s6;
    void *temp_v1;
    s16 phi_s1;
    s32 phi_s2;
    s32 phi_s4;
    s32 phi_s5;

    D_801656B0 = D_801656B0 + D_80165710;
    temp_f20 = D_8018D00C;
    temp_v1 = gDisplayListHead;
    temp_s7 = D_80165708;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x6000000;
    temp_v1->unk4 = &D_0D007FE0;
    phi_s1 = D_801656B0;
    phi_s2 = arg2;
    phi_s4 = arg1 - (arg4 / 2);
    phi_s5 = 0;
    if (arg4 > 0) {
        do {
            temp_s0 = phi_s1 & 0xFFFF;
            temp_s6 = (sins(temp_s0 & 0xFFFF) * temp_f20) + (arg0 - (arg3 / 2));
            sins(temp_s0 & 0xFFFF);
            func_80044924(phi_s2, arg3, 1);
            func_8004B97C(temp_s6, phi_s4, arg3, 1, 1);
            temp_s5 = phi_s5 + 1;
            phi_s1 = phi_s1 + temp_s7;
            phi_s2 += arg3;
            phi_s4 += 1;
            phi_s5 = temp_s5;
        } while (temp_s5 != arg4);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004DAB8.s")
#endif

UNUSED void func_8004DC34(s32 arg0, s32 arg1, s32 arg2) {
    func_8004CF9C(arg0, arg1, arg2, 8, 160, 8, 160);
}

UNUSED void func_8004DC6C(s32 arg0, s32 arg1, s32 arg2) {
    func_8004CF9C(arg0, arg1, arg2, 12, 160, 12, 160);
}

UNUSED void func_8004DCA4(s32 arg0, s32 arg1, s32 arg2) {
    func_8004CF9C(arg0, arg1, arg2, 12, 192, 12, 192);
}

UNUSED void func_8004DCDC(s32 arg0, s32 arg1, s32 arg2) {
    func_8004CD48(arg0, arg1, arg2, 16, 16, 16);
}

UNUSED void func_8004DD0C(s32 arg0, s32 arg1, s32 arg2) {
    func_8004CF9C(arg0, arg1, arg2, 16, 160, 16, 160);
}

UNUSED void func_8004DD44(s32 arg0, s32 arg1, s32 arg2) {
    func_8004CD48(arg0, arg1, arg2, 32, 32, 32);
}

UNUSED void func_8004DD74(s32 arg0, s32 arg1, s32 arg2) {
    func_8004CF9C(arg0, arg1, arg2, 32, 32, 32, 32);
}

UNUSED void func_8004DDAC(s32 arg0, s32 arg1, s32 arg2) {
    func_8004D0D4(arg0, arg1, arg2, 32, 32, 32);
}

UNUSED void func_8004DDDC(s32 arg0, s32 arg1, s32 arg2) {
    func_8004D7B4(arg0, arg1, arg2, 32, 32);
}

UNUSED void func_8004DE04(s32 arg0, s32 arg1, s32 arg2) {
    func_8004D93C(arg0, arg1, arg2, 32, 32);
}

UNUSED void func_8004DE2C(s32 arg0, s32 arg1, s32 arg2) {
    func_8004DAB8(arg0, arg1, arg2, 32, 32);
}

UNUSED void func_8004DE54(s32 arg0, s32 arg1, s32 arg2) {
    func_8004CD48(arg0, arg1, arg2, 64, 32, 32);
}

UNUSED void func_8004DE84(s32 arg0, s32 arg1, s32 arg2) {
    func_8004CD48(arg0, arg1, arg2, 64, 64, 32);
}

UNUSED void func_8004DEB4(s32 arg0, s32 arg1, s32 arg2) {
    func_8004CF9C(arg0, arg1, arg2, 64, 96, 64, 48);
}

UNUSED void func_8004DEEC(s32 arg0, s32 arg1, s32 arg2) {
    func_8004CF9C(arg0, arg1, arg2, 112, 32, 112, 32);
}

UNUSED void func_8004DF24(s32 arg0, s32 arg1, s32 arg2) {
    func_8004CF9C(arg0, arg1, arg2, 128, 32, 128, 32);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800452A4(s32, s32, s32); // extern
? func_8004B97C(s32, s32, s32, s32, s32); // extern

void func_8004DF5C(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    s32 temp_lo;
    s32 temp_s2;
    s32 phi_s1;
    s32 phi_s0;
    s32 phi_s2;

    temp_lo = arg4 / arg5;
    phi_s1 = arg2;
    phi_s0 = arg1 - (arg4 / 2);
    phi_s2 = 0;
    if (temp_lo > 0) {
        do {
            func_800452A4(phi_s1, arg3, arg5);
            func_8004B97C(arg0 - (arg3 / 2), phi_s0, arg3, arg5, 1);
            temp_s2 = phi_s2 + 1;
            phi_s1 += arg3 * arg5;
            phi_s0 += arg5;
            phi_s2 = temp_s2;
        } while (temp_s2 != temp_lo);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004DF5C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800452A4(s32, s32, ?); // extern
? func_8004B97C(u32, s32, s32, ?, s32); // extern
f32 sins(s32); // extern
extern u16 D_801656B0;
extern s16 D_80165708;
extern s16 D_80165710;
extern f32 D_8018D00C;

void func_8004E06C(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    f32 temp_f20;
    s16 temp_s7;
    s32 temp_s0;
    s32 temp_s5;
    u32 temp_s6;
    s16 phi_s1;
    s32 phi_s2;
    s32 phi_s4;
    s32 phi_s5;

    D_801656B0 = D_801656B0 + D_80165710;
    temp_f20 = D_8018D00C;
    temp_s7 = D_80165708;
    phi_s1 = D_801656B0;
    phi_s2 = arg2;
    phi_s4 = arg1 - (arg4 / 2);
    phi_s5 = 0;
    if (arg4 > 0) {
        do {
            temp_s0 = phi_s1 & 0xFFFF;
            temp_s6 = (sins(temp_s0 & 0xFFFF) * temp_f20) + (arg0 - (arg3 / 2));
            sins(temp_s0 & 0xFFFF);
            func_800452A4(phi_s2, arg3, 1);
            func_8004B97C(temp_s6, phi_s4, arg3, 1, 1);
            temp_s5 = phi_s5 + 1;
            phi_s1 = phi_s1 + temp_s7;
            phi_s2 += arg3;
            phi_s4 += 1;
            phi_s5 = temp_s5;
        } while (temp_s5 != arg4);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004E06C.s")
#endif

UNUSED void func_8004E238(void) {

}

void func_8004E240(s32 arg0, s32 arg1, u8 *tlut, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    gSPDisplayList(gDisplayListHead++, D_0D007CB8);
    func_8004B05C(tlut);
    func_8004DF5C(arg0, arg1, arg3, arg4, arg5, arg6);
}

void func_8004E2B8(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    gSPDisplayList(gDisplayListHead++, D_0D007DB8);
    func_8004B2BC(arg2);
    func_8004B05C(arg3);
    func_8004DF5C(arg0, arg1, arg4, arg5, arg6, arg7);
}

void func_8004E338(s32 arg0, s32 arg1, u8 *tlut, s32 arg3, s32 arg4, s32 arg5) {
    gSPDisplayList(gDisplayListHead++, D_0D007DB8);
    func_8004B2BC(D_8016589C);
    func_8004B05C(tlut);
    func_8004E06C(arg0, arg1, arg3, arg4, arg5);
}

UNUSED void func_8004E3B8(void) {

}

UNUSED void func_8004E3C0(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    func_8004E240(arg0, arg1, arg2, arg3, arg4, arg5, arg7);
}

UNUSED void func_8004E3F4(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8) {
    func_8004E2B8(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg8);
}

UNUSED void func_8004E430(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    func_8004E240(arg0, arg1, arg2, arg3, 8, 128, 128);
}

UNUSED void func_8004E464(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    func_8004E240(arg0, arg1, arg2, arg3, 32, 32, 32);
}

UNUSED void func_8004E498(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    func_8004E240(arg0, arg1, arg2, arg3, 32, 64, 64);
}

void func_8004E4CC(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    func_8004E240(arg0, arg1, arg2, arg3, 40, 32, 32);
}

UNUSED void func_8004E500(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    func_8004E240(arg0, arg1, arg2, arg3, 48, 48, 24);
}

UNUSED void func_8004E534(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    func_8004E240(arg0, arg1, arg2, arg3, 64, 32, 32);
}

UNUSED void func_8004E568(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    func_8004E240(arg0, arg1, arg2, arg3, 64, 64, 32);
}

UNUSED void func_8004E59C(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    func_8004E2B8(arg0, arg1, arg2, arg3, arg4, 64, 64, 32);
}

UNUSED void func_8004E5D8(s32 arg0, s32 arg1, u8 *tlut, s32 arg3) {
    func_8004E338(arg0, arg1, tlut, arg3, 64, 64);
}

UNUSED void func_8004E604(s32 arg0, s32 arg1, u8 *tlut, s32 arg3) {
    func_8004E240(arg0, arg1, tlut, arg3, SCREEN_WIDTH, SCREEN_HEIGHT, 6);
}

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
? func_8004E4CC(s32, s32, s32 *, s32 *);            /* extern */
extern ? D_80183E88;

void func_8004E638(s32 playerId) {
    struct_80165C18_entry *temp_v1;
    struct_8018CA70_entry *temp_v0;

    temp_v1 = &D_80165C18[*(&D_80183E88 + (playerId * 4))];
    if (temp_v1->unk_0A6 >= 2) {
        temp_v0 = &D_8018CA70[playerId];
        func_8004E4CC(temp_v0->slideItemBoxX + temp_v0->itemBoxX, temp_v0->slideItemBoxY + temp_v0->itemBoxY, temp_v1->unk_060, temp_v1->unk_064);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004E638.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
? func_80047910(s32, s32, ?, f32, s32 *, s32 *, ? *, s32, s32, s32, s32); /* extern */
extern ? D_0D005C30;
extern ? D_80183E88;

void func_8004E6C4(s32 playerId) {
    struct_80165C18_entry *temp_v1;
    struct_8018CA70_entry *temp_v0;

    temp_v1 = &D_80165C18[*(&D_80183E88 + (playerId * 4))];
    if (temp_v1->unk_0A6 >= 2) {
        temp_v0 = &D_8018CA70[playerId];
        func_80047910(temp_v0->slideItemBoxX + temp_v0->itemBoxX, temp_v0->slideItemBoxY + temp_v0->itemBoxY, 0, temp_v0->unknownScaling, temp_v1->unk_060, temp_v1->unk_064, &D_0D005C30, 0x00000028, 0x00000020, 0x00000028, 0x00000020);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004E6C4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 792017ad9d422c2467bd42686f383a5c41f41c75
? func_8004CB60(s16, s32, ? *);                     /* extern */
? func_8004CB90(s32, s16, ? *);                     /* extern */
extern ? D_0D00A958;
extern ? D_0D00B158;
extern ? D_0D00B558;
extern ? D_0D00B958;
static ? *D_800E4570[3] = { &D_0D00B158, &D_0D00B558, &D_0D00B958 }; /* const */

void func_8004E78C(s32 playerId) {
    struct_8018CA70_entry *sp1C;
    struct_8018CA70_entry *temp_v0;

    temp_v0 = &D_8018CA70[playerId];
    sp1C = temp_v0;
    func_8004CB60(temp_v0->lapX, temp_v0->lapY + 3, &D_0D00A958);
    func_8004CB90(temp_v0->lapX + 0x1C, temp_v0->lapY, D_800E4570[temp_v0->alsoLapCount]);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004E78C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 792017ad9d422c2467bd42686f383a5c41f41c75
? func_8004A384(s32, s32, ?, f32, s32, s32, s32, s32, void *, ? *, s32, s32, s32, s32); /* extern */
extern ? D_0D0068F0;
extern ? D_0D00D258;
extern s32 D_80165594;
extern ? D_8018CF98;
static s32 D_800E55F8[8] = { 0xFF, 0xED, 0xD7, 0xBF, 0xA2, 0x82, 0x61, 0x3A }; /* const */

void func_8004E800(s32 playerId) {
    s16 temp_v1;
    struct_8018CA70_entry *temp_v0;

    temp_v0 = &D_8018CA70[playerId];
    if (temp_v0->unk81 != 0) {
        if (temp_v0->lapCount != 3) {
            temp_v1 = *(&D_8018CF98 + (playerId * 2));
            func_8004A384(temp_v0->slideRankX + temp_v0->rankX, temp_v0->slideRankY + temp_v0->rankY, 0, temp_v0->rankScaling, 0xFF, D_800E55F8[temp_v1], 0, 0xFF, (temp_v1 << 0xC) + &D_0D00D258, &D_0D0068F0, 0x80, 0x40, 0x80, 0x40);
            return;
        }
        func_8004A384(temp_v0->slideRankX + temp_v0->rankX, temp_v0->slideRankY + temp_v0->rankY, 0, temp_v0->rankScaling, 0xFF, D_800E55F8[D_80165594], 0, 0xFF, (gPlayerPositions[playerId] << 0xC) + &D_0D00D258, &D_0D0068F0, 0x80, 0x40, 0x80, 0x40);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004E800.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 792017ad9d422c2467bd42686f383a5c41f41c75
? func_8004A384(s32, s32, ?, f32, s32, s32, s32, s32, void *, ? *, s32, s32, s32, s32); /* extern */
extern ? D_0D006030;
extern ? D_0D015258;
extern s32 D_80165598;
static s32 D_800E5618[4] = { 0xFF, 0xD7, 0xA2, 0x61 }; /* const */

void func_8004E998(s32 playerId) {
    s32 temp_v1;
    struct_8018CA70_entry *temp_v0;

    temp_v0 = &D_8018CA70[playerId];
    if (temp_v0->unk81 != 0) {
        if (temp_v0->lapCount != 3) {
            temp_v1 = gPlayerPositions[playerId];
            func_8004A384(temp_v0->slideRankX + temp_v0->rankX, temp_v0->slideRankY + temp_v0->rankY, 0, temp_v0->rankScaling, 0xFF, D_800E5618[temp_v1], 0, 0xFF, (temp_v1 << 0xB) + &D_0D015258, &D_0D006030, 0x40, 0x40, 0x40, 0x40);
            return;
        }
        func_8004A384(temp_v0->slideRankX + temp_v0->rankX, temp_v0->slideRankY + temp_v0->rankY, 0, temp_v0->rankScaling, 0xFF, D_800E5618[D_80165598], 0, 0xFF, (gPlayerPositions[playerId] << 0xB) + &D_0D015258, &D_0D006030, 0x40, 0x40, 0x40, 0x40);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004E998.s")
#endif

void func_8004EB30(s32 arg0) {

}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 792017ad9d422c2467bd42686f383a5c41f41c75
? func_8004C9D8(s16, s16, ?, ? *, s32, s32, s32, s32); /* extern */
? func_8004F950(s16, s16, ?, u32);                  /* extern */
extern ? D_0D00A958;
extern ? D_0D00B158;
extern ? D_0D00B558;
extern ? D_0D00B958;
extern ? D_0D00C158;
static ? *D_800E4570[3] = { &D_0D00B158, &D_0D00B558, &D_0D00B958 }; /* const */

void func_8004EB38(s32 playerId) {
    struct_8018CA70_entry *temp_s0;

    temp_s0 = &D_8018CA70[playerId];
    if ((u8) temp_s0->unk_7B != 0) {
        func_8004C9D8(temp_s0->lap1CompletionTimeX - 0x13, temp_s0->timerY + 8, 0x80, &D_0D00C158, 0x20, 0x10, 0x20, 0x10);
        func_8004F950(temp_s0->lap1CompletionTimeX, temp_s0->timerY, 0x80, temp_s0->someTimer);
    }
    if ((u8) temp_s0->unk_7C != 0) {
        func_8004C9D8(temp_s0->lap2CompletionTimeX - 0x13, temp_s0->timerY + 8, 0x50, &D_0D00C158, 0x20, 0x10, 0x20, 0x10);
        func_8004F950(temp_s0->lap2CompletionTimeX, temp_s0->timerY, 0x50, temp_s0->someTimer);
    }
    if ((u8) temp_s0->unk_7E != 0) {
        func_8004C9D8(temp_s0->lapAfterImage1X, temp_s0->lapY + 3, 0x80, &D_0D00A958, 0x20, 8, 0x20, 8);
        func_8004C9D8(temp_s0->lapAfterImage1X + 0x1C, temp_s0->lapY, 0x80, D_800E4570[temp_s0->alsoLapCount], 0x20, 0x10, 0x20, 0x10);
    }
    if ((u8) temp_s0->unk_7F != 0) {
        func_8004C9D8(temp_s0->lapAfterImage2X, temp_s0->lapY + 3, 0x50, &D_0D00A958, 0x20, 8, 0x20, 8);
        func_8004C9D8(temp_s0->lapAfterImage2X + 0x1C, temp_s0->lapY, 0x50, D_800E4570[temp_s0->alsoLapCount], 0x20, 0x10, 0x20, 0x10);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004EB38.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 792017ad9d422c2467bd42686f383a5c41f41c75
? func_8004A258(s32, s32, u16, ?, ? *, ? *, s32, s32, s32, s32); /* extern */
? func_8004A2F4(s16, s16, ?, ?, s32, s32, s32, s32, ? *, ? *, s32, s32, s32, s32); /* extern */
extern ? D_0D005FF0;
extern ? D_0D0064B0;
extern ? D_0D009958;
extern ? D_0D00A558;
extern u16 D_8016579E;
extern f32 D_8018CFEC;
extern f32 D_8018CFF4;
extern u16 D_8018D300;
extern u16 D_8018D308;
extern u16 D_8018D310;

void func_8004ED40(s32 playerId) {
    struct_8018CA70_entry *temp_v0;

    temp_v0 = &D_8018CA70[playerId];
    func_8004A2F4(temp_v0->speedometerX, temp_v0->speedometerY, 0, 0x3F800000, (s32) D_8018D300, (s32) D_8018D308, (s32) D_8018D310, 0xFF, &D_0D009958, &D_0D0064B0, 0x40, 0x60, 0x40, 0x30);
    func_8004A258((s32) D_8018CFEC, (s32) D_8018CFF4, D_8016579E, 0x3F800000, &D_0D00A558, &D_0D005FF0, 0x40, 0x20, 0x40, 0x20);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004ED40.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004D37C(s32, s32, s32, u16, s32, s32, s32, s32, s32, s32, s32); // extern
? func_8004D4E8(s32, s32, s32, u16, s32, s32, s32, s32, s32, s32, s32); // extern
extern s32 D_8018D240;
extern s16 D_8018D2B0;
extern s16 D_8018D2B8;
extern ? D_8018D2C0;
extern ? D_8018D2D8;
extern s16 D_8018D2F0;
extern s16 D_8018D2F8;
extern u16 D_8018D300;
extern u16 D_8018D308;
extern u16 D_8018D310;

void func_8004EE54(s32 arg0) {
    s16 temp_t0;
    s16 temp_t0_2;
    s16 temp_v1;
    s16 temp_v1_2;
    s32 temp_t6;
    s32 temp_v0;

    if (gIsMirrorMode != 0) {
        temp_v0 = arg0 * 2;
        temp_t0 = D_8018D2B8;
        temp_v1 = D_8018D2B0;
        func_8004D4E8(*(&D_8018D2C0 + temp_v0) + D_8018D2F0, *(&D_8018D2D8 + temp_v0) + D_8018D2F8, D_8018D240, D_8018D300, D_8018D308, D_8018D310, 0xFF, temp_v1, temp_t0, temp_v1, temp_t0);
        return;
    }
    temp_t6 = arg0 * 2;
    temp_t0_2 = D_8018D2B8;
    temp_v1_2 = D_8018D2B0;
    func_8004D37C(*(&D_8018D2C0 + temp_t6) + D_8018D2F0, *(&D_8018D2D8 + temp_t6) + D_8018D2F8, D_8018D240, D_8018D300, D_8018D308, D_8018D310, 0xFF, temp_v1_2, temp_t0_2, temp_v1_2, temp_t0_2);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004EE54.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004D37C(?, ?, s32, ?, s32, s32, s32, s32, s32, s32, s32); // extern
extern ? D_800E5548;
extern ? D_8018D248;

void func_8004EF9C(s32 arg0) {
    s16 temp_t0;
    s16 temp_v0;
    void *temp_v1;

    temp_v1 = (arg0 * 4) + &D_800E5548;
    temp_v0 = temp_v1->unk0;
    temp_t0 = temp_v1->unk2;
    func_8004D37C(0x104, 0x3C, *(&D_8018D248 + (arg0 * 4)), 0xFF, 0xFF, 0xFF, 0xFF, temp_v0, temp_t0, temp_v0, temp_t0);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004EF9C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004CAD0(s32, s32, ? *); // extern
extern ? D_0D02CC58;
extern s16 D_8018D2B0;
extern s16 D_8018D2B8;
extern ? D_8018D2C0;
extern ? D_8018D2D8;
extern s16 D_8018D2E0;
extern s16 D_8018D2E8;
extern s16 D_8018D2F0;
extern s16 D_8018D2F8;

void func_8004F020(s32 arg0) {
    f32 temp_f0;
    s16 temp_v1;
    s32 temp_v0;
    f32 phi_f0;
    f64 phi_f16;

    temp_v0 = arg0 * 2;
    temp_v1 = gCurrentCourseId;
    temp_f0 = ((*(&D_8018D2D8 + temp_v0) + D_8018D2F8) - (D_8018D2B8 / 2)) + D_8018D2E8;
    phi_f0 = temp_f0;
    if (temp_v1 != 0) {
        if (temp_v1 != 1) {
            if (temp_v1 != 0xB) {

            } else {
                phi_f16 = temp_f0 + 4.0;
                goto block_7;
            }
        } else {
            phi_f0 = temp_f0 - 16.0;
        }
    } else {
        phi_f16 = temp_f0 - 2.0;
block_7:
        phi_f0 = phi_f16;
    }
    func_8004CAD0(((*(&D_8018D2C0 + temp_v0) + D_8018D2F0) - (D_8018D2B0 / 2)) + D_8018D2E0, phi_f0, &D_0D02CC58);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004F020.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800463B0(f32, s16, s16, s32, ?, void *, ? *, s32, s32, s32, s32); // extern
? func_80046424(f32, s16, s16, s32, ?, void *, ? *, s32, s32, s32, s32); // extern
? func_8004C364(f32, s16, s16, ?, ?, ? *); // extern
? func_8004C450(f32, s16, s16, ?, ?, ? *); // extern
extern ? D_0D005470;
extern ? D_0D02CCD8;
extern ? D_0D02D0D8;
extern f32 D_8018D2A0;
extern s16 D_8018D2B0;
extern s16 D_8018D2B8;
extern ? D_8018D2C0;
extern ? D_8018D2D8;
extern s16 D_8018D2E0;
extern s16 D_8018D2E8;
extern s16 D_8018D2F0;
extern s16 D_8018D2F8;

void func_8004F168(s32 arg0, s32 arg1, s32 arg2) {
    Player *temp_v1;
    f32 temp_f0;
    f32 temp_f12;
    s16 temp_a0;
    s16 temp_a1;
    s32 temp_t0;
    s32 temp_v0;

    temp_v1 = &gPlayerOne[arg1];
    temp_t0 = arg0 * 2;
    if ((temp_v1->unk_000 & PLAYER_EXISTS) != 0) {
        temp_f0 = D_8018D2A0;
        temp_f12 = temp_v1->posZ * temp_f0;
        temp_a0 = ((*(&D_8018D2C0 + temp_t0) + D_8018D2F0) - (D_8018D2B0 / 2)) + D_8018D2E0 + (temp_v1->posX * temp_f0);
        temp_a1 = ((*(&D_8018D2D8 + temp_t0) + D_8018D2F8) - (D_8018D2B8 / 2)) + D_8018D2E8 + temp_f12;
        if (arg2 != 8) {
            if ((gPlayerPositions[arg1] == 0) && (temp_v0 = gModeSelection, (temp_v0 != BATTLE)) && (temp_v0 != TIME_TRIALS)) {
                func_80046424(temp_f12, temp_a0, temp_a1, (temp_v1->unk_02E + 0x8000) & 0xFFFF, 0x3F800000, (arg2 << 7) + &D_0D02CCD8, &D_0D005470, 8, 8, 8, 8);
                return;
            }
            func_800463B0(temp_f12, temp_a0, temp_a1, (temp_v1->unk_02E + 0x8000) & 0xFFFF, 0x3F800000, (arg2 << 7) + &D_0D02CCD8, &D_0D005470, 8, 8, 8, 8);
            return;
        }
        if (gPlayerPositions[arg1] == 0) {
            func_8004C450(temp_f12, temp_a0, temp_a1, 8, 8, &D_0D02D0D8);
            return;
        }
        func_8004C364(temp_f12, temp_a0, temp_a1, 8, 8, &D_0D02D0D8);
        // Duplicate return node #10. Try simplifying control flow for better match
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004F168.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004F168(s32, s16, u16); // extern
extern ? gGPCurrentRacePlayerIdByRank;
extern s32 D_8018D158;

void func_8004F3E4(s32 arg0) {
    Player *temp_v0_3;
    s16 *temp_s0;
    s16 *temp_s0_2;
    s16 *temp_s0_3;
    s16 temp_a1;
    s16 temp_a1_2;
    s16 temp_a1_3;
    s16 temp_s1_3;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s1_4;
    s32 temp_v0;
    s32 temp_v1;
    void *temp_v0_2;
    s32 phi_s0;
    s16 phi_s1;
    s32 phi_v1;
    s16 *phi_s0_2;
    s32 phi_s0_3;
    Player *phi_v0;
    s16 phi_s1_2;
    Player *phi_v0_2;
    s16 *phi_s0_4;
    s32 phi_s1_3;
    s16 *phi_s0_5;

    temp_v0 = gModeSelection;
    if (temp_v0 != GRAND_PRIX) {
        phi_s1 = 0;
        phi_s1_2 = 0;
        if (temp_v0 != TIME_TRIALS) {
            if (temp_v0 != VERSUS) {
                if (temp_v0 != BATTLE) {
                    return;
                }
                temp_v1 = gPlayerCountSelection1;
                phi_s0 = 0;
                phi_v1 = temp_v1;
                if (temp_v1 > 0) {
                    do {
                        temp_v0_2 = phi_s0 + gPlayerOne;
                        if ((temp_v0_2->unk0 & 0x40) == 0) {
                            func_8004F168(arg0, phi_s1, temp_v0_2->unk254);
                            phi_v1 = gPlayerCountSelection1;
                        }
                        temp_s1 = phi_s1 + 1;
                        phi_s0 += 0xDD8;
                        phi_s1 = temp_s1;
                    } while (temp_s1 < phi_v1);
                }
                // Duplicate return node #31. Try simplifying control flow for better match
                return;
            }
            temp_s1_2 = gPlayerCountSelection1 - 1;
            if (temp_s1_2 >= 0) {
                phi_s0_2 = (temp_s1_2 * 2) + &gGPCurrentRacePlayerIdByRank;
                do {
                    temp_a1 = *phi_s0_2;
                    func_8004F168(arg0, temp_a1, gPlayerOne[temp_a1].characterId);
                    temp_s0 = phi_s0_2 - 2;
                    phi_s0_2 = temp_s0;
                } while (temp_s0 >= &gGPCurrentRacePlayerIdByRank);
                return;
            }
            // Duplicate return node #31. Try simplifying control flow for better match
            return;
        }
        phi_s0_3 = 0;
        phi_v0 = gPlayerOne;
        do {
            phi_v0_2 = phi_v0;
            if ((*(phi_s0_3 + phi_v0) & 0x100) == 0x100) {
                func_8004F168(arg0, phi_s1_2, 8);
                phi_v0_2 = gPlayerOne;
            }
            temp_s1_3 = phi_s1_2 + 1;
            phi_s0_3 += 0xDD8;
            phi_v0 = phi_v0_2;
            phi_s1_2 = temp_s1_3;
        } while (temp_s1_3 != 8);
        func_8004F168(arg0, 0, phi_v0_2->characterId);
        return;
    }
    temp_s1_4 = D_8018D158 - 1;
    phi_s1_3 = temp_s1_4;
    if (temp_s1_4 >= 0) {
        phi_s0_4 = (temp_s1_4 * 2) + &gGPCurrentRacePlayerIdByRank;
        do {
            temp_a1_2 = *phi_s0_4;
            if ((gPlayerOne[temp_a1_2].unk_000 & 0x1000) != 0) {
                func_8004F168(arg0, temp_a1_2, 8);
            }
            temp_s0_2 = phi_s0_4 - 2;
            phi_s0_4 = temp_s0_2;
        } while (temp_s0_2 >= &gGPCurrentRacePlayerIdByRank);
        phi_s1_3 = D_8018D158 - 1;
    }
    if (phi_s1_3 >= 0) {
        phi_s0_5 = (phi_s1_3 * 2) + &gGPCurrentRacePlayerIdByRank;
        do {
            temp_a1_3 = *phi_s0_5;
            temp_v0_3 = &gPlayerOne[temp_a1_3];
            if ((temp_v0_3->unk_000 & 0x1000) != 0x1000) {
                func_8004F168(arg0, temp_a1_3, temp_v0_3->characterId);
            }
            temp_s0_3 = phi_s0_5 - 2;
            phi_s0_5 = temp_s0_3;
        } while (temp_s0_3 >= &gGPCurrentRacePlayerIdByRank);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004F3E4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_8004F674(s32 *arg0, s32 arg1) {
    s32 temp_v0;

    temp_v0 = *arg0;
    if (temp_v0 != 0) {
        *arg0 = temp_v0 % arg1;
        return temp_v0 / arg1;
    }
    *arg0 = 0;
    return 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004F674.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s8 func_8004F674(s32 *, ?); // extern
extern ? D_801657D0;

void func_8004F6D0(s32 arg0) {
    s32 sp24;

    sp24 = arg0;
    if (arg0 >= 0x927BF) {
        sp24 = 0x927BF;
    }
    D_801657D0.unk0 = func_8004F674(&sp24, 0xEA60);
    D_801657D0.unk1 = func_8004F674(&sp24, 0x1770);
    D_801657D0.unk3 = func_8004F674(&sp24, 0x3E8);
    D_801657D0.unk4 = func_8004F674(&sp24, 0x64);
    D_801657D0.unk6 = func_8004F674(&sp24, 0xA);
    D_801657D0.unk2 = 0xA;
    D_801657D0.unk5 = 0xB;
    D_801657D0.unk7 = sp24;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004F6D0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004BA98(s32, ?, ?, ?, s32, s32, s32); // extern
extern s8 D_801657D0;
extern ? D_801657D8;

void func_8004F774(s32 arg0, ? arg1) {
    s8 *temp_s0;
    s32 phi_s1;
    s8 *phi_s0;

    phi_s1 = arg0;
    phi_s0 = &D_801657D0;
    do {
        func_8004BA98(phi_s1, arg1, 8, 0x10, *phi_s0 * 8, 0, 0);
        temp_s0 = phi_s0 + 1;
        phi_s1 += 8;
        phi_s0 = temp_s0;
    } while (temp_s0 != &D_801657D8);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004F774.s")
#endif

void print_timer(s32 arg0, s32 arg1, s32 arg2) {
    gSPDisplayList(gDisplayListHead++, D_0D008108);
    gSPDisplayList(gDisplayListHead++, D_0D007EF8);
    gDPSetAlphaCompare(gDisplayListHead++, G_AC_THRESHOLD);
    func_80043D50(D_0D00C558, 104, 16);
    func_8004F6D0(arg2);
    func_8004F774(arg0, arg1);
    gSPDisplayList(gDisplayListHead++, D_0D007EB8);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004BA98(s32, ?, ?, ?, s32, s32, s32); // extern
extern s8 D_801657D0;
extern ? D_801657D8;

void func_8004F8CC(s32 arg0, ? arg1) {
    s8 *temp_s0;
    s32 phi_s1;
    s8 *phi_s0;

    phi_s1 = arg0;
    phi_s0 = &D_801657D0;
    do {
        func_8004BA98(phi_s1, arg1, 8, 0x10, *phi_s0 * 8, 0, 1);
        temp_s0 = phi_s0 + 1;
        phi_s1 += 8;
        phi_s0 = temp_s0;
    } while (temp_s0 != &D_801657D8);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004F8CC.s")
#endif

void func_8004F950(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    gSPDisplayList(gDisplayListHead++, D_0D007F38);
    func_8004B2BC(arg2);
    func_80043D50(D_0D00C558, 104, 16);
    func_8004F6D0(arg3);
    func_8004F8CC(arg0, arg1);
}

void func_8004F9CC(s32 arg0, s32 arg1, s32 arg2) {
    gSPDisplayList(gDisplayListHead++, D_0D007F38);
    func_8004B614(D_801656C0, D_801656D0, D_801656E0, 128, 128, 128, 255);
    func_80043D50(&D_0D00C558, 104, 16);
    func_8004F6D0(arg2);
    func_8004F8CC(arg0, arg1);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 792017ad9d422c2467bd42686f383a5c41f41c75
? func_8004CB90(s32, s32, ? *);                     /* extern */
? func_8004F9CC(s16, s16, u32);                     /* extern */
? print_timer(s16, s16, u32);                       /* extern */
extern ? D_0D00BD58;
extern ? D_0D00C158;
extern s32 D_80165658;
extern s8 D_801657E3;
extern s8 D_801657E5;
extern s32 D_8018D320;

void func_8004FA78(s32 playerId) {
    s32 temp_s0;
    s32 temp_v0;
    struct_8018CA70_entry *temp_s4;
    s32 *phi_s3;
    struct_8018CA70_entry *phi_s1;
    s32 phi_s0;
    struct_8018CA70_entry *phi_s2;

    temp_v0 = gModeSelection;
    if ((temp_v0 != 2) && (temp_v0 != 3)) {
        temp_s4 = &D_8018CA70[playerId];
        if (D_8018D320 == temp_s4->lapCount) {
            phi_s3 = &D_80165658;
            phi_s1 = temp_s4;
            if (D_8015F890 == 0) {
                phi_s0 = 0;
                phi_s2 = temp_s4;
                do {
                    if (*phi_s3 == 0) {
                        print_timer(phi_s1->lap1CompletionTimeX, temp_s4->timerY + phi_s0, phi_s2->lap1Duration);
                    } else {
                        func_8004F9CC(phi_s1->lap1CompletionTimeX, temp_s4->timerY + phi_s0, phi_s2->lap1Duration);
                    }
                    temp_s0 = phi_s0 + 0x10;
                    phi_s3 += 4;
                    phi_s1 += 2;
                    phi_s0 = temp_s0;
                    phi_s2 += 4;
                } while (temp_s0 != 0x30);
                func_8004CB90(temp_s4->totalTimeX - 0x13, temp_s4->timerY + 0x38, &D_0D00BD58);
                if (D_801657E5 != 0) {
                    func_8004F9CC(temp_s4->totalTimeX, temp_s4->timerY + 0x30, temp_s4->someTimer);
                    return;
                }
                print_timer(temp_s4->totalTimeX, temp_s4->timerY + 0x30, temp_s4->someTimer);
            }
        } else {
            if (temp_s4->blinkTimer == 0) {
                func_8004CB90(temp_s4->timerX - 0x13, temp_s4->timerY + 8, &D_0D00C158);
                print_timer(temp_s4->timerX, temp_s4->timerY, temp_s4->someTimer);
                return;
            }
            func_8004CB90(temp_s4->timerX - 0x13, temp_s4->timerY + 8, (? *)0x0D00AD58);
            if (D_801657E3 != 0) {
                func_8004F9CC(temp_s4->timerX, temp_s4->timerY, temp_s4->someTimer1);
                return;
            }
            if (temp_s4->blinkState == 0) {
                print_timer(temp_s4->timerX, temp_s4->timerY, temp_s4->someTimer1);
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004FA78.s")
#endif

void func_8004FC78(s16 arg0, s16 arg1, s8 arg2) {
    gSPDisplayList(gDisplayListHead++, D_0D008108);
    gSPDisplayList(gDisplayListHead++, D_0D007EF8);
    gDPSetAlphaCompare(gDisplayListHead++, G_AC_THRESHOLD);
    func_80043D50(D_0D00AB58, 32, 8);
    func_8004BA98(arg0, arg1, 8, 8, arg2 * 8, 0, 0);
    func_8004BA98(arg0 + 8, arg1, 8, 8, 24, 0, 0);
    func_8004BA98(arg0 + 16, arg1, 8, 8, 16, 0, 0);
    gSPDisplayList(gDisplayListHead++, D_0D007EB8);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80042330(s32, s32, ?, ?); // extern
? func_80044924(? *, ?, ?); // extern
? func_800452A4(? *, ?, ?); // extern
? func_8004B35C(s32, s32, s32, s32); // extern
extern ? D_0D006980;
extern ? D_0D0069E0;
extern ? D_0D0069F8;
extern ? D_0D007A60;
extern ? D_0D007CB8;
extern ? D_0D007DB8;
extern ? D_0D019458;
extern ? D_0D019658;
extern ? D_0D01A2D8;
extern ? D_0D01B4D8;
extern ? D_0D01DAD8;
extern ? D_800E457C;
extern ? D_800E459C;
extern s32 D_8018D3E0;
extern s32 D_8018D3E4;
extern s32 D_8018D3E8;
extern s32 D_8018D3EC;
extern s32 *gDisplayListHead;

void func_8004FDB4(f32 arg0, f32 arg1, s16 arg2, s16 arg3, s16 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8) {
    s32 sp34;
    s32 sp30;
    ? *sp2C;
    ? *sp28;
    s32 *temp_s0;
    s32 *temp_s0_10;
    s32 *temp_s0_11;
    s32 *temp_s0_12;
    s32 *temp_s0_13;
    s32 *temp_s0_14;
    s32 *temp_s0_15;
    s32 *temp_s0_16;
    s32 *temp_s0_17;
    s32 *temp_s0_18;
    s32 *temp_s0_19;
    s32 *temp_s0_20;
    s32 *temp_s0_21;
    s32 *temp_s0_22;
    s32 *temp_s0_23;
    s32 *temp_s0_24;
    s32 *temp_s0_25;
    s32 *temp_s0_26;
    s32 *temp_s0_27;
    s32 *temp_s0_28;
    s32 *temp_s0_2;
    s32 *temp_s0_3;
    s32 *temp_s0_4;
    s32 *temp_s0_5;
    s32 *temp_s0_6;
    s32 *temp_s0_7;
    s32 *temp_s0_8;
    s32 *temp_s0_9;
    s32 temp_f10;
    s32 temp_f8;
    s32 temp_t6;
    s32 *phi_s0;
    s32 *phi_s0_2;

    if ((gCurrentCourseId == 4) && (arg3 < 3) && (arg8 == 0)) {
        func_80042330(arg0, arg1, 0, 0x3F800000);
        temp_s0 = gDisplayListHead;
        gDisplayListHead = temp_s0 + 8;
        temp_s0->unk4 = &D_0D007DB8;
        temp_s0->unk0 = 0x6000000;
        func_8004B35C(0xFF, 0xFF, 0xFF, D_8018D3E0);
        temp_s0_2 = gDisplayListHead;
        gDisplayListHead = temp_s0_2 + 8;
        temp_s0_2->unk0 = 0xFD100000;
        temp_s0_2->unk4 = &D_0D01B4D8;
        temp_s0_3 = gDisplayListHead;
        gDisplayListHead = temp_s0_3 + 8;
        temp_s0_3->unk4 = 0;
        temp_s0_3->unk0 = 0xE8000000;
        temp_s0_4 = gDisplayListHead;
        gDisplayListHead = temp_s0_4 + 8;
        temp_s0_4->unk4 = 0x7000000;
        temp_s0_4->unk0 = 0xF5000100;
        temp_s0_5 = gDisplayListHead;
        gDisplayListHead = temp_s0_5 + 8;
        temp_s0_5->unk4 = 0;
        temp_s0_5->unk0 = 0xE6000000;
        temp_s0_6 = gDisplayListHead;
        gDisplayListHead = temp_s0_6 + 8;
        temp_s0_6->unk4 = 0x73FC000;
        temp_s0_6->unk0 = 0xF0000000;
        temp_s0_7 = gDisplayListHead;
        gDisplayListHead = temp_s0_7 + 8;
        temp_s0_7->unk4 = 0;
        temp_s0_7->unk0 = 0xE7000000;
        func_800452A4(&D_0D01DAD8, 0x20, 0x20);
        temp_s0_8 = gDisplayListHead;
        gDisplayListHead = temp_s0_8 + 8;
        temp_s0_8->unk4 = &D_0D0069E0;
        phi_s0_2 = temp_s0_8;
    } else {
        temp_f8 = arg0;
        temp_f10 = arg1;
        sp34 = temp_f8;
        sp30 = temp_f10;
        func_80042330(temp_f8, temp_f10, 0, 0x3F800000);
        temp_s0_9 = gDisplayListHead;
        gDisplayListHead = temp_s0_9 + 8;
        temp_s0_9->unk4 = &D_0D007DB8;
        temp_s0_9->unk0 = 0x6000000;
        sp2C = &D_0D007DB8;
        func_8004B35C(0xFF, 0xFF, 0xFF, arg5);
        temp_s0_10 = gDisplayListHead;
        gDisplayListHead = temp_s0_10 + 8;
        temp_s0_10->unk0 = 0xFD100000;
        temp_t6 = arg4 * 4;
        temp_s0_10->unk4 = *(&D_800E457C + temp_t6);
        temp_s0_11 = gDisplayListHead;
        gDisplayListHead = temp_s0_11 + 8;
        temp_s0_11->unk4 = 0;
        temp_s0_11->unk0 = 0xE8000000;
        temp_s0_12 = gDisplayListHead;
        gDisplayListHead = temp_s0_12 + 8;
        temp_s0_12->unk4 = 0x7000000;
        temp_s0_12->unk0 = 0xF5000100;
        temp_s0_13 = gDisplayListHead;
        gDisplayListHead = temp_s0_13 + 8;
        temp_s0_13->unk4 = 0;
        temp_s0_13->unk0 = 0xE6000000;
        temp_s0_14 = gDisplayListHead;
        gDisplayListHead = temp_s0_14 + 8;
        temp_s0_14->unk4 = 0x73FC000;
        temp_s0_14->unk0 = 0xF0000000;
        temp_s0_15 = gDisplayListHead;
        gDisplayListHead = temp_s0_15 + 8;
        temp_s0_15->unk4 = 0;
        temp_s0_15->unk0 = 0xE7000000;
        func_800452A4(*(&D_800E459C + temp_t6), 0x20, 0x20);
        if (arg7 != 0) {
            temp_s0_16 = gDisplayListHead;
            gDisplayListHead = temp_s0_16 + 8;
            temp_s0_16->unk4 = &D_0D0069F8;
            phi_s0 = temp_s0_16;
        } else {
            temp_s0_17 = gDisplayListHead;
            gDisplayListHead = temp_s0_17 + 8;
            temp_s0_17->unk4 = &D_0D0069E0;
            phi_s0 = temp_s0_17;
        }
        *phi_s0 = 0x6000000;
        if (arg6 != 0) {
            sp28 = &D_0D0069E0;
            func_80042330(sp34, sp30, 0, 0x3F800000);
            temp_s0_18 = gDisplayListHead;
            gDisplayListHead = temp_s0_18 + 8;
            temp_s0_18->unk4 = &D_0D007A60;
            temp_s0_18->unk0 = 0x6000000;
            func_8004B35C(D_8018D3E4, D_8018D3E8, D_8018D3EC, 0xFF);
            func_80044924(&D_0D01A2D8, 0x20, 0x20);
            temp_s0_19 = gDisplayListHead;
            gDisplayListHead = temp_s0_19 + 8;
            temp_s0_19->unk0 = 0x6000000;
            temp_s0_19->unk4 = sp28;
        }
        temp_s0_20 = gDisplayListHead;
        gDisplayListHead = temp_s0_20 + 8;
        temp_s0_20->unk0 = 0x6000000;
        temp_s0_20->unk4 = sp2C;
        func_8004B35C(0xFF, 0xFF, 0xFF, arg5);
        temp_s0_21 = gDisplayListHead;
        gDisplayListHead = temp_s0_21 + 8;
        temp_s0_21->unk4 = &D_0D007CB8;
        temp_s0_21->unk0 = 0x6000000;
        temp_s0_22 = gDisplayListHead;
        gDisplayListHead = temp_s0_22 + 8;
        temp_s0_22->unk0 = 0xFD100000;
        temp_s0_22->unk4 = &D_0D019458;
        temp_s0_23 = gDisplayListHead;
        gDisplayListHead = temp_s0_23 + 8;
        temp_s0_23->unk4 = 0;
        temp_s0_23->unk0 = 0xE8000000;
        temp_s0_24 = gDisplayListHead;
        gDisplayListHead = temp_s0_24 + 8;
        temp_s0_24->unk4 = 0x7000000;
        temp_s0_24->unk0 = 0xF5000100;
        temp_s0_25 = gDisplayListHead;
        gDisplayListHead = temp_s0_25 + 8;
        temp_s0_25->unk4 = 0;
        temp_s0_25->unk0 = 0xE6000000;
        temp_s0_26 = gDisplayListHead;
        gDisplayListHead = temp_s0_26 + 8;
        temp_s0_26->unk4 = 0x73FC000;
        temp_s0_26->unk0 = 0xF0000000;
        temp_s0_27 = gDisplayListHead;
        gDisplayListHead = temp_s0_27 + 8;
        temp_s0_27->unk4 = 0;
        temp_s0_27->unk0 = 0xE7000000;
        func_800452A4((arg2 << 8) + &D_0D019658, 0x10, 0x10);
        if (arg7 != 0) {
            func_80042330(arg0 + 9.0f, arg1 + 7.0f, 0, 0x3F800000);
        } else {
            func_80042330(arg0 - 9.0f, arg1 + 7.0f, 0, 0x3F800000);
        }
        temp_s0_28 = gDisplayListHead;
        gDisplayListHead = temp_s0_28 + 8;
        temp_s0_28->unk4 = &D_0D006980;
        phi_s0_2 = temp_s0_28;
    }
    *phi_s0_2 = 0x6000000;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8004FDB4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8004FDB4(f32, f32, s32, s32, s16, s16, s32, s32, s32, s32, s32); /* extern */
extern ? gGPCurrentRacePlayerIdByRank;
extern s8 D_801657E2;
extern ? D_8018D028;
extern f32 D_8018D050;
extern ? D_8018D078;
extern s32 D_8018D3E0;

void func_80050320(void) {
    Gfx *temp_v1_3;
    f32 *temp_t0;
    f32 *temp_t0_2;
    f32 temp_f14;
    f32 temp_f14_2;
    s16 temp_s0;
    s16 temp_s0_2;
    s16 temp_v0;
    s16 temp_v1;
    s16 temp_v1_2;
    s32 temp_a1;
    s32 temp_a1_2;
    f32 *phi_s2;
    s32 phi_s1;
    s16 phi_s0;
    s32 phi_a0;
    f32 *phi_s2_2;
    s32 phi_s1_2;
    s16 phi_s0_2;
    s32 phi_a0_2;

    if (D_801657E2 == 0) {
        phi_s2 = &D_8018D050;
        phi_s1 = 0;
        phi_s0 = 0;
        do {
            temp_f14 = *phi_s2;
            phi_a0 = 0;
            if (temp_f14 >= 0.0f) {
                temp_t0 = phi_s1 + &D_8018D028;
                if (*(&D_8018D078 + phi_s1) < 0.0) {
                    phi_a0 = 1;
                }
                temp_v1 = gGPCurrentRaceRanks[phi_s0];
                temp_a1 = gLapCountByPlayerId[*((phi_s0 * 2) + &gGPCurrentRacePlayerIdByRank)];
                if (temp_v1 == gPlayerOne->characterId) {
                    func_8004FDB4(*temp_t0, temp_f14, phi_a0, temp_a1, phi_s0, temp_a1, temp_v1, 0xFF, 1, phi_a0, 0);
                } else {
                    func_8004FDB4(*temp_t0, temp_f14, phi_a0, temp_a1, phi_s0, temp_a1, temp_v1, D_8018D3E0, 0, phi_a0, 0);
                }
            }
            temp_s0 = phi_s0 + 1;
            phi_s2 += 4;
            phi_s1 += 4;
            phi_s0 = temp_s0;
        } while (temp_s0 != 4);
    } else {
        phi_s2_2 = &D_8018D050;
        phi_s1_2 = 0;
        phi_s0_2 = 0;
        do {
            temp_f14_2 = *phi_s2_2;
            phi_a0_2 = 0;
            if (temp_f14_2 >= 0.0f) {
                temp_t0_2 = phi_s1_2 + &D_8018D028;
                if (*(&D_8018D078 + phi_s1_2) <= 0.0) {
                    phi_a0_2 = 1;
                }
                temp_v0 = *((phi_s0_2 * 2) + &gGPCurrentRacePlayerIdByRank);
                temp_a1_2 = gLapCountByPlayerId[temp_v0];
                temp_v1_2 = gPlayerOne[temp_v0].characterId;
                if (temp_v0 == 0) {
                    func_8004FDB4(*temp_t0_2, temp_f14_2, phi_a0_2, temp_a1_2, phi_s0_2, temp_a1_2, temp_v1_2, 0xFF, 1, phi_a0_2, 1);
                } else {
                    func_8004FDB4(*temp_t0_2, temp_f14_2, phi_a0_2, temp_a1_2, phi_s0_2, temp_a1_2, temp_v1_2, 0xFF, 0, phi_a0_2, 1);
                }
            }
            temp_s0_2 = phi_s0_2 + 1;
            phi_s2_2 += 4;
            phi_s1_2 += 4;
            phi_s0_2 = temp_s0_2;
        } while (temp_s0_2 != 8);
    }
    temp_v1_3 = gDisplayListHead;
    gDisplayListHead = temp_v1_3 + 8;
    temp_v1_3->words.w0 = 0xBB000000;
    temp_v1_3->words.w1 = 0x10001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80050320.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern ? gLapCompletionPercentByPlayerId;
extern ? gLapCountByPlayerId;

? func_80050644(s32 arg0, s32 *arg1, s32 *arg2) {
    s32 temp_a3;
    s32 temp_t0;
    s32 temp_t6;
    s32 phi_v0;
    s32 phi_v0_2;

    temp_t6 = arg0 & 0xFFFF;
    temp_t0 = temp_t6 * 4;
    temp_a3 = *(&gLapCountByPlayerId + temp_t0);
    phi_v0 = 0;
    phi_v0_2 = 0;
    if (temp_a3 < 3) {
        if (gPlayerCountSelection1 == 1) {
            if (temp_a3 >= 0) {
                phi_v0 = *(&gLapCompletionPercentByPlayerId + temp_t0) * 928.0f;
            }
            if (phi_v0 < 0x104) {
                *arg1 = phi_v0;
                *arg2 = 0;
                return 1;
            }
            if (phi_v0 < 0x1D0) {
                *arg1 = 0x104;
                *arg2 = phi_v0 - 0x104;
                return 2;
            }
            if (phi_v0 < 0x2D4) {
                *arg1 = 0x2D4 - phi_v0;
                *arg2 = 0xCC;
                return 3;
            }
            *arg1 = 0;
            *arg2 = 0x3A0 - phi_v0;
            return 4;
        }
        if (temp_a3 >= 0) {
            phi_v0_2 = *(&gLapCompletionPercentByPlayerId + temp_t0) * 260.0f;
        }
        *arg1 = phi_v0_2;
        *arg2 = 0;
        return 0;
    }
    if (gPlayerCountSelection1 == 1) {
        *arg1 = 0x20;
        *arg2 = (gPlayerPositions[temp_t6] * 0x14) + 0x20;
        return 0;
    }
    *arg1 = *(&gLapCompletionPercentByPlayerId + temp_t0) * 260.0f;
    *arg2 = 0;
    return 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80050644.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern ? D_80163E2A;
extern u16 D_80164430;

void func_800507D8(s32 arg0, s32 *arg1, s32 *arg2) {
    u16 temp_v0;
    s32 phi_v1;

    temp_v0 = *(&D_80163E2A + ((arg0 & 0xFFFF) * 0x54));
    phi_v1 = 0;
    if (temp_v0 != 0) {
        phi_v1 = (temp_v0 * 0x3A0) / D_80164430;
    }
    if (phi_v1 < 0x104) {
        *arg1 = phi_v1;
        *arg2 = 0;
        return;
    }
    if (phi_v1 < 0x1D0) {
        *arg1 = 0x104;
        *arg2 = phi_v1 - 0x104;
        return;
    }
    if (phi_v1 < 0x2D4) {
        *arg1 = 0x2D4 - phi_v1;
        *arg2 = 0xCC;
        return;
    }
    *arg1 = 0;
    *arg2 = 0x3A0 - phi_v1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800507D8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8004C024(s16, ?, s16, s32, s32, s32, s32);   /* extern */
? func_8004C148(?, s16, s16, s32, s32, s32, s32);   /* extern */

void func_800508C0(void) {
    s32 sp54;
    s32 sp50;
    u32 sp4C;
    s32 sp48;
    u16 sp42;
    u16 sp40;
    u16 sp3E;
    s32 temp_v1;
    s16 phi_s0;
    u16 phi_s0_2;
    s32 phi_s1;
    s32 phi_s2;
    u16 phi_s0_3;
    s32 phi_s1_2;
    s32 phi_s2_2;

    if (gModeSelection == TIME_TRIALS) {
        phi_s0 = D_80164378;
    } else {
        phi_s0 = gGPCurrentRacePlayerIdByRank;
    }
    temp_v1 = gLapCountByPlayerId[phi_s0];
    sp4C = func_80050644(phi_s0 & 0xFFFF, &sp54, &sp50);
    if (temp_v1 > 0) {
        if (temp_v1 == 1) {
            phi_s0_2 = 0;
            phi_s1 = 0;
            phi_s2 = 0xFF;
        } else {
            if (temp_v1 == 2) {
                phi_s1 = 0xFF;
            } else {
                phi_s1 = 0;
            }
            phi_s0_2 = 0xFF;
            phi_s2 = 0;
        }
        sp48 = temp_v1;
        func_8004C024(0x20, 0x12, 0x104, phi_s0_2 & 0xFFFF, phi_s1, phi_s2, 0xFF);
        func_8004C148(0x124, 0x12, 0xCC, phi_s0_2 & 0xFFFF, phi_s1, phi_s2, 0xFF);
        func_8004C024(0x20, 0xDE, 0x104, phi_s0_2 & 0xFFFF, phi_s1, phi_s2, 0xFF);
        func_8004C148(0x20, 0x12, 0xCC, phi_s0_2 & 0xFFFF, phi_s1, phi_s2, 0xFF);
        sp42 = phi_s0_2;
        sp40 = phi_s1;
        sp3E = phi_s2;
    }
    phi_s0_3 = sp42;
    phi_s1_2 = sp40;
    phi_s2_2 = sp3E;
    if ((gLapCountByPlayerId[phi_s0] >= 0) && (gLapCountByPlayerId[phi_s0] < 3)) {
        if (gLapCountByPlayerId[phi_s0] != 0) {
            if (gLapCountByPlayerId[phi_s0] != 1) {
                if (gLapCountByPlayerId[phi_s0] != 2) {

                } else {
                    phi_s1_2 = 0;
                    goto block_20;
                }
            } else {
                phi_s1_2 = 0xFF;
block_20:
                phi_s0_3 = 0xFF;
                phi_s2_2 = 0;
            }
        } else {
            phi_s0_3 = 0;
            phi_s1_2 = 0;
            phi_s2_2 = 0xFF;
        }
        switch (sp4C) {
        case 1:
            func_8004C024(0x20, 0x12, sp54, phi_s0_3 & 0xFFFF, phi_s1_2, phi_s2_2, 0xFF);
            return;
        case 2:
            func_8004C024(0x20, 0x12, 0x104, phi_s0_3 & 0xFFFF, phi_s1_2, phi_s2_2, 0xFF);
            func_8004C148(0x124, 0x12, sp50, phi_s0_3 & 0xFFFF, phi_s1_2, phi_s2_2, 0xFF);
            return;
        case 3:
            func_8004C024(0x20, 0x12, 0x104, phi_s0_3 & 0xFFFF, phi_s1_2, phi_s2_2, 0xFF);
            func_8004C148(0x124, 0x12, 0xCC, phi_s0_3 & 0xFFFF, phi_s1_2, phi_s2_2, 0xFF);
            func_8004C024(sp54 + 0x20, 0xDE, 0x104 - sp54, phi_s0_3 & 0xFFFF, phi_s1_2, phi_s2_2, 0xFF);
            return;
        case 4:
            func_8004C024(0x20, 0x12, 0x104, phi_s0_3 & 0xFFFF, phi_s1_2, phi_s2_2, 0xFF);
            func_8004C148(0x124, 0x12, 0xCC, phi_s0_3 & 0xFFFF, phi_s1_2, phi_s2_2, 0xFF);
            func_8004C024(0x20, 0xDE, 0x104, phi_s0_3 & 0xFFFF, phi_s1_2, phi_s2_2, 0xFF);
            func_8004C148(0x20, sp50 + 0x12, 0xCC - sp50, phi_s0_3 & 0xFFFF, phi_s1_2, phi_s2_2, 0xFF);
            /* Duplicate return node #27. Try simplifying control flow for better match */
            return;
        }
    } else {
    default:
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800508C0.s")
#endif

#ifdef MIPS_TO_C
UNUSED void func_80050C68(void) {
    s32 sp88;
    s32 sp84;
    ? *var_s2;
    f32 temp_f20;
    s32 var_s1;
    u16 temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    temp_f20 = D_800EE064;
    var_s2 = &D_80163DE8;
    var_s1 = 0;
    do {
        temp_v0 = var_s2->unk44;
        if ((temp_v0 != 4) && (temp_v0 != 0)) {
            func_800507D8(var_s1 & 0xFFFF, &sp88, &sp84);
            temp_v0_2 = gDisplayListHead;
            gDisplayListHead = temp_v0_2 + 8;
            temp_v0_2->unk4 = &D_0D007DB8;
            temp_v0_2->unk0 = 0x06000000;
            temp_v0_3 = gDisplayListHead;
            gDisplayListHead = temp_v0_3 + 8;
            temp_v0_3->unk4 = &D_0D01B4D8;
            temp_v0_3->unk0 = 0xFD100000;
            temp_v0_4 = gDisplayListHead;
            gDisplayListHead = temp_v0_4 + 8;
            temp_v0_4->unk4 = 0;
            temp_v0_4->unk0 = 0xE8000000;
            temp_v0_5 = gDisplayListHead;
            gDisplayListHead = temp_v0_5 + 8;
            temp_v0_5->unk4 = 0x07000000;
            temp_v0_5->unk0 = 0xF5000100;
            temp_v0_6 = gDisplayListHead;
            gDisplayListHead = temp_v0_6 + 8;
            temp_v0_6->unk4 = 0;
            temp_v0_6->unk0 = 0xE6000000;
            temp_v0_7 = gDisplayListHead;
            gDisplayListHead = temp_v0_7 + 8;
            temp_v0_7->unk4 = 0x073FC000;
            temp_v0_7->unk0 = 0xF0000000;
            temp_v0_8 = gDisplayListHead;
            gDisplayListHead = temp_v0_8 + 8;
            temp_v0_8->unk4 = 0;
            temp_v0_8->unk0 = 0xE7000000;
            func_800452A4(&D_0D01D6D8, 0x20, 0x20);
            func_80042330(sp88 + 0x20, sp84 + 0x12, 0, temp_f20);
            temp_v0_9 = gDisplayListHead;
            gDisplayListHead = temp_v0_9 + 8;
            temp_v0_9->unk4 = &D_0D0069E0;
            temp_v0_9->unk0 = 0x06000000;
        }
        var_s1 += 1;
        var_s2 += 0x54;
    } while (var_s1 != 7);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80050C68.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
? func_80044924(? *, ?, ?);                         /* extern */
? func_800452A4(? *, ?, ?);                         /* extern */
? func_8004B2BC(s16, u16 *, u16 *, ?);              /* extern */
? func_8004B35C(s32, s32, s32, ?);                  /* extern */
? func_8004B614(u16, u16, u16, ?, s32, s32, s32);   /* extern */
s32 func_80050644(s32, s32 *, s32 *, s32);          /* extern */
extern ? D_0D006950;
extern ? D_0D0069E0;
extern ? D_0D0069F8;
extern ? D_0D007A40;
extern ? D_0D007DB8;
extern ? D_0D019E58;
extern ? D_0D01A058;
extern ? D_0D01A2D8;
extern ? D_0D01A4D8;
extern ? D_0D01A6D8;
extern ? D_0D01A8D8;
extern ? D_0D01AAD8;
extern ? D_0D01ACD8;
extern ? D_0D01AED8;
extern ? D_0D01B0D8;
extern ? D_0D01B2D8;
extern ? D_0D01B4D8;
extern ? D_0D01DAD8;
extern u16 D_801656C0;
extern u16 D_801656D0;
extern u16 D_801656E0;
extern ? D_8018CE24;
extern s32 D_8018D3E4;
extern s32 D_8018D3E8;
extern s32 D_8018D3EC;
static u32 D_800E457C[8] = {
    (u32) &D_0D01A4D8,
    (u32) &D_0D01A6D8,
    (u32) &D_0D01ACD8,
    (u32) &D_0D01AAD8,
    (u32) &D_0D01AED8,
    (u32) &D_0D01B0D8,
    (u32) &D_0D01A8D8,
    (u32) &D_0D01B2D8,
};
static ? D_800E459C;                                /* unable to generate initializer */
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_80050E34(s32 playerId, s32 arg1) {
    s32 spD4;
    s32 spD0;
    s32 spCC;
    s32 spC4;
    s32 spB8;
    Player *spAC;
    s32 sp3C;                                       /* compiler-managed */
    s16 *sp38;
    ? *sp34;
    Gfx *temp_v0_10;
    Gfx *temp_v0_11;
    Gfx *temp_v0_12;
    Gfx *temp_v0_13;
    Gfx *temp_v0_14;
    Gfx *temp_v0_15;
    Gfx *temp_v0_16;
    Gfx *temp_v0_17;
    Gfx *temp_v0_18;
    Gfx *temp_v0_19;
    Gfx *temp_v0_20;
    Gfx *temp_v0_21;
    Gfx *temp_v0_22;
    Gfx *temp_v0_23;
    Gfx *temp_v0_24;
    Gfx *temp_v0_25;
    Gfx *temp_v0_26;
    Gfx *temp_v0_27;
    Gfx *temp_v0_28;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    Player *temp_v0;
    f32 *temp_a0;
    s16 *temp_a1;
    s32 temp_s0;
    s32 temp_t2;
    s32 temp_v0_2;
    struct_80165C18_entry *temp_s1_2;
    u16 temp_s1;

    temp_v0 = &gPlayerOne[playerId];
    spAC = temp_v0;
    temp_s0 = gLapCountByPlayerId[playerId];
    temp_s1 = temp_v0->characterId;
    if (gPlayerCountSelection1 == 1) {
        spC4 = 0x00000012;
    } else {
        spC4 = 0x00000078;
    }
    spD4 = *(&D_8018CE24 + (playerId << 5));
    temp_v0_2 = func_80050644(playerId & 0xFFFF, &spD0, &spCC, playerId);
    if ((temp_v0_2 == 2) || (temp_v0_2 == 3)) {
        spB8 = 1;
    } else {
        spB8 = 0;
    }
    temp_t2 = temp_s1 * 4;
    if ((gCurrentCourseId == 4) && (temp_s0 < 3)) {
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->words.w0 = 0x06000000;
        temp_v0_3->words.w1 = (u32) &D_0D007DB8;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->words.w0 = 0xFD100000;
        temp_v0_4->words.w1 = (u32) &D_0D01B4D8;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->words.w1 = 0;
        temp_v0_5->words.w0 = 0xE8000000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->words.w1 = 0x07000000;
        temp_v0_6->words.w0 = 0xF5000100;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->words.w1 = 0;
        temp_v0_7->words.w0 = 0xE6000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->words.w1 = 0x073FC000;
        temp_v0_8->words.w0 = 0xF0000000;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        temp_v0_9->words.w1 = 0;
        temp_v0_9->words.w0 = 0xE7000000;
        spD4 = spD4;
        func_800452A4(&D_0D01DAD8, 0x20, 0x20);
        temp_s1_2 = &D_80165C18[spD4];
        temp_s1_2->unk_004[0] = temp_s1_2->unk_028[0] + (f32) (spD0 + 0x20);
        temp_s1_2->unk_004[2] = temp_s1_2->unk_028[2];
        temp_s1_2->unk_004[1] = temp_s1_2->unk_028[1] + (f32) (spC4 + spCC);
        func_80042E00(temp_s1_2->unk_004, (s16 *) &temp_s1_2->unk_0BE, temp_s1_2->unk_000);
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        temp_v0_10->words.w0 = 0x06000000;
        temp_v0_10->words.w1 = (u32) &D_0D0069E0;
        return;
    }
    temp_v0_11 = gDisplayListHead;
    gDisplayListHead = temp_v0_11 + 8;
    temp_v0_11->words.w0 = 0xFD100000;
    temp_v0_11->words.w1 = D_800E457C[temp_s1];
    temp_v0_12 = gDisplayListHead;
    gDisplayListHead = temp_v0_12 + 8;
    temp_v0_12->words.w1 = 0;
    temp_v0_12->words.w0 = 0xE8000000;
    temp_v0_13 = gDisplayListHead;
    gDisplayListHead = temp_v0_13 + 8;
    temp_v0_13->words.w1 = 0x07000000;
    temp_v0_13->words.w0 = 0xF5000100;
    temp_v0_14 = gDisplayListHead;
    gDisplayListHead = temp_v0_14 + 8;
    temp_v0_14->words.w1 = 0;
    temp_v0_14->words.w0 = 0xE6000000;
    temp_v0_15 = gDisplayListHead;
    gDisplayListHead = temp_v0_15 + 8;
    temp_v0_15->words.w1 = 0x073FC000;
    temp_v0_15->words.w0 = 0xF0000000;
    temp_v0_16 = gDisplayListHead;
    gDisplayListHead = temp_v0_16 + 8;
    temp_v0_16->words.w1 = 0;
    temp_v0_16->words.w0 = 0xE7000000;
    temp_v0_17 = gDisplayListHead;
    gDisplayListHead = temp_v0_17 + 8;
    temp_v0_17->words.w1 = (u32) &D_0D007DB8;
    temp_v0_17->words.w0 = 0x06000000;
    if (spAC->unk_0BC & 0x200) {
        sp3C = temp_t2;
        func_8004B614(D_801656C0, D_801656D0, D_801656E0, 0x80, 0x00000080, 0x00000080, (s32) D_80165C18[spD4].unk_0A0);
    } else {
        sp3C = temp_t2;
        func_8004B2BC(D_80165C18[spD4].unk_0A0, &D_801656D0, &D_801656E0, 0x80);
    }
    func_800452A4(*(&D_800E459C + sp3C), 0x20, 0x20);
    temp_a0 = &D_80165C18[spD4] + 4;
    temp_a1 = &D_80165C18[spD4] + 0xBE;
    sp38 = temp_a1;
    sp3C = temp_a0;
    D_80165C18[spD4].unk_004[0] = D_80165C18[spD4].unk_028[0] + (f32) (spD0 + 0x20);
    D_80165C18[spD4].unk_004[2] = D_80165C18[spD4].unk_028[2];
    D_80165C18[spD4].unk_004[1] = D_80165C18[spD4].unk_028[1] + (f32) (spC4 + spCC);
    func_80042E00(temp_a0, temp_a1, D_80165C18[spD4].unk_000);
    if (spB8 != 0) {
        temp_v0_18 = gDisplayListHead;
        gDisplayListHead = temp_v0_18 + 8;
        temp_v0_18->words.w1 = (u32) &D_0D0069F8;
        temp_v0_18->words.w0 = 0x06000000;
    } else {
        temp_v0_19 = gDisplayListHead;
        gDisplayListHead = temp_v0_19 + 8;
        temp_v0_19->words.w1 = (u32) &D_0D0069E0;
        temp_v0_19->words.w0 = 0x06000000;
    }
    temp_v0_20 = gDisplayListHead;
    gDisplayListHead = temp_v0_20 + 8;
    temp_v0_20->words.w0 = 0xFD100000;
    temp_v0_20->words.w1 = (u32) &D_0D019E58;
    temp_v0_21 = gDisplayListHead;
    gDisplayListHead = temp_v0_21 + 8;
    temp_v0_21->words.w1 = 0;
    temp_v0_21->words.w0 = 0xE8000000;
    temp_v0_22 = gDisplayListHead;
    gDisplayListHead = temp_v0_22 + 8;
    temp_v0_22->words.w1 = 0x07000000;
    temp_v0_22->words.w0 = 0xF5000100;
    temp_v0_23 = gDisplayListHead;
    gDisplayListHead = temp_v0_23 + 8;
    temp_v0_23->words.w1 = 0;
    temp_v0_23->words.w0 = 0xE6000000;
    temp_v0_24 = gDisplayListHead;
    gDisplayListHead = temp_v0_24 + 8;
    temp_v0_24->words.w1 = 0x073FC000;
    temp_v0_24->words.w0 = 0xF0000000;
    temp_v0_25 = gDisplayListHead;
    gDisplayListHead = temp_v0_25 + 8;
    temp_v0_25->words.w1 = 0;
    temp_v0_25->words.w0 = 0xE7000000;
    func_800452A4((arg1 << 6) + 0x40 + &D_0D01A058, 8, 8);
    if (spB8 != 0) {
        func_80042330(spD0 + 0x26, spC4 + spCC + 4, 0U, 1.0f);
    } else {
        func_80042330(spD0 + 0x1B, spC4 + spCC + 4, 0U, 1.0f);
    }
    temp_v0_26 = gDisplayListHead;
    gDisplayListHead = temp_v0_26 + 8;
    temp_v0_26->words.w0 = 0x06000000;
    temp_v0_26->words.w1 = (u32) &D_0D006950;
    if ((spAC == gPlayerOne) && (gScreenModeSelection == 0)) {
        temp_v0_27 = gDisplayListHead;
        gDisplayListHead = temp_v0_27 + 8;
        temp_v0_27->words.w1 = (u32) &D_0D007A40;
        temp_v0_27->words.w0 = 0x06000000;
        sp34 = &D_0D0069E0;
        func_8004B35C(D_8018D3E4, D_8018D3E8, D_8018D3EC, 0xFF);
        func_80044924(&D_0D01A2D8, 0x20, 0x20);
        func_80042E00(sp3C, sp38, D_80165C18[spD4].unk_000);
        temp_v0_28 = gDisplayListHead;
        gDisplayListHead = temp_v0_28 + 8;
        temp_v0_28->words.w0 = 0x06000000;
        temp_v0_28->words.w1 = (u32) sp34;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80050E34.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800508C0(); // extern
? func_80050E34(s16, s32); // extern
extern ? gGPCurrentRacePlayerIdByRank;
extern s32 D_80164408;


void func_800514BC(void) {
    s16 temp_a0;
    s32 temp_s0;
    s32 temp_s1;
    void *temp_v1;
    s32 phi_s3;
    s16 *phi_s2;
    s32 phi_s0;
    s32 phi_s1;

    if (gScreenModeSelection == SCREEN_MODE_1P) {
        func_800508C0();
    }
    phi_s3 = 8;
    phi_s1 = 0;
    if ((gPlayerCountSelection1 == 2) && (gActiveScreenMode == SCREEN_MODE_2P_SPLITSCREEN_VERTICAL)) {
        phi_s3 = 0;
    }
    temp_s0 = phi_s3 - 1;
    phi_s0 = temp_s0;
    if (phi_s3 > 0) {
        phi_s2 = (temp_s0 * 2) + &gGPCurrentRacePlayerIdByRank;
        do {
            temp_a0 = *phi_s2;
            if (((gPlayerOne[temp_a0].unk_000 & 0x8000) != 0) && ((temp_a0 != 0) || (gPlayerCountSelection1 != 1))) {
                func_80050E34(temp_a0, phi_s0);
            }
            temp_s1 = phi_s1 + 1;
            phi_s2 += -2;
            phi_s0 += -1;
            phi_s1 = temp_s1;
        } while (temp_s1 != phi_s3);
    }
    if (gModeSelection == TIME_TRIALS) {
        func_80050E34(0, D_80164408);
    } else if (gPlayerCountSelection1 == 1) {
        func_80050E34(0, *gPlayerPositions);
    }
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0xBB000000;
    temp_v1->unk4 = 0x10001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800514BC.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
? func_80043D50(? *, ?, ?);                         /* extern */
extern ? D_0D0069C8;
extern ? D_0D0079C8;
extern ? D_0D028DD8;
extern s32 D_8018C970;

void func_80051638(s32 arg0) {
    Gfx *temp_v1;
    Gfx *temp_v1_2;
    Gfx *temp_v1_3;
    Gfx *temp_v1_4;
    Gfx *temp_v1_5;
    s32 *var_s0;
    s32 temp_a0;
    struct_80165C18_entry *temp_v0;

    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->words.w1 = (u32) &D_0D0079C8;
    temp_v1->words.w0 = 0x06000000;
    temp_v1_2 = gDisplayListHead;
    gDisplayListHead = temp_v1_2 + 8;
    temp_v1_2->words.w1 = 0x00003000;
    temp_v1_2->words.w0 = 0xB6000000;
    func_80043D50(&D_0D028DD8, 0x20, 0x10);
    var_s0 = &D_8018C970;
    do {
        temp_a0 = *var_s0;
        if (temp_a0 != -1) {
            temp_v0 = &D_80165C18[temp_a0];
            if ((temp_v0->unk_0A6 >= 2) && (temp_v0->unk_0D5 == 7) && (D_8018D120 < 0x2EF)) {
                func_80043104(temp_a0);
                temp_v1_3 = gDisplayListHead;
                gDisplayListHead = temp_v1_3 + 8;
                temp_v1_3->words.w1 = (u32) &D_0D0069C8;
                temp_v1_3->words.w0 = 0x06000000;
            }
        }
        var_s0 += 4;
    } while (var_s0 != D_8018CA70);
    temp_v1_4 = gDisplayListHead;
    gDisplayListHead = temp_v1_4 + 8;
    temp_v1_4->words.w1 = 0x00002000;
    temp_v1_4->words.w0 = 0xB7000000;
    temp_v1_5 = gDisplayListHead;
    gDisplayListHead = temp_v1_5 + 8;
    temp_v1_5->words.w0 = 0xBB000000;
    temp_v1_5->words.w1 = 0x00010001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80051638.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80043104(s32); // extern
? func_80044F34(? *, ?, ?); // extern
extern ? D_0D006980;
extern ? D_0D007AE0;
extern ? D_0D0293D8;
extern ? D_80165C18;
extern s32 D_8018C1B0;
extern ? D_8018C278;


void func_800517C8(void) {
    s32 *temp_s0;
    s32 temp_a0;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    s32 *phi_s0;

    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk4 = &D_0D007AE0;
    temp_v1->unk0 = 0x6000000;
    temp_v1_2 = gDisplayListHead;
    gDisplayListHead = temp_v1_2 + 8;
    temp_v1_2->unk4 = -0xC07;
    temp_v1_2->unk0 = 0xFC627EC4;
    func_80044F34(&D_0D0293D8, 0x10, 0x10);
    phi_s0 = &D_8018C1B0;
    do {
        temp_a0 = *phi_s0;
        if ((&D_80165C18 + (temp_a0 * 0xE0))->unkA6 >= 2) {
            func_80043104(temp_a0);
            temp_v1_3 = gDisplayListHead;
            gDisplayListHead = temp_v1_3 + 8;
            temp_v1_3->unk4 = &D_0D006980;
            temp_v1_3->unk0 = 0x6000000;
        }
        temp_s0 = phi_s0 + 4;
        phi_s0 = temp_s0;
    } while (temp_s0 != &D_8018C278);
    temp_v1_4 = gDisplayListHead;
    gDisplayListHead = temp_v1_4 + 8;
    temp_v1_4->unk0 = 0xBB000000;
    temp_v1_4->unk4 = 0x10001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800517C8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80042330(s16, s16, ?, s32); // extern
? func_80044DA0(s32, u8, u8); // extern
extern ? D_0D006940;
extern ? D_80165C18;
extern u8 D_8018D228;


void func_800518F8(s32 arg0, s16 arg1, s16 arg2) {
    void *sp18;
    s32 temp_t6;
    u8 temp_v0;
    void *temp_t0;
    void *temp_v0_2;
    void *temp_v0_3;

    temp_t6 = arg0 * 0xE0;
    temp_t0 = temp_t6 + &D_80165C18;
    if ((temp_t0->unk54 & 0x10) != 0) {
        temp_v0 = temp_t0->unkD5;
        if (D_8018D228 != temp_v0) {
            D_8018D228 = temp_v0;
            sp18 = temp_t0;
            func_80044DA0(temp_t0->unk64, temp_t0->unkD9, temp_t0->unkDA);
        }
        sp18 = temp_t6 + &D_80165C18;
        func_80042330(arg1, arg2, 0, (temp_t6 + &D_80165C18)->unk0);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->unk0 = 0x400103F;
        temp_v0_2->unk4 = (temp_t6 + &D_80165C18)->unk74;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->unk4 = &D_0D006940;
        temp_v0_3->unk0 = 0x6000000;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800518F8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80042330(s16, s16, ?, s32); // extern
? func_80044DA0(s32, u8, u8); // extern
? func_8004B138(?, ?, ?, s16); // extern
extern ? D_0D006940;
extern ? D_80165C18;
extern u8 D_8018D228;


void func_800519D4(s32 arg0, s16 arg1, s16 arg2) {
    u8 temp_v0;
    void *temp_s0;
    void *temp_v0_2;
    void *temp_v0_3;

    temp_s0 = (arg0 * 0xE0) + &D_80165C18;
    if ((temp_s0->unk54 & 0x10) != 0) {
        temp_v0 = temp_s0->unkD5;
        if (D_8018D228 != temp_v0) {
            D_8018D228 = temp_v0;
            func_80044DA0(temp_s0->unk64, temp_s0->unkD9, temp_s0->unkDA);
        }
        func_8004B138(0xFF, 0xFF, 0xFF, temp_s0->unkA0);
        func_80042330(arg1, arg2, 0, temp_s0->unk0);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->unk0 = 0x400103F;
        temp_v0_2->unk4 = temp_s0->unk74;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->unk4 = &D_0D006940;
        temp_v0_3->unk0 = 0x6000000;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800519D4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004B414(?, ?, ?, ?); // extern
? func_8004B6C4(?, ?, ?); // extern
? func_800518F8(s32, s16, s16); // extern
? func_800519D4(s32, s16, s16); // extern
extern ? D_0D007A60;
extern ? D_80165C18;
extern ? D_8018CC80;
extern s32 D_8018D1F0;
extern s8 D_8018D228;
extern u8 D_8018D230;


void func_80051ABC(s16 arg0, s32 arg1) {
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_s0;
    s32 temp_s0_2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v1;
    s32 *phi_s1;
    s32 phi_s0;
    s32 *phi_s1_2;
    s32 phi_s0_2;

    D_8018D228 = 0xFF;
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x6000000;
    temp_v1->unk4 = &D_0D007A60;
    if (D_8018D230 != 0) {
        func_8004B414(0xFF, 0xFF, 0xFF, 0xFF);
        phi_s0 = 0;
        if (D_8018D1F0 > 0) {
            phi_s1 = (arg1 * 4) + &D_8018CC80;
            do {
                temp_a0 = *phi_s1;
                temp_v0 = &D_80165C18 + (temp_a0 * 0xE0);
                func_800519D4(temp_a0, temp_v0->unk9C, arg0 - temp_v0->unk9E);
                temp_s0 = phi_s0 + 1;
                phi_s1 += 4;
                phi_s0 = temp_s0;
            } while (temp_s0 < D_8018D1F0);
            return;
        }
        // Duplicate return node #8. Try simplifying control flow for better match
        return;
    }
    func_8004B6C4(0xFF, 0xFF, 0xFF);
    phi_s0_2 = 0;
    if (D_8018D1F0 > 0) {
        phi_s1_2 = (arg1 * 4) + &D_8018CC80;
        do {
            temp_a0_2 = *phi_s1_2;
            temp_v0_2 = &D_80165C18 + (temp_a0_2 * 0xE0);
            func_800518F8(temp_a0_2, temp_v0_2->unk9C, arg0 - temp_v0_2->unk9E);
            temp_s0_2 = phi_s0_2 + 1;
            phi_s1_2 += 4;
            phi_s0_2 = temp_s0_2;
        } while (temp_s0_2 < D_8018D1F0);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80051ABC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004B414(?, ?, ?, ?); // extern
? func_8004B6C4(?, ?, ?); // extern
? func_800518F8(s32, s16, s16); // extern
? func_800519D4(s32, s16, s16); // extern
extern ? D_0D007A60;
extern s8 D_801658FE;
extern ? D_80165C18;
extern ? D_8018CC80;
extern s32 D_8018D1F0;
extern s8 D_8018D228;
extern u8 D_8018D230;


void func_80051C60(s16 arg0, s32 arg1) {
    s16 temp_v0;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_s0;
    s32 temp_s0_2;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v1;
    s32 *phi_s1;
    s16 phi_s5;
    s32 phi_s0;
    s32 *phi_s1_2;
    s32 phi_s0_2;

    if (D_801658FE == 0) {
        temp_v0 = gCurrentCourseId;
        if (temp_v0 == 6) {
            phi_s5 = arg0;
        } else if (temp_v0 == 9) {
            phi_s5 = arg0 - 0x10;
        } else if (temp_v0 == 4) {
            phi_s5 = arg0 - 0x10;
        } else {
            phi_s5 = arg0 + 0x10;
        }
    } else if (gCurrentCourseId == 6) {
        phi_s5 = (arg0 << 0x11) >> 0x10;
    } else {
        phi_s5 = arg0 + 0x20;
    }
    D_8018D228 = 0xFF;
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x6000000;
    temp_v1->unk4 = &D_0D007A60;
    if (D_8018D230 != 0) {
        func_8004B414(0xFF, 0xFF, 0xFF, 0xFF);
        phi_s0 = 0;
        if (D_8018D1F0 > 0) {
            phi_s1 = (arg1 * 4) + &D_8018CC80;
            do {
                temp_a0 = *phi_s1;
                temp_v0_2 = &D_80165C18 + (temp_a0 * 0xE0);
                func_800519D4(temp_a0, temp_v0_2->unk9C, (phi_s5 - temp_v0_2->unk9E) / 2);
                temp_s0 = phi_s0 + 1;
                phi_s1 += 4;
                phi_s0 = temp_s0;
            } while (temp_s0 < D_8018D1F0);
            return;
        }
        // Duplicate return node #19. Try simplifying control flow for better match
        return;
    }
    func_8004B6C4(0xFF, 0xFF, 0xFF);
    phi_s0_2 = 0;
    if (D_8018D1F0 > 0) {
        phi_s1_2 = (arg1 * 4) + &D_8018CC80;
        do {
            temp_a0_2 = *phi_s1_2;
            temp_v0_3 = &D_80165C18 + (temp_a0_2 * 0xE0);
            func_800518F8(temp_a0_2, temp_v0_3->unk9C, (phi_s5 - temp_v0_3->unk9E) / 2);
            temp_s0_2 = phi_s0_2 + 1;
            phi_s1_2 += 4;
            phi_s0_2 = temp_s0_2;
        } while (temp_s0_2 < D_8018D1F0);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80051C60.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80051ABC(s16, ?); // extern

void func_80051EBC(void) {
    func_80051ABC(0xF0 - D_800DC5EC->unk28, 0);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80051EBC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80051ABC(s16, ?); // extern

void func_80051EF8(void) {
    s16 temp_a0;
    s16 temp_v0;
    s16 phi_a0;

    temp_v0 = gCurrentCourseId;
    temp_a0 = 0xF0 - D_800DC5EC->unk28;
    if (temp_v0 == 6) {
        phi_a0 = temp_a0 - 0x30;
    } else if (temp_v0 == 9) {
        phi_a0 = temp_a0 - 0x40;
    } else if (temp_v0 == 4) {
        phi_a0 = temp_a0 - 0x40;
    } else {
        phi_a0 = temp_a0 - 0x30;
    }
    func_80051ABC(phi_a0, 0);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80051EF8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80051ABC(s16, s32); // extern
extern void *D_800DC5F0;
extern s32 D_8018D1F0;

void func_80051F9C(void) {
    s16 temp_a0;
    s16 temp_v0;
    s16 phi_a0;

    temp_v0 = gCurrentCourseId;
    temp_a0 = 0xF0 - D_800DC5F0->unk28;
    if (temp_v0 == 6) {
        phi_a0 = temp_a0 - 0x30;
    } else if (temp_v0 == 9) {
        phi_a0 = temp_a0 - 0x40;
    } else if (temp_v0 == 4) {
        phi_a0 = temp_a0 - 0x40;
    } else {
        phi_a0 = temp_a0 - 0x30;
    }
    func_80051ABC(phi_a0, D_8018D1F0);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80051F9C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80051C60(s16, ?); // extern

void func_80052044(void) {
    func_80051C60(0xF0 - D_800DC5EC->unk28, 0);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80052044.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80051C60(s16, s32); // extern
extern void *D_800DC5F0;
extern s32 D_8018D1F0;

void func_80052080(void) {
    func_80051C60(0xF0 - D_800DC5F0->unk28, D_8018D1F0);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80052080.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern ? D_800E45C0;
extern ? D_80165CED;

void func_800520C0(s32 arg0) {
    s8 temp_v0;
    s8 temp_v0_2;
    s8 temp_v0_3;
    s8 temp_v0_4;
    s8 temp_v0_5;
    s8 temp_v0_6;

    if (*(&D_80165CED + (arg0 * 0xE0)) == 0) {
        D_800E45C0.unk58 = 0;
        temp_v0 = D_800E45C0.unk58;
        D_800E45C0.unk59 = -0x78;
        D_800E45C0.unk40 = temp_v0;
        D_800E45C0.unk28 = temp_v0;
        D_800E45C0.unk10 = temp_v0;
        temp_v0_2 = D_800E45C0.unk59;
        D_800E45C0.unk5A = 0;
        D_800E45C0.unk41 = temp_v0_2;
        D_800E45C0.unk29 = temp_v0_2;
        D_800E45C0.unk11 = temp_v0_2;
        temp_v0_3 = D_800E45C0.unk5A;
        D_800E45C0.unk42 = temp_v0_3;
        D_800E45C0.unk2A = temp_v0_3;
        D_800E45C0.unk12 = temp_v0_3;
        return;
    }
    D_800E45C0.unk58 = 0x63;
    temp_v0_4 = D_800E45C0.unk58;
    D_800E45C0.unk59 = 0x42;
    D_800E45C0.unk40 = temp_v0_4;
    D_800E45C0.unk28 = temp_v0_4;
    D_800E45C0.unk10 = temp_v0_4;
    temp_v0_5 = D_800E45C0.unk59;
    D_800E45C0.unk5A = 0;
    D_800E45C0.unk41 = temp_v0_5;
    D_800E45C0.unk29 = temp_v0_5;
    D_800E45C0.unk11 = temp_v0_5;
    temp_v0_6 = D_800E45C0.unk5A;
    D_800E45C0.unk42 = temp_v0_6;
    D_800E45C0.unk2A = temp_v0_6;
    D_800E45C0.unk12 = temp_v0_6;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800520C0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80042E00(void *, void *, s32, s32); // extern
? func_800520C0(s32); // extern
s32 func_8007223C(s32, ?, s32); // extern
extern ? D_06007650;
extern ? D_060078C0;
extern ? D_06007978;
extern ? D_06007B38;
extern ? D_0D007828;
extern ? D_800E45C0;
extern ? D_800E45C8;
extern ? D_800E45D8;
extern ? D_800E45E0;
extern ? D_800E45F0;
extern ? D_800E45F8;
extern ? D_800E4608;
extern ? D_800E4610;
extern ? D_80165C18;
extern s32 D_80183F28;


void func_8005217C(s32 arg0) {
    s32 sp50;
    void *sp18;
    s32 temp_a3;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    void *temp_v1;

    temp_a3 = D_80183F28;
    temp_v1 = (temp_a3 * 0xE0) + &D_80165C18;
    if (temp_v1->unkA6 >= 2) {
        sp18 = temp_v1;
        sp50 = temp_a3;
        if (func_8007223C(temp_a3, 0x10, temp_a3) != 0) {
            sp50 = temp_a3;
            func_80042E00(temp_v1 + 4, temp_v1 + 0xBE, temp_v1->unk0, temp_a3);
            func_800520C0(sp50);
            temp_v0 = gDisplayListHead;
            gDisplayListHead = temp_v0 + 8;
            temp_v0->unk4 = &D_0D007828;
            temp_v0->unk0 = 0x6000000;
            temp_v0_2 = gDisplayListHead;
            gDisplayListHead = temp_v0_2 + 8;
            temp_v0_2->unk4 = &D_800E45C8;
            temp_v0_2->unk0 = 0x3860010;
            temp_v0_3 = gDisplayListHead;
            gDisplayListHead = temp_v0_3 + 8;
            temp_v0_3->unk4 = &D_800E45C0;
            temp_v0_3->unk0 = 0x3880010;
            temp_v0_4 = gDisplayListHead;
            gDisplayListHead = temp_v0_4 + 8;
            temp_v0_4->unk4 = &D_06007B38;
            temp_v0_4->unk0 = 0x6000000;
            temp_v0_5 = gDisplayListHead;
            gDisplayListHead = temp_v0_5 + 8;
            temp_v0_5->unk4 = &D_800E45E0;
            temp_v0_5->unk0 = 0x3860010;
            temp_v0_6 = gDisplayListHead;
            gDisplayListHead = temp_v0_6 + 8;
            temp_v0_6->unk4 = &D_800E45D8;
            temp_v0_6->unk0 = 0x3880010;
            temp_v0_7 = gDisplayListHead;
            gDisplayListHead = temp_v0_7 + 8;
            temp_v0_7->unk4 = &D_06007978;
            temp_v0_7->unk0 = 0x6000000;
            temp_v0_8 = gDisplayListHead;
            gDisplayListHead = temp_v0_8 + 8;
            temp_v0_8->unk4 = &D_800E45F8;
            temp_v0_8->unk0 = 0x3860010;
            temp_v0_9 = gDisplayListHead;
            gDisplayListHead = temp_v0_9 + 8;
            temp_v0_9->unk4 = &D_800E45F0;
            temp_v0_9->unk0 = 0x3880010;
            temp_v0_10 = gDisplayListHead;
            gDisplayListHead = temp_v0_10 + 8;
            temp_v0_10->unk4 = &D_060078C0;
            temp_v0_10->unk0 = 0x6000000;
            temp_v0_11 = gDisplayListHead;
            gDisplayListHead = temp_v0_11 + 8;
            temp_v0_11->unk4 = &D_800E4610;
            temp_v0_11->unk0 = 0x3860010;
            temp_v0_12 = gDisplayListHead;
            gDisplayListHead = temp_v0_12 + 8;
            temp_v0_12->unk4 = &D_800E4608;
            temp_v0_12->unk0 = 0x3880010;
            temp_v0_13 = gDisplayListHead;
            gDisplayListHead = temp_v0_13 + 8;
            temp_v0_13->unk4 = &D_06007650;
            temp_v0_13->unk0 = 0x6000000;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8005217C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s16 func_800418AC(f32, f32, s32); // extern
? func_800484BC(void *, void *, s32, s16, s32, s32, s32, s32, s32, s32, s32); // extern
? func_8004A630(? *, void *, ?); // extern
s32 func_8007223C(s32, ?); // extern
extern ? D_80165C18;
extern ? D_8018C830;

void func_800523B8(s32 arg0, s32 arg1, u32 arg2) {
    void *sp3C;
    void *sp38;
    s16 temp_v0;
    void *temp_a0;
    void *temp_v1;

    temp_v1 = (arg0 * 0xE0) + &D_80165C18;
    sp3C = temp_v1;
    temp_v0 = func_800418AC(temp_v1->unk4, temp_v1->unkC, (arg1 * 0xB8) + camera1);
    temp_a0 = temp_v1 + 4;
    sp38 = temp_a0;
    temp_v1->unkB4 = temp_v0;
    func_800484BC(temp_a0, temp_v1 + 0xB2, temp_v1->unk0, temp_v1->unkA0, temp_v1->unk60, temp_v1->unk64, temp_v1->unk74, 0x30, 0x28, 0x30, 0x28);
    if ((func_8007223C(arg0, 0x20) != 0) && (arg2 < 0x15F91)) {
        func_8004A630(&D_8018C830, sp38, 0x3ECCCCCD);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800523B8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800523B8(s32, s32, s32); // extern
s32 func_8007223C(s32, ?); // extern
s32 func_8008A364(s32, s32, ?, ?); // extern
extern ? D_80165C18;
extern s32 D_8018BFA8;
extern ? D_8018BFD0;

void func_800524B4(s32 arg0) {
    s32 *temp_s1;
    s32 temp_s0;
    s32 temp_s2;
    s32 *phi_s1;

    phi_s1 = &D_8018BFA8;
    do {
        temp_s0 = *phi_s1;
        if ((&D_80165C18 + (temp_s0 * 0xE0))->unkA6 >= 2) {
            temp_s2 = func_8008A364(temp_s0, arg0, 0x4000, 0x320);
            if (func_8007223C(temp_s0, 0x40000) != 0) {
                func_800523B8(temp_s0, arg0, temp_s2);
            }
        }
        temp_s1 = phi_s1 + 4;
        phi_s1 = temp_s1;
    } while (temp_s1 != &D_8018BFD0);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800524B4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s16 func_800418AC(f32, f32, s32); // extern
? func_800431B0(void *, ? *, s32, ? *); // extern
? func_80046F60(s32, s32, ?, ?, s32); // extern
extern ? D_0D0062B0;
extern ? D_80165C18;
extern ? D_80183E80;
extern s32 D_80183EA0;
extern s32 D_8018C3F0;
extern ? D_8018C490;
extern s32 D_8018C630;
extern ? D_8018C6A8;
extern s16 D_8018CFB0;
extern s16 D_8018CFC8;
extern s16 D_8018CFE8;
extern s16 D_8018D000;
extern s32 D_8018D120;


void func_80052590(s32 arg0) {
    s32 *temp_s1;
    s32 *temp_s1_2;
    s32 temp_s7;
    s32 temp_v0;
    s32 temp_v0_2;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s0_3;
    void *temp_v1;
    s32 *phi_s1;
    s32 *phi_s1_2;

    temp_s0 = &D_80165C18 + (D_80183EA0 * 0xE0);
    temp_s7 = (arg0 * 0xB8) + camera1;
    func_80046F60(temp_s0->unk60, temp_s0->unk64, 0x20, 0x40, 5);
    D_80183E80.unk0 = temp_s0->unkB2;
    D_80183E80.unk4 = temp_s0->unkB6;
    phi_s1 = &D_8018C3F0;
    if ((D_8018CFB0 != 0) || (D_8018CFC8 != 0)) {
        do {
            temp_v0 = *phi_s1;
            if (temp_v0 != -1) {
                temp_s0_2 = &D_80165C18 + (temp_v0 * 0xE0);
                if ((temp_s0_2->unkA6 >= 2) && (D_8018D120 < 0x2EF)) {
                    D_80183E80.unk2 = func_800418AC(temp_s0_2->unk4, temp_s0_2->unkC, temp_s7);
                    func_800431B0(temp_s0_2 + 4, &D_80183E80, temp_s0_2->unk0, &D_0D0062B0);
                }
            }
            temp_s1 = phi_s1 + 4;
            phi_s1 = temp_s1;
        } while (temp_s1 != &D_8018C490);
    }
    if ((D_8018CFE8 != 0) || (D_8018D000 != 0)) {
        phi_s1_2 = &D_8018C630;
        do {
            temp_v0_2 = *phi_s1_2;
            if (temp_v0_2 != -1) {
                temp_s0_3 = &D_80165C18 + (temp_v0_2 * 0xE0);
                if ((temp_s0_3->unkA6 >= 2) && (D_8018D120 < 0x2EF)) {
                    D_80183E80.unk2 = func_800418AC(temp_s0_3->unk4, temp_s0_3->unkC, temp_s7);
                    func_800431B0(temp_s0_3 + 4, &D_80183E80, temp_s0_3->unk0, &D_0D0062B0);
                }
            }
            temp_s1_2 = phi_s1_2 + 4;
            phi_s1_2 = temp_s1_2;
        } while (temp_s1_2 != &D_8018C6A8);
    }
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0xBB000000;
    temp_v1->unk4 = 0x10001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80052590.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80043220(void *, void *, s32, s32); // extern
s32 func_8007223C(s32, ?); // extern
? func_8008A364(s32, s32, ?, ?); // extern
extern ? D_80165C18;
extern s32 D_80183EA4;

void func_800527D8(s32 arg0) {
    s32 sp1C;
    s32 temp_a0;
    void *temp_v0;

    temp_a0 = D_80183EA4;
    sp1C = temp_a0;
    func_8008A364(temp_a0, arg0, 0x5555, 0x320);
    if (func_8007223C(temp_a0, 0x40000) != 0) {
        temp_v0 = (sp1C * 0xE0) + &D_80165C18;
        if (temp_v0->unkA6 >= 2) {
            func_80043220(temp_v0 + 4, temp_v0 + 0xB2, temp_v0->unk0, temp_v0->unk70);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800527D8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80043500(? *, ? *, ?, ? *); // extern
extern ? D_06007218;
extern ? D_80183E40;
extern ? D_80183E80;

void func_8005285C(s32 arg0) {
    Player *temp_v0;

    temp_v0 = &gPlayerOne[arg0];
    D_80183E40.unk0 = temp_v0->posX;
    D_80183E40.unk4 = temp_v0->posY;
    D_80183E80.unk0 = 0;
    D_80183E80.unk2 = 0;
    D_80183E80.unk4 = 0;
    D_80183E40.unk8 = temp_v0->posZ;
    func_80043500(&D_80183E40, &D_80183E80, 0x3CA3D70A, &D_06007218);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8005285C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80042E00(void *, ? *, s32); // extern
? func_800441E0(? *, ?, ?); // extern
extern ? D_060068E8;
extern ? D_0D005BD0;
extern ? D_0D006930;
extern ? D_0D007B00;
extern ? D_800E4620;
extern ? D_800E4628;
extern ? D_8016582C;
extern ? D_80165C18;
extern ? D_80183E80;
extern s32 D_8018C3F0;
extern ? D_8018C5F0;
extern s32 D_8018D120;


void func_800528EC(s32 arg0) {
    s32 *temp_s3;
    s32 *temp_s3_2;
    s32 temp_v0_11;
    s32 temp_v0_8;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_16;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_9;
    void *temp_v1;
    void *temp_v1_2;
    s32 *phi_s3;
    s32 *phi_s3_2;

    temp_v0 = gDisplayListHead;
    D_80183E80.unk0 = D_8016582C.unk0;
    D_80183E80.unk2 = D_8016582C.unk2;
    gDisplayListHead = temp_v0 + 8;
    D_80183E80.unk4 = D_8016582C.unk4;
    temp_v0->unk0 = 0x6000000;
    temp_v0->unk4 = &D_0D007B00;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk4 = 0x80000040;
    temp_v0_2->unk0 = 0xBC000002;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk4 = &D_800E4628;
    temp_v0_3->unk0 = 0x3860010;
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk4 = &D_800E4620;
    temp_v0_4->unk0 = 0x3880010;
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk4 = 0xFF33FFFF;
    temp_v0_5->unk0 = 0xFC121824;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->unk4 = 0x3000;
    temp_v0_6->unk0 = 0xB6000000;
    temp_v0_7 = gDisplayListHead;
    gDisplayListHead = temp_v0_7 + 8;
    temp_v0_7->unk0 = 0xB7000000;
    temp_v0_7->unk4 = 0x20204;
    func_800441E0(&D_060068E8, 0x20, 0x20);
    phi_s3_2 = &D_8018C3F0;
    if (gPlayerCountSelection1 < 3) {
        phi_s3 = &D_8018C3F0;
        do {
            temp_v0_8 = *phi_s3;
            if (temp_v0_8 != -1) {
                temp_v1 = &D_80165C18 + (temp_v0_8 * 0xE0);
                if (temp_v1->unkA6 > 0) {
                    func_80042E00(temp_v1 + 4, &D_80183E80, temp_v1->unk0);
                    temp_v0_9 = gDisplayListHead;
                    gDisplayListHead = temp_v0_9 + 8;
                    temp_v0_9->unk4 = &D_0D005BD0;
                    temp_v0_9->unk0 = 0x4000C2F;
                    temp_v0_10 = gDisplayListHead;
                    gDisplayListHead = temp_v0_10 + 8;
                    temp_v0_10->unk4 = &D_0D006930;
                    temp_v0_10->unk0 = 0x6000000;
                }
            }
            temp_s3 = phi_s3 + 4;
            phi_s3 = temp_s3;
        } while (temp_s3 != &D_8018C5F0);
    } else {
        do {
            temp_v0_11 = *phi_s3_2;
            if (temp_v0_11 != -1) {
                temp_v1_2 = &D_80165C18 + (temp_v0_11 * 0xE0);
                if ((temp_v1_2->unkA6 > 0) && (arg0 == temp_v1_2->unk92) && (D_8018D120 < 0x2EF)) {
                    func_80042E00(temp_v1_2 + 4, &D_80183E80, temp_v1_2->unk0);
                    temp_v0_12 = gDisplayListHead;
                    gDisplayListHead = temp_v0_12 + 8;
                    temp_v0_12->unk4 = &D_0D005BD0;
                    temp_v0_12->unk0 = 0x4000C2F;
                    temp_v0_13 = gDisplayListHead;
                    gDisplayListHead = temp_v0_13 + 8;
                    temp_v0_13->unk4 = &D_0D006930;
                    temp_v0_13->unk0 = 0x6000000;
                }
            }
            temp_s3_2 = phi_s3_2 + 4;
            phi_s3_2 = temp_s3_2;
        } while (temp_s3_2 != &D_8018C5F0);
    }
    temp_v0_14 = gDisplayListHead;
    gDisplayListHead = temp_v0_14 + 8;
    temp_v0_14->unk4 = 0x2000;
    temp_v0_14->unk0 = 0xB7000000;
    temp_v0_15 = gDisplayListHead;
    gDisplayListHead = temp_v0_15 + 8;
    temp_v0_15->unk4 = 0x20000;
    temp_v0_15->unk0 = 0xB6000000;
    temp_v0_16 = gDisplayListHead;
    gDisplayListHead = temp_v0_16 + 8;
    temp_v0_16->unk0 = 0xBB000000;
    temp_v0_16->unk4 = 0x10001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800528EC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8005285C(s32); // extern
? func_800528EC(s32); // extern
s32 func_80072320(s32, ?); // extern
extern ? D_800E4620;
extern ? D_800E4628;
extern ? D_80165840;
extern s32 D_80183DB8;


void func_80052C60(s32 arg0) {
    s32 temp_s0;
    s32 temp_s2;
    void *temp_v0;
    void *temp_v0_2;
    s32 *phi_s1;
    s32 phi_s2;

    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    D_800E4620.unk10 = D_80165840.unk0;
    D_800E4620.unk11 = D_80165840.unk1;
    D_800E4620.unk12 = D_80165840.unk2;
    temp_v0->unk0 = 0x3860010;
    temp_v0->unk4 = &D_800E4628;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk0 = 0x3880010;
    temp_v0_2->unk4 = &D_800E4620;
    phi_s1 = &D_80183DB8;
    phi_s2 = 0;
    if (gPlayerCountSelection1 > 0) {
        do {
            temp_s0 = *phi_s1;
            if (func_80072320(temp_s0, 4) != 0) {
                func_8005285C(phi_s2);
            }
            func_80072320(temp_s0, 0x10);
            temp_s2 = phi_s2 + 1;
            phi_s1 += 4;
            phi_s2 = temp_s2;
        } while (temp_s2 < gPlayerCountSelection1);
    }
    func_800528EC(arg0);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80052C60.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800435A0(? *, ? *, ?, ? *, s32); // extern
s32 func_80072320(s32, ?); // extern
extern ? D_06007218;
extern ? D_80183DB8;
extern ? D_80183E40;
extern ? D_80183E80;

void func_80052D70(s32 arg0) {
    Player *sp20;
    Player *temp_v1;

    temp_v1 = &gPlayerOne[arg0];
    sp20 = temp_v1;
    if (func_80072320(*(&D_80183DB8 + (arg0 * 4)), 8) != 0) {
        D_80183E40.unk0 = temp_v1->posX;
        D_80183E40.unk4 = temp_v1->unk_074 - 6.5;
        D_80183E40.unk8 = temp_v1->posZ;
        func_800435A0(&D_80183E40, &D_80183E80, 0x3CA3D70A, &D_06007218, 0xFF);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80052D70.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80052D70(s32); // extern
extern ? D_800E4620;
extern ? D_800E4628;
extern ? D_80165840;
extern ? D_80183E80;


void func_80052E30(s32 arg0) {
    s32 temp_s0;
    void *temp_v0;
    void *temp_v0_2;
    s32 phi_s0;

    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    D_800E4620.unk10 = D_80165840.unk0;
    D_800E4620.unk11 = D_80165840.unk1;
    D_800E4620.unk12 = D_80165840.unk2;
    temp_v0->unk0 = 0x3860010;
    temp_v0->unk4 = &D_800E4628;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk0 = 0x3880010;
    temp_v0_2->unk4 = &D_800E4620;
    D_80183E80.unk0 = 0;
    D_80183E80.unk2 = 0;
    D_80183E80.unk4 = 0;
    if (D_8018EDF3 == ONE_PLAYERS_SELECTED) {
        phi_s0 = 0;
        if (gPlayerCountSelection1 > 0) {
            do {
                func_80052D70(phi_s0);
                temp_s0 = phi_s0 + 1;
                phi_s0 = temp_s0;
            } while (temp_s0 < gPlayerCountSelection1);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80052E30.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s16 func_800418AC(f32, f32, s32); // extern
? func_80043104(s32); // extern
? func_80046E60(? *, ? *, ?, ?); // extern
s32 func_8007223C(s32, ?); // extern
? func_8008A364(s32, s32, ?, ?); // extern
extern ? D_06006D20;
extern ? D_06006F20;
extern ? D_0D0069E0;
extern ? D_80165C18;
extern s32 D_8018C3F0;
extern ? D_8018C5F0;


void func_80052F20(s32 arg0) {
    s32 sp44;
    s32 *temp_s2;
    s32 temp_s0;
    void *temp_s1;
    void *temp_v1;
    void *temp_v1_2;
    s32 *phi_s2;

    sp44 = (arg0 * 0xB8) + camera1;
    func_80046E60(&D_06006D20, &D_06006F20, 0x20, 0x20);
    phi_s2 = &D_8018C3F0;
    do {
        temp_s0 = *phi_s2;
        if (temp_s0 != -1) {
            temp_s1 = &D_80165C18 + (temp_s0 * 0xE0);
            if (temp_s1->unkA6 > 0) {
                func_8008A364(temp_s0, arg0, 0x2AAB, 0x1F4);
                if (func_8007223C(temp_s0, 0x40000) != 0) {
                    temp_s1->unkB4 = func_800418AC(temp_s1->unk4, temp_s1->unkC, sp44);
                    func_80043104(temp_s0);
                    temp_v1 = gDisplayListHead;
                    gDisplayListHead = temp_v1 + 8;
                    temp_v1->unk4 = &D_0D0069E0;
                    temp_v1->unk0 = 0x6000000;
                }
            }
        }
        temp_s2 = phi_s2 + 4;
        phi_s2 = temp_s2;
    } while (temp_s2 != &D_8018C5F0);
    temp_v1_2 = gDisplayListHead;
    gDisplayListHead = temp_v1_2 + 8;
    temp_v1_2->unk0 = 0xBB000000;
    temp_v1_2->unk4 = 0x10001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80052F20.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s16 func_800418AC(f32, f32, s32); // extern
? func_800480B4(void *, ? *, s32, s32, s32, s32, s32, s32, s32, s32); // extern
s32 func_8007223C(s32, ?); // extern
? func_8008A364(s32, s32, ?, ?); // extern
extern ? D_80165C18;
extern ? D_80183E80;
extern s32 D_80183EA0;
extern ? D_80183EEC;
extern ? D_80183F28;

void func_8005309C(s32 arg0) {
    s32 *temp_s3;
    s32 temp_fp;
    s32 temp_s1;
    void *temp_s0;
    void *temp_s0_2;
    s32 *phi_s3;
    s32 phi_s4;

    temp_fp = (arg0 * 0xB8) + camera1;
    phi_s3 = &D_80183EA0;
    phi_s4 = 0;
    do {
        temp_s1 = *phi_s3;
        temp_s0 = &D_80165C18 + (temp_s1 * 0xE0);
        if (temp_s0->unkA6 >= 2) {
            func_8008A364(temp_s1, arg0, 0x2AAB, 0x258);
            if (func_8007223C(temp_s1, 0x40000) != 0) {
                D_80183E80.unk0 = temp_s0->unkB2;
                D_80183E80.unk2 = func_800418AC(temp_s0->unk4, temp_s0->unkC, temp_fp);
                D_80183E80.unk4 = temp_s0->unkB6;
                if (func_8007223C(temp_s1, 0x10) != 0) {
                    func_800480B4(temp_s0 + 4, &D_80183E80, temp_s0->unk0, temp_s0->unk60, temp_s0->unk64, temp_s0->unk74, 0x40, 0x40, 0x40, 0x20);
                }
                temp_s0_2 = &D_80165C18 + (*(phi_s4 + &D_80183F28) * 0xE0);
                D_80183E80.unk0 = temp_s0_2->unkB2;
                D_80183E80.unk4 = temp_s0_2->unkB6;
                func_800480B4(temp_s0_2 + 4, &D_80183E80, temp_s0_2->unk0, temp_s0_2->unk60, temp_s0_2->unk64, temp_s0_2->unk74, 0x40, 0x40, 0x40, 0x20);
            }
        }
        temp_s3 = phi_s3 + 4;
        phi_s3 = temp_s3;
        phi_s4 += 4;
    } while (temp_s3 != &D_80183EEC);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8005309C.s")
#endif

void func_8005327C(s32 arg0) {
    func_8005309C();
    func_80052F20(arg0);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s16 func_800418AC(f32, f32, s32); // extern
? func_800480B4(void *, void *, s32, s32, s32, s32, s32, s32, s32, s32); // extern
? func_800485C4(void *, void *, s32, s16, s32, s32, s32, s32, s32, s32, s32); // extern
? func_8004A630(f32, void *, void *, ?); // extern
s32 func_8007223C(s32, ?, s32); // extern
s32 func_80072354(s32, ?); // extern
extern ? D_80165C18;
extern ? D_80183DB8;
extern ? D_8018C0B0;
extern void *D_8018CF14;

void func_800532A4(s32 arg0) {
    s32 sp44;
    f32 temp_f0;
    f32 temp_f2;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_s1;
    s32 temp_t7;
    u8 temp_v0;
    u8 temp_v0_2;
    u8 temp_v1;
    u8 temp_v1_2;
    void *temp_s0;
    void *temp_s1_2;
    void *temp_s1_3;
    void *temp_v0_3;
    f32 phi_f0;
    f32 phi_f2;
    void *phi_s1;

    temp_a2 = arg0;
    temp_a0 = *(&D_80183DB8 + (arg0 * 4));
    temp_t7 = temp_a2 * 0xB8;
    arg0 = temp_a2;
    sp44 = temp_a0;
    temp_s1 = temp_t7 + camera1;
    if (func_8007223C(temp_a0, 0x10, temp_a2) != 0) {
        temp_s0 = (sp44 * 0xE0) + &D_80165C18;
        temp_s0->unkB2 = 0;
        temp_s0->unkB4 = func_800418AC(temp_s0->unk4, temp_s0->unkC, temp_s1);
        temp_s0->unkB6 = 0x8000;
        temp_s1_2 = temp_s0 + 4;
        phi_s1 = temp_s1_2;
        if (func_80072354(sp44, 2) != 0) {
            temp_v1 = temp_s0->unkDA;
            temp_v0 = temp_s0->unkD9;
            temp_s1_3 = temp_s0 + 4;
            func_800480B4(temp_s1_3, temp_s0 + 0xB2, temp_s0->unk0, temp_s0->unk60, temp_s0->unk64, temp_s0->unk74, temp_v0, temp_v1, temp_v0, temp_v1 / 2);
            phi_s1 = temp_s1_3;
        } else {
            temp_v1_2 = temp_s0->unkDA;
            temp_v0_2 = temp_s0->unkD9;
            func_800485C4(temp_s1_2, temp_s0 + 0xB2, temp_s0->unk0, temp_s0->unkA0, temp_s0->unk60, temp_s0->unk64, temp_s0->unk74, temp_v0_2, temp_v1_2, temp_v0_2, temp_v1_2 / 2);
        }
        if (gScreenModeSelection == SCREEN_MODE_1P) {
            temp_v0_3 = D_8018CF14;
            temp_f0 = temp_s0->unk4 - temp_v0_3->unk0;
            temp_f2 = temp_s0->unkC - temp_v0_3->unk8;
            phi_f0 = temp_f0;
            phi_f2 = temp_f2;
            if (temp_f0 < 0.0f) {
                phi_f0 = -temp_f0;
            }
            if (temp_f2 < 0.0f) {
                phi_f2 = -temp_f2;
            }
            if ((phi_f0 + phi_f2) <= 200.0) {
                func_8004A630(0.0f, (arg0 << 6) + &D_8018C0B0, phi_s1, 0x3EB33333);
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800532A4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800419F8(); // extern
extern ? D_800E4638;
extern ? D_80165840;

void func_800534A4(s32 arg0) {
    func_800419F8();
    D_800E4638.unk10 = D_80165840.unk0;
    D_800E4638.unk11 = D_80165840.unk1;
    D_800E4638.unk12 = D_80165840.unk2;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800534A4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
extern ? D_80165CBC;
static ? D_800E4638;                                /* unable to generate initializer; const */
static ? D_800E4640;                                /* unable to generate initializer; const */
static ? D_800E4650;                                /* unable to generate initializer; const */
static ? D_800E4658;                                /* unable to generate initializer; const */
static ? D_800E4668;                                /* unable to generate initializer; const */
static ? D_800E4670;                                /* unable to generate initializer; const */
static ? D_800E4680;                                /* unable to generate initializer; const */
static ? D_800E4688;                                /* unable to generate initializer; const */
static ? D_800E4698;                                /* unable to generate initializer; const */
static ? D_800E46A0;                                /* unable to generate initializer; const */

void func_800534E8(s32 arg0) {
    Gfx *temp_v0;
    Gfx *temp_v0_10;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    u16 temp_t7;

    temp_t7 = *(&D_80165CBC + (arg0 * 0xE0));
    switch (temp_t7) {
    case 0:
        temp_v0 = gDisplayListHead;
        gDisplayListHead = temp_v0 + 8;
        temp_v0->words.w0 = 0x3860010;
        temp_v0->words.w1 = &D_800E4640;
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->words.w0 = 0x3880010;
        temp_v0_2->words.w1 = &D_800E4638;
        return;
    case 1:
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->words.w0 = 0x3860010;
        temp_v0_3->words.w1 = &D_800E4658;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->words.w0 = 0x3880010;
        temp_v0_4->words.w1 = &D_800E4650;
        return;
    case 2:
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->words.w0 = 0x3860010;
        temp_v0_5->words.w1 = &D_800E4670;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->words.w0 = 0x3880010;
        temp_v0_6->words.w1 = &D_800E4668;
        return;
    case 3:
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->words.w0 = 0x3860010;
        temp_v0_7->words.w1 = &D_800E4688;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->words.w0 = 0x3880010;
        temp_v0_8->words.w1 = &D_800E4680;
        return;
    case 4:
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        temp_v0_9->words.w0 = 0x3860010;
        temp_v0_9->words.w1 = &D_800E46A0;
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        temp_v0_10->words.w0 = 0x3880010;
        temp_v0_10->words.w1 = &D_800E4698;
        /* fallthrough */
    default:
        return;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800534E8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80042E00(void *, void *, s32); // extern
? func_8004544C(s32, ?, ?, ?); // extern
? func_8004A7AC(s32, ?); // extern
? func_800534E8(s32); // extern
s32 func_80072354(?); // extern
extern ? D_06006F38;
extern ? D_0D007828;
extern ? D_80165C18;


void func_800536C8(s32 arg0) {
    void *sp20;
    void *temp_s0;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    temp_s0 = (arg0 * 0xE0) + &D_80165C18;
    if ((temp_s0->unkA6 >= 2) && (func_80072354(0x40) != 0)) {
        func_8004A7AC(arg0, 0x3FE00000);
        func_80042E00(temp_s0 + 4, temp_s0 + 0xB2, temp_s0->unk0);
        func_800534E8(arg0);
        temp_v0 = gDisplayListHead;
        gDisplayListHead = temp_v0 + 8;
        temp_v0->unk0 = 0x6000000;
        temp_v0->unk4 = &D_0D007828;
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->unk4 = 0x8000;
        temp_v0_2->unk0 = 0xBA000E02;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->unk0 = 0xFD100000;
        temp_v0_3->unk4 = &D_06006F38;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->unk4 = 0;
        temp_v0_4->unk0 = 0xE8000000;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->unk4 = 0x7000000;
        temp_v0_5->unk0 = 0xF5000100;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->unk4 = 0;
        temp_v0_6->unk0 = 0xE6000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->unk4 = 0x73FC000;
        temp_v0_7->unk0 = 0xF0000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        sp20 = temp_v0_8;
        temp_v0_8->unk4 = 0;
        temp_v0_8->unk0 = 0xE7000000;
        func_8004544C(temp_s0->unk64, 0x10, 0x40, 4);
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        temp_v0_9->unk0 = 0x6000000;
        temp_v0_9->unk4 = temp_s0->unk70;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800536C8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s16 func_800418AC(f32, f32, s32); // extern
? func_80042E00(void *, void *, s32, s32 *); // extern
? func_800431B0(void *, ? *, s32, ? *); // extern
? func_80043D50(? *, ?, ?); // extern
? func_800444B0(s32, ?, ?, u32); // extern
? func_8004B138(?, ?, ?, s16); // extern
? func_8004B3C8(?); // extern
? func_800534A4(s32); // extern
? func_800536C8(s32); // extern
? func_800721E8(s32, ?); // extern
? func_800722CC(s32, ?); // extern
s32 func_8008A140(s32, s32, ?); // extern
extern ? D_06006738;
extern ? D_0D005AE0;
extern ? D_0D005C00;
extern ? D_0D006930;
extern ? D_0D0079C8;
extern ? D_0D007AE0;
extern ? D_800E4668;
extern ? D_800E4670;
extern s16 D_80165750;
extern ? D_80165C18;
extern ? D_80183E80;
extern s32 D_80183EA0;
extern s32 D_8018C3F0;
extern ? D_8018C5F0;
extern s32 D_8018C630;
extern ? D_8018C830;
extern ? D_8018CF68;
extern s32 D_8018D120;
extern s32 D_8018D490;


void func_80053870(s32 arg0) {
    s32 sp94;
    s32 sp84;
    s32 *sp44;
    s16 temp_v0_2;
    s32 *temp_s0;
    s32 *temp_s3;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s1_3;
    s32 temp_s1_4;
    s32 temp_s2;
    u32 temp_a3;
    u8 temp_v0;
    void *temp_s0_2;
    void *temp_s0_3;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    s32 *phi_s0;
    s32 phi_s2;
    s32 *phi_s0_2;
    u32 phi_v1;
    s32 *phi_a3;
    s32 *phi_s3;

    sp84 = (arg0 * 0xB8) + camera1;
    if (arg0 == 0) {
        phi_s0 = &D_80183EA0;
        phi_s2 = 0;
        if (D_80165750 > 0) {
            do {
                temp_s1 = *phi_s0;
                func_800721E8(temp_s1, 0x70000);
                func_800722CC(temp_s1, 0x110);
                temp_s2 = phi_s2 + 1;
                phi_s0 += 4;
                phi_s2 = temp_s2;
            } while (temp_s2 < D_80165750);
            sp94 = temp_s1;
        }
    }
    func_800534A4(sp94);
    phi_s0_2 = &D_80183EA0;
    if (D_80165750 > 0) {
        do {
            temp_s1_2 = *phi_s0_2;
            temp_v0 = (&D_80165C18 + (temp_s1_2 * 0xE0))->unkDF;
            if (gGamestate != CREDITS_SEQUENCE) {
                temp_v0_2 = *(&D_8018CF68 + (arg0 * 2));
                if ((temp_v0_2 >= (temp_v0 - 1)) && ((temp_v0 + 1) >= temp_v0_2) && (func_8008A140(temp_s1_2, sp84, 0x8000) != 0)) {
                    func_800536C8(temp_s1_2);
                }
                phi_v1 = (D_80165750 * 4) + &D_80183EA0;
            } else {
                func_800536C8(temp_s1_2);
                phi_v1 = (D_80165750 * 4) + &D_80183EA0;
            }
            temp_s0 = phi_s0_2 + 4;
            phi_s0_2 = temp_s0;
        } while (temp_s0 < phi_v1);
    }
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk0 = 0x6000000;
    temp_v0_3->unk4 = &D_0D0079C8;
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk4 = 0xFF33FFFF;
    temp_v0_4->unk0 = 0xFC121824;
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk4 = 0x80000040;
    temp_v0_5->unk0 = 0xBC000002;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->unk4 = &D_800E4670;
    temp_v0_6->unk0 = 0x3860010;
    temp_v0_7 = gDisplayListHead;
    gDisplayListHead = temp_v0_7 + 8;
    temp_v0_7->unk4 = &D_800E4668;
    temp_v0_7->unk0 = 0x3880010;
    temp_v0_8 = gDisplayListHead;
    gDisplayListHead = temp_v0_8 + 8;
    temp_v0_8->unk4 = 0x3000;
    temp_v0_8->unk0 = 0xB6000000;
    temp_v0_9 = gDisplayListHead;
    gDisplayListHead = temp_v0_9 + 8;
    temp_v0_9->unk0 = 0xB7000000;
    temp_v0_9->unk4 = 0x20204;
    func_80043D50(&D_06006738, 0x20, 0x20);
    phi_a3 = &D_8018C630;
    do {
        temp_s1_3 = *phi_a3;
        if (temp_s1_3 != -1) {
            temp_s0_2 = &D_80165C18 + (temp_s1_3 * 0xE0);
            if ((temp_s0_2->unkA6 > 0) && (temp_s0_2->unkD5 == 3) && (D_8018D120 < 0x2EF)) {
                sp44 = phi_a3;
                func_80042E00(temp_s0_2 + 4, temp_s0_2 + 0xB2, temp_s0_2->unk0, phi_a3);
                temp_v0_10 = gDisplayListHead;
                gDisplayListHead = temp_v0_10 + 8;
                temp_v0_10->unk0 = 0x4000C2F;
                temp_v0_10->unk4 = &D_0D005C00;
                temp_v0_11 = gDisplayListHead;
                gDisplayListHead = temp_v0_11 + 8;
                temp_v0_11->unk4 = &D_0D006930;
                temp_v0_11->unk0 = 0x6000000;
            }
        }
        temp_a3 = phi_a3 + 4;
        phi_a3 = temp_a3;
    } while (temp_a3 < &D_8018C830);
    temp_v0_12 = gDisplayListHead;
    gDisplayListHead = temp_v0_12 + 8;
    temp_v0_12->unk4 = 0x2000;
    temp_v0_12->unk0 = 0xB7000000;
    temp_v0_13 = gDisplayListHead;
    gDisplayListHead = temp_v0_13 + 8;
    temp_v0_13->unk4 = 0x20000;
    temp_v0_13->unk0 = 0xB6000000;
    temp_v0_14 = gDisplayListHead;
    gDisplayListHead = temp_v0_14 + 8;
    temp_v0_14->unk0 = 0xBB000000;
    temp_v0_14->unk4 = 0x10001;
    temp_v0_15 = gDisplayListHead;
    gDisplayListHead = temp_v0_15 + 8;
    temp_v0_15->unk0 = 0x6000000;
    temp_v0_15->unk4 = &D_0D007AE0;
    func_800444B0(D_8018D490, 0x20, 0x20, temp_a3);
    func_8004B3C8(0);
    D_80183E80.unk0 = 0;
    D_80183E80.unk4 = 0x8000;
    phi_s3 = &D_8018C3F0;
    do {
        temp_s1_4 = *phi_s3;
        if (temp_s1_4 != -1) {
            temp_s0_3 = &D_80165C18 + (temp_s1_4 * 0xE0);
            if ((temp_s0_3->unkA6 >= 2) && (temp_s0_3->unkD5 == 2) && (D_8018D120 < 0x2EF)) {
                func_8004B138(0xFF, 0xFF, 0xFF, temp_s0_3->unkA0);
                D_80183E80.unk2 = func_800418AC(temp_s0_3->unk4, temp_s0_3->unkC, sp84);
                func_800431B0(temp_s0_3 + 4, &D_80183E80, temp_s0_3->unk0, &D_0D005AE0);
            }
        }
        temp_s3 = phi_s3 + 4;
        phi_s3 = temp_s3;
    } while (temp_s3 != &D_8018C5F0);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80053870.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80042E00(void *, ? *, s32); // extern
? func_8004B1C8(s16, s16, s16, s16, s32, s32, s32); // extern
extern ? D_0D0060B0;
extern ? D_0D006940;
extern ? D_80165C18;
extern ? D_80183E80;
extern s32 D_8018D120;


void func_80053D74(s32 arg0, ? arg1, s32 arg2) {
    void *sp28;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;

    if (D_8018D120 < 0x2EF) {
        temp_v0 = (arg0 * 0xE0) + &D_80165C18;
        D_80183E80.unk4 = temp_v0->unk90 + 0x8000;
        sp28 = temp_v0;
        func_80042E00(temp_v0 + 4, &D_80183E80, temp_v0->unk0);
        func_8004B1C8(temp_v0->unk84, temp_v0->unk86, temp_v0->unk88, temp_v0->unk8A, temp_v0->unk8C, temp_v0->unk8E, temp_v0->unkA0);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->unk0 = 0x400103F;
        temp_v0_2->unk4 = (arg2 * 0x10) + &D_0D0060B0;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->unk0 = 0x6000000;
        temp_v0_3->unk4 = &D_0D006940;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80053D74.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800452A4(s32, ?, ?); // extern
? func_8004B614(?, ?, ?, ?, s32, s32, s32); // extern
? func_80053D74(s32, s32, ?); // extern
extern ? D_0D007E98;
extern ? D_800E52D0;
extern s16 D_80165738;
extern ? D_80165C18;
extern ? D_80183E80;
extern s32 D_8018C630;
extern s32 D_8018D4BC;
extern s32 D_8018D4C0;


void func_80053E6C(s32 arg0) {
    s16 temp_v0_8;
    s16 temp_v0_9;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_s1;
    s32 temp_s1_2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    s32 *phi_s0;
    s32 phi_s1;
    s32 phi_v0;
    s32 *phi_s0_2;
    s32 phi_s1_2;
    s32 phi_v0_2;

    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk0 = 0x6000000;
    temp_v0->unk4 = &D_0D007E98;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk0 = 0xFD100000;
    temp_v0_2->unk4 = &D_800E52D0;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk4 = 0;
    temp_v0_3->unk0 = 0xE8000000;
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk4 = 0x7000000;
    temp_v0_4->unk0 = 0xF5000100;
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk4 = 0;
    temp_v0_5->unk0 = 0xE6000000;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->unk4 = 0x73FC000;
    temp_v0_6->unk0 = 0xF0000000;
    temp_v0_7 = gDisplayListHead;
    gDisplayListHead = temp_v0_7 + 8;
    temp_v0_7->unk4 = 0;
    temp_v0_7->unk0 = 0xE7000000;
    func_8004B614(0, 0, 0, 0, 0, 0, 0);
    D_80183E80.unk0 = 0;
    D_80183E80.unk2 = 0x8000;
    func_800452A4(D_8018D4BC, 0x40, 0x20);
    temp_v0_8 = D_80165738;
    phi_s0 = &D_8018C630;
    phi_s1 = 0;
    phi_v0 = temp_v0_8;
    if (temp_v0_8 > 0) {
        do {
            temp_a0 = *phi_s0;
            if ((temp_a0 != -1) && ((&D_80165C18 + (temp_a0 * 0xE0))->unkA6 >= 2)) {
                func_80053D74(temp_a0, arg0, 0);
                phi_v0 = D_80165738;
            }
            temp_s1 = phi_s1 + 1;
            phi_s0 += 4;
            phi_s1 = temp_s1;
        } while (temp_s1 < phi_v0);
    }
    func_800452A4(D_8018D4C0, 0x40, 0x20);
    temp_v0_9 = D_80165738;
    phi_s0_2 = &D_8018C630;
    phi_s1_2 = 0;
    phi_v0_2 = temp_v0_9;
    if (temp_v0_9 > 0) {
        do {
            temp_a0_2 = *phi_s0_2;
            if ((temp_a0_2 != -1) && ((&D_80165C18 + (temp_a0_2 * 0xE0))->unkA6 >= 2)) {
                func_80053D74(temp_a0_2, arg0, 4);
                phi_v0_2 = D_80165738;
            }
            temp_s1_2 = phi_s1_2 + 1;
            phi_s0_2 += 4;
            phi_s1_2 = temp_s1_2;
        } while (temp_s1_2 < phi_v0_2);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80053E6C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s16 func_800418AC(f32, f32, s32); // extern
? func_800431B0(void *, ? *, s32, ? *); // extern
? func_8004B1C8(s16, s16, s16, ?, s32, s32, s32); // extern
extern ? D_0D005AE0;
extern ? D_80165C18;
extern ? D_80183E80;
extern s32 D_8018D120;

void func_800540CC(s32 arg0, s32 arg1) {
    s32 sp2C;
    void *sp28;
    s16 temp_a0;
    void *temp_v1;

    sp2C = (arg1 * 0xB8) + camera1;
    if (arg0 != -1) {
        temp_v1 = (arg0 * 0xE0) + &D_80165C18;
        if ((temp_v1->unkA6 >= 2) && (temp_v1->unkD5 == 1) && (D_8018D120 < 0x2EF)) {
            temp_a0 = temp_v1->unkA4;
            sp28 = temp_v1;
            func_8004B1C8(temp_a0, temp_a0, temp_a0, 0, 0, 0, temp_v1->unkA0);
            D_80183E80.unk2 = func_800418AC(temp_v1->unk4, temp_v1->unkC, sp2C);
            func_800431B0(temp_v1 + 4, &D_80183E80, temp_v1->unk0, &D_0D005AE0);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800540CC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_80041980(? *, s32, ?); // extern
? func_8004477C(? *, ?, ?, void **); // extern
? func_8004B72C(?, ?, ?, ?, s32, s32, s32); // extern
? func_800540CC(s32, s32); // extern
extern ? D_0D007AE0;
extern ? D_0D029458;
extern ? D_801635A4;
extern s32 D_801636A0;
extern ? D_801636B0;
extern s32 D_801637AC;
extern ? D_80183E80;
extern s32 D_8018C3F0;
extern ? D_8018C5F0;
extern s32 D_8018C630;
extern ? D_8018C830;


void func_800541BC(s32 arg0) {
    s32 sp3C;
    s32 *temp_s0;
    s32 *temp_s0_2;
    void *temp_v1;
    s32 *phi_s0;
    s32 *phi_s0_2;

    temp_v1 = gDisplayListHead;
    sp3C = (arg0 * 0xB8) + camera1;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x6000000;
    temp_v1->unk4 = &D_0D007AE0;
    func_8004477C(&D_0D029458, 0x20, 0x20, &gDisplayListHead);
    func_8004B72C(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF);
    D_80183E80.unk0 = 0;
    D_80183E80.unk4 = 0x8000;
    if ((D_801636A0 != 0) && (func_80041980(&D_801635A4, sp3C, 0x4000) != 0)) {
        phi_s0 = &D_8018C3F0;
        do {
            func_800540CC(*phi_s0, arg0);
            temp_s0 = phi_s0 + 4;
            phi_s0 = temp_s0;
        } while (temp_s0 != &D_8018C5F0);
    }
    if ((D_801637AC != 0) && (func_80041980(&D_801636B0, sp3C, 0x4000) != 0)) {
        phi_s0_2 = &D_8018C630;
        do {
            func_800540CC(*phi_s0_2, arg0);
            temp_s0_2 = phi_s0_2 + 4;
            phi_s0_2 = temp_s0_2;
        } while (temp_s0_2 != &D_8018C830);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800541BC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s16 func_800418AC(f32, f32, s32); // extern
? func_800431B0(void *, ? *, s32, ? *); // extern
? func_8004B1C8(s16, s16, s16, s16, s32, s32, s32); // extern
extern ? D_0D005AE0;
extern ? D_80165C18;
extern ? D_80183E80;
extern s32 D_8018D120;

void func_80054324(s32 arg0, s32 arg1) {
    s32 sp2C;
    void *sp28;
    s16 temp_a0;
    s16 temp_a3;
    void *temp_v1;

    sp2C = (arg1 * 0xB8) + camera1;
    if (arg0 != -1) {
        temp_v1 = (arg0 * 0xE0) + &D_80165C18;
        if ((temp_v1->unkA6 >= 2) && (temp_v1->unkD5 == 6) && (D_8018D120 < 0x2EF)) {
            temp_a0 = temp_v1->unkA4;
            temp_a3 = temp_v1->unkA2;
            sp28 = temp_v1;
            func_8004B1C8(temp_a0, temp_a0, temp_a0, temp_a3, temp_a3, temp_a3, temp_v1->unkA0);
            D_80183E80.unk2 = func_800418AC(temp_v1->unk4, temp_v1->unkC, sp2C);
            func_800431B0(temp_v1 + 4, &D_80183E80, temp_v1->unk0, &D_0D005AE0);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80054324.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_80041980(? *, s32, ?); // extern
? func_8004477C(? *, ?, ?, void **); // extern
? func_8004B72C(?, ?, ?, ?, s32, s32, s32); // extern
? func_80054324(s32, s32); // extern
extern ? D_0D007AE0;
extern ? D_0D029458;
extern ? D_801637C4;
extern s32 D_801637E8;
extern ? D_801637F0;
extern s32 D_80163814;
extern ? D_80183E80;
extern s32 D_8018C3F0;
extern ? D_8018C5F0;
extern s32 D_8018C630;
extern ? D_8018C830;


void func_80054414(s32 arg0) {
    s32 sp3C;
    s32 *temp_s0;
    s32 *temp_s0_2;
    void *temp_v1;
    s32 *phi_s0;
    s32 *phi_s0_2;

    temp_v1 = gDisplayListHead;
    sp3C = (arg0 * 0xB8) + camera1;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x6000000;
    temp_v1->unk4 = &D_0D007AE0;
    func_8004477C(&D_0D029458, 0x20, 0x20, &gDisplayListHead);
    func_8004B72C(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF);
    D_80183E80.unk0 = 0;
    D_80183E80.unk4 = 0x8000;
    if ((D_801637E8 != 0) && (func_80041980(&D_801637C4, sp3C, 0x4000) != 0)) {
        phi_s0 = &D_8018C3F0;
        do {
            func_80054324(*phi_s0, arg0);
            temp_s0 = phi_s0 + 4;
            phi_s0 = temp_s0;
        } while (temp_s0 != &D_8018C5F0);
    }
    if ((D_80163814 != 0) && (func_80041980(&D_801637F0, sp3C, 0x4000) != 0)) {
        phi_s0_2 = &D_8018C630;
        do {
            func_80054324(*phi_s0_2, arg0);
            temp_s0_2 = phi_s0_2 + 4;
            phi_s0_2 = temp_s0_2;
        } while (temp_s0_2 != &D_8018C830);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80054414.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s16 func_800418AC(f32, f32, s32); // extern
? func_800431B0(void *, ? *, s32, ? *); // extern
? func_8004B138(?, s16, ?, s16); // extern
? func_8004B72C(?, s16, ?, s16, s32, s32, s32); // extern
extern ? D_0D005AE0;
extern ? D_80165C18;
extern ? D_80183E80;
extern s32 D_8018D120;

void func_8005457C(s32 arg0, s32 arg1) {
    s32 sp34;
    void *temp_s0;

    sp34 = (arg1 * 0xB8) + camera1;
    if (D_8018D120 < 0x2EF) {
        temp_s0 = (arg0 * 0xE0) + &D_80165C18;
        if (temp_s0->unkD5 == 9) {
            func_8004B72C(0xFF, temp_s0->unkA4, 0, temp_s0->unkA2, 0, 0, temp_s0->unkA0);
        } else {
            func_8004B138(0xFF, temp_s0->unkA4, 0, temp_s0->unkA0);
        }
        D_80183E80.unk2 = func_800418AC(temp_s0->unk4, temp_s0->unkC, sp34);
        func_800431B0(temp_s0 + 4, &D_80183E80, temp_s0->unk0, &D_0D005AE0);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8005457C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004477C(void *, ?, ?, void **); // extern
? func_8004B414(?, ?, ?, ?); // extern
? func_8005457C(s32, s32); // extern
extern ? D_0D007AE0;
extern ? D_0D02BC58;
extern s32 D_80165598;
extern ? D_80165C18;
extern ? D_80183E80;
extern s32 D_8018C1B0;
extern ? D_8018C3B0;


void func_80054664(s32 arg0) {
    s32 *temp_s0;
    s32 temp_a0;
    void *temp_v1;
    s32 *phi_s0;

    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x6000000;
    temp_v1->unk4 = &D_0D007AE0;
    func_8004477C((D_80165598 << 0xA) + &D_0D02BC58, 0x20, 0x20, &gDisplayListHead);
    func_8004B414(0, 0, 0, 0xFF);
    D_80183E80.unk0 = 0;
    D_80183E80.unk4 = 0x8000;
    phi_s0 = &D_8018C1B0;
    do {
        temp_a0 = *phi_s0;
        if ((temp_a0 != -1) && ((&D_80165C18 + (temp_a0 * 0xE0))->unkA6 >= 3)) {
            func_8005457C(temp_a0, arg0);
        }
        temp_s0 = phi_s0 + 4;
        phi_s0 = temp_s0;
    } while (temp_s0 != &D_8018C3B0);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80054664.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s16 func_800418AC(f32, f32, s32); // extern
? func_800431B0(void *, ? *, s32, ? *); // extern
? func_8004B1C8(?, ?, ?, ?, s32, s32, s32); // extern
extern ? D_0D005AE0;
extern ? D_80165C18;
extern ? D_80183E80;
extern s32 D_8018D120;

void func_8005477C(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_t6;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s0_3;
    void *temp_s0_4;
    void *phi_s0;

    temp_t6 = arg1 & 0xFF;
    if (D_8018D120 < 0x2EF) {
        if (temp_t6 != 0) {
            if (temp_t6 != 1) {
                if (temp_t6 != 2) {
                    if (temp_t6 != 3) {
                        phi_s0 = (arg0 * 0xE0) + &D_80165C18;
                    } else {
                        temp_s0 = (arg0 * 0xE0) + &D_80165C18;
                        func_8004B1C8(0xFF, 0xFF, 0x1E, 0xFF, 0, 0, temp_s0->unkA0);
                        phi_s0 = temp_s0;
                    }
                } else {
                    temp_s0_2 = (arg0 * 0xE0) + &D_80165C18;
                    func_8004B1C8(0xFF, 0xE6, 0xFF, 0xFF, 0, 0x96, temp_s0_2->unkA0);
                    phi_s0 = temp_s0_2;
                }
            } else {
                temp_s0_3 = (arg0 * 0xE0) + &D_80165C18;
                func_8004B1C8(0xFF, 0xFF, 0x96, 0xFF, 0, 0, temp_s0_3->unkA0);
                phi_s0 = temp_s0_3;
            }
        } else {
            temp_s0_4 = (arg0 * 0xE0) + &D_80165C18;
            func_8004B1C8(0xE6, 0xFF, 0xFF, 0, 0, 0xFF, temp_s0_4->unkA0);
            phi_s0 = temp_s0_4;
        }
        D_80183E80.unk2 = func_800418AC(phi_s0->unk4, phi_s0->unkC, arg2);
        func_800431B0(phi_s0 + 4, &D_80183E80, phi_s0->unk0, &D_0D005AE0);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8005477C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004477C(void *, ?, ?, void **); // extern
? func_8004B72C(?, ?, ?, ?, s32, s32, s32); // extern
? func_8005477C(s32, u8, s32); // extern
s32 func_8007223C(s32, ?); // extern
? func_8008A364(s32, s32, ?, ?); // extern
extern ? D_0D007AE0;
extern ? D_0D02BC58;
extern s32 D_80165598;
extern ? D_80165C18;
extern ? D_80183E80;
extern s32 D_8018C870;
extern ? D_8018C970;


void func_80054938(s32 arg0) {
    s32 sp54;
    s32 *temp_s2;
    s32 temp_s0;
    void *temp_s1;
    void *temp_v1;
    s32 *phi_s2;

    temp_v1 = gDisplayListHead;
    sp54 = (arg0 * 0xB8) + camera1;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x6000000;
    temp_v1->unk4 = &D_0D007AE0;
    func_8004477C((D_80165598 << 0xA) + &D_0D02BC58, 0x20, 0x20, &gDisplayListHead);
    func_8004B72C(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF);
    D_80183E80.unk0 = 0;
    D_80183E80.unk4 = 0x8000;
    phi_s2 = &D_8018C870;
    do {
        temp_s0 = *phi_s2;
        if (temp_s0 != -1) {
            temp_s1 = &D_80165C18 + (temp_s0 * 0xE0);
            if (temp_s1->unkA6 >= 2) {
                if (temp_s1->unkD8 == 3) {
                    func_8008A364(temp_s0, arg0, 0x4000, 0x514);
                } else {
                    func_8008A364(temp_s0, arg0, 0x4000, 0x1F4);
                }
                if (func_8007223C(temp_s0, 0x40000) != 0) {
                    func_8005477C(temp_s0, temp_s1->unkD8, sp54);
                }
            }
        }
        temp_s2 = phi_s2 + 4;
        phi_s2 = temp_s2;
    } while (temp_s2 != &D_8018C970);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80054938.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s16 func_800418AC(f32, f32, s32); // extern
s16 func_800418E8(f32, f32, s32); // extern
? func_80042E00(void *, ? *, s32); // extern
? func_8004B138(s16, s16, s16, s16); // extern
extern ? D_0D005AE0;
extern ? D_0D006940;
extern ? D_80165C18;
extern ? D_80183E80;


void func_80054AFC(s32 arg0, s32 arg1) {
    void *temp_s0;
    void *temp_v0;
    void *temp_v0_2;

    temp_s0 = (arg0 * 0xE0) + &D_80165C18;
    D_80183E80.unk0 = func_800418E8(temp_s0->unkC, temp_s0->unk8, arg1);
    D_80183E80.unk2 = func_800418AC(temp_s0->unk4, temp_s0->unkC, arg1);
    D_80183E80.unk4 = temp_s0->unkB6;
    func_8004B138(temp_s0->unk84, temp_s0->unk86, temp_s0->unk88, temp_s0->unkA0);
    func_80042E00(temp_s0 + 4, &D_80183E80, temp_s0->unk0);
    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk0 = 0x400103F;
    temp_v0->unk4 = &D_0D005AE0;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk0 = 0x6000000;
    temp_v0_2->unk4 = &D_0D006940;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80054AFC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800444B0(s32, ?, ?); // extern
? func_8004B35C(?, ?, ?, ?); // extern
? func_80054AFC(s32, s32); // extern
extern ? D_0D007AE0;
extern ? D_80165C18;
extern s16 D_80183E80;
extern s32 D_8018C630;
extern ? D_8018C830;
extern s32 D_8018D488;


void func_80054BE8(s32 arg0) {
    s32 *temp_s0;
    s32 temp_a0;
    s32 temp_s5;
    void *temp_v1;
    s32 *phi_s0;

    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x6000000;
    temp_v1->unk4 = &D_0D007AE0;
    temp_s5 = (arg0 * 0xB8) + camera1;
    func_800444B0(D_8018D488, 0x20, 0x20);
    func_8004B35C(0xFF, 0xFF, 0, 0xFF);
    D_80183E80 = 0;
    phi_s0 = &D_8018C630;
    do {
        temp_a0 = *phi_s0;
        if ((temp_a0 != -1) && ((&D_80165C18 + (temp_a0 * 0xE0))->unkA6 >= 2)) {
            func_80054AFC(temp_a0, temp_s5);
        }
        temp_s0 = phi_s0 + 4;
        phi_s0 = temp_s0;
    } while (temp_s0 != &D_8018C830);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80054BE8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s16 func_800418AC(f32, f32, ? *, s32); // extern
? func_80048130(void *, ? *, s32, s32, s32, ? *, s32, s32, s32, s32, s32); // extern
s32 func_8007223C(s32, ?); // extern
? func_8008A364(?, ?); // extern
extern ? D_0D0062B0;
extern ? D_80165C18;
extern ? D_80183E80;

void func_80054D00(s32 arg0, s32 arg1) {
    s32 sp3C;
    void *sp38;
    void *temp_v1;

    temp_v1 = (arg0 * 0xE0) + &D_80165C18;
    sp3C = (arg1 * 0xB8) + camera1;
    if (temp_v1->unkA6 >= 3) {
        sp38 = temp_v1;
        func_8008A364(0x2AAB, 0x12C);
        if (func_8007223C(arg0, 0x40000) != 0) {
            sp38 = temp_v1;
            D_80183E80.unk0 = temp_v1->unkB2;
            D_80183E80.unk2 = func_800418AC(temp_v1->unk4, temp_v1->unkC, &D_80183E80, sp3C);
            D_80183E80.unk4 = temp_v1->unkB6;
            func_80048130(temp_v1 + 4, &D_80183E80, temp_v1->unk0, temp_v1->unk60, temp_v1->unk64, &D_0D0062B0, 0x20, 0x40, 0x20, 0x40, 5);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80054D00.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004A9B8(f32, ? *); // extern
s32 func_8007223C(?); // extern
extern f64 D_800EE080;
extern ? D_80165C18;
extern ? D_80183E50;
extern ? D_80183E70;

void func_80054E10(s32 arg0) {
    void *sp1C;
    void *temp_v1;

    temp_v1 = (arg0 * 0xE0) + &D_80165C18;
    if (temp_v1->unkA6 > 0) {
        sp1C = temp_v1;
        if (func_8007223C(0x800000) != 0) {
            D_80183E50.unk0 = temp_v1->unk4;
            D_80183E50.unk4 = temp_v1->unk44 + D_800EE080;
            D_80183E50.unk8 = temp_v1->unkC;
            D_80183E70.unk0 = temp_v1->unk38;
            D_80183E70.unk4 = temp_v1->unk3C;
            D_80183E70.unk8 = temp_v1->unk40;
            func_8004A9B8(temp_v1->unk0, &D_80183E70);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80054E10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80054E10(s32); // extern
extern s32 D_8018C1B0;
extern ? D_8018C22C;

void func_80054EB8(s32 arg0) {
    s32 *temp_s0;
    s32 *phi_s0;

    phi_s0 = &D_8018C1B0;
    do {
        func_80054E10(*phi_s0);
        temp_s0 = phi_s0 + 4;
        phi_s0 = temp_s0;
    } while (temp_s0 != &D_8018C22C);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80054EB8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s16 func_800418AC(f32, f32, s32); // extern
? func_80043104(s32); // extern
? func_80043D50(? *, ?, ?); // extern
s32 func_8007223C(s32, ?); // extern
? func_8008A364(s32, s32, ?, ?); // extern
extern ? D_06013670;
extern ? D_0D006980;
extern ? D_0D0079C8;
extern ? D_80165C18;
extern s32 D_8018C3F0;
extern ? D_8018C5F0;
extern s32 D_8018D120;


void func_80054F04(s32 arg0) {
    s32 sp44;
    s32 *temp_s2;
    s32 temp_s0;
    void *temp_s1;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    s32 *phi_s2;

    temp_v1 = gDisplayListHead;
    sp44 = (arg0 * 0xB8) + camera1;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x6000000;
    temp_v1->unk4 = &D_0D0079C8;
    func_80043D50(&D_06013670, 0x10, 0x10);
    phi_s2 = &D_8018C3F0;
    do {
        temp_s0 = *phi_s2;
        temp_s1 = &D_80165C18 + (temp_s0 * 0xE0);
        if (temp_s1->unkA6 > 0) {
            func_8008A364(temp_s0, arg0, 0x2AAB, 0xC8);
            if ((func_8007223C(temp_s0, 0x40000) != 0) && (D_8018D120 < 0x2EF)) {
                temp_s1->unkB4 = func_800418AC(temp_s1->unk4, temp_s1->unkC, sp44);
                func_80043104(temp_s0);
                temp_v1_2 = gDisplayListHead;
                gDisplayListHead = temp_v1_2 + 8;
                temp_v1_2->unk4 = &D_0D006980;
                temp_v1_2->unk0 = 0x6000000;
            }
        }
        temp_s2 = phi_s2 + 4;
        phi_s2 = temp_s2;
    } while (temp_s2 != &D_8018C5F0);
    temp_v1_3 = gDisplayListHead;
    gDisplayListHead = temp_v1_3 + 8;
    temp_v1_3->unk0 = 0xBB000000;
    temp_v1_3->unk4 = 0x10001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80054F04.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80054D00(s32, s32); // extern
? func_80054EB8(s32); // extern
? func_80054F04(s32); // extern
extern s32 D_80183EA0;
extern ? D_80183EC0;
extern s32 D_80183F28;
extern ? D_80183F54;
extern s32 D_8018BFA8;
extern ? D_8018BFD8;

void func_800550A4(s32 arg0) {
    s32 *temp_s0;
    s32 *temp_s0_2;
    s32 *temp_s0_3;
    s32 *phi_s0;
    s32 *phi_s0_2;
    s32 *phi_s0_3;

    phi_s0 = &D_80183EA0;
    do {
        func_80054D00(*phi_s0, arg0);
        temp_s0 = phi_s0 + 4;
        phi_s0 = temp_s0;
    } while (temp_s0 < &D_80183EC0);
    phi_s0_2 = &D_80183F28;
    do {
        func_80054D00(*phi_s0_2, arg0);
        temp_s0_2 = phi_s0_2 + 4;
        phi_s0_2 = temp_s0_2;
    } while (temp_s0_2 < &D_80183F54);
    phi_s0_3 = &D_8018BFA8;
    do {
        func_80054D00(*phi_s0_3, arg0);
        temp_s0_3 = phi_s0_3 + 4;
        phi_s0_3 = temp_s0_3;
    } while (temp_s0_3 != &D_8018BFD8);
    func_80054EB8(arg0);
    func_80054F04(arg0);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800550A4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s16 func_80004DFC(s32, s32, ?, s16); // extern
? func_80042E00(void *, void *, s32, void *); // extern
extern ? D_0D0077A0;
extern u16 D_800DC5FC;
extern ? D_80165C18;


void func_80055164(s32 arg0) {
    void *sp18;
    void *temp_a3;
    void *temp_v1;

    temp_v1 = (arg0 * 0xE0) + &D_80165C18;
    if (temp_v1->unkA6 >= 2) {
        temp_a3 = gDisplayListHead;
        gDisplayListHead = temp_a3 + 8;
        temp_a3->unk0 = 0x6000000;
        temp_a3->unk4 = &D_0D0077A0;
        sp18 = temp_v1;
        func_80042E00(temp_v1 + 4, temp_v1 + 0xBE, temp_v1->unk0, temp_a3);
        if (D_800DC5FC == 0) {
            sp18 = temp_v1;
            temp_v1->unkA2 = func_80004DFC(temp_v1->unk70, temp_v1->unk74, 0, temp_v1->unkA2);
            return;
        }
        func_80004DFC(temp_v1->unk70, temp_v1->unk74, 0, temp_v1->unkA2);
        // Duplicate return node #4. Try simplifying control flow for better match
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80055164.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80055164(s32); // extern
s32 func_8007223C(s32, ?); // extern
? func_8008A364(s32, s32, ?, ?); // extern
extern s32 D_80183EA0;
extern ? D_80183EB0;

void func_80055228(s32 arg0) {
    s32 *temp_s1;
    s32 temp_s0;
    s32 *phi_s1;

    phi_s1 = &D_80183EA0;
    do {
        temp_s0 = *phi_s1;
        func_8008A364(temp_s0, arg0, 0x4000, 0x5DC);
        if (func_8007223C(temp_s0, 0x40000) != 0) {
            func_80055164(temp_s0);
        }
        temp_s1 = phi_s1 + 4;
        phi_s1 = temp_s1;
    } while (temp_s1 != &D_80183EB0);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80055228.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s16 func_80004DFC(s32, s32, ?, s16); // extern
? func_80042E00(void *, void *, s32); // extern
extern ? D_0D0077D0;
extern u16 D_800DC5FC;
extern ? D_80165C18;


void func_800552BC(s32 arg0) {
    void *sp18;
    void *temp_a0;
    void *temp_v1;

    temp_v1 = (arg0 * 0xE0) + &D_80165C18;
    if (temp_v1->unkA6 >= 2) {
        sp18 = temp_v1;
        func_80042E00(temp_v1 + 4, temp_v1 + 0xBE, temp_v1->unk0);
        temp_a0 = gDisplayListHead;
        gDisplayListHead = temp_a0 + 8;
        temp_a0->unk0 = 0x6000000;
        temp_a0->unk4 = &D_0D0077D0;
        if (D_800DC5FC == 0) {
            sp18 = temp_v1;
            temp_v1->unkA2 = func_80004DFC(temp_v1->unk70, temp_v1->unk74, 0, temp_v1->unkA2);
            return;
        }
        func_80004DFC(temp_v1->unk70, temp_v1->unk74, 0, temp_v1->unkA2);
        // Duplicate return node #4. Try simplifying control flow for better match
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800552BC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800552BC(s32); // extern
s32 func_8007223C(s32, ?); // extern
? func_800722A4(s32, ?); // extern
s32 func_8008A364(s32, s32, ?, ?); // extern
extern s8 D_80165908;
extern s32 D_80183F28;
extern ? D_80183F50;

void func_80055380(s32 arg0) {
    s32 *temp_s1;
    s32 temp_s0;
    s32 *phi_s1;

    phi_s1 = &D_80183F28;
    do {
        temp_s0 = *phi_s1;
        if (func_8008A364(temp_s0, arg0, 0x5555, 0x5DC) < 0x9C401) {
            D_80165908 = 1;
            func_800722A4(temp_s0, 2);
        }
        if (func_8007223C(temp_s0, 0x40000) != 0) {
            func_800552BC(temp_s0);
        }
        temp_s1 = phi_s1 + 4;
        phi_s1 = temp_s1;
    } while (temp_s1 != &D_80183F50);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80055380.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s16 func_800418AC(f32, f32, s32); // extern
? func_800480B4(void *, void *, s32, s32, s32, ? *, s32, s32, s32, s32); // extern
? func_8004A6EC(?); // extern
extern ? D_0D0060B0;
extern ? D_80165C18;

void func_80055458(s32 arg0, s32 arg1) {
    s32 sp34;
    void *sp30;
    void *temp_v1;

    temp_v1 = (arg0 * 0xE0) + &D_80165C18;
    if (temp_v1->unkA6 >= 2) {
        sp34 = (arg1 * 0xB8) + camera1;
        sp30 = temp_v1;
        func_8004A6EC(0x3F000000);
        temp_v1->unkB4 = func_800418AC(temp_v1->unk4, temp_v1->unkC, sp34);
        func_800480B4(temp_v1 + 4, temp_v1 + 0xB2, temp_v1->unk0, temp_v1->unk60, temp_v1->unk64, &D_0D0060B0, 0x40, 0x40, 0x40, 0x20);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80055458.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80055458(s32, s32); // extern
s32 func_8007223C(s32, ?); // extern
? func_8008A364(s32, s32, ?, ?); // extern
extern s32 D_80183EA0;
extern ? D_80183EC8;

void func_80055528(s32 arg0) {
    s32 *temp_s1;
    s32 temp_s0;
    s32 *phi_s1;

    phi_s1 = &D_80183EA0;
    do {
        temp_s0 = *phi_s1;
        func_8008A364(temp_s0, arg0, 0x2AAB, 0x320);
        if (func_8007223C(temp_s0, 0x40000) != 0) {
            func_80055458(temp_s0, arg0);
        }
        temp_s1 = phi_s1 + 4;
        phi_s1 = temp_s1;
    } while (temp_s1 != &D_80183EC8);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80055528.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s16 func_800418AC(f32, f32, s32); // extern
? func_800480B4(void *, void *, s32, s32, s32, s32, s32, s32, s32, s32); // extern
? func_8004A870(?); // extern
extern ? D_80165C18;

void func_800555BC(s32 arg0, s32 arg1) {
    s32 sp34;
    void *sp30;
    void *temp_v1;

    temp_v1 = (arg0 * 0xE0) + &D_80165C18;
    if (temp_v1->unkA6 >= 2) {
        sp34 = (arg1 * 0xB8) + camera1;
        sp30 = temp_v1;
        func_8004A870(0x3F333333);
        temp_v1->unkB4 = func_800418AC(temp_v1->unk4, temp_v1->unkC, sp34);
        func_800480B4(temp_v1 + 4, temp_v1 + 0xB2, temp_v1->unk0, temp_v1->unk60, temp_v1->unk64, temp_v1->unk74, 0x40, 0x40, 0x40, 0x20);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800555BC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800555BC(s32, s32); // extern
? func_800721C0(s32, ?); // extern
? func_800721E8(s32, ?); // extern
s32 func_8007223C(s32, ?); // extern
u32 func_8008A364(s32, s32, ?, ?); // extern
extern s32 D_80183F28;
extern ? D_80183F64;

void func_8005568C(s32 arg0) {
    s32 *temp_s2;
    s32 temp_s0;
    u32 temp_s1;
    s32 *phi_s2;

    phi_s2 = &D_80183F28;
    do {
        temp_s0 = *phi_s2;
        temp_s1 = func_8008A364(temp_s0, arg0, 0x4000, 0x3E8);
        if (func_8007223C(temp_s0, 0x40000) != 0) {
            func_800721C0(temp_s0, 0x200000);
            if (temp_s1 < 0x2711) {
                func_800721C0(temp_s0, 0x20);
            } else {
                func_800721E8(temp_s0, 0x20);
            }
            if (temp_s1 < 0x57E41) {
                func_800721C0(temp_s0, 0x400000);
            }
            if (temp_s1 < 0x52211) {
                func_800555BC(temp_s0, arg0);
            }
        }
        temp_s2 = phi_s2 + 4;
        phi_s2 = temp_s2;
    } while (temp_s2 != &D_80183F64);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8005568C.s")
#endif

UNUSED void func_800557AC() {

}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80004DFC(s32, s32, u8, s8); // extern
? func_80042E00(void *, void *, s32); // extern
? func_80042F70(f32 *, void *, s32); // extern
? func_8004A7AC(s32, ?); // extern
s32 func_8007223C(?); // extern
s32 func_80072320(s32, ?); // extern
extern ? D_0D0077D0;
extern ? D_80165C18;


void func_800557B4(s32 arg0, u32 arg1, u32 arg2) {
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    ? *sp20;
    f32 *temp_a0;
    void *temp_s0;
    void *temp_v1;
    void *temp_v1_2;

    temp_s0 = (arg0 * 0xE0) + &D_80165C18;
    if (temp_s0->unkA6 >= 2) {
        if (func_8007223C(0x20) != 0) {
            if (func_80072320(arg0, 4) != 0) {
                temp_a0 = &sp34;
                if (arg2 >= arg1) {
                    sp34 = temp_s0->unk4;
                    sp3C = temp_s0->unkC;
                    sp38 = temp_s0->unk8 - 1.0;
                    func_80042F70(temp_a0, temp_s0 + 0xB2, temp_s0->unk0);
                    temp_v1 = gDisplayListHead;
                    gDisplayListHead = temp_v1 + 8;
                    temp_v1->unk0 = 0x6000000;
                    temp_v1->unk4 = &D_0D0077D0;
                    func_80004DFC(temp_s0->unk70, temp_s0->unk74, temp_s0->unkD8, temp_s0->unkD2);
                }
            } else if (arg1 < 0x15F91) {
                func_8004A7AC(arg0, 0x3FC00000);
            }
        }
        sp20 = &D_0D0077D0;
        func_80042E00(temp_s0 + 4, temp_s0 + 0xB2, temp_s0->unk0);
        temp_v1_2 = gDisplayListHead;
        gDisplayListHead = temp_v1_2 + 8;
        temp_v1_2->unk0 = 0x6000000;
        temp_v1_2->unk4 = sp20;
        func_80004DFC(temp_s0->unk70, temp_s0->unk74, temp_s0->unkD8, temp_s0->unkD2);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800557B4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800557B4(s32, s32, ?); // extern
s32 func_8007223C(s32, ?); // extern
s32 func_80072320(s32, ?); // extern
s32 func_8008A364(s32, s32, s32, ?); // extern
extern ? D_80165C18;
extern s32 D_80183EA0;
extern ? D_80183EDC;

void func_8005592C(s32 arg0) {
    s32 *temp_s2;
    s32 temp_s0;
    s32 temp_s1;
    s32 temp_v0;
    s32 *phi_s2;
    s32 phi_s1;
    ? phi_a3;
    ? phi_s3;

    temp_v0 = gPlayerCountSelection1;
    if (temp_v0 == 1) {
        phi_s3 = 0x3D090;
    } else if (temp_v0 == 2) {
        phi_s3 = 0x27100;
    } else {
        phi_s3 = 0x15F90;
    }
    phi_s2 = &D_80183EA0;
    do {
        temp_s0 = *phi_s2;
        if ((&D_80165C18 + (temp_s0 * 0xE0))->unkA6 >= 2) {
            if (gPlayerCountSelection1 == 1) {
                if (phi_s2 == &D_80183EA0) {
                    phi_s1 = 0x4000;
                    phi_a3 = 0x5DC;
                } else if (func_80072320(temp_s0, 8) != 0) {
                    phi_s1 = 0x4000;
                    phi_a3 = 0x320;
                } else {
                    phi_s1 = 0x4000;
                    phi_a3 = 0x3E8;
                }
            } else {
                phi_a3 = 0x258;
                if (func_80072320(temp_s0, 8) != 0) {
                    phi_s1 = 0x4000;
                    phi_a3 = 0x1F4;
                } else {
                    phi_s1 = 0x5555;
                }
            }
            temp_s1 = func_8008A364(temp_s0, arg0, phi_s1 & 0xFFFF, phi_a3);
            if (func_8007223C(temp_s0, 0x40000) != 0) {
                func_800557B4(temp_s0, temp_s1, phi_s3);
            }
        }
        temp_s2 = phi_s2 + 4;
        phi_s2 = temp_s2;
    } while (temp_s2 != &D_80183EDC);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8005592C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80004DFC(s32, s32, ?, s8); // extern
s16 func_800418AC(f32, f32, ? *, ? *, s32); // extern
? func_80042E00(void *, void *, s32); // extern
? func_800468E0(? *, ? *, ?, ? *, ? *, s32, s32, s32, s32, s32); // extern
s32 func_8007223C(?, s32); // extern
extern ? D_06012028;
extern ? D_0D0062B0;
extern ? D_0D0077D0;
extern ? D_80165C18;
extern ? D_80183E40;
extern ? D_80183E80;


void func_80055AB8(s32 arg0, s32 arg1) {
    s32 sp3C;
    void *sp34;
    f32 temp_f12;
    f32 temp_f14;
    s32 temp_a2;
    void *temp_t0;
    void *temp_v1;

    temp_v1 = (arg0 * 0xE0) + &D_80165C18;
    temp_a2 = (arg1 * 0xB8) + camera1;
    if (temp_v1->unkA6 >= 2) {
        sp34 = temp_v1;
        sp3C = temp_a2;
        if (func_8007223C(0x100000, temp_a2) != 0) {
            temp_f12 = temp_v1->unk4;
            temp_f14 = temp_v1->unkC;
            D_80183E80.unk0 = 0;
            D_80183E40.unk4 = temp_v1->unk8 + 16.0;
            D_80183E40.unk0 = temp_f12;
            D_80183E40.unk8 = temp_f14;
            D_80183E80.unk2 = func_800418AC(temp_f12, temp_f14, &D_80183E40, &D_80183E80, temp_a2);
            D_80183E80.unk4 = 0x8000;
            func_800468E0(&D_80183E40, &D_80183E80, 0x3F0A3D71, &D_06012028, &D_0D0062B0, 0x20, 0x40, 0x20, 0x40, 5);
            return;
        }
        sp34 = temp_v1;
        func_80042E00(temp_v1 + 4, temp_v1 + 0xBE, temp_v1->unk0);
        temp_t0 = gDisplayListHead;
        gDisplayListHead = temp_t0 + 8;
        temp_t0->unk0 = 0x6000000;
        temp_t0->unk4 = &D_0D0077D0;
        func_80004DFC(temp_v1->unk70, temp_v1->unk74, 0, temp_v1->unkD2);
        // Duplicate return node #4. Try simplifying control flow for better match
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80055AB8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80055AB8(s32, s32); // extern
s32 func_8007223C(s32, ?); // extern
? func_8008A1D0(s32, s32, ?, ?); // extern
extern s32 D_80183F28;
extern ? D_80183F34;

void func_80055C38(s32 arg0) {
    s32 *temp_s1;
    s32 temp_s0;
    s32 *phi_s1;

    phi_s1 = &D_80183F28;
    do {
        temp_s0 = *phi_s1;
        func_8008A1D0(temp_s0, arg0, 0x5DC, 0x9C4);
        if (func_8007223C(temp_s0, 0x40000) != 0) {
            func_80055AB8(temp_s0, arg0);
        }
        temp_s1 = phi_s1 + 4;
        phi_s1 = temp_s1;
    } while (temp_s1 != &D_80183F34);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80055C38.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_800418AC(f32, f32, void *, ? *, s32); // extern
? func_80043328(void *, ? *, s32, ? *); // extern
? func_8004A6EC(s32, f32); // extern
s32 func_80072270(s32, ?); // extern
? func_8008A454(?); // extern
extern ? D_0600F650;
extern ? D_0600F960;
extern ? D_0600FA20;
extern ? D_0600FBE0;
extern ? D_80165C18;
extern ? D_80183E80;


void func_80055CCC(s32 arg0, s32 arg1) {
    s32 sp24;
    void *temp_a0;
    void *temp_s0;
    void *temp_v1;
    void *temp_v1_2;

    temp_s0 = (arg0 * 0xE0) + &D_80165C18;
    sp24 = (arg1 * 0xB8) + camera1;
    if (temp_s0->unkA6 >= 2) {
        func_8008A454(0x12C);
        func_8004A6EC(arg0, (20.0 / (temp_s0->unk8 - temp_s0->unk44)) + 0.5);
        temp_a0 = temp_s0 + 4;
        if (func_80072270(arg0, 0x100000) != 0) {
            func_80043328(temp_a0, temp_s0 + 0xBE, temp_s0->unk0, &D_0600F960);
            temp_v1 = gDisplayListHead;
            gDisplayListHead = temp_v1 + 8;
            temp_v1->unk0 = 0x6000000;
            temp_v1->unk4 = &D_0600F650;
            return;
        }
        D_80183E80.unk0 = temp_s0->unkBE;
        D_80183E80.unk2 = func_800418AC(temp_s0->unk4, temp_s0->unkC, temp_a0, &D_80183E80, sp24) + 0x8000;
        D_80183E80.unk4 = temp_s0->unkC2;
        func_80043328(temp_s0 + 4, &D_80183E80, temp_s0->unk0, &D_0600FBE0);
        temp_v1_2 = gDisplayListHead;
        gDisplayListHead = temp_v1_2 + 8;
        temp_v1_2->unk0 = 0x6000000;
        temp_v1_2->unk4 = &D_0600FA20;
        if (gPlayerCountSelection1 == 1) {
            temp_s0->unkC0 = 0;
        }
        // Duplicate return node #5. Try simplifying control flow for better match
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80055CCC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80055CCC(s32, s32); // extern
? func_800721E8(s32, ?); // extern
s32 func_8007223C(s32, ?); // extern
? func_8008A1D0(s32, s32, ?, ?); // extern
extern s32 D_80183EA0;

void func_80055E68(s32 arg0) {
    s32 temp_s0;

    temp_s0 = D_80183EA0;
    if (gGamestate != CREDITS_SEQUENCE) {
        func_8008A1D0(temp_s0, arg0, 0x5DC, 0xBB8);
        if (func_8007223C(temp_s0, 0x40000) != 0) {
            func_80055CCC(temp_s0, arg0);
            return;
        }
        // Duplicate return node #4. Try simplifying control flow for better match
        return;
    }
    func_800721E8(temp_s0, 0x100000);
    func_80055CCC(temp_s0, arg0);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80055E68.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80043220(void *, void *, s32, s32); // extern
extern ? D_80165C18;

void func_80055EF4(s32 arg0, ? arg1) {
    void *temp_v0;

    temp_v0 = (arg0 * 0xE0) + &D_80165C18;
    if (temp_v0->unkA6 >= 2) {
        func_80043220(temp_v0 + 4, temp_v0 + 0xBE, temp_v0->unk0, temp_v0->unk70);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80055EF4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80055EF4(s32, s32); // extern
extern s32 D_80183EA0;
extern ? D_80183EAC;

void func_80055F48(s32 arg0) {
    s32 *temp_s0;
    s32 *phi_s0;

    phi_s0 = &D_80183EA0;
    do {
        func_80055EF4(*phi_s0, arg0);
        temp_s0 = phi_s0 + 4;
        phi_s0 = temp_s0;
    } while (temp_s0 != &D_80183EAC);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80055F48.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 5bd751fca3befef73d6a2e20d84a88cc918a77fe
? func_80022180(Mtx *, ? *);                        /* extern */
? func_800425D0(? *, void *, void *, s32);          /* extern */
? func_802B4FF8(? *, ?);                            /* extern */
? mtxf_identity(? *);                               /* extern */
extern Gfx D_0D0077A0[];
extern ? D_80165C18;
extern s32 D_8018D120;

void func_80055FA0(s32 arg0, s32 arg1) {
    ? sp80;
    ? sp40;
    void *sp20;
    void *temp_t0;

    temp_t0 = (arg0 * 0xE0) + &D_80165C18;
    if ((s32) temp_t0->unkA6 >= 2) {
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[1]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[7]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        sp20 = temp_t0;
        func_800425D0(&sp80, temp_t0 + 4, temp_t0 + 0xBE, temp_t0->unk0);
        func_80022180(&gGfxPool->mtxPool[D_8018D120 + 0xB], &sp80);
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[D_8018D120 + 0xB]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
        D_8018D120++;
        gSPDisplayList(gDisplayListHead++, D_0D0077A0);
        gSPDisplayList(gDisplayListHead++, sp20->unk70);
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[7]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
        mtxf_identity(&sp40);
        func_802B4FF8(&sp40, 0);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80055FA0.s")
#endif

extern s32 D_80183EAC;

void func_80056160(s32 arg0) {
    func_80055FA0(D_80183EAC, arg0);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800480B4(void *, void *, s32, s32, s32, ? *, s32, s32, s32, s32); // extern
s32 func_80072270(s32, ?); // extern
s16 func_800872D8(s32, s32); // extern
s32 func_8008A140(s32, s32, ?); // extern
extern ? D_0D0060B0;
extern ? D_80165C18;
extern s32 D_80183EA0;
extern ? D_80183EC8;
extern ? D_8018E838;

void func_80056188(s32 arg0) {
    s32 *temp_s2;
    s32 temp_s1;
    s32 temp_s3;
    void *temp_s0;
    s32 *phi_s2;

    temp_s3 = (arg0 * 0xB8) + camera1;
    phi_s2 = &D_80183EA0;
    do {
        temp_s1 = *phi_s2;
        if (*(arg0 + &D_8018E838) == 0) {
            temp_s0 = &D_80165C18 + (temp_s1 * 0xE0);
            if ((temp_s0->unkA6 >= 2) && (func_80072270(temp_s1, 0x80000) != 0) && (func_8008A140(temp_s1, temp_s3, 0x2AAB) != 0)) {
                temp_s0->unkB4 = func_800872D8(temp_s1, temp_s3);
                func_800480B4(temp_s0 + 4, temp_s0 + 0xB2, temp_s0->unk0, temp_s0->unk60, temp_s0->unk64, &D_0D0060B0, 0x40, 0x40, 0x40, 0x20);
            }
        }
        temp_s2 = phi_s2 + 4;
        phi_s2 = temp_s2;
    } while (temp_s2 != &D_80183EC8);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80056188.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80042E00(? *, ? *, ?); // extern
? func_80044BF8(void *, ?, ?); // extern
? func_8004B138(s32, s32, s32, ?); // extern
extern ? D_0D005AE0;
extern ? D_0D006940;
extern ? D_0D02AC58;
extern ? D_800E46F8;
extern s32 D_80165860;
extern s32 D_8016586C;
extern s32 D_80165878;
extern ? D_80183E40;
extern ? D_80183E80;


void func_800562E4(s32 arg0, s32 arg1, ? arg2) {
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;

    temp_v0 = (arg0 * 0xC) + &D_800E46F8;
    temp_a0 = temp_v0->unk0;
    temp_a1 = temp_v0->unk4;
    temp_a2 = temp_v0->unk8;
    D_80165860 = temp_a0;
    D_8016586C = temp_a1;
    D_80165878 = temp_a2;
    func_8004B138(temp_a0, temp_a1, temp_a2, arg2);
    func_80042E00(&D_80183E40, &D_80183E80, 0x3E4CCCCD);
    func_80044BF8((arg1 << 0xA) + &D_0D02AC58, 0x20, 0x20);
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk0 = 0x400103F;
    temp_v0_2->unk4 = &D_0D005AE0;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk0 = 0x6000000;
    temp_v0_3->unk4 = &D_0D006940;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800562E4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s16 func_800418AC(f32, f32, s32); // extern
? func_80042E00(? *, ? *, ?); // extern
? func_80047270(? *, void *, ? *, ?, s32, s32, s32); // extern
? func_8004B310(?); // extern
? func_8004B414(?, ?, ?, ?); // extern
? func_800562E4(s32, s32, ?); // extern
extern ? D_0D005AE0;
extern ? D_0D007B00;
extern ? D_0D007E98;
extern ? D_0D029858;
extern ? D_0D02A858;
extern s32 D_801655CC;
extern ? D_80165C18;
extern ? D_80183E40;
extern ? D_80183E80;
extern s32 D_8018D400;


void func_800563DC(s32 arg0, s32 arg1, ? arg2) {
    f32 temp_f12;
    f32 temp_f14;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_v0_4;
    s32 temp_v0_5;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_6;

    temp_v0 = (arg0 * 0xE0) + &D_80165C18;
    temp_f12 = temp_v0->unk4;
    temp_f14 = temp_v0->unkC;
    temp_s0 = D_801655CC & 3;
    D_80183E40.unk4 = temp_v0->unk8 + 1.0;
    D_80183E80.unk0 = 0;
    D_80183E40.unk0 = temp_f12;
    D_80183E40.unk8 = temp_f14;
    D_80183E80.unk2 = func_800418AC(temp_f12, temp_f14, (arg1 * 0xB8) + camera1);
    D_80183E80.unk4 = 0x8000;
    func_80042E00(&D_80183E40, &D_80183E80, 0x3E4CCCCD);
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk0 = 0x6000000;
    temp_v0_2->unk4 = &D_0D007E98;
    func_8004B310(arg2);
    func_80047270(&D_0D02A858, (temp_s0 << 0xA) + &D_0D029858, &D_0D005AE0, 0x20, 0x20, 0x20, 0x20);
    temp_v0_3 = gDisplayListHead;
    temp_s0_2 = D_8018D400;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk0 = 0x6000000;
    temp_v0_3->unk4 = &D_0D007B00;
    func_8004B414(0, 0, 0, arg2);
    D_80183E80.unk4 = 0;
    D_80183E40.unk4 = D_80183E40.unk4 + 4.0;
    func_800562E4(temp_s0_2 % 3, temp_s0_2 % 4, arg2);
    temp_v0_4 = temp_s0_2 + 1;
    D_80183E80.unk4 = 0x6000;
    func_800562E4(temp_v0_4 % 3, temp_v0_4 % 4, arg2);
    temp_v0_5 = temp_s0_2 + 2;
    D_80183E80.unk4 = 0xA000;
    func_800562E4(temp_v0_5 % 3, temp_v0_5 % 4, arg2);
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->unk0 = 0xBB000000;
    temp_v0_6->unk4 = 0x10001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800563DC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800431B0(? *, ? *, ?, ? *); // extern
? func_80043D50(? *, ?, ?); // extern
? func_8004B310(?, void **); // extern
extern ? D_0D005770;
extern ? D_0D0079E8;
extern ? D_0D02AA58;
extern ? D_80165C18;
extern ? D_80183E40;
extern ? D_80183E80;


void func_8005669C(s32 arg0, ? arg1, ? arg2) {
    void *temp_s1;
    void *temp_v1;
    void *temp_v1_2;

    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x6000000;
    temp_v1->unk4 = &D_0D0079E8;
    func_8004B310(arg2, &gDisplayListHead);
    func_80043D50(&D_0D02AA58, 0x10, 0x10);
    temp_s1 = (arg0 * 0xE0) + &D_80165C18;
    D_80183E40.unk4 = temp_s1->unk8 - 2.0;
    D_80183E40.unk0 = temp_s1->unk4 + 2.0;
    D_80183E40.unk8 = temp_s1->unkC + 2.0;
    func_800431B0(&D_80183E40, &D_80183E80, 0x3E19999A, &D_0D005770);
    D_80183E40.unk0 = temp_s1->unk4 + 2.0;
    D_80183E40.unk8 = temp_s1->unkC - 2.0;
    func_800431B0(&D_80183E40, &D_80183E80, 0x3E19999A, &D_0D005770);
    D_80183E40.unk0 = temp_s1->unk4 - 2.0;
    D_80183E40.unk8 = temp_s1->unkC - 2.0;
    func_800431B0(&D_80183E40, &D_80183E80, 0x3E19999A, &D_0D005770);
    D_80183E40.unk0 = temp_s1->unk4 - 2.0;
    D_80183E40.unk8 = temp_s1->unkC + 2.0;
    func_800431B0(&D_80183E40, &D_80183E80, 0x3E19999A, &D_0D005770);
    temp_v1_2 = gDisplayListHead;
    gDisplayListHead = temp_v1_2 + 8;
    temp_v1_2->unk0 = 0xBB000000;
    temp_v1_2->unk4 = 0x10001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8005669C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80022180(void *, ? *, s32 *); // extern
? func_80042A20(? *, f32 *, ? *, ?, f32); // extern
extern ? D_0D007B98;
extern f64 D_800EE088;
extern ? D_80165C18;
extern ? D_80183E50;
extern s32 D_8018D120;


void func_800568A0(s32 arg0, s32 arg1) {
    ? sp30;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;

    temp_v0 = (arg0 * 0xE0) + &D_80165C18;
    D_80183E50.unk0 = temp_v0->unk4;
    D_80183E50.unk4 = temp_v0->unk44 + D_800EE088;
    D_80183E50.unk8 = temp_v0->unkC;
    func_80042A20(&sp30, &gPlayerOne[arg1].unk_140, &D_80183E50, 0, 0.5f);
    func_80022180(gGfxPool + (D_8018D120 << 6) + 0x2C0, &sp30, &D_8018D120);
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk0 = 0x1020040;
    temp_v0_2->unk4 = (gGfxPool + (D_8018D120 << 6) + 0x2C0) & 0x1FFFFFFF;
    temp_v0_3 = gDisplayListHead;
    D_8018D120 = D_8018D120 + 1;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk0 = 0x6000000;
    temp_v0_3->unk4 = &D_0D007B98;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800568A0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
//? func_800723A4(s32, ?); // extern
//extern ? D_80165CB8;
//extern ? D_80183DD8;
//void func_800723A4(s32,s32);
void func_800569F4(s32 arg0) {
    s32 temp_a0 = D_80183DD8[arg0];
    //sp1C = temp_a0;
    func_800723A4(temp_a0, 0);
    D_80165CB8[temp_a0 * 0xE0] = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_800569F4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
//? func_800723A4(s32, ?); // extern
//extern ? D_80165CB8;
//extern ? D_80183DD8;

void func_80056A40(s32 arg0, s32 arg1) {
    s32 sp1C;
    s32 temp_a0;

    temp_a0 = D_80183DD8[arg0];
    sp1C = temp_a0;
    func_800723A4(temp_a0, 0);
    D_80165CB8[temp_a0 * 0xE0] = arg1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80056A40.s")
#endif

void func_80056A94(s32 arg0) {
    func_80072428(D_80183DD8[arg0]);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800563DC(s32, s32, s16); // extern
? func_8005669C(s32, s32, s16); // extern
? func_800568A0(s32, s32); // extern
extern ? D_80165C18;
extern s32 D_80183DD8;

void func_80056AC0(s32 arg0) {
    Player *temp_v0;
    s16 temp_s1;
    s32 temp_s0;
    s32 temp_s2;
    void *temp_v1;
    s32 *phi_s3;
    s32 phi_s2;

    phi_s3 = &D_80183DD8;
    phi_s2 = 0;
    do {
        temp_s0 = *phi_s3;
        temp_v1 = &D_80165C18 + (temp_s0 * 0xE0);
        if (temp_v1->unkA6 != 0) {
            temp_s1 = temp_v1->unkA0;
            temp_v0 = &gPlayerOne[phi_s2];
            temp_v1->unk4 = temp_v0->posX;
            temp_v1->unk8 = temp_v0->posY - 2.0;
            temp_v1->unkC = temp_v0->posZ;
            temp_v1->unk44 = temp_v0->unk_074;
            func_800563DC(temp_s0, arg0, temp_s1);
            func_8005669C(temp_s0, arg0, temp_s1);
            func_800568A0(temp_s0, arg0);
        }
        temp_s2 = phi_s2 + 1;
        phi_s3 += 4;
        phi_s2 = temp_s2;
    } while (temp_s2 != 4);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80056AC0.s")
#endif

#ifdef MIPS_TO_C
UNUSED void func_80056BF0(s32 arg0) {
    f32 sp40;
    f32 *var_t6;
    s32 *var_t9;
    s32 temp_at;
    s32 temp_s0;
    s32 temp_v0;
    s32 temp_v0_2;
    void *temp_t3;
    void *temp_v1;

    var_t9 = (arg0 * 0x54) + &D_80163DE8;
    temp_t3 = var_t9 + 0x54;
    var_t6 = &sp40;
    do {
        temp_at = *var_t9;
        var_t9 += 0xC;
        var_t6 += 0xC;
        var_t6->unk-C = temp_at;
        var_t6->unk-8 = (s32) var_t9->unk-8;
        var_t6->unk-4 = (s32) var_t9->unk-4;
    } while (var_t9 != temp_t3);
    D_80183E40.unk0 = sp40;
    D_80183E40.unk4 = (f32) ((f64) sp44 + 1.0);
    D_80183E40.unk8 = sp48;
    func_800480B4(&D_80183E40, &D_80183E80, 0x3E800000, &D_0D02A858, (*(&D_800E471C + ((u32) D_801655CC % 6U)) << 0xA) + &D_0D029858, &D_0D005AE0, 0x20, 0x20, 0x20, 0x20);
    temp_v1 = gDisplayListHead;
    temp_s0 = D_8018D400;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x06000000;
    temp_v1->unk4 = &D_0D007B00;
    func_8004B414(0, 0, 0, 0xFF);
    D_80183E44 = (f32) ((f64) sp44 + 5.0);
    D_80183E84 = 0;
    func_800562E4(temp_s0 % 3, temp_s0 % 4, 0xFF);
    temp_v0 = temp_s0 + 1;
    D_80183E84 = 0x6000;
    func_800562E4(temp_v0 % 3, temp_v0 % 4, 0xFF);
    temp_v0_2 = temp_s0 + 2;
    D_80183E84 = 0xA000;
    func_800562E4(temp_v0_2 % 3, temp_v0_2 % 4, 0xFF);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80056BF0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s16 func_800418AC(f32, f32, s32); // extern
? func_800431B0(f32 *, ? *, ?, ? *); // extern
? func_80043D50(? *, ?, ?); // extern
extern ? D_0D005770;
extern ? D_0D0079C8;
extern ? D_0D02AA58;
extern ? D_80163DE8;
extern ? D_80183E80;


void func_80056E24(s32 arg0, s32 arg1) {
    f32 sp5C;
    f32 sp50;
    f32 sp44;
    f32 sp38;
    ? sp2C;
    ? *temp_t6;
    s32 *temp_t9;
    s32 *temp_t9_2;
    void *temp_v1;
    void *temp_v1_2;
    s32 *phi_t9;
    ? *phi_t6;

    temp_t9 = (arg0 * 0x54) + &D_80163DE8;
    phi_t9 = temp_t9;
    phi_t6 = &sp2C;
    do {
        temp_t9_2 = phi_t9 + 0xC;
        temp_t6 = phi_t6 + 0xC;
        temp_t6->unk-C = *phi_t9;
        temp_t6->unk-8 = temp_t9_2->unk-8;
        temp_t6->unk-4 = temp_t9_2->unk-4;
        phi_t9 = temp_t9_2;
        phi_t6 = temp_t6;
    } while (temp_t9_2 != (temp_t9 + 0x54));
    temp_v1 = gDisplayListHead;
    D_80183E80.unk0 = 0;
    D_80183E80.unk4 = 0x8000;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x6000000;
    temp_v1->unk4 = &D_0D0079C8;
    func_80043D50(&D_0D02AA58, 0x10, 0x10);
    D_80183E80.unk2 = func_800418AC(sp38, sp40, arg1);
    func_800431B0(&sp38, &D_80183E80, 0x3E19999A, &D_0D005770);
    D_80183E80.unk2 = func_800418AC(sp44, sp4C, arg1);
    func_800431B0(&sp44, &D_80183E80, 0x3E19999A, &D_0D005770);
    D_80183E80.unk2 = func_800418AC(sp50, sp58, arg1);
    func_800431B0(&sp50, &D_80183E80, 0x3E19999A, &D_0D005770);
    D_80183E80.unk2 = func_800418AC(sp5C, sp64, arg1);
    func_800431B0(&sp5C, &D_80183E80, 0x3E19999A, &D_0D005770);
    temp_v1_2 = gDisplayListHead;
    gDisplayListHead = temp_v1_2 + 8;
    temp_v1_2->unk0 = 0xBB000000;
    temp_v1_2->unk4 = 0x10001;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80056E24.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80022180(void *, ? *, s32 *); // extern
? func_80042A20(? *, void *, ? *, ?, f32); // extern
extern ? D_0D007B98;
extern ? D_80163DE8;
extern ? D_80164038;
extern ? D_80183E50;
extern s32 D_8018D120;


void func_80056FCC(s32 arg0) {
    ? sp30;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;

    temp_v0 = (arg0 * 0x54) + &D_80163DE8;
    D_80183E50[0] = temp_v0->unk0;
    D_80183E50[1] = temp_v0->unk50 + 1.0;
    D_80183E50[2] = temp_v0->unk8;
    func_80042A20(&sp30, (arg0 << 6) + 0x30 + &D_80164038, &D_80183E50, 0, 0.5f);
    func_80022180(gGfxPool + (D_8018D120 << 6) + 0x2C0, &sp30, &D_8018D120);
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk0 = 0x1020040;
    temp_v0_2->unk4 = (gGfxPool + (D_8018D120 << 6) + 0x2C0) & 0x1FFFFFFF;
    temp_v0_3 = gDisplayListHead;
    D_8018D120 = D_8018D120 + 1;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk0 = 0x6000000;
    temp_v0_3->unk4 = &D_0D007B98;
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80056FCC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s16 func_800418AC(f32, f32, s32); // extern
? func_800563DC(s32, s32, ?); // extern
? func_80056E24(s32, s32); // extern
? func_80056FCC(s32); // extern
? func_800721C0(s32, ?); // extern
? func_800721E8(s32, ?); // extern
s32 func_8007223C(s32, ?); // extern
u32 func_8008A364(s32, s32, ?, ?); // extern
extern ? D_80163DE8;
extern ? D_80165C18;
extern s32 D_80183DD8;
extern ? D_80183E80;

void func_80057114(s32 arg0) {
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_s7;
    u16 temp_s5;
    u32 temp_s4;
    void *temp_v0;
    s32 phi_fp;
    s32 *phi_s1;
    s32 phi_s2;
    ? *phi_s1_2;
    s32 phi_s2_2;

    phi_fp = arg0;
    if (gGamestate == ENDING_SEQUENCE) {
        phi_fp = 0;
    }
    temp_s7 = (phi_fp * 0xB8) + camera1;
    if (phi_fp == 0) {
        phi_s1 = &D_80183DD8;
        phi_s2 = 0;
        do {
            temp_s0 = *phi_s1;
            if (func_8007223C(temp_s0, 0x200000) != 0) {
                (&D_80163DE8 + (phi_s2 * 0x54))->unk4A = 0;
            } else if (gGamestate != ENDING_SEQUENCE) {
                (&D_80163DE8 + (phi_s2 * 0x54))->unk4A = 1;
            }
            func_800721E8(temp_s0, 0x200000);
            temp_s2 = phi_s2 + 1;
            phi_s1 += 4;
            phi_s2 = temp_s2;
        } while (temp_s2 != 7);
    }
    phi_s1_2 = &D_80163DE8;
    phi_s2_2 = 0;
    do {
        temp_s5 = phi_s1_2->unk44;
        if (temp_s5 != 0) {
            temp_s0_2 = *(&D_80183DD8 + (phi_s2_2 * 4));
            temp_v0 = (temp_s0_2 * 0xE0) + &D_80165C18;
            temp_v0->unk4 = phi_s1_2->unk0;
            temp_v0->unk8 = phi_s1_2->unk4;
            temp_v0->unkC = phi_s1_2->unk8;
            temp_s4 = func_8008A364(temp_s0_2, phi_fp, 0x31C4, 0x1F4);
            if (func_8007223C(temp_s0_2, 0x40000) != 0) {
                func_800721C0(temp_s0_2, 0x200000);
                D_80183E80.unk0 = 0;
                D_80183E80.unk2 = func_800418AC(phi_s1_2->unk0, phi_s1_2->unk8, temp_s7);
                D_80183E80.unk4 = 0x8000;
                func_800563DC(temp_s0_2, phi_fp, 0xFF);
                func_80056E24(phi_s2_2, temp_s7);
                if ((temp_s4 < 0x4E21) && (temp_s5 != 4)) {
                    func_80056FCC(phi_s2_2);
                }
            }
        }
        temp_s2_2 = phi_s2_2 + 1;
        phi_s1_2 += 0x54;
        phi_s2_2 = temp_s2_2;
    } while (temp_s2_2 != 7);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_80057114.s")
#endif

UNUSED void func_80057330(void) {

}

UNUSED void func_80057338(void) {

    gSPDisplayList(gDisplayListHead++, D_0D0079C8);
    gSPClearGeometryMode(gDisplayListHead++, G_CULL_BOTH);
    gSPDisplayList(gDisplayListHead++, D_0D007AE0);
    gSPTexture(gDisplayListHead++, 1, 1, 0, G_TX_RENDERTILE, G_OFF);
}

UNUSED void func_800573BC(void) {

}

UNUSED void func_800573C4(void) {
    
}

UNUSED void func_800573CC(void) {
    
}
UNUSED void func_800573D4(void) {
    
}

UNUSED void func_800573DC(void) {
    
}


void func_800573E4(s32 arg0, s32 arg1, s8 arg2) {
    func_8004B7DC(arg0, arg1, 8, 8, (((arg2 % 16) * 8) << 16) >> 16, (((unsigned short) (arg2 / 16)) << 19) >> 16, 0);
}

void func_80057454(s32 *arg0, s32 *arg1) {
    *arg0 += 8;
    if (*arg0 >= 296) {
        *arg0 = 20;
        *arg1 += 8;
    }
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800573E4(s32, s32, s8); // extern
? func_80057454(s32 *, s32 *); // extern
extern ? D_800E5628;

void debug_print_string(s32 *arg0, s32 *arg1, s8 *arg2) {
    s8 temp_a2;
    s8 temp_v0;
    s8 temp_v0_2;
    s8 phi_v0;
    s8 *phi_s0;

    *arg0 = *arg0 + 0x14;
    *arg1 = *arg1 + 0x14;
    temp_v0 = *arg2;
    phi_v0 = temp_v0;
    phi_s0 = arg2;
    if (temp_v0 != 0) {
        do {
            temp_a2 = *(&D_800E5628 + phi_v0);
            if (temp_a2 >= 0) {
                func_800573E4(*arg0, *arg1, temp_a2);
            }
            func_80057454(arg0, arg1);
            temp_v0_2 = phi_s0->unk1;
            phi_v0 = temp_v0_2;
            phi_s0 += 1;
        } while (temp_v0_2 != 0);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/debug_print_string.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800573E4(s32, s32, s8); // extern
? func_80057454(s32 *, s32 *); // extern
extern s8 D_800E5655;
extern s8 D_801657B8;
extern s8 D_801657B9;
// debug_number_sign_check or debug_print_number?
void debug_print_number(u32 arg3, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, u32 argD) {
    s8 *temp_s0;
    s8 temp_a2;
    u32 temp_lo;
    s32 phi_v0;
    u32 phi_v0_2;
    u32 phi_a3;
    s8 *phi_s0;
    s8 phi_a2;
    s8 *phi_s0_2;
    s8 *phi_s0_3;

    phi_v0 = saved_reg_s0;
    phi_a3 = arg3;
    if (saved_reg_s0 < 0) {
        argD = arg3;
        func_800573E4(*saved_reg_s1, *saved_reg_s2, D_800E5655);
        func_80057454(saved_reg_s1, saved_reg_s2);
        phi_v0 = -saved_reg_s0;
        phi_a3 = argD;
    }
    D_801657B8 = -1;
    phi_v0_2 = phi_v0;
    phi_s0 = &D_801657B8;
    phi_s0_3 = &D_801657B8;
    if (phi_v0 != 0) {
        if (phi_v0 != 0) {
            do {
                temp_lo = phi_v0_2 / phi_a3;
                phi_s0->unk1 = phi_v0_2 % phi_a3;
                temp_s0 = phi_s0 + 1;
                phi_v0_2 = temp_lo;
                phi_s0 = temp_s0;
                phi_s0_3 = temp_s0;
            } while (temp_lo != 0);
        }
    } else {
        D_801657B9 = 0;
        phi_s0_3 = &D_801657B9;
    }
    phi_a2 = *phi_s0_3;
    phi_s0_2 = phi_s0_3;
    do {
        func_800573E4(*saved_reg_s1, *saved_reg_s2, phi_a2);
        func_80057454(saved_reg_s1, saved_reg_s2);
        temp_a2 = phi_s0_2->unk-1;
        phi_a2 = temp_a2;
        phi_s0_2 += -1;
    } while (temp_a2 != -1);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/debug_number_sign_check.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800573E4(s32, s32, s8); // extern
? func_80057454(s32 *, s32 *); // extern
extern s8 D_801657B8;
extern s8 D_801657B9;

void func_8005762C(s32 *arg0, s32 *arg1, u32 arg2, u32 arg3) {
    s8 *temp_s0;
    s8 temp_a2;
    u32 temp_lo;
    u32 phi_v0;
    s8 *phi_s0;
    s8 phi_a2;
    s8 *phi_s0_2;
    s8 *phi_s0_3;

    func_80057454();
    D_801657B8 = -1;
    phi_v0 = arg2;
    phi_s0 = &D_801657B8;
    phi_s0_3 = &D_801657B8;
    if (arg2 != 0) {
        if (arg2 != 0) {
            do {
                temp_lo = phi_v0 / arg3;
                phi_s0->unk1 = phi_v0 % arg3;
                temp_s0 = phi_s0 + 1;
                phi_v0 = temp_lo;
                phi_s0 = temp_s0;
                phi_s0_3 = temp_s0;
            } while (temp_lo != 0);
        }
    } else {
        D_801657B9 = 0;
        phi_s0_3 = &D_801657B9;
    }
    phi_a2 = *phi_s0_3;
    phi_s0_2 = phi_s0_3;
    do {
        func_800573E4(*arg0, *arg1, phi_a2);
        func_80057454(arg0, arg1);
        temp_a2 = phi_s0_2->unk-1;
        phi_a2 = temp_a2;
        phi_s0_2 += -1;
    } while (temp_a2 != -1);
}
#else
GLOBAL_ASM("asm/non_matchings/code_800431B0/func_8005762C.s")
#endif

UNUSED void func_80057708() {

}

void load_debug_font(void) {
    gSPDisplayList(gDisplayListHead++, D_0D008108);
    gSPDisplayList(gDisplayListHead++, D_0D008080);
    gDPSetAlphaCompare(gDisplayListHead++, G_AC_THRESHOLD);
}

void func_80057778(void) {
    gSPDisplayList(gDisplayListHead++, D_0D007EB8);
}

void debug_print_str2(s32 arg0, s32 arg1, s8 *arg2) {
    debug_print_string(&arg0, &arg1, arg2);
}

void print_str_num(s32 arg0, s32 arg1, s8 *arg2, s32 arg3) {
    debug_print_string(&arg0, &arg1, arg2);
    debug_print_number(&arg0, &arg1, arg3, 10);
}

UNUSED void func_80057814(s32 arg0, s32 arg1, s8 *arg2, s32 arg3) {
    debug_print_string(&arg0, &arg1, arg2);
    func_8005762C(&arg0, &arg1, arg3, 10);
}

UNUSED void func_80057858(s32 arg0, s32 arg1, s8 *arg2, s32 arg3) {
    debug_print_string(&arg0, &arg1, arg2);
    debug_print_number(&arg0, &arg1, arg3, 16);
    func_800573E4(arg0, arg1, D_800E5670[0]);
}

UNUSED void func_800578B0(s32 arg0, s32 arg1, s8 *arg2, s32 arg3) {
    debug_print_string(&arg0, &arg1, arg2);
    func_8005762C(&arg0, &arg1, arg3, 16);
    func_800573E4(arg0, arg1, D_800E5670[0]);
}

UNUSED void func_80057908(s32 arg0, s32 arg1, s8 *arg2, s32 arg3) {
    debug_print_string(&arg0, &arg1, arg2);
    debug_print_number(&arg0, &arg1, arg3, 2);
    func_800573E4(arg0, arg1, D_800E566A[0]);
}

UNUSED void func_80057960(s32 arg0, s32 arg1, s8 *arg2, s32 arg3) {
    debug_print_string(&arg0, &arg1, arg2);
    func_8005762C(&arg0, &arg1, arg3, 2);
    func_800573E4(arg0, arg1, D_800E566A[0]);
}

UNUSED void func_800579B8(s32 arg0, s32 arg1, s8 *arg2) {
    load_debug_font();
    debug_print_string(&arg0, &arg1, arg2);
    func_80057778();
}

void func_800579F8(s32 arg0, s32 arg1, s8 *arg2, s32 arg3) {
    load_debug_font();
    debug_print_string(&arg0, &arg1, arg2);
    debug_print_number(&arg0, &arg1, arg3, 10);
    func_80057778();
}

void func_80057A50(s32 arg0, s32 arg1, s8 *arg2, s32 arg3) {
    load_debug_font();
    debug_print_string(&arg0, &arg1, arg2);
    func_8005762C(&arg0, &arg1, arg3, 10);
    func_80057778();
}

UNUSED void func_80057AA8(s32 arg0, s32 arg1, s8 *arg2, s32 arg3) {
    load_debug_font();
    debug_print_string(&arg0, &arg1, arg2);
    debug_print_number(&arg0, &arg1, arg3, 16);
    func_800573E4(arg0, arg1, D_800E5670[0]);
    func_80057778();
}

UNUSED void func_80057B14(s32 arg0, s32 arg1, s8 *arg2, s32 arg3) {
    load_debug_font();
    debug_print_string(&arg0, &arg1, arg2);
    func_8005762C(&arg0, &arg1, arg3, 16);
    func_800573E4(arg0, arg1, D_800E5670[0]);
    func_80057778();
}

UNUSED void func_80057B80(s32 arg0, s32 arg1, s8 *arg2, s32 arg3) {
    load_debug_font();
    debug_print_string(&arg0, &arg1, arg2);
    debug_print_number(&arg0, &arg1, arg3, 2);
    func_800573E4(arg0, arg1, D_800E566A[0]);
    func_80057778();
}

UNUSED void func_80057BEC(s32 arg0, s32 arg1, s8 *arg2, s32 arg3) {
    load_debug_font();
    debug_print_string(&arg0, &arg1, arg2);
    func_8005762C(&arg0, &arg1, arg3, 2);
    func_800573E4(arg0, arg1, D_800E566A[0]);
    func_80057778();
}
