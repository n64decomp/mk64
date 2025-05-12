#include <ultra64.h>
#include <macros.h>
#include <mk64.h>
#include <stdarg.h>
#include <string.h>

#include "crash_screen.h"
#include "main.h"

#ifdef CRASH_SCREEN_ENHANCEMENT
#include "debug/crash_screen_enhancement.h"
#endif

OSThread D_80162790;
ALIGNED8 u8 gDebugThreadStack[0x400];
OSMesgQueue D_80162D40;
OSMesg D_80162D58;
u16* pFramebuffer;
s32 sButtonSequenceIndex;

#define DRAW_CODE 0xFFFF
#define CHARACTER_DASH 16

extern void osSetEventMesg(OSEvent, OSMesgQueue*, OSMesg);
extern s32 osRecvMesg(OSMesgQueue*, OSMesg*, s32);

s32 sCounter = 0;

u8 crashScreenFont[][8] = {
#include "textures/crash_screen/crash_screen_font.ia1.inc.c"
};

u16 sCrashScreenButtonSequence[] = { L_TRIG, U_JPAD, L_JPAD,   D_JPAD,   R_JPAD,
                                     R_TRIG, L_TRIG, B_BUTTON, A_BUTTON, DRAW_CODE };

void crash_screen_draw_glyph(u16* framebuffer, s32 x, s32 y, s32 glyph) {
    s32 data;
    s32 ptr;
    s32 i, j;

    for (i = 0; i < 8; i++) {

        data = crashScreenFont[glyph][i];

        for (j = 5; j >= 0; j--) {

            ptr = (y + i) * 320 + (x + j);

            if (data & 1) {
                framebuffer[ptr] = 0xffff;
            }
            data = data >> 1;
        }
    }
}

void crash_screen_draw_square(u16* framebuffer);

#define WHITE_COLOUR 0xFFFF
#define RED_COLOUR 0xF801

// (x,y) of top left pixel of square
#define SQUARE_X 40
#define SQUARE_Y 40

#define SQUARE_SIZE_X 6
#define SQUARE_SIZE_Y 6

// width of the square's border being drawn.
#define BORDER_WIDTH 1

#define SQUARE_X2 SQUARE_X + SQUARE_SIZE_Y
#define SQUARE_Y2 SQUARE_Y + SQUARE_SIZE_X

// Here's to you, Yoshimoto, for writing this stupid function. 3 years. 3 years to match.
void crash_screen_draw_square(u16* framebuffer) {
    s32 h;
    s32 i;
    s32 j;

    for (h = 0; h < 2; h++) {
        for (i = (h * BORDER_WIDTH) + SQUARE_Y; i < (SQUARE_Y2 - (h * BORDER_WIDTH)); i++) {
            for (j = (h * BORDER_WIDTH) + SQUARE_X; j < (SQUARE_X2 - (h * BORDER_WIDTH)); j++) {
                framebuffer[(i * 320) + j] = (h == 0) ? (RED_COLOUR) : (WHITE_COLOUR);
            }
        }
    }

    osWritebackDCacheAll();
    osViSwapBuffer(framebuffer);
}

/**
 * Draws three black boxes then prints crash info in the following format:
 * Line 1: threadId - address of faulted instruction - error code
 * Line 2: Address in the return address register
 * Line 3: Machine code of faulted instruction
 *
 * The R4300i manual discusses exceptions in more depth.
 *
 * @param framebuffer
 * @param faulted thread
 **/

//                     0xRGBA
#define BLACK_COLOUR 0x0001

