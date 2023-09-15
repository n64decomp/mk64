# Handwritten
# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel sqrtf
/* 0CED40 800CE140 03E00008 */  jr    $ra
/* 0CED44 800CE144 46006004 */   sqrt.s $f0, $f12

/* 0CED48 800CE148 00000000 */  nop   
/* 0CED4C 800CE14C 00000000 */  nop   
