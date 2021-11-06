glabel func_800CA0CC
/* 0CACCC 800CA0CC 27BDFFF8 */  addiu $sp, $sp, -8
/* 0CACD0 800CA0D0 240E0001 */  li    $t6, 1
/* 0CACD4 800CA0D4 3C01800F */  lui   $at, %hi(D_800EA108) # $at, 0x800f
/* 0CACD8 800CA0D8 A02EA108 */  sb    $t6, %lo(D_800EA108)($at)
/* 0CACDC 800CA0DC 03E00008 */  jr    $ra
/* 0CACE0 800CA0E0 27BD0008 */   addiu $sp, $sp, 8
