#include <ultra64.h>
#include <macros.h>
#include <types.h>
#include <common_structs.h>
#include "variables.h"
#include "math_util.h"
#include "code_80281FA0.h"

s16 D_802876D0;
s16 D_802876D2;
s32 D_802876D4;
s32 D_802876D8;
s32 D_802876DC; // fake? Or D8 is array.

struct credits_data_1FA0 {
    Vec3f unk0;
    //s8 unk1;
    //s16 unk2;
    //s8 unk4; // unk5?
    //s16 unk6;
    //s16 unk8;
    //s16 unkA;
    s8 pad[0x10];
    s8 unk1C;
    s8 unk1D;
    s16 unk1E;
    f32 unk20;
    s8 pad2[0x24];
    s16 unk48[2];
    s16 unk4C;
    s16 unk4E[2];
    s16 un52;
    s16 unk54[2];
    s16 unk58;
    s16 unk5A[2];
    s16 unk5E;
    s16 unk60;
    s16 unk62;
    f32 unk64;
    f32 unk68;
    s16 unk6C;
    s16 unk6E;
};

s8 D_802876E0[24];

//s8 D_802876EC[12];
f32 D_802876F8;
s8 D_802876FC;

f32 D_80287700[10];
//Vec3f D_80287704;
//Vec3f D_80287710;
//Vec3f D_8028771C;
Vec3s D_80287728[4];
//s16 pad1fa0[2];
//Vec3s D_8028772E;
//s16 pad1fa02[2];
//Vec3s  D_80287734;
//s16 pad1fa03[2];
//Vec3s D_8028773A;
//s16 pad1fa04[2];


struct struct_80283431 {
    Vec3f unk0;
    Vec3s unkC;
};

struct struct_80283431 D_80287750[10];
//extern s16 D_8028775C[];

struct struct_80283430 {
    s8 unk0;
    s8 unk1;
    s8 unk2;
    s8 unk3;
    s8 unk4;
    s8 unk5;
    s8 unk6;
    s8 unk7;
    s8 unk8;
    s8 unk9;
    s8 unkA;
    s8 unkB;
};

struct struct_80283430 D_80287818[32];
struct struct_80283430 D_80287998[32];

static s16 D_80287740;
static f32 D_80287744;
static f32 D_80287748;
static s16 D_8028774C[2];
//static s16 D_8028774E;

f32 D_80287B18;
s16 D_80287B1C;
s16 D_80287B1E;
s8 D_80287B20;

void vec3f_set_dupe(Vec3f dest, f32 arg1, f32 arg2, f32 arg3) {
    dest[0] = arg1;
    dest[1] = arg2;
    dest[2] = arg3;
}

void vec3s_set_dupe(Vec3s dest, s16 arg1, s16 arg2, s16 arg3) {
    dest[0] = arg1;
    dest[1] = arg2;
    dest[2] = arg3;
}

void func_80281FDC(Vec3f arg0) {
    arg0[2] = 0.0f;
    arg0[1] = 0.0f;
    arg0[0] = 0.0f;
}

void func_80281FF4(Vec3s arg0) {
    arg0[2] = 0;
    arg0[1] = arg0[2];
    arg0[0] = arg0[2];
}

void vec3f_copy_dupe(Vec3f dest, Vec3f src) {
    dest[0] = src[0];
    dest[1] = src[1];
    dest[2] = src[2];
}

void vec3s_copy_dupe(Vec3s dest, Vec3s src) {
    dest[0] = src[0];
    dest[1] = src[1];
    dest[2] = src[2];
}

void func_80282040(void) {

}

void func_80282048(void) {

}

UNUSED void func_80282050(Vec3f dest, Vec3f src, s16 angle) {
    Vec3f sp2C;

    vec3f_copy_dupe(sp2C, src);
    dest[0] = (sp2C[2] * sins(angle)) + (sp2C[0] * coss(angle));
    dest[1] = sp2C[1];
    dest[2] = (sp2C[2] * coss(angle)) - (sp2C[0] * sins(angle));
}

UNUSED void func_802820F8(f32 *dest, f32 *src, s16 angle) {
    Vec3f sp2C;

    vec3f_copy_dupe(sp2C, src);
    dest[2] = (sp2C[2] * coss(angle)) - (sp2C[1] * sins(angle));
    dest[1] = (sp2C[2] * sins(angle)) + (sp2C[1] * coss(angle));
    dest[0] = sp2C[0];
}

// Called just before fish shoots trophy at awards cutscene.
s32 func_802821A0(f32 *arg0, f32 arg1, f32 arg2) {
    if (arg2 > 1.0f) {
        arg2 = 1.0f;
    }
    
    *arg0 = *arg0 + ((arg1 - *arg0) * arg2);
    
    if (arg1 == *arg0) {
        return 0;
    }
    return 1;
}

s32 func_80282200(s16* arg0, s16 arg1, s16 arg2) {
    s16 temp_v0 = *arg0;

    if (arg2 == 0) {
        *arg0 = arg1;
    } else {
        temp_v0 -= arg1;
        temp_v0 -= (temp_v0 / arg2);
        temp_v0 += arg1;
        *arg0 = temp_v0;
    }
    
    if (arg1 == *arg0) {
        return 0;
    }
    return 1;
}

s32 func_802822AC(f32* arg0, f32 arg1, f32 arg2) {
    f32 temp_f0 = arg1 - *arg0;
   
    if (arg2 < 0.0f) {
        arg2 = -1.0f * arg2;
    }

    if (temp_f0 > 0.0f) {
        temp_f0 -= arg2;
        if (temp_f0 > 0.0f) {
            *arg0 = arg1 - temp_f0;
        } else {
            *arg0 = arg1;
        }
    } else {
        temp_f0 += arg2;
        if (temp_f0 < 0.0f) {
            *arg0 = arg1 - temp_f0;
        } else {
            *arg0 = arg1;
        }
    }

    if (arg1 == *arg0) {
        return 0;
    }
    return 1;
}

