#ifndef ACTOR_TYPES_H
#define ACTOR_TYPES_H

#include <ultra64.h>
#include <macros.h>
#include <common_structs.h>

/*
gActorList should be understood to be populated by generic Actor structs.
However, for human readability, many functions interacting with actor list elements expect one of the many
specialized types found in this file.

Note that specialized types must be the same size as a plain Actor. Don't be mislead into thinking that
because its a separate type that it can modified separately from plain Actor. If you modify/add an actor type
and its size is different from plain Actor's, you WILL run into buggy (potentially crash inducing) behaviour.

Specialized structs are customizable so long as the following member specifications are met:

In general:
    0x00 -> s16 type
    0x02 -> s16 flags
    0x30 -> UnkActorInner unk30

If player can collide with the actor:
    0x0C -> f32 boundingBoxSize

If the actor makes sound (necessary for doppler/volume stuff):
    0x18 -> Vec3f pos
    0x24 -> Vec3f velocity

Other members are more flexible, and even the non-general specifications can be ignored IF AND ONLY IF you know
exactly what you're doing.
*/

#define ACTOR_FALLING_ROCK             0x05
#define ACTOR_BANANA                   0x06
#define ACTOR_GREEN_SHELL              0x07
#define ACTOR_RED_SHELL                0x08
#define ACTOR_YOSHI_VALLEY_EGG         0x09
#define ACTOR_PIRANHA_PLANT            0x0A
#define ACTOR_ITEM_BOX                 0x0C
#define ACTOR_FAKE_ITEM_BOX            0x0D
#define ACTOR_BANANA_BUNCH             0x0E
#define ACTOR_TRAIN_ENGINE             0x0F
#define ACTOR_TRAIN_TENDER             0x10
#define ACTOR_TRAIN_PASSENGER_CAR      0x11
#define ACTOR_TRIPLE_GREEN_SHELL       0x15
#define ACTOR_TRIPLE_RED_SHELL         0x16
#define ACTOR_MARIO_RACEWAY_SIGN       0x17
#define ACTOR_PALM_TREE                0x19
#define ACTOR_WARIO_STADIUM_SIGN       0x23
#define ACTOR_BOX_TRUCK                0x25
#define ACTOR_PADDLE_WHEEL_BOAT        0x26
#define ACTOR_RAILROAD_CROSSING        0x27
#define ACTOR_SCHOOL_BUS               0x28
#define ACTOR_TANKER_TRUCK             0x29
#define ACTOR_BLUE_SPINY_SHELL         0x2A
#define ACTOR_HOT_AIR_BALLOON_ITEM_BOX 0x2B
#define ACTOR_CAR                      0x2C
#define ACTOR_KIWANO_FRUIT             0x2D

#define ACTOR_LIST_SIZE 100

struct Actor {
    /* 0x00 */ s16 type;
    /* 0x02 */ s16 flags;
    /* 0x04 */ s16 unk_04;
    /* 0x06 */ s16 state;
    /* 0x08 */ f32 unk_08;
    /* 0x0C */ f32 boundingBoxSize;
    /* 0x10 */ Vec3s rot;
    /* 0x16 */ s16 unk_16;
    /* 0x18 */ Vec3f pos;
    /* 0x24 */ Vec3f velocity;
    /* 0x30 */ UnkActorInner unk30;
}; // size = 0x70

extern struct Actor gActorList[ACTOR_LIST_SIZE]; // D_8015F9B8

/*
Specialized actor types
*/

/*
Used by the locomotive, tender, and passenger car
*/
struct TrainCar {
    /* 0x00 */ s16 type;
    /* 0x02 */ s16 flags;
    /* 0x04 */ s16 unk_04;
    /* 0x06 */ s16 wheelRot;
    /* 0x08 */ f32 unk_08;
    /* 0x0C */ f32 unk_0C;
    /* 0x10 */ Vec3s rot;
    /* 0x10 */ s16 unk_16;
    /* 0x18 */ Vec3f pos;
    /* 0x24 */ Vec3f velocity;
    /* 0x30 */ UnkActorInner unk30;
}; // size = 0x70

struct RailroadCrossing {
    /* 0x00 */ s16 type;
    /* 0x02 */ s16 flags;
    /* 0x04 */ s16 someTimer;
    /* 0x06 */ s16 crossingId;
    /* 0x08 */ f32 unk_08;
    /* 0x0C */ f32 unk_0C;
    /* 0x10 */ Vec3s rot;
    /* 0x16 */ s16 unk_16;
    /* 0x18 */ Vec3f pos;
    /* 0x24 */ Vec3f velocity;
    /* 0x30 */ UnkActorInner unk30;
}; // size = 0x70

struct FallingRock {
    /* 0x00 */ s16 type;
    /* 0x02 */ s16 flags;
    /* 0x04 */ s16 respawnTimer;
    /* 0x06 */ s16 unk_06;
    /* 0x08 */ f32 unk_08;
    /* 0x0C */ f32 boundingBoxSize;
    /* 0x10 */ Vec3s rot;
    /* 0x16 */ s16 unk_16;
    /* 0x18 */ Vec3f pos;
    /* 0x24 */ Vec3f velocity;
    /* 0x30 */ UnkActorInner unk30;
}; // size = 0x70

