.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"


.section .text, "ax"

glabel __osSetCompare
    mtc0  $a0, C0_COMPARE
    jr    $ra
     nop

    nop

