glabel synthesis_load_note_subs_eu
/* 0B7BB4 800B6FB4 3C06803B */  lui   $a2, %hi(D_803B7088) # $a2, 0x803b
/* 0B7BB8 800B6FB8 24C67088 */  addiu $a2, %lo(D_803B7088) # addiu $a2, $a2, 0x7088
/* 0B7BBC 800B6FBC 84CE000C */  lh    $t6, 0xc($a2)
/* 0B7BC0 800B6FC0 24820001 */  addiu $v0, $a0, 1
/* 0B7BC4 800B6FC4 00051900 */  sll   $v1, $a1, 4
/* 0B7BC8 800B6FC8 004E082A */  slt   $at, $v0, $t6
/* 0B7BCC 800B6FCC 10200017 */  beqz  $at, .L800B702C
/* 0B7BD0 800B6FD0 3C07803B */   lui   $a3, %hi(D_803B70B0) # $a3, 0x803b
/* 0B7BD4 800B6FD4 3C05803B */  lui   $a1, %hi(gNoteSubsEu) # $a1, 0x803b
/* 0B7BD8 800B6FD8 24A5FBC4 */  addiu $a1, %lo(gNoteSubsEu) # addiu $a1, $a1, -0x43c
/* 0B7BDC 800B6FDC 24E770B0 */  addiu $a3, %lo(D_803B70B0) # addiu $a3, $a3, 0x70b0
/* 0B7BE0 800B6FE0 8CF80000 */  lw    $t8, ($a3)
.L800B6FE4:
/* 0B7BE4 800B6FE4 8CAF0000 */  lw    $t7, ($a1)
/* 0B7BE8 800B6FE8 03020019 */  multu $t8, $v0
/* 0B7BEC 800B6FEC 0000C812 */  mflo  $t9
/* 0B7BF0 800B6FF0 00194100 */  sll   $t0, $t9, 4
/* 0B7BF4 800B6FF4 01E84821 */  addu  $t1, $t7, $t0
/* 0B7BF8 800B6FF8 01232021 */  addu  $a0, $t1, $v1
/* 0B7BFC 800B6FFC 8C8A0000 */  lw    $t2, ($a0)
/* 0B7C00 800B7000 000A6040 */  sll   $t4, $t2, 1
/* 0B7C04 800B7004 05800009 */  bltz  $t4, .L800B702C
/* 0B7C08 800B7008 00000000 */   nop   
/* 0B7C0C 800B700C 908D0000 */  lbu   $t5, ($a0)
/* 0B7C10 800B7010 24420001 */  addiu $v0, $v0, 1
/* 0B7C14 800B7014 31AEFF7F */  andi  $t6, $t5, 0xff7f
/* 0B7C18 800B7018 A08E0000 */  sb    $t6, ($a0)
/* 0B7C1C 800B701C 84D8000C */  lh    $t8, 0xc($a2)
/* 0B7C20 800B7020 0058082A */  slt   $at, $v0, $t8
/* 0B7C24 800B7024 5420FFEF */  bnel  $at, $zero, .L800B6FE4
/* 0B7C28 800B7028 8CF80000 */   lw    $t8, ($a3)
.L800B702C:
/* 0B7C2C 800B702C 03E00008 */  jr    $ra
/* 0B7C30 800B7030 00000000 */   nop   

glabel func_800B7034
/* 0B7C34 800B7034 3C08803B */  lui   $t0, %hi(D_803B70B0) # $t0, 0x803b
/* 0B7C38 800B7038 250870B0 */  addiu $t0, %lo(D_803B70B0) # addiu $t0, $t0, 0x70b0
/* 0B7C3C 800B703C 8D030000 */  lw    $v1, ($t0)
/* 0B7C40 800B7040 00803825 */  move  $a3, $a0
/* 0B7C44 800B7044 00001025 */  move  $v0, $zero
/* 0B7C48 800B7048 18600026 */  blez  $v1, .L800B70E4
/* 0B7C4C 800B704C 00002825 */   move  $a1, $zero
/* 0B7C50 800B7050 3C0A803B */  lui   $t2, %hi(gNoteSubsEu) # $t2, 0x803b
/* 0B7C54 800B7054 3C09803B */  lui   $t1, %hi(D_803B1508) # $t1, 0x803b
/* 0B7C58 800B7058 25291508 */  addiu $t1, %lo(D_803B1508) # addiu $t1, $t1, 0x1508
/* 0B7C5C 800B705C 254AFBC4 */  addiu $t2, %lo(gNoteSubsEu) # addiu $t2, $t2, -0x43c
.L800B7060:
/* 0B7C60 800B7060 00670019 */  multu $v1, $a3
/* 0B7C64 800B7064 8D2E0000 */  lw    $t6, ($t1)
/* 0B7C68 800B7068 8D4B0000 */  lw    $t3, ($t2)
/* 0B7C6C 800B706C 00AE2021 */  addu  $a0, $a1, $t6
/* 0B7C70 800B7070 8C8C00B0 */  lw    $t4, 0xb0($a0)
/* 0B7C74 800B7074 248400B0 */  addiu $a0, $a0, 0xb0
/* 0B7C78 800B7078 000C6FC2 */  srl   $t5, $t4, 0x1f
/* 0B7C7C 800B707C 00007812 */  mflo  $t7
/* 0B7C80 800B7080 01E2C021 */  addu  $t8, $t7, $v0
/* 0B7C84 800B7084 0018C900 */  sll   $t9, $t8, 4
/* 0B7C88 800B7088 11A0000D */  beqz  $t5, .L800B70C0
/* 0B7C8C 800B708C 032B3021 */   addu  $a2, $t9, $t3
/* 0B7C90 800B7090 8C810000 */  lw    $at, ($a0)
/* 0B7C94 800B7094 ACC10000 */  sw    $at, ($a2)
/* 0B7C98 800B7098 8C8F0004 */  lw    $t7, 4($a0)
/* 0B7C9C 800B709C ACCF0004 */  sw    $t7, 4($a2)
/* 0B7CA0 800B70A0 8C810008 */  lw    $at, 8($a0)
/* 0B7CA4 800B70A4 ACC10008 */  sw    $at, 8($a2)
/* 0B7CA8 800B70A8 8C8F000C */  lw    $t7, 0xc($a0)
/* 0B7CAC 800B70AC ACCF000C */  sw    $t7, 0xc($a2)
/* 0B7CB0 800B70B0 90980000 */  lbu   $t8, ($a0)
/* 0B7CB4 800B70B4 3319FFBF */  andi  $t9, $t8, 0xffbf
/* 0B7CB8 800B70B8 10000004 */  b     .L800B70CC
/* 0B7CBC 800B70BC A0990000 */   sb    $t9, ($a0)
.L800B70C0:
/* 0B7CC0 800B70C0 90CB0000 */  lbu   $t3, ($a2)
/* 0B7CC4 800B70C4 316CFF7F */  andi  $t4, $t3, 0xff7f
/* 0B7CC8 800B70C8 A0CC0000 */  sb    $t4, ($a2)
.L800B70CC:
/* 0B7CCC 800B70CC 8D030000 */  lw    $v1, ($t0)
/* 0B7CD0 800B70D0 24420001 */  addiu $v0, $v0, 1
/* 0B7CD4 800B70D4 24A500C0 */  addiu $a1, $a1, 0xc0
/* 0B7CD8 800B70D8 0043082A */  slt   $at, $v0, $v1
/* 0B7CDC 800B70DC 1420FFE0 */  bnez  $at, .L800B7060
/* 0B7CE0 800B70E0 00000000 */   nop   
.L800B70E4:
/* 0B7CE4 800B70E4 03E00008 */  jr    $ra
/* 0B7CE8 800B70E8 00000000 */   nop   

glabel func_800B70EC
/* 0B7CEC 800B70EC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0B7CF0 800B70F0 AFB5002C */  sw    $s5, 0x2c($sp)
/* 0B7CF4 800B70F4 3C15803B */  lui   $s5, %hi(D_803B7088) # $s5, 0x803b
/* 0B7CF8 800B70F8 26B57088 */  addiu $s5, %lo(D_803B7088) # addiu $s5, $s5, 0x7088
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

glabel func_800B7304
/* 0B7F04 800B7304 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 0B7F08 800B7308 AFB10020 */  sw    $s1, 0x20($sp)
/* 0B7F0C 800B730C 00068C00 */  sll   $s1, $a2, 0x10
/* 0B7F10 800B7310 00117403 */  sra   $t6, $s1, 0x10
/* 0B7F14 800B7314 000EC940 */  sll   $t9, $t6, 5
/* 0B7F18 800B7318 032EC821 */  addu  $t9, $t9, $t6
/* 0B7F1C 800B731C 3C0D803B */  lui   $t5, %hi(gSynthesisReverbs) # $t5, 0x803b
/* 0B7F20 800B7320 25ADF790 */  addiu $t5, %lo(gSynthesisReverbs) # addiu $t5, $t5, -0x870
/* 0B7F24 800B7324 0019C8C0 */  sll   $t9, $t9, 3
/* 0B7F28 800B7328 01C08825 */  move  $s1, $t6
/* 0B7F2C 800B732C 032D1821 */  addu  $v1, $t9, $t5
/* 0B7F30 800B7330 906E0003 */  lbu   $t6, 3($v1)
/* 0B7F34 800B7334 AFA70064 */  sw    $a3, 0x64($sp)
/* 0B7F38 800B7338 00077C00 */  sll   $t7, $a3, 0x10
/* 0B7F3C 800B733C 000F3C03 */  sra   $a3, $t7, 0x10
/* 0B7F40 800B7340 000E7880 */  sll   $t7, $t6, 2
/* 0B7F44 800B7344 01EE7823 */  subu  $t7, $t7, $t6
/* 0B7F48 800B7348 000F78C0 */  sll   $t7, $t7, 3
/* 0B7F4C 800B734C 01EE7821 */  addu  $t7, $t7, $t6
/* 0B7F50 800B7350 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0B7F54 800B7354 AFB0001C */  sw    $s0, 0x1c($sp)
/* 0B7F58 800B7358 AFA5005C */  sw    $a1, 0x5c($sp)
/* 0B7F5C 800B735C AFA60060 */  sw    $a2, 0x60($sp)
/* 0B7F60 800B7360 3C0D0200 */  lui   $t5, (0x02000840 >> 16) # lui $t5, 0x200
/* 0B7F64 800B7364 000F7880 */  sll   $t7, $t7, 2
/* 0B7F68 800B7368 35AD0840 */  ori   $t5, (0x02000840 & 0xFFFF) # ori $t5, $t5, 0x840
/* 0B7F6C 800B736C 240E0300 */  li    $t6, 768
/* 0B7F70 800B7370 006FC021 */  addu  $t8, $v1, $t7
/* 0B7F74 800B7374 0007C880 */  sll   $t9, $a3, 2
/* 0B7F78 800B7378 AC8E0004 */  sw    $t6, 4($a0)
/* 0B7F7C 800B737C AC8D0000 */  sw    $t5, ($a0)
/* 0B7F80 800B7380 906F0004 */  lbu   $t7, 4($v1)
/* 0B7F84 800B7384 0327C821 */  addu  $t9, $t9, $a3
/* 0B7F88 800B7388 0019C880 */  sll   $t9, $t9, 2
/* 0B7F8C 800B738C 03194021 */  addu  $t0, $t8, $t9
/* 0B7F90 800B7390 24010001 */  li    $at, 1
/* 0B7F94 800B7394 25080030 */  addiu $t0, $t0, 0x30
/* 0B7F98 800B7398 15E1002D */  bne   $t7, $at, .L800B7450
/* 0B7F9C 800B739C 24900008 */   addiu $s0, $a0, 8
/* 0B7FA0 800B73A0 9506000E */  lhu   $a2, 0xe($t0)
/* 0B7FA4 800B73A4 85070010 */  lh    $a3, 0x10($t0)
/* 0B7FA8 800B73A8 AFA80054 */  sw    $t0, 0x54($sp)
/* 0B7FAC 800B73AC AFA30028 */  sw    $v1, 0x28($sp)
/* 0B7FB0 800B73B0 AFB10010 */  sw    $s1, 0x10($sp)
/* 0B7FB4 800B73B4 02002025 */  move  $a0, $s0
/* 0B7FB8 800B73B8 0C02DBA1 */  jal   synthesis_load_reverb_ring_buffer
/* 0B7FBC 800B73BC 24050840 */   li    $a1, 2112
/* 0B7FC0 800B73C0 8FA80054 */  lw    $t0, 0x54($sp)
/* 0B7FC4 800B73C4 00408025 */  move  $s0, $v0
/* 0B7FC8 800B73C8 8FA30028 */  lw    $v1, 0x28($sp)
/* 0B7FCC 800B73CC 85070012 */  lh    $a3, 0x12($t0)
/* 0B7FD0 800B73D0 02002025 */  move  $a0, $s0
/* 0B7FD4 800B73D4 00003025 */  move  $a2, $zero
/* 0B7FD8 800B73D8 50E0000A */  beql  $a3, $zero, .L800B7404
/* 0B7FDC 800B73DC 3C190C30 */   lui   $t9, 0xc30
/* 0B7FE0 800B73E0 85050010 */  lh    $a1, 0x10($t0)
/* 0B7FE4 800B73E4 AFA30028 */  sw    $v1, 0x28($sp)
/* 0B7FE8 800B73E8 AFB10010 */  sw    $s1, 0x10($sp)
/* 0B7FEC 800B73EC 24A50840 */  addiu $a1, $a1, 0x840
/* 0B7FF0 800B73F0 30B8FFFF */  andi  $t8, $a1, 0xffff
/* 0B7FF4 800B73F4 0C02DBA1 */  jal   synthesis_load_reverb_ring_buffer
/* 0B7FF8 800B73F8 03002825 */   move  $a1, $t8
/* 0B7FFC 800B73FC 8FA30028 */  lw    $v1, 0x28($sp)
/* 0B8000 800B7400 3C190C30 */  lui   $t9, (0x0C307FFF >> 16) # lui $t9, 0xc30
.L800B7404:
/* 0B8004 800B7404 3C0D0840 */  lui   $t5, (0x08400540 >> 16) # lui $t5, 0x840
/* 0B8008 800B7408 35AD0540 */  ori   $t5, (0x08400540 & 0xFFFF) # ori $t5, $t5, 0x540
/* 0B800C 800B740C 37397FFF */  ori   $t9, (0x0C307FFF & 0xFFFF) # ori $t9, $t9, 0x7fff
/* 0B8010 800B7410 AC590000 */  sw    $t9, ($v0)
/* 0B8014 800B7414 AC4D0004 */  sw    $t5, 4($v0)
/* 0B8018 800B7418 946E0008 */  lhu   $t6, 8($v1)
/* 0B801C 800B741C 34018000 */  li    $at, 32768
/* 0B8020 800B7420 24500008 */  addiu $s0, $v0, 8
/* 0B8024 800B7424 01C17821 */  addu  $t7, $t6, $at
/* 0B8028 800B7428 31F8FFFF */  andi  $t8, $t7, 0xffff
/* 0B802C 800B742C 3C010C30 */  lui   $at, 0xc30
/* 0B8030 800B7430 02002825 */  move  $a1, $s0
/* 0B8034 800B7434 3C0D0840 */  lui   $t5, (0x08400840 >> 16) # lui $t5, 0x840
/* 0B8038 800B7438 35AD0840 */  ori   $t5, (0x08400840 & 0xFFFF) # ori $t5, $t5, 0x840
/* 0B803C 800B743C 0301C825 */  or    $t9, $t8, $at
/* 0B8040 800B7440 ACB90000 */  sw    $t9, ($a1)
/* 0B8044 800B7444 ACAD0004 */  sw    $t5, 4($a1)
/* 0B8048 800B7448 10000073 */  b     .L800B7618
/* 0B804C 800B744C 26100008 */   addiu $s0, $s0, 8
.L800B7450:
/* 0B8050 800B7450 8D02000C */  lw    $v0, 0xc($t0)
/* 0B8054 800B7454 85190010 */  lh    $t9, 0x10($t0)
/* 0B8058 800B7458 2401FFF0 */  li    $at, -16
/* 0B805C 800B745C 304E0007 */  andi  $t6, $v0, 7
/* 0B8060 800B7460 000E7C40 */  sll   $t7, $t6, 0x11
/* 0B8064 800B7464 000FC403 */  sra   $t8, $t7, 0x10
/* 0B8068 800B7468 03195021 */  addu  $t2, $t8, $t9
/* 0B806C 800B746C 254A000F */  addiu $t2, $t2, 0xf
/* 0B8070 800B7470 03004825 */  move  $t1, $t8
/* 0B8074 800B7474 314DFFF0 */  andi  $t5, $t2, 0xfff0
/* 0B8078 800B7478 000D7400 */  sll   $t6, $t5, 0x10
/* 0B807C 800B747C 000E7C03 */  sra   $t7, $t6, 0x10
/* 0B8080 800B7480 01E05025 */  move  $t2, $t7
/* 0B8084 800B7484 A7AA0050 */  sh    $t2, 0x50($sp)
/* 0B8088 800B7488 A7A90052 */  sh    $t1, 0x52($sp)
/* 0B808C 800B748C AFA80054 */  sw    $t0, 0x54($sp)
/* 0B8090 800B7490 AFA30028 */  sw    $v1, 0x28($sp)
/* 0B8094 800B7494 AFB10010 */  sw    $s1, 0x10($sp)
/* 0B8098 800B7498 02002025 */  move  $a0, $s0
/* 0B809C 800B749C 24050020 */  li    $a1, 32
/* 0B80A0 800B74A0 05210003 */  bgez  $t1, .L800B74B0
/* 0B80A4 800B74A4 0009C043 */   sra   $t8, $t1, 1
/* 0B80A8 800B74A8 25210001 */  addiu $at, $t1, 1
/* 0B80AC 800B74AC 0001C043 */  sra   $t8, $at, 1
.L800B74B0:
/* 0B80B0 800B74B0 00583023 */  subu  $a2, $v0, $t8
/* 0B80B4 800B74B4 30D9FFFF */  andi  $t9, $a2, 0xffff
/* 0B80B8 800B74B8 03203025 */  move  $a2, $t9
/* 0B80BC 800B74BC 0C02DBA1 */  jal   synthesis_load_reverb_ring_buffer
/* 0B80C0 800B74C0 24070180 */   li    $a3, 384
/* 0B80C4 800B74C4 8FA80054 */  lw    $t0, 0x54($sp)
/* 0B80C8 800B74C8 00408025 */  move  $s0, $v0
/* 0B80CC 800B74CC 8FA30028 */  lw    $v1, 0x28($sp)
/* 0B80D0 800B74D0 850D0012 */  lh    $t5, 0x12($t0)
/* 0B80D4 800B74D4 87A90052 */  lh    $t1, 0x52($sp)
/* 0B80D8 800B74D8 87AA0050 */  lh    $t2, 0x50($sp)
/* 0B80DC 800B74DC 11A0000D */  beqz  $t5, .L800B7514
/* 0B80E0 800B74E0 02002025 */   move  $a0, $s0
/* 0B80E4 800B74E4 25450020 */  addiu $a1, $t2, 0x20
/* 0B80E8 800B74E8 30AEFFFF */  andi  $t6, $a1, 0xffff
/* 0B80EC 800B74EC 240F0180 */  li    $t7, 384
/* 0B80F0 800B74F0 01EA3823 */  subu  $a3, $t7, $t2
/* 0B80F4 800B74F4 01C02825 */  move  $a1, $t6
/* 0B80F8 800B74F8 00003025 */  move  $a2, $zero
/* 0B80FC 800B74FC AFB10010 */  sw    $s1, 0x10($sp)
/* 0B8100 800B7500 AFA30028 */  sw    $v1, 0x28($sp)
/* 0B8104 800B7504 0C02DBA1 */  jal   synthesis_load_reverb_ring_buffer
/* 0B8108 800B7508 A7A90052 */   sh    $t1, 0x52($sp)
/* 0B810C 800B750C 8FA30028 */  lw    $v1, 0x28($sp)
/* 0B8110 800B7510 87A90052 */  lh    $t1, 0x52($sp)
.L800B7514:
/* 0B8114 800B7514 25380020 */  addiu $t8, $t1, 0x20
/* 0B8118 800B7518 3C0A0800 */  lui   $t2, 0x800
/* 0B811C 800B751C 3319FFFF */  andi  $t9, $t8, 0xffff
/* 0B8120 800B7520 032A6825 */  or    $t5, $t9, $t2
/* 0B8124 800B7524 AC4D0000 */  sw    $t5, ($v0)
/* 0B8128 800B7528 8FA5005C */  lw    $a1, 0x5c($sp)
/* 0B812C 800B752C 3C010840 */  lui   $at, 0x840
/* 0B8130 800B7530 3C0B0500 */  lui   $t3, 0x500
/* 0B8134 800B7534 00057040 */  sll   $t6, $a1, 1
/* 0B8138 800B7538 31C5FFFF */  andi  $a1, $t6, 0xffff
/* 0B813C 800B753C 00A1C025 */  or    $t8, $a1, $at
/* 0B8140 800B7540 AC580004 */  sw    $t8, 4($v0)
/* 0B8144 800B7544 90780000 */  lbu   $t8, ($v1)
/* 0B8148 800B7548 946D000A */  lhu   $t5, 0xa($v1)
/* 0B814C 800B754C 24500008 */  addiu $s0, $v0, 8
/* 0B8150 800B7550 0018CC00 */  sll   $t9, $t8, 0x10
/* 0B8154 800B7554 01AB7025 */  or    $t6, $t5, $t3
/* 0B8158 800B7558 01D96825 */  or    $t5, $t6, $t9
/* 0B815C 800B755C 02003025 */  move  $a2, $s0
/* 0B8160 800B7560 ACCD0000 */  sw    $t5, ($a2)
/* 0B8164 800B7564 8C6F0020 */  lw    $t7, 0x20($v1)
/* 0B8168 800B7568 3C0C8000 */  lui   $t4, 0x8000
/* 0B816C 800B756C 26100008 */  addiu $s0, $s0, 8
/* 0B8170 800B7570 252E01A0 */  addiu $t6, $t1, 0x1a0
/* 0B8174 800B7574 01ECC021 */  addu  $t8, $t7, $t4
/* 0B8178 800B7578 ACD80004 */  sw    $t8, 4($a2)
/* 0B817C 800B757C 31D9FFFF */  andi  $t9, $t6, 0xffff
/* 0B8180 800B7580 02003825 */  move  $a3, $s0
/* 0B8184 800B7584 3C0109C0 */  lui   $at, 0x9c0
/* 0B8188 800B7588 00A17825 */  or    $t7, $a1, $at
/* 0B818C 800B758C 032A6825 */  or    $t5, $t9, $t2
/* 0B8190 800B7590 ACED0000 */  sw    $t5, ($a3)
/* 0B8194 800B7594 ACEF0004 */  sw    $t7, 4($a3)
/* 0B8198 800B7598 906F0000 */  lbu   $t7, ($v1)
/* 0B819C 800B759C 946E000A */  lhu   $t6, 0xa($v1)
/* 0B81A0 800B75A0 26100008 */  addiu $s0, $s0, 8
/* 0B81A4 800B75A4 000FC400 */  sll   $t8, $t7, 0x10
/* 0B81A8 800B75A8 01CBC825 */  or    $t9, $t6, $t3
/* 0B81AC 800B75AC 03387025 */  or    $t6, $t9, $t8
/* 0B81B0 800B75B0 02004025 */  move  $t0, $s0
/* 0B81B4 800B75B4 AD0E0000 */  sw    $t6, ($t0)
/* 0B81B8 800B75B8 8C6D0024 */  lw    $t5, 0x24($v1)
/* 0B81BC 800B75BC 26100008 */  addiu $s0, $s0, 8
/* 0B81C0 800B75C0 02001025 */  move  $v0, $s0
/* 0B81C4 800B75C4 01AC7821 */  addu  $t7, $t5, $t4
/* 0B81C8 800B75C8 AD0F0004 */  sw    $t7, 4($t0)
/* 0B81CC 800B75CC 3C180840 */  lui   $t8, (0x08400540 >> 16) # lui $t8, 0x840
/* 0B81D0 800B75D0 3C190C30 */  lui   $t9, (0x0C307FFF >> 16) # lui $t9, 0xc30
/* 0B81D4 800B75D4 37397FFF */  ori   $t9, (0x0C307FFF & 0xFFFF) # ori $t9, $t9, 0x7fff
/* 0B81D8 800B75D8 37180540 */  ori   $t8, (0x08400540 & 0xFFFF) # ori $t8, $t8, 0x540
/* 0B81DC 800B75DC AC580004 */  sw    $t8, 4($v0)
/* 0B81E0 800B75E0 AC590000 */  sw    $t9, ($v0)
/* 0B81E4 800B75E4 946E0008 */  lhu   $t6, 8($v1)
/* 0B81E8 800B75E8 34018000 */  li    $at, 32768
/* 0B81EC 800B75EC 26100008 */  addiu $s0, $s0, 8
/* 0B81F0 800B75F0 01C16821 */  addu  $t5, $t6, $at
/* 0B81F4 800B75F4 02002025 */  move  $a0, $s0
/* 0B81F8 800B75F8 31AFFFFF */  andi  $t7, $t5, 0xffff
/* 0B81FC 800B75FC 3C010C30 */  lui   $at, 0xc30
/* 0B8200 800B7600 3C180840 */  lui   $t8, (0x08400840 >> 16) # lui $t8, 0x840
/* 0B8204 800B7604 37180840 */  ori   $t8, (0x08400840 & 0xFFFF) # ori $t8, $t8, 0x840
/* 0B8208 800B7608 01E1C825 */  or    $t9, $t7, $at
/* 0B820C 800B760C AC990000 */  sw    $t9, ($a0)
/* 0B8210 800B7610 AC980004 */  sw    $t8, 4($a0)
/* 0B8214 800B7614 26100008 */  addiu $s0, $s0, 8
.L800B7618:
/* 0B8218 800B7618 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0B821C 800B761C 02001025 */  move  $v0, $s0
/* 0B8220 800B7620 8FB0001C */  lw    $s0, 0x1c($sp)
/* 0B8224 800B7624 8FB10020 */  lw    $s1, 0x20($sp)
/* 0B8228 800B7628 03E00008 */  jr    $ra
/* 0B822C 800B762C 27BD0058 */   addiu $sp, $sp, 0x58

