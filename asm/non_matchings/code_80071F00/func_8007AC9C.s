glabel func_8007AC9C
/* 07B89C 8007AC9C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 07B8A0 8007ACA0 AFB00014 */  sw    $s0, 0x14($sp)
/* 07B8A4 8007ACA4 3C108018 */  lui   $s0, %hi(D_80183E88) # 0x8018
/* 07B8A8 8007ACA8 0004C080 */  sll   $t8, $a0, 2
/* 07B8AC 8007ACAC 02188021 */  addu  $s0, $s0, $t8
/* 07B8B0 8007ACB0 8E103E88 */  lw    $s0, %lo(D_80183E88)($s0) # 0x3e88($s0)
/* 07B8B4 8007ACB4 000470C0 */  sll   $t6, $a0, 3
/* 07B8B8 8007ACB8 01C47023 */  subu  $t6, $t6, $a0
/* 07B8BC 8007ACBC 0010C8C0 */  sll   $t9, $s0, 3
/* 07B8C0 8007ACC0 3C088016 */  lui   $t0, %hi(D_80165C18) # $t0, 0x8016
/* 07B8C4 8007ACC4 0330C823 */  subu  $t9, $t9, $s0
/* 07B8C8 8007ACC8 AFB10018 */  sw    $s1, 0x18($sp)
/* 07B8CC 8007ACCC 000E7100 */  sll   $t6, $t6, 4
/* 07B8D0 8007ACD0 0019C940 */  sll   $t9, $t9, 5
/* 07B8D4 8007ACD4 25085C18 */  addiu $t0, %lo(D_80165C18) # addiu $t0, $t0, 0x5c18
/* 07B8D8 8007ACD8 01C47023 */  subu  $t6, $t6, $a0
/* 07B8DC 8007ACDC 03288821 */  addu  $s1, $t9, $t0
/* 07B8E0 8007ACE0 862900A4 */  lh    $t1, 0xa4($s1)
/* 07B8E4 8007ACE4 000E7080 */  sll   $t6, $t6, 2
/* 07B8E8 8007ACE8 3C0F800E */  lui   $t7, %hi(D_800DC4DC) # $t7, 0x800e
/* 07B8EC 8007ACEC 8DEFC4DC */  lw    $t7, %lo(D_800DC4DC)($t7)
/* 07B8F0 8007ACF0 01C47023 */  subu  $t6, $t6, $a0
/* 07B8F4 8007ACF4 000E70C0 */  sll   $t6, $t6, 3
/* 07B8F8 8007ACF8 2401000F */  li    $at, 15
/* 07B8FC 8007ACFC AFBF001C */  sw    $ra, 0x1c($sp)
/* 07B900 8007AD00 1521001F */  bne   $t1, $at, .L8007AD80
/* 07B904 8007AD04 01CF1021 */   addu  $v0, $t6, $t7
/* 07B908 8007AD08 02002025 */  move  $a0, $s0
/* 07B90C 8007AD0C 24050002 */  li    $a1, 2
/* 07B910 8007AD10 0C01C8D5 */  jal   func_80072354
/* 07B914 8007AD14 AFA20020 */   sw    $v0, 0x20($sp)
/* 07B918 8007AD18 10400008 */  beqz  $v0, .L8007AD3C
/* 07B91C 8007AD1C 02002025 */   move  $a0, $s0
/* 07B920 8007AD20 0C01C8A9 */  jal   func_800722A4
/* 07B924 8007AD24 24050002 */   li    $a1, 2
/* 07B928 8007AD28 240A0258 */  li    $t2, 600
/* 07B92C 8007AD2C A62A0098 */  sh    $t2, 0x98($s1)
/* 07B930 8007AD30 02002025 */  move  $a0, $s0
/* 07B934 8007AD34 0C01C9B3 */  jal   func_800726CC
/* 07B938 8007AD38 24050032 */   li    $a1, 50
.L8007AD3C:
/* 07B93C 8007AD3C 962B0098 */  lhu   $t3, 0x98($s1)
/* 07B940 8007AD40 02002025 */  move  $a0, $s0
/* 07B944 8007AD44 55600014 */  bnel  $t3, $zero, .L8007AD98
/* 07B948 8007AD48 8FBF001C */   lw    $ra, 0x1c($sp)
/* 07B94C 8007AD4C 0C01C8B3 */  jal   func_800722CC
/* 07B950 8007AD50 24050002 */   li    $a1, 2
/* 07B954 8007AD54 8FAC0020 */  lw    $t4, 0x20($sp)
/* 07B958 8007AD58 02002025 */  move  $a0, $s0
/* 07B95C 8007AD5C 00002825 */  move  $a1, $zero
/* 07B960 8007AD60 A5800010 */  sh    $zero, 0x10($t4)
/* 07B964 8007AD64 0C01C8E2 */  jal   func_80072388
/* 07B968 8007AD68 A62000A4 */   sh    $zero, 0xa4($s1)
/* 07B96C 8007AD6C 02002025 */  move  $a0, $s0
/* 07B970 8007AD70 0C01C9B3 */  jal   func_800726CC
/* 07B974 8007AD74 24050009 */   li    $a1, 9
/* 07B978 8007AD78 10000007 */  b     .L8007AD98
/* 07B97C 8007AD7C 8FBF001C */   lw    $ra, 0x1c($sp)
.L8007AD80:
/* 07B980 8007AD80 A4400010 */  sh    $zero, 0x10($v0)
/* 07B984 8007AD84 A62000A4 */  sh    $zero, 0xa4($s1)
/* 07B988 8007AD88 02002025 */  move  $a0, $s0
/* 07B98C 8007AD8C 0C01C8E2 */  jal   func_80072388
/* 07B990 8007AD90 00002825 */   move  $a1, $zero
/* 07B994 8007AD94 8FBF001C */  lw    $ra, 0x1c($sp)
.L8007AD98:
/* 07B998 8007AD98 8FB00014 */  lw    $s0, 0x14($sp)
/* 07B99C 8007AD9C 8FB10018 */  lw    $s1, 0x18($sp)
/* 07B9A0 8007ADA0 03E00008 */  jr    $ra
/* 07B9A4 8007ADA4 27BD0028 */   addiu $sp, $sp, 0x28
