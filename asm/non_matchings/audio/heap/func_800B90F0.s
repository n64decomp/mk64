glabel func_800B90F0
/* 0B9CF0 800B90F0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B9CF4 800B90F4 00803025 */  move  $a2, $a0
/* 0B9CF8 800B90F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B9CFC 800B90FC 3C04803B */  lui   $a0, %hi(D_803AFBD8) # $a0, 0x803b
/* 0B9D00 800B9100 3C05803B */  lui   $a1, %hi(D_803B71B0) # $a1, 0x803b
/* 0B9D04 800B9104 24A571B0 */  addiu $a1, %lo(D_803B71B0) # addiu $a1, $a1, 0x71b0
/* 0B9D08 800B9108 2484FBD8 */  addiu $a0, %lo(D_803AFBD8) # addiu $a0, $a0, -0x428
/* 0B9D0C 800B910C 0C02E41F */  jal   func_800B907C
/* 0B9D10 800B9110 AFA60018 */   sw    $a2, 0x18($sp)
/* 0B9D14 800B9114 8FA70018 */  lw    $a3, 0x18($sp)
/* 0B9D18 800B9118 3C0F800F */  lui   $t7, %hi(D_800EA5D0) # $t7, 0x800f
/* 0B9D1C 800B911C 8DEFA5D0 */  lw    $t7, %lo(D_800EA5D0)($t7)
/* 0B9D20 800B9120 3C0E803B */  lui   $t6, %hi(D_803B71B0) # $t6, 0x803b
/* 0B9D24 800B9124 25CE71B0 */  addiu $t6, %lo(D_803B71B0) # addiu $t6, $t6, 0x71b0
/* 0B9D28 800B9128 3C04803B */  lui   $a0, %hi(gLeftVolRampings) # $a0, 0x803b
/* 0B9D2C 800B912C 2484FBC8 */  addiu $a0, %lo(gLeftVolRampings) # addiu $a0, $a0, -0x438
/* 0B9D30 800B9130 00EE2821 */  addu  $a1, $a3, $t6
/* 0B9D34 800B9134 0C02E41F */  jal   func_800B907C
/* 0B9D38 800B9138 01E73023 */   subu  $a2, $t7, $a3
/* 0B9D3C 800B913C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B9D40 800B9140 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B9D44 800B9144 03E00008 */  jr    $ra
/* 0B9D48 800B9148 00000000 */   nop   
