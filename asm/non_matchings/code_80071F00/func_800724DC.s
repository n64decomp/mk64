glabel func_800724DC
/* 0730DC 800724DC 000470C0 */  sll   $t6, $a0, 3
/* 0730E0 800724E0 01C47023 */  subu  $t6, $t6, $a0
/* 0730E4 800724E4 000E7140 */  sll   $t6, $t6, 5
/* 0730E8 800724E8 3C018016 */  lui   $at, %hi(D_80165CEF) # 0x8016
/* 0730EC 800724EC 002E0821 */  addu  $at, $at, $t6
/* 0730F0 800724F0 03E00008 */  jr    $ra
/* 0730F4 800724F4 A0205CEF */   sb    $zero, %lo(D_80165CEF)($at) # 0x5cef($at)
