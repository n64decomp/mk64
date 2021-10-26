#include <ultra64.h>
#include <PR/os.h>
#include <macros.h>
#include "types.h"
#include "config.h"
#include "profiler.h"
#include "main.h"
#include "memory.h"
#include "segments.h"
#include "segment_symbols.h"
#include "common_structs.h"

// Declarations (not in this file)
void func_8008C214(void);
void func_80091B78(void);
void func_802A4D18(void);
void func_802A7C08(void);
void func_802A3E3C(void);
void func_802A4160(void);
void func_802A41D4(void);
void func_802A3CB0(void);
void audio_init();
void profiler_log_gfx_time(enum ProfilerGfxEvent eventID);
void profiler_log_vblank_time(void);
void create_thread(OSThread *thread, OSId id, void (*entry)(void *), void *arg, void *sp, OSPri pri);
void create_debug_thread(void);
void start_debug_thread(void);

struct SPTask *create_next_audio_frame_task(void);


extern void dma_copy(u8 *dest, u8 *arg1, u32 size);
extern s32 func_802A7D70(u8 *arg0, u8 *arg1);
extern void func_802A7CF0(u32 arg0, u32 arg1);

extern s32 D_800DC524;
extern s32 D_800DC52C;
extern OSThread gIdleThread;
extern OSThread gVideoThread;

extern u16 D_8015011C;
extern OSMesgQueue D_8015F460;
extern OSMesg D_8015F3E0;
extern s32 D_80156820;
extern f32 D_800DC594;

struct VblankHandler *gVblankHandler1 = NULL;
struct VblankHandler *gVblankHandler2 = NULL;

struct SPTask *gActiveSPTask = NULL;
struct SPTask *sCurrentAudioSPTask = NULL;
struct SPTask* sCurrentDisplaySPTask = NULL;
struct SPTask* D_800DC4B4 = NULL;
struct SPTask* sNextDisplaySPTask = NULL;


struct Controller gControllers[8];
struct Controller *D_800DC4BC = &gControllers[0];
struct Controller *D_800DC4C0 = &gControllers[1];
struct Controller *D_800DC4C4 = &gControllers[2];
struct Controller *D_800DC4C8 = &gControllers[3];
struct Controller *D_800DC4CC = &gControllers[4];
struct Controller *D_800DC4D0 = &gControllers[5];
struct Controller *D_800DC4D4 = &gControllers[6];
struct Controller *D_800DC4D8 = &gControllers[7];

Player gPlayers[8];
Player *D_800DC4DC = &gPlayers[0];
Player *D_800DC4E0 = &gPlayers[1];
Player *D_800DC4E4 = &gPlayers[2];
Player *D_800DC4E8 = &gPlayers[3];
Player *D_800DC4EC = &gPlayers[4];
Player *D_800DC4F0 = &gPlayers[5];
Player *D_800DC4F4 = &gPlayers[6];
Player *D_800DC4F8 = &gPlayers[7];

Player *D_800DC4FC = &gPlayers[0];
Player *D_800DC500 = &gPlayers[1];
Player *D_800DC504 = &gPlayers[2];
Player *D_800DC508 = &gPlayers[3];

s32 D_800DC50C = 0xffff;
u16 D_800DC510 = 0;
u16 D_800DC514 = 0;
u16 D_800DC518 = 0;
u16 D_800DC51C = 0;
u16 gEnableDebugMode = 0;
s32 D_800DC524 = 7; 
UNUSED s32 D_800DC528 = 1;
s32 D_800DC52C = 0;

s32 D_800DC530[2] = {0};
s32 gPlayerCountSelection1 = 2;
s32 gModeSelection = 0;
s32 D_800DC540 = 0;
s32 D_800DC544 = 0;
s32 D_800DC548 = 0;
s32 gGlobalTimer = 0;
UNUSED s32 D_800DC550 = 0;
UNUSED s32 D_800DC554 = 0;
UNUSED s32 D_800DC558 = 0;
// Framebuffer rendering values (max 3)
u16 sRenderedFramebuffer = 0;
u16 sRenderingFramebuffer = 0;
UNUSED u16 D_800DC564 = 0;
s32 D_800DC568 = 0;
s32 D_800DC56C[8] = {0};
s16 sNumVBlanks = 0;
UNUSED s16 D_800DC590 = 0;
float D_800DC594 = 0.0f;
float gCourseTimer = 0.0f;

extern u8 gControllerBits;
extern OSContStatus gControllerStatuses;
extern u16 sController1Unplugged;


extern uintptr_t gPhysicalFramebuffers[3];
extern const f64 D_800EB640;
extern struct VblankHandler sSoundVblankHandler;
extern struct SPTask *gGfxSPTask;
extern OSMesgQueue D_8014EF58, D_8014EF70, D_8014EF88, D_8014EFD0, gIntrMesgQueue;
extern OSMesgQueue sSoundMesgQueue;
extern OSMesg sSoundMesgBuf;
extern OSMesg D_8014F004, D_8014F058, D_8014F018;
extern Gfx *gDisplayListHead;

extern u64 rspbootTextStart[], rspbootTextEnd[];
extern u64 gspF3DEXTextStart[], gspF3DEXTextEnd[];
extern u64 gspF3DLXTextStart[], gspF3DLXTextEnd[];
extern u64 gspF3DEXDataStart[];
extern u64 gspF3DLXDataStart[];

extern u32 gGfxSPTaskStack;
extern u64 gGfxSPTaskOutputBuffer[];
extern u32 gGfxSPTaskOutputBufferSize;
extern u8 gGfxSPTaskYieldBuffer[];

