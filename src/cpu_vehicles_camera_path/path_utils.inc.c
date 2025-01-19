#include <ultra64.h>
#include <macros.h>
#include <defines.h>
#include <path.h>
#include <course.h>
#include "main.h"
#include "cpu_vehicles_camera_path.h"

bool are_in_curve(UNUSED s32 arg0, u16 pathPointIndex) {
    s16 thing = gCurrentTrackConsecutiveCurveCountsPath[pathPointIndex];
    if (thing > 0) {
        return true;
    }
    return false;
}

bool is_far_from_path(s32 playerIndex) {
    f32 value = gTrackPositionFactor[playerIndex];
    if ((1.1f <= value) || (value <= -1.1f)) {
        return true;
    }
    return false;
}

/**
 * Calculates a factor representing where the player is positioned between left and right track boundaries
 * Returns a value between -1.0 and 1.0:
 * -1.0 = On the left boundary
 *  0.0 = In the middle of the track
 *  1.0 = On the right boundary
 *
 * @param posX Player's X position
 * @param posZ Player's Z position
 * @param pathPointIndex Current pathPoint index
 * @param pathIndex Current path/track index
 * @return Position factor between track boundaries
 */
f32 calculate_track_position_factor(f32 posX, f32 posZ, u16 pathPointIndex, s32 pathIndex) {
    f32 leftX;
    f32 leftZ;
    f32 rightX;
    f32 rightZ;
    f32 boundarySquaredDistance;
    f32 positionFactor;
    TrackPathPoint* leftPathPoint;
    TrackPathPoint* rightPathPoint;

    leftPathPoint = &gTrackLeftPath[pathIndex][pathPointIndex];
    rightPathPoint = &gTrackRightPath[pathIndex][pathPointIndex];

    leftX = leftPathPoint->posX;
    leftZ = leftPathPoint->posZ;
    rightX = rightPathPoint->posX;
    rightZ = rightPathPoint->posZ;

    boundarySquaredDistance = ((rightX - leftX) * (rightX - leftX)) + ((rightZ - leftZ) * (rightZ - leftZ));

    // Avoid division by zero for very close or identical boundary points
    if (boundarySquaredDistance < 0.01f) {
        return 0.0f;
    }
    // Calculate normalized position factor using vector projection
    // Formula: 2 * (dot product of vectors) / (squared magnitude) - 1
    // This maps the position to a -1 to 1 range
    positionFactor =
        ((2.0f * ((rightX - leftX) * (posX - leftX) + (rightZ - leftZ) * (posZ - leftZ))) / boundarySquaredDistance) -
        1.0f;
    return positionFactor;
}

void update_player_position_factor(s32 playerId, u16 pathPointIndex, s32 pathIndex) {
    UNUSED Vec3f pad;
    gTrackPositionFactor[playerId] = 0.0f;
    if ((s32) GET_COURSE_AIMaximumSeparation >= 0) {
        if ((gPlayers[playerId].type & PLAYER_EXISTS) != 0) {
            gTrackPositionFactor[playerId] = calculate_track_position_factor(
                gPlayers[playerId].pos[0], gPlayers[playerId].pos[2], pathPointIndex, pathIndex);
        }
    }
}

void calculate_track_offset_position(u16 pathPointIndex, f32 lerpFactor, f32 offsetDistance, s16 pathIndex) {
    UNUSED s32 pad[4];
    f32 pathPointOneX;
    f32 pathPointOneZ;
    f32 pathPointTwoX;
    f32 pathPointTwoZ;
    UNUSED s32 pad2;
    f32 xdiff;
    f32 zdiff;
    f32 segmentLength;
    UNUSED f32 temp_f12;
    UNUSED f32 temp_f2_2;
    UNUSED TrackPathPoint* path;
    TrackPathPoint* pathPointTwo;
    TrackPathPoint* pathPointOne;

    pathPointOne = &gTrackPaths[pathIndex][pathPointIndex];
    pathPointOneX = pathPointOne->posX;
    pathPointOneZ = pathPointOne->posZ;
    pathPointTwo = &gTrackPaths[pathIndex][(pathPointIndex + 1) % gSelectedPathCount];
    pathPointTwoX = pathPointTwo->posX;
    pathPointTwoZ = pathPointTwo->posZ;

    // Calculate vector between path
    zdiff = pathPointTwoZ - pathPointOneZ;
    xdiff = pathPointTwoX - pathPointOneX;
    if (xdiff && xdiff) {}

    segmentLength = sqrtf((xdiff * xdiff) + (zdiff * zdiff));
    if (segmentLength < 0.01f) {
        gOffsetPosition[0] = pathPointTwoX;
        gOffsetPosition[2] = pathPointTwoZ;
    } else {
        gOffsetPosition[0] =
            ((0.5f - (lerpFactor * 0.5f)) * (((offsetDistance * zdiff) / segmentLength) + pathPointOneX)) +
            ((1.0f - (0.5f - (lerpFactor * 0.5f))) * (((offsetDistance * -zdiff) / segmentLength) + pathPointOneX));
        gOffsetPosition[2] =
            ((0.5f - (lerpFactor * 0.5f)) * (((offsetDistance * -xdiff) / segmentLength) + pathPointOneZ)) +
            ((1.0f - (0.5f - (lerpFactor * 0.5f))) * (((offsetDistance * xdiff) / segmentLength) + pathPointOneZ));
    }
}

