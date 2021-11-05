glabel func_8005AAF0
/* 05B6F0 8005AAF0 240E0001 */  li    $t6, 1
/* 05B6F4 8005AAF4 3C018019 */  lui   $at, %hi(D_8018D1B4) # $at, 0x8019
/* 05B6F8 8005AAF8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 05B6FC 8005AAFC AC2ED1B4 */  sw    $t6, %lo(D_8018D1B4)($at)
/* 05B700 8005AB00 AFBF0014 */  sw    $ra, 0x14($sp)
/* 05B704 8005AB04 3C018019 */  lui   $at, %hi(D_8018D1A0) # $at, 0x8019
/* 05B708 8005AB08 0C016A93 */  jal   func_8005AA4C
/* 05B70C 8005AB0C AC20D1A0 */   sw    $zero, %lo(D_8018D1A0)($at)
/* 05B710 8005AB10 8FBF0014 */  lw    $ra, 0x14($sp)
/* 05B714 8005AB14 27BD0018 */  addiu $sp, $sp, 0x18
/* 05B718 8005AB18 03E00008 */  jr    $ra
/* 05B71C 8005AB1C 00000000 */   nop   
