glabel func_8004B5A8
/* 04C1A8 8004B5A8 3C098015 */  lui   $t1, %hi(gDisplayListHead) # $t1, 0x8015
/* 04C1AC 8004B5AC 25290298 */  addiu $t1, %lo(gDisplayListHead) # addiu $t1, $t1, 0x298
/* 04C1B0 8004B5B0 8D230000 */  lw    $v1, ($t1)
/* 04C1B4 8004B5B4 30AA00FF */  andi  $t2, $a1, 0xff
/* 04C1B8 8004B5B8 000A5C00 */  sll   $t3, $t2, 0x10
/* 04C1BC 8004B5BC 246E0008 */  addiu $t6, $v1, 8
/* 04C1C0 8004B5C0 AD2E0000 */  sw    $t6, ($t1)
/* 04C1C4 8004B5C4 3C0FFA00 */  lui   $t7, 0xfa00
/* 04C1C8 8004B5C8 0004CE00 */  sll   $t9, $a0, 0x18
/* 04C1CC 8004B5CC 30CD00FF */  andi  $t5, $a2, 0xff
/* 04C1D0 8004B5D0 000D7200 */  sll   $t6, $t5, 8
/* 04C1D4 8004B5D4 032B6025 */  or    $t4, $t9, $t3
/* 04C1D8 8004B5D8 AC6F0000 */  sw    $t7, ($v1)
/* 04C1DC 8004B5DC 018E7825 */  or    $t7, $t4, $t6
/* 04C1E0 8004B5E0 30F800FF */  andi  $t8, $a3, 0xff
/* 04C1E4 8004B5E4 01F85025 */  or    $t2, $t7, $t8
/* 04C1E8 8004B5E8 AC6A0004 */  sw    $t2, 4($v1)
/* 04C1EC 8004B5EC 8D230000 */  lw    $v1, ($t1)
/* 04C1F0 8004B5F0 3C0BFC60 */  lui   $t3, (0xFC60FEC1 >> 16) # lui $t3, 0xfc60
/* 04C1F4 8004B5F4 3C0DAAFD */  lui   $t5, (0xAAFDF2F9 >> 16) # lui $t5, 0xaafd
/* 04C1F8 8004B5F8 24790008 */  addiu $t9, $v1, 8
/* 04C1FC 8004B5FC AD390000 */  sw    $t9, ($t1)
/* 04C200 8004B600 35ADF2F9 */  ori   $t5, (0xAAFDF2F9 & 0xFFFF) # ori $t5, $t5, 0xf2f9
/* 04C204 8004B604 356BFEC1 */  ori   $t3, (0xFC60FEC1 & 0xFFFF) # ori $t3, $t3, 0xfec1
/* 04C208 8004B608 AC6B0000 */  sw    $t3, ($v1)
/* 04C20C 8004B60C 03E00008 */  jr    $ra
/* 04C210 8004B610 AC6D0004 */   sw    $t5, 4($v1)
