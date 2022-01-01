glabel func_8008EC88
/* 08F888 8008EC88 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 08F88C 8008EC8C AFA5002C */  sw    $a1, 0x2c($sp)
/* 08F890 8008EC90 00A07025 */  move  $t6, $a1
/* 08F894 8008EC94 000E2E00 */  sll   $a1, $t6, 0x18
/* 08F898 8008EC98 AFBF001C */  sw    $ra, 0x1c($sp)
/* 08F89C 8008EC9C AFB00018 */  sw    $s0, 0x18($sp)
/* 08F8A0 8008ECA0 00057E03 */  sra   $t7, $a1, 0x18
/* 08F8A4 8008ECA4 00808025 */  move  $s0, $a0
/* 08F8A8 8008ECA8 01E02825 */  move  $a1, $t7
/* 08F8AC 8008ECAC 0C0230D5 */  jal   func_8008C354
/* 08F8B0 8008ECB0 A3AE002F */   sb    $t6, 0x2f($sp)
/* 08F8B4 8008ECB4 8E1800BC */  lw    $t8, 0xbc($s0)
/* 08F8B8 8008ECB8 3C010010 */  lui   $at, 0x10
/* 08F8BC 8008ECBC 8E08000C */  lw    $t0, 0xc($s0)
/* 08F8C0 8008ECC0 0301C825 */  or    $t9, $t8, $at
/* 08F8C4 8008ECC4 3C01FF7F */  lui   $at, (0xFF7FFFFF >> 16) # lui $at, 0xff7f
/* 08F8C8 8008ECC8 3421FFFF */  ori   $at, (0xFF7FFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 08F8CC 8008ECCC 01014824 */  and   $t1, $t0, $at
/* 08F8D0 8008ECD0 83A6002F */  lb    $a2, 0x2f($sp)
/* 08F8D4 8008ECD4 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 08F8D8 8008ECD8 44812000 */  mtc1  $at, $f4
/* 08F8DC 8008ECDC AE1900BC */  sw    $t9, 0xbc($s0)
/* 08F8E0 8008ECE0 AE09000C */  sw    $t1, 0xc($s0)
/* 08F8E4 8008ECE4 A6000DB4 */  sh    $zero, 0xdb4($s0)
/* 08F8E8 8008ECE8 3C0A8016 */  lui   $t2, %hi(D_8015F890) # $t2, 0x8016
/* 08F8EC 8008ECEC E6040DBC */  swc1  $f4, 0xdbc($s0)
/* 08F8F0 8008ECF0 954AF890 */  lhu   $t2, %lo(D_8015F890)($t2)
/* 08F8F4 8008ECF4 24010001 */  li    $at, 1
/* 08F8F8 8008ECF8 3C0E800E */  lui   $t6, %hi(gPlayerOne) # $t6, 0x800e
/* 08F8FC 8008ECFC 11410015 */  beq   $t2, $at, .L8008ED54
/* 08F900 8008ED00 00000000 */   nop
/* 08F904 8008ED04 96020000 */  lhu   $v0, ($s0)
/* 08F908 8008ED08 24014000 */  li    $at, 16384
/* 08F90C 8008ED0C 304B4000 */  andi  $t3, $v0, 0x4000
/* 08F910 8008ED10 1561001F */  bne   $t3, $at, .L8008ED90
/* 08F914 8008ED14 304C0100 */   andi  $t4, $v0, 0x100
/* 08F918 8008ED18 1580001D */  bnez  $t4, .L8008ED90
/* 08F91C 8008ED1C 30C400FF */   andi  $a0, $a2, 0xff
/* 08F920 8008ED20 96050254 */  lhu   $a1, 0x254($s0)
/* 08F924 8008ED24 3C012900 */  lui   $at, (0x29008001 >> 16) # lui $at, 0x2900
/* 08F928 8008ED28 34218001 */  ori   $at, (0x29008001 & 0xFFFF) # ori $at, $at, 0x8001
/* 08F92C 8008ED2C 00056900 */  sll   $t5, $a1, 4
/* 08F930 8008ED30 01A12821 */  addu  $a1, $t5, $at
/* 08F934 8008ED34 0C03243D */  jal   func_800C90F4
/* 08F938 8008ED38 AFA40024 */   sw    $a0, 0x24($sp)
/* 08F93C 8008ED3C 3C051900 */  lui   $a1, (0x1900A40B >> 16) # lui $a1, 0x1900
/* 08F940 8008ED40 8FA40024 */  lw    $a0, 0x24($sp)
/* 08F944 8008ED44 0C032418 */  jal   func_800C9060
/* 08F948 8008ED48 34A5A40B */   ori   $a1, (0x1900A40B & 0xFFFF) # ori $a1, $a1, 0xa40b
/* 08F94C 8008ED4C 10000011 */  b     .L8008ED94
/* 08F950 8008ED50 86180044 */   lh    $t8, 0x44($s0)
.L8008ED54:
/* 08F954 8008ED54 8DCEC4DC */  lw    $t6, %lo(gPlayerOne)($t6)
/* 08F958 8008ED58 30C400FF */  andi  $a0, $a2, 0xff
/* 08F95C 8008ED5C 3C012900 */  lui   $at, (0x29008001 >> 16) # lui $at, 0x2900
/* 08F960 8008ED60 560E000C */  bnel  $s0, $t6, .L8008ED94
/* 08F964 8008ED64 86180044 */   lh    $t8, 0x44($s0)
/* 08F968 8008ED68 96050254 */  lhu   $a1, 0x254($s0)
/* 08F96C 8008ED6C 34218001 */  ori   $at, (0x29008001 & 0xFFFF) # ori $at, $at, 0x8001
/* 08F970 8008ED70 AFA40024 */  sw    $a0, 0x24($sp)
/* 08F974 8008ED74 00057900 */  sll   $t7, $a1, 4
/* 08F978 8008ED78 0C03243D */  jal   func_800C90F4
/* 08F97C 8008ED7C 01E12821 */   addu  $a1, $t7, $at
/* 08F980 8008ED80 3C051900 */  lui   $a1, (0x1900A40B >> 16) # lui $a1, 0x1900
/* 08F984 8008ED84 8FA40024 */  lw    $a0, 0x24($sp)
/* 08F988 8008ED88 0C032418 */  jal   func_800C9060
/* 08F98C 8008ED8C 34A5A40B */   ori   $a1, (0x1900A40B & 0xFFFF) # ori $a1, $a1, 0xa40b
.L8008ED90:
/* 08F990 8008ED90 86180044 */  lh    $t8, 0x44($s0)
.L8008ED94:
/* 08F994 8008ED94 8E0800BC */  lw    $t0, 0xbc($s0)
/* 08F998 8008ED98 2401FFDF */  li    $at, -33
/* 08F99C 8008ED9C 3319FFFE */  andi  $t9, $t8, 0xfffe
/* 08F9A0 8008EDA0 01014824 */  and   $t1, $t0, $at
/* 08F9A4 8008EDA4 A6190044 */  sh    $t9, 0x44($s0)
/* 08F9A8 8008EDA8 AE0900BC */  sw    $t1, 0xbc($s0)
/* 08F9AC 8008EDAC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 08F9B0 8008EDB0 8FB00018 */  lw    $s0, 0x18($sp)
/* 08F9B4 8008EDB4 27BD0028 */  addiu $sp, $sp, 0x28
/* 08F9B8 8008EDB8 03E00008 */  jr    $ra
/* 08F9BC 8008EDBC 00000000 */   nop