s32 func_80282364(s16* arg0, s16 arg1, s16 arg2) {
    s16 temp_v0 = arg1 - *arg0;

    if (arg2 < 0) {
       arg2 = arg2 * -1;
    }
    if ( temp_v0 > 0) {
        temp_v0 -= arg2;
        if (temp_v0 >= 0) {
            *arg0 = arg1 - temp_v0;
        } else {
            *arg0 = arg1;
        }
    } else {
        temp_v0 += arg2;
        if (temp_v0 <= 0) {
            *arg0 = arg1 - temp_v0;
        } else {
            *arg0 = arg1;
        }
    }

    if (arg1 == *arg0) {
        return 0;
    }
    return 1;
}

void func_8028240C(void) {
    D_80287B1C = 0;
    D_80287B18 = 0.0f;
    D_80287B1E = 0;
    D_80287B20 = 0;
}

void func_80282434(s32 arg0) {
    func_8028240C();
}

void func_80282454(Vec3f arg0, Vec3f arg1, f32 *distance, s16 *arg3, s16 *arg4) {
    f32 xdist;
    f32 ydist;
    f32 zdist;

    xdist = arg1[0] - arg0[0];
    ydist = arg1[1] - arg0[1];
    zdist = arg1[2] - arg0[2];
    *distance = sqrtf((xdist * xdist) + (ydist * ydist) + (zdist * zdist));
    *arg3 = atan2s(ydist, sqrtf((xdist * xdist) + (zdist * zdist)));
    *arg4 = atan2s(xdist, zdist);
}

void func_80282504(Vec3f arg0, Vec3f arg1, f32 arg2, s16 arg3, s16 arg4) {
    arg1[0] = arg0[0] + (arg2 * coss(arg3) * sins(arg4));
    arg1[1] = arg0[1] + (arg2 * sins(arg3));
    arg1[2] = arg0[2] + (arg2 * coss(arg3) * coss(arg4));
}

