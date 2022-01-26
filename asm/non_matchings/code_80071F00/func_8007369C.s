glabel func_8007369C
/* 07429C 8007369C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0742A0 800736A0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0742A4 800736A4 AFA5001C */  sw    $a1, 0x1c($sp)
/* 0742A8 800736A8 AFA40018 */  sw    $a0, 0x18($sp)
/* 0742AC 800736AC 0C01C87A */  jal   func_800721E8
/* 0742B0 800736B0 34058000 */   li    $a1, 32768
/* 0742B4 800736B4 8FAF0018 */  lw    $t7, 0x18($sp)
/* 0742B8 800736B8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0742BC 800736BC 8FAE001C */  lw    $t6, 0x1c($sp)
/* 0742C0 800736C0 000FC0C0 */  sll   $t8, $t7, 3
/* 0742C4 800736C4 030FC023 */  subu  $t8, $t8, $t7
/* 0742C8 800736C8 0018C140 */  sll   $t8, $t8, 5
/* 0742CC 800736CC 3C018016 */  lui   $at, %hi(D_80165CEE) # 0x8016
/* 0742D0 800736D0 00380821 */  addu  $at, $at, $t8
/* 0742D4 800736D4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0742D8 800736D8 03E00008 */  jr    $ra
/* 0742DC 800736DC A02E5CEE */   sb    $t6, %lo(D_80165CEE)($at) # 0x5cee($at)