/**
 * Calculates an interpolated position between left and right track paths.
 *
 * @param currentPathPoint Index of the current pathPoint
 * @param trackOffset Value between 0.0 and 1.0 determining position between left (0.0) and right (1.0) path
 * @param pathIndex Index of the track/path segment
 */
void set_track_offset_position(u16 pathPointIndex, f32 trackOffset, s16 pathIndex) {
    TrackPathPoint* path1;
    TrackPathPoint* path2;
    f32 x1;
    f32 z1;
    f32 x3;
    f32 z3;
    f32 x2;
    f32 z2;
    f32 x4;
    f32 z4;
    f32 temp_f0;
    f32 temp_f12;

    path1 = &gTrackLeftPath[pathIndex][pathPointIndex];
    path2 = &gTrackRightPath[pathIndex][pathPointIndex];

    x1 = (f32) path1->posX;
    z1 = (f32) path1->posZ;

    x2 = (f32) path2->posX;
    z2 = (f32) path2->posZ;

    pathPointIndex += 1;
    pathPointIndex = pathPointIndex % gPathCountByPathIndex[pathIndex];

    path1 = &gTrackLeftPath[pathIndex][pathPointIndex];
    path2 = &gTrackRightPath[pathIndex][pathPointIndex];

    x3 = (f32) path1->posX;
    z3 = (f32) path1->posZ;

    x4 = (f32) path2->posX;
    z4 = (f32) path2->posZ;

    temp_f0 = 0.5f - (trackOffset / 2.0f);
    temp_f12 = 1.0f - temp_f0;
    gOffsetPosition[0] = ((temp_f0 * (x1 + x3)) / 2.0f) + ((temp_f12 * (x2 + x4)) / 2.0f);
    gOffsetPosition[2] = ((temp_f0 * (z1 + z3)) / 2.0f) + ((temp_f12 * (z2 + z4)) / 2.0f);
}

s16 func_8000BD94(f32 posX, f32 posY, f32 posZ, s32 pathIndex) {
    f32 x_dist;
    f32 y_dist;
    f32 z_dist;
    f32 considerSquaredDistance;
    f32 minimumSquaredDistance;
    s32 considerPathPointIndex;
    s32 pathPathPointCount;
    s16 nearestPathPointIndex;
    TrackPathPoint* pathPathPoints;
    TrackPathPoint* considerPathPoint;

    pathPathPoints = gTrackPaths[pathIndex];
    pathPathPointCount = gPathCountByPathIndex[pathIndex];
    considerPathPoint = &pathPathPoints[0];
    x_dist = (f32) considerPathPoint->posX - posX;
    y_dist = (f32) considerPathPoint->posY - posY;
    z_dist = (f32) considerPathPoint->posZ - posZ;
    minimumSquaredDistance = (x_dist * x_dist) + (y_dist * y_dist) + (z_dist * z_dist);
    nearestPathPointIndex = 0;
    for (considerPathPointIndex = 1; considerPathPointIndex < pathPathPointCount;
         considerPathPoint++, considerPathPointIndex++) {
        x_dist = (f32) considerPathPoint->posX - posX;
        y_dist = (f32) considerPathPoint->posY - posY;
        z_dist = (f32) considerPathPoint->posZ - posZ;
        considerSquaredDistance = (x_dist * x_dist) + (y_dist * y_dist) + (z_dist * z_dist);
        if (considerSquaredDistance < minimumSquaredDistance) {
            nearestPathPointIndex = considerPathPointIndex;
            minimumSquaredDistance = considerSquaredDistance;
        }
    }
    return nearestPathPointIndex;
}