glabel func_800B7630
/* 0B8230 800B7630 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0B8234 800B7634 AFA5002C */  sw    $a1, 0x2c($sp)
/* 0B8238 800B7638 87B8002E */  lh    $t8, 0x2e($sp)
/* 0B823C 800B763C 3C08803B */  lui   $t0, %hi(gSynthesisReverbs) # $t0, 0x803b
/* 0B8240 800B7640 2508F790 */  addiu $t0, %lo(gSynthesisReverbs) # addiu $t0, $t0, -0x870
/* 0B8244 800B7644 0018C940 */  sll   $t9, $t8, 5
/* 0B8248 800B7648 0338C821 */  addu  $t9, $t9, $t8
/* 0B824C 800B764C 0019C8C0 */  sll   $t9, $t9, 3
/* 0B8250 800B7650 03281021 */  addu  $v0, $t9, $t0
/* 0B8254 800B7654 90490003 */  lbu   $t1, 3($v0)
/* 0B8258 800B7658 00067400 */  sll   $t6, $a2, 0x10
/* 0B825C 800B765C 000E7C03 */  sra   $t7, $t6, 0x10
/* 0B8260 800B7660 00095080 */  sll   $t2, $t1, 2
/* 0B8264 800B7664 01495023 */  subu  $t2, $t2, $t1
/* 0B8268 800B7668 000A50C0 */  sll   $t2, $t2, 3
/* 0B826C 800B766C 000F3880 */  sll   $a3, $t7, 2
/* 0B8270 800B7670 01495021 */  addu  $t2, $t2, $t1
/* 0B8274 800B7674 904C0001 */  lbu   $t4, 1($v0)
/* 0B8278 800B7678 000A5080 */  sll   $t2, $t2, 2
/* 0B827C 800B767C 00EF3821 */  addu  $a3, $a3, $t7
/* 0B8280 800B7680 00073880 */  sll   $a3, $a3, 2
/* 0B8284 800B7684 004A5821 */  addu  $t3, $v0, $t2
/* 0B8288 800B7688 01671821 */  addu  $v1, $t3, $a3
/* 0B828C 800B768C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0B8290 800B7690 AFA60030 */  sw    $a2, 0x30($sp)
/* 0B8294 800B7694 1180002C */  beqz  $t4, .L800B7748
/* 0B8298 800B7698 24630030 */   addiu $v1, $v1, 0x30
/* 0B829C 800B769C 904D0004 */  lbu   $t5, 4($v0)
/* 0B82A0 800B76A0 24010001 */  li    $at, 1
/* 0B82A4 800B76A4 3C191530 */  lui   $t9, (0x15300840 >> 16) # lui $t9, 0x1530
/* 0B82A8 800B76A8 15A10017 */  bne   $t5, $at, .L800B7708
/* 0B82AC 800B76AC 37390840 */   ori   $t9, (0x15300840 & 0xFFFF) # ori $t9, $t9, 0x840
/* 0B82B0 800B76B0 87AE002E */  lh    $t6, 0x2e($sp)
/* 0B82B4 800B76B4 9466000E */  lhu   $a2, 0xe($v1)
/* 0B82B8 800B76B8 84670010 */  lh    $a3, 0x10($v1)
/* 0B82BC 800B76BC AFA30024 */  sw    $v1, 0x24($sp)
/* 0B82C0 800B76C0 24050840 */  li    $a1, 2112
/* 0B82C4 800B76C4 0C02DBC7 */  jal   func_800B6F1C
/* 0B82C8 800B76C8 AFAE0010 */   sw    $t6, 0x10($sp)
/* 0B82CC 800B76CC 8FA30024 */  lw    $v1, 0x24($sp)
/* 0B82D0 800B76D0 00402025 */  move  $a0, $v0
/* 0B82D4 800B76D4 87B8002E */  lh    $t8, 0x2e($sp)
/* 0B82D8 800B76D8 84670012 */  lh    $a3, 0x12($v1)
/* 0B82DC 800B76DC 50E0001B */  beql  $a3, $zero, .L800B774C
/* 0B82E0 800B76E0 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0B82E4 800B76E4 84650010 */  lh    $a1, 0x10($v1)
/* 0B82E8 800B76E8 AFB80010 */  sw    $t8, 0x10($sp)
/* 0B82EC 800B76EC 00003025 */  move  $a2, $zero
/* 0B82F0 800B76F0 24A50840 */  addiu $a1, $a1, 0x840
/* 0B82F4 800B76F4 30AFFFFF */  andi  $t7, $a1, 0xffff
/* 0B82F8 800B76F8 0C02DBC7 */  jal   func_800B6F1C
/* 0B82FC 800B76FC 01E02825 */   move  $a1, $t7
/* 0B8300 800B7700 10000011 */  b     .L800B7748
/* 0B8304 800B7704 00402025 */   move  $a0, $v0
.L800B7708:
/* 0B8308 800B7708 00801825 */  move  $v1, $a0
/* 0B830C 800B770C AC790000 */  sw    $t9, ($v1)
/* 0B8310 800B7710 90480003 */  lbu   $t0, 3($v0)
/* 0B8314 800B7714 3C018000 */  lui   $at, 0x8000
/* 0B8318 800B7718 24840008 */  addiu $a0, $a0, 8
/* 0B831C 800B771C 00084880 */  sll   $t1, $t0, 2
/* 0B8320 800B7720 01284823 */  subu  $t1, $t1, $t0
/* 0B8324 800B7724 000948C0 */  sll   $t1, $t1, 3
/* 0B8328 800B7728 01284821 */  addu  $t1, $t1, $t0
/* 0B832C 800B772C 00094880 */  sll   $t1, $t1, 2
/* 0B8330 800B7730 00495021 */  addu  $t2, $v0, $t1
/* 0B8334 800B7734 01475821 */  addu  $t3, $t2, $a3
/* 0B8338 800B7738 8D6C0034 */  lw    $t4, 0x34($t3)
/* 0B833C 800B773C 01816821 */  addu  $t5, $t4, $at
/* 0B8340 800B7740 AC6D0004 */  sw    $t5, 4($v1)
/* 0B8344 800B7744 A0400000 */  sb    $zero, ($v0)
.L800B7748:
/* 0B8348 800B7748 8FBF001C */  lw    $ra, 0x1c($sp)
.L800B774C:
/* 0B834C 800B774C 27BD0028 */  addiu $sp, $sp, 0x28
/* 0B8350 800B7750 00801025 */  move  $v0, $a0
/* 0B8354 800B7754 03E00008 */  jr    $ra
/* 0B8358 800B7758 00000000 */   nop   

