#include "libultra_internal.h"

void osSetThreadPri(OSThread *thread, OSPri pri) {
    register u32 int_disabled = __osDisableInt();
    if (thread == NULL) {
        thread = D_800EB3B0;
    }

    if (thread->priority != pri) {
        thread->priority = pri;
        if (thread != D_800EB3B0) {
            if (thread->state != OS_STATE_STOPPED) {
                __osDequeueThread(thread->queue, thread);
                __osEnqueueThread(thread->queue, thread);
            }
        }
        if (D_800EB3B0->priority < D_800EB3A8->priority) {
            D_800EB3B0->state = OS_STATE_RUNNABLE;
            __osEnqueueAndYield(&D_800EB3A8);
        }
    }

    __osRestoreInt(int_disabled);
}
