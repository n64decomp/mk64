glabel func_8000D24C
/* 00DE4C 8000D24C 27BDFF98 */  addiu $sp, $sp, -0x68
/* 00DE50 8000D250 AFA60070 */  sw    $a2, 0x70($sp)
/* 00DE54 8000D254 C7A40070 */  lwc1  $f4, 0x70($sp)
/* 00DE58 8000D258 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00DE5C 8000D25C E7AC0068 */  swc1  $f12, 0x68($sp)
/* 00DE60 8000D260 E7AE006C */  swc1  $f14, 0x6c($sp)
/* 00DE64 8000D264 AFA70074 */  sw    $a3, 0x74($sp)
/* 00DE68 8000D268 8FA7006C */  lw    $a3, 0x6c($sp)
/* 00DE6C 8000D26C 8FA60068 */  lw    $a2, 0x68($sp)
/* 00DE70 8000D270 27A40024 */  addiu $a0, $sp, 0x24
/* 00DE74 8000D274 3C054120 */  lui   $a1, 0x4120
/* 00DE78 8000D278 0C0AB772 */  jal   func_802ADDC8
/* 00DE7C 8000D27C E7A40010 */   swc1  $f4, 0x10($sp)
/* 00DE80 8000D280 0C0AAF50 */  jal   func_802ABD40
/* 00DE84 8000D284 97A4002E */   lhu   $a0, 0x2e($sp)
/* 00DE88 8000D288 8FAE0074 */  lw    $t6, 0x74($sp)
/* 00DE8C 8000D28C C7AC0068 */  lwc1  $f12, 0x68($sp)
/* 00DE90 8000D290 C7AE006C */  lwc1  $f14, 0x6c($sp)
/* 00DE94 8000D294 8FA60070 */  lw    $a2, 0x70($sp)
/* 00DE98 8000D298 3047FFFF */  andi  $a3, $v0, 0xffff
/* 00DE9C 8000D29C 0C00302F */  jal   func_8000C0BC
/* 00DEA0 8000D2A0 AFAE0010 */   sw    $t6, 0x10($sp)
/* 00DEA4 8000D2A4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00DEA8 8000D2A8 27BD0068 */  addiu $sp, $sp, 0x68
/* 00DEAC 8000D2AC 03E00008 */  jr    $ra
/* 00DEB0 8000D2B0 00000000 */   nop   
