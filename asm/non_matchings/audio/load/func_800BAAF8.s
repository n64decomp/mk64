glabel func_800BAAF8
/* 0BB6F8 800BAAF8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0BB6FC 800BAAFC AFA40028 */  sw    $a0, 0x28($sp)
/* 0BB700 800BAB00 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0BB704 800BAB04 AFA5002C */  sw    $a1, 0x2c($sp)
/* 0BB708 800BAB08 00A02025 */  move  $a0, $a1
/* 0BB70C 800BAB0C AFA60030 */  sw    $a2, 0x30($sp)
/* 0BB710 800BAB10 AFA70034 */  sw    $a3, 0x34($sp)
/* 0BB714 800BAB14 0C0336E0 */  jal   osInvalDCache
/* 0BB718 800BAB18 00C02825 */   move  $a1, $a2
/* 0BB71C 800BAB1C 8FAE002C */  lw    $t6, 0x2c($sp)
/* 0BB720 800BAB20 8FAF0030 */  lw    $t7, 0x30($sp)
/* 0BB724 800BAB24 8FB80034 */  lw    $t8, 0x34($sp)
/* 0BB728 800BAB28 8FA40038 */  lw    $a0, 0x38($sp)
/* 0BB72C 800BAB2C 00002825 */  move  $a1, $zero
/* 0BB730 800BAB30 00003025 */  move  $a2, $zero
/* 0BB734 800BAB34 8FA70028 */  lw    $a3, 0x28($sp)
/* 0BB738 800BAB38 AFAE0010 */  sw    $t6, 0x10($sp)
/* 0BB73C 800BAB3C AFAF0014 */  sw    $t7, 0x14($sp)
/* 0BB740 800BAB40 0C03370C */  jal   osPiStartDma
/* 0BB744 800BAB44 AFB80018 */   sw    $t8, 0x18($sp)
/* 0BB748 800BAB48 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0BB74C 800BAB4C 27BD0028 */  addiu $sp, $sp, 0x28
/* 0BB750 800BAB50 03E00008 */  jr    $ra
/* 0BB754 800BAB54 00000000 */   nop   
