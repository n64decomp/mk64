glabel func_800CBBE8
/* 0CC7E8 800CBBE8 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0CC7EC 800CBBEC 00A07025 */  move  $t6, $a1
/* 0CC7F0 800CBBF0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0CC7F4 800CBBF4 AFBE0028 */  sw    $fp, 0x28($sp)
/* 0CC7F8 800CBBF8 AFA5003C */  sw    $a1, 0x3c($sp)
/* 0CC7FC 800CBBFC 000E7E00 */  sll   $t7, $t6, 0x18
/* 0CC800 800CBC00 03A0F025 */  move  $fp, $sp
/* 0CC804 800CBC04 AFAF0034 */  sw    $t7, 0x34($sp)
/* 0CC808 800CBC08 0C032ED2 */  jal   func_800CBB48
/* 0CC80C 800CBC0C 27A50034 */   addiu $a1, $sp, 0x34
/* 0CC810 800CBC10 8FDF002C */  lw    $ra, 0x2c($fp)
/* 0CC814 800CBC14 03C0E825 */  move  $sp, $fp
/* 0CC818 800CBC18 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0CC81C 800CBC1C 03E00008 */  jr    $ra
/* 0CC820 800CBC20 27BD0038 */   addiu $sp, $sp, 0x38
