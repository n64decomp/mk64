#include <ultra64.h>
#include <macros.h>

/**
 * Memory pool setup to prevent other code segments flowing into the memory pool
 * and for easier portability.
*/
u8 memoryPool[0xAB630];
