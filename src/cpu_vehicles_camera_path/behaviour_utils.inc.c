void copy_courses_cpu_behaviour(void) {
    s32 i;
    for (i = 0; i < NUM_COURSES - 1; i++) {
        gCoursesCPUBehaviour[i] = GET_COURSE_AIBehaviour;
    }
}

void reset_cpu_behaviour_none(s32 playerIndex) {
    gCurrentCPUBehaviourId[playerIndex] = 0;
    gPreviousCPUBehaviourId[playerIndex] = 0;
    cpu_BehaviourState[playerIndex] = cpu_BEHAVIOUR_STATE_NONE;
}

void reset_cpu_behaviour(s32 playerIndex) {
    gCurrentCPUBehaviourId[playerIndex] = 0;
    gPreviousCPUBehaviourId[playerIndex] = 0;
    cpu_BehaviourState[playerIndex] = cpu_BEHAVIOUR_STATE_START;
}

void cpu_behaviour_start(s32 playerId, Player* player) {
    u16 playerPathPoint;
    s16 pathPointStart;
    s16 pathPointEnd;
    s32 behaviourType;
    UNUSED s32 test;

    sCurrentCPUBehaviour = &gCoursesCPUBehaviour[gCurrentCourseId][gCurrentCPUBehaviourId[playerId]];

    playerPathPoint = gNearestPathPointByPlayerId[playerId];

    pathPointStart = sCurrentCPUBehaviour->pathPointStart;
    pathPointEnd = sCurrentCPUBehaviour->pathPointEnd;
    behaviourType = sCurrentCPUBehaviour->type;

    if ((pathPointStart == -1) && (pathPointEnd == -1)) {
        sCurrentCPUBehaviour = &gCoursesCPUBehaviour[gCurrentCourseId][0];
        reset_cpu_behaviour_none(playerId);
        return;
    }
    if ((u32) playerPathPoint == (u32) pathPointStart) {
        cpu_BehaviourState[playerId] = cpu_BEHAVIOUR_STATE_RUNNING;
        gPreviousCPUBehaviourId[playerId] = gCurrentCPUBehaviourId[playerId];
        gCurrentCPUBehaviourId[playerId]++;
        switch (behaviourType) {
            case BEHAVIOUR_1:
                func_80011EC0(playerId, player, player->unk_07C >> 0x10, playerPathPoint);
                break;
            case BEHAVIOUR_HOP:
                kart_hop(player);
                player->effects &= ~0x10;
                D_801630E8[playerId] = 0;
                break;
            case BEHAVIOUR_DRIVE_CENTER:
                gPlayerTrackPositionFactorInstruction[playerId].target = 0.0f;
                break;
            case BEHAVIOUR_DRIVE_LEFT:
                gPlayerTrackPositionFactorInstruction[playerId].target = -0.6f;
                break;
            case BEHAVIOUR_DRIVE_OUTER:
                gPlayerTrackPositionFactorInstruction[playerId].target = 0.6f;
                break;
            case BEHAVIOUR_NORMAL_SPEED:
                gSpeedCPUBehaviour[playerId] = SPEED_cpu_BEHAVIOUR_NORMAL;
                break;
            case BEHAVIOUR_FAST_SPEED:
                gSpeedCPUBehaviour[playerId] = SPEED_cpu_BEHAVIOUR_FAST;
                break;
            case BEHAVIOUR_SLOW_SPEED:
                gSpeedCPUBehaviour[playerId] = SPEED_cpu_BEHAVIOUR_SLOW;
                break;
            case BEHAVIOUR_MAX_SPEED:
                gSpeedCPUBehaviour[playerId] = SPEED_cpu_BEHAVIOUR_MAX;
                break;
            case BEHAVIOUR_9:
                D_801633F8[playerId] = 1;
                D_801631E0[playerId] = false;
                gPlayers[playerId].effects &= ~UNKNOWN_EFFECT_0x1000;
                break;
            case BEHAVIOUR_10:
                D_801633F8[playerId] = 0;
                break;
        }
    }
}

