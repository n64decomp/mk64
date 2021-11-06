glabel func_800CA0E4
/* 0CACE4 800CA0E4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0CACE8 800CA0E8 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0CACEC 800CA0EC AFBE0028 */  sw    $fp, 0x28($sp)
/* 0CACF0 800CA0F0 03A0F025 */  move  $fp, $sp
/* 0CACF4 800CA0F4 0C03149E */  jal   func_800C5278
/* 0CACF8 800CA0F8 24040003 */   li    $a0, 3
/* 0CACFC 800CA0FC 0C03149E */  jal   func_800C5278
/* 0CAD00 800CA100 24040005 */   li    $a0, 5
/* 0CAD04 800CA104 8FDF002C */  lw    $ra, 0x2c($fp)
/* 0CAD08 800CA108 03C0E825 */  move  $sp, $fp
/* 0CAD0C 800CA10C 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0CAD10 800CA110 03E00008 */  jr    $ra
/* 0CAD14 800CA114 27BD0030 */   addiu $sp, $sp, 0x30
