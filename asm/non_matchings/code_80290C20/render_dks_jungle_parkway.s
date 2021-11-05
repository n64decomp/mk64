glabel render_dks_jungle_parkway
/* 0FE920 80295310 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0FE924 80295314 AFA40018 */  sw    $a0, 0x18($sp)
/* 0FE928 80295318 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0FE92C 8029531C 3C04800E */  lui   $a0, %hi(D_800DC610) # $a0, 0x800e
/* 0FE930 80295320 3C05802C */  lui   $a1, %hi(D_802B87D4) # $a1, 0x802c
/* 0FE934 80295324 84A587D4 */  lh    $a1, %lo(D_802B87D4)($a1)
/* 0FE938 80295328 2484C610 */  addiu $a0, %lo(D_800DC610) # addiu $a0, $a0, -0x39f0
/* 0FE93C 8029532C 00003025 */  move  $a2, $zero
/* 0FE940 80295330 0C0AD759 */  jal   func_802B5D64
/* 0FE944 80295334 24070001 */   li    $a3, 1
/* 0FE948 80295338 3C04800E */  lui   $a0, %hi(D_800DC628) # $a0, 0x800e
/* 0FE94C 8029533C 3C05802C */  lui   $a1, %hi(D_802B87D4) # $a1, 0x802c
/* 0FE950 80295340 3C06802C */  lui   $a2, %hi(D_802B87D0) # $a2, 0x802c
/* 0FE954 80295344 84C687D0 */  lh    $a2, %lo(D_802B87D0)($a2)
/* 0FE958 80295348 84A587D4 */  lh    $a1, %lo(D_802B87D4)($a1)
/* 0FE95C 8029534C 2484C628 */  addiu $a0, %lo(D_800DC628) # addiu $a0, $a0, -0x39d8
/* 0FE960 80295350 0C0AD759 */  jal   func_802B5D64
/* 0FE964 80295354 24070001 */   li    $a3, 1
/* 0FE968 80295358 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FE96C 8029535C 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FE970 80295360 8C620000 */  lw    $v0, ($v1)
/* 0FE974 80295364 3C0FB700 */  lui   $t7, 0xb700
/* 0FE978 80295368 24180200 */  li    $t8, 512
/* 0FE97C 8029536C 244E0008 */  addiu $t6, $v0, 8
/* 0FE980 80295370 AC6E0000 */  sw    $t6, ($v1)
/* 0FE984 80295374 AC580004 */  sw    $t8, 4($v0)
/* 0FE988 80295378 AC4F0000 */  sw    $t7, ($v0)
/* 0FE98C 8029537C 8C620000 */  lw    $v0, ($v1)
/* 0FE990 80295380 3C0A0002 */  lui   $t2, (0x00022000 >> 16) # lui $t2, 2
/* 0FE994 80295384 354A2000 */  ori   $t2, (0x00022000 & 0xFFFF) # ori $t2, $t2, 0x2000
/* 0FE998 80295388 24590008 */  addiu $t9, $v0, 8
/* 0FE99C 8029538C AC790000 */  sw    $t9, ($v1)
/* 0FE9A0 80295390 3C09B600 */  lui   $t1, 0xb600
/* 0FE9A4 80295394 AC490000 */  sw    $t1, ($v0)
/* 0FE9A8 80295398 AC4A0004 */  sw    $t2, 4($v0)
/* 0FE9AC 8029539C 8FAB0018 */  lw    $t3, 0x18($sp)
/* 0FE9B0 802953A0 0C0A4308 */  jal   func_80290C20
/* 0FE9B4 802953A4 8D640004 */   lw    $a0, 4($t3)
/* 0FE9B8 802953A8 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FE9BC 802953AC 24010001 */  li    $at, 1
/* 0FE9C0 802953B0 14410023 */  bne   $v0, $at, .L80295440
/* 0FE9C4 802953B4 24630298 */   addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FE9C8 802953B8 8C620000 */  lw    $v0, ($v1)
/* 0FE9CC 802953BC 3C0E0001 */  lui   $t6, (0x00010001 >> 16) # lui $t6, 1
/* 0FE9D0 802953C0 35CE0001 */  ori   $t6, (0x00010001 & 0xFFFF) # ori $t6, $t6, 1
/* 0FE9D4 802953C4 244C0008 */  addiu $t4, $v0, 8
/* 0FE9D8 802953C8 AC6C0000 */  sw    $t4, ($v1)
/* 0FE9DC 802953CC 3C0DBB00 */  lui   $t5, 0xbb00
/* 0FE9E0 802953D0 AC4D0000 */  sw    $t5, ($v0)
/* 0FE9E4 802953D4 AC4E0004 */  sw    $t6, 4($v0)
/* 0FE9E8 802953D8 8C620000 */  lw    $v0, ($v1)
/* 0FE9EC 802953DC 3C18FCFF */  lui   $t8, (0xFCFFFFFF >> 16) # lui $t8, 0xfcff
/* 0FE9F0 802953E0 3C19FFFE */  lui   $t9, (0xFFFE793C >> 16) # lui $t9, 0xfffe
/* 0FE9F4 802953E4 244F0008 */  addiu $t7, $v0, 8
/* 0FE9F8 802953E8 AC6F0000 */  sw    $t7, ($v1)
/* 0FE9FC 802953EC 3739793C */  ori   $t9, (0xFFFE793C & 0xFFFF) # ori $t9, $t9, 0x793c
/* 0FEA00 802953F0 3718FFFF */  ori   $t8, (0xFCFFFFFF & 0xFFFF) # ori $t8, $t8, 0xffff
/* 0FEA04 802953F4 AC580000 */  sw    $t8, ($v0)
/* 0FEA08 802953F8 AC590004 */  sw    $t9, 4($v0)
/* 0FEA0C 802953FC 8C620000 */  lw    $v0, ($v1)
/* 0FEA10 80295400 3C0AB900 */  lui   $t2, (0xB900031D >> 16) # lui $t2, 0xb900
/* 0FEA14 80295404 3C0B0055 */  lui   $t3, (0x00552078 >> 16) # lui $t3, 0x55
/* 0FEA18 80295408 24490008 */  addiu $t1, $v0, 8
/* 0FEA1C 8029540C AC690000 */  sw    $t1, ($v1)
/* 0FEA20 80295410 356B2078 */  ori   $t3, (0x00552078 & 0xFFFF) # ori $t3, $t3, 0x2078
/* 0FEA24 80295414 354A031D */  ori   $t2, (0xB900031D & 0xFFFF) # ori $t2, $t2, 0x31d
/* 0FEA28 80295418 AC4A0000 */  sw    $t2, ($v0)
/* 0FEA2C 8029541C AC4B0004 */  sw    $t3, 4($v0)
/* 0FEA30 80295420 8C620000 */  lw    $v0, ($v1)
/* 0FEA34 80295424 3C0E0700 */  lui   $t6, (0x070092D8 >> 16) # lui $t6, 0x700
/* 0FEA38 80295428 35CE92D8 */  ori   $t6, (0x070092D8 & 0xFFFF) # ori $t6, $t6, 0x92d8
/* 0FEA3C 8029542C 244C0008 */  addiu $t4, $v0, 8
/* 0FEA40 80295430 AC6C0000 */  sw    $t4, ($v1)
/* 0FEA44 80295434 3C0D0600 */  lui   $t5, 0x600
/* 0FEA48 80295438 AC4D0000 */  sw    $t5, ($v0)
/* 0FEA4C 8029543C AC4E0004 */  sw    $t6, 4($v0)
.L80295440:
/* 0FEA50 80295440 8C620000 */  lw    $v0, ($v1)
/* 0FEA54 80295444 3C18BB00 */  lui   $t8, (0xBB000001 >> 16) # lui $t8, 0xbb00
/* 0FEA58 80295448 37180001 */  ori   $t8, (0xBB000001 & 0xFFFF) # ori $t8, $t8, 1
/* 0FEA5C 8029544C 244F0008 */  addiu $t7, $v0, 8
/* 0FEA60 80295450 AC6F0000 */  sw    $t7, ($v1)
/* 0FEA64 80295454 2419FFFF */  li    $t9, -1
/* 0FEA68 80295458 AC590004 */  sw    $t9, 4($v0)
/* 0FEA6C 8029545C AC580000 */  sw    $t8, ($v0)
/* 0FEA70 80295460 8C620000 */  lw    $v0, ($v1)
/* 0FEA74 80295464 3C0AFC12 */  lui   $t2, (0xFC127E24 >> 16) # lui $t2, 0xfc12
/* 0FEA78 80295468 354A7E24 */  ori   $t2, (0xFC127E24 & 0xFFFF) # ori $t2, $t2, 0x7e24
/* 0FEA7C 8029546C 24490008 */  addiu $t1, $v0, 8
/* 0FEA80 80295470 AC690000 */  sw    $t1, ($v1)
/* 0FEA84 80295474 240BF3F9 */  li    $t3, -3079
/* 0FEA88 80295478 AC4B0004 */  sw    $t3, 4($v0)
/* 0FEA8C 8029547C AC4A0000 */  sw    $t2, ($v0)
/* 0FEA90 80295480 8C620000 */  lw    $v0, ($v1)
/* 0FEA94 80295484 3C0DB900 */  lui   $t5, (0xB900031D >> 16) # lui $t5, 0xb900
/* 0FEA98 80295488 3C0E0055 */  lui   $t6, (0x00553078 >> 16) # lui $t6, 0x55
/* 0FEA9C 8029548C 244C0008 */  addiu $t4, $v0, 8
/* 0FEAA0 80295490 AC6C0000 */  sw    $t4, ($v1)
/* 0FEAA4 80295494 35CE3078 */  ori   $t6, (0x00553078 & 0xFFFF) # ori $t6, $t6, 0x3078
/* 0FEAA8 80295498 35AD031D */  ori   $t5, (0xB900031D & 0xFFFF) # ori $t5, $t5, 0x31d
/* 0FEAAC 8029549C 3C040601 */  lui   $a0, %hi(dks_jungle_parkway_dls) # $a0, 0x601
/* 0FEAB0 802954A0 AC4D0000 */  sw    $t5, ($v0)
/* 0FEAB4 802954A4 AC4E0004 */  sw    $t6, 4($v0)
/* 0FEAB8 802954A8 8FA50018 */  lw    $a1, 0x18($sp)
/* 0FEABC 802954AC 0C0A436B */  jal   load_surface_map
/* 0FEAC0 802954B0 24843D20 */   addiu $a0, %lo(dks_jungle_parkway_dls) # addiu $a0, $a0, 0x3d20
/* 0FEAC4 802954B4 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FEAC8 802954B8 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FEACC 802954BC 8C620000 */  lw    $v0, ($v1)
/* 0FEAD0 802954C0 3C18B700 */  lui   $t8, 0xb700
/* 0FEAD4 802954C4 24192000 */  li    $t9, 8192
/* 0FEAD8 802954C8 244F0008 */  addiu $t7, $v0, 8
/* 0FEADC 802954CC AC6F0000 */  sw    $t7, ($v1)
/* 0FEAE0 802954D0 AC590004 */  sw    $t9, 4($v0)
/* 0FEAE4 802954D4 AC580000 */  sw    $t8, ($v0)
/* 0FEAE8 802954D8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0FEAEC 802954DC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0FEAF0 802954E0 03E00008 */  jr    $ra
/* 0FEAF4 802954E4 00000000 */   nop   
