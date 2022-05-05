#include <ultra64.h>
#include <macros.h>
#include <common_structs.h>

// Made this because there will likely be a lot of structs in this file that will be compiled into one eventually.
// This keeps the other files cleaner.

struct piranha_plant {
    /* 0x00 */ s16 unk0; // 0xC, 0xD, or 0x2B
    #ifdef AVOID_UB
    /* 0x02 */ u16 unk2;
    #else
               s16 unk2; // bitflag
    #endif
    /* 0x04 */ s16 unk4; // Timer?
    /* 0x06 */ s16 unk6; // 1
    /* 0x08 */ s16 unk8;
    /* 0x0A */ s16 unkA;
    /* 0x0C */ f32 unkC;
    /* 0x10 */ Vec3s unk10; // Actor rotation
    /* 0x18 */ s32 unk18;
    /* 0x1C */ f32 unk1C;
    /* 0x20 */ s16 unk20; 
    /* 0x22 */ s16 unk22;
    /* 0x24 */ s16 unk24;
    /* 0x26 */ s16 unk26;
    /* 0x28 */ s16 unk28;
    /* 0x2A */ s16 unk2A;
};

struct triple_shell_parent {
    /* 0x00 */ s16 type;
    /* 0x02 */ s16 unk_02;
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
    /* 0x02 */ s16 unk_02;
    // Index in D_8015F9B8 for the parent actor of this shell
    // Seems to pull double duty as a timer
    /* 0x04 */ s16 parentIndex;
    /* 0x06 */ s16 state;
    /* 0x08 */ f32 unk_08;
    /* 0x0C */ f32 unk_0C;
    /* 0x10 */ s16 rotVelocity; // Change in rotAngle on a per-update basis
    /* 0x12 */ s16 rotAngle; // Angle of rotation around player (or parent?), not the rotation of the shell itself
    /* 0x14 */ s16 playerId; // Id of the player that "owns" the shell
    /* 0x16 */ s16 unk_16;
    /* 0x18 */ Vec3f pos;
    /* 0x24 */ Vec3f velocity; // All 0 until the shell is fired
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
