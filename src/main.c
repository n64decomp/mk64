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
#include <defines.h>
#include "framebuffers.h"

// Declarations (not in this file)
void func_8008C214(void);
void func_80091B78(void);
void func_802A4D18(void);
void move_segment_table_to_dmem(void);
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

extern void func_80290B14();
extern void func_80057A50(s32 arg0, s32 arg1, char arg2[8], s16 arg3);

struct SPTask *create_next_audio_frame_task(void);


extern void dma_copy(u8 *dest, u8 *arg1, u32 size);
extern s32 func_802A7D70(u8 *arg0, u8 *arg1);
extern void func_802A7CF0(u32 arg0, u32 arg1);

extern s32 D_800DC524;
extern s32 D_800DC52C;


extern f32 D_800DC594;

struct VblankHandler *gVblankHandler1 = NULL;
struct VblankHandler *gVblankHandler2 = NULL;

struct SPTask *gActiveSPTask = NULL;
struct SPTask *sCurrentAudioSPTask = NULL;
struct SPTask* sCurrentDisplaySPTask = NULL;
struct SPTask* D_800DC4B4 = NULL;
struct SPTask* sNextDisplaySPTask = NULL;


struct Controller gControllers[8];
struct Controller *gControllerOne = &gControllers[0];   // 0x800DC4BC
struct Controller *gControllerTwo = &gControllers[1];   // 0x800DC4C0
struct Controller *gControllerThree = &gControllers[2]; // 0x800DC4C4
struct Controller *gControllerFour = &gControllers[3];  // 0x800DC4C8
struct Controller *gControllerFive = &gControllers[4];  // 0x800DC4CC
struct Controller *gControllerSix = &gControllers[5];   // 0x800DC4D0
struct Controller *gControllerSeven = &gControllers[6]; // 0x800DC4D4
struct Controller *gControllerEight = &gControllers[7]; // 0x800DC4D8

Player gPlayers[8];
Player *gPlayerOne = &gPlayers[0];   // 0x800DC4DC
Player *gPlayerTwo = &gPlayers[1];   // 0x800DC4E0
Player *gPlayerThree = &gPlayers[2]; // 0x800DC4E4
Player *gPlayerFour = &gPlayers[3];  // 0x800DC4E8
Player *gPlayerFive = &gPlayers[4];  // 0x800DC4EC
Player *gPlayerSix = &gPlayers[5];   // 0x800DC4F0
Player *gPlayerSeven = &gPlayers[6]; // 0x800DC4F4
Player *gPlayerEight = &gPlayers[7]; // 0x800DC4F8

Player *gPlayerOneCopy = &gPlayers[0];   // 0x800DC4FC
Player *gPlayerTwoCopy = &gPlayers[1];   // 0x800DC500
Player *gPlayerThreeCopy = &gPlayers[2]; // 0x800DC504
Player *gPlayerFourCopy = &gPlayers[3];  // 0x800DC508

s32 D_800FD850[3];
struct GfxPool gGfxPools[2];
struct GfxPool *gGfxPool;

s32 gfxPool_padding; // is this necessary?
struct VblankHandler D_8014EF48;
struct VblankHandler sSoundVblankHandler;
OSMesgQueue gDmaMesgQueue, D_8014EF70, D_8014EF88, unused_gMsgQueue, gIntrMesgQueue, D_8014EFD0;
OSMesgQueue sSoundMesgQueue;
OSMesg sSoundMesgBuf;
OSMesg D_8014F004, D_8014F008;
OSMesg D_8014F00C[1];
UNUSED OSMesg D_8014F010, D_8014F014;
OSMesg D_8014F018[16], D_8014F058[16];
OSMesg gMainReceivedMesg;
OSIoMesg gDmaIoMesg;
OSMesgQueue gSIEventMesgQueue;
OSMesg gSIEventMesgBuf[3];

OSContStatus gControllerStatuses[4];

OSContPad gControllerPads[4];
u8 gControllerBits;

u8 D_8014F110[4096];
u16 D_80150110;
u16 D_80150112;
s32 D_80150114;
f32 D_80150118;
u16 D_8015011C;
u16 D_8015011E;

s32 D_80150120;
s32 gMenuSelectionFromQuit;
UNUSED s32 D_80150128;
UNUSED s32 D_8015012C;
s32 D_80150130;
s32 D_80150134;
s32 D_80150138;
s32 D_8015013C;
UNUSED s32 D_80150140;
UNUSED s32 D_80150144;
f32 D_80150148;
f32 D_8015014C;
f32 D_80150150;
UNUSED f32 D_80150154;

