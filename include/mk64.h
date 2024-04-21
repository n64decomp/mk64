#ifndef MK64_H
#define MK64_H

// Global header for Mario Kart 64

#include "config.h"

#define GFX_GET_OPCODE(var) ((s32)((var) & 0xFF000000))

// Pointer casting is technically UB, and avoiding it gets rid of endian issues
// as well as a nice side effect.
#ifdef AVOID_UB
#define GET_HIGH_U16_OF_32(var) ((u16)((var) >> 16))
#define GET_HIGH_S16_OF_32(var) ((s16)((var) >> 16))
#define GET_LOW_U16_OF_32(var) ((u16)((var) & 0xFFFF))
#define GET_LOW_S16_OF_32(var) ((s16)((var) & 0xFFFF))
#define SET_HIGH_U16_OF_32(var, x) ((var) = ((var) & 0xFFFF) | ((x) << 16))
#define SET_HIGH_S16_OF_32(var, x) ((var) = ((var) & 0xFFFF) | ((x) << 16))
#else
#define GET_HIGH_U16_OF_32(var) (((u16 *)&(var))[0])
#define GET_HIGH_S16_OF_32(var) (((s16 *)&(var))[0])
#define GET_LOW_U16_OF_32(var) (((u16 *)&(var))[1])
#define GET_LOW_S16_OF_32(var) (((s16 *)&(var))[1])
#define SET_HIGH_U16_OF_32(var, x) ((((u16 *)&(var))[0]) = (x))
#define SET_HIGH_S16_OF_32(var, x) ((((s16 *)&(var))[0]) = (x))
#endif

#define MACRO_COLOR_FLAG(r, g, b, flag) (r&~0x3) | (flag & 0x3), (g&~0x3) | ((flag>>2) & 0x3), b

#endif // MK64_H
