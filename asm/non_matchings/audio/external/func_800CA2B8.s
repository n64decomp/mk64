glabel func_800CA2B8
/* 0CAEB8 800CA2B8 308E00FF */  andi  $t6, $a0, 0xff
/* 0CAEBC 800CA2BC 000E7900 */  sll   $t7, $t6, 4
/* 0CAEC0 800CA2C0 01EE7823 */  subu  $t7, $t7, $t6
/* 0CAEC4 800CA2C4 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 0CAEC8 800CA2C8 000F7880 */  sll   $t7, $t7, 2
/* 0CAECC 800CA2CC 3C01800F */  lui   $at, %hi(D_800E9F90)
/* 0CAED0 800CA2D0 AFA40010 */  sw    $a0, 0x10($sp)
/* 0CAED4 800CA2D4 002F0821 */  addu  $at, $at, $t7
/* 0CAED8 800CA2D8 A0209F90 */  sb    $zero, %lo(D_800E9F90)($at)
/* 0CAEDC 800CA2DC 03E00008 */  jr    $ra
/* 0CAEE0 800CA2E0 27BD0010 */   addiu $sp, $sp, 0x10
