glabel func_80038C6C
/* 03986C 80038C6C 27BDFEE0 */  addiu $sp, $sp, -0x120
/* 039870 80038C70 3C0F800E */  lui   $t7, %hi(D_800E4328) # $t7, 0x800e
/* 039874 80038C74 AFBF0034 */  sw    $ra, 0x34($sp)
/* 039878 80038C78 AFB00030 */  sw    $s0, 0x30($sp)
/* 03987C 80038C7C F7B40028 */  sdc1  $f20, 0x28($sp)
/* 039880 80038C80 AFA50124 */  sw    $a1, 0x124($sp)
/* 039884 80038C84 AFA60128 */  sw    $a2, 0x128($sp)
/* 039888 80038C88 AFA7012C */  sw    $a3, 0x12c($sp)
/* 03988C 80038C8C 25EF4328 */  addiu $t7, %lo(D_800E4328) # addiu $t7, $t7, 0x4328
/* 039890 80038C90 8DE10000 */  lw    $at, ($t7)
/* 039894 80038C94 27AE0114 */  addiu $t6, $sp, 0x114
/* 039898 80038C98 8DE80004 */  lw    $t0, 4($t7)
/* 03989C 80038C9C ADC10000 */  sw    $at, ($t6)
/* 0398A0 80038CA0 8DE10008 */  lw    $at, 8($t7)
/* 0398A4 80038CA4 3C0A800E */  lui   $t2, %hi(D_800E4334) # $t2, 0x800e
/* 0398A8 80038CA8 254A4334 */  addiu $t2, %lo(D_800E4334) # addiu $t2, $t2, 0x4334
/* 0398AC 80038CAC ADC80004 */  sw    $t0, 4($t6)
/* 0398B0 80038CB0 ADC10008 */  sw    $at, 8($t6)
/* 0398B4 80038CB4 8D410000 */  lw    $at, ($t2)
/* 0398B8 80038CB8 27A90108 */  addiu $t1, $sp, 0x108
/* 0398BC 80038CBC 8D4D0004 */  lw    $t5, 4($t2)
/* 0398C0 80038CC0 AD210000 */  sw    $at, ($t1)
/* 0398C4 80038CC4 8D410008 */  lw    $at, 8($t2)
/* 0398C8 80038CC8 3C18800E */  lui   $t8, %hi(D_800E4340) # $t8, 0x800e
/* 0398CC 80038CCC 27184340 */  addiu $t8, %lo(D_800E4340) # addiu $t8, $t8, 0x4340
/* 0398D0 80038CD0 AD2D0004 */  sw    $t5, 4($t1)
/* 0398D4 80038CD4 AD210008 */  sw    $at, 8($t1)
/* 0398D8 80038CD8 8F010000 */  lw    $at, ($t8)
/* 0398DC 80038CDC 27B900FC */  addiu $t9, $sp, 0xfc
/* 0398E0 80038CE0 8F080004 */  lw    $t0, 4($t8)
/* 0398E4 80038CE4 AF210000 */  sw    $at, ($t9)
/* 0398E8 80038CE8 8F010008 */  lw    $at, 8($t8)
/* 0398EC 80038CEC 3C0B800E */  lui   $t3, %hi(D_800E434C) # $t3, 0x800e
/* 0398F0 80038CF0 256B434C */  addiu $t3, %lo(D_800E434C) # addiu $t3, $t3, 0x434c
/* 0398F4 80038CF4 AF280004 */  sw    $t0, 4($t9)
/* 0398F8 80038CF8 AF210008 */  sw    $at, 8($t9)
/* 0398FC 80038CFC 8D610000 */  lw    $at, ($t3)
/* 039900 80038D00 27AC00F0 */  addiu $t4, $sp, 0xf0
/* 039904 80038D04 8D6D0004 */  lw    $t5, 4($t3)
/* 039908 80038D08 AD810000 */  sw    $at, ($t4)
/* 03990C 80038D0C 8D610008 */  lw    $at, 8($t3)
/* 039910 80038D10 AD8D0004 */  sw    $t5, 4($t4)
/* 039914 80038D14 00808025 */  move  $s0, $a0
/* 039918 80038D18 AD810008 */  sw    $at, 8($t4)
/* 03991C 80038D1C 3C01C120 */  li    $at, 0xC1200000 # -10.000000
/* 039920 80038D20 44812000 */  mtc1  $at, $f4
/* 039924 80038D24 3C0141E0 */  li    $at, 0x41E00000 # 28.000000
/* 039928 80038D28 44813000 */  mtc1  $at, $f6
/* 03992C 80038D2C 3C01437A */  li    $at, 0x437A0000 # 250.000000
/* 039930 80038D30 44814000 */  mtc1  $at, $f8
/* 039934 80038D34 E4840084 */  swc1  $f4, 0x84($a0)
/* 039938 80038D38 E4860088 */  swc1  $f6, 0x88($a0)
/* 03993C 80038D3C E4880214 */  swc1  $f8, 0x214($a0)
/* 039940 80038D40 83A6012B */  lb    $a2, 0x12b($sp)
/* 039944 80038D44 0C00AE0C */  jal   func_8002B830
/* 039948 80038D48 83A5012F */   lb    $a1, 0x12f($sp)
/* 03994C 80038D4C 02002025 */  move  $a0, $s0
/* 039950 80038D50 83A5012F */  lb    $a1, 0x12f($sp)
/* 039954 80038D54 0C00B352 */  jal   func_8002CD48
/* 039958 80038D58 83A6012B */   lb    $a2, 0x12b($sp)
/* 03995C 80038D5C 860F002E */  lh    $t7, 0x2e($s0)
/* 039960 80038D60 860E0078 */  lh    $t6, 0x78($s0)
/* 039964 80038D64 4480A000 */  mtc1  $zero, $f20
/* 039968 80038D68 02002025 */  move  $a0, $s0
/* 03996C 80038D6C 01EEC821 */  addu  $t9, $t7, $t6
/* 039970 80038D70 A619002E */  sh    $t9, 0x2e($s0)
/* 039974 80038D74 E7B400F0 */  swc1  $f20, 0xf0($sp)
/* 039978 80038D78 E7B400F4 */  swc1  $f20, 0xf4($sp)
/* 03997C 80038D7C 0C00AADC */  jal   func_8002AB70
/* 039980 80038D80 E7B400F8 */   swc1  $f20, 0xf8($sp)
/* 039984 80038D84 C7AA00FC */  lwc1  $f10, 0xfc($sp)
/* 039988 80038D88 C6040064 */  lwc1  $f4, 0x64($s0)
/* 03998C 80038D8C 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 039990 80038D90 26050174 */  addiu $a1, $s0, 0x174
/* 039994 80038D94 46045180 */  add.s $f6, $f10, $f4
/* 039998 80038D98 44812000 */  mtc1  $at, $f4
/* 03999C 80038D9C 27A40108 */  addiu $a0, $sp, 0x108
/* 0399A0 80038DA0 46143202 */  mul.s $f8, $f6, $f20
/* 0399A4 80038DA4 E7A800A4 */  swc1  $f8, 0xa4($sp)
/* 0399A8 80038DA8 C60A0100 */  lwc1  $f10, 0x100($s0)
/* 0399AC 80038DAC C7A80104 */  lwc1  $f8, 0x104($sp)
/* 0399B0 80038DB0 46045182 */  mul.s $f6, $f10, $f4
/* 0399B4 80038DB4 E7A600A0 */  swc1  $f6, 0xa0($sp)
/* 0399B8 80038DB8 C60A006C */  lwc1  $f10, 0x6c($s0)
/* 0399BC 80038DBC E7B40110 */  swc1  $f20, 0x110($sp)
/* 0399C0 80038DC0 E7B4010C */  swc1  $f20, 0x10c($sp)
/* 0399C4 80038DC4 460A4100 */  add.s $f4, $f8, $f10
/* 0399C8 80038DC8 E7B40108 */  swc1  $f20, 0x108($sp)
/* 0399CC 80038DCC AFA50050 */  sw    $a1, 0x50($sp)
/* 0399D0 80038DD0 46142182 */  mul.s $f6, $f4, $f20
/* 0399D4 80038DD4 0C0AD8EE */  jal   func_802B63B8
/* 0399D8 80038DD8 E7A6009C */   swc1  $f6, 0x9c($sp)
/* 0399DC 80038DDC C7A800A4 */  lwc1  $f8, 0xa4($sp)
/* 0399E0 80038DE0 C7AA0108 */  lwc1  $f10, 0x108($sp)
/* 0399E4 80038DE4 C7A6009C */  lwc1  $f6, 0x9c($sp)
/* 0399E8 80038DE8 27A40114 */  addiu $a0, $sp, 0x114
/* 0399EC 80038DEC 460A4100 */  add.s $f4, $f8, $f10
/* 0399F0 80038DF0 C7A80110 */  lwc1  $f8, 0x110($sp)
/* 0399F4 80038DF4 8FA50050 */  lw    $a1, 0x50($sp)
/* 0399F8 80038DF8 46083280 */  add.s $f10, $f6, $f8
/* 0399FC 80038DFC E7A400A4 */  swc1  $f4, 0xa4($sp)
/* 039A00 80038E00 E7AA009C */  swc1  $f10, 0x9c($sp)
/* 039A04 80038E04 C604008C */  lwc1  $f4, 0x8c($s0)
/* 039A08 80038E08 0C0AD8EE */  jal   func_802B63B8
/* 039A0C 80038E0C E7A4011C */   swc1  $f4, 0x11c($sp)
/* 039A10 80038E10 C6060034 */  lwc1  $f6, 0x34($s0)
/* 039A14 80038E14 3C01800F */  lui   $at, %hi(D_800EDE00)
/* 039A18 80038E18 D42EDE00 */  ldc1  $f14, %lo(D_800EDE00)($at)
/* 039A1C 80038E1C E7A60088 */  swc1  $f6, 0x88($sp)
/* 039A20 80038E20 C6080038 */  lwc1  $f8, 0x38($s0)
/* 039A24 80038E24 C7A40088 */  lwc1  $f4, 0x88($sp)
/* 039A28 80038E28 C7A60114 */  lwc1  $f6, 0x114($sp)
/* 039A2C 80038E2C E7A8008C */  swc1  $f8, 0x8c($sp)
/* 039A30 80038E30 C60A003C */  lwc1  $f10, 0x3c($s0)
/* 039A34 80038E34 C7A800A4 */  lwc1  $f8, 0xa4($sp)
/* 039A38 80038E38 46002021 */  cvt.d.s $f0, $f4
/* 039A3C 80038E3C E7AA0090 */  swc1  $f10, 0x90($sp)
/* 039A40 80038E40 46083280 */  add.s $f10, $f6, $f8
/* 039A44 80038E44 C7A400F0 */  lwc1  $f4, 0xf0($sp)
/* 039A48 80038E48 3C01800F */  lui   $at, %hi(D_800EDE08)
/* 039A4C 80038E4C D430DE08 */  ldc1  $f16, %lo(D_800EDE08)($at)
/* 039A50 80038E50 46045180 */  add.s $f6, $f10, $f4
/* 039A54 80038E54 C60A00FC */  lwc1  $f10, 0xfc($s0)
/* 039A58 80038E58 3C013FF0 */  li    $at, 0x3FF00000 # 1.875000
/* 039A5C 80038E5C 44819800 */  mtc1  $at, $f19
/* 039A60 80038E60 46005121 */  cvt.d.s $f4, $f10
/* 039A64 80038E64 46003221 */  cvt.d.s $f8, $f6
/* 039A68 80038E68 46247182 */  mul.d $f6, $f14, $f4
/* 039A6C 80038E6C 44809000 */  mtc1  $zero, $f18
/* 039A70 80038E70 24010010 */  li    $at, 16
/* 039A74 80038E74 46260282 */  mul.d $f10, $f0, $f6
/* 039A78 80038E78 462A4101 */  sub.d $f4, $f8, $f10
/* 039A7C 80038E7C 46302183 */  div.d $f6, $f4, $f16
/* 039A80 80038E80 46323203 */  div.d $f8, $f6, $f18
/* 039A84 80038E84 C7A60090 */  lwc1  $f6, 0x90($sp)
/* 039A88 80038E88 460030A1 */  cvt.d.s $f2, $f6
/* 039A8C 80038E8C C7A600F8 */  lwc1  $f6, 0xf8($sp)
/* 039A90 80038E90 46280280 */  add.d $f10, $f0, $f8
/* 039A94 80038E94 C7A8011C */  lwc1  $f8, 0x11c($sp)
/* 039A98 80038E98 46205120 */  cvt.s.d $f4, $f10
/* 039A9C 80038E9C C7AA009C */  lwc1  $f10, 0x9c($sp)
/* 039AA0 80038EA0 E7A40088 */  swc1  $f4, 0x88($sp)
/* 039AA4 80038EA4 460A4100 */  add.s $f4, $f8, $f10
/* 039AA8 80038EA8 46062200 */  add.s $f8, $f4, $f6
/* 039AAC 80038EAC C60400FC */  lwc1  $f4, 0xfc($s0)
/* 039AB0 80038EB0 460021A1 */  cvt.d.s $f6, $f4
/* 039AB4 80038EB4 460042A1 */  cvt.d.s $f10, $f8
/* 039AB8 80038EB8 46267202 */  mul.d $f8, $f14, $f6
/* 039ABC 80038EBC 00000000 */  nop   
/* 039AC0 80038EC0 46281102 */  mul.d $f4, $f2, $f8
/* 039AC4 80038EC4 46245181 */  sub.d $f6, $f10, $f4
/* 039AC8 80038EC8 46303203 */  div.d $f8, $f6, $f16
/* 039ACC 80038ECC 46324283 */  div.d $f10, $f8, $f18
/* 039AD0 80038ED0 C7A8008C */  lwc1  $f8, 0x8c($sp)
/* 039AD4 80038ED4 46004321 */  cvt.d.s $f12, $f8
/* 039AD8 80038ED8 C7A800F4 */  lwc1  $f8, 0xf4($sp)
/* 039ADC 80038EDC 462A1100 */  add.d $f4, $f2, $f10
/* 039AE0 80038EE0 C7AA0118 */  lwc1  $f10, 0x118($sp)
/* 039AE4 80038EE4 462021A0 */  cvt.s.d $f6, $f4
/* 039AE8 80038EE8 C7A400A0 */  lwc1  $f4, 0xa0($sp)
/* 039AEC 80038EEC E7A60090 */  swc1  $f6, 0x90($sp)
/* 039AF0 80038EF0 46045180 */  add.s $f6, $f10, $f4
/* 039AF4 80038EF4 46083280 */  add.s $f10, $f6, $f8
/* 039AF8 80038EF8 C60600FC */  lwc1  $f6, 0xfc($s0)
/* 039AFC 80038EFC 46003221 */  cvt.d.s $f8, $f6
/* 039B00 80038F00 46005121 */  cvt.d.s $f4, $f10
/* 039B04 80038F04 46287282 */  mul.d $f10, $f14, $f8
/* 039B08 80038F08 00000000 */  nop   
/* 039B0C 80038F0C 462A6182 */  mul.d $f6, $f12, $f10
/* 039B10 80038F10 46262201 */  sub.d $f8, $f4, $f6
/* 039B14 80038F14 46304283 */  div.d $f10, $f8, $f16
/* 039B18 80038F18 46325103 */  div.d $f4, $f10, $f18
/* 039B1C 80038F1C 46246180 */  add.d $f6, $f12, $f4
/* 039B20 80038F20 46203220 */  cvt.s.d $f8, $f6
/* 039B24 80038F24 E7A8008C */  swc1  $f8, 0x8c($sp)
/* 039B28 80038F28 86020044 */  lh    $v0, 0x44($s0)
/* 039B2C 80038F2C 30580010 */  andi  $t8, $v0, 0x10
/* 039B30 80038F30 17010003 */  bne   $t8, $at, .L80038F40
/* 039B34 80038F34 00000000 */   nop   
/* 039B38 80038F38 3048FFEF */  andi  $t0, $v0, 0xffef
/* 039B3C 80038F3C A6080044 */  sh    $t0, 0x44($s0)
.L80038F40:
/* 039B40 80038F40 C6000014 */  lwc1  $f0, 0x14($s0)
/* 039B44 80038F44 02002025 */  move  $a0, $s0
/* 039B48 80038F48 E7A000E0 */  swc1  $f0, 0xe0($sp)
/* 039B4C 80038F4C C60A0034 */  lwc1  $f10, 0x34($s0)
/* 039B50 80038F50 C6020018 */  lwc1  $f2, 0x18($s0)
/* 039B54 80038F54 C610001C */  lwc1  $f16, 0x1c($s0)
/* 039B58 80038F58 46005100 */  add.s $f4, $f10, $f0
/* 039B5C 80038F5C E6000020 */  swc1  $f0, 0x20($s0)
/* 039B60 80038F60 E6020024 */  swc1  $f2, 0x24($s0)
/* 039B64 80038F64 E6100028 */  swc1  $f16, 0x28($s0)
/* 039B68 80038F68 E7A400EC */  swc1  $f4, 0xec($sp)
/* 039B6C 80038F6C C6060038 */  lwc1  $f6, 0x38($s0)
/* 039B70 80038F70 46023200 */  add.s $f8, $f6, $f2
/* 039B74 80038F74 E7A800E8 */  swc1  $f8, 0xe8($sp)
/* 039B78 80038F78 C60A003C */  lwc1  $f10, 0x3c($s0)
/* 039B7C 80038F7C E7B000D8 */  swc1  $f16, 0xd8($sp)
/* 039B80 80038F80 46105100 */  add.s $f4, $f10, $f16
/* 039B84 80038F84 0C00AAB0 */  jal   func_8002AAC0
/* 039B88 80038F88 E7A400E4 */   swc1  $f4, 0xe4($sp)
/* 039B8C 80038F8C C7A600E8 */  lwc1  $f6, 0xe8($sp)
/* 039B90 80038F90 C60800EC */  lwc1  $f8, 0xec($s0)
/* 039B94 80038F94 3C01800F */  lui   $at, %hi(D_800EDE10)
/* 039B98 80038F98 26040110 */  addiu $a0, $s0, 0x110
/* 039B9C 80038F9C 46083280 */  add.s $f10, $f6, $f8
/* 039BA0 80038FA0 D426DE10 */  ldc1  $f6, %lo(D_800EDE10)($at)
/* 039BA4 80038FA4 8FA600EC */  lw    $a2, 0xec($sp)
/* 039BA8 80038FA8 46005121 */  cvt.d.s $f4, $f10
/* 039BAC 80038FAC E7AA00E8 */  swc1  $f10, 0xe8($sp)
/* 039BB0 80038FB0 46262201 */  sub.d $f8, $f4, $f6
/* 039BB4 80038FB4 C7A400E4 */  lwc1  $f4, 0xe4($sp)
/* 039BB8 80038FB8 462042A0 */  cvt.s.d $f10, $f8
/* 039BBC 80038FBC E7AA00E8 */  swc1  $f10, 0xe8($sp)
/* 039BC0 80038FC0 8E050070 */  lw    $a1, 0x70($s0)
/* 039BC4 80038FC4 E7A40010 */  swc1  $f4, 0x10($sp)
/* 039BC8 80038FC8 C6060020 */  lwc1  $f6, 0x20($s0)
/* 039BCC 80038FCC 44075000 */  mfc1  $a3, $f10
/* 039BD0 80038FD0 E7A60014 */  swc1  $f6, 0x14($sp)
/* 039BD4 80038FD4 C6080024 */  lwc1  $f8, 0x24($s0)
/* 039BD8 80038FD8 E7A80018 */  swc1  $f8, 0x18($sp)
/* 039BDC 80038FDC C60A0028 */  lwc1  $f10, 0x28($s0)
/* 039BE0 80038FE0 0C0AB654 */  jal   func_802AD950
/* 039BE4 80038FE4 E7AA001C */   swc1  $f10, 0x1c($sp)
/* 039BE8 80038FE8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 039BEC 80038FEC 44810000 */  mtc1  $at, $f0
/* 039BF0 80038FF0 860A002E */  lh    $t2, 0x2e($s0)
/* 039BF4 80038FF4 E6140058 */  swc1  $f20, 0x58($s0)
/* 039BF8 80038FF8 E6140060 */  swc1  $f20, 0x60($s0)
/* 039BFC 80038FFC 4405A000 */  mfc1  $a1, $f20
/* 039C00 80039000 4407A000 */  mfc1  $a3, $f20
/* 039C04 80039004 E600005C */  swc1  $f0, 0x5c($s0)
/* 039C08 80039008 44060000 */  mfc1  $a2, $f0
/* 039C0C 8003900C 8FA40050 */  lw    $a0, 0x50($sp)
/* 039C10 80039010 0C0AD950 */  jal   func_802B6540
/* 039C14 80039014 AFAA0010 */   sw    $t2, 0x10($sp)
/* 039C18 80039018 8E0900BC */  lw    $t1, 0xbc($s0)
/* 039C1C 8003901C 860B00C2 */  lh    $t3, 0xc2($s0)
/* 039C20 80039020 C6040124 */  lwc1  $f4, 0x124($s0)
/* 039C24 80039024 352C0008 */  ori   $t4, $t1, 8
/* 039C28 80039028 256D0001 */  addiu $t5, $t3, 1
/* 039C2C 8003902C AE0C00BC */  sw    $t4, 0xbc($s0)
/* 039C30 80039030 A60D00C2 */  sh    $t5, 0xc2($s0)
/* 039C34 80039034 E7A40098 */  swc1  $f4, 0x98($sp)
/* 039C38 80039038 C7A60098 */  lwc1  $f6, 0x98($sp)
/* 039C3C 8003903C 4614303E */  c.le.s $f6, $f20
/* 039C40 80039040 00000000 */  nop   
/* 039C44 80039044 4502000E */  bc1fl .L80039080
/* 039C48 80039048 C6040124 */   lwc1  $f4, 0x124($s0)
/* 039C4C 8003904C A60000C2 */  sh    $zero, 0xc2($s0)
/* 039C50 80039050 860800C2 */  lh    $t0, 0xc2($s0)
/* 039C54 80039054 8E0F00BC */  lw    $t7, 0xbc($s0)
/* 039C58 80039058 2401FFFD */  li    $at, -3
/* 039C5C 8003905C 44884000 */  mtc1  $t0, $f8
/* 039C60 80039060 01E17024 */  and   $t6, $t7, $at
/* 039C64 80039064 2401FFF7 */  li    $at, -9
/* 039C68 80039068 468042A0 */  cvt.s.w $f10, $f8
/* 039C6C 8003906C AE0E00BC */  sw    $t6, 0xbc($s0)
/* 039C70 80039070 01C1C024 */  and   $t8, $t6, $at
/* 039C74 80039074 AE1800BC */  sw    $t8, 0xbc($s0)
/* 039C78 80039078 E60A00EC */  swc1  $f10, 0xec($s0)
/* 039C7C 8003907C C6040124 */  lwc1  $f4, 0x124($s0)
.L80039080:
/* 039C80 80039080 E7A40098 */  swc1  $f4, 0x98($sp)
/* 039C84 80039084 C7A60098 */  lwc1  $f6, 0x98($sp)
/* 039C88 80039088 4614303E */  c.le.s $f6, $f20
/* 039C8C 8003908C 00000000 */  nop   
/* 039C90 80039090 4500000D */  bc1f  .L800390C8
/* 039C94 80039094 27AA0098 */   addiu $t2, $sp, 0x98
/* 039C98 80039098 27A900EC */  addiu $t1, $sp, 0xec
/* 039C9C 8003909C 27AC00E8 */  addiu $t4, $sp, 0xe8
/* 039CA0 800390A0 27AB00E4 */  addiu $t3, $sp, 0xe4
/* 039CA4 800390A4 AFAB001C */  sw    $t3, 0x1c($sp)
/* 039CA8 800390A8 AFAC0018 */  sw    $t4, 0x18($sp)
/* 039CAC 800390AC AFA90014 */  sw    $t1, 0x14($sp)
/* 039CB0 800390B0 AFAA0010 */  sw    $t2, 0x10($sp)
/* 039CB4 800390B4 02002025 */  move  $a0, $s0
/* 039CB8 800390B8 27A5007C */  addiu $a1, $sp, 0x7c
/* 039CBC 800390BC 27A60088 */  addiu $a2, $sp, 0x88
/* 039CC0 800390C0 0C00FD1B */  jal   func_8003F46C
/* 039CC4 800390C4 27A70108 */   addiu $a3, $sp, 0x108
.L800390C8:
/* 039CC8 800390C8 C608011C */  lwc1  $f8, 0x11c($s0)
/* 039CCC 800390CC E7A80098 */  swc1  $f8, 0x98($sp)
/* 039CD0 800390D0 C7AA0098 */  lwc1  $f10, 0x98($sp)
/* 039CD4 800390D4 4614503C */  c.lt.s $f10, $f20
/* 039CD8 800390D8 00000000 */  nop   
/* 039CDC 800390DC 4500000F */  bc1f  .L8003911C
/* 039CE0 800390E0 27AD00EC */   addiu $t5, $sp, 0xec
/* 039CE4 800390E4 27AF00E8 */  addiu $t7, $sp, 0xe8
/* 039CE8 800390E8 27AE00E4 */  addiu $t6, $sp, 0xe4
/* 039CEC 800390EC AFAE0018 */  sw    $t6, 0x18($sp)
/* 039CF0 800390F0 AFAF0014 */  sw    $t7, 0x14($sp)
/* 039CF4 800390F4 AFAD0010 */  sw    $t5, 0x10($sp)
/* 039CF8 800390F8 02002025 */  move  $a0, $s0
/* 039CFC 800390FC 27A5007C */  addiu $a1, $sp, 0x7c
/* 039D00 80039100 27A60088 */  addiu $a2, $sp, 0x88
/* 039D04 80039104 0C00FDCD */  jal   func_8003F734
/* 039D08 80039108 27A70098 */   addiu $a3, $sp, 0x98
/* 039D0C 8003910C 02002025 */  move  $a0, $s0
/* 039D10 80039110 83A5012F */  lb    $a1, 0x12f($sp)
/* 039D14 80039114 0C00B255 */  jal   func_8002C954
/* 039D18 80039118 27A60088 */   addiu $a2, $sp, 0x88
.L8003911C:
/* 039D1C 8003911C C6040120 */  lwc1  $f4, 0x120($s0)
/* 039D20 80039120 02002025 */  move  $a0, $s0
/* 039D24 80039124 27A5007C */  addiu $a1, $sp, 0x7c
/* 039D28 80039128 E7A40098 */  swc1  $f4, 0x98($sp)
/* 039D2C 8003912C C7A60098 */  lwc1  $f6, 0x98($sp)
/* 039D30 80039130 27A60088 */  addiu $a2, $sp, 0x88
/* 039D34 80039134 27A70098 */  addiu $a3, $sp, 0x98
/* 039D38 80039138 4614303C */  c.lt.s $f6, $f20
/* 039D3C 8003913C 27B900EC */  addiu $t9, $sp, 0xec
/* 039D40 80039140 27B800E8 */  addiu $t8, $sp, 0xe8
/* 039D44 80039144 27A800E4 */  addiu $t0, $sp, 0xe4
/* 039D48 80039148 4502000A */  bc1fl .L80039174
/* 039D4C 8003914C C608011C */   lwc1  $f8, 0x11c($s0)
/* 039D50 80039150 AFB90010 */  sw    $t9, 0x10($sp)
/* 039D54 80039154 AFB80014 */  sw    $t8, 0x14($sp)
/* 039D58 80039158 0C00FEEB */  jal   func_8003FBAC
/* 039D5C 8003915C AFA80018 */   sw    $t0, 0x18($sp)
/* 039D60 80039160 02002025 */  move  $a0, $s0
/* 039D64 80039164 83A5012F */  lb    $a1, 0x12f($sp)
/* 039D68 80039168 0C00B255 */  jal   func_8002C954
/* 039D6C 8003916C 27A60088 */   addiu $a2, $sp, 0x88
/* 039D70 80039170 C608011C */  lwc1  $f8, 0x11c($s0)
.L80039174:
/* 039D74 80039174 E7A80098 */  swc1  $f8, 0x98($sp)
/* 039D78 80039178 C7AA0098 */  lwc1  $f10, 0x98($sp)
/* 039D7C 8003917C 460AA03E */  c.le.s $f20, $f10
/* 039D80 80039180 00000000 */  nop   
/* 039D84 80039184 4502000C */  bc1fl .L800391B8
/* 039D88 80039188 C7AC00EC */   lwc1  $f12, 0xec($sp)
/* 039D8C 8003918C C6040120 */  lwc1  $f4, 0x120($s0)
/* 039D90 80039190 E7A40098 */  swc1  $f4, 0x98($sp)
/* 039D94 80039194 C7A60098 */  lwc1  $f6, 0x98($sp)
/* 039D98 80039198 4606A03E */  c.le.s $f20, $f6
/* 039D9C 8003919C 00000000 */  nop   
/* 039DA0 800391A0 45020005 */  bc1fl .L800391B8
/* 039DA4 800391A4 C7AC00EC */   lwc1  $f12, 0xec($sp)
/* 039DA8 800391A8 960A0046 */  lhu   $t2, 0x46($s0)
/* 039DAC 800391AC 3149FFDF */  andi  $t1, $t2, 0xffdf
/* 039DB0 800391B0 A6090046 */  sh    $t1, 0x46($s0)
/* 039DB4 800391B4 C7AC00EC */  lwc1  $f12, 0xec($sp)
.L800391B8:
/* 039DB8 800391B8 C7AE00E8 */  lwc1  $f14, 0xe8($sp)
/* 039DBC 800391BC 8FA600E4 */  lw    $a2, 0xe4($sp)
/* 039DC0 800391C0 0C0AAF8C */  jal   func_802ABE30
/* 039DC4 800391C4 9607011A */   lhu   $a3, 0x11a($s0)
/* 039DC8 800391C8 E6000074 */  swc1  $f0, 0x74($s0)
/* 039DCC 800391CC 8FA700E4 */  lw    $a3, 0xe4($sp)
/* 039DD0 800391D0 8FA600E8 */  lw    $a2, 0xe8($sp)
/* 039DD4 800391D4 8FA500EC */  lw    $a1, 0xec($sp)
/* 039DD8 800391D8 0C00A6D3 */  jal   func_80029B4C
/* 039DDC 800391DC 02002025 */   move  $a0, $s0
/* 039DE0 800391E0 C7A800EC */  lwc1  $f8, 0xec($sp)
/* 039DE4 800391E4 C7AA00E4 */  lwc1  $f10, 0xe4($sp)
/* 039DE8 800391E8 02002025 */  move  $a0, $s0
/* 039DEC 800391EC 83A5012F */  lb    $a1, 0x12f($sp)
/* 039DF0 800391F0 8FA600E0 */  lw    $a2, 0xe0($sp)
/* 039DF4 800391F4 8FA700D8 */  lw    $a3, 0xd8($sp)
/* 039DF8 800391F8 E7A80010 */  swc1  $f8, 0x10($sp)
/* 039DFC 800391FC 0C00AB8E */  jal   func_8002AE38
/* 039E00 80039200 E7AA0014 */   swc1  $f10, 0x14($sp)
/* 039E04 80039204 C7A40090 */  lwc1  $f4, 0x90($sp)
/* 039E08 80039208 C7A80088 */  lwc1  $f8, 0x88($sp)
/* 039E0C 8003920C 46042182 */  mul.s $f6, $f4, $f4
/* 039E10 80039210 C6040094 */  lwc1  $f4, 0x94($s0)
/* 039E14 80039214 46084282 */  mul.s $f10, $f8, $f8
/* 039E18 80039218 E604022C */  swc1  $f4, 0x22c($s0)
/* 039E1C 8003921C 0C033850 */  jal   sqrtf
/* 039E20 80039220 460A3300 */   add.s $f12, $f6, $f10
/* 039E24 80039224 E6000094 */  swc1  $f0, 0x94($s0)
/* 039E28 80039228 C7A800EC */  lwc1  $f8, 0xec($sp)
/* 039E2C 8003922C 3C0D8016 */  lui   $t5, %hi(D_80165070) # $t5, 0x8016
/* 039E30 80039230 25AD5070 */  addiu $t5, %lo(D_80165070) # addiu $t5, $t5, 0x5070
/* 039E34 80039234 E6080014 */  swc1  $f8, 0x14($s0)
/* 039E38 80039238 C7A600E4 */  lwc1  $f6, 0xe4($sp)
/* 039E3C 8003923C 24014000 */  li    $at, 16384
/* 039E40 80039240 3C08800E */  lui   $t0, %hi(gKartTopSpeedTable) # $t0, 0x800e
/* 039E44 80039244 E606001C */  swc1  $f6, 0x1c($s0)
/* 039E48 80039248 C7AA00E8 */  lwc1  $f10, 0xe8($sp)
/* 039E4C 8003924C 02002025 */  move  $a0, $s0
/* 039E50 80039250 E60A0018 */  swc1  $f10, 0x18($s0)
/* 039E54 80039254 C7A40108 */  lwc1  $f4, 0x108($sp)
/* 039E58 80039258 E6040064 */  swc1  $f4, 0x64($s0)
/* 039E5C 8003925C C7A80110 */  lwc1  $f8, 0x110($sp)
/* 039E60 80039260 E608006C */  swc1  $f8, 0x6c($s0)
/* 039E64 80039264 C7A60088 */  lwc1  $f6, 0x88($sp)
/* 039E68 80039268 E6060034 */  swc1  $f6, 0x34($s0)
/* 039E6C 8003926C C7AA008C */  lwc1  $f10, 0x8c($sp)
/* 039E70 80039270 E60A0038 */  swc1  $f10, 0x38($s0)
/* 039E74 80039274 C7A40090 */  lwc1  $f4, 0x90($sp)
/* 039E78 80039278 E604003C */  swc1  $f4, 0x3c($s0)
/* 039E7C 8003927C 83AC012F */  lb    $t4, 0x12f($sp)
/* 039E80 80039280 C7A80088 */  lwc1  $f8, 0x88($sp)
/* 039E84 80039284 C7A6008C */  lwc1  $f6, 0x8c($sp)
/* 039E88 80039288 000C5880 */  sll   $t3, $t4, 2
/* 039E8C 8003928C 016C5823 */  subu  $t3, $t3, $t4
/* 039E90 80039290 000B5880 */  sll   $t3, $t3, 2
/* 039E94 80039294 C7AA0090 */  lwc1  $f10, 0x90($sp)
/* 039E98 80039298 016D1021 */  addu  $v0, $t3, $t5
/* 039E9C 8003929C E4480000 */  swc1  $f8, ($v0)
/* 039EA0 800392A0 E4460004 */  swc1  $f6, 4($v0)
/* 039EA4 800392A4 E44A0008 */  swc1  $f10, 8($v0)
/* 039EA8 800392A8 960F0000 */  lhu   $t7, ($s0)
/* 039EAC 800392AC 31EE4000 */  andi  $t6, $t7, 0x4000
/* 039EB0 800392B0 55C10018 */  bnel  $t6, $at, .L80039314
/* 039EB4 800392B4 860A0044 */   lh    $t2, 0x44($s0)
/* 039EB8 800392B8 96190254 */  lhu   $t9, 0x254($s0)
/* 039EBC 800392BC 25082690 */  addiu $t0, %lo(gKartTopSpeedTable) # addiu $t0, $t0, 0x2690
/* 039EC0 800392C0 C6020094 */  lwc1  $f2, 0x94($s0)
/* 039EC4 800392C4 0019C080 */  sll   $t8, $t9, 2
/* 039EC8 800392C8 03081021 */  addu  $v0, $t8, $t0
/* 039ECC 800392CC C44C0000 */  lwc1  $f12, ($v0)
/* 039ED0 800392D0 4602603C */  c.lt.s $f12, $f2
/* 039ED4 800392D4 00000000 */  nop   
/* 039ED8 800392D8 4502000E */  bc1fl .L80039314
/* 039EDC 800392DC 860A0044 */   lh    $t2, 0x44($s0)
/* 039EE0 800392E0 46026003 */  div.s $f0, $f12, $f2
/* 039EE4 800392E4 C6040034 */  lwc1  $f4, 0x34($s0)
/* 039EE8 800392E8 C6060038 */  lwc1  $f6, 0x38($s0)
/* 039EEC 800392EC 46002202 */  mul.s $f8, $f4, $f0
/* 039EF0 800392F0 C604003C */  lwc1  $f4, 0x3c($s0)
/* 039EF4 800392F4 46003282 */  mul.s $f10, $f6, $f0
/* 039EF8 800392F8 E6080034 */  swc1  $f8, 0x34($s0)
/* 039EFC 800392FC 46002202 */  mul.s $f8, $f4, $f0
/* 039F00 80039300 E60A0038 */  swc1  $f10, 0x38($s0)
/* 039F04 80039304 E608003C */  swc1  $f8, 0x3c($s0)
/* 039F08 80039308 C4460000 */  lwc1  $f6, ($v0)
/* 039F0C 8003930C E6060094 */  swc1  $f6, 0x94($s0)
/* 039F10 80039310 860A0044 */  lh    $t2, 0x44($s0)
.L80039314:
/* 039F14 80039314 24010001 */  li    $at, 1
/* 039F18 80039318 31490001 */  andi  $t1, $t2, 1
/* 039F1C 8003931C 15210012 */  bne   $t1, $at, .L80039368
/* 039F20 80039320 3C013F80 */   li    $at, 0x3F800000 # 1.000000
/* 039F24 80039324 44816000 */  mtc1  $at, $f12
/* 039F28 80039328 C6020094 */  lwc1  $f2, 0x94($s0)
/* 039F2C 8003932C 4602603C */  c.lt.s $f12, $f2
/* 039F30 80039330 00000000 */  nop   
/* 039F34 80039334 4502000D */  bc1fl .L8003936C
/* 039F38 80039338 3C0143FA */   lui   $at, 0x43fa
/* 039F3C 8003933C 46026003 */  div.s $f0, $f12, $f2
/* 039F40 80039340 C60A0034 */  lwc1  $f10, 0x34($s0)
/* 039F44 80039344 C6080038 */  lwc1  $f8, 0x38($s0)
/* 039F48 80039348 E60C0094 */  swc1  $f12, 0x94($s0)
/* 039F4C 8003934C 46005102 */  mul.s $f4, $f10, $f0
/* 039F50 80039350 C60A003C */  lwc1  $f10, 0x3c($s0)
/* 039F54 80039354 46004182 */  mul.s $f6, $f8, $f0
/* 039F58 80039358 E6040034 */  swc1  $f4, 0x34($s0)
/* 039F5C 8003935C 46005102 */  mul.s $f4, $f10, $f0
/* 039F60 80039360 E6060038 */  swc1  $f6, 0x38($s0)
/* 039F64 80039364 E604003C */  swc1  $f4, 0x3c($s0)
.L80039368:
/* 039F68 80039368 3C0143FA */  li    $at, 0x43FA0000 # 500.000000
.L8003936C:
/* 039F6C 8003936C 44813000 */  mtc1  $at, $f6
/* 039F70 80039370 C6080124 */  lwc1  $f8, 0x124($s0)
/* 039F74 80039374 4608303E */  c.le.s $f6, $f8
/* 039F78 80039378 00000000 */  nop   
/* 039F7C 8003937C 45000007 */  bc1f  .L8003939C
/* 039F80 80039380 00000000 */   nop   
/* 039F84 80039384 860C0078 */  lh    $t4, 0x78($s0)
/* 039F88 80039388 05810003 */  bgez  $t4, .L80039398
/* 039F8C 8003938C 000C5843 */   sra   $t3, $t4, 1
/* 039F90 80039390 25810001 */  addiu $at, $t4, 1
/* 039F94 80039394 00015843 */  sra   $t3, $at, 1
.L80039398:
/* 039F98 80039398 A60B0078 */  sh    $t3, 0x78($s0)
.L8003939C:
/* 039F9C 8003939C 0C00B13E */  jal   func_8002C4F8
/* 039FA0 800393A0 83A5012F */   lb    $a1, 0x12f($sp)
/* 039FA4 800393A4 8FBF0034 */  lw    $ra, 0x34($sp)
/* 039FA8 800393A8 D7B40028 */  ldc1  $f20, 0x28($sp)
/* 039FAC 800393AC 8FB00030 */  lw    $s0, 0x30($sp)
/* 039FB0 800393B0 03E00008 */  jr    $ra
/* 039FB4 800393B4 27BD0120 */   addiu $sp, $sp, 0x120

/* 039FB8 800393B8 00000000 */  nop   
