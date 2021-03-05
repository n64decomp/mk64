#include <ultra64.h>
#include <PR/ultratypes.h>
#include <macros.h>
#include "types.h"
#include "memory.h"

// Includes from SM64
//#include "buffers/buffers.h"
//#include "decompress.h"
//#include "game_init.h"
//#include "main.h"

//#include "segment_symbols.h"
//#include "segments.h"


extern uintptr_t gSegmentTable[32];
u32 sPoolFreeSpace;
u8 *sPoolStart;
u8 *sPoolEnd;
struct MainPoolBlock *sPoolListHeadL;
struct MainPoolBlock *sPoolListHeadR;

extern s32 gPrevLoadedAddress;
extern s32 gPrevMainThreadTask;

extern s32 gDisplayListHead;
extern u32 D_8015F724;
extern u32 D_802BA278;

struct MainPoolBlock {
    struct MainPoolBlock *prev;
    struct MainPoolBlock *next;
};

#define ALIGN16(val) (((val) + 0xF) & ~0xF)
#define ALIGN32(val) (((val) + 0xF) & ~0xF)


s32 func_802A7B70(s32 segment) {
    s32 old;
    old = gPrevLoadedAddress;
    segment = ALIGN16(segment);
    gPrevLoadedAddress += segment;
    return old;
}

uintptr_t set_segment_base_addr(s32 segment, void *addr) {
    gSegmentTable[segment] = (uintptr_t) addr & 0x1FFFFFFF;
    return gSegmentTable[segment];
}

void *get_segment_base_addr(s32 segment) {
    return (void *) (gSegmentTable[segment] | 0x80000000);
}

s32 lookup_item(u32 segment) {
    return (gSegmentTable[segment >> 0x18] + (segment & 0xFFFFFF)) | 0x80000000;
}
/*
void move_segment_table_to_dmem(void) {
    s32 i;

    for (i = 0; i < 16; i++) {
        gSPSegment(gDisplayListHead++, i, gSegmentTable[i]);
    }
}
void func_802A7CF0(u32 start, u32 end) {
    sPoolStart = (u8 *) ALIGN32((uintptr_t) start);
    sPoolEnd = (u8 *) ALIGN32((uintptr_t) end);

    D_8015F724 = (u32) end - start;
    gPrevLoadedAddress = (u32) start;
}
s32 func_802A7D1C(s32 arg0) {
    s32 temp_t6;
    s32 temp_v0;

    temp_v0 = gPrevLoadedAddress;
    temp_t6 = (arg0 + 0xF) & -0x10;
    D_8015F724 = (s32) (D_8015F724 - temp_t6);
    gPrevLoadedAddress = (s32) (temp_v0 + temp_t6);
    return temp_v0;
}
*/
GLOBAL_ASM("asm/non_matchings/memory.s")
