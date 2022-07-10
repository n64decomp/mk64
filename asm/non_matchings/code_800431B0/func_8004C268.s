glabel func_8004C268
/* 04CE68 8004C268 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 04CE6C 8004C26C AFB7003C */  sw    $s7, 0x3c($sp)
/* 04CE70 8004C270 AFB3002C */  sw    $s3, 0x2c($sp)
/* 04CE74 8004C274 8FB3005C */  lw    $s3, 0x5c($sp)
/* 04CE78 8004C278 8FB70058 */  lw    $s7, 0x58($sp)
/* 04CE7C 8004C27C AFB50034 */  sw    $s5, 0x34($sp)
/* 04CE80 8004C280 AFB60038 */  sw    $s6, 0x38($sp)
/* 04CE84 8004C284 02F3001B */  divu  $zero, $s7, $s3
/* 04CE88 8004C288 AFB40030 */  sw    $s4, 0x30($sp)
/* 04CE8C 8004C28C AFB20028 */  sw    $s2, 0x28($sp)
/* 04CE90 8004C290 AFB10024 */  sw    $s1, 0x24($sp)
/* 04CE94 8004C294 AFB00020 */  sw    $s0, 0x20($sp)
/* 04CE98 8004C298 00077042 */  srl   $t6, $a3, 1
/* 04CE9C 8004C29C 0000A812 */  mflo  $s5
/* 04CEA0 8004C2A0 00177842 */  srl   $t7, $s7, 1
/* 04CEA4 8004C2A4 00E0A025 */  move  $s4, $a3
/* 04CEA8 8004C2A8 AFBF0044 */  sw    $ra, 0x44($sp)
/* 04CEAC 8004C2AC AFBE0040 */  sw    $fp, 0x40($sp)
/* 04CEB0 8004C2B0 008EB023 */  subu  $s6, $a0, $t6
/* 04CEB4 8004C2B4 00AF8023 */  subu  $s0, $a1, $t7
/* 04CEB8 8004C2B8 00C08825 */  move  $s1, $a2
/* 04CEBC 8004C2BC 00009025 */  move  $s2, $zero
/* 04CEC0 8004C2C0 16600002 */  bnez  $s3, .L8004C2CC
/* 04CEC4 8004C2C4 00000000 */   nop   
/* 04CEC8 8004C2C8 0007000D */  break 7
.L8004C2CC:
/* 04CECC 8004C2CC 52A00016 */  beql  $s5, $zero, .L8004C328
/* 04CED0 8004C2D0 8FBF0044 */   lw    $ra, 0x44($sp)
/* 04CED4 8004C2D4 02930019 */  multu $s4, $s3
/* 04CED8 8004C2D8 8FBE0060 */  lw    $fp, 0x60($sp)
/* 04CEDC 8004C2DC 0000B812 */  mflo  $s7
/* 04CEE0 8004C2E0 0017C040 */  sll   $t8, $s7, 1
/* 04CEE4 8004C2E4 0300B825 */  move  $s7, $t8
.L8004C2E8:
/* 04CEE8 8004C2E8 02202025 */  move  $a0, $s1
/* 04CEEC 8004C2EC 02802825 */  move  $a1, $s4
/* 04CEF0 8004C2F0 0C010F54 */  jal   func_80043D50
/* 04CEF4 8004C2F4 02603025 */   move  $a2, $s3
/* 04CEF8 8004C2F8 02C02025 */  move  $a0, $s6
/* 04CEFC 8004C2FC 02002825 */  move  $a1, $s0
/* 04CF00 8004C300 02803025 */  move  $a2, $s4
/* 04CF04 8004C304 02603825 */  move  $a3, $s3
/* 04CF08 8004C308 0C012E5F */  jal   func_8004B97C
/* 04CF0C 8004C30C AFBE0010 */   sw    $fp, 0x10($sp)
/* 04CF10 8004C310 26520001 */  addiu $s2, $s2, 1
/* 04CF14 8004C314 0255082B */  sltu  $at, $s2, $s5
/* 04CF18 8004C318 02378821 */  addu  $s1, $s1, $s7
/* 04CF1C 8004C31C 1420FFF2 */  bnez  $at, .L8004C2E8
/* 04CF20 8004C320 02138021 */   addu  $s0, $s0, $s3
/* 04CF24 8004C324 8FBF0044 */  lw    $ra, 0x44($sp)
.L8004C328:
/* 04CF28 8004C328 8FB00020 */  lw    $s0, 0x20($sp)
/* 04CF2C 8004C32C 8FB10024 */  lw    $s1, 0x24($sp)
/* 04CF30 8004C330 8FB20028 */  lw    $s2, 0x28($sp)
/* 04CF34 8004C334 8FB3002C */  lw    $s3, 0x2c($sp)
/* 04CF38 8004C338 8FB40030 */  lw    $s4, 0x30($sp)
/* 04CF3C 8004C33C 8FB50034 */  lw    $s5, 0x34($sp)
/* 04CF40 8004C340 8FB60038 */  lw    $s6, 0x38($sp)
/* 04CF44 8004C344 8FB7003C */  lw    $s7, 0x3c($sp)
/* 04CF48 8004C348 8FBE0040 */  lw    $fp, 0x40($sp)
/* 04CF4C 8004C34C 03E00008 */  jr    $ra
/* 04CF50 8004C350 27BD0048 */   addiu $sp, $sp, 0x48
