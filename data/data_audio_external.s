.include "macros.inc"

.section .data

glabel D_800E9DA0
.byte 0x00

.balign 4

# TODO: unused?
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_800E9DB4
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_800E9DC4
.float 1.0, 1.0, 1.0, 1.0

glabel D_800E9DD4
.float 0.0, 0.0, 0.0, 0.0

glabel D_800E9DE4
.float 0.0, 0.0, 0.0, 0.0

glabel D_800E9DF4
.float 0.0, 0.0, 0.0, 0.0
.float 0.0, 0.0, 0.0, 0.0

glabel D_800E9E14
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_800E9E24
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_800E9E34
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_800E9E54
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_800E9E64
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_800E9E74
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_800E9E84
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_800E9E94
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_800E9EA4
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_800E9EB4
.float 0.0, 0.0, 0.0, 0.0

glabel D_800E9EC4
.float 0.0, 0.0, 0.0, 0.0

glabel D_800E9ED4
.float 0.0, 0.0, 0.0, 0.0

glabel D_800E9EE4
.float 0.0, 0.0, 0.0, 0.0

glabel D_800E9EF4
.float 1.0, 1.0, 1.0, 1.0

glabel D_800E9F04
.float 1.0, 1.0, 1.0, 1.0

glabel D_800E9F14
.float 1.0, 1.0, 1.0, 1.0

glabel D_800E9F24
.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

glabel D_800E9F2C
.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

glabel D_800E9F34
.float 0.0, 0.0, 0.0, 0.0
.float 0.0, 0.0, 0.0, 0.0

glabel D_800E9F54
.float 0.0, 0.0, 0.0, 0.0
.float 0.0, 0.0, 0.0, 0.0

glabel D_800E9F74
.byte 0x00, 0x00, 0x00, 0x00

glabel D_800E9F78
.byte 0x00, 0x00, 0x00, 0x00

glabel D_800E9F7C
.float 0.0, 0.0, 0.0
.float 1.0
.float 1.0
.byte 0x00
.balign 4
.float 3800.0, 3.4, 0.4
.float -1.0, 0.4, 1100.0
.float 630.0, 3600.0, 1.0

.float 0.0, 0.0, 0.0
.float 1.0
.float 1.0
.byte 0x00
.balign 4
.float 3800.0, 3.4, 0.4
.float -1.0, 0.4, 1100.0
.float 630.0, 3600.0, 1.0

.float 0.0, 0.0, 0.0
.float 1.0
.float 1.0
.byte 0x00
.balign 4
.float 3800.0, 3.4, 0.4
.float -1.0, 0.4, 1100.0
.float 630.0, 3600.0, 1.0

.float 0.0, 0.0, 0.0
.float 1.0
.float 1.0
.byte 0x00
.balign 4
.float 3800.0, 3.4, 0.4
.float -1.0, 0.4, 1100.0
.float 630.0, 3600.0, 1.0

.macro Entry800EA06C f0, f1, f2, b0
.float \f0, \f1, \f2
.byte \b0, 0x00, 0x00, 0x00
.endm

glabel D_800EA06C
Entry800EA06C 0.0, 1.0, 1.0, 0x0
Entry800EA06C 0.0, 1.0, 1.0, 0x0
Entry800EA06C 0.0, 1.0, 1.0, 0x0
Entry800EA06C 0.0, 1.0, 1.0, 0x0
Entry800EA06C 0.0, 1.0, 1.0, 0x0
Entry800EA06C 0.0, 1.0, 1.0, 0x0
Entry800EA06C 0.0, 1.0, 1.0, 0x0
Entry800EA06C 0.0, 1.0, 1.0, 0x0

glabel D_800EA0EC
.byte 0x00
glabel D_800EA0ED
.byte 0x00
glabel D_800EA0EE
.byte 0x00
glabel D_800EA0EF
.byte 0x00

glabel D_800EA0F0
.byte 0x00, 0x00, 0x00, 0x00

