glabel func_80291198
/* 0FA7A8 80291198 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 0FA7AC 8029119C 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 0FA7B0 802911A0 8C830000 */  lw    $v1, ($a0)
/* 0FA7B4 802911A4 3C180700 */  lui   $t8, (0x07001140 >> 16) # lui $t8, 0x700
/* 0FA7B8 802911A8 37181140 */  ori   $t8, (0x07001140 & 0xFFFF) # ori $t8, $t8, 0x1140
/* 0FA7BC 802911AC 246E0008 */  addiu $t6, $v1, 8
/* 0FA7C0 802911B0 AC8E0000 */  sw    $t6, ($a0)
/* 0FA7C4 802911B4 3C0F0600 */  lui   $t7, 0x600
/* 0FA7C8 802911B8 AC6F0000 */  sw    $t7, ($v1)
/* 0FA7CC 802911BC 03E00008 */  jr    $ra
/* 0FA7D0 802911C0 AC780004 */   sw    $t8, 4($v1)
