#ifndef MAIN_H
#define MAIN_H

#include "types.h"

#define MTX_POOL_SIZE 0x0683
#define GFX_POOL_SIZE 0x1D4C
struct GfxPool {
    /* 0x00000 */ Mtx matrixPool[MTX_POOL_SIZE];
    /* 0x1A0C0 */ Gfx gfxPool[GFX_POOL_SIZE];
    /* 0x28B20 */ struct SPTask spTask;
}; // size = 0x28B70

extern struct GfxPool *gGfxPool;

extern OSIoMesg gDmaIoMesg;
extern OSMesg gMainReceivedMesg;
extern OSMesgQueue gDmaMesgQueue;

#endif
