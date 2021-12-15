glabel func_800A8A98
/* 0A9698 800A8A98 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 0A969C 800A8A9C AFB10034 */  sw    $s1, 0x34($sp)
/* 0A96A0 800A8AA0 3C118015 */  lui   $s1, %hi(gDisplayListHead) # $s1, 0x8015
/* 0A96A4 800A8AA4 26310298 */  addiu $s1, %lo(gDisplayListHead) # addiu $s1, $s1, 0x298
/* 0A96A8 800A8AA8 8E220000 */  lw    $v0, ($s1)
/* 0A96AC 800A8AAC AFBF0054 */  sw    $ra, 0x54($sp)
/* 0A96B0 800A8AB0 AFBE0050 */  sw    $fp, 0x50($sp)
/* 0A96B4 800A8AB4 AFB7004C */  sw    $s7, 0x4c($sp)
/* 0A96B8 800A8AB8 AFB60048 */  sw    $s6, 0x48($sp)
/* 0A96BC 800A8ABC AFB50044 */  sw    $s5, 0x44($sp)
/* 0A96C0 800A8AC0 AFB40040 */  sw    $s4, 0x40($sp)
/* 0A96C4 800A8AC4 AFB3003C */  sw    $s3, 0x3c($sp)
/* 0A96C8 800A8AC8 AFB20038 */  sw    $s2, 0x38($sp)
/* 0A96CC 800A8ACC AFB00030 */  sw    $s0, 0x30($sp)
/* 0A96D0 800A8AD0 8C92000C */  lw    $s2, 0xc($a0)
/* 0A96D4 800A8AD4 8C930010 */  lw    $s3, 0x10($a0)
/* 0A96D8 800A8AD8 244E0008 */  addiu $t6, $v0, 8
/* 0A96DC 800A8ADC AE2E0000 */  sw    $t6, ($s1)
/* 0A96E0 800A8AE0 3C0FE700 */  lui   $t7, 0xe700
/* 0A96E4 800A8AE4 AC4F0000 */  sw    $t7, ($v0)
/* 0A96E8 800A8AE8 AC400004 */  sw    $zero, 4($v0)
/* 0A96EC 800A8AEC 8E220000 */  lw    $v0, ($s1)
/* 0A96F0 800A8AF0 3C19B900 */  lui   $t9, (0xB900031D >> 16) # lui $t9, 0xb900
/* 0A96F4 800A8AF4 3C080F0A */  lui   $t0, (0x0F0A4000 >> 16) # lui $t0, 0xf0a
/* 0A96F8 800A8AF8 24580008 */  addiu $t8, $v0, 8
/* 0A96FC 800A8AFC AE380000 */  sw    $t8, ($s1)
/* 0A9700 800A8B00 35084000 */  ori   $t0, (0x0F0A4000 & 0xFFFF) # ori $t0, $t0, 0x4000
/* 0A9704 800A8B04 3739031D */  ori   $t9, (0xB900031D & 0xFFFF) # ori $t9, $t9, 0x31d
/* 0A9708 800A8B08 AC590000 */  sw    $t9, ($v0)
/* 0A970C 800A8B0C AC480004 */  sw    $t0, 4($v0)
/* 0A9710 800A8B10 8E220000 */  lw    $v0, ($s1)
/* 0A9714 800A8B14 3C0AFCFF */  lui   $t2, (0xFCFFFFFF >> 16) # lui $t2, 0xfcff
/* 0A9718 800A8B18 3C0BFFFC */  lui   $t3, (0xFFFCF279 >> 16) # lui $t3, 0xfffc
/* 0A971C 800A8B1C 24490008 */  addiu $t1, $v0, 8
/* 0A9720 800A8B20 AE290000 */  sw    $t1, ($s1)
/* 0A9724 800A8B24 356BF279 */  ori   $t3, (0xFFFCF279 & 0xFFFF) # ori $t3, $t3, 0xf279
/* 0A9728 800A8B28 354AFFFF */  ori   $t2, (0xFCFFFFFF & 0xFFFF) # ori $t2, $t2, 0xffff
/* 0A972C 800A8B2C 3C10800E */  lui   $s0, %hi(D_800E7208) # $s0, 0x800e
/* 0A9730 800A8B30 3C168019 */  lui   $s6, %hi(gCupCourseSelection) # $s6, 0x8019
/* 0A9734 800A8B34 3C178019 */  lui   $s7, %hi(D_8018EDEC) # $s7, 0x8019
/* 0A9738 800A8B38 3C1E800E */  lui   $fp, %hi(gModeSelection) # $fp, 0x800e
/* 0A973C 800A8B3C 27DEC53C */  addiu $fp, %lo(gModeSelection) # addiu $fp, $fp, -0x3ac4
/* 0A9740 800A8B40 26F7EDEC */  addiu $s7, %lo(D_8018EDEC) # addiu $s7, $s7, -0x1214
/* 0A9744 800A8B44 26D6EE0B */  addiu $s6, %lo(gCupCourseSelection) # addiu $s6, $s6, -0x11f5
/* 0A9748 800A8B48 26107208 */  addiu $s0, %lo(D_800E7208) # addiu $s0, $s0, 0x7208
/* 0A974C 800A8B4C 0000A025 */  move  $s4, $zero
/* 0A9750 800A8B50 24150004 */  li    $s5, 4
/* 0A9754 800A8B54 AC4A0000 */  sw    $t2, ($v0)
/* 0A9758 800A8B58 AC4B0004 */  sw    $t3, 4($v0)
.L800A8B5C:
/* 0A975C 800A8B5C 82CC0000 */  lb    $t4, ($s6)
/* 0A9760 800A8B60 240E0001 */  li    $t6, 1
/* 0A9764 800A8B64 240F0001 */  li    $t7, 1
/* 0A9768 800A8B68 168C002E */  bne   $s4, $t4, .L800A8C24
/* 0A976C 800A8B6C 241800FF */   li    $t8, 255
/* 0A9770 800A8B70 82E20000 */  lb    $v0, ($s7)
/* 0A9774 800A8B74 28410002 */  slti  $at, $v0, 2
/* 0A9778 800A8B78 5420002B */  bnel  $at, $zero, .L800A8C28
/* 0A977C 800A8B7C 860B000A */   lh    $t3, 0xa($s0)
/* 0A9780 800A8B80 8FCD0000 */  lw    $t5, ($fp)
/* 0A9784 800A8B84 24010002 */  li    $at, 2
/* 0A9788 800A8B88 51A00027 */  beql  $t5, $zero, .L800A8C28
/* 0A978C 800A8B8C 860B000A */   lh    $t3, 0xa($s0)
/* 0A9790 800A8B90 50410004 */  beql  $v0, $at, .L800A8BA4
/* 0A9794 800A8B94 8619000A */   lh    $t9, 0xa($s0)
/* 0A9798 800A8B98 16A2000E */  bne   $s5, $v0, .L800A8BD4
/* 0A979C 800A8B9C 240E00FF */   li    $t6, 255
/* 0A97A0 800A8BA0 8619000A */  lh    $t9, 0xa($s0)
.L800A8BA4:
/* 0A97A4 800A8BA4 860E0000 */  lh    $t6, ($s0)
/* 0A97A8 800A8BA8 860F0002 */  lh    $t7, 2($s0)
/* 0A97AC 800A8BAC 86180008 */  lh    $t8, 8($s0)
/* 0A97B0 800A8BB0 03334021 */  addu  $t0, $t9, $s3
/* 0A97B4 800A8BB4 AFA80010 */  sw    $t0, 0x10($sp)
/* 0A97B8 800A8BB8 8E240000 */  lw    $a0, ($s1)
/* 0A97BC 800A8BBC 01D22821 */  addu  $a1, $t6, $s2
/* 0A97C0 800A8BC0 01F33021 */  addu  $a2, $t7, $s3
/* 0A97C4 800A8BC4 0C025668 */  jal   func_800959A0
/* 0A97C8 800A8BC8 03123821 */   addu  $a3, $t8, $s2
/* 0A97CC 800A8BCC 10000026 */  b     .L800A8C68
/* 0A97D0 800A8BD0 AE220000 */   sw    $v0, ($s1)
.L800A8BD4:
/* 0A97D4 800A8BD4 860C000A */  lh    $t4, 0xa($s0)
/* 0A97D8 800A8BD8 86090000 */  lh    $t1, ($s0)
/* 0A97DC 800A8BDC 860A0002 */  lh    $t2, 2($s0)
/* 0A97E0 800A8BE0 860B0008 */  lh    $t3, 8($s0)
/* 0A97E4 800A8BE4 240F00F9 */  li    $t7, 249
/* 0A97E8 800A8BE8 241800DC */  li    $t8, 220
/* 0A97EC 800A8BEC 241900FF */  li    $t9, 255
/* 0A97F0 800A8BF0 01936821 */  addu  $t5, $t4, $s3
/* 0A97F4 800A8BF4 AFAD0010 */  sw    $t5, 0x10($sp)
/* 0A97F8 800A8BF8 AFB90020 */  sw    $t9, 0x20($sp)
/* 0A97FC 800A8BFC AFB8001C */  sw    $t8, 0x1c($sp)
/* 0A9800 800A8C00 AFAF0018 */  sw    $t7, 0x18($sp)
/* 0A9804 800A8C04 8E240000 */  lw    $a0, ($s1)
/* 0A9808 800A8C08 AFAE0014 */  sw    $t6, 0x14($sp)
/* 0A980C 800A8C0C 01322821 */  addu  $a1, $t1, $s2
/* 0A9810 800A8C10 01533021 */  addu  $a2, $t2, $s3
/* 0A9814 800A8C14 0C026306 */  jal   func_80098C18
/* 0A9818 800A8C18 01723821 */   addu  $a3, $t3, $s2
/* 0A981C 800A8C1C 10000012 */  b     .L800A8C68
/* 0A9820 800A8C20 AE220000 */   sw    $v0, ($s1)
.L800A8C24:
/* 0A9824 800A8C24 860B000A */  lh    $t3, 0xa($s0)
.L800A8C28:
/* 0A9828 800A8C28 86080000 */  lh    $t0, ($s0)
/* 0A982C 800A8C2C 86090002 */  lh    $t1, 2($s0)
/* 0A9830 800A8C30 860A0008 */  lh    $t2, 8($s0)
/* 0A9834 800A8C34 240D0001 */  li    $t5, 1
/* 0A9838 800A8C38 01736021 */  addu  $t4, $t3, $s3
/* 0A983C 800A8C3C AFAC0010 */  sw    $t4, 0x10($sp)
/* 0A9840 800A8C40 AFAD0014 */  sw    $t5, 0x14($sp)
/* 0A9844 800A8C44 8E240000 */  lw    $a0, ($s1)
/* 0A9848 800A8C48 AFAE0018 */  sw    $t6, 0x18($sp)
/* 0A984C 800A8C4C AFAF001C */  sw    $t7, 0x1c($sp)
/* 0A9850 800A8C50 AFB80020 */  sw    $t8, 0x20($sp)
/* 0A9854 800A8C54 01122821 */  addu  $a1, $t0, $s2
/* 0A9858 800A8C58 01333021 */  addu  $a2, $t1, $s3
/* 0A985C 800A8C5C 0C026306 */  jal   func_80098C18
/* 0A9860 800A8C60 01523821 */   addu  $a3, $t2, $s2
/* 0A9864 800A8C64 AE220000 */  sw    $v0, ($s1)
.L800A8C68:
/* 0A9868 800A8C68 26940001 */  addiu $s4, $s4, 1
/* 0A986C 800A8C6C 1695FFBB */  bne   $s4, $s5, .L800A8B5C
/* 0A9870 800A8C70 26100010 */   addiu $s0, $s0, 0x10
/* 0A9874 800A8C74 8FBF0054 */  lw    $ra, 0x54($sp)
/* 0A9878 800A8C78 8FB00030 */  lw    $s0, 0x30($sp)
/* 0A987C 800A8C7C 8FB10034 */  lw    $s1, 0x34($sp)
/* 0A9880 800A8C80 8FB20038 */  lw    $s2, 0x38($sp)
/* 0A9884 800A8C84 8FB3003C */  lw    $s3, 0x3c($sp)
/* 0A9888 800A8C88 8FB40040 */  lw    $s4, 0x40($sp)
/* 0A988C 800A8C8C 8FB50044 */  lw    $s5, 0x44($sp)
/* 0A9890 800A8C90 8FB60048 */  lw    $s6, 0x48($sp)
/* 0A9894 800A8C94 8FB7004C */  lw    $s7, 0x4c($sp)
/* 0A9898 800A8C98 8FBE0050 */  lw    $fp, 0x50($sp)
/* 0A989C 800A8C9C 03E00008 */  jr    $ra
/* 0A98A0 800A8CA0 27BD0058 */   addiu $sp, $sp, 0x58
