glabel func_8008AB10
/* 08B710 8008AB10 000470C0 */  sll   $t6, $a0, 3
/* 08B714 8008AB14 01C47023 */  subu  $t6, $t6, $a0
/* 08B718 8008AB18 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 08B71C 8008AB1C 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 08B720 8008AB20 000E7140 */  sll   $t6, $t6, 5
/* 08B724 8008AB24 01CF1021 */  addu  $v0, $t6, $t7
/* 08B728 8008AB28 C4440028 */  lwc1  $f4, 0x28($v0)
/* 08B72C 8008AB2C C4460038 */  lwc1  $f6, 0x38($v0)
/* 08B730 8008AB30 C44A002C */  lwc1  $f10, 0x2c($v0)
/* 08B734 8008AB34 C450003C */  lwc1  $f16, 0x3c($v0)
/* 08B738 8008AB38 46062200 */  add.s $f8, $f4, $f6
/* 08B73C 8008AB3C C4460040 */  lwc1  $f6, 0x40($v0)
/* 08B740 8008AB40 C4440030 */  lwc1  $f4, 0x30($v0)
/* 08B744 8008AB44 94580098 */  lhu   $t8, 0x98($v0)
/* 08B748 8008AB48 9459009A */  lhu   $t9, 0x9a($v0)
/* 08B74C 8008AB4C E4480028 */  swc1  $f8, 0x28($v0)
/* 08B750 8008AB50 46105480 */  add.s $f18, $f10, $f16
/* 08B754 8008AB54 03194021 */  addu  $t0, $t8, $t9
/* 08B758 8008AB58 3109FFFF */  andi  $t1, $t0, 0xffff
/* 08B75C 8008AB5C 46062200 */  add.s $f8, $f4, $f6
/* 08B760 8008AB60 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 08B764 8008AB64 29212710 */  slti  $at, $t1, 0x2710
/* 08B768 8008AB68 AFBF0014 */  sw    $ra, 0x14($sp)
/* 08B76C 8008AB6C E452002C */  swc1  $f18, 0x2c($v0)
/* 08B770 8008AB70 E4480030 */  swc1  $f8, 0x30($v0)
/* 08B774 8008AB74 1420000E */  bnez  $at, .L8008ABB0
/* 08B778 8008AB78 A4480098 */   sh    $t0, 0x98($v0)
/* 08B77C 8008AB7C 944A0096 */  lhu   $t2, 0x96($v0)
/* 08B780 8008AB80 944E0094 */  lhu   $t6, 0x94($v0)
/* 08B784 8008AB84 254B0001 */  addiu $t3, $t2, 1
/* 08B788 8008AB88 316CFFFF */  andi  $t4, $t3, 0xffff
/* 08B78C 8008AB8C 258D0001 */  addiu $t5, $t4, 1
/* 08B790 8008AB90 15AE0005 */  bne   $t5, $t6, .L8008ABA8
/* 08B794 8008AB94 A44B0096 */   sh    $t3, 0x96($v0)
/* 08B798 8008AB98 844F00AE */  lh    $t7, 0xae($v0)
/* 08B79C 8008AB9C 25F80001 */  addiu $t8, $t7, 1
/* 08B7A0 8008ABA0 10000003 */  b     .L8008ABB0
/* 08B7A4 8008ABA4 A45800AE */   sh    $t8, 0xae($v0)
.L8008ABA8:
/* 08B7A8 8008ABA8 0C022A6E */  jal   func_8008A9B8
/* 08B7AC 8008ABAC 00000000 */   nop   
.L8008ABB0:
/* 08B7B0 8008ABB0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 08B7B4 8008ABB4 27BD0018 */  addiu $sp, $sp, 0x18
/* 08B7B8 8008ABB8 03E00008 */  jr    $ra
/* 08B7BC 8008ABBC 00000000 */   nop   

