glabel func_802B59DC
/* 11EFEC 802B59DC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 11EFF0 802B59E0 AFB00018 */  sw    $s0, 0x18($sp)
/* 11EFF4 802B59E4 00808025 */  move  $s0, $a0
/* 11EFF8 802B59E8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 11EFFC 802B59EC 30A4FFFF */  andi  $a0, $a1, 0xffff
/* 11F000 802B59F0 AFA50034 */  sw    $a1, 0x34($sp)
/* 11F004 802B59F4 0C0AE006 */  jal   func_802B8018
/* 11F008 802B59F8 AFA40024 */   sw    $a0, 0x24($sp)
/* 11F00C 802B59FC 8FA40024 */  lw    $a0, 0x24($sp)
/* 11F010 802B5A00 0C0AE00E */  jal   func_802B8038
/* 11F014 802B5A04 E7A0002C */   swc1  $f0, 0x2c($sp)
/* 11F018 802B5A08 02002025 */  move  $a0, $s0
/* 11F01C 802B5A0C 0C0AD4F2 */  jal   func_802B53C8
/* 11F020 802B5A10 E7A00028 */   swc1  $f0, 0x28($sp)
/* 11F024 802B5A14 C7A0002C */  lwc1  $f0, 0x2c($sp)
/* 11F028 802B5A18 C7A20028 */  lwc1  $f2, 0x28($sp)
/* 11F02C 802B5A1C 46000107 */  neg.s $f4, $f0
/* 11F030 802B5A20 E6000018 */  swc1  $f0, 0x18($s0)
/* 11F034 802B5A24 E6040024 */  swc1  $f4, 0x24($s0)
/* 11F038 802B5A28 E6020014 */  swc1  $f2, 0x14($s0)
/* 11F03C 802B5A2C E6020028 */  swc1  $f2, 0x28($s0)
/* 11F040 802B5A30 8FBF001C */  lw    $ra, 0x1c($sp)
/* 11F044 802B5A34 8FB00018 */  lw    $s0, 0x18($sp)
/* 11F048 802B5A38 27BD0030 */  addiu $sp, $sp, 0x30
/* 11F04C 802B5A3C 03E00008 */  jr    $ra
/* 11F050 802B5A40 00000000 */   nop   
