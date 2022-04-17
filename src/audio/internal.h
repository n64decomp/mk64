#ifndef AUDIO_INTERNAL_H
#define AUDIO_INTERNAL_H

#include <PR/ultratypes.h>


// No-op printf macro which leaves string literals in rodata in IDO. IDO
// doesn't support variadic macros, so instead we let the parameter list
// expand to a no-op comma expression. Another possibility is that it might
// have expanded to something with "if (0)". See also goddard/gd_main.h.
// On US/JP, -sopt optimizes away these except for external.c.
#ifdef __sgi
#define stubbed_printf
#else
#define stubbed_printf(...)
#endif

#define stubbed_printf_0(msg) stubbed_printf(msg)
#define stubbed_printf_1(msg, a) stubbed_printf(msg, a)
#define stubbed_printf_2(msg, a, b) stubbed_printf(msg, a, b)
#define stubbed_printf_3(msg, a, b, c) stubbed_printf(msg, a, b, c)


struct AdsrEnvelope {
    s16 delay;
    s16 arg;
}; // size = 0x4

struct AdpcmLoop {
    u32 start;
    u32 end;
    u32 count;
    u32 pad;
    s16 state[16]; // only exists if count != 0. 8-byte aligned
};

struct AdpcmBook {
    s32 order;
    s32 npredictors;
    s16 book[1]; // size 8 * order * npredictors. 8-byte aligned
};

struct AudioBankSample {
    u8 unused;
    u8 loaded;
    u8 *sampleAddr;
    struct AdpcmLoop *loop;
    struct AdpcmBook *book;
    u32 sampleSize; // never read. either 0 or 1 mod 9, depending on padding
};

struct AudioBankSound {
    struct AudioBankSample *sample;
    f32 tuning; // frequency scale factor
}; // size = 0x8

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

struct AudioSessionSettings {
    /*0x00*/ u32 frequency;
    /*0x04*/ u8 maxSimultaneousNotes;
    /*0x05*/ u8 reverbDownsampleRate; // always 1
    /*0x06*/ u16 reverbWindowSize;
    /*0x08*/ u16 reverbGain;
    /*0x0A*/ u16 volume;
    /*0x0C*/ u32 persistentSeqMem;
    /*0x10*/ u32 persistentBankMem;
    /*0x14*/ u32 temporarySeqMem;
    /*0x18*/ u32 temporaryBankMem;
}; // size = 0x1C

struct AudioBufferParametersEU {
    /*0x00*/ s16 presetUnk4; // audio frames per vsync?
    /*0x02*/ u16 frequency;
    /*0x04*/ u16 aiFrequency; // ?16
    /*0x06*/ s16 samplesPerFrameTarget;
    /*0x08*/ s16 maxAiBufferLength;
    /*0x0A*/ s16 minAiBufferLength;
    /*0x0C*/ s16 updatesPerFrame;
    /*0x0E*/ s16 samplesPerUpdate;
    /*0x10*/ s16 samplesPerUpdateMax;
    /*0x12*/ s16 samplesPerUpdateMin;
    /*0x14*/ f32 resampleRate; // contains 32000.0f / frequency
    /*0x18*/ f32 updatesPerFrameInv; // 1.0f / updatesPerFrame
    /*0x1C*/ f32 unkUpdatesPerFrameScaled; // 3.0f / (1280.0f * updatesPerFrame)
};

#endif