void cpu_behaviour_end(s32 playerIndex, Player* player) {
    u16 nearestPathPoint;
    u32 pathPointEnd;
    s32 behaviourType;

    sCurrentCPUBehaviour = &gCoursesCPUBehaviour[gCurrentCourseId][gPreviousCPUBehaviourId[playerIndex]];
    nearestPathPoint = gNearestPathPointByPlayerId[playerIndex];
    behaviourType = sCurrentCPUBehaviour->type;
    pathPointEnd = sCurrentCPUBehaviour->pathPointEnd;
    if (nearestPathPoint >= pathPointEnd) {
        switch (behaviourType) {
            case BEHAVIOUR_1:
                player->effects &= ~0x10;
                D_801630E8[playerIndex] = 0;
                cpu_BehaviourState[playerIndex] = cpu_BEHAVIOUR_STATE_START;
                break;
            case BEHAVIOUR_DRIVE_CENTER:
            case BEHAVIOUR_DRIVE_LEFT:
            case BEHAVIOUR_DRIVE_OUTER:
                gPlayerTrackPositionFactorInstruction[playerIndex].target =
                    gPlayerTrackPositionFactorInstruction[playerIndex].unkC;
                cpu_BehaviourState[playerIndex] = cpu_BEHAVIOUR_STATE_START;
                break;
            case BEHAVIOUR_HOP:
            case BEHAVIOUR_NORMAL_SPEED:
            case BEHAVIOUR_FAST_SPEED:
            case BEHAVIOUR_SLOW_SPEED:
            case BEHAVIOUR_9:
            case BEHAVIOUR_10:
            case BEHAVIOUR_MAX_SPEED:
                cpu_BehaviourState[playerIndex] = cpu_BEHAVIOUR_STATE_START;
                break;
            default:
                break;
        }
    }
}

void cpu_behaviour(s32 playerIndex) {
    Player* player = gPlayerOne + playerIndex;

    switch (cpu_BehaviourState[playerIndex]) {
        case cpu_BEHAVIOUR_STATE_NONE:
            break;
        case cpu_BEHAVIOUR_STATE_START:
            cpu_behaviour_start(playerIndex, player);
            break;
        case cpu_BEHAVIOUR_STATE_RUNNING:
            cpu_behaviour_end(playerIndex, player);
            break;
    }
}

void func_80011EC0(s32 arg0, Player* player, s32 arg2, UNUSED u16 arg3) {
    if ((((player->speed / 18.0f) * 216.0f) >= 45.0f) && (D_801630E8[arg0] == 0)) {
        switch (gCurrentTrackSectionTypesPath[sSomeNearestPathPoint]) {
            case RIGHT_LEANING_CURVE:
            case RIGHT_CURVE:
                if ((arg2 >= -9) && (D_80162FF8[arg0] == 0)) {
                    if ((gTrackPositionFactor[arg0] > -0.8) && (gTrackPositionFactor[arg0] < 0.5)) {
                        kart_hop(player);
                        player->effects |= UNKNOWN_EFFECT_0x10;
                        D_801630E8[arg0] = 1;
                        break;
                    }
                }
                D_801630E8[arg0] = 2;
                break;
            case LEFT_LEANING_CURVE:
            case LEFT_CURVE:
                if ((arg2 < 0xA) && (D_80162FF8[arg0] == 0)) {
                    if ((gTrackPositionFactor[arg0] > -0.5) && (gTrackPositionFactor[arg0] < 0.8)) {
                        kart_hop(player);
                        player->effects |= UNKNOWN_EFFECT_0x10;
                        D_801630E8[arg0] = -1;
                        break;
                    }
                }
                D_801630E8[arg0] = -2;
                break;
        }
    } else {
        D_801630E8[arg0] = 3;
    }
}
