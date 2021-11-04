glabel func_8006EF60
/* 06FB60 8006EF60 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 06FB64 8006EF64 AFB10018 */  sw    $s1, 0x18($sp)
/* 06FB68 8006EF68 3C118019 */  lui   $s1, %hi(D_8018D9B4) # $s1, 0x8019
/* 06FB6C 8006EF6C 8E31D9B4 */  lw    $s1, %lo(D_8018D9B4)($s1)
/* 06FB70 8006EF70 AFB40024 */  sw    $s4, 0x24($sp)
/* 06FB74 8006EF74 AFB30020 */  sw    $s3, 0x20($sp)
/* 06FB78 8006EF78 AFB00014 */  sw    $s0, 0x14($sp)
/* 06FB7C 8006EF7C AFB50028 */  sw    $s5, 0x28($sp)
/* 06FB80 8006EF80 AFB2001C */  sw    $s2, 0x1c($sp)
/* 06FB84 8006EF84 3C01FFFF */  lui   $at, 0xffff
/* 06FB88 8006EF88 3C10800E */  lui   $s0, %hi(D_800E5520) # $s0, 0x800e
/* 06FB8C 8006EF8C 3C13800E */  lui   $s3, %hi(D_800E54D0) # $s3, 0x800e
/* 06FB90 8006EF90 3C148019 */  lui   $s4, %hi(D_8018D248) # $s4, 0x8019
/* 06FB94 8006EF94 AFBF002C */  sw    $ra, 0x2c($sp)
/* 06FB98 8006EF98 2694D248 */  addiu $s4, %lo(D_8018D248) # addiu $s4, $s4, -0x2db8
/* 06FB9C 8006EF9C 267354D0 */  addiu $s3, %lo(D_800E54D0) # addiu $s3, $s3, 0x54d0
/* 06FBA0 8006EFA0 26105520 */  addiu $s0, %lo(D_800E5520) # addiu $s0, $s0, 0x5520
/* 06FBA4 8006EFA4 00009025 */  move  $s2, $zero
/* 06FBA8 8006EFA8 24150014 */  li    $s5, 20
/* 06FBAC 8006EFAC 02218821 */  addu  $s1, $s1, $at
.L8006EFB0:
/* 06FBB0 8006EFB0 86060000 */  lh    $a2, ($s0)
/* 06FBB4 8006EFB4 8E640000 */  lw    $a0, ($s3)
/* 06FBB8 8006EFB8 02202825 */  move  $a1, $s1
/* 06FBBC 8006EFBC 0C01BB65 */  jal   func_8006ED94
/* 06FBC0 8006EFC0 00C03825 */   move  $a3, $a2
/* 06FBC4 8006EFC4 860E0000 */  lh    $t6, ($s0)
/* 06FBC8 8006EFC8 26520001 */  addiu $s2, $s2, 1
/* 06FBCC 8006EFCC AE820000 */  sw    $v0, ($s4)
/* 06FBD0 8006EFD0 26730004 */  addiu $s3, $s3, 4
/* 06FBD4 8006EFD4 26100002 */  addiu $s0, $s0, 2
/* 06FBD8 8006EFD8 26940004 */  addiu $s4, $s4, 4
/* 06FBDC 8006EFDC 1655FFF4 */  bne   $s2, $s5, .L8006EFB0
/* 06FBE0 8006EFE0 022E8821 */   addu  $s1, $s1, $t6
/* 06FBE4 8006EFE4 8FBF002C */  lw    $ra, 0x2c($sp)
/* 06FBE8 8006EFE8 8FB00014 */  lw    $s0, 0x14($sp)
/* 06FBEC 8006EFEC 8FB10018 */  lw    $s1, 0x18($sp)
/* 06FBF0 8006EFF0 8FB2001C */  lw    $s2, 0x1c($sp)
/* 06FBF4 8006EFF4 8FB30020 */  lw    $s3, 0x20($sp)
/* 06FBF8 8006EFF8 8FB40024 */  lw    $s4, 0x24($sp)
/* 06FBFC 8006EFFC 8FB50028 */  lw    $s5, 0x28($sp)
/* 06FC00 8006F000 03E00008 */  jr    $ra
/* 06FC04 8006F004 27BD0030 */   addiu $sp, $sp, 0x30
