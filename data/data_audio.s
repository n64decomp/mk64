.include "macros.inc"

.section .data

glabel D_800E8E60
.asciiz "Terminate-Canceled Channel %d,Phase %d\n"
.balign 4

glabel D_800E8E88
.asciiz "Copy %d\n"
.balign 4

glabel D_800E8E94
.asciiz "%d->%d\n"
.balign 4

glabel D_800E8E9C
.asciiz "pitch %x: delaybytes %d : olddelay %d\n"
.balign 4

glabel D_800E8EC4
.asciiz "cont %x: delaybytes %d : olddelay %d\n"
.balign 4

.balign 0x10

glabel D_800E8EF0
.asciiz "Warning:Kill Note  %x \n"
.balign 4

glabel D_800E8F08
.asciiz "Kill Voice %d (ID %d) %d\n"
.balign 4

glabel D_800E8F24
.asciiz "Warning: Running Sequence's data disappear!\n"
.balign 4

glabel D_800E8F54
.asciiz "Audio:Memory:Heap OverFlow : Not Allocate %d!\n"
.balign 4

glabel D_800E8F84
.asciiz "Audio:Memory:DataHeap Not Allocate \n"
.balign 4

glabel D_800E8FAC
.asciiz "StayHeap Not Allocate %d\n"
.balign 4

glabel D_800E8FC8
.asciiz "AutoHeap Not Allocate %d\n"
.balign 4

glabel D_800E8FE4
.asciiz "Status ID0 : %d  ID1 : %d\n"
.balign 4

glabel D_800E9000
.asciiz "id 0 is Stopping\n"
.balign 4

glabel D_800E9014
.asciiz "id 0 is Stop\n"
.balign 4

glabel D_800E9024
.asciiz "id 1 is Stopping\n"
.balign 4

glabel D_800E9038
.asciiz "id 1 is Stop\n"
.balign 4

glabel D_800E9048
.asciiz "WARNING: NO FREE AUTOSEQ AREA.\n"
.balign 4

glabel D_800E9068
.asciiz "WARNING: NO STOP AUTO AREA.\n"
.balign 4

glabel D_800E9088
.asciiz "         AND TRY FORCE TO STOP SIDE \n"
.balign 4

glabel D_800E90B0
.asciiz "Check ID0  (seq ID %d) Useing ...\n"
.balign 4

glabel D_800E90D4
.asciiz "Check ID1  (seq ID %d) Useing ...\n"
.balign 4

glabel D_800E90F8
.asciiz "No Free Seq area.\n"
.balign 4

glabel D_800E910C
.asciiz "CH %d: ID %d\n"
.balign 4

glabel D_800E911C
.asciiz "TWO SIDES ARE LOADING... ALLOC CANCELED.\n"
.balign 4

glabel D_800E9148
.asciiz "WARNING: Before Area Overlaid After."
.balign 4

glabel D_800E9170
.asciiz "WARNING: After Area Overlaid Before."
.balign 4

glabel D_800E9198
.asciiz "MEMORY:SzHeapAlloc ERROR: sza->side %d\n"
.balign 4

glabel D_800E91C0
.asciiz "Audio:MEMORY:SzHeap Overflow error. (%d bytes)\n"
.balign 4

glabel D_800E91F0
.asciiz "Auto Heap Unhit for ID %d\n"
.balign 4

glabel D_800E920C
.asciiz "Heap Reconstruct Start %x\n"
.balign 4

glabel D_800E9228
.asciiz "AHPBASE %x\n"
.balign 4

glabel D_800E9234
.asciiz "AHPCUR  %x\n"
.balign 4

glabel D_800E9240
.asciiz "HeapTop %x\n"
.balign 4

glabel D_800E924C
.asciiz "SynoutRate %d / %d \n"
.balign 4

glabel D_800E9264
.asciiz "FXSIZE %d\n"
.balign 4

glabel D_800E9270
.asciiz "FXCOMP %d\n"
.balign 4

glabel D_800E927C
.asciiz "FXDOWN %d\n"
.balign 4

glabel D_800E9288
.asciiz "WaveCacheLen: %d\n"
.balign 4

glabel D_800E929C
.asciiz "SpecChange Finished\n"
.balign 4

glabel D_800E92B4
.asciiz "Fbank Seq %x\n"
.balign 4

glabel D_800E92C4
.asciiz "Already Load Type %d,ID %d\n"
.balign 4

glabel D_800E92E0
.asciiz "Warning:Emem Over,not alloc %d\n"
.balign 4

glabel D_800E9300
.asciiz "Write %d\n"
.balign 4

.balign 0x10

#glabel D_800E9310
#.asciiz "Romcopy %x -> %x ,size %x\n"
#.balign 4

#glabel D_800E932C
#.asciiz "Romcopyend\n"
#.balign 4
