glabel func_8008D554
/* 08E154 8008D554 8C8E00BC */  lw    $t6, 0xbc($a0)
/* 08E158 8008D558 44802000 */  mtc1  $zero, $f4
/* 08E15C 8008D55C 2401DFFF */  li    $at, -8193
/* 08E160 8008D560 01C17824 */  and   $t7, $t6, $at
/* 08E164 8008D564 AC8F00BC */  sw    $t7, 0xbc($a0)
/* 08E168 8008D568 03E00008 */  jr    $ra
/* 08E16C 8008D56C E4840080 */   swc1  $f4, 0x80($a0)
