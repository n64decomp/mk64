glabel func_800A91D8
/* 0A9DD8 800A91D8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A9DDC 800A91DC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A9DE0 800A91E0 AFA40018 */  sw    $a0, 0x18($sp)
/* 0A9DE4 800A91E4 0C02A482 */  jal   func_800A9208
/* 0A9DE8 800A91E8 AFA60020 */   sw    $a2, 0x20($sp)
/* 0A9DEC 800A91EC 8FA40018 */  lw    $a0, 0x18($sp)
/* 0A9DF0 800A91F0 0C02A49E */  jal   func_800A9278
/* 0A9DF4 800A91F4 8FA50020 */   lw    $a1, 0x20($sp)
/* 0A9DF8 800A91F8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A9DFC 800A91FC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A9E00 800A9200 03E00008 */  jr    $ra
/* 0A9E04 800A9204 00000000 */   nop   
