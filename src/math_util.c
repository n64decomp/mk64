#include <ultra64.h>
#include <macros.h>
#include <types.h>
#include <common_structs.h>

f32 func_802B4F60(s32 arg0, f32 arg2, f32 arg3); // static
f32 func_802B6434(f32, f32, f32 *, f32 *); // static
s16 func_802B7830(f32 y, f32 x);


GLOBAL_ASM("asm/non_matchings/math_util/code_802B4F60.s")


f32 func_802B51E8(struct UnkStruct_802B51E8 *arg0, struct UnkStruct_802B51E8 *arg1) {
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;

    temp_f2 = arg1->unk0 - arg0->unk0;
    temp_f12 = arg1->unk4 - arg0->unk4;
    temp_f14 = arg1->unk8 - arg0->unk8;
    return (temp_f2 * temp_f2) + (temp_f12 * temp_f12) + temp_f14 + temp_f14;
}

u32 func_802B5224(Vec3f arg0, Vec3f arg1) {
    f32 temp_v1;
    f32 temp_v2;
    temp_v1 = arg1[0] - arg0[0];
    temp_v2 = arg1[2] - arg0[2];

    return func_802B7830(temp_v1, temp_v2);
}

u32 func_802B5258(Vec3f arg0, Vec3s arg1) {
    f32 temp_v1;
    f32 temp_v2;
    temp_v1 = arg1[0] - arg0[0];
    temp_v2 = arg1[2] - arg0[2];
    
    return func_802B7830(temp_v1, temp_v2);
}

void load_giant_egg(struct UnkStruct_802B51E8 *arg0, f32 arg1, f32 arg2, f32 arg3) {
    arg0->unk0 = arg1;
    arg0->unk4 = arg2;
    arg0->unk8 = arg3;
}

void func_802B52BC(struct UnkStruct_802B52BC *arg0, s16 arg1, s16 arg2, s16 arg3) {
    arg0->unk0 = arg1;
    arg0->unk2 = arg2;
    arg0->unk4 = arg3;
}

// These functions have bogus return values.
// Disable the compiler warning.
#pragma GCC diagnostic push

#ifdef __GNUC__
#if defined(__clang__)
  #pragma GCC diagnostic ignored "-Wreturn-stack-address"
#else
  #pragma GCC diagnostic ignored "-Wreturn-local-addr"
#endif
#endif

void *vec3f_copy(Vec3f dest, Vec3f src) {
    dest[0] = src[0];
    dest[1] = src[1];
    dest[2] = src[2];
    return &dest; //! warning: function returns address of local variable
}

void func_802B5304(Vec3s dest, Vec3s src) {
    dest[0] = src[0];
    dest[1] = src[1];
    dest[2] = src[2];
}

void *func_802B5320(Vec3f dest, f32 x, f32 y, f32 z) {
    dest[0] = x;
    dest[1] = y;
    dest[2] = z;
    return &dest;
}
/*
void func_802B5350(void *arg0, void *arg1) {
    s32 temp_v0;
    void *temp_a2;
    void *temp_v1;
    void *phi_a2;
    void *phi_v1;
    s32 phi_v0;

    phi_a2 = arg0;
    phi_v1 = arg1;
    phi_v0 = 0;
    do {
        temp_v0 = phi_v0 + 1;
        temp_v1 = phi_v1 + 0x10;
        temp_v1->unk-10 = (f32) phi_a2->unk0;
        temp_a2 = phi_a2 + 0x10;
        temp_v1->unk-C = (f32) phi_a2->unk4;
        temp_v1->unk-8 = (f32) temp_a2->unk-8;
        temp_v1->unk-4 = (f32) temp_a2->unk-4;
        phi_a2 = temp_a2;
        phi_v1 = temp_v1;
        phi_v0 = temp_v0;
    } while (temp_v0 != 4);
}
*/
GLOBAL_ASM("asm/non_matchings/math_util/func_802B5350.s")
/*
void func_802B5398(void *arg0, s32 *arg1, s32 arg2) {
    void *temp_a0;
    s32 *phi_a1;
    void *phi_a0;
    s32 phi_a2;

    phi_a1 = arg1;
    phi_a0 = arg0;
    phi_a2 = arg2 - 1;
    if (arg2 > 0) {
        do {
            temp_a0 = phi_a0 + 4;
            temp_a0->unk-4 = (s32) *phi_a1;
            phi_a1 += 4;
            phi_a0 = temp_a0;
            phi_a2 += -1;
        } while ((phi_a2 > 0) != 0);
    }
}
*/
GLOBAL_ASM("asm/non_matchings/math_util/func_802B5398.s")
/*
void func_802B53C8(struct UnkStruct_802B53C8 *arg0) {
    s32 temp_v0;
    s32 phi_v0;

    phi_v0 = 0;
    do {
        if (phi_v0 == 0) {
            arg0->unk0 = 1.0f;
        } else {
            arg0->unk0 = 0.0f;
        }
        if (phi_v0 == 1) {
            arg0->unk4 = 1.0f;
        } else {
            arg0->unk4 = 0.0f;
        }
        if (phi_v0 == 2) {
            arg0->unk8 = 1.0f;
        } else {
            arg0->unk8 = 0.0f;
        }
        if (phi_v0 == 3) {
            arg0->unkC = 1.0f;
        } else {
            arg0->unkC = 0.0f;
        }
        temp_v0 = phi_v0 + 1;
        phi_v0 = temp_v0;
        arg0 += 0x10;
    } while (temp_v0 != 4);
}
*/


GLOBAL_ASM("asm/non_matchings/math_util/code_cont.s")