glabel func_800B775C
/* 0B835C 800B775C 27BDFF40 */  addiu $sp, $sp, -0xc0
/* 0B8360 800B7760 3C0A803B */  lui   $t2, %hi(gNumSynthesisReverbs) # $t2, 0x803b
/* 0B8364 800B7764 254AFBC3 */  addiu $t2, %lo(gNumSynthesisReverbs) # addiu $t2, $t2, -0x43d
/* 0B8368 800B7768 81490000 */  lb    $t1, ($t2)
/* 0B836C 800B776C AFB5003C */  sw    $s5, 0x3c($sp)
/* 0B8370 800B7770 AFB40038 */  sw    $s4, 0x38($sp)
/* 0B8374 800B7774 AFB20030 */  sw    $s2, 0x30($sp)
/* 0B8378 800B7778 00C0A025 */  move  $s4, $a2
/* 0B837C 800B777C 00E0A825 */  move  $s5, $a3
/* 0B8380 800B7780 AFBF004C */  sw    $ra, 0x4c($sp)
/* 0B8384 800B7784 AFBE0048 */  sw    $fp, 0x48($sp)
/* 0B8388 800B7788 AFB70044 */  sw    $s7, 0x44($sp)
/* 0B838C 800B778C AFB60040 */  sw    $s6, 0x40($sp)
/* 0B8390 800B7790 AFB30034 */  sw    $s3, 0x34($sp)
/* 0B8394 800B7794 AFB1002C */  sw    $s1, 0x2c($sp)
/* 0B8398 800B7798 AFB00028 */  sw    $s0, 0x28($sp)
/* 0B839C 800B779C AFA400C0 */  sw    $a0, 0xc0($sp)
/* 0B83A0 800B77A0 AFA500C4 */  sw    $a1, 0xc4($sp)
/* 0B83A4 800B77A4 1520001D */  bnez  $t1, .L800B781C
/* 0B83A8 800B77A8 00009025 */   move  $s2, $zero
/* 0B83AC 800B77AC 3C04803B */  lui   $a0, %hi(D_803B70B0) # $a0, 0x803b
/* 0B83B0 800B77B0 8C8470B0 */  lw    $a0, %lo(D_803B70B0)($a0)
/* 0B83B4 800B77B4 00008825 */  move  $s1, $zero
/* 0B83B8 800B77B8 18800016 */  blez  $a0, .L800B7814
/* 0B83BC 800B77BC 00000000 */   nop   
/* 0B83C0 800B77C0 00870019 */  multu $a0, $a3
/* 0B83C4 800B77C4 3C0E803B */  lui   $t6, %hi(gNoteSubsEu) # $t6, 0x803b
/* 0B83C8 800B77C8 8DCEFBC4 */  lw    $t6, %lo(gNoteSubsEu)($t6)
/* 0B83CC 800B77CC 27A50084 */  addiu $a1, $sp, 0x84
/* 0B83D0 800B77D0 00007812 */  mflo  $t7
/* 0B83D4 800B77D4 000FC100 */  sll   $t8, $t7, 4
/* 0B83D8 800B77D8 01D81021 */  addu  $v0, $t6, $t8
.L800B77DC:
/* 0B83DC 800B77DC 8C590000 */  lw    $t9, ($v0)
/* 0B83E0 800B77E0 00B26021 */  addu  $t4, $a1, $s2
/* 0B83E4 800B77E4 00195FC2 */  srl   $t3, $t9, 0x1f
/* 0B83E8 800B77E8 51600006 */  beql  $t3, $zero, .L800B7804
/* 0B83EC 800B77EC 26310001 */   addiu $s1, $s1, 1
/* 0B83F0 800B77F0 26520001 */  addiu $s2, $s2, 1
/* 0B83F4 800B77F4 00126C00 */  sll   $t5, $s2, 0x10
/* 0B83F8 800B77F8 000D9403 */  sra   $s2, $t5, 0x10
/* 0B83FC 800B77FC A1910000 */  sb    $s1, ($t4)
/* 0B8400 800B7800 26310001 */  addiu $s1, $s1, 1
.L800B7804:
/* 0B8404 800B7804 0224082A */  slt   $at, $s1, $a0
/* 0B8408 800B7808 1420FFF4 */  bnez  $at, .L800B77DC
/* 0B840C 800B780C 24420010 */   addiu $v0, $v0, 0x10
/* 0B8410 800B7810 00008825 */  move  $s1, $zero
.L800B7814:
/* 0B8414 800B7814 10000049 */  b     .L800B793C
/* 0B8418 800B7818 00009825 */   move  $s3, $zero
.L800B781C:
/* 0B841C 800B781C 19200026 */  blez  $t1, .L800B78B8
/* 0B8420 800B7820 00009825 */   move  $s3, $zero
/* 0B8424 800B7824 3C04803B */  lui   $a0, %hi(D_803B70B0) # $a0, 0x803b
/* 0B8428 800B7828 8C8470B0 */  lw    $a0, %lo(D_803B70B0)($a0)
/* 0B842C 800B782C 27A50084 */  addiu $a1, $sp, 0x84
.L800B7830:
/* 0B8430 800B7830 1880001A */  blez  $a0, .L800B789C
/* 0B8434 800B7834 00008825 */   move  $s1, $zero
/* 0B8438 800B7838 00950019 */  multu $a0, $s5
/* 0B843C 800B783C 3C08803B */  lui   $t0, %hi(gNoteSubsEu) # $t0, 0x803b
/* 0B8440 800B7840 8D08FBC4 */  lw    $t0, %lo(gNoteSubsEu)($t0)
/* 0B8444 800B7844 00001812 */  mflo  $v1
/* 0B8448 800B7848 00000000 */  nop   
/* 0B844C 800B784C 00000000 */  nop   
.L800B7850:
/* 0B8450 800B7850 00037100 */  sll   $t6, $v1, 4
/* 0B8454 800B7854 01C81021 */  addu  $v0, $t6, $t0
/* 0B8458 800B7858 8C580000 */  lw    $t8, ($v0)
/* 0B845C 800B785C 0018CFC2 */  srl   $t9, $t8, 0x1f
/* 0B8460 800B7860 5320000B */  beql  $t9, $zero, .L800B7890
/* 0B8464 800B7864 26310001 */   addiu $s1, $s1, 1
/* 0B8468 800B7868 904B0001 */  lbu   $t3, 1($v0)
/* 0B846C 800B786C 00B26821 */  addu  $t5, $a1, $s2
/* 0B8470 800B7870 000B6142 */  srl   $t4, $t3, 5
/* 0B8474 800B7874 566C0006 */  bnel  $s3, $t4, .L800B7890
/* 0B8478 800B7878 26310001 */   addiu $s1, $s1, 1
/* 0B847C 800B787C 26520001 */  addiu $s2, $s2, 1
/* 0B8480 800B7880 00127C00 */  sll   $t7, $s2, 0x10
/* 0B8484 800B7884 000F9403 */  sra   $s2, $t7, 0x10
/* 0B8488 800B7888 A1B10000 */  sb    $s1, ($t5)
/* 0B848C 800B788C 26310001 */  addiu $s1, $s1, 1
.L800B7890:
/* 0B8490 800B7890 0224082A */  slt   $at, $s1, $a0
/* 0B8494 800B7894 1420FFEE */  bnez  $at, .L800B7850
/* 0B8498 800B7898 24630001 */   addiu $v1, $v1, 1
.L800B789C:
/* 0B849C 800B789C 26730001 */  addiu $s3, $s3, 1
/* 0B84A0 800B78A0 0013C400 */  sll   $t8, $s3, 0x10
/* 0B84A4 800B78A4 00189C03 */  sra   $s3, $t8, 0x10
/* 0B84A8 800B78A8 0269082A */  slt   $at, $s3, $t1
/* 0B84AC 800B78AC 1420FFE0 */  bnez  $at, .L800B7830
/* 0B84B0 800B78B0 00000000 */   nop   
/* 0B84B4 800B78B4 00009825 */  move  $s3, $zero
.L800B78B8:
/* 0B84B8 800B78B8 3C04803B */  lui   $a0, %hi(D_803B70B0) # $a0, 0x803b
/* 0B84BC 800B78BC 8C8470B0 */  lw    $a0, %lo(D_803B70B0)($a0)
/* 0B84C0 800B78C0 27A50084 */  addiu $a1, $sp, 0x84
/* 0B84C4 800B78C4 00008825 */  move  $s1, $zero
/* 0B84C8 800B78C8 5880001D */  blezl $a0, .L800B7940
/* 0B84CC 800B78CC 02801025 */   move  $v0, $s4
/* 0B84D0 800B78D0 00950019 */  multu $a0, $s5
/* 0B84D4 800B78D4 3C08803B */  lui   $t0, %hi(gNoteSubsEu) # $t0, 0x803b
/* 0B84D8 800B78D8 8D08FBC4 */  lw    $t0, %lo(gNoteSubsEu)($t0)
/* 0B84DC 800B78DC 00001812 */  mflo  $v1
/* 0B84E0 800B78E0 00000000 */  nop   
/* 0B84E4 800B78E4 00000000 */  nop   
.L800B78E8:
/* 0B84E8 800B78E8 00035900 */  sll   $t3, $v1, 4
/* 0B84EC 800B78EC 01681021 */  addu  $v0, $t3, $t0
/* 0B84F0 800B78F0 8C4C0000 */  lw    $t4, ($v0)
/* 0B84F4 800B78F4 000C6FC2 */  srl   $t5, $t4, 0x1f
/* 0B84F8 800B78F8 51A0000C */  beql  $t5, $zero, .L800B792C
/* 0B84FC 800B78FC 26310001 */   addiu $s1, $s1, 1
/* 0B8500 800B7900 904F0001 */  lbu   $t7, 1($v0)
/* 0B8504 800B7904 00B2C021 */  addu  $t8, $a1, $s2
/* 0B8508 800B7908 000F7142 */  srl   $t6, $t7, 5
/* 0B850C 800B790C 01C9082A */  slt   $at, $t6, $t1
/* 0B8510 800B7910 54200006 */  bnel  $at, $zero, .L800B792C
/* 0B8514 800B7914 26310001 */   addiu $s1, $s1, 1
/* 0B8518 800B7918 26520001 */  addiu $s2, $s2, 1
/* 0B851C 800B791C 0012CC00 */  sll   $t9, $s2, 0x10
/* 0B8520 800B7920 00199403 */  sra   $s2, $t9, 0x10
/* 0B8524 800B7924 A3110000 */  sb    $s1, ($t8)
/* 0B8528 800B7928 26310001 */  addiu $s1, $s1, 1
.L800B792C:
/* 0B852C 800B792C 0224082A */  slt   $at, $s1, $a0
/* 0B8530 800B7930 1420FFED */  bnez  $at, .L800B78E8
/* 0B8534 800B7934 24630001 */   addiu $v1, $v1, 1
/* 0B8538 800B7938 00008825 */  move  $s1, $zero
.L800B793C:
/* 0B853C 800B793C 02801025 */  move  $v0, $s4
.L800B7940:
/* 0B8540 800B7940 3C0C0200 */  lui   $t4, (0x02000540 >> 16) # lui $t4, 0x200
/* 0B8544 800B7944 358C0540 */  ori   $t4, (0x02000540 & 0xFFFF) # ori $t4, $t4, 0x540
/* 0B8548 800B7948 240D0300 */  li    $t5, 768
/* 0B854C 800B794C AC4D0004 */  sw    $t5, 4($v0)
/* 0B8550 800B7950 AC4C0000 */  sw    $t4, ($v0)
/* 0B8554 800B7954 814F0000 */  lb    $t7, ($t2)
/* 0B8558 800B7958 3C1E803B */  lui   $fp, %hi(D_803B1508) # $fp, 0x803b
/* 0B855C 800B795C 26940008 */  addiu $s4, $s4, 8
/* 0B8560 800B7960 19E00055 */  blez  $t7, .L800B7AB8
/* 0B8564 800B7964 27DE1508 */   addiu $fp, %lo(D_803B1508) # addiu $fp, $fp, 0x1508
/* 0B8568 800B7968 3C16803B */  lui   $s6, %hi(gNoteSubsEu) # $s6, 0x803b
/* 0B856C 800B796C 26D6FBC4 */  addiu $s6, %lo(gNoteSubsEu) # addiu $s6, $s6, -0x43c
/* 0B8570 800B7970 241700C0 */  li    $s7, 192
/* 0B8574 800B7974 00137140 */  sll   $t6, $s3, 5
.L800B7978:
/* 0B8578 800B7978 01D37021 */  addu  $t6, $t6, $s3
/* 0B857C 800B797C 3C18803B */  lui   $t8, %hi(gSynthesisReverbs) # $t8, 0x803b
/* 0B8580 800B7980 2718F790 */  addiu $t8, %lo(gSynthesisReverbs) # addiu $t8, $t8, -0x870
/* 0B8584 800B7984 000E70C0 */  sll   $t6, $t6, 3
/* 0B8588 800B7988 01D8C821 */  addu  $t9, $t6, $t8
/* 0B858C 800B798C AFB90064 */  sw    $t9, 0x64($sp)
/* 0B8590 800B7990 932B0001 */  lbu   $t3, 1($t9)
/* 0B8594 800B7994 3C01803B */  lui   $at, %hi(gUseReverb) # $at, 0x803b
/* 0B8598 800B7998 02802025 */  move  $a0, $s4
/* 0B859C 800B799C 000B6600 */  sll   $t4, $t3, 0x18
/* 0B85A0 800B79A0 000C6E03 */  sra   $t5, $t4, 0x18
/* 0B85A4 800B79A4 11A0000A */  beqz  $t5, .L800B79D0
/* 0B85A8 800B79A8 A02BFBC2 */   sb    $t3, %lo(gUseReverb)($at)
/* 0B85AC 800B79AC 00133400 */  sll   $a2, $s3, 0x10
/* 0B85B0 800B79B0 00153C00 */  sll   $a3, $s5, 0x10
/* 0B85B4 800B79B4 00077403 */  sra   $t6, $a3, 0x10
/* 0B85B8 800B79B8 00067C03 */  sra   $t7, $a2, 0x10
/* 0B85BC 800B79BC 01E03025 */  move  $a2, $t7
/* 0B85C0 800B79C0 01C03825 */  move  $a3, $t6
/* 0B85C4 800B79C4 0C02DCC1 */  jal   func_800B7304
/* 0B85C8 800B79C8 8FA500C4 */   lw    $a1, 0xc4($sp)
/* 0B85CC 800B79CC 0040A025 */  move  $s4, $v0
.L800B79D0:
/* 0B85D0 800B79D0 0232082A */  slt   $at, $s1, $s2
/* 0B85D4 800B79D4 10200024 */  beqz  $at, .L800B7A68
/* 0B85D8 800B79D8 27B80084 */   addiu $t8, $sp, 0x84
/* 0B85DC 800B79DC 02388021 */  addu  $s0, $s1, $t8
.L800B79E0:
/* 0B85E0 800B79E0 3C19803B */  lui   $t9, %hi(D_803B70B0) # $t9, 0x803b
/* 0B85E4 800B79E4 8F3970B0 */  lw    $t9, %lo(D_803B70B0)($t9)
/* 0B85E8 800B79E8 92030000 */  lbu   $v1, ($s0)
/* 0B85EC 800B79EC 8EC80000 */  lw    $t0, ($s6)
/* 0B85F0 800B79F0 02B90019 */  multu $s5, $t9
/* 0B85F4 800B79F4 00035900 */  sll   $t3, $v1, 4
/* 0B85F8 800B79F8 010B6021 */  addu  $t4, $t0, $t3
/* 0B85FC 800B79FC 00602025 */  move  $a0, $v1
/* 0B8600 800B7A00 00001012 */  mflo  $v0
/* 0B8604 800B7A04 00026900 */  sll   $t5, $v0, 4
/* 0B8608 800B7A08 018D7821 */  addu  $t7, $t4, $t5
/* 0B860C 800B7A0C 91EE0001 */  lbu   $t6, 1($t7)
/* 0B8610 800B7A10 000EC142 */  srl   $t8, $t6, 5
/* 0B8614 800B7A14 56780015 */  bnel  $s3, $t8, .L800B7A6C
/* 0B8618 800B7A18 8FAE0064 */   lw    $t6, 0x64($sp)
/* 0B861C 800B7A1C 00770019 */  multu $v1, $s7
/* 0B8620 800B7A20 8FCD0000 */  lw    $t5, ($fp)
/* 0B8624 800B7A24 8FAF00C4 */  lw    $t7, 0xc4($sp)
/* 0B8628 800B7A28 0062C821 */  addu  $t9, $v1, $v0
/* 0B862C 800B7A2C 00195900 */  sll   $t3, $t9, 4
/* 0B8630 800B7A30 01682821 */  addu  $a1, $t3, $t0
/* 0B8634 800B7A34 8FA700C0 */  lw    $a3, 0xc0($sp)
/* 0B8638 800B7A38 AFB40014 */  sw    $s4, 0x14($sp)
/* 0B863C 800B7A3C AFB50018 */  sw    $s5, 0x18($sp)
/* 0B8640 800B7A40 AFAF0010 */  sw    $t7, 0x10($sp)
/* 0B8644 800B7A44 00006012 */  mflo  $t4
/* 0B8648 800B7A48 018D3021 */  addu  $a2, $t4, $t5
/* 0B864C 800B7A4C 0C02DF0C */  jal   func_800B7C30
/* 0B8650 800B7A50 24C60010 */   addiu $a2, $a2, 0x10
/* 0B8654 800B7A54 26310001 */  addiu $s1, $s1, 1
/* 0B8658 800B7A58 0232082A */  slt   $at, $s1, $s2
/* 0B865C 800B7A5C 0040A025 */  move  $s4, $v0
/* 0B8660 800B7A60 1420FFDF */  bnez  $at, .L800B79E0
/* 0B8664 800B7A64 26100001 */   addiu $s0, $s0, 1
.L800B7A68:
/* 0B8668 800B7A68 8FAE0064 */  lw    $t6, 0x64($sp)
.L800B7A6C:
/* 0B866C 800B7A6C 00132C00 */  sll   $a1, $s3, 0x10
/* 0B8670 800B7A70 0005CC03 */  sra   $t9, $a1, 0x10
/* 0B8674 800B7A74 91D80001 */  lbu   $t8, 1($t6)
/* 0B8678 800B7A78 03202825 */  move  $a1, $t9
/* 0B867C 800B7A7C 02802025 */  move  $a0, $s4
/* 0B8680 800B7A80 13000005 */  beqz  $t8, .L800B7A98
/* 0B8684 800B7A84 00153400 */   sll   $a2, $s5, 0x10
/* 0B8688 800B7A88 00065C03 */  sra   $t3, $a2, 0x10
/* 0B868C 800B7A8C 0C02DD8C */  jal   func_800B7630
/* 0B8690 800B7A90 01603025 */   move  $a2, $t3
/* 0B8694 800B7A94 0040A025 */  move  $s4, $v0
.L800B7A98:
/* 0B8698 800B7A98 3C0F803B */  lui   $t7, %hi(gNumSynthesisReverbs) # $t7, 0x803b
/* 0B869C 800B7A9C 81EFFBC3 */  lb    $t7, %lo(gNumSynthesisReverbs)($t7)
/* 0B86A0 800B7AA0 26730001 */  addiu $s3, $s3, 1
/* 0B86A4 800B7AA4 00136400 */  sll   $t4, $s3, 0x10
/* 0B86A8 800B7AA8 000C9C03 */  sra   $s3, $t4, 0x10
/* 0B86AC 800B7AAC 026F082A */  slt   $at, $s3, $t7
/* 0B86B0 800B7AB0 5420FFB1 */  bnel  $at, $zero, .L800B7978
/* 0B86B4 800B7AB4 00137140 */   sll   $t6, $s3, 5
.L800B7AB8:
/* 0B86B8 800B7AB8 3C16803B */  lui   $s6, %hi(gNoteSubsEu) # $s6, 0x803b
/* 0B86BC 800B7ABC 3C1E803B */  lui   $fp, %hi(D_803B1508) # $fp, 0x803b
/* 0B86C0 800B7AC0 0232082A */  slt   $at, $s1, $s2
/* 0B86C4 800B7AC4 27DE1508 */  addiu $fp, %lo(D_803B1508) # addiu $fp, $fp, 0x1508
/* 0B86C8 800B7AC8 26D6FBC4 */  addiu $s6, %lo(gNoteSubsEu) # addiu $s6, $s6, -0x43c
/* 0B86CC 800B7ACC 10200030 */  beqz  $at, .L800B7B90
/* 0B86D0 800B7AD0 241700C0 */   li    $s7, 192
/* 0B86D4 800B7AD4 27AE0084 */  addiu $t6, $sp, 0x84
/* 0B86D8 800B7AD8 022E8021 */  addu  $s0, $s1, $t6
/* 0B86DC 800B7ADC 24130001 */  li    $s3, 1
.L800B7AE0:
/* 0B86E0 800B7AE0 3C18803B */  lui   $t8, %hi(D_803B70B0) # $t8, 0x803b
/* 0B86E4 800B7AE4 8F1870B0 */  lw    $t8, %lo(D_803B70B0)($t8)
/* 0B86E8 800B7AE8 92030000 */  lbu   $v1, ($s0)
/* 0B86EC 800B7AEC 8EC80000 */  lw    $t0, ($s6)
/* 0B86F0 800B7AF0 02B80019 */  multu $s5, $t8
/* 0B86F4 800B7AF4 0003C900 */  sll   $t9, $v1, 4
/* 0B86F8 800B7AF8 01195821 */  addu  $t3, $t0, $t9
/* 0B86FC 800B7AFC 3C0F803B */  lui   $t7, %hi(D_803B03C0) # 0x803b
/* 0B8700 800B7B00 3C011000 */  lui   $at, 0x1000
/* 0B8704 800B7B04 00602025 */  move  $a0, $v1
/* 0B8708 800B7B08 00001012 */  mflo  $v0
/* 0B870C 800B7B0C 00026100 */  sll   $t4, $v0, 4
/* 0B8710 800B7B10 016C6821 */  addu  $t5, $t3, $t4
/* 0B8714 800B7B14 91A50002 */  lbu   $a1, 2($t5)
/* 0B8718 800B7B18 01E57821 */  addu  $t7, $t7, $a1
/* 0B871C 800B7B1C 91EF03C0 */  lbu   $t7, %lo(D_803B03C0)($t7) # 0x3c0($t7)
/* 0B8720 800B7B20 29EE0002 */  slti  $t6, $t7, 2
/* 0B8724 800B7B24 39CE0001 */  xori  $t6, $t6, 1
/* 0B8728 800B7B28 166E0011 */  bne   $s3, $t6, .L800B7B70
/* 0B872C 800B7B2C 00117A00 */   sll   $t7, $s1, 8
/* 0B8730 800B7B30 00770019 */  multu $v1, $s7
/* 0B8734 800B7B34 8FCC0000 */  lw    $t4, ($fp)
/* 0B8738 800B7B38 8FAD00C4 */  lw    $t5, 0xc4($sp)
/* 0B873C 800B7B3C 0062C021 */  addu  $t8, $v1, $v0
/* 0B8740 800B7B40 0018C900 */  sll   $t9, $t8, 4
/* 0B8744 800B7B44 03282821 */  addu  $a1, $t9, $t0
/* 0B8748 800B7B48 8FA700C0 */  lw    $a3, 0xc0($sp)
/* 0B874C 800B7B4C AFB40014 */  sw    $s4, 0x14($sp)
/* 0B8750 800B7B50 AFB50018 */  sw    $s5, 0x18($sp)
/* 0B8754 800B7B54 AFAD0010 */  sw    $t5, 0x10($sp)
/* 0B8758 800B7B58 00005812 */  mflo  $t3
/* 0B875C 800B7B5C 016C3021 */  addu  $a2, $t3, $t4
/* 0B8760 800B7B60 0C02DF0C */  jal   func_800B7C30
/* 0B8764 800B7B64 24C60010 */   addiu $a2, $a2, 0x10
/* 0B8768 800B7B68 10000005 */  b     .L800B7B80
/* 0B876C 800B7B6C 0040A025 */   move  $s4, $v0
.L800B7B70:
/* 0B8770 800B7B70 00AF7021 */  addu  $t6, $a1, $t7
/* 0B8774 800B7B74 01C1C021 */  addu  $t8, $t6, $at
/* 0B8778 800B7B78 3C01803B */  lui   $at, %hi(D_803B7198) # $at, 0x803b
/* 0B877C 800B7B7C AC387198 */  sw    $t8, %lo(D_803B7198)($at)
.L800B7B80:
/* 0B8780 800B7B80 26310001 */  addiu $s1, $s1, 1
/* 0B8784 800B7B84 0232082A */  slt   $at, $s1, $s2
/* 0B8788 800B7B88 1420FFD5 */  bnez  $at, .L800B7AE0
/* 0B878C 800B7B8C 26100001 */   addiu $s0, $s0, 1
.L800B7B90:
/* 0B8790 800B7B90 02802025 */  move  $a0, $s4
/* 0B8794 800B7B94 3C190800 */  lui   $t9, 0x800
/* 0B8798 800B7B98 AC990000 */  sw    $t9, ($a0)
/* 0B879C 800B7B9C 8FA300C4 */  lw    $v1, 0xc4($sp)
/* 0B87A0 800B7BA0 26940008 */  addiu $s4, $s4, 8
/* 0B87A4 800B7BA4 02802825 */  move  $a1, $s4
/* 0B87A8 800B7BA8 00035840 */  sll   $t3, $v1, 1
/* 0B87AC 800B7BAC 316CFFFF */  andi  $t4, $t3, 0xffff
/* 0B87B0 800B7BB0 000B7040 */  sll   $t6, $t3, 1
/* 0B87B4 800B7BB4 AC8C0004 */  sw    $t4, 4($a0)
/* 0B87B8 800B7BB8 000EC103 */  sra   $t8, $t6, 4
/* 0B87BC 800B7BBC 3C0F0540 */  lui   $t7, (0x054006C0 >> 16) # lui $t7, 0x540
/* 0B87C0 800B7BC0 331900FF */  andi  $t9, $t8, 0xff
/* 0B87C4 800B7BC4 35EF06C0 */  ori   $t7, (0x054006C0 & 0xFFFF) # ori $t7, $t7, 0x6c0
/* 0B87C8 800B7BC8 26940008 */  addiu $s4, $s4, 8
/* 0B87CC 800B7BCC 3C0D0D00 */  lui   $t5, 0xd00
/* 0B87D0 800B7BD0 00195C00 */  sll   $t3, $t9, 0x10
/* 0B87D4 800B7BD4 3C011500 */  lui   $at, 0x1500
/* 0B87D8 800B7BD8 ACAD0000 */  sw    $t5, ($a1)
/* 0B87DC 800B7BDC ACAF0004 */  sw    $t7, 4($a1)
/* 0B87E0 800B7BE0 01616025 */  or    $t4, $t3, $at
/* 0B87E4 800B7BE4 02803025 */  move  $a2, $s4
/* 0B87E8 800B7BE8 ACCC0000 */  sw    $t4, ($a2)
/* 0B87EC 800B7BEC 8FAD00C0 */  lw    $t5, 0xc0($sp)
/* 0B87F0 800B7BF0 3C018000 */  lui   $at, 0x8000
/* 0B87F4 800B7BF4 26820008 */  addiu $v0, $s4, 8
/* 0B87F8 800B7BF8 01A17821 */  addu  $t7, $t5, $at
/* 0B87FC 800B7BFC ACCF0004 */  sw    $t7, 4($a2)
/* 0B8800 800B7C00 8FBF004C */  lw    $ra, 0x4c($sp)
/* 0B8804 800B7C04 8FBE0048 */  lw    $fp, 0x48($sp)
/* 0B8808 800B7C08 8FB70044 */  lw    $s7, 0x44($sp)
/* 0B880C 800B7C0C 8FB60040 */  lw    $s6, 0x40($sp)
/* 0B8810 800B7C10 8FB5003C */  lw    $s5, 0x3c($sp)
/* 0B8814 800B7C14 8FB40038 */  lw    $s4, 0x38($sp)
/* 0B8818 800B7C18 8FB30034 */  lw    $s3, 0x34($sp)
/* 0B881C 800B7C1C 8FB20030 */  lw    $s2, 0x30($sp)
/* 0B8820 800B7C20 8FB1002C */  lw    $s1, 0x2c($sp)
/* 0B8824 800B7C24 8FB00028 */  lw    $s0, 0x28($sp)
/* 0B8828 800B7C28 03E00008 */  jr    $ra
/* 0B882C 800B7C2C 27BD00C0 */   addiu $sp, $sp, 0xc0

