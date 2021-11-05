glabel func_800936B8
/* 0942B8 800936B8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0942BC 800936BC C7A40038 */  lwc1  $f4, 0x38($sp)
/* 0942C0 800936C0 C7A6003C */  lwc1  $f6, 0x3c($sp)
/* 0942C4 800936C4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0942C8 800936C8 240E0001 */  li    $t6, 1
/* 0942CC 800936CC AFAE0018 */  sw    $t6, 0x18($sp)
/* 0942D0 800936D0 E7A40010 */  swc1  $f4, 0x10($sp)
/* 0942D4 800936D4 0C024CE3 */  jal   print_text1
/* 0942D8 800936D8 E7A60014 */   swc1  $f6, 0x14($sp)
/* 0942DC 800936DC 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0942E0 800936E0 27BD0028 */  addiu $sp, $sp, 0x28
/* 0942E4 800936E4 03E00008 */  jr    $ra
/* 0942E8 800936E8 00000000 */   nop   
