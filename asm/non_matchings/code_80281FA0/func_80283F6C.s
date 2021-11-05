glabel func_80283F6C
/* 1275AC 80283F6C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1275B0 80283F70 AFA40018 */  sw    $a0, 0x18($sp)
/* 1275B4 80283F74 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1275B8 80283F78 3C048028 */  lui   $a0, %hi(D_80283ED0) # $a0, 0x8028
/* 1275BC 80283F7C 24843ED0 */  addiu $a0, %lo(D_80283ED0) # addiu $a0, $a0, 0x3ed0
/* 1275C0 80283F80 8FA50018 */  lw    $a1, 0x18($sp)
/* 1275C4 80283F84 00003025 */  move  $a2, $zero
/* 1275C8 80283F88 0C0A0CB1 */  jal   func_802832C4
/* 1275CC 80283F8C 00003825 */   move  $a3, $zero
/* 1275D0 80283F90 3C048028 */  lui   $a0, %hi(D_80283EF8) # $a0, 0x8028
/* 1275D4 80283F94 24843EF8 */  addiu $a0, %lo(D_80283EF8) # addiu $a0, $a0, 0x3ef8
/* 1275D8 80283F98 8FA50018 */  lw    $a1, 0x18($sp)
/* 1275DC 80283F9C 00003025 */  move  $a2, $zero
/* 1275E0 80283FA0 0C0A0CB1 */  jal   func_802832C4
/* 1275E4 80283FA4 2407FFFF */   li    $a3, -1
/* 1275E8 80283FA8 3C058028 */  lui   $a1, %hi(D_802857B4) # $a1, 0x8028
/* 1275EC 80283FAC 24A557B4 */  addiu $a1, %lo(D_802857B4) # addiu $a1, $a1, 0x57b4
/* 1275F0 80283FB0 8FA40018 */  lw    $a0, 0x18($sp)
/* 1275F4 80283FB4 0C0A0B96 */  jal   func_80282E58
/* 1275F8 80283FB8 00003025 */   move  $a2, $zero
/* 1275FC 80283FBC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 127600 80283FC0 27BD0018 */  addiu $sp, $sp, 0x18
/* 127604 80283FC4 03E00008 */  jr    $ra
/* 127608 80283FC8 00000000 */   nop   
