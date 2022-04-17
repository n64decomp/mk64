#ifndef AUDIO_DATA_H
#define AUDIO_DATA_H

#include "internal.h"

#define AUDIO_LOCK_UNINITIALIZED 0
#define AUDIO_LOCK_NOT_LOADING 0x76557364
#define AUDIO_LOCK_LOADING 0x19710515

extern struct AdsrEnvelope gDefaultEnvelope[3];

// number of DMAs performed during this frame
extern s32 gCurrAudioFrameDmaCount;

#endif
