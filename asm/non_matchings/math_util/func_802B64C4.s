glabel func_802B64C4
/* 11FAD4 802B64C4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 11FAD8 802B64C8 00803025 */  move  $a2, $a0
/* 11FADC 802B64CC AFBF0014 */  sw    $ra, 0x14($sp)
/* 11FAE0 802B64D0 30A4FFFF */  andi  $a0, $a1, 0xffff
/* 11FAE4 802B64D4 AFA50034 */  sw    $a1, 0x34($sp)
/* 11FAE8 802B64D8 AFA40018 */  sw    $a0, 0x18($sp)
/* 11FAEC 802B64DC 0C0AE006 */  jal   sins
/* 11FAF0 802B64E0 AFA60030 */   sw    $a2, 0x30($sp)
/* 11FAF4 802B64E4 8FA40018 */  lw    $a0, 0x18($sp)
/* 11FAF8 802B64E8 0C0AE00E */  jal   coss
/* 11FAFC 802B64EC E7A0002C */   swc1  $f0, 0x2c($sp)
/* 11FB00 802B64F0 8FA60030 */  lw    $a2, 0x30($sp)
/* 11FB04 802B64F4 C7B0002C */  lwc1  $f16, 0x2c($sp)
/* 11FB08 802B64F8 C4C20000 */  lwc1  $f2, ($a2)
/* 11FB0C 802B64FC C4CC0008 */  lwc1  $f12, 8($a2)
/* 11FB10 802B6500 C4CE0004 */  lwc1  $f14, 4($a2)
/* 11FB14 802B6504 46020102 */  mul.s $f4, $f0, $f2
/* 11FB18 802B6508 E4CE0004 */  swc1  $f14, 4($a2)
/* 11FB1C 802B650C 460C8182 */  mul.s $f6, $f16, $f12
/* 11FB20 802B6510 00000000 */  nop   
/* 11FB24 802B6514 46028282 */  mul.s $f10, $f16, $f2
/* 11FB28 802B6518 00000000 */  nop   
/* 11FB2C 802B651C 460C0482 */  mul.s $f18, $f0, $f12
/* 11FB30 802B6520 46062201 */  sub.s $f8, $f4, $f6
/* 11FB34 802B6524 E4C80000 */  swc1  $f8, ($a2)
/* 11FB38 802B6528 46125100 */  add.s $f4, $f10, $f18
/* 11FB3C 802B652C E4C40008 */  swc1  $f4, 8($a2)
/* 11FB40 802B6530 8FBF0014 */  lw    $ra, 0x14($sp)
/* 11FB44 802B6534 27BD0030 */  addiu $sp, $sp, 0x30
/* 11FB48 802B6538 03E00008 */  jr    $ra
/* 11FB4C 802B653C 00000000 */   nop   
