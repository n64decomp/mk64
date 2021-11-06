glabel func_800BEDB8
/* 0BF9B8 800BEDB8 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0BF9BC 800BEDBC AFB50028 */  sw    $s5, 0x28($sp)
/* 0BF9C0 800BEDC0 AFB70030 */  sw    $s7, 0x30($sp)
/* 0BF9C4 800BEDC4 AFB6002C */  sw    $s6, 0x2c($sp)
/* 0BF9C8 800BEDC8 AFB40024 */  sw    $s4, 0x24($sp)
/* 0BF9CC 800BEDCC AFB10018 */  sw    $s1, 0x18($sp)
/* 0BF9D0 800BEDD0 AFA5003C */  sw    $a1, 0x3c($sp)
/* 0BF9D4 800BEDD4 30AEFFFF */  andi  $t6, $a1, 0xffff
/* 0BF9D8 800BEDD8 3C15803B */  lui   $s5, %hi(D_803B5EF0) # $s5, 0x803b
/* 0BF9DC 800BEDDC 01C02825 */  move  $a1, $t6
/* 0BF9E0 800BEDE0 0080A025 */  move  $s4, $a0
/* 0BF9E4 800BEDE4 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0BF9E8 800BEDE8 AFB30020 */  sw    $s3, 0x20($sp)
/* 0BF9EC 800BEDEC AFB2001C */  sw    $s2, 0x1c($sp)
/* 0BF9F0 800BEDF0 AFB00014 */  sw    $s0, 0x14($sp)
/* 0BF9F4 800BEDF4 26B55EF0 */  addiu $s5, %lo(D_803B5EF0) # addiu $s5, $s5, 0x5ef0
/* 0BF9F8 800BEDF8 00008825 */  move  $s1, $zero
/* 0BF9FC 800BEDFC 24160001 */  li    $s6, 1
/* 0BFA00 800BEE00 24170010 */  li    $s7, 16
.L800BEE04:
/* 0BFA04 800BEE04 30AF0001 */  andi  $t7, $a1, 1
/* 0BFA08 800BEE08 11E0000F */  beqz  $t7, .L800BEE48
/* 0BFA0C 800BEE0C 00A09025 */   move  $s2, $a1
/* 0BFA10 800BEE10 0011C080 */  sll   $t8, $s1, 2
/* 0BFA14 800BEE14 02989821 */  addu  $s3, $s4, $t8
/* 0BFA18 800BEE18 8E700030 */  lw    $s0, 0x30($s3)
/* 0BFA1C 800BEE1C 0215C826 */  xor   $t9, $s0, $s5
/* 0BFA20 800BEE20 0019C82B */  sltu  $t9, $zero, $t9
/* 0BFA24 800BEE24 56D90009 */  bnel  $s6, $t9, .L800BEE4C
/* 0BFA28 800BEE28 00122843 */   sra   $a1, $s2, 1
/* 0BFA2C 800BEE2C 8E080044 */  lw    $t0, 0x44($s0)
/* 0BFA30 800BEE30 56880005 */  bnel  $s4, $t0, .L800BEE48
/* 0BFA34 800BEE34 AE750030 */   sw    $s5, 0x30($s3)
/* 0BFA38 800BEE38 0C02FAE9 */  jal   func_800BEBA4
/* 0BFA3C 800BEE3C 02002025 */   move  $a0, $s0
/* 0BFA40 800BEE40 AE000044 */  sw    $zero, 0x44($s0)
/* 0BFA44 800BEE44 AE750030 */  sw    $s5, 0x30($s3)
.L800BEE48:
/* 0BFA48 800BEE48 00122843 */  sra   $a1, $s2, 1
.L800BEE4C:
/* 0BFA4C 800BEE4C 26310001 */  addiu $s1, $s1, 1
/* 0BFA50 800BEE50 30A9FFFF */  andi  $t1, $a1, 0xffff
/* 0BFA54 800BEE54 1637FFEB */  bne   $s1, $s7, .L800BEE04
/* 0BFA58 800BEE58 01202825 */   move  $a1, $t1
/* 0BFA5C 800BEE5C 8FBF0034 */  lw    $ra, 0x34($sp)
/* 0BFA60 800BEE60 8FB00014 */  lw    $s0, 0x14($sp)
/* 0BFA64 800BEE64 8FB10018 */  lw    $s1, 0x18($sp)
/* 0BFA68 800BEE68 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0BFA6C 800BEE6C 8FB30020 */  lw    $s3, 0x20($sp)
/* 0BFA70 800BEE70 8FB40024 */  lw    $s4, 0x24($sp)
/* 0BFA74 800BEE74 8FB50028 */  lw    $s5, 0x28($sp)
/* 0BFA78 800BEE78 8FB6002C */  lw    $s6, 0x2c($sp)
/* 0BFA7C 800BEE7C 8FB70030 */  lw    $s7, 0x30($sp)
/* 0BFA80 800BEE80 03E00008 */  jr    $ra
/* 0BFA84 800BEE84 27BD0038 */   addiu $sp, $sp, 0x38
