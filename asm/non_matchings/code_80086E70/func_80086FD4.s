glabel func_80086FD4
/* 087BD4 80086FD4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 087BD8 80086FD8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 087BDC 80086FDC AFA40018 */  sw    $a0, 0x18($sp)
/* 087BE0 80086FE0 0C01C87A */  jal   func_800721E8
/* 087BE4 80086FE4 24050008 */   li    $a1, 8
/* 087BE8 80086FE8 8FAE0018 */  lw    $t6, 0x18($sp)
/* 087BEC 80086FEC 3C188016 */  lui   $t8, %hi(D_80165C18) # $t8, 0x8016
/* 087BF0 80086FF0 27185C18 */  addiu $t8, %lo(D_80165C18) # addiu $t8, $t8, 0x5c18
/* 087BF4 80086FF4 000E78C0 */  sll   $t7, $t6, 3
/* 087BF8 80086FF8 01EE7823 */  subu  $t7, $t7, $t6
/* 087BFC 80086FFC 000F7940 */  sll   $t7, $t7, 5
/* 087C00 80087000 01F81021 */  addu  $v0, $t7, $t8
/* 087C04 80087004 845900AE */  lh    $t9, 0xae($v0)
/* 087C08 80087008 8FBF0014 */  lw    $ra, 0x14($sp)
/* 087C0C 8008700C 27BD0018 */  addiu $sp, $sp, 0x18
/* 087C10 80087010 27280001 */  addiu $t0, $t9, 1
/* 087C14 80087014 03E00008 */  jr    $ra
/* 087C18 80087018 A44800AE */   sh    $t0, 0xae($v0)
