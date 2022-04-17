glabel func_800B914C
/* 0B9D4C 800B914C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B9D50 800B9150 AFA40018 */  sw    $a0, 0x18($sp)
/* 0B9D54 800B9154 3C04803B */  lui   $a0, %hi(gLeftVolRampings) # $a0, 0x803b
/* 0B9D58 800B9158 2484FBC8 */  addiu $a0, %lo(gLeftVolRampings) # addiu $a0, $a0, -0x438
/* 0B9D5C 800B915C 8C8E0000 */  lw    $t6, ($a0)
/* 0B9D60 800B9160 8FAF0018 */  lw    $t7, 0x18($sp)
/* 0B9D64 800B9164 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B9D68 800B9168 AC8E0004 */  sw    $t6, 4($a0)
/* 0B9D6C 800B916C 0C02E3FF */  jal   soundAlloc
/* 0B9D70 800B9170 8DE50000 */   lw    $a1, ($t7)
/* 0B9D74 800B9174 8FB80018 */  lw    $t8, 0x18($sp)
/* 0B9D78 800B9178 3C04803B */  lui   $a0, %hi(gNotesAndBuffersPool) # $a0, 0x803b
/* 0B9D7C 800B917C 2484FBE8 */  addiu $a0, %lo(gNotesAndBuffersPool) # addiu $a0, $a0, -0x418
/* 0B9D80 800B9180 00402825 */  move  $a1, $v0
/* 0B9D84 800B9184 0C02E41F */  jal   func_800B907C
/* 0B9D88 800B9188 8F060000 */   lw    $a2, ($t8)
/* 0B9D8C 800B918C 8FB90018 */  lw    $t9, 0x18($sp)
/* 0B9D90 800B9190 3C04803B */  lui   $a0, %hi(gLeftVolRampings) # $a0, 0x803b
/* 0B9D94 800B9194 2484FBC8 */  addiu $a0, %lo(gLeftVolRampings) # addiu $a0, $a0, -0x438
/* 0B9D98 800B9198 0C02E3FF */  jal   soundAlloc
/* 0B9D9C 800B919C 8F25000C */   lw    $a1, 0xc($t9)
/* 0B9DA0 800B91A0 8FA80018 */  lw    $t0, 0x18($sp)
/* 0B9DA4 800B91A4 3C04803B */  lui   $a0, %hi(D_803AFC18) # $a0, 0x803b
/* 0B9DA8 800B91A8 2484FC18 */  addiu $a0, %lo(D_803AFC18) # addiu $a0, $a0, -0x3e8
/* 0B9DAC 800B91AC 00402825 */  move  $a1, $v0
/* 0B9DB0 800B91B0 0C02E41F */  jal   func_800B907C
/* 0B9DB4 800B91B4 8D06000C */   lw    $a2, 0xc($t0)
/* 0B9DB8 800B91B8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B9DBC 800B91BC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B9DC0 800B91C0 03E00008 */  jr    $ra
/* 0B9DC4 800B91C4 00000000 */   nop   
