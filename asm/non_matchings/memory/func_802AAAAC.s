glabel func_802AAAAC
/* 1140BC 802AAAAC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1140C0 802AAAB0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 1140C4 802AAAB4 AFB00018 */  sw    $s0, 0x18($sp)
/* 1140C8 802AAAB8 44800000 */  mtc1  $zero, $f0
/* 1140CC 802AAABC 44801000 */  mtc1  $zero, $f2
/* 1140D0 802AAAC0 24021388 */  li    $v0, 5000
/* 1140D4 802AAAC4 00808025 */  move  $s0, $a0
/* 1140D8 802AAAC8 44050000 */  mfc1  $a1, $f0
/* 1140DC 802AAACC 44060000 */  mfc1  $a2, $f0
/* 1140E0 802AAAD0 A4820006 */  sh    $v0, 6($a0)
/* 1140E4 802AAAD4 A4820008 */  sh    $v0, 8($a0)
/* 1140E8 802AAAD8 A482000A */  sh    $v0, 0xa($a0)
/* 1140EC 802AAADC A4800000 */  sh    $zero, ($a0)
/* 1140F0 802AAAE0 A4800002 */  sh    $zero, 2($a0)
/* 1140F4 802AAAE4 A4800004 */  sh    $zero, 4($a0)
/* 1140F8 802AAAE8 24840018 */  addiu $a0, $a0, 0x18
/* 1140FC 802AAAEC 3C073F80 */  lui   $a3, 0x3f80
/* 114100 802AAAF0 E482FFF4 */  swc1  $f2, -0xc($a0)
/* 114104 802AAAF4 E482FFF8 */  swc1  $f2, -8($a0)
/* 114108 802AAAF8 0C0AD4A7 */  jal   load_giant_egg
/* 11410C 802AAAFC E482FFFC */   swc1  $f2, -4($a0)
/* 114110 802AAB00 44800000 */  mtc1  $zero, $f0
/* 114114 802AAB04 26040024 */  addiu $a0, $s0, 0x24
/* 114118 802AAB08 3C053F80 */  lui   $a1, 0x3f80
/* 11411C 802AAB0C 44060000 */  mfc1  $a2, $f0
/* 114120 802AAB10 44070000 */  mfc1  $a3, $f0
/* 114124 802AAB14 0C0AD4A7 */  jal   load_giant_egg
/* 114128 802AAB18 00000000 */   nop   
/* 11412C 802AAB1C 44800000 */  mtc1  $zero, $f0
/* 114130 802AAB20 26040030 */  addiu $a0, $s0, 0x30
/* 114134 802AAB24 3C063F80 */  lui   $a2, 0x3f80
/* 114138 802AAB28 44050000 */  mfc1  $a1, $f0
/* 11413C 802AAB2C 44070000 */  mfc1  $a3, $f0
/* 114140 802AAB30 0C0AD4A7 */  jal   load_giant_egg
/* 114144 802AAB34 00000000 */   nop   
/* 114148 802AAB38 8FBF001C */  lw    $ra, 0x1c($sp)
/* 11414C 802AAB3C 8FB00018 */  lw    $s0, 0x18($sp)
/* 114150 802AAB40 27BD0020 */  addiu $sp, $sp, 0x20
/* 114154 802AAB44 03E00008 */  jr    $ra
/* 114158 802AAB48 00000000 */   nop   
