glabel func_800B20F4
/* 0B2CF4 800B20F4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0B2CF8 800B20F8 240E0001 */  li    $t6, 1
/* 0B2CFC 800B20FC AFBF001C */  sw    $ra, 0x1c($sp)
/* 0B2D00 800B2100 AFB00018 */  sw    $s0, 0x18($sp)
/* 0B2D04 800B2104 AFA50034 */  sw    $a1, 0x34($sp)
/* 0B2D08 800B2108 AFAE0028 */  sw    $t6, 0x28($sp)
/* 0B2D0C 800B210C 9498000C */  lhu   $t8, 0xc($a0)
/* 0B2D10 800B2110 948F0006 */  lhu   $t7, 6($a0)
/* 0B2D14 800B2114 30B0FFFF */  andi  $s0, $a1, 0xffff
/* 0B2D18 800B2118 AFA40030 */  sw    $a0, 0x30($sp)
/* 0B2D1C 800B211C 01F8C825 */  or    $t9, $t7, $t8
/* 0B2D20 800B2120 0C02D148 */  jal   func_800B4520
/* 0B2D24 800B2124 A7B9002E */   sh    $t9, 0x2e($sp)
/* 0B2D28 800B2128 144001E2 */  bnez  $v0, .L800B28B4
/* 0B2D2C 800B212C 3C0A8019 */   lui   $t2, %hi(gStartMenuDebugRowSelection) # $t2, 0x8019
/* 0B2D30 800B2130 16000005 */  bnez  $s0, .L800B2148
/* 0B2D34 800B2134 3C028019 */   lui   $v0, %hi(D_8018EE04) # $v0, 0x8019
/* 0B2D38 800B2138 2442EE04 */  addiu $v0, %lo(D_8018EE04) # addiu $v0, $v0, -0x11fc
/* 0B2D3C 800B213C 8C480000 */  lw    $t0, ($v0)
/* 0B2D40 800B2140 25090001 */  addiu $t1, $t0, 1
/* 0B2D44 800B2144 AC490000 */  sw    $t1, ($v0)
.L800B2148:
/* 0B2D48 800B2148 814AEDEF */  lb    $t2, %lo(gStartMenuDebugRowSelection)($t2)
/* 0B2D4C 800B214C 3C028019 */  lui   $v0, %hi(D_8018EE04) # $v0, 0x8019
/* 0B2D50 800B2150 2442EE04 */  addiu $v0, %lo(D_8018EE04) # addiu $v0, $v0, -0x11fc
/* 0B2D54 800B2154 254BFFFF */  addiu $t3, $t2, -1
/* 0B2D58 800B2158 2D610007 */  sltiu $at, $t3, 7
/* 0B2D5C 800B215C 10200182 */  beqz  $at, .L800B2768
/* 0B2D60 800B2160 000B5880 */   sll   $t3, $t3, 2
/* 0B2D64 800B2164 3C01800F */  lui   $at, %hi(jpt_800F2DE0) # 0x800f
/* 0B2D68 800B2168 002B0821 */  addu  $at, $at, $t3
/* 0B2D6C 800B216C 8C2B2DE0 */  lw    $t3, %lo(jpt_800F2DE0)($at) # 0x2de0($at)
/* 0B2D70 800B2170 01600008 */  jr    $t3
/* 0B2D74 800B2174 00000000 */   nop   
glabel L800B2178
/* 0B2D78 800B2178 8C4C0000 */  lw    $t4, ($v0)
/* 0B2D7C 800B217C 97AD002E */  lhu   $t5, 0x2e($sp)
/* 0B2D80 800B2180 AFA00028 */  sw    $zero, 0x28($sp)
/* 0B2D84 800B2184 2981002E */  slti  $at, $t4, 0x2e
/* 0B2D88 800B2188 1420000D */  bnez  $at, .L800B21C0
/* 0B2D8C 800B218C 31AE9000 */   andi  $t6, $t5, 0x9000
/* 0B2D90 800B2190 11C0000B */  beqz  $t6, .L800B21C0
/* 0B2D94 800B2194 00000000 */   nop   
/* 0B2D98 800B2198 0C027870 */  jal   func_8009E1C0
/* 0B2D9C 800B219C 00000000 */   nop   
/* 0B2DA0 800B21A0 0C0328CC */  jal   func_800CA330
/* 0B2DA4 800B21A4 24040019 */   li    $a0, 25
/* 0B2DA8 800B21A8 3C044900 */  lui   $a0, (0x4900801A >> 16) # lui $a0, 0x4900
/* 0B2DAC 800B21AC 0C032384 */  jal   play_sound2
/* 0B2DB0 800B21B0 3484801A */   ori   $a0, (0x4900801A & 0xFFFF) # ori $a0, $a0, 0x801a
/* 0B2DB4 800B21B4 3C028019 */  lui   $v0, %hi(D_8018EDF1) # $v0, 0x8019
/* 0B2DB8 800B21B8 1000016D */  b     .L800B2770
/* 0B2DBC 800B21BC 8042EDF1 */   lb    $v0, %lo(D_8018EDF1)($v0)
.L800B21C0:
/* 0B2DC0 800B21C0 3C028019 */  lui   $v0, %hi(D_8018EDF1) # $v0, 0x8019
/* 0B2DC4 800B21C4 1000016A */  b     .L800B2770
/* 0B2DC8 800B21C8 8042EDF1 */   lb    $v0, %lo(D_8018EDF1)($v0)
glabel L800B21CC
/* 0B2DCC 800B21CC 97A3002E */  lhu   $v1, 0x2e($sp)
/* 0B2DD0 800B21D0 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B2DD4 800B21D4 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B2DD8 800B21D8 306F0300 */  andi  $t7, $v1, 0x300
/* 0B2DDC 800B21DC 51E0000E */  beql  $t7, $zero, .L800B2218
/* 0B2DE0 800B21E0 30680400 */   andi  $t0, $v1, 0x400
/* 0B2DE4 800B21E4 0C032384 */  jal   play_sound2
/* 0B2DE8 800B21E8 AFA30024 */   sw    $v1, 0x24($sp)
/* 0B2DEC 800B21EC 3C02800E */  lui   $v0, %hi(gEnableDebugMode) # $v0, 0x800e
/* 0B2DF0 800B21F0 2442C520 */  addiu $v0, %lo(gEnableDebugMode) # addiu $v0, $v0, -0x3ae0
/* 0B2DF4 800B21F4 94580000 */  lhu   $t8, ($v0)
/* 0B2DF8 800B21F8 8FA30024 */  lw    $v1, 0x24($sp)
/* 0B2DFC 800B21FC 24190001 */  li    $t9, 1
/* 0B2E00 800B2200 53000004 */  beql  $t8, $zero, .L800B2214
/* 0B2E04 800B2204 A4590000 */   sh    $t9, ($v0)
/* 0B2E08 800B2208 10000002 */  b     .L800B2214
/* 0B2E0C 800B220C A4400000 */   sh    $zero, ($v0)
/* 0B2E10 800B2210 A4590000 */  sh    $t9, ($v0)
.L800B2214:
/* 0B2E14 800B2214 30680400 */  andi  $t0, $v1, 0x400
.L800B2218:
/* 0B2E18 800B2218 11000006 */  beqz  $t0, .L800B2234
/* 0B2E1C 800B221C 3C044900 */   lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B2E20 800B2220 0C032384 */  jal   play_sound2
/* 0B2E24 800B2224 34848000 */   ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B2E28 800B2228 24090003 */  li    $t1, 3
/* 0B2E2C 800B222C 3C018019 */  lui   $at, %hi(gStartMenuDebugRowSelection) # $at, 0x8019
/* 0B2E30 800B2230 A029EDEF */  sb    $t1, %lo(gStartMenuDebugRowSelection)($at)
.L800B2234:
/* 0B2E34 800B2234 3C028019 */  lui   $v0, %hi(D_8018EDF1) # $v0, 0x8019
/* 0B2E38 800B2238 1000014D */  b     .L800B2770
/* 0B2E3C 800B223C 8042EDF1 */   lb    $v0, %lo(D_8018EDF1)($v0)
glabel L800B2240
/* 0B2E40 800B2240 97A3002E */  lhu   $v1, 0x2e($sp)
/* 0B2E44 800B2244 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B2E48 800B2248 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B2E4C 800B224C 306A0100 */  andi  $t2, $v1, 0x100
/* 0B2E50 800B2250 1140000D */  beqz  $t2, .L800B2288
/* 0B2E54 800B2254 00000000 */   nop   
/* 0B2E58 800B2258 0C032384 */  jal   play_sound2
/* 0B2E5C 800B225C AFA30024 */   sw    $v1, 0x24($sp)
/* 0B2E60 800B2260 3C10800E */  lui   $s0, %hi(gCurrentCourseId) # $s0, 0x800e
/* 0B2E64 800B2264 2610C5A0 */  addiu $s0, %lo(gCurrentCourseId) # addiu $s0, $s0, -0x3a60
/* 0B2E68 800B2268 86020000 */  lh    $v0, ($s0)
/* 0B2E6C 800B226C 8FA30024 */  lw    $v1, 0x24($sp)
/* 0B2E70 800B2270 28410013 */  slti  $at, $v0, 0x13
/* 0B2E74 800B2274 10200003 */  beqz  $at, .L800B2284
/* 0B2E78 800B2278 244B0001 */   addiu $t3, $v0, 1
/* 0B2E7C 800B227C 10000002 */  b     .L800B2288
/* 0B2E80 800B2280 A60B0000 */   sh    $t3, ($s0)
.L800B2284:
/* 0B2E84 800B2284 A6000000 */  sh    $zero, ($s0)
.L800B2288:
/* 0B2E88 800B2288 3C10800E */  lui   $s0, %hi(gCurrentCourseId) # $s0, 0x800e
/* 0B2E8C 800B228C 306C0200 */  andi  $t4, $v1, 0x200
/* 0B2E90 800B2290 1180000D */  beqz  $t4, .L800B22C8
/* 0B2E94 800B2294 2610C5A0 */   addiu $s0, %lo(gCurrentCourseId) # addiu $s0, $s0, -0x3a60
/* 0B2E98 800B2298 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B2E9C 800B229C 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B2EA0 800B22A0 0C032384 */  jal   play_sound2
/* 0B2EA4 800B22A4 AFA30024 */   sw    $v1, 0x24($sp)
/* 0B2EA8 800B22A8 86020000 */  lh    $v0, ($s0)
/* 0B2EAC 800B22AC 8FA30024 */  lw    $v1, 0x24($sp)
/* 0B2EB0 800B22B0 240E0013 */  li    $t6, 19
/* 0B2EB4 800B22B4 18400003 */  blez  $v0, .L800B22C4
/* 0B2EB8 800B22B8 244DFFFF */   addiu $t5, $v0, -1
/* 0B2EBC 800B22BC 10000002 */  b     .L800B22C8
/* 0B2EC0 800B22C0 A60D0000 */   sh    $t5, ($s0)
.L800B22C4:
/* 0B2EC4 800B22C4 A60E0000 */  sh    $t6, ($s0)
.L800B22C8:
/* 0B2EC8 800B22C8 306F0800 */  andi  $t7, $v1, 0x800
/* 0B2ECC 800B22CC 11E00008 */  beqz  $t7, .L800B22F0
/* 0B2ED0 800B22D0 3C044900 */   lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B2ED4 800B22D4 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B2ED8 800B22D8 0C032384 */  jal   play_sound2
/* 0B2EDC 800B22DC AFA30024 */   sw    $v1, 0x24($sp)
/* 0B2EE0 800B22E0 24180002 */  li    $t8, 2
/* 0B2EE4 800B22E4 3C018019 */  lui   $at, %hi(gStartMenuDebugRowSelection) # $at, 0x8019
/* 0B2EE8 800B22E8 8FA30024 */  lw    $v1, 0x24($sp)
/* 0B2EEC 800B22EC A038EDEF */  sb    $t8, %lo(gStartMenuDebugRowSelection)($at)
.L800B22F0:
/* 0B2EF0 800B22F0 30790400 */  andi  $t9, $v1, 0x400
/* 0B2EF4 800B22F4 13200006 */  beqz  $t9, .L800B2310
/* 0B2EF8 800B22F8 3C044900 */   lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B2EFC 800B22FC 0C032384 */  jal   play_sound2
/* 0B2F00 800B2300 34848000 */   ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B2F04 800B2304 24080004 */  li    $t0, 4
/* 0B2F08 800B2308 3C018019 */  lui   $at, %hi(gStartMenuDebugRowSelection) # $at, 0x8019
/* 0B2F0C 800B230C A028EDEF */  sb    $t0, %lo(gStartMenuDebugRowSelection)($at)
.L800B2310:
/* 0B2F10 800B2310 3C028019 */  lui   $v0, %hi(D_8018EDF1) # $v0, 0x8019
/* 0B2F14 800B2314 10000116 */  b     .L800B2770
/* 0B2F18 800B2318 8042EDF1 */   lb    $v0, %lo(D_8018EDF1)($v0)
glabel L800B231C
/* 0B2F1C 800B231C 97A3002E */  lhu   $v1, 0x2e($sp)
/* 0B2F20 800B2320 3C108019 */  lui   $s0, %hi(D_8018EDF1) # $s0, 0x8019
/* 0B2F24 800B2324 2610EDF1 */  addiu $s0, %lo(D_8018EDF1) # addiu $s0, $s0, -0x120f
/* 0B2F28 800B2328 30690100 */  andi  $t1, $v1, 0x100
/* 0B2F2C 800B232C 11200011 */  beqz  $t1, .L800B2374
/* 0B2F30 800B2330 00000000 */   nop   
/* 0B2F34 800B2334 82020000 */  lb    $v0, ($s0)
/* 0B2F38 800B2338 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B2F3C 800B233C 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B2F40 800B2340 28410004 */  slti  $at, $v0, 4
/* 0B2F44 800B2344 1020000B */  beqz  $at, .L800B2374
/* 0B2F48 800B2348 244A0001 */   addiu $t2, $v0, 1
/* 0B2F4C 800B234C A20A0000 */  sb    $t2, ($s0)
/* 0B2F50 800B2350 0C032384 */  jal   play_sound2
/* 0B2F54 800B2354 AFA30024 */   sw    $v1, 0x24($sp)
/* 0B2F58 800B2358 820B0000 */  lb    $t3, ($s0)
/* 0B2F5C 800B235C 3C0C800F */  lui   $t4, %hi(D_800F2B50) # 0x800f
/* 0B2F60 800B2360 3C01800E */  lui   $at, %hi(D_800DC530) # $at, 0x800e
/* 0B2F64 800B2364 018B6021 */  addu  $t4, $t4, $t3
/* 0B2F68 800B2368 818C2B50 */  lb    $t4, %lo(D_800F2B50)($t4) # 0x2b50($t4)
/* 0B2F6C 800B236C 8FA30024 */  lw    $v1, 0x24($sp)
/* 0B2F70 800B2370 AC2CC530 */  sw    $t4, %lo(D_800DC530)($at)
.L800B2374:
/* 0B2F74 800B2374 3C108019 */  lui   $s0, %hi(D_8018EDF1) # $s0, 0x8019
/* 0B2F78 800B2378 306D0200 */  andi  $t5, $v1, 0x200
/* 0B2F7C 800B237C 11A00010 */  beqz  $t5, .L800B23C0
/* 0B2F80 800B2380 2610EDF1 */   addiu $s0, %lo(D_8018EDF1) # addiu $s0, $s0, -0x120f
/* 0B2F84 800B2384 82020000 */  lb    $v0, ($s0)
/* 0B2F88 800B2388 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B2F8C 800B238C 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B2F90 800B2390 1840000B */  blez  $v0, .L800B23C0
/* 0B2F94 800B2394 244EFFFF */   addiu $t6, $v0, -1
/* 0B2F98 800B2398 A20E0000 */  sb    $t6, ($s0)
/* 0B2F9C 800B239C 0C032384 */  jal   play_sound2
/* 0B2FA0 800B23A0 AFA30024 */   sw    $v1, 0x24($sp)
/* 0B2FA4 800B23A4 820F0000 */  lb    $t7, ($s0)
/* 0B2FA8 800B23A8 3C18800F */  lui   $t8, %hi(D_800F2B50) # 0x800f
/* 0B2FAC 800B23AC 3C01800E */  lui   $at, %hi(D_800DC530) # $at, 0x800e
/* 0B2FB0 800B23B0 030FC021 */  addu  $t8, $t8, $t7
/* 0B2FB4 800B23B4 83182B50 */  lb    $t8, %lo(D_800F2B50)($t8) # 0x2b50($t8)
/* 0B2FB8 800B23B8 8FA30024 */  lw    $v1, 0x24($sp)
/* 0B2FBC 800B23BC AC38C530 */  sw    $t8, %lo(D_800DC530)($at)
.L800B23C0:
/* 0B2FC0 800B23C0 30790800 */  andi  $t9, $v1, 0x800
/* 0B2FC4 800B23C4 13200008 */  beqz  $t9, .L800B23E8
/* 0B2FC8 800B23C8 24080003 */   li    $t0, 3
/* 0B2FCC 800B23CC 3C018019 */  lui   $at, %hi(gStartMenuDebugRowSelection) # $at, 0x8019
/* 0B2FD0 800B23D0 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B2FD4 800B23D4 A028EDEF */  sb    $t0, %lo(gStartMenuDebugRowSelection)($at)
/* 0B2FD8 800B23D8 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B2FDC 800B23DC 0C032384 */  jal   play_sound2
/* 0B2FE0 800B23E0 AFA30024 */   sw    $v1, 0x24($sp)
/* 0B2FE4 800B23E4 8FA30024 */  lw    $v1, 0x24($sp)
.L800B23E8:
/* 0B2FE8 800B23E8 30690400 */  andi  $t1, $v1, 0x400
/* 0B2FEC 800B23EC 11200006 */  beqz  $t1, .L800B2408
/* 0B2FF0 800B23F0 240A0005 */   li    $t2, 5
/* 0B2FF4 800B23F4 3C018019 */  lui   $at, %hi(gStartMenuDebugRowSelection) # $at, 0x8019
/* 0B2FF8 800B23F8 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B2FFC 800B23FC A02AEDEF */  sb    $t2, %lo(gStartMenuDebugRowSelection)($at)
/* 0B3000 800B2400 0C032384 */  jal   play_sound2
/* 0B3004 800B2404 34848000 */   ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
.L800B2408:
/* 0B3008 800B2408 3C028019 */  lui   $v0, %hi(D_8018EDF1) # $v0, 0x8019
/* 0B300C 800B240C 100000D8 */  b     .L800B2770
/* 0B3010 800B2410 8042EDF1 */   lb    $v0, %lo(D_8018EDF1)($v0)
glabel L800B2414
/* 0B3014 800B2414 97A3002E */  lhu   $v1, 0x2e($sp)
/* 0B3018 800B2418 3C10800F */  lui   $s0, %hi(D_800E86A8) # $s0, 0x800f
/* 0B301C 800B241C 261086A8 */  addiu $s0, %lo(D_800E86A8) # addiu $s0, $s0, -0x7958
/* 0B3020 800B2420 306B0100 */  andi  $t3, $v1, 0x100
/* 0B3024 800B2424 1160000B */  beqz  $t3, .L800B2454
/* 0B3028 800B2428 00000000 */   nop   
/* 0B302C 800B242C 82020000 */  lb    $v0, ($s0)
/* 0B3030 800B2430 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B3034 800B2434 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B3038 800B2438 28410007 */  slti  $at, $v0, 7
/* 0B303C 800B243C 10200005 */  beqz  $at, .L800B2454
/* 0B3040 800B2440 244C0001 */   addiu $t4, $v0, 1
/* 0B3044 800B2444 A20C0000 */  sb    $t4, ($s0)
/* 0B3048 800B2448 0C032384 */  jal   play_sound2
/* 0B304C 800B244C AFA30024 */   sw    $v1, 0x24($sp)
/* 0B3050 800B2450 8FA30024 */  lw    $v1, 0x24($sp)
.L800B2454:
/* 0B3054 800B2454 3C10800F */  lui   $s0, %hi(D_800E86A8) # $s0, 0x800f
/* 0B3058 800B2458 306D0200 */  andi  $t5, $v1, 0x200
/* 0B305C 800B245C 11A0000A */  beqz  $t5, .L800B2488
/* 0B3060 800B2460 261086A8 */   addiu $s0, %lo(D_800E86A8) # addiu $s0, $s0, -0x7958
/* 0B3064 800B2464 82020000 */  lb    $v0, ($s0)
/* 0B3068 800B2468 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B306C 800B246C 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B3070 800B2470 18400005 */  blez  $v0, .L800B2488
/* 0B3074 800B2474 244EFFFF */   addiu $t6, $v0, -1
/* 0B3078 800B2478 A20E0000 */  sb    $t6, ($s0)
/* 0B307C 800B247C 0C032384 */  jal   play_sound2
/* 0B3080 800B2480 AFA30024 */   sw    $v1, 0x24($sp)
/* 0B3084 800B2484 8FA30024 */  lw    $v1, 0x24($sp)
.L800B2488:
/* 0B3088 800B2488 306F0800 */  andi  $t7, $v1, 0x800
/* 0B308C 800B248C 11E00008 */  beqz  $t7, .L800B24B0
/* 0B3090 800B2490 24180004 */   li    $t8, 4
/* 0B3094 800B2494 3C018019 */  lui   $at, %hi(gStartMenuDebugRowSelection) # $at, 0x8019
/* 0B3098 800B2498 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B309C 800B249C A038EDEF */  sb    $t8, %lo(gStartMenuDebugRowSelection)($at)
/* 0B30A0 800B24A0 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B30A4 800B24A4 0C032384 */  jal   play_sound2
/* 0B30A8 800B24A8 AFA30024 */   sw    $v1, 0x24($sp)
/* 0B30AC 800B24AC 8FA30024 */  lw    $v1, 0x24($sp)
.L800B24B0:
/* 0B30B0 800B24B0 30790400 */  andi  $t9, $v1, 0x400
/* 0B30B4 800B24B4 13200006 */  beqz  $t9, .L800B24D0
/* 0B30B8 800B24B8 24080006 */   li    $t0, 6
/* 0B30BC 800B24BC 3C018019 */  lui   $at, %hi(gStartMenuDebugRowSelection) # $at, 0x8019
/* 0B30C0 800B24C0 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B30C4 800B24C4 A028EDEF */  sb    $t0, %lo(gStartMenuDebugRowSelection)($at)
/* 0B30C8 800B24C8 0C032384 */  jal   play_sound2
/* 0B30CC 800B24CC 34848000 */   ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
.L800B24D0:
/* 0B30D0 800B24D0 3C028019 */  lui   $v0, %hi(D_8018EDF1) # $v0, 0x8019
/* 0B30D4 800B24D4 100000A6 */  b     .L800B2770
/* 0B30D8 800B24D8 8042EDF1 */   lb    $v0, %lo(D_8018EDF1)($v0)
glabel L800B24DC
/* 0B30DC 800B24DC 97A3002E */  lhu   $v1, 0x2e($sp)
/* 0B30E0 800B24E0 3C108019 */  lui   $s0, %hi(gSoundMode) # $s0, 0x8019
/* 0B30E4 800B24E4 2610EDF2 */  addiu $s0, %lo(gSoundMode) # addiu $s0, $s0, -0x120e
/* 0B30E8 800B24E8 30690100 */  andi  $t1, $v1, 0x100
/* 0B30EC 800B24EC 11200018 */  beqz  $t1, .L800B2550
/* 0B30F0 800B24F0 00000000 */   nop   
/* 0B30F4 800B24F4 92020000 */  lbu   $v0, ($s0)
/* 0B30F8 800B24F8 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B30FC 800B24FC 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B3100 800B2500 28410003 */  slti  $at, $v0, 3
/* 0B3104 800B2504 10200012 */  beqz  $at, .L800B2550
/* 0B3108 800B2508 244A0001 */   addiu $t2, $v0, 1
/* 0B310C 800B250C 314B00FF */  andi  $t3, $t2, 0xff
/* 0B3110 800B2510 24010002 */  li    $at, 2
/* 0B3114 800B2514 15610003 */  bne   $t3, $at, .L800B2524
/* 0B3118 800B2518 A20A0000 */   sb    $t2, ($s0)
/* 0B311C 800B251C 240C0003 */  li    $t4, 3
/* 0B3120 800B2520 A20C0000 */  sb    $t4, ($s0)
.L800B2524:
/* 0B3124 800B2524 0C032384 */  jal   play_sound2
/* 0B3128 800B2528 AFA30024 */   sw    $v1, 0x24($sp)
/* 0B312C 800B252C 0C02D12F */  jal   func_800B44BC
/* 0B3130 800B2530 00000000 */   nop   
/* 0B3134 800B2534 920D0000 */  lbu   $t5, ($s0)
/* 0B3138 800B2538 3C018019 */  lui   $at, %hi(gSaveDataSoundMode) # $at, 0x8019
/* 0B313C 800B253C 0C02D19C */  jal   func_800B4670
/* 0B3140 800B2540 A02DED14 */   sb    $t5, %lo(gSaveDataSoundMode)($at)
/* 0B3144 800B2544 0C02D652 */  jal   func_800B5948
/* 0B3148 800B2548 00000000 */   nop   
/* 0B314C 800B254C 8FA30024 */  lw    $v1, 0x24($sp)
.L800B2550:
/* 0B3150 800B2550 3C108019 */  lui   $s0, %hi(gSoundMode) # $s0, 0x8019
/* 0B3154 800B2554 306E0200 */  andi  $t6, $v1, 0x200
/* 0B3158 800B2558 11C00015 */  beqz  $t6, .L800B25B0
/* 0B315C 800B255C 2610EDF2 */   addiu $s0, %lo(gSoundMode) # addiu $s0, $s0, -0x120e
/* 0B3160 800B2560 92020000 */  lbu   $v0, ($s0)
/* 0B3164 800B2564 24010002 */  li    $at, 2
/* 0B3168 800B2568 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B316C 800B256C 18400010 */  blez  $v0, .L800B25B0
/* 0B3170 800B2570 244FFFFF */   addiu $t7, $v0, -1
/* 0B3174 800B2574 31F800FF */  andi  $t8, $t7, 0xff
/* 0B3178 800B2578 17010003 */  bne   $t8, $at, .L800B2588
/* 0B317C 800B257C A20F0000 */   sb    $t7, ($s0)
/* 0B3180 800B2580 24190001 */  li    $t9, 1
/* 0B3184 800B2584 A2190000 */  sb    $t9, ($s0)
.L800B2588:
/* 0B3188 800B2588 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B318C 800B258C 0C032384 */  jal   play_sound2
/* 0B3190 800B2590 AFA30024 */   sw    $v1, 0x24($sp)
/* 0B3194 800B2594 0C02D12F */  jal   func_800B44BC
/* 0B3198 800B2598 00000000 */   nop   
/* 0B319C 800B259C 92080000 */  lbu   $t0, ($s0)
/* 0B31A0 800B25A0 3C018019 */  lui   $at, %hi(gSaveDataSoundMode) # $at, 0x8019
/* 0B31A4 800B25A4 0C02D19C */  jal   func_800B4670
/* 0B31A8 800B25A8 A028ED14 */   sb    $t0, %lo(gSaveDataSoundMode)($at)
/* 0B31AC 800B25AC 8FA30024 */  lw    $v1, 0x24($sp)
.L800B25B0:
/* 0B31B0 800B25B0 30690800 */  andi  $t1, $v1, 0x800
/* 0B31B4 800B25B4 11200008 */  beqz  $t1, .L800B25D8
/* 0B31B8 800B25B8 240A0005 */   li    $t2, 5
/* 0B31BC 800B25BC 3C018019 */  lui   $at, %hi(gStartMenuDebugRowSelection) # $at, 0x8019
/* 0B31C0 800B25C0 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B31C4 800B25C4 A02AEDEF */  sb    $t2, %lo(gStartMenuDebugRowSelection)($at)
/* 0B31C8 800B25C8 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B31CC 800B25CC 0C032384 */  jal   play_sound2
/* 0B31D0 800B25D0 AFA30024 */   sw    $v1, 0x24($sp)
/* 0B31D4 800B25D4 8FA30024 */  lw    $v1, 0x24($sp)
.L800B25D8:
/* 0B31D8 800B25D8 306B0400 */  andi  $t3, $v1, 0x400
/* 0B31DC 800B25DC 11600006 */  beqz  $t3, .L800B25F8
/* 0B31E0 800B25E0 240C0007 */   li    $t4, 7
/* 0B31E4 800B25E4 3C018019 */  lui   $at, %hi(gStartMenuDebugRowSelection) # $at, 0x8019
/* 0B31E8 800B25E8 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B31EC 800B25EC A02CEDEF */  sb    $t4, %lo(gStartMenuDebugRowSelection)($at)
/* 0B31F0 800B25F0 0C032384 */  jal   play_sound2
/* 0B31F4 800B25F4 34848000 */   ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
.L800B25F8:
/* 0B31F8 800B25F8 3C028019 */  lui   $v0, %hi(D_8018EDF1) # $v0, 0x8019
/* 0B31FC 800B25FC 1000005C */  b     .L800B2770
/* 0B3200 800B2600 8042EDF1 */   lb    $v0, %lo(D_8018EDF1)($v0)
glabel L800B2604
/* 0B3204 800B2604 97A3002E */  lhu   $v1, 0x2e($sp)
/* 0B3208 800B2608 240E0006 */  li    $t6, 6
/* 0B320C 800B260C 3C018019 */  lui   $at, %hi(gStartMenuDebugRowSelection) # $at, 0x8019
/* 0B3210 800B2610 306D0800 */  andi  $t5, $v1, 0x800
/* 0B3214 800B2614 11A00006 */  beqz  $t5, .L800B2630
/* 0B3218 800B2618 3C044900 */   lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B321C 800B261C A02EEDEF */  sb    $t6, %lo(gStartMenuDebugRowSelection)($at)
/* 0B3220 800B2620 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B3224 800B2624 0C032384 */  jal   play_sound2
/* 0B3228 800B2628 AFA30024 */   sw    $v1, 0x24($sp)
/* 0B322C 800B262C 8FA30024 */  lw    $v1, 0x24($sp)
.L800B2630:
/* 0B3230 800B2630 306F4000 */  andi  $t7, $v1, 0x4000
/* 0B3234 800B2634 11E00010 */  beqz  $t7, .L800B2678
/* 0B3238 800B2638 30790020 */   andi  $t9, $v1, 0x20
/* 0B323C 800B263C 00008025 */  move  $s0, $zero
/* 0B3240 800B2640 00002825 */  move  $a1, $zero
.L800B2644:
/* 0B3244 800B2644 0C02D501 */  jal   func_800B5404
/* 0B3248 800B2648 00002025 */   move  $a0, $zero
/* 0B324C 800B264C 26100001 */  addiu $s0, $s0, 1
/* 0B3250 800B2650 3205FFFF */  andi  $a1, $s0, 0xffff
/* 0B3254 800B2654 28A10010 */  slti  $at, $a1, 0x10
/* 0B3258 800B2658 1420FFFA */  bnez  $at, .L800B2644
/* 0B325C 800B265C 00A08025 */   move  $s0, $a1
/* 0B3260 800B2660 3C044900 */  lui   $a0, (0x49008001 >> 16) # lui $a0, 0x4900
/* 0B3264 800B2664 0C032384 */  jal   play_sound2
/* 0B3268 800B2668 34848001 */   ori   $a0, (0x49008001 & 0xFFFF) # ori $a0, $a0, 0x8001
/* 0B326C 800B266C 3C028019 */  lui   $v0, %hi(D_8018EDF1) # $v0, 0x8019
/* 0B3270 800B2670 1000003F */  b     .L800B2770
/* 0B3274 800B2674 8042EDF1 */   lb    $v0, %lo(D_8018EDF1)($v0)
.L800B2678:
/* 0B3278 800B2678 13200016 */  beqz  $t9, .L800B26D4
/* 0B327C 800B267C 30690200 */   andi  $t1, $v1, 0x200
/* 0B3280 800B2680 0C02D208 */  jal   func_800B4820
/* 0B3284 800B2684 00000000 */   nop   
/* 0B3288 800B2688 00008025 */  move  $s0, $zero
/* 0B328C 800B268C 00002825 */  move  $a1, $zero
.L800B2690:
/* 0B3290 800B2690 04A10003 */  bgez  $a1, .L800B26A0
/* 0B3294 800B2694 00052083 */   sra   $a0, $a1, 2
/* 0B3298 800B2698 24A10003 */  addiu $at, $a1, 3
/* 0B329C 800B269C 00012083 */  sra   $a0, $at, 2
.L800B26A0:
/* 0B32A0 800B26A0 0C02D501 */  jal   func_800B5404
/* 0B32A4 800B26A4 00000000 */   nop   
/* 0B32A8 800B26A8 26100001 */  addiu $s0, $s0, 1
/* 0B32AC 800B26AC 3205FFFF */  andi  $a1, $s0, 0xffff
/* 0B32B0 800B26B0 28A10010 */  slti  $at, $a1, 0x10
/* 0B32B4 800B26B4 1420FFF6 */  bnez  $at, .L800B2690
/* 0B32B8 800B26B8 00A08025 */   move  $s0, $a1
/* 0B32BC 800B26BC 3C044900 */  lui   $a0, (0x49008001 >> 16) # lui $a0, 0x4900
/* 0B32C0 800B26C0 0C032384 */  jal   play_sound2
/* 0B32C4 800B26C4 34848001 */   ori   $a0, (0x49008001 & 0xFFFF) # ori $a0, $a0, 0x8001
/* 0B32C8 800B26C8 3C028019 */  lui   $v0, %hi(D_8018EDF1) # $v0, 0x8019
/* 0B32CC 800B26CC 10000028 */  b     .L800B2770
/* 0B32D0 800B26D0 8042EDF1 */   lb    $v0, %lo(D_8018EDF1)($v0)
.L800B26D4:
/* 0B32D4 800B26D4 11200022 */  beqz  $t1, .L800B2760
/* 0B32D8 800B26D8 3C028019 */   lui   $v0, %hi(D_8018EDF1) # 0x8019
/* 0B32DC 800B26DC 0C02D208 */  jal   func_800B4820
/* 0B32E0 800B26E0 00000000 */   nop   
/* 0B32E4 800B26E4 00008025 */  move  $s0, $zero
/* 0B32E8 800B26E8 00002825 */  move  $a1, $zero
.L800B26EC:
/* 0B32EC 800B26EC 04A10004 */  bgez  $a1, .L800B2700
/* 0B32F0 800B26F0 30AA0003 */   andi  $t2, $a1, 3
/* 0B32F4 800B26F4 11400002 */  beqz  $t2, .L800B2700
/* 0B32F8 800B26F8 00000000 */   nop   
/* 0B32FC 800B26FC 254AFFFC */  addiu $t2, $t2, -4
.L800B2700:
/* 0B3300 800B2700 24010002 */  li    $at, 2
/* 0B3304 800B2704 15410005 */  bne   $t2, $at, .L800B271C
/* 0B3308 800B2708 00000000 */   nop   
/* 0B330C 800B270C 0C02D501 */  jal   func_800B5404
/* 0B3310 800B2710 00002025 */   move  $a0, $zero
/* 0B3314 800B2714 10000008 */  b     .L800B2738
/* 0B3318 800B2718 26100001 */   addiu $s0, $s0, 1
.L800B271C:
/* 0B331C 800B271C 04A10003 */  bgez  $a1, .L800B272C
/* 0B3320 800B2720 00052083 */   sra   $a0, $a1, 2
/* 0B3324 800B2724 24A10003 */  addiu $at, $a1, 3
/* 0B3328 800B2728 00012083 */  sra   $a0, $at, 2
.L800B272C:
/* 0B332C 800B272C 0C02D501 */  jal   func_800B5404
/* 0B3330 800B2730 00000000 */   nop   
/* 0B3334 800B2734 26100001 */  addiu $s0, $s0, 1
.L800B2738:
/* 0B3338 800B2738 3205FFFF */  andi  $a1, $s0, 0xffff
/* 0B333C 800B273C 28A10010 */  slti  $at, $a1, 0x10
/* 0B3340 800B2740 1420FFEA */  bnez  $at, .L800B26EC
/* 0B3344 800B2744 00A08025 */   move  $s0, $a1
/* 0B3348 800B2748 3C044900 */  lui   $a0, (0x49008001 >> 16) # lui $a0, 0x4900
/* 0B334C 800B274C 0C032384 */  jal   play_sound2
/* 0B3350 800B2750 34848001 */   ori   $a0, (0x49008001 & 0xFFFF) # ori $a0, $a0, 0x8001
/* 0B3354 800B2754 3C028019 */  lui   $v0, %hi(D_8018EDF1) # $v0, 0x8019
/* 0B3358 800B2758 10000005 */  b     .L800B2770
/* 0B335C 800B275C 8042EDF1 */   lb    $v0, %lo(D_8018EDF1)($v0)
.L800B2760:
/* 0B3360 800B2760 10000003 */  b     .L800B2770
/* 0B3364 800B2764 8042EDF1 */   lb    $v0, %lo(D_8018EDF1)($v0)
.L800B2768:
/* 0B3368 800B2768 3C028019 */  lui   $v0, %hi(D_8018EDF1) # $v0, 0x8019
/* 0B336C 800B276C 8042EDF1 */  lb    $v0, %lo(D_8018EDF1)($v0)
.L800B2770:
/* 0B3370 800B2770 3C0C800F */  lui   $t4, %hi(D_800F2B58) # 0x800f
/* 0B3374 800B2774 01826021 */  addu  $t4, $t4, $v0
/* 0B3378 800B2778 818C2B58 */  lb    $t4, %lo(D_800F2B58)($t4) # 0x2b58($t4)
/* 0B337C 800B277C 3C038019 */  lui   $v1, %hi(D_8018EDF3) # $v1, 0x8019
/* 0B3380 800B2780 2463EDF3 */  addiu $v1, %lo(D_8018EDF3) # addiu $v1, $v1, -0x120d
/* 0B3384 800B2784 8FAE0028 */  lw    $t6, 0x28($sp)
/* 0B3388 800B2788 A06C0000 */  sb    $t4, ($v1)
/* 0B338C 800B278C 806D0000 */  lb    $t5, ($v1)
/* 0B3390 800B2790 3C01800E */  lui   $at, %hi(gPlayerCountSelection1) # $at, 0x800e
/* 0B3394 800B2794 11C00047 */  beqz  $t6, .L800B28B4
/* 0B3398 800B2798 AC2DC538 */   sw    $t5, %lo(gPlayerCountSelection1)($at)
/* 0B339C 800B279C 97A3002E */  lhu   $v1, 0x2e($sp)
/* 0B33A0 800B27A0 306F9000 */  andi  $t7, $v1, 0x9000
/* 0B33A4 800B27A4 51E00026 */  beql  $t7, $zero, .L800B2840
/* 0B33A8 800B27A8 306F4000 */   andi  $t7, $v1, 0x4000
/* 0B33AC 800B27AC 0C027870 */  jal   func_8009E1C0
/* 0B33B0 800B27B0 AFA30024 */   sw    $v1, 0x24($sp)
/* 0B33B4 800B27B4 0C0328CC */  jal   func_800CA330
/* 0B33B8 800B27B8 24040019 */   li    $a0, 25
/* 0B33BC 800B27BC 8FA20030 */  lw    $v0, 0x30($sp)
/* 0B33C0 800B27C0 24180040 */  li    $t8, 64
/* 0B33C4 800B27C4 3C018019 */  lui   $at, %hi(gStartMenuDebugRowSelection) # $at, 0x8019
/* 0B33C8 800B27C8 A038EDEF */  sb    $t8, %lo(gStartMenuDebugRowSelection)($at)
/* 0B33CC 800B27CC 94590004 */  lhu   $t9, 4($v0)
/* 0B33D0 800B27D0 8FA30024 */  lw    $v1, 0x24($sp)
/* 0B33D4 800B27D4 3C01800E */  lui   $at, %hi(D_800DC51C) # 0x800e
/* 0B33D8 800B27D8 33280020 */  andi  $t0, $t9, 0x20
/* 0B33DC 800B27DC 11000005 */  beqz  $t0, .L800B27F4
/* 0B33E0 800B27E0 3C044900 */   lui   $a0, (0x49008016 >> 16) # lui $a0, 0x4900
/* 0B33E4 800B27E4 24090001 */  li    $t1, 1
/* 0B33E8 800B27E8 3C01800E */  lui   $at, %hi(D_800DC51C) # $at, 0x800e
/* 0B33EC 800B27EC 10000002 */  b     .L800B27F8
/* 0B33F0 800B27F0 A429C51C */   sh    $t1, %lo(D_800DC51C)($at)
.L800B27F4:
/* 0B33F4 800B27F4 A420C51C */  sh    $zero, %lo(D_800DC51C)($at)
.L800B27F8:
/* 0B33F8 800B27F8 944A0004 */  lhu   $t2, 4($v0)
/* 0B33FC 800B27FC 306C8000 */  andi  $t4, $v1, 0x8000
/* 0B3400 800B2800 314B2000 */  andi  $t3, $t2, 0x2000
/* 0B3404 800B2804 11600009 */  beqz  $t3, .L800B282C
/* 0B3408 800B2808 00000000 */   nop   
/* 0B340C 800B280C 11800005 */  beqz  $t4, .L800B2824
/* 0B3410 800B2810 240E0003 */   li    $t6, 3
/* 0B3414 800B2814 240D0001 */  li    $t5, 1
/* 0B3418 800B2818 3C018019 */  lui   $at, %hi(gDebugGotoDestination) # $at, 0x8019
/* 0B341C 800B281C 10000003 */  b     .L800B282C
/* 0B3420 800B2820 A02DEDFA */   sb    $t5, %lo(gDebugGotoDestination)($at)
.L800B2824:
/* 0B3424 800B2824 3C018019 */  lui   $at, %hi(gDebugGotoDestination) # $at, 0x8019
/* 0B3428 800B2828 A02EEDFA */  sb    $t6, %lo(gDebugGotoDestination)($at)
.L800B282C:
/* 0B342C 800B282C 0C032384 */  jal   play_sound2
/* 0B3430 800B2830 34848016 */   ori   $a0, (0x49008016 & 0xFFFF) # ori $a0, $a0, 0x8016
/* 0B3434 800B2834 10000020 */  b     .L800B28B8
/* 0B3438 800B2838 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0B343C 800B283C 306F4000 */  andi  $t7, $v1, 0x4000
.L800B2840:
/* 0B3440 800B2840 11E00014 */  beqz  $t7, .L800B2894
/* 0B3444 800B2844 8FB80030 */   lw    $t8, 0x30($sp)
/* 0B3448 800B2848 97190004 */  lhu   $t9, 4($t8)
/* 0B344C 800B284C 33282000 */  andi  $t0, $t9, 0x2000
/* 0B3450 800B2850 51000011 */  beql  $t0, $zero, .L800B2898
/* 0B3454 800B2854 306B0010 */   andi  $t3, $v1, 0x10
/* 0B3458 800B2858 0C027870 */  jal   func_8009E1C0
/* 0B345C 800B285C 00000000 */   nop   
/* 0B3460 800B2860 0C0328CC */  jal   func_800CA330
/* 0B3464 800B2864 24040019 */   li    $a0, 25
/* 0B3468 800B2868 24090040 */  li    $t1, 64
/* 0B346C 800B286C 3C018019 */  lui   $at, %hi(gStartMenuDebugRowSelection) # $at, 0x8019
/* 0B3470 800B2870 A029EDEF */  sb    $t1, %lo(gStartMenuDebugRowSelection)($at)
/* 0B3474 800B2874 3C018019 */  lui   $at, %hi(gDebugGotoDestination) # $at, 0x8019
/* 0B3478 800B2878 240A0002 */  li    $t2, 2
/* 0B347C 800B287C 3C044900 */  lui   $a0, (0x49008016 >> 16) # lui $a0, 0x4900
/* 0B3480 800B2880 A02AEDFA */  sb    $t2, %lo(gDebugGotoDestination)($at)
/* 0B3484 800B2884 0C032384 */  jal   play_sound2
/* 0B3488 800B2888 34848016 */   ori   $a0, (0x49008016 & 0xFFFF) # ori $a0, $a0, 0x8016
/* 0B348C 800B288C 1000000A */  b     .L800B28B8
/* 0B3490 800B2890 8FBF001C */   lw    $ra, 0x1c($sp)
.L800B2894:
/* 0B3494 800B2894 306B0010 */  andi  $t3, $v1, 0x10
.L800B2898:
/* 0B3498 800B2898 11600006 */  beqz  $t3, .L800B28B4
/* 0B349C 800B289C 240C0001 */   li    $t4, 1
/* 0B34A0 800B28A0 3C018019 */  lui   $at, %hi(gStartMenuDebugRowSelection) # $at, 0x8019
/* 0B34A4 800B28A4 3C044900 */  lui   $a0, (0x49008001 >> 16) # lui $a0, 0x4900
/* 0B34A8 800B28A8 A02CEDEF */  sb    $t4, %lo(gStartMenuDebugRowSelection)($at)
/* 0B34AC 800B28AC 0C032384 */  jal   play_sound2
/* 0B34B0 800B28B0 34848001 */   ori   $a0, (0x49008001 & 0xFFFF) # ori $a0, $a0, 0x8001
.L800B28B4:
/* 0B34B4 800B28B4 8FBF001C */  lw    $ra, 0x1c($sp)
.L800B28B8:
/* 0B34B8 800B28B8 8FB00018 */  lw    $s0, 0x18($sp)
/* 0B34BC 800B28BC 27BD0030 */  addiu $sp, $sp, 0x30
/* 0B34C0 800B28C0 03E00008 */  jr    $ra
/* 0B34C4 800B28C4 00000000 */   nop   
