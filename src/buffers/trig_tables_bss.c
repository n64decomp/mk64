#include <ultra64.h>
#include <macros.h>

/**
 * Trig tables get loaded into memory at this location.
 * See trig_tables.c for the real file.
 */

ALIGNED8 u8 trigTablesPadding[0x5810];
