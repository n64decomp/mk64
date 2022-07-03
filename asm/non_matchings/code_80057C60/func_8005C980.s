glabel func_8005C980
/* 05D580 8005C980 27BDFFF8 */  addiu $sp, $sp, -8
/* 05D584 8005C984 8FA60000 */  lw    $a2, ($sp)
/* 05D588 8005C988 3C07800E */  lui   $a3, %hi(gPlayerOne) # $a3, 0x800e
/* 05D58C 8005C98C 8CE7C4DC */  lw    $a3, %lo(gPlayerOne)($a3)
/* 05D590 8005C990 000670C0 */  sll   $t6, $a2, 3
/* 05D594 8005C994 01C67023 */  subu  $t6, $t6, $a2
/* 05D598 8005C998 000E7100 */  sll   $t6, $t6, 4
/* 05D59C 8005C99C 01C67023 */  subu  $t6, $t6, $a2
/* 05D5A0 8005C9A0 000E7080 */  sll   $t6, $t6, 2
/* 05D5A4 8005C9A4 01C67023 */  subu  $t6, $t6, $a2
/* 05D5A8 8005C9A8 000E70C0 */  sll   $t6, $t6, 3
/* 05D5AC 8005C9AC 3C048016 */  lui   $a0, %hi(gPlayerPositions) # $a0, 0x8016
/* 05D5B0 8005C9B0 3C058016 */  lui   $a1, %hi(D_80165590) # $a1, 0x8016
/* 05D5B4 8005C9B4 3C0B8016 */  lui   $t3, %hi(D_80165794) # $t3, 0x8016
/* 05D5B8 8005C9B8 3C0A8019 */  lui   $t2, %hi(D_8018CF28) # $t2, 0x8019
/* 05D5BC 8005C9BC 3C098019 */  lui   $t1, %hi(D_8018CF98) # $t1, 0x8019
/* 05D5C0 8005C9C0 2529CF98 */  addiu $t1, %lo(D_8018CF98) # addiu $t1, $t1, -0x3068
/* 05D5C4 8005C9C4 254ACF28 */  addiu $t2, %lo(D_8018CF28) # addiu $t2, $t2, -0x30d8
/* 05D5C8 8005C9C8 256B5794 */  addiu $t3, %lo(D_80165794) # addiu $t3, $t3, 0x5794
/* 05D5CC 8005C9CC 8CA55590 */  lw    $a1, %lo(D_80165590)($a1)
/* 05D5D0 8005C9D0 248443B8 */  addiu $a0, %lo(gPlayerPositions) # addiu $a0, $a0, 0x43b8
/* 05D5D4 8005C9D4 00001025 */  move  $v0, $zero
/* 05D5D8 8005C9D8 01C74021 */  addu  $t0, $t6, $a3
.L8005C9DC:
/* 05D5DC 8005C9DC 14A00004 */  bnez  $a1, .L8005C9F0
/* 05D5E0 8005C9E0 8C830000 */   lw    $v1, ($a0)
/* 05D5E4 8005C9E4 00027840 */  sll   $t7, $v0, 1
/* 05D5E8 8005C9E8 012FC021 */  addu  $t8, $t1, $t7
/* 05D5EC 8005C9EC A7030000 */  sh    $v1, ($t8)
.L8005C9F0:
/* 05D5F0 8005C9F0 0003C880 */  sll   $t9, $v1, 2
/* 05D5F4 8005C9F4 01596021 */  addu  $t4, $t2, $t9
/* 05D5F8 8005C9F8 14C00002 */  bnez  $a2, .L8005CA04
/* 05D5FC 8005C9FC AD880000 */   sw    $t0, ($t4)
/* 05D600 8005CA00 A5630000 */  sh    $v1, ($t3)
.L8005CA04:
/* 05D604 8005CA04 24420001 */  addiu $v0, $v0, 1
/* 05D608 8005CA08 28410008 */  slti  $at, $v0, 8
/* 05D60C 8005CA0C 1420FFF3 */  bnez  $at, .L8005C9DC
/* 05D610 8005CA10 24840004 */   addiu $a0, $a0, 4
/* 05D614 8005CA14 3C048016 */  lui   $a0, %hi(gGPCurrentRacePlayerIdByRank) # $a0, 0x8016
/* 05D618 8005CA18 3C088019 */  lui   $t0, %hi(D_8018CF50) # $t0, 0x8019
/* 05D61C 8005CA1C 3C0B8019 */  lui   $t3, %hi(D_8018CF60) # $t3, 0x8019
/* 05D620 8005CA20 3C098019 */  lui   $t1, %hi(gGPCurrentRaceRanks) # $t1, 0x8019
/* 05D624 8005CA24 2529CF80 */  addiu $t1, %lo(gGPCurrentRaceRanks) # addiu $t1, $t1, -0x3080
/* 05D628 8005CA28 256BCF60 */  addiu $t3, %lo(D_8018CF60) # addiu $t3, $t3, -0x30a0
/* 05D62C 8005CA2C 2508CF50 */  addiu $t0, %lo(D_8018CF50) # addiu $t0, $t0, -0x30b0
/* 05D630 8005CA30 24844360 */  addiu $a0, %lo(gGPCurrentRacePlayerIdByRank) # addiu $a0, $a0, 0x4360
/* 05D634 8005CA34 00001825 */  move  $v1, $zero
/* 05D638 8005CA38 240A0DD8 */  li    $t2, 3544
.L8005CA3C:
/* 05D63C 8005CA3C 84820000 */  lh    $v0, ($a0)
/* 05D640 8005CA40 14A00007 */  bnez  $a1, .L8005CA60
/* 05D644 8005CA44 A5020000 */   sh    $v0, ($t0)
/* 05D648 8005CA48 004A0019 */  multu $v0, $t2
/* 05D64C 8005CA4C 0123C021 */  addu  $t8, $t1, $v1
/* 05D650 8005CA50 00006812 */  mflo  $t5
/* 05D654 8005CA54 01A77021 */  addu  $t6, $t5, $a3
/* 05D658 8005CA58 95CF0254 */  lhu   $t7, 0x254($t6)
/* 05D65C 8005CA5C A70F0000 */  sh    $t7, ($t8)
.L8005CA60:
/* 05D660 8005CA60 84860002 */  lh    $a2, 2($a0)
/* 05D664 8005CA64 14A00007 */  bnez  $a1, .L8005CA84
/* 05D668 8005CA68 A5060002 */   sh    $a2, 2($t0)
/* 05D66C 8005CA6C 00CA0019 */  multu $a2, $t2
/* 05D670 8005CA70 01237021 */  addu  $t6, $t1, $v1
/* 05D674 8005CA74 0000C812 */  mflo  $t9
/* 05D678 8005CA78 03276021 */  addu  $t4, $t9, $a3
/* 05D67C 8005CA7C 958D0254 */  lhu   $t5, 0x254($t4)
/* 05D680 8005CA80 A5CD0002 */  sh    $t5, 2($t6)
.L8005CA84:
/* 05D684 8005CA84 84860004 */  lh    $a2, 4($a0)
/* 05D688 8005CA88 14A00007 */  bnez  $a1, .L8005CAA8
/* 05D68C 8005CA8C A5060004 */   sh    $a2, 4($t0)
/* 05D690 8005CA90 00CA0019 */  multu $a2, $t2
/* 05D694 8005CA94 01236021 */  addu  $t4, $t1, $v1
/* 05D698 8005CA98 00007812 */  mflo  $t7
/* 05D69C 8005CA9C 01E7C021 */  addu  $t8, $t7, $a3
/* 05D6A0 8005CAA0 97190254 */  lhu   $t9, 0x254($t8)
/* 05D6A4 8005CAA4 A5990004 */  sh    $t9, 4($t4)
.L8005CAA8:
/* 05D6A8 8005CAA8 84860006 */  lh    $a2, 6($a0)
/* 05D6AC 8005CAAC 24840008 */  addiu $a0, $a0, 8
/* 05D6B0 8005CAB0 14A00007 */  bnez  $a1, .L8005CAD0
/* 05D6B4 8005CAB4 A5060006 */   sh    $a2, 6($t0)
/* 05D6B8 8005CAB8 00CA0019 */  multu $a2, $t2
/* 05D6BC 8005CABC 0123C021 */  addu  $t8, $t1, $v1
/* 05D6C0 8005CAC0 00006812 */  mflo  $t5
/* 05D6C4 8005CAC4 01A77021 */  addu  $t6, $t5, $a3
/* 05D6C8 8005CAC8 95CF0254 */  lhu   $t7, 0x254($t6)
/* 05D6CC 8005CACC A70F0006 */  sh    $t7, 6($t8)
.L8005CAD0:
/* 05D6D0 8005CAD0 25080008 */  addiu $t0, $t0, 8
/* 05D6D4 8005CAD4 150BFFD9 */  bne   $t0, $t3, .L8005CA3C
/* 05D6D8 8005CAD8 24630008 */   addiu $v1, $v1, 8
/* 05D6DC 8005CADC 3C048019 */  lui   $a0, %hi(D_8018D314) # $a0, 0x8019
/* 05D6E0 8005CAE0 2484D314 */  addiu $a0, %lo(D_8018D314) # addiu $a0, $a0, -0x2cec
/* 05D6E4 8005CAE4 8C990000 */  lw    $t9, ($a0)
/* 05D6E8 8005CAE8 3C058019 */  lui   $a1, %hi(D_8018D3F8) # $a1, 0x8019
/* 05D6EC 8005CAEC 24A5D3F8 */  addiu $a1, %lo(D_8018D3F8) # addiu $a1, $a1, -0x2c08
/* 05D6F0 8005CAF0 272CFFFF */  addiu $t4, $t9, -1
/* 05D6F4 8005CAF4 1D800018 */  bgtz  $t4, .L8005CB58
/* 05D6F8 8005CAF8 AC8C0000 */   sw    $t4, ($a0)
/* 05D6FC 8005CAFC 8CA20000 */  lw    $v0, ($a1)
/* 05D700 8005CB00 3C18800E */  lui   $t8, %hi(D_800E55D0) # $t8, 0x800e
/* 05D704 8005CB04 3C0E8019 */  lui   $t6, %hi(D_8018D3F4) # $t6, 0x8019
/* 05D708 8005CB08 00027880 */  sll   $t7, $v0, 2
/* 05D70C 8005CB0C 271855D0 */  addiu $t8, %lo(D_800E55D0) # addiu $t8, $t8, 0x55d0
/* 05D710 8005CB10 01E27823 */  subu  $t7, $t7, $v0
/* 05D714 8005CB14 8DCED3F4 */  lw    $t6, %lo(D_8018D3F4)($t6)
/* 05D718 8005CB18 01F81821 */  addu  $v1, $t7, $t8
/* 05D71C 8005CB1C 90790000 */  lbu   $t9, ($v1)
/* 05D720 8005CB20 3C018019 */  lui   $at, %hi(D_8018D3E4) # $at, 0x8019
/* 05D724 8005CB24 AC8E0000 */  sw    $t6, ($a0)
/* 05D728 8005CB28 AC39D3E4 */  sw    $t9, %lo(D_8018D3E4)($at)
/* 05D72C 8005CB2C 906C0001 */  lbu   $t4, 1($v1)
/* 05D730 8005CB30 3C018019 */  lui   $at, %hi(D_8018D3E8) # $at, 0x8019
/* 05D734 8005CB34 244E0001 */  addiu $t6, $v0, 1
/* 05D738 8005CB38 AC2CD3E8 */  sw    $t4, %lo(D_8018D3E8)($at)
/* 05D73C 8005CB3C 906D0002 */  lbu   $t5, 2($v1)
/* 05D740 8005CB40 3C018019 */  lui   $at, %hi(D_8018D3EC) # $at, 0x8019
/* 05D744 8005CB44 AC2DD3EC */  sw    $t5, %lo(D_8018D3EC)($at)
/* 05D748 8005CB48 24010006 */  li    $at, 6
/* 05D74C 8005CB4C 15C10002 */  bne   $t6, $at, .L8005CB58
/* 05D750 8005CB50 ACAE0000 */   sw    $t6, ($a1)
/* 05D754 8005CB54 ACA00000 */  sw    $zero, ($a1)
.L8005CB58:
/* 05D758 8005CB58 03E00008 */  jr    $ra
/* 05D75C 8005CB5C 27BD0008 */   addiu $sp, $sp, 8
