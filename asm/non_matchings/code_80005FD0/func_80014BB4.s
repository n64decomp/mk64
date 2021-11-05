glabel func_80014BB4
/* 0157B4 80014BB4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0157B8 80014BB8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0157BC 80014BBC 3C068016 */  lui   $a2, %hi(D_80163AF8) # $a2, 0x8016
/* 0157C0 80014BC0 24C63AF8 */  addiu $a2, %lo(D_80163AF8) # addiu $a2, $a2, 0x3af8
/* 0157C4 80014BC4 0C0051AE */  jal   func_800146B8
/* 0157C8 80014BC8 24050007 */   li    $a1, 7
/* 0157CC 80014BCC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0157D0 80014BD0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0157D4 80014BD4 03E00008 */  jr    $ra
/* 0157D8 80014BD8 00000000 */   nop   
