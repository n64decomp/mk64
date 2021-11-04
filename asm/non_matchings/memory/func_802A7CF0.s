glabel func_802A7CF0
/* 111300 802A7CF0 2402FFF0 */  li    $v0, -16
/* 111304 802A7CF4 248E000F */  addiu $t6, $a0, 0xf
/* 111308 802A7CF8 01C22024 */  and   $a0, $t6, $v0
/* 11130C 802A7CFC 00A22824 */  and   $a1, $a1, $v0
/* 111310 802A7D00 00A47823 */  subu  $t7, $a1, $a0
/* 111314 802A7D04 25F8FFF0 */  addiu $t8, $t7, -0x10
/* 111318 802A7D08 3C018016 */  lui   $at, %hi(D_8015F724) # $at, 0x8016
/* 11131C 802A7D0C AC38F724 */  sw    $t8, %lo(D_8015F724)($at)
/* 111320 802A7D10 3C018016 */  lui   $at, %hi(gPrevLoadedAddress) # $at, 0x8016
/* 111324 802A7D14 03E00008 */  jr    $ra
/* 111328 802A7D18 AC24F728 */   sw    $a0, %lo(gPrevLoadedAddress)($at) # $a0, -0x8d8($at)
