#ifndef MK64_H
#define MK64_H

// Global header for Mario Kart 64

#include <types.h>
#include "config.h"



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

#endif // MK64_H
