glabel func_80063D58
/* 064958 80063D58 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 06495C 80063D5C 00057400 */  sll   $t6, $a1, 0x10
/* 064960 80063D60 000E7C03 */  sra   $t7, $t6, 0x10
/* 064964 80063D64 000FC0C0 */  sll   $t8, $t7, 3
/* 064968 80063D68 030FC021 */  addu  $t8, $t8, $t7
/* 06496C 80063D6C AFB00014 */  sw    $s0, 0x14($sp)
/* 064970 80063D70 0018C0C0 */  sll   $t8, $t8, 3
/* 064974 80063D74 AFBF001C */  sw    $ra, 0x1c($sp)
/* 064978 80063D78 AFB10018 */  sw    $s1, 0x18($sp)
/* 06497C 80063D7C AFA50024 */  sw    $a1, 0x24($sp)
/* 064980 80063D80 AFA60028 */  sw    $a2, 0x28($sp)
/* 064984 80063D84 AFA7002C */  sw    $a3, 0x2c($sp)
/* 064988 80063D88 00988021 */  addu  $s0, $a0, $t8
/* 06498C 80063D8C 96190538 */  lhu   $t9, 0x538($s0)
/* 064990 80063D90 24010001 */  li    $at, 1
/* 064994 80063D94 00808825 */  move  $s1, $a0
/* 064998 80063D98 1721002E */  bne   $t9, $at, .L80063E54
/* 06499C 80063D9C 00000000 */   nop   
/* 0649A0 80063DA0 0C0AE00E */  jal   func_802B8038
/* 0649A4 80063DA4 96040548 */   lhu   $a0, 0x548($s0)
/* 0649A8 80063DA8 3C014190 */  li    $at, 0x41900000 # 18.000000
/* 0649AC 80063DAC 44813000 */  mtc1  $at, $f6
/* 0649B0 80063DB0 C6240094 */  lwc1  $f4, 0x94($s1)
/* 0649B4 80063DB4 86080546 */  lh    $t0, 0x546($s0)
/* 0649B8 80063DB8 3C014358 */  li    $at, 0x43580000 # 216.000000
/* 0649BC 80063DBC 46062203 */  div.s $f8, $f4, $f6
/* 0649C0 80063DC0 00084823 */  negu  $t1, $t0
/* 0649C4 80063DC4 44895000 */  mtc1  $t1, $f10
/* 0649C8 80063DC8 44812000 */  mtc1  $at, $f4
/* 0649CC 80063DCC 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 0649D0 80063DD0 46805420 */  cvt.s.w $f16, $f10
/* 0649D4 80063DD4 44815000 */  mtc1  $at, $f10
/* 0649D8 80063DD8 96040548 */  lhu   $a0, 0x548($s0)
/* 0649DC 80063DDC 46088482 */  mul.s $f18, $f16, $f8
/* 0649E0 80063DE0 00000000 */  nop   
/* 0649E4 80063DE4 46049182 */  mul.s $f6, $f18, $f4
/* 0649E8 80063DE8 C63201D0 */  lwc1  $f18, 0x1d0($s1)
/* 0649EC 80063DEC 460A3403 */  div.s $f16, $f6, $f10
/* 0649F0 80063DF0 46100202 */  mul.s $f8, $f0, $f16
/* 0649F4 80063DF4 46124100 */  add.s $f4, $f8, $f18
/* 0649F8 80063DF8 0C0AE006 */  jal   func_802B8018
/* 0649FC 80063DFC E6040530 */   swc1  $f4, 0x530($s0)
/* 064A00 80063E00 3C014190 */  li    $at, 0x41900000 # 18.000000
/* 064A04 80063E04 44815000 */  mtc1  $at, $f10
/* 064A08 80063E08 C6260094 */  lwc1  $f6, 0x94($s1)
/* 064A0C 80063E0C 86020546 */  lh    $v0, 0x546($s0)
/* 064A10 80063E10 3C014358 */  li    $at, 0x43580000 # 216.000000
/* 064A14 80063E14 460A3403 */  div.s $f16, $f6, $f10
/* 064A18 80063E18 00025023 */  negu  $t2, $v0
/* 064A1C 80063E1C 448A4000 */  mtc1  $t2, $f8
/* 064A20 80063E20 44813000 */  mtc1  $at, $f6
/* 064A24 80063E24 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 064A28 80063E28 468044A0 */  cvt.s.w $f18, $f8
/* 064A2C 80063E2C 44814000 */  mtc1  $at, $f8
/* 064A30 80063E30 46109102 */  mul.s $f4, $f18, $f16
/* 064A34 80063E34 00000000 */  nop   
/* 064A38 80063E38 46062282 */  mul.s $f10, $f4, $f6
/* 064A3C 80063E3C C62401C8 */  lwc1  $f4, 0x1c8($s1)
/* 064A40 80063E40 46085483 */  div.s $f18, $f10, $f8
/* 064A44 80063E44 46120402 */  mul.s $f16, $f0, $f18
/* 064A48 80063E48 46048180 */  add.s $f6, $f16, $f4
/* 064A4C 80063E4C 1000002D */  b     .L80063F04
/* 064A50 80063E50 E6060528 */   swc1  $f6, 0x528($s0)
.L80063E54:
/* 064A54 80063E54 0C0AE00E */  jal   func_802B8038
/* 064A58 80063E58 96040548 */   lhu   $a0, 0x548($s0)
/* 064A5C 80063E5C 3C014190 */  li    $at, 0x41900000 # 18.000000
/* 064A60 80063E60 44814000 */  mtc1  $at, $f8
/* 064A64 80063E64 C62A0094 */  lwc1  $f10, 0x94($s1)
/* 064A68 80063E68 860B0546 */  lh    $t3, 0x546($s0)
/* 064A6C 80063E6C 3C014358 */  li    $at, 0x43580000 # 216.000000
/* 064A70 80063E70 46085483 */  div.s $f18, $f10, $f8
/* 064A74 80063E74 000B6023 */  negu  $t4, $t3
/* 064A78 80063E78 448C8000 */  mtc1  $t4, $f16
/* 064A7C 80063E7C 44815000 */  mtc1  $at, $f10
/* 064A80 80063E80 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 064A84 80063E84 46808120 */  cvt.s.w $f4, $f16
/* 064A88 80063E88 44818000 */  mtc1  $at, $f16
/* 064A8C 80063E8C 96040548 */  lhu   $a0, 0x548($s0)
/* 064A90 80063E90 46122182 */  mul.s $f6, $f4, $f18
/* 064A94 80063E94 00000000 */  nop   
/* 064A98 80063E98 460A3202 */  mul.s $f8, $f6, $f10
/* 064A9C 80063E9C C62601E8 */  lwc1  $f6, 0x1e8($s1)
/* 064AA0 80063EA0 46104103 */  div.s $f4, $f8, $f16
/* 064AA4 80063EA4 46040482 */  mul.s $f18, $f0, $f4
/* 064AA8 80063EA8 46069280 */  add.s $f10, $f18, $f6
/* 064AAC 80063EAC 0C0AE006 */  jal   func_802B8018
/* 064AB0 80063EB0 E60A0530 */   swc1  $f10, 0x530($s0)
/* 064AB4 80063EB4 3C014190 */  li    $at, 0x41900000 # 18.000000
/* 064AB8 80063EB8 44818000 */  mtc1  $at, $f16
/* 064ABC 80063EBC C6280094 */  lwc1  $f8, 0x94($s1)
/* 064AC0 80063EC0 86020546 */  lh    $v0, 0x546($s0)
/* 064AC4 80063EC4 3C014358 */  li    $at, 0x43580000 # 216.000000
/* 064AC8 80063EC8 46104103 */  div.s $f4, $f8, $f16
/* 064ACC 80063ECC 00026823 */  negu  $t5, $v0
/* 064AD0 80063ED0 448D9000 */  mtc1  $t5, $f18
/* 064AD4 80063ED4 44814000 */  mtc1  $at, $f8
/* 064AD8 80063ED8 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 064ADC 80063EDC 468091A0 */  cvt.s.w $f6, $f18
/* 064AE0 80063EE0 44819000 */  mtc1  $at, $f18
/* 064AE4 80063EE4 46043282 */  mul.s $f10, $f6, $f4
/* 064AE8 80063EE8 00000000 */  nop   
/* 064AEC 80063EEC 46085402 */  mul.s $f16, $f10, $f8
/* 064AF0 80063EF0 C62A01E0 */  lwc1  $f10, 0x1e0($s1)
/* 064AF4 80063EF4 46128183 */  div.s $f6, $f16, $f18
/* 064AF8 80063EF8 46060102 */  mul.s $f4, $f0, $f6
/* 064AFC 80063EFC 460A2200 */  add.s $f8, $f4, $f10
/* 064B00 80063F00 E6080528 */  swc1  $f8, 0x528($s0)
.L80063F04:
/* 064B04 80063F04 244E0001 */  addiu $t6, $v0, 1
/* 064B08 80063F08 A60E0546 */  sh    $t6, 0x546($s0)
/* 064B0C 80063F0C 86020546 */  lh    $v0, 0x546($s0)
/* 064B10 80063F10 24010008 */  li    $at, 8
/* 064B14 80063F14 54410006 */  bnel  $v0, $at, .L80063F30
/* 064B18 80063F18 C6100534 */   lwc1  $f16, 0x534($s0)
/* 064B1C 80063F1C A6000546 */  sh    $zero, 0x546($s0)
/* 064B20 80063F20 A6000544 */  sh    $zero, 0x544($s0)
/* 064B24 80063F24 86020546 */  lh    $v0, 0x546($s0)
/* 064B28 80063F28 A600053A */  sh    $zero, 0x53a($s0)
/* 064B2C 80063F2C C6100534 */  lwc1  $f16, 0x534($s0)
.L80063F30:
/* 064B30 80063F30 3C01800F */  lui   $at, %hi(D_800EE6B0)
/* 064B34 80063F34 D426E6B0 */  ldc1  $f6, %lo(D_800EE6B0)($at)
/* 064B38 80063F38 460084A1 */  cvt.d.s $f18, $f16
/* 064B3C 80063F3C 28410004 */  slti  $at, $v0, 4
/* 064B40 80063F40 46269100 */  add.d $f4, $f18, $f6
/* 064B44 80063F44 462022A0 */  cvt.s.d $f10, $f4
/* 064B48 80063F48 1420000C */  bnez  $at, .L80063F7C
/* 064B4C 80063F4C E60A0534 */   swc1  $f10, 0x534($s0)
/* 064B50 80063F50 860F0566 */  lh    $t7, 0x566($s0)
/* 064B54 80063F54 C608052C */  lwc1  $f8, 0x52c($s0)
/* 064B58 80063F58 3C01800F */  lui   $at, %hi(D_800EE6B8)
/* 064B5C 80063F5C 25F8FFEE */  addiu $t8, $t7, -0x12
/* 064B60 80063F60 A6180566 */  sh    $t8, 0x566($s0)
/* 064B64 80063F64 D432E6B8 */  ldc1  $f18, %lo(D_800EE6B8)($at)
/* 064B68 80063F68 46004421 */  cvt.d.s $f16, $f8
/* 064B6C 80063F6C 46328181 */  sub.d $f6, $f16, $f18
/* 064B70 80063F70 46203120 */  cvt.s.d $f4, $f6
/* 064B74 80063F74 10000008 */  b     .L80063F98
/* 064B78 80063F78 E604052C */   swc1  $f4, 0x52c($s0)
.L80063F7C:
/* 064B7C 80063F7C C60A052C */  lwc1  $f10, 0x52c($s0)
/* 064B80 80063F80 3C01800F */  lui   $at, %hi(D_800EE6C0)
/* 064B84 80063F84 D430E6C0 */  ldc1  $f16, %lo(D_800EE6C0)($at)
/* 064B88 80063F88 46005221 */  cvt.d.s $f8, $f10
/* 064B8C 80063F8C 46304480 */  add.d $f18, $f8, $f16
/* 064B90 80063F90 462091A0 */  cvt.s.d $f6, $f18
/* 064B94 80063F94 E606052C */  swc1  $f6, 0x52c($s0)
.L80063F98:
/* 064B98 80063F98 86190566 */  lh    $t9, 0x566($s0)
/* 064B9C 80063F9C 5F200003 */  bgtzl $t9, .L80063FAC
/* 064BA0 80063FA0 8FBF001C */   lw    $ra, 0x1c($sp)
/* 064BA4 80063FA4 A6000566 */  sh    $zero, 0x566($s0)
/* 064BA8 80063FA8 8FBF001C */  lw    $ra, 0x1c($sp)
.L80063FAC:
/* 064BAC 80063FAC 8FB00014 */  lw    $s0, 0x14($sp)
/* 064BB0 80063FB0 8FB10018 */  lw    $s1, 0x18($sp)
/* 064BB4 80063FB4 03E00008 */  jr    $ra
/* 064BB8 80063FB8 27BD0020 */   addiu $sp, $sp, 0x20

