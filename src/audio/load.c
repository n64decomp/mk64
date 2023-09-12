#include <ultra64.h>
#include <macros.h>
#include "audio/load.h"
#include "audio/data.h"
#include "audio/heap.h"
#include "audio/internal.h"
#include "audio/playback.h"

#define ALIGN16(val) (((val) + 0xF) & ~0xF)
struct SharedDma {
    /*0x0*/ u8 *buffer;       // target, points to pre-allocated buffer
    /*0x4*/ uintptr_t source; // device address
    /*0x8*/ u16 sizeUnused;   // set to bufSize, never read
    /*0xA*/ u16 bufSize;      // size of buffer
    /*0xC*/ u8 unused2;       // set to 0, never read
    /*0xD*/ u8 reuseIndex;    // position in sSampleDmaReuseQueue1/2, if ttl == 0
    /*0xE*/ u8 ttl;           // duration after which the DMA can be discarded
};                            // size = 0x10

//struct Note *gNotes; // 0x803B1508

struct SequencePlayer gSequencePlayers[SEQUENCE_PLAYERS];
struct SequenceChannel gSequenceChannels[SEQUENCE_CHANNELS];
struct SequenceChannelLayer gSequenceLayers[SEQUENCE_LAYERS];
struct SequenceChannel gSequenceChannelNone;
// D_803B5F5C
struct AudioListItem gLayerFreeList;
struct NotePool gNoteFreeLists;
OSMesgQueue gCurrAudioFrameDmaQueue;
OSMesg gCurrAudioFrameDmaMesgBufs[AUDIO_FRAME_DMA_QUEUE_SIZE];
OSIoMesg gCurrAudioFrameDmaIoMesgBufs[AUDIO_FRAME_DMA_QUEUE_SIZE];
OSMesgQueue D_803B6720;
OSMesg D_803B6738;

OSIoMesg D_803B6740;
struct SharedDma sSampleDmas[0x70];
u32 gSampleDmaNumListItems;
u32 sSampleDmaListSize1;
s32 D_803B6E60;
s32 load_bss_pad;

u8 sSampleDmaReuseQueue1[256]; // sSampleDmaReuseQueue1
u8 sSampleDmaReuseQueue2[256]; // sSampleDmaReuseQueue2
u8 sSampleDmaReuseQueueTail1; // sSampleDmaReuseQueueTail1
u8 sSampleDmaReuseQueueTail2; // sSampleDmaReuseQueueTail2
u8 sSampleDmaReuseQueueHead1; // sSampleDmaReuseQueueHead1
u8 sSampleDmaReuseQueueHead2; // sSampleDmaReuseQueueHead2

ALSeqFile *gSeqFileHeader;
ALSeqFile *gAlCtlHeader;
ALSeqFile *gAlTbl;
u8 *gAlBankSets;
u16 gSequenceCount;
struct CtlEntry *gCtlEntries;
struct AudioBufferParametersEU gAudioBufferParameters;
u32 D_803B70A8;
s32 gMaxAudioCmds;
s32 gMaxSimultaneousNotes;
s16 gTempoInternalToExternal;
s8 gAudioLibSoundMode;
s32 D_803B70B8; // According to sm64 this is s8 not s32
s32 gCurrAudioFrameDmaCount; // file split around here?

extern OSMesgQueue D_803B6720;
extern OSIoMesg D_803B6740;

extern OSMesgQueue gCurrAudioFrameDmaQueue; // gCurrAudioFrameDmaQueue
extern OSMesg gCurrAudioFrameDmaMesgBufs[AUDIO_FRAME_DMA_QUEUE_SIZE]; // gCurrAudioFrameDmaMesgBufs
extern OSIoMesg gCurrAudioFrameDmaIoMesgBufs[AUDIO_FRAME_DMA_QUEUE_SIZE]; // gCurrAudioFrameDmaIoMesgBufs

extern u32 gSampleDmaNumListItems; // gSampleDmaNumListItems
extern u32 sSampleDmaListSize1; // sSampleDmaListSize1
extern s32 D_803B6E60; // sUnused80226B40


/**
 * Given that (almost) all of these are format strings, it is highly likely
 * that they are meant to be used in some sort of printf variant. But I don't
 * care to try and figure out which function gets which string(s)
 * So I've place them all here instead.
**/
char loadAudioString00[] = "Romcopy %x -> %x ,size %x\n";
char loadAudioString01[] = "Romcopyend\n";
char loadAudioString02[] = "CAUTION:WAVE CACHE FULL %d";
char loadAudioString03[] = "LOAD  Rom :%x -> Ram :%x  Len:%x\n";
char loadAudioString04[] = "BASE %x %x\n";
char loadAudioString05[] = "LOAD %x %x %x\n";
char loadAudioString06[] = "INSTTOP    %x\n";
char loadAudioString07[] = "INSTMAP[0] %x\n";
char loadAudioString08[] = "already flags %d\n";
char loadAudioString09[] = "already flags %d\n";
char loadAudioString10[] = "ERR:SLOW BANK DMA BUSY\n";
char loadAudioString11[] = "ERR:SLOW DMA BUSY\n";
char loadAudioString12[] = "Check %d  bank %d\n";
char loadAudioString13[] = "Cache Check\n";
char loadAudioString14[] = "NO BANK ERROR\n";
char loadAudioString15[] = "BANK %d LOADING START\n";
char loadAudioString16[] = "BANK %d LOAD MISS (NO MEMORY)!\n";
char loadAudioString17[] = "BANK %d ALREADY CACHED\n";
char loadAudioString18[] = "BANK LOAD MISS! FOR %d\n";
char loadAudioString19[] = "Seq %d Loading Start\n";
char loadAudioString20[] = "Heap Overflow Error\n";
char loadAudioString21[] = "SEQ  %d ALREADY CACHED\n";
char loadAudioString22[] = "Ok,one bank slow load Start \n";
char loadAudioString23[] = "Sorry,too many %d bank is none.fast load Start \n";
char loadAudioString24[] = "Seq %d:Default Load Id is %d\n";
char loadAudioString25[] = "Seq Loading Start\n";
char loadAudioString26[] = "Error:Before Sequence-SlowDma remain.\n";
char loadAudioString27[] = "      Cancel Seq Start.\n";
char loadAudioString28[] = "SEQ  %d ALREADY CACHED\n";
char loadAudioString29[] = "Clear Workarea %x -%x size %x \n";
char loadAudioString30[] = "AudioHeap is %x\n";
char loadAudioString31[] = "Heap reset.Synth Change %x \n";
char loadAudioString32[] = "Heap %x %x %x\n";
char loadAudioString33[] = "Main Heap Initialize.\n";
char loadAudioString34[] = "---------- Init Completed. ------------\n";
char loadAudioString35[] = " Syndrv    :[%6d]\n";
char loadAudioString36[] = " Seqdrv    :[%6d]\n";
char loadAudioString37[] = " audiodata :[%6d]\n";
char loadAudioString38[] = "---------------------------------------\n";

