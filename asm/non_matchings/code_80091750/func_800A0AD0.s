glabel func_800A0AD0
/* 0A16D0 800A0AD0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A16D4 800A0AD4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A16D8 800A0AD8 AFA40018 */  sw    $a0, 0x18($sp)
/* 0A16DC 800A0ADC 0C02ABBD */  jal   func_800AAEF4
/* 0A16E0 800A0AE0 240400DA */   li    $a0, 218
/* 0A16E4 800A0AE4 3C038019 */  lui   $v1, %hi(gPlayerCountSelection2) # $v1, 0x8019
/* 0A16E8 800A0AE8 8063EDF0 */  lb    $v1, %lo(gPlayerCountSelection2)($v1)
/* 0A16EC 800A0AEC 24010001 */  li    $at, 1
/* 0A16F0 800A0AF0 00404825 */  move  $t1, $v0
/* 0A16F4 800A0AF4 1061001E */  beq   $v1, $at, .L800A0B70
/* 0A16F8 800A0AF8 24010002 */   li    $at, 2
/* 0A16FC 800A0AFC 1061001C */  beq   $v1, $at, .L800A0B70
/* 0A1700 800A0B00 3C088015 */   lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 0A1704 800A0B04 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 0A1708 800A0B08 8D030000 */  lw    $v1, ($t0)
/* 0A170C 800A0B0C 3C0FFA00 */  lui   $t7, 0xfa00
/* 0A1710 800A0B10 3C01FF00 */  lui   $at, 0xff00
/* 0A1714 800A0B14 246E0008 */  addiu $t6, $v1, 8
/* 0A1718 800A0B18 AD0E0000 */  sw    $t6, ($t0)
/* 0A171C 800A0B1C AC6F0000 */  sw    $t7, ($v1)
/* 0A1720 800A0B20 8D380020 */  lw    $t8, 0x20($t1)
/* 0A1724 800A0B24 3C07800F */  lui   $a3, %hi(D_800E86C0) # $a3, 0x800f
/* 0A1728 800A0B28 3C050200 */  lui   $a1, %hi(D_02001874) # $a1, 0x200
/* 0A172C 800A0B2C 331900FF */  andi  $t9, $t8, 0xff
/* 0A1730 800A0B30 00195400 */  sll   $t2, $t9, 0x10
/* 0A1734 800A0B34 01415825 */  or    $t3, $t2, $at
/* 0A1738 800A0B38 356C00FF */  ori   $t4, $t3, 0xff
/* 0A173C 800A0B3C AC6C0004 */  sw    $t4, 4($v1)
/* 0A1740 800A0B40 80E786C0 */  lb    $a3, %lo(D_800E86C0)($a3)
/* 0A1744 800A0B44 8D040000 */  lw    $a0, ($t0)
/* 0A1748 800A0B48 24A51874 */  addiu $a1, %lo(D_02001874) # addiu $a1, $a1, 0x1874
/* 0A174C 800A0B4C 00076880 */  sll   $t5, $a3, 2
/* 0A1750 800A0B50 01A76821 */  addu  $t5, $t5, $a3
/* 0A1754 800A0B54 000D6840 */  sll   $t5, $t5, 1
/* 0A1758 800A0B58 25A7007C */  addiu $a3, $t5, 0x7c
/* 0A175C 800A0B5C 0C026E9D */  jal   func_8009BA74
/* 0A1760 800A0B60 24060024 */   li    $a2, 36
/* 0A1764 800A0B64 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 0A1768 800A0B68 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 0A176C 800A0B6C AD020000 */  sw    $v0, ($t0)
.L800A0B70:
/* 0A1770 800A0B70 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A1774 800A0B74 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A1778 800A0B78 03E00008 */  jr    $ra
/* 0A177C 800A0B7C 00000000 */   nop   
