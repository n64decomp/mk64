#include <ultra64.h>
#include <macros.h>
#include <common_structs.h>
#include <types.h>

#include "code_80086E70.h"
#include "camera.h"
#include "objects.h"
#include "math_util.h"
#include "math_util_2.h"
#include "racing/memory.h"
#include "code_80071F00.h"
#include "collision.h"
#include "audio/external.h"
#include "variables.h"
#include "main.h"

void func_80086E70(s32 objectIndex) {
    gObjectList[objectIndex].unk_0AE = 1;// * 0xE0)) = 1;
    set_object_flag_unk_054_false(objectIndex, 8);
}

void func_80086EAC(s32 objectIndex, s32 arg1, s16 arg2) {
    gObjectList[objectIndex].unk_0DD = arg1;
    gObjectList[objectIndex].unk_0AE = arg2;
    set_object_flag_unk_054_false(objectIndex, 8);
}

void func_80086EF0(s32 objectIndex) {
    func_80086E70(objectIndex);
}

void func_80086F10(s32 objectIndex, s32 arg1, u16 arg2[][4]) {
    func_80086E70(objectIndex);
    gObjectList[objectIndex].unk_0DE = arg1;
    gObjectList[objectIndex].unk_080 = (u16 *) arg2;
}

void func_80086F60(s32 objectIndex) {
    gObjectList[objectIndex].unk_0AE = 0;
    gObjectList[objectIndex].unk_0DD = 0;
    gObjectList[objectIndex].unk_0DE = 0;
    set_object_flag_unk_054_false(objectIndex, 8);
}

bool func_80086FA4(s32 objectIndex) {
    bool ret = FALSE;
    if (gObjectList[objectIndex].unk_0AE == 0) {
        ret = TRUE;
    }
    return ret;
}

void func_80086FD4(s32 objectIndex) {
    set_object_flag_unk_054_false(objectIndex, 8);
    gObjectList[objectIndex].unk_0AE += 1;
}

void func_8008701C(s32 objectIndex, s32 arg1) {
    set_object_flag_unk_054_false(objectIndex, 8);
    gObjectList[objectIndex].unk_0AE = arg1;
}

s32 func_80087060(s32 objectIndex, s32 arg1) {
    s32 sp1C;

    sp1C = 0;
    if (is_obj_index_flag_unk_054_inactive(objectIndex, 8) != FALSE) {
        set_object_flag_unk_054_true(objectIndex, 8);
        gObjectList[objectIndex].unk_0B0 = arg1;
    }
    gObjectList[objectIndex].unk_0B0--;
    if (gObjectList[objectIndex].unk_0B0 < 0) {
        set_object_flag_unk_054_false(objectIndex, 8);
        sp1C = 1;
    }
    return sp1C;
}

s32 func_80087104(s32 objectIndex, u16 arg1) {
    s32 sp24;

    sp24 = 0;
    if (is_obj_index_flag_unk_054_inactive(objectIndex, 8) != FALSE) {
        set_object_flag_unk_054_true(objectIndex, 8);
        gObjectList[objectIndex].unk_0B0 = random_int(arg1);
    }
    gObjectList[objectIndex].unk_0B0--;
    if (gObjectList[objectIndex].unk_0B0 < 0) {
        set_object_flag_unk_054_false(objectIndex, 8);
        sp24 = 1;
    }
    return sp24;
}

s32 func_800871AC(s32 objectIndex, s32 arg1) {
    s32 sp24;

    sp24 = 0;
    if (is_obj_index_flag_unk_054_inactive(objectIndex, 8) != 0) {
        set_object_flag_unk_054_true(objectIndex, 8);
        gObjectList[objectIndex].unk_0B0 = (s16) arg1;
    }
    gObjectList[objectIndex].unk_0B0--;
    if (gObjectList[objectIndex].unk_0B0 < 0) {
        set_object_flag_unk_054_false(objectIndex, 8);
        func_80086FD4(objectIndex);
        sp24 = 1;
    }
    return sp24;
}

UNUSED void func_80087258(s32 objectIndex, UNUSED s32 arg1, f32 arg2) {
    gObjectList[objectIndex].unk_028[1] += arg2;
    gObjectList[objectIndex].unk_028[2] -= arg2;
}

UNUSED s32 func_80087294(s32 objectIndex, Player *player) {
    return func_80041770(player->pos[0], gObjectList[objectIndex].pos[0], player->pos[2], gObjectList[objectIndex].pos[2]);
}

s32 angle_between_object_camera(s32 objectIndex, Camera *camera) {
    return atan2s(gObjectList[objectIndex].pos[0] - camera->pos[0], gObjectList[objectIndex].pos[2] - camera->pos[2]);
}

u16 func_80087324(s32 objectIndex) {
    return -atan2s(gObjectList[objectIndex].unk_038[1], gObjectList[objectIndex].unk_038[2]);
}

s32 func_80087368(s32 objectIndex) {
    return atan2s(gObjectList[objectIndex].unk_038[0], gObjectList[objectIndex].unk_038[2]);
}

UNUSED void func_800873A4(s32 objectIndex) {
    gObjectList[objectIndex].unk_0BE[0] = func_800417B4(gObjectList[objectIndex].unk_0BE[0], func_80087324(objectIndex));
}

void func_800873F4(s32 objectIndex) {
    gObjectList[objectIndex].unk_0BE[1] = func_800417B4(gObjectList[objectIndex].unk_0BE[1], func_80087368(objectIndex));
}

UNUSED void func_80087444(s32 objectIndex) {
    gObjectList[objectIndex].unk_038[0] = gObjectList[objectIndex].unk_034 * sins(gObjectList[objectIndex].unk_0BE[1]);
}

UNUSED void func_8008748C(s32 objectIndex) {
    gObjectList[objectIndex].unk_038[1] = gObjectList[objectIndex].unk_034 * coss(gObjectList[objectIndex].unk_0BE[0]);
}

UNUSED void func_800874D4(s32 objectIndex) {
    gObjectList[objectIndex].unk_038[2] = gObjectList[objectIndex].unk_034 * coss(gObjectList[objectIndex].unk_0BE[1]);
}

void func_8008751C(s32 objectIndex) {
    gObjectList[objectIndex].unk_038[0] = gObjectList[objectIndex].unk_034 * sins(gObjectList[objectIndex].unk_0BE[1]);
    gObjectList[objectIndex].unk_038[2] = gObjectList[objectIndex].unk_034 * coss(gObjectList[objectIndex].unk_0BE[1]);
}

void func_8008757C(s32 objectIndex) {
    f32 sp24;

    sp24 = coss(gObjectList[objectIndex].unk_0BE[0]);
    gObjectList[objectIndex].unk_038[0] = (gObjectList[objectIndex].unk_034 * sp24) * sins(gObjectList[objectIndex].unk_0BE[1]);
    gObjectList[objectIndex].unk_038[1] = -gObjectList[objectIndex].unk_034 * sins(gObjectList[objectIndex].unk_0BE[0]);
    sp24 = coss(gObjectList[objectIndex].unk_0BE[0]);
    gObjectList[objectIndex].unk_038[2] = (gObjectList[objectIndex].unk_034 * sp24) * coss(gObjectList[objectIndex].unk_0BE[1]);
}

void func_80087620(s32 objectIndex) {
    gObjectList[objectIndex].unk_038[0] = gObjectList[objectIndex].unk_034 * sins(gObjectList[objectIndex].unk_0BE[1] + 0x8000);
    gObjectList[objectIndex].unk_038[2] = gObjectList[objectIndex].unk_034 * coss(gObjectList[objectIndex].unk_0BE[1] + 0x8000);
}

void func_800876A0(s32 objectIndex) {
    gObjectList[objectIndex].unk_028[0] += gObjectList[objectIndex].unk_034 * sins(gObjectList[objectIndex].unk_0BE[1]);
    gObjectList[objectIndex].unk_028[2] += gObjectList[objectIndex].unk_034 * coss(gObjectList[objectIndex].unk_0BE[1]);
}

void func_80087710(s32 objectIndex) {
    gObjectList[objectIndex].unk_028[0] += gObjectList[objectIndex].unk_038[0];
    gObjectList[objectIndex].unk_028[1] += gObjectList[objectIndex].unk_038[1];
    gObjectList[objectIndex].unk_028[2] += gObjectList[objectIndex].unk_038[2];
}

void func_8008775C(s32 objectIndex) {
    gObjectList[objectIndex].unk_028[0] += gObjectList[objectIndex].unk_038[0];
    gObjectList[objectIndex].unk_028[2] += gObjectList[objectIndex].unk_038[2];
}

UNUSED void func_80087798(s32 objectIndex) {
    gObjectList[objectIndex].unk_028[0] += gObjectList[objectIndex].unk_038[0];
}

void func_800877C4(s32 objectIndex) {
    gObjectList[objectIndex].unk_028[1] += gObjectList[objectIndex].unk_038[1];
}

UNUSED void func_800877F0(s32 objectIndex) {
    gObjectList[objectIndex].unk_028[2] += gObjectList[objectIndex].unk_038[2];
}

void func_8008781C(s32 arg0) {
    func_8008751C(arg0);
    func_8008775C(arg0);
}

void func_80087844(s32 arg0) {
    func_8008757C(arg0);
    func_80087710(arg0);
}

f32 func_8008786C(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    return (((arg4 - arg2) / (arg3 - arg1)) * (arg0 - arg1)) + arg2;
}

s32 func_8008789C(s32 objectIndex, s32 arg1) {
    s32 sp24;

    sp24 = 0;
    if (is_obj_index_flag_unk_054_inactive(objectIndex, 8) != 0) {
        set_object_flag_unk_054_true(objectIndex, 8);
        func_8008751C(objectIndex);
        gObjectList[objectIndex].unk_0B0 = arg1;
    }
    gObjectList[objectIndex].unk_0B0--;
    if (gObjectList[objectIndex].unk_0B0 < 0) {
        set_object_flag_unk_054_false(objectIndex, 8);
        sp24 = 1;
    } else {
        func_8008775C(objectIndex);
    }
    return sp24;
}

