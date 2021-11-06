glabel func_800BE5BC
/* 0BF1BC 800BE5BC AFA60008 */  sw    $a2, 8($sp)
/* 0BF1C0 800BE5C0 44800000 */  mtc1  $zero, $f0
/* 0BF1C4 800BE5C4 A0800000 */  sb    $zero, ($a0)
/* 0BF1C8 800BE5C8 A0800001 */  sb    $zero, 1($a0)
/* 0BF1CC 800BE5CC A4800004 */  sh    $zero, 4($a0)
/* 0BF1D0 800BE5D0 AC850020 */  sw    $a1, 0x20($a0)
/* 0BF1D4 800BE5D4 E4800008 */  swc1  $f0, 8($a0)
/* 0BF1D8 800BE5D8 03E00008 */  jr    $ra
/* 0BF1DC 800BE5DC E4800014 */   swc1  $f0, 0x14($a0)
