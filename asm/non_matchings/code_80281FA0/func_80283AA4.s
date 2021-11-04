glabel func_80283AA4
/* 1270E4 80283AA4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1270E8 80283AA8 AFA40018 */  sw    $a0, 0x18($sp)
/* 1270EC 80283AAC AFBF0014 */  sw    $ra, 0x14($sp)
/* 1270F0 80283AB0 3C044900 */  lui   $a0, (0x4900801F >> 16) # lui $a0, 0x4900
/* 1270F4 80283AB4 0C032384 */  jal   play_sound2
/* 1270F8 80283AB8 3484801F */   ori   $a0, (0x4900801F & 0xFFFF) # ori $a0, $a0, 0x801f
/* 1270FC 80283ABC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 127100 80283AC0 27BD0018 */  addiu $sp, $sp, 0x18
/* 127104 80283AC4 03E00008 */  jr    $ra
/* 127108 80283AC8 00000000 */   nop   
