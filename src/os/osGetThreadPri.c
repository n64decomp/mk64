#include "libultra_internal.h"

OSPri osGetThreadPri(OSThread *thread) {
    if (thread == NULL) {
        thread = D_800EB3B0;
    }
    return thread->priority;
}