s16 find_closest_pathPoint_track_section(f32 posX, f32 posY, f32 posZ, u16 trackSectionId, s32* pathIndex) {
    TrackPathPoint* pathPathPoints;
    TrackPathPoint* considerPathPoint;
    f32 x_dist;
    f32 y_dist;
    f32 z_dist;
    f32 considerSquaredDistance;
    f32 minimumSquaredDistance;
    s32 considerPathPointIndex;
    s32 pathPathPointCount;
    s32 temp_t0;
    s32 var_a1;
    s32 var_t1;
    s32 considerPathIndex;
    s32 var_t4;
    s16 nearestPathPointIndex;

    minimumSquaredDistance = 1000000.0f;
    temp_t0 = *pathIndex;
    nearestPathPointIndex = 0;
    var_t1 = 0;
    var_a1 = 0;
    pathPathPoints = gTrackPaths[temp_t0];
    pathPathPointCount = gPathCountByPathIndex[temp_t0];
    considerPathPoint = &pathPathPoints[0];
    for (considerPathPointIndex = 0; considerPathPointIndex < pathPathPointCount;
         considerPathPointIndex++, considerPathPoint++) {
        if ((considerPathPoint->trackSectionId == trackSectionId) || (gCurrentCourseId == COURSE_AWARD_CEREMONY)) {
            var_t1 = 1;
            x_dist = (f32) considerPathPoint->posX - posX;
            y_dist = (f32) considerPathPoint->posY - posY;
            z_dist = (f32) considerPathPoint->posZ - posZ;
            considerSquaredDistance = (x_dist * x_dist) + (y_dist * y_dist) + (z_dist * z_dist);
            if (considerSquaredDistance < minimumSquaredDistance) {
                nearestPathPointIndex = considerPathPointIndex;
                var_a1 = 1;
                minimumSquaredDistance = considerSquaredDistance;
            }
        }
    }
    if (var_t1 == 0) {
        for (considerPathIndex = 0; considerPathIndex < 4; considerPathIndex++) {
            if ((considerPathIndex != temp_t0) && (gSizePath[considerPathIndex] >= 2)) {
                pathPathPoints = gTrackPaths[considerPathIndex];
                considerPathPoint = &pathPathPoints[0];
                pathPathPointCount = gPathCountByPathIndex[considerPathIndex];
                for (considerPathPointIndex = 0; considerPathPointIndex < pathPathPointCount;
                     considerPathPointIndex++, considerPathPoint++) {
                    if (considerPathPoint->trackSectionId == trackSectionId) {
                        x_dist = (f32) considerPathPoint->posX - posX;
                        y_dist = (f32) considerPathPoint->posY - posY;
                        z_dist = (f32) considerPathPoint->posZ - posZ;
                        considerSquaredDistance = (x_dist * x_dist) + (y_dist * y_dist) + (z_dist * z_dist);
                        if (considerSquaredDistance < minimumSquaredDistance) {
                            nearestPathPointIndex = considerPathPointIndex;
                            var_t4 = considerPathIndex;
                            var_a1 = 2;
                            minimumSquaredDistance = considerSquaredDistance;
                        }
                    }
                }
            }
        }
    }
    if (var_a1 == 0) {
        pathPathPoints = gTrackPaths[0];
        pathPathPointCount = gPathCountByPathIndex[0];
        considerPathPoint = &pathPathPoints[0];
        x_dist = (f32) considerPathPoint->posX - posX;
        y_dist = (f32) considerPathPoint->posY - posY;
        z_dist = (f32) considerPathPoint->posZ - posZ;
        minimumSquaredDistance = (x_dist * x_dist) + (y_dist * y_dist) + (z_dist * z_dist);
        nearestPathPointIndex = 0;
        for (considerPathPointIndex = 1; considerPathPointIndex < pathPathPointCount;
             considerPathPoint++, considerPathPointIndex++) {
            x_dist = (f32) considerPathPoint->posX - posX;
            y_dist = (f32) considerPathPoint->posY - posY;
            z_dist = (f32) considerPathPoint->posZ - posZ;
            considerSquaredDistance = (x_dist * x_dist) + (y_dist * y_dist) + (z_dist * z_dist);
            if (considerSquaredDistance < minimumSquaredDistance) {
                nearestPathPointIndex = considerPathPointIndex;
                var_t4 = 0;
                var_a1 = 2;
                minimumSquaredDistance = considerSquaredDistance;
            }
        }
    }
    if (var_a1 == 2) {
        *pathIndex = var_t4;
    }
    return nearestPathPointIndex;
}

/**
 * Tries to find the pathPoint nearest to (posX, posY, posZ)
 * Only consider path in the same segment as trackSectionId
 * Only considers path within 500 units of(posX, posY, posZ)
 * Looks 3 path behind and 6 path ahead of pathPointIndex
 **/
