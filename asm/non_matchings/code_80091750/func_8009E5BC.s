glabel func_8009E5BC
/* 09F1BC 8009E5BC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 09F1C0 8009E5C0 AFB10018 */  sw    $s1, 0x18($sp)
/* 09F1C4 8009E5C4 AFB00014 */  sw    $s0, 0x14($sp)
/* 09F1C8 8009E5C8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 09F1CC 8009E5CC 00008025 */  move  $s0, $zero
/* 09F1D0 8009E5D0 24110004 */  li    $s1, 4
.L8009E5D4:
/* 09F1D4 8009E5D4 0C02797F */  jal   func_8009E5FC
/* 09F1D8 8009E5D8 02002025 */   move  $a0, $s0
/* 09F1DC 8009E5DC 26100001 */  addiu $s0, $s0, 1
/* 09F1E0 8009E5E0 1611FFFC */  bne   $s0, $s1, .L8009E5D4
/* 09F1E4 8009E5E4 00000000 */   nop   
/* 09F1E8 8009E5E8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 09F1EC 8009E5EC 8FB00014 */  lw    $s0, 0x14($sp)
/* 09F1F0 8009E5F0 8FB10018 */  lw    $s1, 0x18($sp)
/* 09F1F4 8009E5F4 03E00008 */  jr    $ra
/* 09F1F8 8009E5F8 27BD0020 */   addiu $sp, $sp, 0x20
