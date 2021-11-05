glabel func_8004E2B8
/* 04EEB8 8004E2B8 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04EEBC 8004E2BC 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04EEC0 8004E2C0 8D030000 */  lw    $v1, ($t0)
/* 04EEC4 8004E2C4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04EEC8 8004E2C8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04EECC 8004E2CC AFA40020 */  sw    $a0, 0x20($sp)
/* 04EED0 8004E2D0 3C180D00 */  lui   $t8, %hi(D_0D007DB8) # $t8, 0xd00
/* 04EED4 8004E2D4 246E0008 */  addiu $t6, $v1, 8
/* 04EED8 8004E2D8 AFA50024 */  sw    $a1, 0x24($sp)
/* 04EEDC 8004E2DC AFA7002C */  sw    $a3, 0x2c($sp)
/* 04EEE0 8004E2E0 AD0E0000 */  sw    $t6, ($t0)
/* 04EEE4 8004E2E4 27187DB8 */  addiu $t8, %lo(D_0D007DB8) # addiu $t8, $t8, 0x7db8
/* 04EEE8 8004E2E8 3C0F0600 */  lui   $t7, 0x600
/* 04EEEC 8004E2EC 00C02025 */  move  $a0, $a2
/* 04EEF0 8004E2F0 AC6F0000 */  sw    $t7, ($v1)
/* 04EEF4 8004E2F4 0C012CAF */  jal   func_8004B2BC
/* 04EEF8 8004E2F8 AC780004 */   sw    $t8, 4($v1)
/* 04EEFC 8004E2FC 0C012C17 */  jal   func_8004B05C
/* 04EF00 8004E300 8FA4002C */   lw    $a0, 0x2c($sp)
/* 04EF04 8004E304 8FB90038 */  lw    $t9, 0x38($sp)
/* 04EF08 8004E308 8FA9003C */  lw    $t1, 0x3c($sp)
/* 04EF0C 8004E30C 8FA40020 */  lw    $a0, 0x20($sp)
/* 04EF10 8004E310 8FA50024 */  lw    $a1, 0x24($sp)
/* 04EF14 8004E314 8FA60030 */  lw    $a2, 0x30($sp)
/* 04EF18 8004E318 8FA70034 */  lw    $a3, 0x34($sp)
/* 04EF1C 8004E31C AFB90010 */  sw    $t9, 0x10($sp)
/* 04EF20 8004E320 0C0137D7 */  jal   func_8004DF5C
/* 04EF24 8004E324 AFA90014 */   sw    $t1, 0x14($sp)
/* 04EF28 8004E328 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04EF2C 8004E32C 27BD0020 */  addiu $sp, $sp, 0x20
/* 04EF30 8004E330 03E00008 */  jr    $ra
/* 04EF34 8004E334 00000000 */   nop   
