glabel func_8008FEDC
/* 090ADC 8008FEDC AFA50004 */  sw    $a1, 4($sp)
/* 090AE0 8008FEE0 44800000 */  mtc1  $zero, $f0
/* 090AE4 8008FEE4 8C8E00BC */  lw    $t6, 0xbc($a0)
/* 090AE8 8008FEE8 3C01EFFF */  lui   $at, (0xEFFFFFFF >> 16) # lui $at, 0xefff
/* 090AEC 8008FEEC 3421FFFF */  ori   $at, (0xEFFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 090AF0 8008FEF0 01C17824 */  and   $t7, $t6, $at
/* 090AF4 8008FEF4 AC8F00BC */  sw    $t7, 0xbc($a0)
/* 090AF8 8008FEF8 E48000F0 */  swc1  $f0, 0xf0($a0)
/* 090AFC 8008FEFC E48000EC */  swc1  $f0, 0xec($a0)
/* 090B00 8008FF00 03E00008 */  jr    $ra
/* 090B04 8008FF04 E48000F4 */   swc1  $f0, 0xf4($a0)
