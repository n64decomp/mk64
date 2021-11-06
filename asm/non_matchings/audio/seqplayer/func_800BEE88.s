glabel func_800BEE88
/* 0BFA88 800BEE88 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0BFA8C 800BEE8C 30AE00FF */  andi  $t6, $a1, 0xff
/* 0BFA90 800BEE90 000E7880 */  sll   $t7, $t6, 2
/* 0BFA94 800BEE94 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0BFA98 800BEE98 AFB30020 */  sw    $s3, 0x20($sp)
/* 0BFA9C 800BEE9C AFB2001C */  sw    $s2, 0x1c($sp)
/* 0BFAA0 800BEEA0 AFB10018 */  sw    $s1, 0x18($sp)
/* 0BFAA4 800BEEA4 AFB00014 */  sw    $s0, 0x14($sp)
/* 0BFAA8 800BEEA8 AFA5002C */  sw    $a1, 0x2c($sp)
/* 0BFAAC 800BEEAC 008FC021 */  addu  $t8, $a0, $t7
/* 0BFAB0 800BEEB0 8F120030 */  lw    $s2, 0x30($t8)
/* 0BFAB4 800BEEB4 3C19803B */  lui   $t9, %hi(D_803B5EF0) # $t9, 0x803b
/* 0BFAB8 800BEEB8 27395EF0 */  addiu $t9, %lo(D_803B5EF0) # addiu $t9, $t9, 0x5ef0
/* 0BFABC 800BEEBC 12590014 */  beq   $s2, $t9, .L800BEF10
/* 0BFAC0 800BEEC0 00008025 */   move  $s0, $zero
/* 0BFAC4 800BEEC4 924A0000 */  lbu   $t2, ($s2)
/* 0BFAC8 800BEEC8 A2400078 */  sb    $zero, 0x78($s2)
/* 0BFACC 800BEECC AE460060 */  sw    $a2, 0x60($s2)
/* 0BFAD0 800BEED0 354C0080 */  ori   $t4, $t2, 0x80
/* 0BFAD4 800BEED4 A24C0000 */  sb    $t4, ($s2)
/* 0BFAD8 800BEED8 318D00BF */  andi  $t5, $t4, 0xbf
/* 0BFADC 800BEEDC A24D0000 */  sb    $t5, ($s2)
/* 0BFAE0 800BEEE0 A640001A */  sh    $zero, 0x1a($s2)
/* 0BFAE4 800BEEE4 02408825 */  move  $s1, $s2
/* 0BFAE8 800BEEE8 24130004 */  li    $s3, 4
.L800BEEEC:
/* 0BFAEC 800BEEEC 8E2E0048 */  lw    $t6, 0x48($s1)
/* 0BFAF0 800BEEF0 02402025 */  move  $a0, $s2
/* 0BFAF4 800BEEF4 51C00004 */  beql  $t6, $zero, .L800BEF08
/* 0BFAF8 800BEEF8 26100001 */   addiu $s0, $s0, 1
/* 0BFAFC 800BEEFC 0C02FAD5 */  jal   func_800BEB54
/* 0BFB00 800BEF00 02002825 */   move  $a1, $s0
/* 0BFB04 800BEF04 26100001 */  addiu $s0, $s0, 1
.L800BEF08:
/* 0BFB08 800BEF08 1613FFF8 */  bne   $s0, $s3, .L800BEEEC
/* 0BFB0C 800BEF0C 26310004 */   addiu $s1, $s1, 4
.L800BEF10:
/* 0BFB10 800BEF10 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0BFB14 800BEF14 8FB00014 */  lw    $s0, 0x14($sp)
/* 0BFB18 800BEF18 8FB10018 */  lw    $s1, 0x18($sp)
/* 0BFB1C 800BEF1C 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0BFB20 800BEF20 8FB30020 */  lw    $s3, 0x20($sp)
/* 0BFB24 800BEF24 03E00008 */  jr    $ra
/* 0BFB28 800BEF28 27BD0028 */   addiu $sp, $sp, 0x28
