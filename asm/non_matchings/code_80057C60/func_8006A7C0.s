glabel func_8006A7C0
/* 06B3C0 8006A7C0 27BDFF60 */  addiu $sp, $sp, -0xa0
/* 06B3C4 8006A7C4 3C18800E */  lui   $t8, %hi(D_800E4914) # $t8, 0x800e
/* 06B3C8 8006A7C8 AFBF002C */  sw    $ra, 0x2c($sp)
/* 06B3CC 8006A7CC AFB10028 */  sw    $s1, 0x28($sp)
/* 06B3D0 8006A7D0 AFB00024 */  sw    $s0, 0x24($sp)
/* 06B3D4 8006A7D4 AFA500A4 */  sw    $a1, 0xa4($sp)
/* 06B3D8 8006A7D8 AFA600A8 */  sw    $a2, 0xa8($sp)
/* 06B3DC 8006A7DC AFA700AC */  sw    $a3, 0xac($sp)
/* 06B3E0 8006A7E0 27184914 */  addiu $t8, %lo(D_800E4914) # addiu $t8, $t8, 0x4914
/* 06B3E4 8006A7E4 8F010000 */  lw    $at, ($t8)
/* 06B3E8 8006A7E8 8F0C0004 */  lw    $t4, 4($t8)
/* 06B3EC 8006A7EC 27AF0080 */  addiu $t7, $sp, 0x80
/* 06B3F0 8006A7F0 ADE10000 */  sw    $at, ($t7)
/* 06B3F4 8006A7F4 8F010008 */  lw    $at, 8($t8)
/* 06B3F8 8006A7F8 ADEC0004 */  sw    $t4, 4($t7)
/* 06B3FC 8006A7FC 8F0C000C */  lw    $t4, 0xc($t8)
/* 06B400 8006A800 ADE10008 */  sw    $at, 8($t7)
/* 06B404 8006A804 8F010010 */  lw    $at, 0x10($t8)
/* 06B408 8006A808 ADEC000C */  sw    $t4, 0xc($t7)
/* 06B40C 8006A80C 8F0C0014 */  lw    $t4, 0x14($t8)
/* 06B410 8006A810 ADE10010 */  sw    $at, 0x10($t7)
/* 06B414 8006A814 8F010018 */  lw    $at, 0x18($t8)
/* 06B418 8006A818 ADEC0014 */  sw    $t4, 0x14($t7)
/* 06B41C 8006A81C 8F0C001C */  lw    $t4, 0x1c($t8)
/* 06B420 8006A820 ADE10018 */  sw    $at, 0x18($t7)
/* 06B424 8006A824 3C014190 */  li    $at, 0x41900000 # 18.000000
/* 06B428 8006A828 ADEC001C */  sw    $t4, 0x1c($t7)
/* 06B42C 8006A82C C48C0094 */  lwc1  $f12, 0x94($a0)
/* 06B430 8006A830 44812000 */  mtc1  $at, $f4
/* 06B434 8006A834 3C014358 */  li    $at, 0x43580000 # 216.000000
/* 06B438 8006A838 44815000 */  mtc1  $at, $f10
/* 06B43C 8006A83C 46046183 */  div.s $f6, $f12, $f4
/* 06B440 8006A840 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 06B444 8006A844 44819000 */  mtc1  $at, $f18
/* 06B448 8006A848 00078600 */  sll   $s0, $a3, 0x18
/* 06B44C 8006A84C 00107603 */  sra   $t6, $s0, 0x18
/* 06B450 8006A850 83AD00B3 */  lb    $t5, 0xb3($sp)
/* 06B454 8006A854 01C08025 */  move  $s0, $t6
/* 06B458 8006A858 000E7080 */  sll   $t6, $t6, 2
/* 06B45C 8006A85C 01D07023 */  subu  $t6, $t6, $s0
/* 06B460 8006A860 000E7040 */  sll   $t6, $t6, 1
/* 06B464 8006A864 3C198019 */  lui   $t9, %hi(gPlayerBalloonStatus) # $t9, 0x8019
/* 06B468 8006A868 000D4040 */  sll   $t0, $t5, 1
/* 06B46C 8006A86C 01C85821 */  addu  $t3, $t6, $t0
/* 06B470 8006A870 2739D5F0 */  addiu $t9, %lo(gPlayerBalloonStatus) # addiu $t9, $t9, -0x2a10
/* 06B474 8006A874 01797821 */  addu  $t7, $t3, $t9
/* 06B478 8006A878 AFAF0058 */  sw    $t7, 0x58($sp)
/* 06B47C 8006A87C 24010002 */  li    $at, 2
/* 06B480 8006A880 00107080 */  sll   $t6, $s0, 2
/* 06B484 8006A884 00808825 */  move  $s1, $a0
/* 06B488 8006A888 01D07023 */  subu  $t6, $t6, $s0
/* 06B48C 8006A88C 000D4880 */  sll   $t1, $t5, 2
/* 06B490 8006A890 46003207 */  neg.s $f8, $f6
/* 06B494 8006A894 460A4402 */  mul.s $f16, $f8, $f10
/* 06B498 8006A898 46128103 */  div.s $f4, $f16, $f18
/* 06B49C 8006A89C E7A4006C */  swc1  $f4, 0x6c($sp)
/* 06B4A0 8006A8A0 95F80000 */  lhu   $t8, ($t7)
/* 06B4A4 8006A8A4 330C0002 */  andi  $t4, $t8, 2
/* 06B4A8 8006A8A8 5181008E */  beql  $t4, $at, .L8006AAE4
/* 06B4AC 8006A8AC 00105880 */   sll   $t3, $s0, 2
/* 06B4B0 8006A8B0 46006187 */  neg.s $f6, $f12
/* 06B4B4 8006A8B4 3C01800F */  lui   $at, %hi(D_800EE7E0)
/* 06B4B8 8006A8B8 D42AE7E0 */  ldc1  $f10, %lo(D_800EE7E0)($at)
/* 06B4BC 8006A8BC 46003221 */  cvt.d.s $f8, $f6
/* 06B4C0 8006A8C0 3C01800F */  lui   $at, %hi(D_800EE7E8)
/* 06B4C4 8006A8C4 462A4402 */  mul.d $f16, $f8, $f10
/* 06B4C8 8006A8C8 000E7080 */  sll   $t6, $t6, 2
/* 06B4CC 8006A8CC 3C198019 */  lui   $t9, %hi(D_8018D650) # $t9, 0x8019
/* 06B4D0 8006A8D0 D432E7E8 */  ldc1  $f18, %lo(D_800EE7E8)($at)
/* 06B4D4 8006A8D4 2739D650 */  addiu $t9, %lo(D_8018D650) # addiu $t9, $t9, -0x29b0
/* 06B4D8 8006A8D8 01C95821 */  addu  $t3, $t6, $t1
/* 06B4DC 8006A8DC 01792821 */  addu  $a1, $t3, $t9
/* 06B4E0 8006A8E0 C4A60000 */  lwc1  $f6, ($a1)
/* 06B4E4 8006A8E4 46309100 */  add.d $f4, $f18, $f16
/* 06B4E8 8006A8E8 3C01800F */  lui   $at, %hi(D_800EE7F0)
/* 06B4EC 8006A8EC 00107880 */  sll   $t7, $s0, 2
/* 06B4F0 8006A8F0 46003221 */  cvt.d.s $f8, $f6
/* 06B4F4 8006A8F4 00106880 */  sll   $t5, $s0, 2
/* 06B4F8 8006A8F8 46244280 */  add.d $f10, $f8, $f4
/* 06B4FC 8006A8FC 01F07823 */  subu  $t7, $t7, $s0
/* 06B500 8006A900 01B06823 */  subu  $t5, $t5, $s0
/* 06B504 8006A904 000F7880 */  sll   $t7, $t7, 2
/* 06B508 8006A908 462054A0 */  cvt.s.d $f18, $f10
/* 06B50C 8006A90C 3C0C8019 */  lui   $t4, %hi(D_8018D6B0) # $t4, 0x8019
/* 06B510 8006A910 000D6880 */  sll   $t5, $t5, 2
/* 06B514 8006A914 3C0B8019 */  lui   $t3, %hi(D_8018D710) # $t3, 0x8019
/* 06B518 8006A918 E4B20000 */  swc1  $f18, ($a1)
/* 06B51C 8006A91C C4A20000 */  lwc1  $f2, ($a1)
/* 06B520 8006A920 D430E7F0 */  ldc1  $f16, %lo(D_800EE7F0)($at)
/* 06B524 8006A924 258CD6B0 */  addiu $t4, %lo(D_8018D6B0) # addiu $t4, $t4, -0x2950
/* 06B528 8006A928 46001021 */  cvt.d.s $f0, $f2
/* 06B52C 8006A92C 01E9C021 */  addu  $t8, $t7, $t1
/* 06B530 8006A930 4620803E */  c.le.d $f16, $f0
/* 06B534 8006A934 256BD710 */  addiu $t3, %lo(D_8018D710) # addiu $t3, $t3, -0x28f0
/* 06B538 8006A938 01A97021 */  addu  $t6, $t5, $t1
/* 06B53C 8006A93C 030C1821 */  addu  $v1, $t8, $t4
/* 06B540 8006A940 45000006 */  bc1f  .L8006A95C
/* 06B544 8006A944 01CB5021 */   addu  $t2, $t6, $t3
/* 06B548 8006A948 3C01800F */  lui   $at, %hi(D_800EE7F8) # $at, 0x800f
/* 06B54C 8006A94C C426E7F8 */  lwc1  $f6, %lo(D_800EE7F8)($at)
/* 06B550 8006A950 E4A60000 */  swc1  $f6, ($a1)
/* 06B554 8006A954 C4A20000 */  lwc1  $f2, ($a1)
/* 06B558 8006A958 46001021 */  cvt.d.s $f0, $f2
.L8006A95C:
/* 06B55C 8006A95C 3C01800F */  lui   $at, %hi(D_800EE800)
/* 06B560 8006A960 D428E800 */  ldc1  $f8, %lo(D_800EE800)($at)
/* 06B564 8006A964 3C01800F */  lui   $at, %hi(D_800EE808) # $at, 0x800f
/* 06B568 8006A968 2404000B */  li    $a0, 11
/* 06B56C 8006A96C 4628003E */  c.le.d $f0, $f8
/* 06B570 8006A970 00000000 */  nop
/* 06B574 8006A974 45020005 */  bc1fl .L8006A98C
/* 06B578 8006A978 C46A0000 */   lwc1  $f10, ($v1)
/* 06B57C 8006A97C C424E808 */  lwc1  $f4, %lo(D_800EE808)($at)
/* 06B580 8006A980 E4A40000 */  swc1  $f4, ($a1)
/* 06B584 8006A984 C4A20000 */  lwc1  $f2, ($a1)
/* 06B588 8006A988 C46A0000 */  lwc1  $f10, ($v1)
.L8006A98C:
/* 06B58C 8006A98C 3C01800F */  lui   $at, %hi(D_800EE810)
/* 06B590 8006A990 46025480 */  add.s $f18, $f10, $f2
/* 06B594 8006A994 E4720000 */  swc1  $f18, ($v1)
/* 06B598 8006A998 C46C0000 */  lwc1  $f12, ($v1)
/* 06B59C 8006A99C D430E810 */  ldc1  $f16, %lo(D_800EE810)($at)
/* 06B5A0 8006A9A0 3C01800F */  lui   $at, %hi(D_800EE818) # $at, 0x800f
/* 06B5A4 8006A9A4 46006021 */  cvt.d.s $f0, $f12
/* 06B5A8 8006A9A8 4620803E */  c.le.d $f16, $f0
/* 06B5AC 8006A9AC 00000000 */  nop
/* 06B5B0 8006A9B0 45000005 */  bc1f  .L8006A9C8
/* 06B5B4 8006A9B4 00000000 */   nop
/* 06B5B8 8006A9B8 C426E818 */  lwc1  $f6, %lo(D_800EE818)($at)
/* 06B5BC 8006A9BC E4660000 */  swc1  $f6, ($v1)
/* 06B5C0 8006A9C0 C46C0000 */  lwc1  $f12, ($v1)
/* 06B5C4 8006A9C4 46006021 */  cvt.d.s $f0, $f12
.L8006A9C8:
/* 06B5C8 8006A9C8 3C01800F */  lui   $at, %hi(D_800EE820)
/* 06B5CC 8006A9CC D428E820 */  ldc1  $f8, %lo(D_800EE820)($at)
/* 06B5D0 8006A9D0 3C01800F */  lui   $at, %hi(D_800EE828) # $at, 0x800f
/* 06B5D4 8006A9D4 4628003E */  c.le.d $f0, $f8
/* 06B5D8 8006A9D8 00000000 */  nop
/* 06B5DC 8006A9DC 45020005 */  bc1fl .L8006A9F4
/* 06B5E0 8006A9E0 C54A0000 */   lwc1  $f10, ($t2)
/* 06B5E4 8006A9E4 C424E828 */  lwc1  $f4, %lo(D_800EE828)($at)
/* 06B5E8 8006A9E8 E4640000 */  swc1  $f4, ($v1)
/* 06B5EC 8006A9EC C46C0000 */  lwc1  $f12, ($v1)
/* 06B5F0 8006A9F0 C54A0000 */  lwc1  $f10, ($t2)
.L8006A9F4:
/* 06B5F4 8006A9F4 44800000 */  mtc1  $zero, $f0
/* 06B5F8 8006A9F8 460C5480 */  add.s $f18, $f10, $f12
/* 06B5FC 8006A9FC E5520000 */  swc1  $f18, ($t2)
/* 06B600 8006AA00 C5500000 */  lwc1  $f16, ($t2)
/* 06B604 8006AA04 4600803C */  c.lt.s $f16, $f0
/* 06B608 8006AA08 00000000 */  nop
/* 06B60C 8006AA0C 45020014 */  bc1fl .L8006AA60
/* 06B610 8006AA10 862F002E */   lh    $t7, 0x2e($s1)
/* 06B614 8006AA14 AFA30060 */  sw    $v1, 0x60($sp)
/* 06B618 8006AA18 AFA50050 */  sw    $a1, 0x50($sp)
/* 06B61C 8006AA1C AFA8005C */  sw    $t0, 0x5c($sp)
/* 06B620 8006AA20 0C0ADF8D */  jal   random_int
/* 06B624 8006AA24 AFAA004C */   sw    $t2, 0x4c($sp)
/* 06B628 8006AA28 2401000A */  li    $at, 10
/* 06B62C 8006AA2C 0041001A */  div   $zero, $v0, $at
/* 06B630 8006AA30 0000C812 */  mflo  $t9
/* 06B634 8006AA34 44993000 */  mtc1  $t9, $f6
/* 06B638 8006AA38 44800000 */  mtc1  $zero, $f0
/* 06B63C 8006AA3C 8FA30060 */  lw    $v1, 0x60($sp)
/* 06B640 8006AA40 46803220 */  cvt.s.w $f8, $f6
/* 06B644 8006AA44 8FA50050 */  lw    $a1, 0x50($sp)
/* 06B648 8006AA48 8FAA004C */  lw    $t2, 0x4c($sp)
/* 06B64C 8006AA4C 8FA8005C */  lw    $t0, 0x5c($sp)
/* 06B650 8006AA50 E4600000 */  swc1  $f0, ($v1)
/* 06B654 8006AA54 E5400000 */  swc1  $f0, ($t2)
/* 06B658 8006AA58 E4A80000 */  swc1  $f8, ($a1)
/* 06B65C 8006AA5C 862F002E */  lh    $t7, 0x2e($s1)
.L8006AA60:
/* 06B660 8006AA60 00107080 */  sll   $t6, $s0, 2
/* 06B664 8006AA64 862C00C0 */  lh    $t4, 0xc0($s1)
/* 06B668 8006AA68 01D07023 */  subu  $t6, $t6, $s0
/* 06B66C 8006AA6C 000E7040 */  sll   $t6, $t6, 1
/* 06B670 8006AA70 01C85821 */  addu  $t3, $t6, $t0
/* 06B674 8006AA74 3C018019 */  lui   $at, %hi(D_8018D620)
/* 06B678 8006AA78 000FC023 */  negu  $t8, $t7
/* 06B67C 8006AA7C 002B0821 */  addu  $at, $at, $t3
/* 06B680 8006AA80 030C6823 */  subu  $t5, $t8, $t4
/* 06B684 8006AA84 A42DD620 */  sh    $t5, %lo(D_8018D620)($at)
/* 06B688 8006AA88 3C014336 */  li    $at, 0x43360000 # 182.000000
/* 06B68C 8006AA8C 44815000 */  mtc1  $at, $f10
/* 06B690 8006AA90 C6240094 */  lwc1  $f4, 0x94($s1)
/* 06B694 8006AA94 0010C880 */  sll   $t9, $s0, 2
/* 06B698 8006AA98 0330C823 */  subu  $t9, $t9, $s0
/* 06B69C 8006AA9C 460A2482 */  mul.s $f18, $f4, $f10
/* 06B6A0 8006AAA0 0019C840 */  sll   $t9, $t9, 1
/* 06B6A4 8006AAA4 3C188019 */  lui   $t8, %hi(D_8018D890) # $t8, 0x8019
/* 06B6A8 8006AAA8 2718D890 */  addiu $t8, %lo(D_8018D890) # addiu $t8, $t8, -0x2770
/* 06B6AC 8006AAAC 03287821 */  addu  $t7, $t9, $t0
/* 06B6B0 8006AAB0 3C063DCC */  lui   $a2, (0x3DCCCCCD >> 16) # lui $a2, 0x3dcc
/* 06B6B4 8006AAB4 34C6CCCD */  ori   $a2, (0x3DCCCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 06B6B8 8006AAB8 4600940D */  trunc.w.s $f16, $f18
/* 06B6BC 8006AABC 01F82021 */  addu  $a0, $t7, $t8
/* 06B6C0 8006AAC0 AFA8005C */  sw    $t0, 0x5c($sp)
/* 06B6C4 8006AAC4 44058000 */  mfc1  $a1, $f16
/* 06B6C8 8006AAC8 00000000 */  nop
/* 06B6CC 8006AACC 00057400 */  sll   $t6, $a1, 0x10
/* 06B6D0 8006AAD0 0C00898D */  jal   move_s16_towards
/* 06B6D4 8006AAD4 000E2C03 */   sra   $a1, $t6, 0x10
/* 06B6D8 8006AAD8 8FA8005C */  lw    $t0, 0x5c($sp)
/* 06B6DC 8006AADC C62C0094 */  lwc1  $f12, 0x94($s1)
/* 06B6E0 8006AAE0 00105880 */  sll   $t3, $s0, 2
.L8006AAE4:
/* 06B6E4 8006AAE4 01705823 */  subu  $t3, $t3, $s0
/* 06B6E8 8006AAE8 83A900B3 */  lb    $t1, 0xb3($sp)
/* 06B6EC 8006AAEC 000B5840 */  sll   $t3, $t3, 1
/* 06B6F0 8006AAF0 0168C821 */  addu  $t9, $t3, $t0
/* 06B6F4 8006AAF4 3C0F8019 */  lui   $t7, %hi(D_8018D830) # $t7, 0x8019
/* 06B6F8 8006AAF8 00106080 */  sll   $t4, $s0, 2
/* 06B6FC 8006AAFC 01906023 */  subu  $t4, $t4, $s0
/* 06B700 8006AB00 25EFD830 */  addiu $t7, %lo(D_8018D830) # addiu $t7, $t7, -0x27d0
/* 06B704 8006AB04 032F3021 */  addu  $a2, $t9, $t7
/* 06B708 8006AB08 000C6080 */  sll   $t4, $t4, 2
/* 06B70C 8006AB0C 00105880 */  sll   $t3, $s0, 2
/* 06B710 8006AB10 0009C080 */  sll   $t8, $t1, 2
/* 06B714 8006AB14 01987021 */  addu  $t6, $t4, $t8
/* 06B718 8006AB18 01705823 */  subu  $t3, $t3, $s0
/* 06B71C 8006AB1C 84CC0000 */  lh    $t4, ($a2)
/* 06B720 8006AB20 000B5840 */  sll   $t3, $t3, 1
/* 06B724 8006AB24 3C0F8019 */  lui   $t7, %hi(D_8018D620) # $t7, 0x8019
/* 06B728 8006AB28 25EFD620 */  addiu $t7, %lo(D_8018D620) # addiu $t7, $t7, -0x29e0
/* 06B72C 8006AB2C 0168C821 */  addu  $t9, $t3, $t0
/* 06B730 8006AB30 03004825 */  move  $t1, $t8
/* 06B734 8006AB34 3C0D8019 */  lui   $t5, %hi(D_8018D710) # $t5, 0x8019
/* 06B738 8006AB38 24070001 */  li    $a3, 1
/* 06B73C 8006AB3C 25ADD710 */  addiu $t5, %lo(D_8018D710) # addiu $t5, $t5, -0x28f0
/* 06B740 8006AB40 032FC021 */  addu  $t8, $t9, $t7
/* 06B744 8006AB44 AFB80050 */  sw    $t8, 0x50($sp)
/* 06B748 8006AB48 14EC001C */  bne   $a3, $t4, .L8006ABBC
/* 06B74C 8006AB4C 01CD5021 */   addu  $t2, $t6, $t5
/* 06B750 8006AB50 0010C880 */  sll   $t9, $s0, 2
/* 06B754 8006AB54 0330C823 */  subu  $t9, $t9, $s0
/* 06B758 8006AB58 00107080 */  sll   $t6, $s0, 2
/* 06B75C 8006AB5C 01D07023 */  subu  $t6, $t6, $s0
/* 06B760 8006AB60 0019C840 */  sll   $t9, $t9, 1
/* 06B764 8006AB64 3C188019 */  lui   $t8, %hi(D_8018D800) # $t8, 0x8019
/* 06B768 8006AB68 2718D800 */  addiu $t8, %lo(D_8018D800) # addiu $t8, $t8, -0x2800
/* 06B76C 8006AB6C 03287821 */  addu  $t7, $t9, $t0
/* 06B770 8006AB70 000E7040 */  sll   $t6, $t6, 1
/* 06B774 8006AB74 01C86821 */  addu  $t5, $t6, $t0
/* 06B778 8006AB78 01F82821 */  addu  $a1, $t7, $t8
/* 06B77C 8006AB7C 84AE0000 */  lh    $t6, ($a1)
/* 06B780 8006AB80 3C0B8019 */  lui   $t3, %hi(D_8018D770) # $t3, 0x8019
/* 06B784 8006AB84 256BD770 */  addiu $t3, %lo(D_8018D770) # addiu $t3, $t3, -0x2890
/* 06B788 8006AB88 448E2000 */  mtc1  $t6, $f4
/* 06B78C 8006AB8C 01AB1021 */  addu  $v0, $t5, $t3
/* 06B790 8006AB90 844C0000 */  lh    $t4, ($v0)
/* 06B794 8006AB94 468022A0 */  cvt.s.w $f10, $f4
/* 06B798 8006AB98 448C3000 */  mtc1  $t4, $f6
/* 06B79C 8006AB9C 00000000 */  nop
/* 06B7A0 8006ABA0 46803220 */  cvt.s.w $f8, $f6
/* 06B7A4 8006ABA4 460C5481 */  sub.s $f18, $f10, $f12
/* 06B7A8 8006ABA8 46124400 */  add.s $f16, $f8, $f18
/* 06B7AC 8006ABAC 4600818D */  trunc.w.s $f6, $f16
/* 06B7B0 8006ABB0 440B3000 */  mfc1  $t3, $f6
/* 06B7B4 8006ABB4 1000001C */  b     .L8006AC28
/* 06B7B8 8006ABB8 A44B0000 */   sh    $t3, ($v0)
.L8006ABBC:
/* 06B7BC 8006ABBC 00106080 */  sll   $t4, $s0, 2
/* 06B7C0 8006ABC0 01906023 */  subu  $t4, $t4, $s0
/* 06B7C4 8006ABC4 0010C880 */  sll   $t9, $s0, 2
/* 06B7C8 8006ABC8 0330C823 */  subu  $t9, $t9, $s0
/* 06B7CC 8006ABCC 000C6040 */  sll   $t4, $t4, 1
/* 06B7D0 8006ABD0 3C0D8019 */  lui   $t5, %hi(D_8018D800) # $t5, 0x8019
/* 06B7D4 8006ABD4 25ADD800 */  addiu $t5, %lo(D_8018D800) # addiu $t5, $t5, -0x2800
/* 06B7D8 8006ABD8 01887021 */  addu  $t6, $t4, $t0
/* 06B7DC 8006ABDC 0019C840 */  sll   $t9, $t9, 1
/* 06B7E0 8006ABE0 03287821 */  addu  $t7, $t9, $t0
/* 06B7E4 8006ABE4 01CD2821 */  addu  $a1, $t6, $t5
/* 06B7E8 8006ABE8 84B90000 */  lh    $t9, ($a1)
/* 06B7EC 8006ABEC 3C188019 */  lui   $t8, %hi(D_8018D770) # $t8, 0x8019
/* 06B7F0 8006ABF0 2718D770 */  addiu $t8, %lo(D_8018D770) # addiu $t8, $t8, -0x2890
/* 06B7F4 8006ABF4 44994000 */  mtc1  $t9, $f8
/* 06B7F8 8006ABF8 01F81021 */  addu  $v0, $t7, $t8
/* 06B7FC 8006ABFC 844B0000 */  lh    $t3, ($v0)
/* 06B800 8006AC00 468044A0 */  cvt.s.w $f18, $f8
/* 06B804 8006AC04 448B2000 */  mtc1  $t3, $f4
/* 06B808 8006AC08 00000000 */  nop
/* 06B80C 8006AC0C 468022A0 */  cvt.s.w $f10, $f4
/* 06B810 8006AC10 460C9400 */  add.s $f16, $f18, $f12
/* 06B814 8006AC14 46105180 */  add.s $f6, $f10, $f16
/* 06B818 8006AC18 4600310D */  trunc.w.s $f4, $f6
/* 06B81C 8006AC1C 44182000 */  mfc1  $t8, $f4
/* 06B820 8006AC20 00000000 */  nop
/* 06B824 8006AC24 A4580000 */  sh    $t8, ($v0)
.L8006AC28:
/* 06B828 8006AC28 84430000 */  lh    $v1, ($v0)
/* 06B82C 8006AC2C 00106880 */  sll   $t5, $s0, 2
/* 06B830 8006AC30 01B06823 */  subu  $t5, $t5, $s0
/* 06B834 8006AC34 2861000B */  slti  $at, $v1, 0xb
/* 06B838 8006AC38 14200004 */  bnez  $at, .L8006AC4C
/* 06B83C 8006AC3C 000D6840 */   sll   $t5, $t5, 1
/* 06B840 8006AC40 240C000B */  li    $t4, 11
/* 06B844 8006AC44 A44C0000 */  sh    $t4, ($v0)
/* 06B848 8006AC48 84430000 */  lh    $v1, ($v0)
.L8006AC4C:
/* 06B84C 8006AC4C 2861FFF6 */  slti  $at, $v1, -0xa
/* 06B850 8006AC50 10200004 */  beqz  $at, .L8006AC64
/* 06B854 8006AC54 01A85821 */   addu  $t3, $t5, $t0
/* 06B858 8006AC58 240EFFF5 */  li    $t6, -11
/* 06B85C 8006AC5C A44E0000 */  sh    $t6, ($v0)
/* 06B860 8006AC60 84430000 */  lh    $v1, ($v0)
.L8006AC64:
/* 06B864 8006AC64 3C198019 */  lui   $t9, %hi(D_8018D7A0) # $t9, 0x8019
/* 06B868 8006AC68 2739D7A0 */  addiu $t9, %lo(D_8018D7A0) # addiu $t9, $t9, -0x2860
/* 06B86C 8006AC6C 01791021 */  addu  $v0, $t3, $t9
/* 06B870 8006AC70 844F0000 */  lh    $t7, ($v0)
/* 06B874 8006AC74 00106880 */  sll   $t5, $s0, 2
/* 06B878 8006AC78 01B06823 */  subu  $t5, $t5, $s0
/* 06B87C 8006AC7C 01E3C021 */  addu  $t8, $t7, $v1
/* 06B880 8006AC80 A4580000 */  sh    $t8, ($v0)
/* 06B884 8006AC84 84440000 */  lh    $a0, ($v0)
/* 06B888 8006AC88 000D6840 */  sll   $t5, $t5, 1
/* 06B88C 8006AC8C 01A85821 */  addu  $t3, $t5, $t0
/* 06B890 8006AC90 28810029 */  slti  $at, $a0, 0x29
/* 06B894 8006AC94 14200004 */  bnez  $at, .L8006ACA8
/* 06B898 8006AC98 3C198019 */   lui   $t9, %hi(D_8018D7D0) # $t9, 0x8019
/* 06B89C 8006AC9C 240C0029 */  li    $t4, 41
/* 06B8A0 8006ACA0 A44C0000 */  sh    $t4, ($v0)
/* 06B8A4 8006ACA4 84440000 */  lh    $a0, ($v0)
.L8006ACA8:
/* 06B8A8 8006ACA8 2881FFD8 */  slti  $at, $a0, -0x28
/* 06B8AC 8006ACAC 10200004 */  beqz  $at, .L8006ACC0
/* 06B8B0 8006ACB0 2739D7D0 */   addiu $t9, %lo(D_8018D7D0) # addiu $t9, $t9, -0x2830
/* 06B8B4 8006ACB4 240EFFD7 */  li    $t6, -41
/* 06B8B8 8006ACB8 A44E0000 */  sh    $t6, ($v0)
/* 06B8BC 8006ACBC 84440000 */  lh    $a0, ($v0)
.L8006ACC0:
/* 06B8C0 8006ACC0 01791821 */  addu  $v1, $t3, $t9
/* 06B8C4 8006ACC4 846F0000 */  lh    $t7, ($v1)
/* 06B8C8 8006ACC8 01E4C021 */  addu  $t8, $t7, $a0
/* 06B8CC 8006ACCC A4780000 */  sh    $t8, ($v1)
/* 06B8D0 8006ACD0 846C0000 */  lh    $t4, ($v1)
/* 06B8D4 8006ACD4 24040008 */  li    $a0, 8
/* 06B8D8 8006ACD8 2981038E */  slti  $at, $t4, 0x38e
/* 06B8DC 8006ACDC 54200015 */  bnel  $at, $zero, .L8006AD34
/* 06B8E0 8006ACE0 846B0000 */   lh    $t3, ($v1)
/* 06B8E4 8006ACE4 AFA30060 */  sw    $v1, 0x60($sp)
/* 06B8E8 8006ACE8 AFA50034 */  sw    $a1, 0x34($sp)
/* 06B8EC 8006ACEC AFA6003C */  sw    $a2, 0x3c($sp)
/* 06B8F0 8006ACF0 AFA8005C */  sw    $t0, 0x5c($sp)
/* 06B8F4 8006ACF4 AFA90054 */  sw    $t1, 0x54($sp)
/* 06B8F8 8006ACF8 0C0ADF8D */  jal   random_int
/* 06B8FC 8006ACFC AFAA004C */   sw    $t2, 0x4c($sp)
/* 06B900 8006AD00 8FA6003C */  lw    $a2, 0x3c($sp)
/* 06B904 8006AD04 8FA50034 */  lw    $a1, 0x34($sp)
/* 06B908 8006AD08 24070001 */  li    $a3, 1
/* 06B90C 8006AD0C 84CD0000 */  lh    $t5, ($a2)
/* 06B910 8006AD10 00027023 */  negu  $t6, $v0
/* 06B914 8006AD14 8FA30060 */  lw    $v1, 0x60($sp)
/* 06B918 8006AD18 8FA8005C */  lw    $t0, 0x5c($sp)
/* 06B91C 8006AD1C 8FA90054 */  lw    $t1, 0x54($sp)
/* 06B920 8006AD20 8FAA004C */  lw    $t2, 0x4c($sp)
/* 06B924 8006AD24 10ED0002 */  beq   $a3, $t5, .L8006AD30
/* 06B928 8006AD28 A4AE0000 */   sh    $t6, ($a1)
/* 06B92C 8006AD2C A4C70000 */  sh    $a3, ($a2)
.L8006AD30:
/* 06B930 8006AD30 846B0000 */  lh    $t3, ($v1)
.L8006AD34:
/* 06B934 8006AD34 24040008 */  li    $a0, 8
/* 06B938 8006AD38 2961FC73 */  slti  $at, $t3, -0x38d
/* 06B93C 8006AD3C 50200012 */  beql  $at, $zero, .L8006AD88
/* 06B940 8006AD40 962F0254 */   lhu   $t7, 0x254($s1)
/* 06B944 8006AD44 AFA50034 */  sw    $a1, 0x34($sp)
/* 06B948 8006AD48 AFA6003C */  sw    $a2, 0x3c($sp)
/* 06B94C 8006AD4C AFA8005C */  sw    $t0, 0x5c($sp)
/* 06B950 8006AD50 AFA90054 */  sw    $t1, 0x54($sp)
/* 06B954 8006AD54 0C0ADF8D */  jal   random_int
/* 06B958 8006AD58 AFAA004C */   sw    $t2, 0x4c($sp)
/* 06B95C 8006AD5C 8FA6003C */  lw    $a2, 0x3c($sp)
/* 06B960 8006AD60 8FA50034 */  lw    $a1, 0x34($sp)
/* 06B964 8006AD64 2403FFFF */  li    $v1, -1
/* 06B968 8006AD68 84D90000 */  lh    $t9, ($a2)
/* 06B96C 8006AD6C 8FA8005C */  lw    $t0, 0x5c($sp)
/* 06B970 8006AD70 8FA90054 */  lw    $t1, 0x54($sp)
/* 06B974 8006AD74 8FAA004C */  lw    $t2, 0x4c($sp)
/* 06B978 8006AD78 10790002 */  beq   $v1, $t9, .L8006AD84
/* 06B97C 8006AD7C A4A20000 */   sh    $v0, ($a1)
/* 06B980 8006AD80 A4C30000 */  sh    $v1, ($a2)
.L8006AD84:
/* 06B984 8006AD84 962F0254 */  lhu   $t7, 0x254($s1)
.L8006AD88:
/* 06B988 8006AD88 C5520000 */  lwc1  $f18, ($t2)
/* 06B98C 8006AD8C 3C01800F */  lui   $at, %hi(D_800EE830)
/* 06B990 8006AD90 000FC080 */  sll   $t8, $t7, 2
/* 06B994 8006AD94 03B86021 */  addu  $t4, $sp, $t8
/* 06B998 8006AD98 C5880080 */  lwc1  $f8, 0x80($t4)
/* 06B99C 8006AD9C D424E830 */  ldc1  $f4, %lo(D_800EE830)($at)
/* 06B9A0 8006ADA0 C7B000A8 */  lwc1  $f16, 0xa8($sp)
/* 06B9A4 8006ADA4 46124281 */  sub.s $f10, $f8, $f18
/* 06B9A8 8006ADA8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 06B9AC 8006ADAC C7B2006C */  lwc1  $f18, 0x6c($sp)
/* 06B9B0 8006ADB0 460081A1 */  cvt.d.s $f6, $f16
/* 06B9B4 8006ADB4 E7AA0010 */  swc1  $f10, 0x10($sp)
/* 06B9B8 8006ADB8 44815000 */  mtc1  $at, $f10
/* 06B9BC 8006ADBC 46243200 */  add.d $f8, $f6, $f4
/* 06B9C0 8006ADC0 8FAE0050 */  lw    $t6, 0x50($sp)
/* 06B9C4 8006ADC4 460A9402 */  mul.s $f16, $f18, $f10
/* 06B9C8 8006ADC8 27A40078 */  addiu $a0, $sp, 0x78
/* 06B9CC 8006ADCC 27A50074 */  addiu $a1, $sp, 0x74
/* 06B9D0 8006ADD0 27A60070 */  addiu $a2, $sp, 0x70
/* 06B9D4 8006ADD4 8FA700A4 */  lw    $a3, 0xa4($sp)
/* 06B9D8 8006ADD8 460081A1 */  cvt.d.s $f6, $f16
/* 06B9DC 8006ADDC 46264100 */  add.d $f4, $f8, $f6
/* 06B9E0 8006ADE0 462024A0 */  cvt.s.d $f18, $f4
/* 06B9E4 8006ADE4 E7B20014 */  swc1  $f18, 0x14($sp)
/* 06B9E8 8006ADE8 85CD0000 */  lh    $t5, ($t6)
/* 06B9EC 8006ADEC 000D5823 */  negu  $t3, $t5
/* 06B9F0 8006ADF0 AFAB0018 */  sw    $t3, 0x18($sp)
/* 06B9F4 8006ADF4 86390206 */  lh    $t9, 0x206($s1)
/* 06B9F8 8006ADF8 AFA90054 */  sw    $t1, 0x54($sp)
/* 06B9FC 8006ADFC AFA8005C */  sw    $t0, 0x5c($sp)
/* 06BA00 8006AE00 00197823 */  negu  $t7, $t9
/* 06BA04 8006AE04 000FC040 */  sll   $t8, $t7, 1
/* 06BA08 8006AE08 0C018AC6 */  jal   func_80062B18
/* 06BA0C 8006AE0C AFB8001C */   sw    $t8, 0x1c($sp)
/* 06BA10 8006AE10 8FAC0058 */  lw    $t4, 0x58($sp)
/* 06BA14 8006AE14 24010002 */  li    $at, 2
/* 06BA18 8006AE18 0010C880 */  sll   $t9, $s0, 2
/* 06BA1C 8006AE1C 958E0000 */  lhu   $t6, ($t4)
/* 06BA20 8006AE20 8FA8005C */  lw    $t0, 0x5c($sp)
/* 06BA24 8006AE24 8FA90054 */  lw    $t1, 0x54($sp)
/* 06BA28 8006AE28 31CD0002 */  andi  $t5, $t6, 2
/* 06BA2C 8006AE2C 11A10029 */  beq   $t5, $at, .L8006AED4
/* 06BA30 8006AE30 0330C823 */   subu  $t9, $t9, $s0
/* 06BA34 8006AE34 C62A0018 */  lwc1  $f10, 0x18($s1)
/* 06BA38 8006AE38 C6300070 */  lwc1  $f16, 0x70($s1)
/* 06BA3C 8006AE3C C7A60074 */  lwc1  $f6, 0x74($sp)
/* 06BA40 8006AE40 00105880 */  sll   $t3, $s0, 2
/* 06BA44 8006AE44 46105201 */  sub.s $f8, $f10, $f16
/* 06BA48 8006AE48 01705823 */  subu  $t3, $t3, $s0
/* 06BA4C 8006AE4C 000B5880 */  sll   $t3, $t3, 2
/* 06BA50 8006AE50 0169C821 */  addu  $t9, $t3, $t1
/* 06BA54 8006AE54 46064100 */  add.s $f4, $f8, $f6
/* 06BA58 8006AE58 3C018019 */  lui   $at, %hi(D_8018D530)
/* 06BA5C 8006AE5C 00390821 */  addu  $at, $at, $t9
/* 06BA60 8006AE60 C7AA0078 */  lwc1  $f10, 0x78($sp)
/* 06BA64 8006AE64 E424D530 */  swc1  $f4, %lo(D_8018D530)($at)
/* 06BA68 8006AE68 C6320014 */  lwc1  $f18, 0x14($s1)
/* 06BA6C 8006AE6C 00107880 */  sll   $t7, $s0, 2
/* 06BA70 8006AE70 01F07823 */  subu  $t7, $t7, $s0
/* 06BA74 8006AE74 460A9400 */  add.s $f16, $f18, $f10
/* 06BA78 8006AE78 000F7880 */  sll   $t7, $t7, 2
/* 06BA7C 8006AE7C 01E9C021 */  addu  $t8, $t7, $t1
/* 06BA80 8006AE80 3C018019 */  lui   $at, %hi(D_8018D4D0)
/* 06BA84 8006AE84 00380821 */  addu  $at, $at, $t8
/* 06BA88 8006AE88 E430D4D0 */  swc1  $f16, %lo(D_8018D4D0)($at)
/* 06BA8C 8006AE8C C628001C */  lwc1  $f8, 0x1c($s1)
/* 06BA90 8006AE90 C7A60070 */  lwc1  $f6, 0x70($sp)
/* 06BA94 8006AE94 00106080 */  sll   $t4, $s0, 2
/* 06BA98 8006AE98 01906023 */  subu  $t4, $t4, $s0
/* 06BA9C 8006AE9C 46064100 */  add.s $f4, $f8, $f6
/* 06BAA0 8006AEA0 000C6080 */  sll   $t4, $t4, 2
/* 06BAA4 8006AEA4 01897021 */  addu  $t6, $t4, $t1
/* 06BAA8 8006AEA8 3C018019 */  lui   $at, %hi(D_8018D590)
/* 06BAAC 8006AEAC 00106880 */  sll   $t5, $s0, 2
/* 06BAB0 8006AEB0 002E0821 */  addu  $at, $at, $t6
/* 06BAB4 8006AEB4 01B06823 */  subu  $t5, $t5, $s0
/* 06BAB8 8006AEB8 E424D590 */  swc1  $f4, %lo(D_8018D590)($at)
/* 06BABC 8006AEBC 000D6840 */  sll   $t5, $t5, 1
/* 06BAC0 8006AEC0 01A85821 */  addu  $t3, $t5, $t0
/* 06BAC4 8006AEC4 3C018019 */  lui   $at, %hi(D_8018D8D0)
/* 06BAC8 8006AEC8 002B0821 */  addu  $at, $at, $t3
/* 06BACC 8006AECC 1000003B */  b     .L8006AFBC
/* 06BAD0 8006AED0 A420D8D0 */   sh    $zero, %lo(D_8018D8D0)($at)
.L8006AED4:
/* 06BAD4 8006AED4 0019C880 */  sll   $t9, $t9, 2
/* 06BAD8 8006AED8 3C188019 */  lui   $t8, %hi(D_8018D530) # $t8, 0x8019
/* 06BADC 8006AEDC 2718D530 */  addiu $t8, %lo(D_8018D530) # addiu $t8, $t8, -0x2ad0
/* 06BAE0 8006AEE0 03297821 */  addu  $t7, $t9, $t1
/* 06BAE4 8006AEE4 01F81021 */  addu  $v0, $t7, $t8
/* 06BAE8 8006AEE8 C4520000 */  lwc1  $f18, ($v0)
/* 06BAEC 8006AEEC 3C01800F */  lui   $at, %hi(D_800EE838)
/* 06BAF0 8006AEF0 D430E838 */  ldc1  $f16, %lo(D_800EE838)($at)
/* 06BAF4 8006AEF4 460092A1 */  cvt.d.s $f10, $f18
/* 06BAF8 8006AEF8 00106080 */  sll   $t4, $s0, 2
/* 06BAFC 8006AEFC 01906023 */  subu  $t4, $t4, $s0
/* 06BB00 8006AF00 46305200 */  add.d $f8, $f10, $f16
/* 06BB04 8006AF04 000C6040 */  sll   $t4, $t4, 1
/* 06BB08 8006AF08 3C0D8019 */  lui   $t5, %hi(D_8018D8D0) # $t5, 0x8019
/* 06BB0C 8006AF0C 25ADD8D0 */  addiu $t5, %lo(D_8018D8D0) # addiu $t5, $t5, -0x2730
/* 06BB10 8006AF10 01887021 */  addu  $t6, $t4, $t0
/* 06BB14 8006AF14 01CD1821 */  addu  $v1, $t6, $t5
/* 06BB18 8006AF18 846B0000 */  lh    $t3, ($v1)
/* 06BB1C 8006AF1C 00107880 */  sll   $t7, $s0, 2
/* 06BB20 8006AF20 462041A0 */  cvt.s.d $f6, $f8
/* 06BB24 8006AF24 01F07823 */  subu  $t7, $t7, $s0
/* 06BB28 8006AF28 000F7840 */  sll   $t7, $t7, 1
/* 06BB2C 8006AF2C 3C0C8019 */  lui   $t4, %hi(D_8018D890) # $t4, 0x8019
/* 06BB30 8006AF30 258CD890 */  addiu $t4, %lo(D_8018D890) # addiu $t4, $t4, -0x2770
/* 06BB34 8006AF34 01E8C021 */  addu  $t8, $t7, $t0
/* 06BB38 8006AF38 3C063DCC */  lui   $a2, (0x3DCCCCCD >> 16) # lui $a2, 0x3dcc
/* 06BB3C 8006AF3C 25790001 */  addiu $t9, $t3, 1
/* 06BB40 8006AF40 E4460000 */  swc1  $f6, ($v0)
/* 06BB44 8006AF44 A4790000 */  sh    $t9, ($v1)
/* 06BB48 8006AF48 34C6CCCD */  ori   $a2, (0x3DCCCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 06BB4C 8006AF4C 030C2021 */  addu  $a0, $t8, $t4
/* 06BB50 8006AF50 AFA30060 */  sw    $v1, 0x60($sp)
/* 06BB54 8006AF54 00002825 */  move  $a1, $zero
/* 06BB58 8006AF58 0C00898D */  jal   move_s16_towards
/* 06BB5C 8006AF5C AFA8005C */   sw    $t0, 0x5c($sp)
/* 06BB60 8006AF60 8FA8005C */  lw    $t0, 0x5c($sp)
/* 06BB64 8006AF64 00107080 */  sll   $t6, $s0, 2
/* 06BB68 8006AF68 01D07023 */  subu  $t6, $t6, $s0
/* 06BB6C 8006AF6C 000E7040 */  sll   $t6, $t6, 1
/* 06BB70 8006AF70 3C0B8019 */  lui   $t3, %hi(D_8018D860) # $t3, 0x8019
/* 06BB74 8006AF74 256BD860 */  addiu $t3, %lo(D_8018D860) # addiu $t3, $t3, -0x27a0
/* 06BB78 8006AF78 3C063DCC */  lui   $a2, (0x3DCCCCCD >> 16) # lui $a2, 0x3dcc
/* 06BB7C 8006AF7C 01C86821 */  addu  $t5, $t6, $t0
/* 06BB80 8006AF80 01AB2021 */  addu  $a0, $t5, $t3
/* 06BB84 8006AF84 34C6CCCD */  ori   $a2, (0x3DCCCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 06BB88 8006AF88 0C00898D */  jal   move_s16_towards
/* 06BB8C 8006AF8C 00002825 */   move  $a1, $zero
/* 06BB90 8006AF90 8FA30060 */  lw    $v1, 0x60($sp)
/* 06BB94 8006AF94 00102E00 */  sll   $a1, $s0, 0x18
/* 06BB98 8006AF98 00057E03 */  sra   $t7, $a1, 0x18
/* 06BB9C 8006AF9C 84790000 */  lh    $t9, ($v1)
/* 06BBA0 8006AFA0 01E02825 */  move  $a1, $t7
/* 06BBA4 8006AFA4 02202025 */  move  $a0, $s1
/* 06BBA8 8006AFA8 2B210078 */  slti  $at, $t9, 0x78
/* 06BBAC 8006AFAC 54200004 */  bnel  $at, $zero, .L8006AFC0
/* 06BBB0 8006AFB0 8FBF002C */   lw    $ra, 0x2c($sp)
/* 06BBB4 8006AFB4 0C01AE5D */  jal   func_8006B974
/* 06BBB8 8006AFB8 83A600B3 */   lb    $a2, 0xb3($sp)
.L8006AFBC:
/* 06BBBC 8006AFBC 8FBF002C */  lw    $ra, 0x2c($sp)
.L8006AFC0:
/* 06BBC0 8006AFC0 8FB00024 */  lw    $s0, 0x24($sp)
/* 06BBC4 8006AFC4 8FB10028 */  lw    $s1, 0x28($sp)
/* 06BBC8 8006AFC8 03E00008 */  jr    $ra
/* 06BBCC 8006AFCC 27BD00A0 */   addiu $sp, $sp, 0xa0
