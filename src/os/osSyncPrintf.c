#include "libultra_internal.h"
#include "libc/stdarg.h"

s32 osSyncPrintf(s32 arg0, s32 arg1, s32 arg2) {
    // ifdef'd formatting code?
    return (1);
}

void func_800CF774(const char *fmt, ...) {
  va_list args;
  va_start(args, fmt);
  _Printf(osSyncPrintf, NULL, fmt, args);
  va_end(args);
}
