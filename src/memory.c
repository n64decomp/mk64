#include <ultra64.h>
#include <PR/ultratypes.h>
#include <macros.h>
#include "types.h"

// Includes from SM64
//#include "buffers/buffers.h"
//#include "decompress.h"
//#include "game_init.h"
#include "main.h"
#include "memory.h"
#include "variables.h"
#include "common_structs.h"
#include "math_util.h"

//#include "segment_symbols.h"
#include "segments.h"


s32 D_802BA270;
s32 D_802BA274;
u32 sPoolFreeSpace;
struct MainPoolBlock *sPoolListHeadL;
struct MainPoolBlock *sPoolListHeadR;

struct MainPoolState *gMainPoolState = NULL;

struct UnkStruct_802B8CD4 D_802B8CD4[] = {
    0
};
s32 D_802B8CE4 = 0; // pad

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

/**
 * @brief converts an RSP segment + offset address to a normal memory address
 */
void *segmented_to_virtual(const void *addr) {
    size_t segment = (uintptr_t) addr >> 24;
    size_t offset = (uintptr_t) addr & 0x00FFFFFF;

    return (void *) ((gSegmentTable[segment] + offset) | 0x80000000);
}

void move_segment_table_to_dmem(void) {
    s32 i;

    for (i = 0; i < 16; i++) {
        gSPSegment(gDisplayListHead++, i, gSegmentTable[i]);
    }
}

void func_802A7CF0(s32 start, s32 end) {

    start = ALIGN16(start);
    end &= ~0xF;

    D_8015F724 = (end - start) - 0x10;
    gPrevLoadedAddress = start;
}

s32 func_802A7D1C(s32 arg0) {
    s32 addr;

    arg0 = ALIGN16(arg0);
    D_8015F724 -= arg0;
    addr = gPrevLoadedAddress;
    gPrevLoadedAddress += arg0;

    return addr;
}

UNUSED void func_802A7D54(s32 arg0, s32 arg1) {
    gD_80150158[arg0].unk0 = arg0;
    gD_80150158[arg0].unk8 = arg1;
}

s32 func_802A7D70(s32 arg0, s32 arg1) {
    s32 temp_v0;
    s32 temp_a2 = arg1 - arg0;

    temp_v0 = func_802A7D1C(temp_a2);
    if (temp_v0 != 0) {
        dma_copy(temp_v0, arg0, temp_a2);
    }
    return temp_v0;
}

UNUSED void main_pool_init(u32 start, u32 end) {
    start = ALIGN16(start);
    end = ALIGN16(end - 15);

    sPoolFreeSpace = (end - start) - 16;

    sPoolListHeadL = (struct MainPoolBlock *) start;
    sPoolListHeadR = (struct MainPoolBlock *) end;
    sPoolListHeadL->prev = NULL;
    sPoolListHeadL->next = NULL;
    sPoolListHeadR->prev = NULL;
    sPoolListHeadR->next = NULL;
}

/**
 * Allocate a block of memory from the pool of given size, and from the
 * specified side of the pool (MEMORY_POOL_LEFT or MEMORY_POOL_RIGHT).
 * If there is not enough space, return NULL.
 */
void *main_pool_alloc(u32 size, u32 side) {
    struct MainPoolBlock *newListHead;
    void *addr = NULL;

    size = ALIGN16(size) + 8;
    if (sPoolFreeSpace >= size) {
        sPoolFreeSpace -= size;
        if (side == MEMORY_POOL_LEFT) {
            newListHead = (struct MainPoolBlock *) ((u8 *) sPoolListHeadL + size);
            sPoolListHeadL->next = newListHead;
            newListHead->prev = sPoolListHeadL;
            addr = (u8 *) sPoolListHeadL + 8;
            sPoolListHeadL = newListHead;
        } else {
            newListHead = (struct MainPoolBlock *) ((u8 *) sPoolListHeadR - size);
            sPoolListHeadR->prev = newListHead;
            newListHead->next = sPoolListHeadR;
            sPoolListHeadR = newListHead;
            addr = (u8 *) sPoolListHeadR + 8;
        }
    }
    return addr;
}
/**
 * Free a block of memory that was allocated from the pool. The block must be
 * the most recently allocated block from its end of the pool, otherwise all
 * newer blocks are freed as well.
 * Return the amount of free space left in the pool.
 */
u32 main_pool_free(void *addr) {
    struct MainPoolBlock *block = (struct MainPoolBlock *) ((u8 *) addr - 8);
    struct MainPoolBlock *oldListHead = (struct MainPoolBlock *) ((u8 *) addr - 8);

    if (oldListHead < sPoolListHeadL) {
        while (oldListHead->next != NULL) {
            oldListHead = oldListHead->next;
        }
        sPoolListHeadL = block;
        sPoolListHeadL->next = NULL;
        sPoolFreeSpace += (uintptr_t) oldListHead - (uintptr_t) sPoolListHeadL;
    } else {
        while (oldListHead->prev != NULL) {
            oldListHead = oldListHead->prev;
        }
        sPoolListHeadR = block->next;
        sPoolListHeadR->prev = NULL;
        sPoolFreeSpace += (uintptr_t) sPoolListHeadR - (uintptr_t) oldListHead;
    }
    return sPoolFreeSpace;
}
// main_pool_realloc
UNUSED void *main_pool_realloc(void *addr, u32 size) {
    void *newAddr = NULL;
    struct MainPoolBlock *block = (struct MainPoolBlock *) ((u8 *) addr - 8);

    if (block->next == sPoolListHeadL) {
        main_pool_free(addr);
        newAddr = main_pool_alloc(size, MEMORY_POOL_LEFT);
    }
    return newAddr;
}

UNUSED s32 main_pool_available(void) {
    return sPoolFreeSpace - 8;
}

UNUSED u32 main_pool_push_state(void) {
    struct MainPoolState *prevState = gMainPoolState;
    u32 freeSpace = sPoolFreeSpace;
    struct MainPoolBlock *lhead = sPoolListHeadL;
    struct MainPoolBlock *rhead = sPoolListHeadR;

    gMainPoolState = main_pool_alloc(sizeof(*gMainPoolState), MEMORY_POOL_LEFT);
    gMainPoolState->freeSpace = freeSpace;
    gMainPoolState->listHeadL = lhead;
    gMainPoolState->listHeadR = rhead;
    gMainPoolState->prev = prevState;
    return sPoolFreeSpace;
}

