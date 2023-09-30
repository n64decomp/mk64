#include <ultra64.h>
#include <macros.h>
#include <types.h>
#include <functions.h>
#include <variables.h>
#include <defines.h>
#include <sounds.h>
#include "code_800029B0.h"
#include "math_util.h"
#include "kart_attributes.h"
#include "waypoints.h"
#include "code_80005FD0.h"
#include "code_8001F980.h"
#include "player_controller.h"
#include "hud_renderer.h"
#include "code_80057C60.h"
#include "code_8008C1D0.h"
#include "audio/external.h"

UNUSED void func_unnamed(void) {

}

s32 func_8008C1D8(UNUSED s32 *arg0) {

}

void func_8008C1E0(UNUSED s32 *arg0, UNUSED s32 arg1)  {
    arg1 = 4;
}

UNUSED void func_unnamed1(UNUSED s32 arg0) {

}

UNUSED void func_unnamed2(UNUSED s32 arg0) {

}

UNUSED void func_unnamed3(void) {

}

void func_8008C204(void) {

}

UNUSED void func_unnamed4(void) {

}

UNUSED void func_8008C214(void) {

}

UNUSED void func_unnamed5(void) {

}

UNUSED void func_unnamed6(void) {

}

UNUSED void func_unnamed7(void) {

}

UNUSED void func_unnamed8(void) {

}

UNUSED void func_8008C23C(void) {

}

UNUSED void func_unnamed9(void) {

}
UNUSED void func_unnamed10(void) {

}
UNUSED void func_unnamed11(void) {

}
UNUSED void func_unnamed12(void) {

}
UNUSED void func_unnamed13(void) {

}
UNUSED void func_unnamed14(void) {

}
UNUSED void func_unnamed15(void) {

}
UNUSED void func_unnamed16(void) {

}
UNUSED void func_unnamed17(void) {

}
UNUSED void func_unnamed18(void) {

}
UNUSED void func_unnamed19(void) {

}
UNUSED void func_unnamed20(void) {

}
UNUSED void func_unnamed21(void) {

}

UNUSED void func_unnamed22(UNUSED s32 arg0, UNUSED s32 arg1) {
    arg1 = 4;
}

UNUSED void func_unnamed23(void) {

}

UNUSED void func_unnamed24(void) {

}

UNUSED void func_unnamed25(void) {

}

UNUSED void func_unnamed26(void) {

}

UNUSED void func_unnamed27(void) {


}

UNUSED void func_unnamed28(void) {

}

UNUSED void func_unnamed29(void) {

}

UNUSED void func_unnamed30(void) {

}

UNUSED void func_unnamed31(void) {

}

UNUSED void func_unnamed32(void) {

}

UNUSED void func_unnamed33(void) {

}


void func_8008C310(Player *player) {
    if ((player->statusEffects & 2) || (player->statusEffects & 4) || ((player->statusEffects << 9) < 0) || (player->statusEffects & HIT_BY_ITEM_EFFECT)) {
        player->unk_0B6 = ((u16)player->unk_0B6 | 0x1000);
    }
}

UNUSED void func_unnamed34(void) {

}

void func_8008C354(Player *player, s8 arg1) {

    if ((player->effect & 0x400) == 0x400) {
        func_8008C6D0(player, arg1);
    }
    
    if (((player->effect & 0x80) == 0x80) || (player->effect & 0x40) == 0x40) {
        func_8008C8C4(player, arg1);
    }
    if ((player->effect & 0x800) == 0x800) {
        func_8008D0E4(player, arg1);
    }
    if ((player->unk_044 & 0x4000) != 0) { 
        func_8008D3B0(player, arg1);
    }
    if ((player->effect & 0x2000) == 0x2000) {
        func_8008D554(player);
    }
    if ((player->effect & 0x80000) == 0x80000) {
        func_8008D760(player);
    }
    if ((player->effect & 0x800000) == 0x800000) {
        func_8008D97C(player);
    }
    if ((player->effect & 0x1000000) == 0x1000000) {
        func_8008E884(player, arg1);
    }
    if ((player->effect & 0x2000000) == 0x2000000) {
        func_8008EC34(player, arg1);
    }
    if ((player->effect & 0x100000) == 0x100000) {
        func_8008EEC4(player);
    }
    if ((player->effect & 4) == 4) {
        func_8008F0E8(player);
    }
    if ((player->effect & 0x4000) == 0x4000) {
        func_8008F3E0(player);
    }
    if ((player->effect & 0x10000) == 0x10000) {
        func_8008F5A4(player, arg1);
    }
    if ((player->effect & 0x10000000) == 0x10000000) {
        func_8008FEDC(player, arg1);
    }
    player->unk_044 = (s16) (player->unk_044 & 0xFFFE);
    player->effect = (s32) (player->effect & ~0x20);
}

void func_8008C528(Player *player, s8 arg1) {
    UNUSED s32 sp24;
    s32 temp_v1;
    func_8008C354(player, arg1);
    func_8008C310(player);
    temp_v1 = player->characterId;
    player->unk_0C2 = 0;
    player->kartHopJerk = D_800E37B0[temp_v1];
    player->kartHopAcceleration = 0.0f;

    player->kartHopVelocity = D_800E3790[temp_v1];
    player->unk_0A8 = 0;
    player->effect = player->effect | 0x400;
    player->effect = player->effect & ~0x10;
    player->unk_0C0 = 0;
    player->unk_236 = 2;
    player->unk_042 = 0;
    if (((player->unk_000 & PLAYER_HUMAN) == PLAYER_HUMAN) && ((player->unk_000 & PLAYER_INVISIBLE_OR_BOMB) != PLAYER_INVISIBLE_OR_BOMB)) {
        func_800C90F4(arg1, (temp_v1 * 0x10) + 0x29008005);
        func_800C9060(arg1, SOUND_ACTION_EXPLOSION);
    } else {
        func_800098FC(arg1, player);
    }
    player->statusEffects = (s32) (player->statusEffects & ~4);
}

void func_8008C62C(Player *player, s8 arg1) {

    func_80031F48(player, 5.0f);
    player->unk_0A8 += (s16)0xA0;
    player->unk_042 += (s16)0x71C;
    if (player->unk_0A8 >= 0x2000) {
        player->unk_0A8 = 0;
        player->unk_236 = (s16) (player->unk_236 - 1);
        if (player->unk_236 == 0) {
            player->unk_0A8 = 0x2000;
            func_8008C6D0(player, arg1);
            if (gModeSelection == BATTLE) {
                func_8006B8B4(player, arg1);
            }
        }
    }
}

void func_8008C6D0(Player *player, s8 arg1) {

    player->unk_206 = 0;
    player->slopeAccel = 0;
    player->effect = (s32) (player->effect & ~0x400);
    player->unk_0A8 = 0;
    player->unk_0C0 = 0;
    player->unk_07C = 0;
    player->unk_236 = 0;
    player->unk_078 = 0;
    player->currentSpeed = 0.0f;
    D_80165190[0][arg1] = 1;
    D_80165190[1][arg1] = 1;
    D_80165190[2][arg1] = 1;
    D_80165190[3][arg1] = 1;
    player->unk_042 = 0;
}

void func_8008C73C(Player *player, s8 arg1) {
    func_8008C354(player, arg1);
    if (((player->effect & 0x80) != 0x80) && ((player->effect & 0x40) != 0x40)) {
        player->effect &= ~0x10;

        if ((player->unk_0C0 / 182) >= 0) {
            player->effect |= 0x40;
        } else {
            player->effect |= 0x80;
        }

        player->unk_0B6 |= 0x80;
        player->unk_0C0 = 0; player->unk_07C = 0; player->unk_078 = 0; player->unk_0AE = player->unk_02C[1]; player->unk_0B2 = 2;
        D_80165190[0][arg1] = 1;
        D_80165190[1][arg1] = 1;
        D_80165190[2][arg1] = 1;
        D_80165190[3][arg1] = 1;
        D_80165280[arg1] = player->currentSpeed;
        D_80165480[arg1] = 0;
        gIsPlayerTripleA[arg1] = FALSE;
        D_80165440[arg1] = 0;
        D_80165420[arg1] = 0;
        D_8018D920[arg1] = 0;

        if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) != 0x100)) {
            func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008003);
        } else {
            func_800098FC(arg1, player);
        }
    }
}

void func_8008C8C4(Player* player, s8 arg1) {
    player->effect &= ~0x80;
    player->effect &= ~0x40;
    player->unk_0A8 = 0;
    player->unk_02C[1] = player->unk_0AE;
    player->unk_07C = 0;
    player->unk_0C0 = 0;
    player->effect &= ~0x800;

    D_80165190[0][arg1] = 1;
    D_80165190[1][arg1] = 1;
    D_80165190[2][arg1] = 1;
    D_80165190[3][arg1] = 1;

    player->unk_046 &= 0xFFBF;

    if ((gIsPlayerTripleA[arg1] == TRUE) && ((player->unk_000 & 0x4000) == 0x4000)) {
        player->currentSpeed = (f32) (player->currentSpeed + 100.0f);
    }
    if ((gModeSelection == VERSUS) && ((player->unk_000 & 0x1000) == 0x1000) && (!gDemoMode) && ((player->unk_0CA & 2) == 0) && (gGPCurrentRaceRankByPlayerId[arg1] != 0)) {
        player->statusEffects = (s32) (player->statusEffects | REVERSE_EFFECT);
    }
}

