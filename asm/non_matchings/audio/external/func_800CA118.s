glabel func_800CA118
/* 0CAD18 800CA118 3C05800F */  lui   $a1, %hi(D_800EA0EC) # $a1, 0x800f
/* 0CAD1C 800CA11C 24A5A0EC */  addiu $a1, %lo(D_800EA0EC) # addiu $a1, $a1, -0x5f14
/* 0CAD20 800CA120 308E00FF */  andi  $t6, $a0, 0xff
/* 0CAD24 800CA124 24060001 */  li    $a2, 1
/* 0CAD28 800CA128 00AE7821 */  addu  $t7, $a1, $t6
/* 0CAD2C 800CA12C A1E60000 */  sb    $a2, ($t7)
/* 0CAD30 800CA130 3C02800F */  lui   $v0, %hi(D_800EA1C0) # $v0, 0x800f
/* 0CAD34 800CA134 9042A1C0 */  lbu   $v0, %lo(D_800EA1C0)($v0)
/* 0CAD38 800CA138 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0CAD3C 800CA13C 000EC080 */  sll   $t8, $t6, 2
/* 0CAD40 800CA140 3C01800F */  lui   $at, %hi(D_800E9EA4)
/* 0CAD44 800CA144 AFBE0028 */  sw    $fp, 0x28($sp)
/* 0CAD48 800CA148 24030001 */  li    $v1, 1
/* 0CAD4C 800CA14C 00380821 */  addu  $at, $at, $t8
/* 0CAD50 800CA150 03A0F025 */  move  $fp, $sp
/* 0CAD54 800CA154 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0CAD58 800CA158 AFA40030 */  sw    $a0, 0x30($sp)
/* 0CAD5C 800CA15C 10400009 */  beqz  $v0, .L800CA184
/* 0CAD60 800CA160 AC239EA4 */   sw    $v1, %lo(D_800E9EA4)($at)
/* 0CAD64 800CA164 1043000C */  beq   $v0, $v1, .L800CA198
/* 0CAD68 800CA168 24010002 */   li    $at, 2
/* 0CAD6C 800CA16C 10410015 */  beq   $v0, $at, .L800CA1C4
/* 0CAD70 800CA170 24010003 */   li    $at, 3
/* 0CAD74 800CA174 50410022 */  beql  $v0, $at, .L800CA200
/* 0CAD78 800CA178 90AC0000 */   lbu   $t4, ($a1)
/* 0CAD7C 800CA17C 1000002F */  b     .L800CA23C
/* 0CAD80 800CA180 8FDF002C */   lw    $ra, 0x2c($fp)
.L800CA184:
/* 0CAD84 800CA184 3C01800F */  lui   $at, %hi(D_800EA0F0) # $at, 0x800f
/* 0CAD88 800CA188 0C032839 */  jal   func_800CA0E4
/* 0CAD8C 800CA18C A026A0F0 */   sb    $a2, %lo(D_800EA0F0)($at)
/* 0CAD90 800CA190 1000002A */  b     .L800CA23C
/* 0CAD94 800CA194 8FDF002C */   lw    $ra, 0x2c($fp)
.L800CA198:
/* 0CAD98 800CA198 90B90000 */  lbu   $t9, ($a1)
/* 0CAD9C 800CA19C 54790027 */  bnel  $v1, $t9, .L800CA23C
/* 0CADA0 800CA1A0 8FDF002C */   lw    $ra, 0x2c($fp)
/* 0CADA4 800CA1A4 90A80001 */  lbu   $t0, 1($a1)
/* 0CADA8 800CA1A8 3C01800F */  lui   $at, %hi(D_800EA0F0) # $at, 0x800f
/* 0CADAC 800CA1AC 54680023 */  bnel  $v1, $t0, .L800CA23C
/* 0CADB0 800CA1B0 8FDF002C */   lw    $ra, 0x2c($fp)
/* 0CADB4 800CA1B4 0C032839 */  jal   func_800CA0E4
/* 0CADB8 800CA1B8 A026A0F0 */   sb    $a2, %lo(D_800EA0F0)($at)
/* 0CADBC 800CA1BC 1000001F */  b     .L800CA23C
/* 0CADC0 800CA1C0 8FDF002C */   lw    $ra, 0x2c($fp)
.L800CA1C4:
/* 0CADC4 800CA1C4 90A90000 */  lbu   $t1, ($a1)
/* 0CADC8 800CA1C8 5469001C */  bnel  $v1, $t1, .L800CA23C
/* 0CADCC 800CA1CC 8FDF002C */   lw    $ra, 0x2c($fp)
/* 0CADD0 800CA1D0 90AA0001 */  lbu   $t2, 1($a1)
/* 0CADD4 800CA1D4 546A0019 */  bnel  $v1, $t2, .L800CA23C
/* 0CADD8 800CA1D8 8FDF002C */   lw    $ra, 0x2c($fp)
/* 0CADDC 800CA1DC 90AB0002 */  lbu   $t3, 2($a1)
/* 0CADE0 800CA1E0 3C01800F */  lui   $at, %hi(D_800EA0F0) # $at, 0x800f
/* 0CADE4 800CA1E4 546B0015 */  bnel  $v1, $t3, .L800CA23C
/* 0CADE8 800CA1E8 8FDF002C */   lw    $ra, 0x2c($fp)
/* 0CADEC 800CA1EC 0C032839 */  jal   func_800CA0E4
/* 0CADF0 800CA1F0 A026A0F0 */   sb    $a2, %lo(D_800EA0F0)($at)
/* 0CADF4 800CA1F4 10000011 */  b     .L800CA23C
/* 0CADF8 800CA1F8 8FDF002C */   lw    $ra, 0x2c($fp)
/* 0CADFC 800CA1FC 90AC0000 */  lbu   $t4, ($a1)
.L800CA200:
/* 0CAE00 800CA200 546C000E */  bnel  $v1, $t4, .L800CA23C
/* 0CAE04 800CA204 8FDF002C */   lw    $ra, 0x2c($fp)
/* 0CAE08 800CA208 90AD0001 */  lbu   $t5, 1($a1)
/* 0CAE0C 800CA20C 546D000B */  bnel  $v1, $t5, .L800CA23C
/* 0CAE10 800CA210 8FDF002C */   lw    $ra, 0x2c($fp)
/* 0CAE14 800CA214 90AE0002 */  lbu   $t6, 2($a1)
/* 0CAE18 800CA218 546E0008 */  bnel  $v1, $t6, .L800CA23C
/* 0CAE1C 800CA21C 8FDF002C */   lw    $ra, 0x2c($fp)
/* 0CAE20 800CA220 90AF0003 */  lbu   $t7, 3($a1)
/* 0CAE24 800CA224 3C01800F */  lui   $at, %hi(D_800EA0F0) # $at, 0x800f
/* 0CAE28 800CA228 546F0004 */  bnel  $v1, $t7, .L800CA23C
/* 0CAE2C 800CA22C 8FDF002C */   lw    $ra, 0x2c($fp)
/* 0CAE30 800CA230 0C032839 */  jal   func_800CA0E4
/* 0CAE34 800CA234 A026A0F0 */   sb    $a2, %lo(D_800EA0F0)($at)
/* 0CAE38 800CA238 8FDF002C */  lw    $ra, 0x2c($fp)
.L800CA23C:
/* 0CAE3C 800CA23C 03C0E825 */  move  $sp, $fp
/* 0CAE40 800CA240 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0CAE44 800CA244 03E00008 */  jr    $ra
/* 0CAE48 800CA248 27BD0030 */   addiu $sp, $sp, 0x30
