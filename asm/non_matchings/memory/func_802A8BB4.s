glabel func_802A8BB4
/* 1121C4 802A8BB4 27BDFFF8 */  addiu $sp, $sp, -8
/* 1121C8 802A8BB8 3C0F802C */  lui   $t7, %hi(D_802B8D10) # $t7, 0x802c
/* 1121CC 802A8BBC AFA5000C */  sw    $a1, 0xc($sp)
/* 1121D0 802A8BC0 AFA60010 */  sw    $a2, 0x10($sp)
/* 1121D4 802A8BC4 25EF8D10 */  addiu $t7, %lo(D_802B8D10) # addiu $t7, $t7, -0x72f0
/* 1121D8 802A8BC8 8DE10000 */  lw    $at, ($t7)
/* 1121DC 802A8BCC 8DE80004 */  lw    $t0, 4($t7)
/* 1121E0 802A8BD0 27AE0000 */  addiu $t6, $sp, 0
/* 1121E4 802A8BD4 3C02802C */  lui   $v0, %hi(D_802BA270) # $v0, 0x802c
/* 1121E8 802A8BD8 2442A270 */  addiu $v0, %lo(D_802BA270) # addiu $v0, $v0, -0x5d90
/* 1121EC 802A8BDC ADC10000 */  sw    $at, ($t6)
/* 1121F0 802A8BE0 ADC80004 */  sw    $t0, 4($t6)
/* 1121F4 802A8BE4 8C4A0000 */  lw    $t2, ($v0)
/* 1121F8 802A8BE8 8FA90000 */  lw    $t1, ($sp)
/* 1121FC 802A8BEC 000A58C0 */  sll   $t3, $t2, 3
/* 112200 802A8BF0 008B6021 */  addu  $t4, $a0, $t3
/* 112204 802A8BF4 AD890000 */  sw    $t1, ($t4)
/* 112208 802A8BF8 8C590000 */  lw    $t9, ($v0)
/* 11220C 802A8BFC 8FAD0004 */  lw    $t5, 4($sp)
/* 112210 802A8C00 0019C0C0 */  sll   $t8, $t9, 3
/* 112214 802A8C04 00987021 */  addu  $t6, $a0, $t8
/* 112218 802A8C08 ADCD0004 */  sw    $t5, 4($t6)
/* 11221C 802A8C0C 8C4F0000 */  lw    $t7, ($v0)
/* 112220 802A8C10 27BD0008 */  addiu $sp, $sp, 8
/* 112224 802A8C14 25E80001 */  addiu $t0, $t7, 1
/* 112228 802A8C18 03E00008 */  jr    $ra
/* 11222C 802A8C1C AC480000 */   sw    $t0, ($v0)
