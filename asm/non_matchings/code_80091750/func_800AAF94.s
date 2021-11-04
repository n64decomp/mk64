glabel func_800AAF94
/* 0ABB94 800AAF94 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0ABB98 800AAF98 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0ABB9C 800AAF9C AFA40018 */  sw    $a0, 0x18($sp)
/* 0ABBA0 800AAFA0 0C02ABAD */  jal   func_800AAEB4
/* 0ABBA4 800AAFA4 00A02025 */   move  $a0, $a1
/* 0ABBA8 800AAFA8 8FA30018 */  lw    $v1, 0x18($sp)
/* 0ABBAC 800AAFAC 8C4E000C */  lw    $t6, 0xc($v0)
/* 0ABBB0 800AAFB0 AC6E000C */  sw    $t6, 0xc($v1)
/* 0ABBB4 800AAFB4 8C4F0010 */  lw    $t7, 0x10($v0)
/* 0ABBB8 800AAFB8 AC6F0010 */  sw    $t7, 0x10($v1)
/* 0ABBBC 800AAFBC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0ABBC0 800AAFC0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0ABBC4 800AAFC4 03E00008 */  jr    $ra
/* 0ABBC8 800AAFC8 00000000 */   nop   
