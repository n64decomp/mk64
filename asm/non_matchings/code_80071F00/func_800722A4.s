glabel func_800722A4
/* 072EA4 800722A4 000470C0 */  sll   $t6, $a0, 3
/* 072EA8 800722A8 01C47023 */  subu  $t6, $t6, $a0
/* 072EAC 800722AC 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 072EB0 800722B0 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 072EB4 800722B4 000E7140 */  sll   $t6, $t6, 5
/* 072EB8 800722B8 01CF1021 */  addu  $v0, $t6, $t7
/* 072EBC 800722BC 8C580058 */  lw    $t8, 0x58($v0)
/* 072EC0 800722C0 0305C825 */  or    $t9, $t8, $a1
/* 072EC4 800722C4 03E00008 */  jr    $ra
/* 072EC8 800722C8 AC590058 */   sw    $t9, 0x58($v0)
