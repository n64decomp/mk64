glabel func_8005CB60
/* 05D760 8005CB60 0004C140 */  sll   $t8, $a0, 5
/* 05D764 8005CB64 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 05D768 8005CB68 3C068019 */  lui   $a2, %hi(playerHUD) # $a2, 0x8019
/* 05D76C 8005CB6C 000470C0 */  sll   $t6, $a0, 3
/* 05D770 8005CB70 0304C021 */  addu  $t8, $t8, $a0
/* 05D774 8005CB74 24C6CA70 */  addiu $a2, %lo(playerHUD) # addiu $a2, $a2, -0x3590
/* 05D778 8005CB78 AFB00018 */  sw    $s0, 0x18($sp)
/* 05D77C 8005CB7C 01C47023 */  subu  $t6, $t6, $a0
/* 05D780 8005CB80 0018C080 */  sll   $t8, $t8, 2
/* 05D784 8005CB84 000E7100 */  sll   $t6, $t6, 4
/* 05D788 8005CB88 00D88021 */  addu  $s0, $a2, $t8
/* 05D78C 8005CB8C 3C0A8019 */  lui   $t2, %hi(D_8018D320) # $t2, 0x8019
/* 05D790 8005CB90 8D4AD320 */  lw    $t2, %lo(D_8018D320)($t2)
/* 05D794 8005CB94 82190071 */  lb    $t9, 0x71($s0)
/* 05D798 8005CB98 01C47023 */  subu  $t6, $t6, $a0
/* 05D79C 8005CB9C 000E7080 */  sll   $t6, $t6, 2
/* 05D7A0 8005CBA0 3C0F800E */  lui   $t7, %hi(gPlayerOne) # $t7, 0x800e
/* 05D7A4 8005CBA4 8DEFC4DC */  lw    $t7, %lo(gPlayerOne)($t7)
/* 05D7A8 8005CBA8 01C47023 */  subu  $t6, $t6, $a0
/* 05D7AC 8005CBAC 000E70C0 */  sll   $t6, $t6, 3
/* 05D7B0 8005CBB0 032A082A */  slt   $at, $t9, $t2
/* 05D7B4 8005CBB4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 05D7B8 8005CBB8 AFA50044 */  sw    $a1, 0x44($sp)
/* 05D7BC 8005CBBC 00803825 */  move  $a3, $a0
/* 05D7C0 8005CBC0 102000D8 */  beqz  $at, .L8005CF24
/* 05D7C4 8005CBC4 01CF4021 */   addu  $t0, $t6, $t7
/* 05D7C8 8005CBC8 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 05D7CC 8005CBCC 44810000 */  mtc1  $at, $f0
/* 05D7D0 8005CBD0 3C01800E */  lui   $at, %hi(gCourseTimer) # $at, 0x800e
/* 05D7D4 8005CBD4 C424C598 */  lwc1  $f4, %lo(gCourseTimer)($at)
/* 05D7D8 8005CBD8 26030072 */  addiu $v1, $s0, 0x72
/* 05D7DC 8005CBDC 00047880 */  sll   $t7, $a0, 2
/* 05D7E0 8005CBE0 46002182 */  mul.s $f6, $f4, $f0
/* 05D7E4 8005CBE4 24090003 */  li    $t1, 3
/* 05D7E8 8005CBE8 4600320D */  trunc.w.s $f8, $f6
/* 05D7EC 8005CBEC 440C4000 */  mfc1  $t4, $f8
/* 05D7F0 8005CBF0 00000000 */  nop
/* 05D7F4 8005CBF4 AE0C0008 */  sw    $t4, 8($s0)
/* 05D7F8 8005CBF8 806D0000 */  lb    $t5, ($v1)
/* 05D7FC 8005CBFC 01A5082A */  slt   $at, $t5, $a1
/* 05D800 8005CC00 10200120 */  beqz  $at, .L8005D084
/* 05D804 8005CC04 3C018016 */   lui   $at, %hi(gTimePlayerLastTouchedFinishLine)
/* 05D808 8005CC08 002F0821 */  addu  $at, $at, $t7
/* 05D80C 8005CC0C C42AF898 */  lwc1  $f10, %lo(gTimePlayerLastTouchedFinishLine)($at)
/* 05D810 8005CC10 00077940 */  sll   $t7, $a3, 5
/* 05D814 8005CC14 01E77821 */  addu  $t7, $t7, $a3
/* 05D818 8005CC18 46005402 */  mul.s $f16, $f10, $f0
/* 05D81C 8005CC1C 000F7880 */  sll   $t7, $t7, 2
/* 05D820 8005CC20 00CFC021 */  addu  $t8, $a2, $t7
/* 05D824 8005CC24 4600848D */  trunc.w.s $f18, $f16
/* 05D828 8005CC28 44029000 */  mfc1  $v0, $f18
/* 05D82C 8005CC2C 00000000 */  nop
/* 05D830 8005CC30 AE020010 */  sw    $v0, 0x10($s0)
/* 05D834 8005CC34 80790000 */  lb    $t9, ($v1)
/* 05D838 8005CC38 00195080 */  sll   $t2, $t9, 2
/* 05D83C 8005CC3C 020A5821 */  addu  $t3, $s0, $t2
/* 05D840 8005CC40 AD620014 */  sw    $v0, 0x14($t3)
/* 05D844 8005CC44 80640000 */  lb    $a0, ($v1)
/* 05D848 8005CC48 14800006 */  bnez  $a0, .L8005CC64
/* 05D84C 8005CC4C 0004C880 */   sll   $t9, $a0, 2
/* 05D850 8005CC50 8E0C0010 */  lw    $t4, 0x10($s0)
/* 05D854 8005CC54 00046880 */  sll   $t5, $a0, 2
/* 05D858 8005CC58 020D7021 */  addu  $t6, $s0, $t5
/* 05D85C 8005CC5C 10000006 */  b     .L8005CC78
/* 05D860 8005CC60 ADCC0020 */   sw    $t4, 0x20($t6)
.L8005CC64:
/* 05D864 8005CC64 03191021 */  addu  $v0, $t8, $t9
/* 05D868 8005CC68 8C4A0014 */  lw    $t2, 0x14($v0)
/* 05D86C 8005CC6C 8C4B0010 */  lw    $t3, 0x10($v0)
/* 05D870 8005CC70 014B6823 */  subu  $t5, $t2, $t3
/* 05D874 8005CC74 AC4D0020 */  sw    $t5, 0x20($v0)
.L8005CC78:
/* 05D878 8005CC78 806C0000 */  lb    $t4, ($v1)
/* 05D87C 8005CC7C 8FAA0044 */  lw    $t2, 0x44($sp)
/* 05D880 8005CC80 2419003C */  li    $t9, 60
/* 05D884 8005CC84 000C7080 */  sll   $t6, $t4, 2
/* 05D888 8005CC88 020E7821 */  addu  $t7, $s0, $t6
/* 05D88C 8005CC8C 8DF80020 */  lw    $t8, 0x20($t7)
/* 05D890 8005CC90 A619003C */  sh    $t9, 0x3c($s0)
/* 05D894 8005CC94 15490006 */  bne   $t2, $t1, .L8005CCB0
/* 05D898 8005CC98 AE18000C */   sw    $t8, 0xc($s0)
/* 05D89C 8005CC9C 806B0000 */  lb    $t3, ($v1)
/* 05D8A0 8005CCA0 000B6880 */  sll   $t5, $t3, 2
/* 05D8A4 8005CCA4 020D6021 */  addu  $t4, $s0, $t5
/* 05D8A8 8005CCA8 8D8E0014 */  lw    $t6, 0x14($t4)
/* 05D8AC 8005CCAC AE0E0008 */  sw    $t6, 8($s0)
.L8005CCB0:
/* 05D8B0 8005CCB0 3C0F800E */  lui   $t7, %hi(gModeSelection) # $t7, 0x800e
/* 05D8B4 8005CCB4 8DEFC53C */  lw    $t7, %lo(gModeSelection)($t7)
/* 05D8B8 8005CCB8 24060001 */  li    $a2, 1
/* 05D8BC 8005CCBC 3C028016 */  lui   $v0, %hi(D_80165638) # $v0, 0x8016
/* 05D8C0 8005CCC0 54CF002E */  bnel  $a2, $t7, .L8005CD7C
/* 05D8C4 8005CCC4 80790000 */   lb    $t9, ($v1)
/* 05D8C8 8005CCC8 8C425638 */  lw    $v0, %lo(D_80165638)($v0)
/* 05D8CC 8005CCCC 8E04000C */  lw    $a0, 0xc($s0)
/* 05D8D0 8005CCD0 0044082B */  sltu  $at, $v0, $a0
/* 05D8D4 8005CCD4 5420001F */  bnel  $at, $zero, .L8005CD54
/* 05D8D8 8005CCD8 8FAE0044 */   lw    $t6, 0x44($sp)
/* 05D8DC 8005CCDC 10440005 */  beq   $v0, $a0, .L8005CCF4
/* 05D8E0 8005CCE0 3C012900 */   lui   $at, (0x2900800D >> 16) # lui $at, 0x2900
/* 05D8E4 8005CCE4 3C028016 */  lui   $v0, %hi(D_80165658) # $v0, 0x8016
/* 05D8E8 8005CCE8 24425658 */  addiu $v0, %lo(D_80165658) # addiu $v0, $v0, 0x5658
/* 05D8EC 8005CCEC AC400004 */  sw    $zero, 4($v0)
/* 05D8F0 8005CCF0 AC400000 */  sw    $zero, ($v0)
.L8005CCF4:
/* 05D8F4 8005CCF4 95050254 */  lhu   $a1, 0x254($t0)
/* 05D8F8 8005CCF8 3421800D */  ori   $at, (0x2900800D & 0xFFFF) # ori $at, $at, 0x800d
/* 05D8FC 8005CCFC AFA70040 */  sw    $a3, 0x40($sp)
/* 05D900 8005CD00 0005C900 */  sll   $t9, $a1, 4
/* 05D904 8005CD04 03212821 */  addu  $a1, $t9, $at
/* 05D908 8005CD08 AFA30020 */  sw    $v1, 0x20($sp)
/* 05D90C 8005CD0C 0C03243D */  jal   func_800C90F4
/* 05D910 8005CD10 00002025 */   move  $a0, $zero
/* 05D914 8005CD14 8E0A000C */  lw    $t2, 0xc($s0)
/* 05D918 8005CD18 8FAD0044 */  lw    $t5, 0x44($sp)
/* 05D91C 8005CD1C 3C018016 */  lui   $at, %hi(D_80165638) # $at, 0x8016
/* 05D920 8005CD20 AC2A5638 */  sw    $t2, %lo(D_80165638)($at)
/* 05D924 8005CD24 3C018016 */  lui   $at, %hi(D_80165654)
/* 05D928 8005CD28 000D6080 */  sll   $t4, $t5, 2
/* 05D92C 8005CD2C 002C0821 */  addu  $at, $at, $t4
/* 05D930 8005CD30 240B0001 */  li    $t3, 1
/* 05D934 8005CD34 AC2B5654 */  sw    $t3, %lo(D_80165654)($at)
/* 05D938 8005CD38 24060001 */  li    $a2, 1
/* 05D93C 8005CD3C 3C018016 */  lui   $at, %hi(D_801657E3) # $at, 0x8016
/* 05D940 8005CD40 8FA30020 */  lw    $v1, 0x20($sp)
/* 05D944 8005CD44 8FA70040 */  lw    $a3, 0x40($sp)
/* 05D948 8005CD48 24090003 */  li    $t1, 3
/* 05D94C 8005CD4C A02657E3 */  sb    $a2, %lo(D_801657E3)($at)
/* 05D950 8005CD50 8FAE0044 */  lw    $t6, 0x44($sp)
.L8005CD54:
/* 05D954 8005CD54 3C188016 */  lui   $t8, %hi(D_80165648) # $t8, 0x8016
/* 05D958 8005CD58 55C90008 */  bnel  $t6, $t1, .L8005CD7C
/* 05D95C 8005CD5C 80790000 */   lb    $t9, ($v1)
/* 05D960 8005CD60 8E0F0008 */  lw    $t7, 8($s0)
/* 05D964 8005CD64 8F185648 */  lw    $t8, %lo(D_80165648)($t8)
/* 05D968 8005CD68 01F8082B */  sltu  $at, $t7, $t8
/* 05D96C 8005CD6C 10200002 */  beqz  $at, .L8005CD78
/* 05D970 8005CD70 3C018016 */   lui   $at, %hi(D_801657E5) # $at, 0x8016
/* 05D974 8005CD74 A02657E5 */  sb    $a2, %lo(D_801657E5)($at)
.L8005CD78:
/* 05D978 8005CD78 80790000 */  lb    $t9, ($v1)
.L8005CD7C:
/* 05D97C 8005CD7C 3C028019 */  lui   $v0, %hi(D_8018D320) # $v0, 0x8019
/* 05D980 8005CD80 272A0001 */  addiu $t2, $t9, 1
/* 05D984 8005CD84 A06A0000 */  sb    $t2, ($v1)
/* 05D988 8005CD88 806D0000 */  lb    $t5, ($v1)
/* 05D98C 8005CD8C 8C42D320 */  lw    $v0, %lo(D_8018D320)($v0)
/* 05D990 8005CD90 144D0002 */  bne   $v0, $t5, .L8005CD9C
/* 05D994 8005CD94 244BFFFF */   addiu $t3, $v0, -1
/* 05D998 8005CD98 A06B0000 */  sb    $t3, ($v1)
.L8005CD9C:
/* 05D99C 8005CD9C 26030071 */  addiu $v1, $s0, 0x71
/* 05D9A0 8005CDA0 806C0000 */  lb    $t4, ($v1)
/* 05D9A4 8005CDA4 258E0001 */  addiu $t6, $t4, 1
/* 05D9A8 8005CDA8 A06E0000 */  sb    $t6, ($v1)
/* 05D9AC 8005CDAC 80620000 */  lb    $v0, ($v1)
/* 05D9B0 8005CDB0 504000B5 */  beql  $v0, $zero, .L8005D088
/* 05D9B4 8005CDB4 8602003C */   lh    $v0, 0x3c($s0)
/* 05D9B8 8005CDB8 10460008 */  beq   $v0, $a2, .L8005CDDC
/* 05D9BC 8005CDBC 00E02025 */   move  $a0, $a3
/* 05D9C0 8005CDC0 24040002 */  li    $a0, 2
/* 05D9C4 8005CDC4 1044001C */  beq   $v0, $a0, .L8005CE38
/* 05D9C8 8005CDC8 00000000 */   nop
/* 05D9CC 8005CDCC 1049001E */  beq   $v0, $t1, .L8005CE48
/* 05D9D0 8005CDD0 3C0D800E */   lui   $t5, %hi(gCurrentCourseId) # $t5, 0x800e
/* 05D9D4 8005CDD4 100000AC */  b     .L8005D088
/* 05D9D8 8005CDD8 8602003C */   lh    $v0, 0x3c($s0)
.L8005CDDC:
/* 05D9DC 8005CDDC 0C01E421 */  jal   func_80079084
/* 05D9E0 8005CDE0 AFA70040 */   sw    $a3, 0x40($sp)
/* 05D9E4 8005CDE4 8FA70040 */  lw    $a3, 0x40($sp)
/* 05D9E8 8005CDE8 3C051900 */  lui   $a1, (0x1900F015 >> 16) # lui $a1, 0x1900
/* 05D9EC 8005CDEC 34A5F015 */  ori   $a1, (0x1900F015 & 0xFFFF) # ori $a1, $a1, 0xf015
/* 05D9F0 8005CDF0 0C032418 */  jal   func_800C9060
/* 05D9F4 8005CDF4 30E400FF */   andi  $a0, $a3, 0xff
/* 05D9F8 8005CDF8 3C0F800E */  lui   $t7, %hi(gCurrentCourseId) # $t7, 0x800e
/* 05D9FC 8005CDFC 85EFC5A0 */  lh    $t7, %lo(gCurrentCourseId)($t7)
/* 05DA00 8005CE00 24010008 */  li    $at, 8
/* 05DA04 8005CE04 24060001 */  li    $a2, 1
/* 05DA08 8005CE08 15E1009E */  bne   $t7, $at, .L8005D084
/* 05DA0C 8005CE0C 3C028016 */   lui   $v0, %hi(D_80165898) # $v0, 0x8016
/* 05DA10 8005CE10 24425898 */  addiu $v0, %lo(D_80165898) # addiu $v0, $v0, 0x5898
/* 05DA14 8005CE14 80580000 */  lb    $t8, ($v0)
/* 05DA18 8005CE18 3C19800E */  lui   $t9, %hi(gModeSelection) # $t9, 0x800e
/* 05DA1C 8005CE1C 5700009A */  bnel  $t8, $zero, .L8005D088
/* 05DA20 8005CE20 8602003C */   lh    $v0, 0x3c($s0)
/* 05DA24 8005CE24 8F39C53C */  lw    $t9, %lo(gModeSelection)($t9)
/* 05DA28 8005CE28 50D90097 */  beql  $a2, $t9, .L8005D088
/* 05DA2C 8005CE2C 8602003C */   lh    $v0, 0x3c($s0)
/* 05DA30 8005CE30 10000094 */  b     .L8005D084
/* 05DA34 8005CE34 A0460000 */   sb    $a2, ($v0)
.L8005CE38:
/* 05DA38 8005CE38 0C01E42D */  jal   func_800790B4
/* 05DA3C 8005CE3C 00E02025 */   move  $a0, $a3
/* 05DA40 8005CE40 10000091 */  b     .L8005D088
/* 05DA44 8005CE44 8602003C */   lh    $v0, 0x3c($s0)
.L8005CE48:
/* 05DA48 8005CE48 3C028019 */  lui   $v0, %hi(D_8018D114) # $v0, 0x8019
/* 05DA4C 8005CE4C 8C42D114 */  lw    $v0, %lo(D_8018D114)($v0)
/* 05DA50 8005CE50 240C0140 */  li    $t4, 320
/* 05DA54 8005CE54 240E01E0 */  li    $t6, 480
/* 05DA58 8005CE58 10400002 */  beqz  $v0, .L8005CE64
/* 05DA5C 8005CE5C 240F0280 */   li    $t7, 640
/* 05DA60 8005CE60 14C2000E */  bne   $a2, $v0, .L8005CE9C
.L8005CE64:
/* 05DA64 8005CE64 3C018016 */   lui   $at, %hi(D_801657E4) # $at, 0x8016
/* 05DA68 8005CE68 A02057E4 */  sb    $zero, %lo(D_801657E4)($at)
/* 05DA6C 8005CE6C 3C018016 */  lui   $at, %hi(D_801657E6) # $at, 0x8016
/* 05DA70 8005CE70 A02057E6 */  sb    $zero, %lo(D_801657E6)($at)
/* 05DA74 8005CE74 3C018016 */  lui   $at, %hi(D_801657F0) # $at, 0x8016
/* 05DA78 8005CE78 A02057F0 */  sb    $zero, %lo(D_801657F0)($at)
/* 05DA7C 8005CE7C 3C018016 */  lui   $at, %hi(D_801657E8) # $at, 0x8016
/* 05DA80 8005CE80 3C038016 */  lui   $v1, %hi(D_80165800) # $v1, 0x8016
/* 05DA84 8005CE84 A02657E8 */  sb    $a2, %lo(D_801657E8)($at)
/* 05DA88 8005CE88 24635800 */  addiu $v1, %lo(D_80165800) # addiu $v1, $v1, 0x5800
/* 05DA8C 8005CE8C A0660000 */  sb    $a2, ($v1)
/* 05DA90 8005CE90 A0660001 */  sb    $a2, 1($v1)
/* 05DA94 8005CE94 3C018019 */  lui   $at, %hi(D_8018D204) # $at, 0x8019
/* 05DA98 8005CE98 AC26D204 */  sw    $a2, %lo(D_8018D204)($at)
.L8005CE9C:
/* 05DA9C 8005CE9C 3C038016 */  lui   $v1, %hi(D_80165800) # $v1, 0x8016
/* 05DAA0 8005CEA0 24635800 */  addiu $v1, %lo(D_80165800) # addiu $v1, $v1, 0x5800
/* 05DAA4 8005CEA4 14820003 */  bne   $a0, $v0, .L8005CEB4
/* 05DAA8 8005CEA8 A2060070 */   sb    $a2, 0x70($s0)
/* 05DAAC 8005CEAC 00675021 */  addu  $t2, $v1, $a3
/* 05DAB0 8005CEB0 A1400000 */  sb    $zero, ($t2)
.L8005CEB4:
/* 05DAB4 8005CEB4 85ADC5A0 */  lh    $t5, %lo(gCurrentCourseId)($t5)
/* 05DAB8 8005CEB8 24010004 */  li    $at, 4
/* 05DABC 8005CEBC 24180320 */  li    $t8, 800
/* 05DAC0 8005CEC0 15A10003 */  bne   $t5, $at, .L8005CED0
/* 05DAC4 8005CEC4 3C198019 */   lui   $t9, %hi(D_8018D20C) # $t9, 0x8019
/* 05DAC8 8005CEC8 240B0001 */  li    $t3, 1
/* 05DACC 8005CECC A20B0081 */  sb    $t3, 0x81($s0)
.L8005CED0:
/* 05DAD0 8005CED0 A60C0050 */  sh    $t4, 0x50($s0)
/* 05DAD4 8005CED4 A60E0052 */  sh    $t6, 0x52($s0)
/* 05DAD8 8005CED8 A60F0054 */  sh    $t7, 0x54($s0)
/* 05DADC 8005CEDC A6180056 */  sh    $t8, 0x56($s0)
/* 05DAE0 8005CEE0 8F39D20C */  lw    $t9, %lo(D_8018D20C)($t9)
/* 05DAE4 8005CEE4 3C018016 */  lui   $at, %hi(D_8016587C) # $at, 0x8016
/* 05DAE8 8005CEE8 AC26587C */  sw    $a2, %lo(D_8016587C)($at)
/* 05DAEC 8005CEEC 57200066 */  bnel  $t9, $zero, .L8005D088
/* 05DAF0 8005CEF0 8602003C */   lh    $v0, 0x3c($s0)
/* 05DAF4 8005CEF4 0C01E415 */  jal   func_80079054
/* 05DAF8 8005CEF8 00E02025 */   move  $a0, $a3
/* 05DAFC 8005CEFC 3C0A8019 */  lui   $t2, %hi(gPlayerCount) # $t2, 0x8019
/* 05DB00 8005CF00 814AEDF3 */  lb    $t2, %lo(gPlayerCount)($t2)
/* 05DB04 8005CF04 24060001 */  li    $a2, 1
/* 05DB08 8005CF08 3C018019 */  lui   $at, %hi(D_8018D20C) # $at, 0x8019
/* 05DB0C 8005CF0C 14CA005D */  bne   $a2, $t2, .L8005D084
/* 05DB10 8005CF10 AC26D20C */   sw    $a2, %lo(D_8018D20C)($at)
/* 05DB14 8005CF14 240D0064 */  li    $t5, 100
/* 05DB18 8005CF18 3C018019 */  lui   $at, %hi(D_8018D1CC) # $at, 0x8019
/* 05DB1C 8005CF1C 10000059 */  b     .L8005D084
/* 05DB20 8005CF20 AC2DD1CC */   sw    $t5, %lo(D_8018D1CC)($at)
.L8005CF24:
/* 05DB24 8005CF24 26040004 */  addiu $a0, $s0, 4
/* 05DB28 8005CF28 3C053F80 */  lui   $a1, 0x3f80
/* 05DB2C 8005CF2C 3C063E00 */  lui   $a2, 0x3e00
/* 05DB30 8005CF30 0C0104EE */  jal   f32_step_towards
/* 05DB34 8005CF34 AFA70040 */   sw    $a3, 0x40($sp)
/* 05DB38 8005CF38 3C02800E */  lui   $v0, %hi(gScreenModeSelection) # $v0, 0x800e
/* 05DB3C 8005CF3C 8C42C530 */  lw    $v0, %lo(gScreenModeSelection)($v0)
/* 05DB40 8005CF40 8FA70040 */  lw    $a3, 0x40($sp)
/* 05DB44 8005CF44 26040066 */  addiu $a0, $s0, 0x66
/* 05DB48 8005CF48 1040000C */  beqz  $v0, .L8005CF7C
/* 05DB4C 8005CF4C 2405001C */   li    $a1, 28
/* 05DB50 8005CF50 24060001 */  li    $a2, 1
/* 05DB54 8005CF54 10460023 */  beq   $v0, $a2, .L8005CFE4
/* 05DB58 8005CF58 26040066 */   addiu $a0, $s0, 0x66
/* 05DB5C 8005CF5C 24040002 */  li    $a0, 2
/* 05DB60 8005CF60 10440017 */  beq   $v0, $a0, .L8005CFC0
/* 05DB64 8005CF64 2405001C */   li    $a1, 28
/* 05DB68 8005CF68 24090003 */  li    $t1, 3
/* 05DB6C 8005CF6C 10490036 */  beq   $v0, $t1, .L8005D048
/* 05DB70 8005CF70 30EC0001 */   andi  $t4, $a3, 1
/* 05DB74 8005CF74 10000044 */  b     .L8005D088
/* 05DB78 8005CF78 8602003C */   lh    $v0, 0x3c($s0)
.L8005CF7C:
/* 05DB7C 8005CF7C 0C0104A2 */  jal   s16_step_towards
/* 05DB80 8005CF80 24060007 */   li    $a2, 7
/* 05DB84 8005CF84 3C0B8019 */  lui   $t3, %hi(D_8018D1FC) # $t3, 0x8019
/* 05DB88 8005CF88 8D6BD1FC */  lw    $t3, %lo(D_8018D1FC)($t3)
/* 05DB8C 8005CF8C 24060001 */  li    $a2, 1
/* 05DB90 8005CF90 26040068 */  addiu $a0, $s0, 0x68
/* 05DB94 8005CF94 11600006 */  beqz  $t3, .L8005CFB0
/* 05DB98 8005CF98 2405FFF0 */   li    $a1, -16
/* 05DB9C 8005CF9C 26040068 */  addiu $a0, $s0, 0x68
/* 05DBA0 8005CFA0 0C0104A2 */  jal   s16_step_towards
/* 05DBA4 8005CFA4 2405FFD8 */   li    $a1, -40
/* 05DBA8 8005CFA8 10000037 */  b     .L8005D088
/* 05DBAC 8005CFAC 8602003C */   lh    $v0, 0x3c($s0)
.L8005CFB0:
/* 05DBB0 8005CFB0 0C0104A2 */  jal   s16_step_towards
/* 05DBB4 8005CFB4 24060004 */   li    $a2, 4
/* 05DBB8 8005CFB8 10000033 */  b     .L8005D088
/* 05DBBC 8005CFBC 8602003C */   lh    $v0, 0x3c($s0)
.L8005CFC0:
/* 05DBC0 8005CFC0 26040066 */  addiu $a0, $s0, 0x66
/* 05DBC4 8005CFC4 0C0104A2 */  jal   s16_step_towards
/* 05DBC8 8005CFC8 24060007 */   li    $a2, 7
/* 05DBCC 8005CFCC 26040068 */  addiu $a0, $s0, 0x68
/* 05DBD0 8005CFD0 2405FFF0 */  li    $a1, -16
/* 05DBD4 8005CFD4 0C0104A2 */  jal   s16_step_towards
/* 05DBD8 8005CFD8 24060004 */   li    $a2, 4
/* 05DBDC 8005CFDC 1000002A */  b     .L8005D088
/* 05DBE0 8005CFE0 8602003C */   lh    $v0, 0x3c($s0)
.L8005CFE4:
/* 05DBE4 8005CFE4 2405001C */  li    $a1, 28
/* 05DBE8 8005CFE8 0C0104A2 */  jal   s16_step_towards
/* 05DBEC 8005CFEC 24060007 */   li    $a2, 7
/* 05DBF0 8005CFF0 26040068 */  addiu $a0, $s0, 0x68
/* 05DBF4 8005CFF4 2405FFF0 */  li    $a1, -16
/* 05DBF8 8005CFF8 0C0104A2 */  jal   s16_step_towards
/* 05DBFC 8005CFFC 24060004 */   li    $a2, 4
/* 05DC00 8005D000 26040050 */  addiu $a0, $s0, 0x50
/* 05DC04 8005D004 240500E4 */  li    $a1, 228
/* 05DC08 8005D008 0C0104A2 */  jal   s16_step_towards
/* 05DC0C 8005D00C 24060010 */   li    $a2, 16
/* 05DC10 8005D010 26040052 */  addiu $a0, $s0, 0x52
/* 05DC14 8005D014 240500E4 */  li    $a1, 228
/* 05DC18 8005D018 0C0104A2 */  jal   s16_step_towards
/* 05DC1C 8005D01C 24060010 */   li    $a2, 16
/* 05DC20 8005D020 26040054 */  addiu $a0, $s0, 0x54
/* 05DC24 8005D024 240500E4 */  li    $a1, 228
/* 05DC28 8005D028 0C0104A2 */  jal   s16_step_towards
/* 05DC2C 8005D02C 24060010 */   li    $a2, 16
/* 05DC30 8005D030 26040056 */  addiu $a0, $s0, 0x56
/* 05DC34 8005D034 240500E4 */  li    $a1, 228
/* 05DC38 8005D038 0C0104A2 */  jal   s16_step_towards
/* 05DC3C 8005D03C 24060010 */   li    $a2, 16
/* 05DC40 8005D040 10000011 */  b     .L8005D088
/* 05DC44 8005D044 8602003C */   lh    $v0, 0x3c($s0)
.L8005D048:
/* 05DC48 8005D048 14CC0007 */  bne   $a2, $t4, .L8005D068
/* 05DC4C 8005D04C 26040066 */   addiu $a0, $s0, 0x66
/* 05DC50 8005D050 26040066 */  addiu $a0, $s0, 0x66
/* 05DC54 8005D054 2405FFF8 */  li    $a1, -8
/* 05DC58 8005D058 0C0104A2 */  jal   s16_step_towards
/* 05DC5C 8005D05C 24060002 */   li    $a2, 2
/* 05DC60 8005D060 10000005 */  b     .L8005D078
/* 05DC64 8005D064 26040068 */   addiu $a0, $s0, 0x68
.L8005D068:
/* 05DC68 8005D068 24050008 */  li    $a1, 8
/* 05DC6C 8005D06C 0C0104A2 */  jal   s16_step_towards
/* 05DC70 8005D070 24060002 */   li    $a2, 2
/* 05DC74 8005D074 26040068 */  addiu $a0, $s0, 0x68
.L8005D078:
/* 05DC78 8005D078 2405FFF0 */  li    $a1, -16
/* 05DC7C 8005D07C 0C0104A2 */  jal   s16_step_towards
/* 05DC80 8005D080 24060004 */   li    $a2, 4
.L8005D084:
/* 05DC84 8005D084 8602003C */  lh    $v0, 0x3c($s0)
.L8005D088:
/* 05DC88 8005D088 3C0F8016 */  lui   $t7, %hi(D_80165594) # $t7, 0x8016
/* 05DC8C 8005D08C 14400006 */  bnez  $v0, .L8005D0A8
/* 05DC90 8005D090 00000000 */   nop
/* 05DC94 8005D094 8E0E0008 */  lw    $t6, 8($s0)
/* 05DC98 8005D098 3C018016 */  lui   $at, %hi(D_801657E3) # $at, 0x8016
/* 05DC9C 8005D09C AE0E000C */  sw    $t6, 0xc($s0)
/* 05DCA0 8005D0A0 10000011 */  b     .L8005D0E8
/* 05DCA4 8005D0A4 A02057E3 */   sb    $zero, %lo(D_801657E3)($at)
.L8005D0A8:
/* 05DCA8 8005D0A8 8DEF5594 */  lw    $t7, %lo(D_80165594)($t7)
/* 05DCAC 8005D0AC 55E00009 */  bnel  $t7, $zero, .L8005D0D4
/* 05DCB0 8005D0B0 244BFFFF */   addiu $t3, $v0, -1
/* 05DCB4 8005D0B4 82180073 */  lb    $t8, 0x73($s0)
/* 05DCB8 8005D0B8 8602003C */  lh    $v0, 0x3c($s0)
/* 05DCBC 8005D0BC 27190001 */  addiu $t9, $t8, 1
/* 05DCC0 8005D0C0 A2190073 */  sb    $t9, 0x73($s0)
/* 05DCC4 8005D0C4 820A0073 */  lb    $t2, 0x73($s0)
/* 05DCC8 8005D0C8 314D0001 */  andi  $t5, $t2, 1
/* 05DCCC 8005D0CC A20D0073 */  sb    $t5, 0x73($s0)
/* 05DCD0 8005D0D0 244BFFFF */  addiu $t3, $v0, -1
.L8005D0D4:
/* 05DCD4 8005D0D4 A60B003C */  sh    $t3, 0x3c($s0)
/* 05DCD8 8005D0D8 860C003C */  lh    $t4, 0x3c($s0)
/* 05DCDC 8005D0DC 55800003 */  bnel  $t4, $zero, .L8005D0EC
/* 05DCE0 8005D0E0 8FBF001C */   lw    $ra, 0x1c($sp)
/* 05DCE4 8005D0E4 A2000073 */  sb    $zero, 0x73($s0)
.L8005D0E8:
/* 05DCE8 8005D0E8 8FBF001C */  lw    $ra, 0x1c($sp)
.L8005D0EC:
/* 05DCEC 8005D0EC 8FB00018 */  lw    $s0, 0x18($sp)
/* 05DCF0 8005D0F0 27BD0040 */  addiu $sp, $sp, 0x40
/* 05DCF4 8005D0F4 03E00008 */  jr    $ra
/* 05DCF8 8005D0F8 00000000 */   nop