s32 func_80087954(s32 objectIndex, s32 arg1) {
    s32 sp24;

    sp24 = 0;
    if (is_obj_index_flag_unk_054_inactive(objectIndex, 8) != 0) {
        set_object_flag_unk_054_true(objectIndex, 8);
        func_80087620(objectIndex);
        gObjectList[objectIndex].unk_0B0 = arg1;
    }
    gObjectList[objectIndex].unk_0B0--;
    if (gObjectList[objectIndex].unk_0B0 < 0) {
        set_object_flag_unk_054_false(objectIndex, 8);
        sp24 = 1;
    } else {
        func_8008775C(objectIndex);
    }
    return sp24;
}

s32 func_80087A0C(s32 objectIndex, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
    s16 sp36;
    s16 temp_a0;
    s16 temp_v0;
    s32 sp2C;

    sp2C = 0;
    if (is_obj_index_flag_unk_054_inactive(objectIndex, 8) != 0) {
        set_object_flag_unk_054_true(objectIndex, 8);
        temp_v0 = arg2 - arg1;
        temp_a0 = arg4 - arg3;
        sp36 = sqrtf((temp_v0 * temp_v0) + (temp_a0 * temp_a0));
        gObjectList[objectIndex].unk_010[1] = 0.0f;
        gObjectList[objectIndex].unk_0BE[1] = atan2s(temp_v0, temp_a0);
        func_8008751C(objectIndex);
        gObjectList[objectIndex].unk_0B0 = sp36 / gObjectList[objectIndex].unk_034;
    }
    gObjectList[objectIndex].unk_0B0--;
    if (gObjectList[objectIndex].unk_0B0 < 0) {
        set_object_flag_unk_054_false(objectIndex, 8);
        sp2C = 1;
    } else {
        func_8008775C(objectIndex);
    }
    return sp2C;
}

s32 func_80087B84(s32 objectIndex, f32 arg1, f32 arg2) {
    s32 sp24;

    sp24 = 0;
    if (is_obj_index_flag_unk_054_inactive(objectIndex, 8) != 0) {
        set_object_flag_unk_054_true(objectIndex, 8);
        gObjectList[objectIndex].unk_038[1] = -arg1;
    }
    func_800877C4(objectIndex);
    if (gObjectList[objectIndex].pos[1] <= arg2) {
        set_object_flag_unk_054_false(objectIndex, 8);
        func_80086FD4(objectIndex);
        sp24 = 1;
    }
    return sp24;
}

s32 func_80087C48(s32 objectIndex, f32 arg1, f32 arg2, s32 arg3) {
    s32 sp24;

    sp24 = 0;
    if (is_obj_index_flag_unk_054_inactive(objectIndex, 8) != 0) {
        set_object_flag_unk_054_true(objectIndex, 8);
        gObjectList[objectIndex].unk_038[1] = arg1;
        gObjectList[objectIndex].unk_0B0 = (s16) arg3;
    }
    gObjectList[objectIndex].unk_0B0--;
    if (gObjectList[objectIndex].unk_0B0 < 0) {
        set_object_flag_unk_054_false(objectIndex, 8);
        func_80086FD4(objectIndex);
        sp24 = 1;
    } else {
        gObjectList[objectIndex].unk_038[1] -= arg2;
        func_800877C4(objectIndex);
    }
    return sp24;
}

s32 func_80087D24(s32 objectIndex, f32 arg1, f32 arg2, f32 arg3) {
    s32 sp24;

    sp24 = 0;
    if (is_obj_index_flag_unk_054_inactive(objectIndex, 8) != 0) {
        set_object_flag_unk_054_true(objectIndex, 8);
        gObjectList[objectIndex].unk_038[1] = arg1;
    }
    gObjectList[objectIndex].unk_038[1] -= arg2;
    func_800877C4(objectIndex);
    if (gObjectList[objectIndex].unk_028[1] <= arg3) {
        set_object_flag_unk_054_false(objectIndex, 8);
        gObjectList[objectIndex].unk_028[1] = arg3;
        func_80086FD4(objectIndex);
        sp24 = 1;
    }
    return sp24;
}

bool func_80087E08(s32 objectIndex, f32 arg1, f32 arg2, f32 arg3, s16 arg4, s32 arg5) {
    bool sp2C;
    UNUSED s32 pad;

    sp2C = FALSE;
    if (is_obj_index_flag_unk_054_inactive(objectIndex, 8) != 0) {
        set_object_flag_unk_054_true(objectIndex, 8);
        gObjectList[objectIndex].unk_028[2] = 0.0f;
        gObjectList[objectIndex].unk_028[1] = 0.0f;
        gObjectList[objectIndex].unk_028[0] = 0.0f;
        gObjectList[objectIndex].unk_034 = arg3;
        gObjectList[objectIndex].unk_038[1] = arg1;
        gObjectList[objectIndex].unk_0BE[1] = arg4;
        func_8008751C(objectIndex);
        gObjectList[objectIndex].unk_0B0 = arg5;
    }
    gObjectList[objectIndex].unk_0B0--;
    if (gObjectList[objectIndex].unk_0B0 < 0) {
        set_object_flag_unk_054_false(objectIndex, 8);
        func_80086FD4(objectIndex);
        sp2C = TRUE;
    } else {
        gObjectList[objectIndex].unk_038[1] -= arg2;
        func_80087710(objectIndex);
    }
    return sp2C;
}

UNUSED s32 func_80087F14(s32 objectIndex, f32 arg1, f32 arg2, f32 arg3, s16 arg4, s32 arg5) {
    s32 sp2C;
    UNUSED s32 stackPadding;

    sp2C = 0;
    if (is_obj_index_flag_unk_054_inactive(objectIndex, 8) != 0) {
        set_object_flag_unk_054_true(objectIndex, 8);
        gObjectList[objectIndex].unk_028[2] = 0.0f;
        gObjectList[objectIndex].unk_028[1] = 0.0f;
        gObjectList[objectIndex].unk_028[0] = 0.0f;
        gObjectList[objectIndex].unk_034 = arg3;
        gObjectList[objectIndex].unk_038[1] = arg1;
        gObjectList[objectIndex].unk_0BE[1] = arg4;
        func_8008751C(objectIndex);
        gObjectList[objectIndex].unk_0B0 = gVBlankTimer;
    }
    if (gObjectList[objectIndex].unk_028[1] <= arg5) {
        set_object_flag_unk_054_false(objectIndex, 8);
        func_80086FD4(objectIndex);
        sp2C = 1;
    } else {
        gObjectList[objectIndex].unk_038[1] -= arg2;
        func_80087710(objectIndex);
    }
    return sp2C;
}

void func_80088038(s32 objectIndex, f32 arg1, u16 arg2) {
    f32 temp_f4;
    f32 sp20;

    temp_f4 = gObjectList[objectIndex].unk_028[0];
    sp20    = gObjectList[objectIndex].unk_028[2];
    gObjectList[objectIndex].unk_0C4 += arg2;
    gObjectList[objectIndex].unk_028[0] = sins(gObjectList[objectIndex].unk_0C4) * arg1;
    gObjectList[objectIndex].unk_028[2] = coss(gObjectList[objectIndex].unk_0C4) * arg1;
    gObjectList[objectIndex].unk_038[0] = gObjectList[objectIndex].unk_028[0] - temp_f4;
    gObjectList[objectIndex].unk_038[2] = gObjectList[objectIndex].unk_028[2] - sp20;
}

UNUSED void func_800880DC(void) {

}

void func_800880E4(s32 objectIndex) {
    Vec4s *phi_v0;
    s32 someIndex;
    phi_v0 = gObjectList[objectIndex].unk_07C;
    for (someIndex = 0; someIndex < 2; someIndex++, phi_v0++) {
        D_80165760[someIndex] = (*phi_v0)[0];
        D_80165770[someIndex] = (*phi_v0)[1];
        D_80165780[someIndex] = (*phi_v0)[2];
    }
}

void func_80088150(s32 arg0) {
    gObjectList[arg0].unk_07C++;
}

void func_80088178(s32 objectIndex, s32 arg1) {
    s16 temp_a1;
    Objects *temp_v1;

    temp_v1 = &gObjectList[objectIndex];
    temp_a1 = atan2s(D_80165760[1] - D_80165760[0], D_80165780[1] - D_80165780[0]);
    temp_a1 -= temp_v1->unk_0BE[1];
    if (temp_a1 > 0) {
        temp_v1->unk_0BE[1] += (arg1 << 8);
    } else if (temp_a1 < 0) {
        temp_v1->unk_0BE[1] -= (arg1 << 8);
    }
}

// if the code is too ugly for you, then go fix it without tampering with the register allocations
void func_80088228(s32 objectIndex) {
  s16 *temp_v1;
  Objects *temp_v0;
  temp_v0 = &gObjectList[objectIndex];
  temp_v1 = temp_v0->unk_080[0];
  temp_v1 = &temp_v0->unk_080[0][1];
  (&gObjectList[objectIndex])->unk_084[9] = 0;
  (&gObjectList[objectIndex])->unk_07C = (s16 (*)[4]) temp_v1;
  (&gObjectList[objectIndex])->unk_084[8] = temp_v1[-1];
  (&gObjectList[objectIndex])->unk_028[0] = temp_v1[0];
  (&gObjectList[objectIndex])->unk_028[1] = temp_v1[1];
  temp_v0->unk_028[2] = temp_v1[2];
  func_80086FD4(objectIndex);
}


