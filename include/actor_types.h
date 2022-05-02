#include <ultra64.h>
#include <macros.h>
#include <common_structs.h>

// Made this because there will likely be a lot of structs in this file that will be compiled into one eventually.
// This keeps the other files cleaner.

struct unkPiranha {
    s16 unk0;
    s16 unk2;
    s16 unk4;
};

struct piranha_plant {
    /* 0x00 */ s16 unk0; // ID
    #ifdef AVOID_UB
    /* 0x02 */ u16 unk2;
    #else
               s16 unk2; // bitflag
    #endif
    /* 0x04 */ s16 unk4; // Timer?
    /* 0x06 */ s16 unk6; // Animation Step
    /* 0x08 */ s16 unk8;
    /* 0x0A */ s16 unkA;
    /* 0x0C */ f32 unkC;
    /* 0x10 */ Vec3s unk10; // Actor rotation
    /* 0x18 */ Vec3f unk18;

    /* 0x24 */ s16 unk24;
    /* 0x26 */ s16 unk26;
    /* 0x28 */ s16 unk28;
    /* 0x2A */ s16 unk2A;
    /* 0x2C */ s16 unk2C;
};

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
 