void crash_screen_draw_info(u16* framebuffer, OSThread* thread) {
    __OSThreadContext* context = &thread->context;
    s32 i, j, x, y, h;
    uintptr_t faultedAddr;
    u32 exception;
    s32 math;
    u32 crashInfo;
    s32 temp;

    // Draw three black boxes
    for (h = 0; h < 3; h++) {

        math = (48 + (sCounter * 24)) + h * 20;

        for (i = 0; i < 16; i++) {
            for (j = 0; j < 120; j++) {
                // Set pixels to black
                framebuffer[((i + math) * 320) + (j + 100)] = BLACK_COLOUR;
            }
        }
    }

    // Draw crash information over the black boxes.
    temp = (sCounter * 24);
    y = temp + 53;
    crash_screen_draw_glyph(framebuffer, 108, y, thread->id & 0xF);
    crash_screen_draw_glyph(framebuffer, 116, y, CHARACTER_DASH);

    // Address of faulted instruction.
    crashInfo = context->pc;

    for (x = 180; x >= 124; x -= 8) {
        crash_screen_draw_glyph(framebuffer, x, y, crashInfo & 0xF);
        crashInfo >>= 4;
    }

    exception = (context->cause >> 2) & 0x1F;
    crash_screen_draw_glyph(framebuffer, 188, y, CHARACTER_DASH);
    crash_screen_draw_glyph(framebuffer, 196, y, exception >> 4);
    crash_screen_draw_glyph(framebuffer, 204, y, exception & 0xF);

    // Address in the Return Address register.
    crashInfo = context->ra;

    for (x = 180; x >= 124; x -= 8) {
        crash_screen_draw_glyph(framebuffer, x, 73, crashInfo & 0xF);
        crashInfo >>= 4;
    }

    // Address of faulted instruction.
    faultedAddr = context->pc & (~3);

    // Ensure the address to the faulted instruction is a memory address.
    //! @bug if this check fails, the ra register is printed a second time.
    if ((faultedAddr > 0x80000000) && (faultedAddr < 0x803FFF7F)) {
        // Cast the address to its value; the faulty machine code.
        crashInfo = *(u32*) faultedAddr;
    }
    for (x = 180; x >= 124; x -= 4) {
        crash_screen_draw_glyph(framebuffer, x, 93, crashInfo & 0xF);
        x -= 4;
        crashInfo >>= 4;
    }
    osWritebackDCacheAll();
    osViSwapBuffer(framebuffer);
}

OSThread* get_faulted_thread(void) {
    OSThread* thread;

    thread = __osGetCurrFaultedThread();
    while (thread->priority != -1) {
        if (thread->priority > OS_PRIORITY_IDLE && thread->priority <= OS_PRIORITY_APPMAX && (thread->flags & 3) != 0) {
            return thread;
        }
        thread = thread->tlnext;
    }
    return NULL;
}

/**
 * @brief Retrieves faulted thread and displays debug info after the user inputs the button sequence.
 * Button sequence: L, Up, Left, Down, Right, R, L, B, A
 **/
void thread9_crash_screen(UNUSED void* arg0) {
    static OSThread* thread;
    OSMesg mesg;

    osSetEventMesg(12, &D_80162D40, (OSMesg) 16);
    osSetEventMesg(10, &D_80162D40, (OSMesg) 16);
    sButtonSequenceIndex = 0;

    while (true) {
        osRecvMesg(&D_80162D40, &mesg, 1);
        thread = get_faulted_thread();

        if (thread) {
            // Run only on the first iteration.
            if (sCounter == 0) {
                crash_screen_draw_square(pFramebuffer);
#ifndef DEBUG
                while (true) {
                    read_controllers();

                    if (!gControllerOne->buttonPressed) {
                        continue;
                    }

                    if (gControllerOne->buttonPressed == sCrashScreenButtonSequence[sButtonSequenceIndex]) {
                        sButtonSequenceIndex++;
                    } else {
                        sButtonSequenceIndex = 0;
                    }

                    // draws crash info when DRAW_CODE is reached
                    if (sCrashScreenButtonSequence[sButtonSequenceIndex] == DRAW_CODE) {
                        break;
                    }
                }
#endif
#if DEBUG
                crash_screen_draw(thread);
#else
                crash_screen_draw_info(pFramebuffer, thread);
#endif
            }
            if (sCounter < 5) {
                sCounter++;
            }
        }
    }
}

void crash_screen_set_framebuffer(u16* framebuffer) {
    pFramebuffer = framebuffer;
}

extern void thread9_crash_screen(void*);

void create_debug_thread(void) {
    osCreateMesgQueue(&D_80162D40, &D_80162D58, 1);
    osCreateThread((OSThread*) &D_80162790, 9, (void*) thread9_crash_screen, 0, &D_80162D40, 0x7F);
}

void start_debug_thread(void) {
    osStartThread(&D_80162790);
}
