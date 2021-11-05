glabel func_800790B4
/* 079CB4 800790B4 00047080 */  sll   $t6, $a0, 2
/* 079CB8 800790B8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 079CBC 800790BC 3C048018 */  lui   $a0, %hi(D_80183DB8) # 0x8018
/* 079CC0 800790C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 079CC4 800790C4 008E2021 */  addu  $a0, $a0, $t6
/* 079CC8 800790C8 8C843DB8 */  lw    $a0, %lo(D_80183DB8)($a0) # 0x3db8($a0)
/* 079CCC 800790CC 0C01C8E9 */  jal   func_800723A4
/* 079CD0 800790D0 24050005 */   li    $a1, 5
/* 079CD4 800790D4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 079CD8 800790D8 27BD0018 */  addiu $sp, $sp, 0x18
/* 079CDC 800790DC 03E00008 */  jr    $ra
/* 079CE0 800790E0 00000000 */   nop   
