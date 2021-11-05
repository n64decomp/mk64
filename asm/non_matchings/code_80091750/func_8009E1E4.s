glabel func_8009E1E4
/* 09EDE4 8009E1E4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 09EDE8 8009E1E8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09EDEC 8009E1EC 0C027800 */  jal   func_8009E000
/* 09EDF0 8009E1F0 2404000A */   li    $a0, 10
/* 09EDF4 8009E1F4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09EDF8 8009E1F8 3C018019 */  lui   $at, %hi(D_8018EDE0) # $at, 0x8019
/* 09EDFC 8009E1FC AC20EDE0 */  sw    $zero, %lo(D_8018EDE0)($at)
/* 09EE00 8009E200 03E00008 */  jr    $ra
/* 09EE04 8009E204 27BD0018 */   addiu $sp, $sp, 0x18
