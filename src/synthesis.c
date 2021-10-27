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

struct SynthesisReverb gSynthesisReverbs[4];
u8 sAudioSynthesisPad[0x10];
s16 gVolume;
s8 gUseReverb;
s8 gNumSynthesisReverbs;
struct NoteSubEu *gNoteSubsEu;

extern struct Note *D_803B7088;
extern s32 D_803B70B0;

f32 gLeftVolRampings[3][1024];
f32 gRightVolRampings[3][1024];
f32 *gCurrentLeftVolRamping; // Points to any of the three left buffers above
f32 *gCurrentRightVolRamping; // Points to any of the three right buffers above

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
/* sm64
u64 *synthesis_load_reverb_ring_buffer(u64 *cmd, u16 addr, u16 srcOffset, s32 len, s32 reverbIndex) {
    aSetBuffer(cmd++, 0, addr, 0, len&0xFF<<0x10);
    aLoadBuffer(cmd++, VIRTUAL_TO_PHYSICAL2(&gSynthesisReverbs[reverbIndex].ringBuffer.left[srcOffset]));

    aSetBuffer(cmd++, 0, addr + DEFAULT_LEN_1CH, 0, len&0xFF<<0x10);
    aLoadBuffer(cmd++, VIRTUAL_TO_PHYSICAL2(&gSynthesisReverbs[reverbIndex].ringBuffer.right[srcOffset]));

    return cmd;
}
*/
/* mk64
void *synthesis_load_reverb_ring_buffer(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 temp_t0;
    s32 temp_t2;
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
// includes 2 funcs
GLOBAL_ASM("asm/non_matchings/audio/wip.s")

/* sm64
void synthesis_load_note_subs_eu(s32 updateIndex) {
    struct NoteSubEu *src;
    struct NoteSubEu *dest;
    s32 i;

    for (i = 0; i < D_803B70B0; i++) {
        src = &D_803B7088[i].noteSubEu;
        dest = &gNoteSubsEu[D_803B70B0 * updateIndex + i];
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
    if (i = 0; temp_v0 < (s32) D_803B7088.unkC; i++) {
        phi_v0 = temp_v0;

        for(i = 0; temp_v0_2 < (s32) D_803B7088.unkC; i++) {
            dest = &gNoteSubsEu[D_803B70B0 * phi_v0 + (arg1 * 0x10)];
            if ((*dest * 2) >= 0) {
                temp_v0_2 = phi_v0 + 1;
                *dest = (s8) ((u8) *dest & 0xFF7F);
                phi_v0 = temp_v0_2;

            }
        }
    }
}
*/

GLOBAL_ASM("asm/non_matchings/audio/synthesis.s")