extern u32 gPrevLoadedAddress;
extern u32 D_8015F734;
extern u8 _data_segment2SegmentRomStart[];
extern u8 _data_segment2SegmentRomEnd[];
extern u8 _common_texturesSegmentRomStart[];
extern u8 _common_texturesSegmentRomEnd[];
extern u8 _data_802BA370SegmentRomStart[];
extern OSMesg D_8014F098;
extern OSIoMesg D_8014F0A0;
extern u32 gHeapEndPtr;
extern u32 *D_801978D0;


extern OSContPad *gControllerPads[4];

extern OSMesgQueue gSIEventMesgQueue;
extern OSMesg gSIEventMesgBuf[3];

extern u32 D_801502B4;
extern u32 gZBuffer;

extern s32 gFramebuffer0;
extern s32 gFramebuffer1[];
extern s32 gFramebuffer2;

extern s32 D_8015AB80;
extern s32 D_801589D0;
extern void thread5_game_logic();
extern void thread4_audio();
extern s32 D_8015CD30;
extern f64 D_800EB610;

extern s16 gCurrentlyLoadedCourseId;

s32 D_800FD850[4];
extern struct GfxPool gGfxPools[2];

// Declarations (in this file)
void thread1_idle(void *arg0);
void thread3_video(void *arg0);

// Message IDs
#define MESG_SP_COMPLETE 100
#define MESG_DP_COMPLETE 101
#define MESG_VI_VBLANK 102
#define MESG_START_GFX_SPTASK 103
#define MESG_NMI_REQUEST 104

void create_thread(OSThread *thread, OSId id, void (*entry)(void *), void *arg, void *sp, OSPri pri) {
    thread->next = NULL;
    thread->queue = NULL;
    osCreateThread(thread, id, entry, arg, sp, pri);
}

void main_func(void) {
    osInitialize();
	//! Why is this using the gVideoThread as idle stack?
    create_thread(&gIdleThread, 1, thread1_idle, NULL, &gVideoThread, 100);
    osStartThread(&gIdleThread);
}

void thread1_idle(void *arg0) {
    osCreateViManager(OS_PRIORITY_VIMGR);
    if (osTvType == TV_TYPE_NTSC) {
        osViSetMode(&osViModeTable[OS_VI_NTSC_LAN1]);
    } else {
        osViSetMode(&osViModeTable[OS_VI_MPAL_LAN1]);
    }
    osViBlack(TRUE);
    osViSetSpecialFeatures(OS_VI_GAMMA_OFF);
    osCreatePiManager(OS_PRIORITY_PIMGR, &D_8015F460, &D_8015F3E0, 0x20);
    D_8015011C = (s16) osResetType;
    create_debug_thread();
    start_debug_thread();
    create_thread(&gVideoThread, 3, &thread3_video, arg0, &D_80156820, 100);
    osStartThread(&gVideoThread);
    osSetThreadPri(NULL, 0);

    // halt
    while (1);
}

void setup_mesg_queues(void) {
    osCreateMesgQueue(&D_8014EF58, &D_8014F004, 1);
    osCreateMesgQueue(&D_8014EFD0, &D_8014F058, 0x10);
    osCreateMesgQueue(&gIntrMesgQueue, &D_8014F018, 0x10);
    osViSetEvent(&gIntrMesgQueue, (OSMesg) 0x66, 1);
    osSetEventMesg(4, &gIntrMesgQueue, (OSMesg) 0x64);
    osSetEventMesg(9, &gIntrMesgQueue, (OSMesg) 0x65);
}

void start_sptask(s32 taskType) {
    if (taskType == M_AUDTASK) {
        gActiveSPTask = sCurrentAudioSPTask;
    } else {
        gActiveSPTask = sCurrentDisplaySPTask;
    }
    osSpTaskLoad(&gActiveSPTask->task);
    osSpTaskStartGo(&gActiveSPTask->task);
    gActiveSPTask->state = SPTASK_STATE_RUNNING;
}

// Most similar to create_task_structure from SM64, with additional provisions
// to load both F3DEX and F3DLX, depending on the number of players
void func_800006E8(void) {
    gGfxSPTask->msgqueue = &D_8014EF88;
    gGfxSPTask->msg = (OSMesg) 2;
    gGfxSPTask->task.t.type = M_GFXTASK;
    gGfxSPTask->task.t.flags = (1 << 1);
    gGfxSPTask->task.t.ucode_boot = rspbootTextStart;
    gGfxSPTask->task.t.ucode_boot_size = ((u8 *) rspbootTextEnd - (u8 *) rspbootTextStart);
    if (D_800DC50C != 4 || gPlayerCountSelection1 - 1 == 0) {
        gGfxSPTask->task.t.ucode = gspF3DEXTextStart;
        gGfxSPTask->task.t.ucode_data = gspF3DEXDataStart;
    } else {
        gGfxSPTask->task.t.ucode = gspF3DLXTextStart;
        gGfxSPTask->task.t.ucode_data = gspF3DLXDataStart;
    }
    gGfxSPTask->task.t.flags = 0;
    gGfxSPTask->task.t.flags = (1 << 1);
    gGfxSPTask->task.t.ucode_size = SP_UCODE_SIZE;
    gGfxSPTask->task.t.ucode_data_size = SP_UCODE_DATA_SIZE;
    gGfxSPTask->task.t.dram_stack = (u64 *) &gGfxSPTaskStack;
    gGfxSPTask->task.t.dram_stack_size = SP_DRAM_STACK_SIZE8;
    gGfxSPTask->task.t.output_buff = (u64 *) &gGfxSPTaskOutputBuffer;
    gGfxSPTask->task.t.output_buff_size = (u64 *) &gGfxSPTaskOutputBufferSize;
    gGfxSPTask->task.t.data_ptr = (u64 *) &gGfxPool->buffer[0x3418];
    gGfxSPTask->task.t.data_size = (gDisplayListHead - &gGfxPool->buffer[0x3418]) * sizeof(Gfx);
    func_8008C214();
    gGfxSPTask->task.t.yield_data_ptr = (u64 *) &gGfxSPTaskYieldBuffer;
    gGfxSPTask->task.t.yield_data_size = 0xD00; /* Not equal to OS_YIELD_DATA_SIZE */
}

