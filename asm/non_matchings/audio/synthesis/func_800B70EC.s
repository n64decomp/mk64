glabel func_800B70EC
/* 0B7CEC 800B70EC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0B7CF0 800B70F0 AFB5002C */  sw    $s5, 0x2c($sp)
/* 0B7CF4 800B70F4 3C15803B */  lui   $s5, %hi(gAudioBufferParameters) # $s5, 0x803b
/* 0B7CF8 800B70F8 26B57088 */  addiu $s5, %lo(gAudioBufferParameters) # addiu $s5, $s5, 0x7088
/* 0B7CFC 800B70FC AFB40028 */  sw    $s4, 0x28($sp)
/* 0B7D00 800B7100 86B4000C */  lh    $s4, 0xc($s5)
/* 0B7D04 800B7104 AFB60030 */  sw    $s6, 0x30($sp)
/* 0B7D08 800B7108 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0B7D0C 800B710C 00C08825 */  move  $s1, $a2
/* 0B7D10 800B7110 00E0B025 */  move  $s6, $a3
/* 0B7D14 800B7114 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0B7D18 800B7118 AFBE0038 */  sw    $fp, 0x38($sp)
/* 0B7D1C 800B711C AFB70034 */  sw    $s7, 0x34($sp)
/* 0B7D20 800B7120 AFB30024 */  sw    $s3, 0x24($sp)
/* 0B7D24 800B7124 AFB20020 */  sw    $s2, 0x20($sp)
/* 0B7D28 800B7128 AFB00018 */  sw    $s0, 0x18($sp)
/* 0B7D2C 800B712C AFA40040 */  sw    $a0, 0x40($sp)
/* 0B7D30 800B7130 1A800009 */  blez  $s4, .L800B7158
/* 0B7D34 800B7134 AFA50044 */   sw    $a1, 0x44($sp)
.L800B7138:
/* 0B7D38 800B7138 2690FFFF */  addiu $s0, $s4, -1
/* 0B7D3C 800B713C 0C03044E */  jal   func_800C1138
/* 0B7D40 800B7140 02002025 */   move  $a0, $s0
/* 0B7D44 800B7144 86AE000C */  lh    $t6, 0xc($s5)
/* 0B7D48 800B7148 0C02DC0D */  jal   func_800B7034
/* 0B7D4C 800B714C 01D42023 */   subu  $a0, $t6, $s4
/* 0B7D50 800B7150 1E00FFF9 */  bgtz  $s0, .L800B7138
/* 0B7D54 800B7154 0200A025 */   move  $s4, $s0
.L800B7158:
/* 0B7D58 800B7158 8FAF0040 */  lw    $t7, 0x40($sp)
/* 0B7D5C 800B715C 3C180700 */  lui   $t8, 0x700
/* 0B7D60 800B7160 0220B825 */  move  $s7, $s1
/* 0B7D64 800B7164 ADF80000 */  sw    $t8, ($t7)
/* 0B7D68 800B7168 ADE00004 */  sw    $zero, 4($t7)
/* 0B7D6C 800B716C 86B4000C */  lh    $s4, 0xc($s5)
/* 0B7D70 800B7170 01E01025 */  move  $v0, $t7
/* 0B7D74 800B7174 25FE0008 */  addiu $fp, $t7, 8
/* 0B7D78 800B7178 1A80003D */  blez  $s4, .L800B7270
.L800B717C:
/* 0B7D7C 800B717C 24010001 */   li    $at, 1
/* 0B7D80 800B7180 86B2000C */  lh    $s2, 0xc($s5)
/* 0B7D84 800B7184 16810003 */  bne   $s4, $at, .L800B7194
/* 0B7D88 800B7188 00008825 */   move  $s1, $zero
/* 0B7D8C 800B718C 10000019 */  b     .L800B71F4
/* 0B7D90 800B7190 02C09825 */   move  $s3, $s6
.L800B7194:
/* 0B7D94 800B7194 02D4001A */  div   $zero, $s6, $s4
/* 0B7D98 800B7198 16800002 */  bnez  $s4, .L800B71A4
/* 0B7D9C 800B719C 00000000 */   nop   
/* 0B7DA0 800B71A0 0007000D */  break 7
.L800B71A4:
/* 0B7DA4 800B71A4 2401FFFF */  li    $at, -1
/* 0B7DA8 800B71A8 16810004 */  bne   $s4, $at, .L800B71BC
/* 0B7DAC 800B71AC 3C018000 */   lui   $at, 0x8000
/* 0B7DB0 800B71B0 16C10002 */  bne   $s6, $at, .L800B71BC
/* 0B7DB4 800B71B4 00000000 */   nop   
/* 0B7DB8 800B71B8 0006000D */  break 6
.L800B71BC:
/* 0B7DBC 800B71BC 86A30010 */  lh    $v1, 0x10($s5)
/* 0B7DC0 800B71C0 00001012 */  mflo  $v0
/* 0B7DC4 800B71C4 0043082A */  slt   $at, $v0, $v1
/* 0B7DC8 800B71C8 54200004 */  bnel  $at, $zero, .L800B71DC
/* 0B7DCC 800B71CC 86A30012 */   lh    $v1, 0x12($s5)
/* 0B7DD0 800B71D0 10000008 */  b     .L800B71F4
/* 0B7DD4 800B71D4 00609825 */   move  $s3, $v1
/* 0B7DD8 800B71D8 86A30012 */  lh    $v1, 0x12($s5)
.L800B71DC:
/* 0B7DDC 800B71DC 0062082A */  slt   $at, $v1, $v0
/* 0B7DE0 800B71E0 54200004 */  bnel  $at, $zero, .L800B71F4
/* 0B7DE4 800B71E4 86B3000E */   lh    $s3, 0xe($s5)
/* 0B7DE8 800B71E8 10000002 */  b     .L800B71F4
/* 0B7DEC 800B71EC 00609825 */   move  $s3, $v1
/* 0B7DF0 800B71F0 86B3000E */  lh    $s3, 0xe($s5)
.L800B71F4:
/* 0B7DF4 800B71F4 3C02803B */  lui   $v0, %hi(gNumSynthesisReverbs) # $v0, 0x803b
/* 0B7DF8 800B71F8 8042FBC3 */  lb    $v0, %lo(gNumSynthesisReverbs)($v0)
/* 0B7DFC 800B71FC 58400012 */  blezl $v0, .L800B7248
/* 0B7E00 800B7200 02E02025 */   move  $a0, $s7
/* 0B7E04 800B7204 3C10803B */  lui   $s0, %hi(gSynthesisReverbs) # $s0, 0x803b
/* 0B7E08 800B7208 2610F790 */  addiu $s0, %lo(gSynthesisReverbs) # addiu $s0, $s0, -0x870
.L800B720C:
/* 0B7E0C 800B720C 92190001 */  lbu   $t9, 1($s0)
/* 0B7E10 800B7210 02602025 */  move  $a0, $s3
/* 0B7E14 800B7214 02542823 */  subu  $a1, $s2, $s4
/* 0B7E18 800B7218 53200007 */  beql  $t9, $zero, .L800B7238
/* 0B7E1C 800B721C 26310001 */   addiu $s1, $s1, 1
/* 0B7E20 800B7220 0C02DAFC */  jal   prepare_reverb_ring_buffer
/* 0B7E24 800B7224 02203025 */   move  $a2, $s1
/* 0B7E28 800B7228 3C02803B */  lui   $v0, %hi(gNumSynthesisReverbs) # $v0, 0x803b
/* 0B7E2C 800B722C 8042FBC3 */  lb    $v0, %lo(gNumSynthesisReverbs)($v0)
/* 0B7E30 800B7230 86B2000C */  lh    $s2, 0xc($s5)
/* 0B7E34 800B7234 26310001 */  addiu $s1, $s1, 1
.L800B7238:
/* 0B7E38 800B7238 0222082A */  slt   $at, $s1, $v0
/* 0B7E3C 800B723C 1420FFF3 */  bnez  $at, .L800B720C
/* 0B7E40 800B7240 26100108 */   addiu $s0, $s0, 0x108
/* 0B7E44 800B7244 02E02025 */  move  $a0, $s7
.L800B7248:
/* 0B7E48 800B7248 02602825 */  move  $a1, $s3
/* 0B7E4C 800B724C 03C03025 */  move  $a2, $fp
/* 0B7E50 800B7250 0C02DDD7 */  jal   func_800B775C
/* 0B7E54 800B7254 02543823 */   subu  $a3, $s2, $s4
/* 0B7E58 800B7258 2694FFFF */  addiu $s4, $s4, -1
/* 0B7E5C 800B725C 00134080 */  sll   $t0, $s3, 2
/* 0B7E60 800B7260 0040F025 */  move  $fp, $v0
/* 0B7E64 800B7264 02D3B023 */  subu  $s6, $s6, $s3
/* 0B7E68 800B7268 1E80FFC4 */  bgtz  $s4, .L800B717C
/* 0B7E6C 800B726C 02E8B821 */   addu  $s7, $s7, $t0
.L800B7270:
/* 0B7E70 800B7270 3C02803B */  lui   $v0, %hi(gNumSynthesisReverbs) # $v0, 0x803b
/* 0B7E74 800B7274 8042FBC3 */  lb    $v0, %lo(gNumSynthesisReverbs)($v0)
/* 0B7E78 800B7278 3C09803B */  lui   $t1, %hi(gSynthesisReverbs) # 0x803b
/* 0B7E7C 800B727C 2530F790 */  addiu $s0, $t1, %lo(gSynthesisReverbs) # -0x870
/* 0B7E80 800B7280 1840000E */  blez  $v0, .L800B72BC
/* 0B7E84 800B7284 00025140 */   sll   $t2, $v0, 5
/* 0B7E88 800B7288 01425021 */  addu  $t2, $t2, $v0
/* 0B7E8C 800B728C 000A50C0 */  sll   $t2, $t2, 3
/* 0B7E90 800B7290 01501821 */  addu  $v1, $t2, $s0
.L800B7294:
/* 0B7E94 800B7294 92020002 */  lbu   $v0, 2($s0)
/* 0B7E98 800B7298 10400002 */  beqz  $v0, .L800B72A4
/* 0B7E9C 800B729C 244BFFFF */   addiu $t3, $v0, -1
/* 0B7EA0 800B72A0 A20B0002 */  sb    $t3, 2($s0)
.L800B72A4:
/* 0B7EA4 800B72A4 920C0003 */  lbu   $t4, 3($s0)
/* 0B7EA8 800B72A8 26100108 */  addiu $s0, $s0, 0x108
/* 0B7EAC 800B72AC 0203082B */  sltu  $at, $s0, $v1
/* 0B7EB0 800B72B0 398D0001 */  xori  $t5, $t4, 1
/* 0B7EB4 800B72B4 1420FFF7 */  bnez  $at, .L800B7294
/* 0B7EB8 800B72B8 A20DFEFB */   sb    $t5, -0x105($s0)
.L800B72BC:
/* 0B7EBC 800B72BC 8FAE0040 */  lw    $t6, 0x40($sp)
/* 0B7EC0 800B72C0 8FB90044 */  lw    $t9, 0x44($sp)
/* 0B7EC4 800B72C4 03C01025 */  move  $v0, $fp
/* 0B7EC8 800B72C8 03CE7823 */  subu  $t7, $fp, $t6
/* 0B7ECC 800B72CC 000FC0C3 */  sra   $t8, $t7, 3
/* 0B7ED0 800B72D0 AF380000 */  sw    $t8, ($t9)
/* 0B7ED4 800B72D4 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0B7ED8 800B72D8 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0B7EDC 800B72DC 8FB70034 */  lw    $s7, 0x34($sp)
/* 0B7EE0 800B72E0 8FB60030 */  lw    $s6, 0x30($sp)
/* 0B7EE4 800B72E4 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0B7EE8 800B72E8 8FB40028 */  lw    $s4, 0x28($sp)
/* 0B7EEC 800B72EC 8FB30024 */  lw    $s3, 0x24($sp)
/* 0B7EF0 800B72F0 8FB20020 */  lw    $s2, 0x20($sp)
/* 0B7EF4 800B72F4 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0B7EF8 800B72F8 8FB00018 */  lw    $s0, 0x18($sp)
/* 0B7EFC 800B72FC 03E00008 */  jr    $ra
/* 0B7F00 800B7300 27BD0040 */   addiu $sp, $sp, 0x40
