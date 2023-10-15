.include "macros.inc"

.section .bss

glabel sNumSoundsInBank
.skip 8

glabel D_80192AB8
.skip 384

glabel D_80192C38
.skip 4

glabel sSoundBankDisabled # 0x80192C3C
.skip 12

glabel D_80192C48
.skip 96

glabel D_80192CA8
.skip 30

glabel D_80192CC6
.skip 10

glabel D_80192CD0
.skip 1024

glabel D_801930D0
.skip 584

glabel D_80193318
.skip 1192
