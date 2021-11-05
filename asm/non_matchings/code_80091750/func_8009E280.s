glabel func_8009E280
/* 09EE80 8009E280 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 09EE84 8009E284 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09EE88 8009E288 0C0277F8 */  jal   func_8009DFE0
/* 09EE8C 8009E28C 2404000A */   li    $a0, 10
/* 09EE90 8009E290 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09EE94 8009E294 240E0004 */  li    $t6, 4
/* 09EE98 8009E298 3C018019 */  lui   $at, %hi(D_8018EDE0) # $at, 0x8019
/* 09EE9C 8009E29C AC2EEDE0 */  sw    $t6, %lo(D_8018EDE0)($at)
/* 09EEA0 8009E2A0 03E00008 */  jr    $ra
/* 09EEA4 8009E2A4 27BD0018 */   addiu $sp, $sp, 0x18
