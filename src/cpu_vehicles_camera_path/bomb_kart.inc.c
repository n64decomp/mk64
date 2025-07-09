void set_bomb_kart_spawn_positions(void) {
    UNUSED Collision* var_s2;
    f32 startingXPos;
    f32 startingZPos;
    f32 startingYPos;
    s32 var_s3;
    TrackPathPoint* temp_v0;
    UNUSED BombKart* var_s0;
    BombKartSpawn* bombKartSpawn;

    for (var_s3 = 0; var_s3 < NUM_BOMB_KARTS_VERSUS; var_s3++) {
        bombKartSpawn = &gBombKartSpawns[gCurrentCourseId][var_s3];
        switch (gCurrentCourseId) {
            case COURSE_YOSHI_VALLEY:
                startingXPos = bombKartSpawn->startingXPos;
                startingZPos = bombKartSpawn->startingZPos;
                startingYPos = get_surface_height(startingXPos, 2000.0f, startingZPos);
                break;
            case COURSE_AWARD_CEREMONY:
                temp_v0 = &gTrackPaths[3][bombKartSpawn->pathPointIndex];
                startingXPos = temp_v0->posX;
                startingYPos = temp_v0->posY;
                startingZPos = temp_v0->posZ;
                break;
            default:
                temp_v0 = &gTrackPaths[0][bombKartSpawn->pathPointIndex];
                startingXPos = temp_v0->posX;
                startingYPos = temp_v0->posY;
                startingZPos = temp_v0->posZ;
                break;
        }
        gBombKarts[var_s3].bombPos[0] = startingXPos;
        gBombKarts[var_s3].bombPos[1] = startingYPos;
        gBombKarts[var_s3].bombPos[2] = startingZPos;
        gBombKarts[var_s3].wheel1Pos[0] = startingXPos;
        gBombKarts[var_s3].wheel1Pos[1] = startingYPos;
        gBombKarts[var_s3].wheel1Pos[2] = startingZPos;
        gBombKarts[var_s3].wheel2Pos[0] = startingXPos;
        gBombKarts[var_s3].wheel2Pos[1] = startingYPos;
        gBombKarts[var_s3].wheel2Pos[2] = startingZPos;
        gBombKarts[var_s3].wheel3Pos[0] = startingXPos;
        gBombKarts[var_s3].wheel3Pos[1] = startingYPos;
        gBombKarts[var_s3].wheel3Pos[2] = startingZPos;
        gBombKarts[var_s3].wheel4Pos[0] = startingXPos;
        gBombKarts[var_s3].wheel4Pos[1] = startingYPos;
        gBombKarts[var_s3].wheel4Pos[2] = startingZPos;
        gBombKarts[var_s3].pathPointIndex = bombKartSpawn->pathPointIndex;
        gBombKarts[var_s3].unk_3C = bombKartSpawn->unk_04;
        gBombKarts[var_s3].bounceTimer = 0;
        gBombKarts[var_s3].circleTimer = 0;
        gBombKarts[var_s3].state = bombKartSpawn->startingState;
        gBombKarts[var_s3].unk_4A = 0;
        gBombKarts[var_s3].unk_4C = 1;
        gBombKarts[var_s3].yPos = startingYPos;
        check_bounding_collision(&D_80164038[var_s3], 2.0f, startingXPos, startingYPos, startingZPos);
    }
}

