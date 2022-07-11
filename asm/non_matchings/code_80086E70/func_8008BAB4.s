glabel func_8008BAB4
/* 08C6B4 8008BAB4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 08C6B8 8008BAB8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 08C6BC 8008BABC AFA40018 */  sw    $a0, 0x18($sp)
/* 08C6C0 8008BAC0 AFA60020 */  sw    $a2, 0x20($sp)
/* 08C6C4 8008BAC4 AFA5001C */  sw    $a1, 0x1c($sp)
/* 08C6C8 8008BAC8 0C0ADF8D */  jal   random_int
/* 08C6CC 8008BACC 97A40022 */   lhu   $a0, 0x22($sp)
/* 08C6D0 8008BAD0 97AF0022 */  lhu   $t7, 0x22($sp)
/* 08C6D4 8008BAD4 87AE001E */  lh    $t6, 0x1e($sp)
/* 08C6D8 8008BAD8 8FAB0018 */  lw    $t3, 0x18($sp)
/* 08C6DC 8008BADC 05E10003 */  bgez  $t7, .L8008BAEC
/* 08C6E0 8008BAE0 000FC043 */   sra   $t8, $t7, 1
/* 08C6E4 8008BAE4 25E10001 */  addiu $at, $t7, 1
/* 08C6E8 8008BAE8 0001C043 */  sra   $t8, $at, 1
.L8008BAEC:
/* 08C6EC 8008BAEC 0058C823 */  subu  $t9, $v0, $t8
/* 08C6F0 8008BAF0 00194400 */  sll   $t0, $t9, 0x10
/* 08C6F4 8008BAF4 00084C03 */  sra   $t1, $t0, 0x10
/* 08C6F8 8008BAF8 01C95021 */  addu  $t2, $t6, $t1
/* 08C6FC 8008BAFC 448A2000 */  mtc1  $t2, $f4
/* 08C700 8008BB00 000B60C0 */  sll   $t4, $t3, 3
/* 08C704 8008BB04 8FBF0014 */  lw    $ra, 0x14($sp)
/* 08C708 8008BB08 468021A0 */  cvt.s.w $f6, $f4
/* 08C70C 8008BB0C 018B6023 */  subu  $t4, $t4, $t3
/* 08C710 8008BB10 000C6140 */  sll   $t4, $t4, 5
/* 08C714 8008BB14 3C018016 */  lui   $at, %hi(D_80165C2C)
/* 08C718 8008BB18 002C0821 */  addu  $at, $at, $t4
/* 08C71C 8008BB1C 27BD0018 */  addiu $sp, $sp, 0x18
/* 08C720 8008BB20 03E00008 */  jr    $ra
/* 08C724 8008BB24 E4265C2C */   swc1  $f6, %lo(D_80165C2C)($at)
