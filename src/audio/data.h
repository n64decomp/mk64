#ifndef AUDIO_DATA_H
#define AUDIO_DATA_H

#include "internal.h"

#define AUDIO_LOCK_UNINITIALIZED 0
#define AUDIO_LOCK_NOT_LOADING 0x76557364
#define AUDIO_LOCK_LOADING 0x19710515

// number of DMAs performed during this frame
extern s32 gCurrAudioFrameDmaCount;

extern s16 sSawtoothWaves[256];
extern s16 sTriangleWaves[256];
extern s16 sSineWaves[256];
extern s16 sSquareWaves[256];
extern s16 sUnknownWave6[256];
extern s16 gUnknownWave7[256];
extern s16 *gWaveSamples[6];
extern u32 fill[2];
extern f32 gPitchBendFrequencyScale[256];
extern f32 gNoteFrequencies[128];
extern u8 gDefaultShortNoteVelocityTable[16];
extern u8 gDefaultShortNoteDurationTable[16];
extern struct AdsrEnvelope gDefaultEnvelope[];
extern u32 fill2;
extern struct NoteSubEu gZeroNoteSub;
extern struct NoteSubEu gDefaultNoteSub;
extern u16 gHeadsetPanQuantization[0x10];
extern s32 gUnknownData_800F6290[32];
extern f32 gHeadsetPanVolume[128];
extern f32 gStereoPanVolume[128];
extern f32 gDefaultPanVolume[128];

#endif
