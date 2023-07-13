#include <ultra64.h>
#include <macros.h>
#include "audio/synthesis.h"
//#include "audio/heap.h"
//#include "audio/data.h"
#include "audio/load.h"
//#include "audio/seqplayer.h"
#include "audio/internal.h"
//#include "audio/external.h"
#include "PR/abi.h"

#define aSetLoadBufferPair(pkt, c, off)                                                                \
    aSetBuffer(pkt, 0, c + DMEM_ADDR_WET_LEFT_CH, 0, DEFAULT_LEN_1CH - c);                             \
    aLoadBuffer(pkt, VIRTUAL_TO_PHYSICAL2(gSynthesisReverb.ringBuffer.left + (off)));                  \
    aSetBuffer(pkt, 0, c + DMEM_ADDR_WET_RIGHT_CH, 0, DEFAULT_LEN_1CH - c);                            \
    aLoadBuffer(pkt, VIRTUAL_TO_PHYSICAL2(gSynthesisReverb.ringBuffer.right + (off)))

#define aSetSaveBufferPair(pkt, c, d, off)                                                             \
    aSetBuffer(pkt, 0, 0, c + DMEM_ADDR_WET_LEFT_CH, d);                                               \
    aSaveBuffer(pkt, VIRTUAL_TO_PHYSICAL2(gSynthesisReverb.ringBuffer.left +  (off)));                 \
    aSetBuffer(pkt, 0, 0, c + DMEM_ADDR_WET_RIGHT_CH, d);                                              \
    aSaveBuffer(pkt, VIRTUAL_TO_PHYSICAL2(gSynthesisReverb.ringBuffer.right + (off)));

struct VolumeChange {
    u16 sourceLeft;
    u16 sourceRight;
    u16 targetLeft;
    u16 targetRight;
};

u64 *synthesis_do_one_audio_update(s16 *aiBuf, s32 bufLen, u64 *cmd, s32 updateIndex);
u64 *synthesis_process_note(struct Note *note, struct NoteSubEu *noteSubEu, struct NoteSynthesisState *synthesisState, s16 *aiBuf, s32 bufLen, u64 *cmd);
u64 *process_envelope(u64 *cmd, struct NoteSubEu *noteSubEu, struct NoteSynthesisState *synthesisState, s32 nSamples, u16 inBuf, s32 headsetPanSettings, u32 flags);


u64 gGfxSPTaskOutputBuffer[0x3F00];

u32 gGfxSPTaskOutputBufferSize;
u32 padding3[2];
struct SynthesisReverb gSynthesisReverbs[4];
u8 sAudioSynthesisPad[0x10];
s16 gVolume;
s8 gUseReverb;
s8 gNumSynthesisReverbs;
struct NoteSubEu *gNoteSubsEu;

f32 gLeftVolRampings;
//f32 gRightVolRampings[3][1024];
//f32 *gCurrentLeftVolRamping; // Points to any of the three left buffers above
//f32 *gCurrentRightVolRamping; // Points to any of the three right buffers above

/**
 * Given that (almost) all of these are format strings, it is highly likely
 * that they are meant to be used in some sort of printf variant. But I don't
 * care to try and figure out which function gets which string(s)
 * So I've place them all here instead.
**/
char synthesisAudioString0[] = "Terminate-Canceled Channel %d,Phase %d\n";
char synthesisAudioString1[] = "Copy %d\n";
char synthesisAudioString2[] = "%d->%d\n";
char synthesisAudioString3[] = "pitch %x: delaybytes %d : olddelay %d\n";
char synthesisAudioString4[] = "cont %x: delaybytes %d : olddelay %d\n";

// Equivalent functionality as the US/JP version,
// just that the reverb structure is chosen from an array with index
void prepare_reverb_ring_buffer(s32 chunkLen, u32 updateIndex, s32 reverbIndex) {
    struct ReverbRingBufferItem *item;
    struct SynthesisReverb *reverb = &gSynthesisReverbs[reverbIndex];
    s32 srcPos;
    s32 dstPos;
    s32 nSamples;
    s32 excessiveSamples;
    s32 UNUSED pad[3];
    if (reverb->downsampleRate != 1) {
        if (reverb->framesLeftToIgnore == 0) {
            // Now that the RSP has finished, downsample the samples produced two frames ago by skipping
            // samples.
            item = &reverb->items[reverb->curFrame][updateIndex];

            // Touches both left and right since they are adjacent in memory
            osInvalDCache(item->toDownsampleLeft, 0x300);

            for (srcPos = 0, dstPos = 0; dstPos < item->lengthA / 2;
                 srcPos += reverb->downsampleRate, dstPos++) {
                reverb->ringBuffer.left[item->startPos + dstPos] =
                    item->toDownsampleLeft[srcPos];
                reverb->ringBuffer.right[item->startPos + dstPos] =
                    item->toDownsampleRight[srcPos];
            }
            for (dstPos = 0; dstPos < item->lengthB / 2; srcPos += reverb->downsampleRate, dstPos++) {
                reverb->ringBuffer.left[dstPos] = item->toDownsampleLeft[srcPos];
                reverb->ringBuffer.right[dstPos] = item->toDownsampleRight[srcPos];
            }
        }
    }

    item = &reverb->items[reverb->curFrame][updateIndex];
    nSamples = chunkLen / reverb->downsampleRate;
    excessiveSamples = (nSamples + reverb->nextRingBufferPos) - reverb->bufSizePerChannel;
    if (excessiveSamples < 0) {
        // There is space in the ring buffer before it wraps around
        item->lengthA = nSamples * 2;
        item->lengthB = 0;
        item->startPos = (s32) reverb->nextRingBufferPos;
        reverb->nextRingBufferPos += nSamples;
    } else {
        // Ring buffer wrapped around
        item->lengthA = (nSamples - excessiveSamples) * 2;
        item->lengthB = excessiveSamples * 2;
        item->startPos = reverb->nextRingBufferPos;
        reverb->nextRingBufferPos = excessiveSamples;
    }
    // These fields are never read later
    item->numSamplesAfterDownsampling = nSamples;
    item->chunkLen = chunkLen;
}


