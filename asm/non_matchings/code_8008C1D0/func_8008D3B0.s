glabel func_8008D3B0
/* 08DFB0 8008D3B0 AFA50004 */  sw    $a1, 4($sp)
/* 08DFB4 8008D3B4 848E0044 */  lh    $t6, 0x44($a0)
/* 08DFB8 8008D3B8 31CFBFFF */  andi  $t7, $t6, 0xbfff
/* 08DFBC 8008D3BC 03E00008 */  jr    $ra
/* 08DFC0 8008D3C0 A48F0044 */   sh    $t7, 0x44($a0)