void func_8008C9EC(Player *player, s8 arg1) {
    s16 stackPadding1;
    s16 stackPadding2;
    s16 sp30[5] = { 1092, 1092, 2184, 1638, 1820 };

    player->unk_206 = 0;
    player->slopeAccel = 0;
    if ((player->unk_046 & 0x40) == 0x40) {
        func_80031F48(player, 100.0f);
    } else {
        if ((player->unk_000 & 0x4000) == 0x4000) {
            func_80031F48(player, 1.0f);
        } else {
            func_80031F48(player, 4.0f);
        }
        if (!(player->unk_000 & 0x4000)) {
            func_80031F48(player, 30.0f);
        }
    }
    if ((player->effect & 0x80) == 0x80) {
        player->unk_02C[1] -= sp30[player->unk_0B2];
        D_8018D920[arg1]   -= sp30[player->unk_0B2];
        stackPadding1 = (u16)D_8018D920[arg1] / (0x10000 / (0x168 / (sp30[player->unk_0B2] / 182)));
        if (stackPadding1 == 0) {
            player->unk_0B2--;
            if (player->unk_0B2 <= 0) {
                if (gModeSelection == BATTLE) {
                    func_8006B8B4(player, arg1);
                }
                func_8008C8C4(player, arg1);
            }
        }
    } else {
        player->unk_02C[1] += sp30[player->unk_0B2];
        D_8018D920[arg1]   -= sp30[player->unk_0B2];
        stackPadding2 = (u16)D_8018D920[arg1] / (0x10000 / (0x168 / (sp30[player->unk_0B2] / 182)));
        if (stackPadding2 == 0) {
            player->unk_0B2--;
            if (player->unk_0B2 <= 0) {
                func_8008C8C4(player, arg1);
                if (gModeSelection == BATTLE) {
                    func_8006B8B4(player, arg1);
                }
            }
        }
    }
    if ((gIsPlayerTripleA[arg1] == TRUE) && ((player->unk_000 & 0x4000) == 0x4000)) {
        D_80165480[arg1] = 0x00000078;
        if (player->currentSpeed <= 90.0f) {
            player->currentSpeed = 90.0f;
        }
    }
}

void func_8008CDC0(Player* player, s8 arg1) {
    func_8008C354(player, arg1);

    player->statusEffects &= ~1;
    player->unk_0B4 = 0;
    player->unk_0B8 = 3.0f;
    player->unk_0AC = 1;
    player->effect &= ~0x10;
    
    if (((player->unk_07C >> 0x10) >= 0x14) || ((player->unk_07C >> 0x10) < -0x13) || (((player->unk_094 / 18.0f) * 216.0f) <= 30.0f) || ((player->effect & 8) != 0) || (((player->unk_000 & 0x4000) == 0) && ((player->effect & 0x1000) == 0))) {
        func_8008C73C(player, arg1);
    }
    else {
        player->effect |= 0x800;
    }
}

void func_8008CEB0(Player *player, s8 arg1) {
    f32 var_f0;
    s16 var_v1;
    s16 var_a3;
    s16 temp_f16;

    var_f0 = player->unk_0B8;
    var_v1 = player->unk_0B4;
    var_a3 = player->unk_0AC;
    var_v1++;
    temp_f16 = (var_v1 * var_f0) - (0.2 * (var_v1 * var_v1));
    if ((var_v1 != 0) && (temp_f16 < 0)) {
        var_v1 = 0;
        var_a3 = -var_a3;
        var_f0 *= 0.8;
        if ((player->effect & 1) == 1) {
            player->effect |= 0x40000;
        }
        if (var_f0 <= 1.0f) {
            player->effect &= ~0x800;
            if ((player->effect & 0x40000) != 0x40000) {
                func_8008C73C(player, arg1);
                var_v1 = 0;
            } else {
                player->unk_0B6 |= 0x20;
                player->effect &= ~0x40000;
                if ((player->unk_000 & 0x4000) == 0x4000)
                {
                    func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008008);
                    var_v1 = 0;
                }
            }
        }
    }
    temp_f16 *= var_a3;
    if ((temp_f16 <= 0) && (var_a3 == 1)) {
        temp_f16 = 0;
    }
    if ((temp_f16 >= 0) && (var_a3 == -1)) {
        temp_f16 = 0;
    }
    player->unk_078 += temp_f16 * 0x12;
    player->unk_0B8 = var_f0;
    player->unk_0B4 = var_v1;
    player->unk_0AC = var_a3;
    if (player->effect & 8) {
        func_8008C73C(player, arg1);
        player->effect &= ~0x800;
    }
}

void func_8008D0E4(Player* player, UNUSED s8 arg1) {
    player->effect &= ~0x800;
}

void func_8008D0FC(Player *player, s8 arg1) {
    func_8008C354(player, arg1);

    player->statusEffects &= ~0x80;
    player->unk_0B4 = 0;
    player->unk_0B8 = 2.0f;
    player->unk_0AC = 1;
    player->effect &= ~0x10;
    player->unk_044 |= 0x4000;
}

void func_8008D170(Player *player, s8 arg1) {
    f32 var_f0;
    s16 var_v1;
    s16 var_a3;
    s16 temp_f16;

    var_f0 = player->unk_0B8;
    var_v1 = player->unk_0B4;
    var_a3 = player->unk_0AC;
    var_v1++;
    temp_f16 = (var_v1 * var_f0) - (0.1 * (var_v1 * var_v1));
    if ((var_v1 != 0) && (temp_f16 < 0)) {
        var_v1 = 0;
        var_a3 = -var_a3;
        var_f0 *= 0.9;
        if (((player->effect & 1) == 1) || !(player->unk_044 & 0x20)) {
            player->effect |= 0x40000;
        }
        if (var_f0 <= 1.3) {
            player->unk_044 &= ~0x4000;
            if ((player->effect & 0x40000) != 0x40000) {
                func_8008C73C(player, arg1);
                var_v1 = 0;
            } else {
                player->unk_0B6 |= 0x20;
                player->effect &= ~0x40000;
                if ((player->unk_000 & 0x4000) == 0x4000)
                {
                    func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008008);
                    var_v1 = 0;
                }
            }
        }
    }
    temp_f16 *= var_a3;
    if ((temp_f16 <= 0) && (var_a3 == 1)) {
        temp_f16 = 0;
    }
    if ((temp_f16 >= 0) && (var_a3 == -1)) {
        temp_f16 = 0;
    }
    player->unk_078 += temp_f16 * 0x14;
    player->unk_0B8 = var_f0;
    player->unk_0B4 = var_v1;
    player->unk_0AC = var_a3;
    if (player->effect & 8) {
        func_8008C73C(player, arg1);
        player->unk_044 &= ~0x4000;
    }
}

void func_8008D3B0(Player* player, UNUSED s8 arg1) {
    player->unk_044 &= 0xBFFF;
}

void func_8008D3C4(Player* player, s8 arg1) {

    func_8008C354(player, arg1);

    player->effect |= 0x2000;
    player->statusEffects &= ~0x200;
    player->unk_DB4.unk0 = 0;
    player->unk_DB4.unk8 = 8.0f;
    
    if (D_8015F890 != 1) {
        if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) != 0x100)) {
            func_800C9250(arg1);
            func_800C9060(arg1, 0x1900A40B);
        }
    } else {
        if (player == gPlayerOne) {
            func_800C9250(arg1);
            func_800C9060(arg1, 0x1900A40B);
        }
    }

    player->boostTimer = 0x50;
}

void func_8008D4B4(Player* player) {
    player->currentSpeed = (f32) player->topSpeed;
    if ( player->boostTimer > 0) {
        --player->boostTimer;
    }

    if (player->boostTimer != 0) {
        move_f32_towards(&player->boostPower, 400.0f, 0.5f);
    } else {
        move_f32_towards(&player->boostPower, 0.0f, 0.1f);
    }
    
    if (player->boostPower <= 1.0f) {
        player->effect &= ~0x2000;
    }
}

void func_8008D554(Player* player) {
    player->effect &= ~0x2000;
    player->boostPower = 0.0f;
}

void func_8008D570(Player *player, s8 arg1) {
    func_8008C354(player, arg1);

    player->unk_0AE = player->unk_02C[1];
    player->effect |= 0x80000;
    player->effect &= ~0x10;
    player->statusEffects &= ~0x1000;
    player->kartHopJerk = D_800E3730[player->characterId];
    player->kartHopAcceleration = 0.0f;
    player->kartHopVelocity = (f32) D_800E3710[player->characterId];
    player->unk_0B2 = 1;
    player->unk_0C0 = 0;
    player->unk_07C = 0;
    player->unk_078 = 0;
    D_8018D920[arg1] = 0;

    if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) != 0x100)) {
        func_800C9060(arg1, 0x19008002);
    }

    if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) != 0x100)) {
        func_800C90F4(arg1, (player->characterId * 0x10) + 0x2900800C);
    }
}

