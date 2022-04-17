glabel func_800B8EA8
/* 0B9AA8 800B8EA8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0B9AAC 800B8EAC 3C02803B */  lui   $v0, %hi(gMaxSimultaneousNotes) # $v0, 0x803b
/* 0B9AB0 800B8EB0 8C4270B0 */  lw    $v0, %lo(gMaxSimultaneousNotes)($v0)
/* 0B9AB4 800B8EB4 AFB50028 */  sw    $s5, 0x28($sp)
/* 0B9AB8 800B8EB8 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0B9ABC 800B8EBC 0080A825 */  move  $s5, $a0
/* 0B9AC0 800B8EC0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0B9AC4 800B8EC4 AFB40024 */  sw    $s4, 0x24($sp)
/* 0B9AC8 800B8EC8 AFB30020 */  sw    $s3, 0x20($sp)
/* 0B9ACC 800B8ECC AFB10018 */  sw    $s1, 0x18($sp)
/* 0B9AD0 800B8ED0 AFB00014 */  sw    $s0, 0x14($sp)
/* 0B9AD4 800B8ED4 18400024 */  blez  $v0, .L800B8F68
/* 0B9AD8 800B8ED8 00009025 */   move  $s2, $zero
/* 0B9ADC 800B8EDC 3C14803B */  lui   $s4, %hi(D_803B5FC8) # $s4, 0x803b
/* 0B9AE0 800B8EE0 3C13803B */  lui   $s3, %hi(D_803B1508) # $s3, 0x803b
/* 0B9AE4 800B8EE4 26731508 */  addiu $s3, %lo(D_803B1508) # addiu $s3, $s3, 0x1508
/* 0B9AE8 800B8EE8 26945FC8 */  addiu $s4, %lo(D_803B5FC8) # addiu $s4, $s4, 0x5fc8
/* 0B9AEC 800B8EEC 00008825 */  move  $s1, $zero
.L800B8EF0:
/* 0B9AF0 800B8EF0 8E6E0000 */  lw    $t6, ($s3)
/* 0B9AF4 800B8EF4 022E8021 */  addu  $s0, $s1, $t6
/* 0B9AF8 800B8EF8 920F00B2 */  lbu   $t7, 0xb2($s0)
/* 0B9AFC 800B8EFC 56AF0017 */  bnel  $s5, $t7, .L800B8F5C
/* 0B9B00 800B8F00 26520001 */   addiu $s2, $s2, 1
/* 0B9B04 800B8F04 92180030 */  lbu   $t8, 0x30($s0)
/* 0B9B08 800B8F08 2B010002 */  slti  $at, $t8, 2
/* 0B9B0C 800B8F0C 14200009 */  bnez  $at, .L800B8F34
/* 0B9B10 800B8F10 00000000 */   nop   
/* 0B9B14 800B8F14 8E020044 */  lw    $v0, 0x44($s0)
/* 0B9B18 800B8F18 90590000 */  lbu   $t9, ($v0)
/* 0B9B1C 800B8F1C 3328FF7F */  andi  $t0, $t9, 0xff7f
/* 0B9B20 800B8F20 A0480000 */  sb    $t0, ($v0)
/* 0B9B24 800B8F24 8E020044 */  lw    $v0, 0x44($s0)
/* 0B9B28 800B8F28 904A0000 */  lbu   $t2, ($v0)
/* 0B9B2C 800B8F2C 354B0040 */  ori   $t3, $t2, 0x40
/* 0B9B30 800B8F30 A04B0000 */  sb    $t3, ($v0)
.L800B8F34:
/* 0B9B34 800B8F34 0C02F2D2 */  jal   func_800BCB48
/* 0B9B38 800B8F38 02002025 */   move  $a0, $s0
/* 0B9B3C 800B8F3C 0C02F5BD */  jal   func_800BD6F4
/* 0B9B40 800B8F40 02002025 */   move  $a0, $s0
/* 0B9B44 800B8F44 02802025 */  move  $a0, $s4
/* 0B9B48 800B8F48 0C02FC01 */  jal   func_800BF004
/* 0B9B4C 800B8F4C 02002825 */   move  $a1, $s0
/* 0B9B50 800B8F50 3C02803B */  lui   $v0, %hi(gMaxSimultaneousNotes) # $v0, 0x803b
/* 0B9B54 800B8F54 8C4270B0 */  lw    $v0, %lo(gMaxSimultaneousNotes)($v0)
/* 0B9B58 800B8F58 26520001 */  addiu $s2, $s2, 1
.L800B8F5C:
/* 0B9B5C 800B8F5C 0242082A */  slt   $at, $s2, $v0
/* 0B9B60 800B8F60 1420FFE3 */  bnez  $at, .L800B8EF0
/* 0B9B64 800B8F64 263100C0 */   addiu $s1, $s1, 0xc0
.L800B8F68:
/* 0B9B68 800B8F68 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0B9B6C 800B8F6C 8FB00014 */  lw    $s0, 0x14($sp)
/* 0B9B70 800B8F70 8FB10018 */  lw    $s1, 0x18($sp)
/* 0B9B74 800B8F74 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0B9B78 800B8F78 8FB30020 */  lw    $s3, 0x20($sp)
/* 0B9B7C 800B8F7C 8FB40024 */  lw    $s4, 0x24($sp)
/* 0B9B80 800B8F80 8FB50028 */  lw    $s5, 0x28($sp)
/* 0B9B84 800B8F84 03E00008 */  jr    $ra
/* 0B9B88 800B8F88 27BD0030 */   addiu $sp, $sp, 0x30
