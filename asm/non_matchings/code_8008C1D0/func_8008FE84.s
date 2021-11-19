glabel func_8008FE84
/* 090A84 8008FE84 AFA50004 */  sw    $a1, 4($sp)
/* 090A88 8008FE88 8C8E00BC */  lw    $t6, 0xbc($a0)
/* 090A8C 8008FE8C 2401FFEF */  li    $at, -17
/* 090A90 8008FE90 01C17824 */  and   $t7, $t6, $at
/* 090A94 8008FE94 31F80008 */  andi  $t8, $t7, 8
/* 090A98 8008FE98 24010008 */  li    $at, 8
/* 090A9C 8008FE9C 1301000D */  beq   $t8, $at, .L8008FED4
/* 090AA0 8008FEA0 AC8F00BC */   sw    $t7, 0xbc($a0)
/* 090AA4 8008FEA4 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 090AA8 8008FEA8 44810000 */  mtc1  $at, $f0
/* 090AAC 8008FEAC C484009C */  lwc1  $f4, 0x9c($a0)
/* 090AB0 8008FEB0 C488008C */  lwc1  $f8, 0x8c($a0)
/* 090AB4 8008FEB4 3C01EFFF */  lui   $at, (0xEFFFFFFF >> 16) # lui $at, 0xefff
/* 090AB8 8008FEB8 46002183 */  div.s $f6, $f4, $f0
/* 090ABC 8008FEBC 3421FFFF */  ori   $at, (0xEFFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 090AC0 8008FEC0 01E1C824 */  and   $t9, $t7, $at
/* 090AC4 8008FEC4 AC9900BC */  sw    $t9, 0xbc($a0)
/* 090AC8 8008FEC8 46004283 */  div.s $f10, $f8, $f0
/* 090ACC 8008FECC E486009C */  swc1  $f6, 0x9c($a0)
/* 090AD0 8008FED0 E48A008C */  swc1  $f10, 0x8c($a0)
.L8008FED4:
/* 090AD4 8008FED4 03E00008 */  jr    $ra
/* 090AD8 8008FED8 00000000 */   nop   
