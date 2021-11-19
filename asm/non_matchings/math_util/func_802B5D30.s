glabel func_802B5D30
/* 11F340 802B5D30 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 11F344 802B5D34 AFBF0014 */  sw    $ra, 0x14($sp)
/* 11F348 802B5D38 AFA40018 */  sw    $a0, 0x18($sp)
/* 11F34C 802B5D3C AFA5001C */  sw    $a1, 0x1c($sp)
/* 11F350 802B5D40 00C03825 */  move  $a3, $a2
/* 11F354 802B5D44 87A6001E */  lh    $a2, 0x1e($sp)
/* 11F358 802B5D48 87A5001A */  lh    $a1, 0x1a($sp)
/* 11F35C 802B5D4C 0C0AD759 */  jal   func_802B5D64
/* 11F360 802B5D50 3C040900 */   lui   $a0, 0x900
/* 11F364 802B5D54 8FBF0014 */  lw    $ra, 0x14($sp)
/* 11F368 802B5D58 27BD0018 */  addiu $sp, $sp, 0x18
/* 11F36C 802B5D5C 03E00008 */  jr    $ra
/* 11F370 802B5D60 00000000 */   nop   
