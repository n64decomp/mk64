glabel func_802B18E4
/* 11AEF4 802B18E4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 11AEF8 802B18E8 3C0F802C */  lui   $t7, %hi(D_802B9160) # $t7, 0x802c
/* 11AEFC 802B18EC AFBF0014 */  sw    $ra, 0x14($sp)
/* 11AF00 802B18F0 AFA40040 */  sw    $a0, 0x40($sp)
/* 11AF04 802B18F4 AFA50044 */  sw    $a1, 0x44($sp)
/* 11AF08 802B18F8 25EF9160 */  addiu $t7, %lo(D_802B9160) # addiu $t7, $t7, -0x6ea0
/* 11AF0C 802B18FC 8DE10000 */  lw    $at, ($t7)
/* 11AF10 802B1900 27A60034 */  addiu $a2, $sp, 0x34
/* 11AF14 802B1904 3C09802C */  lui   $t1, %hi(D_802B916C) # $t1, 0x802c
/* 11AF18 802B1908 ACC10000 */  sw    $at, ($a2)
/* 11AF1C 802B190C 8DE80004 */  lw    $t0, 4($t7)
/* 11AF20 802B1910 2529916C */  addiu $t1, %lo(D_802B916C) # addiu $t1, $t1, -0x6e94
/* 11AF24 802B1914 00053C00 */  sll   $a3, $a1, 0x10
/* 11AF28 802B1918 ACC80004 */  sw    $t0, 4($a2)
/* 11AF2C 802B191C 8DE10008 */  lw    $at, 8($t7)
/* 11AF30 802B1920 27A5002C */  addiu $a1, $sp, 0x2c
/* 11AF34 802B1924 3C0D802C */  lui   $t5, %hi(D_802B9174) # $t5, 0x802c
/* 11AF38 802B1928 ACC10008 */  sw    $at, 8($a2)
/* 11AF3C 802B192C 8D210000 */  lw    $at, ($t1)
/* 11AF40 802B1930 25AD9174 */  addiu $t5, %lo(D_802B9174) # addiu $t5, $t5, -0x6e8c
/* 11AF44 802B1934 27A40020 */  addiu $a0, $sp, 0x20
/* 11AF48 802B1938 ACA10000 */  sw    $at, ($a1)
/* 11AF4C 802B193C 95210004 */  lhu   $at, 4($t1)
/* 11AF50 802B1940 00077403 */  sra   $t6, $a3, 0x10
/* 11AF54 802B1944 01C03825 */  move  $a3, $t6
/* 11AF58 802B1948 A4A10004 */  sh    $at, 4($a1)
/* 11AF5C 802B194C 8DA10000 */  lw    $at, ($t5)
/* 11AF60 802B1950 AC810000 */  sw    $at, ($a0)
/* 11AF64 802B1954 8DB80004 */  lw    $t8, 4($t5)
/* 11AF68 802B1958 AC980004 */  sw    $t8, 4($a0)
/* 11AF6C 802B195C 8DA10008 */  lw    $at, 8($t5)
/* 11AF70 802B1960 0C0A7B22 */  jal   func_8029EC88
/* 11AF74 802B1964 AC810008 */   sw    $at, 8($a0)
/* 11AF78 802B1968 00022400 */  sll   $a0, $v0, 0x10
/* 11AF7C 802B196C 00047C03 */  sra   $t7, $a0, 0x10
/* 11AF80 802B1970 04410003 */  bgez  $v0, .L802B1980
/* 11AF84 802B1974 01E02025 */   move  $a0, $t7
/* 11AF88 802B1978 10000018 */  b     .L802B19DC
/* 11AF8C 802B197C 01E01025 */   move  $v0, $t7
.L802B1980:
/* 11AF90 802B1980 000440C0 */  sll   $t0, $a0, 3
/* 11AF94 802B1984 01044023 */  subu  $t0, $t0, $a0
/* 11AF98 802B1988 3C0B8016 */  lui   $t3, %hi(D_8015F9B8) # $t3, 0x8016
/* 11AF9C 802B198C 256BF9B8 */  addiu $t3, %lo(D_8015F9B8) # addiu $t3, $t3, -0x648
/* 11AFA0 802B1990 00084100 */  sll   $t0, $t0, 4
/* 11AFA4 802B1994 010B1821 */  addu  $v1, $t0, $t3
/* 11AFA8 802B1998 240A05B0 */  li    $t2, 1456
/* 11AFAC 802B199C 24098000 */  li    $t1, -32768
/* 11AFB0 802B19A0 A4600006 */  sh    $zero, 6($v1)
/* 11AFB4 802B19A4 A46A0010 */  sh    $t2, 0x10($v1)
/* 11AFB8 802B19A8 A4690012 */  sh    $t1, 0x12($v1)
/* 11AFBC 802B19AC 3C19800E */  lui   $t9, %hi(gPlayerOne) # $t9, 0x800e
/* 11AFC0 802B19B0 8F39C4DC */  lw    $t9, %lo(gPlayerOne)($t9)
/* 11AFC4 802B19B4 8FAC0040 */  lw    $t4, 0x40($sp)
/* 11AFC8 802B19B8 24010DD8 */  li    $at, 3544
/* 11AFCC 802B19BC 44802000 */  mtc1  $zero, $f4
/* 11AFD0 802B19C0 01997023 */  subu  $t6, $t4, $t9
/* 11AFD4 802B19C4 01C1001A */  div   $zero, $t6, $at
/* 11AFD8 802B19C8 00006812 */  mflo  $t5
/* 11AFDC 802B19CC A46D0014 */  sh    $t5, 0x14($v1)
/* 11AFE0 802B19D0 A4600004 */  sh    $zero, 4($v1)
/* 11AFE4 802B19D4 00801025 */  move  $v0, $a0
/* 11AFE8 802B19D8 E4640008 */  swc1  $f4, 8($v1)
.L802B19DC:
/* 11AFEC 802B19DC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 11AFF0 802B19E0 27BD0040 */  addiu $sp, $sp, 0x40
/* 11AFF4 802B19E4 03E00008 */  jr    $ra
/* 11AFF8 802B19E8 00000000 */   nop
