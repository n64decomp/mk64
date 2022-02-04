.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osWritebackDCache
/* D2800 800D1C00 18A00011 */  blez       $a1, .L800D1C48
/* D2804 800D1C04 00000000 */   nop
/* D2808 800D1C08 240B2000 */  addiu      $t3, $zero, 0x2000
/* D280C 800D1C0C 00AB082B */  sltu       $at, $a1, $t3
/* D2810 800D1C10 1020000F */  beqz       $at, .L800D1C50
/* D2814 800D1C14 00000000 */   nop
/* D2818 800D1C18 00804025 */  or         $t0, $a0, $zero
/* D281C 800D1C1C 00854821 */  addu       $t1, $a0, $a1
/* D2820 800D1C20 0109082B */  sltu       $at, $t0, $t1
/* D2824 800D1C24 10200008 */  beqz       $at, .L800D1C48
/* D2828 800D1C28 00000000 */   nop
/* D282C 800D1C2C 310A000F */  andi       $t2, $t0, 0xf
/* D2830 800D1C30 2529FFF0 */  addiu      $t1, $t1, -0x10
/* D2834 800D1C34 010A4023 */  subu       $t0, $t0, $t2
.L800D1C38:
/* D2838 800D1C38 BD190000 */  cache      0x19, ($t0)
/* D283C 800D1C3C 0109082B */  sltu       $at, $t0, $t1
/* D2840 800D1C40 1420FFFD */  bnez       $at, .L800D1C38
/* D2844 800D1C44 25080010 */   addiu     $t0, $t0, 0x10
.L800D1C48:
/* D2848 800D1C48 03E00008 */  jr         $ra
/* D284C 800D1C4C 00000000 */   nop
.L800D1C50:
/* D2850 800D1C50 3C088000 */  lui        $t0, 0x8000
/* D2854 800D1C54 010B4821 */  addu       $t1, $t0, $t3
/* D2858 800D1C58 2529FFF0 */  addiu      $t1, $t1, -0x10
.L800D1C5C:
/* D285C 800D1C5C BD010000 */  cache      1, ($t0)
/* D2860 800D1C60 0109082B */  sltu       $at, $t0, $t1
/* D2864 800D1C64 1420FFFD */  bnez       $at, .L800D1C5C
/* D2868 800D1C68 25080010 */   addiu     $t0, $t0, 0x10
/* D286C 800D1C6C 03E00008 */  jr         $ra
/* D2870 800D1C70 00000000 */   nop
/* D2874 800D1C74 00000000 */  nop
/* D2878 800D1C78 00000000 */  nop
/* D287C 800D1C7C 00000000 */  nop
