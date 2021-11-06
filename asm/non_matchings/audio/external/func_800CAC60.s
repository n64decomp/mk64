glabel func_800CAC60
/* 0CB860 800CAC60 3C0E800F */  lui   $t6, %hi(D_800EA108) # $t6, 0x800f
/* 0CB864 800CAC64 91CEA108 */  lbu   $t6, %lo(D_800EA108)($t6)
/* 0CB868 800CAC68 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0CB86C 800CAC6C AFBE0030 */  sw    $fp, 0x30($sp)
/* 0CB870 800CAC70 03A0F025 */  move  $fp, $sp
/* 0CB874 800CAC74 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0CB878 800CAC78 15C0002C */  bnez  $t6, .L800CAD2C
/* 0CB87C 800CAC7C AFA40038 */   sw    $a0, 0x38($sp)
/* 0CB880 800CAC80 3C0F800F */  lui   $t7, %hi(D_800EA0F0) # $t7, 0x800f
/* 0CB884 800CAC84 91EFA0F0 */  lbu   $t7, %lo(D_800EA0F0)($t7)
/* 0CB888 800CAC88 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0CB88C 800CAC8C 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0CB890 800CAC90 15E00026 */  bnez  $t7, .L800CAD2C
/* 0CB894 800CAC94 3C041900 */   lui   $a0, (0x1900F00C >> 16) # lui $a0, 0x1900
/* 0CB898 800CAC98 3C18800F */  lui   $t8, %hi(D_800EA1DC) # $t8, 0x800f
/* 0CB89C 800CAC9C 2718A1DC */  addiu $t8, %lo(D_800EA1DC) # addiu $t8, $t8, -0x5e24
/* 0CB8A0 800CACA0 3C05800F */  lui   $a1, %hi(D_800EA1C8) # $a1, 0x800f
/* 0CB8A4 800CACA4 24A5A1C8 */  addiu $a1, %lo(D_800EA1C8) # addiu $a1, $a1, -0x5e38
/* 0CB8A8 800CACA8 AFB80014 */  sw    $t8, 0x14($sp)
/* 0CB8AC 800CACAC 3484F00C */  ori   $a0, (0x1900F00C & 0xFFFF) # ori $a0, $a0, 0xf00c
/* 0CB8B0 800CACB0 00003025 */  move  $a2, $zero
/* 0CB8B4 800CACB4 0C031052 */  jal   play_sound
/* 0CB8B8 800CACB8 AFA70010 */   sw    $a3, 0x10($sp)
/* 0CB8BC 800CACBC 3C03800F */  lui   $v1, %hi(D_800EA10C) # $v1, 0x800f
/* 0CB8C0 800CACC0 2463A10C */  addiu $v1, %lo(D_800EA10C) # addiu $v1, $v1, -0x5ef4
/* 0CB8C4 800CACC4 90790000 */  lbu   $t9, ($v1)
/* 0CB8C8 800CACC8 24020001 */  li    $v0, 1
/* 0CB8CC 800CACCC 50590018 */  beql  $v0, $t9, .L800CAD30
/* 0CB8D0 800CACD0 8FDF0034 */   lw    $ra, 0x34($fp)
/* 0CB8D4 800CACD4 90680001 */  lbu   $t0, 1($v1)
/* 0CB8D8 800CACD8 00002025 */  move  $a0, $zero
/* 0CB8DC 800CACDC 24050001 */  li    $a1, 1
/* 0CB8E0 800CACE0 10480012 */  beq   $v0, $t0, .L800CAD2C
/* 0CB8E4 800CACE4 24060037 */   li    $a2, 55
/* 0CB8E8 800CACE8 0C030DB1 */  jal   func_800C36C4
/* 0CB8EC 800CACEC 24070005 */   li    $a3, 5
/* 0CB8F0 800CACF0 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0CB8F4 800CACF4 3C09800F */  lui   $t1, %hi(D_800EA1DC) # $t1, 0x800f
/* 0CB8F8 800CACF8 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0CB8FC 800CACFC 2529A1DC */  addiu $t1, %lo(D_800EA1DC) # addiu $t1, $t1, -0x5e24
/* 0CB900 800CAD00 3C045101 */  lui   $a0, (0x5101C00C >> 16) # lui $a0, 0x5101
/* 0CB904 800CAD04 3C05800F */  lui   $a1, %hi(D_800EA1C8) # $a1, 0x800f
/* 0CB908 800CAD08 24A5A1C8 */  addiu $a1, %lo(D_800EA1C8) # addiu $a1, $a1, -0x5e38
/* 0CB90C 800CAD0C 3484C00C */  ori   $a0, (0x5101C00C & 0xFFFF) # ori $a0, $a0, 0xc00c
/* 0CB910 800CAD10 AFA90014 */  sw    $t1, 0x14($sp)
/* 0CB914 800CAD14 AFA70010 */  sw    $a3, 0x10($sp)
/* 0CB918 800CAD18 0C031052 */  jal   play_sound
/* 0CB91C 800CAD1C 00003025 */   move  $a2, $zero
/* 0CB920 800CAD20 240A0001 */  li    $t2, 1
/* 0CB924 800CAD24 3C01800F */  lui   $at, %hi(D_800EA168) # $at, 0x800f
/* 0CB928 800CAD28 A02AA168 */  sb    $t2, %lo(D_800EA168)($at)
.L800CAD2C:
/* 0CB92C 800CAD2C 8FDF0034 */  lw    $ra, 0x34($fp)
.L800CAD30:
/* 0CB930 800CAD30 03C0E825 */  move  $sp, $fp
/* 0CB934 800CAD34 8FDE0030 */  lw    $fp, 0x30($fp)
/* 0CB938 800CAD38 03E00008 */  jr    $ra
/* 0CB93C 800CAD3C 27BD0038 */   addiu $sp, $sp, 0x38