/**
 * Restore pool state from a previous call to main_pool_push_state. Return the
 * amount of free space left in the pool.
 */
UNUSED u32 main_pool_pop_state(void) {
    sPoolFreeSpace = gMainPoolState->freeSpace;
    sPoolListHeadL = gMainPoolState->listHeadL;
    sPoolListHeadR = gMainPoolState->listHeadR;
    gMainPoolState = gMainPoolState->prev;
    return sPoolFreeSpace;
}
// similar to sm64 dma_read
void *func_802A80B0(u8 *dest, u8 *srcStart, u8 *srcEnd) {
    u32 addr;
    u32 size = srcStart - dest;
    addr = main_pool_alloc(size, srcEnd);
    
    if (addr != 0) {

        osInvalDCache(addr, size);
        osPiStartDma(&gDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ, dest, addr, size,
                     &gDmaMesgQueue);
        osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, OS_MESG_BLOCK);
    }
    return addr;
}

// replaces call to dynamic_dma_read with dma_read.
UNUSED void *load_segment(s32 segment, u8 *srcStart, u8 *srcEnd, u32 side) {
    void *addr = func_802A80B0(srcStart, srcEnd, side);

    if (addr != NULL) {
        set_segment_base_addr(segment, addr);
    }
    return addr;
}

// Similar to sm64 load_to_fixed_pool_addr?
UNUSED void *func_802A8190(s32 arg0, s32 arg1) {
    //u32 srcSize = ALIGN16(srcEnd - srcStart);
    //u32 destSize = ALIGN16((u8 *) sPoolListHeadR - destAddr);
    u32 addr;
    u32 temp_v0 = D_802B8CD4[arg0].unk4;
    u32 temp_v1 = D_802B8CD4[arg0].unk8;
    u32 temp_v2 = D_802B8CD4[arg0].unk2;
    addr = func_802A80B0(temp_v0, temp_v1, arg1);

        //dest = main_pool_alloc(destSize, MEMORY_POOL_RIGHT);
        if (addr != 0) {
            
            set_segment_base_addr(temp_v2, addr);
        }
    return addr;
}

UNUSED void func_802A81EC(void) {
    u32 addr;
    s32 temp_s0;
    s16 *phi_s1;
    s32 phi_s0;

    phi_s1 = &D_802B8CD4;
    phi_s0 = 0;
    do {
        if ((*phi_s1 & 1) != 0) {
            func_802A8190(phi_s0, 0);
        }
        temp_s0 = phi_s0 + 1;
        phi_s1 += 8;
        phi_s0 = temp_s0;
    } while (phi_s0 != 3);
}

UNUSED struct AllocOnlyPool *alloc_only_pool_init(u32 size, u32 side) {
    void *addr;
    struct AllocOnlyPool *subPool = NULL;

    size = ALIGN4(size);
    addr = main_pool_alloc(size + sizeof(struct AllocOnlyPool), side);
    if (addr != NULL) {
        subPool = (struct AllocOnlyPool *) addr;
        subPool->totalSpace = size;
        subPool->usedSpace = (u8 *) addr + sizeof(struct AllocOnlyPool);
        subPool->startPtr = 0;
        subPool->freePtr = (u8 *) addr + sizeof(struct AllocOnlyPool);
    }
    return subPool;
}

UNUSED u32 func_802A82AC(s32 arg0) {
    u32 temp_v0;
    u32 phi_v1;

    temp_v0 = D_801502A0 - arg0;
    phi_v1 = 0;
    if (temp_v0 >= (u32) gDisplayListHead) {
        D_801502A0 = temp_v0;
        phi_v1 = temp_v0;
    }
    return phi_v1;
}

s32 func_802A82E4(u8 *start, u8 *end) {
    s32 dest;
    u32 size;

    size = ALIGN16(end - start);
    dest = gPrevLoadedAddress;
    dma_copy(dest, start, size);
    gPrevLoadedAddress += size;
    return dest;
}

// unused mio0 decode func.
UNUSED s32 func_802A8348(s32 arg0, s32 arg1, s32 arg2) {
    s32 offset;
    UNUSED s32 *pad;
    s32 oldAddr;
    s32 newAddr;
    
    offset = ALIGN16(arg1 * arg2);
    oldAddr = gPrevLoadedAddress;
    newAddr = oldAddr + offset;
    pad = &newAddr;
    osInvalDCache(newAddr, offset);
    osPiStartDma(&gDmaIoMesg, 0, 0, &_other_texturesSegmentRomStart[arg0 & 0xFFFFFF], newAddr, offset, &gDmaMesgQueue);
    osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, 1);
    
    func_80040030(newAddr, oldAddr);
    gPrevLoadedAddress += offset;
    return oldAddr;
}

UNUSED s32 func_802A841C(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_v0;
    s32 temp_a0;
    temp_v0 = gPrevLoadedAddress;
    temp_a0 = temp_v0 + arg2;
    arg1 = ALIGN16(arg1);
    arg2 = ALIGN16(arg2);
    
    osInvalDCache(temp_a0, arg1);
    osPiStartDma(&gDmaIoMesg, 0, 0, &_other_texturesSegmentRomStart[arg0 & 0xFFFFFF],temp_a0, arg1, &gDmaMesgQueue);
    osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, 1);
    func_80040030(temp_a0, temp_v0);
    gPrevLoadedAddress += arg2;
    return temp_v0;
}

s32 func_802A84F4(s32 arg0, u32 arg1, u32 arg2) {
    u8 *temp_v0;
    u32 temp_a0;

    temp_v0 = gPrevLoadedAddress;
    temp_a0 = temp_v0 + arg2;
    arg1 = ALIGN16(arg1);
    arg2 = ALIGN16(arg2);
    osInvalDCache(temp_a0, arg1);
    osPiStartDma(&gDmaIoMesg, 0, 0, &_other_texturesSegmentRomStart[arg0 & 0xFFFFFF], temp_a0, arg1, &gDmaMesgQueue);
    osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, (int) 1);
    mio0decode(temp_a0, temp_v0);
    gPrevLoadedAddress += arg2;
    return temp_v0;
}