void func_8008D698(Player* player, s8 arg1) {
    s16 temp;
 
    if (player->unk_0B2 == 0) {
        player->unk_02C[1] = player->unk_0AE;
        temp = 0;
    } else {
        player->unk_02C[1] -= 1820;
        D_8018D920[arg1] -= 1820;
        temp = ((u16) D_8018D920[arg1] / 1820);
    }
    if (temp == 0) {
        --player->unk_0B2;
        if (player->unk_0B2 <= 0) {
            player->unk_0B2 = 0;
        }
        if ((player->unk_0B2 == 0) && ((player->effect & 8) != 8)) {
            func_8008D760(player);
        }
    }
}

void func_8008D760(Player* player) {
    player->unk_0A8 = 0;
    player->unk_07C = 0;
    player->unk_0C0 = 0;
    player->unk_02C[1] = player->unk_0AE;
    player->effect &= 0xFFF7FFFF;
    player->kartGravity = gKartGravityTable[player->characterId];
    player->unk_000 &= 0xFF7F;
}

void func_8008D7B0(Player* player, s8 arg1) {
    func_8008C354(player, arg1);

    player->unk_0AE = player->unk_02C[1];
    player->effect |= 0x800000;
    player->effect &= ~0x10;
    player->statusEffects &= 0xFFFDFFFF;
    player->kartHopJerk = D_800E3770[player->characterId];
    player->kartHopAcceleration = 0.0f;
    player->kartHopVelocity = D_800E3750[player->characterId];
    D_8018D920[arg1] = 0;
    player->unk_0B2 = 4;
    player->unk_0C0 = 0;
    player->unk_07C = 0;
    player->unk_078 = 0;

    if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) != 0x100)) {
        func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008003);
    }
}

void func_8008D8B4(Player* player, s8 arg1) {
    s16 temp;

    if (player->unk_0B2 == 0) {
        player->unk_02C[1] = player->unk_0AE;
        temp = 0;
    } else {
        player->unk_02C[1] -= 1820;
        D_8018D920[arg1] -= 1820;
        temp = ((u16) (D_8018D920[arg1]) / 1820);
    }
    if (temp == 0) {
        --player->unk_0B2;
        if (player->unk_0B2 <= 0) {
            player->unk_0B2 = 0;
        }
        if ((player->unk_0B2 == 0) && ((player->effect & 8) != 8)) {
            func_8008D97C(player);
        }
    }
}

void func_8008D97C(Player *player) {
    player->unk_0A8 = 0;
    player->unk_07C = 0;
    player->unk_0C0 = 0;
    player->unk_02C[1] = player->unk_0AE;
    player->effect &= 0xFF7FFFFF;
    player->kartGravity = gKartGravityTable[player->characterId];
}

void func_8008D9C0(Player* player) {
    player->unk_DA0 += 8.0f;
    if (player->unk_DA0 >= 140.0f) {
        player->unk_DA0 = 140.0f;
    }

    if (player->unk_D98 == 1) {
        player->unk_D9C += player->unk_DA0;
        if (2002.0f <= player->unk_D9C) {
            player->unk_DA0 = 10.0f;
            player->unk_D98 *= -1;
        }
    }
    if (player->unk_D98 == -1) {
        player->unk_D9C -= player->unk_DA0;
        if (player->unk_D9C <= -2002.0f) {
            player->unk_DA0 = 10.0f;
            player->unk_D98 *= -1;
        }
    }
}

void func_8008DABC(Player *player, s8 arg1) {
    func_8008C354(player, arg1);

    if ((player->effect & 0x4000000) == 0) {
        player->unk_DB4.unk2 = 0;
        player->unk_238 = 0;
        player->unk_DB4.unk10 = 4.5f;
        D_8018D990[arg1] = 0;
        player->effect &= ~0x08000010;
        D_80165190[0][arg1] = 1;
        D_80165190[1][arg1] = 1;
        D_80165190[2][arg1] = 1;
        D_80165190[3][arg1] = 1;
        player->unk_D98 = 1;
        player->unk_D9C = 0.0f;
        player->unk_DA0 = 65.0f;

        if ((player->statusEffects & 0x100) != 0) {
            player->unk_046 |= 0x80;
        }

        if (((player->unk_000 & 0x4000) != 0) && ((player->effect & 0x04000000) == 0)) {
            func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008005);
        }

        player->effect |= 0x04000000;
        if (((player->unk_000) & 0x1000) != 0) {
            func_800098FC(arg1, player);
        }
    }
}

void func_8008DC08(Player* player, s8 arg1) {
    player->unk_0C2 = 0;
    player->unk_0A8 = 0;
    player->unk_07C = 0;
    player->unk_0C0 = 0;
    player->unk_08C = 0.0f;
    player->currentSpeed = 0.0f;
    if ((player->unk_110.unk3C[2] >= 600.0f) || ((player->effect & 0x1000) != 0)) { D_8018D990[arg1] = 3; } // placed block on same line to match

    switch (D_8018D990[arg1]) { 
    case 0:
        player->unk_DB4.unk10 = 4.5f;
        if (player->unk_238 < 0x3D) {
            ++player->unk_238;
        }

        if ((player->unk_046 & 0x80) != 0) {
            if ((player->statusEffects & 0x100) == 0) {
                D_8018D990[arg1] = 1;
                player->unk_238 = 0;
                if ((player->unk_000 & 0x4000) != 0) {
                    func_800C9060(arg1, 0x1901904B);
                    break;
                }
            }
        } else {
            ++player->unk_238;
            if (player->unk_238 >= 0x1E) {
                D_8018D990[arg1] = 1;
                player->unk_238 = 0;
                if ((player->unk_000 & 0x4000) != 0) {
                    func_800C9060(arg1, 0x1901904B);
                    break;
                }
            }
            break;
        }

        break;
    case 1:
        player->unk_DB4.unk10 = 4.5f;
        player->pos[1] += 0.13;
        ++player->unk_238;
        
        if ((player->unk_046 & 0x80) != 0) {
            if (player->unk_238 >= 0x32) {
                D_8018D990[arg1] = 2;
                player->unk_238 = 0;
                player->unk_046 &= 0xFF7F;
            }
        } else if (player->unk_238 >= 0x50) {
            D_8018D990[arg1] = 2;
            player->unk_238 = 0;
        }

        player->unk_DA0 += 6.0f;
        if (player->unk_DA0 >= 90.0f) {
            player->unk_DA0 = 90.0f;
        }

        player->unk_D9C += player->unk_DA0;
        if (3458.0f <= player->unk_D9C) {
            player->unk_DA0 = 0.0f;
            break;
        }
        break;
    case 2:
        ++player->unk_238;
        if (player->unk_238 >= 0x259) {
            D_8018D990[arg1] = 3;
            player->unk_238 = 0;
        }

        if (player->unk_110.unk3C[2] >= 600.0f) {
            D_8018D990[arg1] = 3;
        }

        player->unk_DB4.unk10 = 4.5f;
        player->pos[1] -= 0.085;

        if ((player->effect & 8) != 8) {
            D_8018D990[arg1] = 3;
            player->unk_238 = 0;
        }

        func_8008D9C0(player);
        break;
    case 3:
        player->unk_DB4.unk10 = 3.0f;
        player->effect &= ~0x04000000;
        player->unk_DB4.unk2 = 0;
        player->effect |= 0x08000000;
        player->size = 1.0f;
        player->boundingBoxSize = gKartBoundingBoxSizeTable[player->characterId];
        D_80165190[0][arg1] = 1;
        D_80165190[1][arg1] = 1;
        D_80165190[2][arg1] = 1;
        D_80165190[3][arg1] = 1;

        if ((player->unk_000 & 0x4000) != 0) {
            func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008008);
        }
        break;
    }
}

void func_8008DF98(Player* player, s8 arg1) {
    func_8008C354(player, arg1);

    player->statusEffects &= ~HIT_ROTATING_EFFECT;
    player->effect |= 0x40020000;
    player->effect &= ~0x10;
    player->unk_08C *= 0.6;
    player->unk_0B0 = 0;
    player->size = 1.0f;
    D_8018D930[arg1] = gCourseTimer;
    player->unk_0AE = player->unk_02C[1];
    player->unk_0B2 = 2;
    player->unk_0C0 = 0;
    player->unk_07C = 0;    
    player->unk_078 = 0;
    
    D_80165190[0][arg1] = 1;
    D_80165190[1][arg1] = 1;
    D_80165190[2][arg1] = 1;
    D_80165190[3][arg1] = 1;

    D_8018D920[arg1] = 0;

    if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) != 0x100)) {
        func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008003);
    } else {
        func_800098FC(arg1, player);
    }
    if (gModeSelection == BATTLE) {
        func_8006B8B4(player, arg1);
    }
}

