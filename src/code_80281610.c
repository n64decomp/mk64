#include <ultra64.h>
#include <macros.h>

// guLookAt params
extern f32 D_801646F0, D_801646F4, D_801646F8, D_801646FC,
           D_80164700, D_80164704, D_80164708, D_8016470C, D_80164710;

extern u16 D_80164714, D_80164716;
extern u16 D_80164718;

extern u16 func_802B7830(f32, f32);

void func_80281610(void) {
    f32 sp1C;
    f32 temp_f12;
    f32 temp;
    f32 temp_f14;

    func_80283648(&D_801646F0);
    temp_f12 = D_801646FC - D_801646F0;
    temp = D_80164700 - D_801646F4;
    temp_f14 = D_80164704 - D_801646F8;
    D_80164716 = func_802B7830(temp_f12, temp_f14);
    D_80164714 = func_802B7830(sqrtf((temp_f12 * temp_f12) + (temp_f14 * temp_f14)), temp);
    D_80164718 = 0;
}

// guPerspective params
extern f32 D_80150130, D_80150148, D_8015014C, D_80150150;

// rodata that has not been found
extern const f32 D_80286B90, D_80286B94, D_80286B98, D_80286B9C, D_80286BA0;

// Two functions have evidence that this weird thing here is 8 floats,
// but over here they need to be array-indexed to match
void func_802816B8(void) {
    (((f32 *)(&D_801646F0))[0]) = D_80286B90;
    (((f32 *)(&D_801646F0))[1]) = 19.0f;
    (((f32 *)(&D_801646F0))[2]) = D_80286B94;
    (((f32 *)(&D_801646F0))[3]) = D_80286B98;
    (((f32 *)(&D_801646F0))[4]) = 21.0f;
    (((f32 *)(&D_801646F0))[5]) = -528.0f;
    (((f32 *)(&D_801646F0))[6]) = 0.0f;
    (((f32 *)(&D_801646F0))[7]) = 1.0f;
    (((f32 *)(&D_801646F0))[8]) = 0.0f;
    D_80150130 = 40.0f;
    D_80150148 = D_80286B9C;
    D_80150150 = 3.0f;
    D_8015014C = D_80286BA0;
    func_80283430();
}
