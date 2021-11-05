glabel func_80074894
/* 075494 80074894 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 075498 80074898 AFBF0014 */  sw    $ra, 0x14($sp)
/* 07549C 8007489C AFA40018 */  sw    $a0, 0x18($sp)
/* 0754A0 800748A0 0C01D1FC */  jal   func_800747F0
/* 0754A4 800748A4 AFA5001C */   sw    $a1, 0x1c($sp)
/* 0754A8 800748A8 8FA40018 */  lw    $a0, 0x18($sp)
/* 0754AC 800748AC 0C01D172 */  jal   func_800745C8
/* 0754B0 800748B0 8FA5001C */   lw    $a1, 0x1c($sp)
/* 0754B4 800748B4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0754B8 800748B8 27BD0018 */  addiu $sp, $sp, 0x18
/* 0754BC 800748BC 03E00008 */  jr    $ra
/* 0754C0 800748C0 00000000 */   nop   
