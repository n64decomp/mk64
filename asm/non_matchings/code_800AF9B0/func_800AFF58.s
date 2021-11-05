glabel func_800AFF58
/* 0B0B58 800AFF58 27BDFF08 */  addiu $sp, $sp, -0xf8
/* 0B0B5C 800AFF5C AFB3002C */  sw    $s3, 0x2c($sp)
/* 0B0B60 800AFF60 AFB20028 */  sw    $s2, 0x28($sp)
/* 0B0B64 800AFF64 AFB10024 */  sw    $s1, 0x24($sp)
/* 0B0B68 800AFF68 AFB00020 */  sw    $s0, 0x20($sp)
/* 0B0B6C 800AFF6C 00809825 */  move  $s3, $a0
/* 0B0B70 800AFF70 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0B0B74 800AFF74 AFB40030 */  sw    $s4, 0x30($sp)
/* 0B0B78 800AFF78 27B00088 */  addiu $s0, $sp, 0x88
/* 0B0B7C 800AFF7C 00008825 */  move  $s1, $zero
/* 0B0B80 800AFF80 27B20040 */  addiu $s2, $sp, 0x40
.L800AFF84:
/* 0B0B84 800AFF84 00117100 */  sll   $t6, $s1, 4
/* 0B0B88 800AFF88 01D32021 */  addu  $a0, $t6, $s3
/* 0B0B8C 800AFF8C 24050001 */  li    $a1, 1
/* 0B0B90 800AFF90 24060002 */  li    $a2, 2
/* 0B0B94 800AFF94 00003825 */  move  $a3, $zero
/* 0B0B98 800AFF98 0C02BF15 */  jal   func_800AFC54
/* 0B0B9C 800AFF9C AFB20010 */   sw    $s2, 0x10($sp)
/* 0B0BA0 800AFFA0 26520006 */  addiu $s2, $s2, 6
/* 0B0BA4 800AFFA4 0250082B */  sltu  $at, $s2, $s0
/* 0B0BA8 800AFFA8 1420FFF6 */  bnez  $at, .L800AFF84
/* 0B0BAC 800AFFAC 26310004 */   addiu $s1, $s1, 4
/* 0B0BB0 800AFFB0 00008025 */  move  $s0, $zero
/* 0B0BB4 800AFFB4 00008825 */  move  $s1, $zero
/* 0B0BB8 800AFFB8 2414000C */  li    $s4, 12
/* 0B0BBC 800AFFBC 27B20040 */  addiu $s2, $sp, 0x40
.L800AFFC0:
/* 0B0BC0 800AFFC0 00117900 */  sll   $t7, $s1, 4
/* 0B0BC4 800AFFC4 01F32021 */  addu  $a0, $t7, $s3
/* 0B0BC8 800AFFC8 02402825 */  move  $a1, $s2
/* 0B0BCC 800AFFCC 02003025 */  move  $a2, $s0
/* 0B0BD0 800AFFD0 0C02BF80 */  jal   func_800AFE00
/* 0B0BD4 800AFFD4 2407000B */   li    $a3, 11
/* 0B0BD8 800AFFD8 26100001 */  addiu $s0, $s0, 1
/* 0B0BDC 800AFFDC 1614FFF8 */  bne   $s0, $s4, .L800AFFC0
/* 0B0BE0 800AFFE0 26310004 */   addiu $s1, $s1, 4
/* 0B0BE4 800AFFE4 8FBF0034 */  lw    $ra, 0x34($sp)
/* 0B0BE8 800AFFE8 8FB00020 */  lw    $s0, 0x20($sp)
/* 0B0BEC 800AFFEC 8FB10024 */  lw    $s1, 0x24($sp)
/* 0B0BF0 800AFFF0 8FB20028 */  lw    $s2, 0x28($sp)
/* 0B0BF4 800AFFF4 8FB3002C */  lw    $s3, 0x2c($sp)
/* 0B0BF8 800AFFF8 8FB40030 */  lw    $s4, 0x30($sp)
/* 0B0BFC 800AFFFC 03E00008 */  jr    $ra
/* 0B0C00 800B0000 27BD00F8 */   addiu $sp, $sp, 0xf8