Acmd *synthesis_load_reverb_ring_buffer(Acmd *acmd, u16 addr, u16 srcOffset, s32 len, s32 reverbIndex) {
    aLoadBuffer(acmd++, VIRTUAL_TO_PHYSICAL2(&gSynthesisReverbs[reverbIndex].ringBuffer.left[srcOffset]), addr, len);
    aLoadBuffer(acmd++, VIRTUAL_TO_PHYSICAL2(&gSynthesisReverbs[reverbIndex].ringBuffer.right[srcOffset]), addr + 0x180, len);
    return acmd;
}

Acmd *synthesis_save_reverb_ring_buffer(Acmd *acmd, u16 addr, u16 destOffset, s32 len, s32 reverbIndex) {
    aSaveBuffer(acmd++, addr, VIRTUAL_TO_PHYSICAL2(&gSynthesisReverbs[reverbIndex].ringBuffer.left[destOffset]), len);
    aSaveBuffer(acmd++, addr + 0x180, VIRTUAL_TO_PHYSICAL2(&gSynthesisReverbs[reverbIndex].ringBuffer.right[destOffset]), len);
    return acmd;
}

void func_800B6FB4(s32 updateIndexStart, s32 noteIndex) {
    s32 i;

    for (i = updateIndexStart + 1; i < gAudioBufferParameters.updatesPerFrame; i++) {
        if (!gNoteSubsEu[gMaxSimultaneousNotes * i + noteIndex].needsInit) {
            gNoteSubsEu[gMaxSimultaneousNotes * i + noteIndex].enabled = FALSE;
        } else {
            break;
        }
    }
}

