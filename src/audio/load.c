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

extern OSMesgQueue D_803B6720;
extern OSIoMesg D_803B6740;

extern OSMesgQueue gCurrAudioFrameDmaQueue; // gCurrAudioFrameDmaQueue
extern OSMesg gCurrAudioFrameDmaMesgBufs[AUDIO_FRAME_DMA_QUEUE_SIZE]; // gCurrAudioFrameDmaMesgBufs
extern OSIoMesg gCurrAudioFrameDmaIoMesgBufs[AUDIO_FRAME_DMA_QUEUE_SIZE]; // gCurrAudioFrameDmaIoMesgBufs

extern struct SharedDma sSampleDmas[0x60]; // sSampleDmas
extern u32 gSampleDmaNumListItems; // gSampleDmaNumListItems
extern u32 sSampleDmaListSize1; // sSampleDmaListSize1
extern s32 D_803B6E60; // sUnused80226B40

extern u8 sSampleDmaReuseQueue1[256]; // sSampleDmaReuseQueue1
extern u8 sSampleDmaReuseQueue2[256]; // sSampleDmaReuseQueue2
extern u8 sSampleDmaReuseQueueTail1; // sSampleDmaReuseQueueTail1
extern u8 sSampleDmaReuseQueueTail2; // sSampleDmaReuseQueueTail2
extern u8 sSampleDmaReuseQueueHead1; // sSampleDmaReuseQueueHead1
extern u8 sSampleDmaReuseQueueHead2; // sSampleDmaReuseQueueHead2

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

//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
extern s32 gCurrAudioFrameDmaCount;