u32 MIO0_0F(s32 arg0, u32 arg1, u32 arg2) {
    u32 oldHeapEndPtr;
    u8 *temp_v0;
    u32 temp_a0;

    arg1 = ALIGN16(arg1);
    arg2 = ALIGN16(arg2);
    oldHeapEndPtr = gHeapEndPtr;
    temp_v0 = gPrevLoadedAddress;

    osInvalDCache(temp_v0, arg1);
    osPiStartDma(&gDmaIoMesg, 0, 0, &_other_texturesSegmentRomStart[arg0 & 0xFFFFFF], temp_v0, arg1, &gDmaMesgQueue);
    osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, 1);
    mio0decode(temp_v0, oldHeapEndPtr);
    gHeapEndPtr += arg2;
    return oldHeapEndPtr;
}

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
extern f32 D_800DC608;
extern s16 *gHeapEndPtr;

void func_802A86A8(mk64_Vtx *arg0, u32 arg1) {
    f32 temp_f6;
    mk64_Vtx *var_v0;
    s16 *var_v1;
    s8 temp_a0;
    s8 temp_a3;
    u32 var_a2;

    var_v1 = gHeapEndPtr - (((arg1 * 0x10) + 0xF) & ~0xF);
    var_v0 = arg0;
    gHeapEndPtr = var_v1;
    var_a2 = 0;
    if (arg1 != 0) {
        do {
            if (gIsMirrorMode != 0) {
                *var_v1 = -var_v0->ob[0];
            } else {
                *var_v1 = var_v0->ob[0];
            }
            var_a2 += 1;
            var_v1 += 0x10;
            temp_f6 = (f32) var_v0->ob[1];
            var_v0 += 0xE;
            var_v1->unk-E = (s16) (s32) (temp_f6 * D_800DC608);
            temp_a0 = var_v0->unk-4;
            temp_a3 = var_v0->unk-3;
            var_v1->unk-C = (s16) var_v0->unk-A;
            var_v1->unk-8 = (s16) var_v0->unk-8;
            var_v1->unk-4 = (s8) (temp_a0 & 0xFC);
            var_v1->unk-3 = (s8) (temp_a3 & 0xFC);
            var_v1->unk-6 = (s16) var_v0->unk-6;
            var_v1->unk-2 = (s8) var_v0->unk-2;
            var_v1->unk-A = (s16) (s8) ((temp_a0 & 3) | ((temp_a3 * 4) & 0xC));
            var_v1->unk-1 = 0xFF;
        } while (var_a2 < arg1);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/memory/func_802A86A8.s")
#endif

void func_802A87A8(s32 arg0, u32 vertexCount) {
    s32 pad;
    u32 segment = SEGMENT_NUMBER2(arg0);
    u32 offset = SEGMENT_OFFSET(arg0);
    s32 old;
    s32 addr = VIRTUAL_TO_PHYSICAL2(gSegmentTable[segment] + offset);
    s32 temp_v0 = ALIGN16(vertexCount * 0x18);

    old = gPrevLoadedAddress;
    gPrevLoadedAddress += temp_v0;

    mio0decode(addr, old);
    func_802A86A8(old, vertexCount);
    set_segment_base_addr(4, gHeapEndPtr);
}

UNUSED void func_802A8844(void) {

}

void func_802A884C(Gfx *arg0, u8 arg1, s8 arg2) {
    s32 pad;
    s32 a = (arg2 * 0x18) + 0x9000008;
    s32 b = (arg2 * 0x18) + 0x9000000;
    Gfx macro[] = {gsSPNumLights(NUMLIGHTS_1)};

    arg0[D_802BA270].words.w0 = macro->words.w0;
    arg0[D_802BA270].words.w1 = macro->words.w1;

    D_802BA270++;
    arg0[D_802BA270].words.w0 = 0x3860010;

    arg0[D_802BA270].words.w1 = a;

    D_802BA270++;
    arg0[D_802BA270].words.w0 = 0x3880010;
    arg0[D_802BA270].words.w1 = b;
    D_802BA270++;
}

void func_802A8940(Gfx *arg0, u8 *arg1, u8 arg2) {

    u32 temp_v0 = arg1[D_802BA274++];
    u32 temp_t7 = ((arg1[D_802BA274++]) << 8 | temp_v0) * 8;
    arg0[D_802BA270].words.w0 = 0x6000000;
    arg0[D_802BA270].words.w1 = 0x7000000 + temp_t7;
    D_802BA270++;
}

// end display list
void func_802A89C0(Gfx *arg0, u8 arg1, u8 arg2) {
    arg0[D_802BA270].words.w0 = G_ENDDL << 24;
    arg0[D_802BA270].words.w1 = 0;
    D_802BA270++;
}

void func_802A8A04(Gfx *arg0, u8 arg1, u8 arg2) {
    Gfx macro[] = {gsSPSetGeometryMode(G_CULL_BACK)};
    arg0[D_802BA270].words.w0 = macro->words.w0;
    arg0[D_802BA270].words.w1 = macro->words.w1;
    D_802BA270++;
}

void func_802A8A70(Gfx *arg0, u8 arg1, u8 arg2) {
    Gfx macro[] = {gsSPClearGeometryMode(G_CULL_BACK)};
    arg0[D_802BA270].words.w0 = macro->words.w0;
    arg0[D_802BA270].words.w1 = macro->words.w1;
    D_802BA270++;
}

void func_802A8ADC(Gfx *arg0, u8 arg1, u8 arg2) {
    Gfx macro[] = {gsSPCullDisplayList(0, 160)};
    arg0[D_802BA270].words.w0 = macro->words.w0;
    arg0[D_802BA270].words.w1 = macro->words.w1;
    D_802BA270++;
}

void func_802A8B48(Gfx *arg0, u8 arg1, u8 arg2) {
    Gfx macro[] = {gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA)};
    arg0[D_802BA270].words.w0 = macro->words.w0;
    arg0[D_802BA270].words.w1 = macro->words.w1;
    D_802BA270++;
}

void func_802A8BB4(Gfx *arg0, u8 arg1, u8 arg2) {
    Gfx macro[] = {gsDPSetCombineMode(G_CC_MODULATERGBDECALA, G_CC_MODULATERGBDECALA)};
    arg0[D_802BA270].words.w0 = macro->words.w0;
    arg0[D_802BA270].words.w1 = macro->words.w1;
    D_802BA270++;
}

void func_802A8C20(Gfx *arg0, u8 arg1, u8 arg2) {
    Gfx macro[] = {gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE)};
    arg0[D_802BA270].words.w0 = macro->words.w0;
    arg0[D_802BA270].words.w1 = macro->words.w1;
    D_802BA270++;
}

