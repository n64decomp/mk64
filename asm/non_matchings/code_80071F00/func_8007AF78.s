glabel func_8007AF78
/* 07BB78 8007AF78 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 07BB7C 8007AF7C AFA40018 */  sw    $a0, 0x18($sp)
/* 07BB80 8007AF80 00A07025 */  move  $t6, $a1
/* 07BB84 8007AF84 000E2400 */  sll   $a0, $t6, 0x10
/* 07BB88 8007AF88 AFBF0014 */  sw    $ra, 0x14($sp)
/* 07BB8C 8007AF8C AFA5001C */  sw    $a1, 0x1c($sp)
/* 07BB90 8007AF90 00047C03 */  sra   $t7, $a0, 0x10
/* 07BB94 8007AF94 01E02025 */  move  $a0, $t7
/* 07BB98 8007AF98 0C01EB6A */  jal   gen_random_item
/* 07BB9C 8007AF9C 24050001 */   li    $a1, 1
/* 07BBA0 8007AFA0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 07BBA4 8007AFA4 27BD0018 */  addiu $sp, $sp, 0x18
/* 07BBA8 8007AFA8 03E00008 */  jr    $ra
/* 07BBAC 8007AFAC 00000000 */   nop   
