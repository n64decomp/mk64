#ifndef MAIN_H
#define MAIN_H

#include "types.h"
// 20836
// 655
#define GFX_POOL_SIZE 20836
struct GfxPool {
    Gfx buffer[GFX_POOL_SIZE];
    struct SPTask spTask;
};

extern struct GfxPool *gGfxPool;

extern OSIoMesg gDmaIoMesg;
extern OSMesg gMainReceivedMesg;
extern OSMesgQueue gDmaMesgQueue;

#endif