/* 08B7C0 8008ABC0 000470C0 */  sll   $t6, $a0, 3
/* 08B7C4 8008ABC4 01C47023 */  subu  $t6, $t6, $a0
/* 08B7C8 8008ABC8 000E7140 */  sll   $t6, $t6, 5
/* 08B7CC 8008ABCC 3C028016 */  lui   $v0, %hi(D_80165CC6) # 0x8016
/* 08B7D0 8008ABD0 004E1021 */  addu  $v0, $v0, $t6
/* 08B7D4 8008ABD4 84425CC6 */  lh    $v0, %lo(D_80165CC6)($v0) # 0x5cc6($v0)
/* 08B7D8 8008ABD8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 08B7DC 8008ABDC AFBF0014 */  sw    $ra, 0x14($sp)
/* 08B7E0 8008ABE0 10400013 */  beqz  $v0, .L8008AC30
/* 08B7E4 8008ABE4 24010001 */   li    $at, 1
/* 08B7E8 8008ABE8 10410007 */  beq   $v0, $at, .L8008AC08
/* 08B7EC 8008ABEC 24010002 */   li    $at, 2
/* 08B7F0 8008ABF0 10410009 */  beq   $v0, $at, .L8008AC18
/* 08B7F4 8008ABF4 24010003 */   li    $at, 3
/* 08B7F8 8008ABF8 1041000B */  beq   $v0, $at, .L8008AC28
/* 08B7FC 8008ABFC 00000000 */   nop   
/* 08B800 8008AC00 1000000C */  b     .L8008AC34
/* 08B804 8008AC04 8FBF0014 */   lw    $ra, 0x14($sp)
.L8008AC08:
/* 08B808 8008AC08 0C022A8F */  jal   func_8008AA3C
/* 08B80C 8008AC0C 00000000 */   nop   
/* 08B810 8008AC10 10000008 */  b     .L8008AC34
/* 08B814 8008AC14 8FBF0014 */   lw    $ra, 0x14($sp)
.L8008AC18:
/* 08B818 8008AC18 0C022AC4 */  jal   func_8008AB10
/* 08B81C 8008AC1C 00000000 */   nop   
/* 08B820 8008AC20 10000004 */  b     .L8008AC34
/* 08B824 8008AC24 8FBF0014 */   lw    $ra, 0x14($sp)
.L8008AC28:
/* 08B828 8008AC28 0C021BD8 */  jal   func_80086F60
/* 08B82C 8008AC2C 00000000 */   nop   
.L8008AC30:
/* 08B830 8008AC30 8FBF0014 */  lw    $ra, 0x14($sp)
.L8008AC34:
/* 08B834 8008AC34 27BD0018 */  addiu $sp, $sp, 0x18
/* 08B838 8008AC38 03E00008 */  jr    $ra
/* 08B83C 8008AC3C 00000000 */   nop   

/* 08B840 8008AC40 000470C0 */  sll   $t6, $a0, 3
/* 08B844 8008AC44 01C47023 */  subu  $t6, $t6, $a0
/* 08B848 8008AC48 000E7140 */  sll   $t6, $t6, 5
/* 08B84C 8008AC4C 3C028016 */  lui   $v0, %hi(D_80165CC6) # 0x8016
/* 08B850 8008AC50 004E1021 */  addu  $v0, $v0, $t6
/* 08B854 8008AC54 84425CC6 */  lh    $v0, %lo(D_80165CC6)($v0) # 0x5cc6($v0)
/* 08B858 8008AC58 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 08B85C 8008AC5C AFBF0014 */  sw    $ra, 0x14($sp)
/* 08B860 8008AC60 10400013 */  beqz  $v0, .L8008ACB0
/* 08B864 8008AC64 24010001 */   li    $at, 1
/* 08B868 8008AC68 10410007 */  beq   $v0, $at, .L8008AC88
/* 08B86C 8008AC6C 24010002 */   li    $at, 2
/* 08B870 8008AC70 10410009 */  beq   $v0, $at, .L8008AC98
/* 08B874 8008AC74 24010003 */   li    $at, 3
/* 08B878 8008AC78 1041000B */  beq   $v0, $at, .L8008ACA8
/* 08B87C 8008AC7C 00000000 */   nop   
/* 08B880 8008AC80 1000000C */  b     .L8008ACB4
/* 08B884 8008AC84 8FBF0014 */   lw    $ra, 0x14($sp)
.L8008AC88:
/* 08B888 8008AC88 0C022A8F */  jal   func_8008AA3C
/* 08B88C 8008AC8C 00000000 */   nop   
/* 08B890 8008AC90 10000008 */  b     .L8008ACB4
/* 08B894 8008AC94 8FBF0014 */   lw    $ra, 0x14($sp)
.L8008AC98:
/* 08B898 8008AC98 0C022AC4 */  jal   func_8008AB10
/* 08B89C 8008AC9C 00000000 */   nop   
/* 08B8A0 8008ACA0 10000004 */  b     .L8008ACB4
/* 08B8A4 8008ACA4 8FBF0014 */   lw    $ra, 0x14($sp)
.L8008ACA8:
/* 08B8A8 8008ACA8 0C021C07 */  jal   func_8008701C
/* 08B8AC 8008ACAC 24050001 */   li    $a1, 1
.L8008ACB0:
/* 08B8B0 8008ACB0 8FBF0014 */  lw    $ra, 0x14($sp)
.L8008ACB4:
/* 08B8B4 8008ACB4 27BD0018 */  addiu $sp, $sp, 0x18
/* 08B8B8 8008ACB8 03E00008 */  jr    $ra
/* 08B8BC 8008ACBC 00000000 */   nop   

/* 08B8C0 8008ACC0 03E00008 */  jr    $ra
/* 08B8C4 8008ACC4 00000000 */   nop   

/* 08B8C8 8008ACC8 03E00008 */  jr    $ra
/* 08B8CC 8008ACCC 00000000 */   nop   

/* 08B8D0 8008ACD0 03E00008 */  jr    $ra
/* 08B8D4 8008ACD4 00000000 */   nop   

/* 08B8D8 8008ACD8 03E00008 */  jr    $ra
/* 08B8DC 8008ACDC 00000000 */   nop   
