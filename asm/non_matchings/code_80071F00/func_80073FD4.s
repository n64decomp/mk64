glabel func_80073FD4
/* 074BD4 80073FD4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 074BD8 80073FD8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 074BDC 80073FDC AFA40018 */  sw    $a0, 0x18($sp)
/* 074BE0 80073FE0 0C01CFE4 */  jal   func_80073F90
/* 074BE4 80073FE4 00002825 */   move  $a1, $zero
/* 074BE8 80073FE8 8FAF0018 */  lw    $t7, 0x18($sp)
/* 074BEC 80073FEC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 074BF0 80073FF0 3C018016 */  lui   $at, %hi(D_80165CF3) # 0x8016
/* 074BF4 80073FF4 000FC0C0 */  sll   $t8, $t7, 3
/* 074BF8 80073FF8 030FC023 */  subu  $t8, $t8, $t7
/* 074BFC 80073FFC 0018C140 */  sll   $t8, $t8, 5
/* 074C00 80074000 00380821 */  addu  $at, $at, $t8
/* 074C04 80074004 240E0001 */  li    $t6, 1
/* 074C08 80074008 A02E5CF3 */  sb    $t6, %lo(D_80165CF3)($at) # 0x5cf3($at)
/* 074C0C 8007400C 03E00008 */  jr    $ra
/* 074C10 80074010 27BD0018 */   addiu $sp, $sp, 0x18

/* 074C14 80074014 03E00008 */  jr    $ra
/* 074C18 80074018 00000000 */   nop   
