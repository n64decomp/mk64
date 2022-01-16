glabel func_800212B4
/* 021EB4 800212B4 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 021EB8 800212B8 3C0F800E */  lui   $t7, %hi(D_800DDB68) # $t7, 0x800e
/* 021EBC 800212BC AFBF0014 */  sw    $ra, 0x14($sp)
/* 021EC0 800212C0 25EFDB68 */  addiu $t7, %lo(D_800DDB68) # addiu $t7, $t7, -0x2498
/* 021EC4 800212C4 8DE10000 */  lw    $at, ($t7)
/* 021EC8 800212C8 8DE80004 */  lw    $t0, 4($t7)
/* 021ECC 800212CC 27AE003C */  addiu $t6, $sp, 0x3c
/* 021ED0 800212D0 ADC10000 */  sw    $at, ($t6)
/* 021ED4 800212D4 ADC80004 */  sw    $t0, 4($t6)
/* 021ED8 800212D8 8DE8000C */  lw    $t0, 0xc($t7)
/* 021EDC 800212DC 8DE10008 */  lw    $at, 8($t7)
/* 021EE0 800212E0 3C0A800E */  lui   $t2, %hi(D_800DDB88) # $t2, 0x800e
/* 021EE4 800212E4 ADC8000C */  sw    $t0, 0xc($t6)
/* 021EE8 800212E8 ADC10008 */  sw    $at, 8($t6)
/* 021EEC 800212EC 8DE10010 */  lw    $at, 0x10($t7)
/* 021EF0 800212F0 8DE80014 */  lw    $t0, 0x14($t7)
/* 021EF4 800212F4 254ADB88 */  addiu $t2, %lo(D_800DDB88) # addiu $t2, $t2, -0x2478
/* 021EF8 800212F8 ADC10010 */  sw    $at, 0x10($t6)
/* 021EFC 800212FC ADC80014 */  sw    $t0, 0x14($t6)
/* 021F00 80021300 8DE8001C */  lw    $t0, 0x1c($t7)
/* 021F04 80021304 8DE10018 */  lw    $at, 0x18($t7)
/* 021F08 80021308 27A9001C */  addiu $t1, $sp, 0x1c
/* 021F0C 8002130C ADC8001C */  sw    $t0, 0x1c($t6)
/* 021F10 80021310 ADC10018 */  sw    $at, 0x18($t6)
/* 021F14 80021314 8D410000 */  lw    $at, ($t2)
/* 021F18 80021318 8D4D0004 */  lw    $t5, 4($t2)
/* 021F1C 8002131C 3C04800E */  lui   $a0, %hi(gPlayerOneCopy) # $a0, 0x800e
/* 021F20 80021320 AD210000 */  sw    $at, ($t1)
/* 021F24 80021324 8D410008 */  lw    $at, 8($t2)
/* 021F28 80021328 AD2D0004 */  sw    $t5, 4($t1)
/* 021F2C 8002132C 8D4D000C */  lw    $t5, 0xc($t2)
/* 021F30 80021330 AD210008 */  sw    $at, 8($t1)
/* 021F34 80021334 8D410010 */  lw    $at, 0x10($t2)
/* 021F38 80021338 AD2D000C */  sw    $t5, 0xc($t1)
/* 021F3C 8002133C 8D4D0014 */  lw    $t5, 0x14($t2)
/* 021F40 80021340 AD210010 */  sw    $at, 0x10($t1)
/* 021F44 80021344 8D410018 */  lw    $at, 0x18($t2)
/* 021F48 80021348 AD2D0014 */  sw    $t5, 0x14($t1)
/* 021F4C 8002134C 8D4D001C */  lw    $t5, 0x1c($t2)
/* 021F50 80021350 AD210018 */  sw    $at, 0x18($t1)
/* 021F54 80021354 3C01800E */  lui   $at, %hi(D_800DDB58) # $at, 0x800e
/* 021F58 80021358 AD2D001C */  sw    $t5, 0x1c($t1)
/* 021F5C 8002135C 3C05800E */  lui   $a1, %hi(camera1) # $a1, 0x800e
/* 021F60 80021360 AC20DB58 */  sw    $zero, %lo(D_800DDB58)($at)
/* 021F64 80021364 8CA5DB40 */  lw    $a1, %lo(camera1)($a1)
/* 021F68 80021368 8C84C4FC */  lw    $a0, %lo(gPlayerOneCopy)($a0)
/* 021F6C 8002136C 00003025 */  move  $a2, $zero
/* 021F70 80021370 0C008000 */  jal   func_80020000
/* 021F74 80021374 00003825 */   move  $a3, $zero
/* 021F78 80021378 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 021F7C 8002137C 3C05800E */  lui   $a1, %hi(camera1) # $a1, 0x800e
/* 021F80 80021380 8CA5DB40 */  lw    $a1, %lo(camera1)($a1)
/* 021F84 80021384 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 021F88 80021388 24060001 */  li    $a2, 1
/* 021F8C 8002138C 0C008000 */  jal   func_80020000
/* 021F90 80021390 00003825 */   move  $a3, $zero
/* 021F94 80021394 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 021F98 80021398 3C05800E */  lui   $a1, %hi(camera1) # $a1, 0x800e
/* 021F9C 8002139C 8CA5DB40 */  lw    $a1, %lo(camera1)($a1)
/* 021FA0 800213A0 8C84C4E4 */  lw    $a0, %lo(gPlayerThree)($a0)
/* 021FA4 800213A4 24060002 */  li    $a2, 2
/* 021FA8 800213A8 0C008000 */  jal   func_80020000
/* 021FAC 800213AC 00003825 */   move  $a3, $zero
/* 021FB0 800213B0 3C04800E */  lui   $a0, %hi(gPlayerFour) # $a0, 0x800e
/* 021FB4 800213B4 3C05800E */  lui   $a1, %hi(camera1) # $a1, 0x800e
/* 021FB8 800213B8 8CA5DB40 */  lw    $a1, %lo(camera1)($a1)
/* 021FBC 800213BC 8C84C4E8 */  lw    $a0, %lo(gPlayerFour)($a0)
/* 021FC0 800213C0 24060003 */  li    $a2, 3
/* 021FC4 800213C4 0C008000 */  jal   func_80020000
/* 021FC8 800213C8 00003825 */   move  $a3, $zero
/* 021FCC 800213CC 3C19800E */  lui   $t9, %hi(gActiveScreenMode) # $t9, 0x800e
/* 021FD0 800213D0 8F39C52C */  lw    $t9, %lo(gActiveScreenMode)($t9)
/* 021FD4 800213D4 24010003 */  li    $at, 3
/* 021FD8 800213D8 3C04800E */  lui   $a0, %hi(gPlayerFive) # $a0, 0x800e
/* 021FDC 800213DC 1321001B */  beq   $t9, $at, .L8002144C
/* 021FE0 800213E0 3C05800E */   lui   $a1, %hi(camera1) # $a1, 0x800e
/* 021FE4 800213E4 8C84C4EC */  lw    $a0, %lo(gPlayerFive)($a0)
/* 021FE8 800213E8 8CA5DB40 */  lw    $a1, %lo(camera1)($a1)
/* 021FEC 800213EC 24060004 */  li    $a2, 4
/* 021FF0 800213F0 0C008000 */  jal   func_80020000
/* 021FF4 800213F4 00003825 */   move  $a3, $zero
/* 021FF8 800213F8 3C04800E */  lui   $a0, %hi(gPlayerSix) # $a0, 0x800e
/* 021FFC 800213FC 3C05800E */  lui   $a1, %hi(camera1) # $a1, 0x800e
/* 022000 80021400 8CA5DB40 */  lw    $a1, %lo(camera1)($a1)
/* 022004 80021404 8C84C4F0 */  lw    $a0, %lo(gPlayerSix)($a0)
/* 022008 80021408 24060005 */  li    $a2, 5
/* 02200C 8002140C 0C008000 */  jal   func_80020000
/* 022010 80021410 00003825 */   move  $a3, $zero
/* 022014 80021414 3C04800E */  lui   $a0, %hi(gPlayerSeven) # $a0, 0x800e
/* 022018 80021418 3C05800E */  lui   $a1, %hi(camera1) # $a1, 0x800e
/* 02201C 8002141C 8CA5DB40 */  lw    $a1, %lo(camera1)($a1)
/* 022020 80021420 8C84C4F4 */  lw    $a0, %lo(gPlayerSeven)($a0)
/* 022024 80021424 24060006 */  li    $a2, 6
/* 022028 80021428 0C008000 */  jal   func_80020000
/* 02202C 8002142C 00003825 */   move  $a3, $zero
/* 022030 80021430 3C04800E */  lui   $a0, %hi(gPlayerEight) # $a0, 0x800e
/* 022034 80021434 3C05800E */  lui   $a1, %hi(camera1) # $a1, 0x800e
/* 022038 80021438 8CA5DB40 */  lw    $a1, %lo(camera1)($a1)
/* 02203C 8002143C 8C84C4F8 */  lw    $a0, %lo(gPlayerEight)($a0)
/* 022040 80021440 24060007 */  li    $a2, 7
/* 022044 80021444 0C008000 */  jal   func_80020000
/* 022048 80021448 00003825 */   move  $a3, $zero
.L8002144C:
/* 02204C 8002144C 3C04800E */  lui   $a0, %hi(gPlayerOne) # $a0, 0x800e
/* 022050 80021450 8C84C4DC */  lw    $a0, %lo(gPlayerOne)($a0)
/* 022054 80021454 00002825 */  move  $a1, $zero
/* 022058 80021458 0C008491 */  jal   func_80021244
/* 02205C 8002145C 00003025 */   move  $a2, $zero
/* 022060 80021460 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 022064 80021464 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 022068 80021468 24050001 */  li    $a1, 1
/* 02206C 8002146C 0C008491 */  jal   func_80021244
/* 022070 80021470 00003025 */   move  $a2, $zero
/* 022074 80021474 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 022078 80021478 8C84C4E4 */  lw    $a0, %lo(gPlayerThree)($a0)
/* 02207C 8002147C 24050002 */  li    $a1, 2
/* 022080 80021480 0C008491 */  jal   func_80021244
/* 022084 80021484 00003025 */   move  $a2, $zero
/* 022088 80021488 3C04800E */  lui   $a0, %hi(gPlayerFour) # $a0, 0x800e
/* 02208C 8002148C 8C84C4E8 */  lw    $a0, %lo(gPlayerFour)($a0)
/* 022090 80021490 24050003 */  li    $a1, 3
/* 022094 80021494 0C008491 */  jal   func_80021244
/* 022098 80021498 00003025 */   move  $a2, $zero
/* 02209C 8002149C 3C18800E */  lui   $t8, %hi(gActiveScreenMode) # $t8, 0x800e
/* 0220A0 800214A0 8F18C52C */  lw    $t8, %lo(gActiveScreenMode)($t8)
/* 0220A4 800214A4 24010003 */  li    $at, 3
/* 0220A8 800214A8 3C04800E */  lui   $a0, %hi(gPlayerFive) # $a0, 0x800e
/* 0220AC 800214AC 13010013 */  beq   $t8, $at, .L800214FC
/* 0220B0 800214B0 24050004 */   li    $a1, 4
/* 0220B4 800214B4 8C84C4EC */  lw    $a0, %lo(gPlayerFive)($a0)
/* 0220B8 800214B8 0C008491 */  jal   func_80021244
/* 0220BC 800214BC 00003025 */   move  $a2, $zero
/* 0220C0 800214C0 3C04800E */  lui   $a0, %hi(gPlayerSix) # $a0, 0x800e
/* 0220C4 800214C4 8C84C4F0 */  lw    $a0, %lo(gPlayerSix)($a0)
/* 0220C8 800214C8 24050005 */  li    $a1, 5
/* 0220CC 800214CC 0C008491 */  jal   func_80021244
/* 0220D0 800214D0 00003025 */   move  $a2, $zero
/* 0220D4 800214D4 3C04800E */  lui   $a0, %hi(gPlayerSeven) # $a0, 0x800e
/* 0220D8 800214D8 8C84C4F4 */  lw    $a0, %lo(gPlayerSeven)($a0)
/* 0220DC 800214DC 24050006 */  li    $a1, 6
/* 0220E0 800214E0 0C008491 */  jal   func_80021244
/* 0220E4 800214E4 00003025 */   move  $a2, $zero
/* 0220E8 800214E8 3C04800E */  lui   $a0, %hi(gPlayerEight) # $a0, 0x800e
/* 0220EC 800214EC 8C84C4F8 */  lw    $a0, %lo(gPlayerEight)($a0)
/* 0220F0 800214F0 24050007 */  li    $a1, 7
/* 0220F4 800214F4 0C008491 */  jal   func_80021244
/* 0220F8 800214F8 00003025 */   move  $a2, $zero
.L800214FC:
/* 0220FC 800214FC 3C0E800E */  lui   $t6, %hi(D_800DDB58) # $t6, 0x800e
/* 022100 80021500 8DCEDB58 */  lw    $t6, %lo(D_800DDB58)($t6)
/* 022104 80021504 3C04800E */  lui   $a0, %hi(gPlayerOneCopy) # $a0, 0x800e
/* 022108 80021508 00002825 */  move  $a1, $zero
/* 02210C 8002150C 11C00005 */  beqz  $t6, .L80021524
/* 022110 80021510 00003025 */   move  $a2, $zero
/* 022114 80021514 0C008149 */  jal   func_80020524
/* 022118 80021518 00000000 */   nop
/* 02211C 8002151C 1000002B */  b     .L800215CC
/* 022120 80021520 8FBF0014 */   lw    $ra, 0x14($sp)
.L80021524:
/* 022124 80021524 0C01B96B */  jal   func_8006E5AC
/* 022128 80021528 8C84C4FC */   lw    $a0, %lo(gPlayerOneCopy)($a0)
/* 02212C 8002152C 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 022130 80021530 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 022134 80021534 24050001 */  li    $a1, 1
/* 022138 80021538 0C01B96B */  jal   func_8006E5AC
/* 02213C 8002153C 00003025 */   move  $a2, $zero
/* 022140 80021540 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 022144 80021544 8C84C4E4 */  lw    $a0, %lo(gPlayerThree)($a0)
/* 022148 80021548 24050002 */  li    $a1, 2
/* 02214C 8002154C 0C01B96B */  jal   func_8006E5AC
/* 022150 80021550 00003025 */   move  $a2, $zero
/* 022154 80021554 3C04800E */  lui   $a0, %hi(gPlayerFour) # $a0, 0x800e
/* 022158 80021558 8C84C4E8 */  lw    $a0, %lo(gPlayerFour)($a0)
/* 02215C 8002155C 24050003 */  li    $a1, 3
/* 022160 80021560 0C01B96B */  jal   func_8006E5AC
/* 022164 80021564 00003025 */   move  $a2, $zero
/* 022168 80021568 3C0F800E */  lui   $t7, %hi(gActiveScreenMode) # $t7, 0x800e
/* 02216C 8002156C 8DEFC52C */  lw    $t7, %lo(gActiveScreenMode)($t7)
/* 022170 80021570 24010003 */  li    $at, 3
/* 022174 80021574 3C04800E */  lui   $a0, %hi(gPlayerFive) # $a0, 0x800e
/* 022178 80021578 11E10013 */  beq   $t7, $at, .L800215C8
/* 02217C 8002157C 24050004 */   li    $a1, 4
/* 022180 80021580 8C84C4EC */  lw    $a0, %lo(gPlayerFive)($a0)
/* 022184 80021584 0C01B96B */  jal   func_8006E5AC
/* 022188 80021588 00003025 */   move  $a2, $zero
/* 02218C 8002158C 3C04800E */  lui   $a0, %hi(gPlayerSix) # $a0, 0x800e
/* 022190 80021590 8C84C4F0 */  lw    $a0, %lo(gPlayerSix)($a0)
/* 022194 80021594 24050005 */  li    $a1, 5
/* 022198 80021598 0C01B96B */  jal   func_8006E5AC
/* 02219C 8002159C 00003025 */   move  $a2, $zero
/* 0221A0 800215A0 3C04800E */  lui   $a0, %hi(gPlayerSeven) # $a0, 0x800e
/* 0221A4 800215A4 8C84C4F4 */  lw    $a0, %lo(gPlayerSeven)($a0)
/* 0221A8 800215A8 24050006 */  li    $a1, 6
/* 0221AC 800215AC 0C01B96B */  jal   func_8006E5AC
/* 0221B0 800215B0 00003025 */   move  $a2, $zero
/* 0221B4 800215B4 3C04800E */  lui   $a0, %hi(gPlayerEight) # $a0, 0x800e
/* 0221B8 800215B8 8C84C4F8 */  lw    $a0, %lo(gPlayerEight)($a0)
/* 0221BC 800215BC 24050007 */  li    $a1, 7
/* 0221C0 800215C0 0C01B96B */  jal   func_8006E5AC
/* 0221C4 800215C4 00003025 */   move  $a2, $zero
.L800215C8:
/* 0221C8 800215C8 8FBF0014 */  lw    $ra, 0x14($sp)
.L800215CC:
/* 0221CC 800215CC 3C01800E */  lui   $at, %hi(D_800DDB58) # $at, 0x800e
/* 0221D0 800215D0 AC20DB58 */  sw    $zero, %lo(D_800DDB58)($at)
/* 0221D4 800215D4 03E00008 */  jr    $ra
/* 0221D8 800215D8 27BD0060 */   addiu $sp, $sp, 0x60
