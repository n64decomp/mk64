glabel func_8028DF00
/* 0F7510 8028DF00 3C0E800F */  lui   $t6, %hi(gControllers+0x4) # $t6, 0x800f
/* 0F7514 8028DF04 95CE6914 */  lhu   $t6, %lo(gControllers+0x4)($t6)
/* 0F7518 8028DF08 3C01802C */  lui   $at, %hi(D_802BA040) # $at, 0x802c
/* 0F751C 8028DF0C 3C02800F */  lui   $v0, %hi(gControllers+0x10) # $v0, 0x800f
/* 0F7520 8028DF10 24426920 */  addiu $v0, %lo(gControllers+0x10) # addiu $v0, $v0, 0x6920
/* 0F7524 8028DF14 A42EA040 */  sh    $t6, %lo(D_802BA040)($at)
/* 0F7528 8028DF18 944F0004 */  lhu   $t7, 4($v0)
/* 0F752C 8028DF1C 24420020 */  addiu $v0, $v0, 0x20
/* 0F7530 8028DF20 A42FA042 */  sh    $t7, %lo(D_802BA040+0x2)($at)
/* 0F7534 8028DF24 9458FFF4 */  lhu   $t8, -0xc($v0)
/* 0F7538 8028DF28 A438A044 */  sh    $t8, %lo(D_802BA040+0x4)($at)
/* 0F753C 8028DF2C 94590004 */  lhu   $t9, 4($v0)
/* 0F7540 8028DF30 03E00008 */  jr    $ra
/* 0F7544 8028DF34 A439A046 */   sh    $t9, %lo(D_802BA040+0x6)($at)
