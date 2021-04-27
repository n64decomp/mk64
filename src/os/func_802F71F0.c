#include "libultra_internal.h"

void func_802F71F0(void) {
    register u32 s0 = __osDisableInt();
    D_800EB3B0->state = OS_STATE_RUNNABLE;
    __osEnqueueAndYield(&__osRunQueue);
    __osRestoreInt(s0);
}
