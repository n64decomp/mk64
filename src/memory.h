#ifndef MEMORY_H
#define MEMORY_H



#define MEMORY_POOL_LEFT  0
#define MEMORY_POOL_RIGHT 1
extern struct MemoryPool *gEffectsMemoryPool;

s32 func_802A7B70(s32 segment);
uintptr_t set_segment_base_addr(s32 segment, void *addr);
void *get_segment_base_addr(s32 segment);
s32 lookup_item(u32 segment);
s8 func_802ABD10(u16);
s16 func_802ABD40(u16);
s16 func_802ABD7C(u16);
s16 func_802ABDB8(u16);
s16 func_802ABDF4(u16);
f32 func_802ABE30(f32, f32, f32, u16);

struct AllocOnlyPool {
    s32 totalSpace;
    s32 usedSpace;
    u8 *startPtr;
    u8 *freePtr;
};


#endif // MEMORY_H
