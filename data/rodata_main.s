.include "macros.inc"

.section .rodata

#.balign 4
#glabel D_800EB5D0
#.asciiz "SOUTH  "

#.balign 4
#glabel D_800EB5D8
#.asciiz "EAST   "

#.balign 4
#glabel D_800EB5E0
#.asciiz "NORTH  "
#.balign 4

#glabel D_800EB5E8
#.asciiz "WEST   "

#.balign 4
#glabel D_800EB5F0
#.asciiz "SOUTH  "

#.balign 4
#glabel D_800EB5F8
#.double 0.01666666

#glabel D_800EB600
#.double 0.01666666

#glabel D_800EB608
#.double 0.01666666

#glabel D_800EB610
#.double 0.01666666

#glabel D_800EB618
#.word L80001F0C, L80001F0C, L80001F0C, L80001F0C
#.word L80001F38, L80001F48, L80001F60, L80001EFC
#.word L80001F60, L80001F58

#glabel D_800EB640
#.double 0.01666666

#glabel D_800EB648
#.word L800026B4, L800026CC, L800026E4, L800026FC
#.word L80002714, L8000272C, L8000276C, L8000276C
#.word L8000276C, L8000274C
#glabel D_800EB670
