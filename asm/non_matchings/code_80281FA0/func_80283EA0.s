glabel func_80283EA0
/* 1274E0 80283EA0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1274E4 80283EA4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1274E8 80283EA8 3C058028 */  lui   $a1, %hi(D_80285754) # $a1, 0x8028
/* 1274EC 80283EAC 3C068028 */  lui   $a2, %hi(D_80285784) # $a2, 0x8028
/* 1274F0 80283EB0 24C65784 */  addiu $a2, %lo(D_80285784) # addiu $a2, $a2, 0x5784
/* 1274F4 80283EB4 24A55754 */  addiu $a1, %lo(D_80285754) # addiu $a1, $a1, 0x5754
/* 1274F8 80283EB8 0C0A0B64 */  jal   func_80282D90
/* 1274FC 80283EBC 00003825 */   move  $a3, $zero
/* 127500 80283EC0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 127504 80283EC4 27BD0018 */  addiu $sp, $sp, 0x18
/* 127508 80283EC8 03E00008 */  jr    $ra
/* 12750C 80283ECC 00000000 */   nop   
