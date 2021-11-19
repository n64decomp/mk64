glabel func_800A12BC
/* 0A1EBC 800A12BC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0A1EC0 800A12C0 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0A1EC4 800A12C4 AFB00020 */  sw    $s0, 0x20($sp)
/* 0A1EC8 800A12C8 8C8E0004 */  lw    $t6, 4($a0)
/* 0A1ECC 800A12CC 00808025 */  move  $s0, $a0
/* 0A1ED0 800A12D0 2DC10005 */  sltiu $at, $t6, 5
/* 0A1ED4 800A12D4 10200019 */  beqz  $at, .L800A133C
/* 0A1ED8 800A12D8 000E7080 */   sll   $t6, $t6, 2
/* 0A1EDC 800A12DC 3C01800F */  lui   $at, %hi(jpt_800F1B18)
/* 0A1EE0 800A12E0 002E0821 */  addu  $at, $at, $t6
/* 0A1EE4 800A12E4 8C2E1B18 */  lw    $t6, %lo(jpt_800F1B18)($at)
/* 0A1EE8 800A12E8 01C00008 */  jr    $t6
/* 0A1EEC 800A12EC 00000000 */   nop   
glabel L800A12F0
/* 0A1EF0 800A12F0 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 0A1EF4 800A12F4 8C840298 */  lw    $a0, %lo(gDisplayListHead)($a0)
/* 0A1EF8 800A12F8 8E06000C */  lw    $a2, 0xc($s0)
/* 0A1EFC 800A12FC 0C026E9D */  jal   func_8009BA74
/* 0A1F00 800A1300 8E070010 */   lw    $a3, 0x10($s0)
/* 0A1F04 800A1304 3C018015 */  lui   $at, %hi(gDisplayListHead) # $at, 0x8015
/* 0A1F08 800A1308 1000000C */  b     .L800A133C
/* 0A1F0C 800A130C AC220298 */   sw    $v0, %lo(gDisplayListHead)($at)
glabel L800A1310
/* 0A1F10 800A1310 8E06000C */  lw    $a2, 0xc($s0)
/* 0A1F14 800A1314 8E070010 */  lw    $a3, 0x10($s0)
/* 0A1F18 800A1318 240F0002 */  li    $t7, 2
/* 0A1F1C 800A131C AFAF0010 */  sw    $t7, 0x10($sp)
/* 0A1F20 800A1320 8E18001C */  lw    $t8, 0x1c($s0)
/* 0A1F24 800A1324 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 0A1F28 800A1328 8C840298 */  lw    $a0, %lo(gDisplayListHead)($a0)
/* 0A1F2C 800A132C 0C026F27 */  jal   func_8009BC9C
/* 0A1F30 800A1330 AFB80014 */   sw    $t8, 0x14($sp)
/* 0A1F34 800A1334 3C018015 */  lui   $at, %hi(gDisplayListHead) # $at, 0x8015
/* 0A1F38 800A1338 AC220298 */  sw    $v0, %lo(gDisplayListHead)($at)
.L800A133C:
/* 0A1F3C 800A133C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0A1F40 800A1340 8FB00020 */  lw    $s0, 0x20($sp)
/* 0A1F44 800A1344 27BD0028 */  addiu $sp, $sp, 0x28
/* 0A1F48 800A1348 03E00008 */  jr    $ra
/* 0A1F4C 800A134C 00000000 */   nop   

