glabel func_8005AA80
/* 05B680 8005AA80 3C018019 */  lui   $at, %hi(D_8018D1CC) # $at, 0x8019
/* 05B684 8005AA84 AC20D1CC */  sw    $zero, %lo(D_8018D1CC)($at)
/* 05B688 8005AA88 3C018019 */  lui   $at, %hi(D_8018D1A0)
/* 05B68C 8005AA8C 03E00008 */  jr    $ra
/* 05B690 8005AA90 AC20D1A0 */   sw    $zero, %lo(D_8018D1A0)($at)
