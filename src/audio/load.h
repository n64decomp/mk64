#ifndef AUDIO_LOAD_H
#define AUDIO_LOAD_H

#include <PR/ultratypes.h>
#include "audio/internal.h"

#define AUDIO_FRAME_DMA_QUEUE_SIZE 0x40

#define PRELOAD_BANKS 2
#define PRELOAD_SEQUENCE 1

#define IS_SEQUENCE_CHANNEL_VALID(ptr) ((uintptr_t)(ptr) != (uintptr_t)&gSequenceChannelNone)

void audio_dma_copy_immediate(uintptr_t devAddr, void *vAddr, size_t nbytes);
void audio_dma_copy_async(uintptr_t, void*, size_t, OSMesgQueue*, OSIoMesg*);
void audio_dma_partial_copy_async(uintptr_t*, u8**, ssize_t*, OSMesgQueue*, OSIoMesg*);
void decrease_sample_dma_ttls(void);
void func_800BB030(s32);
s32  func_800BB304(struct AudioBankSample*);
s32  func_800BB388(s32 bankId, s32 instId, s32 arg2);
void patch_sound(struct AudioBankSound *sound, u8 *memBase, u8 *offsetBase);
void func_800BB584(s32);
void patch_audio_bank(struct AudioBank *mem, u8 *offset, u32 numInstruments, u32 numDrums);
struct AudioBank *bank_load_immediate(s32, s32);
struct AudioBank *bank_load_async(s32, s32, struct SequencePlayer*);
void *sequence_dma_immediate(s32, s32);
void *sequence_dma_async(s32, s32, struct SequencePlayer*);
u8   get_missing_bank(u32 seqId, s32 *nonNullCount, s32 *nullCount);
struct AudioBank *load_banks_immediate(s32, u8*);
void preload_sequence(u32, u8);
void load_sequence(u32, u32, s32);
void load_sequence_internal(u32, u32, s32);

extern u32 D_803B70A8; // sDmaBufSize
// This is really data, not a volatile
// found in data/data_0DD0A0_2_1_2.s
extern volatile s32 D_800EA5DC;

extern struct Note *gNotes;
extern struct SequencePlayer gSequencePlayers[SEQUENCE_PLAYERS];
extern struct SequenceChannel gSequenceChannels[SEQUENCE_CHANNELS];
extern struct SequenceChannelLayer gSequenceLayers[SEQUENCE_LAYERS];
extern struct SequenceChannel gSequenceChannelNone;
extern struct AudioListItem gLayerFreeList;
extern struct NotePool gNoteFreeLists;
extern u8 *gAlBankSets;
extern ALSeqFile *gSeqFileHeader; // D_803B706C
extern ALSeqFile *gAlCtlHeader;   // D_803B7070
extern ALSeqFile *gAlTbl;         // D_803B7074
extern u16 gSequenceCount;        // D_803B707C
extern struct CtlEntry *gCtlEntries;
extern struct AudioBufferParametersEU gAudioBufferParameters;
extern s32 gMaxSimultaneousNotes;
extern s8 gAudioUpdatesPerFrame; // = 4
extern s8 gAudioLibSoundMode;

#endif // AUDIO_LOAD_H
