glabel func_80072E54
/* 073A54 80072E54 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 073A58 80072E58 AFBF001C */  sw    $ra, 0x1c($sp)
/* 073A5C 80072E5C AFB00018 */  sw    $s0, 0x18($sp)
/* 073A60 80072E60 AFA5002C */  sw    $a1, 0x2c($sp)
/* 073A64 80072E64 00808025 */  move  $s0, $a0
/* 073A68 80072E68 AFA60030 */  sw    $a2, 0x30($sp)
/* 073A6C 80072E6C AFA70034 */  sw    $a3, 0x34($sp)
/* 073A70 80072E70 AFA00024 */  sw    $zero, 0x24($sp)
/* 073A74 80072E74 0C01C89C */  jal   func_80072270
/* 073A78 80072E78 24052000 */   li    $a1, 8192
/* 073A7C 80072E7C 8FA6002C */  lw    $a2, 0x2c($sp)
/* 073A80 80072E80 10400014 */  beqz  $v0, .L80072ED4
/* 073A84 80072E84 8FA70030 */   lw    $a3, 0x30($sp)
/* 073A88 80072E88 001070C0 */  sll   $t6, $s0, 3
/* 073A8C 80072E8C 01D07023 */  subu  $t6, $t6, $s0
/* 073A90 80072E90 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 073A94 80072E94 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 073A98 80072E98 000E7140 */  sll   $t6, $t6, 5
/* 073A9C 80072E9C 8FB80038 */  lw    $t8, 0x38($sp)
/* 073AA0 80072EA0 8FB9003C */  lw    $t9, 0x3c($sp)
/* 073AA4 80072EA4 01CF1021 */  addu  $v0, $t6, $t7
/* 073AA8 80072EA8 A04600D2 */  sb    $a2, 0xd2($v0)
/* 073AAC 80072EAC 02002025 */  move  $a0, $s0
/* 073AB0 80072EB0 24050001 */  li    $a1, 1
/* 073AB4 80072EB4 AC580050 */  sw    $t8, 0x50($v0)
/* 073AB8 80072EB8 0C01C8E2 */  jal   func_80072388
/* 073ABC 80072EBC A05900CC */   sb    $t9, 0xcc($v0)
/* 073AC0 80072EC0 02002025 */  move  $a0, $s0
/* 073AC4 80072EC4 0C01C870 */  jal   func_800721C0
/* 073AC8 80072EC8 24052000 */   li    $a1, 8192
/* 073ACC 80072ECC 1000002A */  b     .L80072F78
/* 073AD0 80072ED0 8FBF001C */   lw    $ra, 0x1c($sp)
.L80072ED4:
/* 073AD4 80072ED4 001040C0 */  sll   $t0, $s0, 3
/* 073AD8 80072ED8 01104023 */  subu  $t0, $t0, $s0
/* 073ADC 80072EDC 3C098016 */  lui   $t1, %hi(D_80165C18) # $t1, 0x8016
/* 073AE0 80072EE0 25295C18 */  addiu $t1, %lo(D_80165C18) # addiu $t1, $t1, 0x5c18
/* 073AE4 80072EE4 00084140 */  sll   $t0, $t0, 5
/* 073AE8 80072EE8 01091021 */  addu  $v0, $t0, $t1
/* 073AEC 80072EEC 8C4A0050 */  lw    $t2, 0x50($v0)
/* 073AF0 80072EF0 254BFFFF */  addiu $t3, $t2, -1
/* 073AF4 80072EF4 1D60001F */  bgtz  $t3, .L80072F74
/* 073AF8 80072EF8 AC4B0050 */   sw    $t3, 0x50($v0)
/* 073AFC 80072EFC 804E00D2 */  lb    $t6, 0xd2($v0)
/* 073B00 80072F00 8FAF0034 */  lw    $t7, 0x34($sp)
/* 073B04 80072F04 8FAD0038 */  lw    $t5, 0x38($sp)
/* 073B08 80072F08 01CFC021 */  addu  $t8, $t6, $t7
/* 073B0C 80072F0C A05800D2 */  sb    $t8, 0xd2($v0)
/* 073B10 80072F10 805900D2 */  lb    $t9, 0xd2($v0)
/* 073B14 80072F14 AC4D0050 */  sw    $t5, 0x50($v0)
/* 073B18 80072F18 00F9082A */  slt   $at, $a3, $t9
/* 073B1C 80072F1C 50200016 */  beql  $at, $zero, .L80072F78
/* 073B20 80072F20 8FBF001C */   lw    $ra, 0x1c($sp)
/* 073B24 80072F24 804300CC */  lb    $v1, 0xcc($v0)
/* 073B28 80072F28 02002025 */  move  $a0, $s0
/* 073B2C 80072F2C 24052000 */  li    $a1, 8192
/* 073B30 80072F30 18600003 */  blez  $v1, .L80072F40
/* 073B34 80072F34 2468FFFF */   addiu $t0, $v1, -1
/* 073B38 80072F38 A04800CC */  sb    $t0, 0xcc($v0)
/* 073B3C 80072F3C 804300CC */  lb    $v1, 0xcc($v0)
.L80072F40:
/* 073B40 80072F40 5460000C */  bnel  $v1, $zero, .L80072F74
/* 073B44 80072F44 A04600D2 */   sb    $a2, 0xd2($v0)
/* 073B48 80072F48 0C01C87A */  jal   func_800721E8
/* 073B4C 80072F4C A04700D2 */   sb    $a3, 0xd2($v0)
/* 073B50 80072F50 02002025 */  move  $a0, $s0
/* 073B54 80072F54 0C01C8E2 */  jal   func_80072388
/* 073B58 80072F58 00002825 */   move  $a1, $zero
/* 073B5C 80072F5C 0C01C922 */  jal   func_80072488
/* 073B60 80072F60 02002025 */   move  $a0, $s0
/* 073B64 80072F64 24090001 */  li    $t1, 1
/* 073B68 80072F68 10000002 */  b     .L80072F74
/* 073B6C 80072F6C AFA90024 */   sw    $t1, 0x24($sp)
/* 073B70 80072F70 A04600D2 */  sb    $a2, 0xd2($v0)
.L80072F74:
/* 073B74 80072F74 8FBF001C */  lw    $ra, 0x1c($sp)
.L80072F78:
/* 073B78 80072F78 8FA20024 */  lw    $v0, 0x24($sp)
/* 073B7C 80072F7C 8FB00018 */  lw    $s0, 0x18($sp)
/* 073B80 80072F80 03E00008 */  jr    $ra
/* 073B84 80072F84 27BD0028 */   addiu $sp, $sp, 0x28
