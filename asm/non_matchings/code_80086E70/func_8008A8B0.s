glabel func_8008A8B0
/* 08B4B0 8008A8B0 3C06800E */  lui   $a2, %hi(gPlayerCountSelection1) # $a2, 0x800e
/* 08B4B4 8008A8B4 8CC6C538 */  lw    $a2, %lo(gPlayerCountSelection1)($a2)
/* 08B4B8 8008A8B8 00043C00 */  sll   $a3, $a0, 0x10
/* 08B4BC 8008A8BC 00077403 */  sra   $t6, $a3, 0x10
/* 08B4C0 8008A8C0 AFA50004 */  sw    $a1, 4($sp)
/* 08B4C4 8008A8C4 00057C00 */  sll   $t7, $a1, 0x10
/* 08B4C8 8008A8C8 000F2C03 */  sra   $a1, $t7, 0x10
/* 08B4CC 8008A8CC 01C03825 */  move  $a3, $t6
/* 08B4D0 8008A8D0 AFA40000 */  sw    $a0, ($sp)
/* 08B4D4 8008A8D4 18C00010 */  blez  $a2, .L8008A918
/* 08B4D8 8008A8D8 00001825 */   move  $v1, $zero
/* 08B4DC 8008A8DC 3C198019 */  lui   $t9, %hi(D_8018CF68) # 0x8019
/* 08B4E0 8008A8E0 2722CF68 */  addiu $v0, $t9, %lo(D_8018CF68) # -0x3098
/* 08B4E4 8008A8E4 00064840 */  sll   $t1, $a2, 1
/* 08B4E8 8008A8E8 01224021 */  addu  $t0, $t1, $v0
/* 08B4EC 8008A8EC 84440000 */  lh    $a0, ($v0)
.L8008A8F0:
/* 08B4F0 8008A8F0 24420002 */  addiu $v0, $v0, 2
/* 08B4F4 8008A8F4 0087082A */  slt   $at, $a0, $a3
/* 08B4F8 8008A8F8 14200004 */  bnez  $at, .L8008A90C
/* 08B4FC 8008A8FC 00A4082A */   slt   $at, $a1, $a0
/* 08B500 8008A900 54200003 */  bnel  $at, $zero, .L8008A910
/* 08B504 8008A904 0048082B */   sltu  $at, $v0, $t0
/* 08B508 8008A908 24030001 */  li    $v1, 1
.L8008A90C:
/* 08B50C 8008A90C 0048082B */  sltu  $at, $v0, $t0
.L8008A910:
/* 08B510 8008A910 5420FFF7 */  bnel  $at, $zero, .L8008A8F0
/* 08B514 8008A914 84440000 */   lh    $a0, ($v0)
.L8008A918:
/* 08B518 8008A918 03E00008 */  jr    $ra
/* 08B51C 8008A91C 00601025 */   move  $v0, $v1
