#include <ultra64.h>
#include <macros.h>
#include <defines.h>
#include "variables.h"
#include "kart_attributes.h"
#include "memory.h"
#include "math_util.h"
#include "code_8001F980.h"
#include "code_80027D00.h"
#include "code_8008C1D0.h"
#include "code_802AAA70.h"
#include "waypoints.h"
#include "audio/external.h"

s16 D_800E3810[] = {
    1, 2, 3, 4, 5, 6, 7, 0
};

s16 D_800E3820[] = {
    0, 2, 3, 4, 5, 6, 7, 0
};

s16 D_800E3830[] = {
    0, 1, 3, 4, 5, 6, 7, 0
};

s16 D_800E3840[] = {
    0, 1, 2, 4, 5, 6, 7, 0
};

s16 D_800E3850[] = {
    0, 1, 2, 3, 5, 6, 7, 0
};

s16 D_800E3860[] = {
    0, 1, 2, 3, 4, 6, 7, 0
};

s16 D_800E3870[] = {
    0, 1, 2, 3, 4, 5, 7, 0
};

s16 D_800E3880[] = {
    0, 1, 2, 3, 4, 5, 6, 0
};

s16 *D_800E3890[] = {
    D_800E3810, D_800E3820, D_800E3830, D_800E3840,
    D_800E3850, D_800E3860, D_800E3870, D_800E3880
};

s16 D_800E38B0[] = {
    2, 3, 4, 5, 6, 7
};

s16 D_800E38BC[] = {
    1, 3, 4, 5, 6, 7
};

s16 D_800E38C8[] = {
    1, 2, 4, 5, 6, 7
};

s16 D_800E38D4[] = {
    1, 2, 3, 5, 6, 7
};

s16 D_800E38E0[] = {
    1, 2, 3, 4, 6, 7
};

s16 D_800E38EC[] = {
    1, 2, 3, 4, 5, 7
};

s16 D_800E38F8[] = {
    1, 2, 3, 4, 5, 6
};

s16 D_800E3904[] = {
    2, 3, 4, 5, 6, 7
};

s16 D_800E3910[] = {
    0, 3, 4, 5, 6, 7
};

s16 D_800E391C[] = {
    0, 2, 4, 5, 6, 7
};

s16 D_800E3928[] = {
    0, 2, 3, 5, 6, 7
};

s16 D_800E3934[] = {
    0, 2, 3, 4, 6, 7
};

s16 D_800E3940[] = {
    0, 2, 3, 4, 5, 7
};

s16 D_800E394C[] = {
    0, 2, 3, 4, 5, 6
};

s16 D_800E3958[] = {
    1, 3, 4, 5, 6, 7
};

s16 D_800E3964[] = {
    0, 3, 4, 5, 6, 7
};

s16 D_800E3970[] = {
    0, 1, 4, 5, 6, 7
};

s16 D_800E397C[] = {
    0, 1, 3, 5, 6, 7
};

s16 D_800E3988[] = {
    0, 1, 3, 4, 6, 7
};

s16 D_800E3994[] = {
    0, 1, 3, 4, 5, 7
};

s16 D_800E39A0[] = {
    0, 1, 3, 4, 5, 6
};

s16 D_800E39AC[] = {
    1, 2, 4, 5, 6, 7
};

s16 D_800E39B8[] = {
    0, 2, 4, 5, 6, 7
};

s16 D_800E39C4[] = {
    0, 1, 4, 5, 6, 7
};

s16 D_800E39D0[] = {
    0, 1, 2, 5, 6, 7
};

s16 D_800E39DC[] = {
    0, 1, 2, 4, 6, 7
};

s16 D_800E39E8[] = {
    0, 1, 2, 4, 5, 7
};

s16 D_800E39F4[] = {
    0, 1, 2, 4, 5, 6
};

s16 D_800E3A00[] = {
    1, 2, 3, 5, 6, 7
};

s16 D_800E3A0C[] = {
    0, 2, 3, 5, 6, 7
};

s16 D_800E3A18[] = {
    0, 1, 3, 5, 6, 7
};

s16 D_800E3A24[] = {
    0, 1, 2, 5, 6, 7
};

s16 D_800E3A30[] = {
    0, 1, 2, 3, 6, 7
};

s16 D_800E3A3C[] = {
    0, 1, 2, 3, 5, 7
};

s16 D_800E3A48[] = {
    0, 1, 2, 3, 5, 6
};

s16 D_800E3A54[] = {
    1, 2, 3, 4, 6, 7
};

s16 D_800E3A60[] = {
    0, 2, 3, 4, 6, 7
};

s16 D_800E3A6C[] = {
    0, 1, 3, 4, 6, 7
};

s16 D_800E3A78[] = {
    0, 1, 2, 3, 6, 7
};

s16 D_800E3A84[] = {
    0, 1, 2, 4, 6, 7
};

s16 D_800E3A90[] = {
    0, 1, 2, 3, 4, 7
};

s16 D_800E3A9C[] = {
    0, 1, 2, 3, 4, 6
};

s16 D_800E3AA8[] = {
    1, 2, 3, 4, 5, 7
};

s16 D_800E3AB4[] = {
    0, 2, 3, 4, 5, 7
};

s16 D_800E3AC0[] = {
    0, 1, 3, 4, 5, 7
};

s16 D_800E3ACC[] = {
    0, 1, 2, 3, 5, 7
};

s16 D_800E3AD8[] = {
    0, 1, 2, 3, 4, 7
};

s16 D_800E3AE4[] = {
    0, 1, 2, 4, 5, 7
};

s16 D_800E3AF0[] = {
    0, 1, 2, 3, 4, 5
};

s16 D_800E3AFC[] = {
    1, 2, 3, 4, 5, 6
};

s16 D_800E3B08[] = {
    0, 2, 3, 4, 5, 6
};

s16 D_800E3B14[] = {
    0, 1, 3, 4, 5, 6
};

s16 D_800E3B20[] = {
    0, 1, 2, 3, 5, 6
};

s16 D_800E3B2C[] = {
    0, 1, 2, 3, 4, 6
};

s16 D_800E3B38[] = {
    0, 1, 2, 4, 5, 6
};

s16 D_800E3B44[] = {
    0, 1, 2, 3, 4, 5
};

s16 *D_800E3B50[] = {
    D_800E38B0, D_800E38B0, D_800E38BC, D_800E38C8,
    D_800E38D4, D_800E38E0, D_800E38EC, D_800E38F8
};

s16 *D_800E3B70[] = {
    D_800E3904, D_800E3904, D_800E3910, D_800E391C,
    D_800E3928, D_800E3934, D_800E3940, D_800E394C
};

s16 *D_800E3B90[] = {
    D_800E3958, D_800E3964, D_800E3964, D_800E3970,
    D_800E397C, D_800E3988, D_800E3994, D_800E39A0
};

s16 *D_800E3BB0[] = {
    D_800E39AC, D_800E39B8, D_800E39C4, D_800E39C4,
    D_800E39D0, D_800E39DC, D_800E39E8, D_800E39F4
};

s16 *D_800E3BD0[] = {
    D_800E3A00, D_800E3A0C, D_800E3A18, D_800E3A24,
    D_800E3A24, D_800E3A30, D_800E3A3C, D_800E3A48
};

s16 *D_800E3BF0[] = {
    D_800E3A54, D_800E3A60, D_800E3A6C, D_800E3A84,
    D_800E3A78, D_800E3A78, D_800E3A90, D_800E3A9C
};

s16 *D_800E3C10[] = {
    D_800E3AA8, D_800E3AB4, D_800E3AC0, D_800E3AE4,
    D_800E3ACC, D_800E3AD8, D_800E3ACC, D_800E3AF0
};

s16 *D_800E3C30[] = {
    D_800E3AFC, D_800E3B08, D_800E3B14, D_800E3B38,
    D_800E3B20, D_800E3B2C, D_800E3B44, D_800E3B44
};

s16 **D_800E3C50[] = {
    D_800E3B50, D_800E3B70, D_800E3B90, D_800E3BB0,
    D_800E3BD0, D_800E3BF0, D_800E3C10, D_800E3C30
};

