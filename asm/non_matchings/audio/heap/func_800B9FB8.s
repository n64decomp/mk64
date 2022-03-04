glabel func_800B9FB8
/* 0BABB8 800B9FB8 3C03803B */  lui   $v1, %hi(gNumSynthesisReverbs) # $v1, 0x803b
/* 0BABBC 800B9FBC 8063FBC3 */  lb    $v1, %lo(gNumSynthesisReverbs)($v1)
/* 0BABC0 800B9FC0 3C0E803B */  lui   $t6, %hi(gSynthesisReverbs) # 0x803b
/* 0BABC4 800B9FC4 25C2F790 */  addiu $v0, $t6, %lo(gSynthesisReverbs) # -0x870
/* 0BABC8 800B9FC8 1860000E */  blez  $v1, .L800BA004
/* 0BABCC 800B9FCC 00037940 */   sll   $t7, $v1, 5
/* 0BABD0 800B9FD0 01E37821 */  addu  $t7, $t7, $v1
/* 0BABD4 800B9FD4 000F78C0 */  sll   $t7, $t7, 3
/* 0BABD8 800B9FD8 01E22021 */  addu  $a0, $t7, $v0
.L800B9FDC:
/* 0BABDC 800B9FDC 94430008 */  lhu   $v1, 8($v0)
/* 0BABE0 800B9FE0 24420108 */  addiu $v0, $v0, 0x108
/* 0BABE4 800B9FE4 04610003 */  bgez  $v1, .L800B9FF4
/* 0BABE8 800B9FE8 0003C083 */   sra   $t8, $v1, 2
/* 0BABEC 800B9FEC 24610003 */  addiu $at, $v1, 3
/* 0BABF0 800B9FF0 0001C083 */  sra   $t8, $at, 2
.L800B9FF4:
/* 0BABF4 800B9FF4 0044082B */  sltu  $at, $v0, $a0
/* 0BABF8 800B9FF8 0078C823 */  subu  $t9, $v1, $t8
/* 0BABFC 800B9FFC 1420FFF7 */  bnez  $at, .L800B9FDC
/* 0BAC00 800BA000 A459FF00 */   sh    $t9, -0x100($v0)
.L800BA004:
/* 0BAC04 800BA004 03E00008 */  jr    $ra
/* 0BAC08 800BA008 00000000 */   nop   
