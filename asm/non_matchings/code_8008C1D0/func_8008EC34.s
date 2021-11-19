glabel func_8008EC34
/* 08F834 8008EC34 AFA50004 */  sw    $a1, 4($sp)
/* 08F838 8008EC38 8C9800BC */  lw    $t8, 0xbc($a0)
/* 08F83C 8008EC3C 00057600 */  sll   $t6, $a1, 0x18
/* 08F840 8008EC40 3C01FDFF */  lui   $at, (0xFDFFFFFF >> 16) # lui $at, 0xfdff
/* 08F844 8008EC44 000E7E03 */  sra   $t7, $t6, 0x18
/* 08F848 8008EC48 3421FFFF */  ori   $at, (0xFDFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 08F84C 8008EC4C 3C098016 */  lui   $t1, %hi(D_80165190) # $t1, 0x8016
/* 08F850 8008EC50 25295190 */  addiu $t1, %lo(D_80165190) # addiu $t1, $t1, 0x5190
/* 08F854 8008EC54 000F4040 */  sll   $t0, $t7, 1
/* 08F858 8008EC58 0301C824 */  and   $t9, $t8, $at
/* 08F85C 8008EC5C 24030001 */  li    $v1, 1
/* 08F860 8008EC60 AC9900BC */  sw    $t9, 0xbc($a0)
/* 08F864 8008EC64 A48000A8 */  sh    $zero, 0xa8($a0)
/* 08F868 8008EC68 A4800236 */  sh    $zero, 0x236($a0)
/* 08F86C 8008EC6C 01091021 */  addu  $v0, $t0, $t1
/* 08F870 8008EC70 A4430000 */  sh    $v1, ($v0)
/* 08F874 8008EC74 A4430010 */  sh    $v1, 0x10($v0)
/* 08F878 8008EC78 A4430020 */  sh    $v1, 0x20($v0)
/* 08F87C 8008EC7C A4430030 */  sh    $v1, 0x30($v0)
/* 08F880 8008EC80 03E00008 */  jr    $ra
/* 08F884 8008EC84 A4800042 */   sh    $zero, 0x42($a0)
