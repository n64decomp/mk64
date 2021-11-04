glabel func_80054EB8
/* 055AB8 80054EB8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 055ABC 80054EBC AFB10018 */  sw    $s1, 0x18($sp)
/* 055AC0 80054EC0 AFB00014 */  sw    $s0, 0x14($sp)
/* 055AC4 80054EC4 3C108019 */  lui   $s0, %hi(D_8018C1B0) # $s0, 0x8019
/* 055AC8 80054EC8 3C118019 */  lui   $s1, %hi(D_8018C22C) # $s1, 0x8019
/* 055ACC 80054ECC AFBF001C */  sw    $ra, 0x1c($sp)
/* 055AD0 80054ED0 AFA40020 */  sw    $a0, 0x20($sp)
/* 055AD4 80054ED4 2631C22C */  addiu $s1, %lo(D_8018C22C) # addiu $s1, $s1, -0x3dd4
/* 055AD8 80054ED8 2610C1B0 */  addiu $s0, %lo(D_8018C1B0) # addiu $s0, $s0, -0x3e50
.L80054EDC:
/* 055ADC 80054EDC 0C015384 */  jal   func_80054E10
/* 055AE0 80054EE0 8E040000 */   lw    $a0, ($s0)
/* 055AE4 80054EE4 26100004 */  addiu $s0, $s0, 4
/* 055AE8 80054EE8 1611FFFC */  bne   $s0, $s1, .L80054EDC
/* 055AEC 80054EEC 00000000 */   nop   
/* 055AF0 80054EF0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 055AF4 80054EF4 8FB00014 */  lw    $s0, 0x14($sp)
/* 055AF8 80054EF8 8FB10018 */  lw    $s1, 0x18($sp)
/* 055AFC 80054EFC 03E00008 */  jr    $ra
/* 055B00 80054F00 27BD0020 */   addiu $sp, $sp, 0x20
