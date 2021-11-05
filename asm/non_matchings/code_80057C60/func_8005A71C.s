glabel func_8005A71C
/* 05B31C 8005A71C 3C0E800E */  lui   $t6, %hi(gCurrentCourseId) # $t6, 0x800e
/* 05B320 8005A720 85CEC5A0 */  lh    $t6, %lo(gCurrentCourseId)($t6)
/* 05B324 8005A724 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 05B328 8005A728 24010002 */  li    $at, 2
/* 05B32C 8005A72C 15C10003 */  bne   $t6, $at, .L8005A73C
/* 05B330 8005A730 AFBF0014 */   sw    $ra, 0x14($sp)
/* 05B334 8005A734 0C020484 */  jal   func_80081210
/* 05B338 8005A738 00000000 */   nop   
.L8005A73C:
/* 05B33C 8005A73C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 05B340 8005A740 27BD0018 */  addiu $sp, $sp, 0x18
/* 05B344 8005A744 03E00008 */  jr    $ra
/* 05B348 8005A748 00000000 */   nop   
