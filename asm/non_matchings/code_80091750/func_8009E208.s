glabel func_8009E208
/* 09EE08 8009E208 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 09EE0C 8009E20C AFBF0014 */  sw    $ra, 0x14($sp)
/* 09EE10 8009E210 0C0277F8 */  jal   func_8009DFE0
/* 09EE14 8009E214 2404000A */   li    $a0, 10
/* 09EE18 8009E218 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09EE1C 8009E21C 240E0001 */  li    $t6, 1
/* 09EE20 8009E220 3C018019 */  lui   $at, %hi(D_8018EDE0) # $at, 0x8019
/* 09EE24 8009E224 AC2EEDE0 */  sw    $t6, %lo(D_8018EDE0)($at)
/* 09EE28 8009E228 03E00008 */  jr    $ra
/* 09EE2C 8009E22C 27BD0018 */   addiu $sp, $sp, 0x18
