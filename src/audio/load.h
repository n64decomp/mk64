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
void decrease_sample_dma_ttls();
void func_800BB030(s32);
s32  func_800BB304(struct AudioBankSample*);
s32  func_800BB388(s32 bankId, s32 instId, s32 arg2);
void func_800BBEF0(u32 player, u32 seqId, s32 loadAsync);
void func_800BBF44(u32 player, u32 seqId, s32 loadAsync);
u8   get_missing_bank(u32 seqId, s32 *nonNullCount, s32 *nullCount);
void patch_sound(struct AudioBankSound *sound, u8 *memBase, u8 *offsetBase);
void patch_audio_bank(struct AudioBank *mem, u8 *offset, u32 numInstruments, u32 numDrums);

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
extern struct CtlEntry *gCtlEntries;
extern struct AudioBufferParametersEU gAudioBufferParameters;
extern s32 gMaxSimultaneousNotes;
extern s8 gAudioUpdatesPerFrame; // = 4
extern s8 gAudioLibSoundMode;

#endif // AUDIO_LOAD_H
