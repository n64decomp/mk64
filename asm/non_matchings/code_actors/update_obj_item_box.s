glabel update_obj_item_box
/* 10AC10 802A1600 84820006 */  lh    $v0, 6($a0)
/* 10AC14 802A1604 24010001 */  li    $at, 1
/* 10AC18 802A1608 240E0001 */  li    $t6, 1
/* 10AC1C 802A160C 10400009 */  beqz  $v0, .L802A1634
/* 10AC20 802A1610 00000000 */   nop   
/* 10AC24 802A1614 10410009 */  beq   $v0, $at, .L802A163C
/* 10AC28 802A1618 24010002 */   li    $at, 2
/* 10AC2C 802A161C 1041001C */  beq   $v0, $at, .L802A1690
/* 10AC30 802A1620 24010003 */   li    $at, 3
/* 10AC34 802A1624 50410025 */  beql  $v0, $at, .L802A16BC
/* 10AC38 802A1628 84820004 */   lh    $v0, 4($a0)
/* 10AC3C 802A162C 03E00008 */  jr    $ra
/* 10AC40 802A1630 00000000 */   nop   

.L802A1634:
/* 10AC44 802A1634 03E00008 */  jr    $ra
/* 10AC48 802A1638 A48E0006 */   sh    $t6, 6($a0)

.L802A163C:
/* 10AC4C 802A163C C480001C */  lwc1  $f0, 0x1c($a0)
/* 10AC50 802A1640 C4820024 */  lwc1  $f2, 0x24($a0)
/* 10AC54 802A1644 3C01802C */  lui   $at, %hi(D_802B99D8) # $at, 0x802c
/* 10AC58 802A1648 C42C99D8 */  lwc1  $f12, %lo(D_802B99D8)($at)
/* 10AC5C 802A164C 46020101 */  sub.s $f4, $f0, $f2
/* 10AC60 802A1650 3C01802C */  lui   $at, %hi(D_802B99DC) # $at, 0x802c
/* 10AC64 802A1654 240F0002 */  li    $t7, 2
/* 10AC68 802A1658 2418C000 */  li    $t8, -16384
/* 10AC6C 802A165C 460C203C */  c.lt.s $f4, $f12
/* 10AC70 802A1660 00000000 */  nop   
/* 10AC74 802A1664 45020006 */  bc1fl .L802A1680
/* 10AC78 802A1668 460C1280 */   add.s $f10, $f2, $f12
/* 10AC7C 802A166C C42699DC */  lwc1  $f6, %lo(D_802B99DC)($at)
/* 10AC80 802A1670 46060200 */  add.s $f8, $f0, $f6
/* 10AC84 802A1674 03E00008 */  jr    $ra
/* 10AC88 802A1678 E488001C */   swc1  $f8, 0x1c($a0)

/* 10AC8C 802A167C 460C1280 */  add.s $f10, $f2, $f12
.L802A1680:
/* 10AC90 802A1680 A48F0006 */  sh    $t7, 6($a0)
/* 10AC94 802A1684 A4980002 */  sh    $t8, 2($a0)
/* 10AC98 802A1688 03E00008 */  jr    $ra
/* 10AC9C 802A168C E48A001C */   swc1  $f10, 0x1c($a0)

.L802A1690:
/* 10ACA0 802A1690 84990010 */  lh    $t9, 0x10($a0)
/* 10ACA4 802A1694 84890012 */  lh    $t1, 0x12($a0)
/* 10ACA8 802A1698 848B0014 */  lh    $t3, 0x14($a0)
/* 10ACAC 802A169C 272800B6 */  addiu $t0, $t9, 0xb6
/* 10ACB0 802A16A0 252AFE94 */  addiu $t2, $t1, -0x16c
/* 10ACB4 802A16A4 256C00B6 */  addiu $t4, $t3, 0xb6
/* 10ACB8 802A16A8 A4880010 */  sh    $t0, 0x10($a0)
/* 10ACBC 802A16AC A48A0012 */  sh    $t2, 0x12($a0)
/* 10ACC0 802A16B0 03E00008 */  jr    $ra
/* 10ACC4 802A16B4 A48C0014 */   sh    $t4, 0x14($a0)

/* 10ACC8 802A16B8 84820004 */  lh    $v0, 4($a0)
.L802A16BC:
/* 10ACCC 802A16BC 24010014 */  li    $at, 20
/* 10ACD0 802A16C0 1441000A */  bne   $v0, $at, .L802A16EC
/* 10ACD4 802A16C4 244E0001 */   addiu $t6, $v0, 1
/* 10ACD8 802A16C8 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 10ACDC 802A16CC 44819000 */  mtc1  $at, $f18
/* 10ACE0 802A16D0 C4900008 */  lwc1  $f16, 8($a0)
/* 10ACE4 802A16D4 240DC000 */  li    $t5, -16384
/* 10ACE8 802A16D8 A4800006 */  sh    $zero, 6($a0)
/* 10ACEC 802A16DC 46128101 */  sub.s $f4, $f16, $f18
/* 10ACF0 802A16E0 A48D0002 */  sh    $t5, 2($a0)
/* 10ACF4 802A16E4 03E00008 */  jr    $ra
/* 10ACF8 802A16E8 E484001C */   swc1  $f4, 0x1c($a0)

.L802A16EC:
/* 10ACFC 802A16EC 848F0010 */  lh    $t7, 0x10($a0)
/* 10AD00 802A16F0 84990012 */  lh    $t9, 0x12($a0)
/* 10AD04 802A16F4 84890014 */  lh    $t1, 0x14($a0)
/* 10AD08 802A16F8 25F80444 */  addiu $t8, $t7, 0x444
/* 10AD0C 802A16FC 2728FD28 */  addiu $t0, $t9, -0x2d8
/* 10AD10 802A1700 252A016C */  addiu $t2, $t1, 0x16c
/* 10AD14 802A1704 A48E0004 */  sh    $t6, 4($a0)
/* 10AD18 802A1708 A4980010 */  sh    $t8, 0x10($a0)
/* 10AD1C 802A170C A4880012 */  sh    $t0, 0x12($a0)
/* 10AD20 802A1710 A48A0014 */  sh    $t2, 0x14($a0)
/* 10AD24 802A1714 03E00008 */  jr    $ra
/* 10AD28 802A1718 00000000 */   nop   
