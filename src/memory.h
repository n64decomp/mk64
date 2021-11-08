#ifndef MEMORY_H
#define MEMORY_H



#define MEMORY_POOL_LEFT  0
#define MEMORY_POOL_RIGHT 1
extern struct MemoryPool *gEffectsMemoryPool;

s32 func_802A7B70(s32 segment);
uintptr_t set_segment_base_addr(s32 segment, void *addr);
void *get_segment_base_addr(s32 segment);
s32 lookup_item(u32 segment);

struct AllocOnlyPool {
    s32 totalSpace;
    s32 usedSpace;
    u8 *startPtr;
    u8 *freePtr;
};


#endif // MEMORY_H
