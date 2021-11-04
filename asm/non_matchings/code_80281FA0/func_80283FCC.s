glabel func_80283FCC
/* 12760C 80283FCC 3C05800E */  lui   $a1, %hi(D_800DC4E4) # $a1, 0x800e
/* 127610 80283FD0 8CA5C4E4 */  lw    $a1, %lo(D_800DC4E4)($a1)
/* 127614 80283FD4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 127618 80283FD8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 12761C 80283FDC 0C0A0802 */  jal   func_80282008
/* 127620 80283FE0 24A50014 */   addiu $a1, $a1, 0x14
/* 127624 80283FE4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 127628 80283FE8 27BD0018 */  addiu $sp, $sp, 0x18
/* 12762C 80283FEC 03E00008 */  jr    $ra
/* 127630 80283FF0 00000000 */   nop   
