glabel func_8007AF40
/* 07BB40 8007AF40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 07BB44 8007AF44 AFA40018 */  sw    $a0, 0x18($sp)
/* 07BB48 8007AF48 00A07025 */  move  $t6, $a1
/* 07BB4C 8007AF4C 000E2400 */  sll   $a0, $t6, 0x10
/* 07BB50 8007AF50 AFBF0014 */  sw    $ra, 0x14($sp)
/* 07BB54 8007AF54 AFA5001C */  sw    $a1, 0x1c($sp)
/* 07BB58 8007AF58 00047C03 */  sra   $t7, $a0, 0x10
/* 07BB5C 8007AF5C 01E02025 */  move  $a0, $t7
/* 07BB60 8007AF60 0C01EB6A */  jal   gen_random_item
/* 07BB64 8007AF64 00002825 */   move  $a1, $zero
/* 07BB68 8007AF68 8FBF0014 */  lw    $ra, 0x14($sp)
/* 07BB6C 8007AF6C 27BD0018 */  addiu $sp, $sp, 0x18
/* 07BB70 8007AF70 03E00008 */  jr    $ra
/* 07BB74 8007AF74 00000000 */   nop   