glabel func_800B7C30
/* 0B8830 800B7C30 27BDFEC0 */  addiu $sp, $sp, -0x140
/* 0B8834 800B7C34 3C18803B */  lui   $t8, %hi(D_803B1508) # $t8, 0x803b
/* 0B8838 800B7C38 8F181508 */  lw    $t8, %lo(D_803B1508)($t8)
/* 0B883C 800B7C3C 00047880 */  sll   $t7, $a0, 2
/* 0B8840 800B7C40 01E47823 */  subu  $t7, $t7, $a0
/* 0B8844 800B7C44 000F7980 */  sll   $t7, $t7, 6
/* 0B8848 800B7C48 01F8C821 */  addu  $t9, $t7, $t8
/* 0B884C 800B7C4C AFBF004C */  sw    $ra, 0x4c($sp)
/* 0B8850 800B7C50 AFBE0048 */  sw    $fp, 0x48($sp)
/* 0B8854 800B7C54 AFB70044 */  sw    $s7, 0x44($sp)
/* 0B8858 800B7C58 AFB60040 */  sw    $s6, 0x40($sp)
/* 0B885C 800B7C5C AFB5003C */  sw    $s5, 0x3c($sp)
/* 0B8860 800B7C60 AFB40038 */  sw    $s4, 0x38($sp)
/* 0B8864 800B7C64 AFB30034 */  sw    $s3, 0x34($sp)
/* 0B8868 800B7C68 AFB20030 */  sw    $s2, 0x30($sp)
/* 0B886C 800B7C6C AFB1002C */  sw    $s1, 0x2c($sp)
/* 0B8870 800B7C70 AFB00028 */  sw    $s0, 0x28($sp)
/* 0B8874 800B7C74 AFA40140 */  sw    $a0, 0x140($sp)
/* 0B8878 800B7C78 AFA50144 */  sw    $a1, 0x144($sp)
/* 0B887C 800B7C7C AFA7014C */  sw    $a3, 0x14c($sp)
/* 0B8880 800B7C80 AFA00128 */  sw    $zero, 0x128($sp)
/* 0B8884 800B7C84 AFB9008C */  sw    $t9, 0x8c($sp)
/* 0B8888 800B7C88 8CAF0000 */  lw    $t7, ($a1)
/* 0B888C 800B7C8C 24010001 */  li    $at, 1
/* 0B8890 800B7C90 00C0B825 */  move  $s7, $a2
/* 0B8894 800B7C94 000FC040 */  sll   $t8, $t7, 1
/* 0B8898 800B7C98 0018CFC2 */  srl   $t9, $t8, 0x1f
/* 0B889C 800B7C9C 17210009 */  bne   $t9, $at, .L800B7CC4
/* 0B88A0 800B7CA0 00001825 */   move  $v1, $zero
/* 0B88A4 800B7CA4 24030001 */  li    $v1, 1
/* 0B88A8 800B7CA8 A0C00000 */  sb    $zero, ($a2)
/* 0B88AC 800B7CAC ACC00008 */  sw    $zero, 8($a2)
/* 0B88B0 800B7CB0 A4C00004 */  sh    $zero, 4($a2)
/* 0B88B4 800B7CB4 A4C00010 */  sh    $zero, 0x10($a2)
/* 0B88B8 800B7CB8 A4C00012 */  sh    $zero, 0x12($a2)
/* 0B88BC 800B7CBC A0C00002 */  sb    $zero, 2($a2)
/* 0B88C0 800B7CC0 A0C00003 */  sb    $zero, 3($a2)
.L800B7CC4:
/* 0B88C4 800B7CC4 8FAE0144 */  lw    $t6, 0x144($sp)
/* 0B88C8 800B7CC8 02E03025 */  move  $a2, $s7
/* 0B88CC 800B7CCC 95CF000A */  lhu   $t7, 0xa($t6)
/* 0B88D0 800B7CD0 A7AF0112 */  sh    $t7, 0x112($sp)
/* 0B88D4 800B7CD4 95D80000 */  lhu   $t8, ($t6)
/* 0B88D8 800B7CD8 33190001 */  andi  $t9, $t8, 1
/* 0B88DC 800B7CDC 8FB80150 */  lw    $t8, 0x150($sp)
/* 0B88E0 800B7CE0 272E0001 */  addiu $t6, $t9, 1
/* 0B88E4 800B7CE4 AFAE00B0 */  sw    $t6, 0xb0($sp)
/* 0B88E8 800B7CE8 01F80019 */  multu $t7, $t8
/* 0B88EC 800B7CEC 96EF0004 */  lhu   $t7, 4($s7)
/* 0B88F0 800B7CF0 0000C812 */  mflo  $t9
/* 0B88F4 800B7CF4 00197040 */  sll   $t6, $t9, 1
/* 0B88F8 800B7CF8 01CF1021 */  addu  $v0, $t6, $t7
/* 0B88FC 800B7CFC A6E20004 */  sh    $v0, 4($s7)
/* 0B8900 800B7D00 8FB90144 */  lw    $t9, 0x144($sp)
/* 0B8904 800B7D04 00028402 */  srl   $s0, $v0, 0x10
/* 0B8908 800B7D08 02003825 */  move  $a3, $s0
/* 0B890C 800B7D0C 8F240000 */  lw    $a0, ($t9)
/* 0B8910 800B7D10 8FB80144 */  lw    $t8, 0x144($sp)
/* 0B8914 800B7D14 03202825 */  move  $a1, $t9
/* 0B8918 800B7D18 00047B80 */  sll   $t7, $a0, 0xe
/* 0B891C 800B7D1C 05E3000E */  bgezl $t7, .L800B7D58
/* 0B8920 800B7D20 8F0E000C */   lw    $t6, 0xc($t8)
/* 0B8924 800B7D24 0C02E16D */  jal   func_800B85B4
/* 0B8928 800B7D28 8FA40154 */   lw    $a0, 0x154($sp)
/* 0B892C 800B7D2C 8EE60008 */  lw    $a2, 8($s7)
/* 0B8930 800B7D30 0006C040 */  sll   $t8, $a2, 1
/* 0B8934 800B7D34 270E01A0 */  addiu $t6, $t8, 0x1a0
/* 0B8938 800B7D38 A7AE009E */  sh    $t6, 0x9e($sp)
/* 0B893C 800B7D3C 00D07821 */  addu  $t7, $a2, $s0
/* 0B8940 800B7D40 AEEF0008 */  sw    $t7, 8($s7)
/* 0B8944 800B7D44 8FB90144 */  lw    $t9, 0x144($sp)
/* 0B8948 800B7D48 8F240000 */  lw    $a0, ($t9)
/* 0B894C 800B7D4C 100001CF */  b     .L800B848C
/* 0B8950 800B7D50 AFA20154 */   sw    $v0, 0x154($sp)
/* 0B8954 800B7D54 8F0E000C */  lw    $t6, 0xc($t8)
.L800B7D58:
/* 0B8958 800B7D58 8DCF0000 */  lw    $t7, ($t6)
/* 0B895C 800B7D5C AFAF0130 */  sw    $t7, 0x130($sp)
/* 0B8960 800B7D60 8DF90008 */  lw    $t9, 8($t7)
/* 0B8964 800B7D64 AFB9012C */  sw    $t9, 0x12c($sp)
/* 0B8968 800B7D68 8F380004 */  lw    $t8, 4($t9)
/* 0B896C 800B7D6C 8FB900B0 */  lw    $t9, 0xb0($sp)
/* 0B8970 800B7D70 AFB800DC */  sw    $t8, 0xdc($sp)
/* 0B8974 800B7D74 8DEE0004 */  lw    $t6, 4($t7)
/* 0B8978 800B7D78 AFA000A0 */  sw    $zero, 0xa0($sp)
/* 0B897C 800B7D7C AFA000AC */  sw    $zero, 0xac($sp)
/* 0B8980 800B7D80 1B2001C2 */  blez  $t9, .L800B848C
/* 0B8984 800B7D84 AFAE00EC */   sw    $t6, 0xec($sp)
/* 0B8988 800B7D88 0002C402 */  srl   $t8, $v0, 0x10
/* 0B898C 800B7D8C AFB80050 */  sw    $t8, 0x50($sp)
/* 0B8990 800B7D90 AFA30114 */  sw    $v1, 0x114($sp)
/* 0B8994 800B7D94 8FB20154 */  lw    $s2, 0x154($sp)
/* 0B8998 800B7D98 8FAF0130 */  lw    $t7, 0x130($sp)
.L800B7D9C:
/* 0B899C 800B7D9C 8FAE00B0 */  lw    $t6, 0xb0($sp)
/* 0B89A0 800B7DA0 24010001 */  li    $at, 1
/* 0B89A4 800B7DA4 8DE5000C */  lw    $a1, 0xc($t7)
/* 0B89A8 800B7DA8 0000F025 */  move  $fp, $zero
/* 0B89AC 800B7DAC 0000A025 */  move  $s4, $zero
/* 0B89B0 800B7DB0 15C10003 */  bne   $t6, $at, .L800B7DC0
/* 0B89B4 800B7DB4 24A60008 */   addiu $a2, $a1, 8
/* 0B89B8 800B7DB8 1000000B */  b     .L800B7DE8
/* 0B89BC 800B7DBC 8FAD0050 */   lw    $t5, 0x50($sp)
.L800B7DC0:
/* 0B89C0 800B7DC0 8FB90050 */  lw    $t9, 0x50($sp)
/* 0B89C4 800B7DC4 8FAE00AC */  lw    $t6, 0xac($sp)
/* 0B89C8 800B7DC8 8FAD0050 */  lw    $t5, 0x50($sp)
/* 0B89CC 800B7DCC 33380001 */  andi  $t8, $t9, 1
/* 0B89D0 800B7DD0 13000005 */  beqz  $t8, .L800B7DE8
/* 0B89D4 800B7DD4 2401FFFE */   li    $at, -2
/* 0B89D8 800B7DD8 03217824 */  and   $t7, $t9, $at
/* 0B89DC 800B7DDC 000EC040 */  sll   $t8, $t6, 1
/* 0B89E0 800B7DE0 10000001 */  b     .L800B7DE8
/* 0B89E4 800B7DE4 01F86821 */   addu  $t5, $t7, $t8
.L800B7DE8:
/* 0B89E8 800B7DE8 8FB90128 */  lw    $t9, 0x128($sp)
/* 0B89EC 800B7DEC 5326001B */  beql  $t9, $a2, .L800B7E5C
/* 0B89F0 800B7DF0 00047AC0 */   sll   $t7, $a0, 0xb
/* 0B89F4 800B7DF4 8CAE0000 */  lw    $t6, ($a1)
/* 0B89F8 800B7DF8 8CB80004 */  lw    $t8, 4($a1)
/* 0B89FC 800B7DFC 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 0B8A00 800B7E00 000E7900 */  sll   $t7, $t6, 4
/* 0B8A04 800B7E04 01F80019 */  multu $t7, $t8
/* 0B8A08 800B7E08 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0B8A0C 800B7E0C 02401025 */  move  $v0, $s2
/* 0B8A10 800B7E10 26520008 */  addiu $s2, $s2, 8
/* 0B8A14 800B7E14 00001812 */  mflo  $v1
/* 0B8A18 800B7E18 0061C824 */  and   $t9, $v1, $at
/* 0B8A1C 800B7E1C 3C010B00 */  lui   $at, 0xb00
/* 0B8A20 800B7E20 03217025 */  or    $t6, $t9, $at
/* 0B8A24 800B7E24 AC4E0000 */  sw    $t6, ($v0)
/* 0B8A28 800B7E28 8FAF0144 */  lw    $t7, 0x144($sp)
/* 0B8A2C 800B7E2C 3C018000 */  lui   $at, 0x8000
/* 0B8A30 800B7E30 8DF80000 */  lw    $t8, ($t7)
/* 0B8A34 800B7E34 0018CAC0 */  sll   $t9, $t8, 0xb
/* 0B8A38 800B7E38 00197742 */  srl   $t6, $t9, 0x1d
/* 0B8A3C 800B7E3C 000E7840 */  sll   $t7, $t6, 1
/* 0B8A40 800B7E40 01E6C021 */  addu  $t8, $t7, $a2
/* 0B8A44 800B7E44 0301C821 */  addu  $t9, $t8, $at
/* 0B8A48 800B7E48 AC590004 */  sw    $t9, 4($v0)
/* 0B8A4C 800B7E4C 8FAE0144 */  lw    $t6, 0x144($sp)
/* 0B8A50 800B7E50 8DC40000 */  lw    $a0, ($t6)
/* 0B8A54 800B7E54 AFA60128 */  sw    $a2, 0x128($sp)
/* 0B8A58 800B7E58 00047AC0 */  sll   $t7, $a0, 0xb
.L800B7E5C:
/* 0B8A5C 800B7E5C 000FC742 */  srl   $t8, $t7, 0x1d
/* 0B8A60 800B7E60 13000003 */  beqz  $t8, .L800B7E70
/* 0B8A64 800B7E64 3C19800F */   lui   $t9, %hi(gUnknownData_800F6290) # $t9, 0x800f
/* 0B8A68 800B7E68 27396290 */  addiu $t9, %lo(gUnknownData_800F6290) # addiu $t9, $t9, 0x6290
/* 0B8A6C 800B7E6C AFB90128 */  sw    $t9, 0x128($sp)
.L800B7E70:
/* 0B8A70 800B7E70 51A0011F */  beql  $t5, $zero, .L800B82F0
/* 0B8A74 800B7E74 8FB900B0 */   lw    $t9, 0xb0($sp)
/* 0B8A78 800B7E78 8EE60008 */  lw    $a2, 8($s7)
.L800B7E7C:
/* 0B8A7C 800B7E7C 8FAE00DC */  lw    $t6, 0xdc($sp)
/* 0B8A80 800B7E80 01BE2023 */  subu  $a0, $t5, $fp
/* 0B8A84 800B7E84 30D3000F */  andi  $s3, $a2, 0xf
/* 0B8A88 800B7E88 00005825 */  move  $t3, $zero
/* 0B8A8C 800B7E8C 00006025 */  move  $t4, $zero
/* 0B8A90 800B7E90 0080F825 */  move  $ra, $a0
/* 0B8A94 800B7E94 16600005 */  bnez  $s3, .L800B7EAC
/* 0B8A98 800B7E98 01C61823 */   subu  $v1, $t6, $a2
/* 0B8A9C 800B7E9C 92EF0000 */  lbu   $t7, ($s7)
/* 0B8AA0 800B7EA0 55E00003 */  bnel  $t7, $zero, .L800B7EB0
/* 0B8AA4 800B7EA4 24180010 */   li    $t8, 16
/* 0B8AA8 800B7EA8 24130010 */  li    $s3, 16
.L800B7EAC:
/* 0B8AAC 800B7EAC 24180010 */  li    $t8, 16
.L800B7EB0:
/* 0B8AB0 800B7EB0 03132823 */  subu  $a1, $t8, $s3
/* 0B8AB4 800B7EB4 0083082A */  slt   $at, $a0, $v1
/* 0B8AB8 800B7EB8 1020000C */  beqz  $at, .L800B7EEC
/* 0B8ABC 800B7EBC 00A0A825 */   move  $s5, $a1
/* 0B8AC0 800B7EC0 00851023 */  subu  $v0, $a0, $a1
/* 0B8AC4 800B7EC4 2442000F */  addiu $v0, $v0, 0xf
/* 0B8AC8 800B7EC8 04410003 */  bgez  $v0, .L800B7ED8
/* 0B8ACC 800B7ECC 0002C903 */   sra   $t9, $v0, 4
/* 0B8AD0 800B7ED0 2441000F */  addiu $at, $v0, 0xf
/* 0B8AD4 800B7ED4 0001C903 */  sra   $t9, $at, 4
.L800B7ED8:
/* 0B8AD8 800B7ED8 00198900 */  sll   $s1, $t9, 4
/* 0B8ADC 800B7EDC 00B17021 */  addu  $t6, $a1, $s1
/* 0B8AE0 800B7EE0 03204025 */  move  $t0, $t9
/* 0B8AE4 800B7EE4 10000013 */  b     .L800B7F34
/* 0B8AE8 800B7EE8 01C4B023 */   subu  $s6, $t6, $a0
.L800B7EEC:
/* 0B8AEC 800B7EEC 00658823 */  subu  $s1, $v1, $a1
/* 0B8AF0 800B7EF0 1E200003 */  bgtz  $s1, .L800B7F00
/* 0B8AF4 800B7EF4 0000B025 */   move  $s6, $zero
/* 0B8AF8 800B7EF8 00008825 */  move  $s1, $zero
/* 0B8AFC 800B7EFC 0060A825 */  move  $s5, $v1
.L800B7F00:
/* 0B8B00 800B7F00 8FB8012C */  lw    $t8, 0x12c($sp)
/* 0B8B04 800B7F04 2628000F */  addiu $t0, $s1, 0xf
/* 0B8B08 800B7F08 05010003 */  bgez  $t0, .L800B7F18
/* 0B8B0C 800B7F0C 00087903 */   sra   $t7, $t0, 4
/* 0B8B10 800B7F10 2501000F */  addiu $at, $t0, 0xf
/* 0B8B14 800B7F14 00017903 */  sra   $t7, $at, 4
.L800B7F18:
/* 0B8B18 800B7F18 8F190008 */  lw    $t9, 8($t8)
/* 0B8B1C 800B7F1C 01E04025 */  move  $t0, $t7
/* 0B8B20 800B7F20 53200004 */  beql  $t9, $zero, .L800B7F34
/* 0B8B24 800B7F24 240B0001 */   li    $t3, 1
/* 0B8B28 800B7F28 10000002 */  b     .L800B7F34
/* 0B8B2C 800B7F2C 240C0001 */   li    $t4, 1
/* 0B8B30 800B7F30 240B0001 */  li    $t3, 1
.L800B7F34:
/* 0B8B34 800B7F34 11000044 */  beqz  $t0, .L800B8048
/* 0B8B38 800B7F38 00005025 */   move  $t2, $zero
/* 0B8B3C 800B7F3C 8FAF0130 */  lw    $t7, 0x130($sp)
/* 0B8B40 800B7F40 00D31023 */  subu  $v0, $a2, $s3
/* 0B8B44 800B7F44 24420010 */  addiu $v0, $v0, 0x10
/* 0B8B48 800B7F48 91F80001 */  lbu   $t8, 1($t7)
/* 0B8B4C 800B7F4C 04410003 */  bgez  $v0, .L800B7F5C
/* 0B8B50 800B7F50 00027103 */   sra   $t6, $v0, 4
/* 0B8B54 800B7F54 2441000F */  addiu $at, $v0, 0xf
/* 0B8B58 800B7F58 00017103 */  sra   $t6, $at, 4
.L800B7F5C:
/* 0B8B5C 800B7F5C 24010081 */  li    $at, 129
/* 0B8B60 800B7F60 1701000C */  bne   $t8, $at, .L800B7F94
/* 0B8B64 800B7F64 01C01025 */   move  $v0, $t6
/* 0B8B68 800B7F68 000EC8C0 */  sll   $t9, $t6, 3
/* 0B8B6C 800B7F6C 000880C0 */  sll   $s0, $t0, 3
/* 0B8B70 800B7F70 02088021 */  addu  $s0, $s0, $t0
/* 0B8B74 800B7F74 032EC821 */  addu  $t9, $t9, $t6
/* 0B8B78 800B7F78 8FAE00EC */  lw    $t6, 0xec($sp)
/* 0B8B7C 800B7F7C 2610001F */  addiu $s0, $s0, 0x1f
/* 0B8B80 800B7F80 2401FFF0 */  li    $at, -16
/* 0B8B84 800B7F84 02017824 */  and   $t7, $s0, $at
/* 0B8B88 800B7F88 01E08025 */  move  $s0, $t7
/* 0B8B8C 800B7F8C 10000019 */  b     .L800B7FF4
/* 0B8B90 800B7F90 032E2021 */   addu  $a0, $t9, $t6
.L800B7F94:
/* 0B8B94 800B7F94 24030009 */  li    $v1, 9
/* 0B8B98 800B7F98 00430019 */  multu $v0, $v1
/* 0B8B9C 800B7F9C 8FB900EC */  lw    $t9, 0xec($sp)
/* 0B8BA0 800B7FA0 2401FFF0 */  li    $at, -16
/* 0B8BA4 800B7FA4 AFBF00D8 */  sw    $ra, 0xd8($sp)
/* 0B8BA8 800B7FA8 8FA60114 */  lw    $a2, 0x114($sp)
/* 0B8BAC 800B7FAC 26E70001 */  addiu $a3, $s7, 1
/* 0B8BB0 800B7FB0 AFAB011C */  sw    $t3, 0x11c($sp)
/* 0B8BB4 800B7FB4 AFAC0118 */  sw    $t4, 0x118($sp)
/* 0B8BB8 800B7FB8 AFAD00E4 */  sw    $t5, 0xe4($sp)
/* 0B8BBC 800B7FBC 0000C012 */  mflo  $t8
/* 0B8BC0 800B7FC0 03192021 */  addu  $a0, $t8, $t9
/* 0B8BC4 800B7FC4 00000000 */  nop   
/* 0B8BC8 800B7FC8 01030019 */  multu $t0, $v1
/* 0B8BCC 800B7FCC 00008012 */  mflo  $s0
/* 0B8BD0 800B7FD0 2610001F */  addiu $s0, $s0, 0x1f
/* 0B8BD4 800B7FD4 02012824 */  and   $a1, $s0, $at
/* 0B8BD8 800B7FD8 0C02EB43 */  jal   func_800BAD0C
/* 0B8BDC 800B7FDC 00A08025 */   move  $s0, $a1
/* 0B8BE0 800B7FE0 8FAB011C */  lw    $t3, 0x11c($sp)
/* 0B8BE4 800B7FE4 8FAC0118 */  lw    $t4, 0x118($sp)
/* 0B8BE8 800B7FE8 8FAD00E4 */  lw    $t5, 0xe4($sp)
/* 0B8BEC 800B7FEC 8FBF00D8 */  lw    $ra, 0xd8($sp)
/* 0B8BF0 800B7FF0 00402025 */  move  $a0, $v0
.L800B7FF4:
/* 0B8BF4 800B7FF4 240F0540 */  li    $t7, 1344
/* 0B8BF8 800B7FF8 01F04823 */  subu  $t1, $t7, $s0
/* 0B8BFC 800B7FFC 0009C400 */  sll   $t8, $t1, 0x10
/* 0B8C00 800B8000 00107103 */  sra   $t6, $s0, 4
/* 0B8C04 800B8004 31CF00FF */  andi  $t7, $t6, 0xff
/* 0B8C08 800B8008 00184C03 */  sra   $t1, $t8, 0x10
/* 0B8C0C 800B800C 000FC400 */  sll   $t8, $t7, 0x10
/* 0B8C10 800B8010 3C011400 */  lui   $at, 0x1400
/* 0B8C14 800B8014 0301C825 */  or    $t9, $t8, $at
/* 0B8C18 800B8018 308A000F */  andi  $t2, $a0, 0xf
/* 0B8C1C 800B801C 312EFFFF */  andi  $t6, $t1, 0xffff
/* 0B8C20 800B8020 032E7825 */  or    $t7, $t9, $t6
/* 0B8C24 800B8024 008AC023 */  subu  $t8, $a0, $t2
/* 0B8C28 800B8028 3C018000 */  lui   $at, 0x8000
/* 0B8C2C 800B802C 02401825 */  move  $v1, $s2
/* 0B8C30 800B8030 0301C821 */  addu  $t9, $t8, $at
/* 0B8C34 800B8034 AC790004 */  sw    $t9, 4($v1)
/* 0B8C38 800B8038 AC6F0000 */  sw    $t7, ($v1)
/* 0B8C3C 800B803C 92E50000 */  lbu   $a1, ($s7)
/* 0B8C40 800B8040 1000000B */  b     .L800B8070
/* 0B8C44 800B8044 26520008 */   addiu $s2, $s2, 8
.L800B8048:
/* 0B8C48 800B8048 000870C0 */  sll   $t6, $t0, 3
/* 0B8C4C 800B804C 01C87021 */  addu  $t6, $t6, $t0
/* 0B8C50 800B8050 25CF001F */  addiu $t7, $t6, 0x1f
/* 0B8C54 800B8054 31F8FFF0 */  andi  $t8, $t7, 0xfff0
/* 0B8C58 800B8058 24190540 */  li    $t9, 1344
/* 0B8C5C 800B805C 03384823 */  subu  $t1, $t9, $t8
/* 0B8C60 800B8060 00097400 */  sll   $t6, $t1, 0x10
/* 0B8C64 800B8064 00008825 */  move  $s1, $zero
/* 0B8C68 800B8068 000E4C03 */  sra   $t1, $t6, 0x10
/* 0B8C6C 800B806C 92E50000 */  lbu   $a1, ($s7)
.L800B8070:
/* 0B8C70 800B8070 10A0000D */  beqz  $a1, .L800B80A8
/* 0B8C74 800B8074 02401025 */   move  $v0, $s2
/* 0B8C78 800B8078 3C190F00 */  lui   $t9, 0xf00
/* 0B8C7C 800B807C AC590000 */  sw    $t9, ($v0)
/* 0B8C80 800B8080 8FB80130 */  lw    $t8, 0x130($sp)
/* 0B8C84 800B8084 3C018000 */  lui   $at, (0x80000010 >> 16) # lui $at, 0x8000
/* 0B8C88 800B8088 34210010 */  ori   $at, (0x80000010 & 0xFFFF) # ori $at, $at, 0x10
/* 0B8C8C 800B808C 8F0E0008 */  lw    $t6, 8($t8)
/* 0B8C90 800B8090 24190002 */  li    $t9, 2
/* 0B8C94 800B8094 26520008 */  addiu $s2, $s2, 8
/* 0B8C98 800B8098 01C17821 */  addu  $t7, $t6, $at
/* 0B8C9C 800B809C AC4F0004 */  sw    $t7, 4($v0)
/* 0B8CA0 800B80A0 AFB90114 */  sw    $t9, 0x114($sp)
/* 0B8CA4 800B80A4 A2E00000 */  sb    $zero, ($s7)
.L800B80A8:
/* 0B8CA8 800B80A8 17C0001E */  bnez  $fp, .L800B8124
/* 0B8CAC 800B80AC 02401825 */   move  $v1, $s2
/* 0B8CB0 800B80B0 012AC021 */  addu  $t8, $t1, $t2
/* 0B8CB4 800B80B4 330EFFFF */  andi  $t6, $t8, 0xffff
/* 0B8CB8 800B80B8 3C010800 */  lui   $at, 0x800
/* 0B8CBC 800B80BC 01C17825 */  or    $t7, $t6, $at
/* 0B8CC0 800B80C0 00113040 */  sll   $a2, $s1, 1
/* 0B8CC4 800B80C4 30D9FFFF */  andi  $t9, $a2, 0xffff
/* 0B8CC8 800B80C8 3C0101A0 */  lui   $at, 0x1a0
/* 0B8CCC 800B80CC 02401025 */  move  $v0, $s2
/* 0B8CD0 800B80D0 0321C025 */  or    $t8, $t9, $at
/* 0B8CD4 800B80D4 AC580004 */  sw    $t8, 4($v0)
/* 0B8CD8 800B80D8 AC4F0000 */  sw    $t7, ($v0)
/* 0B8CDC 800B80DC 8FAE0114 */  lw    $t6, 0x114($sp)
/* 0B8CE0 800B80E0 26520008 */  addiu $s2, $s2, 8
/* 0B8CE4 800B80E4 3C010100 */  lui   $at, 0x100
/* 0B8CE8 800B80E8 31CF00FF */  andi  $t7, $t6, 0xff
/* 0B8CEC 800B80EC 000FCC00 */  sll   $t9, $t7, 0x10
/* 0B8CF0 800B80F0 0321C025 */  or    $t8, $t9, $at
/* 0B8CF4 800B80F4 02401825 */  move  $v1, $s2
/* 0B8CF8 800B80F8 AC780000 */  sw    $t8, ($v1)
/* 0B8CFC 800B80FC 8EEE000C */  lw    $t6, 0xc($s7)
/* 0B8D00 800B8100 3C018000 */  lui   $at, 0x8000
/* 0B8D04 800B8104 0235C021 */  addu  $t8, $s1, $s5
/* 0B8D08 800B8108 01C17821 */  addu  $t7, $t6, $at
/* 0B8D0C 800B810C AC6F0004 */  sw    $t7, 4($v1)
/* 0B8D10 800B8110 0013C840 */  sll   $t9, $s3, 1
/* 0B8D14 800B8114 26520008 */  addiu $s2, $s2, 8
/* 0B8D18 800B8118 AFB900FC */  sw    $t9, 0xfc($sp)
/* 0B8D1C 800B811C 10000030 */  b     .L800B81E0
/* 0B8D20 800B8120 03163823 */   subu  $a3, $t8, $s6
.L800B8124:
/* 0B8D24 800B8124 012A7021 */  addu  $t6, $t1, $t2
/* 0B8D28 800B8128 31CFFFFF */  andi  $t7, $t6, 0xffff
/* 0B8D2C 800B812C 3C010800 */  lui   $at, 0x800
/* 0B8D30 800B8130 01E1C825 */  or    $t9, $t7, $at
/* 0B8D34 800B8134 2401FFF0 */  li    $at, -16
/* 0B8D38 800B8138 2682001F */  addiu $v0, $s4, 0x1f
/* 0B8D3C 800B813C 0041C024 */  and   $t8, $v0, $at
/* 0B8D40 800B8140 270F01A0 */  addiu $t7, $t8, 0x1a0
/* 0B8D44 800B8144 03001025 */  move  $v0, $t8
/* 0B8D48 800B8148 AC790000 */  sw    $t9, ($v1)
/* 0B8D4C 800B814C 00113040 */  sll   $a2, $s1, 1
/* 0B8D50 800B8150 30D8FFFF */  andi  $t8, $a2, 0xffff
/* 0B8D54 800B8154 000FCC00 */  sll   $t9, $t7, 0x10
/* 0B8D58 800B8158 03387025 */  or    $t6, $t9, $t8
/* 0B8D5C 800B815C AC6E0004 */  sw    $t6, 4($v1)
/* 0B8D60 800B8160 8FAF0114 */  lw    $t7, 0x114($sp)
/* 0B8D64 800B8164 26520008 */  addiu $s2, $s2, 8
/* 0B8D68 800B8168 3C010100 */  lui   $at, 0x100
/* 0B8D6C 800B816C 31F900FF */  andi  $t9, $t7, 0xff
/* 0B8D70 800B8170 0019C400 */  sll   $t8, $t9, 0x10
/* 0B8D74 800B8174 03017025 */  or    $t6, $t8, $at
/* 0B8D78 800B8178 02402025 */  move  $a0, $s2
/* 0B8D7C 800B817C AC8E0000 */  sw    $t6, ($a0)
/* 0B8D80 800B8180 8EEF000C */  lw    $t7, 0xc($s7)
/* 0B8D84 800B8184 3C018000 */  lui   $at, 0x8000
/* 0B8D88 800B8188 0013C040 */  sll   $t8, $s3, 1
/* 0B8D8C 800B818C 01E1C821 */  addu  $t9, $t7, $at
/* 0B8D90 800B8190 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 0B8D94 800B8194 00587021 */  addu  $t6, $v0, $t8
/* 0B8D98 800B8198 AC990004 */  sw    $t9, 4($a0)
/* 0B8D9C 800B819C 25CF01A0 */  addiu $t7, $t6, 0x1a0
/* 0B8DA0 800B81A0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0B8DA4 800B81A4 01E1C824 */  and   $t9, $t7, $at
/* 0B8DA8 800B81A8 3C010A00 */  lui   $at, 0xa00
/* 0B8DAC 800B81AC 26520008 */  addiu $s2, $s2, 8
/* 0B8DB0 800B81B0 0321C025 */  or    $t8, $t9, $at
/* 0B8DB4 800B81B4 02357021 */  addu  $t6, $s1, $s5
/* 0B8DB8 800B81B8 01D63823 */  subu  $a3, $t6, $s6
/* 0B8DBC 800B81BC 02402825 */  move  $a1, $s2
/* 0B8DC0 800B81C0 ACB80000 */  sw    $t8, ($a1)
/* 0B8DC4 800B81C4 00077040 */  sll   $t6, $a3, 1
/* 0B8DC8 800B81C8 269901A0 */  addiu $t9, $s4, 0x1a0
/* 0B8DCC 800B81CC 0019C400 */  sll   $t8, $t9, 0x10
/* 0B8DD0 800B81D0 31CFFFFF */  andi  $t7, $t6, 0xffff
/* 0B8DD4 800B81D4 030FC825 */  or    $t9, $t8, $t7
/* 0B8DD8 800B81D8 ACB90004 */  sw    $t9, 4($a1)
/* 0B8DDC 800B81DC 26520008 */  addiu $s2, $s2, 8
.L800B81E0:
/* 0B8DE0 800B81E0 8FAE0114 */  lw    $t6, 0x114($sp)
/* 0B8DE4 800B81E4 24010001 */  li    $at, 1
/* 0B8DE8 800B81E8 03C7F021 */  addu  $fp, $fp, $a3
/* 0B8DEC 800B81EC 11C10006 */  beq   $t6, $at, .L800B8208
/* 0B8DF0 800B81F0 24180020 */   li    $t8, 32
/* 0B8DF4 800B81F4 39C20002 */  xori  $v0, $t6, 2
/* 0B8DF8 800B81F8 10400007 */  beqz  $v0, .L800B8218
/* 0B8DFC 800B81FC AFA00114 */   sw    $zero, 0x114($sp)
/* 0B8E00 800B8200 10000008 */  b     .L800B8224
/* 0B8E04 800B8204 0007C840 */   sll   $t9, $a3, 1
.L800B8208:
/* 0B8E08 800B8208 AFB800FC */  sw    $t8, 0xfc($sp)
/* 0B8E0C 800B820C 24D40020 */  addiu $s4, $a2, 0x20
/* 0B8E10 800B8210 1000000B */  b     .L800B8240
/* 0B8E14 800B8214 AFA00114 */   sw    $zero, 0x114($sp)
.L800B8218:
/* 0B8E18 800B8218 00077840 */  sll   $t7, $a3, 1
/* 0B8E1C 800B821C 10000008 */  b     .L800B8240
/* 0B8E20 800B8220 01F4A021 */   addu  $s4, $t7, $s4
.L800B8224:
/* 0B8E24 800B8224 52800004 */  beql  $s4, $zero, .L800B8238
/* 0B8E28 800B8228 0267A021 */   addu  $s4, $s3, $a3
/* 0B8E2C 800B822C 10000004 */  b     .L800B8240
/* 0B8E30 800B8230 0334A021 */   addu  $s4, $t9, $s4
/* 0B8E34 800B8234 0267A021 */  addu  $s4, $s3, $a3
.L800B8238:
/* 0B8E38 800B8238 00147040 */  sll   $t6, $s4, 1
/* 0B8E3C 800B823C 01C0A025 */  move  $s4, $t6
.L800B8240:
/* 0B8E40 800B8240 1160001E */  beqz  $t3, .L800B82BC
/* 0B8E44 800B8244 240F0001 */   li    $t7, 1
/* 0B8E48 800B8248 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 0B8E4C 800B824C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0B8E50 800B8250 269801A0 */  addiu $t8, $s4, 0x1a0
/* 0B8E54 800B8254 03017824 */  and   $t7, $t8, $at
/* 0B8E58 800B8258 8FB00144 */  lw    $s0, 0x144($sp)
/* 0B8E5C 800B825C 8FB1008C */  lw    $s1, 0x8c($sp)
/* 0B8E60 800B8260 3C010200 */  lui   $at, 0x200
/* 0B8E64 800B8264 02401025 */  move  $v0, $s2
/* 0B8E68 800B8268 01BE7023 */  subu  $t6, $t5, $fp
/* 0B8E6C 800B826C 000EC040 */  sll   $t8, $t6, 1
/* 0B8E70 800B8270 01E1C825 */  or    $t9, $t7, $at
/* 0B8E74 800B8274 AC590000 */  sw    $t9, ($v0)
/* 0B8E78 800B8278 AC580004 */  sw    $t8, 4($v0)
/* 0B8E7C 800B827C 92190000 */  lbu   $t9, ($s0)
/* 0B8E80 800B8280 26520008 */  addiu $s2, $s2, 8
/* 0B8E84 800B8284 372E0020 */  ori   $t6, $t9, 0x20
/* 0B8E88 800B8288 A20E0000 */  sb    $t6, ($s0)
/* 0B8E8C 800B828C 922F00B0 */  lbu   $t7, 0xb0($s1)
/* 0B8E90 800B8290 35F90020 */  ori   $t9, $t7, 0x20
/* 0B8E94 800B8294 A23900B0 */  sb    $t9, 0xb0($s1)
/* 0B8E98 800B8298 922E00B0 */  lbu   $t6, 0xb0($s1)
/* 0B8E9C 800B829C 31D8FF7F */  andi  $t8, $t6, 0xff7f
/* 0B8EA0 800B82A0 A23800B0 */  sb    $t8, 0xb0($s1)
/* 0B8EA4 800B82A4 AFAD00E4 */  sw    $t5, 0xe4($sp)
/* 0B8EA8 800B82A8 8FA50140 */  lw    $a1, 0x140($sp)
/* 0B8EAC 800B82AC 0C02DBED */  jal   synthesis_load_note_subs_eu
/* 0B8EB0 800B82B0 8FA40158 */   lw    $a0, 0x158($sp)
/* 0B8EB4 800B82B4 1000000D */  b     .L800B82EC
/* 0B8EB8 800B82B8 8FAD00E4 */   lw    $t5, 0xe4($sp)
.L800B82BC:
/* 0B8EBC 800B82BC 51800007 */  beql  $t4, $zero, .L800B82DC
/* 0B8EC0 800B82C0 8EF80008 */   lw    $t8, 8($s7)
/* 0B8EC4 800B82C4 A2EF0000 */  sb    $t7, ($s7)
/* 0B8EC8 800B82C8 8FB9012C */  lw    $t9, 0x12c($sp)
/* 0B8ECC 800B82CC 8F2E0000 */  lw    $t6, ($t9)
/* 0B8ED0 800B82D0 10000004 */  b     .L800B82E4
/* 0B8ED4 800B82D4 AEEE0008 */   sw    $t6, 8($s7)
/* 0B8ED8 800B82D8 8EF80008 */  lw    $t8, 8($s7)
.L800B82DC:
/* 0B8EDC 800B82DC 031F7821 */  addu  $t7, $t8, $ra
/* 0B8EE0 800B82E0 AEEF0008 */  sw    $t7, 8($s7)
.L800B82E4:
/* 0B8EE4 800B82E4 57CDFEE5 */  bnel  $fp, $t5, .L800B7E7C
/* 0B8EE8 800B82E8 8EE60008 */   lw    $a2, 8($s7)
.L800B82EC:
/* 0B8EEC 800B82EC 8FB900B0 */  lw    $t9, 0xb0($sp)
.L800B82F0:
/* 0B8EF0 800B82F0 24010001 */  li    $at, 1
/* 0B8EF4 800B82F4 8FB00144 */  lw    $s0, 0x144($sp)
/* 0B8EF8 800B82F8 13210009 */  beq   $t9, $at, .L800B8320
/* 0B8EFC 800B82FC 8FB800FC */   lw    $t8, 0xfc($sp)
/* 0B8F00 800B8300 24010002 */  li    $at, 2
/* 0B8F04 800B8304 1321000E */  beq   $t9, $at, .L800B8340
/* 0B8F08 800B8308 8FB800AC */   lw    $t8, 0xac($sp)
/* 0B8F0C 800B830C 8E040000 */  lw    $a0, ($s0)
/* 0B8F10 800B8310 00041880 */  sll   $v1, $a0, 2
/* 0B8F14 800B8314 000377C2 */  srl   $t6, $v1, 0x1f
/* 0B8F18 800B8318 10000052 */  b     .L800B8464
/* 0B8F1C 800B831C 01C01825 */   move  $v1, $t6
.L800B8320:
/* 0B8F20 800B8320 8FB90144 */  lw    $t9, 0x144($sp)
/* 0B8F24 800B8324 270F01A0 */  addiu $t7, $t8, 0x1a0
/* 0B8F28 800B8328 A7AF009E */  sh    $t7, 0x9e($sp)
/* 0B8F2C 800B832C 8F240000 */  lw    $a0, ($t9)
/* 0B8F30 800B8330 00041880 */  sll   $v1, $a0, 2
/* 0B8F34 800B8334 000377C2 */  srl   $t6, $v1, 0x1f
/* 0B8F38 800B8338 1000004A */  b     .L800B8464
/* 0B8F3C 800B833C 01C01825 */   move  $v1, $t6
.L800B8340:
/* 0B8F40 800B8340 13000009 */  beqz  $t8, .L800B8368
/* 0B8F44 800B8344 8FA50144 */   lw    $a1, 0x144($sp)
/* 0B8F48 800B8348 24010001 */  li    $at, 1
/* 0B8F4C 800B834C 1301002E */  beq   $t8, $at, .L800B8408
/* 0B8F50 800B8350 02401025 */   move  $v0, $s2
/* 0B8F54 800B8354 8E040000 */  lw    $a0, ($s0)
/* 0B8F58 800B8358 00041880 */  sll   $v1, $a0, 2
/* 0B8F5C 800B835C 00037FC2 */  srl   $t7, $v1, 0x1f
/* 0B8F60 800B8360 10000040 */  b     .L800B8464
/* 0B8F64 800B8364 01E01825 */   move  $v1, $t7
.L800B8368:
/* 0B8F68 800B8368 02401025 */  move  $v0, $s2
/* 0B8F6C 800B836C 26520008 */  addiu $s2, $s2, 8
/* 0B8F70 800B8370 05A10003 */  bgez  $t5, .L800B8380
/* 0B8F74 800B8374 000DC843 */   sra   $t9, $t5, 1
/* 0B8F78 800B8378 25A10001 */  addiu $at, $t5, 1
/* 0B8F7C 800B837C 0001C843 */  sra   $t9, $at, 1
.L800B8380:
/* 0B8F80 800B8380 27380007 */  addiu $t8, $t9, 7
/* 0B8F84 800B8384 330FFFF8 */  andi  $t7, $t8, 0xfff8
/* 0B8F88 800B8388 3C011100 */  lui   $at, 0x1100
/* 0B8F8C 800B838C 01E1C825 */  or    $t9, $t7, $at
/* 0B8F90 800B8390 AC590000 */  sw    $t9, ($v0)
/* 0B8F94 800B8394 8FAE00FC */  lw    $t6, 0xfc($sp)
/* 0B8F98 800B8398 24180020 */  li    $t8, 32
/* 0B8F9C 800B839C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 0B8FA0 800B83A0 25CF01A0 */  addiu $t7, $t6, 0x1a0
/* 0B8FA4 800B83A4 000FCC00 */  sll   $t9, $t7, 0x10
/* 0B8FA8 800B83A8 372E0020 */  ori   $t6, $t9, 0x20
/* 0B8FAC 800B83AC AC4E0004 */  sw    $t6, 4($v0)
/* 0B8FB0 800B83B0 AFAD00A0 */  sw    $t5, 0xa0($sp)
/* 0B8FB4 800B83B4 A7B8009E */  sh    $t8, 0x9e($sp)
/* 0B8FB8 800B83B8 8CA40000 */  lw    $a0, ($a1)
/* 0B8FBC 800B83BC 02401025 */  move  $v0, $s2
/* 0B8FC0 800B83C0 25B90020 */  addiu $t9, $t5, 0x20
/* 0B8FC4 800B83C4 00041880 */  sll   $v1, $a0, 2
/* 0B8FC8 800B83C8 00037FC2 */  srl   $t7, $v1, 0x1f
/* 0B8FCC 800B83CC 11E00025 */  beqz  $t7, .L800B8464
/* 0B8FD0 800B83D0 01E01825 */   move  $v1, $t7
/* 0B8FD4 800B83D4 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0B8FD8 800B83D8 03217024 */  and   $t6, $t9, $at
/* 0B8FDC 800B83DC 3C010200 */  lui   $at, 0x200
/* 0B8FE0 800B83E0 01C1C025 */  or    $t8, $t6, $at
/* 0B8FE4 800B83E4 25AF0010 */  addiu $t7, $t5, 0x10
/* 0B8FE8 800B83E8 AC4F0004 */  sw    $t7, 4($v0)
/* 0B8FEC 800B83EC AC580000 */  sw    $t8, ($v0)
/* 0B8FF0 800B83F0 8CA40000 */  lw    $a0, ($a1)
/* 0B8FF4 800B83F4 26520008 */  addiu $s2, $s2, 8
/* 0B8FF8 800B83F8 00041880 */  sll   $v1, $a0, 2
/* 0B8FFC 800B83FC 0003CFC2 */  srl   $t9, $v1, 0x1f
/* 0B9000 800B8400 10000018 */  b     .L800B8464
/* 0B9004 800B8404 03201825 */   move  $v1, $t9
.L800B8408:
/* 0B9008 800B8408 26520008 */  addiu $s2, $s2, 8
/* 0B900C 800B840C 05A10003 */  bgez  $t5, .L800B841C
/* 0B9010 800B8410 000D7043 */   sra   $t6, $t5, 1
/* 0B9014 800B8414 25A10001 */  addiu $at, $t5, 1
/* 0B9018 800B8418 00017043 */  sra   $t6, $at, 1
.L800B841C:
/* 0B901C 800B841C 25CF0007 */  addiu $t7, $t6, 7
/* 0B9020 800B8420 31F9FFF8 */  andi  $t9, $t7, 0xfff8
/* 0B9024 800B8424 3C011100 */  lui   $at, 0x1100
/* 0B9028 800B8428 03217025 */  or    $t6, $t9, $at
/* 0B902C 800B842C AC4E0000 */  sw    $t6, ($v0)
/* 0B9030 800B8430 8FB800FC */  lw    $t8, 0xfc($sp)
/* 0B9034 800B8434 271901A0 */  addiu $t9, $t8, 0x1a0
/* 0B9038 800B8438 8FB800A0 */  lw    $t8, 0xa0($sp)
/* 0B903C 800B843C 00197400 */  sll   $t6, $t9, 0x10
/* 0B9040 800B8440 270F0020 */  addiu $t7, $t8, 0x20
/* 0B9044 800B8444 31F9FFFF */  andi  $t9, $t7, 0xffff
/* 0B9048 800B8448 01D9C025 */  or    $t8, $t6, $t9
/* 0B904C 800B844C AC580004 */  sw    $t8, 4($v0)
/* 0B9050 800B8450 8FAF0144 */  lw    $t7, 0x144($sp)
/* 0B9054 800B8454 8DE40000 */  lw    $a0, ($t7)
/* 0B9058 800B8458 00041880 */  sll   $v1, $a0, 2
/* 0B905C 800B845C 000377C2 */  srl   $t6, $v1, 0x1f
/* 0B9060 800B8460 01C01825 */  move  $v1, $t6
.L800B8464:
/* 0B9064 800B8464 10600003 */  beqz  $v1, .L800B8474
/* 0B9068 800B8468 8FA200AC */   lw    $v0, 0xac($sp)
/* 0B906C 800B846C 10000007 */  b     .L800B848C
/* 0B9070 800B8470 AFB20154 */   sw    $s2, 0x154($sp)
.L800B8474:
/* 0B9074 800B8474 8FB900B0 */  lw    $t9, 0xb0($sp)
/* 0B9078 800B8478 24420001 */  addiu $v0, $v0, 1
/* 0B907C 800B847C AFA200AC */  sw    $v0, 0xac($sp)
/* 0B9080 800B8480 5459FE46 */  bnel  $v0, $t9, .L800B7D9C
/* 0B9084 800B8484 8FAF0130 */   lw    $t7, 0x130($sp)
/* 0B9088 800B8488 AFB20154 */  sw    $s2, 0x154($sp)
.L800B848C:
/* 0B908C 800B848C 0004C040 */  sll   $t8, $a0, 1
/* 0B9090 800B8490 00187FC2 */  srl   $t7, $t8, 0x1f
/* 0B9094 800B8494 24010001 */  li    $at, 1
/* 0B9098 800B8498 8FB20154 */  lw    $s2, 0x154($sp)
/* 0B909C 800B849C 15E10006 */  bne   $t7, $at, .L800B84B8
/* 0B90A0 800B84A0 00001825 */   move  $v1, $zero
/* 0B90A4 800B84A4 8FAE0144 */  lw    $t6, 0x144($sp)
/* 0B90A8 800B84A8 24030001 */  li    $v1, 1
/* 0B90AC 800B84AC 91D90000 */  lbu   $t9, ($t6)
/* 0B90B0 800B84B0 3338FFBF */  andi  $t8, $t9, 0xffbf
/* 0B90B4 800B84B4 A1D80000 */  sb    $t8, ($t6)
.L800B84B8:
/* 0B90B8 800B84B8 8FB30150 */  lw    $s3, 0x150($sp)
/* 0B90BC 800B84BC 97B9009E */  lhu   $t9, 0x9e($sp)
/* 0B90C0 800B84C0 02402025 */  move  $a0, $s2
/* 0B90C4 800B84C4 00133040 */  sll   $a2, $s3, 1
/* 0B90C8 800B84C8 00C09825 */  move  $s3, $a2
/* 0B90CC 800B84CC 02E02825 */  move  $a1, $s7
/* 0B90D0 800B84D0 97A70112 */  lhu   $a3, 0x112($sp)
/* 0B90D4 800B84D4 AFA30014 */  sw    $v1, 0x14($sp)
/* 0B90D8 800B84D8 AFA30114 */  sw    $v1, 0x114($sp)
/* 0B90DC 800B84DC 0C02E191 */  jal   func_800B8644
/* 0B90E0 800B84E0 AFB90010 */   sw    $t9, 0x10($sp)
/* 0B90E4 800B84E4 8FB10144 */  lw    $s1, 0x144($sp)
/* 0B90E8 800B84E8 00409025 */  move  $s2, $v0
/* 0B90EC 800B84EC 8FB40114 */  lw    $s4, 0x114($sp)
/* 0B90F0 800B84F0 92380003 */  lbu   $t8, 3($s1)
/* 0B90F4 800B84F4 02402025 */  move  $a0, $s2
/* 0B90F8 800B84F8 02E03025 */  move  $a2, $s7
/* 0B90FC 800B84FC 17000004 */  bnez  $t8, .L800B8510
/* 0B9100 800B8500 02202825 */   move  $a1, $s1
/* 0B9104 800B8504 92EE0002 */  lbu   $t6, 2($s7)
/* 0B9108 800B8508 51C00004 */  beql  $t6, $zero, .L800B851C
/* 0B910C 800B850C 922F0004 */   lbu   $t7, 4($s1)
.L800B8510:
/* 0B9110 800B8510 1000000A */  b     .L800B853C
/* 0B9114 800B8514 24100001 */   li    $s0, 1
/* 0B9118 800B8518 922F0004 */  lbu   $t7, 4($s1)
.L800B851C:
/* 0B911C 800B851C 15E00005 */  bnez  $t7, .L800B8534
/* 0B9120 800B8520 00000000 */   nop   
/* 0B9124 800B8524 92F90003 */  lbu   $t9, 3($s7)
/* 0B9128 800B8528 00008025 */  move  $s0, $zero
/* 0B912C 800B852C 13200003 */  beqz  $t9, .L800B853C
/* 0B9130 800B8530 00000000 */   nop   
.L800B8534:
/* 0B9134 800B8534 10000001 */  b     .L800B853C
/* 0B9138 800B8538 24100002 */   li    $s0, 2
.L800B853C:
/* 0B913C 800B853C 8FA70150 */  lw    $a3, 0x150($sp)
/* 0B9140 800B8540 AFA00010 */  sw    $zero, 0x10($sp)
/* 0B9144 800B8544 AFB00014 */  sw    $s0, 0x14($sp)
/* 0B9148 800B8548 0C02E1A8 */  jal   func_800B86A0
/* 0B914C 800B854C AFB40018 */   sw    $s4, 0x18($sp)
/* 0B9150 800B8550 92380000 */  lbu   $t8, ($s1)
/* 0B9154 800B8554 00409025 */  move  $s2, $v0
/* 0B9158 800B8558 00402025 */  move  $a0, $v0
/* 0B915C 800B855C 330E0001 */  andi  $t6, $t8, 1
/* 0B9160 800B8560 11C00007 */  beqz  $t6, .L800B8580
/* 0B9164 800B8564 02202825 */   move  $a1, $s1
/* 0B9168 800B8568 02E03025 */  move  $a2, $s7
/* 0B916C 800B856C 02603825 */  move  $a3, $s3
/* 0B9170 800B8570 AFB40010 */  sw    $s4, 0x10($sp)
/* 0B9174 800B8574 0C02E28B */  jal   func_800B8A2C
/* 0B9178 800B8578 AFB00014 */   sw    $s0, 0x14($sp)
/* 0B917C 800B857C 00409025 */  move  $s2, $v0
.L800B8580:
/* 0B9180 800B8580 8FBF004C */  lw    $ra, 0x4c($sp)
/* 0B9184 800B8584 02401025 */  move  $v0, $s2
/* 0B9188 800B8588 8FB20030 */  lw    $s2, 0x30($sp)
/* 0B918C 800B858C 8FB00028 */  lw    $s0, 0x28($sp)
/* 0B9190 800B8590 8FB1002C */  lw    $s1, 0x2c($sp)
/* 0B9194 800B8594 8FB30034 */  lw    $s3, 0x34($sp)
/* 0B9198 800B8598 8FB40038 */  lw    $s4, 0x38($sp)
/* 0B919C 800B859C 8FB5003C */  lw    $s5, 0x3c($sp)
/* 0B91A0 800B85A0 8FB60040 */  lw    $s6, 0x40($sp)
/* 0B91A4 800B85A4 8FB70044 */  lw    $s7, 0x44($sp)
/* 0B91A8 800B85A8 8FBE0048 */  lw    $fp, 0x48($sp)
/* 0B91AC 800B85AC 03E00008 */  jr    $ra
/* 0B91B0 800B85B0 27BD0140 */   addiu $sp, $sp, 0x140

