glabel func_802A8A70
/* 112080 802A8A70 27BDFFF8 */  addiu $sp, $sp, -8
/* 112084 802A8A74 3C0F802C */  lui   $t7, %hi(D_802B8CF8) # $t7, 0x802c
/* 112088 802A8A78 AFA5000C */  sw    $a1, 0xc($sp)
/* 11208C 802A8A7C AFA60010 */  sw    $a2, 0x10($sp)
/* 112090 802A8A80 25EF8CF8 */  addiu $t7, %lo(D_802B8CF8) # addiu $t7, $t7, -0x7308
/* 112094 802A8A84 8DE10000 */  lw    $at, ($t7)
/* 112098 802A8A88 8DE80004 */  lw    $t0, 4($t7)
/* 11209C 802A8A8C 27AE0000 */  addiu $t6, $sp, 0
/* 1120A0 802A8A90 3C02802C */  lui   $v0, %hi(D_802BA270) # $v0, 0x802c
/* 1120A4 802A8A94 2442A270 */  addiu $v0, %lo(D_802BA270) # addiu $v0, $v0, -0x5d90
/* 1120A8 802A8A98 ADC10000 */  sw    $at, ($t6)
/* 1120AC 802A8A9C ADC80004 */  sw    $t0, 4($t6)
/* 1120B0 802A8AA0 8C4A0000 */  lw    $t2, ($v0)
/* 1120B4 802A8AA4 8FA90000 */  lw    $t1, ($sp)
/* 1120B8 802A8AA8 000A58C0 */  sll   $t3, $t2, 3
/* 1120BC 802A8AAC 008B6021 */  addu  $t4, $a0, $t3
/* 1120C0 802A8AB0 AD890000 */  sw    $t1, ($t4)
/* 1120C4 802A8AB4 8C590000 */  lw    $t9, ($v0)
/* 1120C8 802A8AB8 8FAD0004 */  lw    $t5, 4($sp)
/* 1120CC 802A8ABC 0019C0C0 */  sll   $t8, $t9, 3
/* 1120D0 802A8AC0 00987021 */  addu  $t6, $a0, $t8
/* 1120D4 802A8AC4 ADCD0004 */  sw    $t5, 4($t6)
/* 1120D8 802A8AC8 8C4F0000 */  lw    $t7, ($v0)
/* 1120DC 802A8ACC 27BD0008 */  addiu $sp, $sp, 8
/* 1120E0 802A8AD0 25E80001 */  addiu $t0, $t7, 1
/* 1120E4 802A8AD4 03E00008 */  jr    $ra
/* 1120E8 802A8AD8 AC480000 */   sw    $t0, ($v0)
