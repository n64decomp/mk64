.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osSetCompare
/* D8890 800D7C90 40845800 */  mtc0       $a0, $11
/* D8894 800D7C94 03E00008 */  jr         $ra
/* D8898 800D7C98 00000000 */   nop
/* D889C 800D7C9C 00000000 */  nop
