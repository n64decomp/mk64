glabel func_800CA30C
/* 0CAF0C 800CA30C 308E00FF */  andi  $t6, $a0, 0xff
/* 0CAF10 800CA310 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 0CAF14 800CA314 000E7900 */  sll   $t7, $t6, 4
/* 0CAF18 800CA318 3C01800F */  lui   $at, %hi(D_800EA06C + 0xc)
/* 0CAF1C 800CA31C AFA40010 */  sw    $a0, 0x10($sp)
/* 0CAF20 800CA320 002F0821 */  addu  $at, $at, $t7
/* 0CAF24 800CA324 A020A078 */  sb    $zero, %lo(D_800EA06C + 0xc)($at)
/* 0CAF28 800CA328 03E00008 */  jr    $ra
/* 0CAF2C 800CA32C 27BD0010 */   addiu $sp, $sp, 0x10
