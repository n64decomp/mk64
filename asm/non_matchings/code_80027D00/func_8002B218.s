glabel func_8002B218
/* 02BE18 8002B218 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 02BE1C 8002B21C 3C0E800E */  lui   $t6, %hi(D_800E3C70) # $t6, 0x800e
/* 02BE20 8002B220 AFBF0014 */  sw    $ra, 0x14($sp)
/* 02BE24 8002B224 25CE3C70 */  addiu $t6, %lo(D_800E3C70) # addiu $t6, $t6, 0x3c70
/* 02BE28 8002B228 8DC10000 */  lw    $at, ($t6)
/* 02BE2C 8002B22C 27A60038 */  addiu $a2, $sp, 0x38
/* 02BE30 8002B230 3C08800E */  lui   $t0, %hi(D_800E3C84) # $t0, 0x800e
/* 02BE34 8002B234 ACC10000 */  sw    $at, ($a2)
/* 02BE38 8002B238 8DD90004 */  lw    $t9, 4($t6)
/* 02BE3C 8002B23C 25083C84 */  addiu $t0, %lo(D_800E3C84) # addiu $t0, $t0, 0x3c84
/* 02BE40 8002B240 27A70024 */  addiu $a3, $sp, 0x24
/* 02BE44 8002B244 ACD90004 */  sw    $t9, 4($a2)
/* 02BE48 8002B248 8DC10008 */  lw    $at, 8($t6)
/* 02BE4C 8002B24C 00001025 */  move  $v0, $zero
/* 02BE50 8002B250 ACC10008 */  sw    $at, 8($a2)
/* 02BE54 8002B254 8DD9000C */  lw    $t9, 0xc($t6)
/* 02BE58 8002B258 ACD9000C */  sw    $t9, 0xc($a2)
/* 02BE5C 8002B25C 8DC10010 */  lw    $at, 0x10($t6)
/* 02BE60 8002B260 ACC10010 */  sw    $at, 0x10($a2)
/* 02BE64 8002B264 8D010000 */  lw    $at, ($t0)
/* 02BE68 8002B268 ACE10000 */  sw    $at, ($a3)
/* 02BE6C 8002B26C 8D0B0004 */  lw    $t3, 4($t0)
/* 02BE70 8002B270 ACEB0004 */  sw    $t3, 4($a3)
/* 02BE74 8002B274 8D010008 */  lw    $at, 8($t0)
/* 02BE78 8002B278 ACE10008 */  sw    $at, 8($a3)
/* 02BE7C 8002B27C 8D0B000C */  lw    $t3, 0xc($t0)
/* 02BE80 8002B280 ACEB000C */  sw    $t3, 0xc($a3)
/* 02BE84 8002B284 8D010010 */  lw    $at, 0x10($t0)
/* 02BE88 8002B288 ACE10010 */  sw    $at, 0x10($a3)
/* 02BE8C 8002B28C 94850006 */  lhu   $a1, 6($a0)
.L8002B290:
/* 02BE90 8002B290 00021840 */  sll   $v1, $v0, 1
/* 02BE94 8002B294 00C36021 */  addu  $t4, $a2, $v1
/* 02BE98 8002B298 958D0000 */  lhu   $t5, ($t4)
/* 02BE9C 8002B29C 24420001 */  addiu $v0, $v0, 1
/* 02BEA0 8002B2A0 3048FFFF */  andi  $t0, $v0, 0xffff
/* 02BEA4 8002B2A4 14AD0009 */  bne   $a1, $t5, .L8002B2CC
/* 02BEA8 8002B2A8 00E37021 */   addu  $t6, $a3, $v1
/* 02BEAC 8002B2AC 8C9800BC */  lw    $t8, 0xbc($a0)
/* 02BEB0 8002B2B0 370F0010 */  ori   $t7, $t8, 0x10
/* 02BEB4 8002B2B4 AC8F00BC */  sw    $t7, 0xbc($a0)
/* 02BEB8 8002B2B8 0C00AA94 */  jal   func_8002AA50
/* 02BEBC 8002B2BC AFA40050 */   sw    $a0, 0x50($sp)
/* 02BEC0 8002B2C0 8FA40050 */  lw    $a0, 0x50($sp)
/* 02BEC4 8002B2C4 1000000C */  b     .L8002B2F8
/* 02BEC8 8002B2C8 A4800204 */   sh    $zero, 0x204($a0)
.L8002B2CC:
/* 02BECC 8002B2CC 95D90000 */  lhu   $t9, ($t6)
/* 02BED0 8002B2D0 2901000A */  slti  $at, $t0, 0xa
/* 02BED4 8002B2D4 14B90006 */  bne   $a1, $t9, .L8002B2F0
/* 02BED8 8002B2D8 00000000 */   nop   
/* 02BEDC 8002B2DC 8C8A00BC */  lw    $t2, 0xbc($a0)
/* 02BEE0 8002B2E0 2401FFEF */  li    $at, -17
/* 02BEE4 8002B2E4 01414824 */  and   $t1, $t2, $at
/* 02BEE8 8002B2E8 10000003 */  b     .L8002B2F8
/* 02BEEC 8002B2EC AC8900BC */   sw    $t1, 0xbc($a0)
.L8002B2F0:
/* 02BEF0 8002B2F0 1420FFE7 */  bnez  $at, .L8002B290
/* 02BEF4 8002B2F4 01001025 */   move  $v0, $t0
.L8002B2F8:
/* 02BEF8 8002B2F8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 02BEFC 8002B2FC 27BD0050 */  addiu $sp, $sp, 0x50
/* 02BF00 8002B300 03E00008 */  jr    $ra
/* 02BF04 8002B304 00000000 */   nop   