/**
 * Performs an immediate DMA copy
 */
void audio_dma_copy_immediate(uintptr_t devAddr, void *vAddr, size_t nbytes) {
    // eu_stubbed_printf_3("Romcopy %x -> %x ,size %x\n", devAddr, vAddr, nbytes);
    osInvalDCache(vAddr, nbytes);
    osPiStartDma(&D_803B6740, OS_MESG_PRI_HIGH, OS_READ, devAddr, vAddr, nbytes, &D_803B6720);
    osRecvMesg(&D_803B6720, NULL, OS_MESG_BLOCK);
    // eu_stubbed_printf_0("Romcopyend\n");
}

/**
 * Performs an asynchronus (normal priority) DMA copy
 */
void audio_dma_copy_async(uintptr_t devAddr, void *vAddr, size_t nbytes, OSMesgQueue *queue, OSIoMesg *mesg) {
    osInvalDCache(vAddr, nbytes);
    osPiStartDma(mesg, OS_MESG_PRI_NORMAL, OS_READ, devAddr, vAddr, nbytes, queue);
}

/**
 * Performs a partial asynchronous (normal priority) DMA copy. This is limited
 * to 0x1000 bytes transfer at once.
 */
void audio_dma_partial_copy_async(uintptr_t *devAddr, u8 **vAddr, ssize_t *remaining, OSMesgQueue *queue, OSIoMesg *mesg) {
    ssize_t transfer = (*remaining >= 0x1000 ? 0x1000 : *remaining);
    *remaining -= transfer;
    osInvalDCache(*vAddr, transfer);
    osPiStartDma(mesg, OS_MESG_PRI_NORMAL, OS_READ, *devAddr, *vAddr, transfer, queue);
    *devAddr += transfer;
    *vAddr += transfer;
}

void decrease_sample_dma_ttls() {
    u32 i;

    for (i = 0; i < sSampleDmaListSize1; i++) {
        struct SharedDma *temp = &sSampleDmas[i];
        if (temp->ttl != 0) {
            temp->ttl--;
            if (temp->ttl == 0) {
                temp->reuseIndex = sSampleDmaReuseQueueHead1;
                sSampleDmaReuseQueue1[sSampleDmaReuseQueueHead1++] = (u8) i;
            }
        }
    }

    for (i = sSampleDmaListSize1; i < gSampleDmaNumListItems; i++) {
        struct SharedDma *temp = &sSampleDmas[i];
        if (temp->ttl != 0) {
            temp->ttl--;
            if (temp->ttl == 0) {
                temp->reuseIndex = sSampleDmaReuseQueueHead2;
                sSampleDmaReuseQueue2[sSampleDmaReuseQueueHead2++] = (u8) i;
            }
        }
    }

    D_803B6E60 = 0;
}

#ifdef MIPS_TO_C
// dma_sample_data 3000 score diff
void *func_800BAD0C(uintptr_t devAddr, u32 size, s32 arg2, u8 *dmaIndexRef) {
    s32 hasDma = FALSE;
    struct SharedDma *dma;
    uintptr_t dmaDevAddr;
    u32 transfer;
    u32 i;
    u32 dmaIndex;
    ssize_t bufferPos;
    UNUSED u32 pad;

    if (arg2 != 0 || *dmaIndexRef >= sSampleDmaListSize1) {
        for (i = sSampleDmaListSize1; i < gSampleDmaNumListItems; i++) {
            dma = &sSampleDmas[i];
            bufferPos = devAddr - dma->source;
            if (0 <= bufferPos && (size_t) bufferPos <= dma->bufSize - size) {
                // We already have a DMA request for this memory range.
                if (dma->ttl == 0 && sSampleDmaReuseQueueTail2 != sSampleDmaReuseQueueHead2) {
                    // Move the DMA out of the reuse queue, by swapping it with the
                    // tail, and then incrementing the tail.
                    if (dma->reuseIndex != sSampleDmaReuseQueueTail2) {
                        sSampleDmaReuseQueue2[dma->reuseIndex] =
                            sSampleDmaReuseQueue2[sSampleDmaReuseQueueTail2];
                        sSampleDmas[sSampleDmaReuseQueue2[sSampleDmaReuseQueueTail2]].reuseIndex =
                            dma->reuseIndex;
                    }
                    sSampleDmaReuseQueueTail2++;
                }
                dma->ttl = 60;
                *dmaIndexRef = (u8) i;
                return &dma->buffer[(devAddr - dma->source)];
            }
        }

        if (sSampleDmaReuseQueueTail2 != sSampleDmaReuseQueueHead2 && arg2 != 0) {
            // Allocate a DMA from reuse queue 2. This queue can be empty, since
            // TTL 60 is pretty large.
            dmaIndex = sSampleDmaReuseQueue2[sSampleDmaReuseQueueTail2];
            sSampleDmaReuseQueueTail2++;
            dma = sSampleDmas + dmaIndex;
            hasDma = TRUE;
        }
    } else {
        dma = sSampleDmas;
        dma += *dmaIndexRef;
        bufferPos = devAddr - dma->source;
        if (0 <= bufferPos && (size_t) bufferPos <= dma->bufSize - size) {
            // We already have DMA for this memory range.
            if (dma->ttl == 0) {
                // Move the DMA out of the reuse queue, by swapping it with the
                // tail, and then incrementing the tail.
                if (dma->reuseIndex != sSampleDmaReuseQueueTail1) {
                    if (1) {
                    }
                    sSampleDmaReuseQueue1[dma->reuseIndex] =
                        sSampleDmaReuseQueue1[sSampleDmaReuseQueueTail1];
                    sSampleDmas[sSampleDmaReuseQueue1[sSampleDmaReuseQueueTail1]].reuseIndex =
                        dma->reuseIndex;
                }
                sSampleDmaReuseQueueTail1++;
            }
            dma->ttl = 2;
            return dma->buffer + (devAddr - dma->source);
        }
    }

    if (!hasDma) {
        // Allocate a DMA from reuse queue 1. This queue will hopefully never
        // be empty, since TTL 2 is so small.
        dmaIndex = sSampleDmaReuseQueue1[sSampleDmaReuseQueueTail1++];
        dma = sSampleDmas + dmaIndex;
        hasDma = TRUE;
    }

    transfer = dma->bufSize;
    dmaDevAddr = devAddr & ~0xF;
    dma->ttl = 2;
    dma->source = dmaDevAddr;
    dma->sizeUnused = transfer;
    osPiStartDma(&gCurrAudioFrameDmaIoMesgBufs[gCurrAudioFrameDmaCount++], OS_MESG_PRI_NORMAL,
                     OS_READ, dmaDevAddr, dma->buffer, transfer, &gCurrAudioFrameDmaQueue);
    *dmaIndexRef = dmaIndex;
    return (devAddr - dmaDevAddr) + dma->buffer;
}

