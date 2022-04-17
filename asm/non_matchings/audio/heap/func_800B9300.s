glabel func_800B9300
/* 0B9F00 800B9300 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0B9F04 800B9304 AFB00018 */  sw    $s0, 0x18($sp)
/* 0B9F08 800B9308 00808025 */  move  $s0, $a0
/* 0B9F0C 800B930C 3C04803B */  lui   $a0, %hi(D_803AFC38) # $a0, 0x803b
/* 0B9F10 800B9310 2484FC38 */  addiu $a0, %lo(D_803AFC38) # addiu $a0, $a0, -0x3c8
/* 0B9F14 800B9314 8C8E0000 */  lw    $t6, ($a0)
/* 0B9F18 800B9318 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0B9F1C 800B931C AC8E0004 */  sw    $t6, 4($a0)
/* 0B9F20 800B9320 0C02E3FF */  jal   soundAlloc
/* 0B9F24 800B9324 8E050000 */   lw    $a1, ($s0)
/* 0B9F28 800B9328 3C04803B */  lui   $a0, %hi(D_803AFDE0) # $a0, 0x803b
/* 0B9F2C 800B932C 2484FDE0 */  addiu $a0, %lo(D_803AFDE0) # addiu $a0, $a0, -0x220
/* 0B9F30 800B9330 00402825 */  move  $a1, $v0
/* 0B9F34 800B9334 0C02E41F */  jal   func_800B907C
/* 0B9F38 800B9338 8E060000 */   lw    $a2, ($s0)
/* 0B9F3C 800B933C 3C04803B */  lui   $a0, %hi(D_803AFC38) # $a0, 0x803b
/* 0B9F40 800B9340 2484FC38 */  addiu $a0, %lo(D_803AFC38) # addiu $a0, $a0, -0x3c8
/* 0B9F44 800B9344 0C02E3FF */  jal   soundAlloc
/* 0B9F48 800B9348 8E050004 */   lw    $a1, 4($s0)
/* 0B9F4C 800B934C 3C04803B */  lui   $a0, %hi(D_803AFFB0) # $a0, 0x803b
/* 0B9F50 800B9350 2484FFB0 */  addiu $a0, %lo(D_803AFFB0) # addiu $a0, $a0, -0x50
/* 0B9F54 800B9354 00402825 */  move  $a1, $v0
/* 0B9F58 800B9358 0C02E41F */  jal   func_800B907C
/* 0B9F5C 800B935C 8E060004 */   lw    $a2, 4($s0)
/* 0B9F60 800B9360 3C04803B */  lui   $a0, %hi(D_803AFC38) # $a0, 0x803b
/* 0B9F64 800B9364 2484FC38 */  addiu $a0, %lo(D_803AFC38) # addiu $a0, $a0, -0x3c8
/* 0B9F68 800B9368 0C02E3FF */  jal   soundAlloc
/* 0B9F6C 800B936C 8E050008 */   lw    $a1, 8($s0)
/* 0B9F70 800B9370 3C04803B */  lui   $a0, %hi(D_803B0180) # $a0, 0x803b
/* 0B9F74 800B9374 24840180 */  addiu $a0, %lo(D_803B0180) # addiu $a0, $a0, 0x180
/* 0B9F78 800B9378 00402825 */  move  $a1, $v0
/* 0B9F7C 800B937C 0C02E41F */  jal   func_800B907C
/* 0B9F80 800B9380 8E060008 */   lw    $a2, 8($s0)
/* 0B9F84 800B9384 3C04803B */  lui   $a0, %hi(D_803AFDDC) # $a0, 0x803b
/* 0B9F88 800B9388 0C02E42C */  jal   func_800B90B0
/* 0B9F8C 800B938C 2484FDDC */   addiu $a0, %lo(D_803AFDDC) # addiu $a0, $a0, -0x224
/* 0B9F90 800B9390 3C04803B */  lui   $a0, %hi(D_803AFFAC) # $a0, 0x803b
/* 0B9F94 800B9394 0C02E42C */  jal   func_800B90B0
/* 0B9F98 800B9398 2484FFAC */   addiu $a0, %lo(D_803AFFAC) # addiu $a0, $a0, -0x54
/* 0B9F9C 800B939C 3C04803B */  lui   $a0, %hi(D_803B017C) # $a0, 0x803b
/* 0B9FA0 800B93A0 0C02E42C */  jal   func_800B90B0
/* 0B9FA4 800B93A4 2484017C */   addiu $a0, %lo(D_803B017C) # addiu $a0, $a0, 0x17c
/* 0B9FA8 800B93A8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0B9FAC 800B93AC 8FB00018 */  lw    $s0, 0x18($sp)
/* 0B9FB0 800B93B0 27BD0020 */  addiu $sp, $sp, 0x20
/* 0B9FB4 800B93B4 03E00008 */  jr    $ra
/* 0B9FB8 800B93B8 00000000 */   nop   
