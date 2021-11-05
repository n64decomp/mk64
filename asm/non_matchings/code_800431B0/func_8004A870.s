glabel func_8004A870
/* 04B470 8004A870 27BDFF90 */  addiu $sp, $sp, -0x70
/* 04B474 8004A874 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04B478 8004A878 AFA50074 */  sw    $a1, 0x74($sp)
/* 04B47C 8004A87C AFA40070 */  sw    $a0, 0x70($sp)
/* 04B480 8004A880 0C01C88F */  jal   func_8007223C
/* 04B484 8004A884 24050020 */   li    $a1, 32
/* 04B488 8004A888 10400047 */  beqz  $v0, .L8004A9A8
/* 04B48C 8004A88C 8FA40070 */   lw    $a0, 0x70($sp)
/* 04B490 8004A890 0C01C88F */  jal   func_8007223C
/* 04B494 8004A894 3C050080 */   lui   $a1, 0x80
/* 04B498 8004A898 10400043 */  beqz  $v0, .L8004A9A8
/* 04B49C 8004A89C 3C068018 */   lui   $a2, %hi(D_80183E50) # $a2, 0x8018
/* 04B4A0 8004A8A0 8FAE0070 */  lw    $t6, 0x70($sp)
/* 04B4A4 8004A8A4 3C188016 */  lui   $t8, %hi(D_80165C18) # $t8, 0x8016
/* 04B4A8 8004A8A8 27185C18 */  addiu $t8, %lo(D_80165C18) # addiu $t8, $t8, 0x5c18
/* 04B4AC 8004A8AC 000E78C0 */  sll   $t7, $t6, 3
/* 04B4B0 8004A8B0 01EE7823 */  subu  $t7, $t7, $t6
/* 04B4B4 8004A8B4 000F7940 */  sll   $t7, $t7, 5
/* 04B4B8 8004A8B8 01F81021 */  addu  $v0, $t7, $t8
/* 04B4BC 8004A8BC C4440004 */  lwc1  $f4, 4($v0)
/* 04B4C0 8004A8C0 C4460044 */  lwc1  $f6, 0x44($v0)
/* 04B4C4 8004A8C4 24C63E50 */  addiu $a2, %lo(D_80183E50) # addiu $a2, $a2, 0x3e50
/* 04B4C8 8004A8C8 3C01800F */  lui   $at, %hi(D_800EE048)
/* 04B4CC 8004A8CC E4C40000 */  swc1  $f4, ($a2)
/* 04B4D0 8004A8D0 D42AE048 */  ldc1  $f10, %lo(D_800EE048)($at)
/* 04B4D4 8004A8D4 46003221 */  cvt.d.s $f8, $f6
/* 04B4D8 8004A8D8 C444000C */  lwc1  $f4, 0xc($v0)
/* 04B4DC 8004A8DC 462A4400 */  add.d $f16, $f8, $f10
/* 04B4E0 8004A8E0 C7A60074 */  lwc1  $f6, 0x74($sp)
/* 04B4E4 8004A8E4 2445001C */  addiu $a1, $v0, 0x1c
/* 04B4E8 8004A8E8 27A40030 */  addiu $a0, $sp, 0x30
/* 04B4EC 8004A8EC 462084A0 */  cvt.s.d $f18, $f16
/* 04B4F0 8004A8F0 00003825 */  move  $a3, $zero
/* 04B4F4 8004A8F4 E4C40008 */  swc1  $f4, 8($a2)
/* 04B4F8 8004A8F8 E7A60010 */  swc1  $f6, 0x10($sp)
/* 04B4FC 8004A8FC 0C010A88 */  jal   func_80042A20
/* 04B500 8004A900 E4D20004 */   swc1  $f18, 4($a2)
/* 04B504 8004A904 3C068019 */  lui   $a2, %hi(D_8018D120) # $a2, 0x8019
/* 04B508 8004A908 24C6D120 */  addiu $a2, %lo(D_8018D120) # addiu $a2, $a2, -0x2ee0
/* 04B50C 8004A90C 8CC80000 */  lw    $t0, ($a2)
/* 04B510 8004A910 3C198015 */  lui   $t9, %hi(gGfxPool) # $t9, 0x8015
/* 04B514 8004A914 8F39EF40 */  lw    $t9, %lo(gGfxPool)($t9)
/* 04B518 8004A918 00084980 */  sll   $t1, $t0, 6
/* 04B51C 8004A91C 27A50030 */  addiu $a1, $sp, 0x30
/* 04B520 8004A920 03292021 */  addu  $a0, $t9, $t1
/* 04B524 8004A924 0C008860 */  jal   func_80022180
/* 04B528 8004A928 248402C0 */   addiu $a0, $a0, 0x2c0
/* 04B52C 8004A92C 3C058015 */  lui   $a1, %hi(gDisplayListHead) # $a1, 0x8015
/* 04B530 8004A930 24A50298 */  addiu $a1, %lo(gDisplayListHead) # addiu $a1, $a1, 0x298
/* 04B534 8004A934 8CA20000 */  lw    $v0, ($a1)
/* 04B538 8004A938 3C0B0102 */  lui   $t3, (0x01020040 >> 16) # lui $t3, 0x102
/* 04B53C 8004A93C 3C068019 */  lui   $a2, %hi(D_8018D120) # $a2, 0x8019
/* 04B540 8004A940 244A0008 */  addiu $t2, $v0, 8
/* 04B544 8004A944 ACAA0000 */  sw    $t2, ($a1)
/* 04B548 8004A948 356B0040 */  ori   $t3, (0x01020040 & 0xFFFF) # ori $t3, $t3, 0x40
/* 04B54C 8004A94C 24C6D120 */  addiu $a2, %lo(D_8018D120) # addiu $a2, $a2, -0x2ee0
/* 04B550 8004A950 AC4B0000 */  sw    $t3, ($v0)
/* 04B554 8004A954 8CCD0000 */  lw    $t5, ($a2)
/* 04B558 8004A958 3C0C8015 */  lui   $t4, %hi(gGfxPool) # $t4, 0x8015
/* 04B55C 8004A95C 8D8CEF40 */  lw    $t4, %lo(gGfxPool)($t4)
/* 04B560 8004A960 000D7180 */  sll   $t6, $t5, 6
/* 04B564 8004A964 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 04B568 8004A968 018E7821 */  addu  $t7, $t4, $t6
/* 04B56C 8004A96C 25F802C0 */  addiu $t8, $t7, 0x2c0
/* 04B570 8004A970 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 04B574 8004A974 03014024 */  and   $t0, $t8, $at
/* 04B578 8004A978 AC480004 */  sw    $t0, 4($v0)
/* 04B57C 8004A97C 8CD90000 */  lw    $t9, ($a2)
/* 04B580 8004A980 8CA20000 */  lw    $v0, ($a1)
/* 04B584 8004A984 3C0D0D00 */  lui   $t5, %hi(D_0D007B98) # $t5, 0xd00
/* 04B588 8004A988 27290001 */  addiu $t1, $t9, 1
/* 04B58C 8004A98C 244A0008 */  addiu $t2, $v0, 8
/* 04B590 8004A990 ACC90000 */  sw    $t1, ($a2)
/* 04B594 8004A994 ACAA0000 */  sw    $t2, ($a1)
/* 04B598 8004A998 25AD7B98 */  addiu $t5, %lo(D_0D007B98) # addiu $t5, $t5, 0x7b98
/* 04B59C 8004A99C 3C0B0600 */  lui   $t3, 0x600
/* 04B5A0 8004A9A0 AC4B0000 */  sw    $t3, ($v0)
/* 04B5A4 8004A9A4 AC4D0004 */  sw    $t5, 4($v0)
.L8004A9A8:
/* 04B5A8 8004A9A8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04B5AC 8004A9AC 27BD0070 */  addiu $sp, $sp, 0x70
/* 04B5B0 8004A9B0 03E00008 */  jr    $ra
/* 04B5B4 8004A9B4 00000000 */   nop   
