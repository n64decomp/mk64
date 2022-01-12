glabel func_800421FC
/* 042DFC 800421FC 27BDFF90 */  addiu $sp, $sp, -0x70
/* 042E00 80042200 AFA50074 */  sw    $a1, 0x74($sp)
/* 042E04 80042204 00802825 */  move  $a1, $a0
/* 042E08 80042208 AFBF001C */  sw    $ra, 0x1c($sp)
/* 042E0C 8004220C AFA40070 */  sw    $a0, 0x70($sp)
/* 042E10 80042210 AFA60078 */  sw    $a2, 0x78($sp)
/* 042E14 80042214 8FA60074 */  lw    $a2, 0x74($sp)
/* 042E18 80042218 AFB00018 */  sw    $s0, 0x18($sp)
/* 042E1C 8004221C 0C01069E */  jal   func_80041A78
/* 042E20 80042220 27A40030 */   addiu $a0, $sp, 0x30
/* 042E24 80042224 3C108019 */  lui   $s0, %hi(D_8018D120) # $s0, 0x8019
/* 042E28 80042228 2610D120 */  addiu $s0, %lo(D_8018D120) # addiu $s0, $s0, -0x2ee0
/* 042E2C 8004222C 8E0F0000 */  lw    $t7, ($s0)
/* 042E30 80042230 3C0E8015 */  lui   $t6, %hi(gGfxPool) # $t6, 0x8015
/* 042E34 80042234 8DCEEF40 */  lw    $t6, %lo(gGfxPool)($t6)
/* 042E38 80042238 000FC180 */  sll   $t8, $t7, 6
/* 042E3C 8004223C 27A50030 */  addiu $a1, $sp, 0x30
/* 042E40 80042240 01D82021 */  addu  $a0, $t6, $t8
/* 042E44 80042244 0C008860 */  jal   func_80022180
/* 042E48 80042248 248402C0 */   addiu $a0, $a0, 0x2c0
/* 042E4C 8004224C 3C068015 */  lui   $a2, %hi(gDisplayListHead) # $a2, 0x8015
/* 042E50 80042250 24C60298 */  addiu $a2, %lo(gDisplayListHead) # addiu $a2, $a2, 0x298
/* 042E54 80042254 8CC30000 */  lw    $v1, ($a2)
/* 042E58 80042258 3C080102 */  lui   $t0, (0x01020040 >> 16) # lui $t0, 0x102
/* 042E5C 8004225C 35080040 */  ori   $t0, (0x01020040 & 0xFFFF) # ori $t0, $t0, 0x40
/* 042E60 80042260 24790008 */  addiu $t9, $v1, 8
/* 042E64 80042264 ACD90000 */  sw    $t9, ($a2)
/* 042E68 80042268 AC680000 */  sw    $t0, ($v1)
/* 042E6C 8004226C 8E0A0000 */  lw    $t2, ($s0)
/* 042E70 80042270 3C098015 */  lui   $t1, %hi(gGfxPool) # $t1, 0x8015
/* 042E74 80042274 8D29EF40 */  lw    $t1, %lo(gGfxPool)($t1)
/* 042E78 80042278 000A5980 */  sll   $t3, $t2, 6
/* 042E7C 8004227C 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 042E80 80042280 012B6021 */  addu  $t4, $t1, $t3
/* 042E84 80042284 258D02C0 */  addiu $t5, $t4, 0x2c0
/* 042E88 80042288 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 042E8C 8004228C 01A17824 */  and   $t7, $t5, $at
/* 042E90 80042290 AC6F0004 */  sw    $t7, 4($v1)
/* 042E94 80042294 8E0E0000 */  lw    $t6, ($s0)
/* 042E98 80042298 8FA50078 */  lw    $a1, 0x78($sp)
/* 042E9C 8004229C 27A40030 */  addiu $a0, $sp, 0x30
/* 042EA0 800422A0 25D80001 */  addiu $t8, $t6, 1
/* 042EA4 800422A4 0C0106DA */  jal   func_80041B68
/* 042EA8 800422A8 AE180000 */   sw    $t8, ($s0)
/* 042EAC 800422AC 8E080000 */  lw    $t0, ($s0)
/* 042EB0 800422B0 3C198015 */  lui   $t9, %hi(gGfxPool) # $t9, 0x8015
/* 042EB4 800422B4 8F39EF40 */  lw    $t9, %lo(gGfxPool)($t9)
/* 042EB8 800422B8 00085180 */  sll   $t2, $t0, 6
/* 042EBC 800422BC 27A50030 */  addiu $a1, $sp, 0x30
/* 042EC0 800422C0 032A2021 */  addu  $a0, $t9, $t2
/* 042EC4 800422C4 0C008860 */  jal   func_80022180
/* 042EC8 800422C8 248402C0 */   addiu $a0, $a0, 0x2c0
/* 042ECC 800422CC 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 042ED0 800422D0 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 042ED4 800422D4 8C830000 */  lw    $v1, ($a0)
/* 042ED8 800422D8 3C0B0100 */  lui   $t3, (0x01000040 >> 16) # lui $t3, 0x100
/* 042EDC 800422DC 356B0040 */  ori   $t3, (0x01000040 & 0xFFFF) # ori $t3, $t3, 0x40
/* 042EE0 800422E0 24690008 */  addiu $t1, $v1, 8
/* 042EE4 800422E4 AC890000 */  sw    $t1, ($a0)
/* 042EE8 800422E8 AC6B0000 */  sw    $t3, ($v1)
/* 042EEC 800422EC 8E0D0000 */  lw    $t5, ($s0)
/* 042EF0 800422F0 3C0C8015 */  lui   $t4, %hi(gGfxPool) # $t4, 0x8015
/* 042EF4 800422F4 8D8CEF40 */  lw    $t4, %lo(gGfxPool)($t4)
/* 042EF8 800422F8 000D7980 */  sll   $t7, $t5, 6
/* 042EFC 800422FC 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 042F00 80042300 018F7021 */  addu  $t6, $t4, $t7
/* 042F04 80042304 25D802C0 */  addiu $t8, $t6, 0x2c0
/* 042F08 80042308 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 042F0C 8004230C 03014024 */  and   $t0, $t8, $at
/* 042F10 80042310 AC680004 */  sw    $t0, 4($v1)
/* 042F14 80042314 8E190000 */  lw    $t9, ($s0)
/* 042F18 80042318 8FBF001C */  lw    $ra, 0x1c($sp)
/* 042F1C 8004231C 272A0001 */  addiu $t2, $t9, 1
/* 042F20 80042320 AE0A0000 */  sw    $t2, ($s0)
/* 042F24 80042324 8FB00018 */  lw    $s0, 0x18($sp)
/* 042F28 80042328 03E00008 */  jr    $ra
/* 042F2C 8004232C 27BD0070 */   addiu $sp, $sp, 0x70
