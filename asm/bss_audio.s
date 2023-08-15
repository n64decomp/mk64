# This is most likely (part of) the bss section for audio/heap.c
.include "macros.inc"

.section .bss

# This is almost certainly the tail end of gAudioSessionPool, specifically this probably a reference to
# gAudioSessionPool.size
glabel D_803AFBD0
.skip 8

glabel gAudioInitPool
.skip 16

glabel gNotesAndBuffersPool
.skip 48

glabel gSeqAndBankPool
.skip 16

glabel gPersistentCommonPool
.skip 16

glabel gTemporaryCommonPool
.skip 16

glabel gSeqLoadedPool
.skip 464

glabel gBankLoadedPool
.skip 464

glabel gUnusedLoadedPool
.skip 464

glabel gUnkPool1
.skip 400

glabel D_803B0348
.skip 16

glabel D_803B0358
.skip 8

glabel D_803B0360
.skip 16

glabel D_803B0370
.skip 16

glabel gUnkLoadStatus
.skip 64

glabel gBankLoadStatus
.skip 64

glabel gSeqLoadStatus
.skip 256

glabel D_803B0500
.skip 1

glabel D_803B0501
.skip 3

# Probably gAudioUnusedBuffer
glabel D_803B0504
.skip 4100

# Based on SM64 this should be the beginning of load.c's BSS stuff
glabel gNotes
.skip 4
