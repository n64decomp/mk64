glabel func_802A8DD0
/* 1123E0 802A8DD0 27BDFFF8 */  addiu $sp, $sp, -8
/* 1123E4 802A8DD4 3C0F802C */  lui   $t7, %hi(D_802B8D38) # $t7, 0x802c
/* 1123E8 802A8DD8 AFA5000C */  sw    $a1, 0xc($sp)
/* 1123EC 802A8DDC AFA60010 */  sw    $a2, 0x10($sp)
/* 1123F0 802A8DE0 25EF8D38 */  addiu $t7, %lo(D_802B8D38) # addiu $t7, $t7, -0x72c8
/* 1123F4 802A8DE4 8DE10000 */  lw    $at, ($t7)
/* 1123F8 802A8DE8 8DE80004 */  lw    $t0, 4($t7)
/* 1123FC 802A8DEC 27AE0000 */  addiu $t6, $sp, 0
/* 112400 802A8DF0 3C02802C */  lui   $v0, %hi(D_802BA270) # $v0, 0x802c
/* 112404 802A8DF4 2442A270 */  addiu $v0, %lo(D_802BA270) # addiu $v0, $v0, -0x5d90
/* 112408 802A8DF8 ADC10000 */  sw    $at, ($t6)
/* 11240C 802A8DFC ADC80004 */  sw    $t0, 4($t6)
/* 112410 802A8E00 8C4A0000 */  lw    $t2, ($v0)
/* 112414 802A8E04 8FA90000 */  lw    $t1, ($sp)
/* 112418 802A8E08 000A58C0 */  sll   $t3, $t2, 3
/* 11241C 802A8E0C 008B6021 */  addu  $t4, $a0, $t3
/* 112420 802A8E10 AD890000 */  sw    $t1, ($t4)
/* 112424 802A8E14 8C590000 */  lw    $t9, ($v0)
/* 112428 802A8E18 8FAD0004 */  lw    $t5, 4($sp)
/* 11242C 802A8E1C 0019C0C0 */  sll   $t8, $t9, 3
/* 112430 802A8E20 00987021 */  addu  $t6, $a0, $t8
/* 112434 802A8E24 ADCD0004 */  sw    $t5, 4($t6)
/* 112438 802A8E28 8C4F0000 */  lw    $t7, ($v0)
/* 11243C 802A8E2C 27BD0008 */  addiu $sp, $sp, 8
/* 112440 802A8E30 25E80001 */  addiu $t0, $t7, 1
/* 112444 802A8E34 03E00008 */  jr    $ra
/* 112448 802A8E38 AC480000 */   sw    $t0, ($v0)
