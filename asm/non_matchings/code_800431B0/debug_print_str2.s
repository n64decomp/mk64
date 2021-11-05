glabel debug_print_str2
/* 0583A4 800577A4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0583A8 800577A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0583AC 800577AC AFA40018 */  sw    $a0, 0x18($sp)
/* 0583B0 800577B0 AFA5001C */  sw    $a1, 0x1c($sp)
/* 0583B4 800577B4 27A5001C */  addiu $a1, $sp, 0x1c
/* 0583B8 800577B8 0C015D21 */  jal   debug_print_string
/* 0583BC 800577BC 27A40018 */   addiu $a0, $sp, 0x18
/* 0583C0 800577C0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0583C4 800577C4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0583C8 800577C8 03E00008 */  jr    $ra
/* 0583CC 800577CC 00000000 */   nop   
