.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osDisableInt
/* D26B0 800D1AB0 40086000 */  mfc0       $t0, $12
/* D26B4 800D1AB4 2401FFFE */  addiu      $at, $zero, -2
/* D26B8 800D1AB8 01014824 */  and        $t1, $t0, $at
/* D26BC 800D1ABC 40896000 */  mtc0       $t1, $12
/* D26C0 800D1AC0 31020001 */  andi       $v0, $t0, 1
/* D26C4 800D1AC4 00000000 */  nop
/* D26C8 800D1AC8 03E00008 */  jr         $ra
/* D26CC 800D1ACC 00000000 */   nop
