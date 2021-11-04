glabel func_80283A7C
/* 1270BC 80283A7C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1270C0 80283A80 AFA40018 */  sw    $a0, 0x18($sp)
/* 1270C4 80283A84 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1270C8 80283A88 3C044900 */  lui   $a0, (0x4900801E >> 16) # lui $a0, 0x4900
/* 1270CC 80283A8C 0C032384 */  jal   play_sound2
/* 1270D0 80283A90 3484801E */   ori   $a0, (0x4900801E & 0xFFFF) # ori $a0, $a0, 0x801e
/* 1270D4 80283A94 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1270D8 80283A98 27BD0018 */  addiu $sp, $sp, 0x18
/* 1270DC 80283A9C 03E00008 */  jr    $ra
/* 1270E0 80283AA0 00000000 */   nop   
