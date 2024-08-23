#ifndef TKMK00_H_
#define TKMK00_H_

#include <stdint.h>

// decode TKMK00 data in memory
// tkmk: buffer containing TKMK00 data
// tmp_buf: tempory buffer to load pixel data (must be >= width*height bytes)
// rgba: buffer to output decompressed RGBA16 data (must be >= 2*width*height bytes)
// alpha_color: RGBA color to set apha to 0
void tkmk00_decode(uint8_t *tkmk, uint8_t *tmp_buf, uint8_t *rgba16, int32_t alpha_color);

#endif // TKMK00_H_
