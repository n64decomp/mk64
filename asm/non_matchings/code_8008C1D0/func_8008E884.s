glabel func_8008E884
/* 08F484 8008E884 AFA50004 */  sw    $a1, 4($sp)
/* 08F488 8008E888 8C9800BC */  lw    $t8, 0xbc($a0)
/* 08F48C 8008E88C 00057600 */  sll   $t6, $a1, 0x18
/* 08F490 8008E890 3C01FEFF */  lui   $at, (0xFEFFFFFF >> 16) # lui $at, 0xfeff
/* 08F494 8008E894 000E7E03 */  sra   $t7, $t6, 0x18
/* 08F498 8008E898 3421FFFF */  ori   $at, (0xFEFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 08F49C 8008E89C 3C098016 */  lui   $t1, %hi(D_80165190) # $t1, 0x8016
/* 08F4A0 8008E8A0 25295190 */  addiu $t1, %lo(D_80165190) # addiu $t1, $t1, 0x5190
/* 08F4A4 8008E8A4 000F4040 */  sll   $t0, $t7, 1
/* 08F4A8 8008E8A8 0301C824 */  and   $t9, $t8, $at
/* 08F4AC 8008E8AC 24030001 */  li    $v1, 1
/* 08F4B0 8008E8B0 AC9900BC */  sw    $t9, 0xbc($a0)
/* 08F4B4 8008E8B4 A48000A8 */  sh    $zero, 0xa8($a0)
/* 08F4B8 8008E8B8 A4800236 */  sh    $zero, 0x236($a0)
/* 08F4BC 8008E8BC 01091021 */  addu  $v0, $t0, $t1
/* 08F4C0 8008E8C0 A4430000 */  sh    $v1, ($v0)
/* 08F4C4 8008E8C4 A4430010 */  sh    $v1, 0x10($v0)
/* 08F4C8 8008E8C8 A4430020 */  sh    $v1, 0x20($v0)
/* 08F4CC 8008E8CC A4430030 */  sh    $v1, 0x30($v0)
/* 08F4D0 8008E8D0 03E00008 */  jr    $ra
/* 08F4D4 8008E8D4 A4800042 */   sh    $zero, 0x42($a0)
