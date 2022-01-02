glabel func_8007A88C
/* 07B48C 8007A88C 00047080 */  sll   $t6, $a0, 2
/* 07B490 8007A890 3C028018 */  lui   $v0, %hi(D_80183DB8) # 0x8018
/* 07B494 8007A894 004E1021 */  addu  $v0, $v0, $t6
/* 07B498 8007A898 8C423DB8 */  lw    $v0, %lo(D_80183DB8)($v0) # 0x3db8($v0)
/* 07B49C 8007A89C 000478C0 */  sll   $t7, $a0, 3
/* 07B4A0 8007A8A0 01E47823 */  subu  $t7, $t7, $a0
/* 07B4A4 8007A8A4 0002C8C0 */  sll   $t9, $v0, 3
/* 07B4A8 8007A8A8 0322C823 */  subu  $t9, $t9, $v0
/* 07B4AC 8007A8AC 000F7900 */  sll   $t7, $t7, 4
/* 07B4B0 8007A8B0 0019C940 */  sll   $t9, $t9, 5
/* 07B4B4 8007A8B4 3C088016 */  lui   $t0, %hi(D_80165CBE) # 0x8016
/* 07B4B8 8007A8B8 01E47823 */  subu  $t7, $t7, $a0
/* 07B4BC 8007A8BC 01194021 */  addu  $t0, $t0, $t9
/* 07B4C0 8007A8C0 85085CBE */  lh    $t0, %lo(D_80165CBE)($t0) # 0x5cbe($t0)
/* 07B4C4 8007A8C4 000F7880 */  sll   $t7, $t7, 2
/* 07B4C8 8007A8C8 3C18800E */  lui   $t8, %hi(gPlayerOne) # $t8, 0x800e
/* 07B4CC 8007A8CC 8F18C4DC */  lw    $t8, %lo(gPlayerOne)($t8)
/* 07B4D0 8007A8D0 01E47823 */  subu  $t7, $t7, $a0
/* 07B4D4 8007A8D4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 07B4D8 8007A8D8 000F78C0 */  sll   $t7, $t7, 3
/* 07B4DC 8007A8DC AFBF0014 */  sw    $ra, 0x14($sp)
/* 07B4E0 8007A8E0 15000007 */  bnez  $t0, .L8007A900
/* 07B4E4 8007A8E4 01F81821 */   addu  $v1, $t7, $t8
/* 07B4E8 8007A8E8 8C6900BC */  lw    $t1, 0xbc($v1)
/* 07B4EC 8007A8EC 00095240 */  sll   $t2, $t1, 9
/* 07B4F0 8007A8F0 05430004 */  bgezl $t2, .L8007A904
/* 07B4F4 8007A8F4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 07B4F8 8007A8F8 0C01E439 */  jal   func_800790E4
/* 07B4FC 8007A8FC 00000000 */   nop
.L8007A900:
/* 07B500 8007A900 8FBF0014 */  lw    $ra, 0x14($sp)
.L8007A904:
/* 07B504 8007A904 27BD0018 */  addiu $sp, $sp, 0x18
/* 07B508 8007A908 03E00008 */  jr    $ra
/* 07B50C 8007A90C 00000000 */   nop
