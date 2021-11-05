glabel func_802845EC
/* 127C2C 802845EC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 127C30 802845F0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 127C34 802845F4 3C058028 */  lui   $a1, %hi(D_80285B90) # $a1, 0x8028
/* 127C38 802845F8 3C068028 */  lui   $a2, %hi(D_80285BA8) # $a2, 0x8028
/* 127C3C 802845FC 24C65BA8 */  addiu $a2, %lo(D_80285BA8) # addiu $a2, $a2, 0x5ba8
/* 127C40 80284600 24A55B90 */  addiu $a1, %lo(D_80285B90) # addiu $a1, $a1, 0x5b90
/* 127C44 80284604 0C0A0B64 */  jal   func_80282D90
/* 127C48 80284608 00003825 */   move  $a3, $zero
/* 127C4C 8028460C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 127C50 80284610 27BD0018 */  addiu $sp, $sp, 0x18
/* 127C54 80284614 03E00008 */  jr    $ra
/* 127C58 80284618 00000000 */   nop   
