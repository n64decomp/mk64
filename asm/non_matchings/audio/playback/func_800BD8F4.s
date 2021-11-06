glabel func_800BD8F4
/* 0BE4F4 800BD8F4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0BE4F8 800BD8F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0BE4FC 800BD8FC AFA40018 */  sw    $a0, 0x18($sp)
/* 0BE500 800BD900 AFA5001C */  sw    $a1, 0x1c($sp)
/* 0BE504 800BD904 0C02F450 */  jal   func_800BD140
/* 0BE508 800BD908 8C840044 */   lw    $a0, 0x44($a0)
/* 0BE50C 800BD90C 8FAF001C */  lw    $t7, 0x1c($sp)
/* 0BE510 800BD910 8FB80018 */  lw    $t8, 0x18($sp)
/* 0BE514 800BD914 AF0F0048 */  sw    $t7, 0x48($t8)
/* 0BE518 800BD918 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0BE51C 800BD91C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0BE520 800BD920 03E00008 */  jr    $ra
/* 0BE524 800BD924 00000000 */   nop   
