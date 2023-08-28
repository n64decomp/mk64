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

struct UnkStruct_8015F584 {
    u16 unk0;
    u16 unk2;
};

extern struct UnkStruct_8015F584 D_8014F110[];

void create_thread(OSThread*, OSId, void (*entry)(void *), void*, void*, OSPri);
void main_func(void);
void thread1_idle(void*);
void setup_mesg_queues(void);
void start_sptask(s32);
void create_gfx_task_structure(void);
void init_controllers(void);
void update_controller(s32);
void read_controllers(void);
void func_80000BEC(void);
void dispatch_audio_sptask(struct SPTask*);
void exec_display_list(struct SPTask*);
void init_rcp(void);
void end_master_display_list(void);
void *clear_framebuffer(s32);
void rendering_init(void);
void config_gfx_pool(void);
void display_and_vsync(void);
void init_seg_80280000(void);
void init_seg_8028DF00(void);
void dma_copy(u8*, u8*, u32);
void setup_game_memory(void);
void game_init_clear_framebuffer(void);
void race_logic_loop(void);
void game_state_handler(void);
void interrupt_gfx_sptask(void);
void receive_new_tasks(void);
void set_vblank_handler(s32, struct VblankHandler*, OSMesgQueue*, OSMesg*);
void start_gfx_sptask(void);
void handle_vblank(void);
void handle_dp_complete(void);
void handle_sp_complete(void);
void thread3_video(void*);
void func_800025D4(void);
void func_80002600(void);
void func_8000262C(void);
void func_80002658(void);
void update_gamestate(void);
void thread5_game_loop(void*);
void thread4_audio(void*);

extern struct GfxPool *gGfxPool;
extern Gfx *gDisplayListHead;
extern struct Controller gControllers[8];
extern struct Controller *gControllerOne;
extern s32 D_800DC568;
extern s32 D_800DC56C[];

extern u16 D_80152308;

extern u16 *gPhysicalFramebuffers[];
extern OSIoMesg gDmaIoMesg;
extern OSMesg gMainReceivedMesg;
extern OSMesgQueue gDmaMesgQueue;
extern s32 gGamestateNext;
extern s32 gActiveScreenMode;
extern f32 gVBlankTimer;
extern u8 *pAppNmiBuffer;
extern u8 *gNmiUnknown1;
extern u8 *gNmiUnknown2;
extern u8 *gNmiUnknown3;
extern u8 *gNmiUnknown4;
extern u8 *gNmiUnknown5;
extern u8 *gNmiUnknown6;
extern s32 gScreenModeSelection;

extern OSContStatus gControllerStatuses[];
extern struct Controller *gControllerFive;
extern u8 gControllerBits;

extern s16 sIsController1Unplugged;

extern u64 rspbootTextStart[], rspbootTextEnd[];
extern u64 gspF3DEXTextStart[], gspF3DEXTextEnd[];
extern u64 gspF3DLXTextStart[], gspF3DLXTextEnd[];
extern u64 gspF3DEXDataStart[];
extern u64 gspF3DLXDataStart[];

extern u64 gGfxSPTaskOutputBuffer[];
extern u32 gGfxSPTaskOutputBufferSize;

extern u32 gNextFreeMemoryAddress;
extern s32 FreeMemoryResetAnchor;
extern u8 _data_segment2SegmentRomStart[];
extern u8 _data_segment2SegmentRomEnd[];
extern u8 _common_texturesSegmentRomStart[];
extern u8 _common_texturesSegmentRomEnd[];
extern u8 _data_802BA370SegmentRomStart[];
extern u32 gHeapEndPtr;
extern u32 *D_801978D0; // Segment? Keeps track of segmented addresses?

extern s16 gCurrentlyLoadedCourseId;
extern s16 gCurrentCourseId;

extern s16 D_80164AF0;
extern u16 gIsGamePaused; // 1 if the game is paused and 0 if the game is not paused
extern u16 gIsInQuitToMenuTransition;


extern s32 D_8015F788;
extern s16 gDebugPathCount;
extern struct UnkStruct_800DC5EC *D_800DC5EC;

extern u16 D_800DC5B0;
extern s32 gPlayerWinningIndex;

extern u16 D_80152300[];

#endif
