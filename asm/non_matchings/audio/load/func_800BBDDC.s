glabel func_800BBDDC
/* 0BC9DC 800BBDDC 3C0F803B */  lui   $t7, %hi(D_803B707C) # $t7, 0x803b
/* 0BC9E0 800BBDE0 95EF707C */  lhu   $t7, %lo(D_803B707C)($t7)
/* 0BC9E4 800BBDE4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0BC9E8 800BBDE8 AFA5002C */  sw    $a1, 0x2c($sp)
/* 0BC9EC 800BBDEC 30AE00FF */  andi  $t6, $a1, 0xff
/* 0BC9F0 800BBDF0 008F082B */  sltu  $at, $a0, $t7
/* 0BC9F4 800BBDF4 01C02825 */  move  $a1, $t6
/* 0BC9F8 800BBDF8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0BC9FC 800BBDFC 10200038 */  beqz  $at, .L800BBEE0
/* 0BCA00 800BBE00 00803025 */   move  $a2, $a0
/* 0BCA04 800BBE04 3C18803B */  lui   $t8, %hi(D_803B706C) # $t8, 0x803b
/* 0BCA08 800BBE08 8F18706C */  lw    $t8, %lo(D_803B706C)($t8)
/* 0BCA0C 800BBE0C 0004C8C0 */  sll   $t9, $a0, 3
/* 0BCA10 800BBE10 3C091971 */  lui   $t1, (0x19710515 >> 16) # lui $t1, 0x1971
/* 0BCA14 800BBE14 03191021 */  addu  $v0, $t8, $t9
/* 0BCA18 800BBE18 8C480008 */  lw    $t0, 8($v0)
/* 0BCA1C 800BBE1C 3C0A800F */  lui   $t2, %hi(D_800EA5DC) # $t2, 0x800f
/* 0BCA20 800BBE20 254AA5DC */  addiu $t2, %lo(D_800EA5DC) # addiu $t2, $t2, -0x5a24
/* 0BCA24 800BBE24 15000002 */  bnez  $t0, .L800BBE30
/* 0BCA28 800BBE28 35290515 */   ori   $t1, (0x19710515 & 0xFFFF) # ori $t1, $t1, 0x515
/* 0BCA2C 800BBE2C 8C460004 */  lw    $a2, 4($v0)
.L800BBE30:
/* 0BCA30 800BBE30 30AB0002 */  andi  $t3, $a1, 2
/* 0BCA34 800BBE34 AD490000 */  sw    $t1, ($t2)
/* 0BCA38 800BBE38 11600008 */  beqz  $t3, .L800BBE5C
/* 0BCA3C 800BBE3C 00A01825 */   move  $v1, $a1
/* 0BCA40 800BBE40 00C02025 */  move  $a0, $a2
/* 0BCA44 800BBE44 27A50023 */  addiu $a1, $sp, 0x23
/* 0BCA48 800BBE48 AFA3001C */  sw    $v1, 0x1c($sp)
/* 0BCA4C 800BBE4C 0C02EF34 */  jal   func_800BBCD0
/* 0BCA50 800BBE50 AFA60028 */   sw    $a2, 0x28($sp)
/* 0BCA54 800BBE54 8FA3001C */  lw    $v1, 0x1c($sp)
/* 0BCA58 800BBE58 8FA60028 */  lw    $a2, 0x28($sp)
.L800BBE5C:
/* 0BCA5C 800BBE5C 306C0001 */  andi  $t4, $v1, 1
/* 0BCA60 800BBE60 1180001A */  beqz  $t4, .L800BBECC
/* 0BCA64 800BBE64 3C0D803B */   lui   $t5, %hi(D_803B03C0) # 0x803b
/* 0BCA68 800BBE68 01A66821 */  addu  $t5, $t5, $a2
/* 0BCA6C 800BBE6C 91AD03C0 */  lbu   $t5, %lo(D_803B03C0)($t5) # 0x3c0($t5)
/* 0BCA70 800BBE70 24010001 */  li    $at, 1
/* 0BCA74 800BBE74 00002025 */  move  $a0, $zero
/* 0BCA78 800BBE78 29AE0002 */  slti  $t6, $t5, 2
/* 0BCA7C 800BBE7C 39CE0001 */  xori  $t6, $t6, 1
/* 0BCA80 800BBE80 15C10007 */  bne   $t6, $at, .L800BBEA0
/* 0BCA84 800BBE84 00001825 */   move  $v1, $zero
/* 0BCA88 800BBE88 24050002 */  li    $a1, 2
/* 0BCA8C 800BBE8C 0C02E6A4 */  jal   func_800B9A90
/* 0BCA90 800BBE90 AFA60028 */   sw    $a2, 0x28($sp)
/* 0BCA94 800BBE94 8FA60028 */  lw    $a2, 0x28($sp)
/* 0BCA98 800BBE98 10000001 */  b     .L800BBEA0
/* 0BCA9C 800BBE9C 00401825 */   move  $v1, $v0
.L800BBEA0:
/* 0BCAA0 800BBEA0 1460000A */  bnez  $v1, .L800BBECC
/* 0BCAA4 800BBEA4 00C02025 */   move  $a0, $a2
/* 0BCAA8 800BBEA8 0C02EE67 */  jal   func_800BB99C
/* 0BCAAC 800BBEAC 24050002 */   li    $a1, 2
/* 0BCAB0 800BBEB0 14400006 */  bnez  $v0, .L800BBECC
/* 0BCAB4 800BBEB4 3C0F7655 */   lui   $t7, (0x76557364 >> 16) # lui $t7, 0x7655
/* 0BCAB8 800BBEB8 3C18800F */  lui   $t8, %hi(D_800EA5DC) # $t8, 0x800f
/* 0BCABC 800BBEBC 2718A5DC */  addiu $t8, %lo(D_800EA5DC) # addiu $t8, $t8, -0x5a24
/* 0BCAC0 800BBEC0 35EF7364 */  ori   $t7, (0x76557364 & 0xFFFF) # ori $t7, $t7, 0x7364
/* 0BCAC4 800BBEC4 10000006 */  b     .L800BBEE0
/* 0BCAC8 800BBEC8 AF0F0000 */   sw    $t7, ($t8)
.L800BBECC:
/* 0BCACC 800BBECC 3C197655 */  lui   $t9, (0x76557364 >> 16) # lui $t9, 0x7655
/* 0BCAD0 800BBED0 3C08800F */  lui   $t0, %hi(D_800EA5DC) # $t0, 0x800f
/* 0BCAD4 800BBED4 2508A5DC */  addiu $t0, %lo(D_800EA5DC) # addiu $t0, $t0, -0x5a24
/* 0BCAD8 800BBED8 37397364 */  ori   $t9, (0x76557364 & 0xFFFF) # ori $t9, $t9, 0x7364
/* 0BCADC 800BBEDC AD190000 */  sw    $t9, ($t0)
.L800BBEE0:
/* 0BCAE0 800BBEE0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0BCAE4 800BBEE4 27BD0028 */  addiu $sp, $sp, 0x28
/* 0BCAE8 800BBEE8 03E00008 */  jr    $ra
/* 0BCAEC 800BBEEC 00000000 */   nop   