s32 func_800882B0(s32 objectIndex, s32 arg1) {
    s32 temp_f0;
    s32 temp_f12;
    s32 temp_f2;
    s32 var_v1;

    var_v1 = 0;
    temp_f0  = (s32)((D_80165760[1] - gObjectList[objectIndex].unk_028[0]) * (D_80165760[1] - gObjectList[objectIndex].unk_028[0]));
    temp_f12 = (s32)((D_80165770[1] - gObjectList[objectIndex].unk_028[1]) * (D_80165770[1] - gObjectList[objectIndex].unk_028[1]));
    temp_f2  = (s32)((D_80165780[1] - gObjectList[objectIndex].unk_028[2]) * (D_80165780[1] - gObjectList[objectIndex].unk_028[2]));
    if ((temp_f0 + temp_f12 + temp_f2 - (arg1 * arg1)) <= 0) {
        var_v1 = 1;
    }
    return var_v1;
}

void func_80088364(s32 objectIndex) {
    Objects *temp_v0;

    func_800880E4(objectIndex);
    func_80088178(objectIndex, 1);
    func_800876A0(objectIndex);
    if (func_800882B0(objectIndex, 0x0000000A) != 0) {
        temp_v0 = &gObjectList[objectIndex];
        temp_v0->unk_084[9] = (u16) temp_v0->unk_084[9] + 1;
        if (((u16)temp_v0->unk_084[9] + 3) == (u16) temp_v0->unk_084[8]) {
            temp_v0->unk_0AE += 1;
        } else {
            func_80088150(objectIndex);
        }
    }
}

void func_800883FC(s32 objectIndex) {
    switch (gObjectList[objectIndex].unk_0AE) {
    case 0:
        break;
    case 1:
        func_80088228(objectIndex);
        break;
    case 2:
        func_80088364(objectIndex);
        break;
    case 3:
        func_80086F60(objectIndex);
        break;
    }
}

s32 func_8008847C(s32 objectIndex) {
    s32 sp2C;

    sp2C = 0;
    set_object_flag_unk_054_false(objectIndex, 0x00800000);
    if (is_obj_index_flag_unk_054_active(objectIndex, 0x00000400) != 0) {
        func_802ADDC8(&D_8018C3B0, 10.0f, gObjectList[objectIndex].pos[0], 20.0f, gObjectList[objectIndex].pos[2]);
        if (D_8018C3B0.unk34 == 1) {
            sp2C = 1;
            set_object_flag_unk_054_true(objectIndex, 0x00800000);
        }
        gObjectList[objectIndex].unk_044 = func_802ABE30(gObjectList[objectIndex].pos[0], 0.0f, gObjectList[objectIndex].pos[2], D_8018C3B0.unk3A);
    }
    return sp2C;
}

s32 func_80088538(s32 objectIndex) {
    s32 sp2C;

    sp2C = 0;
    set_object_flag_unk_054_false(objectIndex, 0x00800000);
    if (is_obj_index_flag_unk_054_active(objectIndex, 0x00000400) != 0) {
        func_802ADDC8(&D_8018C3B0, 10.0f, gObjectList[objectIndex].pos[0], 20.0f, gObjectList[objectIndex].pos[2]);
        if (D_8018C3B0.unk34 == 1) {
            sp2C = 1;
            set_object_flag_unk_054_true(objectIndex, 0x00800000);
        }
        gObjectList[objectIndex].unk_044 = func_802ABE30(gObjectList[objectIndex].pos[0], 0.0f, gObjectList[objectIndex].pos[2], D_8018C3B0.unk3A);
        gObjectList[objectIndex].unk_0B8[0] = atan2s(D_8018C3B0.unk60[2], D_8018C3B0.unk60[1]) + 0x4000;
        gObjectList[objectIndex].unk_0B8[2] = atan2s(D_8018C3B0.unk60[0], D_8018C3B0.unk60[1]);
    }
    return sp2C;
}

s32 func_8008861C(s32 objectIndex) {
    s32 sp2C;

    sp2C = 0;
    set_object_flag_unk_054_false(objectIndex, 0x00800000);
    if (is_obj_index_flag_unk_054_active(objectIndex, 0x00000400) != 0) {
        func_802ADDC8(&D_8018C3B0, 10.0f, gObjectList[objectIndex].pos[0], 20.0f, gObjectList[objectIndex].pos[2]);
        if (D_8018C3B0.unk34 == 1) {
            sp2C = 1;
            set_object_flag_unk_054_true(objectIndex, 0x00800000);
        }
        gObjectList[objectIndex].unk_044 = func_802ABE30(gObjectList[objectIndex].pos[0], 0.0f, gObjectList[objectIndex].pos[2], D_8018C3B0.unk3A);
        gObjectList[objectIndex].unk_01C[0] = D_8018C3B0.unk60[0];
        gObjectList[objectIndex].unk_01C[1] = D_8018C3B0.unk60[1];
        gObjectList[objectIndex].unk_01C[2] = D_8018C3B0.unk60[2];
    }
    return sp2C;
}

void func_800886F4(s32 objectIndex) {
    func_802ADDC8(&D_8018C3B0, 10.0f, gObjectList[objectIndex].pos[0], 20.0f, gObjectList[objectIndex].pos[2]);
    if (D_8018C3B0.unk34 == 1) {
        set_object_flag_unk_054_true(objectIndex, 0x00800000);
        gObjectList[objectIndex].unk_044 = func_802ABE30(gObjectList[objectIndex].pos[0], 0.0f, gObjectList[objectIndex].pos[2], D_8018C3B0.unk3A);
        gObjectList[objectIndex].unk_0B8[0] = atan2s(D_8018C3B0.unk60[2], D_8018C3B0.unk60[1]) + 0x4000;
        gObjectList[objectIndex].unk_0B8[2] = atan2s(D_8018C3B0.unk60[0], D_8018C3B0.unk60[1]);
        return;
    }
    set_object_flag_unk_054_false(objectIndex, 0x00800000);
}

void func_800887C0(s32 objectIndex) {
    func_802ADDC8(&D_8018C3B0, 10.0f, gObjectList[objectIndex].pos[0], 20.0f, gObjectList[objectIndex].pos[2]);
    if (D_8018C3B0.unk34 == 1) {
        set_object_flag_unk_054_true(objectIndex, 0x00800000);
        gObjectList[objectIndex].unk_044 = func_802ABE30(gObjectList[objectIndex].pos[0], 0.0f, gObjectList[objectIndex].pos[2], D_8018C3B0.unk3A);
        gObjectList[objectIndex].unk_038[0] = D_8018C3B0.unk60[0];
        gObjectList[objectIndex].unk_038[1] = D_8018C3B0.unk60[1];
        gObjectList[objectIndex].unk_038[2] = D_8018C3B0.unk60[2];
        return;
    }
    set_object_flag_unk_054_false(objectIndex, 0x00800000);
}

/**
 * @brief Returns the distance between the object and the player.
 * 
 * @param objectIndex 
 * @param player 
 * @return UNUSED 
 */
UNUSED s32 get_horizontal_distance_to_player(s32 objectIndex, Player *player) {
    s32 x;
    s32 y;

    x = gObjectList[objectIndex].pos[0] - player->pos[0];
    y  = gObjectList[objectIndex].pos[2] - player->pos[2];
    return (x * x) + (y * y);
}

/**
 * @brief Returns the distance between the object and the player.
 * 
 * @param objectIndex 
 * @param player 
 * @return UNUSED 
 */
UNUSED s32 get_distance_to_player(s32 objectIndex, Player *player) {
    s32 x;
    s32 z;
    s32 y;

    x = gObjectList[objectIndex].pos[0] - player->pos[0];
    y  = gObjectList[objectIndex].pos[1] - player->pos[1];
    z = gObjectList[objectIndex].pos[2] - player->pos[2];
    return (x * x) + (y * y) + (z * z);
}

/**
 * @brief Returns the distance between the object and the camera.
 * 
 * @param objectIndex 
 * @param camera 
 * @return UNUSED 
 */
u32 get_horizontal_distance_to_camera(s32 objectIndex, Camera *camera) {
    s32 x;
    s32 y;

    x = gObjectList[objectIndex].pos[0] - camera->pos[0];
    y  = gObjectList[objectIndex].pos[2] - camera->pos[2];
    return (x * x) + (y * y);
}

/**
 * @brief Returns the distance between the object and the camera.
 * 
 * @param objectIndex 
 * @param camera 
 * @return UNUSED 
 */
UNUSED s32 get_distance_to_camera(s32 objectIndex, Camera *camera) {
    s32 x;
    s32 z;
    s32 y;

    x = gObjectList[objectIndex].pos[0] - camera->pos[0];
    y  = gObjectList[objectIndex].pos[1] - camera->pos[1];
    z = gObjectList[objectIndex].pos[2] - camera->pos[2];
    return (x * x) + (y * y) + (z * z);
}

/**
 * @brief Returns if the object is closer than the distance to the player.
 * 
 * @param objectIndex 
 * @param player 
 * @param distance
 * @return true 
 * @return false 
 */
bool is_within_horizontal_distance_of_player(s32 objectIndex, Player *player, f32 distance) {
    f32 x;
    f32 y;
    bool var_v1;

    var_v1 = FALSE;
    x = gObjectList[objectIndex].pos[0] - player->pos[0];
    y = gObjectList[objectIndex].pos[2] - player->pos[2];
    if (((x * x) + (y * y)) <= (distance * distance)) {
        var_v1 = TRUE;
    }
    return var_v1;
}

/**
 * @brief Returns if the object is between the distance_min and distance_max to the player.
 * 
 * @param objectIndex 
 * @param player 
 * @param distance_min 
 * @param distance_max 
 * @return true 
 * @return false 
 */