void *func_800BAD0C(u32 devAddr, u32 size, s32 arg2, u8 *dmaIndexRef) {
    struct SharedDma *sp40;
    s32 sp30;
    s32 temp_t9;
    s32 temp_v0_2;
    s32 temp_v0_4;
    s32 temp_v1_3;
    s32 var_t2;
    s32 var_t3;
    struct SharedDma *temp_t0;
    struct SharedDma *var_a0;
    struct SharedDma *var_t0;
    u16 temp_v0_6;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_s0;
    u32 var_v1;
    u32 var_v1_2;
    u8 *temp_v0_3;
    u8 *temp_v0_5;
    u8 temp_a0;
    u8 temp_a1_3;
    u8 temp_a1_4;
    u8 temp_a3;
    u8 temp_t2;
    u8 temp_v0;
    u8 temp_v1;
    u8 temp_v1_2;

    var_t3 = 0;
    if ((arg2 != 0) || (temp_a1 = sSampleDmaListSize1, temp_v0 = *dmaIndexRef, var_v1 = 0, ((temp_v0 < temp_a1) == 0))) {
        temp_a1_2 = gSampleDmaNumListItems;
        var_v1_2 = sSampleDmaListSize1;
        if (var_v1_2 < temp_a1_2) {
            var_a0 = &sSampleDmas[var_v1_2];
loop_4:
            temp_t0 = var_a0;
            temp_v0_2 = devAddr - var_a0->source;
            if ((temp_v0_2 >= 0) && ((u32) (var_a0->bufSize - size) >= (u32) temp_v0_2)) {
                if (var_a0->ttl == 0) {
                    temp_a1_3 = sSampleDmaReuseQueueTail2;
                    if (sSampleDmaReuseQueueHead2 != temp_a1_3) {
                        temp_a3 = var_a0->reuseIndex;
                        temp_v0_3 = &sSampleDmaReuseQueue2[temp_a1_3];
                        if (temp_a1_3 != temp_a3) {
                            sSampleDmaReuseQueue2[temp_a3] = *temp_v0_3;
                            sSampleDmas[*temp_v0_3].reuseIndex = var_a0->reuseIndex;
                        }
                        sSampleDmaReuseQueueTail2 = temp_a1_3 + 1;
                    }
                }
                var_a0->ttl = 0x3C;
                *dmaIndexRef = (u8) var_v1_2;
                return &var_a0->buffer[devAddr] - var_a0->source;
            }
            var_v1_2 += 1;
            var_a0 += 0x10;
            if (var_v1_2 >= temp_a1_2) {
                sp40 = temp_t0;
                goto block_14;
            }
            goto loop_4;
        }
block_14:
        temp_a1_4 = sSampleDmaReuseQueueTail2;
        var_t0 = sp40;
        if ((sSampleDmaReuseQueueHead2 != temp_a1_4) && (arg2 != 0)) {
            temp_t2 = sSampleDmaReuseQueue2[temp_a1_4];
            sSampleDmaReuseQueueTail2 = temp_a1_4 + 1;
            var_t0 = &sSampleDmas[temp_t2];
            var_t3 = 1;
            sp30 = (s32) temp_t2;
        }
        goto block_27;
    }
    var_t0 = &sSampleDmas[temp_v0];
    if (temp_a1 != 0) {
loop_19:
        temp_t9 = var_v1 * 0x10;
        var_v1 += 1;
        temp_v0_4 = devAddr - var_t0->source;
        if ((temp_v0_4 >= 0) && ((u32) (var_t0->bufSize - size) >= (u32) temp_v0_4)) {
            if (var_t0->ttl == 0) {
                temp_v1 = sSampleDmaReuseQueueTail1;
                temp_a0 = var_t0->reuseIndex;
                temp_v0_5 = &sSampleDmaReuseQueue1[temp_v1];
                if (temp_v1 != temp_a0) {
                    sSampleDmaReuseQueue1[temp_a0] = *temp_v0_5;
                    sSampleDmas[*temp_v0_5].reuseIndex = var_t0->reuseIndex;
                }
                sSampleDmaReuseQueueTail1 = temp_v1 + 1;
            }
            var_t0->ttl = 2;
            return &var_t0->buffer[devAddr] - var_t0->source;
        }
        var_t0 = sSampleDmas + temp_t9;
        if (var_v1 >= temp_a1) {
            goto block_27;
        }
        goto loop_19;
    }
block_27:
    var_t2 = sp30;
    if (var_t3 == 0) {
        temp_v1_2 = sSampleDmaReuseQueueTail1;
        var_t2 = (s32) sSampleDmaReuseQueue1[temp_v1_2];
        sSampleDmaReuseQueueTail1 = temp_v1_2 + 1;
        var_t0 = sSampleDmas + (var_t2 * 0x10);
    }
    temp_v0_6 = var_t0->bufSize;
    temp_s0 = devAddr & ~0xF;
    var_t0->ttl = 2;
    var_t0->source = temp_s0;
    var_t0->sizeUnused = temp_v0_6;
    temp_v1_3 = gCurrAudioFrameDmaCount;
    gCurrAudioFrameDmaCount = temp_v1_3 + 1;
    sp30 = var_t2;
    sp40 = var_t0;
    osPiStartDma(&gCurrAudioFrameDmaIoMesgBufs[temp_v1_3], 0, 0, temp_s0, var_t0->buffer, (u32) temp_v0_6, &gCurrAudioFrameDmaQueue);
    *dmaIndexRef = (u8) var_t2;
    return &var_t0->buffer[devAddr - temp_s0];
}
#else
GLOBAL_ASM("asm/non_matchings/audio/load/func_800BAD0C.s")
#endif

