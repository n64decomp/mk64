glabel func_8007BD04
/* 07C904 8007BD04 3C0E8018 */  lui   $t6, %hi(D_80183F28) # $t6, 0x8018
/* 07C908 8007BD08 8DCE3F28 */  lw    $t6, %lo(D_80183F28)($t6)
/* 07C90C 8007BD0C 3C188016 */  lui   $t8, %hi(D_80165CBE) # 0x8016
/* 07C910 8007BD10 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 07C914 8007BD14 000E78C0 */  sll   $t7, $t6, 3
/* 07C918 8007BD18 01EE7823 */  subu  $t7, $t7, $t6
/* 07C91C 8007BD1C 000F7940 */  sll   $t7, $t7, 5
/* 07C920 8007BD20 030FC021 */  addu  $t8, $t8, $t7
/* 07C924 8007BD24 87185CBE */  lh    $t8, %lo(D_80165CBE)($t8) # 0x5cbe($t8)
/* 07C928 8007BD28 AFBF0014 */  sw    $ra, 0x14($sp)
/* 07C92C 8007BD2C 0004C840 */  sll   $t9, $a0, 1
/* 07C930 8007BD30 17000019 */  bnez  $t8, .L8007BD98
/* 07C934 8007BD34 AFAE001C */   sw    $t6, 0x1c($sp)
/* 07C938 8007BD38 3C028016 */  lui   $v0, %hi(gNearestWaypointByPlayerId) # 0x8016
/* 07C93C 8007BD3C 00591021 */  addu  $v0, $v0, $t9
/* 07C940 8007BD40 94424438 */  lhu   $v0, %lo(gNearestWaypointByPlayerId)($v0) # 0x4438($v0)
/* 07C944 8007BD44 284100A0 */  slti  $at, $v0, 0xa0
/* 07C948 8007BD48 14200013 */  bnez  $at, .L8007BD98
/* 07C94C 8007BD4C 284100AB */   slti  $at, $v0, 0xab
/* 07C950 8007BD50 10200011 */  beqz  $at, .L8007BD98
/* 07C954 8007BD54 3C018019 */   lui   $at, %hi(D_8018D01C) # $at, 0x8019
/* 07C958 8007BD58 C424D01C */  lwc1  $f4, %lo(D_8018D01C)($at)
/* 07C95C 8007BD5C 3C01800F */  lui   $at, %hi(D_800EEE08)
/* 07C960 8007BD60 D428EE08 */  ldc1  $f8, %lo(D_800EEE08)($at)
/* 07C964 8007BD64 460021A1 */  cvt.d.s $f6, $f4
/* 07C968 8007BD68 3C07C4CE */  lui   $a3, (0xC4CE4000 >> 16) # lui $a3, 0xc4ce
/* 07C96C 8007BD6C 46283282 */  mul.d $f10, $f6, $f8
/* 07C970 8007BD70 34E74000 */  ori   $a3, (0xC4CE4000 & 0xFFFF) # ori $a3, $a3, 0x4000
/* 07C974 8007BD74 01C02025 */  move  $a0, $t6
/* 07C978 8007BD78 3C06C348 */  lui   $a2, 0xc348
/* 07C97C 8007BD7C 46205420 */  cvt.s.d $f16, $f10
/* 07C980 8007BD80 44058000 */  mfc1  $a1, $f16
/* 07C984 8007BD84 0C022DF5 */  jal   func_8008B7D4
/* 07C988 8007BD88 00000000 */   nop   
/* 07C98C 8007BD8C 8FA4001C */  lw    $a0, 0x1c($sp)
/* 07C990 8007BD90 0C01C8E9 */  jal   func_800723A4
/* 07C994 8007BD94 24050001 */   li    $a1, 1
.L8007BD98:
/* 07C998 8007BD98 8FBF0014 */  lw    $ra, 0x14($sp)
/* 07C99C 8007BD9C 27BD0020 */  addiu $sp, $sp, 0x20
/* 07C9A0 8007BDA0 03E00008 */  jr    $ra
/* 07C9A4 8007BDA4 00000000 */   nop   
