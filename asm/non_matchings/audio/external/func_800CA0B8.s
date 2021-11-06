glabel func_800CA0B8
/* 0CACB8 800CA0B8 27BDFFF8 */  addiu $sp, $sp, -8
/* 0CACBC 800CA0BC 3C01800F */  lui   $at, %hi(D_800EA108) # $at, 0x800f
/* 0CACC0 800CA0C0 A020A108 */  sb    $zero, %lo(D_800EA108)($at)
/* 0CACC4 800CA0C4 03E00008 */  jr    $ra
/* 0CACC8 800CA0C8 27BD0008 */   addiu $sp, $sp, 8
