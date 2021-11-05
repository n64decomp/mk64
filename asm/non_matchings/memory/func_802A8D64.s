glabel func_802A8D64
/* 112374 802A8D64 27BDFFF8 */  addiu $sp, $sp, -8
/* 112378 802A8D68 3C0F802C */  lui   $t7, %hi(D_802B8D30) # $t7, 0x802c
/* 11237C 802A8D6C AFA5000C */  sw    $a1, 0xc($sp)
/* 112380 802A8D70 AFA60010 */  sw    $a2, 0x10($sp)
/* 112384 802A8D74 25EF8D30 */  addiu $t7, %lo(D_802B8D30) # addiu $t7, $t7, -0x72d0
/* 112388 802A8D78 8DE10000 */  lw    $at, ($t7)
/* 11238C 802A8D7C 8DE80004 */  lw    $t0, 4($t7)
/* 112390 802A8D80 27AE0000 */  addiu $t6, $sp, 0
/* 112394 802A8D84 3C02802C */  lui   $v0, %hi(D_802BA270) # $v0, 0x802c
/* 112398 802A8D88 2442A270 */  addiu $v0, %lo(D_802BA270) # addiu $v0, $v0, -0x5d90
/* 11239C 802A8D8C ADC10000 */  sw    $at, ($t6)
/* 1123A0 802A8D90 ADC80004 */  sw    $t0, 4($t6)
/* 1123A4 802A8D94 8C4A0000 */  lw    $t2, ($v0)
/* 1123A8 802A8D98 8FA90000 */  lw    $t1, ($sp)
/* 1123AC 802A8D9C 000A58C0 */  sll   $t3, $t2, 3
/* 1123B0 802A8DA0 008B6021 */  addu  $t4, $a0, $t3
/* 1123B4 802A8DA4 AD890000 */  sw    $t1, ($t4)
/* 1123B8 802A8DA8 8C590000 */  lw    $t9, ($v0)
/* 1123BC 802A8DAC 8FAD0004 */  lw    $t5, 4($sp)
/* 1123C0 802A8DB0 0019C0C0 */  sll   $t8, $t9, 3
/* 1123C4 802A8DB4 00987021 */  addu  $t6, $a0, $t8
/* 1123C8 802A8DB8 ADCD0004 */  sw    $t5, 4($t6)
/* 1123CC 802A8DBC 8C4F0000 */  lw    $t7, ($v0)
/* 1123D0 802A8DC0 27BD0008 */  addiu $sp, $sp, 8
/* 1123D4 802A8DC4 25E80001 */  addiu $t0, $t7, 1
/* 1123D8 802A8DC8 03E00008 */  jr    $ra
/* 1123DC 802A8DCC AC480000 */   sw    $t0, ($v0)
