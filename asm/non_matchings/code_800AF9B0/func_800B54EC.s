glabel func_800B54EC
/* 0B60EC 800B54EC 00041840 */  sll   $v1, $a0, 1
/* 0B60F0 800B54F0 240E0003 */  li    $t6, 3
/* 0B60F4 800B54F4 006E7804 */  sllv  $t7, $t6, $v1
/* 0B60F8 800B54F8 00AFC024 */  and   $t8, $a1, $t7
/* 0B60FC 800B54FC 0078C806 */  srlv  $t9, $t8, $v1
/* 0B6100 800B5500 03E00008 */  jr    $ra
/* 0B6104 800B5504 332200FF */   andi  $v0, $t9, 0xff
