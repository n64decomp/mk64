#include <ultra64.h>
#include <macros.h>
#include <common_structs.h>

// Made this because there will likely be a lot of structs in this file that will be compiled into one eventually.
// This keeps the other files cleaner.

#define ACTOR_FALLING_ROCK        0x05
#define ACTOR_BANANA              0x06
#define ACTOR_GREEN_SHELL         0x07
#define ACTOR_RED_SHELL           0x08
#define ACTOR_YOSHI_VALLEY_EGG    0x09
#define ACTOR_PIRANHA_PLANT       0x0A
#define ACTOR_ITEM_BOX            0x0C
#define ACTOR_FAKE_ITEM_BOX       0x0D
#define ACTOR_BANANA_BUNCH        0x0E
#define ACTOR_TRAIN_ENGINE        0x0F
#define ACTOR_TRAIN_TENDER        0x10
#define ACTOR_TRAIN_PASSENGER_CAR 0x11
#define ACTOR_TRIPLE_GREEN_SHELL  0x15
#define ACTOR_TRIPLE_RED_SHELL    0x16
#define ACTOR_MARIO_RACEWAY_SIGN  0x17
#define ACTOR_WARIO_STADIUM_SIGN  0x23
#define ACTOR_PADDLE_WHEEL_BOAT   0x26
#define ACTOR_RAILROAD_CROSSING   0x27
#define ACTOR_BLUE_SPINY_SHELL    0x2A
#define ACTOR_HAB_ITEM_BOX        0x2B // HAB -> Hot Air Baloon
#define ACTOR_KIWANO_FRUIT        0x2D

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
    /* 0x10 */ Vec4s unk_10;
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
    /* 0x10 */ Vec3s boatRot; // Weirdly, its boatRot[1] (Y rotation?) that changes the direction the boat faces
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
    /* 0x24 */ Vec3f shellIndices; // Indices in D_8015F9B8 for the shells "owned" by this parent
    /* 0x30 */ UnkActorInner unk30;
}; // size = 0x70

struct ShellActor {
    /* 0x00 */ s16 type;
    /* 0x02 */ s16 flags;
    // Index in D_8015F9B8 for the parent actor of this shell
    // Seems to pull double duty as a timer
    /* 0x04 */ s16 parentIndex;
    /* 0x06 */ s16 state;
    /* 0x08 */ f32 unk_08;
    /* 0x0C */ f32 boundingBoxSize;
    /* 0x10 */ s16 rotVelocity; // Change in rotAngle on a per-update basis
    /* 0x12 */ s16 rotAngle; // Angle of rotation around player (or parent?), not the rotation of the shell itself
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
    /* 0x12 */ s16 bananaIndices[5]; // Indices in D_8015F9B8 for the bananas owned by this parent
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
        /* 0x10 */ s16 playerId; // Id of the player that owns this banana
        /* 0x12 */ s16 elderIndex; // Index in D_8015F9B8 of the next-oldest banana in the bunch
        /* 0x14 */ s16 youngerIndex; // Index in D_8015F9B8 of the next-youngest banana in the bunch
    };
    /* 0x16 */ s16 unk_16;
    /* 0x18 */ Vec3f pos;
    /* 0x24 */ Vec3f velocity;
    /* 0x30 */ UnkActorInner unk30;
}; // size = 0x70

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
