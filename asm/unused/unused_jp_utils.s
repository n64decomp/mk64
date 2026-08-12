# JP-only unused leftover utilities, removed in the US revision.
# Their codegen (trapping add, result computed in the jr delay slot) does not
# come out of IDO -O2, so they are kept as assembly.

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"

.section .text, "ax"

# returns (a + b) > 0xFFFF (unsigned compare of a trapping signed sum)
glabel func_8001E650
/* 01F250 8001E650 00853020 */  add   $a2, $a0, $a1
/* 01F254 8001E654 3403FFFF */  ori   $v1, $zero, 0xffff
/* 01F258 8001E658 03E00008 */  jr    $ra
/* 01F25C 8001E65C 0066102B */   sltu  $v0, $v1, $a2

# returns a < b (signed)
glabel func_8001E660
/* 01F260 8001E660 03E00008 */  jr    $ra
/* 01F264 8001E664 0085102A */   slt   $v0, $a0, $a1