void func_8000DF8C(s32 bombKartId) {
    UNUSED s32 stackPadding0;
    f32 sp118;
    f32 var_f18;
    TrackPathPoint* temp_v0_2;
    f32 temp_f0_3;
    f32 sp108;
    UNUSED s32 stackPadding1;
    UNUSED s32 stackPadding2;
    UNUSED s32 stackPadding3;
    f32 temp_f14;
    UNUSED s32 stackPadding4;
    f32 temp_f16;
    UNUSED s32 stackPadding5;
    UNUSED s32 stackPadding6;
    UNUSED s32 stackPadding7;
    UNUSED s32 stackPadding8;
    UNUSED s32 stackPadding9;
    UNUSED s32 stackPaddingA;
    UNUSED s32 stackPaddingB;
    f32 temp_f0;
    f32 temp_f0_4;
    u16 spCA;
    f32 spC4;
    u16 spC2;
    f32 temp_f12;
    f32 temp_f12_3;
    f32 temp_f12_4;
    f32 temp_f14_2;
    f32 spAC;
    UNUSED s32 stackPaddingC;
    f32 temp_f16_2;
    f32 spA0;
    f32 temp_f2;
    f32 temp_f2_4;
    f32 sp94;
    UNUSED s32 stackPaddingD;
    f32 var_f20;
    f32 sp88;
    f32 var_f22;
    f32 var_f24;
    u16 sp7E;
    u16 sp7C;
    UNUSED u16 sp4C;
    u16 temp_t6;
    u16 temp_t7;
    u16 var_s1;
    s32 var_a0;
    UNUSED s32 stackPaddingE;
    TrackPathPoint* temp_v0_4;
    BombKart* bombKart;
    BombKart* bombKart2;
    Collision* temp_a0_4;
    Player* var_v0;

    bombKart = &gBombKarts[bombKartId];

    sp7E = bombKart->state;

    if (sp7E == 0) {
        return;
    }

    if (((bombKart->unk_4A != 1) || (gCurrentCourseId == COURSE_AWARD_CEREMONY))) {
        var_f22 = bombKart->bombPos[0];
        var_f20 = bombKart->bombPos[1];
        var_f24 = bombKart->bombPos[2];
        spCA = bombKart->pathPointIndex;
        spC4 = bombKart->unk_3C;
        spC2 = bombKart->someRot;
        sp7C = bombKart->bounceTimer;
        var_s1 = bombKart->circleTimer;
        if ((sp7E != 0) && (sp7E != 4)) {
            if (1) {}
            if (gCurrentCourseId == COURSE_AWARD_CEREMONY) {
                if (D_8016347E == 1) {
                    var_v0 = gPlayerFour;
                    temp_f0 = var_f22 - var_v0->pos[0];
                    temp_f2 = var_f20 - var_v0->pos[1];
                    temp_f12 = var_f24 - var_v0->pos[2];
                    if ((((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) + (temp_f12 * temp_f12)) < 25.0f) {
                        var_s1 = 0;
                        sp7E = 4;
                        var_v0->triggers |= VERTICAL_TUMBLE_TRIGGER;
                        var_v0->type &= ~0x2000;
                    }
                }
            } else {

                for (var_a0 = 0; var_a0 < gPlayerCount; var_a0++) {
                    var_v0 = &gPlayers[var_a0];
                    if (!(var_v0->effects & 0x80000000)) {
                        temp_f0 = var_f22 - var_v0->pos[0];
                        temp_f2 = var_f20 - var_v0->pos[1];
                        temp_f12 = var_f24 - var_v0->pos[2];
                        if ((((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) + (temp_f12 * temp_f12)) < 25.0f) {
                            sp7E = 4;
                            var_s1 = 0;
                            if (gCurrentCourseId == COURSE_FRAPPE_SNOWLAND) {
                                var_v0->triggers |= HIT_BY_STAR_TRIGGER;
                            } else {
                                var_v0->triggers |= VERTICAL_TUMBLE_TRIGGER;
                            }
                        }
                    }
                }
            }
        }
        switch (sp7E) {
            case 1:
                var_s1 = (var_s1 + 356) % 360;
                temp_t6 = (var_s1 * 0xFFFF) / 360;
                sp118 = coss(temp_t6) * 25.0;
                temp_f0_3 = sins(temp_t6) * 25.0;
                temp_v0_2 = &gTrackPaths[0][spCA];
                var_f22 = temp_v0_2->posX + sp118;
                var_f20 = bombKart->yPos + 3.5f;
                var_f24 = temp_v0_2->posZ + temp_f0_3;
                D_80162FB0[0] = var_f22;
                D_80162FB0[1] = var_f20;
                D_80162FB0[2] = var_f24;
                temp_t7 = (((var_s1 + 1) % 360) * 0xFFFF) / 360;
                sp118 = coss(temp_t7) * 25.0;
                temp_f0_3 = sins(temp_t7) * 25.0;
                D_80162FC0[0] = temp_v0_2->posX + sp118;
                D_80162FC0[1] = temp_v0_2->posY;
                D_80162FC0[2] = temp_v0_2->posZ + temp_f0_3;
                spC2 = (get_xz_angle_between_points(D_80162FB0, D_80162FC0) * 0xFFFF) / 65520;
                break;
            case 2:
                var_s1 = (var_s1 + 4) % 360;
                temp_t6 = (var_s1 * 0xFFFF) / 360;
                sp118 = coss(temp_t6) * 25.0;
                temp_f0_3 = sins(temp_t6) * 25.0;
                temp_v0_2 = &gTrackPaths[0][spCA];
                var_f22 = temp_v0_2->posX + sp118;
                var_f20 = bombKart->yPos + 3.5f;
                var_f24 = temp_v0_2->posZ + temp_f0_3;
                D_80162FB0[0] = var_f22;
                D_80162FB0[1] = var_f20;
                D_80162FB0[2] = var_f24;
                temp_t7 = (((var_s1 + 1) % 360) * 0xFFFF) / 360;
                sp118 = coss(temp_t7) * 25.0;
                temp_f0_3 = sins(temp_t7) * 25.0;
                D_80162FC0[0] = temp_v0_2->posX + sp118;
                D_80162FC0[1] = temp_v0_2->posY;
                D_80162FC0[2] = temp_v0_2->posZ + temp_f0_3;
                spC2 = (get_xz_angle_between_points(D_80162FB0, D_80162FC0) * 0xFFFF) / 65520;
                break;
            case 3:
                var_f20 = bombKart->yPos + 3.5f;
                spC2 = 0;
                break;

            case 5:
                if ((D_8016347C == 0) || (gNearestPathPointByPlayerId[3] < 5)) {
                    break;
                } else {
                    spCA = func_8000D2B4(var_f22, var_f20, var_f24, spCA, 3);
                    if ((spCA < 0) || (gPathCountByPathIndex[3] < spCA)) {
                        spCA = 0;
                    }
                    if (((s32) spCA) < 0x1A) {
                        temp_v0_2 = &gTrackPaths[3][(spCA + 1) % gPathCountByPathIndex[3]];
                        D_80162FB0[0] = temp_v0_2->posX;
                        D_80162FB0[1] = temp_v0_2->posY;
                        D_80162FB0[2] = temp_v0_2->posZ;
                        temp_v0_4 = &gTrackPaths[3][(spCA + 2) % gPathCountByPathIndex[3]];
                        D_80162FC0[0] = temp_v0_4->posX;
                        D_80162FC0[1] = temp_v0_4->posY;
                        D_80162FC0[2] = temp_v0_4->posZ;
                        spC2 = (get_xz_angle_between_points(D_80162FB0, D_80162FC0) * 0xFFFF) / 65520;
                    } else {
                        D_80162FB0[0] = var_f22;
                        D_80162FB0[1] = var_f20;
                        D_80162FB0[2] = var_f24;
                        D_80162FC0[0] = -2409.197f;
                        D_80162FC0[1] = 0.0f;
                        D_80162FC0[2] = -355.254f;
                        spC2 = (get_xz_angle_between_points(D_80162FB0, D_80162FC0) * 0xFFFF) / 65520;
                    }
                    temp_f14 = ((D_80162FB0[0] + D_80162FC0[0]) * 0.5f) - var_f22;
                    temp_f16 = ((D_80162FB0[2] + D_80162FC0[2]) * 0.5f) - var_f24;
                    temp_f0_4 = sqrtf((temp_f14 * temp_f14) + (temp_f16 * temp_f16));
                    if (temp_f0_4 > 0.01f) {
                        var_f22 += (bombKart->unk_3C * temp_f14) / temp_f0_4;
                        var_f24 += (bombKart->unk_3C * temp_f16) / temp_f0_4;
                    } else {
                        var_f22 += temp_f14 / 5.0f;
                        var_f24 += temp_f16 / 5.0f;
                    }
                    temp_a0_4 = &D_80164038[bombKartId];
                    var_f20 = calculate_surface_height(var_f22, 2000.0f, var_f24, temp_a0_4->meshIndexZX) + 3.5f;
                    if (var_f20 < (-1000.0)) {
                        var_f20 = bombKart->bombPos[1];
                    }
                    check_bounding_collision(temp_a0_4, 10.0f, var_f22, var_f20, var_f24);
                }
                break;
            case 4:
                temp_v0_2 = &gTrackPaths[0][spCA];
                D_80162FB0[0] = temp_v0_2->posX;
                D_80162FB0[1] = temp_v0_2->posY;
                D_80162FB0[2] = temp_v0_2->posZ;
                temp_v0_4 = &gTrackPaths[0][(spCA + 1) % gPathCountByPathIndex[0]];
                D_80162FC0[0] = temp_v0_4->posX;
                D_80162FC0[1] = temp_v0_4->posY;
                D_80162FC0[2] = temp_v0_4->posZ;
                var_f20 += 3.0f - (var_s1 * 0.3f);
                spC2 = (get_xz_angle_between_points(D_80162FB0, D_80162FC0) * 0xFFFF) / 65520;
                break;
            default:
                break;
        }

        if (sp7E == 4) {
            sp108 = 2.0f * var_s1;
            sp118 = coss(0xFFFF - spC2) * var_s1;
            var_f18 = sins(0xFFFF - spC2) * var_s1;
            var_s1++;
            temp_f2_4 = (var_f20 - 2.3f) + (sp108 / 3.0f);
            spAC = temp_f2_4;
            spA0 = temp_f2_4;
            sp94 = temp_f2_4;
            sp88 = temp_f2_4;
            if (var_s1 >= 31) {
                sp7E = 0;
            }
        } else {
            sp118 = coss(0xFFFF - spC2) * 1.5f;
            var_f18 = sins(0xFFFF - spC2) * 1.5f;
            temp_f16_2 = var_f20 - 2.3f;
            temp_f12_3 = (sp7C % 3) * 0.15f;
            temp_f14_2 = temp_f16_2 - temp_f12_3;
            temp_f12_4 = temp_f16_2 + temp_f12_3;
            spAC = temp_f14_2;
            sp94 = temp_f14_2;
            spA0 = temp_f12_4;
            sp88 = temp_f12_4;
            var_f20 += sins((sp7C * 0x13FFEC) / 360);
            sp7C = (sp7C + 1) % 18;
        }
        bombKart2 = bombKart;
        bombKart2->wheel1Pos[0] = (sp118 - var_f18) + var_f22;
        bombKart2->wheel1Pos[1] = spAC;
        bombKart2->wheel1Pos[2] = (var_f18 + sp118) + var_f24;
        bombKart2->wheel2Pos[0] = (var_f18 + sp118) + var_f22;
        bombKart2->wheel2Pos[1] = spA0;
        bombKart2->wheel2Pos[2] = (var_f18 - sp118) + var_f24;
        bombKart2->wheel3Pos[0] = ((-sp118) - var_f18) + var_f22;
        bombKart2->wheel3Pos[1] = sp94;
        bombKart2->wheel3Pos[2] = ((-var_f18) + sp118) + var_f24;
        bombKart2->wheel4Pos[0] = ((-sp118) + var_f18) + var_f22;
        bombKart2->wheel4Pos[1] = sp88;
        bombKart2->wheel4Pos[2] = ((-var_f18) - sp118) + var_f24;
        bombKart2->bombPos[0] = var_f22;
        bombKart2->bombPos[1] = var_f20;
        bombKart2->bombPos[2] = var_f24;
        bombKart2->pathPointIndex = spCA;
        bombKart2->unk_3C = spC4;
        bombKart2->someRot = spC2;
        bombKart2->state = sp7E;
        bombKart2->bounceTimer = sp7C;
        bombKart2->circleTimer = var_s1;
    }
}
