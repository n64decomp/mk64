#ifndef MAIN_H
#define MAIN_H

#include "types.h"

// Message IDs
#define MESG_SP_COMPLETE 100
#define MESG_DP_COMPLETE 101
#define MESG_VI_VBLANK 102
#define MESG_START_GFX_SPTASK 103
#define MESG_NMI_REQUEST 104

#define MTX_POOL_SIZE 0x0683
#define GFX_POOL_SIZE 0x1D4C
struct GfxPool {
    /* 0x00000 */ Mtx mtxPool[MTX_POOL_SIZE];
    /* 0x1A0C0 */ Gfx gfxPool[GFX_POOL_SIZE];
    /* 0x28B20 */ struct SPTask spTask;
}; // size = 0x28B70

void create_thread(OSThread*, OSId, void (*entry)(void *), void*, void*, OSPri);
void main_func();
void thread1_idle(void*);
void setup_mesg_queues();
void start_sptask(s32);
void func_800006E8();
void init_controllers();
void func_80000934(s32);
void read_controllers();
void func_80000BEC();
void func_80000C0C(OSMesg);
void send_display_list(struct SPTask*);
void func_80000CA8();
void func_80000CE8();
void *clear_framebuffer(s32);
void rendering_init();
void config_gfx_pool();
void display_and_vsync();
void func_8000105C();
void func_800010CC();
void dma_copy(u8*, u8*, u32);
void init_game();
void func_80001ECC();
void interrupt_gfx_sptask();
void func_80001FAC();
void func_800020D8(s32, struct VblankHandler*, OSMesgQueue*, OSMesg*);
void start_gfx_sptask();
void func_80002168();
void func_80002284();
void *func_800022DC();
void thread3_video(void*);
void func_800025D4();
void func_80002600();
void func_8000262C();
void func_80002658();
void func_80002684();
void thread5_game_logic(s32);
void thread4_audio(s32);

extern struct GfxPool *gGfxPool;
extern Gfx *gDisplayListHead;

extern OSIoMesg gDmaIoMesg;
extern OSMesg gMainReceivedMesg;
extern OSMesgQueue gDmaMesgQueue;
extern s32 D_800DC524;
extern s32 gActiveScreenMode;
extern f32 D_800DC594;
extern s32 D_800DC600;
extern s32 D_8015F8B8, D_8015F8BC, D_8015F8C0, D_8015F8C4, D_8015F8C8, D_8015F8CC;

extern s16 sController1Unplugged;

#endif
