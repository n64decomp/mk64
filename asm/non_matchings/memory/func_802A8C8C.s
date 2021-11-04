glabel func_802A8C8C
/* 11229C 802A8C8C 27BDFFF8 */  addiu $sp, $sp, -8
/* 1122A0 802A8C90 3C0F802C */  lui   $t7, %hi(D_802B8D20) # $t7, 0x802c
/* 1122A4 802A8C94 AFA5000C */  sw    $a1, 0xc($sp)
/* 1122A8 802A8C98 AFA60010 */  sw    $a2, 0x10($sp)
/* 1122AC 802A8C9C 25EF8D20 */  addiu $t7, %lo(D_802B8D20) # addiu $t7, $t7, -0x72e0
/* 1122B0 802A8CA0 8DE10000 */  lw    $at, ($t7)
/* 1122B4 802A8CA4 8DE80004 */  lw    $t0, 4($t7)
/* 1122B8 802A8CA8 27AE0000 */  addiu $t6, $sp, 0
/* 1122BC 802A8CAC 3C02802C */  lui   $v0, %hi(D_802BA270) # $v0, 0x802c
/* 1122C0 802A8CB0 2442A270 */  addiu $v0, %lo(D_802BA270) # addiu $v0, $v0, -0x5d90
/* 1122C4 802A8CB4 ADC10000 */  sw    $at, ($t6)
/* 1122C8 802A8CB8 ADC80004 */  sw    $t0, 4($t6)
/* 1122CC 802A8CBC 8C4A0000 */  lw    $t2, ($v0)
/* 1122D0 802A8CC0 8FA90000 */  lw    $t1, ($sp)
/* 1122D4 802A8CC4 000A58C0 */  sll   $t3, $t2, 3
/* 1122D8 802A8CC8 008B6021 */  addu  $t4, $a0, $t3
/* 1122DC 802A8CCC AD890000 */  sw    $t1, ($t4)
/* 1122E0 802A8CD0 8C590000 */  lw    $t9, ($v0)
/* 1122E4 802A8CD4 8FAD0004 */  lw    $t5, 4($sp)
/* 1122E8 802A8CD8 0019C0C0 */  sll   $t8, $t9, 3
/* 1122EC 802A8CDC 00987021 */  addu  $t6, $a0, $t8
/* 1122F0 802A8CE0 ADCD0004 */  sw    $t5, 4($t6)
/* 1122F4 802A8CE4 8C4F0000 */  lw    $t7, ($v0)
/* 1122F8 802A8CE8 27BD0008 */  addiu $sp, $sp, 8
/* 1122FC 802A8CEC 25E80001 */  addiu $t0, $t7, 1
/* 112300 802A8CF0 03E00008 */  jr    $ra
/* 112304 802A8CF4 AC480000 */   sw    $t0, ($v0)