struct D_80150158 gD_80150158[16];
uintptr_t gSegmentTable[16];
Gfx *gDisplayListHead;
struct SPTask *gGfxSPTask;
s32 D_801502A0;
s32 D_801502A4;
uintptr_t gPhysicalFramebuffers[3];
u32 D_801502B4;
UNUSED u32 D_801502B8;
UNUSED u32 D_801502BC;
s32 D_801502C0[2064];

u16 D_80152300[4];
u16 D_80152308;

UNUSED OSThread paddingThread;
OSThread gIdleThread;
ALIGNED8 u8 gIdleThreadStack[0x2000]; // Based on sm64 and padding between bss symbols.
OSThread gVideoThread;
ALIGNED8 u8 gVideoThreadStack[0x2000];
OSThread D_80156820;
ALIGNED8 u8 D_8015680_Stack[0x2000];
OSThread D_801589D0;
ALIGNED8 u8 D_801589D0_Stack[0x2000];
OSThread D_8015AB80;
ALIGNED8 u8 D_8015AB80_Stack[0x2000];
OSThread D_8015CD30;
ALIGNED8 u8 D_8015CD30_Stack[0x1000];

u8 gGfxSPTaskYieldBuffer[4352];
u32 gGfxSPTaskStack[256];
OSMesg D_8015F3E0[32];
OSMesgQueue D_8015F460;

extern s16 sController1Unplugged;

s32 D_800DC50C = 0xffff;
u16 D_800DC510 = 0;
u16 D_800DC514 = 0;
u16 D_800DC518 = 0;
u16 D_800DC51C = 0;
u16 gEnableDebugMode = 0;
s32 D_800DC524 = 7; // = COURSE_DATA_MENU?;
UNUSED s32 D_800DC528 = 1;
s32 D_800DC52C = 0;

s32 gScreenModeSelection[2] = {0};
s32 gPlayerCountSelection1 = 2;

s32 gModeSelection = GRAND_PRIX;
s32 D_800DC540 = 0;
s32 D_800DC544 = 0;
s32 gCCSelection = CC_50;
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


extern u64 rspbootTextStart[], rspbootTextEnd[];
extern u64 gspF3DEXTextStart[], gspF3DEXTextEnd[];
extern u64 gspF3DLXTextStart[], gspF3DLXTextEnd[];
extern u64 gspF3DEXDataStart[];
extern u64 gspF3DLXDataStart[];

extern u64 gGfxSPTaskOutputBuffer[];
extern u32 gGfxSPTaskOutputBufferSize;

extern u32 gPrevLoadedAddress;
extern u32 D_8015F734;
extern u8 _data_segment2SegmentRomStart[];
extern u8 _data_segment2SegmentRomEnd[];
extern u8 _common_texturesSegmentRomStart[];
extern u8 _common_texturesSegmentRomEnd[];
extern u8 _data_802BA370SegmentRomStart[];
extern u32 gHeapEndPtr;
extern u32 *D_801978D0;



//extern u16 gFramebuffer0;
//extern u16 gFramebuffer1;
//extern u16 gFramebuffer2;

extern void thread5_game_logic();
extern void thread4_audio();

extern s16 gCurrentlyLoadedCourseId;
extern s16 gCurrentCourseId;

extern u16 D_80164AF0;
extern u16 D_800DC5FC;
extern u16 gIsInQuitToMenuTransition;


extern s32 D_8015F788;
extern s16 D_801625E8;
extern struct UnkStruct_800DC5EC *D_800DC5EC;


extern Camera *camera1;
extern Camera *camera2;
extern Camera *camera3;
extern Camera *camera4;

extern u16 D_800DC5B0;
extern s32 gPlayerWinningIndex;

