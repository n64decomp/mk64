glabel func_800B4DF4
/* 0B59F4 800B4DF4 90850001 */  lbu   $a1, 1($a0)
/* 0B59F8 800B4DF8 90830000 */  lbu   $v1, ($a0)
/* 0B59FC 800B4DFC 90860002 */  lbu   $a2, 2($a0)
/* 0B5A00 800B4E00 00057200 */  sll   $t6, $a1, 8
/* 0B5A04 800B4E04 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 0B5A08 800B4E08 01C37821 */  addu  $t7, $t6, $v1
/* 0B5A0C 800B4E0C 0006C400 */  sll   $t8, $a2, 0x10
/* 0B5A10 800B4E10 01F81021 */  addu  $v0, $t7, $t8
/* 0B5A14 800B4E14 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0B5A18 800B4E18 0041C824 */  and   $t9, $v0, $at
/* 0B5A1C 800B4E1C 03E00008 */  jr    $ra
/* 0B5A20 800B4E20 03201025 */   move  $v0, $t9
