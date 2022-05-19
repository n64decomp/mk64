glabel func_802B5AAC
/* 11F0BC 802B5AAC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 11F0C0 802B5AB0 AFB00018 */  sw    $s0, 0x18($sp)
/* 11F0C4 802B5AB4 00808025 */  move  $s0, $a0
/* 11F0C8 802B5AB8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 11F0CC 802B5ABC 30A4FFFF */  andi  $a0, $a1, 0xffff
/* 11F0D0 802B5AC0 AFA50034 */  sw    $a1, 0x34($sp)
/* 11F0D4 802B5AC4 0C0AE006 */  jal   sins
/* 11F0D8 802B5AC8 AFA40024 */   sw    $a0, 0x24($sp)
/* 11F0DC 802B5ACC 8FA40024 */  lw    $a0, 0x24($sp)
/* 11F0E0 802B5AD0 0C0AE00E */  jal   coss
/* 11F0E4 802B5AD4 E7A0002C */   swc1  $f0, 0x2c($sp)
/* 11F0E8 802B5AD8 02002025 */  move  $a0, $s0
/* 11F0EC 802B5ADC 0C0AD4F2 */  jal   mtxf_identity
/* 11F0F0 802B5AE0 E7A00028 */   swc1  $f0, 0x28($sp)
/* 11F0F4 802B5AE4 C7A0002C */  lwc1  $f0, 0x2c($sp)
/* 11F0F8 802B5AE8 C7A20028 */  lwc1  $f2, 0x28($sp)
/* 11F0FC 802B5AEC 46000107 */  neg.s $f4, $f0
/* 11F100 802B5AF0 E6000004 */  swc1  $f0, 4($s0)
/* 11F104 802B5AF4 E6040010 */  swc1  $f4, 0x10($s0)
/* 11F108 802B5AF8 E6020000 */  swc1  $f2, ($s0)
/* 11F10C 802B5AFC E6020014 */  swc1  $f2, 0x14($s0)
/* 11F110 802B5B00 8FBF001C */  lw    $ra, 0x1c($sp)
/* 11F114 802B5B04 8FB00018 */  lw    $s0, 0x18($sp)
/* 11F118 802B5B08 27BD0030 */  addiu $sp, $sp, 0x30
/* 11F11C 802B5B0C 03E00008 */  jr    $ra
/* 11F120 802B5B10 00000000 */   nop   
