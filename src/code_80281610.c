#include <ultra64.h>
#include <macros.h>
#include <common_structs.h>

extern Camera cameras[];

extern u16 func_802B7830(f32, f32);

void func_80281610(void) {
    Camera *camera = &cameras[0];
    //f32 sp1C;
    f32 temp_f12;
    f32 temp;
    f32 temp_f14;

    func_80283648(camera);
    
    temp_f12 = camera->unk - camera->pos[0];
    temp = camera->unk1 - camera->pos[1];
    temp_f14 = camera->unk2 - camera->pos[2];
    camera->rotX2 = func_802B7830(temp_f12, temp_f14);
    camera->rotX = func_802B7830(sqrtf((temp_f12 * temp_f12) + (temp_f14 * temp_f14)), temp);
    camera->rotY = 0;
}

// guPerspective params
extern f32 D_80150130, D_80150148, D_8015014C, D_80150150;

// rodata
extern const f32 D_80286B90, D_80286B94, D_80286B98, D_80286B9C, D_80286BA0;

void func_802816B8(void) {
    cameras[0].pos[0] = D_80286B90;
    cameras[0].pos[1] = 19.0f;
    cameras[0].pos[2] = D_80286B94;
    cameras[0].unk = D_80286B98;
    cameras[0].unk1 = 21.0f;
    cameras[0].unk2 = -528.0f;
    cameras[0].angleX = 0.0f;
    cameras[0].angleY = 1.0f;
    cameras[0].angleZ = 0.0f;
    D_80150130 = 40.0f;
    D_80150148 = D_80286B9C;
    D_80150150 = 3.0f;
    D_8015014C = D_80286BA0;
    func_80283430();
}
