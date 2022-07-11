glabel func_800C54B8
/* 0C60B8 800C54B8 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 0C60BC 800C54BC AFBF002C */  sw    $ra, 0x2c($sp)
/* 0C60C0 800C54C0 AFBE0028 */  sw    $fp, 0x28($sp)
/* 0C60C4 800C54C4 AFA40060 */  sw    $a0, 0x60($sp)
/* 0C60C8 800C54C8 03A0F025 */  move  $fp, $sp
/* 0C60CC 800C54CC AFA50064 */  sw    $a1, 0x64($sp)
/* 0C60D0 800C54D0 0C0314E1 */  jal   func_800C5384
/* 0C60D4 800C54D4 93A40063 */   lbu   $a0, 0x63($sp)
/* 0C60D8 800C54D8 93CE0063 */  lbu   $t6, 0x63($fp)
/* 0C60DC 800C54DC 8FD80064 */  lw    $t8, 0x64($fp)
/* 0C60E0 800C54E0 24040001 */  li    $a0, 1
/* 0C60E4 800C54E4 000E7F00 */  sll   $t7, $t6, 0x1c
/* 0C60E8 800C54E8 AFCF0054 */  sw    $t7, 0x54($fp)
/* 0C60EC 800C54EC 27C50030 */  addiu $a1, $fp, 0x30
/* 0C60F0 800C54F0 0C031073 */  jal   func_800C41CC
/* 0C60F4 800C54F4 AFD80030 */   sw    $t8, 0x30($fp)
/* 0C60F8 800C54F8 8FDF002C */  lw    $ra, 0x2c($fp)
/* 0C60FC 800C54FC 03C0E825 */  move  $sp, $fp
/* 0C6100 800C5500 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0C6104 800C5504 03E00008 */  jr    $ra
/* 0C6108 800C5508 27BD0060 */   addiu $sp, $sp, 0x60
