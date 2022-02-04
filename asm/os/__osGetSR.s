.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osGetSR
/* D2740 800D1B40 40026000 */  mfc0       $v0, $12
/* D2744 800D1B44 03E00008 */  jr         $ra
/* D2748 800D1B48 00000000 */   nop
/* D274C 800D1B4C 00000000 */  nop