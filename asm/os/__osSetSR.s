.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osSetSR
/* D2730 800D1B30 40846000 */  mtc0       $a0, $12
/* D2734 800D1B34 00000000 */  nop
/* D2738 800D1B38 03E00008 */  jr         $ra
/* D273C 800D1B3C 00000000 */   nop
