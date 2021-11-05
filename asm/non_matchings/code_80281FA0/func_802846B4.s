glabel func_802846B4
/* 127CF4 802846B4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 127CF8 802846B8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 127CFC 802846BC 3C058028 */  lui   $a1, %hi(D_80285C38) # $a1, 0x8028
/* 127D00 802846C0 3C068028 */  lui   $a2, %hi(D_80285C74) # $a2, 0x8028
/* 127D04 802846C4 24C65C74 */  addiu $a2, %lo(D_80285C74) # addiu $a2, $a2, 0x5c74
/* 127D08 802846C8 24A55C38 */  addiu $a1, %lo(D_80285C38) # addiu $a1, $a1, 0x5c38
/* 127D0C 802846CC 0C0A0B64 */  jal   func_80282D90
/* 127D10 802846D0 00003825 */   move  $a3, $zero
/* 127D14 802846D4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 127D18 802846D8 27BD0018 */  addiu $sp, $sp, 0x18
/* 127D1C 802846DC 03E00008 */  jr    $ra
/* 127D20 802846E0 00000000 */   nop   
