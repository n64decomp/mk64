glabel func_8009E230
/* 09EE30 8009E230 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 09EE34 8009E234 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09EE38 8009E238 0C0277F8 */  jal   func_8009DFE0
/* 09EE3C 8009E23C 2404000A */   li    $a0, 10
/* 09EE40 8009E240 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09EE44 8009E244 240E0002 */  li    $t6, 2
/* 09EE48 8009E248 3C018019 */  lui   $at, %hi(D_8018EDE0) # $at, 0x8019
/* 09EE4C 8009E24C AC2EEDE0 */  sw    $t6, %lo(D_8018EDE0)($at)
/* 09EE50 8009E250 03E00008 */  jr    $ra
/* 09EE54 8009E254 27BD0018 */   addiu $sp, $sp, 0x18
