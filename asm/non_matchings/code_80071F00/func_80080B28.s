.section .late_rodata

glabel D_800EF0B0
.double 17.5

.section .text

glabel func_80080B28
/* 081728 80080B28 000578C0 */  sll   $t7, $a1, 3
/* 08172C 80080B2C 01E57823 */  subu  $t7, $t7, $a1
/* 081730 80080B30 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 081734 80080B34 000F7900 */  sll   $t7, $t7, 4
/* 081738 80080B38 01E57823 */  subu  $t7, $t7, $a1
/* 08173C 80080B3C 000F7880 */  sll   $t7, $t7, 2
/* 081740 80080B40 3C18800E */  lui   $t8, %hi(gPlayerOne) # $t8, 0x800e
/* 081744 80080B44 8F18C4DC */  lw    $t8, %lo(gPlayerOne)($t8)
/* 081748 80080B48 01E57823 */  subu  $t7, $t7, $a1
/* 08174C 80080B4C AFBF0024 */  sw    $ra, 0x24($sp)
/* 081750 80080B50 AFB10020 */  sw    $s1, 0x20($sp)
/* 081754 80080B54 AFB0001C */  sw    $s0, 0x1c($sp)
/* 081758 80080B58 AFA50034 */  sw    $a1, 0x34($sp)
/* 08175C 80080B5C 000F78C0 */  sll   $t7, $t7, 3
/* 081760 80080B60 00808825 */  move  $s1, $a0
/* 081764 80080B64 24050200 */  li    $a1, 512
/* 081768 80080B68 0C01C88F */  jal   func_8007223C
/* 08176C 80080B6C 01F88021 */   addu  $s0, $t7, $t8
/* 081770 80080B70 50400098 */  beql  $v0, $zero, .L80080DD4
/* 081774 80080B74 8FBF0024 */   lw    $ra, 0x24($sp)
/* 081778 80080B78 8E19000C */  lw    $t9, 0xc($s0)
/* 08177C 80080B7C 02202025 */  move  $a0, $s1
/* 081780 80080B80 33280100 */  andi  $t0, $t9, 0x100
/* 081784 80080B84 15000090 */  bnez  $t0, .L80080DC8
/* 081788 80080B88 00000000 */   nop
/* 08178C 80080B8C 0C0223D5 */  jal   func_80088F54
/* 081790 80080B90 02002825 */   move  $a1, $s0
/* 081794 80080B94 3C014022 */  li    $at, 0x40220000 # 2.531250
/* 081798 80080B98 44812800 */  mtc1  $at, $f5
/* 08179C 80080B9C 44802000 */  mtc1  $zero, $f4
/* 0817A0 80080BA0 460001A1 */  cvt.d.s $f6, $f0
/* 0817A4 80080BA4 46000086 */  mov.s $f2, $f0
/* 0817A8 80080BA8 4624303E */  c.le.d $f6, $f4
/* 0817AC 80080BAC 00000000 */  nop
/* 0817B0 80080BB0 4500004E */  bc1f  .L80080CEC
/* 0817B4 80080BB4 00000000 */   nop
/* 0817B8 80080BB8 8E0900BC */  lw    $t1, 0xbc($s0)
/* 0817BC 80080BBC 02202025 */  move  $a0, $s1
/* 0817C0 80080BC0 02002825 */  move  $a1, $s0
/* 0817C4 80080BC4 00095140 */  sll   $t2, $t1, 5
/* 0817C8 80080BC8 05400048 */  bltz  $t2, .L80080CEC
/* 0817CC 80080BCC 00000000 */   nop
/* 0817D0 80080BD0 0C022346 */  jal   func_80088D18
/* 0817D4 80080BD4 E7A2002C */   swc1  $f2, 0x2c($sp)
/* 0817D8 80080BD8 10400044 */  beqz  $v0, .L80080CEC
/* 0817DC 80080BDC C7A2002C */   lwc1  $f2, 0x2c($sp)
/* 0817E0 80080BE0 96020000 */  lhu   $v0, ($s0)
/* 0817E4 80080BE4 304B8000 */  andi  $t3, $v0, 0x8000
/* 0817E8 80080BE8 11600079 */  beqz  $t3, .L80080DD0
/* 0817EC 80080BEC 304C0100 */   andi  $t4, $v0, 0x100
/* 0817F0 80080BF0 55800078 */  bnel  $t4, $zero, .L80080DD4
/* 0817F4 80080BF4 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0817F8 80080BF8 8E0D00BC */  lw    $t5, 0xbc($s0)
/* 0817FC 80080BFC 8FA50034 */  lw    $a1, 0x34($sp)
/* 081800 80080C00 3C063FB3 */  lui   $a2, (0x3FB33333 >> 16) # lui $a2, 0x3fb3
/* 081804 80080C04 31AE0200 */  andi  $t6, $t5, 0x200
/* 081808 80080C08 15C0000B */  bnez  $t6, .L80080C38
/* 08180C 80080C0C 02202025 */   move  $a0, $s1
/* 081810 80080C10 3C0F1900 */  lui   $t7, (0x1900A04C >> 16) # lui $t7, 0x1900
/* 081814 80080C14 35EFA04C */  ori   $t7, (0x1900A04C & 0xFFFF) # ori $t7, $t7, 0xa04c
/* 081818 80080C18 3C073F8C */  lui   $a3, (0x3F8CCCCD >> 16) # lui $a3, 0x3f8c
/* 08181C 80080C1C 34E7CCCD */  ori   $a3, (0x3F8CCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* 081820 80080C20 AFAF0010 */  sw    $t7, 0x10($sp)
/* 081824 80080C24 02202025 */  move  $a0, $s1
/* 081828 80080C28 0C02251D */  jal   func_80089474
/* 08182C 80080C2C 34C63333 */   ori   $a2, (0x3FB33333 & 0xFFFF) # ori $a2, $a2, 0x3333
/* 081830 80080C30 10000068 */  b     .L80080DD4
/* 081834 80080C34 8FBF0024 */   lw    $ra, 0x24($sp)
.L80080C38:
/* 081838 80080C38 0C01C8D5 */  jal   func_80072354
/* 08183C 80080C3C 24050040 */   li    $a1, 64
/* 081840 80080C40 50400064 */  beql  $v0, $zero, .L80080DD4
/* 081844 80080C44 8FBF0024 */   lw    $ra, 0x24($sp)
/* 081848 80080C48 96180000 */  lhu   $t8, ($s0)
/* 08184C 80080C4C 3C061901 */  lui   $a2, (0x1901A24A >> 16) # lui $a2, 0x1901
/* 081850 80080C50 93A40037 */  lbu   $a0, 0x37($sp)
/* 081854 80080C54 33191000 */  andi  $t9, $t8, 0x1000
/* 081858 80080C58 13200007 */  beqz  $t9, .L80080C78
/* 08185C 80080C5C 3C051901 */   lui   $a1, 0x1901
/* 081860 80080C60 26040014 */  addiu $a0, $s0, 0x14
/* 081864 80080C64 26050034 */  addiu $a1, $s0, 0x34
/* 081868 80080C68 0C03262E */  jal   func_800C98B8
/* 08186C 80080C6C 34C6A24A */   ori   $a2, (0x1901A24A & 0xFFFF) # ori $a2, $a2, 0xa24a
/* 081870 80080C70 10000003 */  b     .L80080C80
/* 081874 80080C74 00000000 */   nop
.L80080C78:
/* 081878 80080C78 0C032418 */  jal   func_800C9060
/* 08187C 80080C7C 34A5A24A */   ori   $a1, $a1, 0xa24a
.L80080C80:
/* 081880 80080C80 0C020379 */  jal   func_80080DE4
/* 081884 80080C84 02202025 */   move  $a0, $s1
/* 081888 80080C88 001140C0 */  sll   $t0, $s1, 3
/* 08188C 80080C8C 01114023 */  subu  $t0, $t0, $s1
/* 081890 80080C90 00084140 */  sll   $t0, $t0, 5
/* 081894 80080C94 3C0A8016 */  lui   $t2, %hi(D_80165C18) # $t2, 0x8016
/* 081898 80080C98 254A5C18 */  addiu $t2, %lo(D_80165C18) # addiu $t2, $t2, 0x5c18
/* 08189C 80080C9C 25090004 */  addiu $t1, $t0, 4
/* 0818A0 80080CA0 3C078019 */  lui   $a3, %hi(D_8018D3C4) # $a3, 0x8019
/* 0818A4 80080CA4 8CE7D3C4 */  lw    $a3, %lo(D_8018D3C4)($a3)
/* 0818A8 80080CA8 012A2021 */  addu  $a0, $t1, $t2
/* 0818AC 80080CAC 24050003 */  li    $a1, 3
/* 0818B0 80080CB0 0C01D4C1 */  jal   func_80075304
/* 0818B4 80080CB4 24060003 */   li    $a2, 3
/* 0818B8 80080CB8 02202025 */  move  $a0, $s1
/* 0818BC 80080CBC 0C01C87A */  jal   func_800721E8
/* 0818C0 80080CC0 24050200 */   li    $a1, 512
/* 0818C4 80080CC4 02202025 */  move  $a0, $s1
/* 0818C8 80080CC8 0C01C8A9 */  jal   func_800722A4
/* 0818CC 80080CCC 24050040 */   li    $a1, 64
/* 0818D0 80080CD0 0C021BD8 */  jal   func_80086F60
/* 0818D4 80080CD4 02202025 */   move  $a0, $s1
/* 0818D8 80080CD8 02202025 */  move  $a0, $s1
/* 0818DC 80080CDC 0C01C9B3 */  jal   func_800726CC
/* 0818E0 80080CE0 240500C8 */   li    $a1, 200
/* 0818E4 80080CE4 1000003B */  b     .L80080DD4
/* 0818E8 80080CE8 8FBF0024 */   lw    $ra, 0x24($sp)
.L80080CEC:
/* 0818EC 80080CEC 3C01800F */  lui   $at, %hi(D_800EF0B0)
/* 0818F0 80080CF0 D428F0B0 */  ldc1  $f8, %lo(D_800EF0B0)($at)
/* 0818F4 80080CF4 460012A1 */  cvt.d.s $f10, $f2
/* 0818F8 80080CF8 02202025 */  move  $a0, $s1
/* 0818FC 80080CFC 4628503E */  c.le.d $f10, $f8
/* 081900 80080D00 00000000 */  nop
/* 081904 80080D04 45020033 */  bc1fl .L80080DD4
/* 081908 80080D08 8FBF0024 */   lw    $ra, 0x24($sp)
/* 08190C 80080D0C 0C01C8C8 */  jal   func_80072320
/* 081910 80080D10 24050001 */   li    $a1, 1
/* 081914 80080D14 1040002E */  beqz  $v0, .L80080DD0
/* 081918 80080D18 3C013FE0 */   li    $at, 0x3FE00000 # 1.750000
/* 08191C 80080D1C C6100094 */  lwc1  $f16, 0x94($s0)
/* 081920 80080D20 44812800 */  mtc1  $at, $f5
/* 081924 80080D24 44802000 */  mtc1  $zero, $f4
/* 081928 80080D28 460084A1 */  cvt.d.s $f18, $f16
/* 08192C 80080D2C 3C01401C */  li    $at, 0x401C0000 # 2.437500
/* 081930 80080D30 46249182 */  mul.d $f6, $f18, $f4
/* 081934 80080D34 44814800 */  mtc1  $at, $f9
/* 081938 80080D38 44804000 */  mtc1  $zero, $f8
/* 08193C 80080D3C 02202025 */  move  $a0, $s1
/* 081940 80080D40 02002825 */  move  $a1, $s0
/* 081944 80080D44 46283280 */  add.d $f10, $f6, $f8
/* 081948 80080D48 46205420 */  cvt.s.d $f16, $f10
/* 08194C 80080D4C 44068000 */  mfc1  $a2, $f16
/* 081950 80080D50 0C022296 */  jal   func_80088A58
/* 081954 80080D54 00000000 */   nop
/* 081958 80080D58 5040001E */  beql  $v0, $zero, .L80080DD4
/* 08195C 80080D5C 8FBF0024 */   lw    $ra, 0x24($sp)
/* 081960 80080D60 96020000 */  lhu   $v0, ($s0)
/* 081964 80080D64 304B8000 */  andi  $t3, $v0, 0x8000
/* 081968 80080D68 11600019 */  beqz  $t3, .L80080DD0
/* 08196C 80080D6C 304C0100 */   andi  $t4, $v0, 0x100
/* 081970 80080D70 15800017 */  bnez  $t4, .L80080DD0
/* 081974 80080D74 02202025 */   move  $a0, $s1
/* 081978 80080D78 0C01C88F */  jal   func_8007223C
/* 08197C 80080D7C 3C050400 */   lui   $a1, 0x400
/* 081980 80080D80 50400004 */  beql  $v0, $zero, .L80080D94
/* 081984 80080D84 02202025 */   move  $a0, $s1
/* 081988 80080D88 0C01C860 */  jal   func_80072180
/* 08198C 80080D8C 00000000 */   nop
/* 081990 80080D90 02202025 */  move  $a0, $s1
.L80080D94:
/* 081994 80080D94 0C01C8A9 */  jal   func_800722A4
/* 081998 80080D98 24050002 */   li    $a1, 2
/* 08199C 80080D9C 960D0046 */  lhu   $t5, 0x46($s0)
/* 0819A0 80080DA0 8E0F000C */  lw    $t7, 0xc($s0)
/* 0819A4 80080DA4 A6110040 */  sh    $s1, 0x40($s0)
/* 0819A8 80080DA8 35AE0002 */  ori   $t6, $t5, 2
/* 0819AC 80080DAC 35F80100 */  ori   $t8, $t7, 0x100
/* 0819B0 80080DB0 A60E0046 */  sh    $t6, 0x46($s0)
/* 0819B4 80080DB4 AE18000C */  sw    $t8, 0xc($s0)
/* 0819B8 80080DB8 0C0223FC */  jal   func_80088FF0
/* 0819BC 80080DBC 02002025 */   move  $a0, $s0
/* 0819C0 80080DC0 10000004 */  b     .L80080DD4
/* 0819C4 80080DC4 8FBF0024 */   lw    $ra, 0x24($sp)
.L80080DC8:
/* 0819C8 80080DC8 0C0223FC */  jal   func_80088FF0
/* 0819CC 80080DCC 02002025 */   move  $a0, $s0
.L80080DD0:
/* 0819D0 80080DD0 8FBF0024 */  lw    $ra, 0x24($sp)
.L80080DD4:
/* 0819D4 80080DD4 8FB0001C */  lw    $s0, 0x1c($sp)
/* 0819D8 80080DD8 8FB10020 */  lw    $s1, 0x20($sp)
/* 0819DC 80080DDC 03E00008 */  jr    $ra
/* 0819E0 80080DE0 27BD0030 */   addiu $sp, $sp, 0x30
