glabel func_8004B35C
/* 04BF5C 8004B35C 3C098015 */  lui   $t1, %hi(gDisplayListHead) # $t1, 0x8015
/* 04BF60 8004B360 25290298 */  addiu $t1, %lo(gDisplayListHead) # addiu $t1, $t1, 0x298
/* 04BF64 8004B364 8D230000 */  lw    $v1, ($t1)
/* 04BF68 8004B368 3C0FFC11 */  lui   $t7, (0xFC119623 >> 16) # lui $t7, 0xfc11
/* 04BF6C 8004B36C 3C18FF2F */  lui   $t8, (0xFF2FFFFF >> 16) # lui $t8, 0xff2f
/* 04BF70 8004B370 246E0008 */  addiu $t6, $v1, 8
/* 04BF74 8004B374 AD2E0000 */  sw    $t6, ($t1)
/* 04BF78 8004B378 3718FFFF */  ori   $t8, (0xFF2FFFFF & 0xFFFF) # ori $t8, $t8, 0xffff
/* 04BF7C 8004B37C 35EF9623 */  ori   $t7, (0xFC119623 & 0xFFFF) # ori $t7, $t7, 0x9623
/* 04BF80 8004B380 AC6F0000 */  sw    $t7, ($v1)
/* 04BF84 8004B384 AC780004 */  sw    $t8, 4($v1)
/* 04BF88 8004B388 8D230000 */  lw    $v1, ($t1)
/* 04BF8C 8004B38C 30AD00FF */  andi  $t5, $a1, 0xff
/* 04BF90 8004B390 000D7400 */  sll   $t6, $t5, 0x10
/* 04BF94 8004B394 24790008 */  addiu $t9, $v1, 8
/* 04BF98 8004B398 AD390000 */  sw    $t9, ($t1)
/* 04BF9C 8004B39C 30D800FF */  andi  $t8, $a2, 0xff
/* 04BFA0 8004B3A0 3C0AFA00 */  lui   $t2, 0xfa00
/* 04BFA4 8004B3A4 00046600 */  sll   $t4, $a0, 0x18
/* 04BFA8 8004B3A8 018E7825 */  or    $t7, $t4, $t6
/* 04BFAC 8004B3AC 0018CA00 */  sll   $t9, $t8, 8
/* 04BFB0 8004B3B0 AC6A0000 */  sw    $t2, ($v1)
/* 04BFB4 8004B3B4 01F95025 */  or    $t2, $t7, $t9
/* 04BFB8 8004B3B8 30EB00FF */  andi  $t3, $a3, 0xff
/* 04BFBC 8004B3BC 014B6825 */  or    $t5, $t2, $t3
/* 04BFC0 8004B3C0 03E00008 */  jr    $ra
/* 04BFC4 8004B3C4 AC6D0004 */   sw    $t5, 4($v1)
