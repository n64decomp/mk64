glabel func_80283ED0
/* 127510 80283ED0 3C05800E */  lui   $a1, %hi(D_800DC4E0) # $a1, 0x800e
/* 127514 80283ED4 8CA5C4E0 */  lw    $a1, %lo(D_800DC4E0)($a1)
/* 127518 80283ED8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 12751C 80283EDC AFBF0014 */  sw    $ra, 0x14($sp)
/* 127520 80283EE0 0C0A0802 */  jal   func_80282008
/* 127524 80283EE4 24A50014 */   addiu $a1, $a1, 0x14
/* 127528 80283EE8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 12752C 80283EEC 27BD0018 */  addiu $sp, $sp, 0x18
/* 127530 80283EF0 03E00008 */  jr    $ra
/* 127534 80283EF4 00000000 */   nop   
