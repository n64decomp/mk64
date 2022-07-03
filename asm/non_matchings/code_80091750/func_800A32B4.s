glabel func_800A32B4
/* 0A3EB4 800A32B4 00077040 */  sll   $t6, $a3, 1
/* 0A3EB8 800A32B8 3C0F8016 */  lui   $t7, %hi(gGPCurrentRacePlayerIdByRank) # 0x8016
/* 0A3EBC 800A32BC 01EE7821 */  addu  $t7, $t7, $t6
/* 0A3EC0 800A32C0 85EF4360 */  lh    $t7, %lo(gGPCurrentRacePlayerIdByRank)($t7) # 0x4360($t7)
/* 0A3EC4 800A32C4 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 0A3EC8 800A32C8 3C018016 */  lui   $at, %hi(gTimePlayerLastTouchedFinishLine)
/* 0A3ECC 800A32CC 000FC080 */  sll   $t8, $t7, 2
/* 0A3ED0 800A32D0 00380821 */  addu  $at, $at, $t8
/* 0A3ED4 800A32D4 C424F898 */  lwc1  $f4, %lo(gTimePlayerLastTouchedFinishLine)($at)
/* 0A3ED8 800A32D8 AFB20030 */  sw    $s2, 0x30($sp)
/* 0A3EDC 800A32DC AFB1002C */  sw    $s1, 0x2c($sp)
/* 0A3EE0 800A32E0 AFB00028 */  sw    $s0, 0x28($sp)
/* 0A3EE4 800A32E4 00808025 */  move  $s0, $a0
/* 0A3EE8 800A32E8 00A08825 */  move  $s1, $a1
/* 0A3EEC 800A32EC 27B2003C */  addiu $s2, $sp, 0x3c
/* 0A3EF0 800A32F0 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0A3EF4 800A32F4 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0A3EF8 800A32F8 AFA60060 */  sw    $a2, 0x60($sp)
/* 0A3EFC 800A32FC 02402825 */  move  $a1, $s2
/* 0A3F00 800A3300 24E40001 */  addiu $a0, $a3, 1
/* 0A3F04 800A3304 0C029E25 */  jal   convert_number_to_ascii
/* 0A3F08 800A3308 E7A40050 */   swc1  $f4, 0x50($sp)
/* 0A3F0C 800A330C 3C01800F */  lui   $at, %hi(D_800F1CA4) # $at, 0x800f
/* 0A3F10 800A3310 C4341CA4 */  lwc1  $f20, %lo(D_800F1CA4)($at)
/* 0A3F14 800A3314 2419002E */  li    $t9, 46
/* 0A3F18 800A3318 A3B9003E */  sb    $t9, 0x3e($sp)
/* 0A3F1C 800A331C A3A0003F */  sb    $zero, 0x3f($sp)
/* 0A3F20 800A3320 2604FFFF */  addiu $a0, $s0, -1
/* 0A3F24 800A3324 02202825 */  move  $a1, $s1
/* 0A3F28 800A3328 27A6003D */  addiu $a2, $sp, 0x3d
/* 0A3F2C 800A332C 2407FFFC */  li    $a3, -4
/* 0A3F30 800A3330 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A3F34 800A3334 0C024E72 */  jal   func_800939C8
/* 0A3F38 800A3338 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A3F3C 800A333C 8FA80060 */  lw    $t0, 0x60($sp)
/* 0A3F40 800A3340 3C01800F */  lui   $at, %hi(D_800F1CA8) # $at, 0x800f
/* 0A3F44 800A3344 C4261CA8 */  lwc1  $f6, %lo(D_800F1CA8)($at)
/* 0A3F48 800A3348 3C06800E */  lui   $a2, %hi(D_800E76A8)
/* 0A3F4C 800A334C 00084880 */  sll   $t1, $t0, 2
/* 0A3F50 800A3350 00C93021 */  addu  $a2, $a2, $t1
/* 0A3F54 800A3354 8CC676A8 */  lw    $a2, %lo(D_800E76A8)($a2)
/* 0A3F58 800A3358 2604000A */  addiu $a0, $s0, 0xa
/* 0A3F5C 800A335C 02202825 */  move  $a1, $s1
/* 0A3F60 800A3360 00003825 */  move  $a3, $zero
/* 0A3F64 800A3364 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A3F68 800A3368 0C024CC9 */  jal   func_80093324
/* 0A3F6C 800A336C E7A60010 */   swc1  $f6, 0x10($sp)
/* 0A3F70 800A3370 3C014270 */  li    $at, 0x42700000 # 60.000000
/* 0A3F74 800A3374 44815000 */  mtc1  $at, $f10
/* 0A3F78 800A3378 C7A80050 */  lwc1  $f8, 0x50($sp)
/* 0A3F7C 800A337C 02402825 */  move  $a1, $s2
/* 0A3F80 800A3380 460A4403 */  div.s $f16, $f8, $f10
/* 0A3F84 800A3384 4600848D */  trunc.w.s $f18, $f16
/* 0A3F88 800A3388 44049000 */  mfc1  $a0, $f18
/* 0A3F8C 800A338C 0C029E25 */  jal   convert_number_to_ascii
/* 0A3F90 800A3390 00000000 */   nop   
/* 0A3F94 800A3394 26040042 */  addiu $a0, $s0, 0x42
/* 0A3F98 800A3398 02202825 */  move  $a1, $s1
/* 0A3F9C 800A339C 02403025 */  move  $a2, $s2
/* 0A3FA0 800A33A0 00003825 */  move  $a3, $zero
/* 0A3FA4 800A33A4 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A3FA8 800A33A8 0C024E72 */  jal   func_800939C8
/* 0A3FAC 800A33AC E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A3FB0 800A33B0 C7A40050 */  lwc1  $f4, 0x50($sp)
/* 0A3FB4 800A33B4 2401003C */  li    $at, 60
/* 0A3FB8 800A33B8 02402825 */  move  $a1, $s2
/* 0A3FBC 800A33BC 4600218D */  trunc.w.s $f6, $f4
/* 0A3FC0 800A33C0 44043000 */  mfc1  $a0, $f6
/* 0A3FC4 800A33C4 00000000 */  nop   
/* 0A3FC8 800A33C8 0081001A */  div   $zero, $a0, $at
/* 0A3FCC 800A33CC 00002010 */  mfhi  $a0
/* 0A3FD0 800A33D0 0C029E25 */  jal   convert_number_to_ascii
/* 0A3FD4 800A33D4 00000000 */   nop   
/* 0A3FD8 800A33D8 3C06800F */  lui   $a2, %hi(D_800F0C2C) # $a2, 0x800f
/* 0A3FDC 800A33DC 24C60C2C */  addiu $a2, %lo(D_800F0C2C) # addiu $a2, $a2, 0xc2c
/* 0A3FE0 800A33E0 2604004E */  addiu $a0, $s0, 0x4e
/* 0A3FE4 800A33E4 02202825 */  move  $a1, $s1
/* 0A3FE8 800A33E8 00003825 */  move  $a3, $zero
/* 0A3FEC 800A33EC E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A3FF0 800A33F0 0C024CC9 */  jal   func_80093324
/* 0A3FF4 800A33F4 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A3FF8 800A33F8 26040056 */  addiu $a0, $s0, 0x56
/* 0A3FFC 800A33FC 02202825 */  move  $a1, $s1
/* 0A4000 800A3400 02403025 */  move  $a2, $s2
/* 0A4004 800A3404 00003825 */  move  $a3, $zero
/* 0A4008 800A3408 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A400C 800A340C 0C024E72 */  jal   func_800939C8
/* 0A4010 800A3410 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A4014 800A3414 C7A80050 */  lwc1  $f8, 0x50($sp)
/* 0A4018 800A3418 3C014059 */  li    $at, 0x40590000 # 3.390625
/* 0A401C 800A341C 44818800 */  mtc1  $at, $f17
/* 0A4020 800A3420 44808000 */  mtc1  $zero, $f16
/* 0A4024 800A3424 460042A1 */  cvt.d.s $f10, $f8
/* 0A4028 800A3428 24010064 */  li    $at, 100
/* 0A402C 800A342C 46305482 */  mul.d $f18, $f10, $f16
/* 0A4030 800A3430 02402825 */  move  $a1, $s2
/* 0A4034 800A3434 4620910D */  trunc.w.d $f4, $f18
/* 0A4038 800A3438 44042000 */  mfc1  $a0, $f4
/* 0A403C 800A343C 00000000 */  nop   
/* 0A4040 800A3440 0081001A */  div   $zero, $a0, $at
/* 0A4044 800A3444 00002010 */  mfhi  $a0
/* 0A4048 800A3448 0C029E25 */  jal   convert_number_to_ascii
/* 0A404C 800A344C 00000000 */   nop   
/* 0A4050 800A3450 3C06800F */  lui   $a2, %hi(D_800F0C30) # $a2, 0x800f
/* 0A4054 800A3454 24C60C30 */  addiu $a2, %lo(D_800F0C30) # addiu $a2, $a2, 0xc30
/* 0A4058 800A3458 26040062 */  addiu $a0, $s0, 0x62
/* 0A405C 800A345C 02202825 */  move  $a1, $s1
/* 0A4060 800A3460 00003825 */  move  $a3, $zero
/* 0A4064 800A3464 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A4068 800A3468 0C024CC9 */  jal   func_80093324
/* 0A406C 800A346C E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A4070 800A3470 2604006A */  addiu $a0, $s0, 0x6a
/* 0A4074 800A3474 02202825 */  move  $a1, $s1
/* 0A4078 800A3478 02403025 */  move  $a2, $s2
/* 0A407C 800A347C 00003825 */  move  $a3, $zero
/* 0A4080 800A3480 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A4084 800A3484 0C024E72 */  jal   func_800939C8
/* 0A4088 800A3488 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A408C 800A348C 8FBF0034 */  lw    $ra, 0x34($sp)
/* 0A4090 800A3490 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0A4094 800A3494 8FB00028 */  lw    $s0, 0x28($sp)
/* 0A4098 800A3498 8FB1002C */  lw    $s1, 0x2c($sp)
/* 0A409C 800A349C 8FB20030 */  lw    $s2, 0x30($sp)
/* 0A40A0 800A34A0 03E00008 */  jr    $ra
/* 0A40A4 800A34A4 27BD0058 */   addiu $sp, $sp, 0x58
