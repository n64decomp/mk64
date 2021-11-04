glabel func_80056A94
/* 057694 80056A94 00047080 */  sll   $t6, $a0, 2
/* 057698 80056A98 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 05769C 80056A9C 3C048018 */  lui   $a0, %hi(D_80183DD8) # 0x8018
/* 0576A0 80056AA0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0576A4 80056AA4 008E2021 */  addu  $a0, $a0, $t6
/* 0576A8 80056AA8 0C01C90A */  jal   func_80072428
/* 0576AC 80056AAC 8C843DD8 */   lw    $a0, %lo(D_80183DD8)($a0) # 0x3dd8($a0)
/* 0576B0 80056AB0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0576B4 80056AB4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0576B8 80056AB8 03E00008 */  jr    $ra
/* 0576BC 80056ABC 00000000 */   nop   
