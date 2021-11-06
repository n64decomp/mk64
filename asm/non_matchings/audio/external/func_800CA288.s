glabel func_800CA288
/* 0CAE88 800CA288 308E00FF */  andi  $t6, $a0, 0xff
/* 0CAE8C 800CA28C 000EC900 */  sll   $t9, $t6, 4
/* 0CAE90 800CA290 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 0CAE94 800CA294 032EC823 */  subu  $t9, $t9, $t6
/* 0CAE98 800CA298 0019C880 */  sll   $t9, $t9, 2
/* 0CAE9C 800CA29C 3C01800F */  lui   $at, %hi(D_800E9F90)
/* 0CAEA0 800CA2A0 AFA40010 */  sw    $a0, 0x10($sp)
/* 0CAEA4 800CA2A4 AFA50014 */  sw    $a1, 0x14($sp)
/* 0CAEA8 800CA2A8 00390821 */  addu  $at, $at, $t9
/* 0CAEAC 800CA2AC A0259F90 */  sb    $a1, %lo(D_800E9F90)($at)
/* 0CAEB0 800CA2B0 03E00008 */  jr    $ra
/* 0CAEB4 800CA2B4 27BD0010 */   addiu $sp, $sp, 0x10
