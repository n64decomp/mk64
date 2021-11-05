glabel gen_random_item
/* 07B9A8 8007ADA8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 07B9AC 8007ADAC AFBF0014 */  sw    $ra, 0x14($sp)
/* 07B9B0 8007ADB0 AFA40020 */  sw    $a0, 0x20($sp)
/* 07B9B4 8007ADB4 AFA50024 */  sw    $a1, 0x24($sp)
/* 07B9B8 8007ADB8 0C0ADF8D */  jal   random_int
/* 07B9BC 8007ADBC 24040064 */   li    $a0, 100
/* 07B9C0 8007ADC0 3C058016 */  lui   $a1, %hi(D_801658FD) # $a1, 0x8016
/* 07B9C4 8007ADC4 24A558FD */  addiu $a1, %lo(D_801658FD) # addiu $a1, $a1, 0x58fd
/* 07B9C8 8007ADC8 3C0F8016 */  lui   $t7, %hi(D_801658FF) # $t7, 0x8016
/* 07B9CC 8007ADCC 91EF58FF */  lbu   $t7, %lo(D_801658FF)($t7)
/* 07B9D0 8007ADD0 90AE0000 */  lbu   $t6, ($a1)
/* 07B9D4 8007ADD4 3C088019 */  lui   $t0, %hi(gRaceFrameCounter) # $t0, 0x8019
/* 07B9D8 8007ADD8 8D08D3FC */  lw    $t0, %lo(gRaceFrameCounter)($t0)
/* 07B9DC 8007ADDC 01CFC021 */  addu  $t8, $t6, $t7
/* 07B9E0 8007ADE0 0058C821 */  addu  $t9, $v0, $t8
/* 07B9E4 8007ADE4 24010064 */  li    $at, 100
/* 07B9E8 8007ADE8 03284821 */  addu  $t1, $t9, $t0
/* 07B9EC 8007ADEC 0121001B */  divu  $zero, $t1, $at
/* 07B9F0 8007ADF0 00005010 */  mfhi  $t2
/* 07B9F4 8007ADF4 A0AA0000 */  sb    $t2, ($a1)
/* 07B9F8 8007ADF8 3C03800E */  lui   $v1, %hi(gModeSelection) # $v1, 0x800e
/* 07B9FC 8007ADFC 8C63C53C */  lw    $v1, %lo(gModeSelection)($v1)
/* 07BA00 8007AE00 24040002 */  li    $a0, 2
/* 07BA04 8007AE04 3C02800E */  lui   $v0, %hi(gPlayerCountSelection1) # $v0, 0x800e
/* 07BA08 8007AE08 1483002A */  bne   $a0, $v1, .L8007AEB4
/* 07BA0C 8007AE0C 24010003 */   li    $at, 3
/* 07BA10 8007AE10 8C42C538 */  lw    $v0, %lo(gPlayerCountSelection1)($v0)
/* 07BA14 8007AE14 24010003 */  li    $at, 3
/* 07BA18 8007AE18 10440008 */  beq   $v0, $a0, .L8007AE3C
/* 07BA1C 8007AE1C 00000000 */   nop   
/* 07BA20 8007AE20 1041000D */  beq   $v0, $at, .L8007AE58
/* 07BA24 8007AE24 3C040D01 */   lui   $a0, 0xd01
/* 07BA28 8007AE28 24010004 */  li    $at, 4
/* 07BA2C 8007AE2C 10410010 */  beq   $v0, $at, .L8007AE70
/* 07BA30 8007AE30 3C040D01 */   lui   $a0, 0xd01
/* 07BA34 8007AE34 10000014 */  b     .L8007AE88
/* 07BA38 8007AE38 87AB0022 */   lh    $t3, 0x22($sp)
.L8007AE3C:
/* 07BA3C 8007AE3C 3C040D01 */  lui   $a0, %hi(D_0D008790) # $a0, 0xd01
/* 07BA40 8007AE40 0C0A9EF5 */  jal   lookup_item
/* 07BA44 8007AE44 24848790 */   addiu $a0, %lo(D_0D008790) # addiu $a0, $a0, -0x7870
/* 07BA48 8007AE48 3C058016 */  lui   $a1, %hi(D_801658FD) # $a1, 0x8016
/* 07BA4C 8007AE4C AFA20018 */  sw    $v0, 0x18($sp)
/* 07BA50 8007AE50 1000000C */  b     .L8007AE84
/* 07BA54 8007AE54 24A558FD */   addiu $a1, %lo(D_801658FD) # addiu $a1, $a1, 0x58fd
.L8007AE58:
/* 07BA58 8007AE58 0C0A9EF5 */  jal   lookup_item
/* 07BA5C 8007AE5C 24848858 */   addiu $a0, $a0, -0x77a8
/* 07BA60 8007AE60 3C058016 */  lui   $a1, %hi(D_801658FD) # $a1, 0x8016
/* 07BA64 8007AE64 AFA20018 */  sw    $v0, 0x18($sp)
/* 07BA68 8007AE68 10000006 */  b     .L8007AE84
/* 07BA6C 8007AE6C 24A558FD */   addiu $a1, %lo(D_801658FD) # addiu $a1, $a1, 0x58fd
.L8007AE70:
/* 07BA70 8007AE70 0C0A9EF5 */  jal   lookup_item
/* 07BA74 8007AE74 24848984 */   addiu $a0, $a0, -0x767c
/* 07BA78 8007AE78 3C058016 */  lui   $a1, %hi(D_801658FD) # $a1, 0x8016
/* 07BA7C 8007AE7C AFA20018 */  sw    $v0, 0x18($sp)
/* 07BA80 8007AE80 24A558FD */  addiu $a1, %lo(D_801658FD) # addiu $a1, $a1, 0x58fd
.L8007AE84:
/* 07BA84 8007AE84 87AB0022 */  lh    $t3, 0x22($sp)
.L8007AE88:
/* 07BA88 8007AE88 8FAD0018 */  lw    $t5, 0x18($sp)
/* 07BA8C 8007AE8C 90AF0000 */  lbu   $t7, ($a1)
/* 07BA90 8007AE90 000B6080 */  sll   $t4, $t3, 2
/* 07BA94 8007AE94 018B6023 */  subu  $t4, $t4, $t3
/* 07BA98 8007AE98 000C60C0 */  sll   $t4, $t4, 3
/* 07BA9C 8007AE9C 018B6021 */  addu  $t4, $t4, $t3
/* 07BAA0 8007AEA0 000C6080 */  sll   $t4, $t4, 2
/* 07BAA4 8007AEA4 018D7021 */  addu  $t6, $t4, $t5
/* 07BAA8 8007AEA8 01CFC021 */  addu  $t8, $t6, $t7
/* 07BAAC 8007AEAC 1000001F */  b     .L8007AF2C
/* 07BAB0 8007AEB0 93030000 */   lbu   $v1, ($t8)
.L8007AEB4:
/* 07BAB4 8007AEB4 14610009 */  bne   $v1, $at, .L8007AEDC
/* 07BAB8 8007AEB8 87A90026 */   lh    $t1, 0x26($sp)
/* 07BABC 8007AEBC 3C040D01 */  lui   $a0, %hi(D_0D008B14) # $a0, 0xd01
/* 07BAC0 8007AEC0 0C0A9EF5 */  jal   lookup_item
/* 07BAC4 8007AEC4 24848B14 */   addiu $a0, %lo(D_0D008B14) # addiu $a0, $a0, -0x74ec
/* 07BAC8 8007AEC8 3C198016 */  lui   $t9, %hi(D_801658FD) # $t9, 0x8016
/* 07BACC 8007AECC 933958FD */  lbu   $t9, %lo(D_801658FD)($t9)
/* 07BAD0 8007AED0 03224021 */  addu  $t0, $t9, $v0
/* 07BAD4 8007AED4 10000015 */  b     .L8007AF2C
/* 07BAD8 8007AED8 91030000 */   lbu   $v1, ($t0)
.L8007AEDC:
/* 07BADC 8007AEDC 15200006 */  bnez  $t1, .L8007AEF8
/* 07BAE0 8007AEE0 3C040D01 */   lui   $a0, 0xd01
/* 07BAE4 8007AEE4 3C040D01 */  lui   $a0, %hi(D_0D008150) # $a0, 0xd01
/* 07BAE8 8007AEE8 0C0A9EF5 */  jal   lookup_item
/* 07BAEC 8007AEEC 24848150 */   addiu $a0, %lo(D_0D008150) # addiu $a0, $a0, -0x7eb0
/* 07BAF0 8007AEF0 10000004 */  b     .L8007AF04
/* 07BAF4 8007AEF4 87AA0022 */   lh    $t2, 0x22($sp)
.L8007AEF8:
/* 07BAF8 8007AEF8 0C0A9EF5 */  jal   lookup_item
/* 07BAFC 8007AEFC 24848470 */   addiu $a0, $a0, -0x7b90
/* 07BB00 8007AF00 87AA0022 */  lh    $t2, 0x22($sp)
.L8007AF04:
/* 07BB04 8007AF04 3C0D8016 */  lui   $t5, %hi(D_801658FD) # $t5, 0x8016
/* 07BB08 8007AF08 91AD58FD */  lbu   $t5, %lo(D_801658FD)($t5)
/* 07BB0C 8007AF0C 000A5880 */  sll   $t3, $t2, 2
/* 07BB10 8007AF10 016A5823 */  subu  $t3, $t3, $t2
/* 07BB14 8007AF14 000B58C0 */  sll   $t3, $t3, 3
/* 07BB18 8007AF18 016A5821 */  addu  $t3, $t3, $t2
/* 07BB1C 8007AF1C 000B5880 */  sll   $t3, $t3, 2
/* 07BB20 8007AF20 01626021 */  addu  $t4, $t3, $v0
/* 07BB24 8007AF24 018D7021 */  addu  $t6, $t4, $t5
/* 07BB28 8007AF28 91C30000 */  lbu   $v1, ($t6)
.L8007AF2C:
/* 07BB2C 8007AF2C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 07BB30 8007AF30 27BD0020 */  addiu $sp, $sp, 0x20
/* 07BB34 8007AF34 00601025 */  move  $v0, $v1
/* 07BB38 8007AF38 03E00008 */  jr    $ra
/* 07BB3C 8007AF3C 00000000 */   nop   
