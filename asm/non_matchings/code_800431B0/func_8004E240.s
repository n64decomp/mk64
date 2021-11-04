glabel func_8004E240
/* 04EE40 8004E240 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04EE44 8004E244 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04EE48 8004E248 8D030000 */  lw    $v1, ($t0)
/* 04EE4C 8004E24C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04EE50 8004E250 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04EE54 8004E254 AFA40020 */  sw    $a0, 0x20($sp)
/* 04EE58 8004E258 3C180D00 */  lui   $t8, %hi(D_0D007CB8) # $t8, 0xd00
/* 04EE5C 8004E25C 246E0008 */  addiu $t6, $v1, 8
/* 04EE60 8004E260 AFA50024 */  sw    $a1, 0x24($sp)
/* 04EE64 8004E264 AFA7002C */  sw    $a3, 0x2c($sp)
/* 04EE68 8004E268 AD0E0000 */  sw    $t6, ($t0)
/* 04EE6C 8004E26C 27187CB8 */  addiu $t8, %lo(D_0D007CB8) # addiu $t8, $t8, 0x7cb8
/* 04EE70 8004E270 3C0F0600 */  lui   $t7, 0x600
/* 04EE74 8004E274 00C02025 */  move  $a0, $a2
/* 04EE78 8004E278 AC6F0000 */  sw    $t7, ($v1)
/* 04EE7C 8004E27C 0C012C17 */  jal   func_8004B05C
/* 04EE80 8004E280 AC780004 */   sw    $t8, 4($v1)
/* 04EE84 8004E284 8FB90034 */  lw    $t9, 0x34($sp)
/* 04EE88 8004E288 8FA90038 */  lw    $t1, 0x38($sp)
/* 04EE8C 8004E28C 8FA40020 */  lw    $a0, 0x20($sp)
/* 04EE90 8004E290 8FA50024 */  lw    $a1, 0x24($sp)
/* 04EE94 8004E294 8FA6002C */  lw    $a2, 0x2c($sp)
/* 04EE98 8004E298 8FA70030 */  lw    $a3, 0x30($sp)
/* 04EE9C 8004E29C AFB90010 */  sw    $t9, 0x10($sp)
/* 04EEA0 8004E2A0 0C0137D7 */  jal   func_8004DF5C
/* 04EEA4 8004E2A4 AFA90014 */   sw    $t1, 0x14($sp)
/* 04EEA8 8004E2A8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04EEAC 8004E2AC 27BD0020 */  addiu $sp, $sp, 0x20
/* 04EEB0 8004E2B0 03E00008 */  jr    $ra
/* 04EEB4 8004E2B4 00000000 */   nop   
