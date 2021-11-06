glabel func_800C9EF4
/* 0CAAF4 800C9EF4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0CAAF8 800C9EF8 AFB30034 */  sw    $s3, 0x34($sp)
/* 0CAAFC 800C9EFC 3C13800F */  lui   $s3, %hi(D_800EA1C0) # $s3, 0x800f
/* 0CAB00 800C9F00 2673A1C0 */  addiu $s3, %lo(D_800EA1C0) # addiu $s3, $s3, -0x5e40
/* 0CAB04 800C9F04 926E0000 */  lbu   $t6, ($s3)
/* 0CAB08 800C9F08 AFBE0038 */  sw    $fp, 0x38($sp)
/* 0CAB0C 800C9F0C AFB20030 */  sw    $s2, 0x30($sp)
/* 0CAB10 800C9F10 AFB1002C */  sw    $s1, 0x2c($sp)
/* 0CAB14 800C9F14 AFB00028 */  sw    $s0, 0x28($sp)
/* 0CAB18 800C9F18 25CF0001 */  addiu $t7, $t6, 1
/* 0CAB1C 800C9F1C 00A08825 */  move  $s1, $a1
/* 0CAB20 800C9F20 00809025 */  move  $s2, $a0
/* 0CAB24 800C9F24 03A0F025 */  move  $fp, $sp
/* 0CAB28 800C9F28 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0CAB2C 800C9F2C 19E0000F */  blez  $t7, .L800C9F6C
/* 0CAB30 800C9F30 00008025 */   move  $s0, $zero
.L800C9F34:
/* 0CAB34 800C9F34 02402025 */  move  $a0, $s2
/* 0CAB38 800C9F38 0C03087A */  jal   func_800C21E8
/* 0CAB3C 800C9F3C 02202825 */   move  $a1, $s1
/* 0CAB40 800C9F40 10400003 */  beqz  $v0, .L800C9F50
/* 0CAB44 800C9F44 00402025 */   move  $a0, $v0
/* 0CAB48 800C9F48 0C03155E */  jal   func_800C5578
/* 0CAB4C 800C9F4C 02202825 */   move  $a1, $s1
.L800C9F50:
/* 0CAB50 800C9F50 92790000 */  lbu   $t9, ($s3)
/* 0CAB54 800C9F54 26100001 */  addiu $s0, $s0, 1
/* 0CAB58 800C9F58 321800FF */  andi  $t8, $s0, 0xff
/* 0CAB5C 800C9F5C 27280001 */  addiu $t0, $t9, 1
/* 0CAB60 800C9F60 0308082A */  slt   $at, $t8, $t0
/* 0CAB64 800C9F64 1420FFF3 */  bnez  $at, .L800C9F34
/* 0CAB68 800C9F68 03008025 */   move  $s0, $t8
.L800C9F6C:
/* 0CAB6C 800C9F6C 8FDF003C */  lw    $ra, 0x3c($fp)
/* 0CAB70 800C9F70 03C0E825 */  move  $sp, $fp
/* 0CAB74 800C9F74 8FD00028 */  lw    $s0, 0x28($fp)
/* 0CAB78 800C9F78 8FD1002C */  lw    $s1, 0x2c($fp)
/* 0CAB7C 800C9F7C 8FD20030 */  lw    $s2, 0x30($fp)
/* 0CAB80 800C9F80 8FD30034 */  lw    $s3, 0x34($fp)
/* 0CAB84 800C9F84 8FDE0038 */  lw    $fp, 0x38($fp)
/* 0CAB88 800C9F88 03E00008 */  jr    $ra
/* 0CAB8C 800C9F8C 27BD0040 */   addiu $sp, $sp, 0x40
