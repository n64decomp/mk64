glabel func_80073FAC
/* 074BAC 80073FAC 000470C0 */  sll   $t6, $a0, 3
/* 074BB0 80073FB0 01C47023 */  subu  $t6, $t6, $a0
/* 074BB4 80073FB4 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 074BB8 80073FB8 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 074BBC 80073FBC 000E7140 */  sll   $t6, $t6, 5
/* 074BC0 80073FC0 01CF1021 */  addu  $v0, $t6, $t7
/* 074BC4 80073FC4 905800DB */  lbu   $t8, 0xdb($v0)
/* 074BC8 80073FC8 27190001 */  addiu $t9, $t8, 1
/* 074BCC 80073FCC 03E00008 */  jr    $ra
/* 074BD0 80073FD0 A05900DB */   sb    $t9, 0xdb($v0)