s16 update_path_index_with_track(f32 posX, f32 posY, f32 posZ, s16 pathPointIndex, s32 pathIndex, u16 trackSectionId) {
    s16 nearestPathPointIndex;
    s16 searchIndex;
    s16 considerIndex;
    s32 pathPathPointCount;
    f32 x_dist;
    f32 y_dist;
    f32 z_dist;
    f32 minimumDistance;
    f32 squaredDistance;
    TrackPathPoint* pathPathPoints;
    TrackPathPoint* considerPathPoint;

    nearestPathPointIndex = -1;
    minimumDistance = 500.0f * 500.0f;
    pathPathPointCount = gPathCountByPathIndex[pathIndex];
    pathPathPoints = gTrackPaths[pathIndex];
    for (searchIndex = pathPointIndex - 3; searchIndex < pathPointIndex + 7; searchIndex++) {
        // Its possible for searchIndex to be less than 0 or greater than the number of path in a given path
        // This is done to ensure we access gTrackPaths at a valid index
        considerIndex = (searchIndex + pathPathPointCount) % pathPathPointCount;
        considerPathPoint = &pathPathPoints[considerIndex];
        if (considerPathPoint->trackSectionId == trackSectionId) {
            x_dist = considerPathPoint->posX - posX;
            y_dist = considerPathPoint->posY - posY;
            z_dist = considerPathPoint->posZ - posZ;
            squaredDistance = (x_dist * x_dist) + (y_dist * y_dist) + (z_dist * z_dist);
            if (squaredDistance < minimumDistance) {
                minimumDistance = squaredDistance;
                nearestPathPointIndex = considerIndex;
            }
        }
    }
    return nearestPathPointIndex;
}

/**
 * Tries to find the pathPoint nearest to (posX, posY, posZ)
 * Only considers path within 400 units of (posX, posY, posZ)
 * Looks 3 path behind and 6 path ahead of pathPointIndex
 **/
s16 update_path_index(f32 posX, f32 posY, f32 posZ, s16 pathPointIndex, s32 pathIndex) {
    s16 nearestPathPointIndex;
    s16 searchIndex;
    s16 considerIndex;
    bool pathPointFound;
    s32 pathPathPointCount;
    f32 x_dist;
    f32 y_dist;
    f32 z_dist;
    f32 minimumDistance;
    f32 squaredDistance;
    TrackPathPoint* pathPathPoints;
    TrackPathPoint* considerPathPoint;

    pathPointFound = false;
    nearestPathPointIndex = -1;
    minimumDistance = 400.0f * 400.0f;
    pathPathPointCount = gPathCountByPathIndex[pathIndex];
    pathPathPoints = gTrackPaths[pathIndex];
    for (searchIndex = pathPointIndex - 3; searchIndex < pathPointIndex + 7; searchIndex++) {
        // Its possible for searchIndex to be less than 0 or greater than the number of path in a given path
        // This is done to ensure we access gTrackPaths at a valid index
        considerIndex = (searchIndex + pathPathPointCount) % pathPathPointCount;
        considerPathPoint = &pathPathPoints[considerIndex];
        x_dist = considerPathPoint->posX - posX;
        y_dist = considerPathPoint->posY - posY;
        z_dist = considerPathPoint->posZ - posZ;
        squaredDistance = (x_dist * x_dist) + (y_dist * y_dist) + (z_dist * z_dist);
        if (squaredDistance < minimumDistance) {
            minimumDistance = squaredDistance;
            nearestPathPointIndex = considerIndex;
            pathPointFound = true;
        }
    }
    if (pathPointFound == false) {
        for (searchIndex = pathPointIndex - 3; searchIndex < pathPointIndex + 7; searchIndex++) {
            considerIndex = ((searchIndex + pathPathPointCount) % pathPathPointCount);
            considerPathPoint = &pathPathPoints[considerIndex];
            /**
             * This fake match is done to stop the compiler from optimzing out considerPathPoint.
             * Maybe if no pathPoint was found some debugging info was printed out, but come
             * production time they removed the debug printing but not the loop?
             **/
            if (considerPathPoint && considerPathPoint) {};
        }
    }
    return nearestPathPointIndex;
}

void tweak_path_index_wario_stadium(UNUSED f32 posX, f32 posY, UNUSED f32 posZ, s16* pathPointIndex, UNUSED s32 arg4) {
    s16 var_v0;

    var_v0 = *pathPointIndex;
    if ((gCurrentCourseId == COURSE_WARIO_STADIUM) && (var_v0 >= 0x475) && (var_v0 < 0x480) && (posY < 0.0f)) {
        var_v0 = 0x0398;
    }
    *pathPointIndex = var_v0;
}

void adjust_path_at_start_line(UNUSED f32 posX, UNUSED f32 posY, f32 posZ, s16* pathPointIndex, s32 pathIndex) {
    s16 pathPoint;
    pathPoint = *pathPointIndex;
    if (pathPoint == 0) {
        if (gPathStartZ < posZ) {
            pathPoint = gPathCountByPathIndex[pathIndex] - 1;
        }
    } else if (((pathPoint + 1) == gPathCountByPathIndex[pathIndex]) && (posZ <= gPathStartZ)) {
        pathPoint = 0;
    }
    *pathPointIndex = pathPoint;
}