void func_8008E118(Player *player, s8 arg1) {
    s16 test;
    if (((player->effect & 0x8000) == 0x8000) && ((player->effect & 0x04000000) != 0x04000000)) {
        player->effect &= ~0x20000;
        player->unk_0A8 = 0;
        player->unk_07C = 0;
        player->unk_0C0 = 0;
        player->unk_02C[1] = player->unk_0AE;
        func_8008E3C0(player, arg1);
        D_80165190[0][arg1] = 1;
        D_80165190[1][arg1] = 1;
        D_80165190[2][arg1] = 1;
        D_80165190[3][arg1] = 1;
        func_8008DABC(player, arg1);
    } else if ((player->effect & 0x20000) == 0x20000) {
        player->unk_02C[1] -= 0x5B0;
        D_8018D920[arg1]   -= 0x5B0;
        test = (u16)D_8018D920[arg1] / 1456;
        if (test == 0) {
            player->unk_0B2--;
            if (player->unk_0B2 <= 0) {
                player->unk_0A8 = 0;
                player->effect &= ~0x20000;
                player->unk_07C = 0;
                player->unk_0C0 = 0;
                player->unk_02C[1] = player->unk_0AE;
                D_80165190[0][arg1] = 1;
                D_80165190[1][arg1] = 1;
                D_80165190[2][arg1] = 1;
                D_80165190[3][arg1] = 1;
            }
        }
        func_80031F48(player, 1.0f);
    } else {
        player->unk_0B0 += 1;
        player->unk_08C = (f32) ((f64) player->unk_08C * 0.6);
        if ((player->unk_0B0 == 1) && (player->unk_000 & 0x4000)) {
            func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008005);
        }
        if ((player->unk_0B0 >= 0) && (player->unk_0B0 < 0x1CC)) {
            move_f32_towards(&player->size, 0.7f, 0.1f);
            move_f32_towards(&player->boundingBoxSize, (f32) ((f64) gKartBoundingBoxSizeTable[player->characterId] * 0.9), 0.1f);
        } else {
            func_8008E3C0(player, arg1);
            if (player->unk_000 & 0x4000) {
                func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008008);
            }
        }
    }
}

void func_8008E3C0(Player* player, UNUSED s8 arg1) {
    move_f32_towards(&player->size, 1.0f, 0.1f);
    move_f32_towards(&player->boundingBoxSize, gKartBoundingBoxSizeTable[player->characterId], 0.1f);
    
    player->effect &= ~LIGHTNING_EFFECT;
    player->size = 1.0f;
    player->boundingBoxSize = gKartBoundingBoxSizeTable[player->characterId];
    player->unk_DB4.unk10 = 3.0f;
    player->unk_DB4.unk2 = 0;
    player->effect |= 0x08000000;
    
    if ((player->effect & 0x20000) == 0x20000) {
        player->unk_02C[1] = player->unk_0AE;
    }
    
    player->effect &= ~0x20000;
}

void func_8008E4A4(Player* player, s8 arg1) {
    player->unk_206 = 0;
    player->slopeAccel = 0;
    player->unk_0C0 = 0;
    player->unk_07C = 0;
    player->unk_0C2 = 0xF;
    player->unk_042 += 0xAAA;
    player->unk_08C = 0.0f;
    player->currentSpeed = 0.0f;
    player->unk_034[0] = 0.0f;
    player->unk_034[2] = 0.0f;
    player->effect &= ~0xC0;

    if ((player->effect & 8) != 8) {
        ++player->unk_0E0;
    }

    if (player->unk_0E0 == 3) {
        player->effect &= ~0x01000000;
        player->unk_0A8 = 0;
        player->unk_236 = 0;
        D_80165190[0][arg1] = 1;
        D_80165190[1][arg1] = 1;
        D_80165190[2][arg1] = 1;
        D_80165190[3][arg1] = 1;
        player->unk_042 = 0;
        player->unk_000 &= ~0x80;

        if ((gIsPlayerTripleA[arg1] == TRUE) && ((player->unk_000 & 0x4000) == 0x4000)) {
            player->currentSpeed += 100.0f;
        }
        if (gModeSelection == BATTLE) {
            func_8006B8B4(player, arg1);
        }
    } else {
        player->unk_0A8 += 0x80;
        if (player->unk_0A8 >= 0x2000) {
            player->unk_0A8 = 0;
            --player->unk_236;
            if (player->unk_236 == 0) {
                player->effect &= ~0x01000000;
                player->unk_236 = 0;
                D_80165190[0][arg1] = 1;
                D_80165190[1][arg1] = 1;
                D_80165190[2][arg1] = 1;
                D_80165190[3][arg1] = 1;
                player->unk_042 = 0;

                if (gModeSelection == BATTLE) {
                    func_8006B8B4(player, arg1);
                }
                if ((gIsPlayerTripleA[arg1] == TRUE) && ((player->unk_000 & 0x4000) == 0x4000)) {
                    player->currentSpeed += 100.0f;
                }

                player->unk_000 &= ~0x80;
            }
        }
    }
}

void func_8008E6C0(Player *player, s8 arg1)
{
    func_8008C354(player, arg1);
    func_8008C310(player);

    player->unk_0A8 = 0;
    player->effect |= 0x01000000;
    player->effect &= ~0x10;
    player->kartHopJerk = 0.0f;
    player->kartHopAcceleration = 0.0f;
    player->kartHopVelocity = 0.0f;
    player->kartHopJerk = D_800E3730[player->characterId];
    player->kartHopVelocity = D_800E3710[player->characterId];
    player->unk_236 = 4;
    player->unk_042 = 0;
    player->unk_0E0 = 0;

    if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) != 0x100)) {
        if (((gModeSelection == VERSUS) && ((player->unk_000 & 0x1000) != 0)) && (!gDemoMode)) {
            func_800CA24C(arg1);
        }

        if (1) {
        }

        func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008005);
        if (((gModeSelection == VERSUS) && ((player->unk_000 & 0x1000) != 0)) && (!gDemoMode)) {
            func_800CA24C(arg1);
        }
        func_800C9060(arg1, SOUND_ACTION_EXPLOSION);
    } else {
        func_800098FC(arg1, player);
    }

    player->statusEffects &= ~0x00480000;
    player->unk_0B6 |= 0x40;
    D_80165480[arg1] = 0;
    gIsPlayerTripleA[arg1] = FALSE;
    D_80165440[arg1] = 0;
    D_80165420[arg1] = 0;
}

void func_8008E884(Player* player, s8 arg1) {
    player->effect &= ~0x01000000;
    player->unk_0A8 = 0;
    player->unk_236 = 0;
    D_80165190[0][arg1] = 1;
    D_80165190[1][arg1] = 1;
    D_80165190[2][arg1] = 1;
    D_80165190[3][arg1] = 1;
    player->unk_042 = 0;
}

void func_8008E8D8(Player *player, s8 arg1) {
    player->unk_206 = 0;
    player->slopeAccel = 0;
    player->unk_0C0 = 0;
    player->unk_07C = 0;
    player->unk_0C2 = 0xF;
    player->unk_042 += 0xAAA;
    player->unk_08C /= 2;
    player->currentSpeed = 0.0f;
    player->effect &= ~0xC0;

    if ((player->effect & 8) != 8) {
        ++player->unk_0E0;
    }

    if (player->unk_0E0 == 4) {
        player->effect &= ~0x02000000;
        player->unk_0A8 = 0;
        player->unk_236 = 0;
        D_80165190[3][arg1] = 1;
        D_80165190[0][arg1] = 1;
        D_80165190[1][arg1] = 1;
        D_80165190[2][arg1] = 1;
        player->unk_042 = 0;

        if ((gIsPlayerTripleA[arg1] == TRUE) && ((player->unk_000 & 0x4000) == 0x4000)) {
            player->currentSpeed += 100.0f;
        }

        if (gModeSelection == BATTLE) {
            func_8006B8B4(player, arg1);
        }
    } else {
        player->unk_0A8 = (s16)(player->unk_0A8 + 0x90);
        if (((s32)player->unk_0A8) >= 0x2000) {
            player->unk_0A8 = 0;
            --player->unk_236;
            if (player->unk_236 == 0) {
                player->effect &= ~0x02000000;
                player->unk_236 = 0;
                D_80165190[0][arg1] = 1;
                D_80165190[1][arg1] = 1;
                D_80165190[2][arg1] = 1;
                D_80165190[3][arg1] = 1;
                player->unk_042 = 0;
                if ((gIsPlayerTripleA[arg1] == TRUE) && ((player->unk_000 & 0x4000) == 0x4000)) {
                    player->currentSpeed += 100.0f;
                }

                if (gModeSelection == BATTLE) {
                    func_8006B8B4(player, arg1);
                }
            }
        }
    }
}

