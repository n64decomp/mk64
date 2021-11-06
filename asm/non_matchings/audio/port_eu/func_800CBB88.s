glabel func_800CBB88
/* 0CC788 800CBB88 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0CC78C 800CBB8C AFBF002C */  sw    $ra, 0x2c($sp)
/* 0CC790 800CBB90 AFBE0028 */  sw    $fp, 0x28($sp)
/* 0CC794 800CBB94 AFA50034 */  sw    $a1, 0x34($sp)
/* 0CC798 800CBB98 03A0F025 */  move  $fp, $sp
/* 0CC79C 800CBB9C 0C032ED2 */  jal   func_800CBB48
/* 0CC7A0 800CBBA0 27A50034 */   addiu $a1, $sp, 0x34
/* 0CC7A4 800CBBA4 8FDF002C */  lw    $ra, 0x2c($fp)
/* 0CC7A8 800CBBA8 03C0E825 */  move  $sp, $fp
/* 0CC7AC 800CBBAC 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0CC7B0 800CBBB0 03E00008 */  jr    $ra
/* 0CC7B4 800CBBB4 27BD0030 */   addiu $sp, $sp, 0x30
