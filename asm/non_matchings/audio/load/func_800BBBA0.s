glabel func_800BBBA0
/* 0BC7A0 800BBBA0 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0BC7A4 800BBBA4 AFBE0038 */  sw    $fp, 0x38($sp)
/* 0BC7A8 800BBBA8 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0BC7AC 800BBBAC AFB70034 */  sw    $s7, 0x34($sp)
/* 0BC7B0 800BBBB0 AFB60030 */  sw    $s6, 0x30($sp)
/* 0BC7B4 800BBBB4 AFB5002C */  sw    $s5, 0x2c($sp)
/* 0BC7B8 800BBBB8 AFB40028 */  sw    $s4, 0x28($sp)
/* 0BC7BC 800BBBBC AFB30024 */  sw    $s3, 0x24($sp)
/* 0BC7C0 800BBBC0 AFB20020 */  sw    $s2, 0x20($sp)
/* 0BC7C4 800BBBC4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0BC7C8 800BBBC8 AFB00018 */  sw    $s0, 0x18($sp)
/* 0BC7CC 800BBBCC 3C1E803B */  lui   $fp, %hi(D_803B7078) # $fp, 0x803b
/* 0BC7D0 800BBBD0 ACC00000 */  sw    $zero, ($a2)
/* 0BC7D4 800BBBD4 27DE7078 */  addiu $fp, %lo(D_803B7078) # addiu $fp, $fp, 0x7078
/* 0BC7D8 800BBBD8 ACA00000 */  sw    $zero, ($a1)
/* 0BC7DC 800BBBDC 8FC20000 */  lw    $v0, ($fp)
/* 0BC7E0 800BBBE0 00047040 */  sll   $t6, $a0, 1
/* 0BC7E4 800BBBE4 00C09825 */  move  $s3, $a2
/* 0BC7E8 800BBBE8 004E7821 */  addu  $t7, $v0, $t6
/* 0BC7EC 800BBBEC 95F10000 */  lhu   $s1, ($t7)
/* 0BC7F0 800BBBF0 00A0A025 */  move  $s4, $a1
/* 0BC7F4 800BBBF4 0000B825 */  move  $s7, $zero
/* 0BC7F8 800BBBF8 0222C021 */  addu  $t8, $s1, $v0
/* 0BC7FC 800BBBFC 93120000 */  lbu   $s2, ($t8)
/* 0BC800 800BBC00 26310001 */  addiu $s1, $s1, 1
/* 0BC804 800BBC04 3239FFFF */  andi  $t9, $s1, 0xffff
/* 0BC808 800BBC08 12400024 */  beqz  $s2, .L800BBC9C
/* 0BC80C 800BBC0C 03208825 */   move  $s1, $t9
/* 0BC810 800BBC10 3C16803B */  lui   $s6, %hi(D_803B03C0) # $s6, 0x803b
/* 0BC814 800BBC14 26D603C0 */  addiu $s6, %lo(D_803B03C0) # addiu $s6, $s6, 0x3c0
/* 0BC818 800BBC18 24150001 */  li    $s5, 1
.L800BBC1C:
/* 0BC81C 800BBC1C 8FC80000 */  lw    $t0, ($fp)
/* 0BC820 800BBC20 02A02025 */  move  $a0, $s5
/* 0BC824 800BBC24 24050002 */  li    $a1, 2
/* 0BC828 800BBC28 02284821 */  addu  $t1, $s1, $t0
/* 0BC82C 800BBC2C 91300000 */  lbu   $s0, ($t1)
/* 0BC830 800BBC30 26310001 */  addiu $s1, $s1, 1
/* 0BC834 800BBC34 322AFFFF */  andi  $t2, $s1, 0xffff
/* 0BC838 800BBC38 02D05821 */  addu  $t3, $s6, $s0
/* 0BC83C 800BBC3C 916C0000 */  lbu   $t4, ($t3)
/* 0BC840 800BBC40 01408825 */  move  $s1, $t2
/* 0BC844 800BBC44 00001825 */  move  $v1, $zero
/* 0BC848 800BBC48 298D0002 */  slti  $t5, $t4, 2
/* 0BC84C 800BBC4C 39AD0001 */  xori  $t5, $t5, 1
/* 0BC850 800BBC50 16AD0005 */  bne   $s5, $t5, .L800BBC68
/* 0BC854 800BBC54 00000000 */   nop   
/* 0BC858 800BBC58 0C02E6A4 */  jal   func_800B9A90
/* 0BC85C 800BBC5C 02003025 */   move  $a2, $s0
/* 0BC860 800BBC60 10000001 */  b     .L800BBC68
/* 0BC864 800BBC64 00401825 */   move  $v1, $v0
.L800BBC68:
/* 0BC868 800BBC68 14600006 */  bnez  $v1, .L800BBC84
/* 0BC86C 800BBC6C 2652FFFF */   addiu $s2, $s2, -1
/* 0BC870 800BBC70 8E6E0000 */  lw    $t6, ($s3)
/* 0BC874 800BBC74 321700FF */  andi  $s7, $s0, 0xff
/* 0BC878 800BBC78 25CF0001 */  addiu $t7, $t6, 1
/* 0BC87C 800BBC7C 10000004 */  b     .L800BBC90
/* 0BC880 800BBC80 AE6F0000 */   sw    $t7, ($s3)
.L800BBC84:
/* 0BC884 800BBC84 8E980000 */  lw    $t8, ($s4)
/* 0BC888 800BBC88 27190001 */  addiu $t9, $t8, 1
/* 0BC88C 800BBC8C AE990000 */  sw    $t9, ($s4)
.L800BBC90:
/* 0BC890 800BBC90 324800FF */  andi  $t0, $s2, 0xff
/* 0BC894 800BBC94 1500FFE1 */  bnez  $t0, .L800BBC1C
/* 0BC898 800BBC98 01009025 */   move  $s2, $t0
.L800BBC9C:
/* 0BC89C 800BBC9C 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0BC8A0 800BBCA0 02E01025 */  move  $v0, $s7
/* 0BC8A4 800BBCA4 8FB70034 */  lw    $s7, 0x34($sp)
/* 0BC8A8 800BBCA8 8FB00018 */  lw    $s0, 0x18($sp)
/* 0BC8AC 800BBCAC 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0BC8B0 800BBCB0 8FB20020 */  lw    $s2, 0x20($sp)
/* 0BC8B4 800BBCB4 8FB30024 */  lw    $s3, 0x24($sp)
/* 0BC8B8 800BBCB8 8FB40028 */  lw    $s4, 0x28($sp)
/* 0BC8BC 800BBCBC 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0BC8C0 800BBCC0 8FB60030 */  lw    $s6, 0x30($sp)
/* 0BC8C4 800BBCC4 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0BC8C8 800BBCC8 03E00008 */  jr    $ra
/* 0BC8CC 800BBCCC 27BD0040 */   addiu $sp, $sp, 0x40