s16 update_path_index_track_section(f32 posX, f32 posY, f32 posZ, Player* player, s32 playerId, s32* pathIndex) {
    u16 trackSectionId;
    s16 ret;

    trackSectionId = get_track_section_id(player->collision.meshIndexZX);
    if ((trackSectionId <= 0) || (trackSectionId >= 0x33)) {
        trackSectionId = gPlayersTrackSectionId[playerId];
    }
    gPlayersTrackSectionId[playerId] = trackSectionId;
    ret = find_closest_pathPoint_track_section(posX, posY, posZ, trackSectionId, pathIndex);
    gPathIndexByPlayerId[playerId] = *pathIndex;
    return ret;
}

/**
 * Updates and validates a player's pathPoint position on the track
 * Handles different logic for human players vs AI, and includes recovery mechanisms
 *
 * @param posX Current X position
 * @param posY Current Y position
 * @param posZ Current Z position
 * @param pathPointIndex Current pathPoint index
 * @param player Pointer to player structure
 * @param playerId Player's ID
 * @param pathIndex Current track path index
 * @return New pathPoint index or -1 if invalid
 */
s16 update_player_path(f32 posX, f32 posY, f32 posZ, s16 pathPointIndex, Player* player, s32 playerId, s32 pathIndex) {
    s16 newPathPoint;
    UNUSED s16 stackPadding0;
    UNUSED s32 stackPadding1;
    UNUSED s32 stackPadding2;
    TrackPathPoint* temp_v1;

    // Human player handling (non-AI controlled)
    if ((player->type & PLAYER_HUMAN) && !(player->type & PLAYER_CPU)) {
        newPathPoint = update_path_index_with_track(posX, posY, posZ, pathPointIndex, pathIndex,
                                                    (u16) get_track_section_id(player->collision.meshIndexZX));
        if (newPathPoint == -1) {
            newPathPoint = update_path_index_track_section(posX, posY, posZ, player, playerId, &pathIndex);
        }
    } else { // AI or special case player handling
        if (D_801631E0[playerId] == true) {
            if (player->unk_0CA & 1) {
                temp_v1 = &gTrackPaths[pathIndex][pathPointIndex];
                player->pos[0] = (f32) temp_v1->posX;
                player->pos[1] = (f32) temp_v1->posY;
                player->pos[2] = (f32) temp_v1->posZ;
                player->unk_0CA &= ~0x0001;
                return pathPointIndex;
            }
            if (playerId == ((s32) D_80163488 % 8)) {
                check_bounding_collision(&player->collision, 10.0f, posX, posY, posZ);
                gPlayersTrackSectionId[playerId] = get_track_section_id(player->collision.meshIndexZX);
                newPathPoint = update_path_index_with_track(posX, posY, posZ, pathPointIndex, pathIndex,
                                                            gPlayersTrackSectionId[playerId]);
                if (newPathPoint == -1) {
                    newPathPoint = update_path_index(posX, posY, posZ, pathPointIndex, pathIndex);
                }
                if (newPathPoint == -1) {
                    newPathPoint = find_closest_pathPoint_track_section(posX, posY, posZ,
                                                                        gPlayersTrackSectionId[playerId], &pathIndex);
                    temp_v1 = &gTrackPaths[pathIndex][newPathPoint];
                    player->pos[0] = (f32) temp_v1->posX;
                    player->pos[1] = (f32) temp_v1->posY;
                    player->pos[2] = (f32) temp_v1->posZ;
                }
            } else {
                newPathPoint = update_path_index(posX, posY, posZ, pathPointIndex, pathIndex);
                if (newPathPoint == -1) {
                    newPathPoint = func_8000BD94(posX, posY, posZ, pathIndex);
                    temp_v1 = &gTrackPaths[pathIndex][newPathPoint];
                    posX = (f32) temp_v1->posX;
                    posY = (f32) temp_v1->posY;
                    posZ = (f32) temp_v1->posZ;
                    player->pos[0] = posX;
                    player->pos[1] = posY;
                    player->pos[2] = posZ;
                    check_bounding_collision(&player->collision, 10.0f, posX, posY, posZ);
                    gPlayersTrackSectionId[playerId] = get_track_section_id(player->collision.meshIndexZX);
                }
            }
        } else {
            newPathPoint = update_path_index(posX, posY, posZ, pathPointIndex, pathIndex);
            if (newPathPoint == -1) {
                newPathPoint = update_path_index_track_section(posX, posY, posZ, player, playerId, &pathIndex);
            }
        }
        tweak_path_index_wario_stadium(posX, posY, posZ, &newPathPoint, pathIndex);
    }
    adjust_path_at_start_line(posX, posY, posZ, &newPathPoint, pathIndex);
    return newPathPoint;
}

