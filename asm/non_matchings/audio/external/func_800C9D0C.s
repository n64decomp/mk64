glabel func_800C9D0C
/* 0CA90C 800C9D0C 308600FF */  andi  $a2, $a0, 0xff
/* 0CA910 800C9D10 000670C0 */  sll   $t6, $a2, 3
/* 0CA914 800C9D14 01C67023 */  subu  $t6, $t6, $a2
/* 0CA918 800C9D18 000E7100 */  sll   $t6, $t6, 4
/* 0CA91C 800C9D1C 01C67023 */  subu  $t6, $t6, $a2
/* 0CA920 800C9D20 000E7080 */  sll   $t6, $t6, 2
/* 0CA924 800C9D24 01C67023 */  subu  $t6, $t6, $a2
/* 0CA928 800C9D28 3C0F800F */  lui   $t7, %hi(gPlayers) # $t7, 0x800f
/* 0CA92C 800C9D2C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0CA930 800C9D30 25EF6990 */  addiu $t7, %lo(gPlayers) # addiu $t7, $t7, 0x6990
/* 0CA934 800C9D34 000E70C0 */  sll   $t6, $t6, 3
/* 0CA938 800C9D38 01CF1021 */  addu  $v0, $t6, $t7
/* 0CA93C 800C9D3C 94450254 */  lhu   $a1, 0x254($v0)
/* 0CA940 800C9D40 3C013102 */  lui   $at, (0x31028000 >> 16) # lui $at, 0x3102
/* 0CA944 800C9D44 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0CA948 800C9D48 AFBE0028 */  sw    $fp, 0x28($sp)
/* 0CA94C 800C9D4C AFA40030 */  sw    $a0, 0x30($sp)
/* 0CA950 800C9D50 34218000 */  ori   $at, (0x31028000 & 0xFFFF) # ori $at, $at, 0x8000
/* 0CA954 800C9D54 03A0F025 */  move  $fp, $sp
/* 0CA958 800C9D58 24440014 */  addiu $a0, $v0, 0x14
/* 0CA95C 800C9D5C 0C03087A */  jal   func_800C21E8
/* 0CA960 800C9D60 00A12821 */   addu  $a1, $a1, $at
/* 0CA964 800C9D64 0C031543 */  jal   func_800C550C
/* 0CA968 800C9D68 00402025 */   move  $a0, $v0
/* 0CA96C 800C9D6C 8FDF002C */  lw    $ra, 0x2c($fp)
/* 0CA970 800C9D70 03C0E825 */  move  $sp, $fp
/* 0CA974 800C9D74 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0CA978 800C9D78 03E00008 */  jr    $ra
/* 0CA97C 800C9D7C 27BD0030 */   addiu $sp, $sp, 0x30
