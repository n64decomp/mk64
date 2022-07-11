glabel func_800C125C
/* 0C1E5C 800C125C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0C1E60 800C1260 3C0E803B */  lui   $t6, %hi(D_803B1A30) # 0x803b
/* 0C1E64 800C1264 25C61A30 */  addiu $a2, $t6, %lo(D_803B1A30) # 0x1a30
/* 0C1E68 800C1268 3C07803B */  lui   $a3, %hi(D_803B3EF0) # $a3, 0x803b
/* 0C1E6C 800C126C AFBF003C */  sw    $ra, 0x3c($sp)
/* 0C1E70 800C1270 AFBE0038 */  sw    $fp, 0x38($sp)
/* 0C1E74 800C1274 AFB70034 */  sw    $s7, 0x34($sp)
/* 0C1E78 800C1278 AFB60030 */  sw    $s6, 0x30($sp)
/* 0C1E7C 800C127C AFB5002C */  sw    $s5, 0x2c($sp)
/* 0C1E80 800C1280 AFB40028 */  sw    $s4, 0x28($sp)
/* 0C1E84 800C1284 AFB30024 */  sw    $s3, 0x24($sp)
/* 0C1E88 800C1288 AFB20020 */  sw    $s2, 0x20($sp)
/* 0C1E8C 800C128C AFB1001C */  sw    $s1, 0x1c($sp)
/* 0C1E90 800C1290 AFB00018 */  sw    $s0, 0x18($sp)
/* 0C1E94 800C1294 24E73EF0 */  addiu $a3, %lo(D_803B3EF0) # addiu $a3, $a3, 0x3ef0
/* 0C1E98 800C1298 00C02825 */  move  $a1, $a2
/* 0C1E9C 800C129C 24040040 */  li    $a0, 64
.L800C12A0:
/* 0C1EA0 800C12A0 90AF0000 */  lbu   $t7, ($a1)
/* 0C1EA4 800C12A4 ACA00044 */  sw    $zero, 0x44($a1)
/* 0C1EA8 800C12A8 00001025 */  move  $v0, $zero
/* 0C1EAC 800C12AC 31F8FF7F */  andi  $t8, $t7, 0xff7f
/* 0C1EB0 800C12B0 A0B80000 */  sb    $t8, ($a1)
/* 0C1EB4 800C12B4 00C01825 */  move  $v1, $a2
.L800C12B8:
/* 0C1EB8 800C12B8 24420004 */  addiu $v0, $v0, 4
/* 0C1EBC 800C12BC AC60004C */  sw    $zero, 0x4c($v1)
/* 0C1EC0 800C12C0 AC600050 */  sw    $zero, 0x50($v1)
/* 0C1EC4 800C12C4 AC600054 */  sw    $zero, 0x54($v1)
/* 0C1EC8 800C12C8 24630010 */  addiu $v1, $v1, 0x10
/* 0C1ECC 800C12CC 1444FFFA */  bne   $v0, $a0, .L800C12B8
/* 0C1ED0 800C12D0 AC600038 */   sw    $zero, 0x38($v1)
/* 0C1ED4 800C12D4 24C600C4 */  addiu $a2, $a2, 0xc4
/* 0C1ED8 800C12D8 00C7082B */  sltu  $at, $a2, $a3
/* 0C1EDC 800C12DC 1420FFF0 */  bnez  $at, .L800C12A0
/* 0C1EE0 800C12E0 24A500C4 */   addiu $a1, $a1, 0xc4
/* 0C1EE4 800C12E4 0C02FC21 */  jal   func_800BF084
/* 0C1EE8 800C12E8 00000000 */   nop   
/* 0C1EEC 800C12EC 3C02803B */  lui   $v0, %hi(D_803B3EF0) # $v0, 0x803b
/* 0C1EF0 800C12F0 3C03803B */  lui   $v1, %hi(D_803B5EF0) # $v1, 0x803b
/* 0C1EF4 800C12F4 24635EF0 */  addiu $v1, %lo(D_803B5EF0) # addiu $v1, $v1, 0x5ef0
/* 0C1EF8 800C12F8 24423EF0 */  addiu $v0, %lo(D_803B3EF0) # addiu $v0, $v0, 0x3ef0
.L800C12FC:
/* 0C1EFC 800C12FC 90590000 */  lbu   $t9, ($v0)
/* 0C1F00 800C1300 24420080 */  addiu $v0, $v0, 0x80
/* 0C1F04 800C1304 0043082B */  sltu  $at, $v0, $v1
/* 0C1F08 800C1308 3328FF7F */  andi  $t0, $t9, 0xff7f
/* 0C1F0C 800C130C AC40FFCC */  sw    $zero, -0x34($v0)
/* 0C1F10 800C1310 1420FFFA */  bnez  $at, .L800C12FC
/* 0C1F14 800C1314 A048FF80 */   sb    $t0, -0x80($v0)
/* 0C1F18 800C1318 3C09803B */  lui   $t1, %hi(D_803B1510) # 0x803b
/* 0C1F1C 800C131C 25311510 */  addiu $s1, $t1, %lo(D_803B1510) # 0x1510
/* 0C1F20 800C1320 3C15803B */  lui   $s5, %hi(D_803B15A4) # $s5, 0x803b
/* 0C1F24 800C1324 3C10803B */  lui   $s0, %hi(D_803B5EF0) # $s0, 0x803b
/* 0C1F28 800C1328 26105EF0 */  addiu $s0, %lo(D_803B5EF0) # addiu $s0, $s0, 0x5ef0
/* 0C1F2C 800C132C 26B515A4 */  addiu $s5, %lo(D_803B15A4) # addiu $s5, $s5, 0x15a4
/* 0C1F30 800C1330 0220A025 */  move  $s4, $s1
/* 0C1F34 800C1334 00009825 */  move  $s3, $zero
/* 0C1F38 800C1338 241E0004 */  li    $fp, 4
/* 0C1F3C 800C133C 241700E0 */  li    $s7, 224
/* 0C1F40 800C1340 2416FFFF */  li    $s6, -1
/* 0C1F44 800C1344 24120010 */  li    $s2, 16
.L800C1348:
/* 0C1F48 800C1348 00001025 */  move  $v0, $zero
/* 0C1F4C 800C134C 02801825 */  move  $v1, $s4
.L800C1350:
/* 0C1F50 800C1350 24420004 */  addiu $v0, $v0, 4
/* 0C1F54 800C1354 AC700034 */  sw    $s0, 0x34($v1)
/* 0C1F58 800C1358 AC700038 */  sw    $s0, 0x38($v1)
/* 0C1F5C 800C135C AC70003C */  sw    $s0, 0x3c($v1)
/* 0C1F60 800C1360 24630010 */  addiu $v1, $v1, 0x10
/* 0C1F64 800C1364 1452FFFA */  bne   $v0, $s2, .L800C1350
/* 0C1F68 800C1368 AC700020 */   sw    $s0, 0x20($v1)
/* 0C1F6C 800C136C 922A0000 */  lbu   $t2, ($s1)
/* 0C1F70 800C1370 A2360007 */  sb    $s6, 7($s1)
/* 0C1F74 800C1374 A2370003 */  sb    $s7, 3($s1)
/* 0C1F78 800C1378 314CFF7F */  andi  $t4, $t2, 0xff7f
/* 0C1F7C 800C137C 318E00DF */  andi  $t6, $t4, 0xdf
/* 0C1F80 800C1380 A22C0000 */  sb    $t4, ($s1)
/* 0C1F84 800C1384 31D800F7 */  andi  $t8, $t6, 0xf7
/* 0C1F88 800C1388 A22E0000 */  sb    $t6, ($s1)
/* 0C1F8C 800C138C A2380000 */  sb    $t8, ($s1)
/* 0C1F90 800C1390 331900EF */  andi  $t9, $t8, 0xef
/* 0C1F94 800C1394 A2390000 */  sb    $t9, ($s1)
/* 0C1F98 800C1398 0C02F4C6 */  jal   func_800BD318
/* 0C1F9C 800C139C 02A02025 */   move  $a0, $s5
/* 0C1FA0 800C13A0 0C03046C */  jal   func_800C11B0
/* 0C1FA4 800C13A4 02602025 */   move  $a0, $s3
/* 0C1FA8 800C13A8 26730001 */  addiu $s3, $s3, 1
/* 0C1FAC 800C13AC 26940148 */  addiu $s4, $s4, 0x148
/* 0C1FB0 800C13B0 26310148 */  addiu $s1, $s1, 0x148
/* 0C1FB4 800C13B4 167EFFE4 */  bne   $s3, $fp, .L800C1348
/* 0C1FB8 800C13B8 26B50148 */   addiu $s5, $s5, 0x148
/* 0C1FBC 800C13BC 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0C1FC0 800C13C0 8FB00018 */  lw    $s0, 0x18($sp)
/* 0C1FC4 800C13C4 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0C1FC8 800C13C8 8FB20020 */  lw    $s2, 0x20($sp)
/* 0C1FCC 800C13CC 8FB30024 */  lw    $s3, 0x24($sp)
/* 0C1FD0 800C13D0 8FB40028 */  lw    $s4, 0x28($sp)
/* 0C1FD4 800C13D4 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0C1FD8 800C13D8 8FB60030 */  lw    $s6, 0x30($sp)
/* 0C1FDC 800C13DC 8FB70034 */  lw    $s7, 0x34($sp)
/* 0C1FE0 800C13E0 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0C1FE4 800C13E4 03E00008 */  jr    $ra
/* 0C1FE8 800C13E8 27BD0040 */   addiu $sp, $sp, 0x40
