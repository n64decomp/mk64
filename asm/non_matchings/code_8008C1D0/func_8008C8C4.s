glabel func_8008C8C4
/* 08D4C4 8008C8C4 AFA50004 */  sw    $a1, 4($sp)
/* 08D4C8 8008C8C8 8C9800BC */  lw    $t8, 0xbc($a0)
/* 08D4CC 8008C8CC 2401FF7F */  li    $at, -129
/* 08D4D0 8008C8D0 00057600 */  sll   $t6, $a1, 0x18
/* 08D4D4 8008C8D4 0301C824 */  and   $t9, $t8, $at
/* 08D4D8 8008C8D8 2401FFBF */  li    $at, -65
/* 08D4DC 8008C8DC 03214824 */  and   $t1, $t9, $at
/* 08D4E0 8008C8E0 848A00AE */  lh    $t2, 0xae($a0)
/* 08D4E4 8008C8E4 000E2E03 */  sra   $a1, $t6, 0x18
/* 08D4E8 8008C8E8 AC9900BC */  sw    $t9, 0xbc($a0)
/* 08D4EC 8008C8EC 2401F7FF */  li    $at, -2049
/* 08D4F0 8008C8F0 3C0E8016 */  lui   $t6, %hi(D_80165190) # $t6, 0x8016
/* 08D4F4 8008C8F4 AC8900BC */  sw    $t1, 0xbc($a0)
/* 08D4F8 8008C8F8 01216024 */  and   $t4, $t1, $at
/* 08D4FC 8008C8FC 25CE5190 */  addiu $t6, %lo(D_80165190) # addiu $t6, $t6, 0x5190
/* 08D500 8008C900 00056840 */  sll   $t5, $a1, 1
/* 08D504 8008C904 24060001 */  li    $a2, 1
/* 08D508 8008C908 A48000A8 */  sh    $zero, 0xa8($a0)
/* 08D50C 8008C90C AC80007C */  sw    $zero, 0x7c($a0)
/* 08D510 8008C910 A48000C0 */  sh    $zero, 0xc0($a0)
/* 08D514 8008C914 AC8C00BC */  sw    $t4, 0xbc($a0)
/* 08D518 8008C918 01AE1021 */  addu  $v0, $t5, $t6
/* 08D51C 8008C91C A48A002E */  sh    $t2, 0x2e($a0)
/* 08D520 8008C920 A4460000 */  sh    $a2, ($v0)
/* 08D524 8008C924 A4460010 */  sh    $a2, 0x10($v0)
/* 08D528 8008C928 A4460020 */  sh    $a2, 0x20($v0)
/* 08D52C 8008C92C A4460030 */  sh    $a2, 0x30($v0)
/* 08D530 8008C930 948F0046 */  lhu   $t7, 0x46($a0)
/* 08D534 8008C934 3C198016 */  lui   $t9, %hi(D_80165460) # 0x8016
/* 08D538 8008C938 00051880 */  sll   $v1, $a1, 2
/* 08D53C 8008C93C 31F8FFBF */  andi  $t8, $t7, 0xffbf
/* 08D540 8008C940 A4980046 */  sh    $t8, 0x46($a0)
/* 08D544 8008C944 0323C821 */  addu  $t9, $t9, $v1
/* 08D548 8008C948 8F395460 */  lw    $t9, %lo(D_80165460)($t9) # 0x5460($t9)
/* 08D54C 8008C94C 3C0A800E */  lui   $t2, %hi(gModeSelection) # $t2, 0x800e
/* 08D550 8008C950 14D9000A */  bne   $a2, $t9, .L8008C97C
/* 08D554 8008C954 00000000 */   nop   
/* 08D558 8008C958 94880000 */  lhu   $t0, ($a0)
/* 08D55C 8008C95C 24014000 */  li    $at, 16384
/* 08D560 8008C960 31094000 */  andi  $t1, $t0, 0x4000
/* 08D564 8008C964 15210005 */  bne   $t1, $at, .L8008C97C
/* 08D568 8008C968 3C0142C8 */   li    $at, 0x42C80000 # 100.000000
/* 08D56C 8008C96C 44813000 */  mtc1  $at, $f6
/* 08D570 8008C970 C484009C */  lwc1  $f4, 0x9c($a0)
/* 08D574 8008C974 46062200 */  add.s $f8, $f4, $f6
/* 08D578 8008C978 E488009C */  swc1  $f8, 0x9c($a0)
.L8008C97C:
/* 08D57C 8008C97C 8D4AC53C */  lw    $t2, %lo(gModeSelection)($t2)
/* 08D580 8008C980 24010002 */  li    $at, 2
/* 08D584 8008C984 15410017 */  bne   $t2, $at, .L8008C9E4
/* 08D588 8008C988 00000000 */   nop   
/* 08D58C 8008C98C 948B0000 */  lhu   $t3, ($a0)
/* 08D590 8008C990 24011000 */  li    $at, 4096
/* 08D594 8008C994 3C0D800E */  lui   $t5, %hi(D_800DC51C) # $t5, 0x800e
/* 08D598 8008C998 316C1000 */  andi  $t4, $t3, 0x1000
/* 08D59C 8008C99C 15810011 */  bne   $t4, $at, .L8008C9E4
/* 08D5A0 8008C9A0 00000000 */   nop   
/* 08D5A4 8008C9A4 95ADC51C */  lhu   $t5, %lo(D_800DC51C)($t5)
/* 08D5A8 8008C9A8 15A0000E */  bnez  $t5, .L8008C9E4
/* 08D5AC 8008C9AC 00000000 */   nop   
/* 08D5B0 8008C9B0 848E00CA */  lh    $t6, 0xca($a0)
/* 08D5B4 8008C9B4 3C188016 */  lui   $t8, %hi(D_801643B8)
/* 08D5B8 8008C9B8 0303C021 */  addu  $t8, $t8, $v1
/* 08D5BC 8008C9BC 31CF0002 */  andi  $t7, $t6, 2
/* 08D5C0 8008C9C0 15E00008 */  bnez  $t7, .L8008C9E4
/* 08D5C4 8008C9C4 00000000 */   nop   
/* 08D5C8 8008C9C8 8F1843B8 */  lw    $t8, %lo(D_801643B8)($t8)
/* 08D5CC 8008C9CC 13000005 */  beqz  $t8, .L8008C9E4
/* 08D5D0 8008C9D0 00000000 */   nop   
/* 08D5D4 8008C9D4 8C99000C */  lw    $t9, 0xc($a0)
/* 08D5D8 8008C9D8 3C010040 */  lui   $at, 0x40
/* 08D5DC 8008C9DC 03214025 */  or    $t0, $t9, $at
/* 08D5E0 8008C9E0 AC88000C */  sw    $t0, 0xc($a0)
.L8008C9E4:
/* 08D5E4 8008C9E4 03E00008 */  jr    $ra
/* 08D5E8 8008C9E8 00000000 */   nop   
