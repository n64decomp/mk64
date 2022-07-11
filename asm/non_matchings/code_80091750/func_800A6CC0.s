glabel func_800A6CC0
/* 0A78C0 800A6CC0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0A78C4 800A6CC4 3C038019 */  lui   $v1, %hi(D_8018EDF3) # $v1, 0x8019
/* 0A78C8 800A6CC8 8063EDF3 */  lb    $v1, %lo(D_8018EDF3)($v1)
/* 0A78CC 800A6CCC AFB00014 */  sw    $s0, 0x14($sp)
/* 0A78D0 800A6CD0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0A78D4 800A6CD4 AFB50028 */  sw    $s5, 0x28($sp)
/* 0A78D8 800A6CD8 AFB40024 */  sw    $s4, 0x24($sp)
/* 0A78DC 800A6CDC AFB30020 */  sw    $s3, 0x20($sp)
/* 0A78E0 800A6CE0 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0A78E4 800A6CE4 AFB10018 */  sw    $s1, 0x18($sp)
/* 0A78E8 800A6CE8 AFA40030 */  sw    $a0, 0x30($sp)
/* 0A78EC 800A6CEC 18600020 */  blez  $v1, .L800A6D70
/* 0A78F0 800A6CF0 00008025 */   move  $s0, $zero
/* 0A78F4 800A6CF4 3C158016 */  lui   $s5, %hi(gNmiUnknown3) # $s5, 0x8016
/* 0A78F8 800A6CF8 3C148016 */  lui   $s4, %hi(gNmiUnknown6) # $s4, 0x8016
/* 0A78FC 800A6CFC 3C11800E */  lui   $s1, %hi(gModeSelection) # $s1, 0x800e
/* 0A7900 800A6D00 2631C53C */  addiu $s1, %lo(gModeSelection) # addiu $s1, $s1, -0x3ac4
/* 0A7904 800A6D04 2694F8CC */  addiu $s4, %lo(gNmiUnknown6) # addiu $s4, $s4, -0x734
/* 0A7908 800A6D08 26B5F8C0 */  addiu $s5, %lo(gNmiUnknown3) # addiu $s5, $s5, -0x740
/* 0A790C 800A6D0C 24130003 */  li    $s3, 3
/* 0A7910 800A6D10 24120002 */  li    $s2, 2
/* 0A7914 800A6D14 8E220000 */  lw    $v0, ($s1)
.L800A6D18:
/* 0A7918 800A6D18 24040004 */  li    $a0, 4
/* 0A791C 800A6D1C 02002825 */  move  $a1, $s0
/* 0A7920 800A6D20 10520005 */  beq   $v0, $s2, .L800A6D38
/* 0A7924 800A6D24 00000000 */   nop   
/* 0A7928 800A6D28 10530008 */  beq   $v0, $s3, .L800A6D4C
/* 0A792C 800A6D2C 24040004 */   li    $a0, 4
/* 0A7930 800A6D30 1000000C */  b     .L800A6D64
/* 0A7934 800A6D34 26100001 */   addiu $s0, $s0, 1
.L800A6D38:
/* 0A7938 800A6D38 0C029BA5 */  jal   func_800A6E94
/* 0A793C 800A6D3C 8EA60000 */   lw    $a2, ($s5)
/* 0A7940 800A6D40 3C038019 */  lui   $v1, %hi(D_8018EDF3) # $v1, 0x8019
/* 0A7944 800A6D44 10000006 */  b     .L800A6D60
/* 0A7948 800A6D48 8063EDF3 */   lb    $v1, %lo(D_8018EDF3)($v1)
.L800A6D4C:
/* 0A794C 800A6D4C 02002825 */  move  $a1, $s0
/* 0A7950 800A6D50 0C029B65 */  jal   func_800A6D94
/* 0A7954 800A6D54 8E860000 */   lw    $a2, ($s4)
/* 0A7958 800A6D58 3C038019 */  lui   $v1, %hi(D_8018EDF3) # $v1, 0x8019
/* 0A795C 800A6D5C 8063EDF3 */  lb    $v1, %lo(D_8018EDF3)($v1)
.L800A6D60:
/* 0A7960 800A6D60 26100001 */  addiu $s0, $s0, 1
.L800A6D64:
/* 0A7964 800A6D64 0203082A */  slt   $at, $s0, $v1
/* 0A7968 800A6D68 5420FFEB */  bnel  $at, $zero, .L800A6D18
/* 0A796C 800A6D6C 8E220000 */   lw    $v0, ($s1)
.L800A6D70:
/* 0A7970 800A6D70 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0A7974 800A6D74 8FB00014 */  lw    $s0, 0x14($sp)
/* 0A7978 800A6D78 8FB10018 */  lw    $s1, 0x18($sp)
/* 0A797C 800A6D7C 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0A7980 800A6D80 8FB30020 */  lw    $s3, 0x20($sp)
/* 0A7984 800A6D84 8FB40024 */  lw    $s4, 0x24($sp)
/* 0A7988 800A6D88 8FB50028 */  lw    $s5, 0x28($sp)
/* 0A798C 800A6D8C 03E00008 */  jr    $ra
/* 0A7990 800A6D90 27BD0030 */   addiu $sp, $sp, 0x30
