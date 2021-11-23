glabel func_8008EEC4
/* 08FAC4 8008EEC4 8C8E00BC */  lw    $t6, 0xbc($a0)
/* 08FAC8 8008EEC8 3C01FFEF */  lui   $at, (0xFFEFFFFF >> 16) # lui $at, 0xffef
/* 08FACC 8008EECC 44802000 */  mtc1  $zero, $f4
/* 08FAD0 8008EED0 3421FFFF */  ori   $at, (0xFFEFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 08FAD4 8008EED4 01C17824 */  and   $t7, $t6, $at
/* 08FAD8 8008EED8 AC8F00BC */  sw    $t7, 0xbc($a0)
/* 08FADC 8008EEDC 03E00008 */  jr    $ra
/* 08FAE0 8008EEE0 E4840080 */   swc1  $f4, 0x80($a0)