/* 064BBC 80063FBC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 064BC0 80063FC0 00057400 */  sll   $t6, $a1, 0x10
/* 064BC4 80063FC4 000E7C03 */  sra   $t7, $t6, 0x10
/* 064BC8 80063FC8 000FC0C0 */  sll   $t8, $t7, 3
/* 064BCC 80063FCC 030FC021 */  addu  $t8, $t8, $t7
/* 064BD0 80063FD0 0018C0C0 */  sll   $t8, $t8, 3
/* 064BD4 80063FD4 AFBF002C */  sw    $ra, 0x2c($sp)
/* 064BD8 80063FD8 AFB00028 */  sw    $s0, 0x28($sp)
/* 064BDC 80063FDC AFA50044 */  sw    $a1, 0x44($sp)
/* 064BE0 80063FE0 AFA60048 */  sw    $a2, 0x48($sp)
/* 064BE4 80063FE4 AFA7004C */  sw    $a3, 0x4c($sp)
/* 064BE8 80063FE8 00981021 */  addu  $v0, $a0, $t8
/* 064BEC 80063FEC 94590538 */  lhu   $t9, 0x538($v0)
/* 064BF0 80063FF0 24010001 */  li    $at, 1
/* 064BF4 80063FF4 00808025 */  move  $s0, $a0
/* 064BF8 80063FF8 57210025 */  bnel  $t9, $at, .L80064090
/* 064BFC 80063FFC 44803000 */   mtc1  $zero, $f6
/* 064C00 80064000 44802000 */  mtc1  $zero, $f4
/* 064C04 80064004 3C014190 */  li    $at, 0x41900000 # 18.000000
/* 064C08 80064008 44814000 */  mtc1  $at, $f8
/* 064C0C 8006400C E7A40010 */  swc1  $f4, 0x10($sp)
/* 064C10 80064010 C6060094 */  lwc1  $f6, 0x94($s0)
/* 064C14 80064014 3C014358 */  li    $at, 0x43580000 # 216.000000
/* 064C18 80064018 44818000 */  mtc1  $at, $f16
/* 064C1C 8006401C 46083283 */  div.s $f10, $f6, $f8
/* 064C20 80064020 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 064C24 80064024 44812000 */  mtc1  $at, $f4
/* 064C28 80064028 84480546 */  lh    $t0, 0x546($v0)
/* 064C2C 8006402C 3C01C016 */  li    $at, 0xC0160000 # -2.343750
/* 064C30 80064030 44812800 */  mtc1  $at, $f5
/* 064C34 80064034 44884000 */  mtc1  $t0, $f8
/* 064C38 80064038 27A4003C */  addiu $a0, $sp, 0x3c
/* 064C3C 8006403C 27A50034 */  addiu $a1, $sp, 0x34
/* 064C40 80064040 27A60038 */  addiu $a2, $sp, 0x38
/* 064C44 80064044 3C074040 */  lui   $a3, 0x4040
/* 064C48 80064048 46105482 */  mul.s $f18, $f10, $f16
/* 064C4C 8006404C 468042A0 */  cvt.s.w $f10, $f8
/* 064C50 80064050 46049183 */  div.s $f6, $f18, $f4
/* 064C54 80064054 44802000 */  mtc1  $zero, $f4
/* 064C58 80064058 46065402 */  mul.s $f16, $f10, $f6
/* 064C5C 8006405C 460084A1 */  cvt.d.s $f18, $f16
/* 064C60 80064060 46322201 */  sub.d $f8, $f4, $f18
/* 064C64 80064064 462042A0 */  cvt.s.d $f10, $f8
/* 064C68 80064068 E7AA0014 */  swc1  $f10, 0x14($sp)
/* 064C6C 8006406C 84490548 */  lh    $t1, 0x548($v0)
/* 064C70 80064070 AFA20030 */  sw    $v0, 0x30($sp)
/* 064C74 80064074 AFA0001C */  sw    $zero, 0x1c($sp)
/* 064C78 80064078 00095023 */  negu  $t2, $t1
/* 064C7C 8006407C 0C018AC6 */  jal   func_80062B18
/* 064C80 80064080 AFAA0018 */   sw    $t2, 0x18($sp)
/* 064C84 80064084 10000023 */  b     .L80064114
/* 064C88 80064088 8FA20030 */   lw    $v0, 0x30($sp)
/* 064C8C 8006408C 44803000 */  mtc1  $zero, $f6
.L80064090:
/* 064C90 80064090 3C014190 */  li    $at, 0x41900000 # 18.000000
/* 064C94 80064094 44812000 */  mtc1  $at, $f4
/* 064C98 80064098 E7A60010 */  swc1  $f6, 0x10($sp)
/* 064C9C 8006409C C6100094 */  lwc1  $f16, 0x94($s0)
/* 064CA0 800640A0 3C014358 */  li    $at, 0x43580000 # 216.000000
/* 064CA4 800640A4 44814000 */  mtc1  $at, $f8
/* 064CA8 800640A8 46048483 */  div.s $f18, $f16, $f4
/* 064CAC 800640AC 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 064CB0 800640B0 44813000 */  mtc1  $at, $f6
/* 064CB4 800640B4 844B0546 */  lh    $t3, 0x546($v0)
/* 064CB8 800640B8 3C01C016 */  li    $at, 0xC0160000 # -2.343750
/* 064CBC 800640BC 44813800 */  mtc1  $at, $f7
/* 064CC0 800640C0 448B2000 */  mtc1  $t3, $f4
/* 064CC4 800640C4 27A4003C */  addiu $a0, $sp, 0x3c
/* 064CC8 800640C8 27A50034 */  addiu $a1, $sp, 0x34
/* 064CCC 800640CC 27A60038 */  addiu $a2, $sp, 0x38
/* 064CD0 800640D0 3C07C040 */  lui   $a3, 0xc040
/* 064CD4 800640D4 46089282 */  mul.s $f10, $f18, $f8
/* 064CD8 800640D8 468024A0 */  cvt.s.w $f18, $f4
/* 064CDC 800640DC 46065403 */  div.s $f16, $f10, $f6
/* 064CE0 800640E0 44803000 */  mtc1  $zero, $f6
/* 064CE4 800640E4 46109202 */  mul.s $f8, $f18, $f16
/* 064CE8 800640E8 460042A1 */  cvt.d.s $f10, $f8
/* 064CEC 800640EC 462A3101 */  sub.d $f4, $f6, $f10
/* 064CF0 800640F0 462024A0 */  cvt.s.d $f18, $f4
/* 064CF4 800640F4 E7B20014 */  swc1  $f18, 0x14($sp)
/* 064CF8 800640F8 844C0548 */  lh    $t4, 0x548($v0)
/* 064CFC 800640FC AFA20030 */  sw    $v0, 0x30($sp)
/* 064D00 80064100 AFA0001C */  sw    $zero, 0x1c($sp)
/* 064D04 80064104 000C6823 */  negu  $t5, $t4
/* 064D08 80064108 0C018AC6 */  jal   func_80062B18
/* 064D0C 8006410C AFAD0018 */   sw    $t5, 0x18($sp)
/* 064D10 80064110 8FA20030 */  lw    $v0, 0x30($sp)
.L80064114:
/* 064D14 80064114 C6100014 */  lwc1  $f16, 0x14($s0)
/* 064D18 80064118 C7A8003C */  lwc1  $f8, 0x3c($sp)
/* 064D1C 8006411C 844E0546 */  lh    $t6, 0x546($v0)
/* 064D20 80064120 24010006 */  li    $at, 6
/* 064D24 80064124 46088180 */  add.s $f6, $f16, $f8
/* 064D28 80064128 25CF0001 */  addiu $t7, $t6, 1
/* 064D2C 8006412C E4460528 */  swc1  $f6, 0x528($v0)
/* 064D30 80064130 C7A40038 */  lwc1  $f4, 0x38($sp)
/* 064D34 80064134 C60A001C */  lwc1  $f10, 0x1c($s0)
/* 064D38 80064138 46045480 */  add.s $f18, $f10, $f4
/* 064D3C 8006413C E4520530 */  swc1  $f18, 0x530($v0)
/* 064D40 80064140 C6080070 */  lwc1  $f8, 0x70($s0)
/* 064D44 80064144 C6100018 */  lwc1  $f16, 0x18($s0)
/* 064D48 80064148 C7AA0034 */  lwc1  $f10, 0x34($sp)
/* 064D4C 8006414C A44F0546 */  sh    $t7, 0x546($v0)
/* 064D50 80064150 46088181 */  sub.s $f6, $f16, $f8
/* 064D54 80064154 84580546 */  lh    $t8, 0x546($v0)
/* 064D58 80064158 460A3100 */  add.s $f4, $f6, $f10
/* 064D5C 8006415C 17010004 */  bne   $t8, $at, .L80064170
/* 064D60 80064160 E444052C */   swc1  $f4, 0x52c($v0)
/* 064D64 80064164 A4400544 */  sh    $zero, 0x544($v0)
/* 064D68 80064168 A4400546 */  sh    $zero, 0x546($v0)
/* 064D6C 8006416C A440053A */  sh    $zero, 0x53a($v0)
.L80064170:
/* 064D70 80064170 8FBF002C */  lw    $ra, 0x2c($sp)
/* 064D74 80064174 8FB00028 */  lw    $s0, 0x28($sp)
/* 064D78 80064178 27BD0040 */  addiu $sp, $sp, 0x40
/* 064D7C 8006417C 03E00008 */  jr    $ra
/* 064D80 80064180 00000000 */   nop   
