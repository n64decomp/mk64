glabel func_8004A384
/* 04AF84 8004A384 44876000 */  mtc1  $a3, $f12
/* 04AF88 8004A388 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04AF8C 8004A38C AFBF001C */  sw    $ra, 0x1c($sp)
/* 04AF90 8004A390 AFA60028 */  sw    $a2, 0x28($sp)
/* 04AF94 8004A394 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04AF98 8004A398 44076000 */  mfc1  $a3, $f12
/* 04AF9C 8004A39C 0C0108CC */  jal   func_80042330
/* 04AFA0 8004A3A0 01C03025 */   move  $a2, $t6
/* 04AFA4 8004A3A4 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04AFA8 8004A3A8 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04AFAC 8004A3AC 8D030000 */  lw    $v1, ($t0)
/* 04AFB0 8004A3B0 3C190D00 */  lui   $t9, %hi(D_0D007A60) # $t9, 0xd00
/* 04AFB4 8004A3B4 27397A60 */  addiu $t9, %lo(D_0D007A60) # addiu $t9, $t9, 0x7a60
/* 04AFB8 8004A3B8 246F0008 */  addiu $t7, $v1, 8
/* 04AFBC 8004A3BC AD0F0000 */  sw    $t7, ($t0)
/* 04AFC0 8004A3C0 3C180600 */  lui   $t8, 0x600
/* 04AFC4 8004A3C4 AC780000 */  sw    $t8, ($v1)
/* 04AFC8 8004A3C8 AC790004 */  sw    $t9, 4($v1)
/* 04AFCC 8004A3CC 8FA7003C */  lw    $a3, 0x3c($sp)
/* 04AFD0 8004A3D0 8FA60038 */  lw    $a2, 0x38($sp)
/* 04AFD4 8004A3D4 8FA50034 */  lw    $a1, 0x34($sp)
/* 04AFD8 8004A3D8 0C012D05 */  jal   func_8004B414
/* 04AFDC 8004A3DC 8FA40030 */   lw    $a0, 0x30($sp)
/* 04AFE0 8004A3E0 8FA90050 */  lw    $t1, 0x50($sp)
/* 04AFE4 8004A3E4 8FAA0054 */  lw    $t2, 0x54($sp)
/* 04AFE8 8004A3E8 8FA40040 */  lw    $a0, 0x40($sp)
/* 04AFEC 8004A3EC 8FA50044 */  lw    $a1, 0x44($sp)
/* 04AFF0 8004A3F0 8FA60048 */  lw    $a2, 0x48($sp)
/* 04AFF4 8004A3F4 8FA7004C */  lw    $a3, 0x4c($sp)
/* 04AFF8 8004A3F8 AFA90010 */  sw    $t1, 0x10($sp)
/* 04AFFC 8004A3FC 0C01265C */  jal   func_80049970
/* 04B000 8004A400 AFAA0014 */   sw    $t2, 0x14($sp)
/* 04B004 8004A404 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04B008 8004A408 27BD0020 */  addiu $sp, $sp, 0x20
/* 04B00C 8004A40C 03E00008 */  jr    $ra
/* 04B010 8004A410 00000000 */   nop   
