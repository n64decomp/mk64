glabel func_800CB134
/* 0CBD34 800CB134 27BDFFF8 */  addiu $sp, $sp, -8
/* 0CBD38 800CB138 240E0001 */  li    $t6, 1
/* 0CBD3C 800CB13C 3C01800F */  lui   $at, %hi(D_800EA174) # $at, 0x800f
/* 0CBD40 800CB140 A42EA174 */  sh    $t6, %lo(D_800EA174)($at)
/* 0CBD44 800CB144 03E00008 */  jr    $ra
/* 0CBD48 800CB148 27BD0008 */   addiu $sp, $sp, 8
