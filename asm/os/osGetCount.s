.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osGetCount
/* D1DA0 800D11A0 40024800 */  mfc0       $v0, $9
/* D1DA4 800D11A4 03E00008 */  jr         $ra
/* D1DA8 800D11A8 00000000 */   nop
/* D1DAC 800D11AC 00000000 */  nop
