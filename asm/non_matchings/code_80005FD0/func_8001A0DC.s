glabel func_8001A0DC
/* 01ACDC 8001A0DC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 01ACE0 8001A0E0 8FB80030 */  lw    $t8, 0x30($sp)
/* 01ACE4 8001A0E4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 01ACE8 8001A0E8 AFA7002C */  sw    $a3, 0x2c($sp)
/* 01ACEC 8001A0EC 00077600 */  sll   $t6, $a3, 0x18
/* 01ACF0 8001A0F0 000E3E03 */  sra   $a3, $t6, 0x18
/* 01ACF4 8001A0F4 AFA50024 */  sw    $a1, 0x24($sp)
/* 01ACF8 8001A0F8 AFA60028 */  sw    $a2, 0x28($sp)
/* 01ACFC 8001A0FC 0C006829 */  jal   func_8001A0A4
/* 01AD00 8001A100 AFB80010 */   sw    $t8, 0x10($sp)
/* 01AD04 8001A104 8FA40024 */  lw    $a0, 0x24($sp)
/* 01AD08 8001A108 8FA50028 */  lw    $a1, 0x28($sp)
/* 01AD0C 8001A10C 0C00674B */  jal   func_80019D2C
/* 01AD10 8001A110 8FA60030 */   lw    $a2, 0x30($sp)
/* 01AD14 8001A114 8FBF001C */  lw    $ra, 0x1c($sp)
/* 01AD18 8001A118 27BD0020 */  addiu $sp, $sp, 0x20
/* 01AD1C 8001A11C 03E00008 */  jr    $ra
/* 01AD20 8001A120 00000000 */   nop   
