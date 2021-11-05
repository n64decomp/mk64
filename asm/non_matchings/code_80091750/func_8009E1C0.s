glabel func_8009E1C0
/* 09EDC0 8009E1C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 09EDC4 8009E1C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09EDC8 8009E1C8 0C0277F8 */  jal   func_8009DFE0
/* 09EDCC 8009E1CC 2404000A */   li    $a0, 10
/* 09EDD0 8009E1D0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09EDD4 8009E1D4 3C018019 */  lui   $at, %hi(D_8018EDE0) # $at, 0x8019
/* 09EDD8 8009E1D8 AC20EDE0 */  sw    $zero, %lo(D_8018EDE0)($at)
/* 09EDDC 8009E1DC 03E00008 */  jr    $ra
/* 09EDE0 8009E1E0 27BD0018 */   addiu $sp, $sp, 0x18
