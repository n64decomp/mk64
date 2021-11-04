glabel func_80283CA8
/* 1272E8 80283CA8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1272EC 80283CAC AFBF0014 */  sw    $ra, 0x14($sp)
/* 1272F0 80283CB0 AFA40018 */  sw    $a0, 0x18($sp)
/* 1272F4 80283CB4 00002025 */  move  $a0, $zero
/* 1272F8 80283CB8 0C032802 */  jal   func_800CA008
/* 1272FC 80283CBC 24050003 */   li    $a1, 3
/* 127300 80283CC0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 127304 80283CC4 27BD0018 */  addiu $sp, $sp, 0x18
/* 127308 80283CC8 03E00008 */  jr    $ra
/* 12730C 80283CCC 00000000 */   nop   
