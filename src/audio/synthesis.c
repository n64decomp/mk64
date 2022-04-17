#include <ultra64.h>
#include <macros.h>
#include "synthesis.h"
//#include "heap.h"
//#include "data.h"
//#include "load.h"
//#include "seqplayer.h"
#include "internal.h"
//#include "external.h"


#define DMEM_ADDR_TEMP 0x0
#define DMEM_ADDR_RESAMPLED 0x20
#define DMEM_ADDR_RESAMPLED2 0x160
#define DMEM_ADDR_UNCOMPRESSED_NOTE 0x180
#define DMEM_ADDR_NOTE_PAN_TEMP 0x200
#define DMEM_ADDR_STEREO_STRONG_TEMP_DRY 0x200
#define DMEM_ADDR_STEREO_STRONG_TEMP_WET 0x340
#define DMEM_ADDR_COMPRESSED_ADPCM_DATA 0x3f0
#define DMEM_ADDR_LEFT_CH 0x4c0
#define DMEM_ADDR_RIGHT_CH 0x600
#define DMEM_ADDR_WET_LEFT_CH 0x740
#define DMEM_ADDR_WET_RIGHT_CH 0x880

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

#define ALIGN(val, amnt) (((val) + (1 << amnt) - 1) & ~((1 << amnt) - 1))

struct VolumeChange {
    u16 sourceLeft;
    u16 sourceRight;
    u16 targetLeft;
    u16 targetRight;
};

u64 *synthesis_do_one_audio_update(s16 *aiBuf, s32 bufLen, u64 *cmd, s32 updateIndex);
u64 *synthesis_process_note(struct Note *note, struct NoteSubEu *noteSubEu, struct NoteSynthesisState *synthesisState, s16 *aiBuf, s32 bufLen, u64 *cmd);
u64 *load_wave_samples(u64 *cmd, struct NoteSubEu *noteSubEu, struct NoteSynthesisState *synthesisState, s32 nSamplesToLoad);
u64 *final_resample(u64 *cmd, struct NoteSynthesisState *synthesisState, s32 count, u16 pitch, u16 dmemIn, u32 flags);
u64 *process_envelope(u64 *cmd, struct NoteSubEu *noteSubEu, struct NoteSynthesisState *synthesisState, s32 nSamples, u16 inBuf, s32 headsetPanSettings, u32 flags);
u64 *note_apply_headset_pan_effects(u64 *cmd, struct NoteSubEu *noteSubEu, struct NoteSynthesisState *note, s32 bufLen, s32 flags, s32 leftRight);


u64 gGfxSPTaskOutputBuffer[0x3F00];

u32 gGfxSPTaskOutputBufferSize;
u32 padding3[2];
struct SynthesisReverb gSynthesisReverbs[4];
u8 sAudioSynthesisPad[0x10];
s16 gVolume;
s8 gUseReverb;
s8 gNumSynthesisReverbs;
struct NoteSubEu *gNoteSubsEu;

extern struct Note *gAudioBufferParameters;
extern s32 gMaxSimultaneousNotes;

f32 gLeftVolRampings;
//f32 gRightVolRampings[3][1024];
//f32 *gCurrentLeftVolRamping; // Points to any of the three left buffers above
//f32 *gCurrentRightVolRamping; // Points to any of the three right buffers above

u8 audioString1[] = "pitch %x: delaybytes %d : olddelay %d\n";
u8 audioString2[] = "cont %x: delaybytes %d : olddelay %d\n";

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


#ifdef NON_MATCHING
/* sm64
u64 *synthesis_load_reverb_ring_buffer(u64 *cmd, u16 addr, u16 srcOffset, s32 len, s32 reverbIndex) {
    aSetBuffer(cmd++, 0, addr, 0, len&0xFF<<0x10);
    aLoadBuffer(cmd++, VIRTUAL_TO_PHYSICAL2(&gSynthesisReverbs[reverbIndex].ringBuffer.left[srcOffset]));

    aSetBuffer(cmd++, 0, addr + DEFAULT_LEN_1CH, 0, len&0xFF<<0x10);
    aLoadBuffer(cmd++, VIRTUAL_TO_PHYSICAL2(&gSynthesisReverbs[reverbIndex].ringBuffer.right[srcOffset]));

    return cmd;
}
    void *temp_t1;
    void *temp_t3;

    temp_t0 = (((arg3 >> 4) & 0xFF) << 0x10) | 0x14000000;
    arg0->unk0 = (s32) (temp_t0 | (arg1 & 0xFFFF));
    temp_t1 = (arg4 * 0x108) + &gSynthesisReverbs;
    temp_t2 = (arg2 & 0xFFFF) * 2;
    arg0->unk4 = (s32) (temp_t1->unk18 + temp_t2 + 0x80000000);
    temp_t3 = arg0 + 8;
    temp_t3->unk0 = (s32) (temp_t0 | ((arg1 + 0x180) & 0xFFFF));
    temp_t3->unk4 = (s32) (temp_t1->unk1C + temp_t2 + 0x80000000);
    return temp_t3 + 8;
}
*/
#else
GLOBAL_ASM("asm/non_matchings/audio/synthesis/synthesis_load_reverb_ring_buffer.s")
#endif

