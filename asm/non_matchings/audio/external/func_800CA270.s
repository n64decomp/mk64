glabel func_800CA270
/* 0CAE70 800CA270 27BDFFF8 */  addiu $sp, $sp, -8
/* 0CAE74 800CA274 240E0001 */  li    $t6, 1
/* 0CAE78 800CA278 3C01800F */  lui   $at, %hi(D_800EA0F4) # $at, 0x800f
/* 0CAE7C 800CA27C A02EA0F4 */  sb    $t6, %lo(D_800EA0F4)($at)
/* 0CAE80 800CA280 03E00008 */  jr    $ra
/* 0CAE84 800CA284 27BD0008 */   addiu $sp, $sp, 8
