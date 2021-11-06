glabel func_800CA0A0
/* 0CACA0 800CA0A0 27BDFFF8 */  addiu $sp, $sp, -8
/* 0CACA4 800CA0A4 240E0001 */  li    $t6, 1
/* 0CACA8 800CA0A8 3C01800F */  lui   $at, %hi(D_800EA108) # $at, 0x800f
/* 0CACAC 800CA0AC A02EA108 */  sb    $t6, %lo(D_800EA108)($at)
/* 0CACB0 800CA0B0 03E00008 */  jr    $ra
/* 0CACB4 800CA0B4 27BD0008 */   addiu $sp, $sp, 8
