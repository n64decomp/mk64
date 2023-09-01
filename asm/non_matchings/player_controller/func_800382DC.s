glabel func_800382DC
/* 038EDC 800382DC 3C02800E */  lui   $v0, %hi(gActiveScreenMode) # $v0, 0x800e
/* 038EE0 800382E0 8C42C52C */  lw    $v0, %lo(gActiveScreenMode)($v0)
/* 038EE4 800382E4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 038EE8 800382E8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 038EEC 800382EC 10400009 */  beqz  $v0, .L80038314
/* 038EF0 800382F0 24030001 */   li    $v1, 1
/* 038EF4 800382F4 10430062 */  beq   $v0, $v1, .L80038480
/* 038EF8 800382F8 24010002 */   li    $at, 2
/* 038EFC 800382FC 10410060 */  beq   $v0, $at, .L80038480
/* 038F00 80038300 24010003 */   li    $at, 3
/* 038F04 80038304 1041006C */  beq   $v0, $at, .L800384B8
/* 038F08 80038308 3C04800E */   lui   $a0, %hi(gPlayerOne) # 0x800e
/* 038F0C 8003830C 10000086 */  b     .L80038528
/* 038F10 80038310 8FBF0014 */   lw    $ra, 0x14($sp)
.L80038314:
/* 038F14 80038314 3C02800E */  lui   $v0, %hi(gModeSelection) # $v0, 0x800e
/* 038F18 80038318 8C42C53C */  lw    $v0, %lo(gModeSelection)($v0)
/* 038F1C 8003831C 3C04800E */  lui   $a0, %hi(gPlayerOne) # $a0, 0x800e
/* 038F20 80038320 3C05800E */  lui   $a1, %hi(gControllerOne) # $a1, 0x800e
/* 038F24 80038324 10400006 */  beqz  $v0, .L80038340
/* 038F28 80038328 00003025 */   move  $a2, $zero
/* 038F2C 8003832C 24030001 */  li    $v1, 1
/* 038F30 80038330 10430008 */  beq   $v0, $v1, .L80038354
/* 038F34 80038334 3C0E8016 */   lui   $t6, %hi(D_8015F890) # $t6, 0x8016
/* 038F38 80038338 1000007B */  b     .L80038528
/* 038F3C 8003833C 8FBF0014 */   lw    $ra, 0x14($sp)
.L80038340:
/* 038F40 80038340 8C84C4DC */  lw    $a0, %lo(gPlayerOne)($a0)
/* 038F44 80038344 0C00E06B */  jal   func_800381AC
/* 038F48 80038348 8CA5C4BC */   lw    $a1, %lo(gControllerOne)($a1)
/* 038F4C 8003834C 10000076 */  b     .L80038528
/* 038F50 80038350 8FBF0014 */   lw    $ra, 0x14($sp)
.L80038354:
/* 038F54 80038354 95CEF890 */  lhu   $t6, %lo(D_8015F890)($t6)
/* 038F58 80038358 3C05800E */  lui   $a1, %hi(gControllerOne) # $a1, 0x800e
/* 038F5C 8003835C 00003025 */  move  $a2, $zero
/* 038F60 80038360 106E0021 */  beq   $v1, $t6, .L800383E8
/* 038F64 80038364 3C04800E */   lui   $a0, %hi(gPlayerOne) # 0x800e
/* 038F68 80038368 3C04800E */  lui   $a0, %hi(gPlayerOne) # $a0, 0x800e
/* 038F6C 8003836C 8C84C4DC */  lw    $a0, %lo(gPlayerOne)($a0)
/* 038F70 80038370 0C00E06B */  jal   func_800381AC
/* 038F74 80038374 8CA5C4BC */   lw    $a1, %lo(gControllerOne)($a1)
/* 038F78 80038378 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 038F7C 8003837C 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 038F80 80038380 24010100 */  li    $at, 256
/* 038F84 80038384 94820000 */  lhu   $v0, ($a0)
/* 038F88 80038388 304F0100 */  andi  $t7, $v0, 0x100
/* 038F8C 8003838C 15E10007 */  bne   $t7, $at, .L800383AC
/* 038F90 80038390 30580800 */   andi  $t8, $v0, 0x800
/* 038F94 80038394 24010800 */  li    $at, 2048
/* 038F98 80038398 13010004 */  beq   $t8, $at, .L800383AC
/* 038F9C 8003839C 3C05800E */   lui   $a1, %hi(gControllerSix) # $a1, 0x800e
/* 038FA0 800383A0 8CA5C4D0 */  lw    $a1, %lo(gControllerSix)($a1)
/* 038FA4 800383A4 0C00E06B */  jal   func_800381AC
/* 038FA8 800383A8 24060001 */   li    $a2, 1
.L800383AC:
/* 038FAC 800383AC 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 038FB0 800383B0 8C84C4E4 */  lw    $a0, %lo(gPlayerThree)($a0)
/* 038FB4 800383B4 24010100 */  li    $at, 256
/* 038FB8 800383B8 94820000 */  lhu   $v0, ($a0)
/* 038FBC 800383BC 30590100 */  andi  $t9, $v0, 0x100
/* 038FC0 800383C0 17210058 */  bne   $t9, $at, .L80038524
/* 038FC4 800383C4 30480800 */   andi  $t0, $v0, 0x800
/* 038FC8 800383C8 24010800 */  li    $at, 2048
/* 038FCC 800383CC 11010055 */  beq   $t0, $at, .L80038524
/* 038FD0 800383D0 3C05800E */   lui   $a1, %hi(gControllerSeven) # $a1, 0x800e
/* 038FD4 800383D4 8CA5C4D4 */  lw    $a1, %lo(gControllerSeven)($a1)
/* 038FD8 800383D8 0C00E06B */  jal   func_800381AC
/* 038FDC 800383DC 24060002 */   li    $a2, 2
/* 038FE0 800383E0 10000051 */  b     .L80038528
/* 038FE4 800383E4 8FBF0014 */   lw    $ra, 0x14($sp)
.L800383E8:
/* 038FE8 800383E8 8C84C4DC */  lw    $a0, %lo(gPlayerOne)($a0) # -0x3b24($a0)
/* 038FEC 800383EC 24010800 */  li    $at, 2048
/* 038FF0 800383F0 3C05800E */  lui   $a1, %hi(gControllerEight) # $a1, 0x800e
/* 038FF4 800383F4 94890000 */  lhu   $t1, ($a0)
/* 038FF8 800383F8 00003025 */  move  $a2, $zero
/* 038FFC 800383FC 312A0800 */  andi  $t2, $t1, 0x800
/* 039000 80038400 11410003 */  beq   $t2, $at, .L80038410
/* 039004 80038404 00000000 */   nop
/* 039008 80038408 0C00E06B */  jal   func_800381AC
/* 03900C 8003840C 8CA5C4D8 */   lw    $a1, %lo(gControllerEight)($a1)
.L80038410:
/* 039010 80038410 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 039014 80038414 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 039018 80038418 24010100 */  li    $at, 256
/* 03901C 8003841C 94820000 */  lhu   $v0, ($a0)
/* 039020 80038420 304B0100 */  andi  $t3, $v0, 0x100
/* 039024 80038424 15610007 */  bne   $t3, $at, .L80038444
/* 039028 80038428 304C0800 */   andi  $t4, $v0, 0x800
/* 03902C 8003842C 24010800 */  li    $at, 2048
/* 039030 80038430 11810004 */  beq   $t4, $at, .L80038444
/* 039034 80038434 3C05800E */   lui   $a1, %hi(gControllerSix) # $a1, 0x800e
/* 039038 80038438 8CA5C4D0 */  lw    $a1, %lo(gControllerSix)($a1)
/* 03903C 8003843C 0C00E06B */  jal   func_800381AC
/* 039040 80038440 24060001 */   li    $a2, 1
.L80038444:
/* 039044 80038444 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 039048 80038448 8C84C4E4 */  lw    $a0, %lo(gPlayerThree)($a0)
/* 03904C 8003844C 24010100 */  li    $at, 256
/* 039050 80038450 94820000 */  lhu   $v0, ($a0)
/* 039054 80038454 304D0100 */  andi  $t5, $v0, 0x100
/* 039058 80038458 15A10032 */  bne   $t5, $at, .L80038524
/* 03905C 8003845C 304E0800 */   andi  $t6, $v0, 0x800
/* 039060 80038460 24010800 */  li    $at, 2048
/* 039064 80038464 11C1002F */  beq   $t6, $at, .L80038524
/* 039068 80038468 3C05800E */   lui   $a1, %hi(gControllerSeven) # $a1, 0x800e
/* 03906C 8003846C 8CA5C4D4 */  lw    $a1, %lo(gControllerSeven)($a1)
/* 039070 80038470 0C00E06B */  jal   func_800381AC
/* 039074 80038474 24060002 */   li    $a2, 2
/* 039078 80038478 1000002B */  b     .L80038528
/* 03907C 8003847C 8FBF0014 */   lw    $ra, 0x14($sp)
.L80038480:
/* 039080 80038480 3C04800E */  lui   $a0, %hi(gPlayerOne) # $a0, 0x800e
/* 039084 80038484 3C05800E */  lui   $a1, %hi(gControllerOne) # $a1, 0x800e
/* 039088 80038488 8CA5C4BC */  lw    $a1, %lo(gControllerOne)($a1)
/* 03908C 8003848C 8C84C4DC */  lw    $a0, %lo(gPlayerOne)($a0)
/* 039090 80038490 0C00E06B */  jal   func_800381AC
/* 039094 80038494 00003025 */   move  $a2, $zero
/* 039098 80038498 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 03909C 8003849C 3C05800E */  lui   $a1, %hi(gControllerTwo) # $a1, 0x800e
/* 0390A0 800384A0 8CA5C4C0 */  lw    $a1, %lo(gControllerTwo)($a1)
/* 0390A4 800384A4 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 0390A8 800384A8 0C00E06B */  jal   func_800381AC
/* 0390AC 800384AC 24060001 */   li    $a2, 1
/* 0390B0 800384B0 1000001D */  b     .L80038528
/* 0390B4 800384B4 8FBF0014 */   lw    $ra, 0x14($sp)
.L800384B8:
/* 0390B8 800384B8 3C05800E */  lui   $a1, %hi(gControllerOne) # $a1, 0x800e
/* 0390BC 800384BC 8CA5C4BC */  lw    $a1, %lo(gControllerOne)($a1)
/* 0390C0 800384C0 8C84C4DC */  lw    $a0, %lo(gPlayerOne)($a0) # -0x3b24($a0)
/* 0390C4 800384C4 0C00E06B */  jal   func_800381AC
/* 0390C8 800384C8 00003025 */   move  $a2, $zero
/* 0390CC 800384CC 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 0390D0 800384D0 3C05800E */  lui   $a1, %hi(gControllerTwo) # $a1, 0x800e
/* 0390D4 800384D4 8CA5C4C0 */  lw    $a1, %lo(gControllerTwo)($a1)
/* 0390D8 800384D8 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 0390DC 800384DC 0C00E06B */  jal   func_800381AC
/* 0390E0 800384E0 24060001 */   li    $a2, 1
/* 0390E4 800384E4 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 0390E8 800384E8 3C05800E */  lui   $a1, %hi(gControllerThree) # $a1, 0x800e
/* 0390EC 800384EC 8CA5C4C4 */  lw    $a1, %lo(gControllerThree)($a1)
/* 0390F0 800384F0 8C84C4E4 */  lw    $a0, %lo(gPlayerThree)($a0)
/* 0390F4 800384F4 0C00E06B */  jal   func_800381AC
/* 0390F8 800384F8 24060002 */   li    $a2, 2
/* 0390FC 800384FC 3C0F800E */  lui   $t7, %hi(gPlayerCountSelection1) # $t7, 0x800e
/* 039100 80038500 8DEFC538 */  lw    $t7, %lo(gPlayerCountSelection1)($t7)
/* 039104 80038504 24010004 */  li    $at, 4
/* 039108 80038508 3C04800E */  lui   $a0, %hi(gPlayerFour) # $a0, 0x800e
/* 03910C 8003850C 15E10005 */  bne   $t7, $at, .L80038524
/* 039110 80038510 3C05800E */   lui   $a1, %hi(gControllerFour) # $a1, 0x800e
/* 039114 80038514 8C84C4E8 */  lw    $a0, %lo(gPlayerFour)($a0)
/* 039118 80038518 8CA5C4C8 */  lw    $a1, %lo(gControllerFour)($a1)
/* 03911C 8003851C 0C00E06B */  jal   func_800381AC
/* 039120 80038520 24060003 */   li    $a2, 3
.L80038524:
/* 039124 80038524 8FBF0014 */  lw    $ra, 0x14($sp)
.L80038528:
/* 039128 80038528 27BD0018 */  addiu $sp, $sp, 0x18
/* 03912C 8003852C 03E00008 */  jr    $ra
/* 039130 80038530 00000000 */   nop
