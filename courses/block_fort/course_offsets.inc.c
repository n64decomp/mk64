#include <PR/ultratypes.h>
#include "course_offsets.h"

extern u8 gTexture64286C[];
extern u8 gTextureGrayCheckerboard[];
extern u8 gTextureGrayCobblestone[];
extern u8 gTexture64275C[];
extern u8 gTexture642978[];
extern u8 gTexture6747C4[];
extern u8 gTexture6442D4[];

const course_texture block_fort_textures[] = {
    {gTexture64286C, 0x010A, 0x0800, 0x0},
    {gTextureGrayCheckerboard, 0x010C, 0x0800, 0x0},
    {gTextureGrayCobblestone, 0x010C, 0x0800, 0x0},
    {gTexture64275C, 0x0110, 0x0800, 0x0},
    {gTexture642978, 0x010D, 0x0800, 0x0},
    {gTexture6747C4, 0x0145, 0x0800, 0x0},
    {gTexture6442D4, 0x0138, 0x0800, 0x0},
    {0x00000000    , 0x0000, 0x0000, 0x0},
};