void func_8008EAE0(Player* player, s8 arg1) {
    func_8008C354(player, arg1);
    func_8008C310(player);

    player->unk_0A8 = 0;
    player->effect &= ~0x10;
    player->kartHopJerk = 0.0f;
    player->kartHopAcceleration = 0.0f;
    player->kartHopVelocity = 0.0f;
    player->kartHopJerk = D_800E3730[player->characterId];
    player->kartHopVelocity = D_800E3710[player->characterId];
    player->unk_236 = 4;
    player->unk_042 = 0;
    player->unk_0E0 = 0;
    
    if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) != 0x100)) {
        func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008005);
        func_800C9060(arg1, SOUND_ACTION_EXPLOSION);
    } else {
        func_800098FC(arg1, player);
    }
    
    player->effect |= 0x02000000;
    player->unk_0B6 |= 0x40;
    player->statusEffects &= ~0x01000002;

    D_80165480[arg1] = 0;
    gIsPlayerTripleA[arg1] = FALSE;
    D_80165440[arg1] = 0;
    D_80165420[arg1] = 0;
}

void func_8008EC34(Player* player, s8 arg1) {
    player->effect &= ~0x02000000;
    player->unk_0A8 = 0;
    player->unk_236 = 0;
    D_80165190[0][arg1] = 1;
    D_80165190[1][arg1] = 1;
    D_80165190[2][arg1] = 1;
    D_80165190[3][arg1] = 1;
    player->unk_042 = 0;
}

void func_8008EC88(Player* player, s8 arg1) {
    func_8008C354(player, arg1);

    player->effect |= 0x100000;
    player->statusEffects &= ~0x00800000;
    player->unk_DB4.unk0 = 0;
    player->unk_DB4.unk8 = 8.0f;
    if (D_8015F890 != 1) {
        if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) == 0)) {
            func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008001);
            func_800C9060(arg1, 0x1900A40B);
        }
    } else if (player == gPlayerOne) {
        func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008001);
        func_800C9060(arg1, 0x1900A40B);
    }
    player->unk_044 &= ~0x1;
    player->effect &= ~0x20;
}

void func_8008EDC0(Player* player) {
    f64 temp_f0;

    player->currentSpeed = player->topSpeed;
    if ((u16) player->unk_256 > 0) {
        player->currentSpeed = 0.0f;
    }
    if ((player->unk_0F8 != 0xFE) && ((player->effect & 8) != 8)) {
        move_f32_towards(&player->boostPower, 0, 1.0f);
    } else {
        move_f32_towards(&player->boostPower, 400.0f, 0.01f);
    }
    if (player->boostPower <= 1.0f) {
        player->effect &= ~0x00100000;
        player->boostPower = 0.0f;
        if (player->unk_0C2 >= 0x33) {
            temp_f0 = 0.7;
            player->currentSpeed = (player->currentSpeed * temp_f0);
            player->unk_08C = (player->unk_08C * temp_f0);
        }
    }
}

void func_8008EEC4(Player* player) {
    player->effect &= ~0x00100000;
    player->boostPower = 0.0f;
}

void func_8008EEE4(Player* player, s8 arg1) {
    func_8008C354(player, arg1);

    player->effect |= 0x4;
    player->statusEffects &= ~0x8000;

    if (D_8015F890 != 1) {
        if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) == 0)) {
            func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008001);
            func_800C9060(arg1, 0x1900A40B);
        }
    } else if (player == gPlayerOne) {
        func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008001);
        func_800C9060(arg1, 0x1900A40B);
    }

    player->unk_044 &= ~0x1;
    player->effect &= ~0x20;
}

void func_8008F008(Player* player) {
    player->currentSpeed = gTopSpeedTable[0][player->characterId];

    if ((player->unk_0F8 != 0xFC) && ((player->effect & 8) != 8)) {
        move_f32_towards(&player->boostPower, 0, 1.0f);
    } else {
        move_f32_towards(&player->boostPower, 300.0f, 0.1f);
    }
    
    if (player->boostPower <= 1.0f) {
        player->effect &= ~0x4;
        player->boostPower = 0.0f;
        player->currentSpeed /= 2;
        player->unk_08C /= 2;
    }
}

void func_8008F0E8(Player* player) {
    player->effect &= ~4;
    player->boostPower = 0.0f;
}

void func_8008F104(Player* player, s8 arg1) {
    func_8008C354(player, arg1);

    player->unk_0AE = player->unk_02C[1];
    player->unk_0B2 = 2;
    player->unk_0C0 = 0;
    player->unk_07C = 0;
    player->effect |= 0x4000;   
    player->unk_078 = 0;
    D_8018D920[arg1] = -0x8000;
    
    if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) != 0x100)) {
        func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008003);
    }
}

void func_8008F1B8(Player* player, s8 arg1) {
    s16 temp;

    player->unk_08C = (player->unk_210 * 0.05);
    if (player->unk_0B2 < 0) {
        if ((player->unk_044 & 0x80) == 0x80) {
            player->unk_02C[1] += 182;
            D_8018D920[arg1] += 182;

            temp = ((u16) D_8018D920[arg1] / 182);
            if (temp == 180) {
                player->effect &= ~0x4000;
                player->unk_000 &= ~0x80;
                player->currentSpeed /= 3.0f;
            }
        } else {

            player->unk_02C[1] -= 182;
            D_8018D920[arg1] -= 182;
            temp = ((u16) D_8018D920[arg1] / 182);
            if (temp == 180) {
                player->effect &= ~0x4000;
                player->unk_000 &= ~0x80;
                player->currentSpeed /= 3.0f;
            }
        }
    } else {
        if ((player->unk_0B2 & 1) != 0) {
            player->unk_02C[1] -= 364;
            D_8018D920[arg1] -= 364;
            temp = ((u16) D_8018D920[arg1] / 364);
            if (temp < 71) {
                --player->unk_0B2;
            }
            player->unk_044 |= 0x80;
            player->unk_044 &= ~0x40;
            return;
        }
        player->unk_02C[1] += 364;
        D_8018D920[arg1] += 364;
        temp = ((u16) D_8018D920[arg1] / 364);
        if (temp >= 110) {
            --player->unk_0B2;
        }
        player->unk_044 |= 0x40;
        player->unk_044 &= ~0x80;
    }
}

void func_8008F3E0(Player* player) {
    player->effect &= ~0x4000;
}

void func_8008F3F4(Player* player, UNUSED s8 arg1) {
    player->unk_0A8 += 0x80;
    player->unk_042 += 0x71C;
    player->unk_07C = 0;
    player->currentSpeed = 0.0f;
    player->unk_08C /= 2;
    if (player->unk_0A8 >= 0x2000) {
        player->unk_0A8 = 0;
        --player->unk_236;
        if (player->unk_236 == 0) {
            player->effect &= ~0x00010000;
            func_80090778(player);
            func_80090868(player);
        }
    }
}

void func_8008F494(Player* player, s8 arg1) {
    if ((((player->effect & 0x80) != 0) ||
         ((player->effect & 0x40) != 0) ||
         ((player->effect & 0x01000000)) ||
         ((player->effect & 0x02000000)) ||
         ((player->effect & 0x400) != 0)) && (gModeSelection == BATTLE)) {
        player->unk_044 |= 0x8000;
    }

    func_8008C354(player, arg1);
    func_8008F86C(player, arg1);
 
    player->unk_0A8 = 0;
    player->effect |= 0x10000;
    player->effect &= ~0x10;
    player->unk_236 = 0x1E;
    player->unk_042 = 0;
    
    if (((player->unk_000 & 0x4000) != 0) &&
        ((player->unk_000 & 0x100) == 0) &&
        ((player->unk_0CA & 2) == 0) &&
        ((player->unk_0DE & 1) == 0) &&
        ((player->unk_0DE & 2) == 0)) {
        func_800C90F4(arg1, (player->characterId * 0x10) + 0x29008004);
    }
}

void func_8008F5A4(Player* player, s8 arg1) {

    if ((player->unk_044 & 0x8000) != 0) {
        func_8006B8B4(player, arg1);
        player->unk_044 &= ~0x8000;
    }
    
    player->unk_206 = 0;
    player->slopeAccel = 0;
    player->effect &= ~0x10000;
    player->unk_0A8 = 0;
    player->unk_0C0 = 0;
    player->unk_07C = 0;
    player->unk_236 = 0;
    player->unk_078 = 0;
    player->currentSpeed = 0.0f;

    D_80165190[0][arg1] = 1;
    D_80165190[1][arg1] = 1;
    D_80165190[2][arg1] = 1;
    D_80165190[3][arg1] = 1;
    player->unk_042 = 0;
}

void func_8008F650(Player* player, s8 arg1) {
    if (((s32) gCourseTimer - D_8018D930[arg1]) >= 9) {
        D_8018D900[arg1] = 1;

        if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) != 0x100)) {
            if (D_8018D900[arg1] == 1) {
                func_800CA730(arg1);
                D_8018D900[arg1] = 0;
            }
        } else if (D_8018D900[arg1] == 1) {
            func_800CAACC((u8)arg1);
            D_8018D900[arg1] = 0;
        }
    }

    if (((s32) gCourseTimer - D_8018D930[arg1]) >= 0xA) {
        player->effect &= ~0x200;
    }
}

