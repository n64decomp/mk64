glabel func_800BF044
/* 0BFC44 800BF044 8C830000 */  lw    $v1, ($a0)
/* 0BFC48 800BF048 54640004 */  bnel  $v1, $a0, .L800BF05C
/* 0BFC4C 800BF04C 8C6E0000 */   lw    $t6, ($v1)
/* 0BFC50 800BF050 03E00008 */  jr    $ra
/* 0BFC54 800BF054 00001025 */   move  $v0, $zero

/* 0BFC58 800BF058 8C6E0000 */  lw    $t6, ($v1)
.L800BF05C:
/* 0BFC5C 800BF05C ADC40004 */  sw    $a0, 4($t6)
/* 0BFC60 800BF060 8C6F0000 */  lw    $t7, ($v1)
/* 0BFC64 800BF064 AC8F0000 */  sw    $t7, ($a0)
/* 0BFC68 800BF068 AC600000 */  sw    $zero, ($v1)
/* 0BFC6C 800BF06C 8C980008 */  lw    $t8, 8($a0)
/* 0BFC70 800BF070 2719FFFF */  addiu $t9, $t8, -1
/* 0BFC74 800BF074 AC990008 */  sw    $t9, 8($a0)
/* 0BFC78 800BF078 8C620008 */  lw    $v0, 8($v1)
/* 0BFC7C 800BF07C 03E00008 */  jr    $ra
/* 0BFC80 800BF080 00000000 */   nop   
