glabel func_800ACC50
/* 0AD850 800ACC50 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0AD854 800ACC54 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0AD858 800ACC58 AFB00018 */  sw    $s0, 0x18($sp)
/* 0AD85C 800ACC5C 8C8E0004 */  lw    $t6, 4($a0)
/* 0AD860 800ACC60 00802825 */  move  $a1, $a0
/* 0AD864 800ACC64 2DC1000E */  sltiu $at, $t6, 0xe
/* 0AD868 800ACC68 102000B0 */  beqz  $at, .L800ACF2C
/* 0AD86C 800ACC6C 000E7080 */   sll   $t6, $t6, 2
/* 0AD870 800ACC70 3C01800F */  lui   $at, %hi(jpt_800F26D8)
/* 0AD874 800ACC74 002E0821 */  addu  $at, $at, $t6
/* 0AD878 800ACC78 8C2E26D8 */  lw    $t6, %lo(jpt_800F26D8)($at)
/* 0AD87C 800ACC7C 01C00008 */  jr    $t6
/* 0AD880 800ACC80 00000000 */   nop
glabel L800ACC84
/* 0AD884 800ACC84 8CAF001C */  lw    $t7, 0x1c($a1)
/* 0AD888 800ACC88 24080001 */  li    $t0, 1
/* 0AD88C 800ACC8C 3C098019 */  lui   $t1, %hi(D_8018EDF3) # $t1, 0x8019
/* 0AD890 800ACC90 25F80003 */  addiu $t8, $t7, 3
/* 0AD894 800ACC94 2B010065 */  slti  $at, $t8, 0x65
/* 0AD898 800ACC98 142000A4 */  bnez  $at, .L800ACF2C
/* 0AD89C 800ACC9C ACB8001C */   sw    $t8, 0x1c($a1)
/* 0AD8A0 800ACCA0 ACA80004 */  sw    $t0, 4($a1)
/* 0AD8A4 800ACCA4 ACA0001C */  sw    $zero, 0x1c($a1)
/* 0AD8A8 800ACCA8 8129EDF3 */  lb    $t1, %lo(D_8018EDF3)($t1)
/* 0AD8AC 800ACCAC 00008025 */  move  $s0, $zero
/* 0AD8B0 800ACCB0 1920009E */  blez  $t1, .L800ACF2C
/* 0AD8B4 800ACCB4 240A0005 */   li    $t2, 5
.L800ACCB8:
/* 0AD8B8 800ACCB8 01503823 */  subu  $a3, $t2, $s0
/* 0AD8BC 800ACCBC 00075E00 */  sll   $t3, $a3, 0x18
/* 0AD8C0 800ACCC0 000B3E03 */  sra   $a3, $t3, 0x18
/* 0AD8C4 800ACCC4 260400B1 */  addiu $a0, $s0, 0xb1
/* 0AD8C8 800ACCC8 00002825 */  move  $a1, $zero
/* 0AD8CC 800ACCCC 0C027994 */  jal   add_8018D9E0_entry
/* 0AD8D0 800ACCD0 00003025 */   move  $a2, $zero
/* 0AD8D4 800ACCD4 3C0D8019 */  lui   $t5, %hi(D_8018EDF3) # $t5, 0x8019
/* 0AD8D8 800ACCD8 81ADEDF3 */  lb    $t5, %lo(D_8018EDF3)($t5)
/* 0AD8DC 800ACCDC 26100001 */  addiu $s0, $s0, 1
/* 0AD8E0 800ACCE0 020D082A */  slt   $at, $s0, $t5
/* 0AD8E4 800ACCE4 5420FFF4 */  bnel  $at, $zero, .L800ACCB8
/* 0AD8E8 800ACCE8 240A0005 */   li    $t2, 5
/* 0AD8EC 800ACCEC 10000090 */  b     .L800ACF30
/* 0AD8F0 800ACCF0 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800ACCF4
/* 0AD8F4 800ACCF4 240400B1 */  li    $a0, 177
/* 0AD8F8 800ACCF8 0C02ABBD */  jal   find_8018D9E0_entry_dupe
/* 0AD8FC 800ACCFC AFA50020 */   sw    $a1, 0x20($sp)
/* 0AD900 800ACD00 8C4E0004 */  lw    $t6, 4($v0)
/* 0AD904 800ACD04 8FA50020 */  lw    $a1, 0x20($sp)
/* 0AD908 800ACD08 240F0002 */  li    $t7, 2
/* 0AD90C 800ACD0C 29C10002 */  slti  $at, $t6, 2
/* 0AD910 800ACD10 54200087 */  bnel  $at, $zero, .L800ACF30
/* 0AD914 800ACD14 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0AD918 800ACD18 10000084 */  b     .L800ACF2C
/* 0AD91C 800ACD1C ACAF0004 */   sw    $t7, 4($a1)
glabel L800ACD20
/* 0AD920 800ACD20 8CB8001C */  lw    $t8, 0x1c($a1)
/* 0AD924 800ACD24 3C09800E */  lui   $t1, %hi(gModeSelection) # $t1, 0x800e
/* 0AD928 800ACD28 27190020 */  addiu $t9, $t8, 0x20
/* 0AD92C 800ACD2C 2B210100 */  slti  $at, $t9, 0x100
/* 0AD930 800ACD30 1420007E */  bnez  $at, .L800ACF2C
/* 0AD934 800ACD34 ACB9001C */   sw    $t9, 0x1c($a1)
/* 0AD938 800ACD38 8D29C53C */  lw    $t1, %lo(gModeSelection)($t1)
/* 0AD93C 800ACD3C 24010002 */  li    $at, 2
/* 0AD940 800ACD40 3C0A8019 */  lui   $t2, %hi(D_8018EDF4) # $t2, 0x8019
/* 0AD944 800ACD44 15210004 */  bne   $t1, $at, .L800ACD58
/* 0AD948 800ACD48 3C0B8019 */   lui   $t3, %hi(D_8018EDF6) # $t3, 0x8019
/* 0AD94C 800ACD4C 814AEDF4 */  lb    $t2, %lo(D_8018EDF4)($t2)
/* 0AD950 800ACD50 10000003 */  b     .L800ACD60
/* 0AD954 800ACD54 ACAA0004 */   sw    $t2, 4($a1)
.L800ACD58:
/* 0AD958 800ACD58 816BEDF6 */  lb    $t3, %lo(D_8018EDF6)($t3)
/* 0AD95C 800ACD5C ACAB0004 */  sw    $t3, 4($a1)
.L800ACD60:
/* 0AD960 800ACD60 10000072 */  b     .L800ACF2C
/* 0AD964 800ACD64 ACA0001C */   sw    $zero, 0x1c($a1)
glabel L800ACD68
/* 0AD968 800ACD68 0C02D148 */  jal   func_800B4520
/* 0AD96C 800ACD6C AFA50020 */   sw    $a1, 0x20($sp)
/* 0AD970 800ACD70 1440006E */  bnez  $v0, .L800ACF2C
/* 0AD974 800ACD74 8FA50020 */   lw    $a1, 0x20($sp)
/* 0AD978 800ACD78 3C02800E */  lui   $v0, %hi(gControllerFive) # $v0, 0x800e
/* 0AD97C 800ACD7C 8C42C4CC */  lw    $v0, %lo(gControllerFive)($v0)
/* 0AD980 800ACD80 94430006 */  lhu   $v1, 6($v0)
/* 0AD984 800ACD84 944C000C */  lhu   $t4, 0xc($v0)
/* 0AD988 800ACD88 006C2025 */  or    $a0, $v1, $t4
/* 0AD98C 800ACD8C 308D0800 */  andi  $t5, $a0, 0x800
/* 0AD990 800ACD90 51A00022 */  beql  $t5, $zero, .L800ACE1C
/* 0AD994 800ACD94 30880400 */   andi  $t0, $a0, 0x400
/* 0AD998 800ACD98 8CA20004 */  lw    $v0, 4($a1)
/* 0AD99C 800ACD9C 2841000B */  slti  $at, $v0, 0xb
/* 0AD9A0 800ACDA0 1420001D */  bnez  $at, .L800ACE18
/* 0AD9A4 800ACDA4 244EFFFF */   addiu $t6, $v0, -1
/* 0AD9A8 800ACDA8 ACAE0004 */  sw    $t6, 4($a1)
/* 0AD9AC 800ACDAC 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0AD9B0 800ACDB0 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0AD9B4 800ACDB4 0C032384 */  jal   play_sound2
/* 0AD9B8 800ACDB8 AFA50020 */   sw    $a1, 0x20($sp)
/* 0AD9BC 800ACDBC 8FA50020 */  lw    $a1, 0x20($sp)
/* 0AD9C0 800ACDC0 3C01800F */  lui   $at, %hi(D_800F2710)
/* 0AD9C4 800ACDC4 D4262710 */  ldc1  $f6, %lo(D_800F2710)($at)
/* 0AD9C8 800ACDC8 C4A40024 */  lwc1  $f4, 0x24($a1)
/* 0AD9CC 800ACDCC 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 0AD9D0 800ACDD0 240FFFFF */  li    $t7, -1
/* 0AD9D4 800ACDD4 46002021 */  cvt.d.s $f0, $f4
/* 0AD9D8 800ACDD8 3C18800E */  lui   $t8, %hi(gControllerFive) # $t8, 0x800e
/* 0AD9DC 800ACDDC 4626003C */  c.lt.d $f0, $f6
/* 0AD9E0 800ACDE0 00000000 */  nop
/* 0AD9E4 800ACDE4 45020008 */  bc1fl .L800ACE08
/* 0AD9E8 800ACDE8 ACAF0008 */   sw    $t7, 8($a1)
/* 0AD9EC 800ACDEC 44814800 */  mtc1  $at, $f9
/* 0AD9F0 800ACDF0 44804000 */  mtc1  $zero, $f8
/* 0AD9F4 800ACDF4 00000000 */  nop
/* 0AD9F8 800ACDF8 46280280 */  add.d $f10, $f0, $f8
/* 0AD9FC 800ACDFC 46205420 */  cvt.s.d $f16, $f10
/* 0ADA00 800ACE00 E4B00024 */  swc1  $f16, 0x24($a1)
/* 0ADA04 800ACE04 ACAF0008 */  sw    $t7, 8($a1)
.L800ACE08:
/* 0ADA08 800ACE08 8F18C4CC */  lw    $t8, %lo(gControllerFive)($t8)
/* 0ADA0C 800ACE0C 97030006 */  lhu   $v1, 6($t8)
/* 0ADA10 800ACE10 9719000C */  lhu   $t9, 0xc($t8)
/* 0ADA14 800ACE14 00792025 */  or    $a0, $v1, $t9
.L800ACE18:
/* 0ADA18 800ACE18 30880400 */  andi  $t0, $a0, 0x400
.L800ACE1C:
/* 0ADA1C 800ACE1C 51000020 */  beql  $t0, $zero, .L800ACEA0
/* 0ADA20 800ACE20 306C9000 */   andi  $t4, $v1, 0x9000
/* 0ADA24 800ACE24 8CA20004 */  lw    $v0, 4($a1)
/* 0ADA28 800ACE28 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0ADA2C 800ACE2C 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0ADA30 800ACE30 2841000D */  slti  $at, $v0, 0xd
/* 0ADA34 800ACE34 10200019 */  beqz  $at, .L800ACE9C
/* 0ADA38 800ACE38 24490001 */   addiu $t1, $v0, 1
/* 0ADA3C 800ACE3C ACA90004 */  sw    $t1, 4($a1)
/* 0ADA40 800ACE40 0C032384 */  jal   play_sound2
/* 0ADA44 800ACE44 AFA50020 */   sw    $a1, 0x20($sp)
/* 0ADA48 800ACE48 8FA50020 */  lw    $a1, 0x20($sp)
/* 0ADA4C 800ACE4C 3C01800F */  lui   $at, %hi(D_800F2718)
/* 0ADA50 800ACE50 D4242718 */  ldc1  $f4, %lo(D_800F2718)($at)
/* 0ADA54 800ACE54 C4B20024 */  lwc1  $f18, 0x24($a1)
/* 0ADA58 800ACE58 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 0ADA5C 800ACE5C 240A0001 */  li    $t2, 1
/* 0ADA60 800ACE60 46009021 */  cvt.d.s $f0, $f18
/* 0ADA64 800ACE64 3C0B800E */  lui   $t3, %hi(gControllerFive) # $t3, 0x800e
/* 0ADA68 800ACE68 4624003C */  c.lt.d $f0, $f4
/* 0ADA6C 800ACE6C 00000000 */  nop
/* 0ADA70 800ACE70 45020008 */  bc1fl .L800ACE94
/* 0ADA74 800ACE74 ACAA0008 */   sw    $t2, 8($a1)
/* 0ADA78 800ACE78 44813800 */  mtc1  $at, $f7
/* 0ADA7C 800ACE7C 44803000 */  mtc1  $zero, $f6
/* 0ADA80 800ACE80 00000000 */  nop
/* 0ADA84 800ACE84 46260200 */  add.d $f8, $f0, $f6
/* 0ADA88 800ACE88 462042A0 */  cvt.s.d $f10, $f8
/* 0ADA8C 800ACE8C E4AA0024 */  swc1  $f10, 0x24($a1)
/* 0ADA90 800ACE90 ACAA0008 */  sw    $t2, 8($a1)
.L800ACE94:
/* 0ADA94 800ACE94 8D6BC4CC */  lw    $t3, %lo(gControllerFive)($t3)
/* 0ADA98 800ACE98 95630006 */  lhu   $v1, 6($t3)
.L800ACE9C:
/* 0ADA9C 800ACE9C 306C9000 */  andi  $t4, $v1, 0x9000
.L800ACEA0:
/* 0ADAA0 800ACEA0 11800022 */  beqz  $t4, .L800ACF2C
/* 0ADAA4 800ACEA4 2404001E */   li    $a0, 30
/* 0ADAA8 800ACEA8 0C0277F8 */  jal   func_8009DFE0
/* 0ADAAC 800ACEAC AFA50020 */   sw    $a1, 0x20($sp)
/* 0ADAB0 800ACEB0 3C044900 */  lui   $a0, (0x49008016 >> 16) # lui $a0, 0x4900
/* 0ADAB4 800ACEB4 0C032384 */  jal   play_sound2
/* 0ADAB8 800ACEB8 34848016 */   ori   $a0, (0x49008016 & 0xFFFF) # ori $a0, $a0, 0x8016
/* 0ADABC 800ACEBC 3C0D800E */  lui   $t5, %hi(gModeSelection) # $t5, 0x800e
/* 0ADAC0 800ACEC0 8DADC53C */  lw    $t5, %lo(gModeSelection)($t5)
/* 0ADAC4 800ACEC4 24010002 */  li    $at, 2
/* 0ADAC8 800ACEC8 8FA50020 */  lw    $a1, 0x20($sp)
/* 0ADACC 800ACECC 55A10006 */  bnel  $t5, $at, .L800ACEE8
/* 0ADAD0 800ACED0 8CAF0004 */   lw    $t7, 4($a1)
/* 0ADAD4 800ACED4 8CAE0004 */  lw    $t6, 4($a1)
/* 0ADAD8 800ACED8 3C018019 */  lui   $at, %hi(D_8018EDF4) # $at, 0x8019
/* 0ADADC 800ACEDC 10000004 */  b     .L800ACEF0
/* 0ADAE0 800ACEE0 A02EEDF4 */   sb    $t6, %lo(D_8018EDF4)($at)
/* 0ADAE4 800ACEE4 8CAF0004 */  lw    $t7, 4($a1)
.L800ACEE8:
/* 0ADAE8 800ACEE8 3C018019 */  lui   $at, %hi(D_8018EDF6) # $at, 0x8019
/* 0ADAEC 800ACEEC A02FEDF6 */  sb    $t7, %lo(D_8018EDF6)($at)
.L800ACEF0:
/* 0ADAF0 800ACEF0 C4B00024 */  lwc1  $f16, 0x24($a1)
/* 0ADAF4 800ACEF4 3C01800F */  lui   $at, %hi(D_800F2720)
/* 0ADAF8 800ACEF8 D4322720 */  ldc1  $f18, %lo(D_800F2720)($at)
/* 0ADAFC 800ACEFC 46008021 */  cvt.d.s $f0, $f16
/* 0ADB00 800ACF00 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 0ADB04 800ACF04 4632003C */  c.lt.d $f0, $f18
/* 0ADB08 800ACF08 00000000 */  nop
/* 0ADB0C 800ACF0C 45020008 */  bc1fl .L800ACF30
/* 0ADB10 800ACF10 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0ADB14 800ACF14 44812800 */  mtc1  $at, $f5
/* 0ADB18 800ACF18 44802000 */  mtc1  $zero, $f4
/* 0ADB1C 800ACF1C 00000000 */  nop
/* 0ADB20 800ACF20 46240180 */  add.d $f6, $f0, $f4
/* 0ADB24 800ACF24 46203220 */  cvt.s.d $f8, $f6
/* 0ADB28 800ACF28 E4A80024 */  swc1  $f8, 0x24($a1)
.L800ACF2C:
glabel L800ACF2C
/* 0ADB2C 800ACF2C 8FBF001C */  lw    $ra, 0x1c($sp)
.L800ACF30:
/* 0ADB30 800ACF30 8FB00018 */  lw    $s0, 0x18($sp)
/* 0ADB34 800ACF34 27BD0020 */  addiu $sp, $sp, 0x20
/* 0ADB38 800ACF38 03E00008 */  jr    $ra
/* 0ADB3C 800ACF3C 00000000 */   nop
