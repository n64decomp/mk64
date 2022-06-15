.include "macros.inc"

.section .rodata

glabel D_800EE030
.double 0.8

glabel D_800EE038
.double 0.8

glabel D_800EE040
.double 0.8

glabel D_800EE048
.double 0.8

glabel jpt_800EE050
.word L80050C50, L80050A88, L80050AC0, L80050B1C
.word L80050BA8

glabel D_800EE064
.float 0.6

glabel jpt_800EE068
.word L80053520, L80053574, L800535C8, L8005361C
.word L80053670

.word 0x00000000

glabel D_800EE080
.double 0.8

glabel D_800EE088
.double 0.8



#glabel jpt_800EE090
#.word L80057D14, L80057D28, L80057D3C, L80057D50
#.word L80057D64, L80057DC0, L80057DC0, L80057DC0
#.word L80057D78, L80057D8C, L80057DA0, L80057DB4
