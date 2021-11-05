glabel func_8005AA34
/* 05B634 8005AA34 240E0001 */  li    $t6, 1
/* 05B638 8005AA38 3C018019 */  lui   $at, %hi(D_8018D1CC) # $at, 0x8019
/* 05B63C 8005AA3C AC2ED1CC */  sw    $t6, %lo(D_8018D1CC)($at)
/* 05B640 8005AA40 3C018019 */  lui   $at, %hi(D_8018D1A0)
/* 05B644 8005AA44 03E00008 */  jr    $ra
/* 05B648 8005AA48 AC20D1A0 */   sw    $zero, %lo(D_8018D1A0)($at)
