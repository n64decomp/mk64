glabel func_8005D7D8
/* 05E3D8 8005D7D8 AFA50004 */  sw    $a1, 4($sp)
/* 05E3DC 8005D7DC 44866000 */  mtc1  $a2, $f12
/* 05E3E0 8005D7E0 00057600 */  sll   $t6, $a1, 0x18
/* 05E3E4 8005D7E4 000E7E03 */  sra   $t7, $t6, 0x18
/* 05E3E8 8005D7E8 24180001 */  li    $t8, 1
/* 05E3EC 8005D7EC A498001C */  sh    $t8, 0x1c($a0)
/* 05E3F0 8005D7F0 A48F0012 */  sh    $t7, 0x12($a0)
/* 05E3F4 8005D7F4 A480001E */  sh    $zero, 0x1e($a0)
/* 05E3F8 8005D7F8 03E00008 */  jr    $ra
/* 05E3FC 8005D7FC E48C000C */   swc1  $f12, 0xc($a0)
