.include "macros.inc"

.section .data

# osPiStartDma .data

#glabel __osPiDevMgr
#.word 0x00000000

#.word 0x00000000

#.word 0x00000000

#.word 0x00000000

#.word 0x00000000

#.word 0x00000000

#.word 0x00000000

#glabel __osPiTable
#.word 0x00000000

#glabel D_800EB360
#.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_800EB370
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel __osHwIntTable
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_800EB3A0
.word 0x00000000, 0xffffffff

glabel __osRunQueue
.word D_800EB3A0

glabel __osActiveQueue
.word D_800EB3A0

glabel __osRunningThread
.word 0x00000000

glabel D_800EB3B4
.word 0x00000000

.balign 16

# glabel __osTimerList
# .word __osBaseTimer

# .word 0x00000000, 0x00000000, 0x00000000