glabel D_800EA0F4
.byte 0x00, 0x00, 0x00, 0x00

.word 0x00000000, 0x00000000, 0x3f800000

glabel D_800EA104
.word 0x00000000

glabel D_800EA108
.word 0x00000000

glabel D_800EA10C
.word 0x00000000

glabel D_800EA110
.float 0.0, 0.0, 0.0, 0.0

glabel D_800EA120
.float 0.0, 0.0, 0.0, 0.0

glabel D_800EA130
.float 0.0, 0.0, 0.0, 0.0
.float 0.0, 0.0, 0.0, 0.0

glabel D_800EA150
.float 1.4

glabel D_800EA154
.byte 0x02, 0x02, 0x58, 0x5a, 0x03, 0x30, 0x58, 0x30

glabel D_800EA15C
.word 0x00000000

glabel D_800EA160
.word 0x00000000

glabel D_800EA164
.word 0x00000000

glabel D_800EA168
.word 0x00000000

glabel D_800EA16C
.word 0x00000000

glabel D_800EA170
.word 0x00000000

glabel D_800EA174
.word 0x00000000

glabel D_800EA178
.word 0x3f800000

glabel D_800EA17C
.word 0x3f59999a

glabel D_800EA180
.word 0x00000000

glabel D_800EA184
.word 0x00000000

glabel D_800EA188
.byte 0x04, 0x02, 0x02, 0x02, 0x02, 0x01
.byte 0x06, 0x02, 0x02, 0x02, 0x02, 0x01
.byte 0x08, 0x02, 0x02, 0x00, 0x01, 0x01
.byte 0x08, 0x02, 0x02, 0x00, 0x01, 0x01

glabel D_800EA1A0
.byte 0x04, 0x01, 0x01, 0x02, 0x02, 0x01
.byte 0x03, 0x01, 0x01, 0x02, 0x02, 0x01
.byte 0x03, 0x01, 0x01, 0x00, 0x01, 0x01
.byte 0x03, 0x01, 0x01, 0x00, 0x01, 0x01

glabel sSoundRequestCount
.word 0x00000000

glabel sNumProcessedSoundRequests
.word 0x00000000

glabel D_800EA1C0
.word 0x00000000

glabel D_800EA1C4
.word 0x00000000

glabel D_800EA1C8
.word 0x00000000, 0x00000000, 0x00000000

glabel D_800EA1D4
.word 0x3f800000, 0x00000000

glabel D_800EA1DC
.word 0x00000000, 0x00000000

glabel D_800EA1E4
.word 0x00000000

glabel D_800EA1E8
.word 0x00000000

glabel D_800EA1EC
.word 0x00000000

glabel D_800EA1F0
.byte 0x00, 0x01, 0x02, 0x03

glabel D_800EA1F4
.byte 0x00, 0x00, 0x00, 0x00

.asciiz "Error : Queue is not empty ( %x ) \n"
.balign 4

.asciiz "specchg error\n"
.balign 4

.asciiz "***** CAM MAX %d *****\n"
.balign 4

glabel D_800EA244
.byte 0x00

.byte 0x00, 0x00, 0x00

.asciiz "entryout !!! %d\n"
.balign 4

.asciiz "AFTER GOAL VOICE FLAME %d\n"
.balign 4

.asciiz "*** Pause On ***\n"
.balign 4

.asciiz "*** Pause Off ***\n"
.balign 4

.asciiz "CALLED!! Na_ChangeSoundMode player %d\n"
.balign 4

.asciiz "CALLED!! Na_ChangeSoundMode spec   %d\n"
.balign 4

.asciiz "Interfaced Spec Change player %d\n"
.balign 4

.asciiz "Interfaced Spec Change spec   %d\n"
.balign 4

.word 0xff000000, 0xff000000, 0x00000000

.asciiz "FX MIX %d\n"
.balign 4

.asciiz "************** Seq Fadeout ***************\n"
.balign 4

.asciiz "SEQ FADE OUT TIME %d\n"
.balign 4
