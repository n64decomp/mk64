glabel func_80077D5C
/* 07895C 80077D5C 3C0E8016 */  lui   $t6, %hi(D_8016559C) # $t6, 0x8016
/* 078960 80077D60 8DCE559C */  lw    $t6, %lo(D_8016559C)($t6)
/* 078964 80077D64 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 078968 80077D68 AFBF0014 */  sw    $ra, 0x14($sp)
/* 07896C 80077D6C 15C00028 */  bnez  $t6, .L80077E10
/* 078970 80077D70 3C068019 */   lui   $a2, %hi(D_8018D1F0) # $a2, 0x8019
/* 078974 80077D74 8CC6D1F0 */  lw    $a2, %lo(D_8018D1F0)($a2)
/* 078978 80077D78 00002825 */  move  $a1, $zero
/* 07897C 80077D7C 3C028019 */  lui   $v0, %hi(D_8018D17C) # $v0, 0x8019
/* 078980 80077D80 18C00023 */  blez  $a2, .L80077E10
/* 078984 80077D84 00047880 */   sll   $t7, $a0, 2
/* 078988 80077D88 3C188019 */  lui   $t8, %hi(D_8018CC80) # $t8, 0x8019
/* 07898C 80077D8C 2718CC80 */  addiu $t8, %lo(D_8018CC80) # addiu $t8, $t8, -0x3380
/* 078990 80077D90 3C088016 */  lui   $t0, %hi(D_80165C18) # $t0, 0x8016
/* 078994 80077D94 3C038019 */  lui   $v1, %hi(D_8018D17C) # $v1, 0x8019
/* 078998 80077D98 2463D17C */  addiu $v1, %lo(D_8018D17C) # addiu $v1, $v1, -0x2e84
/* 07899C 80077D9C 25085C18 */  addiu $t0, %lo(D_80165C18) # addiu $t0, $t0, 0x5c18
/* 0789A0 80077DA0 01F83821 */  addu  $a3, $t7, $t8
/* 0789A4 80077DA4 8442D17C */  lh    $v0, %lo(D_8018D17C)($v0)
/* 0789A8 80077DA8 240900E0 */  li    $t1, 224
/* 0789AC 80077DAC 24590001 */  addiu $t9, $v0, 1
.L80077DB0:
/* 0789B0 80077DB0 A4790000 */  sh    $t9, ($v1)
/* 0789B4 80077DB4 84620000 */  lh    $v0, ($v1)
/* 0789B8 80077DB8 24A50001 */  addiu $a1, $a1, 1
/* 0789BC 80077DBC 0046082A */  slt   $at, $v0, $a2
/* 0789C0 80077DC0 54200004 */  bnel  $at, $zero, .L80077DD4
/* 0789C4 80077DC4 00025080 */   sll   $t2, $v0, 2
/* 0789C8 80077DC8 A4600000 */  sh    $zero, ($v1)
/* 0789CC 80077DCC 84620000 */  lh    $v0, ($v1)
/* 0789D0 80077DD0 00025080 */  sll   $t2, $v0, 2
.L80077DD4:
/* 0789D4 80077DD4 00EA5821 */  addu  $t3, $a3, $t2
/* 0789D8 80077DD8 8D640000 */  lw    $a0, ($t3)
/* 0789DC 80077DDC 00A6082A */  slt   $at, $a1, $a2
/* 0789E0 80077DE0 00890019 */  multu $a0, $t1
/* 0789E4 80077DE4 00006012 */  mflo  $t4
/* 0789E8 80077DE8 010C6821 */  addu  $t5, $t0, $t4
/* 0789EC 80077DEC 85AE00A6 */  lh    $t6, 0xa6($t5)
/* 0789F0 80077DF0 15C00005 */  bnez  $t6, .L80077E08
/* 0789F4 80077DF4 00000000 */   nop
/* 0789F8 80077DF8 0C01C8E9 */  jal   func_800723A4
/* 0789FC 80077DFC 24050001 */   li    $a1, 1
/* 078A00 80077E00 10000004 */  b     .L80077E14
/* 078A04 80077E04 8FBF0014 */   lw    $ra, 0x14($sp)
.L80077E08:
/* 078A08 80077E08 5420FFE9 */  bnel  $at, $zero, .L80077DB0
/* 078A0C 80077E0C 24590001 */   addiu $t9, $v0, 1
.L80077E10:
/* 078A10 80077E10 8FBF0014 */  lw    $ra, 0x14($sp)
.L80077E14:
/* 078A14 80077E14 27BD0018 */  addiu $sp, $sp, 0x18
/* 078A18 80077E18 03E00008 */  jr    $ra
/* 078A1C 80077E1C 00000000 */   nop
