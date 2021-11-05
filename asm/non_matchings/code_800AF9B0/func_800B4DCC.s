glabel func_800B4DCC
/* 0B59CC 800B4DCC 0005C202 */  srl   $t8, $a1, 8
/* 0B59D0 800B4DD0 00184202 */  srl   $t0, $t8, 8
/* 0B59D4 800B4DD4 30CA0007 */  andi  $t2, $a2, 7
/* 0B59D8 800B4DD8 000A5900 */  sll   $t3, $t2, 4
/* 0B59DC 800B4DDC 3109000F */  andi  $t1, $t0, 0xf
/* 0B59E0 800B4DE0 012B6021 */  addu  $t4, $t1, $t3
/* 0B59E4 800B4DE4 A0850000 */  sb    $a1, ($a0)
/* 0B59E8 800B4DE8 A0980001 */  sb    $t8, 1($a0)
/* 0B59EC 800B4DEC 03E00008 */  jr    $ra
/* 0B59F0 800B4DF0 A08C0002 */   sb    $t4, 2($a0)
