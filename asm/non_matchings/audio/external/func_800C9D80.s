glabel func_800C9D80
/* 0CA980 800C9D80 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 0CA984 800C9D84 3C0E800F */  lui   $t6, %hi(D_800EA108) # $t6, 0x800f
/* 0CA988 800C9D88 91CEA108 */  lbu   $t6, %lo(D_800EA108)($t6)
/* 0CA98C 800C9D8C AFBE0058 */  sw    $fp, 0x58($sp)
/* 0CA990 800C9D90 AFB1003C */  sw    $s1, 0x3c($sp)
/* 0CA994 800C9D94 00C08825 */  move  $s1, $a2
/* 0CA998 800C9D98 03A0F025 */  move  $fp, $sp
/* 0CA99C 800C9D9C AFBF005C */  sw    $ra, 0x5c($sp)
/* 0CA9A0 800C9DA0 AFB70054 */  sw    $s7, 0x54($sp)
/* 0CA9A4 800C9DA4 AFB60050 */  sw    $s6, 0x50($sp)
/* 0CA9A8 800C9DA8 AFB5004C */  sw    $s5, 0x4c($sp)
/* 0CA9AC 800C9DAC AFB40048 */  sw    $s4, 0x48($sp)
/* 0CA9B0 800C9DB0 AFB30044 */  sw    $s3, 0x44($sp)
/* 0CA9B4 800C9DB4 AFB20040 */  sw    $s2, 0x40($sp)
/* 0CA9B8 800C9DB8 AFB00038 */  sw    $s0, 0x38($sp)
/* 0CA9BC 800C9DBC F7B40030 */  sdc1  $f20, 0x30($sp)
/* 0CA9C0 800C9DC0 AFA40060 */  sw    $a0, 0x60($sp)
/* 0CA9C4 800C9DC4 15C0003D */  bnez  $t6, .L800C9EBC
/* 0CA9C8 800C9DC8 AFA50064 */   sw    $a1, 0x64($sp)
/* 0CA9CC 800C9DCC 3C0F800F */  lui   $t7, %hi(D_800EA0F0) # $t7, 0x800f
/* 0CA9D0 800C9DD0 91EFA0F0 */  lbu   $t7, %lo(D_800EA0F0)($t7)
/* 0CA9D4 800C9DD4 3C02800F */  lui   $v0, %hi(D_800EA1C0) # $v0, 0x800f
/* 0CA9D8 800C9DD8 55E00039 */  bnel  $t7, $zero, .L800C9EC0
/* 0CA9DC 800C9DDC 8FDF005C */   lw    $ra, 0x5c($fp)
/* 0CA9E0 800C9DE0 9042A1C0 */  lbu   $v0, %lo(D_800EA1C0)($v0)
/* 0CA9E4 800C9DE4 28410004 */  slti  $at, $v0, 4
/* 0CA9E8 800C9DE8 50200035 */  beql  $at, $zero, .L800C9EC0
/* 0CA9EC 800C9DEC 8FDF005C */   lw    $ra, 0x5c($fp)
/* 0CA9F0 800C9DF0 04400032 */  bltz  $v0, .L800C9EBC
/* 0CA9F4 800C9DF4 00008025 */   move  $s0, $zero
/* 0CA9F8 800C9DF8 3C01432A */  li    $at, 0x432A0000 # 170.000000
/* 0CA9FC 800C9DFC 3C17800F */  lui   $s7, %hi(D_800EA1D4) # $s7, 0x800f
/* 0CAA00 800C9E00 3C16800F */  lui   $s6, %hi(D_800EA17C) # $s6, 0x800f
/* 0CAA04 800C9E04 3C15800F */  lui   $s5, %hi(D_800EA178) # $s5, 0x800f
/* 0CAA08 800C9E08 3C145103 */  lui   $s4, (0x5103700B >> 16) # lui $s4, 0x5103
/* 0CAA0C 800C9E0C 3C13800F */  lui   $s3, %hi(D_800EA1C8) # $s3, 0x800f
/* 0CAA10 800C9E10 3C12800F */  lui   $s2, %hi(D_800EA1DC) # $s2, 0x800f
/* 0CAA14 800C9E14 4481A000 */  mtc1  $at, $f20
/* 0CAA18 800C9E18 2652A1DC */  addiu $s2, %lo(D_800EA1DC) # addiu $s2, $s2, -0x5e24
/* 0CAA1C 800C9E1C 2673A1C8 */  addiu $s3, %lo(D_800EA1C8) # addiu $s3, $s3, -0x5e38
/* 0CAA20 800C9E20 3694700B */  ori   $s4, (0x5103700B & 0xFFFF) # ori $s4, $s4, 0x700b
/* 0CAA24 800C9E24 26B5A178 */  addiu $s5, %lo(D_800EA178) # addiu $s5, $s5, -0x5e88
/* 0CAA28 800C9E28 26D6A17C */  addiu $s6, %lo(D_800EA17C) # addiu $s6, $s6, -0x5e84
/* 0CAA2C 800C9E2C 26F7A1D4 */  addiu $s7, %lo(D_800EA1D4) # addiu $s7, $s7, -0x5e2c
.L800C9E30:
/* 0CAA30 800C9E30 8FC50060 */  lw    $a1, 0x60($fp)
/* 0CAA34 800C9E34 8FC60064 */  lw    $a2, 0x64($fp)
/* 0CAA38 800C9E38 AFB10014 */  sw    $s1, 0x14($sp)
/* 0CAA3C 800C9E3C AFB00010 */  sw    $s0, 0x10($sp)
/* 0CAA40 800C9E40 00002025 */  move  $a0, $zero
/* 0CAA44 800C9E44 0C030722 */  jal   func_800C1C88
/* 0CAA48 800C9E48 02603825 */   move  $a3, $s3
/* 0CAA4C 800C9E4C 10400013 */  beqz  $v0, .L800C9E9C
/* 0CAA50 800C9E50 00401825 */   move  $v1, $v0
/* 0CAA54 800C9E54 1634000A */  bne   $s1, $s4, .L800C9E80
/* 0CAA58 800C9E58 E4540034 */   swc1  $f20, 0x34($v0)
/* 0CAA5C 800C9E5C 02202025 */  move  $a0, $s1
/* 0CAA60 800C9E60 24450018 */  addiu $a1, $v0, 0x18
/* 0CAA64 800C9E64 320600FF */  andi  $a2, $s0, 0xff
/* 0CAA68 800C9E68 02A03825 */  move  $a3, $s5
/* 0CAA6C 800C9E6C AFB60010 */  sw    $s6, 0x10($sp)
/* 0CAA70 800C9E70 0C031052 */  jal   play_sound
/* 0CAA74 800C9E74 AFB20014 */   sw    $s2, 0x14($sp)
/* 0CAA78 800C9E78 10000008 */  b     .L800C9E9C
/* 0CAA7C 800C9E7C 00000000 */   nop   
.L800C9E80:
/* 0CAA80 800C9E80 02202025 */  move  $a0, $s1
/* 0CAA84 800C9E84 24650018 */  addiu $a1, $v1, 0x18
/* 0CAA88 800C9E88 320600FF */  andi  $a2, $s0, 0xff
/* 0CAA8C 800C9E8C 2467002C */  addiu $a3, $v1, 0x2c
/* 0CAA90 800C9E90 AFB70010 */  sw    $s7, 0x10($sp)
/* 0CAA94 800C9E94 0C031052 */  jal   play_sound
/* 0CAA98 800C9E98 AFB20014 */   sw    $s2, 0x14($sp)
.L800C9E9C:
/* 0CAA9C 800C9E9C 3C19800F */  lui   $t9, %hi(D_800EA1C0) # $t9, 0x800f
/* 0CAAA0 800C9EA0 9339A1C0 */  lbu   $t9, %lo(D_800EA1C0)($t9)
/* 0CAAA4 800C9EA4 26100001 */  addiu $s0, $s0, 1
/* 0CAAA8 800C9EA8 321800FF */  andi  $t8, $s0, 0xff
/* 0CAAAC 800C9EAC 27280001 */  addiu $t0, $t9, 1
/* 0CAAB0 800C9EB0 0308082A */  slt   $at, $t8, $t0
/* 0CAAB4 800C9EB4 1420FFDE */  bnez  $at, .L800C9E30
/* 0CAAB8 800C9EB8 03008025 */   move  $s0, $t8
.L800C9EBC:
/* 0CAABC 800C9EBC 8FDF005C */  lw    $ra, 0x5c($fp)
.L800C9EC0:
/* 0CAAC0 800C9EC0 03C0E825 */  move  $sp, $fp
/* 0CAAC4 800C9EC4 D7D40030 */  ldc1  $f20, 0x30($fp)
/* 0CAAC8 800C9EC8 8FD00038 */  lw    $s0, 0x38($fp)
/* 0CAACC 800C9ECC 8FD1003C */  lw    $s1, 0x3c($fp)
/* 0CAAD0 800C9ED0 8FD20040 */  lw    $s2, 0x40($fp)
/* 0CAAD4 800C9ED4 8FD30044 */  lw    $s3, 0x44($fp)
/* 0CAAD8 800C9ED8 8FD40048 */  lw    $s4, 0x48($fp)
/* 0CAADC 800C9EDC 8FD5004C */  lw    $s5, 0x4c($fp)
/* 0CAAE0 800C9EE0 8FD60050 */  lw    $s6, 0x50($fp)
/* 0CAAE4 800C9EE4 8FD70054 */  lw    $s7, 0x54($fp)
/* 0CAAE8 800C9EE8 8FDE0058 */  lw    $fp, 0x58($fp)
/* 0CAAEC 800C9EEC 03E00008 */  jr    $ra
/* 0CAAF0 800C9EF0 27BD0060 */   addiu $sp, $sp, 0x60
