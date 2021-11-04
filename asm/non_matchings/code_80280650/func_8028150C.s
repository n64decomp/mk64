glabel func_8028150C
/* 124B4C 8028150C 3C0E8015 */  lui   $t6, %hi(gDisplayListHead) # $t6, 0x8015
/* 124B50 80281510 8DCE0298 */  lw    $t6, %lo(gDisplayListHead)($t6)
/* 124B54 80281514 3C018028 */  lui   $at, %hi(D_802874D4) # 0x8028
/* 124B58 80281518 03E00008 */  jr    $ra
/* 124B5C 8028151C AC2E74D4 */   sw    $t6, %lo(D_802874D4)($at) # 0x74d4($at)