/* 0A1F50 800A1350 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0A1F54 800A1354 AFB10030 */  sw    $s1, 0x30($sp)
/* 0A1F58 800A1358 00808825 */  move  $s1, $a0
/* 0A1F5C 800A135C AFBF0034 */  sw    $ra, 0x34($sp)
/* 0A1F60 800A1360 AFB0002C */  sw    $s0, 0x2c($sp)
/* 0A1F64 800A1364 8C840000 */  lw    $a0, ($a0)
/* 0A1F68 800A1368 0C02ABF3 */  jal   func_800AAFCC
/* 0A1F6C 800A136C 2484FFD5 */   addiu $a0, $a0, -0x2b
/* 0A1F70 800A1370 0443002E */  bgezl $v0, .L800A142C
/* 0A1F74 800A1374 8FBF0034 */   lw    $ra, 0x34($sp)
/* 0A1F78 800A1378 8E2E0004 */  lw    $t6, 4($s1)
/* 0A1F7C 800A137C 2DC10005 */  sltiu $at, $t6, 5
/* 0A1F80 800A1380 10200029 */  beqz  $at, .L800A1428
/* 0A1F84 800A1384 000E7080 */   sll   $t6, $t6, 2
/* 0A1F88 800A1388 3C01800F */  lui   $at, %hi(jpt_800F1B2C)
/* 0A1F8C 800A138C 002E0821 */  addu  $at, $at, $t6
/* 0A1F90 800A1390 8C2E1B2C */  lw    $t6, %lo(jpt_800F1B2C)($at)
/* 0A1F94 800A1394 01C00008 */  jr    $t6
/* 0A1F98 800A1398 00000000 */   nop   
glabel L800A139C
/* 0A1F9C 800A139C 8E30000C */  lw    $s0, 0xc($s1)
/* 0A1FA0 800A13A0 8E260010 */  lw    $a2, 0x10($s1)
/* 0A1FA4 800A13A4 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 0A1FA8 800A13A8 24180064 */  li    $t8, 100
/* 0A1FAC 800A13AC 24CF004C */  addiu $t7, $a2, 0x4c
/* 0A1FB0 800A13B0 AFAF0010 */  sw    $t7, 0x10($sp)
/* 0A1FB4 800A13B4 AFB80020 */  sw    $t8, 0x20($sp)
/* 0A1FB8 800A13B8 8C840298 */  lw    $a0, %lo(gDisplayListHead)($a0)
/* 0A1FBC 800A13BC AFA0001C */  sw    $zero, 0x1c($sp)
/* 0A1FC0 800A13C0 AFA00018 */  sw    $zero, 0x18($sp)
/* 0A1FC4 800A13C4 AFA00014 */  sw    $zero, 0x14($sp)
/* 0A1FC8 800A13C8 02002825 */  move  $a1, $s0
/* 0A1FCC 800A13CC 0C02637E */  jal   draw_box
/* 0A1FD0 800A13D0 26070040 */   addiu $a3, $s0, 0x40
/* 0A1FD4 800A13D4 3C018015 */  lui   $at, %hi(gDisplayListHead) # $at, 0x8015
/* 0A1FD8 800A13D8 10000013 */  b     .L800A1428
/* 0A1FDC 800A13DC AC220298 */   sw    $v0, %lo(gDisplayListHead)($at)
glabel L800A13E0
/* 0A1FE0 800A13E0 8E22001C */  lw    $v0, 0x1c($s1)
/* 0A1FE4 800A13E4 8E30000C */  lw    $s0, 0xc($s1)
/* 0A1FE8 800A13E8 8E260010 */  lw    $a2, 0x10($s1)
/* 0A1FEC 800A13EC 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 0A1FF0 800A13F0 24080064 */  li    $t0, 100
/* 0A1FF4 800A13F4 02023823 */  subu  $a3, $s0, $v0
/* 0A1FF8 800A13F8 24D9004C */  addiu $t9, $a2, 0x4c
/* 0A1FFC 800A13FC AFB90010 */  sw    $t9, 0x10($sp)
/* 0A2000 800A1400 24E70040 */  addiu $a3, $a3, 0x40
/* 0A2004 800A1404 AFA80020 */  sw    $t0, 0x20($sp)
/* 0A2008 800A1408 8C840298 */  lw    $a0, %lo(gDisplayListHead)($a0)
/* 0A200C 800A140C AFA0001C */  sw    $zero, 0x1c($sp)
/* 0A2010 800A1410 AFA00018 */  sw    $zero, 0x18($sp)
/* 0A2014 800A1414 AFA00014 */  sw    $zero, 0x14($sp)
/* 0A2018 800A1418 0C02637E */  jal   draw_box
/* 0A201C 800A141C 02022821 */   addu  $a1, $s0, $v0
/* 0A2020 800A1420 3C018015 */  lui   $at, %hi(gDisplayListHead) # $at, 0x8015
/* 0A2024 800A1424 AC220298 */  sw    $v0, %lo(gDisplayListHead)($at)
.L800A1428:
/* 0A2028 800A1428 8FBF0034 */  lw    $ra, 0x34($sp)
.L800A142C:
/* 0A202C 800A142C 8FB0002C */  lw    $s0, 0x2c($sp)
/* 0A2030 800A1430 8FB10030 */  lw    $s1, 0x30($sp)
/* 0A2034 800A1434 03E00008 */  jr    $ra
/* 0A2038 800A1438 27BD0038 */   addiu $sp, $sp, 0x38
