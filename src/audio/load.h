#ifndef AUDIO_LOAD_H
#define AUDIO_LOAD_H

#include <PR/ultratypes.h>
#include "internal.h"

#define AUDIO_FRAME_DMA_QUEUE_SIZE 0x40

#define PRELOAD_BANKS 2
#define PRELOAD_SEQUENCE 1

void func_800BAAF8(uintptr_t, void*, size_t, OSMesgQueue*, OSIoMesg*);
void func_800BAB58(uintptr_t*, u8**, ssize_t*, OSMesgQueue*, OSIoMesg*);
void func_800BAC04();
void func_800BB030(s32);
s32  func_800BB304(struct AudioBankSample*);

#endif // AUDIO_LOAD_H
