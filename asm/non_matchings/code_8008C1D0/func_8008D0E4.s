glabel func_8008D0E4
/* 08DCE4 8008D0E4 AFA50004 */  sw    $a1, 4($sp)
/* 08DCE8 8008D0E8 8C8E00BC */  lw    $t6, 0xbc($a0)
/* 08DCEC 8008D0EC 2401F7FF */  li    $at, -2049
/* 08DCF0 8008D0F0 01C17824 */  and   $t7, $t6, $at
/* 08DCF4 8008D0F4 03E00008 */  jr    $ra
/* 08DCF8 8008D0F8 AC8F00BC */   sw    $t7, 0xbc($a0)
