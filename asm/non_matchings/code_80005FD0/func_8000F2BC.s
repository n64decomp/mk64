glabel func_8000F2BC
/* 00FEBC 8000F2BC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00FEC0 8000F2C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00FEC4 8000F2C4 0C033698 */  jal   bzero
/* 00FEC8 8000F2C8 000528C0 */   sll   $a1, $a1, 3
/* 00FECC 8000F2CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00FED0 8000F2D0 27BD0018 */  addiu $sp, $sp, 0x18
/* 00FED4 8000F2D4 03E00008 */  jr    $ra
/* 00FED8 8000F2D8 00000000 */   nop   
