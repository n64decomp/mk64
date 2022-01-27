#include "libultra_internal.h"
#include "libc/stdarg.h"

// Fake matches
char osSyncPrintf(int a, int b, int c) {
    // ifdef'd formatting code?
    return (1);
}

void func_800CF774(char *fmt, int a, char b, char c) {
    char *args;
    _Printf(osSyncPrintf, NULL, fmt, &a);
}

// Likely closer to actual.
/*
void func_800CF774(const char *fmt, ...) {
  va_lista args;
  va_start(args, fmt);
  _Printf(osSyncPrintf, NULL, fmt, args);
  va_end(args);
}
*/
