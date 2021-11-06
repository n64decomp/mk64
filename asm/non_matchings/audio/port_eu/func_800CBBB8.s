glabel func_800CBBB8
/* 0CC7B8 800CBBB8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0CC7BC 800CBBBC AFBF002C */  sw    $ra, 0x2c($sp)
/* 0CC7C0 800CBBC0 AFBE0028 */  sw    $fp, 0x28($sp)
/* 0CC7C4 800CBBC4 AFA50034 */  sw    $a1, 0x34($sp)
/* 0CC7C8 800CBBC8 03A0F025 */  move  $fp, $sp
/* 0CC7CC 800CBBCC 0C032ED2 */  jal   func_800CBB48
/* 0CC7D0 800CBBD0 27A50034 */   addiu $a1, $sp, 0x34
/* 0CC7D4 800CBBD4 8FDF002C */  lw    $ra, 0x2c($fp)
/* 0CC7D8 800CBBD8 03C0E825 */  move  $sp, $fp
/* 0CC7DC 800CBBDC 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0CC7E0 800CBBE0 03E00008 */  jr    $ra
/* 0CC7E4 800CBBE4 27BD0030 */   addiu $sp, $sp, 0x30
