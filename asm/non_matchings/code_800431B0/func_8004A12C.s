glabel func_8004A12C
/* 04AD2C 8004A12C 44876000 */  mtc1  $a3, $f12
/* 04AD30 8004A130 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04AD34 8004A134 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04AD38 8004A138 AFA60028 */  sw    $a2, 0x28($sp)
/* 04AD3C 8004A13C 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04AD40 8004A140 44076000 */  mfc1  $a3, $f12
/* 04AD44 8004A144 0C0108CC */  jal   func_80042330
/* 04AD48 8004A148 01C03025 */   move  $a2, $t6
/* 04AD4C 8004A14C 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04AD50 8004A150 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04AD54 8004A154 8D030000 */  lw    $v1, ($t0)
/* 04AD58 8004A158 3C190D00 */  lui   $t9, %hi(D_0D007A60) # $t9, 0xd00
/* 04AD5C 8004A15C 27397A60 */  addiu $t9, %lo(D_0D007A60) # addiu $t9, $t9, 0x7a60
/* 04AD60 8004A160 246F0008 */  addiu $t7, $v1, 8
/* 04AD64 8004A164 AD0F0000 */  sw    $t7, ($t0)
/* 04AD68 8004A168 3C180600 */  lui   $t8, 0x600
/* 04AD6C 8004A16C AC780000 */  sw    $t8, ($v1)
/* 04AD70 8004A170 AC790004 */  sw    $t9, 4($v1)
/* 04AD74 8004A174 8FA7003C */  lw    $a3, 0x3c($sp)
/* 04AD78 8004A178 8FA60038 */  lw    $a2, 0x38($sp)
/* 04AD7C 8004A17C 8FA50034 */  lw    $a1, 0x34($sp)
/* 04AD80 8004A180 0C012CD7 */  jal   func_8004B35C
/* 04AD84 8004A184 8FA40030 */   lw    $a0, 0x30($sp)
/* 04AD88 8004A188 8FA90050 */  lw    $t1, 0x50($sp)
/* 04AD8C 8004A18C 8FAA0054 */  lw    $t2, 0x54($sp)
/* 04AD90 8004A190 8FA40040 */  lw    $a0, 0x40($sp)
/* 04AD94 8004A194 8FA50044 */  lw    $a1, 0x44($sp)
/* 04AD98 8004A198 8FA60048 */  lw    $a2, 0x48($sp)
/* 04AD9C 8004A19C 8FA7004C */  lw    $a3, 0x4c($sp)
/* 04ADA0 8004A1A0 AFA90010 */  sw    $t1, 0x10($sp)
/* 04ADA4 8004A1A4 0C012587 */  jal   func_8004961C
/* 04ADA8 8004A1A8 AFAA0014 */   sw    $t2, 0x14($sp)
/* 04ADAC 8004A1AC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04ADB0 8004A1B0 27BD0020 */  addiu $sp, $sp, 0x20
/* 04ADB4 8004A1B4 03E00008 */  jr    $ra
/* 04ADB8 8004A1B8 00000000 */   nop   

/* 04ADBC 8004A1BC 44876000 */  mtc1  $a3, $f12
/* 04ADC0 8004A1C0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04ADC4 8004A1C4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04ADC8 8004A1C8 AFA60028 */  sw    $a2, 0x28($sp)
/* 04ADCC 8004A1CC 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04ADD0 8004A1D0 44076000 */  mfc1  $a3, $f12
/* 04ADD4 8004A1D4 0C0108CC */  jal   func_80042330
/* 04ADD8 8004A1D8 01C03025 */   move  $a2, $t6
/* 04ADDC 8004A1DC 3C098015 */  lui   $t1, %hi(gDisplayListHead) # $t1, 0x8015
/* 04ADE0 8004A1E0 25290298 */  addiu $t1, %lo(gDisplayListHead) # addiu $t1, $t1, 0x298
/* 04ADE4 8004A1E4 8D220000 */  lw    $v0, ($t1)
/* 04ADE8 8004A1E8 3C190D00 */  lui   $t9, %hi(D_0D007A40) # $t9, 0xd00
/* 04ADEC 8004A1EC 27397A40 */  addiu $t9, %lo(D_0D007A40) # addiu $t9, $t9, 0x7a40
/* 04ADF0 8004A1F0 244F0008 */  addiu $t7, $v0, 8
/* 04ADF4 8004A1F4 AD2F0000 */  sw    $t7, ($t1)
/* 04ADF8 8004A1F8 3C180600 */  lui   $t8, 0x600
/* 04ADFC 8004A1FC AC580000 */  sw    $t8, ($v0)
/* 04AE00 8004A200 AC590004 */  sw    $t9, 4($v0)
/* 04AE04 8004A204 8D220000 */  lw    $v0, ($t1)
/* 04AE08 8004A208 3C0BFC62 */  lui   $t3, (0xFC627EC4 >> 16) # lui $t3, 0xfc62
/* 04AE0C 8004A20C 356B7EC4 */  ori   $t3, (0xFC627EC4 & 0xFFFF) # ori $t3, $t3, 0x7ec4
/* 04AE10 8004A210 244A0008 */  addiu $t2, $v0, 8
/* 04AE14 8004A214 AD2A0000 */  sw    $t2, ($t1)
/* 04AE18 8004A218 240CF3F9 */  li    $t4, -3079
/* 04AE1C 8004A21C AC4C0004 */  sw    $t4, 4($v0)
/* 04AE20 8004A220 AC4B0000 */  sw    $t3, ($v0)
/* 04AE24 8004A224 8FAE0044 */  lw    $t6, 0x44($sp)
/* 04AE28 8004A228 8FAD0040 */  lw    $t5, 0x40($sp)
/* 04AE2C 8004A22C 8FA7003C */  lw    $a3, 0x3c($sp)
/* 04AE30 8004A230 8FA60038 */  lw    $a2, 0x38($sp)
/* 04AE34 8004A234 8FA50034 */  lw    $a1, 0x34($sp)
/* 04AE38 8004A238 8FA40030 */  lw    $a0, 0x30($sp)
/* 04AE3C 8004A23C AFAE0014 */  sw    $t6, 0x14($sp)
/* 04AE40 8004A240 0C01265C */  jal   func_80049970
/* 04AE44 8004A244 AFAD0010 */   sw    $t5, 0x10($sp)
/* 04AE48 8004A248 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04AE4C 8004A24C 27BD0020 */  addiu $sp, $sp, 0x20
/* 04AE50 8004A250 03E00008 */  jr    $ra
/* 04AE54 8004A254 00000000 */   nop   
