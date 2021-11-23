#ifndef DEFINES_H
#define DEFINES_H

/**
 * Racing terms:
 * Staging means aligning a racecar to the starting line.
 * Start sequence means waiting for the light to turn green.
 */

#define PLAYER_INACTIVE             0         // 0x0000
#define PLAYER_EXISTS               (1 << 15) // 0x8000
#define PLAYER_CINEMATIC_MODE       (1 << 11) // 0x0800
#define PLAYER_STAGING              (1 <<  9) // 0x0200
#define PLAYER_START_SEQUENCE       (1 << 13) // 0x2000
#define PLAYER_CPU                  (1 << 12) // 0x1000
#define PLAYER_HUMAN                (1 << 14) // 0x4000
#define PLAYER_INVISIBLE_OR_BOMB    (1 <<  8) // 0x0100
#define PLAYER_UNKNOWN              (1 << 10) // 0x0400

// Compiles to -0x1000 in diff.py
#define PLAYER_HUMAN_AND_CPU PLAYER_EXISTS | PLAYER_HUMAN | PLAYER_CPU | PLAYER_START_SEQUENCE

#define GRAND_PRIX  0
#define TIME_TRIALS 1
#define VERSUS      2
#define BATTTLE     3

#define CC_50       0
#define CC_100      1
#define CC_150      2
#define CC_EXTRA    3
#define CC_BATTLE   4


#endif // DEFINES_H