glabel func_800B85B4
/* 0B91B4 800B85B4 3C0E1408 */  lui   $t6, (0x140801A0 >> 16) # lui $t6, 0x1408
/* 0B91B8 800B85B8 35CE01A0 */  ori   $t6, (0x140801A0 & 0xFFFF) # ori $t6, $t6, 0x1a0
/* 0B91BC 800B85BC 00801025 */  move  $v0, $a0
/* 0B91C0 800B85C0 AC4E0000 */  sw    $t6, ($v0)
/* 0B91C4 800B85C4 8CAF000C */  lw    $t7, 0xc($a1)
/* 0B91C8 800B85C8 3C018000 */  lui   $at, 0x8000
/* 0B91CC 800B85CC 240A0040 */  li    $t2, 64
/* 0B91D0 800B85D0 01E1C021 */  addu  $t8, $t7, $at
/* 0B91D4 800B85D4 AC580004 */  sw    $t8, 4($v0)
/* 0B91D8 800B85D8 8CD90008 */  lw    $t9, 8($a2)
/* 0B91DC 800B85DC 24840008 */  addiu $a0, $a0, 8
/* 0B91E0 800B85E0 3328003F */  andi  $t0, $t9, 0x3f
/* 0B91E4 800B85E4 01481823 */  subu  $v1, $t2, $t0
/* 0B91E8 800B85E8 0067082A */  slt   $at, $v1, $a3
/* 0B91EC 800B85EC 10200013 */  beqz  $at, .L800B863C
/* 0B91F0 800B85F0 ACC80008 */   sw    $t0, 8($a2)
/* 0B91F4 800B85F4 00E31023 */  subu  $v0, $a3, $v1
/* 0B91F8 800B85F8 2442003F */  addiu $v0, $v0, 0x3f
/* 0B91FC 800B85FC 04410003 */  bgez  $v0, .L800B860C
/* 0B9200 800B8600 00025983 */   sra   $t3, $v0, 6
/* 0B9204 800B8604 2441003F */  addiu $at, $v0, 0x3f
/* 0B9208 800B8608 00015983 */  sra   $t3, $at, 6
.L800B860C:
/* 0B920C 800B860C 1160000B */  beqz  $t3, .L800B863C
/* 0B9210 800B8610 00801825 */   move  $v1, $a0
/* 0B9214 800B8614 316C00FF */  andi  $t4, $t3, 0xff
/* 0B9218 800B8618 000C6C00 */  sll   $t5, $t4, 0x10
/* 0B921C 800B861C 3C011000 */  lui   $at, 0x1000
/* 0B9220 800B8620 01A17025 */  or    $t6, $t5, $at
/* 0B9224 800B8624 3C180220 */  lui   $t8, (0x02200080 >> 16) # lui $t8, 0x220
/* 0B9228 800B8628 37180080 */  ori   $t8, (0x02200080 & 0xFFFF) # ori $t8, $t8, 0x80
/* 0B922C 800B862C 35CF01A0 */  ori   $t7, $t6, 0x1a0
/* 0B9230 800B8630 AC6F0000 */  sw    $t7, ($v1)
/* 0B9234 800B8634 AC780004 */  sw    $t8, 4($v1)
/* 0B9238 800B8638 24840008 */  addiu $a0, $a0, 8
.L800B863C:
/* 0B923C 800B863C 03E00008 */  jr    $ra
/* 0B9240 800B8640 00801025 */   move  $v0, $a0

