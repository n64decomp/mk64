#include "libultra_internal.h"

#ifndef AVOID_UB
OSThread *__osThreadTail = NULL;
u32 __osTest = -1;
OSThread *__osRunQueue = (OSThread *) &__osThreadTail;
OSThread *__osActiveQueue = (OSThread *) &__osThreadTail;
OSThread *__osRunningThread = NULL;
OSThread *__osFaultedThread = NULL;
#else
OSThread_ListHead __osThreadTail_fix = {NULL, -1, (OSThread *) &__osThreadTail_fix, (OSThread *) &__osThreadTail_fix, NULL, 0};
#endif

void __osDequeueThread(OSThread **queue, OSThread *thread) {
    register OSThread **a2;
    register OSThread *a3;
    a2 = queue;  
    a3 = *a2;
    while (a3 != NULL) {
        if (a3 == thread) {
            *a2 = thread->next;
            return;
        }
        a2 = &a3->next;
        a3 = *a2;
    }
}
