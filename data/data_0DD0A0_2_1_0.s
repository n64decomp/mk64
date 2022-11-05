.include "macros.inc"

.section .rodata

#glabel D_800E94A4
#.asciiz "Seq %d Loading Start\n"
#.balign 4

#glabel D_800E94BC
#.asciiz "Heap Overflow Error\n"
#.balign 4

#glabel D_800E94D4
#.asciiz "SEQ  %d ALREADY CACHED\n"
#.balign 4

#glabel D_800E94EC
#.asciiz "Ok,one bank slow load Start \n"
#.balign 4

#glabel D_800E950C
#.asciiz "Sorry,too many %d bank is none.fast load Start \n"
#.balign 4





glabel D_800E9540
.asciiz "Seq %d:Default Load Id is %d\n"
.balign 4

glabel D_800E9560
.asciiz "Seq Loading Start\n"
.balign 4

glabel D_800E9574
.asciiz "Error:Before Sequence-SlowDma remain.\n"
.balign 4

glabel D_800E959C
.asciiz "      Cancel Seq Start.\n"
.balign 4

glabel D_800E95B8
.asciiz "SEQ  %d ALREADY CACHED\n"
.balign 4

glabel D_800E95D0
.asciiz "Clear Workarea %x -%x size %x \n"
.balign 4

glabel D_800E95F0
.asciiz "AudioHeap is %x\n"
.balign 4

glabel D_800E9604
.asciiz "Heap reset.Synth Change %x \n"
.balign 4

glabel D_800E9624
.asciiz "Heap %x %x %x\n"
.balign 4

glabel D_800E9634
.asciiz "Main Heap Initialize.\n"
.balign 4

glabel D_800E964C
.asciiz "---------- Init Completed. ------------\n"
.balign 4

glabel D_800E9678
.asciiz " Syndrv    :[%6d]\n"
.balign 4

glabel D_800E968C
.asciiz " Seqdrv    :[%6d]\n"
.balign 4

glabel D_800E96A0
.asciiz " audiodata :[%6d]\n"
.balign 4

glabel D_800E96B4
.asciiz "---------------------------------------\n"
.balign 4
