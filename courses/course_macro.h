#define MACRO_COLOR_FLAG(r, g, b, flag) (r&~0x3) | (flag & 0x3), (g&~0x3) | ((flag>>2) & 0x3), b
