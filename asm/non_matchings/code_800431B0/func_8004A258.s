glabel func_8004A258
/* 04AE58 8004A258 44876000 */  mtc1  $a3, $f12
/* 04AE5C 8004A25C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04AE60 8004A260 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04AE64 8004A264 AFA60028 */  sw    $a2, 0x28($sp)
/* 04AE68 8004A268 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04AE6C 8004A26C 44076000 */  mfc1  $a3, $f12
/* 04AE70 8004A270 0C0108CC */  jal   func_80042330
/* 04AE74 8004A274 01C03025 */   move  $a2, $t6
/* 04AE78 8004A278 3C098015 */  lui   $t1, %hi(gDisplayListHead) # $t1, 0x8015
/* 04AE7C 8004A27C 25290298 */  addiu $t1, %lo(gDisplayListHead) # addiu $t1, $t1, 0x298
/* 04AE80 8004A280 8D220000 */  lw    $v0, ($t1)
/* 04AE84 8004A284 3C190D00 */  lui   $t9, %hi(D_0D007A60) # $t9, 0xd00
/* 04AE88 8004A288 27397A60 */  addiu $t9, %lo(D_0D007A60) # addiu $t9, $t9, 0x7a60
/* 04AE8C 8004A28C 244F0008 */  addiu $t7, $v0, 8
/* 04AE90 8004A290 AD2F0000 */  sw    $t7, ($t1)
/* 04AE94 8004A294 3C180600 */  lui   $t8, 0x600
/* 04AE98 8004A298 AC580000 */  sw    $t8, ($v0)
/* 04AE9C 8004A29C AC590004 */  sw    $t9, 4($v0)
/* 04AEA0 8004A2A0 8D220000 */  lw    $v0, ($t1)
/* 04AEA4 8004A2A4 3C0BFC62 */  lui   $t3, (0xFC627EC4 >> 16) # lui $t3, 0xfc62
/* 04AEA8 8004A2A8 356B7EC4 */  ori   $t3, (0xFC627EC4 & 0xFFFF) # ori $t3, $t3, 0x7ec4
/* 04AEAC 8004A2AC 244A0008 */  addiu $t2, $v0, 8
/* 04AEB0 8004A2B0 AD2A0000 */  sw    $t2, ($t1)
/* 04AEB4 8004A2B4 240CF3F9 */  li    $t4, -3079
/* 04AEB8 8004A2B8 AC4C0004 */  sw    $t4, 4($v0)
/* 04AEBC 8004A2BC AC4B0000 */  sw    $t3, ($v0)
/* 04AEC0 8004A2C0 8FAE0044 */  lw    $t6, 0x44($sp)
/* 04AEC4 8004A2C4 8FAD0040 */  lw    $t5, 0x40($sp)
/* 04AEC8 8004A2C8 8FA7003C */  lw    $a3, 0x3c($sp)
/* 04AECC 8004A2CC 8FA60038 */  lw    $a2, 0x38($sp)
/* 04AED0 8004A2D0 8FA50034 */  lw    $a1, 0x34($sp)
/* 04AED4 8004A2D4 8FA40030 */  lw    $a0, 0x30($sp)
/* 04AED8 8004A2D8 AFAE0014 */  sw    $t6, 0x14($sp)
/* 04AEDC 8004A2DC 0C01265C */  jal   func_80049970
/* 04AEE0 8004A2E0 AFAD0010 */   sw    $t5, 0x10($sp)
/* 04AEE4 8004A2E4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04AEE8 8004A2E8 27BD0020 */  addiu $sp, $sp, 0x20
/* 04AEEC 8004A2EC 03E00008 */  jr    $ra
/* 04AEF0 8004A2F0 00000000 */   nop   