glabel func_800B8644
/* 0B9244 800B8644 97B80012 */  lhu   $t8, 0x12($sp)
/* 0B9248 800B8648 AFA7000C */  sw    $a3, 0xc($sp)
/* 0B924C 800B864C 3C010800 */  lui   $at, 0x800
/* 0B9250 800B8650 30C9FFFF */  andi  $t1, $a2, 0xffff
/* 0B9254 800B8654 0301C825 */  or    $t9, $t8, $at
/* 0B9258 800B8658 AC990000 */  sw    $t9, ($a0)
/* 0B925C 800B865C AC890004 */  sw    $t1, 4($a0)
/* 0B9260 800B8660 8FAA0014 */  lw    $t2, 0x14($sp)
/* 0B9264 800B8664 3C010500 */  lui   $at, 0x500
/* 0B9268 800B8668 30EEFFFF */  andi  $t6, $a3, 0xffff
/* 0B926C 800B866C 314B00FF */  andi  $t3, $t2, 0xff
/* 0B9270 800B8670 000B6400 */  sll   $t4, $t3, 0x10
/* 0B9274 800B8674 01816825 */  or    $t5, $t4, $at
/* 0B9278 800B8678 24880008 */  addiu $t0, $a0, 8
/* 0B927C 800B867C 01AE7825 */  or    $t7, $t5, $t6
/* 0B9280 800B8680 AD0F0000 */  sw    $t7, ($t0)
/* 0B9284 800B8684 8CB8000C */  lw    $t8, 0xc($a1)
/* 0B9288 800B8688 3C018000 */  lui   $at, (0x80000020 >> 16) # lui $at, 0x8000
/* 0B928C 800B868C 34210020 */  ori   $at, (0x80000020 & 0xFFFF) # ori $at, $at, 0x20
/* 0B9290 800B8690 0301C821 */  addu  $t9, $t8, $at
/* 0B9294 800B8694 AD190004 */  sw    $t9, 4($t0)
/* 0B9298 800B8698 03E00008 */  jr    $ra
/* 0B929C 800B869C 25020008 */   addiu $v0, $t0, 8