void init_controllers(void) {
    osCreateMesgQueue(&gSIEventMesgQueue, &gSIEventMesgBuf[0], ARRAY_COUNT(gSIEventMesgBuf));
    osSetEventMesg(OS_EVENT_SI, &gSIEventMesgQueue, (OSMesg) 0x33333333);
    osContInit(&gSIEventMesgQueue, &gControllerBits, &gControllerStatuses);
    if ((gControllerBits & 1) == 0) {
        sController1Unplugged = TRUE;
        return;
    }
    sController1Unplugged = FALSE;
}

#ifdef MIPS_TO_C
void func_80000934(s32 arg0) {
    struct Controller *controller = &gControllers[arg0];
    u16 phi_a0;

    if (sController1Unplugged != 0) {
        return;
    }

    controller->rawStickX = gControllerPads[arg0]->stick_x;
    controller->rawStickY = gControllerPads[arg0]->stick_y;

    if ((gControllerPads[arg0]->button & 4) != 0) {
        gControllerPads[arg0]->button |= Z_TRIG;
        gControllerPads[arg0]->button |= Z_TRIG;
    }
    controller->buttonPressed = ((gControllerPads[arg0]->button ^ controller->button) & gControllerPads[arg0]->button);
    controller->buttonDepressed = ((gControllerPads[arg0]->button ^ controller->button) & controller->button);
    controller->button = &gControllerPads[arg0]->button;

    phi_a0 = 0;
    if (controller->rawStickX < -50) {
        phi_a0 |= L_JPAD;
    }
    if (controller->rawStickX > 50) {
        phi_a0 |= R_JPAD;
    }
    if (controller->rawStickY < -50) {
        phi_a0 |= D_JPAD;
    }
    if (controller->rawStickY > 50) {
        phi_a0 |= U_JPAD;
    }
    controller->stickPressed = phi_a0 & (phi_a0 ^ controller->stickDirection);
    controller->stickDepressed = controller->stickDirection & (phi_a0 ^ controller->stickDirection);
    controller->stickDirection = phi_a0;
}
#else
GLOBAL_ASM("asm/non_matchings/main/func_80000934.s")
#endif

void read_controllers(void) {
    OSMesg sp1C;

    osContStartReadData(&gSIEventMesgQueue);
    osRecvMesg(&gSIEventMesgQueue, &sp1C, 1);
    osContGetReadData(&gControllerPads);
    func_80000934(0);
    func_80000934(1);
    func_80000934(2);
    func_80000934(3);
    D_800DC4CC->button = (s16) (((D_800DC4BC->button | D_800DC4C0->button) | D_800DC4C4->button) | D_800DC4C8->button);
    D_800DC4CC->buttonPressed = (s16) (((D_800DC4BC->buttonPressed | D_800DC4C0->buttonPressed) | D_800DC4C4->buttonPressed) | D_800DC4C8->buttonPressed);
    D_800DC4CC->buttonDepressed = (s16) (((D_800DC4BC->buttonDepressed | D_800DC4C0->buttonDepressed) | D_800DC4C4->buttonDepressed) | D_800DC4C8->buttonDepressed);
    D_800DC4CC->stickDirection = (s16) (((D_800DC4BC->stickDirection | D_800DC4C0->stickDirection) | D_800DC4C4->stickDirection) | D_800DC4C8->stickDirection);
    D_800DC4CC->stickPressed = (s16) (((D_800DC4BC->stickPressed | D_800DC4C0->stickPressed) | D_800DC4C4->stickPressed) | D_800DC4C8->stickPressed);
    D_800DC4CC->stickDepressed = (s16) (((D_800DC4BC->stickDepressed | D_800DC4C0->stickDepressed) | D_800DC4C4->stickDepressed) | D_800DC4C8->stickDepressed);
}

void func_80000BEC(void) {
    D_801502B4 = VIRTUAL_TO_PHYSICAL(&gZBuffer);
}

// send_sp_task_message from SM64
void func_80000C0C(OSMesg arg0) {
    osWritebackDCacheAll();
    osSendMesg(&D_8014EFD0, arg0, OS_MESG_NOBLOCK);
}

// similar to send_display_list from SM64
void send_display_list(struct SPTask *spTask) {
    osWritebackDCacheAll();
    spTask->state = SPTASK_STATE_NOT_STARTED;
    if (sCurrentDisplaySPTask == NULL) {
        sCurrentDisplaySPTask = spTask;
        sNextDisplaySPTask = NULL;
        osSendMesg(&gIntrMesgQueue, (OSMesg) MESG_START_GFX_SPTASK, OS_MESG_NOBLOCK);
    }
    else{
        sNextDisplaySPTask = spTask;
    }
}

void func_80000CA8(void) {
    func_802A7C08();
    func_802A3E3C();
    func_802A4160();
    func_802A41D4();
    func_802A3CB0();
}

// Similar to end_master_display_list in SM64
void func_80000CE8(void) {
    gDPFullSync(gDisplayListHead++);
    gSPEndDisplayList(gDisplayListHead++);

    func_800006E8();
}