void func_802A8C8C(Gfx *arg0, u8 arg1, u8 arg2) {
    Gfx macro[] = {gsDPSetCombineMode(G_CC_MODULATERGBDECALA, G_CC_MODULATERGBDECALA)};
    arg0[D_802BA270].words.w0 = macro->words.w0;
    arg0[D_802BA270].words.w1 = macro->words.w1;
    D_802BA270++;
}

void func_802A8CF8(Gfx *arg0, u8 arg1, u8 arg2) {
    Gfx macro[] = {gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA)};
    arg0[D_802BA270].words.w0 = macro->words.w0;
    arg0[D_802BA270].words.w1 = macro->words.w1;
    D_802BA270++;
}

void func_802A8D64(Gfx *arg0, u8 arg1, u8 arg2) {
    Gfx macro[] = {gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2)};
    arg0[D_802BA270].words.w0 = macro->words.w0;
    arg0[D_802BA270].words.w1 = macro->words.w1;
    D_802BA270++;
}

void func_802A8DD0(Gfx *arg0, u8 arg1, u8 arg2) {
    Gfx macro[] = {gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2)};
    arg0[D_802BA270].words.w0 = macro->words.w0;
    arg0[D_802BA270].words.w1 = macro->words.w1;
    D_802BA270++;
}

void func_802A8E3C(Gfx *arg0, u8 arg1, u8 arg2) {
    Gfx macro[] = {gsDPSetRenderMode(G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2)};
    arg0[D_802BA270].words.w0 = macro->words.w0;
    arg0[D_802BA270].words.w1 = macro->words.w1;
    D_802BA270++;
}

void func_802A8EA8(Gfx *arg0, u8 arg1, u8 arg2) {
    Gfx macro[] = {gsDPSetRenderMode(G_RM_AA_ZB_OPA_DECAL, G_RM_AA_ZB_OPA_DECAL)};
    arg0[D_802BA270].words.w0 = macro->words.w0;
    arg0[D_802BA270].words.w1 = macro->words.w1;
    D_802BA270++;
}

void func_802A8F14(Gfx *arg0, u8 arg1, u8 arg2) {
    Gfx macro[] = {gsDPSetRenderMode(G_RM_AA_ZB_XLU_DECAL, G_RM_AA_ZB_XLU_DECAL)};
    arg0[D_802BA270].words.w0 = macro->words.w0;
    arg0[D_802BA270].words.w1 = macro->words.w1;
    D_802BA270++;
}

Gfx D_802B8D58[] = {gsDPTileSync()};

#ifdef MIPS_TO_C
//generated by m2c commit 9841ff34ca242f5f14b2eab2b54a7a65ac47d80f
void func_802A8F80(Gfx *displayList, s32 arg1, s8 arg2) {
    u32 sp58;
    s32 sp48;
    s32 sp44;
    s32 sp40;
    s32 temp_t5;
    s32 temp_t9;
    s32 var_v0;
    s32 var_v1;
    u8 temp_a0;
    u8 temp_a0_2;

    sp58.unk0 = D_802B8D58->words.w0;
    var_v0 = 0;
    sp58.unk4 = (u32) D_802B8D58->words.w1;
    switch (arg2) {
    case 26:
        var_v1 = 0x00000020;
        sp44 = 0x00000020;
        sp40 = 0;
block_9:
        sp48 = var_v1;
        break;
    case 44:
        var_v1 = 0x00000020;
        sp44 = 0x00000020;
        sp40 = 0;
        var_v0 = 0x100;
        goto block_9;
    case 27:
        var_v1 = 0x00000040;
        sp44 = 0x00000020;
        sp40 = 0;
        goto block_9;
    case 28:
        var_v1 = 0x00000020;
        sp44 = 0x00000040;
        sp40 = 0;
        goto block_9;
    case 29:
        var_v1 = 0x00000020;
        sp44 = 0x00000020;
        sp40 = 3;
        goto block_9;
    case 30:
        var_v1 = 0x00000040;
        sp44 = 0x00000020;
        sp40 = 3;
        goto block_9;
    case 31:
        var_v1 = 0x00000020;
        sp44 = 0x00000040;
        sp40 = 3;
        goto block_9;
    }
    temp_a0 = *(D_802BA274 + arg1);
    temp_t9 = D_802BA274 + 1;
    D_802BA274 = temp_t9;
    temp_a0_2 = *(temp_t9 + arg1);
    D_802BA274 = temp_t9 + 1;
    displayList[D_802BA270].words.w0 = sp58;
    displayList[D_802BA270].words.w1 = sp5C;
    D_802BA270 += 1;
    displayList[D_802BA270].words.w0 = (sp40 << 0x15) | 0xF5000000 | 0x100000 | (((s32) ((sp48 * 2) + 7) >> 3) << 9) | var_v0;
    displayList[D_802BA270].words.w1 = ((temp_a0_2 & 0xF) << 0x12) | (((u32) (temp_a0_2 & 0xF0) >> 4) << 0xE) | ((temp_a0 & 0xF) << 8) | (((u32) (temp_a0 & 0xF0) >> 4) * 0x10);
    temp_t5 = D_802BA270 + 1;
    D_802BA270 = temp_t5;
    displayList[temp_t5].words.w0 = 0xF2000000;
    displayList[D_802BA270].words.w1 = ((sp48 - 1) << 0xE) | ((sp44 - 1) * 4);
    D_802BA270 += 1;
}
#else
GLOBAL_ASM("asm/non_matchings/memory/func_802A8F80.s")
#endif

Gfx D_802B8D60[] = { gsDPTileSync() };
Gfx D_802B8D68[] = {  gsDPLoadSync() };

