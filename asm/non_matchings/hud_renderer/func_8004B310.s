glabel func_8004B310
/* 04BF10 8004B310 3C068015 */  lui   $a2, %hi(gDisplayListHead) # $a2, 0x8015
/* 04BF14 8004B314 24C60298 */  addiu $a2, %lo(gDisplayListHead) # addiu $a2, $a2, 0x298
/* 04BF18 8004B318 8CC30000 */  lw    $v1, ($a2)
/* 04BF1C 8004B31C 3C0FFCFF */  lui   $t7, (0xFCFF97FF >> 16) # lui $t7, 0xfcff
/* 04BF20 8004B320 3C18FF2C */  lui   $t8, (0xFF2CFE7F >> 16) # lui $t8, 0xff2c
/* 04BF24 8004B324 246E0008 */  addiu $t6, $v1, 8
/* 04BF28 8004B328 ACCE0000 */  sw    $t6, ($a2)
/* 04BF2C 8004B32C 3718FE7F */  ori   $t8, (0xFF2CFE7F & 0xFFFF) # ori $t8, $t8, 0xfe7f
/* 04BF30 8004B330 35EF97FF */  ori   $t7, (0xFCFF97FF & 0xFFFF) # ori $t7, $t7, 0x97ff
/* 04BF34 8004B334 AC6F0000 */  sw    $t7, ($v1)
/* 04BF38 8004B338 AC780004 */  sw    $t8, 4($v1)
/* 04BF3C 8004B33C 8CC30000 */  lw    $v1, ($a2)
/* 04BF40 8004B340 3C08FA00 */  lui   $t0, 0xfa00
/* 04BF44 8004B344 308900FF */  andi  $t1, $a0, 0xff
/* 04BF48 8004B348 24790008 */  addiu $t9, $v1, 8
/* 04BF4C 8004B34C ACD90000 */  sw    $t9, ($a2)
/* 04BF50 8004B350 AC690004 */  sw    $t1, 4($v1)
/* 04BF54 8004B354 03E00008 */  jr    $ra
/* 04BF58 8004B358 AC680000 */   sw    $t0, ($v1)
