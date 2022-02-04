.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osSetFpcCsr
/* D2750 800D1B50 4442F800 */  cfc1       $v0, $31
/* D2754 800D1B54 44C4F800 */  ctc1       $a0, $31
/* D2758 800D1B58 03E00008 */  jr         $ra
/* D275C 800D1B5C 00000000 */   nop
