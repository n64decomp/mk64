glabel func_800748C4
/* 0754C4 800748C4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0754C8 800748C8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0754CC 800748CC AFA40018 */  sw    $a0, 0x18($sp)
/* 0754D0 800748D0 0C01D1FC */  jal   func_800747F0
/* 0754D4 800748D4 AFA5001C */   sw    $a1, 0x1c($sp)
/* 0754D8 800748D8 8FA40018 */  lw    $a0, 0x18($sp)
/* 0754DC 800748DC 0C01D19B */  jal   func_8007466C
/* 0754E0 800748E0 8FA5001C */   lw    $a1, 0x1c($sp)
/* 0754E4 800748E4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0754E8 800748E8 27BD0018 */  addiu $sp, $sp, 0x18
/* 0754EC 800748EC 03E00008 */  jr    $ra
/* 0754F0 800748F0 00000000 */   nop   
