glabel func_8005AA6C
/* 05B66C 8005AA6C 3C018019 */  lui   $at, %hi(D_8018D1CC) # $at, 0x8019
/* 05B670 8005AA70 AC24D1CC */  sw    $a0, %lo(D_8018D1CC)($at)
/* 05B674 8005AA74 3C018019 */  lui   $at, %hi(D_8018D1A0)
/* 05B678 8005AA78 03E00008 */  jr    $ra
/* 05B67C 8005AA7C AC20D1A0 */   sw    $zero, %lo(D_8018D1A0)($at)