extern ? gCurrAudioFrameDmaIoMesgBufs;
extern OSMesgQueue gCurrAudioFrameDmaQueue;
extern u32 sSampleDmaListSize1;
extern ? sSampleDmaReuseQueue1;
extern ? sSampleDmaReuseQueue2;
extern u8 sSampleDmaReuseQueueHead2;
extern u8 sSampleDmaReuseQueueTail1;
extern u8 sSampleDmaReuseQueueTail2;
extern ? sSampleDmas;

void *func_800BAD0C(u32 devAddr, u32 size, s32 arg2, u8 *dmaIndexRef) {
    void *sp40;
    s32 sp30;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 temp_t9_3;
    s32 temp_v0_2;
    s32 temp_v0_4;
    s32 var_t2;
    s32 var_t3;
    u16 temp_v0_6;
    u32 temp_s0;
    u32 var_v1;
    u32 var_v1_2;
    u8 *temp_v0_3;
    u8 *temp_v0_5;
    u8 temp_a0;
    u8 temp_a3;
    u8 temp_t2;
    u8 temp_v0;
    void *temp_t0;
    void *var_a0;
    void *var_t0;

    var_t3 = 0;
    if ((arg2 != 0) || (temp_v0 = *dmaIndexRef, var_v1 = 0, ((temp_v0 < (u32) sSampleDmaListSize1) == 0))) {
        var_v1_2 = sSampleDmaListSize1;
        if (var_v1_2 < (u32) gSampleDmaNumListItems) {
            var_a0 = (var_v1_2 * 0x10) + &sSampleDmas;
loop_4:
            temp_t0 = var_a0;
            temp_v0_2 = devAddr - var_a0->unk4;
            if ((temp_v0_2 >= 0) && ((u32) (var_a0->unkA - size) >= (u32) temp_v0_2)) {
                if ((var_a0->unkE == 0) && (sSampleDmaReuseQueueHead2 != sSampleDmaReuseQueueTail2)) {
                    temp_a3 = var_a0->unkD;
                    temp_v0_3 = &sSampleDmaReuseQueue2 + sSampleDmaReuseQueueTail2;
                    if (sSampleDmaReuseQueueTail2 != temp_a3) {
                        *(&sSampleDmaReuseQueue2 + temp_a3) = *temp_v0_3;
                        (&sSampleDmas + (*temp_v0_3 * 0x10))->unkD = (u8) var_a0->unkD;
                    }
                    sSampleDmaReuseQueueTail2 += 1;
                }
                var_a0->unkE = 0x3CU;
                *dmaIndexRef = (u8) var_v1_2;
                return (var_a0->unk0 + devAddr) - var_a0->unk4;
            }
            var_v1_2 += 1;
            var_a0 += 0x10;
            if (var_v1_2 >= (u32) gSampleDmaNumListItems) {
                sp40 = temp_t0;
                goto block_14;
            }
            goto loop_4;
        }
block_14:
        var_t0 = sp40;
        if ((sSampleDmaReuseQueueHead2 != sSampleDmaReuseQueueTail2) && (arg2 != 0)) {
            temp_t2 = *(&sSampleDmaReuseQueue2 + sSampleDmaReuseQueueTail2);
            temp_t9 = temp_t2 * 0x10;
            sSampleDmaReuseQueueTail2 += 1;
            var_t0 = &sSampleDmas + temp_t9;
            var_t3 = 1;
            sp30 = (s32) temp_t2;
        }
        goto block_27;
    }
    var_t0 = &sSampleDmas + (temp_v0 * 0x10);
    if (sSampleDmaListSize1 != 0) {
loop_19:
        temp_t9_2 = var_v1 * 0x10;
        var_v1 += 1;
        temp_v0_4 = devAddr - var_t0->unk4;
        if ((temp_v0_4 >= 0) && ((u32) (var_t0->unkA - size) >= (u32) temp_v0_4)) {
            if (var_t0->unkE == 0) {
                temp_a0 = var_t0->unkD;
                temp_v0_5 = &sSampleDmaReuseQueue1 + sSampleDmaReuseQueueTail1;
                if (sSampleDmaReuseQueueTail1 != temp_a0) {
                    *(&sSampleDmaReuseQueue1 + temp_a0) = *temp_v0_5;
                    (&sSampleDmas + (*temp_v0_5 * 0x10))->unkD = (u8) var_t0->unkD;
                }
                sSampleDmaReuseQueueTail1 += 1;
            }
            var_t0->unkE = 2U;
            return (var_t0->unk0 + devAddr) - var_t0->unk4;
        }
        var_t0 = &sSampleDmas + temp_t9_2;
        if (var_v1 >= (u32) sSampleDmaListSize1) {
            goto block_27;
        }
        goto loop_19;
    }
block_27:
    var_t2 = sp30;
    if (var_t3 == 0) {
        var_t2 = (s32) *(&sSampleDmaReuseQueue1 + sSampleDmaReuseQueueTail1);
        sSampleDmaReuseQueueTail1 += 1;
        var_t0 = &sSampleDmas + (var_t2 * 0x10);
    }
    temp_v0_6 = var_t0->unkA;
    temp_s0 = devAddr & ~0xF;
    var_t0->unkE = 2;
    var_t0->unk4 = temp_s0;
    var_t0->unk8 = temp_v0_6;
    temp_t9_3 = gCurrAudioFrameDmaCount * 0x18;
    gCurrAudioFrameDmaCount += 1;
    sp30 = var_t2;
    sp40 = var_t0;
    osPiStartDma(temp_t9_3 + &gCurrAudioFrameDmaIoMesgBufs, 0, 0, temp_s0, var_t0->unk0, (u32) temp_v0_6, &gCurrAudioFrameDmaQueue);
    *dmaIndexRef = (u8) var_t2;
    return (devAddr - temp_s0) + var_t0->unk0;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/load/func_800BAD0C.s")
#endif

// init_sample_dma_buffers
void func_800BB030(UNUSED s32 arg0) {
    s32 i;
#define j i

    D_803B70A8 = 0x5A0;

    for (i = 0; i < gMaxSimultaneousNotes * 3 * gAudioBufferParameters.presetUnk4; i++)
    {
        sSampleDmas[gSampleDmaNumListItems].buffer = soundAlloc(&gNotesAndBuffersPool, D_803B70A8);
        if (sSampleDmas[gSampleDmaNumListItems].buffer == NULL) {
            break;
        }
        sSampleDmas[gSampleDmaNumListItems].bufSize = D_803B70A8;
        sSampleDmas[gSampleDmaNumListItems].source = 0;
        sSampleDmas[gSampleDmaNumListItems].sizeUnused = 0;
        sSampleDmas[gSampleDmaNumListItems].unused2 = 0;
        sSampleDmas[gSampleDmaNumListItems].ttl = 0;
        gSampleDmaNumListItems++;
    }

    for (i = 0; (u32) i < gSampleDmaNumListItems; i++) {
        sSampleDmaReuseQueue1[i] = (u8) i;
        sSampleDmas[i].reuseIndex = (u8) i;
    }

    for (j = gSampleDmaNumListItems; j < 0x100; j++) {
        sSampleDmaReuseQueue1[j] = 0;
    }

    sSampleDmaReuseQueueTail1 = 0;
    sSampleDmaReuseQueueHead1 = (u8) gSampleDmaNumListItems;
    sSampleDmaListSize1 = gSampleDmaNumListItems;

    D_803B70A8 = 0x180;
    for (i = 0; i < gMaxSimultaneousNotes; i++) {
        sSampleDmas[gSampleDmaNumListItems].buffer = soundAlloc(&gNotesAndBuffersPool, D_803B70A8);
        if (sSampleDmas[gSampleDmaNumListItems].buffer == NULL) {
            break;
        }
        sSampleDmas[gSampleDmaNumListItems].bufSize = D_803B70A8;
        sSampleDmas[gSampleDmaNumListItems].source = 0;
        sSampleDmas[gSampleDmaNumListItems].sizeUnused = 0;
        sSampleDmas[gSampleDmaNumListItems].unused2 = 0;
        sSampleDmas[gSampleDmaNumListItems].ttl = 0;
        gSampleDmaNumListItems++;
    }

    for (i = sSampleDmaListSize1; (u32) i < gSampleDmaNumListItems; i++) {
        sSampleDmaReuseQueue2[i - sSampleDmaListSize1] = (u8) i;
        sSampleDmas[i].reuseIndex = (u8)(i - sSampleDmaListSize1);
    }

    // This probably meant to touch the range size1..size2 as well... but it
    // doesn't matter, since these values are never read anyway.
    for (j = gSampleDmaNumListItems; j < 0x100; j++) {
        sSampleDmaReuseQueue2[j] = sSampleDmaListSize1;
    }

    sSampleDmaReuseQueueTail2 = 0;
    sSampleDmaReuseQueueHead2 = gSampleDmaNumListItems - sSampleDmaListSize1;
#undef j
}

// Similar to patch_sound, but not really
s32 func_800BB304(struct AudioBankSample *sample) {
    //struct AudioBankSample *sample = sound->sample;
    UNUSED u8 *mem;

    if (sample == (void *)NULL) {
        return -1;
    }

    if (sample->loaded == 1) {
        //temp_a1 = sound->sampleAddr // unk10;
        mem = soundAlloc(&gNotesAndBuffersPool, sample->sampleSize);
        //temp_a1_2 = temp_v0;
        if (mem == (void *)NULL) {
            return -1;
        }
        audio_dma_copy_immediate((uintptr_t)sample->sampleAddr, mem, sample->sampleSize);
        sample->loaded = 0x81;
        sample->sampleAddr = mem; // sound->unk4
    }
}

s32 func_800BB388(s32 bankId, s32 instId, s32 arg2) {
    struct Instrument *instr;
    struct Drum *drum;

    if (instId < 0x7F) {
        instr = get_instrument_inner(bankId, instId);
        if (instr == NULL) {
            return -1;
        }
        if (instr->normalRangeLo != 0) {
            func_800BB304(instr->lowNotesSound.sample);
        }
        func_800BB304(instr->normalNotesSound.sample);
        if (instr->normalRangeHi != 0x7F) {
            func_800BB304(instr->highNotesSound.sample);
        }
        //! @bug missing return
    } else if (instId == 0x7F) {
        drum = get_drum(bankId, arg2);
        if (drum == NULL) {
            return -1;
        }
        func_800BB304(drum->sound.sample);
        return 0;
    }
#ifdef AVOID_UB
    return 0;
#endif
}

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Aug-14-2023
void func_800BB43C(void *arg0, s32 arg1) {
    s32 var_v0;
    void *var_a2;

    var_v0 = 0;
    var_a2 = arg0;
    if (arg0->unk2 > 0) {
        do {
            var_v0 += 1;
            if (var_a2->unk8 != 0) {
                var_a2->unk4 = (s32) (var_a2->unk4 + arg1);
            }
            var_a2 += 8;
        } while (var_v0 < arg0->unk2);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/audio/load/func_800BB43C.s")
#endif

void patch_sound(struct AudioBankSound *sound, u8 *memBase, u8 *offsetBase) {
    struct AudioBankSample *sample;
    void *patched;
    u8 *mem;

#define PATCH(x, base) (patched = (void *)((uintptr_t) (x) + (uintptr_t) base))

    if (sound->sample != NULL) {
        sample = sound->sample = PATCH(sound->sample, memBase);
        if (sample->loaded == 0) {
            sample->sampleAddr = PATCH(sample->sampleAddr, offsetBase);
            sample->loop = PATCH(sample->loop, memBase);
            sample->book = PATCH(sample->book, memBase);
            sample->loaded = 1;
        }
        else if (sample->loaded == 0x80) {
            PATCH(sample->sampleAddr, offsetBase);
            mem = soundAlloc(&gNotesAndBuffersPool, sample->sampleSize);
            if (mem == NULL) {
                sample->sampleAddr = patched;
                sample->loaded = 1;
            } else {
                audio_dma_copy_immediate((uintptr_t) patched, mem, sample->sampleSize);
                sample->loaded = 0x81;
                sample->sampleAddr = mem;
            }
            sample->loop = PATCH(sample->loop, memBase);
            sample->book = PATCH(sample->book, memBase);
        }
    }

#undef PATCH
}

#ifdef MIPS_TO_C
//generated by m2c commit 08138748803d75e73e4a94bb0c619a273754ee9c on Sep-12-2023
void func_800BB584(s32 bankId) {
    s32 sp18;
    struct CtlEntry *temp_v0;
    struct CtlEntry *temp_v0_2;
    u8 *var_a1;

    if (gAlTbl->seqArray[bankId].len == 0) {
        var_a1 = gAlTbl->seqArray[(s32) gAlTbl->seqArray[bankId].offset].offset;
    } else {
        var_a1 = gAlTbl->seqArray[bankId].offset;
    }
    temp_v0 = &gCtlEntries[bankId];
    sp18 = bankId * 0xC;
    patch_audio_bank((struct AudioBank *) (temp_v0->instruments - 4), var_a1, (u32) temp_v0->numInstruments, (u32) temp_v0->numDrums);
    temp_v0_2 = &gCtlEntries[bankId];
    temp_v0_2->drums = temp_v0_2->instruments->unk-4;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/load/func_800BB584.s")
#endif

void patch_audio_bank(struct AudioBank *mem, u8 *offset, u32 numInstruments, u32 numDrums) {
    struct Instrument *instrument;
    struct Instrument **itInstrs;
    struct Instrument **end;
    struct AudioBank *temp;
    u32 i;
    void *patched;
    struct Drum *drum;
    struct Drum **drums;
    u32 numDrums2;

#define BASE_OFFSET_REAL(x, base) (void *)((uintptr_t) (x) + (uintptr_t) base)
#define PATCH(x, base) (patched = BASE_OFFSET_REAL(x, base))
#define PATCH_MEM(x) x = PATCH(x, mem)

#define BASE_OFFSET(x, base) BASE_OFFSET_REAL(base, x)

    drums = mem->drums;
    numDrums2 = numDrums;
    if (drums != NULL && numDrums2 > 0) {
        mem->drums = PATCH(drums, mem);
        for (i = 0; i < numDrums2; i++) {
            patched = mem->drums[i];
            if (patched != NULL) {
                drum = PATCH(patched, mem);
                mem->drums[i] = drum;
                if (drum->loaded == 0) {
                    patch_sound(&drum->sound, (u8 *) mem, offset);
                    patched = drum->envelope;
                    drum->envelope = BASE_OFFSET(mem, patched);
                    drum->loaded = 1;
                }

            }
        }
    }

    //! Doesn't affect EU, but required for US/JP
    temp = &*mem;
    if (numInstruments > 0) {
        //! Doesn't affect EU, but required for US/JP
        struct Instrument **tempInst;
        itInstrs = temp->instruments;
        tempInst = temp->instruments;
        end = numInstruments + tempInst;

        do {
            if (*itInstrs != NULL) {
                *itInstrs = BASE_OFFSET(*itInstrs, mem);
                instrument = *itInstrs;

                if (instrument->loaded == 0) {
                    patch_sound(&instrument->lowNotesSound, (u8 *) mem, offset);
                    patch_sound(&instrument->normalNotesSound, (u8 *) mem, offset);
                    patch_sound(&instrument->highNotesSound, (u8 *) mem, offset);
                    patched = instrument->envelope;
                    instrument->envelope = BASE_OFFSET(mem, patched);
                    instrument->loaded = 1;
                }
            }
            itInstrs++;
        } while (end != itInstrs);
    }
#undef PATCH_MEM
#undef PATCH
#undef BASE_OFFSET_REAL
#undef BASE_OFFSET
}

struct AudioBank *bank_load_immediate(s32 bankId, s32 arg1) {
    s32 alloc;
    s32 stackPadding0[4];
    s32 stackPadding1[5];
    struct AudioBank *ret;
    u8 *ctlData;

    alloc = gAlCtlHeader->seqArray[bankId].len + 0xf;
    alloc = ALIGN16(alloc);
    alloc -= 0x10;
    ctlData = gAlCtlHeader->seqArray[bankId].offset;
    ret = alloc_bank_or_seq(&gBankLoadedPool, 1, alloc, arg1, bankId);
    if (ret == NULL) {
        return NULL;
    }
    audio_dma_copy_immediate((u32) (ctlData + 0x10), ret, (u32) alloc);
    gCtlEntries[bankId].instruments = ret->instruments;
    func_800BB584(bankId);
    if (gBankLoadStatus[bankId] != 5) {
        gBankLoadStatus[bankId] = 2;
    }
    return ret;
}

struct AudioBank *bank_load_async(s32 bankId, s32 arg1, struct SequencePlayer *seqPlayer) {
    size_t alloc;
    s32 stackPadding0[9];
    struct AudioBank *ret;
    u8 *ctlData;
    s32 stackPadding1[2];

    alloc = gAlCtlHeader->seqArray[bankId].len + 0xF;
    alloc = ALIGN16(alloc);
    alloc -= 0x10;
    ctlData = gAlCtlHeader->seqArray[bankId].offset;
    ret = alloc_bank_or_seq(&gBankLoadedPool, 1, alloc, arg1, bankId);
    if (ret == NULL) {
        return NULL;
    }
    seqPlayer->loadingBankId = bankId;
    gCtlEntries[bankId].instruments = ret->instruments;
    gCtlEntries[bankId].drums = NULL;
    seqPlayer->bankDmaCurrMemAddr = (u8*) ret;
    seqPlayer->bankDmaCurrDevAddr = (uintptr_t) (ctlData + 0x10);
    seqPlayer->bankDmaRemaining = alloc;
    if (1) { }
    osCreateMesgQueue(&seqPlayer->bankDmaMesgQueue, &seqPlayer->bankDmaMesg, 1);
    seqPlayer->bankDmaInProgress = TRUE;
    audio_dma_partial_copy_async(&seqPlayer->bankDmaCurrDevAddr, &seqPlayer->bankDmaCurrMemAddr, &seqPlayer->bankDmaRemaining, &seqPlayer->bankDmaMesgQueue, &seqPlayer->bankDmaIoMesg);
    if (gBankLoadStatus[bankId] != 5) {
        gBankLoadStatus[bankId] = 1;
    }
    return ret;
}

void *sequence_dma_immediate(s32 seqId, s32 arg1) {
    s32 seqLength;
    void *ptr;
    u8 *seqData;

    seqLength = gSeqFileHeader->seqArray[seqId].len;
    seqLength = ALIGN16(seqLength);
    seqData = gSeqFileHeader->seqArray[seqId].offset;
    ptr = alloc_bank_or_seq(&gSeqLoadedPool, 1, seqLength, arg1, seqId);
    if (ptr == NULL) {
        return NULL;
    }

    audio_dma_copy_immediate((uintptr_t) seqData, ptr, seqLength);
    if (gSeqLoadStatus[seqId] != 5) {
        gSeqLoadStatus[seqId] = 2;
    }
    return ptr;
}

void *sequence_dma_async(s32 seqId, s32 arg1, struct SequencePlayer *seqPlayer) {
    s32 seqLength;
    void *ptr;
    u8 *seqData;
    OSMesgQueue *mesgQueue;

    seqLength = gSeqFileHeader->seqArray[seqId].len;
    seqLength = ALIGN16(seqLength);
    seqData = gSeqFileHeader->seqArray[seqId].offset;
    ptr = alloc_bank_or_seq(&gSeqLoadedPool, 1, seqLength, arg1, seqId);
    if (ptr == NULL) {
        return NULL;
    }
    if (seqLength < 0x41) {
        audio_dma_copy_immediate((uintptr_t) seqData, ptr, (u32) seqLength);
        if (1) {}
        if (gSeqLoadStatus[seqId] != 5) {
            gSeqLoadStatus[seqId] = 2;
        }
    } else {
        audio_dma_copy_immediate((uintptr_t) seqData, ptr, 0x00000040U);
        mesgQueue = &seqPlayer->seqDmaMesgQueue;
        osCreateMesgQueue(mesgQueue, &seqPlayer->seqDmaMesg, 1);
        seqPlayer->seqDmaInProgress = TRUE;
        audio_dma_copy_async((uintptr_t) (seqData + 0x40), (u8*) ptr + 0x40, seqLength - 0x40, mesgQueue, &seqPlayer->seqDmaIoMesg);
        if (gSeqLoadStatus[seqId] != 5) {
            gSeqLoadStatus[seqId] = 1;
        }
    }
    return ptr;
}

u8 get_missing_bank(u32 seqId, s32 *nonNullCount, s32 *nullCount) {
    void *temp;
    u32 bankId;
    u16 offset;
    u8 i;
    u8 ret;

    *nullCount = 0;
    *nonNullCount = 0;
    offset = ((u16 *) gAlBankSets)[seqId];
    for (i = gAlBankSets[offset++], ret = 0; i != 0; i--) {
        bankId = gAlBankSets[offset++];

        if (IS_BANK_LOAD_COMPLETE(bankId) == TRUE) {
            temp = get_bank_or_seq(1, 2, bankId);
        } else {
            temp = NULL;
        }

        if (temp == NULL) {
            (*nullCount)++;
            ret = bankId;
        } else {
            (*nonNullCount)++;
        }
    }

    return ret;
}

struct AudioBank *load_banks_immediate(s32 seqId, u8 *outDefaultBank) {
    void *ret;
    u32 bankId;
    u16 offset;
    u8 i;

    offset = ((u16 *) gAlBankSets)[seqId];
    for (i = gAlBankSets[offset++]; i != 0; i--) {
        bankId = gAlBankSets[offset++];

        if (IS_BANK_LOAD_COMPLETE(bankId) == TRUE) {
            ret = get_bank_or_seq(1, 2, bankId);
        } else {
            ret = NULL;
        }

        if (ret == NULL) {
            ret = bank_load_immediate(bankId, 2);
        }
    }
    *outDefaultBank = bankId;
    return ret;
}

void preload_sequence(u32 seqId, u8 preloadMask) {
    void *sequenceData;
    u8 temp;

    if (seqId >= gSequenceCount) {
        return;
    }

    if (gSeqFileHeader->seqArray[seqId].len == 0) {
        seqId = (u32) gSeqFileHeader->seqArray[seqId].offset;
    }

    gAudioLoadLock = AUDIO_LOCK_LOADING;
    if (preloadMask & PRELOAD_BANKS) {
        load_banks_immediate(seqId, &temp);
    }

    if (preloadMask & PRELOAD_SEQUENCE) {
        // @bug should be IS_SEQ_LOAD_COMPLETE
        if (IS_BANK_LOAD_COMPLETE(seqId) == TRUE) {
            sequenceData = get_bank_or_seq(0, 2, seqId);
        } else {
            sequenceData = NULL;
        }
        if (sequenceData == NULL && sequence_dma_immediate(seqId, 2) == NULL) {
            gAudioLoadLock = AUDIO_LOCK_NOT_LOADING;
            return;
        }
    }

    gAudioLoadLock = AUDIO_LOCK_NOT_LOADING;
}

void load_sequence(u32 player, u32 seqId, s32 loadAsync) {
    if (!loadAsync) {
        gAudioLoadLock = AUDIO_LOCK_LOADING;
    }
    load_sequence_internal(player, seqId, loadAsync);
    if (!loadAsync) {
        gAudioLoadLock = AUDIO_LOCK_NOT_LOADING;
    }
}

void load_sequence_internal(u32 player, u32 seqId, s32 loadAsync) {
    void *sequenceData;
    struct SequencePlayer *seqPlayer = &gSequencePlayers[player];
    UNUSED u32 padding[2];

    if (seqId >= gSequenceCount) {
        return;
    }

    if (gSeqFileHeader->seqArray[seqId].len == 0) {
        seqId = (u32) gSeqFileHeader->seqArray[seqId].offset;
    }

    sequence_player_disable(seqPlayer);
    if (loadAsync) {
        s32 numMissingBanks = 0;
        s32 dummy = 0;
        s32 bankId = get_missing_bank(seqId, &dummy, &numMissingBanks);
        if (numMissingBanks == 1) {
            if (bank_load_async(bankId, 2, seqPlayer) == NULL) {
                return;
            }
            // @bug This should set the last bank (i.e. the first in the JSON)
            // as default, not the missing one. This code path never gets
            // taken, though -- all sequence loading is synchronous.
            seqPlayer->defaultBank[0] = bankId;
        } else {
            if (load_banks_immediate(seqId, &seqPlayer->defaultBank[0]) == NULL) {
                return;
            }
        }
    } else if (load_banks_immediate(seqId, &seqPlayer->defaultBank[0]) == NULL) {
        return;
    }

    seqPlayer->seqId = seqId;
    sequenceData = get_bank_or_seq(0, 2, seqId);
    if (sequenceData == NULL) {
        if (seqPlayer->seqDmaInProgress) {
            return;
        }
        if (loadAsync) {
            sequenceData = sequence_dma_async(seqId, 2, seqPlayer);
        } else {
            sequenceData = sequence_dma_immediate(seqId, 2);
        }

        if (sequenceData == NULL) {
            return;
        }
    }

    init_sequence_player(player);
    seqPlayer->scriptState.depth = 0;
    seqPlayer->delay = 0;
    seqPlayer->enabled = TRUE;
    seqPlayer->seqData = sequenceData;
    seqPlayer->scriptState.pc = sequenceData;
}

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Aug-14-2023
? func_800B90F0(s32);                               /* extern */
? audio_shut_down_and_reset_step();                                  /* extern */
? func_800BB43C(s32 *, ? *);                        /* extern */
extern s8 gAudioResetStatus;
extern s8 gAudioResetPresetIdToLoad;
extern OSMesgQueue D_803B6720;
extern void *D_803B6738;
extern s32 *gSeqFileHeader;
extern s32 *gAlCtlHeader;
extern s32 *gAlTbl;
extern s16 gSequenceCount;
extern s32 D_803B70B8;
extern s32 D_803B70C0;
extern s32 D_803B70C4;
extern s32 gAudioTask;
extern ? gAudioTasks;
extern f32 D_803B7178;
extern s32 gRefreshRate;
extern void *gAiBuffers;
extern ? D_803B718C;
extern ? D_803B7192;
extern ? D_803B71A0;
extern ? D_803B71B0;
extern ? _audio_banksSegmentRomStart;
extern ? _audio_tablesSegmentRomStart;
extern ? _instrument_setsSegmentRomStart;
extern ? _sequencesSegmentRomStart;
extern void *gCurrAudioFrameDmaMesgBufs;
extern OSMesgQueue gCurrAudioFrameDmaQueue;
extern s32 gSampleDmaNumListItems;
static s32 D_800EA5D0 = 0x00048C00;
static s32 D_800EA5D4 = 0x00002600;
static u32 D_800EA5D8 = 0;
static s32 gAudioLoadLock = 0;

void audio_init(void) {
    s32 sp8C;
    s32 sp60;
    void **sp3C;
    ? *var_v0;
    ? *var_v0_3;
    s16 temp_s3;
    s16 temp_t1;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s32 temp_t7;
    s32 var_s0_2;
    s32 var_s1;
    s32 var_v1;
    s32 var_v1_2;
    u32 *var_v0_2;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_a1_3;
    u32 var_s0;
    u8 *temp_v0_4;
    void **var_a2;
    void *temp_t3;
    void *temp_t7_2;

    gAudioLoadLock = 0;
    temp_t7 = (s32) D_800EA5D0 / 8;
    if (temp_t7 > 0) {
        var_v0 = &D_803B71B0;
        do {
            var_v0 += 8;
            var_v0->unk-4 = 0;
            var_v0->unk-8 = 0;
        } while ((u32) var_v0 < (u32) ((temp_t7 * 8) + &D_803B71B0));
    }
    var_v0_2 = &gGfxSPTaskOutputBufferSize;
    var_s0 = (u32) (&D_803B71A0 - &gGfxSPTaskOutputBufferSize) >> 3;
    if ((s32) var_s0 >= 0) {
        do {
            var_s0 -= 1;
            var_v0_2->unk4 = 0;
            var_v0_2->unk0 = 0;
            var_v0_2 += 8;
        } while ((s32) var_s0 >= 0);
    }
    switch (osTvType) {                             /* irregular */
    case 0:
        D_803B7178 = 20.03042f;
        gRefreshRate = 0x00000032;
        break;
    case 2:
        D_803B7178 = 16.546f;
        gRefreshRate = 0x0000003C;
        break;
    default:
    case 1:
        D_803B7178 = 16.713f;
        gRefreshRate = 0x0000003C;
        break;
    }
    func_800CBF48(&gGfxSPTaskOutputBufferSize);
    var_v0_3 = &D_803B718C;
    do {
        var_v0_3 += 2;
        var_v0_3->unk-2 = 0x00A0;
    } while ((u32) var_v0_3 < (u32) &D_803B7192);
    D_803B70B8 = 0;
    D_803B70C0 = 0;
    D_803B70C4 = 0;
    gAudioLibSoundMode = 0;
    gAudioTask = 0;
    gAudioTasks.unk34 = 0;
    gAudioTasks.unk84 = 0;
    osCreateMesgQueue(&D_803B6720, &D_803B6738, 1);
    osCreateMesgQueue(&gCurrAudioFrameDmaQueue, &gCurrAudioFrameDmaMesgBufs, 0x00000040);
    gCurrAudioFrameDmaCount = 0;
    gSampleDmaNumListItems = 0;
    func_800B90F0(D_800EA5D4);
    var_a2 = &gAiBuffers;
    do {
        sp3C = var_a2;
        var_v1 = 0;
        *var_a2 = soundAlloc(&gAudioInitPool, 0x00000A00U);
loop_18:
        *(*var_a2 + var_v1) = 0;
        (*var_a2 + var_v1)->unk2 = 0;
        (*var_a2 + var_v1)->unk4 = 0;
        temp_t7_2 = *var_a2 + var_v1;
        var_v1 += 8;
        temp_t7_2->unk6 = 0;
        if (var_v1 != 0xA00) {
            goto loop_18;
        }
        var_a2 += 4;
    } while ((u32) var_a2 < (u32) &D_803B718C);
    gAudioResetPresetIdToLoad = 0;
    gAudioResetStatus = 1;
    audio_shut_down_and_reset_step();
    gSeqFileHeader = &sp60;
    audio_dma_copy_immediate((u32) &_sequencesSegmentRomStart, &sp60, 0x00000010U);
    temp_t1 = gSeqFileHeader->unk2;
    temp_a1 = (((temp_t1 & 0xFFFF) * 8) + 0x13) & ~0xF;
    gSequenceCount = temp_t1;
    temp_v0 = soundAlloc(&gAudioInitPool, temp_a1);
    gSeqFileHeader = temp_v0;
    audio_dma_copy_immediate((u32) &_sequencesSegmentRomStart, temp_v0, temp_a1);
    func_800BB43C(gSeqFileHeader, &_sequencesSegmentRomStart);
    gAlCtlHeader = &sp60;
    audio_dma_copy_immediate((u32) &_audio_banksSegmentRomStart, &sp60, 0x00000010U);
    temp_s3 = gAlCtlHeader->unk2;
    temp_a1_2 = ((temp_s3 * 8) + 0x13) & ~0xF;
    temp_v0_2 = soundAlloc(&gAudioInitPool, temp_a1_2);
    gAlCtlHeader = temp_v0_2;
    audio_dma_copy_immediate((u32) &_audio_banksSegmentRomStart, temp_v0_2, temp_a1_2);
    func_800BB43C(gAlCtlHeader, &_audio_banksSegmentRomStart);
    gCtlEntries = soundAlloc(&gAudioInitPool, temp_s3 * 0xC);
    var_v1_2 = 0;
    if (temp_s3 > 0) {
        var_s1 = 0;
        var_s0_2 = 0;
        do {
            sp8C = var_v1_2;
            audio_dma_copy_immediate((gAlCtlHeader + var_s1)->unk4, &sp60, 0x00000010U);
            (gCtlEntries + var_s0_2)->unk1 = (s8) sp60;
            var_v1_2 = sp8C + 1;
            temp_t3 = gCtlEntries + var_s0_2;
            var_s0_2 += 0xC;
            var_s1 += 8;
            temp_t3->unk2 = (s8) sp64;
        } while (var_v1_2 != temp_s3);
    }
    gAlTbl = &sp60;
    audio_dma_copy_immediate((u32) &_audio_tablesSegmentRomStart, &sp60, 0x00000010U);
    temp_a1_3 = ((gAlTbl->unk2 * 8) + 0x13) & ~0xF;
    temp_v0_3 = soundAlloc(&gAudioInitPool, temp_a1_3);
    gAlTbl = temp_v0_3;
    audio_dma_copy_immediate((u32) &_audio_tablesSegmentRomStart, temp_v0_3, temp_a1_3);
    func_800BB43C(gAlTbl, &_audio_tablesSegmentRomStart);
    temp_v0_4 = soundAlloc(&gAudioInitPool, 0x00000100U);
    gAlBankSets = temp_v0_4;
    audio_dma_copy_immediate((u32) &_instrument_setsSegmentRomStart, temp_v0_4, 0x00000100U);
    sound_alloc_pool_init(&gUnkPool1.pool, soundAlloc(&gAudioInitPool, D_800EA5D8), D_800EA5D8);
    init_sequence_players();
    gAudioLoadLock = 0x76557364;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/load/audio_init.s")
#endif
