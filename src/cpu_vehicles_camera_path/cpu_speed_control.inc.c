void func_80007D04(s32 playerId, Player* player) {
    s16 temp_t1;
    s16 temp_t2;
    s32 var_v0;

    temp_t1 = gNumPathPointsTraversed[gBestRankedHumanPlayer];
    temp_t2 = gNumPathPointsTraversed[playerId];

    if (gGPCurrentRaceRankByPlayerId[playerId] < 2) {
        s16 val1 = gGPCurrentRaceRankByPlayerId[gBestRankedHumanPlayer];
        s16 val2 = temp_t2 - temp_t1;

        if (val2 > 400 && val1 >= 6) {
            player->effects &= ~UNKNOWN_EFFECT_0x200000;
            player_accelerate_alternative(player);
            D_801634C0[playerId] = 4;
            return;
        }
    } else {
        player->effects |= UNKNOWN_EFFECT_0x200000;
        player_accelerate_alternative(player);
        D_801634C0[playerId] = 3;
        return;
    }

    switch (gCCSelection) { // WTF, FAKE ?
        case CC_EXTRA:
            break;
    }

    switch (gCCSelection) {
        case CC_50:
            var_v0 = 0;
            if (playerId == D_80163344[0]) {
                var_v0 = 0x14;
            }
            break;

        case CC_100:
            var_v0 = 8;
            if (playerId == D_80163344[0]) {
                var_v0 = 0x18;
            }
            break;

        case CC_150:
            var_v0 = 0x12;
            if (playerId == D_80163344[0]) {
                var_v0 = 0x24;
            }
            break;

        case CC_EXTRA:
            var_v0 = 8;
            if (playerId == D_80163344[0]) {
                var_v0 = 0x18;
            }
            break;

        default:
            var_v0 = 0;
            break;
    }

    if (temp_t2 < temp_t1) {
        player->effects |= UNKNOWN_EFFECT_0x200000;
        player_accelerate_alternative(player);
        D_801634C0[playerId] = 1;
    } else if (temp_t2 < (temp_t1 + var_v0 + 0x32)) {
        player->effects &= ~UNKNOWN_EFFECT_0x200000;
        player_accelerate_alternative(player);
        D_801634C0[playerId] = 3;
    } else if (D_801631E0[playerId] == false) {
        player->effects &= ~UNKNOWN_EFFECT_0x200000;
        player_accelerate_alternative(player);
        D_801634C0[playerId] = 2;
    } else {
        player->effects &= ~UNKNOWN_EFFECT_0x200000;
        player_decelerate_alternative(player, 1.0f);
        D_801634C0[playerId] = -1;
    }
}

void func_80007FA4(s32 playerId, Player* player, f32 arg2) {
    f32 temp_f0;
    f32 dist;
    f32 temp_f2;
    s32 test;

    temp_f0 = D_80163418[playerId] - player->pos[0];
    temp_f2 = D_80163438[playerId] - player->pos[2];
    dist = (temp_f0 * temp_f0) + (temp_f2 * temp_f2);
    if (playerId == 3) {
        if ((dist < 25.0f) && (D_80163410[playerId] < 5)) {
            D_80163410[playerId] = 4;
            (arg2 < ((2.0 * 18.0) / 216.0)) ? func_80038BE4(player, 1) : player_decelerate_alternative(player, 1.0f);
        } else if ((dist < 3600.0f) && (D_80163410[playerId] < 4)) {
            D_80163410[playerId] = 3;
            (arg2 < ((5.0 * 18.0) / 216.0)) ? func_80038BE4(player, 1) : player_decelerate_alternative(player, 5.0f);
        } else {
            (arg2 < ((20.0 * 18.0) / 216.0)) ? func_80038BE4(player, 10) : player_decelerate_alternative(player, 1.0f);
        }
    } else {
        if ((dist < 25.0f) && (D_80163410[playerId] < 5)) {
            D_80163410[playerId] = 4;
            test = 2;
            (arg2 < ((test * 18.0) / 216.0)) ? func_80038BE4(player, 1) : player_decelerate_alternative(player, 1.0f);
        } else if ((dist < 4900.0f) && (D_80163410[playerId] < 4)) {
            D_80163410[playerId] = 3;
            test = 5;
            (arg2 < ((test * 18.0) / 216.0)) ? func_80038BE4(player, 1) : player_decelerate_alternative(player, 15.0f);
        } else if ((dist < 22500.0f) && (D_80163410[playerId] < 3)) {
            D_80163410[playerId] = 2;
            test = 20;
            (arg2 < ((test * 18.0) / 216.0)) ? func_80038BE4(player, 5) : player_decelerate_alternative(player, 1.0f);
        } else if ((dist < 90000.0f) && (D_80163410[playerId] < 2)) {
            D_80163410[playerId] = 1;
            test = 30;
            (arg2 < ((test * 18.0) / 216.0)) ? func_80038BE4(player, 6) : player_decelerate_alternative(player, 1.0f);
        } else if (D_80163410[playerId] == 0) {
            test = 35;
            (arg2 < (((test ^ 0) * 18.0) / 216.0)) ? func_80038BE4(player, 2) : player_decelerate_alternative(player, 1.0f);
        } else {
            player_decelerate_alternative(player, 1.0f);
        }
    }
}

