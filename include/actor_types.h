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

struct choochoo {
    s32 unk0;
    s16 unk4;
    s16 unk6;
    s32 unk8;

};

struct choochooTrain {
    s32 unk0;
    s16 unk4;
    s16 unk6;
    f32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
    f32 unk18;
    s32 unk1C;
    s32 unk20;
    f32 unk24;
    s32 unk28;
    s32 unk2C;
    s32 unk2E;
    s32 unk30;
    s32 unk32;
    s32 unk34;
    s32 unk36;
    s32 unk38;
};

struct UnkStruct_802976D8 {
    s16 unk0;
    s16 unk2;
    s16 unk4;
};

// copied from player struct
struct bigboi {
    /* 0x0000 */ f32 unk_000;
    /* 0x0004 */ f32 unk_004;
    /* 0x0008 */ f32 unk_008;
    /* 0x000C */ s32 unk_00C;
    /* 0x0010 */ char unk_010[0x4];
    /* 0x0014 */ f32 posX;
    /* 0x0018 */ f32 unk_018;
    /* 0x001C */ f32 unk_01C;
    /* 0x0020 */ f32 unk_020;
    /* 0x0024 */ f32 rotY;
    /* 0x0028 */ f32 rotZ;
    /* 0x002C */ s16 unk_02C;
    /* 0x002E */ s16 unk_02E;
    /* 0x0030 */ s16 unk_030;
    /* 0x0032 */ char unk_032[0x2];
    /* 0x0034 */ f32 unk_034;
    /* 0x0038 */ s16 unk_038;
                 s16 unk_03A;
    /* 0x003C */ f32 unk_03C;
    /* 0x0040 */ char unk_040[0x2];
    /* 0x0042 */ s16 unk_042;
    /* 0x0044 */ s16 unk_044;
    /* 0x0046 */ s16 unk_046;
    /* 0x0048 */ char unk_048[0x10];
    /* 0x0058 */ f32 unk_058;
    /* 0x005C */ f32 unk_05C;
    /* 0x0060 */ f32 unk_060;
    /* 0x0064 */ f32 unk_064;
    /* 0x0068 */ f32 unk_068;
    /* 0x006C */ f32 unk_06C;
    /* 0x0070 */ f32 unk_070;
    /* 0x0074 */ f32 unk_074;
    /* 0x0078 */ s16 unk_078;
    /* 0x007A */ s16 unk_07A;
    /* 0x007C */ s32 unk_07C;
    /* 0x0080 */ f32 unk_080;
    /* 0x0084 */ f32 unk_084;
    /* 0x0088 */ f32 unk_088;
    /* 0x008C */ f32 unk_08C;
    /* 0x0090 */ f32 unk_090;
    /* 0x0094 */ f32 unk_094;
    /* 0x0098 */ f32 unk_098;
    /* 0x009C */ f32 unk_09C;
    /* 0x00A0 */ f32 unk_0A0;
    /* 0x00A4 */ f32 unk_0A4;
    /* 0x00A8 */ s16 unk_0A8;
    /* 0x00AA */ s16 unk_0AA;
    /* 0x00AC */ s16 unk_0AC;
    /* 0x00AE */ s16 unk_0AE;
    /* 0x00B0 */ s16 unk_0B0;
    /* 0x00B2 */ s16 unk_0B2;
    /* 0x00B4 */ s16 unk_0B4;
    /* 0x00B6 */ s16 unk_0B6;
    /* 0x00B8 */ f32 unk_0B8;
    /* 0x00BC */ s32 unk_0BC;
    /* 0x00C0 */ s16 unk_0C0;
    /* 0x00C2 */ s16 unk_0C2;
    /* 0x00C4 */ s16 unk_0C4;
    /* 0x00C6 */ s16 unk_0C6;
    /* 0x00C8 */ s16 unk_0C8;
    /* 0x00CA */ s16 unk_0CA;
    /* 0x00CC */ char unk_0CC[0x10];
    /* 0x00DC */ s16 unk_0DC;
    /* 0x00DE */ s16 unk_0DE;
    /* 0x00E0 */ s16 unk_0E0;
    /* 0x00E2 */ s16 unk_0E2;
    /* 0x00E4 */ f32 unk_0E4;
    /* 0x00E8 */ f32 unk_0E8;
    /* 0x00EC */ f32 unk_0EC;
    /* 0x00F0 */ f32 unk_0F0;
    /* 0x00F4 */ f32 unk_0F4;
    /* 0x00F8 */ char unk_0F8[0x2];
    /* 0x00FA */ s16 unk_0FA;
    /* 0x00FC */ f32 unk_0FC;
    /* 0x0100 */ f32 unk_100;
    /* 0x0104 */ f32 unk_104;
    /* 0x0108 */ f32 unk_108;
    /* 0x010C */ s16 unk_10C;
    /* 0x010E */ char unk_10E[0x2];
    /* 0x0110 */ s16 unk_110;
    /* 0x0112 */ s16 unk_112;
    /* 0x0114 */ s16 unk_114;
    /* 0x0116 */ s16 unk_116;
    /* 0x0118 */ s16 unk_118;
    /* 0x011A */ s16 unk_11A;
    /* 0x011C */ f32 unk_11C;
    /* 0x0120 */ f32 unk_120;
    /* 0x0124 */ f32 unk_124;
    /* 0x0128 */ f32 unk_128;
    /* 0x012C */ f32 unk_12C;
    /* 0x0130 */ f32 unk_130;
    /* 0x0134 */ f32 unk_134;
    /* 0x0138 */ f32 unk_138;
    /* 0x013C */ f32 unk_13C;
    /* 0x0140 */ f32 unk_140;
    /* 0x0144 */ f32 unk_144;
    /* 0x0148 */ f32 unk_148;
    /* 0x014C */ char unk_14C[0x4];
    /* 0x0150 */ f32 unk_150[9];
    /* 0x0174 */ f32 unk_174[9];
    /* 0x0198 */ f32 unk_198;
    /* 0x019C */ f32 unk_19C;
    /* 0x01A0 */ f32 unk_1A0;
    /* 0x01A4 */ s8 unk_1A4;
    /* 0x01A5 */ s8 unk_1A5;
    /* 0x01A6 */ s16 unk_1A6;
    /* 0x01A8 */ f32 unk_1A8;
    /* 0x01AC */ s32 unk_1AC;
    /* 0x01B0 */ f32 unk_1B0;
    /* 0x01B4 */ f32 unk_1B4;
    /* 0x01B8 */ f32 unk_1B8;
    /* 0x01BC */ s8 unk_1BC;
    /* 0x01BD */ s8 unk_1BD;
    /* 0x01BE */ s16 unk_1BE;
    /* 0x01C0 */ f32 unk_1C0;
    /* 0x01C4 */ s32 unk_1C4;
    /* 0x01C8 */ f32 unk_1C8;
    /* 0x01CC */ f32 unk_1CC;
    /* 0x01D0 */ f32 unk_1D0;
    /* 0x01D4 */ s8 unk_1D4;
    /* 0x01D5 */ s8 unk_1D5;
    /* 0x01D6 */ s16 unk_1D6;
    /* 0x01D8 */ f32 unk_1D8;
    /* 0x01DC */ s32 unk_1DC;
    /* 0x01E0 */ f32 unk_1E0;
    /* 0x01E4 */ f32 unk_1E4;
    /* 0x01E8 */ f32 unk_1E8;
    /* 0x01EC */ s8 unk_1EC;
    /* 0x01ED */ s8 unk_1ED;
    /* 0x01EE */ s16 unk_1EE;
    /* 0x01F0 */ f32 unk_1F0;
    /* 0x01F4 */ s32 unk_1F4;
    /* 0x01F8 */ f32 unk_1F8;
    /* 0x01FC */ f32 unk_1FC;
};