void synthesis_load_note_subs_eu(s32 updateIndex) {
    struct NoteSubEu *src;
    struct NoteSubEu *dest;
    s32 i;

    for (i = 0; i < gMaxSimultaneousNotes; i++) {
        src = &gNotes[i].noteSubEu;
        dest = &gNoteSubsEu[gMaxSimultaneousNotes * updateIndex + i];
        if (src->enabled) {
            *dest = *src;
            src->needsInit = FALSE;
        } else {
            dest->enabled = FALSE;
        }
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit 0927f17aac197848d4ebdf0c6bbad74b01f0851c
Acmd *func_800B775C(s16 *, s16, Acmd *, s32);       /* extern */
? func_800C1138(s16);                               /* extern */
? prepare_reverb_ring_buffer(s16, s32, s32);        /* extern */

Acmd *func_800B70EC(Acmd *acmd, s32 *writtenCmds, s16 *aiBuf, s32 bufLen) {
    Acmd *temp_v0;
    Acmd *var_fp;
    s16 *var_s7;
    s16 temp_s0;
    s16 temp_v1;
    s16 temp_v1_2;
    s16 var_s4;
    s16 var_s4_2;
    s32 temp_lo;
    s32 var_s1;
    s32 var_s3;
    s32 var_s6;
    s8 temp_v0_2;
    struct SynthesisReverb *var_s0;
    struct SynthesisReverb *var_s0_2;
    u8 temp_t4;
    u8 temp_v0_3;

    var_s4 = gAudioBufferParameters.updatesPerFrame;
    var_s6 = bufLen;
    if (var_s4 > 0) {
        do {
            temp_s0 = var_s4 - 1;
            func_800C1138(temp_s0);
            synthesis_load_note_subs_eu(gAudioBufferParameters.updatesPerFrame - var_s4);
            var_s4 = temp_s0;
        } while (temp_s0 > 0);
    }
    var_s7 = aiBuf;
    acmd->words.w0 = 0x07000000;
    acmd->words.w1 = 0;
    var_s4_2 = gAudioBufferParameters.updatesPerFrame;
    var_fp = acmd + 8;
    if (var_s4_2 > 0) {
        do {
            var_s1 = 0;
            if (var_s4_2 == 1) {
                var_s3 = var_s6;
            } else {
                temp_lo = var_s6 / var_s4_2;
                temp_v1 = gAudioBufferParameters.samplesPerUpdateMax;
                if (temp_lo >= temp_v1) {
                    var_s3 = (s32) temp_v1;
                } else {
                    temp_v1_2 = gAudioBufferParameters.samplesPerUpdateMin;
                    if (temp_v1_2 >= temp_lo) {
                        var_s3 = (s32) temp_v1_2;
                    } else {
                        var_s3 = (s32) gAudioBufferParameters.samplesPerUpdate;
                    }
                }
            }
            if (gNumSynthesisReverbs > 0) {
                var_s0 = gSynthesisReverbs;
                do {
                    if (var_s0->useReverb != 0) {
                        prepare_reverb_ring_buffer((s16) var_s3, gAudioBufferParameters.updatesPerFrame - var_s4_2, var_s1);
                    }
                    var_s1 += 1;
                    var_s0 += 0x108;
                } while (var_s1 < gNumSynthesisReverbs);
            }
            temp_v0 = func_800B775C(var_s7, (s16) var_s3, var_fp, gAudioBufferParameters.updatesPerFrame - var_s4_2);
            var_s4_2 -= 1;
            var_fp = temp_v0;
            var_s6 -= var_s3;
            var_s7 += var_s3 * 4;
        } while (var_s4_2 > 0);
    }
    temp_v0_2 = gNumSynthesisReverbs;
    var_s0_2 = gSynthesisReverbs;
    if (temp_v0_2 > 0) {
        do {
            temp_v0_3 = var_s0_2->framesLeftToIgnore;
            if (temp_v0_3 != 0) {
                var_s0_2->framesLeftToIgnore = temp_v0_3 - 1;
            }
            temp_t4 = var_s0_2->curFrame;
            var_s0_2 += 0x108;
            var_s0_2->unk-105 = (s8) (temp_t4 ^ 1);
        } while ((u32) var_s0_2 < (u32) &gSynthesisReverbs[temp_v0_2]);
    }
    *writtenCmds = (s32) (var_fp - acmd) >> 3;
    return var_fp;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/synthesis/func_800B70EC.s")
#endif

Acmd *synthesis_resample_and_mix_reverb(Acmd *acmd, s32 bufLen, s16 reverbIndex, s16 updateIndex) {
    struct ReverbRingBufferItem *item;
    s16 startPad;
    s16 paddedLengthA;

    item = &gSynthesisReverbs[reverbIndex].items[gSynthesisReverbs[reverbIndex].curFrame][updateIndex];
    aClearBuffer(acmd++, 0x840, 0x300);
    if (gSynthesisReverbs[reverbIndex].downsampleRate == 1) {

        acmd = synthesis_load_reverb_ring_buffer(acmd, 0x840, item->startPos, item->lengthA, reverbIndex);
        if (item->lengthB != 0) {
            acmd = synthesis_load_reverb_ring_buffer(acmd, item->lengthA + 0x840, 0U, item->lengthB, reverbIndex);
        }

        aMix(acmd++, 0x7fff, 0x840, 0x540, 0x300);
        aMix(acmd++, 0x8000 + gSynthesisReverbs[reverbIndex].reverbGain, 0x840, 0x840, 0x300);
    } else {
        startPad = (item->startPos % 8U) * 2;
        paddedLengthA = ALIGN(startPad + item->lengthA, 4);

        acmd = synthesis_load_reverb_ring_buffer(acmd, 0x0020, item->startPos - (startPad / 2), 0x00000180, reverbIndex);
        if (item->lengthB != 0) {
            acmd = synthesis_load_reverb_ring_buffer(acmd, paddedLengthA + 0x20, 0, 0x180 - paddedLengthA, reverbIndex);
        }

        aSetBuffer(acmd++, 0, 0x20 + startPad, 0x840, bufLen * 2);
        aResample(acmd++, gSynthesisReverbs[reverbIndex].resampleFlags, gSynthesisReverbs[reverbIndex].resampleRate, VIRTUAL_TO_PHYSICAL2(gSynthesisReverbs[reverbIndex].resampleStateLeft));
        aSetBuffer(acmd++, 0, 0x1A0 + startPad, 0x9C0, bufLen * 2);
        aResample(acmd++, gSynthesisReverbs[reverbIndex].resampleFlags, gSynthesisReverbs[reverbIndex].resampleRate, VIRTUAL_TO_PHYSICAL2(gSynthesisReverbs[reverbIndex].resampleStateRight));
        aMix(acmd++, 0x7fff, 0x840, 0x540, 0x300);
        aMix(acmd++, 0x8000 + gSynthesisReverbs[reverbIndex].reverbGain, 0x840, 0x840, 0x300);
    }
    return acmd;
}

Acmd *synthesis_load_reverb_samples(Acmd *acmd, s16 reverbIndex, s16 updateIndex) {
    struct ReverbRingBufferItem *item;

    item = &gSynthesisReverbs[reverbIndex].items[gSynthesisReverbs[reverbIndex].curFrame][updateIndex];
    if (gSynthesisReverbs[reverbIndex].useReverb != 0) {
        switch (gSynthesisReverbs[reverbIndex].downsampleRate) {
            case 1:
                acmd = synthesis_save_reverb_ring_buffer(acmd, 0x840, item->startPos, item->lengthA, reverbIndex);
                if (item->lengthB != 0) {
                    acmd = synthesis_save_reverb_ring_buffer(acmd, 0x840 + item->lengthA, 0, item->lengthB, reverbIndex);
                }
                break;
            default:
                aSaveBuffer(acmd++, 0x840, VIRTUAL_TO_PHYSICAL2(gSynthesisReverbs[reverbIndex].items[gSynthesisReverbs[reverbIndex].curFrame][updateIndex].toDownsampleLeft), 0x300);
                gSynthesisReverbs[reverbIndex].resampleFlags = 0;
                break;
        }
    }
    return acmd;
}

#ifdef MIPS_TO_C
//generated by m2c commit 0927f17aac197848d4ebdf0c6bbad74b01f0851c
Acmd *func_800B7C30(u8, struct NoteSub *, struct NoteSynthesisState *, s16 *, s32, Acmd *, s32); /* extern */

Acmd *func_800B775C(s16 *aiBuf, s32 bufLen, Acmd *acmd, s32 updateIndex) {
    ? sp84;
    struct SynthesisReverb *sp64;
    Acmd *temp_s4;
    Acmd *temp_s4_2;
    Acmd *var_s4;
    s16 var_s2;
    s16 var_s3;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_t3_2;
    s32 var_v1;
    s32 var_v1_2;
    s8 *temp_t4;
    s8 *temp_t5;
    s8 *temp_t8;
    s8 temp_t1;
    s8 var_s1;
    s8 var_s1_2;
    struct NoteSub *temp_t0;
    struct NoteSub *temp_t0_2;
    struct NoteSub *temp_v0;
    struct NoteSub *temp_v0_2;
    struct NoteSub *var_v0;
    struct SynthesisReverb *temp_t9;
    u8 *var_s0;
    u8 *var_s0_2;
    u8 temp_a1;
    u8 temp_t3;
    u8 temp_v1;
    u8 temp_v1_2;

    temp_t1 = gNumSynthesisReverbs;
    var_s2 = 0;
    if (temp_t1 == 0) {
        temp_a0 = gMaxSimultaneousNotes;
        var_s1 = 0;
        if (temp_a0 > 0) {
            var_v0 = &gNoteSubsEu[temp_a0 * updateIndex];
            do {
                temp_t4 = &sp84 + var_s2;
                if (((u32) *var_v0 >> 0x1F) != 0) {
                    var_s2 += 1;
                    *temp_t4 = var_s1;
                }
                var_s1 += 1;
                var_v0 += 0x10;
            } while (var_s1 < temp_a0);
            var_s1 = 0;
        }
        var_s3 = 0;
    } else {
        var_s3 = 0;
        if (temp_t1 > 0) {
            temp_a0_2 = gMaxSimultaneousNotes;
            do {
                var_s1_2 = 0;
                if (temp_a0_2 > 0) {
                    var_v1 = temp_a0_2 * updateIndex;
                    do {
                        temp_v0 = &gNoteSubsEu[var_v1];
                        if (((u32) temp_v0->unk0 >> 0x1F) != 0) {
                            temp_t5 = &sp84 + var_s2;
                            if (var_s3 == ((u8) temp_v0->unk1 >> 5)) {
                                var_s2 += 1;
                                *temp_t5 = var_s1_2;
                            }
                        }
                        var_s1_2 += 1;
                        var_v1 += 1;
                    } while (var_s1_2 < temp_a0_2);
                }
                var_s3 += 1;
            } while (var_s3 < temp_t1);
            var_s3 = 0;
        }
        temp_a0_3 = gMaxSimultaneousNotes;
        var_s1 = 0;
        if (temp_a0_3 > 0) {
            var_v1_2 = temp_a0_3 * updateIndex;
            do {
                temp_v0_2 = &gNoteSubsEu[var_v1_2];
                if (((u32) temp_v0_2->unk0 >> 0x1F) != 0) {
                    temp_t8 = &sp84 + var_s2;
                    if ((s32) ((u8) temp_v0_2->unk1 >> 5) >= temp_t1) {
                        var_s2 += 1;
                        *temp_t8 = var_s1;
                    }
                }
                var_s1 += 1;
                var_v1_2 += 1;
            } while (var_s1 < temp_a0_3);
            var_s1 = 0;
        }
    }
    acmd->words.w1 = 0x00000300;
    acmd->words.w0 = 0x02000540;
    var_s4 = acmd + 8;
    if (gNumSynthesisReverbs > 0) {
        do {
            temp_t9 = &gSynthesisReverbs[var_s3];
            sp64 = temp_t9;
            temp_t3 = temp_t9->useReverb;
            gUseReverb = (s8) temp_t3;
            if ((s8) temp_t3 != 0) {
                var_s4 = synthesis_resample_and_mix_reverb(var_s4, bufLen, var_s3, (s16) updateIndex);
            }
            if (var_s1 < var_s2) {
                var_s0 = var_s1 + &sp84;
loop_31:
                temp_v1 = *var_s0;
                temp_t0 = gNoteSubsEu;
                temp_lo = updateIndex * gMaxSimultaneousNotes;
                if (var_s3 == ((u8) (&temp_t0[temp_v1])[temp_lo].unk1 >> 5)) {
                    var_s1 += 1;
                    var_s4 = func_800B7C30(temp_v1, &temp_t0[temp_v1 + temp_lo], &gNotes[temp_v1].synthesisState, aiBuf, bufLen, var_s4, updateIndex);
                    var_s0 += 1;
                    if (var_s1 < var_s2) {
                        goto loop_31;
                    }
                }
            }
            if (sp64->useReverb != 0) {
                var_s4 = synthesis_load_reverb_samples(var_s4, var_s3, (s16) updateIndex);
            }
            var_s3 += 1;
        } while (var_s3 < gNumSynthesisReverbs);
    }
    if (var_s1 < var_s2) {
        var_s0_2 = var_s1 + &sp84;
        do {
            temp_v1_2 = *var_s0_2;
            temp_t0_2 = gNoteSubsEu;
            temp_lo_2 = updateIndex * gMaxSimultaneousNotes;
            temp_a1 = (&temp_t0_2[temp_v1_2])[temp_lo_2].bankId;
            if ((((s32) gBankLoadStatus[temp_a1] < 2) ^ 1) == 1) {
                var_s4 = func_800B7C30(temp_v1_2, &temp_t0_2[temp_v1_2 + temp_lo_2], &gNotes[temp_v1_2].synthesisState, aiBuf, bufLen, var_s4, updateIndex);
            } else {
                gAudioErrorFlags = temp_a1 + (var_s1 << 8) + 0x10000000;
            }
            var_s1 += 1;
            var_s0_2 += 1;
        } while (var_s1 < var_s2);
    }
    var_s4->words.w0 = 0x08000000;
    temp_s4_2 = var_s4 + 8;
    temp_t3_2 = bufLen * 2;
    var_s4->words.w1 = temp_t3_2 & 0xFFFF;
    temp_s4 = temp_s4_2 + 8;
    temp_s4_2->words.w0 = 0x0D000000;
    temp_s4_2->words.w1 = 0x054006C0;
    temp_s4->words.w0 = ((((s32) (temp_t3_2 * 2) >> 4) & 0xFF) << 0x10) | 0x15000000;
    temp_s4->words.w1 = (u32) (aiBuf + 0x80000000);
    return temp_s4 + 8;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/synthesis/func_800B775C.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 0927f17aac197848d4ebdf0c6bbad74b01f0851c
Acmd *load_wave_samples(Acmd *, struct NoteSubEu *, struct NoteSynthesisState *, u32); /* extern */
s32 final_resample(Acmd *, struct NoteSynthesisState *, s32, u16, s32, s32); /* extern */
Acmd *func_800B86A0(s32, struct NoteSubEu *, struct NoteSynthesisState *, s32, s32, s32, s32); /* extern */
Acmd *note_apply_headset_pan_effects(Acmd *, struct NoteSubEu *, struct NoteSynthesisState *, s32, s32, s32); /* extern */
s32 func_800BAD0C(s32, s32, s32, u8 *);             /* extern */
extern ? gUnknownData_800F6290;

Acmd *func_800B7C30(s32 noteIndex, struct NoteSubEu *noteSubEu, struct NoteSynthesisState *synthesisState, s16 *aiBuf, s32 bufLen, Acmd *acmd, s32 updateIndex) {
    void *sp130;
    void *sp12C;
    ? *sp128;
    s32 sp11C;
    s32 sp118;
    s32 sp114;
    u16 sp112;
    s32 spFC;
    s32 spEC;
    u32 spE4;
    s32 spDC;
    s32 spD8;
    s32 spB0;
    s32 spAC;
    s32 spA0;                                       /* compiler-managed */
    u16 sp9E;
    struct Note *sp8C;
    u32 sp50;
    ? *temp_a2_2;
    Acmd *temp_s2;
    Acmd *temp_s2_2;
    Acmd *temp_s2_3;
    Acmd *temp_v0_2;
    Acmd *temp_v0_3;
    Acmd *temp_v0_4;
    Acmd *temp_v0_5;
    Acmd *temp_v0_6;
    Acmd *temp_v0_8;
    Acmd *var_s2;
    Acmd *var_s2_2;
    s16 var_t1;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_t6;
    s32 temp_t8;
    s32 temp_t9_2;
    s32 temp_v0_7;
    s32 temp_v1;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a2;
    s32 var_a3;
    s32 var_fp;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s1;
    s32 var_s3;
    s32 var_s4;
    s32 var_s5;
    s32 var_s6;
    s32 var_t0;
    s32 var_t2;
    s32 var_t3;
    s32 var_t4;
    s32 var_v1;
    s32 var_v1_3;
    u16 temp_t7;
    u16 temp_v0;
    u32 temp_s0;
    u32 temp_t7_3;
    u32 var_t5;
    u32 var_t6;
    u32 var_v1_2;
    void *temp_a1;
    void *temp_t7_2;
    void *temp_t9;

    sp128 = NULL;
    sp8C = &gNotes[noteIndex];
    var_v1 = 0;
    if (((u32) (noteSubEu->unk0 * 2) >> 0x1F) == 1) {
        var_v1 = 1;
        synthesisState->restart = 0;
        synthesisState->samplePosInt = 0;
        synthesisState->samplePosFrac = 0;
        synthesisState->curVolLeft = 0;
        synthesisState->curVolRight = 0;
        synthesisState->prevHeadsetPanRight = 0;
        synthesisState->prevHeadsetPanLeft = 0;
    }
    temp_t7 = noteSubEu->resamplingRateFixedPoint;
    sp112 = temp_t7;
    spB0 = ((u16) noteSubEu->unk0 & 1) + 1;
    temp_v0 = (temp_t7 * bufLen * 2) + synthesisState->samplePosFrac;
    synthesisState->samplePosFrac = temp_v0;
    temp_s0 = temp_v0 >> 0x10;
    var_a0 = noteSubEu->unk0;
    if (var_a0 & 0x20000) {
        temp_v0_2 = load_wave_samples(acmd, noteSubEu, synthesisState, temp_s0);
        temp_a2 = synthesisState->samplePosInt;
        sp9E = (temp_a2 * 2) + 0x1A0;
        synthesisState->samplePosInt = temp_a2 + temp_s0;
        var_a0 = noteSubEu->unk0;
        acmd = temp_v0_2;
    } else {
        temp_t7_2 = *noteSubEu->sound.samples;
        sp130 = temp_t7_2;
        temp_t9 = temp_t7_2->unk8;
        sp12C = temp_t9;
        spDC = temp_t9->unk4;
        spA0 = 0;
        spAC = 0;
        spEC = temp_t7_2->unk4;
        if (spB0 > 0) {
            sp50 = temp_v0 >> 0x10;
            sp114 = var_v1;
            var_s2_2 = acmd;
loop_6:
            temp_a1 = sp130->unkC;
            var_fp = 0;
            var_s4 = 0;
            temp_a2_2 = temp_a1 + 8;
            if (spB0 == 1) {
                var_t5 = sp50;
            } else {
                var_t5 = sp50;
                if (sp50 & 1) {
                    var_t5 = (sp50 & ~1) + (spAC * 2);
                }
            }
            if (sp128 != temp_a2_2) {
                temp_v0_3 = var_s2_2;
                var_s2_2 += 8;
                temp_v0_3->words.w0 = ((temp_a1->unk0 * 0x10 * temp_a1->unk4) & 0xFFFFFF) | 0x0B000000;
                temp_v0_3->words.w1 = (((u32) (noteSubEu->unk0 << 0xB) >> 0x1D) * 2) + temp_a2_2 + 0x80000000;
                var_a0 = noteSubEu->unk0;
                sp128 = temp_a2_2;
            }
            if (((u32) (var_a0 << 0xB) >> 0x1D) != 0) {
                sp128 = &gUnknownData_800F6290;
            }
            if (var_t5 != 0) {
loop_15:
                temp_a2_3 = synthesisState->samplePosInt;
                temp_a0 = var_t5 - var_fp;
                var_s3 = temp_a2_3 & 0xF;
                var_t3 = 0;
                var_t4 = 0;
                temp_v1 = spDC - temp_a2_3;
                if ((var_s3 == 0) && (synthesisState->restart == 0)) {
                    var_s3 = 0x10;
                }
                temp_a1_2 = 0x10 - var_s3;
                var_s5 = temp_a1_2;
                if (temp_a0 < temp_v1) {
                    temp_t9_2 = (s32) ((temp_a0 - temp_a1_2) + 0xF) / 16;
                    var_s1 = temp_t9_2 * 0x10;
                    var_t0 = temp_t9_2;
                    var_s6 = (temp_a1_2 + var_s1) - temp_a0;
                } else {
                    var_s1 = temp_v1 - temp_a1_2;
                    var_s6 = 0;
                    if (var_s1 <= 0) {
                        var_s1 = 0;
                        var_s5 = temp_v1;
                    }
                    var_t0 = (s32) (var_s1 + 0xF) / 16;
                    if (sp12C->unk8 != 0) {
                        var_t4 = 1;
                    } else {
                        var_t3 = 1;
                    }
                }
                var_t2 = 0;
                if (var_t0 != 0) {
                    temp_t6 = (s32) ((temp_a2_3 - var_s3) + 0x10) / 16;
                    if (sp130->unk1 == 0x81) {
                        var_s0 = ((var_t0 * 9) + 0x1F) & ~0xF;
                        var_a0_2 = (temp_t6 * 9) + spEC;
                    } else {
                        spD8 = temp_a0;
                        sp11C = var_t3;
                        sp118 = var_t4;
                        spE4 = var_t5;
                        temp_a1_3 = ((var_t0 * 9) + 0x1F) & ~0xF;
                        var_s0 = temp_a1_3;
                        var_a0_2 = func_800BAD0C((temp_t6 * 9) + spEC, temp_a1_3, sp114, &synthesisState->sampleDmaIndex);
                    }
                    var_t1 = 0x540 - var_s0;
                    var_t2 = var_a0_2 & 0xF;
                    var_s2_2->words.w1 = (var_a0_2 - var_t2) + 0x80000000;
                    var_s2_2->words.w0 = (((var_s0 >> 4) & 0xFF) << 0x10) | 0x14000000 | (var_t1 & 0xFFFF);
                    var_s2_2 += 8;
                } else {
                    var_s1 = 0;
                    var_t1 = 0x540 - (((var_t0 * 9) + 0x1F) & 0xFFF0);
                }
                temp_v0_4 = var_s2_2;
                if (synthesisState->restart != 0) {
                    temp_v0_4->words.w0 = 0x0F000000;
                    var_s2_2 += 8;
                    temp_v0_4->words.w1 = sp130->unk8 + 0x80000010;
                    sp114 = 2;
                    synthesisState->restart = 0;
                }
                if (var_fp == 0) {
                    var_a2 = var_s1 * 2;
                    var_s2_2->words.w1 = (var_a2 & 0xFFFF) | 0x01A00000;
                    var_s2_2->words.w0 = ((var_t1 + var_t2) & 0xFFFF) | 0x08000000;
                    temp_s2 = var_s2_2 + 8;
                    temp_s2->words.w0 = ((sp114 & 0xFF) << 0x10) | 0x01000000;
                    temp_s2->words.w1 = (u32) (synthesisState->synthesisBuffers + 0x80000000);
                    var_s2_2 = temp_s2 + 8;
                    spFC = var_s3 * 2;
                    var_a3 = (var_s1 + var_s5) - var_s6;
                } else {
                    temp_t8 = (var_s4 + 0x1F) & ~0xF;
                    var_s2_2->words.w0 = ((var_t1 + var_t2) & 0xFFFF) | 0x08000000;
                    var_a2 = var_s1 * 2;
                    var_s2_2->words.w1 = ((temp_t8 + 0x1A0) << 0x10) | (var_a2 & 0xFFFF);
                    temp_s2_2 = var_s2_2 + 8;
                    temp_s2_2->words.w0 = ((sp114 & 0xFF) << 0x10) | 0x01000000;
                    temp_s2_2->words.w1 = (u32) (synthesisState->synthesisBuffers + 0x80000000);
                    temp_s2_3 = temp_s2_2 + 8;
                    var_a3 = (var_s1 + var_s5) - var_s6;
                    temp_s2_3->words.w0 = ((temp_t8 + (var_s3 * 2) + 0x1A0) & 0xFFFFFF) | 0x0A000000;
                    temp_s2_3->words.w1 = ((var_s4 + 0x1A0) << 0x10) | ((var_a3 * 2) & 0xFFFF);
                    var_s2_2 = temp_s2_3 + 8;
                }
                var_fp += var_a3;
                if (sp114 != 1) {
                    sp114 = 0;
                    if ((sp114 ^ 2) != 0) {
                        if (var_s4 != 0) {
                            var_s4 += var_a3 * 2;
                        } else {
                            var_s4 = (var_s3 + var_a3) * 2;
                        }
                    } else {
                        var_s4 += var_a3 * 2;
                    }
                } else {
                    spFC = 0x00000020;
                    var_s4 = var_a2 + 0x20;
                    sp114 = 0;
                }
                if (var_t3 != 0) {
                    var_s2_2->words.w0 = ((var_s4 + 0x1A0) & 0xFFFFFF) | 0x02000000;
                    var_s2_2->words.w1 = (var_t5 - var_fp) * 2;
                    var_s2_2 += 8;
                    noteSubEu->unk0 = (s8) ((u8) noteSubEu->unk0 | 0x20);
                    sp8C->unkB0 = (u8) (sp8C->unkB0 | 0x20);
                    sp8C->unkB0 = (u8) (sp8C->unkB0 & 0xFF7F);
                    spE4 = var_t5;
                    func_800B6FB4(updateIndex, noteIndex);
                } else {
                    if (var_t4 != 0) {
                        synthesisState->restart = 1;
                        synthesisState->samplePosInt = sp12C->unk0;
                    } else {
                        synthesisState->samplePosInt += temp_a0;
                    }
                    if (var_fp != var_t5) {
                        goto loop_15;
                    }
                }
            }
            if (spB0 != 1) {
                if (spB0 != 2) {
                    var_a0 = noteSubEu->unk0;
                    var_t6 = (u32) (var_a0 * 4) >> 0x1F;
                    goto block_60;
                }
                if (spAC != 0) {
                    temp_v0_5 = var_s2_2;
                    if (spAC != 1) {
                        var_a0 = noteSubEu->unk0;
                        var_v1_2 = (u32) (var_a0 * 4) >> 0x1F;
                    } else {
                        var_s2_2 += 8;
                        temp_v0_5->words.w0 = ((((s32) var_t5 / 2) + 7) & 0xFFF8) | 0x11000000;
                        temp_v0_5->words.w1 = ((spFC + 0x1A0) << 0x10) | ((spA0 + 0x20) & 0xFFFF);
                        var_a0 = noteSubEu->unk0;
                        var_t6 = (u32) (var_a0 * 4) >> 0x1F;
                        goto block_60;
                    }
                } else {
                    temp_v0_6 = var_s2_2;
                    var_s2_2 += 8;
                    temp_v0_6->words.w0 = ((((s32) var_t5 / 2) + 7) & 0xFFF8) | 0x11000000;
                    temp_v0_6->words.w1 = ((spFC + 0x1A0) << 0x10) | 0x20;
                    spA0 = var_t5;
                    sp9E = 0x0020;
                    var_a0 = noteSubEu->unk0;
                    temp_t7_3 = (u32) (var_a0 * 4) >> 0x1F;
                    var_v1_2 = temp_t7_3;
                    if (temp_t7_3 != 0) {
                        var_s2_2->words.w1 = var_t5 + 0x10;
                        var_s2_2->words.w0 = ((var_t5 + 0x20) & 0xFFFFFF) | 0x02000000;
                        var_a0 = noteSubEu->unk0;
                        var_s2_2 += 8;
                        var_v1_2 = (u32) (var_a0 * 4) >> 0x1F;
                    }
                }
            } else {
                sp9E = spFC + 0x1A0;
                var_a0 = noteSubEu->unk0;
                var_t6 = (u32) (var_a0 * 4) >> 0x1F;
block_60:
                var_v1_2 = var_t6;
            }
            if (var_v1_2 != 0) {

            } else {
                temp_v0_7 = spAC + 1;
                spAC = temp_v0_7;
                if (temp_v0_7 != spB0) {
                    goto loop_6;
                }
            }
            acmd = var_s2_2;
        }
    }
    var_v1_3 = 0;
    if (((u32) (var_a0 * 2) >> 0x1F) == 1) {
        var_v1_3 = 1;
        noteSubEu->unk0 = (s8) ((u8) noteSubEu->unk0 & 0xFFBF);
    }
    temp_a2_4 = bufLen * 2;
    sp114 = var_v1_3;
    temp_a0_2 = final_resample(acmd, synthesisState, temp_a2_4, sp112, (s32) sp9E, var_v1_3);
    if ((noteSubEu->headsetPanRight != 0) || (synthesisState->prevHeadsetPanRight != 0)) {
        var_s0_2 = 1;
    } else if ((noteSubEu->headsetPanLeft != 0) || (var_s0_2 = 0, (synthesisState->prevHeadsetPanLeft != 0))) {
        var_s0_2 = 2;
    }
    temp_v0_8 = func_800B86A0(temp_a0_2, noteSubEu, synthesisState, bufLen, 0, var_s0_2, sp114);
    var_s2 = temp_v0_8;
    if ((u8) noteSubEu->unk0 & 1) {
        var_s2 = note_apply_headset_pan_effects(temp_v0_8, noteSubEu, synthesisState, temp_a2_4, sp114, var_s0_2);
    }
    return var_s2;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/synthesis/func_800B7C30.s")
#endif

Acmd *load_wave_samples(Acmd *acmd, struct NoteSubEu *noteSubEu, struct NoteSynthesisState *synthesisState, s32 nSamplesToLoad) {
    s32 a3;
    s32 repeats;
    aLoadBuffer(acmd++, VIRTUAL_TO_PHYSICAL2(noteSubEu->sound.samples), 0x1A0, 128);

    synthesisState->samplePosInt &= 0x3f;
    a3 = 64 - synthesisState->samplePosInt;
    if (a3 < nSamplesToLoad) {
        repeats = (nSamplesToLoad - a3 + 63) / 64;
        if (repeats != 0) {
            aDMEMMove2(acmd++, repeats, 0x1A0, 0x1A0 + 128, 128);
        }
    }
    return acmd;
}

Acmd *final_resample(Acmd *acmd, struct NoteSynthesisState *synthesisState, s32 count, u16 pitch, u16 dmemIn, u32 flags) {
    aSetBuffer(acmd++, /*flags*/ 0, dmemIn, /*dmemout*/ 0, count);
    aResample(acmd++, flags, pitch, VIRTUAL_TO_PHYSICAL2(synthesisState->synthesisBuffers->finalResampleState));
    return acmd;
}

#ifdef MIPS_TO_C
//generated by m2c commit 0927f17aac197848d4ebdf0c6bbad74b01f0851c
Acmd *func_800B86A0(Acmd *acmd, struct NoteSubEu *note, struct NoteSynthesisState *synthesisState, s32 nSamples, u16 inBuf, s32 headsetPanSettings, u32 flags) {
    s32 sp8;
    s32 sp4;
    s32 sp0;
    Acmd *temp_a0;
    Acmd *temp_a0_2;
    Acmd *temp_a0_3;
    Acmd *var_a0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_t5;
    u16 temp_v0;
    u16 temp_v1;

    temp_v0 = (u16) synthesisState->curVolLeft;
    temp_t5 = nSamples >> 3;
    temp_v1 = (u16) synthesisState->curVolRight;
    sp8 = (s32) (((note->targetVolLeft * 0x10) & 0xFFFF) - temp_v0) / temp_t5;
    sp0 = (s32) (((note->targetVolRight * 0x10) & 0xFFFF) - temp_v1) / temp_t5;
    sp4 = (s32) temp_v1;
    synthesisState->curVolLeft = (temp_v0 + (unkspA * temp_t5)) & 0xFFFF;
    synthesisState->curVolRight = (temp_v1 + (unksp2 * temp_t5)) & 0xFFFF;
    if (note->unk0 & 1) {
        acmd->words.w1 = 0x00000180;
        acmd->words.w0 = 0x02000200;
        temp_a0 = acmd + 8;
        temp_a0->words.w0 = (note->reverbVol << 0x10) | 0x12000000 | ((temp_v0 & 0xFF) << 8) | (temp_v1 & 0xFF);
        temp_a0->words.w1 = (unkspA << 0x10) | (unksp2 & 0xFFFF);
        temp_a0_2 = temp_a0 + 8;
        temp_a0_2->words.w0 = 0x16000000;
        temp_a0_2->words.w1 = (temp_v0 << 0x10) | (temp_v1 & 0xFFFF);
        var_a0 = temp_a0_2 + 8;
        if (headsetPanSettings != 1) {
            if (headsetPanSettings != 2) {
                temp_a2 = (s32) note->unk0;
                var_a0->words.w0 = ((((s32) inBuf >> 4) & 0xFF) << 0x10) | 0x13000000 | ((nSamples & 0xFF) << 8) | ((((u32) (temp_a2 * 0x10) >> 0x1F) & 1) * 2) | (((u32) (temp_a2 << 5) >> 0x1F) & 1);
                var_a0->words.w1 = 0x546C849C;
            } else {
                temp_a2_2 = (s32) note->unk0;
                var_a0->words.w0 = ((((s32) inBuf >> 4) & 0xFF) << 0x10) | 0x13000000 | ((nSamples & 0xFF) << 8) | ((((u32) (temp_a2_2 * 0x10) >> 0x1F) & 1) * 2) | (((u32) (temp_a2_2 << 5) >> 0x1F) & 1);
                var_a0->words.w1 = 0x5420849C;
            }
        } else {
            temp_a2_3 = (s32) note->unk0;
            var_a0->words.w0 = ((((s32) inBuf >> 4) & 0xFF) << 0x10) | 0x13000000 | ((nSamples & 0xFF) << 8) | ((((u32) (temp_a2_3 * 0x10) >> 0x1F) & 1) * 2) | (((u32) (temp_a2_3 << 5) >> 0x1F) & 1);
            var_a0->words.w1 = 0x206C849C;
        }
    } else {
        temp_a0_3 = acmd + 8;
        acmd->words.w0 = (note->reverbVol << 0x10) | 0x12000000 | ((temp_v0 & 0xFF) << 8) | (temp_v1 & 0xFF);
        acmd->words.w1 = (unkspA << 0x10) | (unksp2 & 0xFFFF);
        temp_a0_3->words.w0 = 0x16000000;
        temp_a0_3->words.w1 = (temp_v0 << 0x10) | (temp_v1 & 0xFFFF);
        temp_a2_4 = (s32) note->unk0;
        var_a0 = temp_a0_3 + 8;
        var_a0->words.w0 = ((((s32) inBuf >> 4) & 0xFF) << 0x10) | 0x13000000 | ((nSamples & 0xFF) << 8) | ((((u32) (temp_a2_4 * 0x10) >> 0x1F) & 1) * 2) | (((u32) (temp_a2_4 << 5) >> 0x1F) & 1);
        var_a0->words.w1 = 0x546C849C;
    }
    return var_a0 + 8;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/synthesis/func_800B86A0.s")
#endif

Acmd *note_apply_headset_pan_effects(Acmd *acmd, struct NoteSubEu *noteSubEu, struct NoteSynthesisState *note, s32 bufLen, s32 flags, s32 leftRight) {
    u16 dest;
    u16 pitch;
    u8 prevPanShift;
    u8 panShift;
    UNUSED u8 unkDebug;

    switch (leftRight) {
        case 1:
            dest = 0x540;
            panShift = noteSubEu->headsetPanRight;
            note->prevHeadsetPanLeft = 0;
            prevPanShift = note->prevHeadsetPanRight;
            note->prevHeadsetPanRight = panShift;
            break;
        case 2:
            dest = 0x6C0;
            panShift = noteSubEu->headsetPanLeft;
            note->prevHeadsetPanRight = 0;

            prevPanShift = note->prevHeadsetPanLeft;
            note->prevHeadsetPanLeft = panShift;
            break;
        default:
            return acmd;
    }

    if (flags != 1) { // A_INIT?
        // Slightly adjust the sample rate in order to fit a change in pan shift
        if (prevPanShift == 0) {
            // Kind of a hack that moves the first samples into the resample state
            aDMEMMove(acmd++, 0x0200, 0x0000, 8);
            aClearBuffer(acmd++, 8, 8); // Set pitch accumulator to 0 in the resample state
            aDMEMMove(acmd++, 0x0200, 0x0000 + 0x10,
                      0x10); // No idea, result seems to be overwritten later

            aSaveBuffer(acmd++, 0x0000, VIRTUAL_TO_PHYSICAL2(note->synthesisBuffers->panResampleState), sizeof(note->synthesisBuffers->panResampleState));

            pitch = (bufLen << 0xf) / (bufLen + panShift - prevPanShift + 8);
            if (pitch) {}
            aSetBuffer(acmd++, 0, 0x0200 + 8, 0x0000, panShift + bufLen - prevPanShift);
            aResample(acmd++, 0, pitch, VIRTUAL_TO_PHYSICAL2(note->synthesisBuffers->panResampleState));
        } else {
            if (panShift == 0) {
                pitch = (bufLen << 0xf) / (bufLen - prevPanShift - 4);
            } else {
                pitch = (bufLen << 0xf) / (bufLen + panShift - prevPanShift);
            }

            if (1) {}

            aSetBuffer(acmd++, 0, 0x0200, 0x0000, bufLen + panShift - prevPanShift);
            aResample(acmd++, 0, pitch, VIRTUAL_TO_PHYSICAL2(note->synthesisBuffers->panResampleState));
        }

        if (prevPanShift != 0) {
            aLoadBuffer(acmd++, VIRTUAL_TO_PHYSICAL2(note->synthesisBuffers->panSamplesBuffer), 0x0200, prevPanShift);
            aDMEMMove(acmd++, 0x0000, 0x0200 + prevPanShift, panShift + bufLen - prevPanShift);
        } else {
            aDMEMMove(acmd++, 0x0000, 0x0200, panShift + bufLen - prevPanShift);
        }
    } else {
        // Just shift right
        aDMEMMove(acmd++, 0x0200, 0x0000, bufLen);
        aDMEMMove(acmd++, 0x0000, 0x0200 + panShift, bufLen);
        aClearBuffer(acmd++, 0x0200, panShift);
    }

    if (panShift) {
        // Save excessive samples for next iteration
        aSaveBuffer(acmd++, 0x0200 + bufLen, VIRTUAL_TO_PHYSICAL2(note->synthesisBuffers->panSamplesBuffer), panShift);
    }

    aMix(acmd++, /*gain*/ 0x7FFF, /*in*/ 0x0200, /*out*/ dest, ALIGN(bufLen, 5));

    return acmd;
}
