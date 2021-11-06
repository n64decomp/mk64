glabel func_800B907C
/* 0B9C7C 800B907C 24A2000F */  addiu $v0, $a1, 0xf
/* 0B9C80 800B9080 2401FFF0 */  li    $at, -16
/* 0B9C84 800B9084 00417024 */  and   $t6, $v0, $at
/* 0B9C88 800B9088 AC8E0000 */  sw    $t6, ($a0)
/* 0B9C8C 800B908C AC8E0004 */  sw    $t6, 4($a0)
/* 0B9C90 800B9090 AC860008 */  sw    $a2, 8($a0)
/* 0B9C94 800B9094 03E00008 */  jr    $ra
/* 0B9C98 800B9098 AC80000C */   sw    $zero, 0xc($a0)