bool is_in_bounds_to_player(s32 objectIndex, Player *player, f32 distance_min, f32 distance_max) {
    f32 x;
    f32 distance;
    f32 z;
    bool var_v1;

    var_v1 = FALSE;
    x = gObjectList[objectIndex].pos[0] - player->pos[0];
    z = gObjectList[objectIndex].pos[2] - player->pos[2];
    distance = (x * x) + (z * z);
    if (((distance_min * distance_min) <= distance) && (distance <= (distance_max * distance_max))) {
        var_v1 = TRUE;
    }
    return var_v1;
}

/**
 * @brief Returns if the object is closer than the distance to the player.
 * 
 * @param objectIndex 
 * @param player 
 * @param distance 
 * @return true 
 * @return false 
 */
bool is_within_distance_to_player(s32 objectIndex, Player *player, f32 distance) {
    f32 x;
    f32 z;
    f32 y;
    bool var_v1;

    var_v1 = FALSE;
    x  = gObjectList[objectIndex].pos[0] - player->pos[0];
    y  = gObjectList[objectIndex].pos[1] - player->pos[1];
    z = gObjectList[objectIndex].pos[2] - player->pos[2];
    if (((x * x) + (y * y) + (z * z)) <= (distance * distance)) {
        var_v1 = TRUE;
    }
    return var_v1;
}

/**
 * @brief Returns if the object is between the distance_min and distance_max to the camera.
 * 
 * @param objectIndex 
 * @param camera 
 * @param distance 
 * @return true 
 * @return false 
 */
bool is_within_horizontal_distance_to_camera(s32 objectIndex, Camera *camera, f32 distance) {
    f32 x;
    f32 y;
    bool var_v1;

    var_v1 = FALSE;
    x = gObjectList[objectIndex].pos[0] - camera->pos[0];
    y = gObjectList[objectIndex].pos[2] - camera->pos[2];
    if (((x * x) + (y * y)) <= (distance * distance)) {
        var_v1 = TRUE;
    }
    return var_v1;
}

/**
 * @brief Returns if the object is between the distance_min and distance_max to the camera.
 * 
 * @param objectIndex 
 * @param camera 
 * @param distance_min 
 * @param distance_max 
 * @return UNUSED 
 */
UNUSED bool is_within_bounds_to_camera(s32 objectIndex, Camera *camera, f32 distance_min, f32 distance_max) {
    f32 x;
    f32 distance;
    f32 z;
    bool var_v1;

    var_v1 = FALSE;
    x  = gObjectList[objectIndex].pos[0] - camera->pos[0];
    z  = gObjectList[objectIndex].pos[2] - camera->pos[2];
    distance = (x * x) + (z * z);
    if (((distance_min * distance_min) <= distance) && (distance <= (distance_max * distance_max))) {
        var_v1 = TRUE;
    }
    return var_v1;
}

/**
 * @brief Returns if the object is closer than the distance to the camera.
 * 
 * @param objectIndex 
 * @param camera 
 * @param distance 
 * @return UNUSED 
 */
UNUSED bool is_within_distance_to_camera(s32 objectIndex, Camera *camera, f32 distance) {
    f32 x;
    f32 z;
    f32 y;
    bool var_v1;

    var_v1 = FALSE;
    x  = gObjectList[objectIndex].pos[0] - camera->pos[0];
    y  = gObjectList[objectIndex].pos[1] - camera->pos[1];
    z = gObjectList[objectIndex].pos[2] - camera->pos[2];
    if (((x * x) + (y * y) + (z * z)) <= (distance * distance)) {
        var_v1 = TRUE;
    }
    return var_v1;
}

/**
 * @brief Returns if the object collided with the player.
 * 
 * @param objectIndex 
 * @param player 
 * @return true 
 * @return false 
 */
bool has_collided_horizontally_with_player(s32 objectIndex, Player *player) {
    f32 x;
    f32 distance;
    f32 z;
    bool var_v1;

    var_v1 = FALSE;
    x  = gObjectList[objectIndex].pos[0] - player->pos[0];
    z  = gObjectList[objectIndex].pos[2] - player->pos[2];
    distance = gObjectList[objectIndex].boundingBoxSize + player->boundingBoxSize;
    if (((x * x) + (z * z)) <= (distance * distance)) {
        var_v1 = TRUE;
    }
    return var_v1;
}

/**
 * @brief Returns if the object collided with the player.
 * 
 * @param objectIndex 
 * @param player 
 * @return true 
 * @return false 
 */
bool has_collided_with_player(s32 objectIndex, Player *player) {
    f32 x;
    f32 z;
    f32 distance;
    f32 y;
    bool var_v1;

    var_v1 = FALSE;
    x  = gObjectList[objectIndex].pos[0] - player->pos[0];
    y  = gObjectList[objectIndex].pos[1] - player->pos[1];
    z = gObjectList[objectIndex].pos[2] - player->pos[2];
    distance = gObjectList[objectIndex].boundingBoxSize + player->boundingBoxSize;
    if (((x * x) + (y * y) + (z * z)) <= (distance * distance)) {
        var_v1 = TRUE;
    }
    return var_v1;
}

/**
 * @brief Returns if the object collided with the player.
 * 
 * @param objectIndex 
 * @param player 
 * @param distance 
 * @return UNUSED 
 */
UNUSED bool has_collided_with_player_1d(s32 objectIndex, Player *player, f32 distance) {
    f32 x;
    bool var_v1;

    var_v1 = FALSE;
    x = gObjectList[objectIndex].pos[1] - player->pos[1];
    if ((x * x) <= (distance * distance)) {
        var_v1 = TRUE;
    }
    return var_v1;
}

/**
 * @brief Returns if the object collided with the player and is closer than the distance in the y axis.
 * 
 * @param objectIndex 
 * @param player 
 * @param distance_y 
 * @return true 
 * @return false 
 */
bool has_collided_with_player_and_within_height(s32 objectIndex, Player *player, f32 distance_y) {
    f32 x;
    f32 z;
    f32 distance;
    f32 y;
    bool var_v1;

    var_v1 = FALSE;
    x  = gObjectList[objectIndex].pos[0] - player->pos[0];
    y   = gObjectList[objectIndex].pos[1] - player->pos[1];
    z = gObjectList[objectIndex].pos[2] - player->pos[2];
    distance = gObjectList[objectIndex].boundingBoxSize + player->boundingBoxSize;
    // abs(y)
    if (y < 0.0f) {
        y = -y;
    }
    if ((((x * x) + (z * z)) <= (distance * distance)) && (y <= distance_y)) {
        var_v1 = TRUE;
    }
    return var_v1;
}

f32 func_80088F54(s32 objectIndex, Player *player) {
    f32 distance;

    distance = gObjectList[objectIndex].pos[1] - player->unk_074;
    // abs(distance)
    if (distance < 0.0f) {
        distance = -distance;
    }
    return distance;
}

UNUSED bool func_80088F94(s32 objectIndex, Player *player, f32 arg2) {
    f32 distance;
    bool var_v1;

    distance = gObjectList[objectIndex].pos[1] - player->unk_074;
    var_v1 = FALSE;
    // abs(distance)
    if (distance < 0.0f) {
        distance = -distance;
    }
    if (distance <= arg2) {
        var_v1 = TRUE;
    }
    return var_v1;
}

void func_80088FF0(Player *player) {
    player->unk_08C = 0.0f;
    player->currentSpeed = 0.0f;
    player->velocity[0] = 0.0f;
    player->velocity[2] = 0.0f;
}

UNUSED void func_8008900C(Player *player) {
    player->unk_08C = 0.0f;
    player->currentSpeed = 0.0f;
}

void func_80089020(s32 playerId, f32 *arg1) {
    f32 var_f0;
    f32 var_f2;
    Player *player = &gPlayerOne[playerId];

    if (*arg1 >= 0.0f) {
        var_f2 = *arg1;
    } else {
        var_f2 = -*arg1;
    }
    if (player->effects & 0xC0) {
        if (gCurrentCourseId == COURSE_SHERBET_LAND) {
            if (var_f2 <= 0.5) {
                var_f0 = 0.025f;
            } else if (var_f2 <= 2.0) {
                var_f0 = 0.075f;
            } else if (var_f2 <= 4.0) {
                var_f0 = 0.15f;
            } else {
                var_f0 = 0.25f;
            }
        } else {
            if (var_f2 <= 2.0) {
                var_f0 = 0.1f;
            } else if (var_f2 <= 3.0) {
                var_f0 = 0.15f;
            } else if (var_f2 <= 4.0) {
                var_f0 = 0.2f;
            } else {
                var_f0 = 0.25f;
            }
        }
    } else if (gCurrentCourseId == COURSE_SHERBET_LAND) {
        if (var_f2 <= 0.5) {
            var_f0 = 0.025f;
        } else if (var_f2 <= 2.0) {
            var_f0 = 0.075f;
        } else if (var_f2 <= 4.0) {
            var_f0 = 0.1f;
        } else {
            var_f0 = 0.15f;
        }
    } else {
        if (var_f2 <= 2.0) {
            var_f0 = 0.06f;
        } else if (var_f2 <= 3.0) {
            var_f0 = 0.07f;
        } else if (var_f2 <= 4.0) {
            var_f0 = 0.075f;
        } else {
            var_f0 = 0.1f;
        }
    }
    f32_step_towards(arg1, 0.0f, var_f0);
}

void func_800892E0(s32 playerId) {
    func_80089020(playerId, &D_8018CE10[playerId].unk_04[0]);
    func_80089020(playerId, &D_8018CE10[playerId].unk_04[2]);
    if (D_8018CE10[playerId].unk_18[6] > 0) {
        D_8018CE10[playerId].unk_18[6]--;
    }
}

