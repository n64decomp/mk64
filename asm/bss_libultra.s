.include "macros.inc"

.section .bss

glabel D_80195270
.skip 432

glabel D_80195420
.skip 624

glabel D_80195690
.skip 3472

glabel D_80196420
.skip 24

glabel D_80196438
.skip 8

# seteventmesg bss
glabel __osEventStateTab
.skip 128

glabel D_801964C0
.skip 64

# osContStartReadData bss
glabel _osContCmdBuf
.skip 60

glabel _osContPifCtrl
.skip 4

glabel _osLastSentSiCmd
.skip 1

glabel _osContNumControllers
.skip 7

glabel D_80196548
.skip 32

glabel D_80196568
.skip 24

glabel D_80196580
.skip 16

# osPfsIsPlug bss
glabel __osPfsPifRam
.skip 60

glabel D_801965CC
.skip 4

# guRotateF ?
glabel D_801965D0
.skip 16

glabel D_801965E0
.skip 4096