extern s32 gEnableResourceMeters;

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
    osCreateMesgQueue(&gDmaMesgQueue, &D_8014F004, 1);
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
    if (D_800DC50C != RACING || gPlayerCountSelection1 - 1 == 0) {
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
    gGfxSPTask->task.t.data_ptr = (u64 *) gGfxPool->buffer;
    gGfxSPTask->task.t.data_size = (gDisplayListHead - gGfxPool->buffer) * sizeof(Gfx);
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

void func_80000934(s32 arg0) {
    struct Controller *controller = &gControllers[arg0];
    u16 phi_a0;

    if (sController1Unplugged != 0) {
        return;
    }

    controller->rawStickX = gControllerPads[arg0].stick_x;
    controller->rawStickY = gControllerPads[arg0].stick_y;

    if ((gControllerPads[arg0].button & 4) != 0) {
        gControllerPads[arg0].button |= Z_TRIG;
    }
    controller->buttonPressed = gControllerPads[arg0].button & (gControllerPads[arg0].button ^ controller->button);
    controller->buttonDepressed = controller->button & (gControllerPads[arg0].button ^ controller->button);
    controller->button = gControllerPads[arg0].button;

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

void read_controllers(void) {
    OSMesg sp1C;

    osContStartReadData(&gSIEventMesgQueue);
    osRecvMesg(&gSIEventMesgQueue, &sp1C, 1);
    osContGetReadData(&gControllerPads);
    func_80000934(0);
    func_80000934(1);
    func_80000934(2);
    func_80000934(3);
    gControllerFive->button = (s16) (((gControllerOne->button | gControllerTwo->button) | gControllerThree->button) | gControllerFour->button);
    gControllerFive->buttonPressed = (s16) (((gControllerOne->buttonPressed | gControllerTwo->buttonPressed) | gControllerThree->buttonPressed) | gControllerFour->buttonPressed);
    gControllerFive->buttonDepressed = (s16) (((gControllerOne->buttonDepressed | gControllerTwo->buttonDepressed) | gControllerThree->buttonDepressed) | gControllerFour->buttonDepressed);
    gControllerFive->stickDirection = (s16) (((gControllerOne->stickDirection | gControllerTwo->stickDirection) | gControllerThree->stickDirection) | gControllerFour->stickDirection);
    gControllerFive->stickPressed = (s16) (((gControllerOne->stickPressed | gControllerTwo->stickPressed) | gControllerThree->stickPressed) | gControllerFour->stickPressed);
    gControllerFive->stickDepressed = (s16) (((gControllerOne->stickDepressed | gControllerTwo->stickDepressed) | gControllerThree->stickDepressed) | gControllerFour->stickDepressed);
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
    move_segment_table_to_dmem();
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
    set_segment_base_addr(1, gGfxPool);
    gGfxSPTask = &gGfxPool->spTask;
    gDisplayListHead = gGfxPool->buffer;
    func_80000CA8();
    clear_framebuffer(0);
    func_80000CE8();
    send_display_list(&gGfxPool->spTask);
    sRenderingFramebuffer++;
    gGlobalTimer++;
}

void config_gfx_pool(void) {
    gGfxPool = &gGfxPools[gGlobalTimer & 1];
    set_segment_base_addr(1, gGfxPool);
    gDisplayListHead = gGfxPool->buffer;
    gGfxSPTask = &gGfxPool->spTask;
}

void display_and_vsync(void) {
    profiler_log_thread5_time(2);
    osRecvMesg(&D_8014EF88, &gMainReceivedMesg, 1);
    send_display_list(&gGfxPool->spTask);
    profiler_log_thread5_time(3);
    osRecvMesg(&D_8014EF70, &gMainReceivedMesg, 1);
    osViSwapBuffer((void *) PHYSICAL_TO_VIRTUAL(gPhysicalFramebuffers[sRenderedFramebuffer]));
    profiler_log_thread5_time(4);
    osRecvMesg(&D_8014EF70, &gMainReceivedMesg, 1);
    crash_screen_set_framebuffer(gPhysicalFramebuffers[sRenderedFramebuffer]);
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
        osPiStartDma(&gDmaIoMesg, 0, 0, arg1, dest, 0x100, &gDmaMesgQueue);
        osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, 1);
        size -= 0x100;
        arg1 += 0x100;
        dest += 0x100;
    }
    if (size != 0) {
        osPiStartDma(&gDmaIoMesg, 0, 0, arg1, dest, size, &gDmaMesgQueue);
        osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, 1);
    }
}

