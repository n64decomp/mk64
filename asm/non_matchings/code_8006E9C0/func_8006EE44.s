glabel func_8006EE44
/* 06FA44 8006EE44 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 06FA48 8006EE48 AFBF0014 */  sw    $ra, 0x14($sp)
/* 06FA4C 8006EE4C 3C040F0D */  lui   $a0, %hi(gTextureLogoMarioKart64) # $a0, 0xf0d
/* 06FA50 8006EE50 3C058019 */  lui   $a1, %hi(D_8018D9B0) # $a1, 0x8019
/* 06FA54 8006EE54 8CA5D9B0 */  lw    $a1, %lo(D_8018D9B0)($a1)
/* 06FA58 8006EE58 24847510 */  addiu $a0, %lo(gTextureLogoMarioKart64) # addiu $a0, $a0, 0x7510
/* 06FA5C 8006EE5C 240679E1 */  li    $a2, 31201
/* 06FA60 8006EE60 0C01BB65 */  jal   func_8006ED94
/* 06FA64 8006EE64 3C070002 */   lui   $a3, 2
/* 06FA68 8006EE68 8FBF0014 */  lw    $ra, 0x14($sp)
/* 06FA6C 8006EE6C 3C018019 */  lui   $at, %hi(D_8018D1E0) # $at, 0x8019
/* 06FA70 8006EE70 AC22D1E0 */  sw    $v0, %lo(D_8018D1E0)($at)
/* 06FA74 8006EE74 03E00008 */  jr    $ra
/* 06FA78 8006EE78 27BD0018 */   addiu $sp, $sp, 0x18
