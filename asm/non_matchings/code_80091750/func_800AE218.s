glabel func_800AE218
/* 0AEE18 800AE218 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0AEE1C 800AE21C AFBF0024 */  sw    $ra, 0x24($sp)
/* 0AEE20 800AE220 AFB00020 */  sw    $s0, 0x20($sp)
/* 0AEE24 800AE224 8C830004 */  lw    $v1, 4($a0)
/* 0AEE28 800AE228 00808025 */  move  $s0, $a0
/* 0AEE2C 800AE22C 3C01800E */  lui   $at, %hi(D_800DC5B8) # $at, 0x800e
/* 0AEE30 800AE230 50600004 */  beql  $v1, $zero, .L800AE244
/* 0AEE34 800AE234 2C61002A */   sltiu $at, $v1, 0x2a
/* 0AEE38 800AE238 A420C5B8 */  sh    $zero, %lo(D_800DC5B8)($at)
/* 0AEE3C 800AE23C 8C830004 */  lw    $v1, 4($a0)
/* 0AEE40 800AE240 2C61002A */  sltiu $at, $v1, 0x2a
.L800AE244:
/* 0AEE44 800AE244 1020027E */  beqz  $at, .L800AEC40
/* 0AEE48 800AE248 00037080 */   sll   $t6, $v1, 2
/* 0AEE4C 800AE24C 3C01800F */  lui   $at, %hi(jpt_800F2948)
/* 0AEE50 800AE250 002E0821 */  addu  $at, $at, $t6
/* 0AEE54 800AE254 8C2E2948 */  lw    $t6, %lo(jpt_800F2948)($at)
/* 0AEE58 800AE258 01C00008 */  jr    $t6
/* 0AEE5C 800AE25C 00000000 */   nop
glabel L800AE260
/* 0AEE60 800AE260 8E02001C */  lw    $v0, 0x1c($s0)
/* 0AEE64 800AE264 3C18800E */  lui   $t8, %hi(gControllerOne) # $t8, 0x800e
/* 0AEE68 800AE268 3C0A8019 */  lui   $t2, %hi(D_8018CAE0) # $t2, 0x8019
/* 0AEE6C 800AE26C 2841001E */  slti  $at, $v0, 0x1e
/* 0AEE70 800AE270 10200002 */  beqz  $at, .L800AE27C
/* 0AEE74 800AE274 244F0001 */   addiu $t7, $v0, 1
/* 0AEE78 800AE278 AE0F001C */  sw    $t7, 0x1c($s0)
.L800AE27C:
/* 0AEE7C 800AE27C 8F18C4BC */  lw    $t8, %lo(gControllerOne)($t8)
/* 0AEE80 800AE280 3C044900 */  lui   $a0, (0x49008005 >> 16) # lui $a0, 0x4900
/* 0AEE84 800AE284 2409000F */  li    $t1, 15
/* 0AEE88 800AE288 97190006 */  lhu   $t9, 6($t8)
/* 0AEE8C 800AE28C 34848005 */  ori   $a0, (0x49008005 & 0xFFFF) # ori $a0, $a0, 0x8005
/* 0AEE90 800AE290 33281000 */  andi  $t0, $t9, 0x1000
/* 0AEE94 800AE294 11000005 */  beqz  $t0, .L800AE2AC
/* 0AEE98 800AE298 00000000 */   nop
/* 0AEE9C 800AE29C 0C032384 */  jal   play_sound2
/* 0AEEA0 800AE2A0 AE090004 */   sw    $t1, 4($s0)
/* 0AEEA4 800AE2A4 10000267 */  b     .L800AEC44
/* 0AEEA8 800AE2A8 8FBF0024 */   lw    $ra, 0x24($sp)
.L800AE2AC:
/* 0AEEAC 800AE2AC 814ACAE0 */  lb    $t2, %lo(D_8018CAE0)($t2)
/* 0AEEB0 800AE2B0 240B0001 */  li    $t3, 1
/* 0AEEB4 800AE2B4 51400263 */  beql  $t2, $zero, .L800AEC44
/* 0AEEB8 800AE2B8 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0AEEBC 800AE2BC AE0B0004 */  sw    $t3, 4($s0)
/* 0AEEC0 800AE2C0 1000025F */  b     .L800AEC40
/* 0AEEC4 800AE2C4 AE00001C */   sw    $zero, 0x1c($s0)
glabel L800AE2C8
/* 0AEEC8 800AE2C8 8E0C001C */  lw    $t4, 0x1c($s0)
/* 0AEECC 800AE2CC 240F000F */  li    $t7, 15
/* 0AEED0 800AE2D0 258D0003 */  addiu $t5, $t4, 3
/* 0AEED4 800AE2D4 29A1008D */  slti  $at, $t5, 0x8d
/* 0AEED8 800AE2D8 14200259 */  bnez  $at, .L800AEC40
/* 0AEEDC 800AE2DC AE0D001C */   sw    $t5, 0x1c($s0)
/* 0AEEE0 800AE2E0 10000257 */  b     .L800AEC40
/* 0AEEE4 800AE2E4 AE0F0004 */   sw    $t7, 4($s0)
glabel L800AE2E8
/* 0AEEE8 800AE2E8 0C02D148 */  jal   func_800B4520
/* 0AEEEC 800AE2EC 00000000 */   nop
/* 0AEEF0 800AE2F0 14400253 */  bnez  $v0, .L800AEC40
/* 0AEEF4 800AE2F4 3C02800E */   lui   $v0, %hi(gControllerOne) # $v0, 0x800e
/* 0AEEF8 800AE2F8 8C42C4BC */  lw    $v0, %lo(gControllerOne)($v0)
/* 0AEEFC 800AE2FC 94440006 */  lhu   $a0, 6($v0)
/* 0AEF00 800AE300 9458000C */  lhu   $t8, 0xc($v0)
/* 0AEF04 800AE304 00982825 */  or    $a1, $a0, $t8
/* 0AEF08 800AE308 30B90800 */  andi  $t9, $a1, 0x800
/* 0AEF0C 800AE30C 5320001F */  beql  $t9, $zero, .L800AE38C
/* 0AEF10 800AE310 30AC0400 */   andi  $t4, $a1, 0x400
/* 0AEF14 800AE314 8E030004 */  lw    $v1, 4($s0)
/* 0AEF18 800AE318 2861000C */  slti  $at, $v1, 0xc
/* 0AEF1C 800AE31C 1420001A */  bnez  $at, .L800AE388
/* 0AEF20 800AE320 2468FFFF */   addiu $t0, $v1, -1
/* 0AEF24 800AE324 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0AEF28 800AE328 AE080004 */  sw    $t0, 4($s0)
/* 0AEF2C 800AE32C 0C032384 */  jal   play_sound2
/* 0AEF30 800AE330 34848000 */   ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0AEF34 800AE334 C6040024 */  lwc1  $f4, 0x24($s0)
/* 0AEF38 800AE338 3C01800F */  lui   $at, %hi(D_800F29F0)
/* 0AEF3C 800AE33C D42629F0 */  ldc1  $f6, %lo(D_800F29F0)($at)
/* 0AEF40 800AE340 46002021 */  cvt.d.s $f0, $f4
/* 0AEF44 800AE344 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 0AEF48 800AE348 4626003C */  c.lt.d $f0, $f6
/* 0AEF4C 800AE34C 2409FFFF */  li    $t1, -1
/* 0AEF50 800AE350 3C0A800E */  lui   $t2, %hi(gControllerOne) # $t2, 0x800e
/* 0AEF54 800AE354 45020008 */  bc1fl .L800AE378
/* 0AEF58 800AE358 AE090008 */   sw    $t1, 8($s0)
/* 0AEF5C 800AE35C 44814800 */  mtc1  $at, $f9
/* 0AEF60 800AE360 44804000 */  mtc1  $zero, $f8
/* 0AEF64 800AE364 00000000 */  nop
/* 0AEF68 800AE368 46280280 */  add.d $f10, $f0, $f8
/* 0AEF6C 800AE36C 46205420 */  cvt.s.d $f16, $f10
/* 0AEF70 800AE370 E6100024 */  swc1  $f16, 0x24($s0)
/* 0AEF74 800AE374 AE090008 */  sw    $t1, 8($s0)
.L800AE378:
/* 0AEF78 800AE378 8D4AC4BC */  lw    $t2, %lo(gControllerOne)($t2)
/* 0AEF7C 800AE37C 95440006 */  lhu   $a0, 6($t2)
/* 0AEF80 800AE380 954B000C */  lhu   $t3, 0xc($t2)
/* 0AEF84 800AE384 008B2825 */  or    $a1, $a0, $t3
.L800AE388:
/* 0AEF88 800AE388 30AC0400 */  andi  $t4, $a1, 0x400
.L800AE38C:
/* 0AEF8C 800AE38C 5180001D */  beql  $t4, $zero, .L800AE404
/* 0AEF90 800AE390 30989000 */   andi  $t8, $a0, 0x9000
/* 0AEF94 800AE394 8E030004 */  lw    $v1, 4($s0)
/* 0AEF98 800AE398 28610010 */  slti  $at, $v1, 0x10
/* 0AEF9C 800AE39C 10200018 */  beqz  $at, .L800AE400
/* 0AEFA0 800AE3A0 246D0001 */   addiu $t5, $v1, 1
/* 0AEFA4 800AE3A4 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0AEFA8 800AE3A8 AE0D0004 */  sw    $t5, 4($s0)
/* 0AEFAC 800AE3AC 0C032384 */  jal   play_sound2
/* 0AEFB0 800AE3B0 34848000 */   ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0AEFB4 800AE3B4 C6120024 */  lwc1  $f18, 0x24($s0)
/* 0AEFB8 800AE3B8 3C01800F */  lui   $at, %hi(D_800F29F8)
/* 0AEFBC 800AE3BC D42429F8 */  ldc1  $f4, %lo(D_800F29F8)($at)
/* 0AEFC0 800AE3C0 46009021 */  cvt.d.s $f0, $f18
/* 0AEFC4 800AE3C4 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 0AEFC8 800AE3C8 4624003C */  c.lt.d $f0, $f4
/* 0AEFCC 800AE3CC 240E0001 */  li    $t6, 1
/* 0AEFD0 800AE3D0 3C0F800E */  lui   $t7, %hi(gControllerOne) # $t7, 0x800e
/* 0AEFD4 800AE3D4 45020008 */  bc1fl .L800AE3F8
/* 0AEFD8 800AE3D8 AE0E0008 */   sw    $t6, 8($s0)
/* 0AEFDC 800AE3DC 44813800 */  mtc1  $at, $f7
/* 0AEFE0 800AE3E0 44803000 */  mtc1  $zero, $f6
/* 0AEFE4 800AE3E4 00000000 */  nop
/* 0AEFE8 800AE3E8 46260200 */  add.d $f8, $f0, $f6
/* 0AEFEC 800AE3EC 462042A0 */  cvt.s.d $f10, $f8
/* 0AEFF0 800AE3F0 E60A0024 */  swc1  $f10, 0x24($s0)
/* 0AEFF4 800AE3F4 AE0E0008 */  sw    $t6, 8($s0)
.L800AE3F8:
/* 0AEFF8 800AE3F8 8DEFC4BC */  lw    $t7, %lo(gControllerOne)($t7)
/* 0AEFFC 800AE3FC 95E40006 */  lhu   $a0, 6($t7)
.L800AE400:
/* 0AF000 800AE400 30989000 */  andi  $t8, $a0, 0x9000
.L800AE404:
/* 0AF004 800AE404 1300020E */  beqz  $t8, .L800AEC40
/* 0AF008 800AE408 3C08800F */   lui   $t0, %hi(gControllerPak1State) # $t0, 0x800f
/* 0AF00C 800AE40C 8E190004 */  lw    $t9, 4($s0)
/* 0AF010 800AE410 24010010 */  li    $at, 16
/* 0AF014 800AE414 3C048019 */  lui   $a0, %hi(gControllerPak1FileHandle) # $a0, 0x8019
/* 0AF018 800AE418 172100A7 */  bne   $t9, $at, .L800AE6B8
/* 0AF01C 800AE41C 2484E868 */   addiu $a0, %lo(gControllerPak1FileHandle) # addiu $a0, $a0, -0x1798
/* 0AF020 800AE420 C6100024 */  lwc1  $f16, 0x24($s0)
/* 0AF024 800AE424 3C01800F */  lui   $at, %hi(D_800F2A00)
/* 0AF028 800AE428 D4322A00 */  ldc1  $f18, %lo(D_800F2A00)($at)
/* 0AF02C 800AE42C 46008021 */  cvt.d.s $f0, $f16
/* 0AF030 800AE430 00001825 */  move  $v1, $zero
/* 0AF034 800AE434 4632003C */  c.lt.d $f0, $f18
/* 0AF038 800AE438 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 0AF03C 800AE43C 3C05800F */  lui   $a1, %hi(gCompanyCode) # $a1, 0x800f
/* 0AF040 800AE440 3C06800F */  lui   $a2, %hi(gGameCode) # $a2, 0x800f
/* 0AF044 800AE444 45000007 */  bc1f  .L800AE464
/* 0AF048 800AE448 3C07800F */   lui   $a3, %hi(gGameName) # $a3, 0x800f
/* 0AF04C 800AE44C 44812800 */  mtc1  $at, $f5
/* 0AF050 800AE450 44802000 */  mtc1  $zero, $f4
/* 0AF054 800AE454 00000000 */  nop
/* 0AF058 800AE458 46240180 */  add.d $f6, $f0, $f4
/* 0AF05C 800AE45C 46203220 */  cvt.s.d $f8, $f6
/* 0AF060 800AE460 E6080024 */  swc1  $f8, 0x24($s0)
.L800AE464:
/* 0AF064 800AE464 810886F8 */  lb    $t0, %lo(gControllerPak1State)($t0)
/* 0AF068 800AE468 3C09800F */  lui   $t1, %hi(gExtCode) # $t1, 0x800f
/* 0AF06C 800AE46C 25292E74 */  addiu $t1, %lo(gExtCode) # addiu $t1, $t1, 0x2e74
/* 0AF070 800AE470 11000021 */  beqz  $t0, .L800AE4F8
/* 0AF074 800AE474 24E72E64 */   addiu $a3, %lo(gGameName) # addiu $a3, $a3, 0x2e64
/* 0AF078 800AE478 3C0A8019 */  lui   $t2, %hi(gControllerPak1FileNote) # $t2, 0x8019
/* 0AF07C 800AE47C 254AEB84 */  addiu $t2, %lo(gControllerPak1FileNote) # addiu $t2, $t2, -0x147c
/* 0AF080 800AE480 AFAA0014 */  sw    $t2, 0x14($sp)
/* 0AF084 800AE484 94A586F0 */  lhu   $a1, %lo(gCompanyCode)($a1)
/* 0AF088 800AE488 8CC686F4 */  lw    $a2, %lo(gGameCode)($a2)
/* 0AF08C 800AE48C AFA90010 */  sw    $t1, 0x10($sp)
/* 0AF090 800AE490 0C033E20 */  jal   osPfsFindFile
/* 0AF094 800AE494 AFA30028 */   sw    $v1, 0x28($sp)
/* 0AF098 800AE498 10400008 */  beqz  $v0, .L800AE4BC
/* 0AF09C 800AE49C 8FA30028 */   lw    $v1, 0x28($sp)
/* 0AF0A0 800AE4A0 24010002 */  li    $at, 2
/* 0AF0A4 800AE4A4 10410012 */  beq   $v0, $at, .L800AE4F0
/* 0AF0A8 800AE4A8 24010005 */   li    $at, 5
/* 0AF0AC 800AE4AC 10410012 */  beq   $v0, $at, .L800AE4F8
/* 0AF0B0 800AE4B0 3C01800F */   lui   $at, %hi(gControllerPak1State) # $at, 0x800f
/* 0AF0B4 800AE4B4 10000010 */  b     .L800AE4F8
/* 0AF0B8 800AE4B8 A02086F8 */   sb    $zero, %lo(gControllerPak1State)($at)
.L800AE4BC:
/* 0AF0BC 800AE4BC 0C02D9C2 */  jal   func_800B6708
/* 0AF0C0 800AE4C0 00000000 */   nop
/* 0AF0C4 800AE4C4 3C0B8019 */  lui   $t3, %hi(gCupSelection) # $t3, 0x8019
/* 0AF0C8 800AE4C8 816BEE09 */  lb    $t3, %lo(gCupSelection)($t3)
/* 0AF0CC 800AE4CC 3C0D8019 */  lui   $t5, %hi(gCupCourseSelection) # $t5, 0x8019
/* 0AF0D0 800AE4D0 81ADEE0B */  lb    $t5, %lo(gCupCourseSelection)($t5)
/* 0AF0D4 800AE4D4 000B6080 */  sll   $t4, $t3, 2
/* 0AF0D8 800AE4D8 0C02D8D2 */  jal   func_800B6348
/* 0AF0DC 800AE4DC 018D2021 */   addu  $a0, $t4, $t5
/* 0AF0E0 800AE4E0 244E001E */  addiu $t6, $v0, 0x1e
/* 0AF0E4 800AE4E4 AE0E0004 */  sw    $t6, 4($s0)
/* 0AF0E8 800AE4E8 10000003 */  b     .L800AE4F8
/* 0AF0EC 800AE4EC 24030001 */   li    $v1, 1
.L800AE4F0:
/* 0AF0F0 800AE4F0 3C01800F */  lui   $at, %hi(gControllerPak1State) # $at, 0x800f
/* 0AF0F4 800AE4F4 A02086F8 */  sb    $zero, %lo(gControllerPak1State)($at)
.L800AE4F8:
/* 0AF0F8 800AE4F8 10600006 */  beqz  $v1, .L800AE514
/* 0AF0FC 800AE4FC 3C0F800F */   lui   $t7, %hi(gControllerPak1State) # $t7, 0x800f
/* 0AF100 800AE500 3C044900 */  lui   $a0, (0x49008001 >> 16) # lui $a0, 0x4900
/* 0AF104 800AE504 0C032384 */  jal   play_sound2
/* 0AF108 800AE508 34848001 */   ori   $a0, (0x49008001 & 0xFFFF) # ori $a0, $a0, 0x8001
/* 0AF10C 800AE50C 100001CD */  b     .L800AEC44
/* 0AF110 800AE510 8FBF0024 */   lw    $ra, 0x24($sp)
.L800AE514:
/* 0AF114 800AE514 81EF86F8 */  lb    $t7, %lo(gControllerPak1State)($t7)
/* 0AF118 800AE518 15E00047 */  bnez  $t7, .L800AE638
/* 0AF11C 800AE51C 00000000 */   nop
/* 0AF120 800AE520 0C02D7CC */  jal   func_800B5F30
/* 0AF124 800AE524 AFA30028 */   sw    $v1, 0x28($sp)
/* 0AF128 800AE528 24580003 */  addiu $t8, $v0, 3
/* 0AF12C 800AE52C 2F01000F */  sltiu $at, $t8, 0xf
/* 0AF130 800AE530 10200017 */  beqz  $at, .L800AE590
/* 0AF134 800AE534 8FA30028 */   lw    $v1, 0x28($sp)
/* 0AF138 800AE538 0018C080 */  sll   $t8, $t8, 2
/* 0AF13C 800AE53C 3C01800F */  lui   $at, %hi(jpt_800F2A08)
/* 0AF140 800AE540 00380821 */  addu  $at, $at, $t8
/* 0AF144 800AE544 8C382A08 */  lw    $t8, %lo(jpt_800F2A08)($at)
/* 0AF148 800AE548 03000008 */  jr    $t8
/* 0AF14C 800AE54C 00000000 */   nop
glabel L800AE550
/* 0AF150 800AE550 24190015 */  li    $t9, 21
/* 0AF154 800AE554 AE190004 */  sw    $t9, 4($s0)
/* 0AF158 800AE558 10000010 */  b     .L800AE59C
/* 0AF15C 800AE55C 24030001 */   li    $v1, 1
glabel L800AE560
/* 0AF160 800AE560 24080016 */  li    $t0, 22
/* 0AF164 800AE564 AE080004 */  sw    $t0, 4($s0)
/* 0AF168 800AE568 1000000C */  b     .L800AE59C
/* 0AF16C 800AE56C 24030001 */   li    $v1, 1
glabel L800AE570
/* 0AF170 800AE570 24090015 */  li    $t1, 21
/* 0AF174 800AE574 AE090004 */  sw    $t1, 4($s0)
/* 0AF178 800AE578 10000008 */  b     .L800AE59C
/* 0AF17C 800AE57C 24030001 */   li    $v1, 1
glabel L800AE580
/* 0AF180 800AE580 240A0016 */  li    $t2, 22
/* 0AF184 800AE584 AE0A0004 */  sw    $t2, 4($s0)
/* 0AF188 800AE588 10000004 */  b     .L800AE59C
/* 0AF18C 800AE58C 24030001 */   li    $v1, 1
.L800AE590:
glabel L800AE590
/* 0AF190 800AE590 240B0016 */  li    $t3, 22
/* 0AF194 800AE594 24030001 */  li    $v1, 1
/* 0AF198 800AE598 AE0B0004 */  sw    $t3, 4($s0)
.L800AE59C:
glabel L800AE59C
/* 0AF19C 800AE59C 10600006 */  beqz  $v1, .L800AE5B8
/* 0AF1A0 800AE5A0 3C048019 */   lui   $a0, %hi(gControllerPak1FileHandle)
/* 0AF1A4 800AE5A4 3C044900 */  lui   $a0, (0x4900FF07 >> 16) # $a0, 0x4900
/* 0AF1A8 800AE5A8 0C032384 */  jal   play_sound2
/* 0AF1AC 800AE5AC 3484FF07 */   ori   $a0, (0x4900FF07 & 0xFFFF) # ori $a0, $a0, 0xff07
/* 0AF1B0 800AE5B0 100001A4 */  b     .L800AEC44
/* 0AF1B4 800AE5B4 8FBF0024 */   lw    $ra, 0x24($sp)
.L800AE5B8:
/* 0AF1B8 800AE5B8 3C0C800F */  lui   $t4, %hi(gExtCode) # $t4, 0x800f
/* 0AF1BC 800AE5BC 3C0D8019 */  lui   $t5, %hi(gControllerPak1FileNote) # $t5, 0x8019
/* 0AF1C0 800AE5C0 25ADEB84 */  addiu $t5, %lo(gControllerPak1FileNote) # addiu $t5, $t5, -0x147c
/* 0AF1C4 800AE5C4 258C2E74 */  addiu $t4, %lo(gExtCode) # addiu $t4, $t4, 0x2e74
/* 0AF1C8 800AE5C8 3C05800F */  lui   $a1, %hi(gCompanyCode) # $a1, 0x800f
/* 0AF1CC 800AE5CC 3C06800F */  lui   $a2, %hi(gGameCode) # $a2, 0x800f
/* 0AF1D0 800AE5D0 3C07800F */  lui   $a3, %hi(gGameName) # $a3, 0x800f
/* 0AF1D4 800AE5D4 24E72E64 */  addiu $a3, %lo(gGameName) # addiu $a3, $a3, 0x2e64
/* 0AF1D8 800AE5D8 8CC686F4 */  lw    $a2, %lo(gGameCode)($a2)
/* 0AF1DC 800AE5DC 94A586F0 */  lhu   $a1, %lo(gCompanyCode)($a1)
/* 0AF1E0 800AE5E0 AFAC0010 */  sw    $t4, 0x10($sp)
/* 0AF1E4 800AE5E4 AFAD0014 */  sw    $t5, 0x14($sp)
/* 0AF1E8 800AE5E8 0C033E20 */  jal   osPfsFindFile
/* 0AF1EC 800AE5EC 2484E868 */   addiu $a0, %lo(gControllerPak1FileHandle) # addiu $a0, $a0, -0x1798
/* 0AF1F0 800AE5F0 14400011 */  bnez  $v0, .L800AE638
/* 0AF1F4 800AE5F4 00000000 */   nop
/* 0AF1F8 800AE5F8 0C02D9C2 */  jal   func_800B6708
/* 0AF1FC 800AE5FC 00000000 */   nop
/* 0AF200 800AE600 3C0E8019 */  lui   $t6, %hi(gCupSelection) # $t6, 0x8019
/* 0AF204 800AE604 81CEEE09 */  lb    $t6, %lo(gCupSelection)($t6)
/* 0AF208 800AE608 3C188019 */  lui   $t8, %hi(gCupCourseSelection) # $t8, 0x8019
/* 0AF20C 800AE60C 8318EE0B */  lb    $t8, %lo(gCupCourseSelection)($t8)
/* 0AF210 800AE610 000E7880 */  sll   $t7, $t6, 2
/* 0AF214 800AE614 0C02D8D2 */  jal   func_800B6348
/* 0AF218 800AE618 01F82021 */   addu  $a0, $t7, $t8
/* 0AF21C 800AE61C 2459001E */  addiu $t9, $v0, 0x1e
/* 0AF220 800AE620 3C044900 */  lui   $a0, (0x49008001 >> 16) # lui $a0, 0x4900
/* 0AF224 800AE624 AE190004 */  sw    $t9, 4($s0)
/* 0AF228 800AE628 0C032384 */  jal   play_sound2
/* 0AF22C 800AE62C 34848001 */   ori   $a0, (0x49008001 & 0xFFFF) # ori $a0, $a0, 0x8001
/* 0AF230 800AE630 10000184 */  b     .L800AEC44
/* 0AF234 800AE634 8FBF0024 */   lw    $ra, 0x24($sp)
.L800AE638:
/* 0AF238 800AE638 3C088019 */  lui   $t0, %hi(gControllerPak1MaxWriteableFiles) # $t0, 0x8019
/* 0AF23C 800AE63C 3C098019 */  lui   $t1, %hi(gControllerPak1NumFilesUsed) # $t1, 0x8019
/* 0AF240 800AE640 8D29EB78 */  lw    $t1, %lo(gControllerPak1NumFilesUsed)($t1)
/* 0AF244 800AE644 8D08EB7C */  lw    $t0, %lo(gControllerPak1MaxWriteableFiles)($t0)
/* 0AF248 800AE648 240A0018 */  li    $t2, 24
/* 0AF24C 800AE64C 3C044900 */  lui   $a0, (0x4900FF07 >> 16) # lui $a0, 0x4900
/* 0AF250 800AE650 0109082A */  slt   $at, $t0, $t1
/* 0AF254 800AE654 14200006 */  bnez  $at, .L800AE670
/* 0AF258 800AE658 3C0B8019 */   lui   $t3, %hi(gControllerPak1NumPagesFree) # $t3, 0x8019
/* 0AF25C 800AE65C AE0A0004 */  sw    $t2, 4($s0)
/* 0AF260 800AE660 0C032384 */  jal   play_sound2
/* 0AF264 800AE664 3484FF07 */   ori   $a0, (0x4900FF07 & 0xFFFF) # ori $a0, $a0, 0xff07
/* 0AF268 800AE668 10000176 */  b     .L800AEC44
/* 0AF26C 800AE66C 8FBF0024 */   lw    $ra, 0x24($sp)
.L800AE670:
/* 0AF270 800AE670 8D6BEB80 */  lw    $t3, %lo(gControllerPak1NumPagesFree)($t3)
/* 0AF274 800AE674 3C044900 */  lui   $a0, (0x4900FF07 >> 16) # lui $a0, 0x4900
/* 0AF278 800AE678 240D0018 */  li    $t5, 24
/* 0AF27C 800AE67C 29610079 */  slti  $at, $t3, 0x79
/* 0AF280 800AE680 14200009 */  bnez  $at, .L800AE6A8
/* 0AF284 800AE684 3484FF07 */   ori   $a0, (0x4900FF07 & 0xFFFF) # ori $a0, $a0, 0xff07
/* 0AF288 800AE688 240C0020 */  li    $t4, 32
/* 0AF28C 800AE68C 3C044900 */  lui   $a0, (0x49008001 >> 16) # lui $a0, 0x4900
/* 0AF290 800AE690 AE0C0004 */  sw    $t4, 4($s0)
/* 0AF294 800AE694 AE00001C */  sw    $zero, 0x1c($s0)
/* 0AF298 800AE698 0C032384 */  jal   play_sound2
/* 0AF29C 800AE69C 34848001 */   ori   $a0, (0x49008001 & 0xFFFF) # ori $a0, $a0, 0x8001
/* 0AF2A0 800AE6A0 10000168 */  b     .L800AEC44
/* 0AF2A4 800AE6A4 8FBF0024 */   lw    $ra, 0x24($sp)
.L800AE6A8:
/* 0AF2A8 800AE6A8 0C032384 */  jal   play_sound2
/* 0AF2AC 800AE6AC AE0D0004 */   sw    $t5, 4($s0)
/* 0AF2B0 800AE6B0 10000164 */  b     .L800AEC44
/* 0AF2B4 800AE6B4 8FBF0024 */   lw    $ra, 0x24($sp)
.L800AE6B8:
/* 0AF2B8 800AE6B8 0C0277F8 */  jal   func_8009DFE0
/* 0AF2BC 800AE6BC 2404001E */   li    $a0, 30
/* 0AF2C0 800AE6C0 3C044900 */  lui   $a0, (0x49008016 >> 16) # lui $a0, 0x4900
/* 0AF2C4 800AE6C4 0C032384 */  jal   play_sound2
/* 0AF2C8 800AE6C8 34848016 */   ori   $a0, (0x49008016 & 0xFFFF) # ori $a0, $a0, 0x8016
/* 0AF2CC 800AE6CC 0C0328CC */  jal   func_800CA330
/* 0AF2D0 800AE6D0 24040019 */   li    $a0, 25
/* 0AF2D4 800AE6D4 0C0328E2 */  jal   func_800CA388
/* 0AF2D8 800AE6D8 24040019 */   li    $a0, 25
/* 0AF2DC 800AE6DC C60A0024 */  lwc1  $f10, 0x24($s0)
/* 0AF2E0 800AE6E0 3C01800F */  lui   $at, %hi(D_800F2A48)
/* 0AF2E4 800AE6E4 D4302A48 */  ldc1  $f16, %lo(D_800F2A48)($at)
/* 0AF2E8 800AE6E8 46005021 */  cvt.d.s $f0, $f10
/* 0AF2EC 800AE6EC 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 0AF2F0 800AE6F0 4630003C */  c.lt.d $f0, $f16
/* 0AF2F4 800AE6F4 00000000 */  nop
/* 0AF2F8 800AE6F8 45020152 */  bc1fl .L800AEC44
/* 0AF2FC 800AE6FC 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0AF300 800AE700 44819800 */  mtc1  $at, $f19
/* 0AF304 800AE704 44809000 */  mtc1  $zero, $f18
/* 0AF308 800AE708 00000000 */  nop
/* 0AF30C 800AE70C 46320100 */  add.d $f4, $f0, $f18
/* 0AF310 800AE710 462021A0 */  cvt.s.d $f6, $f4
/* 0AF314 800AE714 1000014A */  b     .L800AEC40
/* 0AF318 800AE718 E6060024 */   swc1  $f6, 0x24($s0)
glabel L800AE71C
/* 0AF31C 800AE71C 3C0E800E */  lui   $t6, %hi(gControllerOne) # $t6, 0x800e
/* 0AF320 800AE720 8DCEC4BC */  lw    $t6, %lo(gControllerOne)($t6)
/* 0AF324 800AE724 3C044900 */  lui   $a0, (0x49008002 >> 16) # lui $a0, 0x4900
/* 0AF328 800AE728 24190010 */  li    $t9, 16
/* 0AF32C 800AE72C 95CF0006 */  lhu   $t7, 6($t6)
/* 0AF330 800AE730 34848002 */  ori   $a0, (0x49008002 & 0xFFFF) # ori $a0, $a0, 0x8002
/* 0AF334 800AE734 31F8D000 */  andi  $t8, $t7, 0xd000
/* 0AF338 800AE738 53000142 */  beql  $t8, $zero, .L800AEC44
/* 0AF33C 800AE73C 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0AF340 800AE740 0C032384 */  jal   play_sound2
/* 0AF344 800AE744 AE190004 */   sw    $t9, 4($s0)
/* 0AF348 800AE748 C6080024 */  lwc1  $f8, 0x24($s0)
/* 0AF34C 800AE74C 3C01800F */  lui   $at, %hi(D_800F2A50)
/* 0AF350 800AE750 D42A2A50 */  ldc1  $f10, %lo(D_800F2A50)($at)
/* 0AF354 800AE754 46004021 */  cvt.d.s $f0, $f8
/* 0AF358 800AE758 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 0AF35C 800AE75C 462A003C */  c.lt.d $f0, $f10
/* 0AF360 800AE760 00000000 */  nop
/* 0AF364 800AE764 45020137 */  bc1fl .L800AEC44
/* 0AF368 800AE768 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0AF36C 800AE76C 44818800 */  mtc1  $at, $f17
/* 0AF370 800AE770 44808000 */  mtc1  $zero, $f16
/* 0AF374 800AE774 00000000 */  nop
/* 0AF378 800AE778 46300480 */  add.d $f18, $f0, $f16
/* 0AF37C 800AE77C 46209120 */  cvt.s.d $f4, $f18
/* 0AF380 800AE780 1000012F */  b     .L800AEC40
/* 0AF384 800AE784 E6040024 */   swc1  $f4, 0x24($s0)
glabel L800AE788
/* 0AF388 800AE788 2468FFE2 */  addiu $t0, $v1, -0x1e
/* 0AF38C 800AE78C AE080020 */  sw    $t0, 0x20($s0)
/* 0AF390 800AE790 3C098019 */  lui   $t1, %hi(gCupSelection) # $t1, 0x8019
/* 0AF394 800AE794 8129EE09 */  lb    $t1, %lo(gCupSelection)($t1)
/* 0AF398 800AE798 3C0B8019 */  lui   $t3, %hi(gCupCourseSelection) # $t3, 0x8019
/* 0AF39C 800AE79C 816BEE0B */  lb    $t3, %lo(gCupCourseSelection)($t3)
/* 0AF3A0 800AE7A0 00095080 */  sll   $t2, $t1, 2
/* 0AF3A4 800AE7A4 0C02D8E7 */  jal   func_800B639C
/* 0AF3A8 800AE7A8 014B2021 */   addu  $a0, $t2, $t3
/* 0AF3AC 800AE7AC 8E0C0020 */  lw    $t4, 0x20($s0)
/* 0AF3B0 800AE7B0 104C0040 */  beq   $v0, $t4, .L800AE8B4
/* 0AF3B4 800AE7B4 3C02800E */   lui   $v0, %hi(gControllerOne) # $v0, 0x800e
/* 0AF3B8 800AE7B8 8C42C4BC */  lw    $v0, %lo(gControllerOne)($v0)
/* 0AF3BC 800AE7BC 944D0006 */  lhu   $t5, 6($v0)
/* 0AF3C0 800AE7C0 944E000C */  lhu   $t6, 0xc($v0)
/* 0AF3C4 800AE7C4 01AE2825 */  or    $a1, $t5, $t6
/* 0AF3C8 800AE7C8 30AF0800 */  andi  $t7, $a1, 0x800
/* 0AF3CC 800AE7CC 51E0001F */  beql  $t7, $zero, .L800AE84C
/* 0AF3D0 800AE7D0 30AB0400 */   andi  $t3, $a1, 0x400
/* 0AF3D4 800AE7D4 8E030004 */  lw    $v1, 4($s0)
/* 0AF3D8 800AE7D8 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0AF3DC 800AE7DC 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0AF3E0 800AE7E0 2861001F */  slti  $at, $v1, 0x1f
/* 0AF3E4 800AE7E4 14200018 */  bnez  $at, .L800AE848
/* 0AF3E8 800AE7E8 2478FFFF */   addiu $t8, $v1, -1
/* 0AF3EC 800AE7EC 0C032384 */  jal   play_sound2
/* 0AF3F0 800AE7F0 AE180004 */   sw    $t8, 4($s0)
/* 0AF3F4 800AE7F4 C6060024 */  lwc1  $f6, 0x24($s0)
/* 0AF3F8 800AE7F8 3C01800F */  lui   $at, %hi(D_800F2A58)
/* 0AF3FC 800AE7FC D4282A58 */  ldc1  $f8, %lo(D_800F2A58)($at)
/* 0AF400 800AE800 46003021 */  cvt.d.s $f0, $f6
/* 0AF404 800AE804 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 0AF408 800AE808 4628003C */  c.lt.d $f0, $f8
/* 0AF40C 800AE80C 2419FFFF */  li    $t9, -1
/* 0AF410 800AE810 3C08800E */  lui   $t0, %hi(gControllerOne) # $t0, 0x800e
/* 0AF414 800AE814 45020008 */  bc1fl .L800AE838
/* 0AF418 800AE818 AE190008 */   sw    $t9, 8($s0)
/* 0AF41C 800AE81C 44815800 */  mtc1  $at, $f11
/* 0AF420 800AE820 44805000 */  mtc1  $zero, $f10
/* 0AF424 800AE824 00000000 */  nop
/* 0AF428 800AE828 462A0400 */  add.d $f16, $f0, $f10
/* 0AF42C 800AE82C 462084A0 */  cvt.s.d $f18, $f16
/* 0AF430 800AE830 E6120024 */  swc1  $f18, 0x24($s0)
/* 0AF434 800AE834 AE190008 */  sw    $t9, 8($s0)
.L800AE838:
/* 0AF438 800AE838 8D08C4BC */  lw    $t0, %lo(gControllerOne)($t0)
/* 0AF43C 800AE83C 95090006 */  lhu   $t1, 6($t0)
/* 0AF440 800AE840 950A000C */  lhu   $t2, 0xc($t0)
/* 0AF444 800AE844 012A2825 */  or    $a1, $t1, $t2
.L800AE848:
/* 0AF448 800AE848 30AB0400 */  andi  $t3, $a1, 0x400
.L800AE84C:
/* 0AF44C 800AE84C 11600019 */  beqz  $t3, .L800AE8B4
/* 0AF450 800AE850 00000000 */   nop
/* 0AF454 800AE854 8E030004 */  lw    $v1, 4($s0)
/* 0AF458 800AE858 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0AF45C 800AE85C 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0AF460 800AE860 2861001F */  slti  $at, $v1, 0x1f
/* 0AF464 800AE864 10200013 */  beqz  $at, .L800AE8B4
/* 0AF468 800AE868 246C0001 */   addiu $t4, $v1, 1
/* 0AF46C 800AE86C 0C032384 */  jal   play_sound2
/* 0AF470 800AE870 AE0C0004 */   sw    $t4, 4($s0)
/* 0AF474 800AE874 C6040024 */  lwc1  $f4, 0x24($s0)
/* 0AF478 800AE878 3C01800F */  lui   $at, %hi(D_800F2A60)
/* 0AF47C 800AE87C D4262A60 */  ldc1  $f6, %lo(D_800F2A60)($at)
/* 0AF480 800AE880 46002021 */  cvt.d.s $f0, $f4
/* 0AF484 800AE884 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 0AF488 800AE888 4626003C */  c.lt.d $f0, $f6
/* 0AF48C 800AE88C 240D0001 */  li    $t5, 1
/* 0AF490 800AE890 45020008 */  bc1fl .L800AE8B4
/* 0AF494 800AE894 AE0D0008 */   sw    $t5, 8($s0)
/* 0AF498 800AE898 44814800 */  mtc1  $at, $f9
/* 0AF49C 800AE89C 44804000 */  mtc1  $zero, $f8
/* 0AF4A0 800AE8A0 00000000 */  nop
/* 0AF4A4 800AE8A4 46280280 */  add.d $f10, $f0, $f8
/* 0AF4A8 800AE8A8 46205420 */  cvt.s.d $f16, $f10
/* 0AF4AC 800AE8AC E6100024 */  swc1  $f16, 0x24($s0)
/* 0AF4B0 800AE8B0 AE0D0008 */  sw    $t5, 8($s0)
.L800AE8B4:
/* 0AF4B4 800AE8B4 3C0E800E */  lui   $t6, %hi(gControllerOne) # $t6, 0x800e
/* 0AF4B8 800AE8B8 8DCEC4BC */  lw    $t6, %lo(gControllerOne)($t6)
/* 0AF4BC 800AE8BC 24180010 */  li    $t8, 16
/* 0AF4C0 800AE8C0 95C40006 */  lhu   $a0, 6($t6)
/* 0AF4C4 800AE8C4 308F4000 */  andi  $t7, $a0, 0x4000
/* 0AF4C8 800AE8C8 11E00007 */  beqz  $t7, .L800AE8E8
/* 0AF4CC 800AE8CC 30999000 */   andi  $t9, $a0, 0x9000
/* 0AF4D0 800AE8D0 3C044900 */  lui   $a0, (0x49008002 >> 16) # lui $a0, 0x4900
/* 0AF4D4 800AE8D4 AE180004 */  sw    $t8, 4($s0)
/* 0AF4D8 800AE8D8 0C032384 */  jal   play_sound2
/* 0AF4DC 800AE8DC 34848002 */   ori   $a0, (0x49008002 & 0xFFFF) # ori $a0, $a0, 0x8002
/* 0AF4E0 800AE8E0 100000D8 */  b     .L800AEC44
/* 0AF4E4 800AE8E4 8FBF0024 */   lw    $ra, 0x24($sp)
.L800AE8E8:
/* 0AF4E8 800AE8E8 532000D6 */  beql  $t9, $zero, .L800AEC44
/* 0AF4EC 800AE8EC 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0AF4F0 800AE8F0 8E040020 */  lw    $a0, 0x20($s0)
/* 0AF4F4 800AE8F4 3C098019 */  lui   $t1, %hi(D_8018EE10) # $t1, 0x8019
/* 0AF4F8 800AE8F8 2529EE10 */  addiu $t1, %lo(D_8018EE10) # addiu $t1, $t1, -0x11f0
/* 0AF4FC 800AE8FC 000441C0 */  sll   $t0, $a0, 7
/* 0AF500 800AE900 01091021 */  addu  $v0, $t0, $t1
/* 0AF504 800AE904 904A0004 */  lbu   $t2, 4($v0)
/* 0AF508 800AE908 240B0028 */  li    $t3, 40
/* 0AF50C 800AE90C 15400004 */  bnez  $t2, .L800AE920
/* 0AF510 800AE910 00000000 */   nop
/* 0AF514 800AE914 AE0B0004 */  sw    $t3, 4($s0)
/* 0AF518 800AE918 10000009 */  b     .L800AE940
/* 0AF51C 800AE91C AE00001C */   sw    $zero, 0x1c($s0)
.L800AE920:
/* 0AF520 800AE920 0C02D8FC */  jal   func_800B63F0
/* 0AF524 800AE924 00000000 */   nop
/* 0AF528 800AE928 14400004 */  bnez  $v0, .L800AE93C
/* 0AF52C 800AE92C 240D0023 */   li    $t5, 35
/* 0AF530 800AE930 240C001A */  li    $t4, 26
/* 0AF534 800AE934 10000002 */  b     .L800AE940
/* 0AF538 800AE938 AE0C0004 */   sw    $t4, 4($s0)
.L800AE93C:
/* 0AF53C 800AE93C AE0D0004 */  sw    $t5, 4($s0)
.L800AE940:
/* 0AF540 800AE940 3C044900 */  lui   $a0, (0x49008001 >> 16) # lui $a0, 0x4900
/* 0AF544 800AE944 0C032384 */  jal   play_sound2
/* 0AF548 800AE948 34848001 */   ori   $a0, (0x49008001 & 0xFFFF) # ori $a0, $a0, 0x8001
/* 0AF54C 800AE94C C6120024 */  lwc1  $f18, 0x24($s0)
/* 0AF550 800AE950 3C01800F */  lui   $at, %hi(D_800F2A68)
/* 0AF554 800AE954 D4242A68 */  ldc1  $f4, %lo(D_800F2A68)($at)
/* 0AF558 800AE958 46009021 */  cvt.d.s $f0, $f18
/* 0AF55C 800AE95C 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 0AF560 800AE960 4624003C */  c.lt.d $f0, $f4
/* 0AF564 800AE964 00000000 */  nop
/* 0AF568 800AE968 450200B6 */  bc1fl .L800AEC44
/* 0AF56C 800AE96C 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0AF570 800AE970 44813800 */  mtc1  $at, $f7
/* 0AF574 800AE974 44803000 */  mtc1  $zero, $f6
/* 0AF578 800AE978 00000000 */  nop
/* 0AF57C 800AE97C 46260200 */  add.d $f8, $f0, $f6
/* 0AF580 800AE980 462042A0 */  cvt.s.d $f10, $f8
/* 0AF584 800AE984 100000AE */  b     .L800AEC40
/* 0AF588 800AE988 E60A0024 */   swc1  $f10, 0x24($s0)
glabel L800AE98C
/* 0AF58C 800AE98C 8E0E001C */  lw    $t6, 0x1c($s0)
/* 0AF590 800AE990 24010001 */  li    $at, 1
/* 0AF594 800AE994 55C10008 */  bnel  $t6, $at, .L800AE9B8
/* 0AF598 800AE998 8E18001C */   lw    $t8, 0x1c($s0)
/* 0AF59C 800AE99C 0C02DA9A */  jal   func_800B6A68
/* 0AF5A0 800AE9A0 00000000 */   nop
/* 0AF5A4 800AE9A4 10400003 */  beqz  $v0, .L800AE9B4
/* 0AF5A8 800AE9A8 240F0019 */   li    $t7, 25
/* 0AF5AC 800AE9AC 100000A4 */  b     .L800AEC40
/* 0AF5B0 800AE9B0 AE0F0004 */   sw    $t7, 4($s0)
.L800AE9B4:
/* 0AF5B4 800AE9B4 8E18001C */  lw    $t8, 0x1c($s0)
.L800AE9B8:
/* 0AF5B8 800AE9B8 2409001E */  li    $t1, 30
/* 0AF5BC 800AE9BC 27190001 */  addiu $t9, $t8, 1
/* 0AF5C0 800AE9C0 2B210002 */  slti  $at, $t9, 2
/* 0AF5C4 800AE9C4 1420009E */  bnez  $at, .L800AEC40
/* 0AF5C8 800AE9C8 AE19001C */   sw    $t9, 0x1c($s0)
/* 0AF5CC 800AE9CC 1000009C */  b     .L800AEC40
/* 0AF5D0 800AE9D0 AE090004 */   sw    $t1, 4($s0)
glabel L800AE9D4
/* 0AF5D4 800AE9D4 3C02800E */  lui   $v0, %hi(gControllerOne) # $v0, 0x800e
/* 0AF5D8 800AE9D8 8C42C4BC */  lw    $v0, %lo(gControllerOne)($v0)
/* 0AF5DC 800AE9DC 28610024 */  slti  $at, $v1, 0x24
/* 0AF5E0 800AE9E0 94440006 */  lhu   $a0, 6($v0)
/* 0AF5E4 800AE9E4 944A000C */  lhu   $t2, 0xc($v0)
/* 0AF5E8 800AE9E8 008A2825 */  or    $a1, $a0, $t2
/* 0AF5EC 800AE9EC 30AB0800 */  andi  $t3, $a1, 0x800
/* 0AF5F0 800AE9F0 5160001D */  beql  $t3, $zero, .L800AEA68
/* 0AF5F4 800AE9F4 30B80400 */   andi  $t8, $a1, 0x400
/* 0AF5F8 800AE9F8 1420001A */  bnez  $at, .L800AEA64
/* 0AF5FC 800AE9FC 246CFFFF */   addiu $t4, $v1, -1
/* 0AF600 800AEA00 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0AF604 800AEA04 AE0C0004 */  sw    $t4, 4($s0)
/* 0AF608 800AEA08 0C032384 */  jal   play_sound2
/* 0AF60C 800AEA0C 34848000 */   ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0AF610 800AEA10 C6100024 */  lwc1  $f16, 0x24($s0)
/* 0AF614 800AEA14 3C01800F */  lui   $at, %hi(D_800F2A70)
/* 0AF618 800AEA18 D4322A70 */  ldc1  $f18, %lo(D_800F2A70)($at)
/* 0AF61C 800AEA1C 46008021 */  cvt.d.s $f0, $f16
/* 0AF620 800AEA20 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 0AF624 800AEA24 4632003C */  c.lt.d $f0, $f18
/* 0AF628 800AEA28 240DFFFF */  li    $t5, -1
/* 0AF62C 800AEA2C 3C0E800E */  lui   $t6, %hi(gControllerOne) # $t6, 0x800e
/* 0AF630 800AEA30 45020008 */  bc1fl .L800AEA54
/* 0AF634 800AEA34 AE0D0008 */   sw    $t5, 8($s0)
/* 0AF638 800AEA38 44812800 */  mtc1  $at, $f5
/* 0AF63C 800AEA3C 44802000 */  mtc1  $zero, $f4
/* 0AF640 800AEA40 00000000 */  nop
/* 0AF644 800AEA44 46240180 */  add.d $f6, $f0, $f4
/* 0AF648 800AEA48 46203220 */  cvt.s.d $f8, $f6
/* 0AF64C 800AEA4C E6080024 */  swc1  $f8, 0x24($s0)
/* 0AF650 800AEA50 AE0D0008 */  sw    $t5, 8($s0)
.L800AEA54:
/* 0AF654 800AEA54 8DCEC4BC */  lw    $t6, %lo(gControllerOne)($t6)
/* 0AF658 800AEA58 95C40006 */  lhu   $a0, 6($t6)
/* 0AF65C 800AEA5C 95CF000C */  lhu   $t7, 0xc($t6)
/* 0AF660 800AEA60 008F2825 */  or    $a1, $a0, $t7
.L800AEA64:
/* 0AF664 800AEA64 30B80400 */  andi  $t8, $a1, 0x400
.L800AEA68:
/* 0AF668 800AEA68 5300001D */  beql  $t8, $zero, .L800AEAE0
/* 0AF66C 800AEA6C 308A4000 */   andi  $t2, $a0, 0x4000
/* 0AF670 800AEA70 8E030004 */  lw    $v1, 4($s0)
/* 0AF674 800AEA74 28610024 */  slti  $at, $v1, 0x24
/* 0AF678 800AEA78 10200018 */  beqz  $at, .L800AEADC
/* 0AF67C 800AEA7C 24790001 */   addiu $t9, $v1, 1
/* 0AF680 800AEA80 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0AF684 800AEA84 AE190004 */  sw    $t9, 4($s0)
/* 0AF688 800AEA88 0C032384 */  jal   play_sound2
/* 0AF68C 800AEA8C 34848000 */   ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0AF690 800AEA90 C60A0024 */  lwc1  $f10, 0x24($s0)
/* 0AF694 800AEA94 3C01800F */  lui   $at, %hi(D_800F2A78)
/* 0AF698 800AEA98 D4302A78 */  ldc1  $f16, %lo(D_800F2A78)($at)
/* 0AF69C 800AEA9C 46005021 */  cvt.d.s $f0, $f10
/* 0AF6A0 800AEAA0 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 0AF6A4 800AEAA4 4630003C */  c.lt.d $f0, $f16
/* 0AF6A8 800AEAA8 24080001 */  li    $t0, 1
/* 0AF6AC 800AEAAC 3C09800E */  lui   $t1, %hi(gControllerOne) # $t1, 0x800e
/* 0AF6B0 800AEAB0 45020008 */  bc1fl .L800AEAD4
/* 0AF6B4 800AEAB4 AE080008 */   sw    $t0, 8($s0)
/* 0AF6B8 800AEAB8 44819800 */  mtc1  $at, $f19
/* 0AF6BC 800AEABC 44809000 */  mtc1  $zero, $f18
/* 0AF6C0 800AEAC0 00000000 */  nop
/* 0AF6C4 800AEAC4 46320100 */  add.d $f4, $f0, $f18
/* 0AF6C8 800AEAC8 462021A0 */  cvt.s.d $f6, $f4
/* 0AF6CC 800AEACC E6060024 */  swc1  $f6, 0x24($s0)
/* 0AF6D0 800AEAD0 AE080008 */  sw    $t0, 8($s0)
.L800AEAD4:
/* 0AF6D4 800AEAD4 8D29C4BC */  lw    $t1, %lo(gControllerOne)($t1)
/* 0AF6D8 800AEAD8 95240006 */  lhu   $a0, 6($t1)
.L800AEADC:
/* 0AF6DC 800AEADC 308A4000 */  andi  $t2, $a0, 0x4000
.L800AEAE0:
/* 0AF6E0 800AEAE0 11400009 */  beqz  $t2, .L800AEB08
/* 0AF6E4 800AEAE4 308D9000 */   andi  $t5, $a0, 0x9000
/* 0AF6E8 800AEAE8 8E0B0020 */  lw    $t3, 0x20($s0)
/* 0AF6EC 800AEAEC 3C044900 */  lui   $a0, (0x49008002 >> 16) # lui $a0, 0x4900
/* 0AF6F0 800AEAF0 34848002 */  ori   $a0, (0x49008002 & 0xFFFF) # ori $a0, $a0, 0x8002
/* 0AF6F4 800AEAF4 256C001E */  addiu $t4, $t3, 0x1e
/* 0AF6F8 800AEAF8 0C032384 */  jal   play_sound2
/* 0AF6FC 800AEAFC AE0C0004 */   sw    $t4, 4($s0)
/* 0AF700 800AEB00 10000050 */  b     .L800AEC44
/* 0AF704 800AEB04 8FBF0024 */   lw    $ra, 0x24($sp)
.L800AEB08:
/* 0AF708 800AEB08 51A0004E */  beql  $t5, $zero, .L800AEC44
/* 0AF70C 800AEB0C 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0AF710 800AEB10 8E0E0004 */  lw    $t6, 4($s0)
/* 0AF714 800AEB14 24010024 */  li    $at, 36
/* 0AF718 800AEB18 240F0028 */  li    $t7, 40
/* 0AF71C 800AEB1C 15C10015 */  bne   $t6, $at, .L800AEB74
/* 0AF720 800AEB20 3C044900 */   lui   $a0, (0x49008001 >> 16) # lui $a0, 0x4900
/* 0AF724 800AEB24 AE0F0004 */  sw    $t7, 4($s0)
/* 0AF728 800AEB28 AE00001C */  sw    $zero, 0x1c($s0)
/* 0AF72C 800AEB2C 0C032384 */  jal   play_sound2
/* 0AF730 800AEB30 34848001 */   ori   $a0, (0x49008001 & 0xFFFF) # ori $a0, $a0, 0x8001
/* 0AF734 800AEB34 C6080024 */  lwc1  $f8, 0x24($s0)
/* 0AF738 800AEB38 3C01800F */  lui   $at, %hi(D_800F2A80)
/* 0AF73C 800AEB3C D42A2A80 */  ldc1  $f10, %lo(D_800F2A80)($at)
/* 0AF740 800AEB40 46004021 */  cvt.d.s $f0, $f8
/* 0AF744 800AEB44 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 0AF748 800AEB48 462A003C */  c.lt.d $f0, $f10
/* 0AF74C 800AEB4C 00000000 */  nop
/* 0AF750 800AEB50 4502003C */  bc1fl .L800AEC44
/* 0AF754 800AEB54 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0AF758 800AEB58 44818800 */  mtc1  $at, $f17
/* 0AF75C 800AEB5C 44808000 */  mtc1  $zero, $f16
/* 0AF760 800AEB60 00000000 */  nop
/* 0AF764 800AEB64 46300480 */  add.d $f18, $f0, $f16
/* 0AF768 800AEB68 46209120 */  cvt.s.d $f4, $f18
/* 0AF76C 800AEB6C 10000034 */  b     .L800AEC40
/* 0AF770 800AEB70 E6040024 */   swc1  $f4, 0x24($s0)
.L800AEB74:
/* 0AF774 800AEB74 8E180020 */  lw    $t8, 0x20($s0)
/* 0AF778 800AEB78 3C044900 */  lui   $a0, (0x49008002 >> 16) # lui $a0, 0x4900
/* 0AF77C 800AEB7C 34848002 */  ori   $a0, (0x49008002 & 0xFFFF) # ori $a0, $a0, 0x8002
/* 0AF780 800AEB80 2719001E */  addiu $t9, $t8, 0x1e
/* 0AF784 800AEB84 0C032384 */  jal   play_sound2
/* 0AF788 800AEB88 AE190004 */   sw    $t9, 4($s0)
/* 0AF78C 800AEB8C 1000002D */  b     .L800AEC44
/* 0AF790 800AEB90 8FBF0024 */   lw    $ra, 0x24($sp)
glabel L800AEB94
/* 0AF794 800AEB94 8E08001C */  lw    $t0, 0x1c($s0)
/* 0AF798 800AEB98 24010001 */  li    $at, 1
/* 0AF79C 800AEB9C 3C048019 */  lui   $a0, %hi(gControllerPak1FileHandle) # $a0, 0x8019
/* 0AF7A0 800AEBA0 15010020 */  bne   $t0, $at, .L800AEC24
/* 0AF7A4 800AEBA4 2484E868 */   addiu $a0, %lo(gControllerPak1FileHandle) # addiu $a0, $a0, -0x1798
/* 0AF7A8 800AEBA8 3C09800F */  lui   $t1, %hi(gExtCode) # $t1, 0x800f
/* 0AF7AC 800AEBAC 3C0A8019 */  lui   $t2, %hi(gControllerPak1FileNote) # $t2, 0x8019
/* 0AF7B0 800AEBB0 254AEB84 */  addiu $t2, %lo(gControllerPak1FileNote) # addiu $t2, $t2, -0x147c
/* 0AF7B4 800AEBB4 25292E74 */  addiu $t1, %lo(gExtCode) # addiu $t1, $t1, 0x2e74
/* 0AF7B8 800AEBB8 3C05800F */  lui   $a1, %hi(gCompanyCode) # $a1, 0x800f
/* 0AF7BC 800AEBBC 3C06800F */  lui   $a2, %hi(gGameCode) # $a2, 0x800f
/* 0AF7C0 800AEBC0 3C07800F */  lui   $a3, %hi(gGameName) # $a3, 0x800f
/* 0AF7C4 800AEBC4 24E72E64 */  addiu $a3, %lo(gGameName) # addiu $a3, $a3, 0x2e64
/* 0AF7C8 800AEBC8 8CC686F4 */  lw    $a2, %lo(gGameCode)($a2)
/* 0AF7CC 800AEBCC 94A586F0 */  lhu   $a1, %lo(gCompanyCode)($a1)
/* 0AF7D0 800AEBD0 AFA90010 */  sw    $t1, 0x10($sp)
/* 0AF7D4 800AEBD4 0C033E20 */  jal   osPfsFindFile
/* 0AF7D8 800AEBD8 AFAA0014 */   sw    $t2, 0x14($sp)
/* 0AF7DC 800AEBDC 10400007 */  beqz  $v0, .L800AEBFC
/* 0AF7E0 800AEBE0 240B0029 */   li    $t3, 41
/* 0AF7E4 800AEBE4 3C044900 */  lui   $a0, (0x4900FF07 >> 16) # lui $a0, 0x4900
/* 0AF7E8 800AEBE8 AE0B0004 */  sw    $t3, 4($s0)
/* 0AF7EC 800AEBEC 0C032384 */  jal   play_sound2
/* 0AF7F0 800AEBF0 3484FF07 */   ori   $a0, (0x4900FF07 & 0xFFFF) # ori $a0, $a0, 0xff07
/* 0AF7F4 800AEBF4 10000013 */  b     .L800AEC44
/* 0AF7F8 800AEBF8 8FBF0024 */   lw    $ra, 0x24($sp)
.L800AEBFC:
/* 0AF7FC 800AEBFC 0C02D85E */  jal   func_800B6178
/* 0AF800 800AEC00 8E040020 */   lw    $a0, 0x20($s0)
/* 0AF804 800AEC04 10400007 */  beqz  $v0, .L800AEC24
/* 0AF808 800AEC08 240C0029 */   li    $t4, 41
/* 0AF80C 800AEC0C 3C044900 */  lui   $a0, (0x4900FF07 >> 16) # lui $a0, 0x4900
/* 0AF810 800AEC10 AE0C0004 */  sw    $t4, 4($s0)
/* 0AF814 800AEC14 0C032384 */  jal   play_sound2
/* 0AF818 800AEC18 3484FF07 */   ori   $a0, (0x4900FF07 & 0xFFFF) # ori $a0, $a0, 0xff07
/* 0AF81C 800AEC1C 10000009 */  b     .L800AEC44
/* 0AF820 800AEC20 8FBF0024 */   lw    $ra, 0x24($sp)
.L800AEC24:
/* 0AF824 800AEC24 8E0D001C */  lw    $t5, 0x1c($s0)
/* 0AF828 800AEC28 24180010 */  li    $t8, 16
/* 0AF82C 800AEC2C 25AE0001 */  addiu $t6, $t5, 1
/* 0AF830 800AEC30 29C10002 */  slti  $at, $t6, 2
/* 0AF834 800AEC34 14200002 */  bnez  $at, .L800AEC40
/* 0AF838 800AEC38 AE0E001C */   sw    $t6, 0x1c($s0)
/* 0AF83C 800AEC3C AE180004 */  sw    $t8, 4($s0)
.L800AEC40:
glabel L800AEC40
/* 0AF840 800AEC40 8FBF0024 */  lw    $ra, 0x24($sp)
.L800AEC44:
/* 0AF844 800AEC44 8FB00020 */  lw    $s0, 0x20($sp)
/* 0AF848 800AEC48 27BD0030 */  addiu $sp, $sp, 0x30
/* 0AF84C 800AEC4C 03E00008 */  jr    $ra
/* 0AF850 800AEC50 00000000 */   nop