glabel func_800B86A0
/* 0B92A0 800B86A0 94AA0006 */  lhu   $t2, 6($a1)
/* 0B92A4 800B86A4 94C20010 */  lhu   $v0, 0x10($a2)
/* 0B92A8 800B86A8 000768C3 */  sra   $t5, $a3, 3
/* 0B92AC 800B86AC 000A7100 */  sll   $t6, $t2, 4
/* 0B92B0 800B86B0 31CFFFFF */  andi  $t7, $t6, 0xffff
/* 0B92B4 800B86B4 01E27023 */  subu  $t6, $t7, $v0
/* 0B92B8 800B86B8 01CD001A */  div   $zero, $t6, $t5
/* 0B92BC 800B86BC 94AB0008 */  lhu   $t3, 8($a1)
/* 0B92C0 800B86C0 94C30012 */  lhu   $v1, 0x12($a2)
/* 0B92C4 800B86C4 01E05025 */  move  $t2, $t7
/* 0B92C8 800B86C8 000BC100 */  sll   $t8, $t3, 4
/* 0B92CC 800B86CC 00007812 */  mflo  $t7
/* 0B92D0 800B86D0 3319FFFF */  andi  $t9, $t8, 0xffff
/* 0B92D4 800B86D4 03205825 */  move  $t3, $t9
/* 0B92D8 800B86D8 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0B92DC 800B86DC AFAF0008 */  sw    $t7, 8($sp)
/* 0B92E0 800B86E0 87B8000A */  lh    $t8, 0xa($sp)
/* 0B92E4 800B86E4 00406025 */  move  $t4, $v0
/* 0B92E8 800B86E8 15A00002 */  bnez  $t5, .L800B86F4
/* 0B92EC 800B86EC 00000000 */   nop   
/* 0B92F0 800B86F0 0007000D */  break 7
.L800B86F4:
/* 0B92F4 800B86F4 2401FFFF */  li    $at, -1
/* 0B92F8 800B86F8 15A10004 */  bne   $t5, $at, .L800B870C
/* 0B92FC 800B86FC 3C018000 */   lui   $at, 0x8000
/* 0B9300 800B8700 15C10002 */  bne   $t6, $at, .L800B870C
/* 0B9304 800B8704 00000000 */   nop   
/* 0B9308 800B8708 0006000D */  break 6
.L800B870C:
/* 0B930C 800B870C 01637023 */  subu  $t6, $t3, $v1
/* 0B9310 800B8710 01CD001A */  div   $zero, $t6, $t5
/* 0B9314 800B8714 00007812 */  mflo  $t7
/* 0B9318 800B8718 AFAF0000 */  sw    $t7, ($sp)
/* 0B931C 800B871C 03004025 */  move  $t0, $t8
/* 0B9320 800B8720 030D0019 */  multu $t8, $t5
/* 0B9324 800B8724 0060C825 */  move  $t9, $v1
/* 0B9328 800B8728 AFA30004 */  sw    $v1, 4($sp)
/* 0B932C 800B872C 15A00002 */  bnez  $t5, .L800B8738
/* 0B9330 800B8730 00000000 */   nop   
/* 0B9334 800B8734 0007000D */  break 7
.L800B8738:
/* 0B9338 800B8738 2401FFFF */  li    $at, -1
/* 0B933C 800B873C 15A10004 */  bne   $t5, $at, .L800B8750
/* 0B9340 800B8740 3C018000 */   lui   $at, 0x8000
/* 0B9344 800B8744 15C10002 */  bne   $t6, $at, .L800B8750
/* 0B9348 800B8748 00000000 */   nop   
/* 0B934C 800B874C 0006000D */  break 6
.L800B8750:
/* 0B9350 800B8750 87AE0002 */  lh    $t6, 2($sp)
/* 0B9354 800B8754 00007812 */  mflo  $t7
/* 0B9358 800B8758 018F5021 */  addu  $t2, $t4, $t7
/* 0B935C 800B875C 3158FFFF */  andi  $t8, $t2, 0xffff
/* 0B9360 800B8760 01CD0019 */  multu $t6, $t5
/* 0B9364 800B8764 03005025 */  move  $t2, $t8
/* 0B9368 800B8768 A4CA0010 */  sh    $t2, 0x10($a2)
/* 0B936C 800B876C 01C04825 */  move  $t1, $t6
/* 0B9370 800B8770 00805025 */  move  $t2, $a0
/* 0B9374 800B8774 3C011200 */  lui   $at, 0x1200
/* 0B9378 800B8778 00007812 */  mflo  $t7
/* 0B937C 800B877C 032F5821 */  addu  $t3, $t9, $t7
/* 0B9380 800B8780 3178FFFF */  andi  $t8, $t3, 0xffff
/* 0B9384 800B8784 A4D80012 */  sh    $t8, 0x12($a2)
/* 0B9388 800B8788 90AE0000 */  lbu   $t6, ($a1)
/* 0B938C 800B878C 03005825 */  move  $t3, $t8
/* 0B9390 800B8790 00803025 */  move  $a2, $a0
/* 0B9394 800B8794 31D90001 */  andi  $t9, $t6, 1
/* 0B9398 800B8798 13200073 */  beqz  $t9, .L800B8968
/* 0B939C 800B879C 304F00FF */   andi  $t7, $v0, 0xff
/* 0B93A0 800B87A0 3C0F0200 */  lui   $t7, (0x02000200 >> 16) # lui $t7, 0x200
/* 0B93A4 800B87A4 35EF0200 */  ori   $t7, (0x02000200 & 0xFFFF) # ori $t7, $t7, 0x200
/* 0B93A8 800B87A8 24180180 */  li    $t8, 384
/* 0B93AC 800B87AC ACD80004 */  sw    $t8, 4($a2)
/* 0B93B0 800B87B0 ACCF0000 */  sw    $t7, ($a2)
/* 0B93B4 800B87B4 90B90005 */  lbu   $t9, 5($a1)
/* 0B93B8 800B87B8 304E00FF */  andi  $t6, $v0, 0xff
/* 0B93BC 800B87BC 3C011200 */  lui   $at, 0x1200
/* 0B93C0 800B87C0 00197C00 */  sll   $t7, $t9, 0x10
/* 0B93C4 800B87C4 000ECA00 */  sll   $t9, $t6, 8
/* 0B93C8 800B87C8 01E1C025 */  or    $t8, $t7, $at
/* 0B93CC 800B87CC 03197825 */  or    $t7, $t8, $t9
/* 0B93D0 800B87D0 306E00FF */  andi  $t6, $v1, 0xff
/* 0B93D4 800B87D4 01EEC025 */  or    $t8, $t7, $t6
/* 0B93D8 800B87D8 24840008 */  addiu $a0, $a0, 8
/* 0B93DC 800B87DC 00805025 */  move  $t2, $a0
/* 0B93E0 800B87E0 AD580000 */  sw    $t8, ($t2)
/* 0B93E4 800B87E4 312EFFFF */  andi  $t6, $t1, 0xffff
/* 0B93E8 800B87E8 00087C00 */  sll   $t7, $t0, 0x10
/* 0B93EC 800B87EC 01EEC025 */  or    $t8, $t7, $t6
/* 0B93F0 800B87F0 AD580004 */  sw    $t8, 4($t2)
/* 0B93F4 800B87F4 24840008 */  addiu $a0, $a0, 8
/* 0B93F8 800B87F8 00805825 */  move  $t3, $a0
/* 0B93FC 800B87FC 00407825 */  move  $t7, $v0
/* 0B9400 800B8800 3C191600 */  lui   $t9, 0x1600
/* 0B9404 800B8804 AD790000 */  sw    $t9, ($t3)
/* 0B9408 800B8808 000F7400 */  sll   $t6, $t7, 0x10
/* 0B940C 800B880C 3078FFFF */  andi  $t8, $v1, 0xffff
/* 0B9410 800B8810 01D8C825 */  or    $t9, $t6, $t8
/* 0B9414 800B8814 AD790004 */  sw    $t9, 4($t3)
/* 0B9418 800B8818 8FA20064 */  lw    $v0, 0x64($sp)
/* 0B941C 800B881C 24010001 */  li    $at, 1
/* 0B9420 800B8820 24840008 */  addiu $a0, $a0, 8
/* 0B9424 800B8824 1041001E */  beq   $v0, $at, .L800B88A0
/* 0B9428 800B8828 97AF0062 */   lhu   $t7, 0x62($sp)
/* 0B942C 800B882C 24010002 */  li    $at, 2
/* 0B9430 800B8830 10410034 */  beq   $v0, $at, .L800B8904
/* 0B9434 800B8834 97AF0062 */   lhu   $t7, 0x62($sp)
/* 0B9438 800B8838 97AF0062 */  lhu   $t7, 0x62($sp)
/* 0B943C 800B883C 8CA60000 */  lw    $a2, ($a1)
/* 0B9440 800B8840 3C011300 */  lui   $at, 0x1300
/* 0B9444 800B8844 000F7103 */  sra   $t6, $t7, 4
/* 0B9448 800B8848 31D800FF */  andi  $t8, $t6, 0xff
/* 0B944C 800B884C 0018CC00 */  sll   $t9, $t8, 0x10
/* 0B9450 800B8850 30EE00FF */  andi  $t6, $a3, 0xff
/* 0B9454 800B8854 000EC200 */  sll   $t8, $t6, 8
/* 0B9458 800B8858 03217825 */  or    $t7, $t9, $at
/* 0B945C 800B885C 01F8C825 */  or    $t9, $t7, $t8
/* 0B9460 800B8860 00067100 */  sll   $t6, $a2, 4
/* 0B9464 800B8864 000E7FC2 */  srl   $t7, $t6, 0x1f
/* 0B9468 800B8868 31F80001 */  andi  $t8, $t7, 1
/* 0B946C 800B886C 00187040 */  sll   $t6, $t8, 1
/* 0B9470 800B8870 032E7825 */  or    $t7, $t9, $t6
/* 0B9474 800B8874 0006C140 */  sll   $t8, $a2, 5
/* 0B9478 800B8878 0018CFC2 */  srl   $t9, $t8, 0x1f
/* 0B947C 800B887C 332E0001 */  andi  $t6, $t9, 1
/* 0B9480 800B8880 3C19546C */  lui   $t9, (0x546C849C >> 16) # lui $t9, 0x546c
/* 0B9484 800B8884 00801025 */  move  $v0, $a0
/* 0B9488 800B8888 3739849C */  ori   $t9, (0x546C849C & 0xFFFF) # ori $t9, $t9, 0x849c
/* 0B948C 800B888C 01EEC025 */  or    $t8, $t7, $t6
/* 0B9490 800B8890 AC580000 */  sw    $t8, ($v0)
/* 0B9494 800B8894 AC590004 */  sw    $t9, 4($v0)
/* 0B9498 800B8898 10000061 */  b     .L800B8A20
/* 0B949C 800B889C 24840008 */   addiu $a0, $a0, 8
.L800B88A0:
/* 0B94A0 800B88A0 000F7103 */  sra   $t6, $t7, 4
/* 0B94A4 800B88A4 31D800FF */  andi  $t8, $t6, 0xff
/* 0B94A8 800B88A8 8CA60000 */  lw    $a2, ($a1)
/* 0B94AC 800B88AC 0018CC00 */  sll   $t9, $t8, 0x10
/* 0B94B0 800B88B0 30EE00FF */  andi  $t6, $a3, 0xff
/* 0B94B4 800B88B4 000EC200 */  sll   $t8, $t6, 8
/* 0B94B8 800B88B8 3C011300 */  lui   $at, 0x1300
/* 0B94BC 800B88BC 03217825 */  or    $t7, $t9, $at
/* 0B94C0 800B88C0 01F8C825 */  or    $t9, $t7, $t8
/* 0B94C4 800B88C4 00067100 */  sll   $t6, $a2, 4
/* 0B94C8 800B88C8 000E7FC2 */  srl   $t7, $t6, 0x1f
/* 0B94CC 800B88CC 31F80001 */  andi  $t8, $t7, 1
/* 0B94D0 800B88D0 00187040 */  sll   $t6, $t8, 1
/* 0B94D4 800B88D4 032E7825 */  or    $t7, $t9, $t6
/* 0B94D8 800B88D8 0006C140 */  sll   $t8, $a2, 5
/* 0B94DC 800B88DC 0018CFC2 */  srl   $t9, $t8, 0x1f
/* 0B94E0 800B88E0 332E0001 */  andi  $t6, $t9, 1
/* 0B94E4 800B88E4 3C19206C */  lui   $t9, (0x206C849C >> 16) # lui $t9, 0x206c
/* 0B94E8 800B88E8 00801025 */  move  $v0, $a0
/* 0B94EC 800B88EC 3739849C */  ori   $t9, (0x206C849C & 0xFFFF) # ori $t9, $t9, 0x849c
/* 0B94F0 800B88F0 01EEC025 */  or    $t8, $t7, $t6
/* 0B94F4 800B88F4 AC580000 */  sw    $t8, ($v0)
/* 0B94F8 800B88F8 AC590004 */  sw    $t9, 4($v0)
/* 0B94FC 800B88FC 10000048 */  b     .L800B8A20
/* 0B9500 800B8900 24840008 */   addiu $a0, $a0, 8
.L800B8904:
/* 0B9504 800B8904 000F7103 */  sra   $t6, $t7, 4
/* 0B9508 800B8908 31D800FF */  andi  $t8, $t6, 0xff
/* 0B950C 800B890C 8CA60000 */  lw    $a2, ($a1)
/* 0B9510 800B8910 0018CC00 */  sll   $t9, $t8, 0x10
/* 0B9514 800B8914 30EE00FF */  andi  $t6, $a3, 0xff
/* 0B9518 800B8918 000EC200 */  sll   $t8, $t6, 8
/* 0B951C 800B891C 3C011300 */  lui   $at, 0x1300
/* 0B9520 800B8920 03217825 */  or    $t7, $t9, $at
/* 0B9524 800B8924 01F8C825 */  or    $t9, $t7, $t8
/* 0B9528 800B8928 00067100 */  sll   $t6, $a2, 4
/* 0B952C 800B892C 000E7FC2 */  srl   $t7, $t6, 0x1f
/* 0B9530 800B8930 31F80001 */  andi  $t8, $t7, 1
/* 0B9534 800B8934 00187040 */  sll   $t6, $t8, 1
/* 0B9538 800B8938 032E7825 */  or    $t7, $t9, $t6
/* 0B953C 800B893C 0006C140 */  sll   $t8, $a2, 5
/* 0B9540 800B8940 0018CFC2 */  srl   $t9, $t8, 0x1f
/* 0B9544 800B8944 332E0001 */  andi  $t6, $t9, 1
/* 0B9548 800B8948 3C195420 */  lui   $t9, (0x5420849C >> 16) # lui $t9, 0x5420
/* 0B954C 800B894C 00801025 */  move  $v0, $a0
/* 0B9550 800B8950 3739849C */  ori   $t9, (0x5420849C & 0xFFFF) # ori $t9, $t9, 0x849c
/* 0B9554 800B8954 01EEC025 */  or    $t8, $t7, $t6
/* 0B9558 800B8958 AC580000 */  sw    $t8, ($v0)
/* 0B955C 800B895C AC590004 */  sw    $t9, 4($v0)
/* 0B9560 800B8960 1000002F */  b     .L800B8A20
/* 0B9564 800B8964 24840008 */   addiu $a0, $a0, 8
.L800B8968:
/* 0B9568 800B8968 90AE0005 */  lbu   $t6, 5($a1)
/* 0B956C 800B896C 24840008 */  addiu $a0, $a0, 8
/* 0B9570 800B8970 00805825 */  move  $t3, $a0
/* 0B9574 800B8974 000EC400 */  sll   $t8, $t6, 0x10
/* 0B9578 800B8978 000F7200 */  sll   $t6, $t7, 8
/* 0B957C 800B897C 0301C825 */  or    $t9, $t8, $at
/* 0B9580 800B8980 032EC025 */  or    $t8, $t9, $t6
/* 0B9584 800B8984 306F00FF */  andi  $t7, $v1, 0xff
/* 0B9588 800B8988 030FC825 */  or    $t9, $t8, $t7
/* 0B958C 800B898C AD590000 */  sw    $t9, ($t2)
/* 0B9590 800B8990 312FFFFF */  andi  $t7, $t1, 0xffff
/* 0B9594 800B8994 0008C400 */  sll   $t8, $t0, 0x10
/* 0B9598 800B8998 030FC825 */  or    $t9, $t8, $t7
/* 0B959C 800B899C AD590004 */  sw    $t9, 4($t2)
/* 0B95A0 800B89A0 3C0E1600 */  lui   $t6, 0x1600
/* 0B95A4 800B89A4 AD6E0000 */  sw    $t6, ($t3)
/* 0B95A8 800B89A8 3079FFFF */  andi  $t9, $v1, 0xffff
/* 0B95AC 800B89AC 00027C00 */  sll   $t7, $v0, 0x10
/* 0B95B0 800B89B0 01F97025 */  or    $t6, $t7, $t9
/* 0B95B4 800B89B4 AD6E0004 */  sw    $t6, 4($t3)
/* 0B95B8 800B89B8 97B80062 */  lhu   $t8, 0x62($sp)
/* 0B95BC 800B89BC 8CA60000 */  lw    $a2, ($a1)
/* 0B95C0 800B89C0 3C011300 */  lui   $at, 0x1300
/* 0B95C4 800B89C4 00187903 */  sra   $t7, $t8, 4
/* 0B95C8 800B89C8 31F900FF */  andi  $t9, $t7, 0xff
/* 0B95CC 800B89CC 00197400 */  sll   $t6, $t9, 0x10
/* 0B95D0 800B89D0 30EF00FF */  andi  $t7, $a3, 0xff
/* 0B95D4 800B89D4 000FCA00 */  sll   $t9, $t7, 8
/* 0B95D8 800B89D8 01C1C025 */  or    $t8, $t6, $at
/* 0B95DC 800B89DC 03197025 */  or    $t6, $t8, $t9
/* 0B95E0 800B89E0 00067900 */  sll   $t7, $a2, 4
/* 0B95E4 800B89E4 000FC7C2 */  srl   $t8, $t7, 0x1f
/* 0B95E8 800B89E8 33190001 */  andi  $t9, $t8, 1
/* 0B95EC 800B89EC 00197840 */  sll   $t7, $t9, 1
/* 0B95F0 800B89F0 01CFC025 */  or    $t8, $t6, $t7
/* 0B95F4 800B89F4 0006C940 */  sll   $t9, $a2, 5
/* 0B95F8 800B89F8 24840008 */  addiu $a0, $a0, 8
/* 0B95FC 800B89FC 001977C2 */  srl   $t6, $t9, 0x1f
/* 0B9600 800B8A00 31CF0001 */  andi  $t7, $t6, 1
/* 0B9604 800B8A04 00806025 */  move  $t4, $a0
/* 0B9608 800B8A08 3C0E546C */  lui   $t6, (0x546C849C >> 16) # lui $t6, 0x546c
/* 0B960C 800B8A0C 35CE849C */  ori   $t6, (0x546C849C & 0xFFFF) # ori $t6, $t6, 0x849c
/* 0B9610 800B8A10 030FC825 */  or    $t9, $t8, $t7
/* 0B9614 800B8A14 AD990000 */  sw    $t9, ($t4)
/* 0B9618 800B8A18 AD8E0004 */  sw    $t6, 4($t4)
/* 0B961C 800B8A1C 24840008 */  addiu $a0, $a0, 8
.L800B8A20:
/* 0B9620 800B8A20 00801025 */  move  $v0, $a0
/* 0B9624 800B8A24 03E00008 */  jr    $ra
/* 0B9628 800B8A28 27BD0050 */   addiu $sp, $sp, 0x50

