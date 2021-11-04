glabel func_80086F60
/* 087B60 80086F60 000470C0 */  sll   $t6, $a0, 3
/* 087B64 80086F64 01C47023 */  subu  $t6, $t6, $a0
/* 087B68 80086F68 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 087B6C 80086F6C 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 087B70 80086F70 000E7140 */  sll   $t6, $t6, 5
/* 087B74 80086F74 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 087B78 80086F78 01CF1021 */  addu  $v0, $t6, $t7
/* 087B7C 80086F7C AFBF0014 */  sw    $ra, 0x14($sp)
/* 087B80 80086F80 A44000AE */  sh    $zero, 0xae($v0)
/* 087B84 80086F84 A04000DD */  sb    $zero, 0xdd($v0)
/* 087B88 80086F88 A04000DE */  sb    $zero, 0xde($v0)
/* 087B8C 80086F8C 0C01C87A */  jal   func_800721E8
/* 087B90 80086F90 24050008 */   li    $a1, 8
/* 087B94 80086F94 8FBF0014 */  lw    $ra, 0x14($sp)
/* 087B98 80086F98 27BD0018 */  addiu $sp, $sp, 0x18
/* 087B9C 80086F9C 03E00008 */  jr    $ra
/* 087BA0 80086FA0 00000000 */   nop   
