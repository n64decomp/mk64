# Assembly Macros

.set K0BASE, 0x80000000
.set K1BASE, 0xA0000000
.set K2BASE, 0xC0000000

.macro glabel label
    .global \label
    \label:
.endm

.macro .word32 x
    .word \x
.endm

# F3D vertex
.macro vertex x, y, z, u, v, r=0xFF, g=0xFF, b=0xFF, a=0xFF
    .hword \x, \y, \z, 0, \u, \v
    .byte \r, \g, \b, \a
.endm

# MK64 texture entry
.macro mk_texture type, address, width=0, height=0, dX=0, dY=0, size=0
    .hword \type, 0x0000
    .word \address
    .hword \width, \height, \dX, \dY, \size, 0x0000
.endm
