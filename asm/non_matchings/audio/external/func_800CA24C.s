glabel func_800CA24C
/* 0CAE4C 800CA24C 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 0CAE50 800CA250 308E00FF */  andi  $t6, $a0, 0xff
/* 0CAE54 800CA254 3C01800F */  lui   $at, %hi(D_800EA0EC)
/* 0CAE58 800CA258 AFA40010 */  sw    $a0, 0x10($sp)
/* 0CAE5C 800CA25C 002E0821 */  addu  $at, $at, $t6
/* 0CAE60 800CA260 240F0002 */  li    $t7, 2
/* 0CAE64 800CA264 A02FA0EC */  sb    $t7, %lo(D_800EA0EC)($at)
/* 0CAE68 800CA268 03E00008 */  jr    $ra
/* 0CAE6C 800CA26C 27BD0010 */   addiu $sp, $sp, 0x10
