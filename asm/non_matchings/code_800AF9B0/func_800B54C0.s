glabel func_800B54C0
/* 0B60C0 800B54C0 00A03025 */  move  $a2, $a1
/* 0B60C4 800B54C4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B60C8 800B54C8 3C058019 */  lui   $a1, %hi(D_8018ED10) # 0x8019
/* 0B60CC 800B54CC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B60D0 800B54D0 00A62821 */  addu  $a1, $a1, $a2
/* 0B60D4 800B54D4 0C02D53B */  jal   func_800B54EC
/* 0B60D8 800B54D8 90A5ED10 */   lbu   $a1, %lo(D_8018ED10)($a1) # -0x12f0($a1)
/* 0B60DC 800B54DC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B60E0 800B54E0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B60E4 800B54E4 03E00008 */  jr    $ra
/* 0B60E8 800B54E8 00000000 */   nop   