s16 find_closest_vehicles_pathPoint(f32 xPos, UNUSED f32 yPos, f32 zPos, s16 pathPointIndex) {
    f32 xdiff;
    f32 zdiff;
    f32 minimumDistance;
    f32 considerSquaredDistance;
    s16 realIndex;
    s16 minimumIndex;
    s16 considerIndex;
    Path2D* considerPathPoint;

    minimumDistance = 250000.0f;
    minimumIndex = -1;
    for (realIndex = pathPointIndex - 2; realIndex < pathPointIndex + 7; realIndex++) {
        considerIndex = realIndex;
        if (realIndex < 0) {
            considerIndex = realIndex + gVehicle2DPathLength;
        }
        considerIndex %= gVehicle2DPathLength;
        considerPathPoint = &gVehicle2DPathPoint[considerIndex];
        xdiff = considerPathPoint->x - xPos;
        zdiff = considerPathPoint->z - zPos;
        considerSquaredDistance = (xdiff * xdiff) + (zdiff * zdiff);
        if (considerSquaredDistance < minimumDistance) {
            minimumDistance = considerSquaredDistance;
            minimumIndex = considerIndex;
        }
    }
    if (minimumIndex == -1) {
        minimumIndex = pathPointIndex;
    }
    return minimumIndex;
}

s16 func_8000D24C(f32 posX, f32 posY, f32 posZ, s32* pathIndex) {
    UNUSED s32 pad;
    Collision sp24;

    check_bounding_collision(&sp24, 10.0f, posX, posY, posZ);
    return find_closest_pathPoint_track_section(posX, posY, posZ, get_track_section_id(sp24.meshIndexZX), pathIndex);
}

s16 func_8000D2B4(f32 posX, f32 posY, f32 posZ, s16 pathPointIndex, s32 pathIndex) {
    s16 pathPoint;

    pathPoint = update_path_index(posX, posY, posZ, pathPointIndex, pathIndex);
    if (pathPoint == -1) {
        pathPoint = func_8000D24C(posX, posY, posZ, &pathIndex);
    }
    adjust_path_at_start_line(posX, posY, posZ, &pathPoint, pathIndex);
    return pathPoint;
}

s16 func_8000D33C(f32 posX, f32 posY, f32 posZ, s16 pathPointIndex, s32 pathIndex) {
    s16 pathPoint;

    pathPoint = update_path_index(posX, posY, posZ, pathPointIndex, pathIndex);
    if (pathPoint == -1) {
        pathPoint = func_8000D24C(posX, posY, posZ, &pathIndex);
    }
    return pathPoint;
}

f32 cpu_track_position_factor(s32 playerId) {
    TrackPositionFactorInstruction* temp_v0;
    f32 target;
    f32 current;

    temp_v0 = &gPlayerTrackPositionFactorInstruction[playerId];
    current = temp_v0->current;
    target = temp_v0->target;
    if (current < target) {
        current += temp_v0->step;
        if (target < current) {
            current = target;
        }
    } else if (target < current) {
        current -= temp_v0->step;
        if (current < target) {
            current = target;
        }
    }
    temp_v0->current = current;
    return current;
}

