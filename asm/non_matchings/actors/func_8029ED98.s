glabel func_8029ED98
/* 1083A8 8029ED98 27BDFF90 */  addiu $sp, $sp, -0x70
/* 1083AC 8029ED9C 00057602 */  srl   $t6, $a1, 0x18
/* 1083B0 8029EDA0 000E7880 */  sll   $t7, $t6, 2
/* 1083B4 8029EDA4 3C188015 */  lui   $t8, %hi(gSegmentTable)
/* 1083B8 8029EDA8 030FC021 */  addu  $t8, $t8, $t7
/* 1083BC 8029EDAC 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 1083C0 8029EDB0 8F180258 */  lw    $t8, %lo(gSegmentTable)($t8)
/* 1083C4 8029EDB4 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 1083C8 8029EDB8 00A1C824 */  and   $t9, $a1, $at
/* 1083CC 8029EDBC AFB00034 */  sw    $s0, 0x34($sp)
/* 1083D0 8029EDC0 3C018000 */  lui   $at, 0x8000
/* 1083D4 8029EDC4 03198021 */  addu  $s0, $t8, $t9
/* 1083D8 8029EDC8 AFBF004C */  sw    $ra, 0x4c($sp)
/* 1083DC 8029EDCC AFB50048 */  sw    $s5, 0x48($sp)
/* 1083E0 8029EDD0 AFB40044 */  sw    $s4, 0x44($sp)
/* 1083E4 8029EDD4 AFB30040 */  sw    $s3, 0x40($sp)
/* 1083E8 8029EDD8 AFB2003C */  sw    $s2, 0x3c($sp)
/* 1083EC 8029EDDC AFB10038 */  sw    $s1, 0x38($sp)
/* 1083F0 8029EDE0 F7B80028 */  sdc1  $f24, 0x28($sp)
/* 1083F4 8029EDE4 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 1083F8 8029EDE8 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 1083FC 8029EDEC 02018021 */  addu  $s0, $s0, $at
/* 108400 8029EDF0 86020000 */  lh    $v0, ($s0)
/* 108404 8029EDF4 24158000 */  li    $s5, -32768
/* 108408 8029EDF8 0080A025 */  move  $s4, $a0
/* 10840C 8029EDFC 12A20022 */  beq   $s5, $v0, .L8029EE88
/* 108410 8029EE00 3C01802C */   lui   $at, %hi(D_802B9888) # $at, 0x802c
/* 108414 8029EE04 C4389888 */  lwc1  $f24, %lo(D_802B9888)($at)
/* 108418 8029EE08 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 10841C 8029EE0C 4481B000 */  mtc1  $at, $f22
/* 108420 8029EE10 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 108424 8029EE14 3C118016 */  lui   $s1, %hi(gCourseDirection) # $s1, 0x8016
/* 108428 8029EE18 4481A000 */  mtc1  $at, $f20
/* 10842C 8029EE1C 2631F784 */  addiu $s1, %lo(gCourseDirection) # addiu $s1, $s1, -0x87c
/* 108430 8029EE20 27B20064 */  addiu $s2, $sp, 0x64
/* 108434 8029EE24 44822000 */  mtc1  $v0, $f4
.L8029EE28:
/* 108438 8029EE28 C6280000 */  lwc1  $f8, ($s1)
/* 10843C 8029EE2C 4406A000 */  mfc1  $a2, $f20
/* 108440 8029EE30 468021A0 */  cvt.s.w $f6, $f4
/* 108444 8029EE34 4407B000 */  mfc1  $a3, $f22
/* 108448 8029EE38 02802025 */  move  $a0, $s4
/* 10844C 8029EE3C 02402825 */  move  $a1, $s2
/* 108450 8029EE40 46083282 */  mul.s $f10, $f6, $f8
/* 108454 8029EE44 E7AA0064 */  swc1  $f10, 0x64($sp)
/* 108458 8029EE48 86080002 */  lh    $t0, 2($s0)
/* 10845C 8029EE4C 44888000 */  mtc1  $t0, $f16
/* 108460 8029EE50 00000000 */  nop   
/* 108464 8029EE54 468084A0 */  cvt.s.w $f18, $f16
/* 108468 8029EE58 E7B20068 */  swc1  $f18, 0x68($sp)
/* 10846C 8029EE5C 86090004 */  lh    $t1, 4($s0)
/* 108470 8029EE60 E7B80010 */  swc1  $f24, 0x10($sp)
/* 108474 8029EE64 44892000 */  mtc1  $t1, $f4
/* 108478 8029EE68 00000000 */  nop   
/* 10847C 8029EE6C 468021A0 */  cvt.s.w $f6, $f4
/* 108480 8029EE70 0C0A7BAE */  jal   func_8029EEB8
/* 108484 8029EE74 E7A6006C */   swc1  $f6, 0x6c($sp)
/* 108488 8029EE78 86020006 */  lh    $v0, 6($s0)
/* 10848C 8029EE7C 26100006 */  addiu $s0, $s0, 6
/* 108490 8029EE80 56A2FFE9 */  bnel  $s5, $v0, .L8029EE28
/* 108494 8029EE84 44822000 */   mtc1  $v0, $f4
.L8029EE88:
/* 108498 8029EE88 8FBF004C */  lw    $ra, 0x4c($sp)
/* 10849C 8029EE8C D7B40018 */  ldc1  $f20, 0x18($sp)
/* 1084A0 8029EE90 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 1084A4 8029EE94 D7B80028 */  ldc1  $f24, 0x28($sp)
/* 1084A8 8029EE98 8FB00034 */  lw    $s0, 0x34($sp)
/* 1084AC 8029EE9C 8FB10038 */  lw    $s1, 0x38($sp)
/* 1084B0 8029EEA0 8FB2003C */  lw    $s2, 0x3c($sp)
/* 1084B4 8029EEA4 8FB30040 */  lw    $s3, 0x40($sp)
/* 1084B8 8029EEA8 8FB40044 */  lw    $s4, 0x44($sp)
/* 1084BC 8029EEAC 8FB50048 */  lw    $s5, 0x48($sp)
/* 1084C0 8029EEB0 03E00008 */  jr    $ra
/* 1084C4 8029EEB4 27BD0070 */   addiu $sp, $sp, 0x70
