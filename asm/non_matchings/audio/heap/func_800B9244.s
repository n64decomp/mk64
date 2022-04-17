glabel func_800B9244
/* 0B9E44 800B9244 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0B9E48 800B9248 AFB00018 */  sw    $s0, 0x18($sp)
/* 0B9E4C 800B924C 00808025 */  move  $s0, $a0
/* 0B9E50 800B9250 3C04803B */  lui   $a0, %hi(D_803AFC28) # $a0, 0x803b
/* 0B9E54 800B9254 2484FC28 */  addiu $a0, %lo(D_803AFC28) # addiu $a0, $a0, -0x3d8
/* 0B9E58 800B9258 8C8E0000 */  lw    $t6, ($a0)
/* 0B9E5C 800B925C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0B9E60 800B9260 AC8E0004 */  sw    $t6, 4($a0)
/* 0B9E64 800B9264 0C02E3FF */  jal   soundAlloc
/* 0B9E68 800B9268 8E050000 */   lw    $a1, ($s0)
/* 0B9E6C 800B926C 3C04803B */  lui   $a0, %hi(D_803AFC4C) # $a0, 0x803b
/* 0B9E70 800B9270 2484FC4C */  addiu $a0, %lo(D_803AFC4C) # addiu $a0, $a0, -0x3b4
/* 0B9E74 800B9274 00402825 */  move  $a1, $v0
/* 0B9E78 800B9278 0C02E41F */  jal   func_800B907C
/* 0B9E7C 800B927C 8E060000 */   lw    $a2, ($s0)
/* 0B9E80 800B9280 3C04803B */  lui   $a0, %hi(D_803AFC28) # $a0, 0x803b
/* 0B9E84 800B9284 2484FC28 */  addiu $a0, %lo(D_803AFC28) # addiu $a0, $a0, -0x3d8
/* 0B9E88 800B9288 0C02E3FF */  jal   soundAlloc
/* 0B9E8C 800B928C 8E050004 */   lw    $a1, 4($s0)
/* 0B9E90 800B9290 3C04803B */  lui   $a0, %hi(D_803AFE1C) # $a0, 0x803b
/* 0B9E94 800B9294 2484FE1C */  addiu $a0, %lo(D_803AFE1C) # addiu $a0, $a0, -0x1e4
/* 0B9E98 800B9298 00402825 */  move  $a1, $v0
/* 0B9E9C 800B929C 0C02E41F */  jal   func_800B907C
/* 0B9EA0 800B92A0 8E060004 */   lw    $a2, 4($s0)
/* 0B9EA4 800B92A4 3C04803B */  lui   $a0, %hi(D_803AFC28) # $a0, 0x803b
/* 0B9EA8 800B92A8 2484FC28 */  addiu $a0, %lo(D_803AFC28) # addiu $a0, $a0, -0x3d8
/* 0B9EAC 800B92AC 0C02E3FF */  jal   soundAlloc
/* 0B9EB0 800B92B0 8E050008 */   lw    $a1, 8($s0)
/* 0B9EB4 800B92B4 3C04803B */  lui   $a0, %hi(D_803AFFEC) # $a0, 0x803b
/* 0B9EB8 800B92B8 2484FFEC */  addiu $a0, %lo(D_803AFFEC) # addiu $a0, $a0, -0x14
/* 0B9EBC 800B92BC 00402825 */  move  $a1, $v0
/* 0B9EC0 800B92C0 0C02E41F */  jal   func_800B907C
/* 0B9EC4 800B92C4 8E060008 */   lw    $a2, 8($s0)
/* 0B9EC8 800B92C8 3C04803B */  lui   $a0, %hi(D_803AFC48) # $a0, 0x803b
/* 0B9ECC 800B92CC 0C02E427 */  jal   func_800B909C
/* 0B9ED0 800B92D0 2484FC48 */   addiu $a0, %lo(D_803AFC48) # addiu $a0, $a0, -0x3b8
/* 0B9ED4 800B92D4 3C04803B */  lui   $a0, %hi(D_803AFE18) # $a0, 0x803b
/* 0B9ED8 800B92D8 0C02E427 */  jal   func_800B909C
/* 0B9EDC 800B92DC 2484FE18 */   addiu $a0, %lo(D_803AFE18) # addiu $a0, $a0, -0x1e8
/* 0B9EE0 800B92E0 3C04803B */  lui   $a0, %hi(D_803AFFE8) # $a0, 0x803b
/* 0B9EE4 800B92E4 0C02E427 */  jal   func_800B909C
/* 0B9EE8 800B92E8 2484FFE8 */   addiu $a0, %lo(D_803AFFE8) # addiu $a0, $a0, -0x18
/* 0B9EEC 800B92EC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0B9EF0 800B92F0 8FB00018 */  lw    $s0, 0x18($sp)
/* 0B9EF4 800B92F4 27BD0020 */  addiu $sp, $sp, 0x20
/* 0B9EF8 800B92F8 03E00008 */  jr    $ra
/* 0B9EFC 800B92FC 00000000 */   nop   
