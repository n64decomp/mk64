#ifndef OBJECTS_H
#define OBJECTS_H

#include "common_structs.h"

#define OBJECT_LIST_SIZE 0x226
#define D_80183DD8_SIZE  7
#define SOME_OBJECT_INDEX_LIST_SIZE 32

typedef struct
{
    /* 0x00 */ f32 unk_000;
    /* 0x04 */ Vec3f unk_004;
    /* 0x10 */ Vec3f unk_010;
    /* 0x1C */ Vec3f unk_01C;
    /* 0x28 */ Vec3f unk_028;
    /* 0x34 */ f32 unk_034;
    /* 0x38 */ Vec3f unk_038;
    /* 0x44 */ f32 unk_044;
    /* 0x48 */ s32 unk_048;
    /* 0x4C */ s32 unk_04C;
    /* 0x50 */ s32 unk_050;
    /* 0x54 */ s32 unk_054;
    /* 0x58 */ s32 unk_058;
    /* 0x5C */ s32 unk_05C;
    /* 0x60 */ s32* unk_060;
    /* 0x64 */ s32* unk_064;
    /* 0x68 */ s32* unk_068;
    /* 0x6C */ s32 unk_06C;
    /* 0x70 */ s32 unk_070;
    /* 0x74 */ s32 unk_074;
    /* 0x78 */ s8  unk_078[0x04];
    /* 0x7C */ s32 unk_07C;
    /* 0x80 */ s32 unk_080;
    /* 0x84 */ s16 unk_084[0xA];
    /* 0x98 */ s16 unk_098;
    /* 0x9A */ s16 unk_09A;
    /* 0x9C */ s16 unk_09C;
    /* 0x9E */ s16 unk_09E;
    /* 0xA0 */ s16 unk_0A0;
    /* 0xA2 */ s16 unk_0A2;
    /* 0xA4 */ s16 unk_0A4;
    /* 0xA6 */ s16 unk_0A6;
    /* 0xA8 */ s16 unk_0A8;
    /* 0xAA */ s16 unk_0AA;
    /* 0xAC */ s16 unk_0AC;
    /* 0xAE */ s16 unk_0AE;
    /* 0xB0 */ s16 unk_0B0;
    /* 0xB2 */ u16 unk_0B2;
    /* 0xB4 */ u16 unk_0B4;
    /* 0xB6 */ u16 unk_0B6;
    /* 0xB8 */ Vec3s unk_0B8;
    /* 0xBE */ u16 unk_0BE;
    /* 0xC0 */ u16 unk_0C0;
    /* 0xC2 */ u16 unk_0C2;
    /* 0xC4 */ u16 unk_0C4;
    /* 0xC6 */ u16 unk_0C6;
    /* 0xC8 */ u16 unk_0C8;
    /* 0xCA */ s8  unk_0CA;
    /* 0xCB */ s8  unk_0CB;
    /* 0xCC */ s8  unk_0CC;
    /* 0xCD */ s8  unk_0CD;
    /* 0xCE */ s8  unk_0CE;
    /* 0xCF */ s8  unk_0CF;
    /* 0xD0 */ s8  unk_0D0;
    /* 0xD1 */ s8  unk_0D1;
    /* 0xD2 */ s8  unk_0D2;
    /* 0xD3 */ s8  unk_0D3;
    /* 0xD4 */ s8  unk_0D4;
    /* 0xD5 */ u8  unk_0D5;
    /* 0xD6 */ u8  unk_0D6;
    /* 0xD7 */ u8  unk_0D7;
    /* 0xD8 */ s8  unk_0D8;
    /* 0xD9 */ u8  unk_0D9;
    /* 0xDA */ u8  unk_0DA;
    /* 0xDB */ u8  unk_0DB;
    /* 0xDC */ u8  unk_0DC;
    /* 0xDD */ u8  unk_0DD;
    /* 0xDE */ s8  unk_0DE;
    /* 0xDF */ u8  unk_0DF;
} struct_80165C18_entry; // size = 0xE0

// This is the object list
extern struct_80165C18_entry D_80165C18[];

// This is another list of indices in D_80165C18.
extern s32 D_80183DD8[];

/**
 * D_80183EA0, D_80183F28, D_8018BFA8, and D_8018C030 are all lists of indices in D_80165C18.
 * func_80070190 initializes them in such a way that the indicies in each list are not adjacent.
 * First D_80183EA0 gets an unused index, then D_80183F28, then D_8018BFA8, then D_8018C030, and then it loops.
 * 
 * The objects found at the indices in each list appears to be course dependent
 **/ 

extern s32 D_80183EA0[];
extern s32 D_80183F28[];
extern s32 D_8018BFA8[];
extern s32 D_8018C030[];

#endif
