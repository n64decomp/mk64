glabel func_800CA2E4
/* 0CAEE4 800CA2E4 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 0CAEE8 800CA2E8 308E00FF */  andi  $t6, $a0, 0xff
/* 0CAEEC 800CA2EC 000EC900 */  sll   $t9, $t6, 4
/* 0CAEF0 800CA2F0 3C01800F */  lui   $at, %hi(D_800EA06C + 0xc)
/* 0CAEF4 800CA2F4 AFA40010 */  sw    $a0, 0x10($sp)
/* 0CAEF8 800CA2F8 AFA50014 */  sw    $a1, 0x14($sp)
/* 0CAEFC 800CA2FC 00390821 */  addu  $at, $at, $t9
/* 0CAF00 800CA300 A025A078 */  sb    $a1, %lo(D_800EA06C + 0xc)($at)
/* 0CAF04 800CA304 03E00008 */  jr    $ra
/* 0CAF08 800CA308 27BD0010 */   addiu $sp, $sp, 0x10