// Resembles setup_game_memory from SM64
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
    osPiStartDma(&gDmaIoMesg, 0, 0, &_data_802BA370SegmentRomStart, SEG_802BA370, 0x5810, &gDmaMesgQueue);
    osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, 1);
    set_segment_base_addr(2, func_802A7D70(&_data_segment2SegmentRomStart, &_data_segment2SegmentRomEnd));
    sp2C = (u32)&_common_texturesSegmentRomEnd - (u32)&_common_texturesSegmentRomStart;
    sp2C = ALIGN16(sp2C);
    texture_seg = SEG_8028DF00-sp2C;
    osPiStartDma(&gDmaIoMesg, 0, 0, &_common_texturesSegmentRomStart, texture_seg, sp2C, &gDmaMesgQueue);
    osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, 1);

    sp40 = *(u32 *)(texture_seg + 4);
    sp40 = ALIGN16(sp40);
    sp38 = gPrevLoadedAddress;
    mio0decode(texture_seg, sp38);
    set_segment_base_addr(0xD, sp38);

    gPrevLoadedAddress += sp40;
    D_8015F734 = gPrevLoadedAddress;
}

void func_80001404(void) {
    D_800DC524 = 0; // = START_MENU_FROM_QUIT?
    clear_framebuffer(0);
}

