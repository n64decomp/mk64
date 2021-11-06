glabel func_800BAC04
/* 0BB804 800BAC04 3C05803B */  lui   $a1, %hi(D_803B6E5C) # $a1, 0x803b
/* 0BB808 800BAC08 24A56E5C */  addiu $a1, %lo(D_803B6E5C) # addiu $a1, $a1, 0x6e5c
/* 0BB80C 800BAC0C 8CA30000 */  lw    $v1, ($a1)
/* 0BB810 800BAC10 3C04803B */  lui   $a0, %hi(D_803B6758) # $a0, 0x803b
/* 0BB814 800BAC14 24846758 */  addiu $a0, %lo(D_803B6758) # addiu $a0, $a0, 0x6758
/* 0BB818 800BAC18 10600018 */  beqz  $v1, .L800BAC7C
/* 0BB81C 800BAC1C 00001025 */   move  $v0, $zero
/* 0BB820 800BAC20 3C07803B */  lui   $a3, %hi(D_803B6E68) # $a3, 0x803b
/* 0BB824 800BAC24 3C06803B */  lui   $a2, %hi(D_803B706A) # $a2, 0x803b
/* 0BB828 800BAC28 24C6706A */  addiu $a2, %lo(D_803B706A) # addiu $a2, $a2, 0x706a
/* 0BB82C 800BAC2C 24E76E68 */  addiu $a3, %lo(D_803B6E68) # addiu $a3, $a3, 0x6e68
/* 0BB830 800BAC30 9083000E */  lbu   $v1, 0xe($a0)
.L800BAC34:
/* 0BB834 800BAC34 1060000B */  beqz  $v1, .L800BAC64
/* 0BB838 800BAC38 246EFFFF */   addiu $t6, $v1, -1
/* 0BB83C 800BAC3C 31CF00FF */  andi  $t7, $t6, 0xff
/* 0BB840 800BAC40 15E00008 */  bnez  $t7, .L800BAC64
/* 0BB844 800BAC44 A08E000E */   sb    $t6, 0xe($a0)
/* 0BB848 800BAC48 90C30000 */  lbu   $v1, ($a2)
/* 0BB84C 800BAC4C 90D80000 */  lbu   $t8, ($a2)
/* 0BB850 800BAC50 00E3C821 */  addu  $t9, $a3, $v1
/* 0BB854 800BAC54 A3220000 */  sb    $v0, ($t9)
/* 0BB858 800BAC58 24680001 */  addiu $t0, $v1, 1
/* 0BB85C 800BAC5C A0C80000 */  sb    $t0, ($a2)
/* 0BB860 800BAC60 A098000D */  sb    $t8, 0xd($a0)
.L800BAC64:
/* 0BB864 800BAC64 8CA30000 */  lw    $v1, ($a1)
/* 0BB868 800BAC68 24420001 */  addiu $v0, $v0, 1
/* 0BB86C 800BAC6C 24840010 */  addiu $a0, $a0, 0x10
/* 0BB870 800BAC70 0043082B */  sltu  $at, $v0, $v1
/* 0BB874 800BAC74 5420FFEF */  bnel  $at, $zero, .L800BAC34
/* 0BB878 800BAC78 9083000E */   lbu   $v1, 0xe($a0)
.L800BAC7C:
/* 0BB87C 800BAC7C 3C05803B */  lui   $a1, %hi(D_803B6E58) # $a1, 0x803b
/* 0BB880 800BAC80 24A56E58 */  addiu $a1, %lo(D_803B6E58) # addiu $a1, $a1, 0x6e58
/* 0BB884 800BAC84 8CA90000 */  lw    $t1, ($a1)
/* 0BB888 800BAC88 00601025 */  move  $v0, $v1
/* 0BB88C 800BAC8C 00035100 */  sll   $t2, $v1, 4
/* 0BB890 800BAC90 0069082B */  sltu  $at, $v1, $t1
/* 0BB894 800BAC94 1020001A */  beqz  $at, .L800BAD00
/* 0BB898 800BAC98 3C0B803B */   lui   $t3, %hi(D_803B6758) # $t3, 0x803b
/* 0BB89C 800BAC9C 256B6758 */  addiu $t3, %lo(D_803B6758) # addiu $t3, $t3, 0x6758
/* 0BB8A0 800BACA0 3C07803B */  lui   $a3, %hi(D_803B6F68) # $a3, 0x803b
/* 0BB8A4 800BACA4 3C06803B */  lui   $a2, %hi(D_803B706B) # $a2, 0x803b
/* 0BB8A8 800BACA8 24C6706B */  addiu $a2, %lo(D_803B706B) # addiu $a2, $a2, 0x706b
/* 0BB8AC 800BACAC 24E76F68 */  addiu $a3, %lo(D_803B6F68) # addiu $a3, $a3, 0x6f68
/* 0BB8B0 800BACB0 014B2021 */  addu  $a0, $t2, $t3
/* 0BB8B4 800BACB4 9083000E */  lbu   $v1, 0xe($a0)
.L800BACB8:
/* 0BB8B8 800BACB8 1060000B */  beqz  $v1, .L800BACE8
/* 0BB8BC 800BACBC 246CFFFF */   addiu $t4, $v1, -1
/* 0BB8C0 800BACC0 318D00FF */  andi  $t5, $t4, 0xff
/* 0BB8C4 800BACC4 15A00008 */  bnez  $t5, .L800BACE8
/* 0BB8C8 800BACC8 A08C000E */   sb    $t4, 0xe($a0)
/* 0BB8CC 800BACCC 90C30000 */  lbu   $v1, ($a2)
/* 0BB8D0 800BACD0 90CE0000 */  lbu   $t6, ($a2)
/* 0BB8D4 800BACD4 00E37821 */  addu  $t7, $a3, $v1
/* 0BB8D8 800BACD8 A1E20000 */  sb    $v0, ($t7)
/* 0BB8DC 800BACDC 24780001 */  addiu $t8, $v1, 1
/* 0BB8E0 800BACE0 A0D80000 */  sb    $t8, ($a2)
/* 0BB8E4 800BACE4 A08E000D */  sb    $t6, 0xd($a0)
.L800BACE8:
/* 0BB8E8 800BACE8 8CB90000 */  lw    $t9, ($a1)
/* 0BB8EC 800BACEC 24420001 */  addiu $v0, $v0, 1
/* 0BB8F0 800BACF0 24840010 */  addiu $a0, $a0, 0x10
/* 0BB8F4 800BACF4 0059082B */  sltu  $at, $v0, $t9
/* 0BB8F8 800BACF8 5420FFEF */  bnel  $at, $zero, .L800BACB8
/* 0BB8FC 800BACFC 9083000E */   lbu   $v1, 0xe($a0)
.L800BAD00:
/* 0BB900 800BAD00 3C01803B */  lui   $at, %hi(D_803B6E60)
/* 0BB904 800BAD04 03E00008 */  jr    $ra
/* 0BB908 800BAD08 AC206E60 */   sw    $zero, %lo(D_803B6E60)($at)
