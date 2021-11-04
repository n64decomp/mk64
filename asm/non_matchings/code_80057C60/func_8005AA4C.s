glabel func_8005AA4C
/* 05B64C 8005AA4C 3C028019 */  lui   $v0, %hi(D_8018D1CC) # $v0, 0x8019
/* 05B650 8005AA50 2442D1CC */  addiu $v0, %lo(D_8018D1CC) # addiu $v0, $v0, -0x2e34
/* 05B654 8005AA54 8C4E0000 */  lw    $t6, ($v0)
/* 05B658 8005AA58 3C018019 */  lui   $at, %hi(D_8018D1A0)
/* 05B65C 8005AA5C 25CF0001 */  addiu $t7, $t6, 1
/* 05B660 8005AA60 AC4F0000 */  sw    $t7, ($v0)
/* 05B664 8005AA64 03E00008 */  jr    $ra
/* 05B668 8005AA68 AC20D1A0 */   sw    $zero, %lo(D_8018D1A0)($at)