void func_8000142C(void) {
    s16 i;
    s32 pad;
    u16 temp_v0;
    f32 pad2 = 0;

    D_80150112 = 0;
    D_80164AF0 = 0;
    if (D_800DC5FC != 0) {
        func_80290B14();
    }
    if (gIsInQuitToMenuTransition != 0) {
        func_802A38B4(); return;
    }

    if (sNumVBlanks >= 6) {
        sNumVBlanks = 5;
    }
    if (sNumVBlanks < 0) {
        sNumVBlanks = 1;
    }
    func_802A4EF4();

    switch(D_800DC52C) {
        case 0:
            D_80150114 = 2;
            func_80005F44();
            if (D_800DC5FC == 0) {

                for (i = 0; i < D_80150114; i++) {
                    if (D_8015011E) {
                        gCourseTimer += 0.01666666;
                    }
                    func_802909F0();
                    func_802A0D54();
                    func_800382DC();
                    func_8001EE98(gPlayerOneCopy, camera1, 0);
                    func_80028F70();
                    func_8028F474();
                    func_80059AC8();
                    update_simple_objects();
                    func_802966A0();
                    func_8028FCBC();

                }
                func_80022744();
            }
            func_8005A070();
            sNumVBlanks = 0;
            profiler_log_thread5_time(1);
            D_8015F788 = 0;
            func_802A59A4();
            if (gEnableDebugMode == 0) {
                D_800DC514 = 0;
            } else {
                if (D_800DC514 != 0) {

                    if ((gControllerOne->buttonPressed & R_TRIG) &&
                        (gControllerOne->button & A_BUTTON) &&
                        (gControllerOne->button & B_BUTTON)) {
                            D_800DC514 = 0;
                    }

                    temp_v0 = camera1->rotX2;
                    D_801625E8 = D_800DC5EC->pathCounter;
                    if (temp_v0 < 0x2000) {
                        func_80057A50(40, 100, "SOUTH  ", D_801625E8);
                    } else if (temp_v0 < 0x6000) {
                        func_80057A50(40, 100, "EAST   ", D_801625E8);
                    } else if (temp_v0 < 0xA000) {
                        func_80057A50(40, 100, "NORTH  ", D_801625E8);
                    } else if (temp_v0 < 0xE000) {
                        func_80057A50(40, 100, "WEST   ", D_801625E8);
                    } else {
                        func_80057A50(40, 100, "SOUTH  ", D_801625E8);
                    }

                } else {
                    if ((gControllerOne->buttonPressed & L_TRIG) &&
                        (gControllerOne->button & A_BUTTON) &&
                        (gControllerOne->button & B_BUTTON)) {
                            D_800DC514 = 1;
                    }
                }
            }
            break;

        case 2:
            if (gCurrentCourseId == COURSE_DK_JUNGLE) {
                D_80150114 = 3;
            } else {
                D_80150114 = 2;
            }
            if (D_800DC5FC == 0) {
                    for (i = 0; i < D_80150114; i++) {
                        if (D_8015011E != 0) {
                            gCourseTimer += 0.01666666;
                        }
                        func_802909F0();
                        func_802A0D54();
                        func_800382DC();
                        func_8001EE98(gPlayerOneCopy, camera1, 0);
                        func_80029060();
                        func_8001EE98(gPlayerTwoCopy, camera2, 1);
                        func_80029150();
                        func_8028F474();
                        func_80059AC8();
                        update_simple_objects();
                        func_802966A0();
                        func_8028FCBC();
                    }
                    func_80022744();
                }
                func_8005A070();
                profiler_log_thread5_time(1);
                sNumVBlanks = 0;
                move_segment_table_to_dmem();
                func_802A3E3C();
                if (D_800DC5B0 != 0) {
                    func_802A41D4();
                }
                D_8015F788 = 0;
                if (gPlayerWinningIndex == 0) {
                    func_802A5FAC();
                    func_802A5CB4();
                } else {
                    func_802A5CB4();
                    func_802A5FAC();
                }
            break;

        case 1:

            if (gCurrentCourseId == COURSE_DK_JUNGLE) {
                D_80150114 = 3;
            } else {
                D_80150114 = 2;
            }

            if (D_800DC5FC == 0) {
                    for (i = 0; i < D_80150114; i++) {
                        if (D_8015011E != 0) {
                            gCourseTimer += 0.01666666;
                        }
                        func_802909F0();
                        func_802A0D54();
                        func_800382DC();
                        func_8001EE98(gPlayerOneCopy, camera1, 0);
                        func_80029060();
                        func_8001EE98(gPlayerTwoCopy, camera2, 1);
                        func_80029150();
                        func_8028F474();
                        func_80059AC8();
                        update_simple_objects();
                        func_802966A0();
                        func_8028FCBC();
                    }
                func_80022744();
            }
            profiler_log_thread5_time(1);
            sNumVBlanks = (u16)0;
            func_8005A070();
            move_segment_table_to_dmem();
            func_802A3E3C();
            if (D_800DC5B0 != 0) {
                func_802A41D4();
            }
            D_8015F788 = 0;
            if (gPlayerWinningIndex == 0) {
                func_802A65B8();
                func_802A62A4();
            } else {
                func_802A62A4();
                func_802A65B8();
            }

            break;

        case 3:
            if (gPlayerCountSelection1 == 3) {
                switch(gCurrentCourseId) {
                    case COURSE_BOWSER_CASTLE:
                    case COURSE_MOO_MOO_FARM:
                    case COURSE_SKYSCRAPER:
                    case COURSE_DK_JUNGLE:
                        D_80150114 = 3;
                        break;
                    default:
                        D_80150114 = 2;
                        break;
                }
            } else {
                switch(gCurrentCourseId) {
                    case COURSE_BLOCK_FORT:
                    case COURSE_DOUBLE_DECK:
                    case COURSE_BIG_DONUT:
                        D_80150114 = 2;
                        break;
                    case COURSE_DK_JUNGLE:
                        D_80150114 = 4;
                        break;
                    default:
                        D_80150114 = 3;
                        break;
                }
            }
            if (D_800DC5FC == 0) {
                for (i = 0; i < D_80150114; i++) {
                    if (D_8015011E != 0) {
                        gCourseTimer += 0.01666666;
                    }
                    func_802909F0();
                    func_802A0D54();
                    func_800382DC();
                    func_8001EE98(gPlayerOneCopy, camera1, 0);
                    func_80029158();
                    func_8001EE98(gPlayerTwo, camera2, 1);
                    func_800291E8();
                    func_8001EE98(gPlayerThree, camera3, 2);
                    func_800291F0();
                    func_8001EE98(gPlayerFour, camera4, 3);
                    func_800291F8();
                    func_8028F474();
                    func_80059AC8();
                    update_simple_objects();
                    func_802966A0();
                    func_8028FCBC();
                }
                func_80022744();
            }
        func_8005A070();
        sNumVBlanks = 0;
        profiler_log_thread5_time(1);
        move_segment_table_to_dmem();
        func_802A3E3C();
        if (D_800DC5B0 != 0) {
            func_802A41D4();
        }
        D_8015F788 = 0;
        if (gPlayerWinningIndex == 0) {
            func_802A6BB0();
            func_802A6E94();
            func_802A7178();
            func_802A68CC();
        } else if (gPlayerWinningIndex == 1) {
            func_802A68CC();
            func_802A6E94();
            func_802A7178();
            func_802A6BB0();
        } else if (gPlayerWinningIndex == 2) {
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
        break;
    }

    if (gEnableDebugMode == 0) {
        gEnableResourceMeters = 0;
    } else {
        if (gEnableResourceMeters != 0) {
            resource_display();
            if ((!(gControllerOne->button & L_TRIG)) &&
                (gControllerOne->button & R_TRIG) &&
                (gControllerOne->buttonPressed & B_BUTTON)) {
                    gEnableResourceMeters = 0;
            }
        } else {
            if ((!(gControllerOne->button & L_TRIG)) &&
                (gControllerOne->button & R_TRIG) &&
                (gControllerOne->buttonPressed & B_BUTTON)) {
                        gEnableResourceMeters = 1;
            }
        }
    }
    func_802A4300();
    func_800591B4();
    func_80093E20();
    gDPFullSync(gDisplayListHead++);
    gSPEndDisplayList(gDisplayListHead++);
}

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
            break;
    }
}