void determine_ideal_cpu_position_offset(s32 playerId, u16 pathPoint) {
    UNUSED s32 stackPadding0;
    f32 sp48;
    f32 sp44;
    UNUSED s32 stackPadding1;
    UNUSED s32 stackPadding2;
    UNUSED s32 stackPadding3;
    f32 stackPadding4;
    f32 stackPadding5;
    f32 sp2C;
    s32 lookAheadDistance;
    s16 curveCount;
    u16 thing;

    curveCount = gCurrentTrackConsecutiveCurveCountsPath[pathPoint];
    lookAheadDistance = 6;
    sp2C = cpu_track_position_factor(playerId);
    thing = pathPoint;

    switch (gCurrentCourseId) {
        case COURSE_AWARD_CEREMONY:
            lookAheadDistance = 1;
            break;
        case COURSE_TOADS_TURNPIKE:
            lookAheadDistance = 7;
            break;
        case COURSE_YOSHI_VALLEY:
            break;
        default:
            if (curveCount < 6) {
                lookAheadDistance = 8;
            } else if (curveCount >= 0x15) {
                lookAheadDistance = 20;
            }
            break;
    }

    if (lookAheadDistance >= 8) {
        if ((gTrackPositionFactor[playerId] > 0.75f) && (gCurrentTrackSectionTypesPath[thing] == RIGHT_LEANING_CURVE)) {
            lookAheadDistance = 7;
        }
        if ((gTrackPositionFactor[playerId] < -0.75f) && (gCurrentTrackSectionTypesPath[thing] == LEFT_LEANING_CURVE)) {
            lookAheadDistance = 7;
        }
    }
    if (is_far_from_path(playerId) == true) {
        lookAheadDistance = 5;
    }
    if (gCurrentPlayerLookAhead[playerId] < lookAheadDistance) {
        gCurrentPlayerLookAhead[playerId]++;
    }
    if (lookAheadDistance < gCurrentPlayerLookAhead[playerId]) {
        gCurrentPlayerLookAhead[playerId]--;
    }
    pathPoint = (gCurrentPlayerLookAhead[playerId] + pathPoint) % gSelectedPathCount;
    set_track_offset_position(pathPoint, sp2C, gPlayerPathIndex);
    sp48 = gOffsetPosition[0];
    sp44 = gOffsetPosition[2];
    set_track_offset_position(((pathPoint + 1) % gSelectedPathCount) & 0xFFFF, sp2C, gPlayerPathIndex);
    stackPadding5 = gOffsetPosition[0];
    gOffsetPosition[0] = (sp48 + stackPadding5) * 0.5f;
    stackPadding4 = gOffsetPosition[2];
    gOffsetPosition[2] = (sp44 + stackPadding4) * 0.5f;
}

s16 func_8000D6D0(Vec3f position, s16* pathPointIndex, f32 speed, f32 arg3, s16 pathIndex, s16 arg5) {
    f32 temp1;
    f32 temp2;
    f32 midX;
    UNUSED s16 stackPadding1;
    s16 pathPoint1;
    s16 pathPoint2;
    f32 pad3;
    f32 midY;
    f32 pad4;
    f32 midZ;
    f32 distance;
    f32 oldPosX;
    f32 oldPosY;
    f32 oldPosZ;
    f32 var_f2;
    f32 var_f12;
    f32 var_f14;
    s16 temp_v0;
    s32 temp_v1;
    f32 xdiff;
    f32 ydiff;
    f32 zdiff;
    Vec3f oldPos;
    TrackPathPoint* path;

    path = gTrackPaths[pathIndex];
    oldPos[0] = position[0];
    oldPos[1] = position[1];
    oldPos[2] = position[2];
    oldPosX = position[0];
    oldPosY = position[1];
    oldPosZ = position[2];
    temp_v0 = func_8000D2B4(oldPosX, oldPosY, oldPosZ, *pathPointIndex, (s32) pathIndex);
    *pathPointIndex = temp_v0;
    temp_v1 = temp_v0 + arg5;
    pathPoint1 = temp_v1 % gPathCountByPathIndex[pathIndex];
    pathPoint2 = (temp_v1 + 1) % gPathCountByPathIndex[pathIndex];
    set_track_offset_position(pathPoint1, arg3, pathIndex);
    pad3 = gOffsetPosition[0];
    pad4 = gOffsetPosition[2];
    set_track_offset_position(pathPoint2, arg3, pathIndex);
    temp1 = gOffsetPosition[0];
    temp2 = gOffsetPosition[2];
    midY = (path[pathPoint1].posY + path[pathPoint2].posY) * 0.5f;
    midX = (pad3 + temp1) * 0.5f;
    midZ = (pad4 + temp2) * 0.5f;
    xdiff = midX - oldPosX;
    ydiff = midY - oldPosY;
    zdiff = midZ - oldPosZ;
    distance = sqrtf((xdiff * xdiff) + (ydiff * ydiff) + (zdiff * zdiff));
    if (distance > 0.01f) {
        var_f2 = ((xdiff * speed) / distance) + oldPosX;
        var_f12 = ((ydiff * speed) / distance) + oldPosY;
        var_f14 = ((zdiff * speed) / distance) + oldPosZ;
    } else {
        var_f2 = oldPosX;
        var_f12 = oldPosY;
        var_f14 = oldPosZ;
    }
    position[0] = var_f2;
    position[1] = var_f12;
    position[2] = var_f14;
    return get_angle_between_path(oldPos, position);
}

