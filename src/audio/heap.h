#ifndef AUDIO_HEAP_H
#define AUDIO_HEAP_H

#include <PR/ultratypes.h>

#include "internal.h"

#define SOUND_LOAD_STATUS_NOT_LOADED     0
#define SOUND_LOAD_STATUS_IN_PROGRESS    1
#define SOUND_LOAD_STATUS_COMPLETE       2
#define SOUND_LOAD_STATUS_DISCARDABLE    3
#define SOUND_LOAD_STATUS_4              4
#define SOUND_LOAD_STATUS_5              5

#define IS_BANK_LOAD_COMPLETE(bankId) (gBankLoadStatus[bankId] >= SOUND_LOAD_STATUS_COMPLETE)
#define IS_SEQ_LOAD_COMPLETE(seqId) (gSeqLoadStatus[seqId] >= SOUND_LOAD_STATUS_COMPLETE)

struct SoundAllocPool {
    u8 *start;
    u8 *cur;
    u32 size;
    s32 numAllocatedEntries;
}; // size = 0x10

struct SeqOrBankEntry {
    u8 *ptr;
    u32 size;
    s16 poolIndex;
    s16 id;
}; // size = 0xC

struct PersistentPool {
    /*0x00*/ u32 numEntries;
    /*0x04*/ struct SoundAllocPool pool;
    /*0x14*/ struct SeqOrBankEntry entries[32];
}; // size = 0x194

struct TemporaryPool {
    /*EU,   SH*/
    /*0x00, 0x00*/ u32 nextSide;
    /*0x04,     */ struct SoundAllocPool pool;
    /*0x04,        pool.start     */
    /*0x08,        pool.cur       */
    /*0x0C, 0x0C   pool.size      */
    /*0x10, 0x10   pool.numAllocatedEntries */
    /*0x14,     */ struct SeqOrBankEntry entries[2];
    /*0x14, 0x14   entries[0].ptr */
    /*0x18,        entries[0].size*/
    /*0x1C, 0x1E   entries[0].id  */
    /*0x20, 0x20   entries[1].ptr */
    /*0x24,        entries[1].size*/
    /*0x28, 0x2A   entries[1].id  */
}; // size = 0x2C

struct SoundMultiPool {
    /*0x000*/ struct PersistentPool persistent;
    /*0x194*/ struct TemporaryPool temporary;
    /*     */ u32 pad2[4];
}; // size = 0x1D0

struct Unk1Pool {
    struct SoundAllocPool pool;
    struct SeqOrBankEntry entries[32];
};

struct UnkEntry {
    s8 used;
    s8 medium;
    s8 bankId;
    u32 pad;
    u8 *srcAddr;
    u8 *dstAddr;
    u32 size;
};

struct UnkPool {
    /*0x00*/  struct SoundAllocPool pool;
    /*0x10*/  struct UnkEntry entries[64];
    /*0x510*/ s32 numEntries;
    /*0x514*/ u32 unk514;
};

struct PoolSplit {
    u32 wantSeq;
    u32 wantBank;
    u32 wantUnused;
    u32 wantCustom;
}; // size = 0x10

struct PoolSplit2 {
    u32 wantPersistent;
    u32 wantTemporary;
}; // size = 0x8

void discard_bank(s32 bankId);
void discard_sequence(s32 seqId);
void *soundAlloc(struct SoundAllocPool *pool, u32 size);
void sound_alloc_pool_init(struct SoundAllocPool *pool, void *memAddr, u32 size);
void persistent_pool_clear(struct PersistentPool *persistent);
void temporary_pool_clear(struct TemporaryPool *temporary);
void *get_bank_or_seq(s32 poolIdx, s32 arg1, s32 id);
void *get_bank_or_seq_inner(s32 poolIdx, s32 arg1, s32 bankId);
void func_800B90E0(struct SoundAllocPool *pool);
void seq_and_bank_pool_init(struct PoolSplit2 *a);
void persistent_pools_init(struct PoolSplit *a);
void temporary_pools_init(struct PoolSplit *a);
void *unk_pool1_lookup(s32 poolIdx, s32 id);

// Note: In some .asm files D_803AFBC8 has been replaced with gLeftVolRampings
// That is almost certainly incorrect, but I don't know how to fix it at this point
extern struct SoundAllocPool gLeftVolRampings;
extern struct SoundAllocPool gAudioSessionPool; // D_803AFBC8
extern struct SoundAllocPool gAudioInitPool;    // D_803AFBD8
extern struct SoundAllocPool gNotesAndBuffersPool;
extern struct SoundAllocPool gPersistentCommonPool; // D_803AFC28
extern struct SoundAllocPool gTemporaryCommonPool;  // D_803AFC38
extern struct SoundMultiPool gSeqLoadedPool;    // D_803AFC48
extern struct SoundMultiPool gBankLoadedPool;   // D_803AFE18
extern struct Unk1Pool gUnkPool1;               // D_803B01B8
extern u8 gBankLoadStatus[64];                  // D_803B03C0
extern u8 gUnkLoadStatus[64];
extern u8 gSeqLoadStatus[256];                  // D_803B0400
extern struct SoundMultiPool gUnusedLoadedPool; // D_803AFFE8
extern struct SoundAllocPool gSeqAndBankPool;   // D_803AFC18

#endif // AUDIO_HEAP_H
