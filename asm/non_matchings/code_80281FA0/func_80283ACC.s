glabel func_80283ACC
/* 12710C 80283ACC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 127110 80283AD0 AFA40018 */  sw    $a0, 0x18($sp)
/* 127114 80283AD4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 127118 80283AD8 3C044900 */  lui   $a0, (0x49008020 >> 16) # lui $a0, 0x4900
/* 12711C 80283ADC 0C032384 */  jal   play_sound2
/* 127120 80283AE0 34848020 */   ori   $a0, (0x49008020 & 0xFFFF) # ori $a0, $a0, 0x8020
/* 127124 80283AE4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 127128 80283AE8 27BD0018 */  addiu $sp, $sp, 0x18
/* 12712C 80283AEC 03E00008 */  jr    $ra
/* 127130 80283AF0 00000000 */   nop   
