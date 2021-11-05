glabel func_802A8EA8
/* 1124B8 802A8EA8 27BDFFF8 */  addiu $sp, $sp, -8
/* 1124BC 802A8EAC 3C0F802C */  lui   $t7, %hi(D_802B8D48) # $t7, 0x802c
/* 1124C0 802A8EB0 AFA5000C */  sw    $a1, 0xc($sp)
/* 1124C4 802A8EB4 AFA60010 */  sw    $a2, 0x10($sp)
/* 1124C8 802A8EB8 25EF8D48 */  addiu $t7, %lo(D_802B8D48) # addiu $t7, $t7, -0x72b8
/* 1124CC 802A8EBC 8DE10000 */  lw    $at, ($t7)
/* 1124D0 802A8EC0 8DE80004 */  lw    $t0, 4($t7)
/* 1124D4 802A8EC4 27AE0000 */  addiu $t6, $sp, 0
/* 1124D8 802A8EC8 3C02802C */  lui   $v0, %hi(D_802BA270) # $v0, 0x802c
/* 1124DC 802A8ECC 2442A270 */  addiu $v0, %lo(D_802BA270) # addiu $v0, $v0, -0x5d90
/* 1124E0 802A8ED0 ADC10000 */  sw    $at, ($t6)
/* 1124E4 802A8ED4 ADC80004 */  sw    $t0, 4($t6)
/* 1124E8 802A8ED8 8C4A0000 */  lw    $t2, ($v0)
/* 1124EC 802A8EDC 8FA90000 */  lw    $t1, ($sp)
/* 1124F0 802A8EE0 000A58C0 */  sll   $t3, $t2, 3
/* 1124F4 802A8EE4 008B6021 */  addu  $t4, $a0, $t3
/* 1124F8 802A8EE8 AD890000 */  sw    $t1, ($t4)
/* 1124FC 802A8EEC 8C590000 */  lw    $t9, ($v0)
/* 112500 802A8EF0 8FAD0004 */  lw    $t5, 4($sp)
/* 112504 802A8EF4 0019C0C0 */  sll   $t8, $t9, 3
/* 112508 802A8EF8 00987021 */  addu  $t6, $a0, $t8
/* 11250C 802A8EFC ADCD0004 */  sw    $t5, 4($t6)
/* 112510 802A8F00 8C4F0000 */  lw    $t7, ($v0)
/* 112514 802A8F04 27BD0008 */  addiu $sp, $sp, 8
/* 112518 802A8F08 25E80001 */  addiu $t0, $t7, 1
/* 11251C 802A8F0C 03E00008 */  jr    $ra
/* 112520 802A8F10 AC480000 */   sw    $t0, ($v0)