f32 func_8008933C(Player *player, s32 objectIndex, f32 arg2, f32 arg3) {
    f32 var_f2;
    f32 something;
    s32 playerId;
    Objects *temp_v0;
    struct_D_8018CE10 *temp_v1;

    playerId = player - gPlayerOne;
    temp_v1 = &D_8018CE10[playerId];
    var_f2 = 0.0f;
    if (temp_v1->unk_18[6] == 0) {
        temp_v0 = &gObjectList[objectIndex];
        player->unk_046 |= 2;
        player->effects |= 0x8000;
        temp_v1->unk_18[6] = 4;
        something = (player->pos[0] - temp_v0->pos[0]) * temp_v0->unk_038[0];
        if (something >= 0.0f) {
            temp_v1->unk_04[0] = (-player->velocity[0] * arg2) + (temp_v0->unk_038[0] * arg3);
        } else {
            temp_v1->unk_04[0] = -player->velocity[0] * arg2;
        }
        something = (player->pos[2] - temp_v0->pos[2]) * temp_v0->unk_038[2];
        if (something >= 0.0f) {
            temp_v1->unk_04[2] = (-player->velocity[2] * arg2) + (temp_v0->unk_038[2] * arg3);
        } else {
            temp_v1->unk_04[2] = -player->velocity[2] * arg2;
        }
        var_f2 = (temp_v1->unk_04[0] * temp_v1->unk_04[0]) + (temp_v1->unk_04[2] * temp_v1->unk_04[2]);
    }
    return var_f2;
}

void func_80089474(s32 objectIndex, s32 playerId, f32 arg2, f32 arg3, u32 arg4) {
    s32 stackPadding;
    Player *player;

    player = &gPlayerOne[playerId];
    if (is_obj_index_flag_unk_054_active(objectIndex, 0x04000000) != 0) {
        func_80072180();
    }
    if ((func_8008933C(player, objectIndex, arg2, arg3) >= 4.0) && ((player->type & PLAYER_CPU) != PLAYER_CPU)) {
        func_800C9060(playerId, arg4);
    }
}

void func_80089538(s32 objectIndex, s32 playerId, f32 arg2, f32 arg3, u32 arg4) {
    s32 stackPadding;
    Player *player;

    player = &gPlayerOne[playerId];
    if ((func_8008933C(player, objectIndex, arg2, arg3) >= 4.0) && ((player->type & PLAYER_CPU) != PLAYER_CPU)) {
        func_800C9060((u8) playerId, arg4);
    }
}

s32 func_800895E4(s32 objectIndex) {
    Player *player;
    s32 var_s1;
    s32 var_s6;

    var_s6 = 0;
    player = gPlayerOne;
    if (is_obj_index_flag_unk_054_active(objectIndex, 0x00000200) != 0) {
        for (var_s1 = 0; var_s1 < D_8018D158; var_s1++, player++) {
            if ((gObjectList[objectIndex].state != 0) && (has_collided_horizontally_with_player(objectIndex, player) != 0)) {
                if (is_obj_index_flag_unk_054_active(objectIndex, 0x04000000) != 0) {
                    func_80072180();
                }
                var_s6 = 1;
            }
        }
    }
    return var_s6;
}

void func_800896D4(s32 objectIndex, f32 arg1, f32 arg2) {
    Player *player;
    s32 var_s1;

    player = gPlayerOne;
    if (is_obj_index_flag_unk_054_active(objectIndex, 0x00000200) != 0) {
        for (var_s1 = 0; var_s1 < D_8018D158; var_s1++, player++) {
            if ((gObjectList[objectIndex].state != 0) && !(player->effects & 0x80000200) && (has_collided_horizontally_with_player(objectIndex, player) != 0)) {
                func_8008933C(player, objectIndex, arg1, arg2 * 1.1);
                if (is_obj_index_flag_unk_054_active(objectIndex, 0x04000000) != 0) {
                    func_80072180();
                }
            }
        }
    }
}

void func_80089820(s32 objectIndex, f32 arg1, f32 arg2, u32 arg3) {
    Player *player;
    s32 var_s1;

    player = gPlayerOne;
    set_object_flag_unk_054_false(objectIndex, 0x02000000);
    if (is_obj_index_flag_unk_054_active(objectIndex, 0x00000200) != 0) {
        for (var_s1 = 0; var_s1 < D_8018D158; var_s1++, player++) {
            if ((gObjectList[objectIndex].state != 0) && !(player->effects & 0x80000000)) {
                if ((player->type & PLAYER_EXISTS) && !(player->type & PLAYER_INVISIBLE_OR_BOMB) && (has_collided_horizontally_with_player(objectIndex, player) != 0)) {
                    if (player->effects & 0x200) {
                        set_object_flag_unk_054_true(objectIndex, 0x02000000);
                    } else {
                        if (is_obj_index_flag_unk_054_active(objectIndex, 0x04000000) != 0) {
                            func_80072180();
                        }
                        if ((func_8008933C(player, objectIndex, arg1, arg2 * 1.1) >= 4.0) && ((player->type & PLAYER_CPU) != PLAYER_CPU)) {
                            func_800C9060(var_s1, arg3);
                        }
                    }
                }
            }
        }
    }
}

void func_80089A04(s32 objectIndex, f32 arg1, f32 arg2) {
    Player *player;
    s32 var_s1;

    player = gPlayerOne;
    if (is_obj_index_flag_unk_054_active(objectIndex, 0x00000200) != 0) {
        for (var_s1 = 0; var_s1 < D_8018D158; var_s1++, player++) {
            if ((gObjectList[objectIndex].state != 0) && !(player->effects & 0x80000200) && (has_collided_with_player(objectIndex, player) != 0)) {
                func_8008933C(player, objectIndex, arg1, arg2 * 1.1);
                if (is_obj_index_flag_unk_054_active(objectIndex, 0x04000000) != 0) {
                    func_80072180();
                }
            }
        }
    }
}

s32 func_80089B50(s32 objectIndex) {
    Player *player;
    s32 sp40;
    s32 var_s1;
    s32 test;

    test = 0;
    sp40 = 0;
    player = gPlayerOne;
    if (is_obj_index_flag_unk_054_active(objectIndex, 0x00000200) != 0) {
        for (var_s1 = 0; var_s1 < D_8018D158; var_s1++, player++, test++) {
            if ((gObjectList[objectIndex].state != 0) && !(player->effects & 0x81000000) && (player->type & PLAYER_EXISTS) && !(player->type & PLAYER_INVISIBLE_OR_BOMB) && (has_collided_horizontally_with_player(objectIndex, player) != 0)) {
                if (!(player->effects & 0x200)) {
                    player->statusEffects |= REVERSE_EFFECT;
                    if (is_obj_index_flag_unk_054_active(objectIndex, 0x04000000) != 0) {
                        func_80072180();
                    }
                } else {
                    func_800C9060(test, 0x19018010U);
                }
                sp40 = 1;
            }
        }
    }
    return sp40;
}

s32 func_80089CBC(s32 objectIndex, f32 arg1) {
    Player *player;
    s32 var_s1;
    s32 var_s7;

    var_s7 = 0;
    player = gPlayerOne;
    if (is_obj_index_flag_unk_054_active(objectIndex, 0x00000200) != 0) {
        for (var_s1 = 0; var_s1 < D_8018D158; var_s1++, player++) {
            if ((gObjectList[objectIndex].state != 0) && !(player->effects & 0x81000000)) {
                if ((player->type & PLAYER_EXISTS) && !(player->type & PLAYER_INVISIBLE_OR_BOMB) && (has_collided_with_player_and_within_height(objectIndex, player, arg1) != 0)) {
                    if (!(player->effects & 0x200)) {
                        player->statusEffects |= REVERSE_EFFECT;
                        if (is_obj_index_flag_unk_054_active(objectIndex, 0x04000000) != 0) {
                            func_80072180();
                        }
                    }
                    var_s7 = 1;
                }
            }
        }
    }
    return var_s7;
}

s32 func_80089E18(s32 objectIndex) {
    Player *player;
    s32 var_s1;
    s32 var_s6;

    var_s6 = 0;
    player = gPlayerOne;
    if (is_obj_index_flag_unk_054_active(objectIndex, 0x00000200) != 0) {
        for (var_s1 = 0; var_s1 < D_8018D158; var_s1++, player++) {
            if ((gObjectList[objectIndex].state != 0) && !(player->effects & 0x800000C0) && (has_collided_horizontally_with_player(objectIndex, player) != 0)) {
                if (player->effects & 0x200) {
                    var_s6 = 1;
                } else {
                    player->statusEffects |= 1;
                }
            }
        }
    }
    return var_s6;
}

s32 func_80089F24(s32 objectIndex) {
    Player *player;
    s32 var_s1;
    s32 var_s7;

    var_s7 = 0;
    player = gPlayerOne;
    if (is_obj_index_flag_unk_054_active(objectIndex, 0x00000200) != 0) {
        for (var_s1 = 0; var_s1 < D_8018D158; var_s1++, player++) {
            if ((gObjectList[objectIndex].state != 0) && !(player->effects & 0x800002C0)) {
                if ((player->type & PLAYER_EXISTS) && !(player->type & PLAYER_INVISIBLE_OR_BOMB) && (has_collided_horizontally_with_player(objectIndex, player) != 0)) {
                    var_s7 = 1;
                    if (is_obj_index_flag_unk_054_active(objectIndex, 0x04000000) != 0) {
                        func_80072180();
                    }
                    player->statusEffects |= 0x200000;
                }
            }
        }
    }
    return var_s7;
}

s32 func_8008A060(s32 objectIndex, Camera *camera, u16 arg2) {
    u16 temp_t3;
    s32 var_v1;

    var_v1 = 0;
    temp_t3 = (((u16)camera->rot[1] - gObjectList[objectIndex].unk_0BE[1]) + (arg2 >> 1));
    
    // @warning Always true
    if ((temp_t3 >= 0) && (arg2 >= temp_t3)) {
        var_v1 = 1;
    }
    return var_v1;
}

