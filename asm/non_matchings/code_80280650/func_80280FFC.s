glabel func_80280FFC
/* 12463C 80280FFC 240E0001 */  li    $t6, 1
/* 124640 80281000 3C018028 */  lui   $at, %hi(D_802874F4) # 0x8028
/* 124644 80281004 03E00008 */  jr    $ra
/* 124648 80281008 A02E74F4 */   sb    $t6, %lo(D_802874F4)($at) # 0x74f4($at)