struct ActorSpawnData {
    /* 0x00 */ Vec3s pos;
    /* 0x06 */ u16 someId; // Usually populated, but not necessarily used by all actors types
};

// Required for func_80298AC0 due to diff size.
// members unverified. data located at D_06013F78
struct UnkActorSpawnData {
    /* 0x00 */ Vec3s pos;
    /* 0x06 */ s16 someId; // s16 required here.
    /* 0x08 */ u16 unk8;
};

struct UnkActorSpawnData80298D10 {
    /* 0x00 */ Vec3s pos;
    /* 0x06 */ s16 someId; // Usually populated, but not necessarily used by all actors types
    /* 0x08 */ s16 unk8;
};

struct YoshiValleyEgg {
    /* 0x00 */ s16 type;
    /* 0x02 */ s16 flags;
    /* 0x04 */ s16 unk_04;
    /* 0x06 */ s16 unk_06;
    /* 0x08 */ f32 pathRadius;
    /* 0x0C */ f32 boundingBoxSize;
    /* 0x10 */ s16 pathRot;
    /* 0x12 */ s16 eggRot;
    /* 0x14 */ s16 unk_14;
    /* 0x16 */ s16 unk_16;
    /* 0x18 */ Vec3f pos;
    // Note, pathCenter[1] should be understood to be the Y velocity of the egg
    // pathCenter[0] and pathCenter[2] are the X,Z coordinates of the center of the path
    /* 0x24 */ Vec3f pathCenter;
    /* 0x30 */ UnkActorInner unk30;
}; // size = 0x70

struct KiwanoFruit {
    /* 0x00 */ s16 type;
    /* 0x02 */ s16 flags;
    /* 0x04 */ s16 targetPlayer; // Id of the player this actor tracks. Each player has their own kiwano actor just for them
    /* 0x06 */ s16 state;
    /* 0x08 */ f32 bonkTimer; // bonkState? Not sure what this is tracking, but its some form of count down that starts after the fruit hits you
    /* 0x0C */ f32 boundingBoxSize;
    /* 0x10 */ s16 animState;
    /* 0x12 */ s16 animTimer;
    /* 0x14 */ s16 unk_14;
    /* 0x16 */ s16 unk_16;
    /* 0x18 */ Vec3f pos;
    /* 0x24 */ Vec3f velocity;
    /* 0x30 */ UnkActorInner unk30;
}; // size = 0x70

struct PaddleWheelBoat {
    /* 0x00 */ s16 type;
    /* 0x02 */ s16 flags;
    /* 0x04 */ s16 unk_04;
    /* 0x06 */ s16 wheelRot;
    /* 0x08 */ f32 unk_08;
    /* 0x0C */ f32 unk_0C;
    /* 0x10 */ Vec3s boatRot;
    /* 0x16 */ s16 unk_16;
    /* 0x18 */ Vec3f pos;
    /* 0x24 */ Vec3f velocity;
    /* 0x30 */ UnkActorInner unk30;
}; // size = 0x70

struct PiranhaPlant {
    /* 0x00 */ s16 type;
    /* 0x02 */ s16 flags;
    /* 0x04 */ Vec4s visibilityStates; // A per-camera visibilty state tracker
    /* 0x0C */ f32 boundingBoxSize;
    /* 0x10 */ Vec4s unk10;
    /* 0x18 */ Vec3f pos;
    /* 0x24 */ Vec4s timers; // A per-camera timer. Might be more appropriate to call this state
    /* 0x2C */ f32 unk_02C;
    /* 0x30 */ UnkActorInner unk30;
}; // size = 0x70

// Copied from PiranhaPlant, may not be accurate.
struct PalmTree {
    /* 0x00 */ s16 type;
    /* 0x02 */ s16 flags;
    /* 0x04 */ Vec4s visibilityStates; // A per-camera visibilty state tracker
    /* 0x0C */ f32 boundingBoxSize;
    /* 0x10 */ Vec3s unk10;
    /* 0x16 */ s16 unk16;
    /* 0x18 */ Vec3f pos;
    /* 0x24 */ Vec4s timers; // A per-camera timer. Might be more appropriate to call this state
    /* 0x2C */ f32 unk_02C;
    /* 0x30 */ UnkActorInner unk30;
}; // size = 0x70

struct TripleShellParent {
    /* 0x00 */ s16 type;
    /* 0x02 */ s16 flags;
    /* 0x04 */ s16 shellsAvailable;
    /* 0x06 */ s16 state;
    /* 0x08 */ f32 unk_08;
    /* 0x0C */ f32 unk_0C;
    /* 0x10 */ s16 rotVelocity;
    /* 0x12 */ s16 rotAngle;
    /* 0x14 */ s16 playerId; // Id of the player that "owns" the shells
    /* 0x16 */ s16 unk_16;
    /* 0x18 */ Vec3f unk_18;
    /* 0x24 */ Vec3f shellIndices; // Indices in gActorList for the shells "owned" by this parent
    /* 0x30 */ UnkActorInner unk30;
}; // size = 0x70

