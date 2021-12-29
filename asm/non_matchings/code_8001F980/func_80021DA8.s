glabel func_80021DA8
/* 0229A8 80021DA8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0229AC 80021DAC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0229B0 80021DB0 3C04800E */  lui   $a0, %hi(gPlayerOneCopy) # $a0, 0x800e
/* 0229B4 80021DB4 8C84C4FC */  lw    $a0, %lo(gPlayerOneCopy)($a0)
/* 0229B8 80021DB8 00002825 */  move  $a1, $zero
/* 0229BC 80021DBC 0C01BA50 */  jal   func_8006E940
/* 0229C0 80021DC0 24060003 */   li    $a2, 3
/* 0229C4 80021DC4 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 0229C8 80021DC8 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 0229CC 80021DCC 24050001 */  li    $a1, 1
/* 0229D0 80021DD0 0C01BA50 */  jal   func_8006E940
/* 0229D4 80021DD4 24060003 */   li    $a2, 3
/* 0229D8 80021DD8 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 0229DC 80021DDC 8C84C4E4 */  lw    $a0, %lo(gPlayerThree)($a0)
/* 0229E0 80021DE0 24050002 */  li    $a1, 2
/* 0229E4 80021DE4 0C01BA50 */  jal   func_8006E940
/* 0229E8 80021DE8 24060003 */   li    $a2, 3
/* 0229EC 80021DEC 3C04800E */  lui   $a0, %hi(gPlayerFour) # $a0, 0x800e
/* 0229F0 80021DF0 8C84C4E8 */  lw    $a0, %lo(gPlayerFour)($a0)
/* 0229F4 80021DF4 24050003 */  li    $a1, 3
/* 0229F8 80021DF8 0C01BA50 */  jal   func_8006E940
/* 0229FC 80021DFC 24060003 */   li    $a2, 3
/* 022A00 80021E00 8FBF0014 */  lw    $ra, 0x14($sp)
/* 022A04 80021E04 27BD0018 */  addiu $sp, $sp, 0x18
/* 022A08 80021E08 03E00008 */  jr    $ra
/* 022A0C 80021E0C 00000000 */   nop