UNUSED void func_802825C8(Vec3f arg0, Vec3f arg1, Vec3f arg2, Vec3s arg3) {
    Vec3f sp3C;
    Vec3f sp30;

    // What's up with this? Why do we copy arg1 to an unused local variable?
    vec3f_copy_dupe(sp3C, arg1);
    sp30[2] = -((arg2[2] * coss(arg3[0])) - (arg2[1] * sins(arg3[0])));
    sp30[1] =   (arg2[2] * sins(arg3[0])) + (arg2[1] * coss(arg3[0]));
    sp30[0] = arg2[0];
    arg0[0] = arg1[0] + (sp30[2] * sins(arg3[1])) + (sp30[0] * coss(arg3[1]));
    arg0[1] = arg1[1] +  sp30[1];
    arg0[2] = arg1[2] + (sp30[2] * coss(arg3[1])) - (sp30[0] * sins(arg3[1]));
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern f32 D_80287470;
extern f32 D_80287474;

void func_80282700(f32 arg0, void *arg1, f32 *arg2, void *arg3, void *arg4, void *arg5, void *arg6) {
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f14;
    f32 temp_f2;
    f32 temp_f4;
    f32 temp_f6;
    f32 temp_f8;
    f32 phi_f12;

    phi_f12 = arg0;
    if (arg0 > 1.0f) {
        phi_f12 = 1.0f;
    }
    temp_f0 = 1.0f - phi_f12;
    temp_f2 = phi_f12 * phi_f12;
    temp_f8 = (temp_f0 * temp_f0 * temp_f0) / 6.0f;
    temp_f14 = temp_f2 * phi_f12;
    sp0 = temp_f8;
    temp_f4 = ((temp_f14 * 0.5f) - temp_f2) + D_80287470;
    sp4 = temp_f4;
    temp_f6 = (-phi_f12 * phi_f12 * phi_f12 * 0.5f) + (temp_f2 * 0.5f) + (phi_f12 * 0.5f) + D_80287474;
    temp_f10 = temp_f14 / 6.0f;
    sp8 = temp_f6;
    spC = temp_f10;
    arg1->unk0 = (arg6->unk0 * temp_f10) + ((temp_f8 * arg3->unk0) + (temp_f4 * arg4->unk0) + (temp_f6 * arg5->unk0));
    arg1->unk4 = (arg6->unk4 * spC) + ((sp0 * arg3->unk4) + (sp4 * arg4->unk4) + (sp8 * arg5->unk4));
    arg1->unk8 = (arg6->unk8 * spC) + ((temp_f8 * arg3->unk8) + (sp4 * arg4->unk8) + (sp8 * arg5->unk8));
    *arg2 = (arg6->unkC * temp_f10) + ((sp0 * arg3->unkC) + (sp4 * arg4->unkC) + (temp_f6 * arg5->unkC));
}
#else
GLOBAL_ASM("asm/non_matchings/code_80281FA0/func_80282700.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_80282700(f32, f32, f32 *, f32 *, f32 *, f32 *, f32 *, f32 *); /* extern */

s32 func_802828C8(f32 *arg0, f32 *arg1, s32 arg2, s16 *arg3, f32 *arg4) {
    s32 sp94;
    f32 sp90;
    f32 sp8C;
    f32 sp88;
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp44;
    f32 sp40;
    f32 temp_f0;
    f32 var_f12;
    f32 var_f14;
    f32 var_f16;
    s16 temp_v1;
    s32 var_t1;
    u16 temp_v1_2;
    u16 temp_v1_3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;

    temp_v1 = *arg3;
    var_f12 = *arg4;
    if (temp_v1 < 0) {
        var_f12 = 0.0f;
    }
    temp_v0 = arg2 + (temp_v1 * 0xC);
    if ((temp_v0->unk0 == -1) || (temp_v0->unkC == -1) || (temp_v0->unk18 == -1)) {
        return 1;
    }
    temp_v0_2 = arg2 + (temp_v1 * 0xC);
    sp54 = (f32) temp_v0_2->unk6;
    sp58 = (f32) temp_v0_2->unk8;
    sp5C = (f32) temp_v0_2->unkA;
    sp60 = (f32) temp_v0_2->unk4 * 256.0f;
    sp64 = (f32) temp_v0_2->unk12;
    sp68 = (f32) temp_v0_2->unk14;
    sp6C = (f32) temp_v0_2->unk16;
    sp70 = (f32) temp_v0_2->unk10 * 256.0f;
    sp74 = (f32) temp_v0_2->unk1E;
    sp78 = (f32) temp_v0_2->unk20;
    sp7C = (f32) temp_v0_2->unk22;
    sp80 = (f32) temp_v0_2->unk1C * 256.0f;
    sp84 = (f32) temp_v0_2->unk2A;
    sp88 = (f32) temp_v0_2->unk2C;
    sp8C = (f32) temp_v0_2->unk2E;
    sp40 = 0.0f;
    sp44 = 0.0f;
    sp94 = 0;
    sp90 = (f32) temp_v0_2->unk28 * 256.0f;
    func_80282700(var_f12, 0.0f, arg0, arg1, &sp54, &sp64, &sp74, &sp84);
    var_t1 = sp94;
    var_f14 = sp44;
    var_f16 = sp40;
    temp_v0_3 = arg2 + (*arg3 * 0xC);
    temp_v1_2 = temp_v0_3->unkE;
    if (temp_v1_2 != 0) {
        var_f14 = 1.0f / (f32) temp_v1_2;
    }
    temp_v1_3 = temp_v0_3->unk1A;
    if (temp_v1_3 != 0) {
        var_f16 = 1.0f / (f32) temp_v1_3;
    }
    temp_f0 = *arg4;
    *arg4 = temp_f0 + ((temp_f0 * (var_f16 - var_f14)) + var_f14);
    if (*arg4 >= 1.0f) {
        *arg3 += 1;
        if ((arg2 + (*arg3 * 0xC))->unk24 == -1) {
            *arg3 = 0;
            var_t1 = 1;
        }
        *arg4 -= 1.0f;
    }
    return var_t1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80281FA0/func_802828C8.s")
#endif

struct credits_data_2BE4 {
    s8 unk0;
    s8 unk1;
    s16 unk2;
    s8 unk4;
    s16 unk6;
    s16 unk8;
    s16 unkA;
    s8 pad[0x10];
    u8 unk1C;
    s8 unk1D;
    s16 unk1E;
    f32 unk20;
    s8 pad2[0x24];
    s16 unk48[2];
    s16 unk4C;
    s16 unk4E[2];
    s16 un52;
    s16 unk54[2];
    s16 unk58;
    s16 unk5A[2];
    s16 unk5E;
    s16 unk60;
    s16 unk62;
    f32 unk64;
    f32 unk68;
    s16 unk6C;
    s16 unk6E;
};

void func_80282BE4(struct credits_data_2BE4 *arg0, s16 arg1, u8 arg2, s16 arg3, Vec3s arg4, s32 arg5)
{
  arg0->unk0 = arg1;
  arg0->unk2 = arg2;
  arg0->unk4 = arg3;
  if (arg5 != 0)
  {
    arg0->unk6 = -*arg4; // technically -arg4[0]?
  }
  else
  {
    arg0->unk6 = *arg4; // technically arg4[0]?
  }
  arg0->unk8 = arg4[1];
  arg0->unkA = arg4[2];
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307

struct struct_80282C40 {
    s8 unk0;
    s8 unk1;
    s8 unk2;
    s8 unk3;
    s8 unk4;
    s8 unk5;
    s8 unk6;
    s8 unk7;
    s8 unk8;
    s8 unk9;
    s8 unkA;
    s8 unkB;
    s8 unkC;
    s8 unkD;
    s8 unkE;
    s8 unkF;
};

void func_80282C40(struct struct_80282C40 *arg0, struct struct_80282C40 *arg1, s32 arg2) {
    s32 i;

    func_80282BE4(&arg1, arg1->unk0, arg1->unk3, arg1->unk4, arg1->unk6, arg2);

    for (i = 0; i < 4; i++) {
        func_80282BE4(&arg0[i], arg1[i].unk0, arg1[i].unk3, arg1[i].unk4, arg1[i].unk6, arg2);

        if (arg1->unkC < 0) {
            break;
        }
        
    }


    
//     s32 temp_s1;
//     s8 temp_s2;
//     s8 temp_s3;
//     void *temp_s0;
//     void *temp_s4;
//     s8 phi_s3;
//     s8 phi_s2;
//     void *phi_s0;
//     void *phi_s4;
//     s32 phi_s1;

//     func_80282BE4(arg1->unk0, arg1->unk3, arg1->unk4, arg1 + 6, arg2);
//     phi_s3 = arg0 + 0xC;
//     phi_s2 = arg1->unk0;
//     phi_s0 = arg1;
//     phi_s4 = arg1 + 6;
//     phi_s1 = 1;
//     do {
// loop_1:
//         func_80282BE4(phi_s3, phi_s2, phi_s0->unk3, phi_s0->unk4, phi_s4, arg2);
//         temp_s2 = phi_s0->unkC;
//         temp_s1 = phi_s1 + 1;
//         temp_s3 = phi_s3 + 0xC;
//         temp_s0 = phi_s0 + 0xC;
//         temp_s4 = phi_s4 + 0xC;
//         phi_s3 = temp_s3;
//         phi_s2 = temp_s2;
//         phi_s0 = temp_s0;
//         phi_s4 = temp_s4;
//         phi_s1 = temp_s1;
//         if (temp_s2 != -1) {
//             goto loop_1;
//         }
//     } while ((temp_s1 + 3) >= 0x1F);
//     func_80282BE4(temp_s3, arg1->unk0, temp_s0->unk3, temp_s0->unk4, temp_s4, arg2);
//     func_80282BE4(temp_s3 + 0xC, arg1->unk0, 0, temp_s0->unk4, temp_s4, arg2);
//     func_80282BE4(temp_s3 + 0x18, arg1->unk0, 0, temp_s0->unk4, temp_s4, arg2);
//     func_80282BE4(temp_s3 + 0x24, -1, 0, temp_s0->unk4, temp_s4, arg2);

}
#else
GLOBAL_ASM("asm/non_matchings/code_80281FA0/func_80282C40.s")
#endif

s32 func_80282D90(Camera *camera, s32 arg1, s32 arg2, s32 arg3) {
    s32 res;

    func_802832C4(&func_80282434, camera, 0, 0);
    func_80282C40(&D_80287818, arg1, arg3);
    func_80282C40(&D_80287998, arg2, arg3);

    if (0) {}; // debug stub?

    res = func_802828C8(camera->lookAt, camera->up, &D_80287818, &D_80287B1C, &D_80287B18) |
          func_802828C8(camera->pos, camera->up, &D_80287998, &D_80287B1C, &D_80287B18);
    return res;
}

void func_80282E58(Camera *camera, s16 *arg1, s32 arg2) {
    func_80282C40(&D_80287818, arg1, arg2);
    func_802828C8(camera->lookAt, camera->up, &D_80287818, &D_80287B1C, &D_80287B18);
}

void func_80282EAC(s32 arg0, struct credits_data_1FA0 *arg1, s16 arg2, s16 arg3, s16 arg4)
{
  if ((arg0 >= 0) && (arg0 < 3))
  {
    if (arg1->unk48[arg0] < arg2)
    {
      arg1->unk48[arg0] = arg2;
      arg1->unk5A[arg0] = arg3;
      arg1->unk54[arg0] = arg4;
    }
  }
}

void func_80282F00(s16 *arg0, s16 arg1) {
    if (arg1 == -0x8000) {
        *arg0 = (*arg0 & 0x8000) + 0xC000;
        return;
    }
    *arg0 += arg1;
}

void func_80282F44(s32 arg0, struct credits_data_1FA0 *arg1, Camera *camera) {
    f32 sp5C;
    s32 pad[2];
    s16 sp50[2];
    Vec3f pos;
    Vec3f rot;

    vec3f_set_dupe(pos, camera->pos[0], camera->pos[1], camera->pos[2]);
    vec3f_set_dupe(rot, camera->lookAt[0], camera->lookAt[1], camera->lookAt[2]);
    if ((arg0 == 0) || (arg0 == 1)) {
        if ((arg1->unk48[0] != 0) || (arg1->unk48[1] != 0)) {
            func_80282454(pos, rot, &sp5C, &sp50[0], &sp50[1]);
            sp50[arg0] += (((f32) arg1->unk48[arg0]) * sins(arg1->unk4E[arg0]));
            if ((sp50[0] < 0x3800) && (sp50[0] >= -0x37FF)) {
                func_80282504(pos, rot, sp5C, sp50[0], sp50[1]);
            }
            func_80282F00(&arg1->unk4E[arg0], arg1->unk54[arg0]);
            if (func_80282364(&arg1->unk48[arg0], 0, arg1->unk5A[arg0]) == 0) {
                arg1->unk4E[arg0] = 0;
            }
        }
        camera->lookAt[0] = rot[0];
        camera->lookAt[1] = rot[1];
        camera->lookAt[2] = rot[2];
    }
}

void func_802830B4(struct credits_data_1FA0 *arg0, s16 arg1, s16 arg2, s16 arg3) {
    if (arg0->unk60 < arg1) {
        arg0->unk60 = arg1;
        arg0->unk6C = arg2;
        arg0->unk68 = arg3;
    }
}

void func_80283100(struct credits_data_1FA0 *arg0, f32 *arg1) {
    if (arg0->unk60 != 0) {
        arg0->unk6E = (coss((u16) arg0->unk64) * arg0->unk60) / 256;
        arg0->unk64 += arg0->unk68;
        func_80282364(&arg0->unk60, 0, arg0->unk6C);
    } else {
        arg0->unk64 = 0.0f;
    }
    *arg1 = arg0->unk20 + (f32) arg0->unk6E;
}

void func_80283240(s16 arg0) {
    if (arg0 == 1) {
        func_80282EAC(0, &D_802876E0, 0x100, 0x10, 0x4000);
        func_80282EAC(1, &D_802876E0, 0x80, 0x20, 0x2000);
        func_802830B4(&D_802876E0, 0x300, 0x20, 0x4000);
    }
}

s32 func_802832C4(void (*func_ptr)(s32), Camera *camera, s16 arg2, s16 arg3) {
    if ((D_802876D2 >= arg2) && ((arg3 == -1) || (arg3 >= D_802876D2))) {
        func_ptr(camera);
    }
    return 0;
}

s32 func_80283330(s32 arg0) {
    if (arg0 != D_802876D8) {
        D_802876D8 = arg0;
        D_802876D0 = 0;
        D_802876D2 = 0;
        D_802876D4 = 0;
    }
    return D_802876D8;
}

//#ifdef MIPS_TO_C
//generated by m2c commit bece1d6db17040749f77dbbd090363cc6fb926f9
//static ? D_802856D4;          

extern s8 D_802874F5;
extern s32 D_802876D8;

//struct a {
//    s32 unk0;
//    s32 unk4;
//};

//extern struct a *D_802856D4;

s32 func_8028336C(struct credits_data_1FA0 *arg0, Camera *camera) {
  u8 sp20[] = { 2, 3, 4, 5, 5, 5, 5, 5 };
  if (D_802876D8 != 0)
  {
    return D_802876D8;
  }
  switch (gGamestate)
  {
    case 5:
      D_802876D8 = sp20[D_802874F5];
      break;

    case 9:
      D_802876D8 = 6;
      break;

  }

  if (gGamestate == 9)
  {
    func_80283330(6);
  }
  return D_802876D8;
}
//#else
//GLOBAL_ASM("asm/non_matchings/code_80281FA0/func_8028336C.s")
//#endif

s32 func_80283428(void) {
    return 0;
}

//#ifdef MIPS_TO_C
//generated by m2c commit bece1d6db17040749f77dbbd090363cc6fb926f9

//extern ? D_80287824; // fake
f32 D_802856B0 = 98.0f;
f32 D_802856B4 = 12.0f;
f32 D_802856B8 = 52.0f;
f32 D_802856BC = 52.0f;
f32 D_802856C0 = 0.0f;
s32 D_802856C4 = 0; // = 0; // static?
extern f32 D_80150130[];


void func_80283430(void) {
    //f32 *var_s1;
    //s16 *var_s0;
    //s32 *var_a0;
    //s32 *var_v0;
    s32 i;
    D_80287740;
    D_802876D8 = 0;
    D_802876E0[28] = 0;
    D_802856C4 = (s32) D_800DC5E4;
    func_80281FDC(&D_802876E0[12]);
    vec3f_set_dupe(D_802876E0, 0.0f, 0.0f, 500.0f);
    func_80281FDC(&D_80287700[4]);
    vec3f_set_dupe(&D_80287700[1], 0.0f, 0.0f, 500.0f);
    vec3f_set_dupe(&D_80287700[7], 0.0f, 1.0f, 0.0f);
    D_802876F8 = 0.0f;
    func_80281FF4(&D_80287728[0]);
    func_80281FF4(&D_80287728[1]);
    func_80281FF4(&D_80287728[2]);
    func_80281FF4(&D_80287728[3]);
    D_80287740 = 0;
    D_80287744 = 0.0f;
    D_80287748 = 0.0f;
    D_8028774C[0] = 0;
    D_8028774C[1] = 0;
    //D_8028774E = 0;
    //D_8028774E = 0;
    D_80287700[0] = D_80150130[0];
    D_802876D0 = 0;
    D_802876D2 = 0;
    D_802876D4 = 0;
    func_8028240C();
    //var_v0 = &D_80287998;
    //var_a0 = &D_80287818;

    for (i = 0; i < 32; i++) {
        D_80287818[i].unk0 = -1;
        D_80287998[i].unk0 = -1;
    }


    //do {
    //    var_v0 += 0xC;
    //    var_a0 += 0xC;
    //    var_a0->unk-C = -1;
    //    var_v0->unk-C = -1;
    //} while ((u32) var_v0 < (u32) &D_80287B18);
    //var_s0 = &D_8028775C;
    //var_s1 = &D_80287750;

    for (i = 0; i < 10; i++) {
        func_80281FDC(D_80287750[i].unk0);
        func_80281FF4(D_80287750[i].unkC);
    }

    //do {
    //    func_80281FDC(var_s1);
    //    func_80281FF4(var_s0);
    //    var_s0 += 0x14;
    //    var_s1 += 0x14;
    //} while (var_s0 != &D_80287824);
    D_802856C0 = 0.0f;
    if (gGamestate == 5) {
        D_802856B0 = 120.0f;
        D_802856B4 = 12.0f;
        D_802856B8 = 120.0f;
        return;
    }
    D_802856B0 = 98.0f;
    D_802856B4 = 12.0f;
    D_802856B8 = 52.0f;
}
//#else
//GLOBAL_ASM("asm/non_matchings/code_80281FA0/func_80283430.s")
//#endif

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_80282F44(?, s32 *, Camera *);                /* extern */
void func_80283100(s32 *, f32 *);                      /* extern */
s32 func_8028336C(s32 *, Camera *);                 /* extern */
void func_80284AE8(s32 *);                             /* extern */
//extern Vec3f D_802876EC;
extern f32 D_802876F8;
//extern f32 D_80287704;
//extern f32 D_80287710;
//extern f32 D_8028771C;

s32 func_80283648(Camera *camera) {
    s16 sp6E;
    s16 sp6C;
    f32 sp64;
    f32 sp58;
    f32 sp4C;
    f32 sp40;
    f32 sp38;
    f32 *sp34;
    f32 *sp30;
    s32 sp2C;
    f32 *temp_a1;
    f32 *temp_a1_2;
    f32 var_f0;
    f32 var_f2;
    s16 var_a3;
    s32 temp_t9;
    s8 temp_v1;

    func_80283428();
    vec3f_copy_dupe(&sp58, camera->pos);
    temp_a1 = camera->lookAt;
    sp34 = temp_a1;
    vec3f_copy_dupe(&sp4C, temp_a1);
    temp_a1_2 = camera->up;
    sp30 = temp_a1_2;
    vec3f_copy_dupe(&sp40, temp_a1_2);
    temp_v1 = func_8028336C(&D_802876E0, camera) & 0xFF;
    D_802876FC = temp_v1;
    if (temp_v1 != 0) {
        vec3f_copy_dupe(&D_802876E0[12], camera->pos);
        vec3f_copy_dupe((f32 *) &D_802876E0, sp34);
        func_80284AE8(&D_802876E0);
        func_80282454(&D_802876E0[12], (f32 *) &D_802876E0, &sp64, &sp6E, &sp6C);
        var_a3 = sp6E;
        if (var_a3 >= 0x3800) {
            var_a3 = 0x3800;
        }
        if (var_a3 < -0x37FF) {
            var_a3 = -0x3800;
        }
        if ((var_a3 == 0x3800) || (sp6E = var_a3, (var_a3 == -0x3800))) {
            sp6E = var_a3;
            func_80282504(&D_802876E0[12], (f32 *) &D_802876E0, sp64, var_a3, (s16) (s32) sp6C);
        }
        var_f2 = D_802876F8;
        if (var_f2 > 65536.0f) {
            var_f2 -= 65536.0f;
        }
        if (var_f2 < -65536.0f) {
            var_f2 += 65536.0f;
        }
        D_802876F8 = var_f2;
        var_f0 = var_f2;
        if (var_f2 < 0.0f) {
            var_f0 = 65536.0f + var_f2;
        }
        temp_t9 = (u32) var_f0 & 0xFFFF;
        sp2C = temp_t9;
        sp38 = sins((u16) temp_t9);
        camera->up[0] = coss((u16) sp6C) * sp38;
        camera->up[1] = coss(unksp2E);
        sp38 = sins(unksp2E);
        camera->up[2] = sins((u16) sp6C) * -sp38;
        vec3f_copy_dupe(camera->pos, &D_802876E0[12]);
        vec3f_copy_dupe(sp34, (f32 *) &D_802876E0);
        if ((gGamestate == 9) && (gIsMirrorMode != 0)) {
            camera->pos[0] = -camera->pos[0];
            camera->lookAt[0] = -camera->lookAt[0];
        }
    }
    func_80282F44(0, &D_802876E0, camera);
    func_80282F44(1, &D_802876E0, camera);
    func_80283100(&D_802876E0, D_80150130);
    vec3f_copy_dupe(&D_80287700[4], camera->pos);
    vec3f_copy_dupe(&D_80287700[1], sp34);
    vec3f_copy_dupe(&D_80287700[7], sp30);
    return D_802876D8;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80281FA0/func_80283648.s")
#endif

void func_80283968(s32 arg0) {
    func_8028100C(-0xC6C, 0xD2, -0x1EF);
}

void func_80283994(s32 arg0) {
    func_80280FFC();
}

void func_802839B4(s32 arg0) {
    D_802856B8 = 52.0f;
}

void func_802839CC(s32 arg0) {
    D_802856B8 = 0.0f;
}

void func_802839E0(s32 arg0) {
    func_80092C80();
}

void func_80283A00(s32 arg0) {
    if (D_800DC5E4 == 0) {
        play_sound2(0x49009009);
    }
}

void func_80283A34(s32 arg0) {
    func_800CA0CC();
}

void func_80283A54(s32 arg0) {
    play_sound2(0x49009014);
}

void func_80283A7C(s32 arg0) {
    play_sound2(0x4900801E);
}

void func_80283AA4(s32 arg0) {
    play_sound2(0x4900801F);
}

void func_80283ACC(s32 arg0) {
    play_sound2(0x49008020);
}

void func_80283AF4(s32 arg0) {
    play_sound2(0x49008021);
}

void func_80283B1C(s32 arg0) {
    play_sound2(0x49008022);
}

void func_80283B44(s32 arg0) {
    play_sound2(0x49008023);
}

void func_80283B6C(s32 arg0) {
    func_800CA0B8();
    func_800C9060(0, 0x19009005);
    func_800CA0A0();
}

void func_80283BA4(s32 arg0) {
    func_800CA0B8();
    func_800C90F4(0, (gPlayerFour->characterId * 0x10) + 0x29008004);
    func_800CA0A0();
}

void func_80283BF0(s32 arg0) {
    func_800C8EF8(0x1A);
}

void func_80283C14(s32 arg0) {
    func_800C8EF8(0x1B);
}

void func_80283C38(s32 arg0) {
    func_800CB134();
}

void func_80283C58(s32 arg0) {
    func_800CB14C();
}

void func_80283C78(s32 arg0) {
    if (D_800DC5E4 == 0) {
        func_800C8EF8(0x1C);
    }
}

void func_80283CA8(s32 arg0) {
    func_800CA008(0, 3);
}

void func_80283CD0(s32 arg0) {
    if (D_800DC5E4 == 0) {
        func_800CA008(0, 2);
    }
}

void func_80283D04(s32 arg0) {
    play_sound2(0x49008026);
}

void func_80283D2C(Camera *camera) {
    D_802856B8 = 120.0f;
    func_802832C4(&func_80283CA8, camera, 0, 0);
    func_802832C4(&func_80283A34, camera, 1, 1);
    func_802832C4(&func_80283BF0, camera, 0, 0);
    func_802832C4(&func_80283A7C, camera, 0x2D, 0x2D);
    func_802832C4(&func_80283A7C, camera, 0x41, 0x41);
    func_802832C4(&func_80283A7C, camera, 0x46, 0x46);
    func_802832C4(&func_80283A7C, camera, 0x5E, 0x5E);
    func_802832C4(&func_80283A7C, camera, 0x6E, 0x6E);
    func_802832C4(&func_80283A7C, camera, 0x82, 0x82);
    func_802832C4(&func_80283A7C, camera, 0x98, 0x98);
    func_802832C4(&func_80283A7C, camera, 0xA0, 0xA0);
    func_802832C4(&func_80283994, camera, D_80285D14 - 0x3C, D_80285D14 - 0x3C);
    func_80282D90(camera, &D_802856DC, &D_80285718, 0);
}

void func_80283EA0(Camera *camera) {
    func_80282D90(camera, &D_80285754, &D_80285784, 0);
}

void func_80283ED0(Camera *camera) {
    vec3f_copy_dupe(camera->pos, gPlayerTwo->pos);
}

void func_80283EF8(Camera *camera) {
    func_802821A0(&camera->pos[0], gPlayerTwo->pos[0], 0.12f);
    func_802821A0(&camera->pos[1], gPlayerTwo->pos[1], 0.12f);
    func_802821A0(&camera->pos[2], gPlayerTwo->pos[2], 0.12f);
}

void func_80283F6C(Camera *camera) {
    func_802832C4(&func_80283ED0, camera, 0, 0);
    func_802832C4(&func_80283EF8, camera, 0, -1);
    func_80282E58(camera, &D_802857B4, 0);
}

void func_80283FCC(Camera *camera) {
    vec3f_copy_dupe(camera->pos, gPlayerThree->pos);
}

void func_80283FF4(Camera *camera) {
    func_802821A0(&camera->pos[0], gPlayerThree->pos[0], 0.12f);
    func_802821A0(&camera->pos[1], gPlayerThree->pos[1], 0.12f);
    func_802821A0(&camera->pos[2], gPlayerThree->pos[2], 0.12f);
}

void func_80284068(Camera *camera) {
    func_802832C4(&func_80283FCC, camera, 0, 0);
    func_802832C4(&func_80283FF4, camera, 0, -1);
    func_80282E58(camera, &D_802857CC, 0);
}

void func_802840C8(Camera *camera) {
    func_802832C4(&func_80283C14, camera, 5, 5);

    switch(D_802876D8) {
        case 2:
            func_80283EA0(camera);
            break;
        case 3:
            func_80283F6C(camera);
            break;
        case 4:
            func_80284068(camera);
            break;
    }
}

void func_80284154(Camera *camera) {
    func_80282D90(camera, &D_80285910, &D_80285928, 0);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
//s32 func_802821A0(void *, f32, ?); // extern
extern s32 D_80165C20;
extern s32 D_80183EAC;
extern f32 D_80287478;

void func_80284184(s32 *arg0) {
    f32 temp_f0;

    temp_f0 = arg0->unk10;
    func_802821A0(arg0 + 4, temp_f0 + ((*(&D_80165C20 + (D_80183EAC * 0xE0)) - temp_f0) * D_80287478), 0x3F000000);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80281FA0/func_80284184.s")
#endif

void func_802841E8(Camera *camera) {
  func_80282E58(camera, &D_80285940, 0);
  vec3f_set_dupe(camera->pos, -3202.0f, 90.0f, -478.0f);
}

void func_8028422C(Camera *camera) {
    func_802832C4(&func_80283AF4, camera, 6, 6);
    func_802832C4(&func_80283B44, camera, 0x1E, 0x1E);
    func_802832C4(&func_802841E8, camera, 0, 0);
    func_802832C4(&func_80284184, camera, 6, -1);
}

void func_802842A8(s32 arg0) {
    func_80282D90(arg0, &D_802858B0, &D_802858C8, 0);
}

void func_802842D8(s32 arg0) {
    func_80282D90(arg0, &D_802857F0, &D_80285850, 0);
}

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
static ? D_802858E0;                                /* unable to generate initializer */
static ? D_802858F8;                                /* unable to generate initializer */
static ? D_80285A00;                                /* unable to generate initializer */

void func_80284308(Camera *camera) {
    s32 sp30;
    Player *temp_v1;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f2;
    void *temp_v0;

    sp30.unk0 = D_80285A00.unk0;
    sp30.unk4 = (s32) D_80285A00.unk4;
    sp30.unkC = (s32) D_80285A00.unkC;
    sp30.unk8 = (s32) D_80285A00.unk8;
    func_802832C4(func_80283A54, (s32) camera, 0x008C, 0x008C);
    func_80282D90((s32) camera, (s32) &D_802858E0, (s32) &D_802858F8, 0);
    temp_v0 = *(sp30 + (D_802874F5 * 4));
    temp_v1 = gPlayerOne;
    temp_f0 = temp_v0->unk14 - temp_v1->pos[0];
    temp_f12 = temp_v0->unk1C - temp_v1->pos[2];
    temp_f2 = temp_v0->unk18 - temp_v1->pos[1];
    camera->lookAt[0] += temp_f0;
    camera->pos[0] += temp_f0;
    camera->lookAt[2] += temp_f12;
    camera->pos[2] += temp_f12;
    camera->pos[1] += temp_f2;
    camera->lookAt[1] += temp_f2;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80281FA0/func_80284308.s")
#endif

void func_80284418(s32 arg0) {
    func_802832C4(&func_80283B1C, arg0, 0x52, 0x52);
    func_802832C4(&func_80283B1C, arg0, 0x48, 0x48);
    func_802832C4(&func_80283B1C, arg0, 0x3D, 0x3D);
    func_80282D90(arg0, &D_80285A10, &D_80285A4C, 0);
}

void func_80284494(s32 arg0) {
    func_802832C4(&func_80283ACC, arg0, 0x1E, 0x1E);
    func_802832C4(&func_80283968, arg0, 0, 0);
    func_80282D90(arg0, &D_80285A88, &D_80285AB8, 0);
}

void func_802844FC(s32 arg0) {
    func_802832C4(&func_80283AA4, arg0, 0x3B, 0x3B);
    func_80282D90(arg0, &D_80285AE8, &D_80285B00, 0);
}

void func_8028454C(s32 arg0) {
    func_802832C4(&func_80283CA8, arg0, 0, 0);
    func_802832C4(&func_80283A34, arg0, 1, 1);
    func_802832C4(&func_80283C38, arg0, 0, 0);
    func_802832C4(&func_80283994, arg0, 0x3C, 0x3C);
    func_80282D90(arg0, &D_80285B18, &D_80285B54, 0);
}

void func_802845EC(s32 arg0) {
    func_80282D90(arg0, &D_80285B90, &D_80285BA8, 0);
}

void func_8028461C(s32 arg0) {
    func_80283240(1);
    func_80283B6C(arg0);
}

void func_80284648(s32 arg0) {
    func_802832C4(&func_802845EC, arg0, 0, 0);
    func_802832C4(&func_8028461C, arg0, 0x110, 0x110);
    func_802832C4(&func_80283BA4, arg0, 0x115, 0x115);
}

UNUSED void func_802846AC(void) {

}

void func_802846B4(s32 arg0) {
    func_80282D90(arg0, &D_80285C38, &D_80285C74, 0);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
//s32 func_80282D90(? *, ? *, ?); // extern
extern s32 D_80285CB0;
extern s32 D_80285CE0;
extern f32 D_8028747C;

// What does this even do?
void func_802846E4(Camera *camera) {
    //f32 temp_f0;

    func_80282D90(camera, &D_80285CB0, &D_80285CE0, 0);
    //temp_f0 = D_8028747C;
    camera->lookAt[0] += (gPlayerFour->pos[0] - -2796.0f);
    camera->lookAt[1] += (gPlayerFour->pos[1] - -29.0f);
    camera->lookAt[2] += (gPlayerFour->pos[2] - -97.0f);
    camera->pos[0] += (gPlayerFour->pos[0] - -2796.0f);
    camera->pos[1] += (gPlayerFour->pos[1] - -29.0f);
    camera->pos[2] += (gPlayerFour->pos[2] - -97.0f);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80281FA0/func_802846E4.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit bece1d6db17040749f77dbbd090363cc6fb926f9
void func_80280268(u8);                                /* extern */
static ? D_80286A04;                                /* unable to generate initializer */
static ? D_80286A10;                                /* unable to generate initializer */
static u16 D_80286B34[0x14] = {
    0x0096,
    0x00F3,
    0x00F3,
    0x00F3,
    0x00F3,
    0x00F3,
    0x00F3,
    0x00F3,
    0x00F3,
    0x00F3,
    0x00F3,
    0x00F3,
    0x00F3,
    0x00F3,
    0x00F2,
    0x00F2,
    0x00F2,
    0x00F9,
    0x00F0,
    0,
};
f32 D_802856B4 = 12.0f;

void func_802847CC(s32 arg0) {
    u16 sp2E;
    u16 sp2C;
    s32 sp24;
    f32 temp_f4;
    s16 temp_a2;
    s16 temp_a2_2;
    s32 var_t9;
    u16 temp_v0;
    u16 temp_v0_5;
    u8 temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;

    temp_f4 = D_802856B4;
    temp_v0 = *(&D_80286A10 + (D_800DC5E4 * 0x10));
    if ((M2C_ERROR(cfc1) & 0x78) != 0) {
        if ((M2C_ERROR(cfc1) & 0x78) == 0) {
            var_t9 = (s32) (temp_f4 - 2.1474836e9f) | 0x80000000;
        } else {
            goto block_3;
        }
    } else {
        var_t9 = (s32) temp_f4;
        if (var_t9 < 0) {
block_3:
            var_t9 = -1;
        }
    }
    sp2E = (temp_v0 - var_t9) - 0xA;
    sp2C = temp_v0;
    func_802832C4(func_80283CD0, arg0, 0, 0);
    func_802832C4(func_80283A00, arg0, 8, 8);
    func_802832C4(func_80283C78, arg0, 0x0095, 0x0095);
    func_802832C4(func_80282434, arg0, 0, 0);
    temp_v0_2 = *(&D_80286A04 + (D_800DC5E4 * 0x10));
    switch (temp_v0_2) {                            /* irregular */
    case 1:
        func_802832C4(func_802839CC, arg0, 0, -1);
        temp_a2 = sp2E - 0x14;
        func_802832C4(func_802839E0, arg0, temp_a2, temp_a2);
        break;
    case 2:
        func_802832C4(func_802839B4, arg0, 0, 0);
        func_802832C4(func_80283D04, arg0, 0x00F7, 0x00F7);
        temp_v0_3 = (D_800DC5E4 * 0x10) + &D_80286A04;
        func_80282D90(arg0, temp_v0_3->unk4, temp_v0_3->unk8, 0);
        break;
    default:
        func_802832C4(func_802839B4, arg0, 0, 0);
        sp24 = (s32) sp2E;
        func_802832C4(func_802839CC, arg0, (s16) sp2E, (s16) sp2E);
        temp_a2_2 = sp2E - 0x14;
        func_802832C4(func_802839E0, arg0, temp_a2_2, temp_a2_2);
        temp_v0_4 = (D_800DC5E4 * 0x10) + &D_80286A04;
        func_80282D90(arg0, temp_v0_4->unk4, temp_v0_4->unk8, 0);
        break;
    }
    if (gCCSelection == CC_EXTRA) {
        sp2C = D_80286B34[D_800DC5E4];
    }
    if (sp2C == D_802876D2) {
        temp_v0_5 = D_800DC5E4;
        if (*((temp_v0_5 * 0x10) + &D_80286A04) != 2) {
            func_80280268(((temp_v0_5 * 0x10) + &D_80286A04)->unk11);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80281FA0/func_802847CC.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
struct _struct_D_80286B5C_0x8 {
    /* 0x0 */ void (*unk0)(Camera*);                          /* inferred */
    /* 0x4 */ s16 unk4;                             /* inferred */
    /* 0x6 */ s16 pad;
};                                                  /* size = 0x8 */

void func_802847CC();                                  /* extern */
extern struct _struct_D_80286B5C_0x8 *D_80285D10[];                               /* unable to generate initializer */
extern struct _struct_D_80286B5C_0x8 *D_80285D58[];                               /* unable to generate initializer */
//static struct _struct_D_80286B5C_0x8 D_80286B5C[2] = { { func_802847CC, 0x7FFF }, { NULL, 0 } };
extern struct _struct_D_80286B5C_0x8 *D_80286B5C[];

void func_80284AE8(struct credits_data_1FA0 *arg0) {
    //s16 temp_v0_3;
    //struct _struct_D_80286B5C_0x8 *temp_v0_2;
    s16 sp1A;
    struct _struct_D_80286B5C_0x8 *t1;
    //struct _struct_D_80286B5C_0x8 *t2;
    //struct _struct_D_80286B5C_0x8 *t3;
    //struct _struct_D_80286B5C_0x8 *t4;
    //u8 temp_v0;

    //temp_v0 = arg0->unk1C;
    switch (arg0->unk1C) {                              /* irregular */
    case 2:
        t1 = &D_80285D10[D_802876D0];
        t1->unk0(t1->unk4);
        //sp1A = t1->unk4;
        break;
    case 3:
        t1 = &D_80285D10[D_802876D0];
        //sp1A = t1->unk4;
        t1->unk0(t1->unk4);
        //goto block_8;
        break;
    case 4:
        t1 = &D_80285D10[D_802876D0];
        //sp1A = t2->unk4;
        t1->unk0(t1->unk4);
        //goto block_8;
        break;
    case 5:
        t1 = &D_80285D58[D_802876D0];
        //sp1A = t3->unk4;
        t1->unk0(t1->unk4);
        func_80283C58((s32) arg0);
        //goto block_8;
        break;
    case 6:
        t1 = &D_80286B5C[D_802876D0];
        //sp1A = t1->unk4;
        t1->unk0(t1->unk4);
        break;
        //goto block_8;
    }
//block_8:
        if ((sp1A != 0) && ((D_802876D2 & 0xC000) == 0)) {
            
            if (D_802876D2 < 0x3FFF) {
                D_802876D2++;
            }
            if (sp1A == D_802876D2) {
                D_802876D2 = 0;
                D_802876D0++;
                func_8028240C();
                //return;
            }
        } else {
            if (D_802876D2 & 0x4000) {
                D_802876D2 = 0;
                func_8028240C();
            } else {
                D_802876D8 = 0;
                D_802876D0 = 0;
                D_802876D2 = 0;
                func_8028240C();
            }
        }
        //break;
    //}
}
#else
GLOBAL_ASM("asm/non_matchings/code_80281FA0/func_80284AE8.s")
#endif

void func_80284CC0(void) {
    f32 temp_f0;
    f32 temp_f14;

    temp_f14 = D_802856B0 - D_802856C0;
    if (temp_f14 < 0.0f) {
        temp_f14 = 0.0f;
    }
    temp_f0 = D_802856B0 + D_802856C0;
    // Note that this MUST be on one line. All hail significant whitespace in C!
    do {if (temp_f0 > 240.0f) { temp_f0 = 239.0f; } } while (0);

    gDPPipeSync(gDisplayListHead++);
    gDPSetRenderMode(gDisplayListHead++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
    gDPSetCycleType(gDisplayListHead++, G_CYC_FILL);
    gDPSetFillColor(gDisplayListHead++, (GPACK_RGBA5551(0, 0, 0, 1) << 16 | GPACK_RGBA5551(0, 0, 0, 1)));
    gDPFillRectangle(gDisplayListHead++, 0, 0, 319, (s32)temp_f14);
    gDPFillRectangle(gDisplayListHead++, 0, (s32)temp_f0, 319, 239);
    gDPSetCycleType(gDisplayListHead++, G_CYC_1CYCLE);
    func_802822AC(&D_802856C0, D_802856B8, D_802856BC / D_802856B4);
}

