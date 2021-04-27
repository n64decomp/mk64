#include "libultra_internal.h"

void osDestroyThread(OSThread *thread) {
    register s32 int_disabled;
    register OSThread *s1;
    register OSThread *s2;

    int_disabled = __osDisableInt();

    if (thread == NULL) {
        thread = D_800EB3B0;
    } else if (thread->state != OS_STATE_STOPPED) {
        __osDequeueThread(thread->queue, thread);
    }

    if (D_800EB3AC == thread) {
        D_800EB3AC = D_800EB3AC->tlnext;
    } else {
        s1 = D_800EB3AC;
        s2 = s1->tlnext;
        while (s2 != NULL) {
            if (s2 == thread) {
                s1->tlnext = thread->tlnext;
                break;
            } else {
                s1 = s2;
                s2 = s1->tlnext;
            }
        }
    }

    if (thread == D_800EB3B0) {
        __osDispatchThread();
    }

    __osRestoreInt(int_disabled);
}