s16 func_8000D940(Vec3f pos, s16* pathPointIndex, f32 speed, f32 arg3, s16 pathIndex) {
    UNUSED f32 pad;
    f32 thing1;
    f32 thing2;
    UNUSED s16 stackPadding1;
    s16 pathPoint1;
    s16 pathPoint2;
    UNUSED s16 stackPadding2;
    f32 pad2;
    f32 midX;
    f32 pad3;
    f32 midY;
    f32 midZ;
    f32 distance;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f24;
    f32 var_f2;
    f32 var_f12;
    f32 var_f14;
    s16 temp_v0;
    f32 xdiff;
    f32 ydiff;
    f32 zdiff;
    s32 pathPointCount;
    Vec3f sp54;

    sp54[0] = pos[0];
    sp54[1] = pos[1];
    sp54[2] = pos[2];
    pathPointCount = gPathCountByPathIndex[pathIndex];
    temp_f20 = pos[0];
    temp_f22 = pos[1];
    temp_f24 = pos[2];
    temp_v0 = func_8000D2B4(temp_f20, temp_f22, temp_f24, *pathPointIndex, (s32) pathIndex);
    *pathPointIndex = temp_v0;
    pathPoint1 = ((temp_v0 + pathPointCount) - 3) % pathPointCount;
    pathPoint2 = ((temp_v0 + pathPointCount) - 4) % pathPointCount;
    set_track_offset_position(pathPoint1, arg3, pathIndex);
    pad2 = gOffsetPosition[0];
    pad3 = gOffsetPosition[2];
    set_track_offset_position(pathPoint2, arg3, pathIndex);
    thing1 = gOffsetPosition[0];
    thing2 = gOffsetPosition[2];
    midY = (gTrackPaths[pathIndex][pathPoint1].posY + gTrackPaths[pathIndex][pathPoint2].posY) * 0.5f;
    midX = (pad2 + thing1) * 0.5f;
    midZ = (pad3 + thing2) * 0.5f;
    xdiff = midX - temp_f20;
    ydiff = midY - temp_f22;
    zdiff = midZ - temp_f24;
    distance = sqrtf((xdiff * xdiff) + (ydiff * ydiff) + (zdiff * zdiff));
    if (distance > 0.01f) {
        var_f2 = ((xdiff * speed) / distance) + temp_f20;
        var_f12 = ((ydiff * speed) / distance) + temp_f22;
        var_f14 = ((zdiff * speed) / distance) + temp_f24;
    } else {
        var_f2 = temp_f20;
        var_f12 = temp_f22;
        var_f14 = temp_f24;
    }
    pos[0] = var_f2;
    pos[1] = var_f12;
    pos[2] = var_f14;
    return get_angle_between_path(sp54, pos);
}

s16 update_vehicle_following_path(Vec3f pos, s16* pathPointIndex, f32 speed) {
    f32 origXPos;
    f32 origYPos;
    f32 origZPos;
    UNUSED s32 stackPadding0;
    UNUSED s32 stackPadding1;
    UNUSED s32 stackPadding2;
    UNUSED s32 stackPadding3;
    UNUSED s32 stackPadding4;
    UNUSED s32 stackPadding5;
    UNUSED s32 stackPadding6;
    UNUSED s32 stackPadding7;
    UNUSED s32 stackPadding8;
    f32 farPathPointAverageX;
    f32 farPathPointAverageZ;
    f32 x_dist;
    f32 y_dist;
    f32 distance;
    f32 newX;
    f32 newZ;
    s16 newPathPointIndex;
    s16 farPathPoint1;
    s16 farPathPoint2;
    Path2D* temp_a0;
    Path2D* temp_a2;
    Vec3f sp38;

    origXPos = pos[0];
    origYPos = pos[1];
    origZPos = pos[2];
    sp38[0] = pos[0];
    sp38[1] = pos[1];
    sp38[2] = pos[2];
    newPathPointIndex = find_closest_vehicles_pathPoint(origXPos, origYPos, origZPos, *pathPointIndex);
    *pathPointIndex = newPathPointIndex;
    farPathPoint1 = (newPathPointIndex + 3) % gVehicle2DPathLength;
    farPathPoint2 = (newPathPointIndex + 4) % gVehicle2DPathLength;
    temp_a0 = &gVehicle2DPathPoint[farPathPoint1];
    temp_a2 = &gVehicle2DPathPoint[farPathPoint2];
    farPathPointAverageX = (temp_a0->x + temp_a2->x) * 0.5f;
    farPathPointAverageZ = (temp_a0->z + temp_a2->z) * 0.5f;
    x_dist = farPathPointAverageX - origXPos;
    y_dist = farPathPointAverageZ - origZPos;
    distance = sqrtf((x_dist * x_dist) + (y_dist * y_dist));
    if (distance > 0.01f) {
        newX = ((x_dist * speed) / distance) + origXPos;
        newZ = ((y_dist * speed) / distance) + origZPos;
    } else {
        newX = origXPos;
        newZ = origZPos;
    }
    pos[0] = newX;
    pos[1] = origYPos;
    pos[2] = newZ;
    return get_angle_between_path(sp38, pos);
}
