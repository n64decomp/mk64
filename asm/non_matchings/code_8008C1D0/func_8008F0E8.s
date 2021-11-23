glabel func_8008F0E8
/* 08FCE8 8008F0E8 8C8E00BC */  lw    $t6, 0xbc($a0)
/* 08FCEC 8008F0EC 44802000 */  mtc1  $zero, $f4
/* 08FCF0 8008F0F0 2401FFFB */  li    $at, -5
/* 08FCF4 8008F0F4 01C17824 */  and   $t7, $t6, $at
/* 08FCF8 8008F0F8 AC8F00BC */  sw    $t7, 0xbc($a0)
/* 08FCFC 8008F0FC 03E00008 */  jr    $ra
/* 08FD00 8008F100 E4840080 */   swc1  $f4, 0x80($a0)
