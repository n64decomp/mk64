glabel func_80059780
/* 05A380 80059780 3C0E8016 */  lui   $t6, %hi(D_801657B0) # $t6, 0x8016
/* 05A384 80059784 81CE57B0 */  lb    $t6, %lo(D_801657B0)($t6)
/* 05A388 80059788 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 05A38C 8005978C AFBF0014 */  sw    $ra, 0x14($sp)
/* 05A390 80059790 55C00006 */  bnel  $t6, $zero, .L800597AC
/* 05A394 80059794 8FBF0014 */   lw    $ra, 0x14($sp)
/* 05A398 80059798 0C0107BD */  jal   func_80041EF4
/* 05A39C 8005979C 00000000 */   nop   
/* 05A3A0 800597A0 0C016558 */  jal   func_80059560
/* 05A3A4 800597A4 24040002 */   li    $a0, 2
/* 05A3A8 800597A8 8FBF0014 */  lw    $ra, 0x14($sp)
.L800597AC:
/* 05A3AC 800597AC 27BD0018 */  addiu $sp, $sp, 0x18
/* 05A3B0 800597B0 03E00008 */  jr    $ra
/* 05A3B4 800597B4 00000000 */   nop   