#ifdef NON_MATCHING
/* sm64
void synthesis_load_note_subs_eu(s32 updateIndex) {
    struct NoteSubEu *src;
    struct NoteSubEu *dest;
    s32 i;

    for (i = 0; i < gMaxSimultaneousNotes; i++) {
        src = &gAudioBufferParameters[i].noteSubEu;
        dest = &gNoteSubsEu[gMaxSimultaneousNotes * updateIndex + i];
        if (src->enabled) {
            *dest = *src;
            src->needsInit = FALSE;
        } else {
            dest->enabled = FALSE;
        }
    }
}
// mk64 m2c (with minor edits) struct access appears quite different.
void func_800B6FB4(s32 arg0, s32 arg1) {
    s32 *dest;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 phi_v0;

    temp_v0 = arg0 + 1;
    if (i = 0; temp_v0 < (s32) gAudioBufferParameters.unkC; i++) {
        phi_v0 = temp_v0;

        for(i = 0; temp_v0_2 < (s32) gAudioBufferParameters.unkC; i++) {
            dest = &gNoteSubsEu[gMaxSimultaneousNotes * phi_v0 + (arg1 * 0x10)];
            if ((*dest * 2) >= 0) {
                temp_v0_2 = phi_v0 + 1;
                *dest = (s8) ((u8) *dest & 0xFF7F);
                phi_v0 = temp_v0_2;

            }
        }
    }
}
*/
#else
GLOBAL_ASM("asm/non_matchings/audio/synthesis/func_800B6F1C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
Tried to use struct NoteSubEu before it is defined.
extern ? gAudioBufferParameters;
extern s32 gMaxSimultaneousNotes;
extern ? gNoteSubsEu;

void synthesis_load_note_subs_eu(s32 arg0, s32 arg1) {
    s32 *temp_a0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 phi_v0;

    temp_v0 = arg0 + 1;
    phi_v0 = temp_v0;
    if (temp_v0 < gAudioBufferParameters.unkC) {
        // Error: Tried to use struct NoteSubEu before it is defined.
        // At instruction: lui $a1, %hi(gNoteSubsEu)
loop_2:
        temp_a0 = *arg1 + (gMaxSimultaneousNotes * phi_v0 * 0x10) + (arg1 * 0x10);
        if ((*temp_a0 * 2) >= 0) {
            temp_v0_2 = phi_v0 + 1;
            *temp_a0 = *temp_a0 & 0xFF7F;
            phi_v0 = temp_v0_2;
            if (temp_v0_2 < gAudioBufferParameters.unkC) {
                goto loop_2;
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/audio/synthesis/synthesis_load_note_subs_eu.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
Tried to use struct NoteSubEu before it is defined.
extern s32 gMaxSimultaneousNotes;
extern ? gNoteSubsEu;

void func_800B7034(s32 arg0) {
    s32 temp_v0;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a2;
    s32 phi_a1;
    s32 phi_v0;

    phi_a1 = 0;
    phi_v0 = 0;
    if (gMaxSimultaneousNotes > 0) {
        // Error: Tried to use struct NoteSubEu before it is defined.
        // At instruction: lui $t2, %hi(gNoteSubsEu)
        do {
            temp_a0 = phi_a1 + *MIPS2C_ERROR(Read from unset register $t1);
            temp_a0_2 = temp_a0 + 0xB0;
            temp_a2 = (((gMaxSimultaneousNotes * arg0) + phi_v0) * 0x10) + *MIPS2C_ERROR(Read from unset register $t2);
            if ((temp_a0->unkB0 >> 0x1F) != 0) {
                temp_a2->unk0 = temp_a0_2->unk0;
                temp_a2->unk4 = temp_a0_2->unk4;
                temp_a2->unk8 = temp_a0_2->unk8;
                temp_a2->unkC = temp_a0_2->unkC;
                temp_a0_2->unk0 = temp_a0_2->unk0 & 0xFFBF;
            } else {
                temp_a2->unk0 = temp_a2->unk0 & 0xFF7F;
            }
            temp_v0 = phi_v0 + 1;
            phi_a1 += 0xC0;
            phi_v0 = temp_v0;
        } while (temp_v0 < gMaxSimultaneousNotes);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/audio/synthesis/func_800B7034.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800B7034(s32); // extern
void *func_800B775C(s32, s32, void *, s32); // extern
? func_800C1138(s32); // extern
? prepare_reverb_ring_buffer(s32, s32, s32); // extern
extern ? gAudioBufferParameters;

void *func_800B70EC(void *arg0, s32 *arg1, s32 arg2, s32 arg3) {
    s16 temp_s2;
    s16 temp_s4;
    s16 temp_s4_2;
    s16 temp_v1;
    s16 temp_v1_2;
    s32 temp_lo;
    s32 temp_s0;
    s32 temp_s1;
    s32 temp_s4_3;
    s8 temp_v0;
    s8 temp_v0_3;
    struct SynthesisReverb *temp_s0_2;
    u8 temp_v0_4;
    void *temp_fp;
    void *temp_v0_2;
    s16 phi_s4;
    s32 phi_s4_2;
    s32 phi_s6;
    struct SynthesisReverb *phi_s0;
    s32 phi_s3;
    s16 phi_s2;
    s32 phi_s1;
    s32 phi_v0;
    s32 phi_s7;
    void *phi_fp;
    s16 phi_s2_2;
    struct SynthesisReverb *phi_s0_2;
    void *phi_fp_2;
    s16 phi_s2_3;

    temp_s4 = gAudioBufferParameters.unkC;
    phi_s4 = temp_s4;
    phi_s6 = arg3;
    if (temp_s4 > 0) {
        do {
            temp_s0 = phi_s4 - 1;
            func_800C1138(temp_s0);
            func_800B7034(gAudioBufferParameters.unkC - phi_s4);
            phi_s4 = temp_s0;
        } while (temp_s0 > 0);
    }
    arg0->unk0 = 0x7000000;
    arg0->unk4 = 0;
    temp_s4_2 = gAudioBufferParameters.unkC;
    temp_fp = arg0 + 8;
    phi_s4_2 = temp_s4_2;
    phi_s7 = arg2;
    phi_fp = temp_fp;
    phi_fp_2 = temp_fp;
    if (temp_s4_2 > 0) {
        do {
            temp_s2 = gAudioBufferParameters.unkC;
            phi_s2 = temp_s2;
            phi_s1 = 0;
            phi_s2_2 = temp_s2;
            if (phi_s4_2 == 1) {
                phi_s3 = phi_s6;
            } else {
                temp_lo = phi_s6 / phi_s4_2;
                temp_v1 = gAudioBufferParameters.unk10;
                if (temp_lo >= temp_v1) {
                    phi_s3 = temp_v1;
                } else {
                    temp_v1_2 = gAudioBufferParameters.unk12;
                    if (temp_v1_2 >= temp_lo) {
                        phi_s3 = temp_v1_2;
                    } else {
                        phi_s3 = gAudioBufferParameters.unkE;
                    }
                }
            }
            temp_v0 = gNumSynthesisReverbs;
            phi_v0 = temp_v0;
            if (temp_v0 > 0) {
                phi_s0 = gSynthesisReverbs;
                do {
                    phi_s2_3 = phi_s2;
                    if (phi_s0->useReverb != 0) {
                        prepare_reverb_ring_buffer(phi_s3, phi_s2 - phi_s4_2, phi_s1);
                        phi_v0 = gNumSynthesisReverbs;
                        phi_s2_3 = gAudioBufferParameters.unkC;
                    }
                    temp_s1 = phi_s1 + 1;
                    phi_s0 += 0x108;
                    phi_s2 = phi_s2_3;
                    phi_s1 = temp_s1;
                    phi_s2_2 = phi_s2_3;
                } while (temp_s1 < phi_v0);
            }
            temp_v0_2 = func_800B775C(phi_s7, phi_s3, phi_fp, phi_s2_2 - phi_s4_2);
            temp_s4_3 = phi_s4_2 - 1;
            phi_s4_2 = temp_s4_3;
            phi_s6 -= phi_s3;
            phi_s7 += phi_s3 * 4;
            phi_fp = temp_v0_2;
            phi_fp_2 = temp_v0_2;
        } while (temp_s4_3 > 0);
    }
    temp_v0_3 = gNumSynthesisReverbs;
    phi_s0_2 = gSynthesisReverbs;
    if (temp_v0_3 > 0) {
        do {
            temp_v0_4 = phi_s0_2->framesLeftToIgnore;
            if (temp_v0_4 != 0) {
                phi_s0_2->framesLeftToIgnore = temp_v0_4 - 1;
            }
            temp_s0_2 = phi_s0_2 + 0x108;
            temp_s0_2->unk-105 = phi_s0_2->curFrame ^ 1;
            phi_s0_2 = temp_s0_2;
        } while (temp_s0_2 < &gSynthesisReverbs[temp_v0_3]);
    }
    *arg1 = (phi_fp_2 - arg0) >> 3;
    return phi_fp_2;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/synthesis/func_800B70EC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void *synthesis_load_reverb_ring_buffer(void *, s32, u16, s16, s32); // extern

s32 func_800B7304(void *arg0, s32 arg1, s16 arg2, s16 arg3) {
    void *sp54;
    s16 sp52;
    s16 sp50;
    struct SynthesisReverb *sp28;
    s16 temp_a3;
    s16 temp_t5;
    s32 temp_a1;
    s32 temp_t7;
    s32 temp_t8;
    s32 temp_v0_2;
    struct SynthesisReverb *temp_v1;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s0_3;
    void *temp_s0_4;
    void *temp_s0_5;
    void *temp_s0_6;
    void *temp_s0_7;
    void *temp_t0;
    void *temp_v0;
    void *temp_v0_3;
    void *phi_v0;
    void *phi_v0_2;
    void *phi_s0;

    temp_v1 = &gSynthesisReverbs[arg2];
    arg0->unk4 = 0x300;
    arg0->unk0 = 0x2000840;
    temp_t0 = temp_v1 + (temp_v1->curFrame * 0x64) + (arg3 * 0x14) + 0x30;
    temp_s0 = arg0 + 8;
    if (temp_v1->downsampleRate == 1) {
        sp54 = temp_t0;
        sp28 = temp_v1;
        temp_v0 = synthesis_load_reverb_ring_buffer(temp_s0, 0x840, temp_t0->unkE, temp_t0->unk10, arg2);
        temp_a3 = temp_t0->unk12;
        temp_a0 = temp_v0;
        phi_v0 = temp_v0;
        if (temp_a3 != 0) {
            sp28 = temp_v1;
            phi_v0 = synthesis_load_reverb_ring_buffer(temp_a0, (temp_t0->unk10 + 0x840) & 0xFFFF, 0, temp_a3, arg2);
        }
        phi_v0->unk0 = 0xC307FFF;
        phi_v0->unk4 = 0x8400540;
        temp_s0_2 = phi_v0 + 8;
        temp_s0_2->unk0 = ((gSynthesisReverbs[arg2].reverbGain + 0x8000) & 0xFFFF) | 0xC300000;
        temp_s0_2->unk4 = 0x8400840;
        phi_s0 = temp_s0_2;
    } else {
        temp_v0_2 = temp_t0->unkC;
        temp_t7 = (temp_v0_2 & 7) << 0x11;
        temp_t8 = temp_t7 >> 0x10;
        temp_t5 = (temp_t8 + temp_t0->unk10 + 0xF) & 0xFFF0;
        sp50 = temp_t5;
        sp52 = temp_t8;
        sp54 = temp_t0;
        sp28 = temp_v1;
        temp_v0_3 = synthesis_load_reverb_ring_buffer(temp_s0, 0x20, (temp_v0_2 - (temp_t8 / 2)) & 0xFFFF, 0x180, arg2);
        temp_a0_2 = temp_v0_3;
        phi_v0_2 = temp_v0_3;
        if (temp_t0->unk12 != 0) {
            sp28 = temp_v1;
            sp52 = temp_t8;
            phi_v0_2 = synthesis_load_reverb_ring_buffer(temp_a0_2, (temp_t5 + 0x20) & 0xFFFF, 0, 0x180 - temp_t5, arg2);
        }
        phi_v0_2->unk0 = (((temp_t7 >> 0x10) + 0x20) & 0xFFFF) | 0x8000000;
        temp_a1 = (arg1 * 2) & 0xFFFF;
        phi_v0_2->unk4 = temp_a1 | 0x8400000;
        temp_s0_3 = phi_v0_2 + 8;
        temp_s0_3->unk0 = gSynthesisReverbs[arg2].resampleRate | 0x5000000 | (gSynthesisReverbs[arg2].resampleFlags << 0x10);
        temp_s0_4 = temp_s0_3 + 8;
        temp_s0_3->unk4 = gSynthesisReverbs[arg2].resampleStateLeft + 0x80000000;
        temp_s0_4->unk0 = (((temp_t7 >> 0x10) + 0x1A0) & 0xFFFF) | 0x8000000;
        temp_s0_4->unk4 = temp_a1 | 0x9C00000;
        temp_s0_5 = temp_s0_4 + 8;
        temp_s0_5->unk0 = gSynthesisReverbs[arg2].resampleRate | 0x5000000 | (gSynthesisReverbs[arg2].resampleFlags << 0x10);
        temp_s0_6 = temp_s0_5 + 8;
        temp_s0_5->unk4 = gSynthesisReverbs[arg2].resampleStateRight + 0x80000000;
        temp_s0_6->unk4 = 0x8400540;
        temp_s0_6->unk0 = 0xC307FFF;
        temp_s0_7 = temp_s0_6 + 8;
        temp_s0_7->unk0 = ((gSynthesisReverbs[arg2].reverbGain + 0x8000) & 0xFFFF) | 0xC300000;
        temp_s0_7->unk4 = 0x8400840;
        phi_s0 = temp_s0_7;
    }
    return phi_s0 + 8;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/synthesis/func_800B7304.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void *func_800B6F1C(void *, u16, s16, s32, s32); // extern

void *func_800B7630(void *arg0, s16 arg1, s16 arg2) {
    void *sp24;
    s16 temp_a3_2;
    s32 temp_a3;
    struct SynthesisReverb *temp_v0;
    void *temp_v0_2;
    void *temp_v1;
    void *phi_a0;

    temp_v0 = &gSynthesisReverbs[arg1];
    temp_a3 = arg2 * 0x14;
    temp_v1 = temp_v0 + (temp_v0->curFrame * 0x64) + temp_a3 + 0x30;
    phi_a0 = arg0;
    if (temp_v0->useReverb != 0) {
        if (temp_v0->downsampleRate == 1) {
            sp24 = temp_v1;
            temp_v0_2 = func_800B6F1C(0x840, temp_v1->unkE, temp_v1->unk10, arg1);
            temp_a3_2 = temp_v1->unk12;
            phi_a0 = temp_v0_2;
            if (temp_a3_2 != 0) {
                phi_a0 = func_800B6F1C(temp_v0_2, (temp_v1->unk10 + 0x840) & 0xFFFF, 0, temp_a3_2, arg1);
            }
        } else {
            arg0->unk0 = 0x15300840;
            arg0->unk4 = (temp_v0 + (temp_v0->curFrame * 0x64) + temp_a3)->unk34 + 0x80000000;
            temp_v0->resampleFlags = 0;
            phi_a0 = arg0 + 8;
        }
    }
    return phi_a0;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/synthesis/func_800B7630.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
Tried to use struct NoteSubEu before it is defined.
Tried to use struct NoteSubEu before it is defined.
Tried to use struct NoteSubEu before it is defined.
Tried to use struct NoteSubEu before it is defined.
Tried to use struct NoteSubEu before it is defined.
void *func_800B7304(void *, s32, s16, s16); // extern
void *func_800B7630(void *, s16, s16); // extern
void *func_800B7C30(u8, s32, s32, s32, s32, void *, s32); // extern
extern ? D_803B03C0;
extern s32 D_803B1508;
extern s32 gMaxSimultaneousNotes;
extern s32 D_803B7198;
extern ? gNoteSubsEu;
extern u8 gUseReverb;

void *func_800B775C(s32 arg0, s32 arg1, void *arg2, s16 arg3) {
    ? sp84;
    struct SynthesisReverb *sp64;
    s16 temp_s3;
    s16 temp_s3_2;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s1_3;
    s32 temp_s1_4;
    s32 temp_s1_5;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t3_2;
    s8 temp_t1;
    struct SynthesisReverb *temp_t9;
    u8 temp_a1;
    u8 temp_t3;
    u8 temp_v1;
    u8 temp_v1_2;
    void *temp_s4;
    void *temp_s4_2;
    void *temp_s4_3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    s8 phi_s1;
    s16 phi_s2;
    s16 phi_s3;
    s8 phi_s1_2;
    s16 phi_s2_2;
    s8 phi_s1_3;
    s32 phi_s2_3;
    s16 phi_s3_2;
    void *phi_s4;
    s32 phi_s1_4;
    s32 phi_s2_4;
    u8 *phi_s0;
    void *phi_s4_2;
    s32 phi_s1_5;
    void *phi_s4_3;
    u8 *phi_s0_2;
    void *phi_s4_4;
    s32 phi_s1_6;
    void *phi_s4_5;
    s16 phi_s2_5;
    s16 phi_s2_6;
    s16 phi_s2_7;
    s32 phi_s2_8;
    s32 phi_s2_9;
    void *phi_s4_6;
    s32 phi_s1_7;
    s32 phi_s1_8;
    void *phi_s4_7;
    s32 phi_s1_9;
    void *phi_s4_8;
    void *phi_s4_9;
    s16 phi_s2_10;

    temp_t1 = gNumSynthesisReverbs;
    phi_s2 = 0;
    phi_s2_6 = 0;
    phi_s2_8 = 0;
    phi_s2_4 = 0;
    if (temp_t1 == 0) {
        temp_a0 = gMaxSimultaneousNotes;
        phi_s1 = 0;
        if (temp_a0 > 0) {
            // Error: Tried to use struct NoteSubEu before it is defined.
            // At instruction: lui $t6, %hi(gNoteSubsEu)
            do {
                phi_s2_5 = phi_s2;
                if ((*MIPS2C_ERROR(Read from unset register $v0) >> 0x1F) != 0) {
                    *(arg1 + phi_s2) = phi_s1;
                    phi_s2_5 = phi_s2 + 1;
                }
                temp_s1 = phi_s1 + 1;
                phi_s1 = temp_s1;
                phi_s2 = phi_s2_5;
                phi_s2_4 = phi_s2_5;
            } while (temp_s1 < temp_a0);
        }
        phi_s3_2 = 0;
        phi_s1_7 = 0;
    } else {
        phi_s3 = 0;
        if (temp_t1 > 0) {
            temp_a0_2 = gMaxSimultaneousNotes;
            do {
                phi_s1_2 = 0;
                phi_s2_2 = phi_s2_6;
                phi_s2_10 = phi_s2_6;
                if (temp_a0_2 > 0) {
                    // Error: Tried to use struct NoteSubEu before it is defined.
                    // At instruction: lui $t0, %hi(gNoteSubsEu)
                    do {
                        temp_v0 = (MIPS2C_ERROR(Read from unset register $v1) * 0x10) + MIPS2C_ERROR(Read from unset register $t0);
                        phi_s2_7 = phi_s2_2;
                        if (((temp_v0->unk0 >> 0x1F) != 0) && (phi_s3 == (temp_v0->unk1 >> 5))) {
                            *(&sp84 + phi_s2_2) = phi_s1_2;
                            phi_s2_7 = phi_s2_2 + 1;
                        }
                        temp_s1_2 = phi_s1_2 + 1;
                        phi_s1_2 = temp_s1_2;
                        phi_s2_2 = phi_s2_7;
                        phi_s2_10 = phi_s2_7;
                    } while (temp_s1_2 < temp_a0_2);
                }
                temp_s3 = phi_s3 + 1;
                phi_s3 = temp_s3;
                phi_s2_6 = phi_s2_10;
                phi_s2_8 = phi_s2_10;
            } while (temp_s3 < temp_t1);
        }
        temp_a0_3 = gMaxSimultaneousNotes;
        phi_s1_3 = 0;
        phi_s2_3 = phi_s2_8;
        phi_s2_4 = phi_s2_8;
        phi_s3_2 = 0;
        phi_s1_7 = 0;
        if (temp_a0_3 > 0) {
            // Error: Tried to use struct NoteSubEu before it is defined.
            // At instruction: lui $t0, %hi(gNoteSubsEu)
            do {
                temp_v0_2 = (MIPS2C_ERROR(Read from unset register $v1) * 0x10) + MIPS2C_ERROR(Read from unset register $t0);
                phi_s2_9 = phi_s2_3;
                if (((temp_v0_2->unk0 >> 0x1F) != 0) && ((temp_v0_2->unk1 >> 5) >= temp_t1)) {
                    *(&sp84 + phi_s2_3) = phi_s1_3;
                    phi_s2_9 = phi_s2_3 + 1;
                }
                temp_s1_3 = phi_s1_3 + 1;
                phi_s1_3 = temp_s1_3;
                phi_s2_3 = phi_s2_9;
                phi_s2_4 = phi_s2_9;
            } while (temp_s1_3 < temp_a0_3);
        }
    }
    arg2->unk4 = 0x300;
    arg2->unk0 = 0x2000540;
    temp_s4_2 = arg2 + 8;
    phi_s4 = temp_s4_2;
    phi_s1_4 = phi_s1_7;
    phi_s1_9 = phi_s1_7;
    phi_s4_8 = temp_s4_2;
    if (gNumSynthesisReverbs > 0) {
        // Error: Tried to use struct NoteSubEu before it is defined.
        // At instruction: lui $s6, %hi(gNoteSubsEu)
        do {
            temp_t9 = &gSynthesisReverbs[phi_s3_2];
            sp64 = temp_t9;
            temp_t3 = temp_t9->useReverb;
            gUseReverb = temp_t3;
            phi_s1_5 = phi_s1_4;
            phi_s1_8 = phi_s1_4;
            phi_s4_7 = phi_s4;
            if (temp_t3 != 0) {
                phi_s4_7 = func_800B7304(phi_s4, arg1, phi_s3_2, arg3);
            }
            phi_s4_2 = phi_s4_7;
            phi_s4_3 = phi_s4_7;
            if (phi_s1_4 < phi_s2_4) {
                phi_s0 = phi_s1_4 + &sp84;
loop_31:
                temp_v1 = *phi_s0;
                temp_t0 = *saved_reg_s6;
                temp_lo = arg3 * gMaxSimultaneousNotes;
                phi_s4_3 = phi_s4_2;
                phi_s1_8 = phi_s1_5;
                if (phi_s3_2 == ((temp_t0 + (temp_v1 * 0x10) + (temp_lo * 0x10))->unk1 >> 5)) {
                    temp_v0_3 = func_800B7C30(temp_v1, ((temp_v1 + temp_lo) * 0x10) + temp_t0, (temp_v1 * saved_reg_s7) + D_803B1508 + 0x10, arg0, arg1, phi_s4_2, arg3);
                    temp_s1_4 = phi_s1_5 + 1;
                    phi_s0 += 1;
                    phi_s4_2 = temp_v0_3;
                    phi_s1_5 = temp_s1_4;
                    phi_s4_3 = temp_v0_3;
                    phi_s1_8 = temp_s1_4;
                    if (temp_s1_4 < phi_s2_4) {
                        goto loop_31;
                    }
                }
            }
            phi_s1_4 = phi_s1_8;
            phi_s4_6 = phi_s4_3;
            phi_s1_9 = phi_s1_8;
            if (sp64->useReverb != 0) {
                phi_s4_6 = func_800B7630(phi_s4_3, phi_s3_2, arg3);
            }
            temp_s3_2 = phi_s3_2 + 1;
            phi_s3_2 = temp_s3_2;
            phi_s4 = phi_s4_6;
            phi_s4_8 = phi_s4_6;
        } while (temp_s3_2 < gNumSynthesisReverbs);
    }
    // Error: Tried to use struct NoteSubEu before it is defined.
    // At instruction: lui $s6, %hi(gNoteSubsEu)
    phi_s4_4 = phi_s4_8;
    phi_s1_6 = phi_s1_9;
    phi_s4_5 = phi_s4_8;
    if (MIPS2C_ERROR()) {
        phi_s0_2 = phi_s1_9 + &sp84;
        do {
            temp_v1_2 = *phi_s0_2;
            temp_t0_2 = *saved_reg_s6;
            temp_lo_2 = arg3 * gMaxSimultaneousNotes;
            temp_a1 = (temp_t0_2 + (temp_v1_2 * 0x10) + (temp_lo_2 * 0x10))->unk2;
            phi_s4_9 = phi_s4_4;
            if (((*(&D_803B03C0 + temp_a1) < 2) ^ 1) == 1) {
                phi_s4_9 = func_800B7C30(temp_v1_2, ((temp_v1_2 + temp_lo_2) * 0x10) + temp_t0_2, (temp_v1_2 * saved_reg_s7) + D_803B1508 + 0x10, arg0, arg1, phi_s4_4, arg3);
            } else {
                D_803B7198 = temp_a1 + (phi_s1_6 << 8) + 0x10000000;
            }
            temp_s1_5 = phi_s1_6 + 1;
            phi_s0_2 += 1;
            phi_s4_4 = phi_s4_9;
            phi_s1_6 = temp_s1_5;
            phi_s4_5 = phi_s4_9;
        } while (temp_s1_5 < phi_s2_4);
    }
    phi_s4_5->unk0 = 0x8000000;
    temp_s4_3 = phi_s4_5 + 8;
    temp_t3_2 = arg1 * 2;
    phi_s4_5->unk4 = temp_t3_2 & 0xFFFF;
    temp_s4 = temp_s4_3 + 8;
    temp_s4_3->unk0 = 0xD000000;
    temp_s4_3->unk4 = 0x54006C0;
    temp_s4->unk0 = ((((temp_t3_2 * 2) >> 4) & 0xFF) << 0x10) | 0x15000000;
    temp_s4->unk4 = arg0 + 0x80000000;
    return temp_s4 + 8;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/synthesis/func_800B775C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void *func_800B85B4(void *, void *, void *, u32); // extern
s32 func_800B8644(void *, void *, s32, u16, s32, s32); // extern
s32 func_800B86A0(s32, void *, void *, s32, s32, s32, s32); // extern
s32 func_800B8A2C(s32, void *, void *, s32, s32, s32); // extern
s32 func_800BAD0C(s32, s32, s32, void *); // extern
? synthesis_load_note_subs_eu(s32, s32, s32, s32); // extern
extern s32 D_803B1508;
extern ? gUnknownData_800F6290;

s32 func_800B7C30(s32 arg0, void *arg1, void *arg2, ? arg3, s32 arg4, void *arg5, s32 arg6) {
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
    s32 spA0;
    u16 sp9E;
    void *sp8C;
    u32 sp50;
    ? *temp_a2_2;
    s16 temp_t1;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a0_6;
    s32 temp_a0_7;
    s32 temp_a0_8;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a3;
    s32 temp_fp;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s3;
    s32 temp_t2;
    s32 temp_t6;
    s32 temp_t8;
    s32 temp_t9_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v1;
    u16 temp_t7;
    u16 temp_v0;
    u32 temp_s0;
    u32 temp_t7_3;
    void *temp_a1;
    void *temp_s2;
    void *temp_s2_2;
    void *temp_s2_3;
    void *temp_s2_4;
    void *temp_t7_2;
    void *temp_t9;
    void *temp_v0_2;
    s32 phi_v1;
    void *phi_s2;
    s32 phi_a0;
    u32 phi_t5;
    u32 phi_t5_2;
    s32 phi_fp;
    s32 phi_s3;
    s32 phi_t0;
    s32 phi_t3;
    s32 phi_t4;
    s32 phi_a0_2;
    void *phi_s2_2;
    s32 phi_s0;
    void *phi_s2_3;
    s32 phi_s1;
    void *phi_s2_4;
    s16 phi_t1;
    s32 phi_t2;
    s32 phi_s4;
    s32 phi_s5;
    s32 phi_s6;
    s32 phi_t3_2;
    s32 phi_s4_2;
    void *phi_s2_5;
    u32 phi_t5_3;
    s32 phi_a3;
    s32 phi_a2;
    s32 phi_t4_2;
    s32 phi_ra;
    s32 phi_t5_4;
    void *phi_s2_6;
    u32 phi_v1_2;
    void *phi_s2_7;
    s32 phi_a0_3;
    s32 phi_v1_3;
    s32 phi_s0_2;
    s32 phi_s2_8;
    s32 phi_s1_2;
    void *phi_s2_9;
    u32 phi_t6;
    s32 phi_a0_4;

    sp128 = NULL;
    sp8C = (arg0 * 0xC0) + D_803B1508;
    phi_v1 = 0;
    phi_v1_3 = 0;
    if (((arg1->unk0 * 2) >> 0x1F) == 1) {
        arg2->unk0 = 0;
        arg2->unk8 = 0;
        arg2->unk4 = 0;
        arg2->unk10 = 0;
        arg2->unk12 = 0;
        arg2->unk2 = 0;
        arg2->unk3 = 0;
        phi_v1 = 1;
    }
    temp_t7 = arg1->unkA;
    sp112 = temp_t7;
    spB0 = (arg1->unk0 & 1) + 1;
    temp_v0 = (temp_t7 * arg4 * 2) + arg2->unk4;
    arg2->unk4 = temp_v0;
    temp_s0 = temp_v0 >> 0x10;
    temp_a0 = arg1->unk0;
    phi_a0_3 = temp_a0;
    phi_a0 = temp_a0;
    if (temp_a0 & 0x20000) {
        temp_v0_2 = func_800B85B4(arg5, arg1, arg2, temp_s0);
        temp_a2 = arg2->unk8;
        sp9E = (temp_a2 * 2) + 0x1A0;
        arg2->unk8 = temp_a2 + temp_s0;
        arg5 = temp_v0_2;
        phi_a0_3 = arg1->unk0;
    } else {
        temp_t7_2 = *arg1->unkC;
        sp130 = temp_t7_2;
        temp_t9 = temp_t7_2->unk8;
        sp12C = temp_t9;
        spDC = temp_t9->unk4;
        spA0 = 0;
        spAC = 0;
        spEC = temp_t7_2->unk4;
        if (spB0 > 0) {
            sp50 = temp_v0 >> 0x10;
            sp114 = phi_v1;
            phi_s2 = arg5;
loop_6:
            temp_a1 = sp130->unkC;
            temp_a2_2 = temp_a1 + 8;
            phi_fp = 0;
            phi_s4 = 0;
            phi_s2_9 = phi_s2;
            if (spB0 == 1) {
                phi_t5 = sp50;
            } else {
                phi_t5 = sp50;
                if ((sp50 & 1) != 0) {
                    phi_t5 = (sp50 & ~1) + (spAC * 2);
                }
            }
            phi_t5_2 = phi_t5;
            phi_t5_4 = phi_t5;
            if (sp128 != temp_a2_2) {
                phi_s2->unk0 = ((temp_a1->unk0 * 0x10 * temp_a1->unk4) & 0xFFFFFF) | 0xB000000;
                phi_s2->unk4 = (((arg1->unk0 << 0xB) >> 0x1D) * 2) + temp_a2_2 + 0x80000000;
                sp128 = temp_a2_2;
                phi_a0 = arg1->unk0;
                phi_s2_9 = phi_s2 + 8;
            }
            phi_s2_2 = phi_s2_9;
            phi_s2_6 = phi_s2_9;
            if (((phi_a0 << 0xB) >> 0x1D) != 0) {
                sp128 = &gUnknownData_800F6290;
            }
            if (phi_t5 != 0) {
loop_15:
                temp_a2_3 = arg2->unk8;
                temp_a0_2 = phi_t5_2 - phi_fp;
                temp_s3 = temp_a2_3 & 0xF;
                temp_v1 = spDC - temp_a2_3;
                phi_s3 = temp_s3;
                phi_t3 = 0;
                phi_t4 = 0;
                phi_s2_3 = phi_s2_2;
                phi_t5_3 = phi_t5_2;
                phi_ra = temp_a0_2;
                if ((temp_s3 == 0) && (arg2->unk0 == 0)) {
                    phi_s3 = 0x10;
                }
                temp_a1_2 = 0x10 - phi_s3;
                phi_s5 = temp_a1_2;
                phi_s5 = temp_a1_2;
                if (temp_a0_2 < temp_v1) {
                    temp_t9_2 = ((temp_a0_2 - temp_a1_2) + 0xF) / 0x10;
                    temp_s1 = temp_t9_2 * 0x10;
                    phi_t0 = temp_t9_2;
                    phi_s6 = (temp_a1_2 + temp_s1) - temp_a0_2;
                    phi_s1 = temp_s1;
                } else {
                    temp_s1_2 = temp_v1 - temp_a1_2;
                    phi_s6 = 0;
                    phi_s1_2 = temp_s1_2;
                    if (temp_s1_2 <= 0) {
                        phi_s1_2 = 0;
                        phi_s5 = temp_v1;
                    }
                    phi_t0 = (phi_s1_2 + 0xF) / 0x10;
                    phi_s1 = phi_s1_2;
                    if (sp12C->unk8 != 0) {
                        phi_t4 = 1;
                    } else {
                        phi_t3 = 1;
                    }
                }
                phi_t2 = 0;
                phi_t3_2 = phi_t3;
                phi_t4_2 = phi_t4;
                if (phi_t0 != 0) {
                    temp_t6 = ((temp_a2_3 - phi_s3) + 0x10) / 0x10;
                    if (sp130->unk1 == 0x81) {
                        phi_a0_2 = (temp_t6 * 9) + spEC;
                        phi_s0 = ((phi_t0 * 9) + 0x1F) & ~0xF;
                    } else {
                        spD8 = temp_a0_2;
                        sp11C = phi_t3;
                        sp118 = phi_t4;
                        spE4 = phi_t5_2;
                        temp_a1_3 = ((phi_t0 * 9) + 0x1F) & ~0xF;
                        phi_a0_2 = func_800BAD0C((temp_t6 * 9) + spEC, temp_a1_3, sp114, arg2 + 1);
                        phi_s0 = temp_a1_3;
                    }
                    temp_t1 = 0x540 - phi_s0;
                    temp_t2 = phi_a0_2 & 0xF;
                    phi_s2_2->unk4 = (phi_a0_2 - temp_t2) + 0x80000000;
                    phi_s2_2->unk0 = (((phi_s0 >> 4) & 0xFF) << 0x10) | 0x14000000 | (temp_t1 & 0xFFFF);
                    phi_s2_3 = phi_s2_2 + 8;
                    phi_t1 = temp_t1;
                    phi_t2 = temp_t2;
                    phi_t3_2 = phi_t3;
                    phi_t5_3 = phi_t5_2;
                    phi_t4_2 = phi_t4;
                    phi_ra = phi_t5_2 - phi_fp;
                } else {
                    phi_s1 = 0;
                    phi_t1 = 0x540 - (((phi_t0 * 9) + 0x1F) & 0xFFF0);
                }
                phi_t5_2 = phi_t5_3;
                phi_s2_4 = phi_s2_3;
                phi_t5_4 = phi_t5_3;
                if (arg2->unk0 != 0) {
                    phi_s2_3->unk0 = 0xF000000;
                    phi_s2_3->unk4 = sp130->unk8 + 0x80000010;
                    sp114 = 2;
                    arg2->unk0 = 0;
                    phi_s2_4 = phi_s2_3 + 8;
                }
                if (phi_fp == 0) {
                    temp_a2_4 = phi_s1 * 2;
                    phi_s2_4->unk4 = (temp_a2_4 & 0xFFFF) | 0x1A00000;
                    phi_s2_4->unk0 = ((phi_t1 + phi_t2) & 0xFFFF) | 0x8000000;
                    temp_s2 = phi_s2_4 + 8;
                    temp_s2->unk0 = ((sp114 & 0xFF) << 0x10) | 0x1000000;
                    temp_s2->unk4 = arg2->unkC + 0x80000000;
                    spFC = phi_s3 * 2;
                    phi_s2_5 = temp_s2 + 8;
                    phi_a3 = (phi_s1 + phi_s5) - phi_s6;
                    phi_a2 = temp_a2_4;
                } else {
                    temp_t8 = (phi_s4 + 0x1F) & ~0xF;
                    phi_s2_4->unk0 = ((phi_t1 + phi_t2) & 0xFFFF) | 0x8000000;
                    temp_a2_5 = phi_s1 * 2;
                    phi_s2_4->unk4 = ((temp_t8 + 0x1A0) << 0x10) | (temp_a2_5 & 0xFFFF);
                    temp_s2_2 = phi_s2_4 + 8;
                    temp_s2_2->unk0 = ((sp114 & 0xFF) << 0x10) | 0x1000000;
                    temp_s2_2->unk4 = arg2->unkC + 0x80000000;
                    temp_s2_3 = temp_s2_2 + 8;
                    temp_a3 = (phi_s1 + phi_s5) - phi_s6;
                    temp_s2_3->unk0 = ((temp_t8 + (phi_s3 * 2) + 0x1A0) & 0xFFFFFF) | 0xA000000;
                    temp_s2_3->unk4 = ((phi_s4 + 0x1A0) << 0x10) | ((temp_a3 * 2) & 0xFFFF);
                    phi_s2_5 = temp_s2_3 + 8;
                    phi_a3 = temp_a3;
                    phi_a2 = temp_a2_5;
                }
                temp_fp = phi_fp + phi_a3;
                phi_fp = temp_fp;
                phi_s2_2 = phi_s2_5;
                phi_s2_6 = phi_s2_5;
                if (sp114 != 1) {
                    sp114 = 0;
                    if ((sp114 ^ 2) != 0) {
                        if (phi_s4 != 0) {
                            phi_s4_2 = (phi_a3 * 2) + phi_s4;
                        } else {
                            phi_s4_2 = (phi_s3 + phi_a3) * 2;
                        }
                    } else {
                        phi_s4_2 = (phi_a3 * 2) + phi_s4;
                    }
                } else {
                    spFC = 0x20;
                    sp114 = 0;
                    phi_s4_2 = phi_a2 + 0x20;
                }
                phi_s4 = phi_s4_2;
                if (phi_t3_2 != 0) {
                    phi_s2_5->unk0 = ((phi_s4_2 + 0x1A0) & 0xFFFFFF) | 0x2000000;
                    phi_s2_5->unk4 = (phi_t5_3 - temp_fp) * 2;
                    arg1->unk0 = arg1->unk0 | 0x20;
                    sp8C->unkB0 = sp8C->unkB0 | 0x20;
                    sp8C->unkB0 = sp8C->unkB0 & 0xFF7F;
                    spE4 = phi_t5_3;
                    synthesis_load_note_subs_eu(arg6, arg0, phi_a2, phi_a3);
                    phi_t5_4 = phi_t5_3;
                    phi_s2_6 = phi_s2_5 + 8;
                } else {
                    if (phi_t4_2 != 0) {
                        arg2->unk0 = 1;
                        arg2->unk8 = sp12C->unk0;
                    } else {
                        arg2->unk8 = arg2->unk8 + phi_ra;
                    }
                    if (temp_fp != phi_t5_3) {
                        goto loop_15;
                    }
                }
            }
            phi_s2_7 = phi_s2_6;
            phi_s2_7 = phi_s2_6;
            if (spB0 != 1) {
                if (spB0 != 2) {
                    temp_a0_3 = arg1->unk0;
                    phi_t6 = (temp_a0_3 * 4) >> 0x1F;
                    phi_a0_4 = temp_a0_3;
                    goto block_60;
                }
                if (spAC != 0) {
                    if (spAC != 1) {
                        temp_a0_4 = arg1->unk0;
                        phi_v1_2 = (temp_a0_4 * 4) >> 0x1F;
                        phi_a0_4 = temp_a0_4;
                    } else {
                        phi_s2_6->unk0 = (((phi_t5_4 / 2) + 7) & 0xFFF8) | 0x11000000;
                        phi_s2_6->unk4 = ((spFC + 0x1A0) << 0x10) | ((spA0 + 0x20) & 0xFFFF);
                        temp_a0_5 = arg1->unk0;
                        phi_t6 = (temp_a0_5 * 4) >> 0x1F;
                        phi_s2_7 = phi_s2_6 + 8;
                        phi_a0_4 = temp_a0_5;
                        goto block_60;
                    }
                } else {
                    temp_s2_4 = phi_s2_6 + 8;
                    phi_s2_6->unk0 = (((phi_t5_4 / 2) + 7) & 0xFFF8) | 0x11000000;
                    phi_s2_6->unk4 = ((spFC + 0x1A0) << 0x10) | 0x20;
                    spA0 = phi_t5_4;
                    sp9E = 0x20;
                    temp_a0_6 = arg1->unk0;
                    temp_t7_3 = (temp_a0_6 * 4) >> 0x1F;
                    phi_v1_2 = temp_t7_3;
                    phi_s2_7 = temp_s2_4;
                    phi_a0_4 = temp_a0_6;
                    if (temp_t7_3 != 0) {
                        temp_s2_4->unk4 = phi_t5_4 + 0x10;
                        temp_s2_4->unk0 = ((phi_t5_4 + 0x20) & 0xFFFFFF) | 0x2000000;
                        temp_a0_7 = arg1->unk0;
                        phi_v1_2 = (temp_a0_7 * 4) >> 0x1F;
                        phi_s2_7 = temp_s2_4 + 8;
                        phi_a0_4 = temp_a0_7;
                    }
                }
            } else {
                sp9E = spFC + 0x1A0;
                temp_a0_8 = arg1->unk0;
                phi_t6 = (temp_a0_8 * 4) >> 0x1F;
                phi_a0_4 = temp_a0_8;
block_60:
                phi_v1_2 = phi_t6;
            }
            phi_s2 = phi_s2_7;
            phi_a0_3 = phi_a0_4;
            phi_a0 = phi_a0_4;
            if (phi_v1_2 != 0) {

            } else {
                temp_v0_3 = spAC + 1;
                spAC = temp_v0_3;
                if (temp_v0_3 != spB0) {
                    goto loop_6;
                }
            }
            arg5 = phi_s2_7;
        }
    }
    if (((phi_a0_3 * 2) >> 0x1F) == 1) {
        arg1->unk0 = arg1->unk0 & 0xFFBF;
        phi_v1_3 = 1;
    }
    temp_a2_6 = arg4 * 2;
    sp114 = phi_v1_3;
    if ((arg1->unk3 != 0) || (arg2->unk2 != 0)) {
        phi_s0_2 = 1;
    } else if ((arg1->unk4 != 0) || (phi_s0_2 = 0, (arg2->unk3 != 0))) {
        phi_s0_2 = 2;
    }
    temp_v0_4 = func_800B86A0(func_800B8644(arg5, arg2, temp_a2_6, sp112, sp9E, phi_v1_3), arg1, arg2, arg4, 0, phi_s0_2, sp114);
    phi_s2_8 = temp_v0_4;
    if ((arg1->unk0 & 1) != 0) {
        phi_s2_8 = func_800B8A2C(temp_v0_4, arg1, arg2, temp_a2_6, sp114, phi_s0_2);
    }
    return phi_s2_8;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/synthesis/func_800B7C30.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void *func_800B85B4(void *arg0, void *arg1, void *arg2, s32 arg3) {
    s32 temp_t0;
    s32 temp_t3;
    s32 temp_v1;
    void *temp_a0;
    void *phi_a0;

    arg0->unk0 = 0x140801A0;
    arg0->unk4 = arg1->unkC + 0x80000000;
    temp_a0 = arg0 + 8;
    temp_t0 = arg2->unk8 & 0x3F;
    temp_v1 = 0x40 - temp_t0;
    arg2->unk8 = temp_t0;
    phi_a0 = temp_a0;
    if (temp_v1 < arg3) {
        temp_t3 = ((arg3 - temp_v1) + 0x3F) / 0x40;
        if (temp_t3 != 0) {
            temp_a0->unk0 = ((temp_t3 & 0xFF) << 0x10) | 0x10000000 | 0x1A0;
            temp_a0->unk4 = 0x2200080;
            phi_a0 = temp_a0 + 8;
        }
    }
    return phi_a0;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/synthesis/func_800B85B4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void *func_800B8644(void *arg0, void *arg1, s32 arg2, s32 arg3, u16 arg4, s32 arg5) {
    void *temp_t0;

    arg0->unk0 = arg4 | 0x8000000;
    arg0->unk4 = arg2 & 0xFFFF;
    temp_t0 = arg0 + 8;
    temp_t0->unk0 = ((arg5 & 0xFF) << 0x10) | 0x5000000 | (arg3 & 0xFFFF);
    temp_t0->unk4 = arg1->unkC + 0x80000020;
    return temp_t0 + 8;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/synthesis/func_800B8644.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_800B86A0(void *arg0, void *arg1, void *arg2, s32 arg3, u16 arg4, s32 arg5) {
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_t5;
    u16 temp_v0;
    u16 temp_v1;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_a0_5;
    void *phi_a0;

    temp_v0 = arg2->unk10;
    temp_t5 = arg3 >> 3;
    temp_v1 = arg2->unk12;
    sp8 = (((arg1->unk6 * 0x10) & 0xFFFF) - temp_v0) / temp_t5;
    sp0 = (((arg1->unk8 * 0x10) & 0xFFFF) - temp_v1) / temp_t5;
    sp4 = temp_v1;
    arg2->unk10 = (temp_v0 + (spA * temp_t5)) & 0xFFFF;
    arg2->unk12 = (temp_v1 + (sp2 * temp_t5)) & 0xFFFF;
    if ((arg1->unk0 & 1) != 0) {
        arg0->unk4 = 0x180;
        arg0->unk0 = 0x2000200;
        temp_a0 = arg0 + 8;
        temp_a0->unk0 = (arg1->unk5 << 0x10) | 0x12000000 | ((temp_v0 & 0xFF) << 8) | (temp_v1 & 0xFF);
        temp_a0->unk4 = (spA << 0x10) | (sp2 & 0xFFFF);
        temp_a0_2 = temp_a0 + 8;
        temp_a0_2->unk0 = 0x16000000;
        temp_a0_2->unk4 = (temp_v0 << 0x10) | (temp_v1 & 0xFFFF);
        temp_a0_3 = temp_a0_2 + 8;
        phi_a0 = temp_a0_3;
        if (arg5 != 1) {
            if (arg5 != 2) {
                temp_a2 = arg1->unk0;
                temp_a0_3->unk0 = (((arg4 >> 4) & 0xFF) << 0x10) | 0x13000000 | ((arg3 & 0xFF) << 8) | ((((temp_a2 * 0x10) >> 0x1F) & 1) * 2) | (((temp_a2 << 5) >> 0x1F) & 1);
                temp_a0_3->unk4 = 0x546C849C;
            } else {
                temp_a2_2 = arg1->unk0;
                temp_a0_3->unk0 = (((arg4 >> 4) & 0xFF) << 0x10) | 0x13000000 | ((arg3 & 0xFF) << 8) | ((((temp_a2_2 * 0x10) >> 0x1F) & 1) * 2) | (((temp_a2_2 << 5) >> 0x1F) & 1);
                temp_a0_3->unk4 = 0x5420849C;
            }
        } else {
            temp_a2_3 = arg1->unk0;
            temp_a0_3->unk0 = (((arg4 >> 4) & 0xFF) << 0x10) | 0x13000000 | ((arg3 & 0xFF) << 8) | ((((temp_a2_3 * 0x10) >> 0x1F) & 1) * 2) | (((temp_a2_3 << 5) >> 0x1F) & 1);
            temp_a0_3->unk4 = 0x206C849C;
        }
    } else {
        temp_a0_4 = arg0 + 8;
        arg0->unk0 = (arg1->unk5 << 0x10) | 0x12000000 | ((temp_v0 & 0xFF) << 8) | (temp_v1 & 0xFF);
        arg0->unk4 = (spA << 0x10) | (sp2 & 0xFFFF);
        temp_a0_4->unk0 = 0x16000000;
        temp_a0_4->unk4 = (temp_v0 << 0x10) | (temp_v1 & 0xFFFF);
        temp_a2_4 = arg1->unk0;
        temp_a0_5 = temp_a0_4 + 8;
        temp_a0_5->unk0 = (((arg4 >> 4) & 0xFF) << 0x10) | 0x13000000 | ((arg3 & 0xFF) << 8) | ((((temp_a2_4 * 0x10) >> 0x1F) & 1) * 2) | (((temp_a2_4 << 5) >> 0x1F) & 1);
        temp_a0_5->unk4 = 0x546C849C;
        phi_a0 = temp_a0_5;
    }
    return phi_a0 + 8;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/synthesis/func_800B86A0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void *func_800B8A2C(void *arg0, void *arg1, void *arg2, s32 arg3, s32 arg4, s32 arg5) {
    s32 temp_t0;
    s32 temp_t3;
    s32 temp_t3_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    u8 temp_a3;
    u8 temp_a3_2;
    u8 temp_v0;
    u8 temp_v0_2;
    void *temp_a0;
    void *temp_a0_10;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_a0_5;
    void *temp_a0_6;
    void *temp_a0_7;
    void *temp_a0_8;
    void *temp_a0_9;
    s32 phi_v0;
    s32 phi_a3;
    s32 phi_t3;
    s32 phi_t2;
    void *phi_a0;
    s32 phi_v0_2;
    s32 phi_a1;
    void *phi_a0_2;
    void *phi_a0_3;
    s32 phi_t1;

    if (arg5 != 1) {
        phi_t1 = 0x6C0;
        if (arg5 != 2) {
            return arg0;
        }
        temp_a3 = arg1->unk4;
        temp_v0 = arg2->unk3;
        arg2->unk2 = 0;
        arg2->unk3 = temp_a3;
        phi_v0 = temp_v0;
        phi_a3 = temp_a3;
        goto block_6;
    }
    temp_a3_2 = arg1->unk3;
    temp_v0_2 = arg2->unk2;
    arg2->unk3 = 0;
    arg2->unk2 = temp_a3_2;
    phi_v0 = temp_v0_2;
    phi_a3 = temp_a3_2;
    phi_t1 = 0x540;
block_6:
    phi_a1 = phi_a3;
    if (arg4 != 1) {
        if (phi_v0 == 0) {
            temp_a0 = arg0 + 8;
            arg0->unk4 = 8;
            arg0->unk0 = 0xA000200;
            temp_a0_2 = temp_a0 + 8;
            temp_a0->unk0 = 0x2000008;
            temp_a0->unk4 = 8;
            temp_a0_3 = temp_a0_2 + 8;
            temp_a0_2->unk4 = 0x100010;
            temp_a0_2->unk0 = 0xA000200;
            temp_a0_3->unk0 = 0x15020000;
            temp_t3 = (arg3 + phi_a3) - phi_v0;
            temp_a0_3->unk4 = arg2->unkC + 0x80000040;
            temp_a0_4 = temp_a0_3 + 8;
            temp_a0_5 = temp_a0_4 + 8;
            temp_v0_3 = temp_t3 & 0xFFFF;
            temp_a0_4->unk4 = temp_v0_3;
            temp_a0_4->unk0 = 0x8000208;
            temp_a0_5->unk0 = (((arg3 << 0xF) / (temp_t3 + 8)) & 0xFFFF & 0xFFFF) | 0x5000000;
            temp_a0_5->unk4 = arg2->unkC + 0x80000040;
            phi_a0 = temp_a0_5 + 8;
            phi_v0_2 = temp_v0_3;
        } else {
            if (phi_a3 == 0) {
                phi_t3 = (arg3 + phi_a3) - phi_v0;
                phi_t2 = ((arg3 << 0xF) / ((arg3 - phi_v0) - 4)) & 0xFFFF;
            } else {
                temp_t3_2 = (arg3 + phi_a3) - phi_v0;
                phi_t3 = temp_t3_2;
                phi_t2 = ((arg3 << 0xF) / temp_t3_2) & 0xFFFF;
            }
            temp_a0_6 = arg0 + 8;
            temp_v0_4 = phi_t3 & 0xFFFF;
            arg0->unk4 = temp_v0_4;
            arg0->unk0 = 0x8000200;
            temp_a0_6->unk0 = (phi_t2 & 0xFFFF) | 0x5000000;
            temp_a0_6->unk4 = arg2->unkC + 0x80000040;
            phi_a0 = temp_a0_6 + 8;
            phi_v0_2 = temp_v0_4;
        }
        phi_a1 = phi_a3;
        phi_a0_2 = phi_a0;
        if (phi_v0 != 0) {
            phi_a0->unk0 = (((phi_v0 >> 4) & 0xFF) << 0x10) | 0x14000000 | 0x200;
            phi_a0->unk4 = arg2->unkC + 0x80000060;
            temp_a0_7 = phi_a0 + 8;
            temp_a0_7->unk0 = 0xA000000;
            temp_a0_7->unk4 = ((phi_v0 + 0x200) << 0x10) | phi_v0_2;
            phi_a0_2 = temp_a0_7;
        } else {
            phi_a0->unk4 = phi_v0_2 | 0x2000000;
            phi_a0->unk0 = 0xA000000;
        }
    } else {
        temp_a0_8 = arg0 + 8;
        temp_t0 = arg3 & 0xFFFF;
        arg0->unk4 = temp_t0;
        arg0->unk0 = 0xA000200;
        temp_a0_8->unk0 = 0xA000000;
        temp_a0_9 = temp_a0_8 + 8;
        temp_a0_8->unk4 = ((phi_a3 + 0x200) << 0x10) | temp_t0;
        temp_a0_9->unk0 = 0x2000200;
        temp_a0_9->unk4 = phi_a3;
        phi_a0_2 = temp_a0_9;
    }
    temp_a0_10 = phi_a0_2 + 8;
    phi_a0_3 = temp_a0_10;
    if (phi_a3 != 0) {
        temp_a0_10->unk0 = (((phi_a1 >> 4) & 0xFF) << 0x10) | 0x15000000 | ((arg3 + 0x200) & 0xFFFF);
        temp_a0_10->unk4 = arg2->unkC + 0x80000060;
        phi_a0_3 = temp_a0_10 + 8;
    }
    phi_a0_3->unk0 = (((((arg3 + 0x1F) & 0xFFE0) >> 4) & 0xFF) << 0x10) | 0xC000000 | 0x7FFF;
    phi_a0_3->unk4 = (phi_t1 & 0xFFFF) | 0x2000000;
    return phi_a0_3 + 8;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/synthesis/func_800B8A2C.s")
#endif