// Star item
void func_8008F778(Player* player, s8 arg1) {
    func_8008C354(player, arg1);

    player->effect |= 0x200;
    player->statusEffects &= ~0x2000;
    D_8018D930[arg1] = gCourseTimer;
    D_8018D900[arg1] = 1;

    if (((player->unk_000 & PLAYER_HUMAN) == PLAYER_HUMAN) && ((player->unk_000 & PLAYER_INVISIBLE_OR_BOMB) != PLAYER_INVISIBLE_OR_BOMB)) {
        if (D_8018D900[arg1] == 1) {
            func_800CA59C(arg1);
            D_8018D900[arg1] = 2;
        }
    // This may be in charge of ending the star sound. Still unknown though.
    } else if (D_8018D900[arg1] == 1) {
        func_800CA984(arg1);
        D_8018D900[arg1] = 2;
    }
}

void func_8008F86C(Player* player, s8 arg1) {
    player->effect &= ~0x200;
    if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x100) != 0x100)) {
        func_800CA730(arg1);
        return;
    }
    func_800CAACC(arg1);
}

void func_8008F8DC(Player* arg0, s8 arg1) {
    s32 tmp;
    tmp = ((s32) gCourseTimer) - D_8018D950[arg1];
    if (tmp < 7) {
        arg0->unk_0C6 -= 2;
  
        if (arg0->unk_0C6 < 0x61) {
            arg0->unk_0C6 = 0x60;
        }
        D_8018D970[arg1] -= 2;
        if (D_8018D970[arg1] <= 0) {
            D_8018D970[arg1] = 0;
        }
    } else {
        arg0->unk_0C6 += 4;
        if (arg0->unk_0C6 >= 0xF0) {
            arg0->unk_0C6 = 0xFF;
            D_8018D970[arg1] = 0xFF;
            arg0->effect &= ~0x80000000;
            if ((arg0->unk_000 & 0x4000) != 0) {
                func_800CB064(arg1);
            }
        }

        D_8018D970[arg1] += 8;
        if (D_8018D970[arg1] >= 0xF0) {
            D_8018D970[arg1] = 0xFF;
            arg0->unk_0C6 = 0xFF;
            arg0->effect &= ~0x80000000;
            if ((arg0->unk_000 & 0x4000) != 0) {
                func_800CB064(arg1);
            }
        }
    }
}

void func_8008FA38(Player* player, s8 arg1) {
    s16 temp_v1;

    if ((player->unk_000 & 0x4000) != 0) {
        player->unk_044 |= 0x200;
      
        for (temp_v1 = 0; temp_v1 < 10; ++temp_v1) {
            player->unk_258[temp_v1].unk_01C = 0;
            player->unk_258[temp_v1].unk_01E = 0;
            player->unk_258[temp_v1].unk_012 = 0;
        }
    }

    func_8008C354(player, arg1);

    player->effect |= 0x80000000;
    player->statusEffects &= ~0x800;
    D_8018D950[arg1] = gCourseTimer;
    D_8018D970[arg1] = 0xFF;

    if ((player->unk_000 & 0x4000) != 0) {
        func_800CAFC0(arg1);
    }
}

void func_8008FB30(Player* arg0, s8 arg1) {
    arg0->unk_0C6 += 8;
    if (arg0->unk_0C6 >= 0xF0) {
        arg0->unk_0C6 = 0xFF;
        D_8018D970[arg1] = 0xFF;

        arg0->effect &= ~0x80000000;
        if ((arg0->unk_000 & 0x4000) != 0) {
            func_800CB064(arg1);
        }
    }

    D_8018D970[arg1] += 0x10;
    if (D_8018D970[arg1] >= 0xE0) {
        D_8018D970[arg1] = 0xFF;
        arg0->unk_0C6 = 0xFF;
        arg0->effect &= ~0x80000000;
        if ((arg0->unk_000 & 0x4000) != 0) {
            func_800CB064(arg1);
        }
    }
}

void func_8008FC1C(Player* player) {
    s32 playerIndex;

    if ((player->unk_000 & 0x40) != 0) {
        playerIndex = get_player_index_for_player(player);
        player->unk_000 = 0x7000;
        func_80056A94(playerIndex);
    }
}

void func_8008FC64(Player* player, s8 arg1) {
    player->unk_0C6 -= 4;
    if (player->unk_0C6 < 5) {
        player->unk_0C6 = 0;
        player->statusEffects &= 0xFBFFFFFF;
        player->statusEffects |= 0x08000000;
        player->unk_000 |= 0x40;
        
        func_8008FDA8(player, arg1);
        func_800569F4(arg1);
    }
}

void func_8008FCDC(Player* player, s8 arg1) {
    player->unk_0C6 += 2;
    if (player->unk_0C6 >= 0xF0) {
        player->unk_0C6 = 0xFF;
        player->statusEffects &= ~0x08000000;
    }

    func_80056A40(arg1, (u32) player->unk_0C6);
}

void func_8008FD4C(Player* player, UNUSED s8 arg1) {
    s16 temp_v0;
    
    player->statusEffects |= 0x04000000;
    player->unk_044 |= 0x200;

    for (temp_v0 = 0; temp_v0 < 10; ++temp_v0) {
        player->unk_258[temp_v0].unk_01C = 0;
        player->unk_258[temp_v0].unk_01E = 0;
        player->unk_258[temp_v0].unk_012 = 0;
    }
}

void func_8008FDA8(Player* player, UNUSED s8 arg1) {
    s16 temp_v0;
    player->unk_044 |= 0x200;
    for (temp_v0 = 0; temp_v0 < 10; ++temp_v0) {
        player->unk_258[temp_v0].unk_01C = 0;
        player->unk_258[temp_v0].unk_01E = 0;
        player->unk_258[temp_v0].unk_012 = 0;
    }
}

void func_8008FDF4(Player* player, UNUSED s8 arg1) {
    func_8008C354(player, arg1);
    
    player->effect &= ~0x10;
    player->kartHopJerk =  D_800E37F0[player->characterId];
    player->kartHopAcceleration = 0.0f;
    player->kartHopVelocity = D_800E37D0[player->characterId];
    player->statusEffects &= ~0x00100000;
    player->effect |= 0x10000000;
}

void func_8008FE84(Player* player, UNUSED s8 arg1) {
    player->effect &= ~0x10;
    if ((player->effect & 8) != 8) {
        player->effect &= ~0x10000000;
        player->currentSpeed /= 2;
        player->unk_08C /= 2;
    }
}

void func_8008FEDC(Player* player, UNUSED s8 arg1) {
    player->effect &= ~0x10000000;
    player->kartHopJerk = 0.0f;
    player->kartHopVelocity = 0.0f;
    player->kartHopAcceleration = 0.0f;
}

void func_8008FF08(Player *player, s8 playerId) {
    if(player->nearestWaypointId){}
    switch (gCurrentCourseId) {
    case COURSE_BOWSER_CASTLE:
        if (((s16)gNearestWaypointByPlayerId[playerId] >= 0x235) && ((s16)gNearestWaypointByPlayerId[playerId] < 0x247)) {
            player->nearestWaypointId = 0x214;
        } else if (((s16)gNearestWaypointByPlayerId[playerId] >= 0x267) && ((s16)gNearestWaypointByPlayerId[playerId] < 0x277)) {
            player->nearestWaypointId = 0x25B;
        } else {
            player->nearestWaypointId = gNearestWaypointByPlayerId[playerId];
            if (player->nearestWaypointId < 0) {
                player->nearestWaypointId = gWaypointCountByPathIndex[0] + player->nearestWaypointId;
            }
        }
        break;
    case COURSE_BANSHEE_BOARDWALK:
        if (((s16)gNearestWaypointByPlayerId[playerId] >= 0x12C) && ((s16)gNearestWaypointByPlayerId[playerId] < 0x13C)) {
            player->nearestWaypointId = 0x12CU;
        } else {
            player->nearestWaypointId = gNearestWaypointByPlayerId[playerId];
            if (player->nearestWaypointId < 0) {
                player->nearestWaypointId = gWaypointCountByPathIndex[0] + player->nearestWaypointId;
            }
        }
        break;
    case COURSE_YOSHI_VALLEY:
    case COURSE_RAINBOW_ROAD:
        player->nearestWaypointId = D_80165320[playerId];
        break;
    case COURSE_FRAPPE_SNOWLAND:
        if (((s16)gNearestWaypointByPlayerId[playerId] >= 0xF0) && ((s16)gNearestWaypointByPlayerId[playerId] < 0x105)) {
            player->nearestWaypointId = 0xF0U;
        } else {
            player->nearestWaypointId = D_80165320[playerId];
            if (player->nearestWaypointId < 0) {
                player->nearestWaypointId = gWaypointCountByPathIndex[0] + player->nearestWaypointId;
            }
        }
        break;
    case COURSE_ROYAL_RACEWAY:
        if (((s16)gNearestWaypointByPlayerId[playerId] >= 0x258) && ((s16)gNearestWaypointByPlayerId[playerId] < 0x2A4)) {
            player->nearestWaypointId = 0x258U;
        } else {
            player->nearestWaypointId = D_80165320[playerId];
            if (player->nearestWaypointId < 0) {
                player->nearestWaypointId = gWaypointCountByPathIndex[0] + player->nearestWaypointId;
            }
        }
        break;
    case COURSE_DK_JUNGLE:
        if (((s16)gNearestWaypointByPlayerId[playerId] >= 0xB9) && ((s16)gNearestWaypointByPlayerId[playerId] < 0x119)) {
            player->nearestWaypointId = 0xB9U;
        } else {
            player->nearestWaypointId = gNearestWaypointByPlayerId[playerId];
            if (player->nearestWaypointId < 0) {
                player->nearestWaypointId = gWaypointCountByPathIndex[0] + player->nearestWaypointId;
            }
        }
        break;
    case COURSE_BLOCK_FORT:
    case COURSE_SKYSCRAPER:
    case COURSE_DOUBLE_DECK:
    case COURSE_BIG_DONUT:
        player->nearestWaypointId = 0U;
        break;
    default:
        player->nearestWaypointId = gNearestWaypointByPlayerId[playerId];
        if (player->nearestWaypointId < 0) {
            player->nearestWaypointId = gWaypointCountByPathIndex[0] + player->nearestWaypointId;
        }
        break;
    }
}

