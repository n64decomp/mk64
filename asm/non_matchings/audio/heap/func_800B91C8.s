glabel func_800B91C8
/* 0B9DC8 800B91C8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B9DCC 800B91CC AFA40018 */  sw    $a0, 0x18($sp)
/* 0B9DD0 800B91D0 3C04803B */  lui   $a0, %hi(D_803AFC18) # $a0, 0x803b
/* 0B9DD4 800B91D4 2484FC18 */  addiu $a0, %lo(D_803AFC18) # addiu $a0, $a0, -0x3e8
/* 0B9DD8 800B91D8 8C8E0000 */  lw    $t6, ($a0)
/* 0B9DDC 800B91DC 8FAF0018 */  lw    $t7, 0x18($sp)
/* 0B9DE0 800B91E0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B9DE4 800B91E4 AC8E0004 */  sw    $t6, 4($a0)
/* 0B9DE8 800B91E8 0C02E3FF */  jal   soundAlloc
/* 0B9DEC 800B91EC 8DE50000 */   lw    $a1, ($t7)
/* 0B9DF0 800B91F0 8FB80018 */  lw    $t8, 0x18($sp)
/* 0B9DF4 800B91F4 3C04803B */  lui   $a0, %hi(D_803AFC28) # $a0, 0x803b
/* 0B9DF8 800B91F8 2484FC28 */  addiu $a0, %lo(D_803AFC28) # addiu $a0, $a0, -0x3d8
/* 0B9DFC 800B91FC 00402825 */  move  $a1, $v0
/* 0B9E00 800B9200 0C02E41F */  jal   func_800B907C
/* 0B9E04 800B9204 8F060000 */   lw    $a2, ($t8)
/* 0B9E08 800B9208 8FB90018 */  lw    $t9, 0x18($sp)
/* 0B9E0C 800B920C 3C04803B */  lui   $a0, %hi(D_803AFC18) # $a0, 0x803b
/* 0B9E10 800B9210 2484FC18 */  addiu $a0, %lo(D_803AFC18) # addiu $a0, $a0, -0x3e8
/* 0B9E14 800B9214 0C02E3FF */  jal   soundAlloc
/* 0B9E18 800B9218 8F250004 */   lw    $a1, 4($t9)
/* 0B9E1C 800B921C 8FA80018 */  lw    $t0, 0x18($sp)
/* 0B9E20 800B9220 3C04803B */  lui   $a0, %hi(D_803AFC38) # $a0, 0x803b
/* 0B9E24 800B9224 2484FC38 */  addiu $a0, %lo(D_803AFC38) # addiu $a0, $a0, -0x3c8
/* 0B9E28 800B9228 00402825 */  move  $a1, $v0
/* 0B9E2C 800B922C 0C02E41F */  jal   func_800B907C
/* 0B9E30 800B9230 8D060004 */   lw    $a2, 4($t0)
/* 0B9E34 800B9234 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B9E38 800B9238 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B9E3C 800B923C 03E00008 */  jr    $ra
/* 0B9E40 800B9240 00000000 */   nop   
