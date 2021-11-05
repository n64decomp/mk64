glabel func_8005A380
/* 05AF80 8005A380 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 05AF84 8005A384 AFB10018 */  sw    $s1, 0x18($sp)
/* 05AF88 8005A388 AFB00014 */  sw    $s0, 0x14($sp)
/* 05AF8C 8005A38C AFBF001C */  sw    $ra, 0x1c($sp)
/* 05AF90 8005A390 00008025 */  move  $s0, $zero
/* 05AF94 8005A394 24110008 */  li    $s1, 8
.L8005A398:
/* 05AF98 8005A398 0C016853 */  jal   func_8005A14C
/* 05AF9C 8005A39C 02002025 */   move  $a0, $s0
/* 05AFA0 8005A3A0 26100001 */  addiu $s0, $s0, 1
/* 05AFA4 8005A3A4 1611FFFC */  bne   $s0, $s1, .L8005A398
/* 05AFA8 8005A3A8 00000000 */   nop   
/* 05AFAC 8005A3AC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 05AFB0 8005A3B0 8FB00014 */  lw    $s0, 0x14($sp)
/* 05AFB4 8005A3B4 8FB10018 */  lw    $s1, 0x18($sp)
/* 05AFB8 8005A3B8 03E00008 */  jr    $ra
/* 05AFBC 8005A3BC 27BD0020 */   addiu $sp, $sp, 0x20
