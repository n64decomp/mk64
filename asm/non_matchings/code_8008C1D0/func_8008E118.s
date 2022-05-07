glabel func_8008E118
/* 08ED18 8008E118 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 08ED1C 8008E11C AFBF001C */  sw    $ra, 0x1c($sp)
/* 08ED20 8008E120 AFB00018 */  sw    $s0, 0x18($sp)
/* 08ED24 8008E124 AFA50024 */  sw    $a1, 0x24($sp)
/* 08ED28 8008E128 8C8200BC */  lw    $v0, 0xbc($a0)
/* 08ED2C 8008E12C 00053600 */  sll   $a2, $a1, 0x18
/* 08ED30 8008E130 00067603 */  sra   $t6, $a2, 0x18
/* 08ED34 8008E134 34018000 */  li    $at, 32768
/* 08ED38 8008E138 304F8000 */  andi  $t7, $v0, 0x8000
/* 08ED3C 8008E13C 01C03025 */  move  $a2, $t6
/* 08ED40 8008E140 15E10023 */  bne   $t7, $at, .L8008E1D0
/* 08ED44 8008E144 00808025 */   move  $s0, $a0
/* 08ED48 8008E148 3C030400 */  lui   $v1, 0x400
/* 08ED4C 8008E14C 0043C024 */  and   $t8, $v0, $v1
/* 08ED50 8008E150 1078001F */  beq   $v1, $t8, .L8008E1D0
/* 08ED54 8008E154 3C01FFFD */   lui   $at, (0xFFFDFFFF >> 16) # lui $at, 0xfffd
/* 08ED58 8008E158 848800AE */  lh    $t0, 0xae($a0)
/* 08ED5C 8008E15C 3421FFFF */  ori   $at, (0xFFFDFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 08ED60 8008E160 0041C824 */  and   $t9, $v0, $at
/* 08ED64 8008E164 000E2E00 */  sll   $a1, $t6, 0x18
/* 08ED68 8008E168 AC9900BC */  sw    $t9, 0xbc($a0)
/* 08ED6C 8008E16C A48000A8 */  sh    $zero, 0xa8($a0)
/* 08ED70 8008E170 AC80007C */  sw    $zero, 0x7c($a0)
/* 08ED74 8008E174 A48000C0 */  sh    $zero, 0xc0($a0)
/* 08ED78 8008E178 00054E03 */  sra   $t1, $a1, 0x18
/* 08ED7C 8008E17C A488002E */  sh    $t0, 0x2e($a0)
/* 08ED80 8008E180 A3AE0027 */  sb    $t6, 0x27($sp)
/* 08ED84 8008E184 0C0238F0 */  jal   func_8008E3C0
/* 08ED88 8008E188 01202825 */   move  $a1, $t1
/* 08ED8C 8008E18C 83A60027 */  lb    $a2, 0x27($sp)
/* 08ED90 8008E190 3C0B8016 */  lui   $t3, %hi(D_80165190) # $t3, 0x8016
/* 08ED94 8008E194 256B5190 */  addiu $t3, %lo(D_80165190) # addiu $t3, $t3, 0x5190
/* 08ED98 8008E198 00065040 */  sll   $t2, $a2, 1
/* 08ED9C 8008E19C 24030001 */  li    $v1, 1
/* 08EDA0 8008E1A0 014B1021 */  addu  $v0, $t2, $t3
/* 08EDA4 8008E1A4 00062E00 */  sll   $a1, $a2, 0x18
/* 08EDA8 8008E1A8 00056603 */  sra   $t4, $a1, 0x18
/* 08EDAC 8008E1AC A4430000 */  sh    $v1, ($v0)
/* 08EDB0 8008E1B0 A4430010 */  sh    $v1, 0x10($v0)
/* 08EDB4 8008E1B4 A4430020 */  sh    $v1, 0x20($v0)
/* 08EDB8 8008E1B8 A4430030 */  sh    $v1, 0x30($v0)
/* 08EDBC 8008E1BC 01802825 */  move  $a1, $t4
/* 08EDC0 8008E1C0 0C0236AF */  jal   func_8008DABC
/* 08EDC4 8008E1C4 02002025 */   move  $a0, $s0
/* 08EDC8 8008E1C8 10000079 */  b     .L8008E3B0
/* 08EDCC 8008E1CC 8FBF001C */   lw    $ra, 0x1c($sp)
.L8008E1D0:
/* 08EDD0 8008E1D0 3C030002 */  lui   $v1, 2
/* 08EDD4 8008E1D4 00436824 */  and   $t5, $v0, $v1
/* 08EDD8 8008E1D8 146D002D */  bne   $v1, $t5, .L8008E290
/* 08EDDC 8008E1DC 00062040 */   sll   $a0, $a2, 1
/* 08EDE0 8008E1E0 860E002E */  lh    $t6, 0x2e($s0)
/* 08EDE4 8008E1E4 3C188019 */  lui   $t8, %hi(D_8018D920) # $t8, 0x8019
/* 08EDE8 8008E1E8 2718D920 */  addiu $t8, %lo(D_8018D920) # addiu $t8, $t8, -0x26e0
/* 08EDEC 8008E1EC 25CFFA50 */  addiu $t7, $t6, -0x5b0
/* 08EDF0 8008E1F0 A60F002E */  sh    $t7, 0x2e($s0)
/* 08EDF4 8008E1F4 00981021 */  addu  $v0, $a0, $t8
/* 08EDF8 8008E1F8 84590000 */  lh    $t9, ($v0)
/* 08EDFC 8008E1FC 240105B0 */  li    $at, 1456
/* 08EE00 8008E200 3C053F80 */  lui   $a1, 0x3f80
/* 08EE04 8008E204 2728FA50 */  addiu $t0, $t9, -0x5b0
/* 08EE08 8008E208 3103FFFF */  andi  $v1, $t0, 0xffff
/* 08EE0C 8008E20C 0061001A */  div   $zero, $v1, $at
/* 08EE10 8008E210 00004812 */  mflo  $t1
/* 08EE14 8008E214 00095400 */  sll   $t2, $t1, 0x10
/* 08EE18 8008E218 000A5C03 */  sra   $t3, $t2, 0x10
/* 08EE1C 8008E21C 15600018 */  bnez  $t3, .L8008E280
/* 08EE20 8008E220 A4480000 */   sh    $t0, ($v0)
/* 08EE24 8008E224 860C00B2 */  lh    $t4, 0xb2($s0)
/* 08EE28 8008E228 3C01FFFD */  lui   $at, (0xFFFDFFFF >> 16) # lui $at, 0xfffd
/* 08EE2C 8008E22C 3C088016 */  lui   $t0, %hi(D_80165190) # $t0, 0x8016
/* 08EE30 8008E230 258DFFFF */  addiu $t5, $t4, -1
/* 08EE34 8008E234 A60D00B2 */  sh    $t5, 0xb2($s0)
/* 08EE38 8008E238 860E00B2 */  lh    $t6, 0xb2($s0)
/* 08EE3C 8008E23C 24030001 */  li    $v1, 1
/* 08EE40 8008E240 3421FFFF */  ori   $at, (0xFFFDFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 08EE44 8008E244 1DC0000E */  bgtz  $t6, .L8008E280
/* 08EE48 8008E248 25085190 */   addiu $t0, %lo(D_80165190) # addiu $t0, $t0, 0x5190
/* 08EE4C 8008E24C 8E0F00BC */  lw    $t7, 0xbc($s0)
/* 08EE50 8008E250 861900AE */  lh    $t9, 0xae($s0)
/* 08EE54 8008E254 A60000A8 */  sh    $zero, 0xa8($s0)
/* 08EE58 8008E258 01E1C024 */  and   $t8, $t7, $at
/* 08EE5C 8008E25C AE1800BC */  sw    $t8, 0xbc($s0)
/* 08EE60 8008E260 AE00007C */  sw    $zero, 0x7c($s0)
/* 08EE64 8008E264 A60000C0 */  sh    $zero, 0xc0($s0)
/* 08EE68 8008E268 00881021 */  addu  $v0, $a0, $t0
/* 08EE6C 8008E26C A619002E */  sh    $t9, 0x2e($s0)
/* 08EE70 8008E270 A4430000 */  sh    $v1, ($v0)
/* 08EE74 8008E274 A4430010 */  sh    $v1, 0x10($v0)
/* 08EE78 8008E278 A4430020 */  sh    $v1, 0x20($v0)
/* 08EE7C 8008E27C A4430030 */  sh    $v1, 0x30($v0)
.L8008E280:
/* 08EE80 8008E280 0C00C7D2 */  jal   func_80031F48
/* 08EE84 8008E284 02002025 */   move  $a0, $s0
/* 08EE88 8008E288 10000049 */  b     .L8008E3B0
/* 08EE8C 8008E28C 8FBF001C */   lw    $ra, 0x1c($sp)
.L8008E290:
/* 08EE90 8008E290 860900B0 */  lh    $t1, 0xb0($s0)
/* 08EE94 8008E294 C604008C */  lwc1  $f4, 0x8c($s0)
/* 08EE98 8008E298 3C01800F */  lui   $at, %hi(D_800EF590)
/* 08EE9C 8008E29C 252A0001 */  addiu $t2, $t1, 1
/* 08EEA0 8008E2A0 A60A00B0 */  sh    $t2, 0xb0($s0)
/* 08EEA4 8008E2A4 D428F590 */  ldc1  $f8, %lo(D_800EF590)($at)
/* 08EEA8 8008E2A8 460021A1 */  cvt.d.s $f6, $f4
/* 08EEAC 8008E2AC 860200B0 */  lh    $v0, 0xb0($s0)
/* 08EEB0 8008E2B0 46283282 */  mul.d $f10, $f6, $f8
/* 08EEB4 8008E2B4 24030001 */  li    $v1, 1
/* 08EEB8 8008E2B8 46205420 */  cvt.s.d $f16, $f10
/* 08EEBC 8008E2BC 1462000F */  bne   $v1, $v0, .L8008E2FC
/* 08EEC0 8008E2C0 E610008C */   swc1  $f16, 0x8c($s0)
/* 08EEC4 8008E2C4 960B0000 */  lhu   $t3, ($s0)
/* 08EEC8 8008E2C8 30C400FF */  andi  $a0, $a2, 0xff
/* 08EECC 8008E2CC 3C012900 */  lui   $at, (0x29008005 >> 16) # lui $at, 0x2900
/* 08EED0 8008E2D0 316C4000 */  andi  $t4, $t3, 0x4000
/* 08EED4 8008E2D4 11800009 */  beqz  $t4, .L8008E2FC
/* 08EED8 8008E2D8 00000000 */   nop   
/* 08EEDC 8008E2DC 96050254 */  lhu   $a1, 0x254($s0)
/* 08EEE0 8008E2E0 34218005 */  ori   $at, (0x29008005 & 0xFFFF) # ori $at, $at, 0x8005
/* 08EEE4 8008E2E4 A3A60027 */  sb    $a2, 0x27($sp)
/* 08EEE8 8008E2E8 00056900 */  sll   $t5, $a1, 4
/* 08EEEC 8008E2EC 0C03243D */  jal   func_800C90F4
/* 08EEF0 8008E2F0 01A12821 */   addu  $a1, $t5, $at
/* 08EEF4 8008E2F4 83A60027 */  lb    $a2, 0x27($sp)
/* 08EEF8 8008E2F8 860200B0 */  lh    $v0, 0xb0($s0)
.L8008E2FC:
/* 08EEFC 8008E2FC 0440001A */  bltz  $v0, .L8008E368
/* 08EF00 8008E300 284101CC */   slti  $at, $v0, 0x1cc
/* 08EF04 8008E304 10200018 */  beqz  $at, .L8008E368
/* 08EF08 8008E308 26040224 */   addiu $a0, $s0, 0x224
/* 08EF0C 8008E30C 3C053F33 */  lui   $a1, (0x3F333333 >> 16) # lui $a1, 0x3f33
/* 08EF10 8008E310 3C063DCC */  lui   $a2, (0x3DCCCCCD >> 16) # lui $a2, 0x3dcc
/* 08EF14 8008E314 34C6CCCD */  ori   $a2, (0x3DCCCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 08EF18 8008E318 0C008973 */  jal   move_f32_towards
/* 08EF1C 8008E31C 34A53333 */   ori   $a1, (0x3F333333 & 0xFFFF) # ori $a1, $a1, 0x3333
/* 08EF20 8008E320 960E0254 */  lhu   $t6, 0x254($s0)
/* 08EF24 8008E324 3C01800E */  lui   $at, %hi(gKartBoundingBoxSizeTable)
/* 08EF28 8008E328 3C063DCC */  lui   $a2, (0x3DCCCCCD >> 16) # lui $a2, 0x3dcc
/* 08EF2C 8008E32C 000E7880 */  sll   $t7, $t6, 2
/* 08EF30 8008E330 002F0821 */  addu  $at, $at, $t7
/* 08EF34 8008E334 C43226B0 */  lwc1  $f18, %lo(gKartBoundingBoxSizeTable)($at)
/* 08EF38 8008E338 3C01800F */  lui   $at, %hi(D_800EF598)
/* 08EF3C 8008E33C D426F598 */  ldc1  $f6, %lo(D_800EF598)($at)
/* 08EF40 8008E340 46009121 */  cvt.d.s $f4, $f18
/* 08EF44 8008E344 34C6CCCD */  ori   $a2, (0x3DCCCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 08EF48 8008E348 46262202 */  mul.d $f8, $f4, $f6
/* 08EF4C 8008E34C 26040070 */  addiu $a0, $s0, 0x70
/* 08EF50 8008E350 462042A0 */  cvt.s.d $f10, $f8
/* 08EF54 8008E354 44055000 */  mfc1  $a1, $f10
/* 08EF58 8008E358 0C008973 */  jal   move_f32_towards
/* 08EF5C 8008E35C 00000000 */   nop   
/* 08EF60 8008E360 10000013 */  b     .L8008E3B0
/* 08EF64 8008E364 8FBF001C */   lw    $ra, 0x1c($sp)
.L8008E368:
/* 08EF68 8008E368 00062E00 */  sll   $a1, $a2, 0x18
/* 08EF6C 8008E36C 0005C603 */  sra   $t8, $a1, 0x18
/* 08EF70 8008E370 03002825 */  move  $a1, $t8
/* 08EF74 8008E374 02002025 */  move  $a0, $s0
/* 08EF78 8008E378 0C0238F0 */  jal   func_8008E3C0
/* 08EF7C 8008E37C A3A60027 */   sb    $a2, 0x27($sp)
/* 08EF80 8008E380 96190000 */  lhu   $t9, ($s0)
/* 08EF84 8008E384 83A60027 */  lb    $a2, 0x27($sp)
/* 08EF88 8008E388 33284000 */  andi  $t0, $t9, 0x4000
/* 08EF8C 8008E38C 11000007 */  beqz  $t0, .L8008E3AC
/* 08EF90 8008E390 30C400FF */   andi  $a0, $a2, 0xff
/* 08EF94 8008E394 96050254 */  lhu   $a1, 0x254($s0)
/* 08EF98 8008E398 3C012900 */  lui   $at, (0x29008008 >> 16) # lui $at, 0x2900
/* 08EF9C 8008E39C 34218008 */  ori   $at, (0x29008008 & 0xFFFF) # ori $at, $at, 0x8008
/* 08EFA0 8008E3A0 00054900 */  sll   $t1, $a1, 4
/* 08EFA4 8008E3A4 0C03243D */  jal   func_800C90F4
/* 08EFA8 8008E3A8 01212821 */   addu  $a1, $t1, $at
.L8008E3AC:
/* 08EFAC 8008E3AC 8FBF001C */  lw    $ra, 0x1c($sp)
.L8008E3B0:
/* 08EFB0 8008E3B0 8FB00018 */  lw    $s0, 0x18($sp)
/* 08EFB4 8008E3B4 27BD0020 */  addiu $sp, $sp, 0x20
/* 08EFB8 8008E3B8 03E00008 */  jr    $ra
/* 08EFBC 8008E3BC 00000000 */   nop   
