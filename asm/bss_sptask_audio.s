.include "macros.inc"

.section .bss

.skip 875760
#glabel gFramebuffer0
#.skip 153600

#glabel gFramebuffer1
#.skip 153600

#glabel gFramebuffer2
#.skip 153600

## Audio

glabel gGfxSPTaskOutputBuffer # 0x8038FF80
.skip 129024

glabel gGfxSPTaskOutputBufferSize # 0x803AF780