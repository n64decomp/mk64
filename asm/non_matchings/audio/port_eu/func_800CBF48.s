glabel func_800CBF48
/* 0CCB48 800CBF48 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0CCB4C 800CBF4C AFBF0024 */  sw    $ra, 0x24($sp)
/* 0CCB50 800CBF50 AFBE0020 */  sw    $fp, 0x20($sp)
/* 0CCB54 800CBF54 0C032EAD */  jal   func_800CBAB4
/* 0CCB58 800CBF58 03A0F025 */   move  $fp, $sp
/* 0CCB5C 800CBF5C 8FDF0024 */  lw    $ra, 0x24($fp)
/* 0CCB60 800CBF60 03C0E825 */  move  $sp, $fp
/* 0CCB64 800CBF64 8FDE0020 */  lw    $fp, 0x20($fp)
/* 0CCB68 800CBF68 03E00008 */  jr    $ra
/* 0CCB6C 800CBF6C 27BD0028 */   addiu $sp, $sp, 0x28
