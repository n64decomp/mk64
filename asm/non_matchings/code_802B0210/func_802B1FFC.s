glabel func_802B1FFC
/* 11B60C 802B1FFC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 11B610 802B2000 AFBF0014 */  sw    $ra, 0x14($sp)
/* 11B614 802B2004 0C0AC792 */  jal   func_802B1E48
/* 11B618 802B2008 00000000 */   nop   
/* 11B61C 802B200C 000278C0 */  sll   $t7, $v0, 3
/* 11B620 802B2010 8FBF0014 */  lw    $ra, 0x14($sp)
/* 11B624 802B2014 01E27823 */  subu  $t7, $t7, $v0
/* 11B628 802B2018 000F7900 */  sll   $t7, $t7, 4
/* 11B62C 802B201C 3C018016 */  lui   $at, %hi(D_8015F9B8) # 0x8016
/* 11B630 802B2020 002F0821 */  addu  $at, $at, $t7
/* 11B634 802B2024 240E002A */  li    $t6, 42
/* 11B638 802B2028 A42EF9B8 */  sh    $t6, %lo(D_8015F9B8)($at)
/* 11B63C 802B202C 03E00008 */  jr    $ra
/* 11B640 802B2030 27BD0018 */   addiu $sp, $sp, 0x18
