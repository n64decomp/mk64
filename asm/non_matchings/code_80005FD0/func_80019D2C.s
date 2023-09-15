glabel func_80019D2C
/* 01A92C 80019D2C 3C0E8016 */  lui   $t6, %hi(D_80163378) # $t6, 0x8016
/* 01A930 80019D30 8DCE3378 */  lw    $t6, %lo(D_80163378)($t6)
/* 01A934 80019D34 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 01A938 80019D38 AFBF0014 */  sw    $ra, 0x14($sp)
/* 01A93C 80019D3C AFA50024 */  sw    $a1, 0x24($sp)
/* 01A940 80019D40 11C00024 */  beqz  $t6, .L80019DD4
/* 01A944 80019D44 848300AE */   lh    $v1, 0xae($a0)
/* 01A948 80019D48 3C0F800E */  lui   $t7, %hi(gCurrentCourseId)
/* 01A94C 80019D4C 85EFC5A0 */  lh    $t7, %lo(gCurrentCourseId)($t7)
/* 01A950 80019D50 24010008 */  li    $at, 8
/* 01A954 80019D54 00C02825 */  move  $a1, $a2
/* 01A958 80019D58 55E1001F */  bnel  $t7, $at, .L80019DD8
/* 01A95C 80019D5C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 01A960 80019D60 AFA3001C */  sw    $v1, 0x1c($sp)
/* 01A964 80019D64 0C005469 */  jal   func_800151A4
/* 01A968 80019D68 AFA60028 */   sw    $a2, 0x28($sp)
/* 01A96C 80019D6C 8FA3001C */  lw    $v1, 0x1c($sp)
/* 01A970 80019D70 3C028016 */  lui   $v0, %hi(gNearestWaypointByPlayerId) # 0x8016
/* 01A974 80019D74 8FA60028 */  lw    $a2, 0x28($sp)
/* 01A978 80019D78 0003C040 */  sll   $t8, $v1, 1
/* 01A97C 80019D7C 00581021 */  addu  $v0, $v0, $t8
/* 01A980 80019D80 94424438 */  lhu   $v0, %lo(gNearestWaypointByPlayerId)($v0) # 0x4438($v0)
/* 01A984 80019D84 28410065 */  slti  $at, $v0, 0x65
/* 01A988 80019D88 14200002 */  bnez  $at, .L80019D94
/* 01A98C 80019D8C 284100FA */   slti  $at, $v0, 0xfa
/* 01A990 80019D90 14200006 */  bnez  $at, .L80019DAC
.L80019D94:
/* 01A994 80019D94 284101AF */   slti  $at, $v0, 0x1af
/* 01A998 80019D98 1420000C */  bnez  $at, .L80019DCC
/* 01A99C 80019D9C 00C02025 */   move  $a0, $a2
/* 01A9A0 80019DA0 28410226 */  slti  $at, $v0, 0x226
/* 01A9A4 80019DA4 10200009 */  beqz  $at, .L80019DCC
/* 01A9A8 80019DA8 00000000 */   nop   
.L80019DAC:
/* 01A9AC 80019DAC 8FB90024 */  lw    $t9, 0x24($sp)
/* 01A9B0 80019DB0 00C02025 */  move  $a0, $a2
/* 01A9B4 80019DB4 87250206 */  lh    $a1, 0x206($t9)
/* 01A9B8 80019DB8 00054040 */  sll   $t0, $a1, 1
/* 01A9BC 80019DBC 0C0066D4 */  jal   func_80019B50
/* 01A9C0 80019DC0 3105FFFF */   andi  $a1, $t0, 0xffff
/* 01A9C4 80019DC4 10000004 */  b     .L80019DD8
/* 01A9C8 80019DC8 8FBF0014 */   lw    $ra, 0x14($sp)
.L80019DCC:
/* 01A9CC 80019DCC 0C0066D4 */  jal   func_80019B50
/* 01A9D0 80019DD0 00002825 */   move  $a1, $zero
.L80019DD4:
/* 01A9D4 80019DD4 8FBF0014 */  lw    $ra, 0x14($sp)
.L80019DD8:
/* 01A9D8 80019DD8 27BD0020 */  addiu $sp, $sp, 0x20
/* 01A9DC 80019DDC 03E00008 */  jr    $ra
/* 01A9E0 80019DE0 00000000 */   nop   