s32 func_8008A0B4(s32 objectIndex, Player *player, Camera *camera, u16 arg3) {
    u16 temp_t3;
    f32 x_diff;
    f32 z_diff;
    s32 var_t0;

    var_t0 = 0;
    x_diff = gObjectList[objectIndex].pos[0] - player->pos[0];
    z_diff = gObjectList[objectIndex].pos[2] - player->pos[2];
    temp_t3 = ((u16) camera->rot[1] - atan2s(x_diff, z_diff)) + (arg3 >> 1);
    if ((temp_t3 >= 0) && (arg3 >= temp_t3)) {
        var_t0 = 1;
    }
    return var_t0;
}

s32 func_8008A140(s32 objectIndex, Camera *camera, u16 arg2) {
    u16 temp_t2;
    s32 var_t0;

    var_t0 = 0;
    temp_t2 = (func_80041770(camera->pos[0], gObjectList[objectIndex].pos[0], camera->pos[2], gObjectList[objectIndex].pos[2]) + ((s32) arg2 / 2)) - camera->rot[1];
    if ((temp_t2 >= 0) && (arg2 >= temp_t2)) {
        var_t0 = 1;
    }
    return var_t0;
}

void func_8008A1D0(s32 objectIndex, s32 cameraId, s32 arg2, s32 arg3) {
    u32 temp_v0;
    u16 var_a2;
    Camera *camera;

    camera = &camera1[cameraId];
    set_object_flag_unk_054_false(objectIndex, 0x00140000);
    temp_v0 = get_horizontal_distance_to_camera(objectIndex, camera);
    if (temp_v0 < 0x2711U) {
        var_a2 = 0x5555;
    } else if (temp_v0 < 0x9C41U) {
        var_a2 = 0x4000;
    } else {
        var_a2 = 0x2AAB;
    }
    if ((func_8008A140(objectIndex, camera, var_a2) != 0) && ((u32) (arg3 * arg3) >= temp_v0)) {
        set_object_flag_unk_054_true(objectIndex, 0x00040000);
        if (temp_v0 >= (u32) (arg2 * arg2)) {
            set_object_flag_unk_054_true(objectIndex, 0x00100000);
        }
    }
}

// This function is really cool, it tests the value of an unitialized local variable
UNUSED void func_8008A2CC(s32 objectIndex, s32 cameraId, u16 arg2) {
    Camera *camera;
    u32 no_init;
    u16 var_a2;

    camera = &camera1[cameraId];
    set_object_flag_unk_054_false(objectIndex, 0x00040000);
    if (no_init < 0x2711U) {
        var_a2 = 0x5555;
    } else if (no_init < 0x9C41U) {
        var_a2 = 0x4000;
    } else {
        var_a2 = arg2;
    }
    if (func_8008A140(objectIndex, camera, var_a2) != 0) {
        set_object_flag_unk_054_true(objectIndex, 0x00040000);
    }
}

s32 func_8008A364(s32 objectIndex, s32 cameraId, u16 arg2, s32 arg3) {
    Camera *camera;
    u32 var_v1;
    u16 var_a2;

    camera = &camera1[cameraId];
    set_object_flag_unk_054_false(objectIndex, 0x00060000);
    var_v1 = get_horizontal_distance_to_camera(objectIndex, camera);
    if (var_v1 < (arg3 * arg3)) {
        set_object_flag_unk_054_true(objectIndex, 0x00020000);
        if (var_v1 < 0x2711U) {
            var_a2 = 0x5555;
        } else if (var_v1 < 0x9C41U) {
            var_a2 = 0x4000;
        } else {
            var_a2 = arg2;
        }
        if (func_8008A140(objectIndex, camera, var_a2) != 0) {
            set_object_flag_unk_054_true(objectIndex, 0x00040000);
        }
    }
    return var_v1;
}

void func_8008A454(s32 objectIndex, s32 cameraId, s32 arg2) {
    if (get_horizontal_distance_to_camera(objectIndex, &camera1[cameraId]) < (u32) (arg2 * arg2)) {
        set_object_flag_unk_054_true(objectIndex, 0x00000020);
    } else {
        set_object_flag_unk_054_false(objectIndex, 0x00000020);
    }
}

void func_8008A4CC(s32 objectIndex) {
    s32 loopIndex;
    Camera *camera;

    set_object_flag_unk_054_false(objectIndex, 0x00070000);
    for (loopIndex = 0, camera = camera1; loopIndex < gPlayerCountSelection1; loopIndex++, camera++) {
        if (gObjectList[objectIndex].state != 0) {
            if ((D_8018CF68[loopIndex] >= (gObjectList[objectIndex].unk_0DF - 1)) && ((gObjectList[objectIndex].unk_0DF + 1) >= D_8018CF68[loopIndex])) {
                set_object_flag_unk_054_true(objectIndex, 0x00010000);
                if (D_8018CF68[loopIndex] == gObjectList[objectIndex].unk_0DF) {
                    set_object_flag_unk_054_true(objectIndex, 0x00020000);
                }
                if (func_8008A140(objectIndex, camera, 0x2AABU) != 0) {
                    set_object_flag_unk_054_true(objectIndex, 0x00040000);
                }
            }
        }
    }
}

UNUSED void func_8008A610(s32 objectIndex) {
    s32 loopIndex;
    Camera *camera;

    set_object_flag_unk_054_false(objectIndex, 0x00040000);
    for (camera = camera1, loopIndex = 0; loopIndex < gPlayerCountSelection1; loopIndex++, camera++) {
        if ((gObjectList[objectIndex].state != 0) && (func_8008A140(objectIndex, camera, 0x2AABU) != 0)) {
            set_object_flag_unk_054_true(objectIndex, 0x00040000);
        }
    }
}

void func_8008A6DC(s32 objectIndex, f32 arg1) {
    u16 var_a2;
    s32 loopIndex;
    Camera *camera;

    set_object_flag_unk_054_false(objectIndex, 0x00060000);
    for (camera = camera1, loopIndex = 0; loopIndex < gPlayerCountSelection1; loopIndex++, camera++) {
        if ((gObjectList[objectIndex].state != 0) && (is_within_horizontal_distance_to_camera(objectIndex, camera, arg1) != 0)) {
            set_object_flag_unk_054_true(objectIndex, 0x00020000);
            if (arg1 <= 500.0) {
                var_a2 = 0x4000;
            } else {
                var_a2 = 0x2AAB;
            }
            if (func_8008A140(objectIndex, camera, var_a2) != 0) {
                set_object_flag_unk_054_true(objectIndex, 0x00040000);
            }
        }
    }
}

UNUSED void func_8008A810(s32 arg0) {
    func_8008A6DC(arg0, 500.0f);
}

UNUSED void func_8008A830(s32 arg0) {
    func_8008A6DC(arg0, 1000.0f);
}

UNUSED void func_8008A850(s32 arg0) {
    func_8008A6DC(arg0, 2000.0f);
}

UNUSED s32 func_8008A870(Player *player) {
    return func_802ABD40(player->unk_110.unk3A);
}

s32 func_8008A890(Camera *camera) {
    return func_802ABD40(camera->unk_54.unk3A);
}

s32 func_8008A8B0(s16 arg0, s16 arg1) {
    s32 var_v1;
    s16* var_v0;
    s32 i;
    var_v1 = 0;
    for (i = 0; i < gPlayerCountSelection1; i++) {
        var_v0 = &D_8018CF68[i];
        if ((*var_v0 >= arg0) && (arg1 >= *var_v0)) {
            var_v1 = 1;
        }
    }
    return var_v1;
}

void func_8008A920(s32 objectIndex) {
    Vec4s *temp_v0;

    temp_v0 = gObjectList[objectIndex].unk_07C;
    gObjectList[objectIndex].unk_038[0] = (f32) (temp_v0[1][0] - temp_v0[0][0]) / (f32) temp_v0[0][3];
    gObjectList[objectIndex].unk_038[1] = (f32) (temp_v0[1][1] - temp_v0[0][1]) / (f32) temp_v0[0][3];
    gObjectList[objectIndex].unk_038[2] = (f32) (temp_v0[1][2] - temp_v0[0][2]) / (f32) temp_v0[0][3];
}

void func_8008A9B8(s32 objectIndex) {
    s32 temp_t9;
    Objects *temp_v0;

    temp_v0 = &gObjectList[objectIndex];
    temp_v0->unk_07C++;
    temp_v0->unk_09A = (s16) (0x2710 / (s16) (*temp_v0->unk_07C)[3]);
    temp_v0->timer = 0;
    func_8008A920(objectIndex);
}

void func_8008AA3C(s32 objectIndex) {
    s16* temp_v1;
    Objects* temp_v0;

    temp_v0 = &gObjectList[objectIndex];
    temp_v1 = temp_v0->unk_080[0];
    temp_v1 = &temp_v0->unk_080[0][1];
    (&gObjectList[objectIndex])->unk_07C = (s16 (*)[4]) temp_v1;
    (&gObjectList[objectIndex])->unk_084[9] = 0;
    (&gObjectList[objectIndex])->timer = 0;
    (&gObjectList[objectIndex])->unk_084[8] = temp_v1[-1];
    (&gObjectList[objectIndex])->unk_028[0] = (f32) temp_v1[0];
    (&gObjectList[objectIndex])->unk_028[1] = (f32) temp_v1[1];
    (&gObjectList[objectIndex])->unk_028[2] = (f32) temp_v1[2];
    (&gObjectList[objectIndex])->unk_09A = (s16) (0x2710 / (s16) temp_v1[3]);
    func_8008A920(objectIndex);
    func_80086FD4(objectIndex);
}

