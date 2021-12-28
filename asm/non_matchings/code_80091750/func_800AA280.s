glabel func_800AA280
/* 0AAE80 800AA280 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0AAE84 800AA284 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0AAE88 800AA288 8C8E0000 */  lw    $t6, ($a0)
/* 0AAE8C 800AA28C 3C038019 */  lui   $v1, %hi(gMainMenuSelectionDepth) # $v1, 0x8019
/* 0AAE90 800AA290 8063EDED */  lb    $v1, %lo(gMainMenuSelectionDepth)($v1)
/* 0AAE94 800AA294 3C19800E */  lui   $t9, %hi(D_800E70A0) # $t9, 0x800e
/* 0AAE98 800AA298 000E78C0 */  sll   $t7, $t6, 3
/* 0AAE9C 800AA29C 25F8FFB0 */  addiu $t8, $t7, -0x50
/* 0AAEA0 800AA2A0 273970A0 */  addiu $t9, %lo(D_800E70A0) # addiu $t9, $t9, 0x70a0
/* 0AAEA4 800AA2A4 24010007 */  li    $at, 7
/* 0AAEA8 800AA2A8 10610004 */  beq   $v1, $at, .L800AA2BC
/* 0AAEAC 800AA2AC 03191021 */   addu  $v0, $t8, $t9
/* 0AAEB0 800AA2B0 24010008 */  li    $at, 8
/* 0AAEB4 800AA2B4 54610007 */  bnel  $v1, $at, .L800AA2D4
/* 0AAEB8 800AA2B8 84450000 */   lh    $a1, ($v0)
.L800AA2BC:
/* 0AAEBC 800AA2BC 84480000 */  lh    $t0, ($v0)
/* 0AAEC0 800AA2C0 AC88000C */  sw    $t0, 0xc($a0)
/* 0AAEC4 800AA2C4 84490002 */  lh    $t1, 2($v0)
/* 0AAEC8 800AA2C8 10000004 */  b     .L800AA2DC
/* 0AAECC 800AA2CC AC890010 */   sw    $t1, 0x10($a0)
/* 0AAED0 800AA2D0 84450000 */  lh    $a1, ($v0)
.L800AA2D4:
/* 0AAED4 800AA2D4 0C02A476 */  jal   func_800A91D8
/* 0AAED8 800AA2D8 84460002 */   lh    $a2, 2($v0)
.L800AA2DC:
/* 0AAEDC 800AA2DC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0AAEE0 800AA2E0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0AAEE4 800AA2E4 03E00008 */  jr    $ra
/* 0AAEE8 800AA2E8 00000000 */   nop   
