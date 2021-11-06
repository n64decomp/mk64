glabel func_800BF11C
/* 0BFD1C 800BF11C 8C850000 */  lw    $a1, ($a0)
/* 0BFD20 800BF120 90A30000 */  lbu   $v1, ($a1)
/* 0BFD24 800BF124 24B90001 */  addiu $t9, $a1, 1
/* 0BFD28 800BF128 AC990000 */  sw    $t9, ($a0)
/* 0BFD2C 800BF12C 93280000 */  lbu   $t0, ($t9)
/* 0BFD30 800BF130 0003C200 */  sll   $t8, $v1, 8
/* 0BFD34 800BF134 272B0001 */  addiu $t3, $t9, 1
/* 0BFD38 800BF138 01181825 */  or    $v1, $t0, $t8
/* 0BFD3C 800BF13C 00034C00 */  sll   $t1, $v1, 0x10
/* 0BFD40 800BF140 00091403 */  sra   $v0, $t1, 0x10
/* 0BFD44 800BF144 03E00008 */  jr    $ra
/* 0BFD48 800BF148 AC8B0000 */   sw    $t3, ($a0)
