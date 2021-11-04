glabel func_8009E258
/* 09EE58 8009E258 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 09EE5C 8009E25C AFBF0014 */  sw    $ra, 0x14($sp)
/* 09EE60 8009E260 0C0277F8 */  jal   func_8009DFE0
/* 09EE64 8009E264 2404000A */   li    $a0, 10
/* 09EE68 8009E268 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09EE6C 8009E26C 240E0003 */  li    $t6, 3
/* 09EE70 8009E270 3C018019 */  lui   $at, %hi(D_8018EDE0) # $at, 0x8019
/* 09EE74 8009E274 AC2EEDE0 */  sw    $t6, %lo(D_8018EDE0)($at)
/* 09EE78 8009E278 03E00008 */  jr    $ra
/* 09EE7C 8009E27C 27BD0018 */   addiu $sp, $sp, 0x18
