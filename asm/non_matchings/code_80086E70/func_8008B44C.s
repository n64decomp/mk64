glabel func_8008B44C
/* 08C04C 8008B44C 000470C0 */  sll   $t6, $a0, 3
/* 08C050 8008B450 01C47023 */  subu  $t6, $t6, $a0
/* 08C054 8008B454 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 08C058 8008B458 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 08C05C 8008B45C 000E7140 */  sll   $t6, $t6, 5
/* 08C060 8008B460 01CF1021 */  addu  $v0, $t6, $t7
/* 08C064 8008B464 8C58007C */  lw    $t8, 0x7c($v0)
/* 08C068 8008B468 A4400098 */  sh    $zero, 0x98($v0)
/* 08C06C 8008B46C 27190008 */  addiu $t9, $t8, 8
/* 08C070 8008B470 03E00008 */  jr    $ra
/* 08C074 8008B474 AC59007C */   sw    $t9, 0x7c($v0)
