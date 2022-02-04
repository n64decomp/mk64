.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osRestoreInt
/* D26D0 800D1AD0 40086000 */  mfc0       $t0, $12
/* D26D4 800D1AD4 01044025 */  or         $t0, $t0, $a0
/* D26D8 800D1AD8 40886000 */  mtc0       $t0, $12
/* D26DC 800D1ADC 00000000 */  nop
/* D26E0 800D1AE0 00000000 */  nop
/* D26E4 800D1AE4 03E00008 */  jr         $ra
/* D26E8 800D1AE8 00000000 */   nop
/* D26EC 800D1AEC 00000000 */  nop
