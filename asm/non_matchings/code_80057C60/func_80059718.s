glabel func_80059718
/* 05A318 80059718 3C0E8016 */  lui   $t6, %hi(D_801657B0) # $t6, 0x8016
/* 05A31C 8005971C 81CE57B0 */  lb    $t6, %lo(D_801657B0)($t6)
/* 05A320 80059720 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 05A324 80059724 AFBF0014 */  sw    $ra, 0x14($sp)
/* 05A328 80059728 55C00006 */  bnel  $t6, $zero, .L80059744
/* 05A32C 8005972C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 05A330 80059730 0C0107BD */  jal   func_80041EF4
/* 05A334 80059734 00000000 */   nop   
/* 05A338 80059738 0C016558 */  jal   func_80059560
/* 05A33C 8005973C 24040001 */   li    $a0, 1
/* 05A340 80059740 8FBF0014 */  lw    $ra, 0x14($sp)
.L80059744:
/* 05A344 80059744 27BD0018 */  addiu $sp, $sp, 0x18
/* 05A348 80059748 03E00008 */  jr    $ra
/* 05A34C 8005974C 00000000 */   nop   
