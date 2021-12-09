glabel func_802B5A44
/* 11F054 802B5A44 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 11F058 802B5A48 AFB00018 */  sw    $s0, 0x18($sp)
/* 11F05C 802B5A4C 00808025 */  move  $s0, $a0
/* 11F060 802B5A50 AFBF001C */  sw    $ra, 0x1c($sp)
/* 11F064 802B5A54 30A4FFFF */  andi  $a0, $a1, 0xffff
/* 11F068 802B5A58 AFA50034 */  sw    $a1, 0x34($sp)
/* 11F06C 802B5A5C 0C0AE006 */  jal   sins
/* 11F070 802B5A60 AFA40024 */   sw    $a0, 0x24($sp)
/* 11F074 802B5A64 8FA40024 */  lw    $a0, 0x24($sp)
/* 11F078 802B5A68 0C0AE00E */  jal   coss
/* 11F07C 802B5A6C E7A0002C */   swc1  $f0, 0x2c($sp)
/* 11F080 802B5A70 02002025 */  move  $a0, $s0
/* 11F084 802B5A74 0C0AD4F2 */  jal   mtxf_identity
/* 11F088 802B5A78 E7A00028 */   swc1  $f0, 0x28($sp)
/* 11F08C 802B5A7C C7A0002C */  lwc1  $f0, 0x2c($sp)
/* 11F090 802B5A80 C7A20028 */  lwc1  $f2, 0x28($sp)
/* 11F094 802B5A84 46000107 */  neg.s $f4, $f0
/* 11F098 802B5A88 E6000020 */  swc1  $f0, 0x20($s0)
/* 11F09C 802B5A8C E6040008 */  swc1  $f4, 8($s0)
/* 11F0A0 802B5A90 E6020000 */  swc1  $f2, ($s0)
/* 11F0A4 802B5A94 E6020028 */  swc1  $f2, 0x28($s0)
/* 11F0A8 802B5A98 8FBF001C */  lw    $ra, 0x1c($sp)
/* 11F0AC 802B5A9C 8FB00018 */  lw    $s0, 0x18($sp)
/* 11F0B0 802B5AA0 27BD0030 */  addiu $sp, $sp, 0x30
/* 11F0B4 802B5AA4 03E00008 */  jr    $ra
/* 11F0B8 802B5AA8 00000000 */   nop   