void interrupt_gfx_sptask(void) {
    if (gActiveSPTask->task.t.type == M_GFXTASK) {
        gActiveSPTask->state = SPTASK_STATE_INTERRUPTED;
        osSpTaskYield();
    }
}

void func_80001FAC(void) {
    s32 pad;
    struct SPTask *sp40;

    while(osRecvMesg(&D_8014EFD0, &sp40, 0) != -1) {
        sp40->state = 0;
        switch(sp40->task.t.type) {
            case 2:
                D_800DC4B4 = sp40;
                break;
            case 1:
                sNextDisplaySPTask = sp40;
                break;
        }
    }

    if (sCurrentAudioSPTask == 0 && D_800DC4B4 != 0) {
        sCurrentAudioSPTask = D_800DC4B4;
        D_800DC4B4 = 0;
    }
    if (sCurrentDisplaySPTask == 0 && sNextDisplaySPTask != 0) {
        sCurrentDisplaySPTask = sNextDisplaySPTask;
        sNextDisplaySPTask = 0;
    }
}

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
    D_800DC594 += 0.01666666;
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

void *func_800022DC(void) {
    struct SPTask *temp_a3 = gActiveSPTask;

    gActiveSPTask = NULL;
    if (temp_a3->state == 2) {

        if (osSpTaskYielded(temp_a3) == 0) {
            temp_a3->state = 3;
            profiler_log_gfx_time(1);
        }
        profiler_log_vblank_time();
        start_sptask(2);
    } else {
        temp_a3->state = 3;
        if (temp_a3->task.t.type == 2) {

            profiler_log_vblank_time();

            if (sCurrentDisplaySPTask != 0) {
                if (sCurrentDisplaySPTask->state != 3) {
                    if (sCurrentDisplaySPTask->state != 2) {
                        profiler_log_gfx_time(0);
                    }
                    start_sptask(1);
                }
            }
            sCurrentAudioSPTask = 0;
            if (temp_a3->msgqueue != 0) {
                osSendMesg(temp_a3->msgqueue, temp_a3->msg, 0);
            }
        } else {
            profiler_log_gfx_time(1);
        }
    };
}

void thread3_video(UNUSED void *arg0) {
    s32 pad[2];
    OSMesg msg;
    u64 *temp_v0;
    s32 i;
    s32 pad2[2];

    gPhysicalFramebuffers[0] = (uintptr_t *) &gFramebuffer0;
    gPhysicalFramebuffers[1] = (uintptr_t *) &gFramebuffer1;
    gPhysicalFramebuffers[2] = (uintptr_t *) &gFramebuffer2;

    temp_v0 = &gFramebuffer1;
    for (i = 0; i < 19200; i++) {
        temp_v0[i] = 0;
    }

    setup_mesg_queues();
    init_game();
    create_thread(&D_8015AB80, 4, &thread4_audio, 0, &D_8015AB80_Stack[8192], 0x14);
    osStartThread(&D_8015AB80);
    create_thread(&D_801589D0, 5, &thread5_game_logic, 0, &D_801589D0_Stack[8192], 0xA);
    osStartThread(&D_801589D0);

    while (1) {
        osRecvMesg(&gIntrMesgQueue, &msg, OS_MESG_BLOCK);
        switch ((u32) msg) {
            case MESG_VI_VBLANK:
                func_80002168();
                break;
            case MESG_SP_COMPLETE:
                func_800022DC();
                break;
            case MESG_DP_COMPLETE:
                func_80002284();
                break;
            case MESG_START_GFX_SPTASK:
                start_gfx_sptask();
                break;
        }
    }
}

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
            break;
        }
}

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

    while(1) {
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
    }
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
