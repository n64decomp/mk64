.include "macros.inc"

.section .bss

glabel D_802BA050
.skip 4

glabel D_802BA054
.skip 4

glabel D_802BA058
.skip 4

glabel D_802BA05C
.skip 4

glabel D_802BA060
.skip 512

glabel D_802BA260
.skip 16

glabel D_802BA270
.skip 4

glabel D_802BA274
.skip 4

glabel D_802BA278
.skip 4

glabel D_802BA27C
.skip 4

glabel D_802BA280
.skip 875776 # 16




#glabel D_802BA290
#.skip 22768 # 100592

#glabel D_802BFB80
#.skip 77824

#glabel D_802D2B80
#.skip 32768

#glabel D_802DAB80
#.skip 20480

#glabel D_802DFB80
#.skip 74752

#glabel D_802F1F80
#.skip 32768

#glabel gZBuffer
#.skip 153600



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