glabel func_800B8A2C
/* 0B962C 800B8A2C 27BDFFF8 */  addiu $sp, $sp, -8
/* 0B9630 800B8A30 8FAE001C */  lw    $t6, 0x1c($sp)
/* 0B9634 800B8A34 AFB00004 */  sw    $s0, 4($sp)
/* 0B9638 800B8A38 24030001 */  li    $v1, 1
/* 0B963C 800B8A3C 11C30006 */  beq   $t6, $v1, .L800B8A58
/* 0B9640 800B8A40 00E08025 */   move  $s0, $a3
/* 0B9644 800B8A44 24010002 */  li    $at, 2
/* 0B9648 800B8A48 11C10009 */  beq   $t6, $at, .L800B8A70
/* 0B964C 800B8A4C 240906C0 */   li    $t1, 1728
/* 0B9650 800B8A50 100000DD */  b     .L800B8DC8
/* 0B9654 800B8A54 00801025 */   move  $v0, $a0
.L800B8A58:
/* 0B9658 800B8A58 90A70003 */  lbu   $a3, 3($a1)
/* 0B965C 800B8A5C 90C20002 */  lbu   $v0, 2($a2)
/* 0B9660 800B8A60 24090540 */  li    $t1, 1344
/* 0B9664 800B8A64 A0C00003 */  sb    $zero, 3($a2)
/* 0B9668 800B8A68 10000008 */  b     .L800B8A8C
/* 0B966C 800B8A6C A0C70002 */   sb    $a3, 2($a2)
.L800B8A70:
/* 0B9670 800B8A70 90A70004 */  lbu   $a3, 4($a1)
/* 0B9674 800B8A74 90C20003 */  lbu   $v0, 3($a2)
/* 0B9678 800B8A78 A0C00002 */  sb    $zero, 2($a2)
/* 0B967C 800B8A7C 10000003 */  b     .L800B8A8C
/* 0B9680 800B8A80 A0C70003 */   sb    $a3, 3($a2)
/* 0B9684 800B8A84 100000D0 */  b     .L800B8DC8
/* 0B9688 800B8A88 00801025 */   move  $v0, $a0
.L800B8A8C:
/* 0B968C 800B8A8C 8FAF0018 */  lw    $t7, 0x18($sp)
/* 0B9690 800B8A90 24EE0200 */  addiu $t6, $a3, 0x200
/* 0B9694 800B8A94 000EC400 */  sll   $t8, $t6, 0x10
/* 0B9698 800B8A98 11E30099 */  beq   $t7, $v1, .L800B8D00
/* 0B969C 800B8A9C 00E02825 */   move  $a1, $a3
/* 0B96A0 800B8AA0 14400040 */  bnez  $v0, .L800B8BA4
/* 0B96A4 800B8AA4 00401825 */   move  $v1, $v0
/* 0B96A8 800B8AA8 00802825 */  move  $a1, $a0
/* 0B96AC 800B8AAC 3C020A00 */  lui   $v0, (0x0A000200 >> 16) # lui $v0, 0xa00
/* 0B96B0 800B8AB0 24840008 */  addiu $a0, $a0, 8
/* 0B96B4 800B8AB4 34420200 */  ori   $v0, (0x0A000200 & 0xFFFF) # ori $v0, $v0, 0x200
/* 0B96B8 800B8AB8 240D0008 */  li    $t5, 8
/* 0B96BC 800B8ABC 00805025 */  move  $t2, $a0
/* 0B96C0 800B8AC0 ACAD0004 */  sw    $t5, 4($a1)
/* 0B96C4 800B8AC4 ACA20000 */  sw    $v0, ($a1)
/* 0B96C8 800B8AC8 24840008 */  addiu $a0, $a0, 8
/* 0B96CC 800B8ACC 3C180200 */  lui   $t8, (0x02000008 >> 16) # lui $t8, 0x200
/* 0B96D0 800B8AD0 37180008 */  ori   $t8, (0x02000008 & 0xFFFF) # ori $t8, $t8, 8
/* 0B96D4 800B8AD4 00805825 */  move  $t3, $a0
/* 0B96D8 800B8AD8 AD580000 */  sw    $t8, ($t2)
/* 0B96DC 800B8ADC AD4D0004 */  sw    $t5, 4($t2)
/* 0B96E0 800B8AE0 3C190010 */  lui   $t9, (0x00100010 >> 16) # lui $t9, 0x10
/* 0B96E4 800B8AE4 37390010 */  ori   $t9, (0x00100010 & 0xFFFF) # ori $t9, $t9, 0x10
/* 0B96E8 800B8AE8 24840008 */  addiu $a0, $a0, 8
/* 0B96EC 800B8AEC AD790004 */  sw    $t9, 4($t3)
/* 0B96F0 800B8AF0 AD620000 */  sw    $v0, ($t3)
/* 0B96F4 800B8AF4 00806025 */  move  $t4, $a0
/* 0B96F8 800B8AF8 3C0E1502 */  lui   $t6, 0x1502
/* 0B96FC 800B8AFC AD8E0000 */  sw    $t6, ($t4)
/* 0B9700 800B8B00 8CCF000C */  lw    $t7, 0xc($a2)
/* 0B9704 800B8B04 3C088000 */  lui   $t0, (0x80000040 >> 16) # lui $t0, 0x8000
/* 0B9708 800B8B08 35080040 */  ori   $t0, (0x80000040 & 0xFFFF) # ori $t0, $t0, 0x40
/* 0B970C 800B8B0C 0207C821 */  addu  $t9, $s0, $a3
/* 0B9710 800B8B10 03235823 */  subu  $t3, $t9, $v1
/* 0B9714 800B8B14 001073C0 */  sll   $t6, $s0, 0xf
/* 0B9718 800B8B18 01E8C021 */  addu  $t8, $t7, $t0
/* 0B971C 800B8B1C 256F0008 */  addiu $t7, $t3, 8
/* 0B9720 800B8B20 01CF001A */  div   $zero, $t6, $t7
/* 0B9724 800B8B24 AD980004 */  sw    $t8, 4($t4)
/* 0B9728 800B8B28 24840008 */  addiu $a0, $a0, 8
/* 0B972C 800B8B2C 00006812 */  mflo  $t5
/* 0B9730 800B8B30 00805025 */  move  $t2, $a0
/* 0B9734 800B8B34 31B8FFFF */  andi  $t8, $t5, 0xffff
/* 0B9738 800B8B38 3C190800 */  lui   $t9, (0x08000208 >> 16) # lui $t9, 0x800
/* 0B973C 800B8B3C 37390208 */  ori   $t9, (0x08000208 & 0xFFFF) # ori $t9, $t9, 0x208
/* 0B9740 800B8B40 24840008 */  addiu $a0, $a0, 8
/* 0B9744 800B8B44 3162FFFF */  andi  $v0, $t3, 0xffff
/* 0B9748 800B8B48 AD420004 */  sw    $v0, 4($t2)
/* 0B974C 800B8B4C AD590000 */  sw    $t9, ($t2)
/* 0B9750 800B8B50 00806025 */  move  $t4, $a0
/* 0B9754 800B8B54 03006825 */  move  $t5, $t8
/* 0B9758 800B8B58 00E02825 */  move  $a1, $a3
/* 0B975C 800B8B5C 15E00002 */  bnez  $t7, .L800B8B68
/* 0B9760 800B8B60 00000000 */   nop   
/* 0B9764 800B8B64 0007000D */  break 7
.L800B8B68:
/* 0B9768 800B8B68 2401FFFF */  li    $at, -1
/* 0B976C 800B8B6C 15E10004 */  bne   $t7, $at, .L800B8B80
/* 0B9770 800B8B70 3C018000 */   lui   $at, 0x8000
/* 0B9774 800B8B74 15C10002 */  bne   $t6, $at, .L800B8B80
/* 0B9778 800B8B78 00000000 */   nop   
/* 0B977C 800B8B7C 0006000D */  break 6
.L800B8B80:
/* 0B9780 800B8B80 3C010500 */  lui   $at, 0x500
/* 0B9784 800B8B84 330EFFFF */  andi  $t6, $t8, 0xffff
/* 0B9788 800B8B88 01C17825 */  or    $t7, $t6, $at
/* 0B978C 800B8B8C AD8F0000 */  sw    $t7, ($t4)
/* 0B9790 800B8B90 8CD8000C */  lw    $t8, 0xc($a2)
/* 0B9794 800B8B94 24840008 */  addiu $a0, $a0, 8
/* 0B9798 800B8B98 0308C821 */  addu  $t9, $t8, $t0
/* 0B979C 800B8B9C 10000038 */  b     .L800B8C80
/* 0B97A0 800B8BA0 AD990004 */   sw    $t9, 4($t4)
.L800B8BA4:
/* 0B97A4 800B8BA4 14E00014 */  bnez  $a3, .L800B8BF8
/* 0B97A8 800B8BA8 00E02825 */   move  $a1, $a3
/* 0B97AC 800B8BAC 02037823 */  subu  $t7, $s0, $v1
/* 0B97B0 800B8BB0 25F8FFFC */  addiu $t8, $t7, -4
/* 0B97B4 800B8BB4 001073C0 */  sll   $t6, $s0, 0xf
/* 0B97B8 800B8BB8 01D8001A */  div   $zero, $t6, $t8
/* 0B97BC 800B8BBC 00005012 */  mflo  $t2
/* 0B97C0 800B8BC0 3159FFFF */  andi  $t9, $t2, 0xffff
/* 0B97C4 800B8BC4 17000002 */  bnez  $t8, .L800B8BD0
/* 0B97C8 800B8BC8 00000000 */   nop   
/* 0B97CC 800B8BCC 0007000D */  break 7
.L800B8BD0:
/* 0B97D0 800B8BD0 2401FFFF */  li    $at, -1
/* 0B97D4 800B8BD4 17010004 */  bne   $t8, $at, .L800B8BE8
/* 0B97D8 800B8BD8 3C018000 */   lui   $at, 0x8000
/* 0B97DC 800B8BDC 15C10002 */  bne   $t6, $at, .L800B8BE8
/* 0B97E0 800B8BE0 00000000 */   nop   
/* 0B97E4 800B8BE4 0006000D */  break 6
.L800B8BE8:
/* 0B97E8 800B8BE8 02057821 */  addu  $t7, $s0, $a1
/* 0B97EC 800B8BEC 01E35823 */  subu  $t3, $t7, $v1
/* 0B97F0 800B8BF0 10000011 */  b     .L800B8C38
/* 0B97F4 800B8BF4 03205025 */   move  $t2, $t9
.L800B8BF8:
/* 0B97F8 800B8BF8 02057021 */  addu  $t6, $s0, $a1
/* 0B97FC 800B8BFC 01C35823 */  subu  $t3, $t6, $v1
/* 0B9800 800B8C00 0010C3C0 */  sll   $t8, $s0, 0xf
/* 0B9804 800B8C04 030B001A */  div   $zero, $t8, $t3
/* 0B9808 800B8C08 00005012 */  mflo  $t2
/* 0B980C 800B8C0C 3159FFFF */  andi  $t9, $t2, 0xffff
/* 0B9810 800B8C10 03205025 */  move  $t2, $t9
/* 0B9814 800B8C14 15600002 */  bnez  $t3, .L800B8C20
/* 0B9818 800B8C18 00000000 */   nop   
/* 0B981C 800B8C1C 0007000D */  break 7
.L800B8C20:
/* 0B9820 800B8C20 2401FFFF */  li    $at, -1
/* 0B9824 800B8C24 15610004 */  bne   $t3, $at, .L800B8C38
/* 0B9828 800B8C28 3C018000 */   lui   $at, 0x8000
/* 0B982C 800B8C2C 17010002 */  bne   $t8, $at, .L800B8C38
/* 0B9830 800B8C30 00000000 */   nop   
/* 0B9834 800B8C34 0006000D */  break 6
.L800B8C38:
/* 0B9838 800B8C38 00806025 */  move  $t4, $a0
/* 0B983C 800B8C3C 3C0F0800 */  lui   $t7, (0x08000200 >> 16) # lui $t7, 0x800
/* 0B9840 800B8C40 35EF0200 */  ori   $t7, (0x08000200 & 0xFFFF) # ori $t7, $t7, 0x200
/* 0B9844 800B8C44 24840008 */  addiu $a0, $a0, 8
/* 0B9848 800B8C48 3162FFFF */  andi  $v0, $t3, 0xffff
/* 0B984C 800B8C4C 314EFFFF */  andi  $t6, $t2, 0xffff
/* 0B9850 800B8C50 3C010500 */  lui   $at, 0x500
/* 0B9854 800B8C54 AD820004 */  sw    $v0, 4($t4)
/* 0B9858 800B8C58 AD8F0000 */  sw    $t7, ($t4)
/* 0B985C 800B8C5C 01C1C025 */  or    $t8, $t6, $at
/* 0B9860 800B8C60 00806825 */  move  $t5, $a0
/* 0B9864 800B8C64 ADB80000 */  sw    $t8, ($t5)
/* 0B9868 800B8C68 8CD9000C */  lw    $t9, 0xc($a2)
/* 0B986C 800B8C6C 3C088000 */  lui   $t0, (0x80000040 >> 16) # $t0, 0x8000
/* 0B9870 800B8C70 35080040 */  ori   $t0, (0x80000040 & 0xFFFF) # ori $t0, $t0, 0x40
/* 0B9874 800B8C74 03287821 */  addu  $t7, $t9, $t0
/* 0B9878 800B8C78 ADAF0004 */  sw    $t7, 4($t5)
/* 0B987C 800B8C7C 24840008 */  addiu $a0, $a0, 8
.L800B8C80:
/* 0B9880 800B8C80 10600018 */  beqz  $v1, .L800B8CE4
/* 0B9884 800B8C84 3C0E0A00 */   lui   $t6, 0xa00
/* 0B9888 800B8C88 00037103 */  sra   $t6, $v1, 4
/* 0B988C 800B8C8C 31D800FF */  andi  $t8, $t6, 0xff
/* 0B9890 800B8C90 0018CC00 */  sll   $t9, $t8, 0x10
/* 0B9894 800B8C94 3C011400 */  lui   $at, 0x1400
/* 0B9898 800B8C98 03217825 */  or    $t7, $t9, $at
/* 0B989C 800B8C9C 35EE0200 */  ori   $t6, $t7, 0x200
/* 0B98A0 800B8CA0 00804025 */  move  $t0, $a0
/* 0B98A4 800B8CA4 AD0E0000 */  sw    $t6, ($t0)
/* 0B98A8 800B8CA8 8CD8000C */  lw    $t8, 0xc($a2)
/* 0B98AC 800B8CAC 3C018000 */  lui   $at, (0x80000060 >> 16) # lui $at, 0x8000
/* 0B98B0 800B8CB0 34210060 */  ori   $at, (0x80000060 & 0xFFFF) # ori $at, $at, 0x60
/* 0B98B4 800B8CB4 0301C821 */  addu  $t9, $t8, $at
/* 0B98B8 800B8CB8 AD190004 */  sw    $t9, 4($t0)
/* 0B98BC 800B8CBC 24840008 */  addiu $a0, $a0, 8
/* 0B98C0 800B8CC0 00805025 */  move  $t2, $a0
/* 0B98C4 800B8CC4 24780200 */  addiu $t8, $v1, 0x200
/* 0B98C8 800B8CC8 3C0F0A00 */  lui   $t7, 0xa00
/* 0B98CC 800B8CCC AD4F0000 */  sw    $t7, ($t2)
/* 0B98D0 800B8CD0 0018CC00 */  sll   $t9, $t8, 0x10
/* 0B98D4 800B8CD4 03227825 */  or    $t7, $t9, $v0
/* 0B98D8 800B8CD8 AD4F0004 */  sw    $t7, 4($t2)
/* 0B98DC 800B8CDC 1000001B */  b     .L800B8D4C
/* 0B98E0 800B8CE0 24840008 */   addiu $a0, $a0, 8
.L800B8CE4:
/* 0B98E4 800B8CE4 00801825 */  move  $v1, $a0
/* 0B98E8 800B8CE8 3C010200 */  lui   $at, 0x200
/* 0B98EC 800B8CEC 0041C025 */  or    $t8, $v0, $at
/* 0B98F0 800B8CF0 AC780004 */  sw    $t8, 4($v1)
/* 0B98F4 800B8CF4 AC6E0000 */  sw    $t6, ($v1)
/* 0B98F8 800B8CF8 10000014 */  b     .L800B8D4C
/* 0B98FC 800B8CFC 24840008 */   addiu $a0, $a0, 8
.L800B8D00:
/* 0B9900 800B8D00 00801825 */  move  $v1, $a0
/* 0B9904 800B8D04 3C020A00 */  lui   $v0, (0x0A000200 >> 16)
/* 0B9908 800B8D08 24840008 */  addiu $a0, $a0, 8
/* 0B990C 800B8D0C 34420200 */  ori   $v0, (0x0A000200 & 0xFFFF) # ori $v0, $v0, 0x200
/* 0B9910 800B8D10 3208FFFF */  andi  $t0, $s0, 0xffff
/* 0B9914 800B8D14 00805025 */  move  $t2, $a0
/* 0B9918 800B8D18 AC680004 */  sw    $t0, 4($v1)
/* 0B991C 800B8D1C AC620000 */  sw    $v0, ($v1)
/* 0B9920 800B8D20 3C190A00 */  lui   $t9, 0xa00
/* 0B9924 800B8D24 AD590000 */  sw    $t9, ($t2)
/* 0B9928 800B8D28 24840008 */  addiu $a0, $a0, 8
/* 0B992C 800B8D2C 0308C825 */  or    $t9, $t8, $t0
/* 0B9930 800B8D30 00805825 */  move  $t3, $a0
/* 0B9934 800B8D34 AD590004 */  sw    $t9, 4($t2)
/* 0B9938 800B8D38 3C0F0200 */  lui   $t7, (0x02000200 >> 16) # lui $t7, 0x200
/* 0B993C 800B8D3C 35EF0200 */  ori   $t7, (0x02000200 & 0xFFFF) # ori $t7, $t7, 0x200
/* 0B9940 800B8D40 AD6F0000 */  sw    $t7, ($t3)
/* 0B9944 800B8D44 AD670004 */  sw    $a3, 4($t3)
/* 0B9948 800B8D48 24840008 */  addiu $a0, $a0, 8
.L800B8D4C:
/* 0B994C 800B8D4C 10E00010 */  beqz  $a3, .L800B8D90
/* 0B9950 800B8D50 00801025 */   move  $v0, $a0
/* 0B9954 800B8D54 00057103 */  sra   $t6, $a1, 4
/* 0B9958 800B8D58 31D800FF */  andi  $t8, $t6, 0xff
/* 0B995C 800B8D5C 0018CC00 */  sll   $t9, $t8, 0x10
/* 0B9960 800B8D60 260E0200 */  addiu $t6, $s0, 0x200
/* 0B9964 800B8D64 3C011500 */  lui   $at, 0x1500
/* 0B9968 800B8D68 03217825 */  or    $t7, $t9, $at
/* 0B996C 800B8D6C 31D8FFFF */  andi  $t8, $t6, 0xffff
/* 0B9970 800B8D70 01F8C825 */  or    $t9, $t7, $t8
/* 0B9974 800B8D74 AC590000 */  sw    $t9, ($v0)
/* 0B9978 800B8D78 8CCE000C */  lw    $t6, 0xc($a2)
/* 0B997C 800B8D7C 3C018000 */  lui   $at, (0x80000060 >> 16) # lui $at, 0x8000
/* 0B9980 800B8D80 34210060 */  ori   $at, (0x80000060 & 0xFFFF) # ori $at, $at, 0x60
/* 0B9984 800B8D84 01C17821 */  addu  $t7, $t6, $at
/* 0B9988 800B8D88 AC4F0004 */  sw    $t7, 4($v0)
/* 0B998C 800B8D8C 24840008 */  addiu $a0, $a0, 8
.L800B8D90:
/* 0B9990 800B8D90 2618001F */  addiu $t8, $s0, 0x1f
/* 0B9994 800B8D94 3319FFE0 */  andi  $t9, $t8, 0xffe0
/* 0B9998 800B8D98 00197103 */  sra   $t6, $t9, 4
/* 0B999C 800B8D9C 31CF00FF */  andi  $t7, $t6, 0xff
/* 0B99A0 800B8DA0 000FC400 */  sll   $t8, $t7, 0x10
/* 0B99A4 800B8DA4 3C010C00 */  lui   $at, 0xc00
/* 0B99A8 800B8DA8 0301C825 */  or    $t9, $t8, $at
/* 0B99AC 800B8DAC 3C010200 */  lui   $at, 0x200
/* 0B99B0 800B8DB0 312FFFFF */  andi  $t7, $t1, 0xffff
/* 0B99B4 800B8DB4 01E1C025 */  or    $t8, $t7, $at
/* 0B99B8 800B8DB8 372E7FFF */  ori   $t6, $t9, 0x7fff
/* 0B99BC 800B8DBC AC8E0000 */  sw    $t6, ($a0)
/* 0B99C0 800B8DC0 AC980004 */  sw    $t8, 4($a0)
/* 0B99C4 800B8DC4 24820008 */  addiu $v0, $a0, 8
.L800B8DC8:
/* 0B99C8 800B8DC8 8FB00004 */  lw    $s0, 4($sp)
/* 0B99CC 800B8DCC 03E00008 */  jr    $ra
/* 0B99D0 800B8DD0 27BD0008 */   addiu $sp, $sp, 8

/* 0B99D4 800B8DD4 00000000 */  nop   
/* 0B99D8 800B8DD8 00000000 */  nop   
/* 0B99DC 800B8DDC 00000000 */  nop   
