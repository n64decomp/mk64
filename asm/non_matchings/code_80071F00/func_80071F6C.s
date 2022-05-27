glabel func_80071F6C
/* 072B6C 80071F6C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 072B70 80071F70 AFBF0014 */  sw    $ra, 0x14($sp)
/* 072B74 80071F74 00802825 */  move  $a1, $a0
/* 072B78 80071F78 8C840000 */  lw    $a0, ($a0)
/* 072B7C 80071F7C 0C01C90A */  jal   func_80072428
/* 072B80 80071F80 AFA50018 */   sw    $a1, 0x18($sp)
/* 072B84 80071F84 8FA50018 */  lw    $a1, 0x18($sp)
/* 072B88 80071F88 3C018016 */  lui   $at, %hi(D_80165CE2) # 0x8016
/* 072B8C 80071F8C 2418FFFF */  li    $t8, -1
/* 072B90 80071F90 8CAE0000 */  lw    $t6, ($a1)
/* 072B94 80071F94 000E78C0 */  sll   $t7, $t6, 3
/* 072B98 80071F98 01EE7823 */  subu  $t7, $t7, $t6
/* 072B9C 80071F9C 000F7940 */  sll   $t7, $t7, 5
/* 072BA0 80071FA0 002F0821 */  addu  $at, $at, $t7
/* 072BA4 80071FA4 A0205CE2 */  sb    $zero, %lo(D_80165CE2)($at) # 0x5ce2($at)
/* 072BA8 80071FA8 ACB80000 */  sw    $t8, ($a1)
/* 072BAC 80071FAC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 072BB0 80071FB0 27BD0018 */  addiu $sp, $sp, 0x18
/* 072BB4 80071FB4 03E00008 */  jr    $ra
/* 072BB8 80071FB8 00000000 */   nop   
