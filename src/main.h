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
void create_gfx_task_structure();
void init_controllers();
void update_controller(s32);
void read_controllers();
void func_80000BEC();
void dispatch_audio_sptask(struct SPTask*);
void exec_display_list(struct SPTask*);
void init_rcp();
void end_master_display_list();
void *clear_framebuffer(s32);
void rendering_init();
void config_gfx_pool();
void display_and_vsync();
void init_seg_80280000();
void init_seg_8028DF00();
void dma_copy(u8*, u8*, u32);
void setup_game_memory();
void game_state_handler();
void interrupt_gfx_sptask();
void receive_new_tasks();
void set_vblank_handler(s32, struct VblankHandler*, OSMesgQueue*, OSMesg*);
void start_gfx_sptask();
void handle_vblank();
void handle_dp_complete();
void handle_sp_complete();
void thread3_video(void*);
void func_800025D4();
void func_80002600();
void func_8000262C();
void func_80002658();
void update_gamestate();
void thread5_game_loop(void*);
void thread4_audio(void*);

extern struct GfxPool *gGfxPool;
extern Gfx *gDisplayListHead;
extern struct Controller gControllers[8];

extern OSIoMesg gDmaIoMesg;
extern OSMesg gMainReceivedMesg;
extern OSMesgQueue gDmaMesgQueue;
extern s32 gGamestateNext;
extern s32 gActiveScreenMode;
extern f32 gVBlankTimer;
extern uintptr_t pAppNmiBuffer;
extern s32 gNmiUnknown1, gNmiUnknown2, gNmiUnknown3, gNmiUnknown4, gNmiUnknown5, gNmiUnknown6;
extern s32 gScreenModeSelection;

extern s16 sIsController1Unplugged;

#endif