struct ShellActor {
    /* 0x00 */ s16 type;
    /* 0x02 */ s16 flags;
    // Index in gActorList for the parent actor of this shell
    // Seems to pull double duty as a timer
    union {
        /* 0x04 */ s16 parentIndex;
        /* 0x04 */ s16 someTimer;
        // Red Shells only (maybe blue shells?)
        /* 0x04 */ s16 targetPlayer; // Player the shell is after
    };
    /* 0x06 */ s16 state;
    /* 0x08 */ f32 shellId; // 0, 1, or 2. Indicates which shell in the triplet this one is
    /* 0x0C */ f32 boundingBoxSize;
    /* 0x10 */ s16 rotVelocity; // Change in rotAngle on a per-update basis
    union {
        /* 0x12 */ s16 rotAngle; // Angle of rotation around player (or parent?), not the rotation of the shell itself
        /* 0x12 */ u16 pathIndex; // Index in the set of points that make up the "path" the red/blue shell follows (may be GP mode exclusive)
    };
    /* 0x14 */ s16 playerId; // Id of the player that "owns" the shell
    /* 0x16 */ s16 unk_16;
    /* 0x18 */ Vec3f pos;
    /* 0x24 */ Vec3f velocity; // All 0 until the shell is fired
    /* 0x30 */ UnkActorInner unk30;
}; // size = 0x70

struct ItemBox {
    /* 0x00 */ s16 type;
    /* 0x02 */ s16 flags;
    /* 0x04 */ s16 someTimer;
    /* 0x06 */ s16 state;
    /* 0x08 */ f32 resetDistance; // Value added to the Y position when box is touched. Expected to be negative
    // Distance at which a player can activate the item box
    // Named "bounding box" to match the name used for the "size" of a kart
    /* 0x0C */ f32 boundingBoxSize;
    /* 0x10 */ Vec3s rot;
    /* 0x16 */ s16 unk_16;
    /* 0x18 */ Vec3f pos;
    /* 0x24 */ f32 origY; // Original Y position. Basically the Y position the box will reset to after being touched
    /* 0x28 */ f32 unk_028;
    /* 0x2C */ f32 unk_02C;
    /* 0x30 */ UnkActorInner unk30;
}; // size = 0x70

struct FakeItemBox {
    /* 0x00 */ s16 type;
    /* 0x02 */ s16 flags;
    /* 0x04 */ s16 someTimer;
    /* 0x06 */ s16 state;
    /* 0x08 */ f32 sizeScaling; // Controls the size of the box
    /* 0x0C */ f32 boundingBoxSize;
    /* 0x10 */ Vec3s rot;
    /* 0x16 */ s16 unk_16;
    /* 0x18 */ Vec3f pos;
    /* 0x24 */ f32 playerId;
    /* 0x28 */ f32 targetY;
    /* 0x2C */ f32 unk_02C;
    /* 0x30 */ UnkActorInner unk30;
}; // size = 0x70

struct BananaBunchParent {
    /* 0x00 */ s16 type;
    /* 0x02 */ s16 flags;
    /* 0x04 */ s16 unk_04;
    /* 0x06 */ s16 state;
    /* 0x08 */ f32 unk_08;
    /* 0x0C */ f32 unk_0C;
    /* 0x10 */ s16 playerId; // Player that own the bananas
    /* 0x12 */ s16 bananaIndices[5]; // Indices in gActorList for the bananas owned by this parent
    /* 0x1C */ s16 bananasAvailable;
    /* 0x1E */ s16 unk_1E;
    /* 0x20 */ f32 unk_20[4];
    /* 0x30 */ UnkActorInner unk30;
}; // size = 0x70

struct BananaActor {
    /* 0x00 */ s16 type;
    /* 0x02 */ s16 flags;
    /* 0x04 */ s16 unk_04;
    /* 0x06 */ s16 state;
    /* 0x08 */ s16 parentIndex;
    /* 0x0A */ s16 bananaId; // ? Appears to indiciate which banana of the bunch this one is
    /* 0x0C */ f32 boundingBoxSize;
    union {
        /* 0x10 */ Vec3s rot;
        struct {
        /* 0x10 */ s16 playerId; // Id of the player that owns this banana
        /* 0x12 */ s16 elderIndex; // Index in gActorList of the next-oldest banana in the bunch
        /* 0x14 */ s16 youngerIndex; // Index in gActorList of the next-youngest banana in the bunch
        };
    };
    /* 0x16 */ s16 unk_16;
    /* 0x18 */ Vec3f pos;
    /* 0x24 */ Vec3f velocity;
    /* 0x30 */ UnkActorInner unk30;
}; // size = 0x70

#endif
