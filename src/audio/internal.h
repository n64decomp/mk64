#ifndef AUDIO_INTERNAL_H
#define AUDIO_INTERNAL_H

#include <PR/ultratypes.h>

struct AdsrEnvelope {
    s16 delay;
    s16 arg;
}; // size = 0x4

struct NoteSub
{
    /*0x00*/ volatile u8 enabled : 1;
    /*0x00*/ u8 needsInit : 1;
    /*0x00*/ u8 finished : 1;
    /*0x00*/ u8 envMixerNeedsInit : 1;
    /*0x00*/ u8 stereoStrongRight : 1;
    /*0x00*/ u8 stereoStrongLeft : 1;
    /*0x00*/ u8 stereoHeadsetEffects : 1;
    /*0x00*/ u8 usesHeadsetPanEffects : 1;
    /*0x01*/ u8 reverbIndex : 3;
    /*0x01*/ u8 bookOffset : 3;
    /*0x01*/ u8 isSyntheticWave : 1;
    /*0x01*/ u8 hasTwoAdpcmParts : 1;
    /*0x02*/ u8 bankId;
    /*0x03*/ u8 headsetPanRight;
    /*0x04*/ u8 headsetPanLeft;
    /*0x05*/ u8 reverbVol;
    /*0x06*/ u16 targetVolLeft;
    /*0x08*/ u16 targetVolRight;
    /*0x0A*/ u16 resamplingRateFixedPoint; // stored as signed but loaded as u16
    /*0x0C*/ union {
        s16 *samples;
        struct AudioBankSound *audioBankSound;
    } sound;
};

#endif
