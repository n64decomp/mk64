#ifndef COURSE_OFFSETS_H
#define COURSE_OFFSETS_H

#include <PR/ultratypes.h>

typedef struct
{
    u8 *addr;      // segmented address texture file
    u32 file_size; // compressed file size
    u32 data_size; // uncompressed texture size
    u32 padding;   // always zero
} course_texture;

#endif // COURSE_OFFSETS_H