void func_8008AB10(s32 objectIndex) {
    s16 temp_t3;
    Objects *temp_v0;

    temp_v0 = &gObjectList[objectIndex];
    temp_v0->unk_028[0] += temp_v0->unk_038[0];
    temp_v0->unk_028[1] += temp_v0->unk_038[1];
    temp_v0->unk_028[2] += temp_v0->unk_038[2];
    temp_v0->timer += (u16)temp_v0->unk_09A;
    if (temp_v0->timer >= 0x2710) {
        temp_v0->unk_084[9] = (u16)temp_v0->unk_084[9] + 1;
        if (((u16)temp_v0->unk_084[9] + 1) == (u16) temp_v0->unk_084[8]) {
            temp_v0->unk_0AE += 1;
        } else {
            func_8008A9B8(objectIndex);
        }
    }
}

UNUSED void func_8008ABC0(s32 arg0) {
    switch (gObjectList[arg0].unk_0AE) {
        case 1:
            func_8008AA3C(arg0);
            break;
        case 2:
            func_8008AB10(arg0);
            break;
        case 3:
            func_80086F60(arg0);
            /* fallthrough */
        case 0:
            break;
    }
}

UNUSED void func_8008AC40(s32 arg0) {
    switch (gObjectList[arg0].unk_0AE) {
        case 1:
            func_8008AA3C(arg0);
            break;
        case 2:
            func_8008AB10(arg0);
            break;
        case 3:
            func_8008701C(arg0, 1);
            /* fallthrough */
        case 0:
            break;
    }
}

UNUSED void func_8008ACC0(void) {

}

UNUSED void func_8008ACC8(void) {

}

UNUSED void func_8008ACD0(void) {

}

UNUSED void func_8008ACD8(void) {

}

void func_8008ACE0(f32 arg0[], f32 arg1) {
    arg0[0] = (f32) ((f64) ((f32) (1.0 - arg1) * (f32) (1.0 - arg1) * (f32) (1.0 - arg1)) / 6.0);
    arg0[1] = (f32) ((((f64) (arg1 * arg1 * arg1) * 0.5) - arg1 * arg1) + 0.6666666666666666);
    arg0[2] = (f32) (((f64) (arg1 * arg1 * arg1) * -0.5) + (0.5 * (arg1 * arg1)) + (0.5 * arg1) + 0.16666666666666666);
    arg0[3] = (f32) ((f64) (arg1 * arg1 * arg1) / 6.0);
}

UNUSED void func_8008ADC0(void) {

}

UNUSED void func_8008ADC8(void) {

}

void func_8008ADD0(f32 arg0[], f32 arg1) {
    arg0[0] = (f32) (1.0 - arg1) * -0.5 * (f32) (1.0 - arg1);
    arg0[1] = arg1 * arg1 * 1.5 - 2.0 * arg1;
    arg0[2] = (arg1 * arg1 * 3.0 - 2.0 * arg1 - (f32) 1.0) * -0.5;
    arg0[3] = arg1 * arg1 * 0.5;
}

UNUSED void func_8008AE8C(void) {

}

UNUSED void func_8008AE94(void) {

}

void func_8008AE9C(s32 objectIndex) {
    Objects *temp_v0;

    temp_v0 = &gObjectList[objectIndex];
    temp_v0->unk_038[0] = (D_80183DC8[0] * D_80165760[0]) + (D_80183DC8[1] * D_80165760[1]) + (D_80183DC8[2] * D_80165760[2]) + (D_80183DC8[3] * D_80165760[3]);
    temp_v0->unk_038[1] = (D_80183DC8[0] * D_80165770[0]) + (D_80183DC8[1] * D_80165770[1]) + (D_80183DC8[2] * D_80165770[2]) + (D_80183DC8[3] * D_80165770[3]);
    temp_v0->unk_038[2] = (D_80183DC8[0] * D_80165780[0]) + (D_80183DC8[1] * D_80165780[1]) + (D_80183DC8[2] * D_80165780[2]) + (D_80183DC8[3] * D_80165780[3]);
}

void func_8008AFE0(s32 objectIndex, f32 arg1) {
    func_8008ADD0(D_80183DC8, arg1);
    func_8008AE9C(objectIndex);
}

UNUSED void func_8008B018(void) {

}

UNUSED void func_8008B020(void) {

}

UNUSED void func_8008B028(void) {

}

UNUSED void func_8008B030(void) {

}

void func_8008B038(s32 objectIndex) {
    Objects *temp_v0;

    temp_v0 = &gObjectList[objectIndex];
    temp_v0->unk_028[0] = (D_80183DA8[0] * D_80165760[0]) + (D_80183DA8[1] * D_80165760[1]) + (D_80183DA8[2] * D_80165760[2]) + (D_80183DA8[3] * D_80165760[3]);
    temp_v0->unk_028[1] = (D_80183DA8[0] * D_80165770[0]) + (D_80183DA8[1] * D_80165770[1]) + (D_80183DA8[2] * D_80165770[2]) + (D_80183DA8[3] * D_80165770[3]);
    temp_v0->unk_028[2] = (D_80183DA8[0] * D_80165780[0]) + (D_80183DA8[1] * D_80165780[1]) + (D_80183DA8[2] * D_80165780[2]) + (D_80183DA8[3] * D_80165780[3]);
}

void func_8008B17C(s32 objectIndex, f32 arg1) {
    func_8008ACE0(D_80183DA8, arg1);
    func_8008B038(objectIndex);
}

UNUSED void func_8008B1B4(void) {

}

UNUSED void func_8008B1BC(void) {

}

UNUSED void func_8008B1C4(void) {

}

UNUSED void func_8008B1CC(void) {

}

void func_8008B1D4(s32 objectIndex) {
    s32 someIndex;
    Vec4s *test;

    test = gObjectList[objectIndex].unk_07C;
    for (someIndex = 0; someIndex < 4; someIndex++) {
        D_80165760[someIndex] = (*test)[0];
        D_80165770[someIndex] = (*test)[1];
        D_80165780[someIndex] = (*test)[2];
        test++;
    }
}

void func_8008B284(s32 objectIndex) {
    s32 someIndex;
    s32 sp0;
    s32 temp_a1;
    s32 temp_a2;
    Vec4s *test;

    test = gObjectList[objectIndex].unk_07C;
    temp_a1 = gObjectList[objectIndex].unk_084[9];
    temp_a2 = (u16) gObjectList[objectIndex].unk_084[8];
    if ((temp_a2 - 4) >= temp_a1) {
        sp0 = 0x00002710;
    } else if ((temp_a1 + 3) == temp_a2) {
        sp0 = 2;
    } else if ((temp_a1 + 2) == temp_a2) {
        sp0 = 1;
    } else if ((temp_a1 + 1) == temp_a2) {
        sp0 = 0;
    }
    for (someIndex = 0; someIndex < 4; someIndex++) {
        D_80165760[someIndex] = (*test)[0];
        D_80165770[someIndex] = (*test)[1];
        D_80165780[someIndex] = (*test)[2];
        if (sp0 == someIndex) {
            // Huh???????? This makes no sense
            test = &gObjectList[objectIndex].unk_080[0][1];
        } else {
            test++;
        }
    }
}

void func_8008B3E4(s32 objectIndex) {
    Vec4s *test;
    Objects *temp_v0;

    if (is_obj_index_flag_unk_054_inactive(objectIndex, 8) != 0) {
        temp_v0 = &gObjectList[objectIndex];
        temp_v0->unk_084[9] = 0;
        temp_v0->timer = 0;
        temp_v0->unk_07C = &gObjectList[objectIndex].unk_080[0][1];
        // Huh????????? Negative array indexing is a near certain sign
        // that something has gone wrong on our end.
        temp_v0->unk_084[8] = temp_v0->unk_07C[0][-1];
        set_object_flag_unk_054_true(objectIndex, 8);
    }
}

void func_8008B44C(s32 objectIndex) {
    gObjectList[objectIndex].timer = 0;
    gObjectList[objectIndex].unk_07C++;
}

void func_8008B478(s32 objectIndex, s32 arg1) {
    f32 sp34;
    f32 temp;
    f32 temp2;
    f32 var_f6;

    func_8008B3E4(objectIndex);
    if (arg1 != 0) {
        func_8008B284(objectIndex);
    } else {
        func_8008B1D4(objectIndex);
    }

    sp34 = ((f32)gObjectList[objectIndex].timer / 10000.0);
    func_8008B17C(objectIndex, sp34);
    if (is_obj_index_flag_unk_054_active(objectIndex, 0x800) != 0) {
        func_8008AFE0(objectIndex, sp34);
    }

    var_f6 = gObjectList[objectIndex].unk_07C[0][3];
    temp = gObjectList[objectIndex].unk_07C[0][7];

    gObjectList[objectIndex].unk_09A = 10000.0 / (((temp - var_f6) * sp34) + var_f6);
    gObjectList[objectIndex].timer += gObjectList[objectIndex].unk_09A;
}

void func_8008B620(s32 objectIndex) {
    s16 temp_t0;
    Objects *temp_v0;

    func_8008B478(objectIndex, 0);
    temp_v0 = &gObjectList[objectIndex];
    if (temp_v0->timer >= 0x2710) {
        // Have to do it this way due to the u16 cast
        temp_v0->unk_084[9] = (u16) temp_v0->unk_084[9] + 1;
        if (((u16) temp_v0->unk_084[9] + 3) == (u16) temp_v0->unk_084[8]) {
            temp_v0->unk_0AE += 1;
        } else {
            func_8008B44C(objectIndex);
        }
    }
}

void func_8008B6A4(s32 objectIndex) {
    Objects *temp_v0;

    func_8008B478(objectIndex, 1);
    temp_v0 = &gObjectList[objectIndex];
    if (temp_v0->timer >= 0x2710) {
        // Have to do it this way due to the u16 cast
        temp_v0->unk_084[9] = (u16) temp_v0->unk_084[9] + 1;
        if ((u16)temp_v0->unk_084[9] == (u16)temp_v0->unk_084[8]) {
            set_object_flag_unk_054_false(objectIndex, 8);
        } else {
            func_8008B44C(objectIndex);
        }
    }
}

