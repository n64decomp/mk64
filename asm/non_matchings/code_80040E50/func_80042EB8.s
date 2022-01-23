glabel func_80042EB8
/* 043AB8 80042EB8 44866000 */  mtc1  $a2, $f12
/* 043ABC 80042EBC 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 043AC0 80042EC0 AFA50064 */  sw    $a1, 0x64($sp)
/* 043AC4 80042EC4 00802825 */  move  $a1, $a0
/* 043AC8 80042EC8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 043ACC 80042ECC AFA40060 */  sw    $a0, 0x60($sp)
/* 043AD0 80042ED0 44076000 */  mfc1  $a3, $f12
/* 043AD4 80042ED4 8FA60064 */  lw    $a2, 0x64($sp)
/* 043AD8 80042ED8 0C0109D8 */  jal   func_80042760
/* 043ADC 80042EDC 27A40020 */   addiu $a0, $sp, 0x20
/* 043AE0 80042EE0 3C068019 */  lui   $a2, %hi(D_8018D120) # $a2, 0x8019
/* 043AE4 80042EE4 24C6D120 */  addiu $a2, %lo(D_8018D120) # addiu $a2, $a2, -0x2ee0
/* 043AE8 80042EE8 8CCF0000 */  lw    $t7, ($a2)
/* 043AEC 80042EEC 3C0E8015 */  lui   $t6, %hi(gGfxPool) # $t6, 0x8015
/* 043AF0 80042EF0 8DCEEF40 */  lw    $t6, %lo(gGfxPool)($t6)
/* 043AF4 80042EF4 000FC180 */  sll   $t8, $t7, 6
/* 043AF8 80042EF8 27A50020 */  addiu $a1, $sp, 0x20
/* 043AFC 80042EFC 01D82021 */  addu  $a0, $t6, $t8
/* 043B00 80042F00 0C008860 */  jal   func_80022180
/* 043B04 80042F04 248402C0 */   addiu $a0, $a0, 0x2c0
/* 043B08 80042F08 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 043B0C 80042F0C 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 043B10 80042F10 8C830000 */  lw    $v1, ($a0)
/* 043B14 80042F14 3C080102 */  lui   $t0, (0x01020040 >> 16) # lui $t0, 0x102
/* 043B18 80042F18 3C068019 */  lui   $a2, %hi(D_8018D120) # $a2, 0x8019
/* 043B1C 80042F1C 24790008 */  addiu $t9, $v1, 8
/* 043B20 80042F20 AC990000 */  sw    $t9, ($a0)
/* 043B24 80042F24 35080040 */  ori   $t0, (0x01020040 & 0xFFFF) # ori $t0, $t0, 0x40
/* 043B28 80042F28 24C6D120 */  addiu $a2, %lo(D_8018D120) # addiu $a2, $a2, -0x2ee0
/* 043B2C 80042F2C AC680000 */  sw    $t0, ($v1)
/* 043B30 80042F30 8CCA0000 */  lw    $t2, ($a2)
/* 043B34 80042F34 3C098015 */  lui   $t1, %hi(gGfxPool) # $t1, 0x8015
/* 043B38 80042F38 8D29EF40 */  lw    $t1, %lo(gGfxPool)($t1)
/* 043B3C 80042F3C 000A5980 */  sll   $t3, $t2, 6
/* 043B40 80042F40 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 043B44 80042F44 012B6021 */  addu  $t4, $t1, $t3
/* 043B48 80042F48 258D02C0 */  addiu $t5, $t4, 0x2c0
/* 043B4C 80042F4C 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 043B50 80042F50 01A17824 */  and   $t7, $t5, $at
/* 043B54 80042F54 AC6F0004 */  sw    $t7, 4($v1)
/* 043B58 80042F58 8CCE0000 */  lw    $t6, ($a2)
/* 043B5C 80042F5C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 043B60 80042F60 27BD0060 */  addiu $sp, $sp, 0x60
/* 043B64 80042F64 25D80001 */  addiu $t8, $t6, 1
/* 043B68 80042F68 03E00008 */  jr    $ra
/* 043B6C 80042F6C ACD80000 */   sw    $t8, ($a2)