void regulate_cpu_speed(s32 playerId, f32 targetSpeed, Player* player) {
    f32 speed;
    f32 var_f0;
    UNUSED s32 thing;
    s32 var_a1;

    speed = player->speed;
    if (!(player->effects & 0x80) && !(player->effects & 0x40) && !(player->effects & 0x20000) &&
        !(player->soundEffects & EXPLOSION_CRASH_SOUND_EFFECT) && !(player->soundEffects & HIT_BY_STAR_SOUND_EFFECT) && !(player->soundEffects & HIT_RED_BLUE_MOLE_SOUND_EFFECT) &&
        !(player->soundEffects & 4)) {
        if (gCurrentCourseId == COURSE_AWARD_CEREMONY) {
            func_80007FA4(playerId, player, speed);
        } else if ((bStopAICrossing[playerId] == true) && !(player->effects & (STAR_EFFECT | BOO_EFFECT))) {
            player_decelerate_alternative(player, 10.0f);
            if (player->currentSpeed == 0.0) {
                player->velocity[0] = 0.0f;
                player->velocity[2] = 0.0f;
            }
        } else {
            var_f0 = 3.3333333f;
            switch (gCCSelection) { /* irregular */
                case CC_100:
                case CC_EXTRA:
                    break;
                case CC_50:
                    var_f0 = 2.5f;
                    break;
                case CC_150:
                    var_f0 = 3.75f;
                    break;
            }
            if (speed < var_f0) {
                player->effects &= ~UNKNOWN_EFFECT_0x200000;
                player_accelerate_alternative(player);
            } else if (player->type & PLAYER_CINEMATIC_MODE) {
                if (speed < targetSpeed) {
                    player->effects &= ~UNKNOWN_EFFECT_0x200000;
                    player_accelerate_alternative(player);
                } else {
                    player->effects &= ~UNKNOWN_EFFECT_0x200000;
                    player_decelerate_alternative(player, 1.0f);
                }
            } else if ((D_801631E0[playerId] == true) && (D_80163330[playerId] != 1)) {
                if (func_800088D8(playerId, gLapCountByPlayerId[playerId], gGPCurrentRaceRankByPlayerIdDup[playerId]) ==
                    1) {
                    player->effects |= UNKNOWN_EFFECT_0x200000;
                    player_accelerate_alternative(player);
                } else {
                    player->effects &= ~UNKNOWN_EFFECT_0x200000;
                    player_decelerate_alternative(player, 1.0f);
                }
            } else {
                var_a1 = 1;
                switch (gSpeedCPUBehaviour[playerId]) { /* switch 1; irregular */
                    case SPEED_CPU_BEHAVIOUR_FAST:      /* switch 1 */
                        player->effects &= ~UNKNOWN_EFFECT_0x200000;
                        player_accelerate_alternative(player);
                        break;
                    case SPEED_CPU_BEHAVIOUR_MAX: /* switch 1 */
                        player->effects |= UNKNOWN_EFFECT_0x200000;
                        player_accelerate_alternative(player);
                        break;
                    case SPEED_CPU_BEHAVIOUR_SLOW: /* switch 1 */
                        if (((speed / 18.0f) * 216.0f) > 20.0f) {
                            targetSpeed = 1.6666666f;
                        }
                        var_a1 = 0;
                        break;
                    case SPEED_CPU_BEHAVIOUR_NORMAL: /* switch 1 */
                    default:                         /* switch 1 */
                        var_a1 = 0;
                        break;
                }
                if (var_a1 != 1) {
                    if (speed < targetSpeed) {
                        if ((gDemoMode == 1) && (gCurrentCourseId != COURSE_AWARD_CEREMONY)) {
                            player_accelerate_alternative(player);
                        } else if (D_80163330[playerId] == 1) {
                            func_80007D04(playerId, player);
                        } else if (func_800088D8(playerId, gLapCountByPlayerId[playerId],
                                                 gGPCurrentRaceRankByPlayerIdDup[playerId]) == true) {
                            player->effects |= UNKNOWN_EFFECT_0x200000;
                            player_accelerate_alternative(player);
                        } else {
                            player->effects &= ~UNKNOWN_EFFECT_0x200000;
                            player_decelerate_alternative(player, 1.0f);
                        }
                    } else {
                        player->effects &= ~UNKNOWN_EFFECT_0x200000;
                        if (targetSpeed > 1.0f) {
                            player_decelerate_alternative(player, 2.0f);
                        } else {
                            player_decelerate_alternative(player, 5.0f);
                        }
                    }
                }
            }
        }
    }
}
