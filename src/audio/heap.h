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

extern struct SoundAllocPool gNotesAndBuffersPool;

#endif // AUDIO_HEAP_H