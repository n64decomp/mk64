glabel func_802A7D1C
/* 11132C 802A7D1C 3C068016 */  lui   $a2, %hi(D_8015F724) # $a2, 0x8016
/* 111330 802A7D20 3C078016 */  lui   $a3, %hi(gPrevLoadedAddress) # $a3, 0x8016
/* 111334 802A7D24 24E7F728 */  addiu $a3, %lo(gPrevLoadedAddress) # addiu $a3, $a3, -0x8d8
/* 111338 802A7D28 24C6F724 */  addiu $a2, %lo(D_8015F724) # addiu $a2, $a2, -0x8dc
/* 11133C 802A7D2C 8CCF0000 */  lw    $t7, ($a2)
/* 111340 802A7D30 8CE20000 */  lw    $v0, ($a3)
/* 111344 802A7D34 2484000F */  addiu $a0, $a0, 0xf
/* 111348 802A7D38 2401FFF0 */  li    $at, -16
/* 11134C 802A7D3C 00817024 */  and   $t6, $a0, $at
/* 111350 802A7D40 01EEC023 */  subu  $t8, $t7, $t6
/* 111354 802A7D44 004EC821 */  addu  $t9, $v0, $t6
/* 111358 802A7D48 ACD80000 */  sw    $t8, ($a2)
/* 11135C 802A7D4C 03E00008 */  jr    $ra
/* 111360 802A7D50 ACF90000 */   sw    $t9, ($a3)

/* 111364 802A7D54 3C0F8015 */  lui   $t7, %hi(D_80150158) # $t7, 0x8015
/* 111368 802A7D58 25EF0158 */  addiu $t7, %lo(D_80150158) # addiu $t7, $t7, 0x158
/* 11136C 802A7D5C 00047100 */  sll   $t6, $a0, 4
/* 111370 802A7D60 01CF1021 */  addu  $v0, $t6, $t7
/* 111374 802A7D64 A4440000 */  sh    $a0, ($v0)
/* 111378 802A7D68 03E00008 */  jr    $ra
/* 11137C 802A7D6C AC450008 */   sw    $a1, 8($v0)
