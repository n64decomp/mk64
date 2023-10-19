#ifndef GFX_OUTPUT_BUFFER_H
#define GFX_OUTPUT_BUFFER_H

#include <PR/ultratypes.h>

// 0x1f000 bytes, aligned to a 0x1000-byte boundary through sm64.ld. (This results
// in a bunch of unused space: ~0x100 in JP, ~0x300 in US.)
#define GFX_OUTPUT_BUFFER_SIZE 0x3f00

// 0x3F00
extern u64 gGfxSPTaskOutputBuffer[GFX_OUTPUT_BUFFER_SIZE];
extern u32 gGfxSPTaskOutputBufferSize;

#endif // GFX_OUTPUT_BUFFER_H
