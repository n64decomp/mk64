glabel func_802B5CAC
/* 11F2BC 802B5CAC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 11F2C0 802B5CB0 AFA40030 */  sw    $a0, 0x30($sp)
/* 11F2C4 802B5CB4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 11F2C8 802B5CB8 30A4FFFF */  andi  $a0, $a1, 0xffff
/* 11F2CC 802B5CBC AFA50034 */  sw    $a1, 0x34($sp)
/* 11F2D0 802B5CC0 AFA60038 */  sw    $a2, 0x38($sp)
/* 11F2D4 802B5CC4 0C0AE006 */  jal   sins
/* 11F2D8 802B5CC8 AFA4001C */   sw    $a0, 0x1c($sp)
/* 11F2DC 802B5CCC 8FA4001C */  lw    $a0, 0x1c($sp)
/* 11F2E0 802B5CD0 0C0AE00E */  jal   coss
/* 11F2E4 802B5CD4 E7A0002C */   swc1  $f0, 0x2c($sp)
/* 11F2E8 802B5CD8 97A40032 */  lhu   $a0, 0x32($sp)
/* 11F2EC 802B5CDC E7A00028 */  swc1  $f0, 0x28($sp)
/* 11F2F0 802B5CE0 0C0AE006 */  jal   sins
/* 11F2F4 802B5CE4 AFA4001C */   sw    $a0, 0x1c($sp)
/* 11F2F8 802B5CE8 8FA4001C */  lw    $a0, 0x1c($sp)
/* 11F2FC 802B5CEC 0C0AE00E */  jal   coss
/* 11F300 802B5CF0 E7A00024 */   swc1  $f0, 0x24($sp)
/* 11F304 802B5CF4 C7A20028 */  lwc1  $f2, 0x28($sp)
/* 11F308 802B5CF8 C7A40024 */  lwc1  $f4, 0x24($sp)
/* 11F30C 802B5CFC 8FA20038 */  lw    $v0, 0x38($sp)
/* 11F310 802B5D00 46041182 */  mul.s $f6, $f2, $f4
/* 11F314 802B5D04 00000000 */  nop   
/* 11F318 802B5D08 46001282 */  mul.s $f10, $f2, $f0
/* 11F31C 802B5D0C E4460000 */  swc1  $f6, ($v0)
/* 11F320 802B5D10 C7A8002C */  lwc1  $f8, 0x2c($sp)
/* 11F324 802B5D14 46005407 */  neg.s $f16, $f10
/* 11F328 802B5D18 E4480004 */  swc1  $f8, 4($v0)
/* 11F32C 802B5D1C E4500008 */  swc1  $f16, 8($v0)
/* 11F330 802B5D20 8FBF0014 */  lw    $ra, 0x14($sp)
/* 11F334 802B5D24 27BD0030 */  addiu $sp, $sp, 0x30
/* 11F338 802B5D28 03E00008 */  jr    $ra
/* 11F33C 802B5D2C 00000000 */   nop   