#ifdef MIPS_TO_C
//generated by m2c commit 9841ff34ca242f5f14b2eab2b54a7a65ac47d80f
void func_802A91E4(Gfx *displayList, s32 arg1, s8 arg2) {
    u32 sp48;
    u32 sp40;
    s32 sp2C;
    s32 sp28;
    s32 sp24;
    s32 temp_t6;
    s32 temp_t6_2;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 var_v0;
    u32 temp_t1;
    u32 temp_t2;
    u32 temp_t6_3;
    u32 var_a2;
    u32 var_v0_2;
    u32 var_v1;
    u8 temp_a2;
    u8 temp_a3;

    sp48.unk0 = D_802B8D60->words.w0;
    sp48.unk4 = (u32) D_802B8D60->words.w1;
    sp40.unk0 = D_802B8D68->words.w0;
    sp40.unk4 = (u32) D_802B8D68->words.w1;
    switch (arg2) {
    case 32:
        var_v0 = 0x00000020;
        sp28 = 0x00000020;
        sp24 = 0;
block_8:
        sp2C = var_v0;
        break;
    case 33:
        var_v0 = 0x00000040;
        sp28 = 0x00000020;
        sp24 = 0;
        goto block_8;
    case 34:
        var_v0 = 0x00000020;
        sp28 = 0x00000040;
        sp24 = 0;
        goto block_8;
    case 35:
        var_v0 = 0x00000020;
        sp28 = 0x00000020;
        sp24 = 3;
        goto block_8;
    case 36:
        var_v0 = 0x00000040;
        sp28 = 0x00000020;
        sp24 = 3;
        goto block_8;
    case 37:
        var_v0 = 0x00000020;
        sp28 = 0x00000040;
        sp24 = 3;
        goto block_8;
    }
    temp_a2 = *(arg1 + D_802BA274);
    temp_t9 = D_802BA274 + 1;
    D_802BA274 = temp_t9;
    temp_t8 = temp_t9 + 1;
    D_802BA274 = temp_t8;
    temp_a3 = *(temp_t8 + arg1);
    D_802BA274 = temp_t8 + 1;
    temp_t6 = sp24 << 0x15;
    displayList[D_802BA270].words.w0 = temp_t6 | 0xFD000000 | 0x100000;
    displayList[D_802BA270].words.w1 = (temp_a2 << 0xB) + 0x05000000;
    temp_t9_2 = D_802BA270 + 1;
    D_802BA270 = temp_t9_2;
    displayList[temp_t9_2].words.w0 = sp48;
    var_v1 = 0x7FF;
    displayList[D_802BA270].words.w1 = sp4C;
    D_802BA270 += 1;
    displayList[D_802BA270].words.w0 = temp_t6 | 0xF5000000 | 0x100000 | (temp_a3 & 0xF);
    temp_t1 = ((u32) (temp_a3 & 0xF0) >> 4) << 0x18;
    displayList[D_802BA270].words.w1 = temp_t1;
    temp_t6_2 = D_802BA270 + 1;
    D_802BA270 = temp_t6_2;
    displayList[temp_t6_2].words.w0 = sp40;
    displayList[D_802BA270].words.w1 = sp44;
    temp_t6_3 = (u32) (sp2C * 2) >> 3;
    D_802BA270 += 1;
    temp_t2 = (sp2C * sp28) - 1;
    if (temp_t2 < 0x7FFU) {
        var_v1 = temp_t2;
    }
    if (temp_t6_3 == 0) {
        var_v0_2 = 1;
    } else {
        var_v0_2 = temp_t6_3;
    }
    var_a2 = temp_t6_3;
    if (temp_t6_3 == 0) {
        var_a2 = 1;
    }
    displayList[D_802BA270].words.w0 = 0xF3000000;
    displayList[D_802BA270].words.w1 = ((u32) (var_v0_2 + 0x7FF) / var_a2) | temp_t1 | (var_v1 << 0xC);
    D_802BA270 += 1;
}
#else
GLOBAL_ASM("asm/non_matchings/memory/func_802A91E4.s")
#endif

void func_802A94D8(Gfx *arg0, u8 arg1, u8 arg2) {
    Gfx macro[] = { gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON) };
    arg0[D_802BA270].words.w0 = macro->words.w0;
    arg0[D_802BA270].words.w1 = macro->words.w1;
    D_802BA270++;
}

void func_802A9544(Gfx *arg0, u8 arg1, u8 arg2) {
    Gfx macro[] = { gsSPTexture(0x1, 0x1, 0, G_TX_RENDERTILE, G_OFF) };

    arg0[D_802BA270].words.w0 = macro->words.w0;
    arg0[D_802BA270].words.w1 = macro->words.w1;
    D_802BA270++;
}

