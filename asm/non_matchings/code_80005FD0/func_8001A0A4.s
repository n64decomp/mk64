glabel func_8001A0A4
/* 01ACA4 8001A0A4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01ACA8 8001A0A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 01ACAC 8001A0AC AFA40018 */  sw    $a0, 0x18($sp)
/* 01ACB0 8001A0B0 AFA5001C */  sw    $a1, 0x1c($sp)
/* 01ACB4 8001A0B4 AFA60020 */  sw    $a2, 0x20($sp)
/* 01ACB8 8001A0B8 AFA70024 */  sw    $a3, 0x24($sp)
/* 01ACBC 8001A0BC 0C0067ED */  jal   func_80019FB4
/* 01ACC0 8001A0C0 8FA40028 */   lw    $a0, 0x28($sp)
/* 01ACC4 8001A0C4 0C006714 */  jal   func_80019C50
/* 01ACC8 8001A0C8 8FA40028 */   lw    $a0, 0x28($sp)
/* 01ACCC 8001A0CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01ACD0 8001A0D0 27BD0018 */  addiu $sp, $sp, 0x18
/* 01ACD4 8001A0D4 03E00008 */  jr    $ra
/* 01ACD8 8001A0D8 00000000 */   nop   
