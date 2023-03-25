glabel func_802AF83C
/* 118E4C 802AF83C 0004C602 */  srl   $t8, $a0, 0x18
/* 118E50 802AF840 0018C880 */  sll   $t9, $t8, 2
/* 118E54 802AF844 3C098015 */  lui   $t1, %hi(gSegmentTable)
/* 118E58 802AF848 01394821 */  addu  $t1, $t1, $t9
/* 118E5C 802AF84C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 118E60 802AF850 8D290258 */  lw    $t1, %lo(gSegmentTable)($t1)
/* 118E64 802AF854 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 118E68 802AF858 00815024 */  and   $t2, $a0, $at
/* 118E6C 802AF85C 00077600 */  sll   $t6, $a3, 0x18
/* 118E70 802AF860 3C018000 */  lui   $at, 0x8000
/* 118E74 802AF864 012A1021 */  addu  $v0, $t1, $t2
/* 118E78 802AF868 000E7E03 */  sra   $t7, $t6, 0x18
/* 118E7C 802AF86C AFA60008 */  sw    $a2, 8($sp)
/* 118E80 802AF870 AFA7000C */  sw    $a3, 0xc($sp)
/* 118E84 802AF874 00411021 */  addu  $v0, $v0, $at
/* 118E88 802AF878 10A0000E */  beqz  $a1, .L802AF8B4
/* 118E8C 802AF87C 00001825 */   move  $v1, $zero
/* 118E90 802AF880 01E04025 */  move  $t0, $t7
/* 118E94 802AF884 93A7001B */  lbu   $a3, 0x1b($sp)
/* 118E98 802AF888 93A60017 */  lbu   $a2, 0x17($sp)
/* 118E9C 802AF88C 93A40013 */  lbu   $a0, 0x13($sp)
.L802AF890:
/* 118EA0 802AF890 10800004 */  beqz  $a0, .L802AF8A4
/* 118EA4 802AF894 24630001 */   addiu $v1, $v1, 1
/* 118EA8 802AF898 A044000C */  sb    $a0, 0xc($v0)
/* 118EAC 802AF89C A046000D */  sb    $a2, 0xd($v0)
/* 118EB0 802AF8A0 A047000E */  sb    $a3, 0xe($v0)
.L802AF8A4:
/* 118EB4 802AF8A4 0065082B */  sltu  $at, $v1, $a1
/* 118EB8 802AF8A8 A048000F */  sb    $t0, 0xf($v0)
/* 118EBC 802AF8AC 1420FFF8 */  bnez  $at, .L802AF890
/* 118EC0 802AF8B0 24420010 */   addiu $v0, $v0, 0x10
.L802AF8B4:
/* 118EC4 802AF8B4 03E00008 */  jr    $ra
/* 118EC8 802AF8B8 00000000 */   nop   