extern u32 D_803B70A8; // sDmaBufSize
extern s32 gMaxSimultaneousNotes; // gMaxSimultaneousNotes
extern struct AudioBufferParametersEU gAudioBufferParameters; // gAudioBufferParameters
//extern struct SoundAllocPool gNotesAndBuffersPool; // remove when possible. This is in heap.h
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
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_800BB43C(void *arg0, s32 arg1) {
    s16 temp_v1;
    s32 temp_v0;
    void *phi_a2;
    s32 phi_v0;
    s32 phi_v1;

    temp_v1 = arg0->unk2;
    phi_a2 = arg0;
    phi_v0 = 0;
    phi_v1 = temp_v1;
    if (temp_v1 > 0) {
        do {
            temp_v0 = phi_v0 + 1;
            phi_v0 = temp_v0;
            if (phi_a2->unk8 != 0) {
                phi_a2->unk4 = phi_a2->unk4 + arg1;
                phi_v1 = arg0->unk2;
            }
            phi_a2 += 8;
        } while (temp_v0 < phi_v1);
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
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void patch_audio_bank(s32, s32, u8, u8); // extern
extern s32 D_803B7074;
extern s32 gCtlEntries;

void func_800BB584(s32 arg0) {
    s32 sp18;
    s32 temp_v1;
    s32 temp_v1_2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    s32 phi_a1;

    temp_v1 = D_803B7074;
    temp_v0 = temp_v1 + (arg0 * 8);
    if (temp_v0->unk8 == 0) {
        phi_a1 = (temp_v1 + (temp_v0->unk4 * 8))->unk4;
    } else {
        phi_a1 = temp_v0->unk4;
    }
    temp_v1_2 = arg0 * 0xC;
    temp_v0_2 = gCtlEntries + temp_v1_2;
    sp18 = temp_v1_2;
    patch_audio_bank(temp_v0_2->unk4 - 4, phi_a1, temp_v0_2->unk1, temp_v0_2->unk2);
    temp_v0_3 = gCtlEntries + temp_v1_2;
    temp_v0_3->unk8 = temp_v0_3->unk4->unk-4;
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



#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_800B93BC(? *, ?, s32, ?, s32); // extern
void audio_dma_copy_immediate(s32, s32, s32); // extern
void func_800BB584(s32); // extern
extern u32 gBankLoadedPool;
extern u8 gBankLoadStatus;
extern s32 D_803B7070;
extern s32 gCtlEntries;

s32 func_800BB780(s32 arg0, ? arg1) {
    s32 sp54;
    s32 sp2C;
    s32 sp28;
    s32 temp_a2;
    s32 temp_v0_2;
    u8 *temp_v0_3;
    void *temp_v0;

    temp_v0 = D_803B7070 + (arg0 * 8);
    temp_a2 = ((temp_v0->unk8 + 0x1E) & ~0xF) - 0x10;
    sp54 = temp_a2;
    sp28 = temp_v0->unk4;
    temp_v0_2 = func_800B93BC(&gBankLoadedPool, 1, temp_a2, arg1, arg0);
    if (temp_v0_2 == 0) {
        return 0;
    }
    sp2C = temp_v0_2;
    audio_dma_copy_immediate(sp28 + 0x10, temp_v0_2, temp_a2);
    (gCtlEntries + (arg0 * 0xC))->unk4 = sp2C + 4;
    func_800BB584(arg0);
    temp_v0_3 = arg0 + &gBankLoadStatus;
    if (*temp_v0_3 != 5) {
        *temp_v0_3 = 2;
    }
    return sp2C;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/load/func_800BB780.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_800B93BC(? *, ?, s32, ?, s32); // extern
void audio_dma_partial_copy_async(void *, void *, void *, OSMesgQueue *, void *); // extern
extern u32 gBankLoadedPool;
extern u8 gBankLoadStatus;
extern s32 D_803B7070;
extern s32 gCtlEntries;

s32 func_800BB864(s32 arg0, ? arg1, void *arg2) {
    s32 sp64;
    s32 sp3C;
    s32 sp38;
    OSMesgQueue *sp2C;
    OSMesgQueue *temp_a3;
    s32 temp_a2;
    s32 temp_v0_2;
    s32 temp_v1;
    u8 *temp_v0_3;
    void *temp_v0;

    temp_v0 = D_803B7070 + (arg0 * 8);
    temp_a2 = ((temp_v0->unk8 + 0x1E) & ~0xF) - 0x10;
    sp64 = temp_a2;
    sp38 = temp_v0->unk4;
    temp_v0_2 = func_800B93BC(&gBankLoadedPool, 1, temp_a2, arg1, arg0);
    sp3C = temp_v0_2;
    if (temp_v0_2 == 0) {
        return 0;
    }
    arg2->unk6 = arg0;
    temp_v1 = arg0 * 0xC;
    (gCtlEntries + temp_v1)->unk4 = temp_v0_2 + 4;
    temp_a3 = arg2 + 0x108;
    (gCtlEntries + temp_v1)->unk8 = 0;
    arg2->unk13C = temp_v0_2;
    arg2->unk144 = temp_a2;
    arg2->unk140 = sp38 + 0x10;
    sp2C = temp_a3;
    osCreateMesgQueue(temp_a3, arg2 + 0x120, 1);
    arg2->unk0 = arg2->unk0 | 8;
    audio_dma_partial_copy_async(arg2 + 0x140, arg2 + 0x13C, arg2 + 0x144, temp_a3, arg2 + 0x124);
    temp_v0_3 = arg0 + &gBankLoadStatus;
    if (*temp_v0_3 != 5) {
        *temp_v0_3 = 1;
    }
    return sp3C;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/load/func_800BB864.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_800B93BC(? *, ?, s32, ?, s32); // extern
void audio_dma_copy_immediate(s32, s32, s32); // extern
extern u32 gSeqLoadedPool;
extern ? gSeqLoadStatus;
extern s32 D_803B706C;

s32 func_800BB99C(s32 arg0, ? arg1) {
    s32 sp2C;
    s32 sp28;
    s32 sp24;
    s32 temp_t9;
    s32 temp_v0;
    u8 *temp_v0_3;
    void *temp_v0_2;

    temp_v0_2 = D_803B706C + (arg0 * 8);
    temp_t9 = (temp_v0_2->unk8 + 0xF) & ~0xF;
    sp2C = temp_t9;
    sp24 = temp_v0_2->unk4;
    temp_v0 = func_800B93BC(&gSeqLoadedPool, 1, temp_t9, arg1, arg0);
    if (temp_v0 == 0) {
        return 0;
    }
    sp28 = temp_v0;
    audio_dma_copy_immediate(sp24, temp_v0, sp2C);
    temp_v0_3 = arg0 + &gSeqLoadStatus;
    if (*temp_v0_3 != 5) {
        *temp_v0_3 = 2;
    }
    return temp_v0;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/load/func_800BB99C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_800B93BC(? *, ?, s32, ?, s32); // extern
void audio_dma_copy_immediate(s32, s32, s32); // extern
void audio_dma_copy_async(s32, s32, s32, OSMesgQueue *, void *); // extern
extern u32 gSeqLoadedPool;
extern ? gSeqLoadStatus;
extern s32 D_803B706C;

s32 func_800BBA50(s32 arg0, ? arg1, u8 *arg2) {
    s32 sp3C;
    OSMesgQueue *sp34;
    OSMesgQueue *temp_a3;
    s32 temp_a2;
    s32 temp_s0;
    s32 temp_v0;
    u8 *temp_v0_3;
    u8 *temp_v0_4;
    void *temp_v0_2;

    temp_v0_2 = D_803B706C + (arg0 * 8);
    temp_a2 = (temp_v0_2->unk8 + 0xF) & ~0xF;
    temp_s0 = temp_a2;
    sp3C = temp_v0_2->unk4;
    temp_v0 = func_800B93BC(&gSeqLoadedPool, 1, temp_a2, arg1, arg0);
    if (temp_v0 == 0) {
        return 0;
    }
    if (temp_s0 < 0x41) {
        audio_dma_copy_immediate(sp3C, temp_v0, temp_s0);
        temp_v0_3 = arg0 + &gSeqLoadStatus;
        if (*temp_v0_3 != 5) {
            *temp_v0_3 = 2;
        }
    } else {
        audio_dma_copy_immediate(sp3C, temp_v0, 0x40);
        temp_a3 = arg2 + 0xD4;
        sp34 = temp_a3;
        osCreateMesgQueue(temp_a3, arg2 + 0xEC, 1);
        *arg2 = *arg2 | 0x10;
        audio_dma_copy_async(sp3C + 0x40, temp_v0 + 0x40, temp_s0 - 0x40, temp_a3, arg2 + 0xF0);
        temp_v0_4 = arg0 + &gSeqLoadStatus;
        if (*temp_v0_4 != 5) {
            *temp_v0_4 = 1;
        }
    }
    return temp_v0;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/load/func_800BBA50.s")
#endif

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

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 get_bank_or_seq(s32, ?, u8); // extern
s32 func_800BB780(u8, ?); // extern
extern u8 gBankLoadStatus;
extern s32 gAlBankSets;

s32 func_800BBCD0(s32 arg0, s8 *arg1) {
    s32 sp34;
    s32 sp30;
    s32 temp_v0;
    u16 temp_s1;
    u8 temp_s0;
    u8 temp_s2;
    u8 temp_t6;
    s32 phi_s1;
    s32 phi_v1;
    u8 phi_s2;
    s32 phi_v1_2;

    temp_v0 = gAlBankSets;
    temp_s1 = *(temp_v0 + (arg0 * 2));
    temp_s2 = *(temp_s1 + temp_v0);
    phi_s1 = (temp_s1 + 1) & 0xFFFF;
    phi_s2 = temp_s2;
    if (temp_s2 != 0) {
        do {
            temp_s0 = *(phi_s1 + gAlBankSets);
            phi_s1 = (phi_s1 + 1) & 0xFFFF;
            phi_v1 = 0;
            if (((*(&gBankLoadStatus + temp_s0) < 2) ^ 1) == 1) {
                phi_v1 = get_bank_or_seq(1, 2, temp_s0);
            }
            phi_v1_2 = phi_v1;
            if (phi_v1 == 0) {
                phi_v1_2 = func_800BB780(temp_s0, 2);
            }
            temp_t6 = (phi_s2 - 1) & 0xFF;
            phi_s2 = temp_t6;
        } while (temp_t6 != 0);
        sp34 = phi_v1_2;
        sp30 = temp_s0;
    }
    *arg1 = sp30;
    return sp34;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/load/func_800BBCD0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 get_bank_or_seq(?, ?, u32); // extern
s32 func_800BB99C(u32, ?, u32); // extern
s32 func_800BBCD0(u32, ? *, u32); // extern
extern s32 D_800EA5DC;
extern u8 gBankLoadStatus;
extern s32 D_803B706C;
extern u16 D_803B707C;

void func_800BBDDC(u32 arg0, s32 arg1) {
    ? sp23;
    s32 sp1C;
    s32 temp_t6;
    void *temp_v0;
    u32 phi_a2;
    u32 phi_a2_2;
    s32 phi_v1;
    u32 phi_a2_3;

    temp_t6 = arg1 & 0xFF;
    phi_a2 = arg0;
    if (arg0 < D_803B707C) {
        temp_v0 = D_803B706C + (arg0 * 8);
        if (temp_v0->unk8 == 0) {
            phi_a2 = temp_v0->unk4;
        }
        D_800EA5DC = 0x19710515;
        phi_a2_2 = phi_a2;
        if ((temp_t6 & 2) != 0) {
            sp1C = temp_t6;
            arg0 = phi_a2;
            func_800BBCD0(phi_a2, &sp23, phi_a2);
            phi_a2_2 = arg0;
        }
        phi_a2_3 = phi_a2_2;
        if ((arg1 & 0xFF & 1) != 0) {
            phi_v1 = 0;
            if (((*(&gBankLoadStatus + phi_a2_2) < 2) ^ 1) == 1) {
                arg0 = phi_a2_2;
                phi_v1 = get_bank_or_seq(0, 2, phi_a2_2);
                phi_a2_3 = arg0;
            }
            if ((phi_v1 == 0) && (func_800BB99C(phi_a2_3, 2, phi_a2_3) == 0)) {
                D_800EA5DC = 0x76557364;
                return;
            }
            goto block_11;
        }
block_11:
        D_800EA5DC = 0x76557364;
        // Duplicate return node #12. Try simplifying control flow for better match
    }
}
#else
GLOBAL_ASM("asm/non_matchings/audio/load/func_800BBDDC.s")
#endif
extern volatile s32 D_800EA5DC;
//load_sequence_internal
void func_800BBF44(u32 player, u32 seqId, s32 loadAsync);
//load_sequence
void func_800BBEF0(u32 player, u32 seqId, s32 loadAsync) {
    if (!loadAsync) {
        D_800EA5DC = AUDIO_LOCK_LOADING; // gAudioLoadLock
    }
    func_800BBF44(player, seqId, loadAsync);
    if (!loadAsync) {
        D_800EA5DC = AUDIO_LOCK_NOT_LOADING;
    }
}
//GLOBAL_ASM("asm/non_matchings/audio/load/func_800BBEF0.s")

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 get_bank_or_seq(?, ?, s8); // extern
s32 func_800BB864(s32, ?, void *); // extern
s32 func_800BB99C(s8, ?); // extern
s32 func_800BBA50(s8, ?, void *); // extern
s32 get_missing_bank(s8, s32 *, s32 *); // extern
s32 func_800BBCD0(s8, void *, s32 *); // extern
void sequence_player_disable(void *); // extern
void init_sequence_player(s32); // extern
extern u32 gSequencePlayers;
extern s32 D_803B706C;
extern u16 D_803B707C;

void func_800BBF44(s32 arg0, u32 arg1, s32 arg2) {
    s32 sp3C;
    s32 sp2C;
    s32 sp28;
    s32 sp24;
    s32 *temp_a1;
    s32 *temp_a2;
    s32 temp_a0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    void *temp_s0;
    void *temp_v0;
    s8 phi_s1;
    s32 phi_v0;
    s32 phi_v1;

    phi_s1 = arg1;
    if (arg1 < D_803B707C) {
        temp_v0 = D_803B706C + (arg1 * 8);
        if (temp_v0->unk8 == 0) {
            phi_s1 = temp_v0->unk4;
        }
        temp_s0 = (arg0 * 0x148) + &gSequencePlayers;
        sequence_player_disable(temp_s0);
        temp_a1 = &sp28;
        temp_a2 = &sp2C;
        if (arg2 != 0) {
            sp2C = 0;
            sp28 = 0;
            temp_v0_2 = get_missing_bank(phi_s1, temp_a1, temp_a2);
            temp_a0 = temp_v0_2;
            if (sp2C == 1) {
                sp24 = temp_v0_2;
                if (func_800BB864(temp_a0, 2, temp_s0) != 0) {
                    temp_s0->unk5 = sp24;
                    goto block_10;
                }
                // Duplicate return node #17. Try simplifying control flow for better match
                return;
            }
            if (func_800BBCD0(phi_s1, temp_s0 + 5) == 0) {
                return;
            }
            goto block_10;
        }
        if (func_800BBCD0(phi_s1, temp_s0 + 5, temp_a2) != 0) {
block_10:
            temp_s0->unk4 = phi_s1;
            temp_v0_3 = get_bank_or_seq(0, 2, phi_s1);
            phi_v1 = temp_v0_3;
            if (temp_v0_3 == 0) {
                if ((temp_s0->unk0 * 8) >= 0) {
                    if (arg2 != 0) {
                        phi_v0 = func_800BBA50(phi_s1, 2, temp_s0);
                    } else {
                        phi_v0 = func_800BB99C(phi_s1, 2);
                    }
                    phi_v1 = phi_v0;
                    if (phi_v0 != 0) {
                        goto block_16;
                    }
                }
            } else {
block_16:
                sp3C = phi_v1;
                init_sequence_player(arg0);
                temp_s0->unk88 = 0;
                temp_s0->unkE = 0;
                temp_s0->unk0 = temp_s0->unk0 | 0x80;
                temp_s0->unk14 = phi_v1;
                temp_s0->unk70 = phi_v1;
            }
        }
        // Duplicate return node #17. Try simplifying control flow for better match
    }
}
#else
GLOBAL_ASM("asm/non_matchings/audio/load/func_800BBF44.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 0927f17aac197848d4ebdf0c6bbad74b01f0851c
? audio_dma_copy_immediate(? *, s32 *, u32, void **); /* extern */
? func_800B90F0(s32);                               /* extern */
? func_800BA00C();                                  /* extern */
? func_800BB43C(s32 *, ? *);                        /* extern */
? init_sequence_players();                                  /* extern */
? func_800CBF48(u32 *);                             /* extern */
extern s8 D_803B0500;
extern s8 D_803B0501;
extern void *D_803B6738;
extern s32 *D_803B706C;
extern s32 *D_803B7070;
extern s32 *D_803B7074;
extern s32 *gAlBankSets;
extern s16 D_803B707C;
extern void *gCtlEntries;
extern s8 gAudioLibSoundMode;
extern s32 D_803B70B8;
extern s32 D_803B70C0;
extern s32 D_803B70C4;
extern s32 D_803B70D4;
extern ? D_803B70D8;
extern f32 D_803B7178;
extern s32 D_803B717C;
extern void *D_803B7180;
extern ? D_803B718C;
extern ? D_803B7192;
extern ? D_803B71A0;
extern ? D_803B71B0;
extern ? _audio_banksSegmentRomStart;
extern ? _audio_tablesSegmentRomStart;
extern ? _instrument_setsSegmentRomStart;
extern ? _sequencesSegmentRomStart;
extern s32 osTvType;
static s32 D_800EA5D0 = 0x00048C00;                 /* const */
static s32 D_800EA5D4 = 0x00002600;                 /* const */
static u32 D_800EA5D8 = 0;                          /* const */
static s32 D_800EA5DC = 0;                          /* const */

void audio_init(void) {
    s32 sp8C;
    s32 sp60;
    void **sp3C;
    ? *var_v0;
    ? *var_v0_3;
    s16 temp_s3;
    s16 temp_t1;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s32 *temp_v0_4;
    s32 *temp_v0_5;
    s32 temp_t7;
    s32 temp_v0;
    s32 var_s0_2;
    s32 var_s1;
    s32 var_v1;
    s32 var_v1_2;
    u32 *var_v0_2;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_a1_3;
    u32 var_s0;
    void **var_a2;
    void *temp_t3;
    void *temp_t7_2;

    D_800EA5DC = 0;
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
    temp_v0 = osTvType;
    switch (temp_v0) {                              /* irregular */
    case 0:
        D_803B7178 = 20.03042f;
        D_803B717C = 0x00000032;
        break;
    case 2:
        D_803B7178 = 16.546f;
        D_803B717C = 0x0000003C;
        break;
    default:
    case 1:
        D_803B7178 = 16.713f;
        D_803B717C = 0x0000003C;
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
    D_803B70D4 = 0;
    D_803B70D8.unk34 = 0;
    D_803B70D8.unk84 = 0;
    osCreateMesgQueue(&D_803B6720, &D_803B6738, 1);
    osCreateMesgQueue(&gCurrAudioFrameDmaQueue, gCurrAudioFrameDmaMesgBufs, 0x00000040);
    gCurrAudioFrameDmaCount = 0;
    gSampleDmaNumListItems = 0;
    func_800B90F0(D_800EA5D4);
    var_a2 = &D_803B7180;
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
    D_803B0501 = 0;
    D_803B0500 = 1;
    func_800BA00C();
    D_803B706C = &sp60;
    audio_dma_copy_immediate(&_sequencesSegmentRomStart, &sp60, 0x00000010U);
    temp_t1 = D_803B706C->unk2;
    temp_a1 = (((temp_t1 & 0xFFFF) * 8) + 0x13) & ~0xF;
    D_803B707C = temp_t1;
    temp_v0_2 = soundAlloc(&gAudioInitPool, temp_a1);
    D_803B706C = temp_v0_2;
    audio_dma_copy_immediate(&_sequencesSegmentRomStart, temp_v0_2, temp_a1);
    func_800BB43C(D_803B706C, &_sequencesSegmentRomStart);
    D_803B7070 = &sp60;
    audio_dma_copy_immediate(&_audio_banksSegmentRomStart, &sp60, 0x00000010U);
    temp_s3 = D_803B7070->unk2;
    temp_a1_2 = ((temp_s3 * 8) + 0x13) & ~0xF;
    temp_v0_3 = soundAlloc(&gAudioInitPool, temp_a1_2);
    D_803B7070 = temp_v0_3;
    audio_dma_copy_immediate(&_audio_banksSegmentRomStart, temp_v0_3, temp_a1_2);
    func_800BB43C(D_803B7070, &_audio_banksSegmentRomStart);
    gCtlEntries = soundAlloc(&gAudioInitPool, temp_s3 * 0xC);
    var_v1_2 = 0;
    if (temp_s3 > 0) {
        var_s1 = 0;
        var_s0_2 = 0;
        do {
            sp8C = var_v1_2;
            audio_dma_copy_immediate((D_803B7070 + var_s1)->unk4, &sp60, 0x00000010U, &gCtlEntries);
            (gCtlEntries + var_s0_2)->unk1 = (s8) sp60;
            var_v1_2 = sp8C + 1;
            temp_t3 = gCtlEntries + var_s0_2;
            var_s0_2 += 0xC;
            var_s1 += 8;
            temp_t3->unk2 = (s8) sp64;
        } while (var_v1_2 != temp_s3);
    }
    D_803B7074 = &sp60;
    audio_dma_copy_immediate(&_audio_tablesSegmentRomStart, &sp60, 0x00000010U, &gCtlEntries);
    temp_a1_3 = ((D_803B7074->unk2 * 8) + 0x13) & ~0xF;
    temp_v0_4 = soundAlloc(&gAudioInitPool, temp_a1_3);
    D_803B7074 = temp_v0_4;
    audio_dma_copy_immediate(&_audio_tablesSegmentRomStart, temp_v0_4, temp_a1_3);
    func_800BB43C(D_803B7074, &_audio_tablesSegmentRomStart);
    temp_v0_5 = soundAlloc(&gAudioInitPool, 0x00000100U);
    gAlBankSets = temp_v0_5;
    audio_dma_copy_immediate(&_instrument_setsSegmentRomStart, temp_v0_5, 0x00000100U);
    sound_alloc_pool_init(&gUnkPool1.pool, soundAlloc(&gAudioInitPool, D_800EA5D8), D_800EA5D8);
    init_sequence_players();
    D_800EA5DC = 0x76557364;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/load/audio_init.s")
#endif
