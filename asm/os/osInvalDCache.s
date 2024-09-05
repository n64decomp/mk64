# handwritten
# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel osInvalDCache
/* 0CE780 800CDB80 18A0001F */  blez  $a1, .L800CDC00
/* 0CE784 800CDB84 00000000 */   nop   
/* 0CE788 800CDB88 240B2000 */  li    $t3, 8192
/* 0CE78C 800CDB8C 00AB082B */  sltu  $at, $a1, $t3
/* 0CE790 800CDB90 1020001D */  beqz  $at, .L800CDC08
/* 0CE794 800CDB94 00000000 */   nop   
/* 0CE798 800CDB98 00804025 */  move  $t0, $a0
/* 0CE79C 800CDB9C 00854821 */  addu  $t1, $a0, $a1
/* 0CE7A0 800CDBA0 0109082B */  sltu  $at, $t0, $t1
/* 0CE7A4 800CDBA4 10200016 */  beqz  $at, .L800CDC00
/* 0CE7A8 800CDBA8 00000000 */   nop   
/* 0CE7AC 800CDBAC 310A000F */  andi  $t2, $t0, 0xf
/* 0CE7B0 800CDBB0 11400007 */  beqz  $t2, .L800CDBD0
/* 0CE7B4 800CDBB4 2529FFF0 */   addiu $t1, $t1, -0x10
/* 0CE7B8 800CDBB8 010A4023 */  subu  $t0, $t0, $t2
/* 0CE7BC 800CDBBC BD150000 */  cache 0x15, ($t0)
/* 0CE7C0 800CDBC0 0109082B */  sltu  $at, $t0, $t1
/* 0CE7C4 800CDBC4 1020000E */  beqz  $at, .L800CDC00
/* 0CE7C8 800CDBC8 00000000 */   nop   
/* 0CE7CC 800CDBCC 25080010 */  addiu $t0, $t0, 0x10
.L800CDBD0:
/* 0CE7D0 800CDBD0 312A000F */  andi  $t2, $t1, 0xf
/* 0CE7D4 800CDBD4 11400006 */  beqz  $t2, .L800CDBF0
/* 0CE7D8 800CDBD8 00000000 */   nop   
/* 0CE7DC 800CDBDC 012A4823 */  subu  $t1, $t1, $t2
/* 0CE7E0 800CDBE0 BD350010 */  cache 0x15, 0x10($t1)
/* 0CE7E4 800CDBE4 0128082B */  sltu  $at, $t1, $t0
/* 0CE7E8 800CDBE8 14200005 */  bnez  $at, .L800CDC00
/* 0CE7EC 800CDBEC 00000000 */   nop   
.L800CDBF0:
/* 0CE7F0 800CDBF0 BD110000 */  cache 0x11, ($t0)
/* 0CE7F4 800CDBF4 0109082B */  sltu  $at, $t0, $t1
/* 0CE7F8 800CDBF8 1420FFFD */  bnez  $at, .L800CDBF0
/* 0CE7FC 800CDBFC 25080010 */   addiu $t0, $t0, 0x10
.L800CDC00:
/* 0CE800 800CDC00 03E00008 */  jr    $ra
/* 0CE804 800CDC04 00000000 */   nop   

.L800CDC08:
/* 0CE808 800CDC08 3C088000 */  li    $t0, 0x80000000
/* 0CE80C 800CDC0C 010B4821 */  addu  $t1, $t0, $t3
/* 0CE810 800CDC10 2529FFF0 */  addiu $t1, $t1, -0x10
.L800CDC14:
/* 0CE814 800CDC14 BD010000 */  cache 1, ($t0)
/* 0CE818 800CDC18 0109082B */  sltu  $at, $t0, $t1
/* 0CE81C 800CDC1C 1420FFFD */  bnez  $at, .L800CDC14
/* 0CE820 800CDC20 25080010 */   addiu $t0, $t0, 0x10
/* 0CE824 800CDC24 03E00008 */  jr    $ra
/* 0CE828 800CDC28 00000000 */   nop   

/* 0CE82C 800CDC2C 00000000 */  nop   
