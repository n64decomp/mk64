glabel func_8008FDA8
/* 0909A8 8008FDA8 AFA50004 */  sw    $a1, 4($sp)
/* 0909AC 8008FDAC 848E0044 */  lh    $t6, 0x44($a0)
/* 0909B0 8008FDB0 24050048 */  li    $a1, 72
/* 0909B4 8008FDB4 00001025 */  move  $v0, $zero
/* 0909B8 8008FDB8 35CF0200 */  ori   $t7, $t6, 0x200
/* 0909BC 8008FDBC A48F0044 */  sh    $t7, 0x44($a0)
.L8008FDC0:
/* 0909C0 8008FDC0 00450019 */  multu $v0, $a1
/* 0909C4 8008FDC4 24420001 */  addiu $v0, $v0, 1
/* 0909C8 8008FDC8 0002CC00 */  sll   $t9, $v0, 0x10
/* 0909CC 8008FDCC 00191403 */  sra   $v0, $t9, 0x10
/* 0909D0 8008FDD0 2841000A */  slti  $at, $v0, 0xa
/* 0909D4 8008FDD4 0000C012 */  mflo  $t8
/* 0909D8 8008FDD8 00981821 */  addu  $v1, $a0, $t8
/* 0909DC 8008FDDC A4600274 */  sh    $zero, 0x274($v1)
/* 0909E0 8008FDE0 A4600276 */  sh    $zero, 0x276($v1)
/* 0909E4 8008FDE4 1420FFF6 */  bnez  $at, .L8008FDC0
/* 0909E8 8008FDE8 A460026A */   sh    $zero, 0x26a($v1)
/* 0909EC 8008FDEC 03E00008 */  jr    $ra
/* 0909F0 8008FDF0 00000000 */   nop   
