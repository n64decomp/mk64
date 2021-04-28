#include "libultra_internal.h"

// these don't feel like they belong here
// but it makes the most logical since there was printf data before
// OSThread *D_800EB3A0 = NULL;
// u32 D_80334894 = -1;
// OSThread *__osRunQueue = (OSThread *) &D_800EB3A0;
// OSThread *__osActiveQueue = (OSThread *) &D_800EB3A0;
// OSThread *__osRunningThread = NULL;
// u32 D_803348A4 = 0; // UNKNOWN

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