#ifdef MIPS_TO_C
//generated by m2c commit 9841ff34ca242f5f14b2eab2b54a7a65ac47d80f
void func_802A95B0(Gfx *displayList, u8 *arg1, s32 arg2) {
    s32 temp_t5;
    s32 temp_t7;
    s32 temp_t7_2;
    u8 temp_v0;

    temp_t7 = D_802BA274 + 1;
    temp_v0 = arg1[D_802BA274];
    D_802BA274 = temp_t7;
    temp_t5 = temp_t7 + 1;
    D_802BA274 = temp_t5;
    temp_t7_2 = temp_t5 + 1;
    D_802BA274 = temp_t7_2;
    D_802BA274 = temp_t7_2 + 1;
    displayList[D_802BA270].words.w0 = ((arg1[temp_t7_2] & 0x3F) << 0x11) | 0x04000000 | (((arg1[temp_t5] & 0x3F) * 0x410) - 1);
    displayList[D_802BA270].words.w1 = (((arg1[temp_t7] << 8) | temp_v0) * 0x10) + 0x04000000;
    D_802BA270 += 1;
}
#else
GLOBAL_ASM("asm/non_matchings/memory/func_802A95B0.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 9841ff34ca242f5f14b2eab2b54a7a65ac47d80f
void func_802A9674(Gfx *displayList, u8 *arg1, s8 arg2) {
    s32 temp_t9;
    u8 temp_v0;

    temp_t9 = D_802BA274 + 1;
    temp_v0 = arg1[D_802BA274];
    D_802BA274 = temp_t9;
    D_802BA274 = temp_t9 + 1;
    displayList[D_802BA270].words.w0 = (((arg2 - 0x32) * 0x410) - 1) | 0x04000000;
    displayList[D_802BA270].words.w1 = (((arg1[temp_t9] << 8) | temp_v0) * 0x10) + 0x04000000;
    D_802BA270 += 1;
}
#else
GLOBAL_ASM("asm/non_matchings/memory/func_802A9674.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 9841ff34ca242f5f14b2eab2b54a7a65ac47d80f
void func_802A9714(Gfx *displayList, u8 *arg1, s32 arg2) {
    s32 temp_t7;
    s32 var_a0;
    s32 var_a2;
    s32 var_a3;
    u8 temp_v0;
    u8 temp_v0_2;
    u8 temp_v0_3;

    temp_v0 = arg1[D_802BA274];
    temp_t7 = D_802BA274 + 1;
    D_802BA274 = temp_t7;
    var_a0 = temp_v0 & 0x1F;
    var_a3 = temp_v0 & 0x1F;
    if (gIsMirrorMode != 0) {
        temp_v0_2 = arg1[temp_t7];
        D_802BA274 = temp_t7 + 1;
        var_a2 = ((temp_v0 >> 5) & 7) | ((temp_v0_2 & 3) * 8);
        var_a3 = (temp_v0_2 >> 2) & 0x1F;
    } else {
        temp_v0_3 = arg1[D_802BA274];
        D_802BA274 += 1;
        var_a2 = ((temp_v0 >> 5) & 7) | ((temp_v0_3 & 3) * 8);
        var_a0 = (temp_v0_3 >> 2) & 0x1F;
    }
    displayList[D_802BA270].words.w0 = 0xBF000000;
    displayList[D_802BA270].words.w1 = (var_a3 << 0x11) | (var_a2 << 9) | (var_a0 * 2);
    D_802BA270 += 1;
}
#else
GLOBAL_ASM("asm/non_matchings/memory/func_802A9714.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 9841ff34ca242f5f14b2eab2b54a7a65ac47d80f
void func_802A980C(Gfx *displayList, u8 *arg1, s32 arg2) {
    s32 temp_t7;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 var_a0;
    s32 var_a2;
    s32 var_a3;
    s32 var_t0;
    s32 var_t1;
    s32 var_t2;
    u8 temp_v0;
    u8 temp_v0_2;
    u8 temp_v0_3;
    u8 temp_v0_4;
    u8 temp_v0_5;
    u8 temp_v0_6;

    temp_v0 = arg1[D_802BA274];
    temp_t7 = D_802BA274 + 1;
    D_802BA274 = temp_t7;
    var_a0 = temp_v0 & 0x1F;
    var_t0 = temp_v0 & 0x1F;
    if (gIsMirrorMode != 0) {
        temp_v0_2 = arg1[temp_t7];
        D_802BA274 = temp_t7 + 1;
        var_a3 = ((temp_v0 >> 5) & 7) | ((temp_v0_2 & 3) * 8);
        var_t0 = (temp_v0_2 >> 2) & 0x1F;
    } else {
        temp_v0_3 = arg1[D_802BA274];
        D_802BA274 += 1;
        var_a3 = ((temp_v0 >> 5) & 7) | ((temp_v0_3 & 3) * 8);
        var_a0 = (temp_v0_3 >> 2) & 0x1F;
    }
    temp_v0_4 = arg1[D_802BA274];
    temp_t9 = D_802BA274 + 1;
    D_802BA274 = temp_t9;
    if (gIsMirrorMode != 0) {
        var_a2 = temp_v0_4 & 0x1F;
        temp_v0_5 = arg1[temp_t9];
        D_802BA274 = temp_t9 + 1;
        var_t1 = ((temp_v0_4 >> 5) & 7) | ((temp_v0_5 & 3) * 8);
        var_t2 = (temp_v0_5 >> 2) & 0x1F;
    } else {
        var_t2 = temp_v0_4 & 0x1F;
        temp_v0_6 = arg1[D_802BA274];
        temp_t8 = (temp_v0_6 & 3) * 8;
        temp_t9_2 = (temp_v0_6 >> 2) & 0x1F;
        D_802BA274 += 1;
        var_t1 = ((temp_v0_4 >> 5) & 7) | temp_t8;
        var_a2 = temp_t9_2;
    }
    displayList[D_802BA270].words.w0 = (var_t0 << 0x11) | 0xB1000000 | (var_a3 << 9) | (var_a0 * 2);
    displayList[D_802BA270].words.w1 = (var_t2 << 0x11) | (var_t1 << 9) | (var_a2 * 2);
    D_802BA270 += 1;
}
#else
GLOBAL_ASM("asm/non_matchings/memory/func_802A980C.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 9841ff34ca242f5f14b2eab2b54a7a65ac47d80f
void func_802A99A4(Gfx *displayList, u8 *arg1, s32 arg2) {
    s32 temp_t3;
    s32 temp_t6;
    s32 temp_t7;
    s32 var_a0;
    s32 var_a2;
    s32 var_a3;
    s32 var_t0;
    u8 temp_v0;
    u8 temp_v0_2;
    u8 temp_v0_3;

    temp_v0 = arg1[D_802BA274];
    temp_t7 = D_802BA274 + 1;
    D_802BA274 = temp_t7;
    var_a0 = temp_v0 & 0x1F;
    var_t0 = temp_v0 & 0x1F;
    if (gIsMirrorMode != 0) {
        temp_v0_2 = arg1[temp_t7];
        temp_t3 = temp_t7 + 1;
        D_802BA274 = temp_t3;
        var_a2 = ((temp_v0 >> 5) & 7) | ((temp_v0_2 & 3) * 8);
        var_a3 = (temp_v0_2 >> 2) & 0x1F;
        D_802BA274 = temp_t3 + 1;
        var_t0 = ((temp_v0_2 >> 7) & 1) | ((arg1[temp_t3] & 0xF) * 2);
    } else {
        temp_v0_3 = arg1[D_802BA274];
        temp_t6 = D_802BA274 + 1;
        D_802BA274 = temp_t6;
        var_a3 = ((temp_v0 >> 5) & 7) | ((temp_v0_3 & 3) * 8);
        var_a2 = (temp_v0_3 >> 2) & 0x1F;
        D_802BA274 = temp_t6 + 1;
        var_a0 = ((temp_v0_3 >> 7) & 1) | ((arg1[temp_t6] & 0xF) * 2);
    }
    displayList[D_802BA270].words.w0 = 0xB5000000;
    displayList[D_802BA270].words.w1 = (var_a0 << 0x19) | (var_t0 << 0x11) | (var_a3 << 9) | (var_a2 * 2);
    D_802BA270 += 1;
}
#else
GLOBAL_ASM("asm/non_matchings/memory/func_802A99A4.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
void func_802A8F80(Gfx *, u8, s8, s32 *);              /* extern */
void func_802A91E4(Gfx *, u8, s8, s32 *);              /* extern */
void func_802A95B0(Gfx *, u8, s8, s32 *);              /* extern */
void func_802A9674(Gfx *, u8, s8, s32 *);              /* extern */
void func_802A9714(Gfx *, u8, s8, s32 *);              /* extern */
void func_802A980C(Gfx *, u8, s8, s32 *);              /* extern */
void func_802A99A4(Gfx *, u8, s8, s32 *);              /* extern */
extern s32 D_802BA270;
extern s32 D_802BA274;
extern Gfx *gHeapEndPtr;

void display_list_unpack(u32 arg0, s32 arg1, u8 arg2) {
    Gfx *sp2C;
    Gfx *temp_s1;
    s32 temp_v1;
    u8 temp_a0;
    u8 temp_s0;

    temp_s0 = gSegmentTable[arg0 >> 0x18] + (arg0 & 0xFFFFFF) + 0x80000000;
    temp_s1 = gHeapEndPtr - (((arg1 + 0xF) & ~0xF) + 8);
    gHeapEndPtr = temp_s1;
    D_802BA270 = 0;
    sp2C = temp_s1;
    D_802BA274 = 0;
case 0x31:
case 0x32:
loop_1:
    temp_v1 = D_802BA274;
    temp_a0 = *(temp_v1 + temp_s0);
    D_802BA274 = temp_v1 + 1;
    switch (temp_a0) {                              /* irregular */
    case 0x0:
        func_802A884C(temp_s1, temp_s0, (s8) temp_a0);
        goto loop_1;
    case 0x1:
        func_802A884C(temp_s1, temp_s0, (s8) temp_a0);
        goto loop_1;
    case 0x2:
        func_802A884C(temp_s1, temp_s0, (s8) temp_a0);
        goto loop_1;
    case 0x3:
        func_802A884C(temp_s1, temp_s0, (s8) temp_a0);
        goto loop_1;
    case 0x4:
        func_802A884C(temp_s1, temp_s0, (s8) temp_a0);
        goto loop_1;
    case 0x5:
        func_802A884C(temp_s1, temp_s0, (s8) temp_a0);
        goto loop_1;
    case 0x6:
        func_802A884C(temp_s1, temp_s0, (s8) temp_a0);
        goto loop_1;
    case 0x7:
        func_802A884C(temp_s1, temp_s0, (s8) temp_a0);
        goto loop_1;
    case 0x8:
        func_802A884C(temp_s1, temp_s0, (s8) temp_a0);
        goto loop_1;
    case 0x9:
        func_802A884C(temp_s1, temp_s0, (s8) temp_a0);
        goto loop_1;
    case 0xA:
        func_802A884C(temp_s1, temp_s0, (s8) temp_a0);
        goto loop_1;
    case 0xB:
        func_802A884C(temp_s1, temp_s0, (s8) temp_a0);
        goto loop_1;
    case 0xC:
        func_802A884C(temp_s1, temp_s0, (s8) temp_a0);
        goto loop_1;
    case 0xD:
        func_802A884C(temp_s1, temp_s0, (s8) temp_a0);
        goto loop_1;
    case 0xE:
        func_802A884C(temp_s1, temp_s0, (s8) temp_a0);
        goto loop_1;
    case 0xF:
        func_802A884C(temp_s1, temp_s0, (s8) temp_a0);
        goto loop_1;
    case 0x10:
        func_802A884C(temp_s1, temp_s0, (s8) temp_a0);
        goto loop_1; 
    case 0x11:
        func_802A884C(temp_s1, temp_s0, (s8) temp_a0);
        goto loop_1;
    case 0x12:
        func_802A884C(temp_s1, temp_s0, (s8) temp_a0);
        goto loop_1;
    case 0x13:
        func_802A884C(temp_s1, temp_s0, (s8) temp_a0);
        goto loop_1;
    case 0x14:
        func_802A884C(temp_s1, temp_s0, (s8) temp_a0);
        goto loop_1;
    case 0x15:
        func_802A8B48(temp_s1, temp_s0, arg2);
        goto loop_1;
    case 0x16:
        func_802A8BB4(temp_s1, temp_s0, arg2);
        goto loop_1;
    case 0x17:
        func_802A8C20(temp_s1, temp_s0, arg2);
        goto loop_1;
    case 0x2E:
        func_802A8C8C(temp_s1, temp_s0, arg2);
        goto loop_1;
    case 0x53:
        func_802A8CF8(temp_s1, temp_s0, arg2);
        goto loop_1;
    case 0x18:
        func_802A8D64(temp_s1, temp_s0, arg2);
        goto loop_1;
    case 0x19:
        func_802A8DD0(temp_s1, temp_s0, arg2);
        goto loop_1;
    case 0x2F:
        func_802A8E3C(temp_s1, temp_s0, arg2);
        goto loop_1;
    case 0x54:
        func_802A8EA8(temp_s1, temp_s0, arg2);
        goto loop_1;
    case 0x55:
        func_802A8F14(temp_s1, temp_s0, arg2);
        goto loop_1;
    case 0x1A:
        func_802A8F80(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x2C:
        func_802A8F80(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x1B:
        func_802A8F80(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x1C:
        func_802A8F80(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x1D:
        func_802A8F80(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x1E:
        func_802A8F80(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x1F:
        func_802A8F80(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x20:
        func_802A91E4(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x21:
        func_802A91E4(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x22:
        func_802A91E4(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x23:
        func_802A91E4(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x24:
        func_802A91E4(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x25:
        func_802A91E4(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x26:
        func_802A94D8(temp_s1, temp_s0, (u8) (s8) temp_a0);
        goto loop_1;
    case 0x27:
        func_802A9544(temp_s1, temp_s0, (u8) (s8) temp_a0);
        goto loop_1;
    case 0x28:
        func_802A95B0(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x33:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x34:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x35:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x36:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x37:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x38:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x39:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x3A:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x3B:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x3C:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x3D:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x3E:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x3F:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x40:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x41:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x42:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x43:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x44:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x45:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x46:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x47:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x48:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x49:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x4A:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x4B:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x4C:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x4D:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x4E:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x4F:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x50:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x51:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x52:
        func_802A9674(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x29:
        func_802A9714(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x58:
        func_802A980C(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x30:
        func_802A99A4(temp_s1, temp_s0, (s8) temp_a0, &D_802BA274);
        goto loop_1;
    case 0x2D:
        func_802A8ADC(temp_s1, temp_s0, (u8) (s8) temp_a0);
        goto loop_1;
    case 0x2A:
        func_802A89C0(temp_s1, temp_s0, (u8) (s8) temp_a0);
        goto loop_1;
    case 0x56:
        func_802A8A04(temp_s1, temp_s0, (u8) (s8) temp_a0);
        goto loop_1;
    case 0x57:
        func_802A8A70(temp_s1, temp_s0, (u8) (s8) temp_a0);
        goto loop_1;
    case 0x2B:
        func_802A8940(temp_s1, (u8 *) temp_s0, (u8) (s8) temp_a0);
        goto loop_1;
    }
    set_segment_base_addr(7, sp2C);
}
#else
GLOBAL_ASM("asm/non_matchings/memory/display_list_unpack.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
u32 MIO0_0F(s32, s32, s32); // extern
extern uintptr_t gSegmentTable;

void func_802AA7C8(u32 arg0) {
    void *sp20;
    s32 temp_a0;
    void *temp_s0;
    void *temp_t2;
    void *phi_s0;
    s32 phi_v0;
    void *phi_s0_2;

    temp_s0 = *(&gSegmentTable + ((arg0 >> 0x18) * 4)) + (arg0 & 0xFFFFFF) + 0x80000000;
    phi_s0 = temp_s0;
    phi_v0 = 0;
loop_1:
    if (phi_s0->unk0 != 0) {
        phi_s0 += 0x10;
        phi_v0 += phi_s0->unk8;
        goto loop_1;
    }
    temp_t2 = gHeapEndPtr - phi_v0;
    gHeapEndPtr = temp_t2;
    sp20 = temp_t2;
    phi_s0_2 = temp_s0;
loop_4:
    temp_a0 = phi_s0_2->unk0;
    if (temp_a0 != 0) {
        MIO0_0F(temp_a0, phi_s0_2->unk4, phi_s0_2->unk8);
        phi_s0_2 += 0x10;
        goto loop_4;
    }
    gHeapEndPtr = sp20;
    set_segment_base_addr(5, sp20);
}
#else
GLOBAL_ASM("asm/non_matchings/memory/func_802AA7C8.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit d9d3d6575355663122de59f6b2882d8f174e2355 on Dec-09-2022
void *func_802AA88C(u8 *arg0, u8 *arg1) {
    s32 sp28;
    u8 *sp20;
    u32 sp1C;
    u32 temp_t6;
    u8 *temp_a0;

    temp_t6 = ((arg1 - arg0) + 0xF) & ~0xF;
    temp_a0 = gHeapEndPtr - temp_t6;
    sp20 = temp_a0;
    dma_copy(temp_a0, arg0, temp_t6);
    sp1C = gPrevLoadedAddress;
    sp28 = (temp_a0->unk4 + 0xF) & ~0xF;
    mio0decode(temp_a0, (u8 *) gPrevLoadedAddress);
    gPrevLoadedAddress += sp28;
    return (void *) sp1C;
}
#else
GLOBAL_ASM("asm/non_matchings/memory/func_802AA88C.s")
#endif

s32 load_course(s32 courseId) {
    UNUSED s32 pad[4];
    u32 *temp_v0;
    u32 *dlRomStart;
    u32 *dlRomEnd;
    u32 *vertexRomStart;
    u32 *vertexRomEnd;
    s32 pad2;
    s32 gamestate;
    u32 *textures;
    mk64_Vtx *vertexStart;
    u32 *packedStart;
    u32 vertexCount;
    u32 *finalDL;
    s32 unknown1;
    s32 prevLoadedAddress_saved;
    s32 offsetRomStart;
    s32 offsetRomEnd;

    // Pointers to rom offsets
    gamestate = gGamestate;
    dlRomStart = gCourseTable[courseId].dlRomStart;
    dlRomEnd = gCourseTable[courseId].dlRomEnd;
    offsetRomStart = gCourseTable[courseId].offsetRomStart;
    offsetRomEnd = gCourseTable[courseId].offsetRomEnd;
    vertexRomStart = gCourseTable[courseId].vertexRomStart;
    vertexRomEnd = gCourseTable[courseId].vertexRomEnd;
    textures = gCourseTable[courseId].textures;
    vertexStart = gCourseTable[courseId].vertexStart;
    packedStart = gCourseTable[courseId].packedStart;
    vertexCount = gCourseTable[courseId].vertexCount;
    finalDL = gCourseTable[courseId].finalDL;
    unknown1 = gCourseTable[courseId].unknown1;

    if ((gamestate == ENDING_SEQUENCE) || (gamestate == CREDITS_SEQUENCE)) {
        gHeapEndPtr = SEG_80280000;
    } else {
        gHeapEndPtr = SEG_8028DF00;
    }
    set_segment_base_addr(9, func_802A7D70(offsetRomStart, offsetRomEnd));

    if (gGamestate != ENDING_SEQUENCE) {
        set_segment_base_addr(6, func_802AA88C(dlRomStart, dlRomEnd));
    }
    prevLoadedAddress_saved = gPrevLoadedAddress;
    temp_v0 = func_802A82E4((u8 *)vertexRomStart, (u8 *)vertexRomEnd);

    set_segment_base_addr(0xF, (void *)temp_v0);
    func_802A87A8(vertexStart, vertexCount);
    display_list_unpack(packedStart, finalDL, unknown1);
    func_802AA7C8(textures);
    gPrevLoadedAddress = prevLoadedAddress_saved;
    return temp_v0;
}
