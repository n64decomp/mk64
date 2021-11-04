glabel func_8004A2F4
/* 04AEF4 8004A2F4 44876000 */  mtc1  $a3, $f12
/* 04AEF8 8004A2F8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04AEFC 8004A2FC AFBF001C */  sw    $ra, 0x1c($sp)
/* 04AF00 8004A300 AFA60028 */  sw    $a2, 0x28($sp)
/* 04AF04 8004A304 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04AF08 8004A308 44076000 */  mfc1  $a3, $f12
/* 04AF0C 8004A30C 0C0108CC */  jal   func_80042330
/* 04AF10 8004A310 01C03025 */   move  $a2, $t6
/* 04AF14 8004A314 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04AF18 8004A318 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04AF1C 8004A31C 8D030000 */  lw    $v1, ($t0)
/* 04AF20 8004A320 3C190D00 */  lui   $t9, %hi(D_0D007A40) # $t9, 0xd00
/* 04AF24 8004A324 27397A40 */  addiu $t9, %lo(D_0D007A40) # addiu $t9, $t9, 0x7a40
/* 04AF28 8004A328 246F0008 */  addiu $t7, $v1, 8
/* 04AF2C 8004A32C AD0F0000 */  sw    $t7, ($t0)
/* 04AF30 8004A330 3C180600 */  lui   $t8, 0x600
/* 04AF34 8004A334 AC780000 */  sw    $t8, ($v1)
/* 04AF38 8004A338 AC790004 */  sw    $t9, 4($v1)
/* 04AF3C 8004A33C 8FA7003C */  lw    $a3, 0x3c($sp)
/* 04AF40 8004A340 8FA60038 */  lw    $a2, 0x38($sp)
/* 04AF44 8004A344 8FA50034 */  lw    $a1, 0x34($sp)
/* 04AF48 8004A348 0C012D05 */  jal   func_8004B414
/* 04AF4C 8004A34C 8FA40030 */   lw    $a0, 0x30($sp)
/* 04AF50 8004A350 8FA90050 */  lw    $t1, 0x50($sp)
/* 04AF54 8004A354 8FAA0054 */  lw    $t2, 0x54($sp)
/* 04AF58 8004A358 8FA40040 */  lw    $a0, 0x40($sp)
/* 04AF5C 8004A35C 8FA50044 */  lw    $a1, 0x44($sp)
/* 04AF60 8004A360 8FA60048 */  lw    $a2, 0x48($sp)
/* 04AF64 8004A364 8FA7004C */  lw    $a3, 0x4c($sp)
/* 04AF68 8004A368 AFA90010 */  sw    $t1, 0x10($sp)
/* 04AF6C 8004A36C 0C01265C */  jal   func_80049970
/* 04AF70 8004A370 AFAA0014 */   sw    $t2, 0x14($sp)
/* 04AF74 8004A374 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04AF78 8004A378 27BD0020 */  addiu $sp, $sp, 0x20
/* 04AF7C 8004A37C 03E00008 */  jr    $ra
/* 04AF80 8004A380 00000000 */   nop   
