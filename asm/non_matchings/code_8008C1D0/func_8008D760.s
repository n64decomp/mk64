glabel func_8008D760
/* 08E360 8008D760 8C8F00BC */  lw    $t7, 0xbc($a0)
/* 08E364 8008D764 94990254 */  lhu   $t9, 0x254($a0)
/* 08E368 8008D768 3C01FFF7 */  lui   $at, (0xFFF7FFFF >> 16) # lui $at, 0xfff7
/* 08E36C 8008D76C 848E00AE */  lh    $t6, 0xae($a0)
/* 08E370 8008D770 3421FFFF */  ori   $at, (0xFFF7FFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 08E374 8008D774 01E1C024 */  and   $t8, $t7, $at
/* 08E378 8008D778 94890000 */  lhu   $t1, ($a0)
/* 08E37C 8008D77C 3C01800E */  lui   $at, %hi(gKartGravityTable)
/* 08E380 8008D780 00194080 */  sll   $t0, $t9, 2
/* 08E384 8008D784 A48000A8 */  sh    $zero, 0xa8($a0)
/* 08E388 8008D788 AC80007C */  sw    $zero, 0x7c($a0)
/* 08E38C 8008D78C A48000C0 */  sh    $zero, 0xc0($a0)
/* 08E390 8008D790 AC9800BC */  sw    $t8, 0xbc($a0)
/* 08E394 8008D794 00280821 */  addu  $at, $at, $t0
/* 08E398 8008D798 A48E002E */  sh    $t6, 0x2e($a0)
/* 08E39C 8008D79C C4242650 */  lwc1  $f4, %lo(gKartGravityTable)($at)
/* 08E3A0 8008D7A0 312AFF7F */  andi  $t2, $t1, 0xff7f
/* 08E3A4 8008D7A4 A48A0000 */  sh    $t2, ($a0)
/* 08E3A8 8008D7A8 03E00008 */  jr    $ra
/* 08E3AC 8008D7AC E4840100 */   swc1  $f4, 0x100($a0)
