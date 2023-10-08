#include <PR/ultratypes.h>
#include "course_offsets.h"

extern u8 gTextureGrayCobblestone[];
extern u8 gTexture642978[];

const course_texture double_deck_textures[] = {
    {gTextureGrayCobblestone, 0x010C, 0x0800, 0x0},
    {gTexture642978, 0x010D, 0x0800, 0x0},
    {0x00000000    , 0x0000, 0x0000, 0x0},
};
