glabel func_800A2EB8
/* 0A3AB8 800A2EB8 27BDFF88 */  addiu $sp, $sp, -0x78
/* 0A3ABC 800A2EBC AFB40030 */  sw    $s4, 0x30($sp)
/* 0A3AC0 800A2EC0 0080A025 */  move  $s4, $a0
/* 0A3AC4 800A2EC4 AFB00020 */  sw    $s0, 0x20($sp)
/* 0A3AC8 800A2EC8 AFB10024 */  sw    $s1, 0x24($sp)
/* 0A3ACC 800A2ECC 3C108016 */  lui   $s0, %hi(gGPCurrentRacePlayerIdByRank) # $s0, 0x8016
/* 0A3AD0 800A2ED0 3C048016 */  lui   $a0, %hi(D_80164370) # $a0, 0x8016
/* 0A3AD4 800A2ED4 3C02800F */  lui   $v0, %hi(gPlayers) # $v0, 0x800f
/* 0A3AD8 800A2ED8 AFBF0044 */  sw    $ra, 0x44($sp)
/* 0A3ADC 800A2EDC AFBE0040 */  sw    $fp, 0x40($sp)
/* 0A3AE0 800A2EE0 AFB7003C */  sw    $s7, 0x3c($sp)
/* 0A3AE4 800A2EE4 AFB60038 */  sw    $s6, 0x38($sp)
/* 0A3AE8 800A2EE8 AFB50034 */  sw    $s5, 0x34($sp)
/* 0A3AEC 800A2EEC AFB3002C */  sw    $s3, 0x2c($sp)
/* 0A3AF0 800A2EF0 AFB20028 */  sw    $s2, 0x28($sp)
/* 0A3AF4 800A2EF4 24426990 */  addiu $v0, %lo(gPlayers) # addiu $v0, $v0, 0x6990
/* 0A3AF8 800A2EF8 24844370 */  addiu $a0, %lo(D_80164370) # addiu $a0, $a0, 0x4370
/* 0A3AFC 800A2EFC 26104360 */  addiu $s0, %lo(gGPCurrentRacePlayerIdByRank) # addiu $s0, $s0, 0x4360
/* 0A3B00 800A2F00 27B10070 */  addiu $s1, $sp, 0x70
/* 0A3B04 800A2F04 24030DD8 */  li    $v1, 3544
.L800A2F08:
/* 0A3B08 800A2F08 860E0000 */  lh    $t6, ($s0)
/* 0A3B0C 800A2F0C 26100002 */  addiu $s0, $s0, 2
/* 0A3B10 800A2F10 0204082B */  sltu  $at, $s0, $a0
/* 0A3B14 800A2F14 01C30019 */  multu $t6, $v1
/* 0A3B18 800A2F18 26310001 */  addiu $s1, $s1, 1
/* 0A3B1C 800A2F1C 00007812 */  mflo  $t7
/* 0A3B20 800A2F20 004FC021 */  addu  $t8, $v0, $t7
/* 0A3B24 800A2F24 97190254 */  lhu   $t9, 0x254($t8)
/* 0A3B28 800A2F28 1420FFF7 */  bnez  $at, .L800A2F08
/* 0A3B2C 800A2F2C A239FFFF */   sb    $t9, -1($s1)
/* 0A3B30 800A2F30 0C024C36 */  jal   set_text_color
/* 0A3B34 800A2F34 24040004 */   li    $a0, 4
/* 0A3B38 800A2F38 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0A3B3C 800A2F3C 44810000 */  mtc1  $at, $f0
/* 0A3B40 800A2F40 8E84000C */  lw    $a0, 0xc($s4)
/* 0A3B44 800A2F44 8E850010 */  lw    $a1, 0x10($s4)
/* 0A3B48 800A2F48 3C06800F */  lui   $a2, %hi(D_800F0C1C) # $a2, 0x800f
/* 0A3B4C 800A2F4C 24C60C1C */  addiu $a2, %lo(D_800F0C1C) # addiu $a2, $a2, 0xc1c
/* 0A3B50 800A2F50 00003825 */  move  $a3, $zero
/* 0A3B54 800A2F54 E7A00014 */  swc1  $f0, 0x14($sp)
/* 0A3B58 800A2F58 E7A00010 */  swc1  $f0, 0x10($sp)
/* 0A3B5C 800A2F5C 2484001E */  addiu $a0, $a0, 0x1e
/* 0A3B60 800A2F60 0C024CC9 */  jal   func_80093324
/* 0A3B64 800A2F64 24A50019 */   addiu $a1, $a1, 0x19
/* 0A3B68 800A2F68 0C024C36 */  jal   set_text_color
/* 0A3B6C 800A2F6C 24040005 */   li    $a0, 5
/* 0A3B70 800A2F70 3C01800F */  lui   $at, %hi(D_800F1C90) # $at, 0x800f
/* 0A3B74 800A2F74 C4201C90 */  lwc1  $f0, %lo(D_800F1C90)($at)
/* 0A3B78 800A2F78 8E84000C */  lw    $a0, 0xc($s4)
/* 0A3B7C 800A2F7C 8E850010 */  lw    $a1, 0x10($s4)
/* 0A3B80 800A2F80 3C06800F */  lui   $a2, %hi(D_800F0C24) # $a2, 0x800f
/* 0A3B84 800A2F84 24C60C24 */  addiu $a2, %lo(D_800F0C24) # addiu $a2, $a2, 0xc24
/* 0A3B88 800A2F88 00003825 */  move  $a3, $zero
/* 0A3B8C 800A2F8C E7A00014 */  swc1  $f0, 0x14($sp)
/* 0A3B90 800A2F90 E7A00010 */  swc1  $f0, 0x10($sp)
/* 0A3B94 800A2F94 2484002C */  addiu $a0, $a0, 0x2c
/* 0A3B98 800A2F98 0C024CC9 */  jal   func_80093324
/* 0A3B9C 800A2F9C 24A50028 */   addiu $a1, $a1, 0x28
/* 0A3BA0 800A2FA0 3C048019 */  lui   $a0, %hi(gCupCourseSelection) # $a0, 0x8019
/* 0A3BA4 800A2FA4 8084EE0B */  lb    $a0, %lo(gCupCourseSelection)($a0)
/* 0A3BA8 800A2FA8 27A50068 */  addiu $a1, $sp, 0x68
/* 0A3BAC 800A2FAC 0C029E25 */  jal   convert_number_to_ascii
/* 0A3BB0 800A2FB0 24840001 */   addiu $a0, $a0, 1
/* 0A3BB4 800A2FB4 3C01800F */  lui   $at, %hi(D_800F1C94) # $at, 0x800f
/* 0A3BB8 800A2FB8 C4201C94 */  lwc1  $f0, %lo(D_800F1C94)($at)
/* 0A3BBC 800A2FBC 8E84000C */  lw    $a0, 0xc($s4)
/* 0A3BC0 800A2FC0 8E850010 */  lw    $a1, 0x10($s4)
/* 0A3BC4 800A2FC4 27A60069 */  addiu $a2, $sp, 0x69
/* 0A3BC8 800A2FC8 00003825 */  move  $a3, $zero
/* 0A3BCC 800A2FCC E7A00014 */  swc1  $f0, 0x14($sp)
/* 0A3BD0 800A2FD0 E7A00010 */  swc1  $f0, 0x10($sp)
/* 0A3BD4 800A2FD4 24840057 */  addiu $a0, $a0, 0x57
/* 0A3BD8 800A2FD8 0C024CC9 */  jal   func_80093324
/* 0A3BDC 800A2FDC 24A50028 */   addiu $a1, $a1, 0x28
/* 0A3BE0 800A2FE0 3C108016 */  lui   $s0, %hi(gGPCurrentRacePlayerIdByRank) # $s0, 0x8016
/* 0A3BE4 800A2FE4 3C178019 */  lui   $s7, %hi(D_8018EDF3) # $s7, 0x8019
/* 0A3BE8 800A2FE8 3C15800E */  lui   $s5, %hi(gGlobalTimer) # $s5, 0x800e
/* 0A3BEC 800A2FEC 26B5C54C */  addiu $s5, %lo(gGlobalTimer) # addiu $s5, $s5, -0x3ab4
/* 0A3BF0 800A2FF0 26F7EDF3 */  addiu $s7, %lo(D_8018EDF3) # addiu $s7, $s7, -0x120d
/* 0A3BF4 800A2FF4 26104360 */  addiu $s0, %lo(gGPCurrentRacePlayerIdByRank) # addiu $s0, $s0, 0x4360
/* 0A3BF8 800A2FF8 00009025 */  move  $s2, $zero
/* 0A3BFC 800A2FFC 27B10070 */  addiu $s1, $sp, 0x70
/* 0A3C00 800A3000 00009825 */  move  $s3, $zero
/* 0A3C04 800A3004 24160003 */  li    $s6, 3
.L800A3008:
/* 0A3C08 800A3008 86080000 */  lh    $t0, ($s0)
/* 0A3C0C 800A300C 82E90000 */  lb    $t1, ($s7)
/* 0A3C10 800A3010 0109082A */  slt   $at, $t0, $t1
/* 0A3C14 800A3014 50200010 */  beql  $at, $zero, .L800A3058
/* 0A3C18 800A3018 02C02025 */   move  $a0, $s6
/* 0A3C1C 800A301C 8EAA0000 */  lw    $t2, ($s5)
/* 0A3C20 800A3020 0156001A */  div   $zero, $t2, $s6
/* 0A3C24 800A3024 00002010 */  mfhi  $a0
/* 0A3C28 800A3028 16C00002 */  bnez  $s6, .L800A3034
/* 0A3C2C 800A302C 00000000 */   nop   
/* 0A3C30 800A3030 0007000D */  break 7
.L800A3034:
/* 0A3C34 800A3034 2401FFFF */  li    $at, -1
/* 0A3C38 800A3038 16C10004 */  bne   $s6, $at, .L800A304C
/* 0A3C3C 800A303C 3C018000 */   lui   $at, 0x8000
/* 0A3C40 800A3040 15410002 */  bne   $t2, $at, .L800A304C
/* 0A3C44 800A3044 00000000 */   nop   
/* 0A3C48 800A3048 0006000D */  break 6
.L800A304C:
/* 0A3C4C 800A304C 10000002 */  b     .L800A3058
/* 0A3C50 800A3050 00000000 */   nop   
/* 0A3C54 800A3054 02C02025 */  move  $a0, $s6
.L800A3058:
/* 0A3C58 800A3058 0C024C36 */  jal   set_text_color
/* 0A3C5C 800A305C 00000000 */   nop   
/* 0A3C60 800A3060 8E8B0010 */  lw    $t3, 0x10($s4)
/* 0A3C64 800A3064 8E84000C */  lw    $a0, 0xc($s4)
/* 0A3C68 800A3068 82260000 */  lb    $a2, ($s1)
/* 0A3C6C 800A306C 01732821 */  addu  $a1, $t3, $s3
/* 0A3C70 800A3070 24A50038 */  addiu $a1, $a1, 0x38
/* 0A3C74 800A3074 02403825 */  move  $a3, $s2
/* 0A3C78 800A3078 0C028CAD */  jal   func_800A32B4
/* 0A3C7C 800A307C 24840007 */   addiu $a0, $a0, 7
/* 0A3C80 800A3080 26520001 */  addiu $s2, $s2, 1
/* 0A3C84 800A3084 2A410004 */  slti  $at, $s2, 4
/* 0A3C88 800A3088 26310001 */  addiu $s1, $s1, 1
/* 0A3C8C 800A308C 26100002 */  addiu $s0, $s0, 2
/* 0A3C90 800A3090 1420FFDD */  bnez  $at, .L800A3008
/* 0A3C94 800A3094 26730010 */   addiu $s3, $s3, 0x10
/* 0A3C98 800A3098 3C108016 */  lui   $s0, %hi(D_80164368) # $s0, 0x8016
/* 0A3C9C 800A309C 26104368 */  addiu $s0, %lo(D_80164368) # addiu $s0, $s0, 0x4368
/* 0A3CA0 800A30A0 24120004 */  li    $s2, 4
/* 0A3CA4 800A30A4 27B10074 */  addiu $s1, $sp, 0x74
/* 0A3CA8 800A30A8 24130040 */  li    $s3, 64
/* 0A3CAC 800A30AC 241E00BE */  li    $fp, 190
.L800A30B0:
/* 0A3CB0 800A30B0 860C0000 */  lh    $t4, ($s0)
/* 0A3CB4 800A30B4 82ED0000 */  lb    $t5, ($s7)
/* 0A3CB8 800A30B8 018D082A */  slt   $at, $t4, $t5
/* 0A3CBC 800A30BC 50200010 */  beql  $at, $zero, .L800A3100
/* 0A3CC0 800A30C0 02C02025 */   move  $a0, $s6
/* 0A3CC4 800A30C4 8EAE0000 */  lw    $t6, ($s5)
/* 0A3CC8 800A30C8 01D6001A */  div   $zero, $t6, $s6
/* 0A3CCC 800A30CC 00002010 */  mfhi  $a0
/* 0A3CD0 800A30D0 16C00002 */  bnez  $s6, .L800A30DC
/* 0A3CD4 800A30D4 00000000 */   nop   
/* 0A3CD8 800A30D8 0007000D */  break 7
.L800A30DC:
/* 0A3CDC 800A30DC 2401FFFF */  li    $at, -1
/* 0A3CE0 800A30E0 16C10004 */  bne   $s6, $at, .L800A30F4
/* 0A3CE4 800A30E4 3C018000 */   lui   $at, 0x8000
/* 0A3CE8 800A30E8 15C10002 */  bne   $t6, $at, .L800A30F4
/* 0A3CEC 800A30EC 00000000 */   nop   
/* 0A3CF0 800A30F0 0006000D */  break 6
.L800A30F4:
/* 0A3CF4 800A30F4 10000002 */  b     .L800A3100
/* 0A3CF8 800A30F8 00000000 */   nop   
/* 0A3CFC 800A30FC 02C02025 */  move  $a0, $s6
.L800A3100:
/* 0A3D00 800A3100 0C024C36 */  jal   set_text_color
/* 0A3D04 800A3104 00000000 */   nop   
/* 0A3D08 800A3108 8E980010 */  lw    $t8, 0x10($s4)
/* 0A3D0C 800A310C 8E8F000C */  lw    $t7, 0xc($s4)
/* 0A3D10 800A3110 82260000 */  lb    $a2, ($s1)
/* 0A3D14 800A3114 03132821 */  addu  $a1, $t8, $s3
/* 0A3D18 800A3118 24A5005A */  addiu $a1, $a1, 0x5a
/* 0A3D1C 800A311C 02403825 */  move  $a3, $s2
/* 0A3D20 800A3120 0C028CAD */  jal   func_800A32B4
/* 0A3D24 800A3124 03CF2023 */   subu  $a0, $fp, $t7
/* 0A3D28 800A3128 26520001 */  addiu $s2, $s2, 1
/* 0A3D2C 800A312C 24010008 */  li    $at, 8
/* 0A3D30 800A3130 26310001 */  addiu $s1, $s1, 1
/* 0A3D34 800A3134 26100002 */  addiu $s0, $s0, 2
/* 0A3D38 800A3138 1641FFDD */  bne   $s2, $at, .L800A30B0
/* 0A3D3C 800A313C 26730010 */   addiu $s3, $s3, 0x10
/* 0A3D40 800A3140 0C024C36 */  jal   set_text_color
/* 0A3D44 800A3144 24040005 */   li    $a0, 5
/* 0A3D48 800A3148 3C198019 */  lui   $t9, %hi(gCupSelection) # $t9, 0x8019
/* 0A3D4C 800A314C 8339EE09 */  lb    $t9, %lo(gCupSelection)($t9)
/* 0A3D50 800A3150 3C11800E */  lui   $s1, %hi(D_800E7500) # $s1, 0x800e
/* 0A3D54 800A3154 26317500 */  addiu $s1, %lo(D_800E7500) # addiu $s1, $s1, 0x7500
/* 0A3D58 800A3158 00194080 */  sll   $t0, $t9, 2
/* 0A3D5C 800A315C 02284821 */  addu  $t1, $s1, $t0
/* 0A3D60 800A3160 0C024C0D */  jal   get_string_width
/* 0A3D64 800A3164 8D240000 */   lw    $a0, ($t1)
/* 0A3D68 800A3168 244A0008 */  addiu $t2, $v0, 8
/* 0A3D6C 800A316C 448A2000 */  mtc1  $t2, $f4
/* 0A3D70 800A3170 3C01800F */  lui   $at, %hi(D_800F1C98) # $at, 0x800f
/* 0A3D74 800A3174 C4201C98 */  lwc1  $f0, %lo(D_800F1C98)($at)
/* 0A3D78 800A3178 468021A0 */  cvt.s.w $f6, $f4
/* 0A3D7C 800A317C 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0A3D80 800A3180 44815000 */  mtc1  $at, $f10
/* 0A3D84 800A3184 3C0C800E */  lui   $t4, %hi(gCCSelection) # $t4, 0x800e
/* 0A3D88 800A3188 8D8CC548 */  lw    $t4, %lo(gCCSelection)($t4)
/* 0A3D8C 800A318C 3C12800E */  lui   $s2, %hi(D_800E76CC) # $s2, 0x800e
/* 0A3D90 800A3190 46003202 */  mul.s $f8, $f6, $f0
/* 0A3D94 800A3194 265276CC */  addiu $s2, %lo(D_800E76CC) # addiu $s2, $s2, 0x76cc
/* 0A3D98 800A3198 000C6880 */  sll   $t5, $t4, 2
/* 0A3D9C 800A319C 024D7021 */  addu  $t6, $s2, $t5
/* 0A3DA0 800A31A0 8DC40000 */  lw    $a0, ($t6)
/* 0A3DA4 800A31A4 460A4403 */  div.s $f16, $f8, $f10
/* 0A3DA8 800A31A8 4600848D */  trunc.w.s $f18, $f16
/* 0A3DAC 800A31AC 44109000 */  mfc1  $s0, $f18
/* 0A3DB0 800A31B0 0C024C0D */  jal   get_string_width
/* 0A3DB4 800A31B4 00000000 */   nop   
/* 0A3DB8 800A31B8 244F0008 */  addiu $t7, $v0, 8
/* 0A3DBC 800A31BC 448F2000 */  mtc1  $t7, $f4
/* 0A3DC0 800A31C0 3C01800F */  lui   $at, %hi(D_800F1C9C) # $at, 0x800f
/* 0A3DC4 800A31C4 C4201C9C */  lwc1  $f0, %lo(D_800F1C9C)($at)
/* 0A3DC8 800A31C8 468021A0 */  cvt.s.w $f6, $f4
/* 0A3DCC 800A31CC 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0A3DD0 800A31D0 44815000 */  mtc1  $at, $f10
/* 0A3DD4 800A31D4 3C0A800E */  lui   $t2, %hi(D_800DC540) # $t2, 0x800e
/* 0A3DD8 800A31D8 8D4AC540 */  lw    $t2, %lo(D_800DC540)($t2)
/* 0A3DDC 800A31DC 8E89000C */  lw    $t1, 0xc($s4)
/* 0A3DE0 800A31E0 46003202 */  mul.s $f8, $f6, $f0
/* 0A3DE4 800A31E4 000A5880 */  sll   $t3, $t2, 2
/* 0A3DE8 800A31E8 8E850010 */  lw    $a1, 0x10($s4)
/* 0A3DEC 800A31EC 022B6021 */  addu  $t4, $s1, $t3
/* 0A3DF0 800A31F0 8D860000 */  lw    $a2, ($t4)
/* 0A3DF4 800A31F4 00003825 */  move  $a3, $zero
/* 0A3DF8 800A31F8 E7A00014 */  swc1  $f0, 0x14($sp)
/* 0A3DFC 800A31FC 460A4403 */  div.s $f16, $f8, $f10
/* 0A3E00 800A3200 E7A00010 */  swc1  $f0, 0x10($sp)
/* 0A3E04 800A3204 24A500E1 */  addiu $a1, $a1, 0xe1
/* 0A3E08 800A3208 4600848D */  trunc.w.s $f18, $f16
/* 0A3E0C 800A320C 44199000 */  mfc1  $t9, $f18
/* 0A3E10 800A3210 00000000 */  nop   
/* 0A3E14 800A3214 00194023 */  negu  $t0, $t9
/* 0A3E18 800A3218 01092023 */  subu  $a0, $t0, $t1
/* 0A3E1C 800A321C 0C024DBB */  jal   draw_text
/* 0A3E20 800A3220 248400F5 */   addiu $a0, $a0, 0xf5
/* 0A3E24 800A3224 82E20000 */  lb    $v0, ($s7)
/* 0A3E28 800A3228 3C0F800F */  lui   $t7, %hi((D_800E86AC - 1)) # 0x800f
/* 0A3E2C 800A322C 3C19800F */  lui   $t9, %hi((D_800E86B0 - 3)) # 0x800f
/* 0A3E30 800A3230 01E27821 */  addu  $t7, $t7, $v0
/* 0A3E34 800A3234 81EF86AB */  lb    $t7, %lo((D_800E86AC - 1))($t7) # -0x7955($t7)
/* 0A3E38 800A3238 00027080 */  sll   $t6, $v0, 2
/* 0A3E3C 800A323C 01C27023 */  subu  $t6, $t6, $v0
/* 0A3E40 800A3240 01CFC021 */  addu  $t8, $t6, $t7
/* 0A3E44 800A3244 0338C821 */  addu  $t9, $t9, $t8
/* 0A3E48 800A3248 833986AD */  lb    $t9, %lo((D_800E86B0 - 3))($t9) # -0x7953($t9)
/* 0A3E4C 800A324C 8E8D000C */  lw    $t5, 0xc($s4)
/* 0A3E50 800A3250 3C01800F */  lui   $at, %hi(D_800F1CA0) # $at, 0x800f
/* 0A3E54 800A3254 C4201CA0 */  lwc1  $f0, %lo(D_800F1CA0)($at)
/* 0A3E58 800A3258 00194080 */  sll   $t0, $t9, 2
/* 0A3E5C 800A325C 8E850010 */  lw    $a1, 0x10($s4)
/* 0A3E60 800A3260 02484821 */  addu  $t1, $s2, $t0
/* 0A3E64 800A3264 8D260000 */  lw    $a2, ($t1)
/* 0A3E68 800A3268 020D2023 */  subu  $a0, $s0, $t5
/* 0A3E6C 800A326C 248400F5 */  addiu $a0, $a0, 0xf5
/* 0A3E70 800A3270 00003825 */  move  $a3, $zero
/* 0A3E74 800A3274 E7A00014 */  swc1  $f0, 0x14($sp)
/* 0A3E78 800A3278 E7A00010 */  swc1  $f0, 0x10($sp)
/* 0A3E7C 800A327C 0C024DBB */  jal   draw_text
/* 0A3E80 800A3280 24A500E1 */   addiu $a1, $a1, 0xe1
/* 0A3E84 800A3284 8FBF0044 */  lw    $ra, 0x44($sp)
/* 0A3E88 800A3288 8FB00020 */  lw    $s0, 0x20($sp)
/* 0A3E8C 800A328C 8FB10024 */  lw    $s1, 0x24($sp)
/* 0A3E90 800A3290 8FB20028 */  lw    $s2, 0x28($sp)
/* 0A3E94 800A3294 8FB3002C */  lw    $s3, 0x2c($sp)
/* 0A3E98 800A3298 8FB40030 */  lw    $s4, 0x30($sp)
/* 0A3E9C 800A329C 8FB50034 */  lw    $s5, 0x34($sp)
/* 0A3EA0 800A32A0 8FB60038 */  lw    $s6, 0x38($sp)
/* 0A3EA4 800A32A4 8FB7003C */  lw    $s7, 0x3c($sp)
/* 0A3EA8 800A32A8 8FBE0040 */  lw    $fp, 0x40($sp)
/* 0A3EAC 800A32AC 03E00008 */  jr    $ra
/* 0A3EB0 800A32B0 27BD0078 */   addiu $sp, $sp, 0x78
