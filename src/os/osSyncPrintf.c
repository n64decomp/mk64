#include "libultra_internal.h"
#include "libc/stdarg.h"

// neither function matches

void osSyncPrintf(const char *fmt, ...) {
    if (1);
}

void func_800CF774(const char *fmt, ...) {
	va_list args;

    _vprintf(osSyncPrintf, 0, fmt, &args);
}