void func_8008B724(s32 objectIndex) {
    switch (gObjectList[objectIndex].unk_0AE) {
    case 0:
        break;
    case 1:
        func_8008B620(objectIndex);
        break;
    case 2:
        func_80086F60(objectIndex);
        break;
    }
}

void func_8008B78C(s32 objectIndex) {
    switch (gObjectList[objectIndex].unk_0AE) {
    case 0:
        break;
    case 1:
        func_8008B6A4(objectIndex);
        break;
    }
}

void func_8008B7D4(s32 objectIndex, f32 arg1, f32 arg2, f32 arg3) {
    gObjectList[objectIndex].unk_010[0] = arg1;
    gObjectList[objectIndex].unk_010[1] = arg2;
    gObjectList[objectIndex].unk_010[2] = arg3;
}

void func_8008B80C(s32 objectIndex, f32 arg1, f32 arg2, f32 arg3) {
    gObjectList[objectIndex].unk_028[0] = arg1;
    gObjectList[objectIndex].unk_028[1] = arg2;
    gObjectList[objectIndex].unk_028[2] = arg3;
}

void func_8008B844(s32 objectIndex) {
    f32 temp_f0 = gObjectList[objectIndex].unk_010[0];

    gObjectList[objectIndex].pos[0] = gObjectList[objectIndex].unk_028[0] + temp_f0;
    gObjectList[objectIndex].pos[1] = gObjectList[objectIndex].unk_028[1] + temp_f0;
    gObjectList[objectIndex].pos[2] = gObjectList[objectIndex].unk_028[2] + temp_f0;
}

void func_8008B888(s32 objectIndex, u16 arg1, u16 arg2, u16 arg3) {
    gObjectList[objectIndex].unk_0BE[0] = arg1;
    gObjectList[objectIndex].unk_0BE[1] = arg2;
    gObjectList[objectIndex].unk_0BE[2] = arg3;
}

void func_8008B8BC(s32 objectIndex, u16 arg1, u16 arg2, u16 arg3) {
    gObjectList[objectIndex].unk_0B2[0] = arg1;
    gObjectList[objectIndex].unk_0B2[1] = arg2;
    gObjectList[objectIndex].unk_0B2[2] = arg3;
}

void func_8008B8F0(s32 objectIndex, f32 arg1, f32 arg2, f32 arg3) {
    gObjectList[objectIndex].unk_038[0] = arg1;
    gObjectList[objectIndex].unk_038[1] = arg2;
    gObjectList[objectIndex].unk_038[2] = arg3;
}

void func_8008B928(s32 objectIndex, s16 arg1, s16 arg2, s16 arg3, s16 arg4[][4]) {
    Objects *temp_s0;

    temp_s0 = &gObjectList[objectIndex];
    temp_s0->unk_010[0] = (f32) arg1;
    temp_s0->unk_010[1] = (f32) arg2;
    temp_s0->unk_080 = arg4;
    temp_s0->unk_010[2] = (f32) arg3;
    temp_s0->unk_038[0] = (f32) (arg4[1][1] - arg4[0][1]);
    temp_s0->unk_038[1] = (f32) (arg4[1][2] - arg4[0][2]);
    temp_s0->unk_038[2] = (f32) (arg4[1][3] - arg4[0][3]);
    temp_s0->unk_0BE[1] = func_80087368(objectIndex);
    temp_s0->unk_038[2] = func_800416D8(temp_s0->unk_038[2], temp_s0->unk_038[0], -temp_s0->unk_0BE[1]);
    temp_s0->unk_0BE[0] = func_80087324(objectIndex);
}

UNUSED void func_8008BA40(s32 objectIndex, s16 arg1, u16 arg2) {
    s16 test;

    test = random_int(arg2) - (arg2 / 2);
    gObjectList[objectIndex].unk_010[0] = arg1 + test;
}

void func_8008BAB4(s32 objectIndex, s16 arg1, u16 arg2) {
    s16 test;

    test = random_int(arg2) - (arg2 / 2);
    gObjectList[objectIndex].unk_010[1] = arg1 + test;
}

UNUSED void func_8008BB28(s32 objectIndex, s16 arg1, u16 arg2) {
    s16 test;

    test = random_int(arg2) - (arg2 / 2);
    gObjectList[objectIndex].unk_010[2] = arg1 + test;
}

UNUSED void func_8008BB9C(s32 objectIndex, s16 arg1, s16 arg2, u16 arg3, u16 arg4) {
    s16 sp1E;
    s16 temp_v0;

    sp1E    = random_int(arg3) - ((s32) arg3 / 2);
    temp_v0 = random_int(arg4) - ((s32) arg4 / 2);
    gObjectList[objectIndex].unk_010[0] = arg1 + sp1E;
    gObjectList[objectIndex].unk_010[1] = arg2 + temp_v0;
}

UNUSED void func_8008BC58(s32 objectIndex, s16 arg1, s16 arg2, u16 arg3, u16 arg4) {
    s16 sp1E;
    s16 temp_v0;

    sp1E    = random_int(arg3) - ((s32) arg3 / 2);
    temp_v0 = random_int(arg4) - ((s32) arg4 / 2);
    gObjectList[objectIndex].unk_010[0] = arg1 + sp1E;
    gObjectList[objectIndex].unk_010[2] = arg2 + temp_v0;
}

void func_8008BD14(s32 objectIndex, s16 arg1, s16 arg2, s16 arg3, u16 arg4, u16 arg5, u16 arg6) {
    s16 sp1E;
    s16 sp1C;
    s16 temp_v0;

    sp1E    = random_int(arg4) - ((s32) arg4 / 2);
    sp1C    = random_int(arg5) - ((s32) arg5 / 2);
    temp_v0 = random_int(arg6) - ((s32) arg6 / 2);
    gObjectList[objectIndex].unk_010[0] = arg1 + sp1E;
    gObjectList[objectIndex].unk_010[1] = arg2 + sp1C;
    gObjectList[objectIndex].unk_010[2] = arg3 + temp_v0;
}

void func_8008BE0C(s32 objectIndex, s16 arg1, u16 arg2) {
    gObjectList[objectIndex].unk_010[0] = gPlayerOneCopy->pos[0] + (sins(arg2) * arg1);
    gObjectList[objectIndex].unk_010[2] = gPlayerOneCopy->pos[2] + (coss(arg2) * arg1);
}

void func_8008BEA4(s32 objectIndex, u16 arg1, u16 arg2) {
    u16 thing;
    u16 thing2;

    thing  = random_int(arg1);
    thing2 = camera1->rot[1] + random_int(arg2) - ((s32) arg2 / 2);
    func_8008BE0C(objectIndex, thing, thing2);
}

void func_8008BF18(s32 objectIndex) {
    gObjectList[objectIndex].pos[0] = gObjectList[objectIndex].unk_010[0] + gObjectList[objectIndex].unk_028[0];
    gObjectList[objectIndex].pos[1] = gObjectList[objectIndex].unk_010[1] + gObjectList[objectIndex].unk_028[1];
    gObjectList[objectIndex].pos[2] = gObjectList[objectIndex].unk_010[2] + gObjectList[objectIndex].unk_028[2];
}

void func_8008BF64(s32 objectIndex) {
    Objects *temp_v0;

    temp_v0 = &gObjectList[objectIndex];
    D_80183E40[0] = temp_v0->pos[0];
    D_80183E40[1] = temp_v0->pos[1];
    D_80183E40[2] = temp_v0->pos[2];
    D_80183E80[0] = temp_v0->unk_0BE[0];
    D_80183E80[1] = temp_v0->unk_0BE[1];
    D_80183E80[2] = temp_v0->unk_0BE[2];
}

void func_8008BFC0(s32 objectIndex) {
    gObjectList[objectIndex].unk_09C = gObjectList[objectIndex].pos[0];
    gObjectList[objectIndex].unk_09E = gObjectList[objectIndex].pos[1];
}

void func_8008BFFC(s32 objectIndex) {
    Objects *temp_v1;

    temp_v1 = &gObjectList[objectIndex];
    switch (temp_v1->unk_0DE) {
    case 1:
        if (temp_v1->unk_0AE == 1) {
            func_8008B620(objectIndex);
        }
        break;
    case 2:
        switch (temp_v1->unk_0AE) {
        case 0:
            break;
        case 1:
            func_8008B6A4(objectIndex);
            break;
        }
        break;
    case 3:
        switch (temp_v1->unk_0AE) {
        case 0:
            break;
        case 1:
            func_8008B620(objectIndex);
            break;
        }
        break;
    case 4:
        switch (temp_v1->unk_0AE) {                        /* switch 1; irregular */
        case 0:                                         /* switch 1 */
            break;
        case 1:                                     /* switch 1 */
            func_8008B620(objectIndex);
            break;
        case 2:                                     /* switch 1 */
            func_80086F60(objectIndex);
            break;
        }
        break;
    case 5:
        switch (temp_v1->unk_0AE) {                        /* switch 2; irregular */
        case 0:                                         /* switch 2 */
            break;
        case 1:                                     /* switch 2 */
            func_8008B620(objectIndex);
            break;
        case 2:                                     /* switch 2 */
            func_80086F60(objectIndex);
            break;
        }
        break;
    case 6:
        switch (temp_v1->unk_0AE) {
        case 0:
            break;
        case 1:
            func_8008B620(objectIndex);
            break;
        }
        break;
    case 7:
        switch (temp_v1->unk_0AE) {                        /* switch 3; irregular */
        case 0:                                         /* switch 3 */
            break;
        case 1:                                     /* switch 3 */
            func_80088228(objectIndex);
            break;
        case 2:                                     /* switch 3 */
            func_80088364(objectIndex);
            break;
        }
        break;
    case 0:
    default:
        break;
    }
}

UNUSED void func_8008C1B8(UNUSED s32 arg0) {

}

UNUSED void func_8008C1C0(UNUSED s32 arg0) {

}
