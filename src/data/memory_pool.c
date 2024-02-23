#include <ultra64.h>
#include <macros.h>
#include <segments.h>

#define MEMORY_POOL_SIZE 0xAB630

/**
 * Memory pool setup to prevent other code segments flowing into the memory pool
 * and for easier portability.
 * This variable is not actually used for anything.
*/
u8 memoryPool[MEMORY_POOL_SIZE];
