glabel func_800939C8
/* 0945C8 800939C8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0945CC 800939CC C7A40038 */  lwc1  $f4, 0x38($sp)
/* 0945D0 800939D0 C7A6003C */  lwc1  $f6, 0x3c($sp)
/* 0945D4 800939D4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0945D8 800939D8 240E0001 */  li    $t6, 1
/* 0945DC 800939DC AFAE0018 */  sw    $t6, 0x18($sp)
/* 0945E0 800939E0 E7A40010 */  swc1  $f4, 0x10($sp)
/* 0945E4 800939E4 0C024DE2 */  jal   print_text2
/* 0945E8 800939E8 E7A60014 */   swc1  $f6, 0x14($sp)
/* 0945EC 800939EC 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0945F0 800939F0 27BD0028 */  addiu $sp, $sp, 0x28
/* 0945F4 800939F4 03E00008 */  jr    $ra
/* 0945F8 800939F8 00000000 */   nop   