void func_80090178(Player *player, s8 playerId, Vec3f arg2, Vec3f arg3) {
    u16 test;
    struct TrackWayPoint *temp_v1;
    f32 spF8[4] = {   0.0f,    0.0f, -700.0f, 700.0f };
    f32 spE8[4] = { 700.0f, -700.0f,    0.0f,   0.0f };
    f32 spD8[4] = {   0.0f,    0.0f, -650.0f, 650.0f };
    f32 spC8[4] = { 650.0f, -650.0f,    0.0f,   0.0f };
    f32 spB8[4] = {   0.0f,    0.0f, -400.0f, 400.0f };
    f32 spA8[4] = { 400.0f, -400.0f,    0.0f,   0.0f };
    f32 sp98[4] = {   0.0f,    0.0f, -350.0f, 350.0f };
    f32 sp88[4] = { 350.0f, -350.0f,    0.0f,   0.0f };
    f32 sp78[4] = {   0.0f,    0.0f, -675.0f, 675.0f };
    f32 sp68[4] = { 675.0f, -675.0f,    0.0f,   0.0f };
    f32 sp58[4] = {   0.0f,    0.0f, -550.0f, 550.0f };
    f32 sp48[4] = { 550.0f, -550.0f,    0.0f,   0.0f };
    f32 sp38[4] = {   0.0f,    0.0f, -575.0f, 575.0f };
    f32 sp28[4] = { 575.0f, -575.0f,    0.0f,   0.0f };
    f32 sp18[4] = {  10.0f,  -10.0f, -575.0f, 575.0f };
    f32 sp08[4] = { 575.0f, -575.0f,   10.0f, -10.0f };

    switch (gCurrentCourseId) {
    case COURSE_YOSHI_VALLEY:
        test = player->nearestWaypointId;
        temp_v1 = &D_80164550[D_80165310[playerId]][test];
        arg2[0] = temp_v1->wayPointX;
        arg2[1] = temp_v1->wayPointY;
        arg2[2] = temp_v1->wayPointZ;
        temp_v1 = &D_80164550[D_80165310[playerId]][(player->nearestWaypointId + 5) % (gWaypointCountByPathIndex[D_80165310[playerId]] + 1)];
        arg3[0] = temp_v1->wayPointX;
        arg3[1] = temp_v1->wayPointY;
        arg3[2] = temp_v1->wayPointZ;
        break;
    case COURSE_BLOCK_FORT:
        arg2[0] = spF8[playerId];
        arg2[1] = 0.0f;
        arg2[2] = spE8[playerId];
        arg3[0] = spD8[playerId];
        arg3[1] = 0.0f;
        arg3[2] = spC8[playerId];
        break;
    case COURSE_SKYSCRAPER:
        arg2[0] = spB8[playerId];
        arg2[1] = 480.0f;
        arg2[2] = spA8[playerId];
        arg3[0] = sp98[playerId];
        arg3[1] = 480.0f;
        arg3[2] = sp88[playerId];
        break;
    case COURSE_DOUBLE_DECK:
        arg2[0] = sp78[playerId];
        arg2[1] = 0.0f;
        arg2[2] = sp68[playerId];
        arg3[0] = sp58[playerId];
        arg3[1] = 0.0f;
        arg3[2] = sp48[playerId];
        break;
    case COURSE_BIG_DONUT:
        arg2[0] = sp38[playerId];
        arg2[1] = 200.0f;
        arg2[2] = sp28[playerId];
        arg3[0] = sp18[playerId];
        arg3[1] = 200.0f;
        arg3[2] = sp08[playerId];
        break;
    default:
        test = player->nearestWaypointId;
        temp_v1 = &D_80164550[0][test];
        arg2[0] = temp_v1->wayPointX;
        arg2[1] = temp_v1->wayPointY;
        arg2[2] = temp_v1->wayPointZ;
        temp_v1 = &D_80164550[0][(player->nearestWaypointId + 5) % (gWaypointCountByPathIndex[0] + 1)];
        arg3[0] = temp_v1->wayPointX;
        arg3[1] = temp_v1->wayPointY;
        arg3[2] = temp_v1->wayPointZ;
        break;
    }
}

void func_80090778(Player* player) {
    s32 playerIndex = get_player_index_for_player(player);

    player->unk_078 = 0;
    player->unk_07C = 0;
    player->unk_0C0 = 0;
    player->unk_0CA |= 8;
    player->effect &= ~0x10;
    player->unk_222 = 0;
    player->unk_08C = 0.0f;

    func_8008C354(player, playerIndex);
    func_8008F86C(player, playerIndex);
 
    player->unk_DB4.unk0 = 0;
    player->unk_0C2 = 0;
    player->unk_DB4.unk8 = 0.0f;
    if ((player->effect & LIGHTNING_EFFECT) == LIGHTNING_EFFECT) {
        if ((player->effect & 0x20000) == 0x20000) {
            player->effect &= ~0x20000;
            player->unk_0A8 = 0;
            player->unk_07C = 0;
            player->unk_0C0 = 0;
            player->unk_02C[1] = player->unk_0AE;
        }
        func_8008E3C0(player, playerIndex);
    }
    player->effect &= ~0x20;
}

void func_80090868(Player* player) {
    s32 playerIndex;

    player->unk_078 = 0;
    player->unk_07C = 0;
    player->unk_0C0 = 0;
    player->unk_08C = 0.0f;
    playerIndex = get_player_index_for_player(player);

    if ((player->unk_0CA & 2) != 2) {
        player->unk_D98 = 1;
        player->unk_D9C = 0.0f;
        player->unk_DA0 = 0.5f;
        func_8008FF08(player, playerIndex);
        player->unk_222 = 0;
        player->unk_0CA |= 2;
        player->unk_0C8 = 0;
        if ((player->unk_0DE & 1) == 1) {
            if ((gCurrentCourseId == COURSE_BOWSER_CASTLE) || (gCurrentCourseId == COURSE_BIG_DONUT)) {
                player->unk_0CA |= 0x1000;
            } else {
                player->unk_0CA |= 0x2000;
            }

            if ((gCurrentCourseId == COURSE_SHERBET_LAND) || (gCurrentCourseId == COURSE_SKYSCRAPER) || (gCurrentCourseId == COURSE_RAINBOW_ROAD)) {
                player->unk_0CA &= ~0x3000;
            }
        }
    }
}

