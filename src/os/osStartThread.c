#include "libultra_internal.h"

void osStartThread(OSThread *thread) {
    register u32 int_disabled;
    register uintptr_t state;
    int_disabled = __osDisableInt();
    state = thread->state;

    if (state != OS_STATE_STOPPED) {
        if (state == OS_STATE_WAITING) {
            do {
            } while (0);
            thread->state = OS_STATE_RUNNABLE;
            __osEnqueueThread(&__osRunQueue, thread);
        }
    } else {
        if (thread->queue == NULL || thread->queue == &__osRunQueue) {
            thread->state = OS_STATE_RUNNABLE;

            __osEnqueueThread(&__osRunQueue, thread);
        } else {
            thread->state = OS_STATE_WAITING;
            __osEnqueueThread(thread->queue, thread);
            state = (uintptr_t) __osPopThread(thread->queue);
            __osEnqueueThread(&__osRunQueue, (OSThread *) state);
        }
    }
    if (D_800EB3B0 == NULL) {
        __osDispatchThread();
    } else {
        if (D_800EB3B0->priority < __osRunQueue->priority) {
            D_800EB3B0->state = OS_STATE_RUNNABLE;
            __osEnqueueAndYield(&__osRunQueue);
        }
    }
    __osRestoreInt(int_disabled);
}