// func_80027D00
s32 get_player_index_for_player(Player *player) {
    s32 index;

    if (player == gPlayerOne) {
        index = 0;
    }
    if (player == gPlayerTwo) {
        index = 1;
    }
    if (player == gPlayerThree) {
        index = 2;
    }
    if (player == gPlayerFour) {
        index = 3;
    }
    if (player == gPlayerFive) {
        index = 4;
    }
    if (player == gPlayerSix) {
        index = 5;
    }
    if (player == gPlayerSeven) {
        index = 6;
    }
    if (player == gPlayerEight) {
        index = 7;
    }
    return index;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_800C94A4(s32, s8, u16 *); // extern
void func_800C9A88(s32, s8, u16 *); // extern
extern s32 D_8018D168;

void func_80027DA8(u16 *arg0, s8 arg1) {
    u16 *temp_a2;
    u16 temp_v0;
    u16 temp_v0_2;

    temp_a2 = arg0;
    if (D_8015F890 != 1) {
        temp_v0 = *arg0;
        if ((temp_v0 & 0x10) != 0x10) {
            if ((D_8018D168 == 1) && ((temp_v0 & 0x4000) == 0x4000) && ((temp_v0 & 0x100) != 0x100)) {
                arg0 = temp_a2;
                func_800C94A4(arg1 & 0xFF, arg1, temp_a2);
                *arg0 = *arg0 | 0x10;
                return;
            }
            if ((temp_v0 & 0x2000) == 0) {
                arg0 = temp_a2;
                func_800C9A88(arg1 & 0xFF, arg1, temp_a2);
                *arg0 = *arg0 | 0x10;
                return;
            }
            // Duplicate return node #14. Try simplifying control flow for better match
            return;
        }
        // Duplicate return node #14. Try simplifying control flow for better match
        return;
    }
    temp_v0_2 = *temp_a2;
    if ((temp_v0_2 & 0x10) != 0x10) {
        if ((D_8018D168 == 1) && (temp_a2 == gPlayerOne)) {
            arg0 = temp_a2;
            func_800C94A4(arg1 & 0xFF, arg1, temp_a2);
            *arg0 = *arg0 | 0x10;
            return;
        }
        if ((temp_v0_2 & 0x2000) == 0) {
            arg0 = temp_a2;
            func_800C9A88(arg1 & 0xFF, arg1, temp_a2);
            *arg0 = *arg0 | 0x10;
        }
        // Duplicate return node #14. Try simplifying control flow for better match
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_80027DA8.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
void func_800C8F80(s32, ?, s8);                        /* extern */
void func_800C9018(s32, ?, s8);                        /* extern */
void func_800CA288(s32, ?, s8);                        /* extern */
void func_800CA2B8(s32, s8);                           /* extern */
void func_800CA2E4(s32, ?, s8);                        /* extern */
void func_800CA30C(s32, s8);                           /* extern */
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_80027EDC(u16 *arg0, s8 playerId) {
    s16 *sp1C;
    s16 *temp_v0_10;
    s16 *temp_v0_12;
    s16 *temp_v0_13;
    s16 *temp_v0_15;
    s16 *temp_v0_16;
    s16 *temp_v0_17;
    s16 *temp_v0_18;
    s16 *temp_v0_20;
    s16 *temp_v0_21;
    s16 *temp_v0_23;
    s16 *temp_v0_24;
    s16 *temp_v0_26;
    s16 *temp_v0_27;
    s16 *temp_v0_29;
    s16 *temp_v0_30;
    s16 *temp_v0_32;
    s16 *temp_v0_33;
    s16 *temp_v0_35;
    s16 *temp_v0_36;
    s16 *temp_v0_38;
    s16 *temp_v0_39;
    s16 *temp_v0_3;
    s16 *temp_v0_40;
    s16 *temp_v0_41;
    s16 *temp_v0_43;
    s16 *temp_v0_44;
    s16 *temp_v0_46;
    s16 *temp_v0_47;
    s16 *temp_v0_4;
    s16 *temp_v0_6;
    s16 *temp_v0_7;
    s16 *temp_v0_9;
    s16 *var_v0;
    s16 temp_v0_11;
    s16 temp_v0_14;
    s16 temp_v0_19;
    s16 temp_v0_22;
    s16 temp_v0_25;
    s16 temp_v0_28;
    s16 temp_v0_2;
    s16 temp_v0_31;
    s16 temp_v0_34;
    s16 temp_v0_37;
    s16 temp_v0_42;
    s16 temp_v0_45;
    s16 temp_v0_5;
    s16 temp_v0_8;
    s16 var_a0;
    s8 var_a2;
    u16 temp_t5;
    u16 temp_t9;
    u16 temp_v0;

    temp_v0 = *arg0;
    var_a2 = playerId;
    if (((temp_v0 & 0x4000) == 0x4000) && ((temp_v0 & 0x100) != 0x100)) {
        temp_t9 = (u16) gCurrentCourseId;
        switch (temp_t9) {                          /* switch 1 */
        case 0:                                     /* switch 1 */
            temp_v0_2 = (s16) gNearestWaypointByPlayerId[var_a2];
            if ((temp_v0_2 >= 0x19B) && (temp_v0_2 < 0x1B9)) {
                temp_v0_3 = &D_80165300[var_a2];
                if (*temp_v0_3 != 1) {
                    sp1C = temp_v0_3;
                    func_800CA288(var_a2 & 0xFF, 0x55, var_a2);
                }
                *temp_v0_3 = 1;
                return;
            }
            temp_v0_4 = &D_80165300[var_a2];
            if (*temp_v0_4 != 0) {
                sp1C = temp_v0_4;
                func_800CA2B8(var_a2 & 0xFF, var_a2);
                var_v0 = temp_v0_4;
                goto block_127;
            }
            break;
        case 1:                                     /* switch 1 */
            temp_v0_5 = (s16) gNearestWaypointByPlayerId[var_a2];
            if ((temp_v0_5 >= 0xA0) && (temp_v0_5 < 0xB4)) {
                temp_v0_6 = &D_80165300[var_a2];
                if (*temp_v0_6 != 1) {
                    sp1C = temp_v0_6;
                    func_800CA288(var_a2 & 0xFF, 0x55, var_a2);
                }
                *temp_v0_6 = 1;
                return;
            }
            temp_v0_7 = &D_80165300[var_a2];
            if (*temp_v0_7 != 0) {
                sp1C = temp_v0_7;
                func_800CA2B8(var_a2 & 0xFF, var_a2);
                var_v0 = temp_v0_7;
                goto block_127;
            }
            break;
        case 2:                                     /* switch 1 */
            temp_v0_8 = (s16) gNearestWaypointByPlayerId[var_a2];
            if ((temp_v0_8 >= 0x29) && (temp_v0_8 < 0x1D2)) {
                temp_v0_9 = &D_80165300[var_a2];
                if (*temp_v0_9 != 1) {
                    sp1C = temp_v0_9;
                    func_800CA288(var_a2 & 0xFF, 0x41, var_a2);
                }
                *temp_v0_9 = 1;
                return;
            }
            temp_v0_10 = &D_80165300[var_a2];
            if (*temp_v0_10 != 0) {
                sp1C = temp_v0_10;
                func_800CA2B8(var_a2 & 0xFF, var_a2);
                var_v0 = temp_v0_10;
                goto block_127;
            }
            break;
        case 3:                                     /* switch 1 */
            temp_v0_11 = (s16) gNearestWaypointByPlayerId[var_a2];
            if ((temp_v0_11 >= 0x180) && (temp_v0_11 < 0x1E1)) {
                temp_v0_12 = &D_80165300[var_a2];
                if (*temp_v0_12 != 1) {
                    sp1C = temp_v0_12;
                    func_800CA288(var_a2 & 0xFF, 0x41, var_a2);
                }
                *temp_v0_12 = 1;
                return;
            }
            temp_v0_13 = &D_80165300[var_a2];
            if (*temp_v0_13 != 0) {
                sp1C = temp_v0_13;
                func_800CA2B8(var_a2 & 0xFF, var_a2);
                var_v0 = temp_v0_13;
                goto block_127;
            }
            break;
        case 8:                                     /* switch 1 */
            temp_v0_14 = (s16) gNearestWaypointByPlayerId[var_a2];
            if ((temp_v0_14 >= 0x145) && (temp_v0_14 < 0x18B)) {
                temp_v0_15 = &D_80165300[var_a2];
                if (*temp_v0_15 != 1) {
                    sp1C = temp_v0_15;
                    func_800CA288(var_a2 & 0xFF, 0x55, var_a2);
                }
                *temp_v0_15 = 1;
                return;
            }
            temp_v0_16 = &D_80165300[var_a2];
            if (*temp_v0_16 != 0) {
                sp1C = temp_v0_16;
                func_800CA2B8(var_a2 & 0xFF, var_a2);
                var_v0 = temp_v0_16;
                goto block_127;
            }
            break;
        case 10:                                    /* switch 1 */
            if ((temp_v0 & 0x800) != 0x800) {
                temp_v0_17 = &D_80165300[var_a2];
                if (*temp_v0_17 != 1) {
                    sp1C = temp_v0_17;
                    func_800CA288(var_a2 & 0xFF, 0x1E, var_a2);
                }
                *temp_v0_17 = 1;
                return;
            }
            temp_v0_18 = &D_80165300[var_a2];
            if (*temp_v0_18 != 0) {
                sp1C = temp_v0_18;
                func_800CA2B8(var_a2 & 0xFF, var_a2);
                var_v0 = temp_v0_18;
                goto block_127;
            }
            break;
        case 12:                                    /* switch 1 */
            temp_v0_19 = (s16) gNearestWaypointByPlayerId[var_a2];
            if ((temp_v0_19 >= 0x11C) && (temp_v0_19 < 0x209)) {
                temp_v0_20 = &D_80165300[var_a2];
                if (*temp_v0_20 != 1) {
                    sp1C = temp_v0_20;
                    func_800CA288(var_a2 & 0xFF, 0x55, var_a2);
                }
                *temp_v0_20 = 1;
                return;
            }
            temp_v0_21 = &D_80165300[var_a2];
            if (*temp_v0_21 != 0) {
                sp1C = temp_v0_21;
                func_800CA2B8(var_a2 & 0xFF, var_a2);
                var_v0 = temp_v0_21;
                goto block_127;
            }
            break;
        case 18:                                    /* switch 1 */
            temp_v0_22 = (s16) gNearestWaypointByPlayerId[var_a2];
            if (((temp_v0_22 >= 0) && (temp_v0_22 < 0x65)) || ((temp_v0_22 >= 0x14A) && (temp_v0_22 < 0x21F))) {
                temp_v0_23 = &D_80165300[var_a2];
                if (*temp_v0_23 != 2) {
                    sp1C = temp_v0_23;
                    func_800C8F80(var_a2 & 0xFF, 0x0170802D, var_a2);
                }
                *temp_v0_23 = 2;
                return;
            }
            if ((temp_v0_22 >= 0x288) && (temp_v0_22 < 0x305)) {
                temp_v0_24 = &D_80165300[var_a2];
                if (*temp_v0_24 != 1) {
                    sp1C = temp_v0_24;
                    func_800CA288(var_a2 & 0xFF, 0x55, var_a2);
                }
                *temp_v0_24 = 1;
                return;
            }
            var_v0 = &D_80165300[var_a2];
            var_a0 = *var_v0;
            if (var_a0 != 0) {
                if (var_a0 == 1) {
                    sp1C = var_v0;
                    playerId = var_a2;
                    func_800CA2B8(var_a2 & 0xFF, var_a2);
                    var_a2 = playerId;
                    var_a0 = *var_v0;
                }
                if (var_a0 == 2) {
                    sp1C = var_v0;
                    func_800C9018(var_a2 & 0xFF, 0x0170802D, var_a2);
                }
                goto block_127;
            }
            break;
        }
    } else {
        temp_t5 = (u16) gCurrentCourseId;
        switch (temp_t5) {                          /* switch 2 */
        case 0:                                     /* switch 2 */
            temp_v0_25 = (s16) gNearestWaypointByPlayerId[var_a2];
            if ((temp_v0_25 >= 0x19B) && (temp_v0_25 < 0x1B9)) {
                temp_v0_26 = &D_80165300[var_a2];
                if (*temp_v0_26 != 1) {
                    sp1C = temp_v0_26;
                    func_800CA2E4(var_a2 & 0xFF, 0x55, var_a2);
                }
                *temp_v0_26 = 1;
                return;
            }
            temp_v0_27 = &D_80165300[var_a2];
            if (*temp_v0_27 != 0) {
                sp1C = temp_v0_27;
                func_800CA30C(var_a2 & 0xFF, var_a2);
                var_v0 = temp_v0_27;
block_127:
                *var_v0 = 0;
            }
        default:                                    /* switch 2 */
        default:                                    /* switch 1 */
            return;
        case 1:                                     /* switch 2 */
            temp_v0_28 = (s16) gNearestWaypointByPlayerId[var_a2];
            if ((temp_v0_28 >= 0xA0) && (temp_v0_28 < 0xB4)) {
                temp_v0_29 = &D_80165300[var_a2];
                if (*temp_v0_29 != 1) {
                    sp1C = temp_v0_29;
                    func_800CA2E4(var_a2 & 0xFF, 0x55, var_a2);
                }
                *temp_v0_29 = 1;
                return;
            }
            temp_v0_30 = &D_80165300[var_a2];
            if (*temp_v0_30 != 0) {
                sp1C = temp_v0_30;
                func_800CA30C(var_a2 & 0xFF, var_a2);
                var_v0 = temp_v0_30;
                goto block_127;
            }
            break;
        case 2:                                     /* switch 2 */
            temp_v0_31 = (s16) gNearestWaypointByPlayerId[var_a2];
            if ((temp_v0_31 >= 0x29) && (temp_v0_31 < 0x1D2)) {
                temp_v0_32 = &D_80165300[var_a2];
                if (*temp_v0_32 != 1) {
                    sp1C = temp_v0_32;
                    func_800CA2E4(var_a2 & 0xFF, 0x41, var_a2);
                }
                *temp_v0_32 = 1;
                return;
            }
            temp_v0_33 = &D_80165300[var_a2];
            if (*temp_v0_33 != 0) {
                sp1C = temp_v0_33;
                func_800CA30C(var_a2 & 0xFF, var_a2);
                var_v0 = temp_v0_33;
                goto block_127;
            }
            break;
        case 3:                                     /* switch 2 */
            temp_v0_34 = (s16) gNearestWaypointByPlayerId[var_a2];
            if ((temp_v0_34 >= 0x180) && (temp_v0_34 < 0x1E1)) {
                temp_v0_35 = &D_80165300[var_a2];
                if (*temp_v0_35 != 1) {
                    sp1C = temp_v0_35;
                    func_800CA2E4(var_a2 & 0xFF, 0x41, var_a2);
                }
                *temp_v0_35 = 1;
                return;
            }
            temp_v0_36 = &D_80165300[var_a2];
            if (*temp_v0_36 != 0) {
                sp1C = temp_v0_36;
                func_800CA30C(var_a2 & 0xFF, var_a2);
                var_v0 = temp_v0_36;
                goto block_127;
            }
            break;
        case 8:                                     /* switch 2 */
            temp_v0_37 = (s16) gNearestWaypointByPlayerId[var_a2];
            if ((temp_v0_37 >= 0x145) && (temp_v0_37 < 0x18B)) {
                temp_v0_38 = &D_80165300[var_a2];
                if (*temp_v0_38 != 1) {
                    sp1C = temp_v0_38;
                    func_800CA2E4(var_a2 & 0xFF, 0x55, var_a2);
                }
                *temp_v0_38 = 1;
                return;
            }
            temp_v0_39 = &D_80165300[var_a2];
            if (*temp_v0_39 != 0) {
                sp1C = temp_v0_39;
                func_800CA30C(var_a2 & 0xFF, var_a2);
                var_v0 = temp_v0_39;
                goto block_127;
            }
            break;
        case 10:                                    /* switch 2 */
            if ((temp_v0 & 0x800) != 0x800) {
                temp_v0_40 = &D_80165300[var_a2];
                if (*temp_v0_40 != 1) {
                    sp1C = temp_v0_40;
                    func_800CA2E4(var_a2 & 0xFF, 0x1E, var_a2);
                }
                *temp_v0_40 = 1;
                return;
            }
            temp_v0_41 = &D_80165300[var_a2];
            if (*temp_v0_41 != 0) {
                sp1C = temp_v0_41;
                func_800CA30C(var_a2 & 0xFF, var_a2);
                var_v0 = temp_v0_41;
                goto block_127;
            }
            break;
        case 12:                                    /* switch 2 */
            temp_v0_42 = (s16) gNearestWaypointByPlayerId[var_a2];
            if ((temp_v0_42 >= 0x11C) && (temp_v0_42 < 0x209)) {
                temp_v0_43 = &D_80165300[var_a2];
                if (*temp_v0_43 != 1) {
                    sp1C = temp_v0_43;
                    func_800CA2E4(var_a2 & 0xFF, 0x55, var_a2);
                }
                *temp_v0_43 = 1;
                return;
            }
            temp_v0_44 = &D_80165300[var_a2];
            if (*temp_v0_44 != 0) {
                sp1C = temp_v0_44;
                func_800CA30C(var_a2 & 0xFF, var_a2);
                var_v0 = temp_v0_44;
                goto block_127;
            }
            break;
        case 18:                                    /* switch 2 */
            temp_v0_45 = (s16) gNearestWaypointByPlayerId[var_a2];
            if ((temp_v0_45 >= 0x288) && (temp_v0_45 < 0x305)) {
                temp_v0_46 = &D_80165300[var_a2];
                if (*temp_v0_46 != 1) {
                    sp1C = temp_v0_46;
                    func_800CA2E4(var_a2 & 0xFF, 0x55, var_a2);
                }
                *temp_v0_46 = 1;
                return;
            }
            temp_v0_47 = &D_80165300[var_a2];
            if (*temp_v0_47 != 0) {
                sp1C = temp_v0_47;
                func_800CA30C(var_a2 & 0xFF, var_a2);
                var_v0 = temp_v0_47;
                goto block_127;
            }
            break;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_80027EDC.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
void control_cpu_movement(Player *, Camera *, s8, s8); /* extern */
void func_8002D028(s8);                                /* extern */
void func_8002E594(Player *, Camera *, s8, s8);        /* extern */
void func_8002F730(Player *, Camera *, s8, s8);        /* extern */
extern s16 D_801633F8;

void func_80028864(Player *player, Camera *camera, s8 arg2, s8 arg3) {
    u16 sp1E;
    s16 temp_v0_7;
    s32 temp_t4;
    s32 temp_v0_2;
    u16 temp_v0;
    u16 temp_v0_3;
    u16 temp_v0_4;
    u16 temp_v0_5;
    u16 temp_v0_6;

    temp_v0 = player->unk_000;
    if (!(temp_v0 & 0x2000)) {
        switch (gActiveScreenMode) {                        /* irregular */
        case SCREEN_MODE_1P:
            sp1E = func_8001FB0C(player, camera1, (f32) D_8016557C, 0.0f);
            break;
        case SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL:
        case SCREEN_MODE_2P_SPLITSCREEN_VERTICAL:
            temp_v0_3 = func_8001FB0C(player, camera1, (f32) D_8016557C, 0.0f);
            sp1E = temp_v0_3;
            if (temp_v0_3 == 1) {

            } else {
                sp1E = func_8001FB0C(player, camera2, (f32) D_8016557C, 0.0f);
            }
            break;
        case SCREEN_MODE_3P_4P_SPLITSCREEN:
            temp_v0_4 = func_8001FB0C(player, camera1, (f32) D_8016557C, 0.0f);
            sp1E = temp_v0_4;
            if (temp_v0_4 == 1) {

            } else {
                temp_v0_5 = func_8001FB0C(player, camera2, (f32) D_8016557C, 0.0f);
                sp1E = temp_v0_5;
                if (temp_v0_5 == 1) {

                } else {
                    temp_v0_6 = func_8001FB0C(player, camera3, (f32) D_8016557C, 0.0f);
                    sp1E = temp_v0_6;
                    if (temp_v0_6 == 1) {

                    } else {
                        sp1E = func_8001FB0C(player, camera4, (f32) D_8016557C, 0.0f);
                    }
                }
            }
            break;
        }
        if ((sp1E == 1) || ((player->unk_000 & 0x100) == 0x100) || (gModeSelection == BATTLE) || (temp_v0_7 = player->unk_0CA, ((temp_v0_7 & 2) != 0)) || (temp_v0_7 & 8) || (*(&D_801633F8 + (arg2 * 2)) == (s16) 1U)) {
            temp_t4 = player->unk_0BC & ~0x1000;
            player->unk_0BC = temp_t4;
            if (((temp_t4 & 0x80) == 0x80) || ((temp_t4 & 0x40) == 0x40) || ((temp_t4 & 0x400) == 0x400) || ((temp_t4 & 0x4000) == 0x4000) || ((temp_t4 & 0x80000) == 0x80000) || ((temp_t4 & 0x800000) == 0x800000) || ((temp_t4 & 0x01000000) == 0x01000000) || ((temp_t4 & 0x02000000) == 0x02000000) || ((temp_t4 & 0x20000) == 0x20000) || (player->unk_044 & 0x800)) {
                func_8002E594(player, camera, arg3, arg2);
                return;
            }
            func_8002D268(player, camera, arg3, arg2);
            return;
        }
        control_cpu_movement(player, camera, arg3, arg2);
        return;
    }
    if ((temp_v0 & 0x200) == 0x200) {
        func_8002D028(arg2);
        func_8002F730(player, camera, arg3, arg2);
        return;
    }
    if (temp_v0 & 0x80) {
        func_8002D268(player, camera, arg3, arg2);
        return;
    }
    if ((temp_v0 & 0x4000) != 0x4000) {
        player->unk_09C = 50.0f;
    }
    player->unk_0BC &= ~8;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_80028864.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_8002E594(s8, s8); // extern

void func_80028C44(Player *arg0, s32 arg1, s8 arg2, s8 arg3) {
    s32 temp_t9;

    if ((arg0->unk_000 & 0x2000) == 0) {
        temp_t9 = arg0->unk_0BC & ~0x1000;
        arg0->unk_0BC = temp_t9;
        if (((temp_t9 & 0x80) == 0x80) || ((temp_t9 & 0x40) == 0x40) || ((temp_t9 & 0x400) == 0x400) || ((temp_t9 & 0x4000) == 0x4000) || ((temp_t9 & 0x80000) == 0x80000) || ((temp_t9 & 0x800000) == 0x800000) || ((temp_t9 & 0x1000000) == 0x1000000) || ((temp_t9 & 0x2000000) == 0x2000000) || ((temp_t9 & 0x20000) == 0x20000) || ((arg0->unk_044 & 0x800) != 0)) {
            func_8002E594(arg3, arg2);
            return;
        }
        func_8002D268(arg0, arg1, arg3, arg2);
        return;
    }
    arg0->unk_0BC &= -9;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_80028C44.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_8002E594(s8, s8); // extern
extern s32 D_800DC510;

void func_80028D3C(Player *arg0, s32 arg1, s8 arg2, s8 arg3) {
    s16 temp_v0;
    s32 temp_t3;
    s32 temp_v0_2;

    if ((((arg0->unk_000 & 0x2000) == 0) && (D_800DC510 != 5)) || (temp_v0 = arg0->unk_0CA, ((temp_v0 & 2) != 0)) || ((temp_v0 & 8) != 0) || (temp_v0_2 = arg0->unk_0BC, ((temp_v0_2 & 0x4F010CC0) != 0))) {
        temp_t3 = arg0->unk_0BC & ~0x1000;
        arg0->unk_0BC = temp_t3;
        if (((temp_t3 & 0x80) == 0x80) || ((temp_t3 & 0x40) == 0x40) || ((temp_t3 & 0x400) == 0x400) || ((temp_t3 & 0x4000) == 0x4000) || ((temp_t3 & 0x80000) == 0x80000) || ((temp_t3 & 0x800000) == 0x800000) || ((temp_t3 & 0x1000000) == 0x1000000) || ((temp_t3 & 0x2000000) == 0x2000000) || ((temp_t3 & 0x20000) == 0x20000) || ((arg0->unk_044 & 0x800) != 0)) {
            func_8002E594(arg3, arg2);
            return;
        }
        func_8002D268(arg0, arg1, arg3, arg2);
        return;
    }
    arg0->unk_0BC = temp_v0_2 & ~8;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_80028D3C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_80027DA8(s8); // extern
void func_80028864(void *, s32, s8, s8); // extern
void func_80028C44(void *, s32, s8, s8); // extern
void func_80028D3C(void *, s32, s8, s8); // extern
void func_80038C6C(s8, s8); // extern

void func_80028E70(void *arg0, s32 arg1, s8 arg2, s8 arg3) {
    s32 temp_v0_2;
    u16 temp_v0;

    temp_v0 = arg0->unk0;
    if ((temp_v0 & 0x8000) == 0x8000) {
        if (gGamestate == ENDING_SEQUENCE) {
            if ((temp_v0 & 0x2000) == 0) {
                func_80038C6C(arg3, arg2);
                return;
            }
            arg0->unkBC = arg0->unkBC & ~8;
            return;
        }
        func_80027DA8(arg2);
        temp_v0_2 = gModeSelection;
        if ((temp_v0_2 != TIME_TRIALS) && (temp_v0_2 != VERSUS)) {
            if (temp_v0_2 != BATTLE) {
                func_80028864(arg0, arg1, arg2, arg3);
                // Duplicate return node #12. Try simplifying control flow for better match
                return;
            }
            func_80028D3C(arg0, arg1, arg2, arg3);
            return;
        }
        func_80028C44(arg0, arg1, arg2, arg3);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_80028E70.s")
#endif

UNUSED void func_80028F5C(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {

}

void func_80028F70(void) {
    D_80164AF0 = 0;
    func_80028E70(gPlayerOneCopy, camera1, 0, 0);
    func_80028E70(gPlayerTwo, camera1, 1, 0);
    func_80028E70(gPlayerThree, camera1, 2, 0);
    func_80028E70(gPlayerFour, camera1, 3, 0);
    func_80028E70(gPlayerFive, camera1, 4, 0);
    func_80028E70(gPlayerSix, camera1, 5, 0);
    func_80028E70(gPlayerSeven, camera1, 6, 0);
    func_80028E70(gPlayerEight, camera1, 7, 0);
}

void func_80029060(void) {
    D_80164AF0 = 0;
    func_80028E70(gPlayerOneCopy, camera1, 0, 0);
    func_80028E70(gPlayerTwo, camera1, 1, 0);
    func_80028E70(gPlayerThree, camera1, 2, 0);
    func_80028E70(gPlayerFour, camera1, 3, 0);
    func_80028E70(gPlayerFive, camera1, 4, 0);
    func_80028E70(gPlayerSix, camera1, 5, 0);
    func_80028E70(gPlayerSeven, camera1, 6, 0);
    func_80028E70(gPlayerEight, camera1, 7, 0);
}

void func_80029150(void) {

}

void func_80029158(void) {
    D_80164AF0 = 0;
    func_80028E70(gPlayerOneCopy, camera1, 0, 0);
    func_80028E70(gPlayerTwo, camera1, 1, 0);
    func_80028E70(gPlayerThree, camera1, 2, 0);
    func_80028E70(gPlayerFour, camera1, 3, 0);
}

void func_800291E8(void) {

}

void func_800291F0(void) {

}

void func_800291F8(void) {

}

void func_80029200(Player *player, s8 arg1) {
    if ((s32) player->unk_0C4 < -0x71B) {
        player->unk_24C[arg1] = 0;
    }
    if (((s32) player->unk_0C4 < -0x4F9) && ((s32) player->unk_0C4 >= -0x71B)) {
        player->unk_24C[arg1] = 1;
    }
    if ((player->unk_0C4 < -0x221) && (player->unk_0C4 >= -0x4F9)) {
        player->unk_24C[arg1] = 2;
    }
    if ((player->unk_0C4 < -0x16B) && (player->unk_0C4 >= -0x221)) {
        player->unk_24C[arg1] = 3;
    }
    if ((player->unk_0C4 < 0x16C) && (player->unk_0C4 >= -0x16B)) {
        player->unk_24C[arg1] = 4;
    }
    if ((player->unk_0C4 >= 0x16C) && (player->unk_0C4 < 0x222)) {
        player->unk_24C[arg1] = 5;
    }
    if ((player->unk_0C4 >= 0x222) && (player->unk_0C4 < 0x4FA)) {
        player->unk_24C[arg1] = 6;
    }
    if ((player->unk_0C4 >= 0x4FA) && (player->unk_0C4 < 0x71C)) {
        player->unk_24C[arg1] = 7;
    }
    if (player->unk_0C4 >= 0x71C) {
        player->unk_24C[arg1] = 8;
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit 9841ff34ca242f5f14b2eab2b54a7a65ac47d80f
static f32 D_800DDBD4[8] = { 0.75f, 0.75f, 0.75f, 0.75f, 0.75f, 0.75f, 0.75f, 0.75f };

void func_8002934C(Player *player, Camera *camera, s8 arg2, s8 arg3) {
    f32 sp50;
    f32 sp28;
    void *sp24;
    s32 sp20;
    f32 temp_f0;
    f32 temp_f2;
    f32 var_f0;
    s16 *temp_a1;
    s16 *temp_v0_2;
    s16 var_v1;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_t3;
    s32 temp_t6;
    s32 temp_t6_3;
    s32 temp_t7;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 temp_v1_6;
    s32 var_a1;
    s32 var_a2;
    s32 var_t0;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    u16 temp_t6_2;
    u16 temp_t8;
    u16 temp_v0;
    u16 var_a0;
    void *temp_a3;

    temp_a3 = player + (arg2 * 2);
    player->unk_048[arg2] = atan2s(player->pos[0] - camera->pos[0], player->pos[2] - camera->pos[2]);
    player->unk_244[arg2] = (u16) ((s32) ((player->unk_02C[1] + player->unk_048[arg2] + player->unk_0C0) & 0xFFFF) / 128);
    temp_v1 = player->unk_0BC;
    temp_f0 = player->unk_230 - player->unk_23C;
    temp_f2 = D_800DDBD4[player->characterId] * 18.0f * player->unk_224;
    if ((temp_v1 & 8) != 8) {
        if ((temp_v1 & 0x40000000) == 0x40000000) {
            sp24 = temp_a3;
            sp50 = temp_f2;
            temp_a3->unkCC = (s16) (s32) ((f64) func_802B7C40(temp_f0 / temp_f2) * 1.6);
        } else {
            sp24 = temp_a3;
            sp50 = temp_f2;
            temp_a3->unkCC = (s16) (func_802B7C40(temp_f0 / temp_f2) * 2);
        }
    }
    if ((player->unk_0BC & 0x04000000) == 0x04000000) {
        temp_a3->unkCC = (s16) (s32) player->unk_D9C;
    }
    if ((player->unk_0BC & 8) != 8) {
        sp24 = temp_a3;
        temp_a3->unkD4 = (s16) (s32) ((f64) func_802B7C40((player->unk_1F8 - player->unk_1FC) / temp_f2) * 0.9);
    } else {
        temp_v0 = player->unk_244[arg2];
        if (((s32) temp_v0 >= 0) && ((s32) temp_v0 < 0x101)) {
            var_f0 = player->rotY - player->pos[1];
        } else {
            var_f0 = player->pos[1] - player->rotY;
        }
        sp24 = temp_a3;
        temp_a3->unkD4 = (s16) (s32) ((f64) func_802B7C40(var_f0 / temp_f2) * 0.5);
    }
    if ((player->unk_0BC & 0x04000000) == 0x04000000) {
        temp_a3->unkD4 = (s16) (s32) player->unk_D9C;
    }
    sp24 = temp_a3;
    func_80029200(player, arg2);
    temp_a0 = (player->unk_02C[1] + temp_a3->unk48 + player->unk_0C0) & 0xFFFF;
    sp20 = temp_a0;
    sp28 = sins((u16) temp_a0);
    move_s16_towards(temp_a3 + 0x50, (s16) (s32) ((coss((u16) temp_a0) * (f32) temp_a3->unkCC) + ((f32) temp_a3->unkD4 * sp28)), 0.5f);
    var_a0 = temp_a3->unk244;
    temp_t3 = arg2 * 4;
    temp_v1_2 = 4 << temp_t3;
    temp_t8 = player->unk_002 & ~temp_v1_2;
    player->unk_002 = temp_t8;
    if ((s32) var_a0 >= 0x101) {
        var_a0 = (0x201 - var_a0) & 0xFFFF;
        player->unk_002 = temp_t8 | temp_v1_2;
    }
    temp_v1_3 = player->unk_0BC;
    if (((temp_v1_3 & 0x80) != 0x80) && ((temp_v1_3 & 0x40) != 0x40) && (var_v0 = temp_v1_3 & 0x80000, (var_v0 != 0x80000)) && ((temp_v1_3 & 0x800000) != 0x800000) && ((temp_v1_3 & 0x20000) != 0x20000) && !(player->unk_044 & 0x800)) {
        var_a1 = 0x666;
        if ((s32) var_a0 < 0x51) {
            var_a1 = 0x208;
            goto block_28;
        }
        var_t0 = 0xF;
    } else {
        var_a1 = 0x666;
        var_v0 = temp_v1_3 & 0x80000;
block_28:
        var_t0 = 0;
    }
    if ((var_v0 == 0x80000) || ((temp_v1_3 & 0x800000) == 0x800000) || (player->unk_044 & 0x800)) {
        temp_a3->unk50 = 0;
    }
    if (((player->unk_0BC & 8) == 8) && ((player->unk_0CA & 2) == 2)) {
        temp_a3->unk50 = 0;
    }
    temp_t9 = (player->unk_02C[1] + temp_a3->unk48 + player->unk_0C0) & 0xFFFF;
    if (((player->unk_0BC & 0x80) == 0x80) || ((player->unk_0BC & 0x40) == 0x40) || ((player->unk_0BC & 0x80000) == 0x80000) || ((player->unk_0BC & 0x800000) == 0x800000) || ((player->unk_0BC & 0x20000) == 0x20000) || (player->unk_044 & 0x800)) {
        if (temp_t9 >= 0x7FF9) {
            temp_t6 = ((s32) (-temp_t9 & 0xFFFF) / var_a1) & 0xFFFF;
            var_v0_2 = temp_t6;
            if (temp_t6 == 0) {
                var_v0_2 = 1;
            }
        } else {
            var_v0_2 = (temp_t9 / var_a1) & 0xFFFF;
        }
    } else {
        var_v0_3 = temp_t9;
        if (temp_t9 >= 0x7FF9) {
            var_v0_3 = -var_v0_3 & 0xFFFF;
        }
        var_v0_2 = (var_v0_3 / var_a1) & 0xFFFF;
    }
    temp_t6_2 = var_v0_2 + var_t0;
    temp_a3->unk244 = temp_t6_2;
    if ((temp_t6_2 & 0xFFFF) >= 0x23) {
        temp_a3->unk244 = 0x0022U;
    }
    temp_v1_4 = player->unk_0BC;
    if (((temp_v1_4 & 0x80) || (temp_v1_4 & 0x40) || (temp_v1_4 & 0x80000) || (temp_v1_4 & 0x800000) || (temp_v1_4 & 0x20000) || (player->unk_044 & 0x800)) && ((s32) temp_a3->unk244 >= 0x14)) {
        temp_a3->unk244 = 0U;
    }
    if ((s32) temp_a3->unk24C >= 9) {
        temp_a3->unk24C = 4U;
    }
    temp_v1_5 = player->unk_0BC;
    if (((temp_v1_5 & 0x80000) == 0x80000) || ((temp_v1_5 & 0x800000) == 0x800000) || (player->unk_044 & 0x800)) {
        temp_a3->unk24C = 4U;
    }
    if (((player->unk_0BC & 0x400) == 0x400) || ((player->unk_0BC & 0x01000000) == 0x01000000) || ((player->unk_0BC & 0x02000000) == 0x02000000) || (player->unk_0BC & 0x10000) || (player->unk_0BC & 0x80) || (player->unk_0BC & 0x40)) {
        var_a2 = 1 << temp_t3;
        player->unk_002 |= var_a2;
        temp_t9_2 = arg3 * 2;
        temp_v0_2 = (arg2 * 0x10) + temp_t9_2 + D_80165190;
        *temp_v0_2 = 1;
        temp_v1_6 = player->unk_0BC;
        if ((temp_v1_6 & 0x80) || (temp_v1_6 & 0x40)) {
            if ((temp_a3->unk244 == *(D_801650D0 + ((arg2 * 0x10) + temp_t9_2))) && (temp_a3->unk24C == *(D_80165110 + ((arg2 * 0x10) + temp_t9_2)))) {
                player->unk_002 &= ~var_a2;
                *temp_v0_2 = 1;
            }
        } else if (((s16) player->unk_0A8 >> 8) == ((s16) *(D_80165150 + ((arg2 * 0x10) + temp_t9_2)) >> 8)) {
            player->unk_002 &= ~var_a2;
        }
        var_v1 = *(D_801650D0 + ((arg2 * 0x10) + temp_t9_2));
    } else {
        var_a2 = 1 << temp_t3;
        player->unk_002 |= var_a2;
        temp_t6_3 = arg3 * 2;
        temp_t7 = arg2 * 0x10;
        temp_a1 = temp_t7 + temp_t6_3 + D_801650D0;
        var_v1 = *temp_a1;
        if ((temp_a3->unk244 == var_v1) && (temp_a3->unk24C == *(D_80165110 + (temp_t7 + temp_t6_3))) && (*(D_80165190 + (temp_t7 + temp_t6_3)) == 0)) {
            player->unk_002 &= ~var_a2;
            var_v1 = *temp_a1;
        }
    }
    temp_a0_2 = var_v1 - temp_a3->unk244;
    if ((temp_a0_2 >= 0x14) || (temp_a0_2 < -0x13)) {
        player->unk_002 |= var_a2;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_8002934C.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
s32 func_802AFA34(Player *, KartBoundingBoxCorner *, f32, f32, f32); /* extern */
void func_802B6540(f32, f32 (*)[3], ?, ?, ?, s32);     /* extern */
static f32 D_800DDBD4[8] = { 0.75f, 0.75f, 0.75f, 0.75f, 0.75f, 0.75f, 0.75f, 0.75f };

void func_80029B4C(Player *player, f32 arg1, f32 arg2, f32 arg3) {
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    f32 sp88;
    f32 sp84;
    f32 sp80;
    f32 sp54;
    f32 sp50;
    f32 sp48;
    f32 sp40;
    f64 sp38;
    f32 sp34;
    f64 sp28;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;
    f32 temp_f2_3;
    f32 var_f12;
    f64 temp_f0;
    f64 temp_f2_2;
    s16 temp_v0;
    s16 var_a1;
    s32 temp_t2;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 var_v0;
    s32 var_v1;
    u16 temp_t5;

    if ((player->unk_0BC & 0x40000000) == 0x40000000) {
        var_f12 = (f32) ((f64) (D_800DDBD4[player->characterId] / 2.0f) * ((f64) player->unk_224 * 1.5) * 18.0);
    } else {
        var_f12 = (D_800DDBD4[player->characterId] / 2.0f) * 18.0f;
    }
    sp48 = var_f12;
    func_802B6540(var_f12, (f32 (*)[3]) &sp5C[0], 0, 0x3F800000, 0, player->unk_02E + player->unk_0C0);
    temp_f0 = (f64) sp48;
    temp_f2 = sp48 - 2.0f;
    sp8C = (f32) (temp_f0 - 3.6);
    sp38 = temp_f0;
    sp94 = temp_f2;
    sp40 = temp_f2;
    sp90 = -player->boundingBoxSize;
    func_802B63B8(&sp8C, (f32 (*)[3]) &sp5C[0]);
    sp80 = player->boundingBoxCorners[0].cornerPos[0];
    sp84 = player->boundingBoxCorners[0].cornerPos[1];
    sp88 = player->boundingBoxCorners[0].cornerPos[2];
    player->boundingBoxCorners[0].cornerPos[0] = sp8C + player->pos[0];
    player->boundingBoxCorners[0].cornerPos[1] = sp90 + player->pos[1];
    player->boundingBoxCorners[0].cornerPos[2] = sp94 + player->pos[2];
    func_802AFA34(player, player->boundingBoxCorners, sp80, sp84, sp88);
    temp_f14 = -sp48;
    temp_f2_2 = (f64) temp_f14;
    sp8C = (f32) (temp_f2_2 + 3.6);
    sp34 = temp_f14;
    sp28 = temp_f2_2;
    sp94 = sp40;
    sp90 = -player->boundingBoxSize;
    func_802B63B8(&sp8C, (f32 (*)[3]) &sp5C[0]);
    sp80 = player->boundingBoxCorners[1].cornerPos[0];
    sp84 = player->boundingBoxCorners[1].cornerPos[1];
    sp88 = player->boundingBoxCorners[1].cornerPos[2];
    player->boundingBoxCorners[1].cornerPos[0] = sp8C + player->pos[0];
    player->boundingBoxCorners[1].cornerPos[1] = sp90 + player->pos[1];
    player->boundingBoxCorners[1].cornerPos[2] = sp94 + player->pos[2];
    func_802AFA34(player, &player->boundingBoxCorners[1], sp80, sp84, sp88);
    temp_f12 = sp34 + 4.0f;
    sp8C = (f32) (sp38 - 2.6);
    sp94 = temp_f12;
    sp40 = temp_f12;
    sp90 = -player->boundingBoxSize;
    func_802B63B8(&sp8C, (f32 (*)[3]) &sp5C[0]);
    sp80 = player->boundingBoxCorners[2].cornerPos[0];
    sp84 = player->boundingBoxCorners[2].cornerPos[1];
    sp88 = player->boundingBoxCorners[2].cornerPos[2];
    player->boundingBoxCorners[2].cornerPos[0] = sp8C + player->pos[0];
    player->boundingBoxCorners[2].cornerPos[1] = sp90 + player->pos[1];
    player->boundingBoxCorners[2].cornerPos[2] = sp94 + player->pos[2];
    func_802AFA34(player, &player->boundingBoxCorners[2], sp80, sp84, sp88);
    sp8C = (f32) (sp28 + 2.6);
    sp94 = sp40;
    sp90 = -player->boundingBoxSize;
    func_802B63B8(&sp8C, (f32 (*)[3]) &sp5C[0]);
    sp80 = player->boundingBoxCorners[3].cornerPos[0];
    sp84 = player->boundingBoxCorners[3].cornerPos[1];
    sp88 = player->boundingBoxCorners[3].cornerPos[2];
    player->boundingBoxCorners[3].cornerPos[0] = sp8C + player->pos[0];
    player->boundingBoxCorners[3].cornerPos[1] = sp90 + player->pos[1];
    player->boundingBoxCorners[3].cornerPos[2] = sp94 + player->pos[2];
    func_802AFA34(player, &player->boundingBoxCorners[3], sp80, sp84, sp88);
    if (!(player->unk_0BC & 8)) {
        move_f32_towards(&player->unk_230, (player->boundingBoxCorners[0].cornerGroundY + player->boundingBoxCorners[2].cornerGroundY) / 2.0f, 0.5f);
        move_f32_towards(&player->unk_23C, (player->boundingBoxCorners[1].cornerGroundY + player->boundingBoxCorners[3].cornerGroundY) / 2.0f, 0.5f);
        move_f32_towards(&player->unk_1FC, (player->boundingBoxCorners[0].cornerGroundY + player->boundingBoxCorners[1].cornerGroundY) / 2.0f, 0.5f);
        move_f32_towards(&player->unk_1F8, (player->boundingBoxCorners[2].cornerGroundY + player->boundingBoxCorners[3].cornerGroundY) / 2.0f, 0.5f);
    }
    temp_f2_3 = ((D_800DDBD4[player->characterId] * 18.0f) + 1.0f) * player->unk_224;
    sp50 = temp_f2_3;
    player->unk_206 = -func_802B7C40((player->unk_23C - player->unk_230) / temp_f2_3);
    if (((player->unk_0CA & 2) == 2) || (temp_t2 = player->unk_0BC & 8, var_v0 = temp_t2, (temp_t2 != 0))) {
        player->unk_206 = 0;
        var_v0 = player->unk_0BC & 8;
    }
    if (var_v0 != 8) {
        move_s16_towards(&player->unk_0C4, func_802B7C40((player->unk_1F8 - player->unk_1FC) / temp_f2_3), 0.5f);
    } else {
        temp_f0_2 = player->rotY - arg2;
        sp54 = temp_f0_2;
        temp_v0 = func_802B7C40(temp_f0_2 / temp_f2_3);
        var_a1 = temp_v0 * 0xA;
        if (temp_f0_2 >= 0.0f) {
            var_a1 = (s16) (temp_v0 / 4);
        }
        move_s16_towards(&player->unk_0C4, var_a1, 0.5f);
    }
    if (((player->unk_0BC & 8) == 8) && ((player->unk_0CA & 2) == 2)) {
        player->unk_0C4 = (s16) (s32) player->unk_D9C;
    }
    temp_t5 = func_802ABD10(player->unk_110.unk3A) & 0xFF;
    var_v1 = temp_t5 & 0xFFFF;
    player->unk_0F8 = temp_t5;
    if (var_v1 == 0xFE) {
        temp_v0_2 = player->unk_0BC;
        if (((temp_v0_2 & 0x100000) != 0x100000) && ((temp_v0_2 & 8) != 8)) {
            var_v1 = temp_t5 & 0xFFFF;
            player->statusEffects |= 0x800000;
        }
    }
    if (var_v1 == 0xFC) {
        temp_v0_3 = player->unk_0BC;
        if (((temp_v0_3 & 4) != 4) && ((temp_v0_3 & 8) != 8)) {
            player->statusEffects |= 0x8000;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_80029B4C.s")
#endif

#ifdef NEEDS_RODATA
// data_0DD0A0_1_1.s
// might be plain data?
extern f32 D_800DDBD4[8];// = { 0.75f, 0.75f, 0.75f, 0.75f, 0.75f, 0.75f, 0.75f, 0.75f };

void func_8002A194(Player *player, f32 arg1, f32 arg2, f32 arg3) {
    s32 stackPadding[2];
    f32 temp_f12;
    f32 var_f20;
    s32 temp_v0;
    s16 temp_v1;
    s16 var_a1;
    s32 test;
    f32 temp_f0;

    temp_v1 = -player->unk_02C[1] - player->unk_0C0;
    if ((player->unk_0BC & 0x40000000) == 0x40000000) {
        var_f20 = (((D_800DDBD4[player->characterId] * 18) / 2) * (player->unk_224 * 1.5)) - 1;
    } else {
        var_f20 = (((D_800DDBD4[player->characterId] * 18) / 2) * player->unk_224) - 1;
    }

    player->boundingBoxCorners[0].cornerPos[2] = (coss(temp_v1 + 0x2000) * var_f20) + arg3;
    temp_f12 = (sins(temp_v1 + 0x2000) * var_f20) + arg1;
    player->boundingBoxCorners[0].cornerPos[0] = temp_f12;
    player->boundingBoxCorners[0].cornerGroundY = func_802ABE30(temp_f12, arg2, player->boundingBoxCorners[0].cornerPos[2], player->unk_110.unk3A);

    player->boundingBoxCorners[1].cornerPos[2] = (coss(temp_v1 - 0x2000) * var_f20) + arg3;
    temp_f12 = (sins(temp_v1 - 0x2000) * var_f20) + arg1;
    player->boundingBoxCorners[1].cornerPos[0] = temp_f12;
    player->boundingBoxCorners[1].cornerGroundY = func_802ABE30(temp_f12, arg2, player->boundingBoxCorners[1].cornerPos[2], player->unk_110.unk3A);

    player->boundingBoxCorners[2].cornerPos[2] = (coss(temp_v1 + 0x6000) * var_f20) + arg3;
    temp_f12 = (sins(temp_v1 + 0x6000) * var_f20) + arg1;
    player->boundingBoxCorners[2].cornerPos[0] = temp_f12;
    player->boundingBoxCorners[2].cornerGroundY = func_802ABE30(temp_f12, arg2, player->boundingBoxCorners[2].cornerPos[2], player->unk_110.unk3A);

    player->boundingBoxCorners[3].cornerPos[2] = (coss(temp_v1 - 0x6000) * var_f20) + arg3;
    player->boundingBoxCorners[3].cornerPos[0] = (sins(temp_v1 - 0x6000) * var_f20) + arg1;
    player->boundingBoxCorners[3].cornerGroundY = func_802ABE30(player->boundingBoxCorners[2].cornerPos[0], arg2, player->boundingBoxCorners[2].cornerPos[2], player->unk_110.unk3A);

    if ((player->unk_0BC & 8) != 8) {
        player->unk_230 = (player->boundingBoxCorners[2].cornerGroundY + player->boundingBoxCorners[0].cornerGroundY) / 2;
        player->unk_23C = (player->boundingBoxCorners[3].cornerGroundY + player->boundingBoxCorners[1].cornerGroundY) / 2;
        player->unk_1FC = (player->boundingBoxCorners[1].cornerGroundY + player->boundingBoxCorners[0].cornerGroundY) / 2;
        player->unk_1F8 = (player->boundingBoxCorners[3].cornerGroundY + player->boundingBoxCorners[2].cornerGroundY) / 2;
    }
    player->unk_0F8 = (u8)func_802ABD10(player->unk_110.unk3A);
    player->boundingBoxCorners[3].surfaceType = player->unk_0F8;
    player->boundingBoxCorners[2].surfaceType = player->unk_0F8;
    player->boundingBoxCorners[1].surfaceType = player->unk_0F8;
    player->boundingBoxCorners[0].surfaceType = player->unk_0F8;
    var_f20 = (D_800DDBD4[player->characterId] * 18) + 1;
    temp_f0 = (player->unk_23C - player->unk_230);
    player->unk_206 = -func_802B7C40(temp_f0 / var_f20);
    if ((player->unk_0BC & 8) != 8) {
        temp_f0 = (player->unk_1F8 - player->unk_1FC);
        move_s16_towards(&player->unk_0C4, func_802B7C40(temp_f0 / var_f20), 0.5f);
    } else {
        temp_f0 = player->rotY - arg2;
        temp_v0 = func_802B7C40(temp_f0 / var_f20);
        if (temp_f0 >= 0.0f) {
            var_a1 = temp_v0 * 2;
        } else {
            var_a1 = temp_v0 * 0xA;
        }
        move_s16_towards(&player->unk_0C4, var_a1, 0.5f);
    }
    if (func_802ABD7C(player->unk_110.unk3A) != 0) {
        player->boundingBoxCorners[3].unk_14 |= 1;
    } else {
        player->boundingBoxCorners[3].unk_14 &= ~1;
    }
    if (player->unk_0F8 == 0x00FE) {
        if (((player->unk_0BC & 0x100000) != 0x100000) && ((player->unk_0BC & 8) != 8)) {
            player->statusEffects |= 0x800000;
        }
    }
    if (player->unk_0F8 == 0x00FC) {
        if (((player->unk_0BC & 4) != 4) && ((player->unk_0BC & 8) != 8)) {
            player->statusEffects |= 0x8000;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_8002A194.s")
#endif

// Near identical to func_802AC114 in memory.c
void func_8002A5F4(Vec3f arg0, f32 arg1, Vec3f arg2, f32 arg3, f32 arg4) {
    f32 temp_f0;
    f32 temp_f2;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f20;
    f32 tmp1;
    f32 tmp2;
    f32 tmp3;

    temp_f0  =  arg2[0];
    temp_f2  =  arg2[1];
    temp_f12 =  arg2[2];
    temp_f14 = -arg0[0];
    temp_f16 = -arg0[1];
    temp_f18 = -arg0[2];
    temp_f20 = (temp_f14 * temp_f0) + (temp_f16 * temp_f2) + (temp_f18 * temp_f12);
    tmp1 = temp_f0  - (temp_f20 * temp_f14);
    tmp2 = temp_f2  - (temp_f20 * temp_f16);
    tmp3 = temp_f12 - (temp_f20 * temp_f18);
    if (arg1 < -arg4) {
        arg2[0] = tmp1 - (temp_f20 * temp_f14 * arg3);
        arg2[1] = tmp2 - (temp_f20 * temp_f16 * arg3);
        arg2[2] = tmp3 - (temp_f20 * temp_f18 * arg3);
    } else {
        arg2[0] = tmp1;
        arg2[1] = tmp2;
        arg2[2] = tmp3;
    }
}

void func_8002A704(Player *player, s8 arg1) {
    player->unk_0BC |= 0x2000;
    player->statusEffects &= ~0x02000000;
    if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) != 0x100)) {
        func_800C90F4(0U, (player->characterId * 0x10) + 0x29008001);
        func_800C9060(arg1, 0x1900A40BU);
    }
    player->boostTimer = 0x0050;
}

void func_8002A79C(Player *player, s8 arg1) {
    if (((player->unk_0BC & 0x100) != 0x100) && ((player->unk_0BC & 0x10) != 0x10) && (player->unk_22A >= 2)) {
        player->unk_0BC |= 0x100;
        player->unk_23A = 0;
        player->unk_22A = 0;
        player->unk_228 = 0;
        if (D_8015F890 != 1) {
            if ((player->unk_000 & 0x4000) && !(player->unk_000 & 0x100)) {
                func_800C9250(arg1);
            }
        } else if (player == gPlayerOne) {
            func_800C9250(arg1);
        }
    } else if ((player->unk_0BC & 0x100) == 0x100) {
        player->unk_23A += 1;
        if (player->unk_23A >= 0x1F) {
            player->unk_23A = 0;
            player->unk_0BC &= ~0x100;
            player->unk_22A = 0;
            player->unk_228 = 0;
        }
    }
}

void func_8002A8A4(Player *player, s8 arg1) {
    if (((s16) player->unk_0C0 / 182) > 0) {
        if (((s32) player->unk_07C >> 0x10) < -9) {
            if (player->unk_228 < 0x65) {
                player->unk_228++;
            }
            if ((player->unk_228 == 0x0064) && (player->unk_000 & 0x4000)) {
                func_800C9060(arg1, 0x1900851EU);
            }
        } else {
            if ((player->unk_228 >= 0x12) && (player->unk_228 < 0x64)) {
                if (player->unk_22A < 3) {
                    player->unk_22A++;
                }
            }
            if ((player->unk_228 >= 0xA) && (player->unk_228 < 0x64)) {
                player->unk_228 = 0x000A;
            } else {
                player->unk_228 = 0;
                player->unk_22A = 0;
            }
        }
    } else if (((s32) player->unk_07C >> 0x10) >= 0xA) {
        if (player->unk_228 < 0x65) {
            player->unk_228++;
        }
        if ((player->unk_228 == 0x0064) && (player->unk_000 & 0x4000)) {
            func_800C9060(arg1, 0x1900851EU);
        }
    } else {
        if ((player->unk_228 >= 0x12) && (player->unk_228 < 0x64)) {
            if (player->unk_22A < 3) {
                player->unk_22A++;
            }
        }
        if ((player->unk_228 >= 0xA) && (player->unk_228 < 0x64)) {
            player->unk_228 = 0x000A;
        } else {
            player->unk_228 = 0;
            player->unk_22A = 0;
        }
    }
}

void func_8002AA50(Player *player) {
    player->kartHopJerk = gKartHopJerkTable[player->characterId];
    player->kartHopAcceleration = 0.0f;
    player->kartHopVelocity = gKartHopInitialVelocityTable[player->characterId];
    player->unk_0BC |= 2;
    player->unk_DAC = 3.0f;
    player->kartGravity = 500.0f;
    func_80036C5C(player);
}

/**
  * Function: func_8002AAC0

  * Parameters:
  *     Player *player - A pointer to a Player

  * First kartHopJerk is subtracted from kartHopAcceleration
  * Then kartHopAcceleration is added to kartHopVelocity.

  * If kartHopVelocity is less than or equal to zero, all three
  * values (kartHop{Jerk,Acceleration,Velocity}) are set to 0.0f,
  * thereby ending the rising portion of the hop.

  * kartHopVelocity is restricted to values in [-INF, 15.0f]

  * kartHopAcceleration is restricted to values in [-9.0f, 9.0f]
**/
void func_8002AAC0(Player *player) {
    player->kartHopAcceleration -= player->kartHopJerk;
    if (player->kartHopAcceleration >= 9.0f) {
        player->kartHopAcceleration = 9.0f;
    }

    if (player->kartHopAcceleration <= -9.0f) {
        player->kartHopAcceleration = -9.0f;
    }

    player->kartHopVelocity += player->kartHopAcceleration;
    if (player->kartHopVelocity >= 15.0f) {
        player->kartHopVelocity = 15.0f;
    }

    if (player->kartHopVelocity <= 0.0f) {
        player->kartHopJerk = 0.0f;
        player->kartHopAcceleration = 0.0f;
        player->kartHopVelocity = 0.0f;
    }
}

void func_8002AB70(Player *player) {
    f64 pad;
    if (((player->unk_0BC & 8) != 8) && (player->unk_08C > 0.0f)) {
        if (((player->unk_0C4 / 182) < -1) && ((player->unk_0C4 / 182) >= -0x14) && (((player->unk_094 / 18.0f) * 216.0f) >= 20.0f)) {
            move_f32_towards(&player->kartGravity, 500.0f, 1.0f);
            move_f32_towards(&player->unk_DAC, 3.0f, 0.05f);
        } else {
            move_f32_towards(&player->kartGravity, gKartGravityTable[player->characterId], 0.1f);
            move_f32_towards(&player->unk_DAC, 1.0f, 0.07f);
        }
    } else {
        if (player->unk_110.unk3C[2] >= 50.0f) {
            player->unk_DAC = 2.0f;
        }
        move_f32_towards(&player->kartGravity, gKartGravityTable[player->characterId], 0.02f);
        if ((player->unk_0BC & 2) == 2) {
            move_f32_towards(&player->unk_DAC, 1.0f, 0.07f);
        } else {
            move_f32_towards(&player->unk_DAC, 1.0f, 0.07f);
        }
    }
    if ((player->unk_0BC & 0x100000) == 0x100000) {
        move_f32_towards(&player->unk_DAC, 20.0f, 1.0f);
        player->kartGravity = 3500.0f;
    }
    if ((player->unk_0BC & 4) == 4) {
        move_f32_towards(&player->unk_DAC, 25.0f, 1.0f);
        player->kartGravity = 1800.0f;
    }
    if ((player->unk_0BC & 0x400) == 0x400) {
        player->kartGravity = 1100.0f;
    }
    if (player->unk_0BC & 0x80000) {
        player->kartGravity = 1500.0f;
    }
    if ((player->unk_044 & 0x800) != 0) {
        player->kartGravity = 1900.0f;
    }
    if ((player->unk_0BC & 0x800000) == 0x800000) {
        player->kartGravity = 300.0f;
    }
    if ((player->unk_0BC & 0x01000000) == 0x01000000) {
        player->kartGravity = 550.0f;
    }
    if ((player->unk_0BC & 0x02000000) == 0x02000000) {
        player->kartGravity = 800.0f;
    }
}

UNUSED void func_8002AE20(void) {

}

UNUSED void func_8002AE28(void) {

}

UNUSED void func_8002AE30(void) {

}

void func_8002AE38(Player *player, s8 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5) {
    s32 stackPadding0;
    s32 stackPadding1;
    s32 stackPadding3;
    s32 stackPadding4;
    s16 temp_v0_3;
    f32 sp28;
    f32 temp_f16;
    s16 temp_a0;
    s32 var_v1;

    sp28     = (sins(-player->unk_02C[1]) * player->unk_094) + arg2;
    temp_f16 = (coss(-player->unk_02C[1]) * player->unk_094) + arg3;
    if (
        ((player->unk_0BC & 0x800) != 0x800) &&
        ((player->unk_0BC & 0x10) != 0x10) &&
        !(player->unk_044 & 0x4000) &&
        (
            (((player->unk_094 / 18.0f) * 216.0f) <= 8.0f) ||
            (
                ((player->unk_07C >> 0x10) < 5) &&
                ((player->unk_07C >> 0x10) > -5)
            )
        )) {
        if ((player->unk_0BC & 0x20) == 0x20) {
            player->unk_0C0 = (f32)(player->unk_0C0 - (player->unk_0C0 / 10));
        } else {
            temp_v0_3 = player->unk_0C0;
            player->unk_0C0 = player->unk_078 * 9;
            temp_a0 = player->unk_0C0 - temp_v0_3;
            player->unk_0C0 = (f32)(temp_v0_3 + (temp_a0 / 15));
        }
    } else {
        temp_v0_3 = player->unk_0C0;
        if (D_801652C0[arg1] & 8) {
            var_v1 = 2;
        } else {
            var_v1 = 0;
        }
        if ((player->unk_09C >= 200.0f) &&
            (var_v1 == 2) &&
            (
                ((player->unk_0C0 / 182) >= 0x10) ||
                ((player->unk_0C0 / 182) < -0xF)
            )) {
            player->unk_0C0 = atan2s(arg2 - arg4, arg3 - arg5) - atan2s(arg2 - sp28, arg3 - temp_f16);
        } else {
            player->unk_0C0 = (atan2s(arg2 - arg4, arg3 - arg5) - atan2s(arg2 - sp28, arg3 - temp_f16)) * 2;
        }
        if (((player->unk_0BC & 0x10) != 0x10) &&
            (
                (
                    ((player->unk_07C >> 0x10) > 0) &&
                    (player->unk_0C0 < 0)
                ) ||
                (
                    ((player->unk_07C >> 0x10) < 0) &&
                    (player->unk_0C0 > 0)
                )
            )) {
            if (player->unk_0C0 > 0) {
                player->unk_0C0 = player->unk_078 * 0x14;
            }
            if (player->unk_0C0 < 0) {
                player->unk_0C0 = player->unk_078 * 0x14;
            }
            temp_a0 = player->unk_0C0 - temp_v0_3;
            player->unk_0C0 = (f32)(temp_v0_3 + (temp_a0 / 12));
        } else {
            if (player->unk_0C0 >= 0x1C71) {
                player->unk_0C0 = 0x1C70;
            }
            if (player->unk_0C0 < -0x1C70) {
                player->unk_0C0 = -0x1C70;
            }
            temp_a0 = player->unk_0C0 - temp_v0_3;
            player->unk_0C0 = (f32)(temp_v0_3 + (temp_a0 / 12));
        }
    }
}

void func_8002B218(Player *player) {
    u16 someIndex;
    u16 sp38[10] = { 0x0003, 0x0016, 0x0026, 0x003c, 0x0050, 0x0069, 0x0090, 0x009d, 0x00a9, 0x00cc };
    u16 sp24[10] = { 0x000c, 0x0021, 0x002f, 0x0045, 0x005f, 0x007a, 0x0098, 0x00a5, 0x00b3, 0x00d5 };

    for (someIndex = 0; someIndex < 10; someIndex++) {
        if (player->unk_006 == sp38[someIndex]) {
            player->unk_0BC |= 0x10;
            func_8002AA50(player);
            player->unk_204 = 0;
            break;
        }

        if (player->unk_006 == sp24[someIndex]) {
            player->unk_0BC &= ~0x10;
            break;
        }
    }
}

void func_8002B308(Player *player, s8 arg1, s8 arg2) {
    if ((player->statusEffects & 2) == 2) {
        func_8008EAE0(player, arg1);
    }
    if ((player->statusEffects & 4) == 4) {
        func_8008C528(player, arg1);
    }
    if ((player->statusEffects & 1) == 1) {
        func_8008CDC0(player, arg1);
    }
    if ((player->statusEffects & 0x200) == 0x200) {
        func_8008D3C4(player, arg1);
    }
    if ((player->statusEffects & 0x02000000) == 0x02000000) {
        func_8002A704(player, arg1);
    }
    if ((player->statusEffects & 0x1000) == 0x1000) {
        func_8008D570(player, arg1);
    }
    if ((player->statusEffects & 0x20000) == 0x20000) {
        func_8008D7B0(player, arg1);
    }
    if ((player->statusEffects & 0x100) == 0x100) {
        func_8008DABC(player, arg1);
    }
    if ((player->statusEffects & 0x4000) == 0x4000) {
        func_8008DF98(player, arg1);
    }
    if ((player->statusEffects & 0x200000) == 0x200000) {
        func_8008C73C(player, arg1);
    }
    if ((player->statusEffects & 0x400000) == 0x400000) {
        func_8008E6C0(player, arg1);
    }
    if ((player->statusEffects & 0x01000000) == 0x01000000) {
        func_8008EAE0(player, arg1);
    }
    if ((player->statusEffects & 0x00800000) == 0x00800000) {
        func_8008EC88(player, arg1);
    }
    if ((player->statusEffects & 0x8000) == 0x8000) {
        func_8008EEE4(player, arg1);
    }
    if ((player->statusEffects & 0x2000) == 0x2000) {
        func_8008F778(player, arg1);
    }
    if ((player->statusEffects & 0x800) == 0x800) {
        func_8008FA38(player, arg1);
    }
    if (player->statusEffects & 0x80) {
        func_8008D0FC(player, arg1);
    }
    if (player->statusEffects & 0x80000) {
        func_8008E6C0(player, arg1);
    }
}

void func_8002B5C0(Player *player, s8 arg1, s8 arg2) {
    if (((player->unk_0CA & 8) != 0) || ((player->unk_0CA & 2) != 0)) {
        player->statusEffects &= 0xFE1D0478;
    }
    if ((player->unk_0BC & 0x400) == 0x400) {
        player->statusEffects &= 0xFF5D457E;
    }
    if (((player->unk_0BC & 0x80) == 0x80) || ((player->unk_0BC & 0x40) == 0x40)) {
        player->statusEffects &= 0xFF5F457E;
    }
    if ((player->unk_0BC & 0x800) == 0x800) {
        player->statusEffects &= 0xFF5D457E;
    }
    if ((player->unk_044 & 0x4000) != 0) {
        player->statusEffects &= 0xFF5D457E;
    }
    if ((player->unk_0BC & 0x80000) == 0x80000) {
        player->statusEffects &= 0xFE1D4478;
    }
    if ((player->unk_0BC & 0x800000) == 0x800000) {
        player->statusEffects &= 0xFE1D0478;
    }
    if ((player->unk_0BC & 0x04000000) == 0x04000000) {
        player->statusEffects &= 0xFE1D0578;
    }
    if ((player->unk_0BC & 0x01000000) == 0x01000000) {
        player->statusEffects &= 0xFE1D4478;
    }
    if ((player->unk_0BC & 0x02000000) == 0x02000000) {
        player->statusEffects &= 0xFE1D4478;
    }
    if ((player->unk_0BC & 0x100000) == 0x100000) {
        player->statusEffects &= 0xFE1D0478;
    }
    if ((player->unk_0BC & 4) == 4) {
        player->statusEffects &= 0xFE1D0478;
    }
    if ((player->unk_0BC & 0x10000) == 0x10000) {
        player->statusEffects &= 0xFE1D0478;
    }
    if ((player->unk_0BC & 0x200) == 0x200) {
        player->statusEffects &= 0xFE9D8478;
    }
    if ((player->unk_0BC & 0x80000000) == 0x80000000) {
        player->statusEffects &= 0xFE9D8678;
    }
    if ((player->unk_0BC & 0x4000) == 0x4000) {
        player->statusEffects &= 0xFF5D45FF;
    }
    if ((player->unk_0BC & 0x20000) == 0x20000) {
        player->statusEffects &= 0xFE1D0478;
    }
}

void func_8002B830(Player *player, s8 arg1, s8 arg2) {
    if (player->statusEffects != 0) {
        func_8002B5C0(player, arg1, arg2);
    }
    if (player->statusEffects != 0) {
        func_8002B308(player, arg1, arg2);
    }
    if ((player->unk_044 & 0x400) != 0) {
        func_800911B4(player, arg1);
    }
}

void func_8002B8A4(Player *player_one, Player *player_two) {
    s32 var_v1;

    /*
    if's are being done bracket-less on purpose,
    Technically only the `player_one == gPlayerEight` NEEDS to be
    bracket-less that looks weird
    */
    if (player_one == gPlayerOne)   var_v1 = 0;
    if (player_one == gPlayerTwo)   var_v1 = 1;
    if (player_one == gPlayerThree) var_v1 = 2;
    if (player_one == gPlayerFour)  var_v1 = 3;
    if (player_one == gPlayerFive)  var_v1 = 4;
    if (player_one == gPlayerSix)   var_v1 = 5;
    if (player_one == gPlayerSeven) var_v1 = 6;
    if (player_one == gPlayerEight) var_v1 = 7;
    D_801653C0[var_v1] = player_two;
    if (player_two == gPlayerOne)   var_v1 = 0;
    if (player_two == gPlayerTwo)   var_v1 = 1;
    if (player_two == gPlayerThree) var_v1 = 2;
    if (player_two == gPlayerFour)  var_v1 = 3;
    if (player_two == gPlayerFive)  var_v1 = 4;
    if (player_two == gPlayerSix)   var_v1 = 5;
    if (player_two == gPlayerSeven) var_v1 = 6;
    if (player_two == gPlayerEight) var_v1 = 7;
    D_801653C0[var_v1] = player_one;
}

#ifdef NON_MATCHING
// data_0DD0A0_3_0_0.s
extern f64 D_800ED7D0;// = 4.2;
void func_8002B9CC(Player *player, s8 arg1, s32 arg2) {
    f32 temp_f0;
    f32 temp_f2;
    f32 temp_f14;

    if ((player->unk_046 & 2) == 2) {
        temp_f0  = D_8018CE10[arg1].unk_04;
        temp_f2  = 0;
        temp_f14 = D_8018CE10[arg1].unk_0C;
        if (sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2) + (temp_f14 * temp_f14)) >= 6.5) {
            player->unk_08C /= 4;
            player->unk_09C /= 4;
            if (!(player->unk_0BC & 0x80) && !(player->unk_0BC & 0x40)) {
                func_8008C73C(player, arg1);
            }
        }
    } else {
        temp_f0  = D_80165070[arg1][0] - player->unk_034[0];
        temp_f2  = D_80165070[arg1][1] - player->unk_034[1];
        temp_f14 = D_80165070[arg1][2] - player->unk_034[2];
        if (sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2) + (temp_f14 * temp_f14)) >= 4.2) {
            player->unk_08C /= 4;
            player->unk_09C /= 4;
            if (!(player->unk_0BC & 0x80) && !(player->unk_0BC & 0x40)) {
                func_8008C73C(player, arg1);
            }
        }
        // There's some register allocation mismatching here. Its unclear what the cause is
        // and the permtuer didn't find anything
        player->unk_234 = ((s16) (-func_802B5224(player->pos, &player->rotX) - (player->unk_02C[1] - player->unk_0C0))) / 182;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_8002B9CC.s")
#endif

#ifdef NON_MATCHING
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
extern s16 D_800E3C98[10];// = { 0x0000, 0x00b6, 0x016c, 0x0222, 0x02d8, 0x038e, 0x0444, 0x04fa, 0x05b0, 0x0666 };

void func_8002BB9C(Player *player, f32 *arg1, f32 *arg2, f32 *arg3) {
    Mat3 sp64;
    Vec3f sp58;
    Vec3f sp4C;
    s32 var_v0;
    s32 temp_t9;
    s16 sp30[10] = { 0x0000, 0x00b6, 0x016c, 0x0222, 0x02d8, 0x038e, 0x0444, 0x04fa, 0x05b0, 0x0666 };

    if ((u16)player->unk_256 <= 0) return;
    if ((u16)player->unk_256 > 2) return;
    if (!(player->unk_046 & 0x20)) return;
    func_802B6540(sp64, 0.0f, 1.0f, 0.0f, (s16) 0);
    sp58[0] = *arg1;
    sp58[1] = 0.0f;
    sp58[2] = *arg2;
    func_802B63B8(sp58, sp64);
    sp4C[0] = player->rotX;
    sp4C[1] = 0.0f;
    sp4C[2] = player->rotZ;
    func_802B63B8(sp4C, sp64);
    // There's some wonkiness surrounding this line
    temp_t9 = (s16) ((player->unk_02C[1] - -func_802B5224(sp58, sp4C)) + 0x10000) / 182;
    if((s16) temp_t9 < 0x97) {
        if(((s16) temp_t9 > -0x97)) return;
    }

    temp_t9 = player->unk_07C >> 0x10;
    var_v0 = temp_t9 / 6;
    if ((s16) var_v0 < 0) {
        var_v0 *= -1;
    }
    if ((s16) var_v0 >= 8) {
        var_v0 = 8;
    }
    if (temp_t9 < 0) {
        player->unk_02C[1] -= sp30[var_v0];
    } else {
        player->unk_02C[1] += sp30[var_v0];
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_8002BB9C.s")
#endif
 
void func_8002BD58(Player *player) {
    s32 sp2C[7] = { 0x002f0000, 0x00300000, 0x00310000, 0x00320000, 0x00320000, 0x00320000, 0x00320000 };
    s32  spC[8] = { 0x00280000, 0x002c0000, 0x00300000, 0x00320000, 0x00320000, 0x00320000, 0x00320000, 0x00320000 };
    s16 temp_t5;

    if (player->unk_234 >= 0) {
        if ((player->unk_234 >= 5) && (player->unk_234 < 0x1E)) {
            player->unk_07C = sp2C[player->unk_234 / 6];
        }
        if ((player->unk_234 >= 0x1E) && (player->unk_234 < 0x50)) {
            player->unk_07C = spC[(s32) (player->unk_234 - 0x1E) / 12];
        }
        if (((player->unk_234 < 0x50) || (player->unk_234 >= 0x5B)) && (player->unk_234 >= 0x5B) && (player->unk_234 < 0xA1)) {
            player->unk_07C = spC[1];
        }
    } else {
        temp_t5 = -player->unk_234;
        if ((player->unk_234 < -4) && (player->unk_234 >= -0x1E)) {
            player->unk_07C = sp2C[temp_t5 / 6] * -1;
        }
        if ((player->unk_234 < -0x1E) && (player->unk_234 >= -0x50)) {
            player->unk_07C = spC[(s32) (temp_t5 - 0x1E) / 12] * -1;
        }
        if (((player->unk_234 >= -0x50) || (player->unk_234 < -0x5A)) && (player->unk_234 < -0x5A) && (player->unk_234 >= -0xA0)) {
            player->unk_07C = spC[1] * -1;
        }
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
void func_8002BF4C(Player *player, u8 arg1) {
    s32 sp30;
    Player *var_s0;
    s32 temp_t2;
    s32 var_s1;
    s32 var_v0;
    u16 temp_v0;
    u16 temp_v0_2;
    u16 var_a2;

    var_a2 = 0;
    if (((player->unk_094 / 18.0f) * 216.0f) < 50.0f) {
        player->unk_0E2 = 0;
        player->unk_0BC &= 0xFFDFFFFF;
        return;
    }
    var_s1 = 0;
    var_s0 = gPlayerOne;
    if ((player->unk_0BC & 0x200000) == 0x200000) {
        player->unk_0E2 -= 1;
        if (player->unk_0E2 <= 0) {
            player->unk_0BC &= 0xFFDFFFFF;
        }
    } else {
loop_6:
        if ((player != var_s0) && (temp_v0 = var_s0->unk_000, ((temp_v0 & 0x100) == 0)) && (temp_v0 & 0x8000) && (temp_v0_2 = func_8001FD78(player, var_s0->pos[0], var_s0->pos[1], var_s0->pos[2]), var_a2 = temp_v0_2, (temp_v0_2 == 1))) {
            player->unk_0E2 += 1;
            if (player->unk_0E2 >= 0x3D) {
                temp_t2 = player->unk_000 & 0x100;
                player->unk_0BC |= 0x200000;
                var_v0 = temp_t2;
                if (temp_t2 != 0x100) {
                    sp30 = (s32) var_a2;
                    func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008001);
                    var_v0 = player->unk_000 & 0x100;
                }
                if (var_v0 != 0x100) {
                    sp30 = (s32) var_a2;
                    func_800C9060(arg1, 0x19008011U);
                }
            }
        } else {
            var_s1 += 0xDD8;
            var_s0 += 0xDD8;
            if (var_s1 != 0x6EC0) {
                goto loop_6;
            }
        }
        if (var_a2 == 0) {
            player->unk_0E2 = 0;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_8002BF4C.s")
#endif

void func_8002C11C(Player *player) {
    if ((player->unk_0BC & 0x10) == 0x10) {
        player->unk_204 += 1;
        if (player->unk_204 >= 0x65) {
            player->unk_204 = 0x64;
        }
    } else {
        player->unk_204 -= 1;
        if (player->unk_204 < 0) {
            player->unk_204 = 0;
        }
    }
}

void func_8002C17C(Player *player, s8 playerId) {
    switch (gCurrentCourseId) {                              /* irregular */
    case COURSE_YOSHI_VALLEY:
        if ((player->unk_110.unk3C[2] >= 600.0f) && (D_80165330[playerId] == 0)) {
            D_80165330[playerId] = 1;
            D_80165320[playerId] = gNearestWaypointByPlayerId[playerId];
            D_80165310[playerId] = gPathIndexByPlayerId[playerId];
        } else if (D_80165330[playerId] == 0) {
            D_80165320[playerId] = gNearestWaypointByPlayerId[playerId];
            D_80165310[playerId] = gPathIndexByPlayerId[playerId];
        } else if (!(player->unk_0BC & 8)) {
            if (func_802ABDF4(player->unk_110.unk3A) == 0) {
                D_80165330[playerId] = 0;
            }
        }
        break;
    case COURSE_FRAPPE_SNOWLAND:
        if ((player->unk_0F8 == 0x000B) && (D_80165330[playerId] == 0)) {
            D_80165330[playerId] = 1;
            D_80165320[playerId] = gNearestWaypointByPlayerId[playerId];
            D_80165310[playerId] = gPathIndexByPlayerId[playerId];
        } else if (player->unk_0F8 != 0x000B) {
            D_80165330[playerId] = 0;
            D_80165320[playerId] = gNearestWaypointByPlayerId[playerId];
            D_80165310[playerId] = gPathIndexByPlayerId[playerId];
        }
        break;
    case COURSE_ROYAL_RACEWAY:
        if (((player->unk_0BC & 0x100000) != 0) && (D_80165330[playerId] == 0)) {
            D_80165330[playerId] = 1;
            D_80165320[playerId] = gNearestWaypointByPlayerId[playerId];
            D_80165310[playerId] = gPathIndexByPlayerId[playerId];
        } else if (((player->unk_0BC & 0x100000) == 0) && !(player->unk_0BC & 8)) {
            D_80165330[playerId] = 0;
            D_80165320[playerId] = gNearestWaypointByPlayerId[playerId];
            D_80165310[playerId] = gPathIndexByPlayerId[playerId];
        }
        break;
    case COURSE_RAINBOW_ROAD:
        if ((player->unk_110.unk3C[2] >= 600.0f) && (D_80165330[playerId] == 0)) {
            D_80165330[playerId] = 1;
            D_80165320[playerId] = gNearestWaypointByPlayerId[playerId];
            D_80165310[playerId] = gPathIndexByPlayerId[playerId];
        } else if (D_80165330[playerId] == 0) {
            D_80165320[playerId] = gNearestWaypointByPlayerId[playerId];
            D_80165310[playerId] = gPathIndexByPlayerId[playerId];
        } else if (!((player->unk_0BC & 8) || (player->unk_0CA & 1))) {
            D_80165330[playerId] = 0;
        }
        break;
    default:
        D_80165330[playerId] = 0;
        if(1){}
        break;
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
void func_8002C17C(Player *, s8);                      /* extern */
f32 func_802AAB4C();                                /* extern */
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_8002C4F8(Player *player, s8 arg1) {
    f32 *sp24;
    f32 *var_a2;
    f32 temp_f0;
    s16 temp_v0;
    s16 temp_v0_2;
    s16 temp_v0_3;
    u16 temp_t1;
    u16 temp_t5;
    u16 temp_v1;

    temp_f0 = func_802AAB4C();
    var_a2 = &D_801652A0[arg1];
    *var_a2 = temp_f0;
    if (player->pos[1] <= temp_f0) {
        player->unk_0DE |= 2;
    } else {
        player->unk_0DE &= 0xFFFD;
    }
    if (player->boundingBoxSize < (*var_a2 - player->pos[1])) {
        temp_t5 = player->unk_0DE | 1;
        player->unk_0DE = temp_t5;
        player->unk_0DE = temp_t5 & 0xFFFD;
    } else {
        player->unk_0DE &= 0xFFFE;
    }
    if (player->boundingBoxSize < (*var_a2 - player->pos[1])) {
        temp_v1 = player->unk_0DE;
        temp_t1 = temp_v1 | 8;
        if ((temp_v1 & 4) != 4) {
            player->unk_0DE = temp_t1;
            player->unk_0DE = temp_t1 | 4;
            temp_v0 = gCurrentCourseId;
            if ((temp_v0 != 6) && (temp_v0 != 0x0010) && (temp_v0 != 0x000D) && ((player->unk_000 & 0x4000) == 0x4000)) {
                if ((temp_v0 == 2) || (temp_v0 == 0x0013)) {
                    sp24 = var_a2;
                    func_800C9060((u8) arg1, 0x1900801CU);
                } else {
                    sp24 = var_a2;
                    func_800C9060((u8) arg1, 0x19008008U);
                }
                var_a2 = sp24;
            }
        }
    }
    temp_v0_2 = gCurrentCourseId;
    if ((temp_v0_2 == 6) || (temp_v0_2 == 0x0010) || (temp_v0_2 == 0x000D)) {
        player->unk_0DE &= 0xFFF3;
    }
    if ((player->boundingBoxSize < (*var_a2 - player->pos[1])) && (player->unk_110.unk3C[2] >= 600.0f)) {
        player->unk_0CA |= 1;
    }
    if (player->unk_110.unk3C[2] >= 600.0f) {
        player->unk_0CA |= 0x100;
    } else if ((player->unk_0BC & 8) != 8) {
        player->unk_0CA &= 0xFEFF;
    }
    if ((player->unk_000 & 0x1000) && ((func_802ABDF4(player->unk_110.unk3A) != 0) || (player->unk_0CA & 1))) {
        temp_v0_3 = player->unk_0CA;
        if (!(temp_v0_3 & 2) && !(temp_v0_3 & 8) && !(player->unk_0BC & 0x1000)) {
            func_80090778(player);
            func_80090868(player);
        }
    }
    if ((player->unk_000 & 0x1000) && (player->unk_0F8 == 0x00FD) && !(player->unk_0BC & 8)) {
        func_80090778(player);
        func_80090868(player);
    }
    func_8002C17C(player, arg1);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_8002C4F8.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
void func_8002B9CC(s8, s8);                            /* extern */

void func_8002C7E4(Player *player, s8 arg1, s8 arg2) {
    s16 temp_v1_2;
    s32 temp_v0;
    s32 temp_v0_2;
    u16 temp_t3;
    u16 temp_t6;
    u16 temp_v1;
    u16 var_v1;

    var_v1 = player->unk_046;
    if ((var_v1 & 1) != 1) {
        temp_v0 = player->unk_0BC;
        if ((temp_v0 & 0x8000) == 0x8000) {
            if ((temp_v0 & 0x2000) != 0x2000) {
                func_8002B9CC(arg1, arg2);
                var_v1 = player->unk_046;
            }
            temp_t6 = var_v1 | 1;
            player->unk_046 = temp_t6;
            player->unk_044 &= 0xFFFE;
            player->unk_046 = temp_t6 | 8;
            if ((player->unk_000 & 0x4000) == 0x4000) {
                func_8001CA24(player, 2.8f);
            }
            temp_v1 = player->unk_046;
            if ((temp_v1 & 2) == 2) {
                temp_t3 = temp_v1 | 4;
                if ((temp_v1 & 4) != 4) {
                    player->unk_046 = temp_t3;
                    player->unk_046 = temp_t3 | 0x40;
                    if (player->unk_0BC & 0x2000) {
                        func_8008D554(player);
                    }
                }
            }
        }
    }
    temp_v0_2 = player->unk_0BC;
    if ((temp_v0_2 & 0x8000) == 0x8000) {
        player->unk_0BC = temp_v0_2 & 0xFFFF7FFF;
        player->unk_10C = 1;
        player->unk_044 &= 0xFFFE;
        return;
    }
    temp_v1_2 = player->unk_10C;
    player->unk_046 &= 0xFFFE;
    player->unk_0BC = temp_v0_2 & 0xFFFF7FFF;
    if (temp_v1_2 > 0) {
        player->unk_10C = temp_v1_2 + 1;
    }
    if (player->unk_10C >= 0xA) {
        player->unk_10C = 0;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_8002C7E4.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
void func_800CAEC4(u8, f32);                           /* extern */

void func_8002C954(Player *player, s8 arg1, f32 *arg2) {
    f32 *temp_v0_3;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_4;
    f32 temp_f14;
    f32 temp_f2;
    f32 var_f14;
    f64 temp_f0_3;
    s16 temp_t1;
    s16 temp_v0_2;
    s32 temp_v0;
    s32 temp_v1;

    temp_v0 = player->unk_0BC;
    temp_v1 = temp_v0 & 0x10000;
    temp_f0 = player->pos[1] - player->unk_074;
    if ((((temp_v1 != 0x10000) && ((temp_v0 & 0x100000) == 0x100000)) || (((temp_f0 >= 20.0f) || (temp_f0 < -1.0f)) && (temp_v1 == 0) && (temp_v0 & 8)) || ((player->unk_110.unk34 == 0) && (temp_v1 == 0))) && ((temp_v0_2 = player->unk_0CA, ((temp_v0_2 & 2) == 0)) || !(temp_v0_2 & 8))) {
        func_8008F494(player, arg1);
    }
    if ((player->unk_046 & 0x20) != 0x20) {
        if ((player->unk_110.unk3C < -1.0f) || (player->unk_110.unk40 < -1.0f)) {
            player->unk_256 = 1;
        }
        player->unk_046 |= 0x20;
    }
    if (((player->unk_000 & 0x4000) == 0x4000) && (((player->unk_094 / 18.0f) * 216.0f) > 30.0f)) {
        func_8001CA24(player, 3.0f);
    }
    temp_t1 = (u16) player->unk_256 + 1;
    player->unk_046 |= 0x10;
    player->unk_256 = temp_t1;
    if ((temp_t1 & 0xFFFF) >= 0xA) {
        player->unk_256 = 0;
    }
    if ((player->unk_0C4 >= 0) && (((player->unk_094 / 18.0f) * 216.0f) > 5.0f)) {
        func_80031F48(player, 18.0f);
    }
    if ((player->unk_000 & 0x4000) == 0x4000) {
        temp_v0_3 = D_80165070[arg1];
        temp_f0_2 = temp_v0_3->unk0 - arg2->unk0;
        temp_f14 = temp_v0_3->unk4 - arg2->unk4;
        temp_f2 = temp_v0_3->unk8 - arg2->unk8;
        var_f14 = sqrtf((temp_f0_2 * temp_f0_2) + (temp_f14 * temp_f14) + (temp_f2 * temp_f2)) / 3.0f;
        if ((f64) var_f14 >= 1.0) {
            var_f14 = 1.0f;
        }
        temp_f0_3 = (f64) var_f14;
        if ((temp_f0_3 <= 0.6) && (((player->unk_094 / 18.0f) * 216.0f) >= 40.0f) && !(player->unk_000 & 0x100)) {
            func_800CAEC4((u8) arg1, 0.6f);
        } else if (!(player->unk_000 & 0x100)) {
            if ((temp_f0_3 <= 0.6) && (temp_f0_4 = (player->unk_094 / 18.0f) * 216.0f, (temp_f0_4 < 40.0f)) && (temp_f0_4 >= 10.0f)) {
                func_800CAEC4((u8) arg1, 0.3f);
            } else {
                func_800CAEC4((u8) arg1, var_f14);
            }
        }
    }
    if (player->unk_0BC & 0x2000) {
        func_8008D554(player);
        player->unk_08C /= 2.0f;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_8002C954.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_8008CEB0(Player *, s8);                      /* extern */
? func_8008D170(Player *, s8);                      /* extern */
? func_80090970(Player *, s8, s8);                  /* extern */
extern s32 D_800DC510;

void func_8002CD48(Player *player, s8 arg1, s8 arg2) {
    s16 temp_v0;

    temp_v0 = player->unk_0CA;
    if (((temp_v0 & 2) == 2) || ((temp_v0 & 8) == 8)) {
        func_80090970(player, arg1, arg2);
    }
    if ((player->unk_0BC & 0x800) == 0x800) {
        func_8008CEB0(player, arg1);
    }
    if (player->unk_044 & 0x4000) {
        func_8008D170(player, arg1);
    }
    if ((player->unk_0BC & 0x2000) == 0x2000) {
        func_8008D4B4(player);
    }
    if ((player->unk_0BC & 0x100000) == 0x100000) {
        func_8008EDC0(player);
    }
    if ((player->unk_0BC & 4) == 4) {
        func_8008F008(player);
    }
    if ((player->unk_0BC & 0x04000000) == 0x04000000) {
        func_8008DC08(player, arg1);
    }
    if ((player->unk_0BC & 0x40000000) == 0x40000000) {
        func_8008E118(player, arg1);
    }
    if ((player->unk_0BC & 0x10000) == 0x10000) {
        func_8008F3F4(player, arg1);
    }
    if ((player->unk_0BC & 0x200) == 0x200) {
        func_8008F650(player, arg1);
    }
    if ((player->unk_0BC & 0x80000000) == 0x80000000) {
        func_8008F8DC(player, arg1);
    }
    if (((player->unk_0BC & 0x20000000) == 0x20000000) && (player->unk_228 >= 0x64)) {
        func_80031F48(player, 4.0f);
    }
    if (((player->unk_0BC & 0x80) == 0x80) || ((player->unk_0BC & 0x40) == 0x40)) {
        func_8008C9EC(player, arg1);
    }
    if ((player->unk_0BC & 0x400) == 0x400) {
        func_8008C62C(player, arg1);
    }
    if ((player->unk_0BC & 0x01000000) == 0x01000000) {
        func_8008E4A4(player, arg1);
    }
    if ((player->unk_0BC & 0x02000000) == 0x02000000) {
        func_8008E8D8(player, arg1);
    }
    if ((player->unk_0BC & 0x4000) == 0x4000) {
        func_8008F1B8(player, arg1);
    }
    if ((player->unk_0BC & 0x80000) == 0x80000) {
        func_8008D698(player, arg1);
    }
    if ((player->unk_0BC & 0x800000) == 0x800000) {
        func_8008D8B4(player, arg1);
        func_80031F48(player, 10.0f);
    }
    if (D_800DC510 != 5) {
        if (player->statusEffects & 0x04000000) {
            func_8008FC64(player, arg1);
        }
        if (player->statusEffects & 0x08000000) {
            func_8008FCDC(player, arg1);
        }
    }
    if (player->unk_044 & 0x800) {
        func_80091298(player, arg1);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_8002CD48.s")
#endif

#ifdef NON_MATCHING
void func_8002D028(Player *player, s8 arg1) {
    f32 thing0 = 8.0f;
    f32 thing1 = 182.0f;
    Vec3f sp4C;
    f32 temp_f0;
    s16 var_a2;
    s16 test;
    f32 temp_f18;
    s16 temp_t1;

    sp4C[0] = D_80165210[D_80165270[arg1]];
    sp4C[1] = 0.0f;
    sp4C[2] = D_80165230[D_80165270[arg1]];
    temp_f0 = thing0 * thing1;
    test = -func_802B5224(player->pos, sp4C) - player->unk_02C[1];
    var_a2 = test;
    if ((s16)temp_f0 < test) {
        var_a2 = temp_f0;
    }
    temp_f18 = -thing0 * thing1;
    if (test < (s16)temp_f18) {
        var_a2 = temp_f18;
    }
    temp_t1 = (D_80165020[arg1] + (s16) ((var_a2 * 0x35) / temp_f0)) / 2;
    func_8003680C(player, (s16) temp_t1);
    D_80165020[arg1] = (s16) temp_t1;
    temp_f0 = sp4C[2] - player->pos[2];
    temp_f18 = sp4C[0] - player->pos[0];
    if (sqrtf((temp_f0 * temp_f0) + (temp_f18 * temp_f18)) <= 8.0f) {
        func_800224F0(&player->unk_02C[1], -0x8000, 0x016C);
        if ((player->unk_02C[1] < -0x7F41) || (player->unk_02C[1] > 0x7F41)) {
            player->unk_000 &= ~0x0200;
        }
        player->unk_08C = 0.0f;
        player->unk_094 = 0.0f;
        player->unk_104 = 0.0f;
        player->unk_240 = 0;
        player->unk_07C = 0;
        player->unk_034[0] = 0.0f;
        player->unk_034[1] = 0.0f;
        player->unk_034[2] = 0.0f;
        player->unk_0C0 = 0;
        player->unk_078 = 0;
    } else {
        player->unk_08C = 1200.0f;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_8002D028.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_80027EDC(Player *, s8);                      /* extern */
? func_80029B4C(Player *, f32, f32, f32);           /* extern */
? func_8002A79C(Player *, s8);                      /* extern */
? func_8002AE38(Player *, s8, f32, f32, f32, f32);  /* extern */
? func_8002BB9C(Player *, f32 *, f32 *, s8, s32, f32 *); /* extern */
? func_8002BF4C(Player *, s8);                      /* extern */
? func_8002C4F8(Player *, s8);                      /* extern */
? func_8002C7E4(f32, f32, Player *, s8, s8);        /* extern */
? func_8002C954(Player *, s8, f32 *);               /* extern */
? func_8002CD48(Player *, s8, s8);                  /* extern */
? func_80037BB4(Player *, f32 *);                   /* extern */
? func_800CADD0(u8, f32);                           /* extern */
static ? D_800E3CE8;                                /* unable to generate initializer */
static ? D_800E3CF4;                                /* unable to generate initializer */
static ? D_800E3D00;                                /* unable to generate initializer */
static ? D_800E3D0C;                                /* unable to generate initializer */
f32 D_800E3D18[0x17];
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_8002D268(Player *player, Camera *camera, s8 arg2, s8 arg3) {
    f32 sp18C;
    f32 sp184;
    f32 sp180;
    f32 sp17C;
    f32 sp178;
    f32 sp16C;
    f32 sp160;
    ? sp104;
    f32 spFC;
    f32 spF8;
    f32 spF4;
    f32 spF0;
    f32 spE8;
    f32 spB4;
    f32 spB0;
    f32 spAC;
    f32 spA8;
    f32 spA0;
    f32 sp9C;
    f32 sp98;
    f32 sp8C;
    s32 sp7C;
    f32 sp60;
    f32 *sp58;
    struct_D_8018CE10 *sp54;
    ? *var_t7;
    f32 *temp_a1;
    f32 *temp_v0_18;
    f32 *temp_v0_19;
    f32 *var_t6;
    f32 temp_at;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_7;
    f32 temp_f0_8;
    f32 temp_f0_9;
    f32 temp_f12;
    f32 temp_f12_4;
    f32 temp_f12_5;
    f32 temp_f14;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_6;
    f32 temp_f2_7;
    f32 temp_f2_8;
    f32 temp_f4;
    f32 var_f12;
    f32 var_f14;
    f64 temp_f0_3;
    f64 temp_f0_4;
    f64 temp_f0_5;
    f64 temp_f0_6;
    f64 temp_f12_2;
    f64 temp_f12_3;
    f64 temp_f2_3;
    f64 temp_f2_4;
    f64 temp_f2_5;
    s16 temp_t6;
    s16 temp_v0_11;
    s16 temp_v0_13;
    s16 temp_v0_15;
    s16 temp_v0_4;
    s16 temp_v0_5;
    s16 temp_v0_6;
    s16 temp_v0_7;
    s16 temp_v0_9;
    s32 temp_t4;
    s32 temp_t4_2;
    s32 temp_v0_16;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v1;
    s32 var_v0;
    s32 var_v1;
    s32 var_v1_2;
    struct_D_8018CE10 *temp_t9;
    u16 temp_v0;
    u16 temp_v0_10;
    u16 temp_v0_12;
    u16 temp_v0_14;
    u16 temp_v0_17;
    u16 temp_v0_8;

    sp184.unk0 = D_800E3CE8.unk0;
    sp184.unk4 = (s32) D_800E3CE8.unk4;
    sp184.unk8 = (s32) D_800E3CE8.unk8;
    sp178.unk0 = D_800E3CF4.unk0;
    sp178.unk4 = (s32) D_800E3CF4.unk4;
    sp178.unk8 = (s32) D_800E3CF4.unk8;
    sp16C.unk0 = D_800E3D00.unk0;
    sp16C.unk4 = (s32) D_800E3D00.unk4;
    sp16C.unk8 = (s32) D_800E3D00.unk8;
    sp160.unk0 = D_800E3D0C.unk0;
    var_t6 = D_800E3D18;
    var_t7 = &sp104;
    sp160.unk4 = (s32) D_800E3D0C.unk4;
    sp160.unk8 = (s32) D_800E3D0C.unk8;
    do {
        temp_at = *var_t6;
        var_t6 += 0xC;
        var_t7 += 0xC;
        var_t7->unk-C = temp_at;
        var_t7->unk-8 = (s32) var_t6->unk-8;
        var_t7->unk-4 = (s32) var_t6->unk-4;
    } while (var_t6 != (D_800E3D18 + 0x54));
    var_t7->unk0 = (f32) var_t6->unk0;
    var_t7->unk4 = (s32) var_t6->unk4;
    sp7C = 0;
    func_80027EDC(player, arg3);
    func_8002C11C(player);
    if ((player->unk_000 & 0x4000) == 0x4000) {
        func_8002A79C(player, arg3);
    }
    func_8002B830(player, arg3, arg2);
    temp_v0 = player->unk_000;
    if (((temp_v0 & 0x4000) == 0x4000) && ((temp_v0 & 0x100) != 0x100)) {
        func_8002BF4C(player, arg3);
    }
    func_8002CD48(player, arg3, arg2);
    if (((player->unk_0BC & 0x20000000) == 0x20000000) && (player->unk_228 >= 0x64)) {
        sp7C = 2;
    }
    func_80037BB4(player, &sp160);
    func_8002AB70(player);
    func_8002FCA8(player, arg3);
    if (player->unk_044 & 1) {
        player->unk_064 *= -1.0f;
        player->unk_06C *= -1.0f;
    }
    if ((player->boundingBoxCorners[2].surfaceType == 1) && (player->boundingBoxCorners[3].surfaceType == 1)) {
        temp_f0 = player->kartGravity;
        var_f12 = player->unk_064 + sp16C;
        spB4 = (f32) (((f64) (-player->unk_110.unk60[0] * temp_f0) * 0.925) + (f64) (-1.0f * var_f12));
        spB0 = -player->unk_110.unk60[1] * temp_f0;
        var_f14 = player->unk_06C + sp174;
        spAC = (f32) (((f64) (-player->unk_110.unk60[2] * temp_f0) * 0.925) + (f64) (-1.0f * var_f14));
    } else {
        var_v0 = (s32) (((player->unk_094 / 18.0f) * 216.0f) / 10.0f);
        if (var_v0 >= 0xA) {
            var_v0 = 0x0000000A;
        }
        temp_f0_2 = player->kartGravity;
        var_f12 = player->unk_064 + sp16C;
        temp_f2 = (sp + (var_v0 * 4))->unk104;
        spB4 = (temp_f2 * (-player->unk_110.unk60[0] * temp_f0_2)) + (-1.0f * var_f12);
        spB0 = -player->unk_110.unk60[1] * temp_f0_2;
        var_f14 = player->unk_06C + sp174;
        spAC = (temp_f2 * (-player->unk_110.unk60[2] * temp_f0_2)) + (-1.0f * var_f14);
    }
    temp_v0_2 = player->unk_0BC;
    temp_v1 = temp_v0_2 & 8;
    if ((temp_v1 != 8) && ((temp_v0_2 & 0x20) == 0x20)) {
        spB4 = var_f12 * 0.0f;
        spAC = var_f14 * 0.0f;
        spB0 = (player->kartGravity * -1.0f) / 4.0f;
    }
    if (temp_v1 == 8) {
        spB4 = var_f12 * 0.0f;
        spB0 = player->kartGravity * -1.0f;
        spAC = var_f14 * 0.0f;
    }
    sp60 = coss((player->unk_02C[1] + player->unk_0C0) & 0xFFFF);
    temp_a1 = player->unk_174[0];
    temp_f2_2 = (sins((player->unk_02C[1] + player->unk_0C0) & 0xFFFF) * -(player->rotX - player->pos[0])) + ((player->rotZ - player->pos[2]) * sp60);
    if ((f64) temp_f2_2 > 0.1) {
        player->unk_044 |= 8;
    } else {
        player->unk_044 &= 0xFFF7;
    }
    if ((player->unk_08C <= 0.0f) && (temp_v0_3 = player->unk_0BC, ((temp_v0_3 & 1) == 1)) && ((temp_v0_3 & 0x20) != 0x20)) {
        sp180 = temp_f2_2 * 4500.0f;
    } else {
        sp180 = 0.0f;
    }
    sp17C = 0.0f;
    sp58 = temp_a1;
    func_802B63B8(&sp178, (f32 (*)[3]) temp_a1);
    temp_f14 = spAC;
    temp_f12 = temp_f14 + sp180;
    spB4 += sp178;
    spAC = temp_f12;
    func_8002C7E4(temp_f12, temp_f14, player, arg3, arg2);
    sp18C = func_80030150(player, arg3);
    func_802B63B8(&sp184, (f32 (*)[3]) sp58);
    sp98 = player->unk_034[0];
    sp9C = player->unk_034[1];
    spA0 = player->unk_034[2];
    if (((player->unk_10C < 3) && ((s32) (u16) player->unk_256 < 3)) || ((player->unk_0BC & 0x2000) == 0x2000)) {
        temp_t4 = (s32) player->unk_07C >> 0x10;
        if ((temp_t4 >= 0x28) || (temp_t4 < -0x27)) {
            temp_f0_3 = (f64) sp98;
            temp_f12_2 = (f64) sp7C;
            temp_f2_3 = (f64) spA0;
            sp98 = (f32) (temp_f0_3 + ((((f64) (sp184 + spB4 + sp160) - (temp_f0_3 * (0.12 * (f64) player->kartFriction))) / 6000.0) / (((f64) player->unk_20C * 0.6) + 1.0 + temp_f12_2)));
            spA0 = (f32) (temp_f2_3 + ((((f64) (sp18C + spAC + sp168) - (temp_f2_3 * (0.12 * (f64) player->kartFriction))) / 6000.0) / (((f64) player->unk_20C * 0.6) + 1.0 + temp_f12_2)));
        } else {
            temp_f0_4 = (f64) sp98;
            temp_f12_3 = (f64) (sp7C + 1);
            temp_f2_4 = (f64) spA0;
            sp98 = (f32) (temp_f0_4 + ((((f64) (sp184 + spB4 + sp160) - (temp_f0_4 * (0.12 * (f64) player->kartFriction))) / 6000.0) / temp_f12_3));
            spA0 = (f32) (temp_f2_4 + ((((f64) (sp18C + spAC + sp168) - (temp_f2_4 * (0.12 * (f64) player->kartFriction))) / 6000.0) / temp_f12_3));
        }
    } else {
        temp_f0_5 = (f64) sp98;
        temp_f2_5 = (f64) spA0;
        sp98 = (f32) (temp_f0_5 + ((((f64) (sp184 + spB4 + sp160) - (temp_f0_5 * (0.12 * (f64) player->kartFriction))) / 6000.0) / 30.0));
        spA0 = (f32) (temp_f2_5 + ((((f64) (sp18C + spAC + sp168) - (temp_f2_5 * (0.12 * (f64) player->kartFriction))) / 6000.0) / 30.0));
    }
    temp_f0_6 = (f64) sp9C;
    sp9C = (f32) (temp_f0_6 + ((((f64) (sp188 + spB0 + sp164) - (temp_f0_6 * (0.12 * (f64) player->kartFriction))) / 6000.0) / (f64) player->unk_DAC));
    temp_v0_4 = player->unk_0CA;
    if (((temp_v0_4 & 2) == 2) || ((temp_v0_4 & 8) == 8) || ((player->unk_0BC & 0x04000000) == 0x04000000) || (temp_v0_4 & 1)) {
        sp98 = 0.0f;
        sp9C = 0.0f;
        spA0 = 0.0f;
    }
    temp_v0_5 = player->unk_044;
    if ((temp_v0_5 & 0x10) == 0x10) {
        player->unk_044 = temp_v0_5 & 0xFFEF;
    }
    temp_f0_7 = player->pos[0];
    spF0 = temp_f0_7;
    temp_f2_6 = player->pos[2];
    temp_f12_4 = player->pos[1];
    spE8 = temp_f2_6;
    player->rotX = temp_f0_7;
    player->rotZ = temp_f2_6;
    player->rotY = temp_f12_4;
    temp_t9 = &D_8018CE10[arg3];
    sp54 = temp_t9;
    spFC = temp_t9->unk_04 + (temp_f0_7 + player->unk_034[0]);
    spF8 = player->unk_034[1] + temp_f12_4;
    spF4 = temp_t9->unk_0C + (spE8 + player->unk_034[2]);
    temp_v0_6 = player->unk_0CA;
    if (((temp_v0_6 & 2) != 2) && ((temp_v0_6 & 8) != 8) && ((player->unk_0BC & 0x04000000) != 0x04000000) && !(temp_v0_6 & 1)) {
        func_8002AAC0(player);
        temp_f4 = spF8 + player->kartHopVelocity;
        spF8 = temp_f4;
        spF8 = (f32) ((f64) temp_f4 - 0.02);
    }
    func_802AD950(&player->unk_110, player->boundingBoxSize, spFC, spF8, spF4, player->rotX, player->rotY, player->rotZ);
    player->unk_058 = 0.0f;
    player->unk_060 = 0.0f;
    player->unk_05C = 1.0f;
    if ((player->unk_044 & 1) != 1) {
        func_802B6540((f32 (*)[3]) sp58, player->unk_058, player->unk_05C, player->unk_060, (s16) (s32) player->unk_02C[1]);
    } else {
        func_802B6540((f32 (*)[3]) sp58, player->unk_058, player->unk_05C, player->unk_060, (s16) (player->unk_02C[1] + 0x8000));
    }
    player->unk_0BC |= 8;
    player->unk_0C2 += 1;
    spA8 = player->unk_110.unk3C[2];
    if (spA8 <= 0.0f) {
        temp_v0_7 = player->unk_0C2;
        temp_t4_2 = player->unk_0BC & ~2;
        player->unk_0BC = temp_t4_2;
        player->unk_0BC = temp_t4_2 & ~8;
        if (temp_v0_7 >= 0x23) {
            if (temp_v0_7 >= 0x32) {
                player->unk_0C2 = 0x0032;
            }
            temp_v0_8 = player->unk_000;
            var_v1 = temp_v0_8 & 0x4000;
            player->unk_DCC = 0;
            player->unk_0B6 |= 0x100;
            player->unk_DC0 = 3.0f;
            if ((var_v1 == 0x4000) && ((player->unk_0BC & 0x100000) == 0x100000) && ((temp_v0_8 & 0x100) != 0x100)) {
                func_800C9060((u8) arg3, 0x1900A60AU);
                var_v1 = player->unk_000 & 0x4000;
            } else if ((var_v1 == 0x4000) && ((temp_v0_8 & 0x100) != 0x100)) {
                func_800CADD0((u8) arg3, (f32) player->unk_0C2 / 35.0f);
                var_v1 = player->unk_000 & 0x4000;
            }
            if (var_v1 == 0x4000) {
                player->unk_044 |= 0x100;
            }
        }
        temp_v0_9 = player->unk_0C2;
        if ((temp_v0_9 < 0x23) && (temp_v0_9 >= 0x1C) && (((player->unk_094 / 18.0f) * 216.0f) >= 20.0f)) {
            temp_v0_10 = player->unk_000;
            var_v1_2 = temp_v0_10 & 0x4000;
            player->unk_DCC = 0;
            player->unk_DC0 = 2.8f;
            if ((var_v1_2 == 0x4000) && ((temp_v0_10 & 0x100) != 0x100)) {
                func_800CADD0((u8) arg3, (f32) player->unk_0C2 / 35.0f);
                var_v1_2 = player->unk_000 & 0x4000;
            }
            if (var_v1_2 == 0x4000) {
                player->unk_044 |= 0x100;
            }
        }
        temp_v0_11 = player->unk_0C2;
        if ((temp_v0_11 < 0x1C) && (temp_v0_11 >= 4) && (((player->unk_094 / 18.0f) * 216.0f) >= 20.0f)) {
            temp_v0_12 = player->unk_000;
            player->unk_DCC = 0;
            player->unk_DC0 = 1.5f;
            if (((temp_v0_12 & 0x4000) == 0x4000) && ((temp_v0_12 & 0x100) != 0x100)) {
                temp_v0_13 = player->unk_0C2;
                if ((temp_v0_13 < 0xB) && (temp_v0_13 >= 4) && (gCurrentCourseId == 2)) {
                    func_800CADD0((u8) arg3, (f32) temp_v0_13 / 14.0f);
                } else {
                    func_800CADD0((u8) arg3, (f32) temp_v0_13 / 25.0f);
                }
            }
        }
        player->unk_0C2 = 0;
        player->kartHopVelocity = (f32) player->unk_0C2;
    }
    spA8 = player->unk_110.unk3C[2];
    if (spA8 <= 0.0f) {
        func_8003F46C(player, &sp8C, &sp98, &sp178, &spA8, &spFC, &spF8, &spF4);
    }
    spA8 = player->unk_110.unk3C[0];
    if (spA8 < 0.0f) {
        func_8003F734(player, &sp8C, &sp98, &spA8, &spFC, &spF8, &spF4);
        func_8002C954(player, arg3, &sp98);
    }
    spA8 = player->unk_110.unk3C[1];
    if (spA8 < 0.0f) {
        func_8003FBAC(player, &sp8C, &sp98, &spA8, &spFC, &spF8, &spF4);
        func_8002C954(player, arg3, &sp98);
    }
    spA8 = player->unk_110.unk3C[0];
    if (spA8 >= 0.0f) {
        spA8 = player->unk_110.unk3C[1];
        if (spA8 >= 0.0f) {
            temp_v0_14 = (u16) player->unk_256;
            player->unk_046 &= 0xFFDF;
            if (temp_v0_14 != 0) {
                temp_t6 = temp_v0_14 + 1;
                player->unk_256 = temp_t6;
                if ((temp_t6 & 0xFFFF) >= 0xA) {
                    player->unk_256 = 0;
                }
            }
        }
    }
    if (!(player->unk_0BC & 8) && (func_802ABDB8(player->unk_110.unk3A) != 0) && ((player->unk_0BC & 0x10000) != 0x10000)) {
        temp_v0_15 = player->unk_0CA;
        if (!(temp_v0_15 & 2) || !(temp_v0_15 & 8)) {
            func_8008F494(player, arg3);
        }
    } else if (!(player->unk_0BC & 8) && (func_802ABDB8(player->unk_110.unk3A) == 0) && (player->unk_0BC & 0x10000)) {
        func_8008F5A4(player, arg3);
    }
    player->unk_074 = func_802ABE30(spFC, spF8, spF4, player->unk_110.unk3A);
    if (((player->unk_000 & 0x4000) == 0x4000) && ((temp_v0_16 = gActiveScreenMode, (temp_v0_16 == 0)) || (temp_v0_16 == 2) || (temp_v0_16 == 1))) {
        func_80029B4C(player, spFC, spF8, spF4);
    } else {
        func_8002A194(player, spFC, spF8, spF4);
    }
    func_8002AE38(player, arg3, spF0, spE8, spFC, spF4);
    player->unk_22C = player->unk_094;
    player->unk_094 = sqrtf((spA0 * spA0) + (sp98 * sp98));
    if ((player->unk_08C <= 0.0f) && ((f64) player->unk_094 <= 0.08) && (sp54->unk_04 == 0.0f) && (sp54->unk_0C == 0.0f)) {
        sp98 += sp98 * -1.0f;
        spA0 += spA0 * -1.0f;
    } else {
        player->pos[0] = spFC;
        player->pos[2] = spF4;
    }
    temp_v0_17 = player->unk_000;
    player->pos[1] = spF8;
    if ((temp_v0_17 & 0x4000) && !(temp_v0_17 & 0x1000)) {
        func_8002BB9C(player, &spFC, &spF4, arg2, (s32) arg3, &sp98);
    }
    player->unk_064 = sp178;
    player->unk_06C = sp180;
    player->unk_034[0] = sp98;
    player->unk_034[1] = sp9C;
    player->unk_034[2] = spA0;
    temp_v0_18 = D_80165070[arg3];
    temp_v0_18->unk0 = sp98;
    temp_v0_18->unk4 = sp9C;
    temp_v0_18->unk8 = spA0;
    if ((player->unk_000 & 0x4000) == 0x4000) {
        temp_f2_7 = player->unk_094;
        temp_v0_19 = &gKartTopSpeedTable[player->characterId];
        temp_f12_5 = *temp_v0_19;
        if (temp_f12_5 < temp_f2_7) {
            temp_f0_8 = temp_f12_5 / temp_f2_7;
            player->unk_034[0] *= temp_f0_8;
            player->unk_034[1] *= temp_f0_8;
            player->unk_034[2] *= temp_f0_8;
            player->unk_094 = *temp_v0_19;
        }
    }
    if ((player->unk_044 & 1) == 1) {
        temp_f2_8 = player->unk_094;
        if (temp_f2_8 > 1.0f) {
            temp_f0_9 = 1.0f / temp_f2_8;
            player->unk_094 = 1.0f;
            player->unk_034[0] *= temp_f0_9;
            player->unk_034[1] *= temp_f0_9;
            player->unk_034[2] *= temp_f0_9;
        }
    }
    if (player->unk_110.unk3C[2] >= 500.0f) {
        player->unk_078 = (s16) ((s16) player->unk_078 / 2);
    }
    func_8002C4F8(player, arg3);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_8002D268.s")
#endif

void func_8002E4C4(Player *player) {
    s32 player_index;

    player_index = get_player_index_for_player(player);
    player->kartHopJerk = 0.0f;
    player->kartHopAcceleration = 0.0f;
    player->kartHopVelocity = 0.0f;
    player->pos[1] = func_802AE1C0(player->pos[0], D_80164510[player_index] + 10.0f, player->pos[2]) + player->boundingBoxSize;
    if (((player->pos[1] - D_80164510[player_index]) > 1200.0f) || ((player->pos[1] - D_80164510[player_index]) < -1200.0f)) {
        player->pos[1] = player->rotY;
    }
    player->unk_034[1] = 0.0f;
}

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_80029B4C(Player *, f32, f32, f32);           /* extern */
? func_8002AE38(Player *, s8, f32, f32, f32, f32);  /* extern */
? func_8002C4F8(Player *, s8);                      /* extern */
? func_8002C7E4(Player *, s8, s8);                  /* extern */
? func_8002C954(Player *, s8, f32 *);               /* extern */
? func_8002CD48(Player *, s8, s8);                  /* extern */
? func_800CADD0(u8, f32);                           /* extern */
static ? D_800E3D74;                                /* unable to generate initializer */
static ? D_800E3D80;                                /* unable to generate initializer */
static ? D_800E3D8C;                                /* unable to generate initializer */

void func_8002E594(Player *player, Camera *camera, s8 arg2, s8 arg3) {
    f32 spF4;
    f32 spEC;
    f32 spE0;
    f32 spD4;
    f32 spD0;
    f32 spCC;
    f32 spC8;
    f32 spBC;
    f32 spB4;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp48;
    s16 sp46;
    f32 *sp40;
    f32 *temp_a0;
    f32 *temp_a0_2;
    f32 *temp_v0_13;
    f32 temp_f0;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f12;
    f32 temp_f18;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 temp_f4;
    f32 temp_f6;
    f64 temp_f0_2;
    f64 temp_f0_3;
    f64 temp_f0_4;
    f64 temp_f2;
    f64 temp_f2_2;
    s16 temp_t8;
    s16 temp_v0_10;
    s16 temp_v0_4;
    s16 temp_v0_6;
    s16 temp_v0_7;
    s16 temp_v0_8;
    s32 temp_t1;
    s32 temp_t5;
    s32 temp_v0;
    s32 temp_v0_11;
    s32 temp_v0_12;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v1_4;
    s32 var_v0;
    s32 var_v0_2;
    struct_D_8018CE10 *temp_v0_5;
    u16 temp_v0_9;
    u16 temp_v1;
    u16 temp_v1_2;
    u16 temp_v1_3;

    spEC.unk0 = D_800E3D74.unk0;
    spEC.unk4 = (s32) D_800E3D74.unk4;
    spEC.unk8 = (s32) D_800E3D74.unk8;
    spE0.unk0 = D_800E3D80.unk0;
    spE0.unk4 = (s32) D_800E3D80.unk4;
    spE0.unk8 = (s32) D_800E3D80.unk8;
    spD4.unk0 = D_800E3D8C.unk0;
    spD4.unk4 = (s32) D_800E3D8C.unk4;
    spD4.unk8 = (s32) D_800E3D8C.unk8;
    func_8002B830(player, arg3, arg2);
    temp_v0 = player->unk_0BC;
    if (((temp_v0 & 0x80) == 0x80) || ((temp_v0 & 0x40) == 0x40) || ((temp_v0 & 0x4000) == 0x4000) || ((temp_v0 & 0x80000) == 0x80000) || ((temp_v0 & 0x800000) == 0x800000) || ((temp_v0 & 0x20000) == 0x20000) || (player->unk_044 & 0x800)) {
        sp46 = 1;
    } else {
        sp46 = 0;
    }
    func_8002CD48(player, arg3, arg2);
    func_8002AB70(player);
    func_8002FCA8(player, arg3);
    temp_v0_2 = player->unk_0BC;
    if (((temp_v0_2 & 0x80) == 0x80) || ((temp_v0_2 & 0x40) == 0x40) || ((temp_v0_2 & 0x20000) == 0x20000)) {
        temp_f0 = player->kartGravity;
        sp80 = (f32) (((f64) (-player->unk_110.unk60[0] * temp_f0) * 0.1) + (f64) (-1.0f * player->unk_064));
        sp7C = -player->unk_110.unk60[1] * temp_f0;
        sp78 = (f32) (((f64) (-player->unk_110.unk60[2] * temp_f0) * 0.1) + (f64) (-1.0f * player->unk_06C));
    } else {
        sp80 = player->unk_064 * -1.0f;
        sp7C = player->kartGravity * -1.0f;
        sp78 = player->unk_06C * -1.0f;
    }
    func_8002C7E4(player, arg3, arg2);
    if (sp46 == 1) {
        temp_a0 = player->unk_174[0];
        sp40 = temp_a0;
        func_802B6540((f32 (*)[3]) temp_a0, player->unk_058, player->unk_05C, player->unk_060, (s16) (s32) player->unk_02C[1]);
        func_802B6540((f32 (*)[3]) player->unk_150, player->unk_058, player->unk_05C, player->unk_060, (s16) (s32) player->unk_0AE);
    } else {
        temp_a0_2 = player->unk_174[0];
        sp40 = temp_a0_2;
        func_802B6540((f32 (*)[3]) temp_a0_2, player->unk_058, player->unk_05C, player->unk_060, (s16) (s32) player->unk_02C[1]);
    }
    spF4 = func_80030150(player, arg3);
    if (sp46 == 1) {
        func_802B63B8(&spEC, (f32 (*)[3]) player->unk_150);
    } else {
        func_802B63B8(&spEC, (f32 (*)[3]) sp40);
    }
    sp54 = player->unk_034[0];
    sp58 = player->unk_034[1];
    sp5C = player->unk_034[2];
    if ((player->unk_10C < 3) && ((s32) (u16) player->unk_256 < 3) && (temp_v0_3 = player->unk_0BC, ((temp_v0_3 & 0x400) != 0x400)) && ((temp_v0_3 & 0x01000000) != 0x01000000) && ((temp_v0_3 & 0x02000000) != 0x02000000)) {
        temp_f0_2 = (f64) sp54;
        temp_f2 = (f64) sp5C;
        sp54 = (f32) (temp_f0_2 + ((((f64) (spEC + sp80 + spD4) - (temp_f0_2 * (0.12 * (f64) player->kartFriction))) / 6000.0) / (f64) ((player->unk_20C * 5.0f) + 1.0f)));
        sp5C = (f32) (temp_f2 + ((((f64) (spF4 + sp78 + spDC) - (temp_f2 * (0.12 * (f64) player->kartFriction))) / 6000.0) / (f64) ((player->unk_20C * 5.0f) + 1.0f)));
    } else {
        temp_f0_3 = (f64) sp54;
        temp_f2_2 = (f64) sp5C;
        sp54 = (f32) (temp_f0_3 + ((((f64) (spEC + sp80 + spD4) - (temp_f0_3 * (0.2 * (f64) player->kartFriction))) / 6000.0) * 0.08));
        sp5C = (f32) (temp_f2_2 + ((((f64) (spF4 + sp78 + spDC) - (temp_f2_2 * (0.2 * (f64) player->kartFriction))) / 6000.0) * 0.08));
    }
    temp_f0_4 = (f64) sp58;
    sp58 = (f32) (temp_f0_4 + ((((f64) (spF0 + sp7C + spD8) - (temp_f0_4 * (0.12 * (f64) player->kartFriction))) / 6000.0) / (f64) player->unk_DAC));
    temp_v0_4 = player->unk_0CA;
    if (((temp_v0_4 & 2) == 2) || ((temp_v0_4 & 8) == 8)) {
        sp58 = 0.0f;
        sp54 = 0.0f;
        sp5C = 0.0f;
    }
    temp_f0_5 = player->pos[0];
    spBC = temp_f0_5;
    temp_f2_3 = player->pos[1];
    temp_f18 = player->pos[2];
    player->rotX = temp_f0_5;
    player->rotY = temp_f2_3;
    player->rotZ = temp_f18;
    temp_v0_5 = &D_8018CE10[arg3];
    spD0 = temp_v0_5->unk_04 + (temp_f0_5 + player->unk_034[0]);
    spCC = player->unk_034[1] + temp_f2_3;
    spB4 = temp_f18;
    temp_f6 = temp_v0_5->unk_0C + (temp_f18 + player->unk_034[2]);
    spC8 = temp_f6;
    func_8002AAC0(player);
    temp_f4 = spCC + player->kartHopVelocity;
    spCC = temp_f4;
    func_802AD950(&player->unk_110, player->boundingBoxSize, spD0, temp_f4, temp_f6, player->rotX, player->rotY, player->rotZ);
    player->unk_0BC |= 8;
    player->unk_0C2 += 1;
    player->unk_058 = 0.0f;
    player->unk_060 = 0.0f;
    player->unk_05C = 1.0f;
    sp74 = player->unk_110.unk3C[2];
    if (sp74 <= 0.0f) {
        temp_t1 = player->unk_0BC & ~2;
        temp_t5 = temp_t1 & ~8;
        player->unk_0BC = temp_t1;
        player->unk_0BC = temp_t5;
        if (((temp_t5 & 0x400) != 0x400) && ((temp_t5 & 0x01000000) != 0x01000000) && ((temp_t5 & 0x02000000) != 0x02000000)) {
            temp_v0_6 = player->unk_0C2;
            if (temp_v0_6 >= 0x1C) {
                if (temp_v0_6 >= 0x32) {
                    player->unk_0C2 = 0x0032;
                }
                temp_v1 = player->unk_000;
                var_v0 = temp_v1 & 0x4000;
                player->unk_DCC = 0;
                player->unk_0B6 |= 0x100;
                player->unk_DC0 = 3.0f;
                if ((var_v0 == 0x4000) && ((temp_v1 & 0x100) != 0x100)) {
                    func_800CADD0((u8) arg3, (f32) player->unk_0C2 / 50.0f);
                    var_v0 = player->unk_000 & 0x4000;
                }
                if (var_v0 == 0x4000) {
                    player->unk_044 |= 0x100;
                }
            }
            temp_v0_7 = player->unk_0C2;
            if ((temp_v0_7 < 0x1C) && (temp_v0_7 >= 0xA) && (((player->unk_094 / 18.0f) * 216.0f) >= 20.0f)) {
                temp_v1_2 = player->unk_000;
                var_v0_2 = temp_v1_2 & 0x4000;
                player->unk_DCC = 0;
                player->unk_DC0 = 2.0f;
                if ((var_v0_2 == 0x4000) && ((temp_v1_2 & 0x100) != 0x100)) {
                    func_800CADD0((u8) arg3, (f32) player->unk_0C2 / 50.0f);
                    var_v0_2 = player->unk_000 & 0x4000;
                }
                if (var_v0_2 == 0x4000) {
                    player->unk_044 |= 0x100;
                }
            }
            goto block_63;
        }
        temp_v0_8 = player->unk_0C2;
        if (temp_v0_8 >= 0xA) {
            if (temp_v0_8 >= 0x32) {
                player->unk_0C2 = 0x0032;
            }
            temp_v1_3 = player->unk_000;
            if (((temp_v1_3 & 0x4000) == 0x4000) && ((temp_v1_3 & 0x100) != 0x100)) {
                func_800CADD0((u8) arg3, (f32) player->unk_0C2 / 20.0f);
            }
            if (player->unk_0C2 >= 0x28) {
                player->unk_0C2 = 0x0014;
            }
            if ((player->unk_0BC & 0x400) == 0x400) {
                player->unk_0C2 = (s16) (s32) ((f64) player->unk_0C2 / 6.5);
                player->kartHopAcceleration = 0.0f;
                player->kartHopJerk = 0.06f;
            } else {
                player->unk_0C2 = (s16) (s32) ((f64) player->unk_0C2 / 7.5);
                player->kartHopAcceleration = 0.0f;
                player->kartHopJerk = 0.06f;
                if ((player->unk_000 & 0x4000) == 0x4000) {
                    player->unk_044 |= 0x100;
                }
            }
        } else {
block_63:
            player->unk_0C2 = 0;
        }
        player->kartHopVelocity = (f32) player->unk_0C2;
    }
    sp74 = player->unk_110.unk3C[2];
    if (sp74 <= 0.0f) {
        func_8003F46C(player, &sp48, &sp54, &spE0, &sp74, &spD0, &spCC, &spC8);
    }
    sp74 = player->unk_110.unk3C[0];
    if (sp74 < 0.0f) {
        func_8003F734(player, &sp48, &sp54, &sp74, &spD0, &spCC, &spC8);
        func_8002C954(player, arg3, &sp54);
        func_80031F48(player, 6.0f);
    }
    sp74 = player->unk_110.unk3C[1];
    if (sp74 < 0.0f) {
        func_8003FBAC(player, &sp48, &sp54, &sp74, &spD0, &spCC, &spC8);
        func_8002C954(player, arg3, &sp54);
        func_80031F48(player, 6.0f);
    }
    sp74 = player->unk_110.unk3C[0];
    if (sp74 >= 0.0f) {
        sp74 = player->unk_110.unk3C[1];
        if (sp74 >= 0.0f) {
            temp_v0_9 = (u16) player->unk_256;
            player->unk_046 &= 0xFFDF;
            if (temp_v0_9 != 0) {
                temp_t8 = temp_v0_9 + 1;
                player->unk_256 = temp_t8;
                if ((temp_t8 & 0xFFFF) >= 0xA) {
                    player->unk_256 = 0;
                }
            }
        }
    }
    if ((func_802ABDB8(player->unk_110.unk3A) != 0) && ((player->unk_0BC & 0x10000) != 0x10000) && (((player->unk_094 / 18.0f) * 216.0f) >= 20.0f)) {
        temp_v0_10 = player->unk_0CA;
        if (!(temp_v0_10 & 2) || !(temp_v0_10 & 8)) {
            func_8008F494(player, arg3);
        }
    } else if (!(player->unk_0BC & 8) && (func_802ABDB8(player->unk_110.unk3A) == 0) && (player->unk_0BC & 0x10000)) {
        func_8008F5A4(player, arg3);
    }
    player->unk_074 = func_802ABE30(spD0, spCC, spC8, player->unk_110.unk3A);
    if (((player->unk_000 & 0x4000) == 0x4000) && ((temp_v0_11 = gActiveScreenMode, (temp_v0_11 == 0)) || (temp_v0_11 == 2) || (temp_v0_11 == 1))) {
        func_80029B4C(player, spD0, spCC, spC8);
    } else {
        func_8002A194(player, spD0, spCC, spC8);
    }
    func_8002AE38(player, arg3, spBC, spB4, spD0, spC8);
    player->unk_22C = player->unk_094;
    temp_v0_12 = player->unk_0BC;
    player->unk_094 = sqrtf((sp5C * sp5C) + (sp54 * sp54));
    temp_v1_4 = temp_v0_12 & 0x400;
    if (((temp_v1_4 != 0x400) && (player->unk_08C <= 0.0f) && ((f64) player->unk_094 < 0.13)) || ((temp_v1_4 != 0x400) && (player->unk_08C <= 0.0f) && ((f64) player->unk_094 < 0.2) && ((temp_v0_12 & 1) == 1))) {
        sp54 += sp54 * -1.0f;
        sp5C += sp5C * -1.0f;
    } else {
        player->pos[0] = spD0;
        player->pos[2] = spC8;
    }
    player->pos[1] = spCC;
    player->unk_064 = spE0;
    player->unk_06C = spE8;
    player->unk_034[0] = sp54;
    player->unk_034[1] = sp58;
    player->unk_034[2] = sp5C;
    if ((player->unk_000 & 0x4000) == 0x4000) {
        temp_f2_4 = player->unk_094;
        temp_v0_13 = &gKartTopSpeedTable[player->characterId];
        temp_f12 = *temp_v0_13;
        if (temp_f12 < temp_f2_4) {
            temp_f0_6 = temp_f12 / temp_f2_4;
            player->unk_034[0] *= temp_f0_6;
            player->unk_034[1] *= temp_f0_6;
            player->unk_034[2] *= temp_f0_6;
            player->unk_094 = *temp_v0_13;
        }
    }
    func_8002C4F8(player, arg3);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_8002E594.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_8002CD48(Player *, s8, s8);                  /* extern */
static ? D_800E3D98;                                /* unable to generate initializer */
static ? D_800E3DA4;                                /* unable to generate initializer */
static ? D_800E3DB0;                                /* unable to generate initializer */
static ? D_800E3DBC;                                /* unable to generate initializer */

void control_cpu_movement(Player *player, Camera *camera, s8 arg2, s8 arg3) {
    f32 spFC;
    f32 spF4;
    ? spE8;
    f32 spDC;
    f32 spD0;
    f32 spCC;
    f32 spC4;
    f32 sp84;
    f32 sp7C;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp40;
    f32 *sp3C;
    f32 *temp_a1;
    f32 *temp_v0;
    f32 *temp_v1;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f2_2;
    f32 temp_f8;
    f32 temp_f8_2;
    f64 temp_f0;
    f64 temp_f2;
    s32 temp_t1;

    spF4.unk0 = D_800E3D98.unk0;
    spF4.unk4 = (s32) D_800E3D98.unk4;
    spF4.unk8 = (s32) D_800E3D98.unk8;
    spE8.unk0 = (s32) D_800E3DA4.unk0;
    spE8.unk8 = (s32) D_800E3DA4.unk8;
    spE8.unk4 = (s32) D_800E3DA4.unk4;
    spDC.unk0 = D_800E3DB0.unk0;
    spDC.unk4 = (s32) D_800E3DB0.unk4;
    spDC.unk8 = (s32) D_800E3DB0.unk8;
    spD0.unk0 = D_800E3DBC.unk0;
    spD0.unk4 = (s32) D_800E3DBC.unk4;
    spD0.unk8 = (s32) D_800E3DBC.unk8;
    player->unk_0BC |= 0x1000;
    player->unk_044 |= 0x10;
    sp40 = D_80164510[arg3];
    player->unk_204 = 0;
    player->unk_0BC &= ~0x10;
    func_8002B830(player, arg3, arg2);
    func_8002CD48(player, arg3, arg2);
    sp84 = spDC + (0.0f * player->unk_064);
    sp7C = spE4 + (0.0f * player->unk_06C);
    player->unk_10C = 0;
    player->unk_256 = 0;
    player->unk_0BC &= 0xFFFF7FFF;
    temp_a1 = player->unk_174[0];
    spFC = func_80030150(player, arg3);
    sp3C = temp_a1;
    func_802B63B8(&spF4, (f32 (*)[3]) temp_a1);
    sp6C = 0.0f;
    sp68 = player->unk_034[0];
    sp70 = player->unk_034[2];
    temp_f0 = (f64) sp68;
    temp_f2 = (f64) sp70;
    temp_f8 = (f32) (temp_f0 + (((f64) (spF4 + sp84 + spD0) - (temp_f0 * (0.12 * (f64) player->kartFriction))) / 6000.0));
    sp68 = temp_f8;
    temp_f8_2 = (f32) (temp_f2 + (((f64) (spFC + sp7C + spD8) - (temp_f2 * (0.12 * (f64) player->kartFriction))) / 6000.0));
    sp70 = temp_f8_2;
    temp_f12 = player->pos[0];
    temp_f14 = player->pos[2];
    player->rotX = temp_f12;
    player->rotZ = temp_f14;
    player->rotY = sp40;
    spCC = player->unk_034[0] + temp_f12;
    spC4 = player->unk_034[2] + temp_f14;
    player->unk_0C0 = 0;
    player->kartHopJerk = 0.0f;
    player->kartHopAcceleration = 0.0f;
    player->kartHopVelocity = 0.0f;
    func_802B6540((f32 (*)[3]) sp3C, player->unk_058, player->unk_05C, player->unk_060, (s16) (s32) player->unk_02C[1]);
    player->unk_0C2 = 0;
    temp_t1 = player->unk_0BC & ~2;
    player->unk_0BC = temp_t1;
    player->unk_0BC = temp_t1 & ~8;
    player->unk_0C4 = 0;
    player->unk_206 = 0;
    player->unk_22C = player->unk_094;
    player->unk_094 = sqrtf((sp70 * sp70) + (temp_f8 * temp_f8));
    player->pos[0] = spCC;
    player->pos[2] = spC4;
    player->unk_064 = 0.0f;
    player->unk_06C = 0.0f;
    player->pos[1] = sp40;
    temp_v0 = D_80165070[arg3];
    player->unk_034[0] = sp68;
    player->unk_034[1] = sp6C;
    player->unk_034[2] = sp70;
    temp_v0->unk0 = sp68;
    temp_v0->unk4 = sp6C;
    temp_v0->unk8 = temp_f8_2;
    temp_f2_2 = player->unk_094;
    temp_v1 = &gKartTopSpeedTable[player->characterId];
    temp_f12_2 = *temp_v1;
    if (temp_f12_2 < temp_f2_2) {
        temp_f0_2 = temp_f12_2 / temp_f2_2;
        player->unk_034[0] *= temp_f0_2;
        player->unk_034[1] *= temp_f0_2;
        player->unk_034[2] *= temp_f0_2;
        player->unk_094 = *temp_v1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/control_cpu_movement.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_80029B4C(Player *, f32, f32, f32);           /* extern */
? func_8002AE38(Player *, s8, f32, f32, f32, f32);  /* extern */
? func_80037BB4(? *);                               /* extern */
static ? D_800E3DC8;                                /* unable to generate initializer */
static ? D_800E3DD4;                                /* unable to generate initializer */
static ? D_800E3DE0;                                /* unable to generate initializer */
static ? D_800E3DEC;                                /* unable to generate initializer */

void func_8002F730(Player *player, Camera *camera, s8 arg2, s8 arg3) {
    f32 spFC;
    f32 spF4;
    f32 spE8;
    ? spDC;
    ? spD0;
    f32 spCC;
    f32 spC8;
    f32 spC4;
    f32 spC0;
    f32 spBC;
    f32 spB8;
    f32 sp84;
    f32 sp7C;
    f32 sp78;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp5C;
    f32 *sp4C;
    f32 sp44;
    f32 sp34;
    f32 *temp_a1;
    f32 *temp_v0_2;
    f32 *temp_v0_3;
    f32 temp_f0_2;
    f32 temp_f10;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f8;
    f64 temp_f0;
    f64 temp_f12;
    f64 temp_f2;
    s32 temp_v0;

    spF4.unk0 = D_800E3DC8.unk0;
    spF4.unk4 = (s32) D_800E3DC8.unk4;
    spF4.unk8 = (s32) D_800E3DC8.unk8;
    spE8.unk0 = D_800E3DD4.unk0;
    spE8.unk4 = (s32) D_800E3DD4.unk4;
    spE8.unk8 = (s32) D_800E3DD4.unk8;
    spDC.unk0 = (s32) D_800E3DE0.unk0;
    spDC.unk4 = (s32) D_800E3DE0.unk4;
    spDC.unk8 = (s32) D_800E3DE0.unk8;
    spD0.unk0 = (s32) D_800E3DEC.unk0;
    spD0.unk4 = (s32) D_800E3DEC.unk4;
    spD0.unk8 = (s32) D_800E3DEC.unk8;
    func_80037BB4(&spD0);
    sp84 = player->unk_064 * 0.0f;
    sp7C = player->unk_06C * 0.0f;
    temp_a1 = player->unk_174[0];
    spFC = func_80030150(player, arg3);
    sp4C = temp_a1;
    func_802B63B8(&spF4, (f32 (*)[3]) temp_a1);
    sp68 = player->unk_034[0];
    sp6C = player->unk_034[1];
    temp_f0 = (f64) sp68;
    sp70 = player->unk_034[2];
    temp_f2 = (f64) sp70;
    sp68 = (f32) (temp_f0 + (((f64) (spF4 + sp84) - (temp_f0 * 780.0)) / 6500.0));
    temp_f12 = (f64) sp6C;
    sp70 = (f32) (temp_f2 + (((f64) (spFC + sp7C) - (temp_f2 * 780.0)) / 6500.0));
    sp6C = (f32) (temp_f12 + (((f64) (spF8 + -1100.0f) - (temp_f12 * 780.0)) / 6500.0));
    temp_f14 = player->pos[0];
    spC0 = temp_f14;
    temp_f6 = player->pos[1];
    sp44 = temp_f6;
    spBC = sp44;
    sp34 = player->pos[2];
    spB8 = sp34;
    player->rotX = temp_f14;
    player->rotY = temp_f6;
    player->rotZ = sp34;
    spCC = player->unk_034[0] + temp_f14;
    temp_f10 = player->unk_034[1] + sp44;
    spC8 = temp_f10;
    temp_f8 = player->unk_034[2] + spB8;
    spC4 = temp_f8;
    func_8002AAC0(player);
    temp_f6_2 = temp_f10 + player->kartHopVelocity;
    spC8 = temp_f6_2;
    func_802AD950(&player->unk_110, player->boundingBoxSize, spCC, temp_f6_2, temp_f8, player->rotX, player->rotY, player->rotZ);
    player->unk_058 = 0.0f;
    player->unk_060 = 0.0f;
    player->unk_05C = 1.0f;
    func_802B6540((f32 (*)[3]) sp4C, 0.0f, 1.0f, 0.0f, (s16) (s32) player->unk_02C[1]);
    player->unk_0BC &= ~8;
    sp78 = player->unk_110.unk3C[2];
    if (sp78 <= 0.0f) {
        func_8003F46C(player, &sp5C, &sp68, &spE8, &sp78, &spCC, &spC8, &spC4);
    }
    player->unk_074 = func_802ABE30(spCC, spC8, spC4, player->unk_110.unk3A);
    if (((player->unk_000 & 0x4000) == 0x4000) && ((temp_v0 = gActiveScreenMode, (temp_v0 == 0)) || (temp_v0 == 2) || (temp_v0 == 1))) {
        func_80029B4C(player, spCC, spC8, spC4);
    } else {
        func_8002A194(player, spCC, spC8, spC4);
    }
    func_8002AE38(player, arg3, spC0, spB8, spCC, spC4);
    player->unk_22C = player->unk_094;
    temp_f2_2 = player->unk_08C;
    player->unk_094 = sqrtf((sp70 * sp70) + ((sp68 * sp68) + (sp6C * sp6C)));
    if (((temp_f2_2 <= 0.0f) && ((f64) player->unk_094 < 0.13)) || ((temp_f2_2 <= 0.0f) && ((f64) player->unk_094 < 0.2) && ((player->unk_0BC & 1) == 1))) {
        sp68 += sp68 * -1.0f;
        sp70 += sp70 * -1.0f;
    } else {
        player->pos[0] = spCC;
        player->pos[2] = spC4;
    }
    player->pos[1] = (f32) ((f64) spC8 - 0.018);
    player->unk_064 = spE8;
    player->unk_06C = spF0;
    player->unk_034[0] = sp68;
    player->unk_034[1] = sp6C;
    player->unk_034[2] = sp70;
    temp_v0_2 = D_80165070[arg3];
    temp_v0_2->unk0 = sp68;
    temp_v0_2->unk4 = sp6C;
    temp_v0_2->unk8 = sp70;
    if ((player->unk_000 & 0x4000) == 0x4000) {
        temp_f2_3 = player->unk_094;
        temp_v0_3 = &gKartTopSpeedTable[player->characterId];
        temp_f12_2 = *temp_v0_3;
        if (temp_f12_2 < temp_f2_3) {
            temp_f0_2 = temp_f12_2 / temp_f2_3;
            player->unk_034[0] *= temp_f0_2;
            player->unk_034[1] *= temp_f0_2;
            player->unk_034[2] *= temp_f0_2;
            player->unk_094 = *temp_v0_3;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_8002F730.s")
#endif

void func_8002FCA8(Player *player, s8 arg1) {
    f32 var_f0;
    f32 var_f12;
    s32 temp_lo;
    s32 var_v1;

    var_f0 = 0.0f;
    if ((player->unk_0BC & 0x200) != 0x200) {
        if ((s32) player->boundingBoxCorners[3].surfaceType < 0xF) {
            var_f0 += D_800E2A90[player->characterId][player->boundingBoxCorners[3].surfaceType];
        }
        if ((s32) player->boundingBoxCorners[2].surfaceType < 0xF) {
            var_f0 += D_800E2A90[player->characterId][player->boundingBoxCorners[2].surfaceType];
        }
        if ((s32) player->boundingBoxCorners[1].surfaceType < 0xF) {
            var_f0 += D_800E2AB0[player->characterId][player->boundingBoxCorners[1].surfaceType];
        }
        if ((s32) player->boundingBoxCorners[0].surfaceType < 0xF) {
            var_f0 += D_800E2AB0[player->characterId][player->boundingBoxCorners[0].surfaceType];
        }
    }
    if (D_801652C0[arg1] & 4) {
        var_v1 = 2;
    } else {
        var_v1 = 0;
    }
    if ((player->unk_09C >= 200.0f) && (var_v1 == 2)) {
        temp_lo = (s16) player->unk_0C0 / 182;
        if ((temp_lo > 0xF) || (temp_lo < -0xF)) {
            var_f0 += 1.0;
        }
    }
    if (((player->unk_0BC & 0x200000) == 0x200000) && ((player->unk_000 & 0x4000) != 0x4000)) {
        var_f0 = -3.0f;
    }

    if (player->unk_088 >= 0.0f) {
        var_f12 = player->unk_088 * var_f0;
    } else {
        var_f12 = -player->unk_088 * var_f0;
    }
    player->unk_208 = player->unk_088 - var_f12;
}

void func_8002FE84(Player *player, f32 arg1) {
    f32 temp_f0_3;
    f32 var_f0;
    s16 temp_lo;
    s32 test;

    if ((player->unk_0BC & 0x4000) == 0x4000) {
        player->unk_098 = ((player->unk_09C * player->unk_09C) / 25.0f) * 1.1;
        return;
    }
    
    // Huh?
    if (((player->unk_0BC & 0xFFFFFFFF) & 8) == 8) {
        player->unk_098 = ((player->unk_09C * player->unk_09C) / 25.0f) * 1.1;
        return;
    }

    var_f0 = 0.0f;
    player->unk_098 = arg1;
    temp_lo = player->unk_0C4 / 182;
    if ((temp_lo > 0x11) || (temp_lo < -0x11)) {
        var_f0 += (temp_lo * 0.0125) / 1.2;
    } else {
        var_f0 += (temp_lo * 0.025) / 1.2;
    }
    player->unk_098 = arg1 * (1.0f - var_f0);
    if (player->boundingBoxCorners[3].surfaceType == 8) {
        var_f0 += D_800E2E90[player->characterId][player->boundingBoxCorners[3].surfaceType] * 0.7;
    }
    if (player->boundingBoxCorners[2].surfaceType == 8) {
        // The unecessary "* 1.0" here is to force the compiler to save this 0.7 as a separate RO value from the 0.7 just above this comment
        var_f0 += D_800E2E90[player->characterId][player->boundingBoxCorners[2].surfaceType] * (0.7 * 1.0);
    }
    test = player->unk_0C0 / 182;
    if (test < 0) {
        var_f0 += -test * 0.004;
    } else {
        var_f0 +=  test * 0.004;
    }
    player->unk_098 = arg1 * (1.0 + (var_f0 * 0.7));
    if ((player->unk_0BC & 0x20) == 0x20) {
        temp_f0_3 = player->unk_09C + 180.0f;
        player->unk_098 = (temp_f0_3 * temp_f0_3) / 25.0f;
    }
}

f32 func_80030150(Player *player, s8 arg1) {
    f32 var_f0;
    s16 temp_lo;
    f32 var_f2;
    s32 var_v0;

    var_f0 = 0.0f;
    var_f2 = (player->unk_094 / 18.0f) * 216.0f;
    if (var_f2 >= 8.0f) {
        if ((player->unk_0BC & 0x200) != 0x200) {
            if ((s32) player->boundingBoxCorners[3].surfaceType >= 0xF) {
                // ???????
                if(1) {}
            } else {
                var_f0 += D_800E2E90[player->characterId][player->boundingBoxCorners[3].surfaceType];
            }
            
            if ((s32) player->boundingBoxCorners[2].surfaceType < 0xF) 
                var_f0 += D_800E2E90[player->characterId][player->boundingBoxCorners[2].surfaceType];
            
            if ((s32) player->boundingBoxCorners[1].surfaceType < 0xF) 
                var_f0 += D_800E2EB0[player->characterId][player->boundingBoxCorners[1].surfaceType];
            
            if ((s32) player->boundingBoxCorners[0].surfaceType < 0xF) 
                var_f0 += D_800E2E90[player->characterId][player->boundingBoxCorners[0].surfaceType];
        }
        if (((player->unk_0BC & 8) != 8) && ((player->unk_0CA & 2) != 2)) {
            temp_lo = player->unk_0C4 / 182;
            if (var_f2 >= 20.0f) {
                if ((temp_lo > 0x11) || (temp_lo < -0x11)) {
                    var_f0 -= ((temp_lo * 0.0126) / 3.0);
                } else {
                    var_f0 -= ((temp_lo * 0.026) / 3.0);
                }
            } else {
                var_f0 += -0.2;
                if ((player->unk_0BC & 0x40000000) == 0x40000000) {
                    var_f0 += -0.55;
                }
            }
            if (((player->unk_0BC & 0x10) == 0x10) || (player->unk_204 > 0)) {
                var_v0 = (s16) player->unk_0C0 / 182;
                if (var_v0 < 0) {
                    var_f0 += -var_v0 * 0.004;
                } else {
                    var_f0 += var_v0 * 0.004;
                }
            } else {
                var_v0 = (s16) player->unk_0C0 / 182;
                if (var_v0 < 0) {
                    var_f0 += -var_v0 * (0.01 + gKartTurnSpeedReductionTable0[player->characterId]);
                } else {
                    var_f0 += var_v0 * (0.01 + gKartTurnSpeedReductionTable0[player->characterId]);
                }
            }
            if (((player->unk_0BC & 0x20000000) == 0x20000000) && (player->unk_228 < 0xA)) {
                if (var_v0 < 0) {
                    var_f0 += -var_v0 * 0.008;
                } else {
                    var_f0 += var_v0 * 0.008;
                }
            }
            if ((player->unk_0BC & 0x200) == 0x200) {
                var_f0 += -0.25;
            }
        }
        if ((player->unk_0DE & 1) == 1) {
            var_f0 += 0.3;
        } else {
            if ((player->unk_0DE & 2) == 2) {
                var_f0 += 0.15;
            }
            if (((D_801652A0[arg1] - player->boundingBoxCorners[2].cornerGroundY) >= 3.5) || ((D_801652A0[arg1] - player->boundingBoxCorners[3].cornerGroundY) >= 3.5)) {
                var_f0 += 0.05;
            }
        }
        if ((player->unk_0BC & 8) != 0) {
            move_f32_towards(&player->unk_0A0, player->unk_08C * 0.04, 0.15f);
        } else {
            move_f32_towards(&player->unk_0A0, 0.0f, 0.1f);
        }
    } else {
        player->unk_0A0 = 0.0f;
        player->unk_0E8 = 0.0f;
        if (((s16) player->unk_0C4 / 182) < 0) {
            var_f0 += -0.85;
            if (player->unk_0BC & 0x40000000) {
                var_f0 += -0.55;
            }
        }
    }
    if ((player->unk_000 & 0x4000) != 0x4000) {
        if ((player->unk_0BC & 0x200000) == 0x200000) {
            move_f32_towards(&player->unk_0E8, 380.0f, 0.5f);
        } else {
            move_f32_towards(&player->unk_0E8, 0.0f, 0.1f);
        }
    }
    if ((player->unk_000 & 0x4000) == 0x4000) {
        if (((player->unk_0BC & 0x100) == 0x100) && ((player->unk_0BC & 0x10) != 0x10)) {
            move_f32_towards(&player->unk_0E8, 580.0f, 0.2f);
        } else {
            move_f32_towards(&player->unk_0E8, 0.0f, 0.01f);
        }
        if ((player->unk_0BC & 0x200000) == 0x200000) {
            move_f32_towards(&player->unk_0E4, 580.0f, 0.01f);
        } else {
            move_f32_towards(&player->unk_0E4, 0.0f, 0.01f);
        }
    }
    move_f32_towards(&player->unk_104, var_f0, gKartTurnSpeedReductionTable1[player->characterId] + 0.05);
    var_f2 = (player->unk_08C + player->unk_0E8 + player->boostPower + player->unk_0E4) - player->unk_0A0;
    if (var_f2 < 0.0f) {
        var_f2 = 0.0f;
    }
    if (((player->unk_0CA & 2) == 2) || ((player->unk_0CA & 8) == 8) || ((player->unk_000 & 0x2000) == 0x2000)) {
        return (1.0f - player->unk_104) * var_f2;
    }
    if (((player->unk_0BC & 0x80) == 0x80) || ((player->unk_0BC & 0x40) == 0x40) || ((player->unk_0BC & 0x01000000) == 0x01000000) || ((player->unk_0BC & 0x02000000) == 0x02000000)) {
        return (1.0f - player->unk_104) * var_f2;
    }
    // Have to `and` the 0x2000 here to force the compiler to reload the immediate
    if (((player->unk_0BC & 0x2000) == (0x2000 & 0xFFFFFFFF)) || ((player->unk_0BC & 0x100000) == 0x100000) || ((player->unk_0BC & 4) == 4)) {
        func_8002FE84(player, player->boostPower + player->unk_08C);
        return player->boostPower + player->unk_08C;
    }
    func_8002FE84(player, var_f2);
    return (1.0f - player->unk_104) * var_f2;
}

void func_80030A34(Player *player) {
    f32 var_f0;
    f32 var_f2;

    if (((player->unk_0CA & 2) != 2) && ((player->unk_0CA & 8) != 8)) {
        if ((((player->unk_094 / 18.0f) * 216.0f) >= 8.0f) && (player->unk_DC0 < 1.0f)) {
            switch (player->unk_0F8) {                    /* irregular */
            case 1:
                if (random_int(0x000AU) != 8) {
                    var_f0 = 0.35f;
                    var_f2 = 0.55f;
                } else {
                    player->unk_07A = 0;
                    player->unk_108 = 0.0f;
                    var_f0 = 0.0f;
                    var_f2 = 0.0f;
                }
                break;
            case 14:
            case 16:
                var_f0 = 0.94f;
                var_f2 = 0.85f;
                break;
            default:
                if(1){}
                var_f0 = 0.46f;
                var_f2 = 0.48f;
                break;
            }
        } else if (random_int(0x000AU) != 8) {
            var_f0 = 0.3f;
            var_f2 = 0.54f;
        } else {
            player->unk_07A = 0;
            player->unk_108 = 0.0f;
            var_f0 = 0.0f;
            var_f2 = 0.0f;
        }
        player->unk_07A += 1;
        player->unk_108 = (player->unk_07A * var_f0) - (0.5 * var_f2 * (player->unk_07A * player->unk_07A));
        if ((player->unk_07A != 0) && (player->unk_108 < 0.0f)) {
            player->unk_07A = 0;
        }
        if (player->unk_108 <= 0.0f) {
            player->unk_108 = 0.0f;
        }
    }
}

// This is likely the function responsible for detecting triple-tap "A" for "fast" acceleration
void func_80030C34(Player *player) {
    s32 var_v0;

    if (player == gPlayerOne) {
        var_v0 = 0;
    }
    if (player == gPlayerTwo) {
        var_v0 = 1;
    }
    if (player == gPlayerThree) {
        var_v0 = 2;
    }
    if (player == gPlayerFour) {
        var_v0 = 3;
    }
    if (player == gPlayerFive) {
        var_v0 = 4;
    }
    if (player == gPlayerSix) {
        var_v0 = 5;
    }
    if (player == gPlayerSeven) {
        var_v0 = 6;
    }
    if (player == gPlayerEight) {
        var_v0 = 7;
    }
    if (D_80165460[var_v0] == 0) {
        if (gPlayerIsThrottleActive[var_v0] == 1) {
            if ((D_80165420[var_v0] < 2) || (D_80165420[var_v0] >= 9)) {
                D_80165440[var_v0] = 0;
            }
            D_80165420[var_v0] = 0;
            D_80165400[var_v0] = 0;
        }
        gPlayerIsThrottleActive[var_v0] = 0;
        D_80165420[var_v0]++;
        if (D_80165420[var_v0] >= 9) {
            D_80165420[var_v0] = 9;
        }
        if ((D_80165420[var_v0] >= 2) && (D_80165420[var_v0] < 9)) {
            if (D_80165400[var_v0] == 0) {
                D_80165440[var_v0] += 1;
            }
            D_80165400[var_v0] = 1;
        }
        if (D_80165440[var_v0] == 5) {
            D_80165460[var_v0] = 1;
            D_80165480[var_v0] = 0x00000078;
            D_80165440[var_v0] = 0;
            D_80165420[var_v0] = 0;
        }
    } else {
        D_80165480[var_v0]--;
        if (D_80165480[var_v0] <= 0) {
            D_80165460[var_v0] = 0;
        }
    }
}

void func_80030E00(Player *player) {
    s32 var_v0;

    if (player == gPlayerOne) {
        var_v0 = 0;
    }
    if (player == gPlayerTwo) {
        var_v0 = 1;
    }
    if (player == gPlayerThree) {
        var_v0 = 2;
    }
    if (player == gPlayerFour) {
        var_v0 = 3;
    }
    if (player == gPlayerFive) {
        var_v0 = 4;
    }
    if (player == gPlayerSix) {
        var_v0 = 5;
    }
    if (player == gPlayerSeven) {
        var_v0 = 6;
    }
    if (player == gPlayerEight) {
        var_v0 = 7;
    }
    if (D_80165460[var_v0] == 0) {
        if (gPlayerIsThrottleActive[var_v0] == 0) {
            if ((D_80165420[var_v0] < 2) || (D_80165420[var_v0] >= 9)) {
                D_80165440[var_v0] = 0;
            }
            D_80165420[var_v0] = 0;
            D_80165400[var_v0] = 0;
        }
        gPlayerIsThrottleActive[var_v0] = 1;
        D_80165420[var_v0]++;
        if (D_80165420[var_v0] >= 9) {
            D_80165420[var_v0] = 9;
        }
        if ((D_80165420[var_v0] >= 2) && (D_80165420[var_v0] < 9)) {
            if (D_80165400[var_v0] == 0) {
                D_80165440[var_v0] += 1;
            }
            D_80165400[var_v0] = 1;
        }
        if (D_80165440[var_v0] == 5) {
            D_80165460[var_v0] = 1;
            D_80165480[var_v0] = 0x00000078;
            D_80165440[var_v0] = 0;
            D_80165420[var_v0] = 0;
        }
    } else {
        D_80165480[var_v0]--;
        if (D_80165480[var_v0] <= 0) {
            D_80165460[var_v0] = 0;
        }
    }
}

/*
D_80165460 appears to track on a per-player index whether they're doing regular or "fast" accleration
"fast" acceleration is triggered by triple tapping "A" instead of just pressing-and-holding
gKartAccelerationTables may actually be something more like gKartJerkTables, with player->unk_09C being player accleration
gKartTable800E36B0 is some sort of per-character multiplier to the jerk that is only used when triple-tap "A" is used
player->unk_214 is possibly the max-acceleration allowed
No speculation on what player->unk_0C4 could be
*/
void func_80030FC8(Player *player) {
    s32 player_index;

    player_index = get_player_index_for_player(player);
    if (D_80165460[player_index] == 0) {
        if ((0.0                     <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.1))) {
            player->unk_09C += gKartAccelerationTables[player->characterId][0] + (0.05 * (player->unk_0C4 / 182));
        }
        if (((player->unk_214 * 0.1) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.2))) {
            player->unk_09C += gKartAccelerationTables[player->characterId][1] + (0.05 * (player->unk_0C4 / 182));
        }
        if (((player->unk_214 * 0.2) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.3))) {
            player->unk_09C += gKartAccelerationTables[player->characterId][2] + (0.05 * (player->unk_0C4 / 182));
        }
        if (((player->unk_214 * 0.3) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.4))) {
            player->unk_09C += gKartAccelerationTables[player->characterId][3] + (0.05 * (player->unk_0C4 / 182));
        }
        if (((player->unk_214 * 0.4) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.5))) {
            player->unk_09C += gKartAccelerationTables[player->characterId][4] + (0.05 * (player->unk_0C4 / 182));
        }
        if (((player->unk_214 * 0.5) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.6))) {
            player->unk_09C += gKartAccelerationTables[player->characterId][5] + (0.05 * (player->unk_0C4 / 182));
        }
        if (((player->unk_214 * 0.6) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.7))) {
            player->unk_09C += gKartAccelerationTables[player->characterId][6] + (0.05 * (player->unk_0C4 / 182));
        }
        if (((player->unk_214 * 0.7) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.8))) {
            player->unk_09C += gKartAccelerationTables[player->characterId][7] + (0.05 * (player->unk_0C4 / 182));
        }
        if (((player->unk_214 * 0.8) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.9))) {
            player->unk_09C += gKartAccelerationTables[player->characterId][8] + (0.05 * (player->unk_0C4 / 182));
        }
        if (((player->unk_214 * 0.9) <= player->unk_09C) && (player->unk_09C <= (player->unk_214 * 1.0))) {
            player->unk_09C += gKartAccelerationTables[player->characterId][9] + (0.05 * (player->unk_0C4 / 182));
        }
    } else {
        if ((0.0                     <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.1))) {
            player->unk_09C += (gKartAccelerationTables[player->characterId][0] + (0.05 * (player->unk_0C4 / 182))) * gKartTable800E36B0[player->characterId];
        }
        if (((player->unk_214 * 0.1) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.2))) {
            player->unk_09C += (gKartAccelerationTables[player->characterId][1] + (0.05 * (player->unk_0C4 / 182))) * gKartTable800E36B0[player->characterId];
        }
        if (((player->unk_214 * 0.2) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.3))) {
            player->unk_09C += (gKartAccelerationTables[player->characterId][2] + (0.05 * (player->unk_0C4 / 182))) * gKartTable800E36B0[player->characterId];
        }
        if (((player->unk_214 * 0.3) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.4))) {
            player->unk_09C += (gKartAccelerationTables[player->characterId][3] + (0.05 * (player->unk_0C4 / 182))) * gKartTable800E36B0[player->characterId];
        }
        if (((player->unk_214 * 0.4) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.5))) {
            player->unk_09C += (gKartAccelerationTables[player->characterId][4] + (0.05 * (player->unk_0C4 / 182))) * gKartTable800E36B0[player->characterId];
        }
        if (((player->unk_214 * 0.5) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.6))) {
            player->unk_09C += (gKartAccelerationTables[player->characterId][5] + (0.05 * (player->unk_0C4 / 182))) * gKartTable800E36B0[player->characterId];
        }
        if (((player->unk_214 * 0.6) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.7))) {
            player->unk_09C += (gKartAccelerationTables[player->characterId][6] + (0.05 * (player->unk_0C4 / 182))) * gKartTable800E36B0[player->characterId];
        }
        if (((player->unk_214 * 0.7) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.8))) {
            player->unk_09C += (gKartAccelerationTables[player->characterId][7] + (0.05 * (player->unk_0C4 / 182))) * gKartTable800E36B0[player->characterId];
        }
        if (((player->unk_214 * 0.8) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.9))) {
            player->unk_09C += (gKartAccelerationTables[player->characterId][8] + (0.05 * (player->unk_0C4 / 182))) * gKartTable800E36B0[player->characterId];
        }
        if (((player->unk_214 * 0.9) <= player->unk_09C) && (player->unk_09C <= (player->unk_214 * 1.0))) {
            player->unk_09C += (gKartAccelerationTables[player->characterId][9] + (0.05 * (player->unk_0C4 / 182))) * gKartTable800E36B0[player->characterId];
        }
    }
    if (player->unk_09C < 0.0f) {
        player->unk_09C = 0.0f;
    }
    if (player->unk_214 <= player->unk_09C) {
        player->unk_09C = player->unk_214;
    }
    if (((player->unk_0BC & 8) == 0) || ((player->unk_0BC * 2) < 0)) {
        player->unk_08C = (player->unk_09C * player->unk_09C) / 25.0f;
    }
    player->unk_044 |= 0x20;
    if ((player->statusEffects * 8) < 0) {
        func_8008F104(player, player_index);
        player->statusEffects &= 0xEFFFFFFF;
    }
}

void func_80031F48(Player *player, f32 arg1) {
    s32 player_index;
    player_index = get_player_index_for_player(player);

    player->unk_09C -= arg1;
    if (player->unk_09C <= 0.0f) {
        player->unk_09C = 0.0f;
    }
    if (player->unk_094 < 0.2) {
        player->unk_08C = 0.0f;
    }
    if (player->unk_214 <= player->unk_09C) {
        player->unk_09C = player->unk_214;
    }
    if ((player->unk_0BC & 8) != 8) {
        player->unk_08C = (player->unk_09C * player->unk_09C) / 25.0f;
    }
    player->unk_044 &= 0xFFDF;
    if ((player->statusEffects * 8) < 0) {
        func_8008F104(player, player_index);
        player->statusEffects &= 0xEFFFFFFF;
    }
}

void func_80032050(Player *player) {
    s32 var_v0;

    if (player == gPlayerOne) {
        var_v0 = 0;
    }
    if (player == gPlayerTwo) {
        var_v0 = 1;
    }
    if (player == gPlayerThree) {
        var_v0 = 2;
    }
    if (player == gPlayerFour) {
        var_v0 = 3;
    }
    if (player == gPlayerFive) {
        var_v0 = 4;
    }
    if (player == gPlayerSix) {
        var_v0 = 5;
    }
    if (player == gPlayerSeven) {
        var_v0 = 6;
    }
    if (player == gPlayerEight) {
        var_v0 = 7;
    }

    if (D_80165520[var_v0] == 0) {
        if (D_801654A0[var_v0] == 1) {
            if ((D_801654E0[var_v0] < 2) || (D_801654E0[var_v0] >= 9)) {
                D_80165500[var_v0] = 0;
            }
            D_801654E0[var_v0] = 0;
            D_801654C0[var_v0] = 0;
        }
        D_801654A0[var_v0] = 0;
        D_801654E0[var_v0]++;
        if (D_801654E0[var_v0] >= 9) {
            D_801654E0[var_v0] = 9;
        }
        if ((D_801654E0[var_v0] >= 2) && (D_801654E0[var_v0] < 9)) {
            if (D_801654C0[var_v0] == 0) {
                D_80165500[var_v0]++;
            }
            D_801654C0[var_v0] = 1;
        }
        if (D_80165500[var_v0] == 5) {
            D_80165520[var_v0] = 1;
            D_80165540[var_v0] = 0x00000078;
            D_80165500[var_v0] = 0;
            D_801654E0[var_v0] = 0;
        }
    } else {
        D_80165540[var_v0]--;
        if (D_80165540[var_v0] <= 0) {
            D_80165520[var_v0] = 0;
        }
    }
}

void func_8003221C(Player *player) {
    s32 var_v0;

    if (player == gPlayerOne) {
        var_v0 = 0;
    }
    if (player == gPlayerTwo) {
        var_v0 = 1;
    }
    if (player == gPlayerThree) {
        var_v0 = 2;
    }
    if (player == gPlayerFour) {
        var_v0 = 3;
    }
    if (player == gPlayerFive) {
        var_v0 = 4;
    }
    if (player == gPlayerSix) {
        var_v0 = 5;
    }
    if (player == gPlayerSeven) {
        var_v0 = 6;
    }
    if (player == gPlayerEight) {
        var_v0 = 7;
    }

    if (D_80165520[var_v0] == 0) {
        if (D_801654A0[var_v0] == 0) {
            if ((D_801654E0[var_v0] < 2) || (D_801654E0[var_v0] >= 9)) {
                D_80165500[var_v0] = 0;
            }
            D_801654E0[var_v0] = 0;
            D_801654C0[var_v0] = 0;
        }
        D_801654A0[var_v0] = 1;
        D_801654E0[var_v0]++;
        if (D_801654E0[var_v0] >= 9) {
            D_801654E0[var_v0] = 9;
        }
        if ((D_801654E0[var_v0] >= 2) && (D_801654E0[var_v0] < 9)) {
            if (D_801654C0[var_v0] == 0) {
                D_80165500[var_v0]++;
            }
            D_801654C0[var_v0] = 1;
        }
        if (D_80165500[var_v0] == 5) {
            D_80165520[var_v0] = 1;
            D_80165540[var_v0] = 0x00000078;
            D_80165500[var_v0] = 0;
            D_801654E0[var_v0] = 0;
        }
    } else {
        D_80165540[var_v0]--;
        if (D_80165540[var_v0] <= 0) {
            D_80165520[var_v0] = 0;
        }
    }
}

void func_800323E4(Player *player) {
    s32 var_v1;
    f32 test;
    f32 var_f2;

    var_f2 = 0.0f;
    if (player == gPlayerOne) {
        var_v1 = 0;
    }
    if (player == gPlayerTwo) {
        var_v1 = 1;
    }
    if (player == gPlayerThree) {
        var_v1 = 2;
    }
    if (player == gPlayerFour) {
        var_v1 = 3;
    }
    if (player == gPlayerFive) {
        var_v1 = 4;
    }
    if (player == gPlayerSix) {
        var_v1 = 5;
    }
    if (player == gPlayerSeven) {
        var_v1 = 6;
    }
    if (player == gPlayerEight) {
        var_v1 = 7;
    }
    player->unk_0BC |= 1;
    // This check will never be true, why is it here?
    if ((player->unk_0BC & 0x20) == 0x20) {
        func_80031F48(player, 1.0f);
        player->unk_20C = var_f2;
    } else {
        if ((s32) player->boundingBoxCorners[3].surfaceType < 0xF) {
            var_f2 += D_800E3210[player->characterId][player->boundingBoxCorners[3].surfaceType];
        }
        if ((s32) player->boundingBoxCorners[2].surfaceType < 0xF) {
            var_f2 += D_800E3210[player->characterId][player->boundingBoxCorners[2].surfaceType];
        }
        test = player->unk_22C - player->unk_094;
        if (test <= 0.0f) {
            player->unk_20C = 0.0f;
        } else {
            player->unk_20C += 0.02;
            if (player->unk_20C >= 2.0f) {
                player->unk_20C = 2.0f;
            }
        }
        if (D_80165520[var_v1] == 1) {
            if (player->unk_20C >= 2.0f) {
                func_80031F48(player, (1.0f - var_f2) * 5.0f);
            } else {
                func_80031F48(player, (1.0f - var_f2) * 3.0f);
            }
        } else {
            if (((player->unk_094 / 18.0f) * 216.0f) <= 20.0f) {
                func_80031F48(player, (1.0f - var_f2) * 4.0f);
            }
            if (player->unk_20C >= 2.0f) {
                func_80031F48(player, (1.0f - var_f2) * 2.5);
            } else {
                func_80031F48(player, (1.0f - var_f2) * 1.2);
            }
        }
    }
}

void func_80032700(Player *player) {
    s32 temp_v0;
    s32 var_v0;
    s32 test;

    temp_v0 = get_player_index_for_player(player);
    if ((player->unk_09C >= 0.0) && (player->unk_09C < (player->unk_214 * 0.1))) {
        player->unk_09C += gKartAccelerationTables[player->characterId][0] * 3.0;
    }
    if (((player->unk_214 * 0.1) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.2))) {
        player->unk_09C += gKartAccelerationTables[player->characterId][1] * 3.0;
    }
    if (((player->unk_214 * 0.2) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.3))) {
        player->unk_09C += gKartAccelerationTables[player->characterId][2] * 3.0;
    }
    if (((player->unk_214 * 0.3) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.4))) {
        player->unk_09C += gKartAccelerationTables[player->characterId][3] * 3.0;
    }
    if (((player->unk_214 * 0.4) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.5))) {
        player->unk_09C += gKartAccelerationTables[player->characterId][4] * 3.0;
    }
    if (((player->unk_214 * 0.5) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.6))) {
        player->unk_09C += gKartAccelerationTables[player->characterId][5] * 3.0;
    }
    if (((player->unk_214 * 0.6) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.7))) {
        player->unk_09C += gKartAccelerationTables[player->characterId][6] * 2.5;
    }
    if (((player->unk_214 * 0.7) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.8))) {
        player->unk_09C += gKartAccelerationTables[player->characterId][7] * 2.5;
    }
    if (((player->unk_214 * 0.8) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.9))) {
        player->unk_09C += gKartAccelerationTables[player->characterId][8] * 2.5;
    }
    if (((player->unk_214 * 0.9) <= player->unk_09C) && (player->unk_09C <= player->unk_214 * 1.0)) {
        player->unk_09C += gKartAccelerationTables[player->characterId][9] * 2.5;
    }
    if (D_801656F0 == 1) {
        test = gRaceFrameCounter - D_801652E0[temp_v0];
        if (gModeSelection == (s32) 1) {
            var_v0 = 0x14;
        } else {
            var_v0 = 8;
        }
        if ((test < var_v0) && ((player->unk_044 & 0x20) != 0x20)) {
            player->statusEffects |= 0x02000000;
        } else if ((player->unk_214 * 0.9f) <= player->unk_09C) {
            if ((player->statusEffects & 0x02000000) != 0x02000000) {
                player->statusEffects |= 0x10000000;
                player->statusEffects &= ~0x02000000;
            }
        }
    }
    player->unk_044 |= 0x20;
    player->unk_098 = (player->unk_09C * player->unk_09C) / 25.0f;
}

void func_80032CB0(Player *player, f32 arg1) {
    player->unk_09C -= arg1;
    if (player->unk_09C <= 0.0f) {
        player->unk_09C = 0.0f;
    }
    if (player->unk_094 < 0.2) {
        player->unk_08C = 0.0f;
    }
    if (player->unk_214 <= player->unk_09C) {
        player->unk_09C = player->unk_214;
    }
    if ((f64) player->unk_09C <= (player->unk_214 * 0.7)) {
        player->statusEffects &= ~0x10000000;
    }
    player->statusEffects &= ~0x02000000;
    player->unk_044 &= ~0x0020;
    player->unk_098 = (player->unk_09C * player->unk_09C) / 25.0f;
}

void func_80032D94(Player *player) {
    UNUSED s32 player_index;

    player_index = get_player_index_for_player(player);
    if ((0.0                     <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.1))) {
        player->unk_09C += gKartAccelerationTables[player->characterId][0] * 3.2;
    }
    if (((player->unk_214 * 0.1) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.2))) {
        player->unk_09C += gKartAccelerationTables[player->characterId][1] * 3.2;
    }
    if (((player->unk_214 * 0.2) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.3))) {
        player->unk_09C += gKartAccelerationTables[player->characterId][2] * 3.2;
    }
    if (((player->unk_214 * 0.3) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.4))) {
        player->unk_09C += gKartAccelerationTables[player->characterId][3] * 3.2;
    }
    if (((player->unk_214 * 0.4) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.5))) {
        player->unk_09C += gKartAccelerationTables[player->characterId][4] * 3.2;
    }
    if (((player->unk_214 * 0.5) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.6))) {
        player->unk_09C += gKartAccelerationTables[player->characterId][5] * 3.2;
    }
    if (((player->unk_214 * 0.6) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.7))) {
        player->unk_09C += gKartAccelerationTables[player->characterId][6] * 3.2;
    }
    if (((player->unk_214 * 0.7) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.8))) {
        player->unk_09C += gKartAccelerationTables[player->characterId][7] * 2.8;
    }
    if (((player->unk_214 * 0.8) <= player->unk_09C) && (player->unk_09C < (player->unk_214 * 0.9))) {
        player->unk_09C += gKartAccelerationTables[player->characterId][8] * 2.8;
    }
    if (((player->unk_214 * 0.9) <= player->unk_09C) && (player->unk_09C <= (player->unk_214 * 1.0))) {
        player->unk_09C += gKartAccelerationTables[player->characterId][9] * 2.8;
    }
    if (player->unk_09C < 0.0f) {
        player->unk_09C = 0.0f;
    }
    player->unk_098 = (player->unk_09C * player->unk_09C) / 25.0f;
}

void func_80033280(Player *player, f32 arg1) {
    player->unk_09C -= arg1;
    if (player->unk_09C <= 0.0f) {
        player->unk_09C = 0.0f;
    }
    if (player->unk_214 <= player->unk_09C) {
        player->unk_09C = player->unk_214;
    }
    player->unk_098 = (player->unk_09C * player->unk_09C) / 25.0f;
}

void func_800332E8(Player *player, s32 arg1) {
    if ((D_80165280[arg1] >= 0.0) && (D_80165280[arg1] < ((f64) player->unk_214 * 0.1))) {
        D_80165280[arg1] += gKartAccelerationTables[player->characterId][0] * 3.2;
    }
    if (((player->unk_214 * 0.1) <= D_80165280[arg1]) && (D_80165280[arg1] < (player->unk_214 * 0.2))) {
        D_80165280[arg1] += gKartAccelerationTables[player->characterId][1] * 3.2;
    }
    if (((player->unk_214 * 0.2) <= D_80165280[arg1]) && (D_80165280[arg1] < (player->unk_214 * 0.3))) {
        D_80165280[arg1] += gKartAccelerationTables[player->characterId][2] * 3.2;
    }
    if (((player->unk_214 * 0.3) <= D_80165280[arg1]) && (D_80165280[arg1] < (player->unk_214 * 0.4))) {
        D_80165280[arg1] += gKartAccelerationTables[player->characterId][3] * 3.2;
    }
    if (((player->unk_214 * 0.4) <= D_80165280[arg1]) && (D_80165280[arg1] < (player->unk_214 * 0.5))) {
        D_80165280[arg1] += gKartAccelerationTables[player->characterId][4] * 3.2;
    }
    if (((player->unk_214 * 0.5) <= D_80165280[arg1]) && (D_80165280[arg1] < (player->unk_214 * 0.6))) {
        D_80165280[arg1] += gKartAccelerationTables[player->characterId][5] * 3.2;
    }
    if (((player->unk_214 * 0.6) <= D_80165280[arg1]) && (D_80165280[arg1] < (player->unk_214 * 0.7))) {
        D_80165280[arg1] += gKartAccelerationTables[player->characterId][6] * 3.2;
    }
    if (((player->unk_214 * 0.7) <= D_80165280[arg1]) && (D_80165280[arg1] < (player->unk_214 * 0.8))) {
        D_80165280[arg1] += gKartAccelerationTables[player->characterId][7] * 2.8;
    }
    if (((player->unk_214 * 0.8) <= D_80165280[arg1]) && (D_80165280[arg1] < (player->unk_214 * 0.9))) {
        D_80165280[arg1] += gKartAccelerationTables[player->characterId][8] * 2.8;
    }
    if (((player->unk_214 * 0.9) <= D_80165280[arg1]) && (D_80165280[arg1] <= (player->unk_214 * 1.0))) {
        D_80165280[arg1] += gKartAccelerationTables[player->characterId][9] * 2.8;
    }
    player->unk_044 |= 0x20;
    if (D_80165280[arg1] < 0.0f) {
        D_80165280[arg1] = 0.0f;
    }
    player->unk_098 = (D_80165280[arg1] * D_80165280[arg1]) / 25.0f;
}

void func_800337CC(Player *player, f32 arg1, s32 arg2) {
    player->unk_044 &= ~0x20;
    D_80165280[arg2] -= arg1;
    if (D_80165280[arg2] <= 0.0f) {
        D_80165280[arg2] = 0.0f;
    }
    if (player->unk_214 <= D_80165280[arg2]) {
        D_80165280[arg2] = player->unk_214;
    }
    player->unk_098 = (D_80165280[arg2] * D_80165280[arg2]) / 25.0f;
}

void func_80033850(Player *arg0, f32 arg1) {
    arg0->unk_090 += arg1;
    if (arg0->unk_090 >= 0.0f) {
        arg0->unk_090 = 0.0f;
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
void func_80033884(Player *player, s32 *arg1, s32 *arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1;
    u32 temp_t8;
    u32 var_v1;

    temp_v0 = *arg1;
    if ((temp_v0 >= arg4) || (-arg4 >= temp_v0)) {
        temp_v1 = player->unk_200;
        temp_t8 = temp_v1 - 0x800;
        player->unk_200 = (s32) temp_t8;
        var_v1 = temp_t8;
        if (temp_t8 >= 0xF0000000U) {
            player->unk_200 = temp_v1;
            var_v1 = (u32) temp_v1;
        }
        if (arg5 >= (s32) var_v1) {
            player->unk_200 = arg5;
            var_v1 = (u32) arg5;
        }
        temp_v0_2 = *arg2;
        if (arg3 < temp_v0_2) {
            *arg2 = temp_v0_2 - var_v1;
        } else {
            *arg2 = temp_v0_2 + var_v1;
        }
        if (player->unk_090 < (f32) arg6) {
            player->unk_090 = (f32) -arg6;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_80033884.s")
#endif

#if MIPS_TO_C
UNUSED void func_80033940(void *arg0, s32 *arg1, s32 arg2, s32 arg3, f32 arg4) {
    s32 temp_at;
    s32 temp_v0_2;
    u32 temp_t6;
    u32 temp_v0;
    u32 temp_v1;
    u32 var_v1;

    temp_v1 = arg0->unk200;
    temp_t6 = temp_v1 - 0x800;
    temp_at = temp_t6 < 0xF0000000U;
    temp_v0 = temp_v1;
    arg0->unk200 = temp_t6;
    var_v1 = temp_t6;
    if (temp_at == 0) {
        arg0->unk200 = temp_v0;
        var_v1 = temp_v0;
    }
    if (arg3 >= (s32) var_v1) {
        arg0->unk200 = (u32) arg3;
        var_v1 = (u32) arg3;
    }
    temp_v0_2 = *arg1;
    if (arg2 < temp_v0_2) {
        *arg1 = temp_v0_2 - var_v1;
    } else {
        *arg1 = temp_v0_2 + var_v1;
    }
    if (arg0->unk90 < arg4) {
        arg0->unk90 = (f32) -arg4;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_80033940.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
void func_800339C4(Player *player, s32 *arg1, s32 arg2, s32 arg3, f32 arg4) {
    s32 temp_v0;
    s32 temp_v1;
    u32 temp_t6;
    u32 var_v0;

    temp_v0 = player->unk_200;
    temp_t6 = temp_v0 - 0x800;
    player->unk_200 = (s32) temp_t6;
    var_v0 = temp_t6;
    if (temp_t6 >= 0xF0000000U) {
        player->unk_200 = temp_v0;
        var_v0 = (u32) temp_v0;
    }
    if (arg3 >= (s32) var_v0) {
        player->unk_200 = arg3;
        var_v0 = (u32) arg3;
    }
    temp_v1 = *arg1;
    if (arg2 < temp_v1) {
        *arg1 = temp_v1 - var_v0;
    } else {
        *arg1 = temp_v1 + var_v0;
    }
    func_80033850(player, arg4);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_800339C4.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
void func_80033A40(Player *player, s32 *arg1, s32 *arg2, s32 arg3, s32 arg4, s32 arg5, f32 arg6) {
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1;
    u32 temp_t8;
    u32 var_v0;

    temp_v0 = *arg1;
    if ((temp_v0 >= arg4) || (-arg4 >= temp_v0)) {
        temp_v0_2 = player->unk_200;
        temp_t8 = temp_v0_2 - 0x800;
        player->unk_200 = (s32) temp_t8;
        var_v0 = temp_t8;
        if (temp_t8 >= 0xF0000000U) {
            player->unk_200 = temp_v0_2;
            var_v0 = (u32) temp_v0_2;
        }
        if (arg5 >= (s32) var_v0) {
            player->unk_200 = arg5;
            var_v0 = (u32) arg5;
        }
        temp_v1 = *arg2;
        if (arg3 < temp_v1) {
            *arg2 = temp_v1 - var_v0;
        } else {
            *arg2 = temp_v1 + var_v0;
        }
        func_80033850(player, arg6);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_80033A40.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 0927f17aac197848d4ebdf0c6bbad74b01f0851c
? func_80033884(Player *, s32 *, s32 *, s32, s32, s32, s32); /* extern */
? func_80033A40(Player *, s32 *, s32 *, s32, s32, s32, f32); /* extern */
f32 D_800E3DF8[0x9C] = {
    0.0f,
    0.5f,
    0.5f,
    0.5f,
    0.5f,
    0.5f,
    0.5f,
    0.6f,
    0.6f,
    0.6f,
    0.6f,
    0.6f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.6f,
    0.6f,
    0.6f,
    0.6f,
    0.6f,
    0.6f,
    0.6f,
    0.6f,
    0.6f,
    0.6f,
    0.6f,
    0.6f,
    0.5f,
    0.5f,
    0.5f,
    0.5f,
    0.6f,
    0.6f,
    0.6f,
    0.6f,
    0.6f,
    0.6f,
    0.6f,
    0.6f,
    0.6f,
    0.6f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.6f,
    0.6f,
    0.6f,
    0.6f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.7f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
    0.8f,
};

void func_80033AE0(Player *player, struct Controller *controller, s8 arg2) {
    s32 sp2E4;
    s32 sp2E0;
    s32 sp2D0;
    s32 sp2CC;
    s32 sp2C8;
    f32 sp2C4;
    f32 sp2C0;
    f32 sp2BC;
    ? sp44;
    s32 sp40;
    s32 sp3C;
    s32 sp38;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f0_3;
    f32 var_f12;
    f32 var_f2;
    f32 var_f2_2;
    f32 var_f2_3;
    s16 temp_v0_3;
    s16 temp_v1_3;
    s16 temp_v1_6;
    s16 var_s1_2;
    s16 var_s1_3;
    s16 var_t1;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 temp_f6;
    s32 temp_f8;
    s32 temp_lo;
    s32 temp_lo_10;
    s32 temp_lo_11;
    s32 temp_lo_12;
    s32 temp_lo_13;
    s32 temp_lo_14;
    s32 temp_lo_15;
    s32 temp_lo_16;
    s32 temp_lo_17;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_lo_4;
    s32 temp_lo_5;
    s32 temp_lo_6;
    s32 temp_lo_7;
    s32 temp_lo_8;
    s32 temp_lo_9;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t3_2;
    s32 temp_t4;
    s32 temp_t5;
    s32 temp_t5_2;
    s32 temp_t7;
    s32 temp_t9;
    s32 temp_v0_10;
    s32 temp_v0_7;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 temp_v1_7;
    s32 temp_v1_8;
    s32 var_a0;
    s32 var_s1;
    s32 var_t0;
    s32 var_t4;
    s32 var_v1;
    u16 temp_v0_6;
    u16 temp_v1_9;
    u8 temp_v0_4;
    u8 temp_v0_5;
    u8 temp_v0_8;
    u8 temp_v0_9;

    sp2C0 = 0.0f;
    M2C_MEMCPY_ALIGNED(&sp44, D_800E3DF8, 0x270);
    temp_v1 = player->unk_0BC;
    if ((((temp_v1 & 2) != 2) && (((temp_lo = (s16) player->unk_0C0 / 182, ((temp_lo < 7) != 0)) && (temp_lo >= -6)) || ((controller->button & 0x10) != 0x10))) || (((player->unk_094 / 18.0f) * 216.0f) <= 20.0f) || ((temp_v1 & 0x8000) == 0x8000)) {
        sp2BC = 0.0f;
        func_80036CB4(player);
    }
    temp_lo_2 = (s16) player->unk_0C0 / 182;
    if (temp_lo_2 < -5) {
        player->unk_044 |= 4;
        player->unk_044 &= 0xFFFD;
        temp_v0 = &D_801652C0[arg2];
        var_s1 = arg2 * 4;
        *temp_v0 += 1;
    } else if (temp_lo_2 >= 6) {
        player->unk_044 |= 2;
        player->unk_044 &= 0xFFFB;
        temp_v0_2 = &D_801652C0[arg2];
        var_s1 = arg2 * 4;
        *temp_v0_2 += 1;
    } else {
        player->unk_044 &= 0xFFF9;
        D_801652C0[arg2] = 0;
        var_s1 = arg2 * 4;
    }
    temp_v1_2 = player->unk_0BC;
    if (((temp_v1_2 & 2) == 2) || ((temp_v1_2 & 0x10) == 0x10)) {
        player->unk_044 &= 0xFFF9;
    }
    sp2BC = 0.0f;
    sp2E4 = player->unk_07C;
    temp_v0_3 = func_80038534(controller);
    temp_v1_3 = player->unk_044;
    var_f2 = 0.0f;
    var_t1 = temp_v0_3;
    if (((temp_v1_3 & 1) == 1) || ((temp_v1_3 & 8) == 8)) {
        var_t1 = -temp_v0_3;
    }
    temp_t3 = (var_t1 << 0x10) & 0xFFFF0000;
    player->unk_07C = temp_t3;
    temp_t5 = sp2E4 - temp_t3;
    sp2D0 = temp_t5;
    temp_t9 = temp_t5 >> 0x10;
    sp2D0 = temp_t9;
    player->unk_0FA = (s16) temp_t9;
    if (((sp2D0 >= 0x5A) || (sp2D0 < -0x59)) && !(player->unk_044 & 0x4000)) {
        temp_v1_4 = player->unk_0BC;
        if (!(temp_v1_4 & 0x10) && (gCCSelection == 2) && (gModeSelection != 3) && !(temp_v1_4 & 8) && (((player->unk_094 / 18.0f) * 216.0f) >= 40.0f) && (player->unk_204 == 0)) {
            player->statusEffects |= 0x80;
        }
    }
    temp_v0_4 = player->boundingBoxCorners[3].surfaceType;
    temp_v1_5 = player->unk_0BC;
    if ((s32) temp_v0_4 < 0xF) {
        var_f2 = 0.0f + D_800E3610[player->characterId][temp_v0_4];
    }
    temp_v0_5 = player->boundingBoxCorners[2].surfaceType;
    if ((s32) temp_v0_5 < 0xF) {
        var_f2 += D_800E3610[player->characterId][temp_v0_5];
    }
    if ((temp_v1_5 & 0x20) == 0x20) {
        var_v1 = 0x0000000A;
        var_t0 = 0x0000000A;
    } else {
        var_a0 = 0;
        var_t0 = 8;
        if (((temp_v1_5 & 0x10) == 0x10) && ((temp_v1_5 & 2) != 2)) {
            var_a0 = 3;
        }
        var_v1 = 8;
        if (((player->unk_094 / 18.0f) * 216.0f) >= 15.0f) {
            temp_v1_6 = player->unk_044;
            if ((temp_v1_6 & 2) == 2) {
                if ((sp2D0 < 0x24) && (sp2D0 >= 0)) {
                    temp_f8 = (s32) ((gKartTable800E3650[player->characterId] + 1.0f) * ((f32) (var_a0 + 0xF) * (1.0f + var_f2)));
                    sp2C8 = temp_f8;
                    sp2CC = temp_f8;
                } else {
                    temp_f0 = 1.0f + var_f2;
                    sp2C8 = (s32) ((f32) (var_a0 + 5) * temp_f0);
                    sp2CC = (s32) ((f32) (var_a0 + 9) * temp_f0);
                }
            } else if ((temp_v1_6 & 4) == 4) {
                if ((sp2D0 >= -0x23) && (sp2D0 <= 0)) {
                    temp_f6 = (s32) ((gKartTable800E3650[player->characterId] + 1.0f) * ((f32) (var_a0 + 0xF) * (1.0f + var_f2)));
                    sp2C8 = temp_f6;
                    sp2CC = temp_f6;
                } else {
                    temp_f0_2 = 1.0f + var_f2;
                    sp2C8 = (s32) ((f32) (var_a0 + 5) * temp_f0_2);
                    sp2CC = (s32) ((f32) (var_a0 + 9) * temp_f0_2);
                }
            } else {
                temp_f0_3 = 1.0f + var_f2;
                sp2C8 = (s32) ((f32) (var_a0 + 3) * temp_f0_3);
                sp2CC = (s32) ((f32) (var_a0 + 6) * temp_f0_3);
            }
            var_t0 = sp2CC;
            var_v1 = sp2C8;
        } else {
            sp2C8 = 8;
            sp2CC = 8;
        }
    }
    temp_v0_6 = player->unk_0DE;
    if ((temp_v0_6 & 1) == 1) {
        var_v1 = (s32) ((f64) var_v1 * 1.5);
        var_t0 = (s32) ((f64) var_t0 * 1.5);
    } else {
        if ((temp_v0_6 & 2) == 2) {
            var_v1 = (s32) ((f64) var_v1 * 1.2);
            var_t0 = (s32) ((f64) var_t0 * 1.2);
        }
        temp_f0_4 = *(D_801652A0 + var_s1);
        if (((f64) (temp_f0_4 - player->boundingBoxCorners[2].cornerGroundY) >= 3.5) || ((f64) (temp_f0_4 - player->boundingBoxCorners[3].cornerGroundY) >= 3.5)) {
            var_v1 = (s32) ((f64) var_v1 * 1.05);
            var_t0 = (s32) ((f64) var_t0 * 1.05);
        }
    }
    sp2E0 = (s32) var_t1;
    sp2CC = var_t0;
    sp2C8 = var_v1;
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000005A, 0x78000 / var_v1, 0x000001C2);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000059, 0x76000 / sp2C8, 0x000001B8);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000058, 0x74000 / sp2C8, 0x000001AE);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000057, 0x72000 / sp2C8, 0x000001A4);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000056, 0x70000 / sp2C8, 0x0000019A);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000055, 0x58000 / sp2C8, 0x00000190);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000054, 0x56000 / sp2C8, 0x0000018B);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000053, 0x50000 / sp2C8, 0x00000186);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000052, 0x4F000 / sp2C8, 0x00000186);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000051, 0x4E000 / sp2C8, 0x0000017C);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000050, 0x4D000 / sp2C8, 0x00000172);
    temp_lo_3 = 0x4C000 / sp2C8;
    sp40 = temp_lo_3;
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000004F, temp_lo_3, 0x00000168);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000004E, sp40, 0x00000168);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000004D, 0x4B000 / sp2C8, 0x0000015E);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000004C, 0x4A000 / sp2C8, 0x00000154);
    temp_lo_4 = 0x49000 / sp2C8;
    sp40 = temp_lo_4;
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000004B, temp_lo_4, 0x0000014A);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000004A, sp40, 0x0000014A);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000049, sp40, 0x0000014A);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000048, 0x48000 / sp2C8, 0x00000140);
    temp_lo_5 = 0x47000 / sp2C8;
    sp40 = temp_lo_5;
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000047, temp_lo_5, 0x0000013B);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000046, sp40, 0x0000013B);
    temp_lo_6 = 0x46000 / sp2C8;
    sp40 = temp_lo_6;
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000045, temp_lo_6, 0x00000131);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000044, sp40, 0x00000131);
    temp_lo_7 = 0x45000 / sp2C8;
    sp3C = temp_lo_7;
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000043, temp_lo_7, 0x00000118);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000042, sp40, 0x0000010E);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000041, sp3C, 0x0000010E);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000040, 0x44000 / sp2C8, 0x00000104);
    temp_lo_8 = 0x43000 / sp2C8;
    sp40 = temp_lo_8;
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000003F, temp_lo_8, 0x000000FA);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000003E, sp40, 0x000000FA);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000003D, sp40, 0x000000FA);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000003C, 0x3D000 / sp2C8, 0x000000F5);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000003B, 0x3C000 / sp2C8, 0x000000F5);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000003A, 0x3B000 / sp2C8, 0x000000F5);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000039, 0x3A000 / sp2C8, 0x000000F5);
    temp_lo_9 = 0x38000 / sp2C8;
    sp40 = temp_lo_9;
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000038, temp_lo_9, 0x000000F5);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000037, sp40, 0x000000E6);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000036, sp40, 0x000000E6);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000035, sp40, 0x000000E6);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000034, sp40, 0x000000E6);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000033, sp40, 0x000000E6);
    temp_lo_10 = 0x32000 / sp2C8;
    sp40 = temp_lo_10;
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000032, temp_lo_10, 0x000000DC);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000031, sp40, 0x000000DC);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000030, sp40, 0x000000DC);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000002F, sp40, 0x000000DC);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000002E, sp40, 0x000000DC);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000002D, 0x30000 / sp2C8, 0x0000006E);
    temp_lo_11 = 0x2E000 / sp2C8;
    sp40 = temp_lo_11;
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000002C, temp_lo_11, 0x0000006E);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000002B, sp40, 0x0000006E);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000002A, sp40, 0x0000006E);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000029, sp40, 0x0000006E);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000028, sp40, 0x0000006E);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000027, 0x2C000 / sp2C8, 0x0000006E);
    temp_lo_12 = 0x28000 / sp2C8;
    sp40 = temp_lo_12;
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000026, temp_lo_12, 0x0000006E);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000025, sp40, 0x0000006E);
    temp_lo_13 = 0x24000 / sp2C8;
    sp40 = temp_lo_13;
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000024, temp_lo_13, 0x0000006E);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000023, sp40, 0x0000006E);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000022, 0x22000 / sp2C8, 0x0000006E);
    temp_lo_14 = 0x20000 / sp2C8;
    sp40 = temp_lo_14;
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000020, temp_lo_14, 0x00000064);
    func_80033884(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000001F, sp40, 0x00000064);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000001E, 0x1F000 / sp2CC, 0.9f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000001D, 0x1E000 / sp2CC, 0.9f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000001C, 0x1D000 / sp2CC, 0.9f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000001B, 0x1C000 / sp2CC, 0.9f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000001A, 0x1B000 / sp2CC, 0.9f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000019, 0x1A000 / sp2CC, 1.0f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000018, 0x19000 / sp2CC, 1.0f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000017, 0x18000 / sp2CC, 1.0f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000016, 0x17000 / sp2CC, 1.0f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000015, 0x16000 / sp2CC, 1.0f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000014, 0x15000 / sp2CC, 1.05f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000013, 0x14000 / sp2CC, 1.05f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000012, 0x13000 / sp2CC, 1.05f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000011, 0x12000 / sp2CC, 1.05f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 0x00000010, 0x11000 / sp2CC, 1.05f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000000F, 0x10000 / sp2CC, 1.2f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000000E, 0xF000 / sp2CC, 1.2f);
    temp_lo_15 = 0xE000 / sp2CC;
    sp40 = temp_lo_15;
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000000D, temp_lo_15, 1.2f);
    temp_lo_16 = 0xD000 / sp2CC;
    sp3C = temp_lo_16;
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000000C, temp_lo_16, 1.2f);
    temp_lo_17 = 0xC000 / sp2CC;
    sp38 = temp_lo_17;
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000000B, temp_lo_17, 1.2f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 0x0000000A, sp40, 1.6f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 9, sp3C, 1.6f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 8, sp38, 1.6f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 7, 0xB000 / sp2CC, 1.6f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 6, 0xA000 / sp2CC, 1.6f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 5, 0x9000 / sp2CC, 1.9f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 4, 0x8000 / sp2CC, 1.9f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 3, 0x7000 / sp2CC, 1.9f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 2, 0x6000 / sp2CC, 1.9f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 1, 0x5000 / sp2CC, 1.9f);
    func_80033A40(player, &sp2D0, &sp2E4, player->unk_07C, 0, 0 / sp2CC, 1.9f);
    temp_v1_7 = player->unk_0BC;
    temp_v0_7 = temp_v1_7 & 0x10;
    if (temp_v0_7 == 0x10) {
        var_f2_2 = (f32) ((s32) (sp2E4 >> 0x10) / 8);
        var_f0 = (player->unk_094 / 18.0f) * 216.0f;
    } else {
        var_f0 = (player->unk_094 / 18.0f) * 216.0f;
        if (var_f0 <= 25.0f) {
            var_f2_2 = (f32) ((s32) (sp2E4 >> 0x10) / 12);
        } else {
            var_f2_2 = (f32) (sp2E4 >> 0x10) / (8.0f + (player->unk_09C / 50.0f));
        }
    }
    if (var_f2_2 < 0.0f) {
        var_f2_2 = -var_f2_2;
    }
    if ((temp_v1_7 & 0x20) == 0x20) {
        var_f2_3 = (sp + ((s16) (s32) var_f0 * 4))->unk6C * 1.5f * var_f2_2;
    } else if (temp_v0_7 == 0x10) {
        var_f2_3 = (sp + ((s16) (s32) var_f0 * 4))->unk44 * var_f2_2;
    } else {
        var_f2_3 = (sp + ((s16) (s32) var_f0 * 4))->unk44 * 1.5f * var_f2_2;
    }
    player->unk_07C = sp2E4;
    if (player->unk_10C != 0) {
        sp2C4 = var_f2_3;
        func_8002BD58(player);
    }
    temp_v0_8 = player->boundingBoxCorners[3].surfaceType;
    player->unk_0BC &= 0xDFFFFFFF;
    if ((s32) temp_v0_8 >= 0xF) {
        var_f12 = sp2C0;
    } else {
        var_f12 = 0.0f + D_800E3410[player->characterId][temp_v0_8];
    }
    temp_v0_9 = player->boundingBoxCorners[2].surfaceType;
    if ((s32) temp_v0_9 < 0xF) {
        var_f12 += D_800E3410[player->characterId][temp_v0_9];
    }
    temp_v1_8 = player->unk_0BC;
    temp_v0_10 = temp_v1_8 & 2;
    if ((temp_v0_10 != 2) && ((temp_v1_8 & 0x10) != 0x10)) {
        if ((temp_v1_8 & 0x20) == 0x20) {
            player->unk_078 = (s16) (s32) ((f32) (((s32) player->unk_07C >> 0x10) * 5) * var_f2_3);
        } else {
            if ((temp_v1_8 & 1) != 1) {
                temp_v1_9 = player->characterId;
                temp_t3_2 = (s32) player->unk_07C >> 0x10;
                if ((temp_t3_2 >= 0x2D) || (temp_t3_2 < -0x2C)) {
                    player->unk_078 = (s16) (s32) (((f64) gKartHandlingTable[temp_v1_9] + 0.15) * (f64) ((f32) temp_t3_2 * (var_f2_3 + (var_f2_3 * var_f12))));
                } else {
                    player->unk_078 = (s16) (s32) (gKartHandlingTable[temp_v1_9] * ((f32) temp_t3_2 * (var_f2_3 + (var_f2_3 * var_f12))));
                }
            } else {
                var_f0_2 = (player->unk_094 / 18.0f) * 216.0f;
                if ((var_f0_2 >= 0.0f) && (var_f0_2 < 8.0f)) {
                    player->unk_078 = (s16) (s32) ((f32) ((s32) player->unk_07C >> 0x10) * (var_f2_3 + (var_f2_3 * var_f12)));
                    var_f0_2 = (player->unk_094 / 18.0f) * 216.0f;
                }
                if ((var_f0_2 >= 8.0f) && (var_f0_2 < 65.0f)) {
                    player->unk_078 = (s16) (s32) ((f64) ((s32) player->unk_07C >> 0x10) * ((f64) var_f2_3 + 1.5 + (f64) (var_f2_3 * var_f12)));
                    var_f0_2 = (player->unk_094 / 18.0f) * 216.0f;
                }
                if (var_f0_2 >= 65.0f) {
                    player->unk_078 = (s16) (s32) ((f64) ((s32) player->unk_07C >> 0x10) * ((f64) var_f2_3 + 1.6 + (f64) (var_f2_3 * var_f12)));
                }
            }
            player->unk_228 = 0;
            if (player->unk_22A < 2) {
                player->unk_22A = 0;
            }
        }
    } else if (((temp_v1_8 & 8) != 8) && (temp_v0_10 != 2)) {
        if (((s16) player->unk_0C0 / 182) > 0) {
            temp_t5_2 = (s32) player->unk_07C >> 0x10;
            var_s1_2 = ((s32) ((temp_t5_2 * 0xD) + 0x2B1) / 106) + 0x28;
            if (temp_t5_2 < -0x27) {
                temp_t2 = temp_v1_8 | 0x20000000;
                player->unk_0BC = temp_t2;
                if (temp_t5_2 < -0x31) {
                    player->unk_0BC = temp_t2 | 0x20000000;
                }
            }
            sp2C4 = var_f2_3;
            sp2C0 = var_f12;
            func_8002A8A4(player, arg2);
        } else {
            temp_t7 = (s32) player->unk_07C >> 0x10;
            var_s1_2 = ((s32) ((temp_t7 * 0xD) + 0x2B1) / 106) - 0x35;
            if (temp_t7 >= 0x28) {
                temp_t4 = temp_v1_8 | 0x20000000;
                player->unk_0BC = temp_t4;
                if (temp_t7 < -0x31) {
                    player->unk_0BC = temp_t4 | 0x20000000;
                }
            }
            sp2C4 = var_f2_3;
            sp2C0 = var_f12;
            func_8002A8A4(player, arg2);
        }
        var_f0_3 = (player->unk_094 / 18.0f) * 216.0f;
        if ((var_f0_3 >= 0.0f) && (var_f0_3 < 8.0f)) {
            player->unk_078 = (s16) (s32) ((f32) var_s1_2 * (sp2C4 + 2.0f + (sp2C4 * sp2C0)));
            var_f0_3 = (player->unk_094 / 18.0f) * 216.0f;
        }
        if ((var_f0_3 >= 8.0f) && (var_f0_3 < 65.0f)) {
            player->unk_078 = (s16) (s32) ((f32) var_s1_2 * (sp2C4 + 3.0f + (sp2C4 * sp2C0)));
            var_f0_3 = (player->unk_094 / 18.0f) * 216.0f;
        }
        if (var_f0_3 >= 65.0f) {
            player->unk_078 = (s16) (s32) ((f64) var_s1_2 * ((f64) sp2C4 + 3.5 + (f64) (sp2C4 * sp2C0)));
        }
        if ((player->unk_0BC & 0x20000000) == 0x20000000) {
            player->unk_078 = (s16) (s32) ((f64) player->unk_078 * 0.9);
        } else {
            var_t4 = (s32) ((f64) player->unk_078 * 0.65);
            goto block_123;
        }
    } else {
        var_s1_3 = (s16) ((s32) player->unk_07C >> 0x10);
        if (sp2E0 == 0) {
            var_s1_3 = 0;
        }
        if (((player->unk_094 / 18.0f) * 216.0f) <= 5.0f) {
            player->unk_078 = (s16) (s32) ((f32) var_s1_3 * (var_f2_3 + 6.0f));
        } else {
            var_t4 = (s32) ((f32) var_s1_3 * (var_f2_3 + 1.5f));
block_123:
            player->unk_078 = (s16) var_t4;
        }
    }
    if (gModeSelection == 3) {
        player->unk_078 = (s16) (s32) ((f64) player->unk_078 * 1.7);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_80033AE0.s")
#endif

void func_8003680C(Player *player, s16 arg1) {
    s32 sp304 = 0;
    f32 stackPadding0[6];
    f32 var_f0;
    s16 var_v0;
    f32 sp44[168] = {
        0.0f, 0.1f, 0.1f, 0.2f, 0.3f, 0.4f, 0.5f, 0.6f,
        0.6f, 0.6f, 0.6f, 0.6f, 0.7f, 0.7f, 0.7f, 0.7f,
        0.7f, 0.7f, 0.7f, 0.6f, 0.5f, 0.4f, 0.4f, 0.4f,
        0.4f, 0.4f, 0.4f, 0.4f, 0.4f, 0.4f, 0.4f, 0.4f,
        0.4f, 0.4f, 0.4f, 0.4f, 0.5f, 0.5f, 0.5f, 0.5f,
        0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f,
        0.6f, 0.6f, 0.7f, 0.7f, 0.7f, 0.7f, 0.7f, 0.7f,
        0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f,
        0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f,
        0.8f, 0.8f, 0.8f, 0.8f, 0.8f, 0.8f, 0.8f, 0.8f,
        0.8f, 0.8f, 0.8f, 0.8f, 0.6f, 0.6f, 0.6f, 0.6f,
        0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f,
        0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f,
        0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f,
        0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f,
        0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f,
        0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f,
        0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f,
        0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f,
        0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f,
        0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f,
    };
    f32 sp24[8] = {
        3.0f, 3.0f, 3.0f, 3.0f, 3.0f, 3.0f, 3.0f, 3.0f,
    };

    if (!((player->unk_0BC & 0x80) ||
          (player->unk_0BC & 0x40) ||
          (player->unk_0BC & 0x400) ||
          (player->unk_0BC & 0x10000) ||
          (player->unk_0BC & 0x20000) ||
          (player->unk_0BC & 0x01000000) ||
          (player->unk_0BC & 0x02000000) ||
          (player->unk_0BC & 0x04000000))) {
        if (!(((player->unk_094 / 18.0f) * 216.0f) >= 110.0f)) {
            player->unk_0BC &= ~0x20000000;
            player->unk_228 = 0;
            if (!(player->unk_0BC & 0x80) && !(player->unk_0BC & 0x40)) {
                sp304 = (s32) player->unk_07C >> 0x10;
                move_s32_towards(&sp304, (s32) arg1, 0.35f);
                sp304 <<= 0x10;
                if ((player->unk_0BC & 0x10) == 0x10) {
                    var_f0 = (sp304 >> 0x10) / 5;
                } else {
                    var_f0 = (f32) (sp304 >> 0x10) / (8.0f + (player->unk_09C / 50.0f));
                }
                if (var_f0 < 0.0f) {
                    var_f0 = -var_f0;
                }
                if ((player->unk_0BC & 0x10) == 0x10) {
                    var_f0 = sp44[(s16) ((player->unk_094 / 18.0f) * 216.0f)] * var_f0;
                } else {
                    var_f0 = sp44[(s16) ((player->unk_094 / 18.0f) * 216.0f)] * sp24[player->characterId] * var_f0;
                }
                player->unk_07C = sp304;
                if (((player->unk_0BC & 2) != 2) && ((player->unk_0BC & 0x10) != 0x10)) {
                    if ((player->unk_0BC & 1) != 1) {
                        player->unk_078 = (player->unk_07C >> 0x10) * var_f0;
                    } else {
                        player->unk_078 = (player->unk_07C >> 0x10) * (var_f0 + 1.5);
                    }
                } else if ((player->unk_0BC & 8) != 8) {
                    if (((s16) player->unk_0C0 / 182) > 0) {
                        var_v0 = player->unk_07C >> 0x10;
                    } else {
                        var_v0 = player->unk_07C >> 0x10;
                    }
                    player->unk_078 = var_v0 * (var_f0 + 3.0);
                    player->unk_078 *= 0.8;
                } else {
                    var_v0 = (s16) ((s32) player->unk_07C >> 0x10);
                    if (arg1 == 0) {
                        var_v0 = 0;
                    }
                    player->unk_078 = var_v0 * var_f0;
                }
                if ((((player->unk_0BC & 2) != 2) &&
                      (player->unk_0C0 < 0x3D) &&
                      (player->unk_0C0 > -0x3D)) ||
                    (((player->unk_094 / 18.0f) * 216.0f) <= 20.0f) ||
                     ((player->unk_0BC & 0x8000) == 0x8000)) {
                    func_80036CB4(player);
                }
            }
        }
    }
}

void func_80036C5C(Player *arg0) {
    if (((arg0->unk_094 / 18.0f) * 216.0f) > 20.0f) {
        arg0->unk_204 = 0;
        arg0->unk_0BC |= 0x10;
        arg0->unk_0B6 |= 0x800;
    }
}

void func_80036CB4(Player *player) {
    s32 test;

    if (((player->unk_0BC & 0x10) == 0x10) && ((player->unk_000 & 0x4000) == 0x4000)) {
        if ((player->unk_0C0 / 182) > 0) {
            test = ((((player->unk_07C >> 0x10) * 0xD) + 0x2B1) / 106) + 0x28;
            player->unk_07C = test << 0x10;
        }
        if ((player->unk_0C0 / 182) < 0) {
            test = ((((player->unk_07C >> 0x10) * 0xD) + 0x2B1) / 106) - 0x35;
            player->unk_07C = test << 0x10;
        }
        player->unk_0BC &= ~0x10;
    }
    if (((player->unk_0BC & 0x10) == 0x10) && ((player->unk_000 & 0x4000) != 0x4000)) {
        player->unk_0BC &= ~0x10;
    }
}

void func_80036DB4(Player *player, Vec3f arg1, Vec3f arg2) {
    s16 thing;
    s16 stackPadding0;
    f32 sp20;
    f32 var_f18;
    s32 temp_t6;

    if (((player->unk_0BC & 0x1000) == 0x1000) || ((player->unk_0BC & 0x20) == 0x20)) {
        arg1[0] = 0.0f;
        arg1[1] = 0.0f;
        arg1[2] = 0.0f;
        func_802B63B8(arg1, player->unk_174);
    } else {
        if (((player->unk_0BC & 0x10) == 0x10) && ((player->unk_0BC & 2) != 2)) {
            var_f18 = player->unk_208 + ((-(player->unk_094 / 18.0f) * 216.0f) * 3.0f) + (-player->unk_20C * 10.0f);
            sp20 = player->unk_084 * 3.0f;
        } else if (!(player->unk_0BC & 0x800) && !(player->unk_044 & 0x4000)) {
            thing = player->unk_0FA;
            if (thing > 0) {
                thing *= -1;
            }
            temp_t6 = player->unk_07C >> 0x10;
            if ((temp_t6 < 0x15) && (temp_t6 >= -0x14)) {
                if (thing < 0x14) {
                    var_f18 = (player->unk_208 + ((-(player->unk_094 / 18.0f) * 216.0f) / 3.0f)) + (-player->unk_09C * 0.02) + (-player->unk_20C * 50.0f);
                } else {
                    var_f18 = (player->unk_208 + ((-(player->unk_094 / 18.0f) * 216.0f) / 3.0f)) + ((temp_t6 * 0.01) + (-player->unk_09C * 0.05)) + (-player->unk_20C * 50.0f);
                }
            } else {
                var_f18 = (player->unk_208 + ((-(player->unk_094 / 18.0f) * 216.0f) / 3.0f)) + ((temp_t6 * 0.1) + (-player->unk_09C * 0.15)) + (-player->unk_20C * 50.0f);
            }
            sp20 = player->unk_084;
        } else {
            var_f18 = player->unk_208 + ((-(player->unk_094 / 18.0f) * 216.0f) * 1.5) + (((player->unk_07C >> 0x10) * 0.1) + (-player->unk_09C * 0.05)) + (-player->unk_20C * 50.0f);
            sp20 = player->unk_084;
        }
        if ((player->unk_0BC & 0x200) == 0x200) {
            if (((player->unk_0BC & 0x10) == 0x10) && ((player->unk_0BC & 2) != 2)) {
                var_f18 = player->unk_208 + ((-(player->unk_094 / 18.0f) * 216.0f) * 3.0f) + (-player->unk_20C * 10.0f);
                sp20 = player->unk_084 * 3.0f;
            } else {
                var_f18 = player->unk_208 + ((-(player->unk_094 / 18.0f) * 216.0f) / 3.0f);
                sp20 = player->unk_084;
            }
        }
        arg1[0] = (player->unk_090 + var_f18) * player->unk_094;
        arg1[1] = 0.0f;
        arg1[2] = player->unk_094 * sp20;
        func_802B63B8(arg1, player->unk_174);
    }
    arg2[0] = arg1[0];
    arg2[1] = arg1[1];
    arg2[2] = arg1[2];
}

void func_800371F4(Player *player, Vec3f arg1, Vec3f arg2) {
    s16 var_v0;
    f32 sp20;
    f32 var_f18;
    s32 temp_t6;

    if (((player->unk_0BC & 0x1000) == 0x1000) || ((player->unk_0BC & 0x20) == 0x20)) {
        arg1[0] = 0.0f;
        arg1[1] = 0.0f;
        arg1[2] = 0.0f;
        func_802B63B8(arg1, player->unk_174);
    } else {
        if (((player->unk_0BC & 0x10) == 0x10) && ((player->unk_0BC & 2) != 2)) {
            var_f18 = player->unk_208 + ((-(player->unk_094 / 18.0f) * 216.0f) * 3.0f) + (-player->unk_20C * 50.0f);
            sp20 = player->unk_084 * 3.0f;
        } else if (!(player->unk_0BC & 0x800) && !(player->unk_044 & 0x4000)) {
            var_v0 = player->unk_0FA;
            if (var_v0 > 0) {
                var_v0 *= -1;
            }
            temp_t6 = (s32) player->unk_07C >> 0x10;
            if ((temp_t6 < 0x15) && (temp_t6 >= -0x14)) {
                if (var_v0 < 0x14) {
                    var_f18 = (player->unk_208 + ((-(player->unk_094 / 18.0f) * 216.0f) / 3.0f)) + (-player->unk_09C * 0.02) + (-player->unk_20C * 50.0f);
                } else {
                    var_f18 = ((player->unk_208 + ((-(player->unk_094 / 18.0f) * 216.0f) / 3.0f)) - ((temp_t6 * 0.01) + (player->unk_09C * 0.05))) + (-player->unk_20C * 50.0f);
                }
            } else {
                var_f18 = ((player->unk_208 + ((-(player->unk_094 / 18.0f) * 216.0f) / 3.0f)) - ((temp_t6 * 0.1) + (player->unk_09C * 0.15))) + (-player->unk_20C * 50.0f);
            }
            sp20 = player->unk_084;
        } else {
            var_f18 = ((player->unk_208 + ((f64) (-(player->unk_094 / 18.0f) * 216.0f) * 1.5)) - (((player->unk_07C >> 0x10) * 0.1) + (player->unk_09C * 0.05))) + (-player->unk_20C * 50.0f);
            sp20 = player->unk_084;
        }
        if ((player->unk_0BC & 0x200) == 0x200) {
            if (((player->unk_0BC & 0x10) == 0x10) && ((player->unk_0BC & 2) != 2)) {
                var_f18 = player->unk_208 + ((-(player->unk_094 / 18.0f) * 216.0f) * 3.0f) + (-player->unk_20C * 50.0f);
                sp20 = player->unk_084 * 3.0f;
            } else {
                var_f18 = player->unk_208 + ((-(player->unk_094 / 18.0f) * 216.0f) / 3.0f);
                sp20 = player->unk_084;
            }
        }
        arg1[0] = -(player->unk_090 + var_f18) * player->unk_094;
        arg1[1] = 0.0f;
        arg1[2] = player->unk_094 * sp20;
        func_802B63B8(arg1, player->unk_174);
    }
    arg2[0] = arg1[0];
    arg2[1] = arg1[1];
    arg2[2] = arg1[2];
}

void func_80037614(Player *player, Vec3f arg1, Vec3f arg2) {
    f32 var_f12;
    f32 var_f2;

    if (((player->unk_0BC & 0x1000) == 0x1000) || ((player->unk_0BC & 0x20) == 0x20)) {
        arg1[0] = 0.0f;
        arg1[1] = 0.0f;
        arg1[2] = 0.0f;
        func_802B63B8(arg1, player->unk_174);
    } else {
        if (((player->unk_0BC & 0x10) == 0x10) && ((player->unk_0BC & 2) != 2)) {
            var_f2 = ((-(player->unk_094 / 18.0f) * 216.0f) * 2) + -80.0f;
            var_f12 = -80.0f;
        } else {
            var_f2 = ((-(player->unk_094 / 18.0f) * 216.0f) / 2) + -20.0f;
            var_f12 = -40.0f;
        }
        arg1[0] = (var_f2 + 28.0f) * player->unk_094;
        arg1[1] = 0.0f;
        arg1[2] = var_f12 * player->unk_094;
        func_802B63B8(arg1, player->unk_174);
    }
    arg2[0] = arg1[0];
    arg2[1] = arg1[1];
    arg2[2] = arg1[2];
}

void func_8003777C(Player *player, Vec3f arg1, Vec3f arg2) {
    f32 var_f12;
    f32 var_f2;

    if (((player->unk_0BC & 0x1000) == 0x1000) || ((player->unk_0BC & 0x20) == 0x20)) {
        arg1[0] = 0.0f;
        arg1[1] = 0.0f;
        arg1[2] = 0.0f;
        func_802B63B8(arg1, player->unk_174);
    } else {
        if (((player->unk_0BC & 0x10) == 0x10) && ((player->unk_0BC & 2) != 2)) {
            var_f2 = ((-(player->unk_094 / 18.0f) * 216.0f) * 2) + -80.0f;
            var_f12 = -80.0f;
        } else {
            var_f2 = ((-(player->unk_094 / 18.0f) * 216.0f) / 2) + -20.0f;
            var_f12 = -40.0f;
        }
        arg1[0] = -(var_f2 + 28.0f) * player->unk_094;
        arg1[1] = 0.0f;
        arg1[2] = var_f12 * player->unk_094;
        func_802B63B8(arg1, player->unk_174);
    }
    arg2[0] = arg1[0];
    arg2[1] = arg1[1];
    arg2[2] = arg1[2];
}

void func_800378E8(Player *player, Vec3f arg1, Vec3f arg2) {
    f32 var_f12;
    f32 var_f2;

    if ((player->unk_0BC & 0x20) == 0x20) {
        arg1[0] = 0.0f;
        arg1[1] = 0.0f;
        arg1[2] = 0.0f;
        func_802B63B8(arg1, player->unk_174);
    } else {
        if ((player->unk_0BC & 0x10) == 0x10) {
            var_f2 = player->unk_208 + (-(player->unk_094 / 18.0f) * 216.0f * 5.0f) + (-player->unk_20C * 10.0f);
            var_f12 = -100.0f;
        } else {
            var_f2 = player->unk_208 + ((-(player->unk_094 / 18.0f) * 216.0f) / 40.0f) + (-player->unk_20C * 50.0f);
            var_f12 = player->unk_084;
        }
        arg1[0] = (player->unk_090 + var_f2) * player->unk_094;
        arg1[1] = 0.0f;
        arg1[2] = player->unk_094 * var_f12;
        func_802B63B8(arg1, player->unk_174);
    }
    arg2[0] = arg1[0];
    arg2[1] = arg1[1];
    arg2[2] = arg1[2];
}

void func_80037A4C(Player *player, Vec3f arg1, Vec3f arg2) {
    f32 var_f12;
    f32 var_f2;

    if ((player->unk_0BC & 0x20) == 0x20) {
        arg1[0] = 0.0f;
        arg1[1] = 0.0f;
        arg1[2] = 0.0f;
        func_802B63B8(arg1, player->unk_174);
    } else {
        if ((player->unk_0BC & 0x10) == 0x10) {
            var_f2 = player->unk_208 + (-(player->unk_094 / 18.0f) * 216.0f * 5.0f) + (-player->unk_20C * 50.0f);
            var_f12 = -100.0f;
        } else {
            var_f2 = player->unk_208 + ((-(player->unk_094 / 18.0f) * 216.0f) / 40.0f) + (-player->unk_20C * 50.0f);
            var_f12 = player->unk_084;
        }
        arg1[0] = -(player->unk_090 + var_f2) * player->unk_094;
        arg1[1] = 0.0f;
        arg1[2] = player->unk_094 * var_f12;
        func_802B63B8(arg1, player->unk_174);
    }
    arg2[0] = arg1[0];
    arg2[1] = arg1[1];
    arg2[2] = arg1[2];
}

void func_80037BB4(Player *player, Vec3f arg1) {
    s32 stackPadding0[3];
    Vec3f sp20;

    if (player->unk_078 == 0) {
        arg1[0] = 0.0f;
        arg1[1] = 0.0f;
        arg1[2] = 0.0f;
    } else {
        if (player->unk_078 < 0) {
            if (((player->unk_0BC & 0x20000000) != 0x20000000) || (player->unk_228 >= 0x64)) {
                player->unk_02C[1] += player->unk_078;
            }
            if (!(player->unk_000 & 0x1000)) {
                if (gModeSelection == BATTLE) {
                    func_800378E8(player, sp20, arg1);
                } else {
                    func_80036DB4(player, sp20, arg1);
                }
            } else {
                func_80037614(player, sp20, arg1);
            }
        } else {
            if (((player->unk_0BC & 0x20000000) != 0x20000000) || (player->unk_228 >= 0x64)) {
                player->unk_02C[1] += player->unk_078;
            }
            if (!(player->unk_000 & 0x1000)) {
                if (gModeSelection == BATTLE) {
                    func_80037A4C(player, sp20, arg1);
                } else {
                    func_800371F4(player, sp20, arg1);
                }
            } else {
                func_8003777C(player, sp20, arg1);
            }
        }
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_80030C34(Player *);                          /* extern */
? func_80033AE0(Player *, struct Controller *, s8); /* extern */
s32 func_800388B0(struct Controller *);             /* extern */

void func_80037CFC(Player *player, struct Controller *controller, u8 arg2) {
    s16 temp_v0_4;
    s32 temp_t0;
    s32 temp_t4;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v1;
    u16 temp_v0;
    u16 temp_v1;
    u16 temp_v1_2;

    var_v0 = player->unk_0BC;
    var_v1 = var_v0 & 0x80;
    if ((var_v1 != 0x80) && ((var_v0 & 0x40) != 0x40) && ((var_v0 & 0x400) != 0x400) && ((var_v0 & 0x4000) != 0x4000) && ((var_v0 & 0x01000000) != 0x01000000) && ((var_v0 & 0x02000000) != 0x02000000) && ((var_v0 & 0x10000) != 0x10000) && ((var_v0 & 0x20000) != 0x20000)) {
        if (((var_v0 & 0x04000000) != 0x04000000) && ((var_v0 & 8) != 8) && ((var_v0 & 2) != 2) && ((var_v0 & 0x10) != 0x10) && (controller->buttonPressed & 0x10)) {
            func_8002AA50(player);
            temp_v0 = player->unk_000;
            if (((temp_v0 & 0x4000) == 0x4000) && ((temp_v0 & 0x100) != 0x100)) {
                func_800C9060(arg2, 0x19008000U);
            }
        }
        temp_v0_2 = player->unk_0BC;
        if ((temp_v0_2 & 8) != 8) {
            func_80033AE0(player, controller, (s8) arg2);
        } else if (((temp_v0_2 & 2) == 2) && (player->unk_110.unk3C[2] <= 5.0f)) {
            func_80033AE0(player, controller, (s8) arg2);
        }
        temp_t4 = player->unk_0BC & ~1;
        player->unk_0BC = temp_t4;
        var_v0_2 = temp_t4;
        if (!(temp_t4 & 0x100000) && !(temp_t4 & 4)) {
            if (((player->unk_094 / 18.0f) * 216.0f) <= 12.0f) {
                temp_v1 = controller->button;
                if (temp_v1 & 0x8000) {
                    temp_t0 = temp_t4 | 0x20;
                    if (temp_v1 & 0x4000) {
                        player->unk_0BC = temp_t0;
                        var_v0_2 = temp_t0;
                        if ((temp_t0 & 0x20) != 0x20) {
                            var_v0_2 = temp_t0;
                            player->unk_09C += 100.0f;
                        }
                    }
                }
            }
            if (((var_v0_2 & 0x20) == 0x20) && ((temp_v1_2 = controller->button, ((temp_v1_2 & 0x4000) == 0)) || !(temp_v1_2 & 0x8000))) {
                player->unk_0BC = var_v0_2 & ~0x20;
            }
        }
        if ((player->unk_044 & 1) != 1) {
            if (controller->button & 0x8000) {
                func_80030FC8(player);
                func_80030E00(player);
            } else {
                if (gModeSelection == 3) {
                    func_80031F48(player, 2.0f);
                } else {
                    func_80031F48(player, 1.0f);
                }
                func_80030C34(player);
            }
            if (controller->button & 0x4000) {
                func_800323E4(player);
                func_8003221C(player);
            } else {
                player->unk_20C = 0.0f;
                func_80032050(player);
            }
        }
        temp_v0_3 = player->unk_0BC;
        if (!(temp_v0_3 & 0x100000) && !(temp_v0_3 & 4)) {
            if ((func_800388B0(controller) < -0x31) && (((player->unk_094 / 18.0f) * 216.0f) <= 5.0f) && (controller->button & 0x4000)) {
                player->unk_09C = 140.0f;
                player->unk_044 |= 1;
                player->unk_20C = 0.0f;
                player->unk_08C = (140.0f * 140.0f) / 25.0f;
            }
            if ((func_800388B0(controller) >= -0x1D) || !(controller->button & 0x4000)) {
                temp_v0_4 = player->unk_044;
                if ((temp_v0_4 & 1) == 1) {
                    player->unk_044 = temp_v0_4 & 0xFFFE;
                    player->unk_09C = 0.0f;
                }
            }
        }
    } else {
        if ((var_v0 & 0x4000) == 0x4000) {
            if (controller->button & 0x8000) {
                func_80030FC8(player);
                var_v0 = player->unk_0BC;
            } else {
                func_80031F48(player, 5.0f);
                var_v0 = player->unk_0BC;
            }
            var_v1 = var_v0 & 0x80;
        }
        if ((var_v1 == 0x80) || ((var_v0 & 0x40) == 0x40) || ((var_v0 & 0x01000000) == 0x01000000) || ((var_v0 & 0x02000000) == 0x02000000)) {
            if (controller->button & 0x8000) {
                func_80030E00(player);
                func_800332E8(player, (s32) (s8) arg2);
                return;
            }
            func_80030C34(player);
            func_800337CC(player, 5.0f, (s32) (s8) arg2);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_80037CFC.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
extern s8 D_80164A89;
extern s16 D_801656F0;
extern s32 D_8018D168;
extern s32 gRaceFrameCounter;

void func_800381AC(Player *player, struct Controller *controller, u8 arg2) {
    s16 temp_v0_2;
    s32 *temp_v0_3;
    u16 temp_v0;

    temp_v0 = player->unk_000;
    if (((temp_v0 & 0x8000) == 0x8000) && ((temp_v0 & 0x4000) == 0x4000) && ((temp_v0 & 0x1000) != 0x1000)) {
        if ((temp_v0 & 0x2000) != 0x2000) {
            temp_v0_2 = player->unk_0CA;
            if (((temp_v0_2 & 2) == 2) || ((temp_v0_2 & 8) == 8)) {
                if (controller->button & 0x8000) {
                    func_80032D94(player);
                } else {
                    func_80033280(player, 5.0f);
                }
            } else {
                func_80037CFC((s8) arg2);
            }
            D_80164A89 = 1;
            return;
        }
        if (D_8018D168 == 1) {
            if (D_801656F0 == (s16) 1) {
                temp_v0_3 = &D_801652E0[(s8) arg2];
                if (*temp_v0_3 == 0) {
                    *temp_v0_3 = gRaceFrameCounter;
                }
            }
            if (controller->button & 0x8000) {
                func_80032700((s8) arg2);
                return;
            }
            func_80032CB0(player, 5.0f);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_800381AC.s")
#endif


void func_800382DC(void) {
    u16 temp_v0_3;
    u16 temp_v0_4;
    u16 temp_v0_5;
    u16 temp_v0_6;

    switch (gActiveScreenMode) {                              /* irregular */
    case SCREEN_MODE_1P:
        switch (gModeSelection) {                        /* switch 1; irregular */
        case 0:                                     /* switch 1 */
            func_800381AC(gPlayerOne, gControllerOne, 0);
            return;
        case 1:                                     /* switch 1 */
            if (D_8015F890 != 1) {
                func_800381AC(gPlayerOne, gControllerOne, 0);
                temp_v0_3 = gPlayerTwo->unk_000;
                if (((temp_v0_3 & 0x100) == 0x100) && ((temp_v0_3 & 0x800) != 0x800)) {
                    func_800381AC(gPlayerTwo, gControllerSix, 1);
                }
                temp_v0_4 = gPlayerThree->unk_000;
                if (((temp_v0_4 & 0x100) == 0x100) && ((temp_v0_4 & 0x800) != 0x800)) {
                    func_800381AC(gPlayerThree, gControllerSeven, 2);
                    return;
                }
            } else {
                if ((gPlayerOne->unk_000 & 0x800) != 0x800) {
                    func_800381AC(gPlayerOne, gControllerEight, 0);
                }
                temp_v0_5 = gPlayerTwo->unk_000;
                if (((temp_v0_5 & 0x100) == 0x100) && ((temp_v0_5 & 0x800) != 0x800)) {
                    func_800381AC(gPlayerTwo, gControllerSix, 1);
                }
                temp_v0_6 = gPlayerThree->unk_000;
                if (((temp_v0_6 & 0x100) == 0x100) && ((temp_v0_6 & 0x800) != 0x800)) {
                    func_800381AC(gPlayerThree, gControllerSeven, 2);
                    return;
                }
                return;
            }
            break;
        }
        break;
    case SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL:
    case SCREEN_MODE_2P_SPLITSCREEN_VERTICAL:
        func_800381AC(gPlayerOne, gControllerOne, 0);
        func_800381AC(gPlayerTwo, gControllerTwo, 1);
        return;
    case SCREEN_MODE_3P_4P_SPLITSCREEN:
        func_800381AC(gPlayerOne, gControllerOne, 0);
        func_800381AC(gPlayerTwo, gControllerTwo, 1);
        func_800381AC(gPlayerThree, gControllerThree, 2);
        if (gPlayerCountSelection1 == 4) {
            func_800381AC(gPlayerFour, gControllerFour, 3);
        }
        break;
    }
}

s16 func_80038534(struct Controller *controller) {
    s16 temp_a2;
    s16 var_a3;
    s16 var_t0;
    s16 temp_v0;

    temp_v0 = controller->rawStickX;
    temp_a2 = controller->rawStickY;
    var_a3 = temp_v0;
    var_t0 = temp_a2;

    if (temp_v0 > 0xC) {
        var_t0 = (temp_a2 * 0x000C) / temp_v0;
        var_a3 = 0x000C;
    }
    if (var_a3 < -0xC) {
        var_t0 = (var_t0 * 0x000C) / -var_a3;
        var_a3 = -0x000C;
    }
    if (var_t0 > 0xC) {
        var_a3 = (var_a3 * 0x000C) / var_t0;
        var_t0 = 0x000C;
    }
    if (var_t0 < -0xC) {
        var_a3 = (var_a3 * 0x000C) / -var_t0;
        var_t0 = -0x000C;
    }
    if ((((controller->rawStickX > -0xD) && (controller->rawStickX < 0xD)) && (controller->rawStickY > -0xD)) && (controller->rawStickY < 0xD)) {
        temp_v0 = 0;
        temp_a2 = 0;
    }
    else {
        temp_v0 -= var_a3;
        temp_a2 -= var_t0;
    }
    if (temp_v0 > 0x35) {
        temp_a2 = (temp_a2 * 0x0035) / temp_v0;
        temp_v0 = 0x0035;
    }
    if (temp_v0 < -0x35) {
        temp_a2 = (temp_a2 * 0x0035) / -temp_v0;
        temp_v0 = -0x0035;
    }
    if (temp_a2 > 0x35) {
        temp_v0 = (temp_v0 * 0x0035) / temp_a2;
        temp_a2 = 0x0035;
    }
    if (temp_a2 < -0x35) {
        temp_v0 = (temp_v0 * 0x0035) / -temp_a2;
    }
    return temp_v0;
}

s16 func_800388B0(struct Controller *controller) {
    s16 temp_a2;
    s16 var_a3;
    s16 var_t0;
    s16 temp_v0;

    temp_v0 = controller->rawStickX;
    temp_a2 = controller->rawStickY;
    var_a3 = temp_v0;
    var_t0 = temp_a2;

    if (temp_v0 > 0xC) {
        var_t0 = (temp_a2 * 0x000C) / temp_v0;
        var_a3 = 0x000C;
    }
    if (var_a3 < -0xC) {
        var_t0 = (var_t0 * 0x000C) / -var_a3;
        var_a3 = -0x000C;
    }
    if (var_t0 > 0xC) {
        var_a3 = (var_a3 * 0x000C) / var_t0;
        var_t0 = 0x000C;
    }
    if (var_t0 < -0xC) {
        var_a3 = (var_a3 * 0x000C) / -var_t0;
        var_t0 = -0x000C;
    }
    if ((((controller->rawStickX > -0xD) && (controller->rawStickX < 0xD)) && (controller->rawStickY > -0xD)) && (controller->rawStickY < 0xD)) {
        temp_v0 = 0;
        temp_a2 = 0;
    }
    else {
        temp_v0 -= var_a3;
        temp_a2 -= var_t0;
    }
    if (temp_v0 > 0x35) {
        temp_a2 = (temp_a2 * 0x0035) / temp_v0;
        temp_v0 = 0x0035;
    }
    if (temp_v0 < -0x35) {
        temp_a2 = (temp_a2 * 0x0035) / -temp_v0;
        temp_v0 = -0x0035;
    }
    if (temp_a2 > 0x35) {
        temp_v0 = (temp_v0 * 0x0035) / temp_a2;
        temp_a2 = 0x0035;
    }
    if (temp_a2 < -0x35) {
        temp_v0 = (temp_v0 * 0x0035) / -temp_a2;
        temp_a2 = -0x0035;
    }
    return temp_a2;
}

void func_80038BE4(Player *player, s16 arg1) {
    player->unk_09C += (f32) arg1;
    if (player->unk_09C < 0.0f) {
        player->unk_09C = 0.0f;
    }
    if (player->unk_09C >= 250.0f) {
        player->unk_09C = 250.0f;
    }
    player->unk_044 |= 0x20;
    player->unk_08C = (player->unk_09C * player->unk_09C) / 25.0f;
}

#ifdef MIPS_TO_C
//generated by m2c commit 6b6e1390bf30013247343623194964ff13d0c45b
? func_80029B4C(Player *, f32, f32, f32);           /* extern */
? func_8002AE38(Player *, s8, f32, f32, f32, f32);  /* extern */
? func_8002C4F8(Player *, s8);                      /* extern */
? func_8002C954(Player *, s8, f32 *);               /* extern */
? func_8002CD48(Player *, s8, s8);                  /* extern */
static ? D_800E4328;                                /* unable to generate initializer */
static ? D_800E4334;                                /* unable to generate initializer */
static ? D_800E4340;                                /* unable to generate initializer */
static ? D_800E434C;                                /* unable to generate initializer */

void func_80038C6C(Player *player, Camera *camera, s8 arg2, s8 arg3) {
    f32 sp11C;
    f32 sp114;
    f32 sp110;
    f32 sp10C;
    f32 sp108;
    f32 spFC;
    f32 spF8;
    f32 spF4;
    f32 spF0;
    f32 spEC;
    f32 spE8;
    f32 spE4;
    f32 spE0;
    f32 spD8;
    f32 spA4;
    f32 spA0;
    f32 sp9C;
    f32 sp98;
    f32 sp90;
    f32 sp8C;
    f32 sp88;
    f32 sp7C;
    f32 *sp50;
    f32 *temp_a1;
    f32 *temp_v0_2;
    f32 *temp_v0_3;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f10;
    f32 temp_f10_2;
    f32 temp_f12_2;
    f32 temp_f16;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 temp_f4;
    f32 temp_f8;
    f64 temp_f0;
    f64 temp_f12;
    f64 temp_f2;
    s16 temp_v0;
    s32 temp_t6;

    sp114.unk0 = D_800E4328.unk0;
    sp114.unk4 = (s32) D_800E4328.unk4;
    sp114.unk8 = (s32) D_800E4328.unk8;
    sp108.unk0 = D_800E4334.unk0;
    sp108.unk4 = (s32) D_800E4334.unk4;
    sp108.unk8 = (s32) D_800E4334.unk8;
    spFC.unk0 = D_800E4340.unk0;
    spFC.unk4 = (s32) D_800E4340.unk4;
    spFC.unk8 = (s32) D_800E4340.unk8;
    spF0.unk0 = D_800E434C.unk0;
    spF0.unk4 = (s32) D_800E434C.unk4;
    spF0.unk8 = (s32) D_800E434C.unk8;
    player->unk_084 = -10.0f;
    player->unk_088 = 28.0f;
    player->unk_214 = 250.0f;
    func_8002B830(player, arg3, arg2);
    func_8002CD48(player, arg3, arg2);
    player->unk_02E += player->unk_078;
    spF0 = 0.0f;
    spF4 = 0.0f;
    spF8 = 0.0f;
    func_8002AB70(player);
    temp_a1 = player->unk_174[0];
    spA4 = (spFC + player->unk_064) * 0.0f;
    spA0 = player->kartGravity * -1.0f;
    sp110 = 0.0f;
    sp10C = 0.0f;
    sp108 = 0.0f;
    sp50 = temp_a1;
    sp9C = (sp104 + player->unk_06C) * 0.0f;
    func_802B63B8(&sp108, (f32 (*)[3]) temp_a1);
    spA4 += sp108;
    sp9C += sp110;
    sp11C = player->unk_08C;
    func_802B63B8(&sp114, (f32 (*)[3]) sp50);
    sp88 = player->unk_034[0];
    temp_f8 = player->unk_034[1];
    sp8C = temp_f8;
    temp_f0 = (f64) sp88;
    sp90 = player->unk_034[2];
    temp_f2 = (f64) sp90;
    sp88 = (f32) (temp_f0 + ((((f64) (sp114 + spA4 + spF0) - (temp_f0 * (0.12 * (f64) player->kartFriction))) / 6000.0) / 1.0));
    temp_f12 = (f64) temp_f8;
    sp90 = (f32) (temp_f2 + ((((f64) (sp11C + sp9C + spF8) - (temp_f2 * (0.12 * (f64) player->kartFriction))) / 6000.0) / 1.0));
    sp8C = (f32) (temp_f12 + ((((f64) (sp118 + spA0 + spF4) - (temp_f12 * (0.12 * (f64) player->kartFriction))) / 6000.0) / 1.0));
    temp_v0 = player->unk_044;
    if ((temp_v0 & 0x10) == 0x10) {
        player->unk_044 = temp_v0 & 0xFFEF;
    }
    temp_f0_2 = player->pos[0];
    spE0 = temp_f0_2;
    temp_f2_2 = player->pos[1];
    temp_f16 = player->pos[2];
    player->rotX = temp_f0_2;
    player->rotY = temp_f2_2;
    player->rotZ = temp_f16;
    spEC = player->unk_034[0] + temp_f0_2;
    spE8 = player->unk_034[1] + temp_f2_2;
    spD8 = temp_f16;
    temp_f4 = player->unk_034[2] + temp_f16;
    spE4 = temp_f4;
    func_8002AAC0(player);
    temp_f10 = spE8 + player->kartHopVelocity;
    spE8 = temp_f10;
    temp_f10_2 = (f32) ((f64) temp_f10 - 0.02);
    spE8 = temp_f10_2;
    func_802AD950(&player->unk_110, player->boundingBoxSize, spEC, temp_f10_2, temp_f4, player->rotX, player->rotY, player->rotZ);
    player->unk_058 = 0.0f;
    player->unk_060 = 0.0f;
    player->unk_05C = 1.0f;
    func_802B6540((f32 (*)[3]) sp50, 0.0f, 1.0f, 0.0f, (s16) (s32) player->unk_02E);
    player->unk_0BC |= 8;
    player->unk_0C2 += 1;
    sp98 = player->unk_110.unk3C[2];
    if (sp98 <= 0.0f) {
        player->unk_0C2 = 0;
        temp_t6 = player->unk_0BC & ~2;
        player->unk_0BC = temp_t6;
        player->unk_0BC = temp_t6 & ~8;
        player->kartHopVelocity = (f32) player->unk_0C2;
    }
    sp98 = player->unk_110.unk3C[2];
    if (sp98 <= 0.0f) {
        func_8003F46C(player, &sp7C, &sp88, &sp108, &sp98, &spEC, &spE8, &spE4);
    }
    sp98 = player->unk_110.unk3C[0];
    if (sp98 < 0.0f) {
        func_8003F734(player, &sp7C, &sp88, &sp98, &spEC, &spE8, &spE4);
        func_8002C954(player, arg3, &sp88);
    }
    sp98 = player->unk_110.unk3C[1];
    if (sp98 < 0.0f) {
        func_8003FBAC(player, &sp7C, &sp88, &sp98, &spEC, &spE8, &spE4);
        func_8002C954(player, arg3, &sp88);
    }
    sp98 = player->unk_110.unk3C[0];
    if (sp98 >= 0.0f) {
        sp98 = player->unk_110.unk3C[1];
        if (sp98 >= 0.0f) {
            player->unk_046 &= 0xFFDF;
        }
    }
    player->unk_074 = func_802ABE30(spEC, spE8, spE4, player->unk_110.unk3A);
    func_80029B4C(player, spEC, spE8, spE4);
    func_8002AE38(player, arg3, spE0, spD8, spEC, spE4);
    player->unk_22C = player->unk_094;
    player->unk_094 = sqrtf((sp90 * sp90) + (sp88 * sp88));
    player->pos[0] = spEC;
    player->pos[2] = spE4;
    player->pos[1] = spE8;
    player->unk_064 = sp108;
    player->unk_06C = sp110;
    player->unk_034[0] = sp88;
    player->unk_034[1] = sp8C;
    player->unk_034[2] = sp90;
    temp_v0_2 = D_80165070[arg3];
    temp_v0_2->unk0 = sp88;
    temp_v0_2->unk4 = sp8C;
    temp_v0_2->unk8 = sp90;
    if ((player->unk_000 & 0x4000) == 0x4000) {
        temp_f2_3 = player->unk_094;
        temp_v0_3 = &gKartTopSpeedTable[player->characterId];
        temp_f12_2 = *temp_v0_3;
        if (temp_f12_2 < temp_f2_3) {
            temp_f0_3 = temp_f12_2 / temp_f2_3;
            player->unk_034[0] *= temp_f0_3;
            player->unk_034[1] *= temp_f0_3;
            player->unk_034[2] *= temp_f0_3;
            player->unk_094 = *temp_v0_3;
        }
    }
    if ((player->unk_044 & 1) == 1) {
        temp_f2_4 = player->unk_094;
        if (temp_f2_4 > 1.0f) {
            temp_f0_4 = 1.0f / temp_f2_4;
            player->unk_094 = 1.0f;
            player->unk_034[0] *= temp_f0_4;
            player->unk_034[1] *= temp_f0_4;
            player->unk_034[2] *= temp_f0_4;
        }
    }
    if (player->unk_110.unk3C[2] >= 500.0f) {
        player->unk_078 = (s16) ((s16) player->unk_078 / 2);
    }
    func_8002C4F8(player, arg3);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027D00/func_80038C6C.s")
#endif
