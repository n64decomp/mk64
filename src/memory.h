#ifndef MEMORY_H
#define MEMORY_H

#include "types.h"

struct MainPoolBlock {
    struct MainPoolBlock *prev;
    struct MainPoolBlock *next;
};

struct MainPoolState {
    u32 freeSpace;
    struct MainPoolBlock *listHeadL;
    struct MainPoolBlock *listHeadR;
    struct MainPoolState *prev;
};

struct UnkStruct_802B8CD4 {
    s16 unk0;
    s16 unk2;
    s32 unk4;
    s32 unk8;
    s32 fill; 
};

struct AllocOnlyPool {
    s32 totalSpace;
    s32 usedSpace;
    u8 *startPtr;
    u8 *freePtr;
};

#define MEMORY_POOL_LEFT  0
#define MEMORY_POOL_RIGHT 1

#define ALIGN4(val) (((val) + 0x3) & ~0x3)

s32 func_802A7B70(s32);
uintptr_t set_segment_base_addr(s32, void*);
void *get_segment_base_addr(s32);
s32   lookup_item(u32);
void  move_segment_table_to_dmem();
void  func_802A7CF0(s32, s32);
s32   func_802A7D1C(s32);
void  func_802A7D54(s32, s32);
s32   func_802A7D70(s32, s32);
void  main_pool_init(u32, u32);
void *main_pool_alloc(u32, u32);
u32   main_pool_free(void*);
void *main_pool_realloc(void*, u32);
s32   main_pool_available();
u32   main_pool_push_state();
u32   main_pool_pop_state();
void *func_802A80B0(u8*, u8*, u8*);
void *load_segment(s32, u8*, u8*, u32);
void *func_802A8190(s32, s32);
void  func_802A81EC();
struct AllocOnlyPool *alloc_only_pool_init(u32, u32);
u32  func_802A82AC(s32);
s32  func_802A82E4(u8*, u8*);
s32  func_802A8348(s32, s32, s32);
s32  func_802A841C(s32, s32, s32);
s32  func_802A84F4(s32, u32, u32);
u32  MIO0_0F(s32, u32, u32);
void func_802A8844();
void func_802A884C(Gfx*, u8, s8);
void func_802A8940(Gfx*, u8*, u8);
void func_802A89C0(Gfx*, u8, u8);
void func_802A8A04(Gfx*, u8, u8);
void func_802A8A70(Gfx*, u8, u8);
void func_802A8ADC(Gfx*, u8, u8);
void func_802A8B48(Gfx*, u8, u8);
void func_802A8BB4(Gfx*, u8, u8);
void func_802A8C20(Gfx*, u8, u8);
void func_802A8C8C(Gfx*, u8, u8);
void func_802A8CF8(Gfx*, u8, u8);
void func_802A8D64(Gfx*, u8, u8);
void func_802A8DD0(Gfx*, u8, u8);
void func_802A8E3C(Gfx*, u8, u8);
void func_802A8EA8(Gfx*, u8, u8);
void func_802A8F14(Gfx*, u8, u8);
void func_802A94D8(Gfx*, u8, u8);
void func_802A9544(Gfx*, u8, u8);
void func_802AAAAC(UnkActorInner*);
s8   func_802ABD10(u16);
s16  func_802ABD40(u16);
s16  func_802ABD7C(u16);
s16  func_802ABDB8(u16);
s16  func_802ABDF4(u16);
f32  func_802ABE30(f32, f32, f32, u16);
f32  func_802ABEAC(UnkActorInner*, Vec3f);
void process_shell_collision(Vec3f, f32, Vec3f, f32);
void func_802AC098(UnkActorInner*, Vec3f);
void func_802AD950(UnkActorInner*, f32, f32, f32, f32, f32, f32, f32);
void func_802ADDC8(UnkActorInner*, f32, f32, f32, f32);
f32  func_802AE1C0(f32, f32, f32);

// main.c
extern struct D_80150158 gD_80150158[];
extern s32 D_801502A0;
extern u32 D_8015F724;
extern u32 gPrevLoadedAddress;
extern u32 gHeapEndPtr;

extern u8 _other_texturesSegmentRomStart[];

#endif // MEMORY_H
