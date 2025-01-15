#ifndef PATH_H
#define PATH_H

#include <common_structs.h>

typedef struct {
    /* 0x00 */ s16 posX;
    /* 0x02 */ s16 posY;
    /* 0x04 */ s16 posZ;
    /* 0x06 */ u16 trackSectionId;
} TrackPathPoint; // size = 0x08

enum {
    RIGHT_LEANING_CURVE = 0,
    LEFT_LEANING_CURVE = 1,
    RIGHT_CURVE = 2, // strong curve
    LEFT_CURVE = 3,  // strong curve
    STRAIGHT = 4
};

/**
 * These are per-path arrays that contain some information relating to path
 * The arrays in gTrackPath contain X/Y/Z and track segment information
 * The arrays in gTrackInnerPath and gCurrentTrackOuterPath track some other X/Y/Z, but the track segment is always 0
 *(so, untracked/unused) Its unclear how these arrays relate to each other
 **/
extern TrackPathPoint* gTrackPath[];
extern TrackPathPoint* gTrackInnerPath[];
extern TrackPathPoint* gTrackOuterPath[];

/**
 * Don't know what exactly these are, but like gTrackPath, gTrackInnerPath, and gCurrentTrackOuterPath
 * they track something about the path on a per-path basis
 **/
// PathPoint types?
extern s16* gTrackSectionTypes[];
// Based on analyse_angle_path this may be angles between path
// gPathExpectedRotation[i] = atan2(pathPoint_i, pathPoint_i+1)?
extern s16* gPathExpectedRotation[];
// No idea. Adjacency list?
extern s16* gTrackConsecutiveCurveCounts[];

/**
 * Certain parts of the pathPoint logic will copy some path/player specific data to a temporary variable.
 * For example: gCurrentTrackPath is always a value from gTrackPath. Depending on which path
 * a given player is on, the specific value may change
 **/
// Shadows values from gNearestPathPointByPlayerId
extern s16 sSomeNearestPathPoint;
// Shadows values from gPathIndexByPlayerId
extern s32 gActualPath;
// Shadows values from gTrackInnerPath
extern TrackPathPoint* gCurrentTrackInnerPath;
// Shadows values from gCurrentTrackOuterPath
extern TrackPathPoint* gCurrentTrackOuterPath;
// Shadows values from gTrackSectionTypes
extern s16* gCurrentTrackSectionTypesPath;
// Shadows values from gPathExpectedRotation
extern s16* gCurrentPathPointExpectedRotationPath;
// Shadowd values from gPathCountByPathIndex
extern u16 gSelectedPathCount;
// Shadows values from gTrackPath
extern TrackPathPoint* gCurrentTrackPath;
// Shadows values from gTrackConsecutiveCurveCounts
extern s16* gCurrentTrackConsecutiveCurveCountsPath;

extern u16 gNearestPathPointByPlayerId[]; // D_80164438
// Total path passed by playerId?
extern s32 gLapProgressScore[];
extern u16 gPathIndexByPlayerId[];  // D_801645B0
extern u16 gPathCountByPathIndex[]; // D_801645C8
// These values are only used when the camera is in "cinematic" mode
extern s16 gNearestPathPointByCameraId[]; // D_80164668

/**
 * Stuff that may not be directly related to path, but are only referenced in cpu_logic.
 * So they are at least pathPoint adjacent.
 **/

// Tracks something on a per-player basis, no idea what though
extern f32 gTrackPositionFactor[];
// Track segment by playerId, although it curiously does NOT track values for human players
// So, in 2 Player Grand Prix, the first 2 entries are always 0
extern u16 gPlayersTrackSectionId[];
// Seems to be a per-path overcount of the pathPoint count
extern s32 D_80163368[];
// Seemingly the Z position of the 1st pathPoint in the 0th path?
extern f32 gPathStartZ;
// These seem to track whether a player has entered or exited the "unknown" zone in yoshi's valley
// See yoshi_valley_cpu_path and update_cpu_path_completion
// Is 1 when a player is in the "unknown" zone in yoshi's valley
extern s16 cpu_NeedChoosePath[];
// Is 1 when a player leaves the "unknown" zone in yoshi's valley
extern s16 cpu_ResetPath[];
// Tracks whether a given player is in the "unknown" zone of yoshi's valley
extern s16 gNeedToChoosePath[];

#endif
