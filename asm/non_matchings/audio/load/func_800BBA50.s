glabel func_800BBA50
/* 0BC650 800BBA50 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0BC654 800BBA54 3C0E803B */  lui   $t6, %hi(D_803B706C) # $t6, 0x803b
/* 0BC658 800BBA58 8DCE706C */  lw    $t6, %lo(D_803B706C)($t6)
/* 0BC65C 800BBA5C 0004C0C0 */  sll   $t8, $a0, 3
/* 0BC660 800BBA60 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0BC664 800BBA64 AFB20028 */  sw    $s2, 0x28($sp)
/* 0BC668 800BBA68 AFB10024 */  sw    $s1, 0x24($sp)
/* 0BC66C 800BBA6C AFB00020 */  sw    $s0, 0x20($sp)
/* 0BC670 800BBA70 AFA40048 */  sw    $a0, 0x48($sp)
/* 0BC674 800BBA74 01D81021 */  addu  $v0, $t6, $t8
/* 0BC678 800BBA78 8C500008 */  lw    $s0, 8($v0)
/* 0BC67C 800BBA7C 8C480004 */  lw    $t0, 4($v0)
/* 0BC680 800BBA80 00C08825 */  move  $s1, $a2
/* 0BC684 800BBA84 00807825 */  move  $t7, $a0
/* 0BC688 800BBA88 2401FFF0 */  li    $at, -16
/* 0BC68C 800BBA8C 2610000F */  addiu $s0, $s0, 0xf
/* 0BC690 800BBA90 00A03825 */  move  $a3, $a1
/* 0BC694 800BBA94 02013024 */  and   $a2, $s0, $at
/* 0BC698 800BBA98 3C04803B */  lui   $a0, %hi(D_803AFC48) # $a0, 0x803b
/* 0BC69C 800BBA9C 00C08025 */  move  $s0, $a2
/* 0BC6A0 800BBAA0 2484FC48 */  addiu $a0, %lo(D_803AFC48) # addiu $a0, $a0, -0x3b8
/* 0BC6A4 800BBAA4 24050001 */  li    $a1, 1
/* 0BC6A8 800BBAA8 AFAF0010 */  sw    $t7, 0x10($sp)
/* 0BC6AC 800BBAAC 0C02E4EF */  jal   func_800B93BC
/* 0BC6B0 800BBAB0 AFA8003C */   sw    $t0, 0x3c($sp)
/* 0BC6B4 800BBAB4 14400003 */  bnez  $v0, .L800BBAC4
/* 0BC6B8 800BBAB8 00409025 */   move  $s2, $v0
/* 0BC6BC 800BBABC 10000032 */  b     .L800BBB88
/* 0BC6C0 800BBAC0 00001025 */   move  $v0, $zero
.L800BBAC4:
/* 0BC6C4 800BBAC4 2A010041 */  slti  $at, $s0, 0x41
/* 0BC6C8 800BBAC8 10200010 */  beqz  $at, .L800BBB0C
/* 0BC6CC 800BBACC 8FA4003C */   lw    $a0, 0x3c($sp)
/* 0BC6D0 800BBAD0 8FA4003C */  lw    $a0, 0x3c($sp)
/* 0BC6D4 800BBAD4 02402825 */  move  $a1, $s2
/* 0BC6D8 800BBAD8 0C02EAA0 */  jal   audio_dma_copy_immediate
/* 0BC6DC 800BBADC 02003025 */   move  $a2, $s0
/* 0BC6E0 800BBAE0 8FA90048 */  lw    $t1, 0x48($sp)
/* 0BC6E4 800BBAE4 3C0A803B */  lui   $t2, %hi(D_803B0400) # $t2, 0x803b
/* 0BC6E8 800BBAE8 254A0400 */  addiu $t2, %lo(D_803B0400) # addiu $t2, $t2, 0x400
/* 0BC6EC 800BBAEC 012A1021 */  addu  $v0, $t1, $t2
/* 0BC6F0 800BBAF0 904B0000 */  lbu   $t3, ($v0)
/* 0BC6F4 800BBAF4 24010005 */  li    $at, 5
/* 0BC6F8 800BBAF8 240C0002 */  li    $t4, 2
/* 0BC6FC 800BBAFC 51610022 */  beql  $t3, $at, .L800BBB88
/* 0BC700 800BBB00 02401025 */   move  $v0, $s2
/* 0BC704 800BBB04 1000001F */  b     .L800BBB84
/* 0BC708 800BBB08 A04C0000 */   sb    $t4, ($v0)
.L800BBB0C:
/* 0BC70C 800BBB0C 02402825 */  move  $a1, $s2
/* 0BC710 800BBB10 0C02EAA0 */  jal   audio_dma_copy_immediate
/* 0BC714 800BBB14 24060040 */   li    $a2, 64
/* 0BC718 800BBB18 262700D4 */  addiu $a3, $s1, 0xd4
/* 0BC71C 800BBB1C 00E02025 */  move  $a0, $a3
/* 0BC720 800BBB20 AFA70034 */  sw    $a3, 0x34($sp)
/* 0BC724 800BBB24 262500EC */  addiu $a1, $s1, 0xec
/* 0BC728 800BBB28 0C033358 */  jal   osCreateMesgQueue
/* 0BC72C 800BBB2C 24060001 */   li    $a2, 1
/* 0BC730 800BBB30 922E0000 */  lbu   $t6, ($s1)
/* 0BC734 800BBB34 8FA70034 */  lw    $a3, 0x34($sp)
/* 0BC738 800BBB38 263900F0 */  addiu $t9, $s1, 0xf0
/* 0BC73C 800BBB3C 35D80010 */  ori   $t8, $t6, 0x10
/* 0BC740 800BBB40 A2380000 */  sb    $t8, ($s1)
/* 0BC744 800BBB44 8FA4003C */  lw    $a0, 0x3c($sp)
/* 0BC748 800BBB48 AFB90010 */  sw    $t9, 0x10($sp)
/* 0BC74C 800BBB4C 26450040 */  addiu $a1, $s2, 0x40
/* 0BC750 800BBB50 2606FFC0 */  addiu $a2, $s0, -0x40
/* 0BC754 800BBB54 0C02EABE */  jal   func_800BAAF8
/* 0BC758 800BBB58 24840040 */   addiu $a0, $a0, 0x40
/* 0BC75C 800BBB5C 8FA80048 */  lw    $t0, 0x48($sp)
/* 0BC760 800BBB60 3C0F803B */  lui   $t7, %hi(D_803B0400) # $t7, 0x803b
/* 0BC764 800BBB64 25EF0400 */  addiu $t7, %lo(D_803B0400) # addiu $t7, $t7, 0x400
/* 0BC768 800BBB68 010F1021 */  addu  $v0, $t0, $t7
/* 0BC76C 800BBB6C 90490000 */  lbu   $t1, ($v0)
/* 0BC770 800BBB70 24010005 */  li    $at, 5
/* 0BC774 800BBB74 240A0001 */  li    $t2, 1
/* 0BC778 800BBB78 51210003 */  beql  $t1, $at, .L800BBB88
/* 0BC77C 800BBB7C 02401025 */   move  $v0, $s2
/* 0BC780 800BBB80 A04A0000 */  sb    $t2, ($v0)
.L800BBB84:
/* 0BC784 800BBB84 02401025 */  move  $v0, $s2
.L800BBB88:
/* 0BC788 800BBB88 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0BC78C 800BBB8C 8FB00020 */  lw    $s0, 0x20($sp)
/* 0BC790 800BBB90 8FB10024 */  lw    $s1, 0x24($sp)
/* 0BC794 800BBB94 8FB20028 */  lw    $s2, 0x28($sp)
/* 0BC798 800BBB98 03E00008 */  jr    $ra
/* 0BC79C 800BBB9C 27BD0048 */   addiu $sp, $sp, 0x48
