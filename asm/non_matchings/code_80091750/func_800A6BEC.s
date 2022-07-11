glabel func_800A6BEC
/* 0A77EC 800A6BEC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0A77F0 800A6BF0 3C038019 */  lui   $v1, %hi(D_8018EDF3) # $v1, 0x8019
/* 0A77F4 800A6BF4 8063EDF3 */  lb    $v1, %lo(D_8018EDF3)($v1)
/* 0A77F8 800A6BF8 AFB00014 */  sw    $s0, 0x14($sp)
/* 0A77FC 800A6BFC AFBF002C */  sw    $ra, 0x2c($sp)
/* 0A7800 800A6C00 AFB50028 */  sw    $s5, 0x28($sp)
/* 0A7804 800A6C04 AFB40024 */  sw    $s4, 0x24($sp)
/* 0A7808 800A6C08 AFB30020 */  sw    $s3, 0x20($sp)
/* 0A780C 800A6C0C AFB2001C */  sw    $s2, 0x1c($sp)
/* 0A7810 800A6C10 AFB10018 */  sw    $s1, 0x18($sp)
/* 0A7814 800A6C14 AFA40030 */  sw    $a0, 0x30($sp)
/* 0A7818 800A6C18 18600020 */  blez  $v1, .L800A6C9C
/* 0A781C 800A6C1C 00008025 */   move  $s0, $zero
/* 0A7820 800A6C20 3C158016 */  lui   $s5, %hi(gNmiUnknown2) # $s5, 0x8016
/* 0A7824 800A6C24 3C148016 */  lui   $s4, %hi(gNmiUnknown5) # $s4, 0x8016
/* 0A7828 800A6C28 3C11800E */  lui   $s1, %hi(gModeSelection) # $s1, 0x800e
/* 0A782C 800A6C2C 2631C53C */  addiu $s1, %lo(gModeSelection) # addiu $s1, $s1, -0x3ac4
/* 0A7830 800A6C30 2694F8C8 */  addiu $s4, %lo(gNmiUnknown5) # addiu $s4, $s4, -0x738
/* 0A7834 800A6C34 26B5F8BC */  addiu $s5, %lo(gNmiUnknown2) # addiu $s5, $s5, -0x744
/* 0A7838 800A6C38 24130003 */  li    $s3, 3
/* 0A783C 800A6C3C 24120002 */  li    $s2, 2
/* 0A7840 800A6C40 8E220000 */  lw    $v0, ($s1)
.L800A6C44:
/* 0A7844 800A6C44 02602025 */  move  $a0, $s3
/* 0A7848 800A6C48 02002825 */  move  $a1, $s0
/* 0A784C 800A6C4C 10520005 */  beq   $v0, $s2, .L800A6C64
/* 0A7850 800A6C50 00000000 */   nop   
/* 0A7854 800A6C54 10530008 */  beq   $v0, $s3, .L800A6C78
/* 0A7858 800A6C58 02602025 */   move  $a0, $s3
/* 0A785C 800A6C5C 1000000C */  b     .L800A6C90
/* 0A7860 800A6C60 26100001 */   addiu $s0, $s0, 1
.L800A6C64:
/* 0A7864 800A6C64 0C029BA5 */  jal   func_800A6E94
/* 0A7868 800A6C68 8EA60000 */   lw    $a2, ($s5)
/* 0A786C 800A6C6C 3C038019 */  lui   $v1, %hi(D_8018EDF3) # $v1, 0x8019
/* 0A7870 800A6C70 10000006 */  b     .L800A6C8C
/* 0A7874 800A6C74 8063EDF3 */   lb    $v1, %lo(D_8018EDF3)($v1)
.L800A6C78:
/* 0A7878 800A6C78 02002825 */  move  $a1, $s0
/* 0A787C 800A6C7C 0C029B65 */  jal   func_800A6D94
/* 0A7880 800A6C80 8E860000 */   lw    $a2, ($s4)
/* 0A7884 800A6C84 3C038019 */  lui   $v1, %hi(D_8018EDF3) # $v1, 0x8019
/* 0A7888 800A6C88 8063EDF3 */  lb    $v1, %lo(D_8018EDF3)($v1)
.L800A6C8C:
/* 0A788C 800A6C8C 26100001 */  addiu $s0, $s0, 1
.L800A6C90:
/* 0A7890 800A6C90 0203082A */  slt   $at, $s0, $v1
/* 0A7894 800A6C94 5420FFEB */  bnel  $at, $zero, .L800A6C44
/* 0A7898 800A6C98 8E220000 */   lw    $v0, ($s1)
.L800A6C9C:
/* 0A789C 800A6C9C 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0A78A0 800A6CA0 8FB00014 */  lw    $s0, 0x14($sp)
/* 0A78A4 800A6CA4 8FB10018 */  lw    $s1, 0x18($sp)
/* 0A78A8 800A6CA8 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0A78AC 800A6CAC 8FB30020 */  lw    $s3, 0x20($sp)
/* 0A78B0 800A6CB0 8FB40024 */  lw    $s4, 0x24($sp)
/* 0A78B4 800A6CB4 8FB50028 */  lw    $s5, 0x28($sp)
/* 0A78B8 800A6CB8 03E00008 */  jr    $ra
/* 0A78BC 800A6CBC 27BD0030 */   addiu $sp, $sp, 0x30