void func_80090970(Player *player, s8 arg1, s8 arg2) {
    s32 stackPadding0;
    s32 stackPadding1;
    Vec3f sp44;
    Vec3f sp38;
    struct TrackWayPoint *wayPoint;
    s32 stackPadding2;
    s32 stackPadding3;

    player->unk_0C2 = 0x000C;
    player->unk_078 = 0;
    player->unk_07C = 0;
    player->unk_0C0 = 0;
    player->unk_08C = 0.0f;
    func_8008C354(player, arg1);
    switch (player->unk_222) {
    case 0:
        if ((player->unk_0CA & 1) == 1) {
            if ((player->unk_0C8 < 0x3C) || ((player->unk_0CA & 2) != 2)) {
                player->unk_0C8++;
                if (player->unk_0C8 >= 0x3C) {
                    player->unk_0C8 = 0x003C;
                }
            } else {
                move_f32_towards(&player->pos[1], D_801652A0[arg1] + 100.0f, 0.012f);
                move_s16_towards(&player->unk_0CC[arg2], 0, 0.2f);
                if ((D_801652A0[arg1] + 40.0f) <= player->pos[1]) {
                    player->unk_222 = 1;
                    player->unk_0CA |= 4;
                    player->unk_0C6 = 0x00FF;
                }
            }
        } else if ((player->unk_0CA & 2) == 2) {
            move_f32_towards(&player->pos[1], player->unk_074 + 100.0f, 0.025f);
            move_s16_towards(&player->unk_0CC[arg2], 0, 0.2f);
            if ((player->unk_074 + 40.0f) <= player->pos[1]) {
                player->unk_222 = 1;
                player->unk_0CA |= 4;
                player->unk_0C6 = 0x00FF;
            }
        }
        if ((player->effect & 0x80000000) == 0x80000000) {
            func_8008FB30(player, arg1);
        }
        break;
    case 1:
        if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x1000) == 0)) {
            func_8009E088(arg1, 0xA);
        }
        if ((player->unk_0CA & 1) == 1) {
            move_f32_towards(&player->pos[1], D_801652A0[arg1] + 40.0f, 0.02f);
            player->unk_0C6 -= 8;
            if (player->unk_0C6 < 9) {
                player->unk_0C6 = 0;
                player->unk_222 = 2;
                player->unk_0CA &= ~0x0001;
            }
        } else {
            move_f32_towards(&player->pos[1], player->rotY + 40.0f, 0.02f);
            player->unk_0C6 -= 8;
            if (player->unk_0C6 < 9) {
                player->unk_0C6 = 0;
                player->unk_222 = 2;
            }
        }
        player->unk_0CA &= ~0x2000;
        break;
    case 2:
        func_80090178(player, arg1, sp44, sp38);
        // Fakematch found by Verti, who knows what's going on here
        player->unk_02C[1] = (u16) -get_angle_between_points(sp44, sp38) & 0xFFFF;
        player->pos[0] = sp44[0];
        player->pos[1] = sp44[1] + 40.0f;
        player->pos[2] = sp44[2];
        player->unk_222 = 3;
        break;
    case 3:
        D_80165330[arg1] = 0;
        if (((player->unk_000 & 0x4000) == 0x4000) && ((player->unk_000 & 0x1000) == 0)) {
            func_8009E020(arg1, 0x14);
        }
        func_80090178(player, arg1, sp44, sp38);
        player->pos[0] = sp44[0];
        player->pos[1] = sp44[1] + 40.0f;
        player->pos[2] = sp44[2];
        player->pos[2] = player->pos[2] + coss((arg1 * 0x1C70) - player->unk_02C[1]) * -5.0f;
        player->pos[0] = player->pos[0] + sins((arg1 * 0x1C70) - player->unk_02C[1]) * -5.0f;
        player->unk_0C6 += 8;
        if (player->unk_0C6 >= 0xF0) {
            player->unk_0C6 = 0x00FF;
            player->unk_222 = 4;
            player->unk_0CA &= ~0x0004;
            player->unk_0C8 = 0;
        }
        break;
    case 4:
        if ((player->unk_0C8 == 0x0096) || (player->unk_0C8 == 0x00C8) || (player->unk_0C8 == 0x00FA)) {
            player->pos[2] = player->pos[2] + coss(-player->unk_02C[1]) * -10.0f;
            player->pos[0] = player->pos[0] + sins(-player->unk_02C[1]) * -10.0f;
        }
        if (player->unk_0C8 == 0x00FC) {
            wayPoint = D_80164550[0];
            player->pos[0] = wayPoint->wayPointX;
            player->pos[1] = wayPoint->wayPointY;
            player->pos[2] = wayPoint->wayPointZ;
        }
        move_f32_towards(&player->pos[1], (player->unk_074 + player->boundingBoxSize) - 2.0f, 0.04f);
        player->unk_0C8++;
        if (((player->effect & 8) != 8) || (player->effect & 0x8000)) {
            player->unk_0CA &= ~0x1000;
            if (player->unk_0C8 >= 0x5B) {
                if (player->unk_000 & 0x4000) {
                    func_800C9018(arg1, 0x0100FA28);
                }
                if (gModeSelection == BATTLE) {
                    func_8006B8B4(player, arg1);
                }
                player->unk_0CA &= ~0x0002;
                player->unk_0DE &= ~0x0004;
                if ((player->unk_0CA & 0x80) != 0x80) {
                    player->unk_0CA &= ~0x0008;
                    if ((player->topSpeed * 0.9) <= player->currentSpeed) {
                        func_8008F104(player, arg1);
                    }
                }
            }
        }
        break;
    }
    player->unk_DA0 += 8.0f;
    if (player->unk_DA0 >= 180.0f) {
        player->unk_DA0 = 180.0f;
    }
    if (player->unk_D98 == 1) {
        player->unk_D9C += player->unk_DA0;
        if (player->unk_D9C >= 1820.0f) {
            player->unk_DA0 = 0.0f;
            player->unk_D98 *= -1;
        }
    }
    if (player->unk_D98 == -1) {
        player->unk_D9C -= player->unk_DA0;
        if (player->unk_D9C <= -1820.0f) {
            player->unk_DA0 = 0.0f;
            player->unk_D98 *= -1;
        }
    }
}

s32 func_800910E4(Player *arg0) {
    s32 phi_v0 = 0;
    if ((((((arg0->unk_0CA & 2) == 2) || ((arg0->unk_0CA & 8) == 8)) || ((arg0->unk_000 & 0x40) != 0)) || ((arg0->unk_000 & 0x800) != 0)) || ((arg0->unk_000 & 0x8000) == 0)) {
        return 1;
    }

    switch (arg0->unk_010) {
    case 12:
    case 13:
    case 14:
    case 15:
        if ((arg0->effect & 8) != 0) {
            return 1;
        }
        phi_v0 = 0x5F934EC4;
        goto func_800910E4_label;
    case 10:
        phi_v0 = 0xDF934EC4;
    case 11:
        phi_v0 = phi_v0 | 0xDF934EC4;
func_800910E4_label:
    default:
        if ((arg0->effect & phi_v0) != 0) {
            return 1;
        }
        return 0;
    }
}

void func_800911B4(Player* player, s8 arg1) {
    s32 temp_v0;

    player->unk_0AE = player->unk_02C[1];
    player->unk_044 |= 0x1800;
    player->unk_044 &= ~0x0400;
    player->unk_044 |=  0x2000;
    player->kartHopJerk = 0.002f;
    player->kartHopAcceleration = 0.0f;
    player->kartHopVelocity = 2.6f;
    player->unk_0B2 = 2;
    player->unk_0C0 = 0;
    player->unk_07C = 0;
    player->unk_078 = 0;
    D_8018D920[arg1] = 0;

    player->unk_258[31].unk_012 = 0;
    player->unk_258[31].unk_01E = 0;
    player->unk_258[31].unk_01C = 0;
    player->unk_258[30].unk_012 = 0;
    player->unk_258[30].unk_01E = 0;
    player->unk_258[30].unk_01C = 0;

    temp_v0 = 2; do {
        player->unk_258[31 + temp_v0].unk_01C = 0;
        player->unk_258[31 + temp_v0].unk_01E = 0;
        player->unk_258[31 + temp_v0].unk_012 = 0;
        player->unk_258[32 + temp_v0].unk_01C = 0;
        player->unk_258[32 + temp_v0].unk_01E = 0;
        player->unk_258[32 + temp_v0].unk_012 = 0;
        player->unk_258[33 + temp_v0].unk_01C = 0;
        player->unk_258[33 + temp_v0].unk_01E = 0;
        player->unk_258[33 + temp_v0].unk_012 = 0;

        temp_v0 += 4;
        player->unk_258[26 + temp_v0].unk_01C = 0;
        player->unk_258[26 + temp_v0].unk_01E = 0;
        player->unk_258[26 + temp_v0].unk_012 = 0;
    } while (temp_v0 < 10);
}

void func_80091298(Player *player, s8 arg1) {
    s16 var_v1;
    s32 stackPadding1;
    Vec3f spC = { 27.167f, 25.167f, 23.167f };

    player->unk_044 |= 0x2000;
    if (player->unk_0B2 == 0) {
        var_v1 = 0;
    } else {
        player->unk_02C[1] -= 0xE38;
        D_8018D920[arg1]   -= 0xE38;
        var_v1 = (u16)D_8018D920[arg1] / 3640;
    }
    if (((var_v1 == 9) && (player->unk_0B2 == 1)) || ((var_v1 == 0) && (player->unk_0B2 == 2)) || (player->unk_0B2 == 0)) {
        player->unk_0B2--;
        if (player->unk_0B2 <= 0) {
            player->unk_0B2 = 0;
        }
        if (player->unk_0B2 == 0) {
            if ((player->pos[1] - (player->boundingBoxSize + 1.0f)) <= spC[arg1]) {
                player->pos[1] = (f32) ((f64) (spC[arg1] + player->boundingBoxSize) + 1.08);
                player->unk_DB4.unk18 = 0;
                player->unk_0A8 = 0;
                player->unk_07C = 0;
                player->unk_0C0 = 0;
                player->unk_DB4.unkC = 3.0f;
                player->unk_044 &= ~0x800;
                player->kartGravity = gKartGravityTable[player->characterId];
                player->unk_0D4[0] = 0;
                player->unk_000 |= 0x2000;
                player->unk_094 = 0.0f;
                player->unk_08C = 0.0f;
                player->currentSpeed = 0.0f;
                if (arg1 == 0) {
                    D_801658BC = 1;
                }
            }
        }
    }
}