// clear_frame_buffer from SM64, with a few edits
//! TODO: Why did void* work for matching
void *clear_framebuffer(s32 color) {
    gDPPipeSync(gDisplayListHead++);

    gDPSetRenderMode(gDisplayListHead++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
    gDPSetCycleType(gDisplayListHead++, G_CYC_FILL);

    gDPSetFillColor(gDisplayListHead++, color);
    gDPFillRectangle(gDisplayListHead++, 0, 0, SCREEN_WIDTH - 1,
                     SCREEN_HEIGHT - 1);

    gDPPipeSync(gDisplayListHead++);

    gDPSetCycleType(gDisplayListHead++, G_CYC_1CYCLE);
}

void rendering_init(void) {
    gGfxPool = &gGfxPools[0];
    set_segment_base_addr(1, gGfxPool->buffer);
    gGfxSPTask = &gGfxPool->spTask;
    gDisplayListHead = &gGfxPool->buffer[0x3418];
    func_80000CA8();
    clear_framebuffer(0);
    func_80000CE8();
    send_display_list(&gGfxPool->spTask);
    sRenderingFramebuffer++;
    gGlobalTimer++;
}

void config_gfx_pool(void) {
    gGfxPool = &gGfxPools[gGlobalTimer & 1];
    set_segment_base_addr(1, gGfxPool->buffer);
    gDisplayListHead = &gGfxPool->buffer[0x3418];
    gGfxSPTask = &gGfxPool->spTask;
}

void display_and_vsync(void) {
    profiler_log_thread5_time(2);
    osRecvMesg(&D_8014EF88, &D_8014F098, 1);
    send_display_list(&gGfxPool->spTask);
    profiler_log_thread5_time(3);
    osRecvMesg(&D_8014EF70, &D_8014F098, 1);
    osViSwapBuffer((void *) PHYSICAL_TO_VIRTUAL(gPhysicalFramebuffers[sRenderedFramebuffer]));
    profiler_log_thread5_time(4);
    osRecvMesg(&D_8014EF70, &D_8014F098, 1);
    func_800046AC(gPhysicalFramebuffers[sRenderedFramebuffer]);
    if (++sRenderedFramebuffer == 3) {
        sRenderedFramebuffer = 0;
    }
    if (++sRenderingFramebuffer == 3) {
        sRenderingFramebuffer = 0;
    }
    gGlobalTimer++;
}

void func_8000105C(void) {
    bzero(SEG_80280000, 0xDF00);
    osWritebackDCacheAll();
    dma_copy(SEG_80280000, &_code_80280000SegmentRomStart, ALIGN16((u32)&_code_80280000SegmentRomEnd - (u32)&_code_80280000SegmentRomStart));
    osInvalICache(SEG_80280000, 0xDF00);
    osInvalDCache(SEG_80280000, 0xDF00);
}

void func_800010CC(void) {
    bzero(SEG_8028DF00, 0x2C470);
    osWritebackDCacheAll();
    dma_copy(SEG_8028DF00, &_code_8028DF00SegmentRomStart, ALIGN16((u32)&_code_8028DF00SegmentRomEnd - (u32)&_code_8028DF00SegmentRomStart));
    osInvalICache(SEG_8028DF00, 0x2C470);
    osInvalDCache(SEG_8028DF00, 0x2C470);
}

void dma_copy(u8 *dest, u8 *arg1, u32 size) {

    osInvalDCache(dest, size);
    while(size > 0x100) {
        osPiStartDma(&D_8014F0A0, 0, 0, (unsigned long)arg1, dest, 0x100, &D_8014EF58);
        osRecvMesg(&D_8014EF58, &D_8014F098, 1);
        size -= 0x100;
        arg1 += 0x100;
        dest += 0x100;
    }
    if (size != 0) {
        osPiStartDma(&D_8014F0A0, 0, 0, (unsigned long)arg1, dest, size, &D_8014EF58);
        osRecvMesg(&D_8014EF58, &D_8014F098, 1);
    }
}

// Resembles setup_game_memory from SM64
#ifdef NON_MATCHING
// Two differing words.
// Likely some arbitrary combination of unused vars.
void init_game(void) {
    UNUSED u32 pad[2];
    u32 sp2C;
    u32 sp40;
    s32 texture_seg;
    s32 sp38;
    UNUSED s32 unknown_padding;
    

    func_800010CC();
    gHeapEndPtr = SEG_8028DF00;
    set_segment_base_addr(0, 0x80000000);
    func_802A7CF0(&D_801978D0, 0x80242F00);
    func_80000BEC();
    osInvalDCache(SEG_802BA370, 0x5810);
    osPiStartDma(&D_8014F0A0, 0, 0, &_data_802BA370SegmentRomStart, SEG_802BA370, 0x5810, &D_8014EF58);
    osRecvMesg(&D_8014EF58, &D_8014F098, 1);
    set_segment_base_addr(2, func_802A7D70(&_data_segment2SegmentRomStart, &_data_segment2SegmentRomEnd));
    sp2C = (u32)&_common_texturesSegmentRomEnd - (u32)&_common_texturesSegmentRomStart;
    sp2C = ALIGN16(sp2C);
    texture_seg = SEG_8028DF00-sp2C;
    osPiStartDma(&D_8014F0A0, 0, 0, &_common_texturesSegmentRomStart, texture_seg, sp2C, &D_8014EF58);
    osRecvMesg(&D_8014EF58, &D_8014F098, 1);
	
    sp40 = *(u32 *)(texture_seg + 4);
    sp40 = ALIGN16(sp40);
    sp38 = gPrevLoadedAddress;
    mio0decode(texture_seg, sp38);
    set_segment_base_addr(0xD, sp38);
    
    gPrevLoadedAddress += sp40;
    D_8015F734 = gPrevLoadedAddress;
}
#else
GLOBAL_ASM("asm/non_matchings/main/init_game.s")
#endif

void func_80001404(void) {
    D_800DC524 = 0;
    clear_framebuffer(0);
}

#ifdef MIPS_TO_C
// generated by mips_to_c commit cae1414eb1bf34873a831a523692fe29870a6f3b
void *func_8000142C(void) {
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_s0_3;
    s32 temp_s0_4;
    void *temp_v0;
    void *temp_v0_2;
    s32 phi_s0;
    s32 phi_s0_2;
    s32 phi_s0_3;
    s32 phi_s0_4;
    u16 phi_a0;

    D_80150112 = (u16)0;
    D_80164AF0 = (u16)0;
    if (D_800DC5FC != 0) {
        func_80290B14();
    }
    if (D_800DC5C0 != 0) {
        return func_802A38B4();
    }
    if ((s32) sNumVBlanks >= 6) {
        sNumVBlanks = (u16)5;
    }
    if ((s32) sNumVBlanks < 0) {
        sNumVBlanks = (u16)1;
    }
    func_802A4EF4();
    if (D_800DC52C != 0) {
        if (D_800DC52C != 1) {
            if (D_800DC52C != 2) {
                if (D_800DC52C != 3) {

                } else {
                    if (3 == *(void *)0x800DC538) {
                        if (gCurrentCourseId != 2) {
                            if (gCurrentCourseId != 9) {
                                if (gCurrentCourseId != 0x10) {
                                    if (gCurrentCourseId != 0x12) {
                                        D_80150114 = 2;
                                    } else {
block_79:
                                        D_80150114 = 3;
                                    }
                                } else {
                                    goto block_79;
                                }
                            } else {
                                goto block_79;
                            }
                        } else {
                            goto block_79;
                        }
                    } else {
                        if (*(void *)0x800E0000 != 0xF) {
                            if (*(void *)0x800E0000 != 0x11) {
                                if (*(void *)0x800E0000 != 0x12) {
                                    if (*(void *)0x800E0000 != 0x13) {
                                        D_80150114 = 3;
                                    } else {
block_85:
                                        D_80150114 = 2;
                                    }
                                } else {
                                    D_80150114 = 4;
                                }
                            } else {
                                goto block_85;
                            }
                        } else {
                            goto block_85;
                        }
                    }
                    if (D_800DC5FC == 0) {
                        if (D_80150114 > 0) {
                            phi_s0 = 0;
loop_90:
                            if (D_8015011E != 0) {
                                gCourseTimer = (f32) ((f64) gCourseTimer + D_800EB610);
                            }
                            func_802909F0();
                            func_802A0D54();
                            func_800382DC();
                            func_8001EE98(D_800DC4FC, D_800DDB40, 0);
                            func_80029158();
                            func_8001EE98(D_800DC4E0, D_800DDB44, 1);
                            func_800291E8();
                            func_8001EE98(D_800DC4E4, D_800DDB48, 2);
                            func_800291F0();
                            func_8001EE98(D_800DC4E8, D_800DDB4C, 3);
                            func_800291F8();
                            func_8028F474();
                            func_80059AC8();
                            update_simple_objects();
                            func_802966A0();
                            func_8028FCBC();
                            temp_s0 = (s32) ((phi_s0 + 1) << 0x10) >> 0x10;
                            phi_s0 = temp_s0;
                            if (temp_s0 < D_80150114) {
                                goto loop_90;
                            }
                        }
                        func_80022744();
                    }
                    func_8005A070();
                    sNumVBlanks = (u16)0;
                    profiler_log_thread5_time(1);
                    func_802A7C08();
                    func_802A3E3C();
                    if (D_800DC5B0 != 0) {
                        func_802A41D4();
                    }
                    D_8015F788 = 0;
                    if (D_800DC5E8 == 0) {
                        func_802A6BB0();
                        func_802A6E94();
                        func_802A7178();
                        func_802A68CC();
                    } else {
                        if (D_800DC5E8 == 1) {
                            func_802A68CC();
                            func_802A6E94();
                            func_802A7178();
                            func_802A6BB0();
                        } else {
                            if (D_800DC5E8 == 2) {
                                func_802A68CC();
                                func_802A6BB0();
                                func_802A7178();
                                func_802A6E94();
                            } else {
                                func_802A68CC();
                                func_802A6BB0();
                                func_802A6E94();
                                func_802A7178();
                            }
                        }
                    }
                }
            } else {
                if (*(void *)0x800DC5A0 == 0x12) {
                    D_80150114 = 3;
                } else {
                    D_80150114 = 2;
                }
                if (D_800DC5FC == 0) {
                    if (D_80150114 > 0) {
                        phi_s0_2 = 0;
loop_47:
                        if (D_8015011E != 0) {
                            gCourseTimer = (f32) ((f64) gCourseTimer + D_800EB600);
                        }
                        func_802909F0();
                        func_802A0D54();
                        func_800382DC();
                        func_8001EE98(D_800DC4FC, D_800DDB40, 0);
                        func_80029060();
                        func_8001EE98(D_800DC500, D_800DDB44, 1);
                        func_80029150();
                        func_8028F474();
                        func_80059AC8();
                        update_simple_objects();
                        func_802966A0();
                        func_8028FCBC();
                        temp_s0_2 = (s32) ((phi_s0_2 + 1) << 0x10) >> 0x10;
                        phi_s0_2 = temp_s0_2;
                        if (temp_s0_2 < D_80150114) {
                            goto loop_47;
                        }
                    }
                    func_80022744();
                }
                func_8005A070();
                profiler_log_thread5_time(1);
                sNumVBlanks = (u16)0;
                func_802A7C08();
                func_802A3E3C();
                if (D_800DC5B0 != 0) {
                    func_802A41D4();
                }
                D_8015F788 = 0;
                if (D_800DC5E8 == 0) {
                    func_802A5FAC();
                    func_802A5CB4();
                } else {
                    func_802A5CB4();
                    func_802A5FAC();
                }
            }
        } else {
            if (*(void *)0x800DC5A0 == 0x12) {
                D_80150114 = 3;
            } else {
                D_80150114 = 2;
            }
            if (D_800DC5FC == 0) {
                if (D_80150114 > 0) {
                    phi_s0_3 = 0;
loop_63:
                    if (D_8015011E != 0) {
                        gCourseTimer = (f32) ((f64) gCourseTimer + D_800EB608);
                    }
                    func_802909F0();
                    func_802A0D54();
                    func_800382DC();
                    func_8001EE98(D_800DC4FC, D_800DDB40, 0);
                    func_80029060();
                    func_8001EE98(D_800DC500, D_800DDB44, 1);
                    func_80029150();
                    func_8028F474();
                    func_80059AC8();
                    update_simple_objects();
                    func_802966A0();
                    func_8028FCBC();
                    temp_s0_3 = (s32) ((phi_s0_3 + 1) << 0x10) >> 0x10;
                    phi_s0_3 = temp_s0_3;
                    if (temp_s0_3 < D_80150114) {
                        goto loop_63;
                    }
                }
                func_80022744();
            }
            profiler_log_thread5_time(1);
            sNumVBlanks = (u16)0;
            func_8005A070();
            func_802A7C08();
            func_802A3E3C();
            if (D_800DC5B0 != 0) {
                func_802A41D4();
            }
            D_8015F788 = 0;
            if (D_800DC5E8 == 0) {
                func_802A65B8();
                func_802A62A4();
            } else {
                func_802A62A4();
                func_802A65B8();
            }
        }
block_104:
        phi_a0 = gEnableDebugMode;
    } else {
        D_80150114 = 2;
        func_80005F44();
        if (D_800DC5FC == 0) {
            if (D_80150114 > 0) {
                phi_s0_4 = 0;
loop_16:
                if (D_8015011E != 0) {
                    gCourseTimer = (f32) ((f64) gCourseTimer + D_800EB5F8);
                }
                func_802909F0();
                func_802A0D54();
                func_800382DC();
                func_8001EE98(D_800DC4FC, D_800DDB40, 0);
                func_80028F70();
                func_8028F474();
                func_80059AC8();
                update_simple_objects();
                func_802966A0();
                func_8028FCBC();
                temp_s0_4 = (s32) ((phi_s0_4 + 1) << 0x10) >> 0x10;
                phi_s0_4 = temp_s0_4;
                if (temp_s0_4 < D_80150114) {
                    goto loop_16;
                }
            }
            func_80022744();
        }
        func_8005A070();
        sNumVBlanks = (u16)0;
        profiler_log_thread5_time(1);
        D_8015F788 = 0;
        func_802A59A4();
        if (gEnableDebugMode == 0) {
            D_800DC514 = (u16)0;
            phi_a0 = gEnableDebugMode;
        } else {
            if (D_800DC514 != 0) {
                if ((D_800DC4BC->unk6 & 0x10) != 0) {
                    if ((D_800DC4BC->unk4 & 0x8000) != 0) {
                        if ((D_800DC4BC->unk4 & 0x4000) != 0) {
                            D_800DC514 = (u16)0U;
                        }
                    }
                }
                D_801625E8 = (s16) D_800DC5EC->unk38;
                if ((s32) D_800DDB40->unk26 < 0x2000) {
                    func_80057A50(0x28, 0x64, &D_800EB5D0, D_801625E8);
                } else {
                    if ((s32) D_800DDB40->unk26 < 0x6000) {
                        func_80057A50(0x28, 0x64, &D_800EB5D8, D_801625E8);
                    } else {
                        if ((s32) D_800DDB40->unk26 < 0xA000) {
                            func_80057A50(0x28, 0x64, &D_800EB5E0, D_801625E8);
                        } else {
                            if ((s32) D_800DDB40->unk26 < 0xE000) {
                                func_80057A50(0x28, 0x64, &D_800EB5E8, D_801625E8);
                            } else {
                                func_80057A50(0x28, 0x64, &D_800EB5F0, D_801625E8);
                            }
                        }
                    }
                }
                goto block_104;
            } else {
                phi_a0 = gEnableDebugMode;
                if (((*(void *)0x800DC4BC)->unk6 & 0x20) != 0) {
                    phi_a0 = gEnableDebugMode;
                    if (((*(void *)0x800DC4BC)->unk4 & 0x8000) != 0) {
                        phi_a0 = gEnableDebugMode;
                        if (((*(void *)0x800DC4BC)->unk4 & 0x4000) != 0) {
                            D_800DC514 = (u16)1U;
                            phi_a0 = gEnableDebugMode;
                        }
                    }
                }
            }
        }
    }
    if (phi_a0 == 0) {
        gEnableResourceMeters = 0;
    } else {
        if (gEnableResourceMeters != 0) {
            resource_display(phi_a0);
            if ((D_800DC4BC->unk4 & 0x20) == 0) {
                if ((D_800DC4BC->unk4 & 0x10) != 0) {
                    if ((D_800DC4BC->unk6 & 0x4000) != 0) {
                        gEnableResourceMeters = 0;
                    }
                }
            }
        } else {
            if ((D_800DC4BC->unk4 & 0x20) == 0) {
                if ((D_800DC4BC->unk4 & 0x10) != 0) {
                    if ((D_800DC4BC->unk6 & 0x4000) != 0) {
                        gEnableResourceMeters = 1;
                    }
                }
            }
        }
    }
    func_802A4300();
    func_800591B4();
    func_80093E20();
    temp_v0 = gDisplayListHead;
    gDisplayListHead = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0;
    temp_v0->unk0 = 0xE9000000;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk4 = 0;
    temp_v0_2->unk0 = 0xB8000000;
    return temp_v0_2;
}
#else
GLOBAL_ASM("asm/non_matchings/main/func_8000142C.s")
#endif

#ifdef MIPS_TO_C
// Cannot match until data compilable
void func_80001ECC(void) {
    
    switch (D_800DC50C) {
        case 7:
            func_80001404();
            break;
        case 0:
        case 1:
        case 2:
        case 3:
            osViBlack(0);
            func_800B0350();
            func_80000CA8();
            func_80094A64(gGfxPool);
            break;
        case 4:
            func_8000142C();
            break;
        case 5:
            func_80281548();
            break;
        case 9:
            func_802802AC();
            // Duplicate return node #7. Try simplifying control flow for better match
            break;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/main/func_80001ECC.s")
#endif

void interrupt_gfx_sptask(void) {
    if (gActiveSPTask->task.t.type == M_GFXTASK) {
        gActiveSPTask->state = SPTASK_STATE_INTERRUPTED;
        osSpTaskYield();
    }
}

// likely receive_new_tasks from SM64
#ifdef MIPS_TO_C
// generated by mips_to_c commit cae1414eb1bf34873a831a523692fe29870a6f3b
s32 func_80001FAC(void) {
    void *sp40;
    s32 temp_ret;
    s32 temp_ret_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 phi_return;

    temp_ret = osRecvMesg(&D_8014EFD0, &sp40, 0);
    phi_return = temp_ret;
    if (temp_ret != -1) {
loop_2:
        sp40->unk48 = 0;
        if (sp40->unk0 != 1) {
            if (sp40->unk0 == 2) {
                D_800DC4B4 = sp40;
            }
        } else {
            sNextDisplaySPTask = sp40;
        }
        temp_ret_2 = osRecvMesg(&D_8014EFD0, &sp40, 0);
        phi_return = temp_ret_2;
        if (temp_ret_2 != -1) {
            goto loop_2;
        }
    }
    if (sCurrentAudioSPTask == 0) {
        temp_v0 = D_800DC4B4;
        phi_return = temp_v0;
        if (temp_v0 != 0) {
            sCurrentAudioSPTask = temp_v0;
            D_800DC4B4 = 0;
            phi_return = temp_v0;
        }
    }
    if (sCurrentDisplaySPTask == 0) {
        temp_v0_2 = sNextDisplaySPTask;
        phi_return = temp_v0_2;
        if (temp_v0_2 != 0) {
            sCurrentDisplaySPTask = temp_v0_2;
            sNextDisplaySPTask = 0;
            phi_return = temp_v0_2;
        }
    }
    return phi_return;
}
#else
// suppress warning until matching
s32 func_80001FAC(void);

GLOBAL_ASM("asm/non_matchings/main/func_80001FAC.s")
#endif

// likely set_vblank_handler from SM64
void func_800020D8(s32 arg0, struct VblankHandler *arg1, OSMesgQueue *arg2, OSMesg *arg3) {
    arg1->queue = arg2;
    arg1->msg = arg3;
    switch (arg0) {
        case 1:
            gVblankHandler1 = arg1;
            break;
        case 2:
            gVblankHandler2 = arg1;
            break;
    }
}

void start_gfx_sptask(void) {
    if (gActiveSPTask == NULL && sCurrentDisplaySPTask != NULL
        && sCurrentDisplaySPTask->state == SPTASK_STATE_NOT_STARTED) {
        profiler_log_gfx_time(TASKS_QUEUED);
        start_sptask(M_GFXTASK);
    }
}

// Similar to handle_vblank from SM64
void func_80002168(void) {
    D_800DC594 += D_800EB640;
    sNumVBlanks++;

    func_80001FAC();

    if (sCurrentAudioSPTask != NULL) {
        if (gActiveSPTask != NULL) {
            interrupt_gfx_sptask();
        } else {
            profiler_log_vblank_time();
            start_sptask(M_AUDTASK);
        }
    } else {
        if (gActiveSPTask == NULL && sCurrentDisplaySPTask != NULL
                && sCurrentDisplaySPTask->state != 3) {
                    profiler_log_gfx_time(0);
                    start_sptask(M_GFXTASK);
                }
            }
    if (gVblankHandler1 != NULL) {
        osSendMesg(gVblankHandler1->queue, gVblankHandler1->msg, 0);
    }
    if (gVblankHandler2 != NULL) {
        osSendMesg(gVblankHandler2->queue, gVblankHandler2->msg, 0);
    }
}

// likely handle_dp_complete from SM64
void func_80002284(void) {
    if (sCurrentDisplaySPTask->msgqueue != 0) {
        osSendMesg(sCurrentDisplaySPTask->msgqueue, sCurrentDisplaySPTask->msg, OS_MESG_NOBLOCK);
    }
    profiler_log_gfx_time(RDP_COMPLETE);
    sCurrentDisplaySPTask->state = SPTASK_STATE_FINISHED_DP;
    sCurrentDisplaySPTask = NULL;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit ffee479fae41a1cdc3e454e9b9d75bbd226a160f
void *func_800022DC(void) {
    void *sp1C;
    s32 temp_a0;
    void *temp_a3;
    void *phi_a3;
    void *phi_return;

    temp_a3 = gActiveSPTask;
    gActiveSPTask = NULL;
    if (temp_a3->unk48 == 2) {
        sp1C = temp_a3;
        if (osSpTaskYielded(temp_a3, temp_a3) == 0) {
            temp_a3->unk48 = 3;
            profiler_log_gfx_time(1, temp_a3);
        }
        profiler_log_vblank_time();
        return start_sptask(2);
    }
    temp_a3->unk48 = 3;
    if (temp_a3->unk0 == 2) {
        sp1C = temp_a3;
        profiler_log_vblank_time(temp_a3, temp_a3);
        phi_a3 = temp_a3;
        phi_return = sCurrentDisplaySPTask;
        if (sCurrentDisplaySPTask != 0) {
            phi_a3 = temp_a3;
            phi_return = sCurrentDisplaySPTask;
            if (sCurrentDisplaySPTask->unk48 != 3) {
                if (sCurrentDisplaySPTask->unk48 != 2) {
                    sp1C = temp_a3;
                    profiler_log_gfx_time(0, temp_a3);
                }
                sp1C = temp_a3;
                phi_a3 = temp_a3;
                phi_return = start_sptask(1, temp_a3);
            }
        }
        sCurrentAudioSPTask = 0;
        temp_a0 = phi_a3->unk40;
        if (temp_a0 != 0) {
            return osSendMesg(temp_a0, phi_a3->unk44, 0, phi_a3);
        }
    } else {
        phi_return = profiler_log_gfx_time(1, temp_a3);
    }
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/main/func_800022DC.s")
#endif

#ifdef MIPS_TO_C
// generated by mips_to_c commit cae1414eb1bf34873a831a523692fe29870a6f3b
/*
void thread3_video(void *arg0) {
    u64 *temp_v0;
    s32 i;
    gPhysicalFramebuffers[0] = (uintptr_t *) &gFramebuffer0;
    gPhysicalFramebuffers[1] = (uintptr_t *) &gFramebuffer1;
    gPhysicalFramebuffers[2] = (uintptr_t *) &gFramebuffer2;
    //phi_v0 = &gFramebuffer1;
//loop_1:
    // potential unrolled loop?
    temp_v0 = &gFramebuffer1[0];
    for (i = 0; i < gFramebuffer2; i++) {
        temp_v0[i] = 0;
    }

    //if (gFramebuffer1 != &gFramebuffer2) {
    //    goto loop_1;
    //}
    setup_mesg_queues();
    init_game();
    create_thread(&D_8015AB80, 4, &thread4_audio, 0, &D_8015CD30, 0x14);
    osStartThread(&D_8015AB80);
    create_thread(&D_801589D0, 5, &thread5_game_logic, 0, &D_8015AB80, 0xA);
    osStartThread(&D_801589D0);

    // manual work
    while (1) {
        OSMesg msg;
        osRecvMesg(&gIntrMesgQueue, &msg, OS_MESG_BLOCK);
        switch ((u32) msg) {
            case MESG_SP_COMPLETE:
                func_800022DC();
                break;
            case MESG_DP_COMPLETE:
                func_80002284();
                break;
            case MESG_VI_VBLANK:
                func_80002168();
                break;
            case MESG_START_GFX_SPTASK:
                start_gfx_sptask();
                break;
        }
    }
}
*/
#else
GLOBAL_ASM("asm/non_matchings/main/thread3_video.s")
#endif

void func_800025D4(void) {
    func_80091B78();
    D_800DC52C = 0;
    func_802A4D18();
}

void func_80002600(void) {
    func_80091B78();
    D_800DC52C = 0;
    func_802A4D18();
}

void func_8000262C(void) {
    func_80091B78();
    D_800DC52C = 0;
    func_802A4D18();
}

void func_80002658(void) {
    func_80091B78();
    D_800DC52C = 0;
    func_802A4D18();
}

#ifdef MIPS_TO_C
void func_80002684(void) {
    switch (D_800DC50C) {
        case 0:
            func_80002658();
            gCurrentlyLoadedCourseId = 255;
            break;
        case 1:
            func_800025D4();
            gCurrentlyLoadedCourseId = 255;
            break;
        case 2:
            func_80002600();
            gCurrentlyLoadedCourseId = 255;
            break;
        case 3:
            func_8000262C();
            gCurrentlyLoadedCourseId = 255;
            break;
        case 4:
            func_800010CC();
            func_80002A18();
            break;
        case 5:
            gCurrentlyLoadedCourseId = 255;
            func_8000105C();
            load_ending_sequence_royalraceway();
            break;
        case 9:
            gCurrentlyLoadedCourseId = 255;
            func_800010CC();
            func_8000105C();
            func_80280420();
            // Duplicate return node #9. Try simplifying control flow for better match
            break;
        }
}

#else
GLOBAL_ASM("asm/non_matchings/main/func_80002684.s")
#endif

extern OSMesg* D_8014F008;
extern OSMesg* D_8014F00C;
extern s32 D_8014EF48;
extern s32 D_800DC600;
extern s32 D_8015F8B8, D_8015F8BC, D_8015F8C0, D_8015F8C4, D_8015F8C8, D_8015F8CC;

void thread5_game_logic(s32 arg0) {
    osCreateMesgQueue(&D_8014EF88, &D_8014F00C, 1);
    osCreateMesgQueue(&D_8014EF70, &D_8014F008, 1);
    init_controllers();
    if (D_8015011C == 0) {
        func_80003010();
    }
    func_800020D8(2, &D_8014EF48, &D_8014EF70, (OSMesg) 1);
    D_8015F8B8 = (s32) D_800DC600;
    D_8015F8BC = (s32) (D_800DC600 + 2);
    D_8015F8C0 = (s32) (D_800DC600 + 0xB);
    D_8015F8C4 = (s32) (D_800DC600 + 0x17);
    D_8015F8C8 = (s32) (D_800DC600 + 0x19);
    D_8015F8CC = (s32) (D_800DC600 + 0x1C);
    rendering_init();
    read_controllers();
    func_800C5CB8();
loop_3:
    func_800CB2C4();
    if (D_800DC524 != D_800DC50C) {
        D_800DC50C = (s32) D_800DC524;
        func_80002684();
    }
    profiler_log_thread5_time(0);
    config_gfx_pool();
    read_controllers();
    func_80001ECC();
    func_80000CE8();
    display_and_vsync();
    goto loop_3;
}

void thread4_audio(UNUSED s32 arg0) {
    UNUSED u32 unused[3];
    audio_init();
    osCreateMesgQueue(&sSoundMesgQueue, &sSoundMesgBuf, 1);
    func_800020D8(1, &sSoundVblankHandler, &sSoundMesgQueue, (OSMesg) 0x200);
    while (TRUE) {
        OSMesg msg;
        struct SPTask *spTask;

        osRecvMesg(&sSoundMesgQueue, &msg, 1);
        profiler_log_thread4_time();
        spTask = create_next_audio_frame_task();
        if (spTask != NULL) {
            func_80000C0C(spTask);
        }
        profiler_log_thread4_time();
    }
}
