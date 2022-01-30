#include "libultra_internal.h"
#include "libc/stdarg.h"

char *osSyncPrintf(char *arg0, const char *arg1, size_t size) {
    // ifdef'd formatting code?
    return (1);
}

void rmonPrintf(const char *fmt, ...) {
  va_list args;
  va_start(args, fmt);
  _Printf(osSyncPrintf, NULL, fmt, args);
  va_end(args);
}
