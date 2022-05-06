#include <ultra64.h>
#include <macros.h>
#include <common_structs.h>

// Made this because there will likely be a lot of structs in this file that will be compiled into one eventually.
// This keeps the other files cleaner.

/*
Note that while the `flag` members are signed, they should be understood as just a group of bits.
Based on some googling around (see https://stackoverflow.com/a/11644749) the operation `thing.flag |= 0x8000`
is NOT undefined behaviour, even though that is setting the sign bit.
The numerical interpretation of the result as a signed number is implementation defined, while the
actual operation acts on the bit representation of the number.
*/

struct piranha_plant {
    /* 0x00 */ s16 type;
    /* 0x02 */ s16 flags;
    /* 0x04 */ Vec4s visibilityStates; // A per-camera visibilty state tracker
    /* 0x0C */ f32 boundingBox;
    /* 0x10 */ Vec4s unk10;
    /* 0x18 */ Vec3f pos;
    /* 0x24 */ Vec4s timers; // A per-camera timer. Might be more appropriate to call this state
    /* 0x2C */ f32 unk_02C;
    /* 0x30 */ UnkActorInner unk30;
};

struct triple_shell_parent {
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

struct shell_actor {
    /* 0x00 */ s16 type;
    /* 0x02 */ s16 flags;
    // Index in D_8015F9B8 for the parent actor of this shell
    // Seems to pull double duty as a timer
    /* 0x04 */ s16 parentIndex;
    /* 0x06 */ s16 state;
    /* 0x08 */ f32 unk_08;
    /* 0x0C */ f32 boundingBox;
    /* 0x10 */ s16 rotVelocity; // Change in rotAngle on a per-update basis
    /* 0x12 */ s16 rotAngle; // Angle of rotation around player (or parent?), not the rotation of the shell itself
    /* 0x14 */ s16 playerId; // Id of the player that "owns" the shell
    /* 0x16 */ s16 unk_16;
    /* 0x18 */ Vec3f pos;
    /* 0x24 */ Vec3f velocity; // All 0 until the shell is fired
    /* 0x30 */ UnkActorInner unk30;
}; // size = 0x70

struct item_box {
    /* 0x00 */ s16 type;
    /* 0x02 */ s16 flags;
    /* 0x04 */ s16 someTimer;
    /* 0x06 */ s16 state;
    /* 0x08 */ f32 resetDistance; // Value added to the Y position when box is touched. Expected to be negative
    // Distance at which a player can activate the item box
    // Named "bounding box" to match the name used for the "size" of a kart
    /* 0x0C */ f32 boundingBox;
    /* 0x10 */ Vec3s rot;
    /* 0x16 */ s16 unk_16;
    /* 0x18 */ Vec3f pos;
    /* 0x24 */ f32 origY; // Original Y position. Basically the Y position the box will reset to after being touched
    /* 0x28 */ f32 unk_028;
    /* 0x2C */ f32 unk_02C;
    /* 0x30 */ UnkActorInner unk30;
}; // size = 0x70

struct fake_item_box {
    /* 0x00 */ s16 type;
    /* 0x02 */ s16 flags;
    /* 0x04 */ s16 someTimer;
    /* 0x06 */ s16 state;
    /* 0x08 */ f32 sizeScaling; // Controls the size of the box
    /* 0x0C */ f32 boundingBox;
    /* 0x10 */ Vec3s rot;
    /* 0x16 */ s16 unk_16;
    /* 0x18 */ Vec3f pos;
    /* 0x24 */ f32 playerId;
    /* 0x28 */ f32 targetY;
    /* 0x2C */ f32 unk_02C;
    /* 0x30 */ UnkActorInner unk30;
}; // size = 0x70

struct banana_bunch_parent {
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

struct banana_actor {
    /* 0x00 */ s16 type;
    /* 0x02 */ s16 flags;
    /* 0x04 */ s16 unk_04;
    /* 0x06 */ s16 state;
    /* 0x08 */ s16 parentIndex;
    /* 0x0A */ s16 bananaId; // ? Appears to indiciate which banana of the bunch this one is
    /* 0x0C */ f32 boundingBox;
    /* 0x10 */ s16 playerId; // Player that owns this particular banana
    /* 0x12 */ s16 elderIndex; // Index of the next-oldest banana in the bunch
    /* 0x14 */ s16 youngerIndex; // Index of the next-youngest banana in the bunch. -1 if this banana is the youngest
    /* 0x16 */ s16 unk_16; // Index of the next-youngest banana in the bunch. -1 if this banana is the youngest
    /* 0x18 */ Vec3f pos;
    /* 0x24 */ Vec3f velocity;
    /* 0x30 */ UnkActorInner unk30;
}; // size = 0x70

struct Actor {
    /* 0x00 */ s16 unk0; // 0xC, 0xD, or 0x2B
    #ifdef AVOID_UB
    /* 0x02 */ u16 unk2;
    #else
               s16 unk2; // bitflags
    #endif
    /* 0x04 */ s16 unk4; // Timer?
    /* 0x06 */ s16 unk6; // 1 // train wheel rot?
    /* 0x08 */ f32 unk8;
               f32 unkC;
    /* 0x0C */ Vec3s unk10; // Actor rotation
    /* 0x18 */ Vec3f unk18;
    /* 0x24 */ Vec3f unk24;
    /* 0x30 */ UnkActorInner unk30;
};
