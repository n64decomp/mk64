glabel func_802AF5AC
/* 118BBC 802AF5AC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 118BC0 802AF5B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 118BC4 802AF5B4 AFA5001C */  sw    $a1, 0x1c($sp)
/* 118BC8 802AF5B8 00057600 */  sll   $t6, $a1, 0x18
/* 118BCC 802AF5BC 000E2E03 */  sra   $a1, $t6, 0x18
/* 118BD0 802AF5C0 0C0ABD76 */  jal   func_802AF5D8
/* 118BD4 802AF5C4 240600FF */   li    $a2, 255
/* 118BD8 802AF5C8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 118BDC 802AF5CC 27BD0018 */  addiu $sp, $sp, 0x18
/* 118BE0 802AF5D0 03E00008 */  jr    $ra
/* 118BE4 802AF5D4 00000000 */   nop   
