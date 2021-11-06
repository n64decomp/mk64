glabel func_800BF108
/* 0BFD08 800BF108 8C850000 */  lw    $a1, ($a0)
/* 0BFD0C 800BF10C 90A20000 */  lbu   $v0, ($a1)
/* 0BFD10 800BF110 24AE0001 */  addiu $t6, $a1, 1
/* 0BFD14 800BF114 03E00008 */  jr    $ra
/* 0BFD18 800BF118 AC8E0000 */   sw    $t6, ($a0)
