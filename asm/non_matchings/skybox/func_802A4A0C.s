glabel func_802A4A0C
/* 10E01C 802A4A0C 27BDFEC0 */  addiu $sp, $sp, -0x140
/* 10E020 802A4A10 AFBF002C */  sw    $ra, 0x2c($sp)
/* 10E024 802A4A14 AFB00028 */  sw    $s0, 0x28($sp)
/* 10E028 802A4A18 AFA50144 */  sw    $a1, 0x144($sp)
/* 10E02C 802A4A1C AFA60148 */  sw    $a2, 0x148($sp)
/* 10E030 802A4A20 AFA7014C */  sw    $a3, 0x14c($sp)
/* 10E034 802A4A24 8CAF0004 */  lw    $t7, 4($a1)
/* 10E038 802A4A28 00808025 */  move  $s0, $a0
/* 10E03C 802A4A2C 0C0A9143 */  jal   func_802A450C
/* 10E040 802A4A30 AFAF013C */   sw    $t7, 0x13c($sp)
/* 10E044 802A4A34 3C01802C */  lui   $at, %hi(D_802B9BB0) # $at, 0x802c
/* 10E048 802A4A38 C4249BB0 */  lwc1  $f4, %lo(D_802B9BB0)($at)
/* 10E04C 802A4A3C 44800000 */  mtc1  $zero, $f0
/* 10E050 802A4A40 3C018015 */  lui   $at, %hi(D_80150150) # $at, 0x8015
/* 10E054 802A4A44 C4260150 */  lwc1  $f6, %lo(D_80150150)($at)
/* 10E058 802A4A48 8FB8013C */  lw    $t8, 0x13c($sp)
/* 10E05C 802A4A4C 3C018015 */  lui   $at, %hi(D_8015014C) # $at, 0x8015
/* 10E060 802A4A50 C428014C */  lwc1  $f8, %lo(D_8015014C)($at)
/* 10E064 802A4A54 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 10E068 802A4A58 E7A40064 */  swc1  $f4, 0x64($sp)
/* 10E06C 802A4A5C E7A0005C */  swc1  $f0, 0x5c($sp)
/* 10E070 802A4A60 E7A00060 */  swc1  $f0, 0x60($sp)
/* 10E074 802A4A64 44815000 */  mtc1  $at, $f10
/* 10E078 802A4A68 8F0600B4 */  lw    $a2, 0xb4($t8)
/* 10E07C 802A4A6C 3C078015 */  lui   $a3, %hi(D_80150148) # $a3, 0x8015
/* 10E080 802A4A70 8CE70148 */  lw    $a3, %lo(D_80150148)($a3)
/* 10E084 802A4A74 27A400E8 */  addiu $a0, $sp, 0xe8
/* 10E088 802A4A78 27A50128 */  addiu $a1, $sp, 0x128
/* 10E08C 802A4A7C E7A60010 */  swc1  $f6, 0x10($sp)
/* 10E090 802A4A80 E7A80014 */  swc1  $f8, 0x14($sp)
/* 10E094 802A4A84 0C0AD559 */  jal   func_802B5564
/* 10E098 802A4A88 E7AA0018 */   swc1  $f10, 0x18($sp)
/* 10E09C 802A4A8C 8FA5013C */  lw    $a1, 0x13c($sp)
/* 10E0A0 802A4A90 27A400A8 */  addiu $a0, $sp, 0xa8
/* 10E0A4 802A4A94 0C0AD5E5 */  jal   func_802B5794
/* 10E0A8 802A4A98 24A6000C */   addiu $a2, $a1, 0xc
/* 10E0AC 802A4A9C 27A40068 */  addiu $a0, $sp, 0x68
/* 10E0B0 802A4AA0 27A500E8 */  addiu $a1, $sp, 0xe8
/* 10E0B4 802A4AA4 0C0ADC73 */  jal   func_802B71CC
/* 10E0B8 802A4AA8 27A600A8 */   addiu $a2, $sp, 0xa8
/* 10E0BC 802A4AAC C7B00074 */  lwc1  $f16, 0x74($sp)
/* 10E0C0 802A4AB0 C7B2005C */  lwc1  $f18, 0x5c($sp)
/* 10E0C4 802A4AB4 C7A60084 */  lwc1  $f6, 0x84($sp)
/* 10E0C8 802A4AB8 C7A80060 */  lwc1  $f8, 0x60($sp)
/* 10E0CC 802A4ABC 46128102 */  mul.s $f4, $f16, $f18
/* 10E0D0 802A4AC0 C7B20094 */  lwc1  $f18, 0x94($sp)
/* 10E0D4 802A4AC4 27A4005C */  addiu $a0, $sp, 0x5c
/* 10E0D8 802A4AC8 46083282 */  mul.s $f10, $f6, $f8
/* 10E0DC 802A4ACC C7A60064 */  lwc1  $f6, 0x64($sp)
/* 10E0E0 802A4AD0 27A50068 */  addiu $a1, $sp, 0x68
/* 10E0E4 802A4AD4 46069202 */  mul.s $f8, $f18, $f6
/* 10E0E8 802A4AD8 460A2400 */  add.s $f16, $f4, $f10
/* 10E0EC 802A4ADC C7AA00A4 */  lwc1  $f10, 0xa4($sp)
/* 10E0F0 802A4AE0 46088100 */  add.s $f4, $f16, $f8
/* 10E0F4 802A4AE4 46045480 */  add.s $f18, $f10, $f4
/* 10E0F8 802A4AE8 0C0AD90D */  jal   func_802B6434
/* 10E0FC 802A4AEC E7B20058 */   swc1  $f18, 0x58($sp)
/* 10E100 802A4AF0 C7B00058 */  lwc1  $f16, 0x58($sp)
/* 10E104 802A4AF4 3C013FF0 */  li    $at, 0x3FF00000 # 1.875000
/* 10E108 802A4AF8 44813800 */  mtc1  $at, $f7
/* 10E10C 802A4AFC 44803000 */  mtc1  $zero, $f6
/* 10E110 802A4B00 46008221 */  cvt.d.s $f8, $f16
/* 10E114 802A4B04 C7A4005C */  lwc1  $f4, 0x5c($sp)
/* 10E118 802A4B08 46283283 */  div.d $f10, $f6, $f8
/* 10E11C 802A4B0C C7B00060 */  lwc1  $f16, 0x60($sp)
/* 10E120 802A4B10 3C014320 */  li    $at, 0x43200000 # 160.000000
/* 10E124 802A4B14 44814000 */  mtc1  $at, $f8
/* 10E128 802A4B18 3C0142F0 */  li    $at, 0x42F00000 # 120.000000
/* 10E12C 802A4B1C 8FAE0144 */  lw    $t6, 0x144($sp)
/* 10E130 802A4B20 24180078 */  li    $t8, 120
/* 10E134 802A4B24 46205020 */  cvt.s.d $f0, $f10
/* 10E138 802A4B28 46002482 */  mul.s $f18, $f4, $f0
/* 10E13C 802A4B2C 44812000 */  mtc1  $at, $f4
/* 10E140 802A4B30 46008182 */  mul.s $f6, $f16, $f0
/* 10E144 802A4B34 00000000 */  nop   
/* 10E148 802A4B38 46089282 */  mul.s $f10, $f18, $f8
/* 10E14C 802A4B3C E7B2005C */  swc1  $f18, 0x5c($sp)
/* 10E150 802A4B40 46043402 */  mul.s $f16, $f6, $f4
/* 10E154 802A4B44 E7A60060 */  swc1  $f6, 0x60($sp)
/* 10E158 802A4B48 E7AA005C */  swc1  $f10, 0x5c($sp)
/* 10E15C 802A4B4C 4600848D */  trunc.w.s $f18, $f16
/* 10E160 802A4B50 E7B00060 */  swc1  $f16, 0x60($sp)
/* 10E164 802A4B54 440F9000 */  mfc1  $t7, $f18
/* 10E168 802A4B58 00000000 */  nop   
/* 10E16C 802A4B5C 030F6823 */  subu  $t5, $t8, $t7
/* 10E170 802A4B60 A5CD0028 */  sh    $t5, 0x28($t6)
/* 10E174 802A4B64 A60D0012 */  sh    $t5, 0x12($s0)
/* 10E178 802A4B68 A60D0022 */  sh    $t5, 0x22($s0)
/* 10E17C 802A4B6C A60D0042 */  sh    $t5, 0x42($s0)
/* 10E180 802A4B70 0C0A8F8F */  jal   init_rdp
/* 10E184 802A4B74 A60D0072 */   sh    $t5, 0x72($s0)
/* 10E188 802A4B78 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 10E18C 802A4B7C 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 10E190 802A4B80 8C620000 */  lw    $v0, ($v1)
/* 10E194 802A4B84 3C0FB900 */  lui   $t7, (0xB900031D >> 16) # lui $t7, 0xb900
/* 10E198 802A4B88 3C190F0A */  lui   $t9, (0x0F0A4000 >> 16) # lui $t9, 0xf0a
/* 10E19C 802A4B8C 24580008 */  addiu $t8, $v0, 8
/* 10E1A0 802A4B90 AC780000 */  sw    $t8, ($v1)
/* 10E1A4 802A4B94 37394000 */  ori   $t9, (0x0F0A4000 & 0xFFFF) # ori $t9, $t9, 0x4000
/* 10E1A8 802A4B98 35EF031D */  ori   $t7, (0xB900031D & 0xFFFF) # ori $t7, $t7, 0x31d
/* 10E1AC 802A4B9C AC4F0000 */  sw    $t7, ($v0)
/* 10E1B0 802A4BA0 AC590004 */  sw    $t9, 4($v0)
/* 10E1B4 802A4BA4 8C620000 */  lw    $v0, ($v1)
/* 10E1B8 802A4BA8 3C014370 */  li    $at, 0x43700000 # 240.000000
/* 10E1BC 802A4BAC 44814000 */  mtc1  $at, $f8
/* 10E1C0 802A4BB0 244D0008 */  addiu $t5, $v0, 8
/* 10E1C4 802A4BB4 AC6D0000 */  sw    $t5, ($v1)
/* 10E1C8 802A4BB8 3C180002 */  lui   $t8, (0x00020001 >> 16) # lui $t8, 2
/* 10E1CC 802A4BBC 44800000 */  mtc1  $zero, $f0
/* 10E1D0 802A4BC0 37180001 */  ori   $t8, (0x00020001 & 0xFFFF) # ori $t8, $t8, 1
/* 10E1D4 802A4BC4 3C0EB600 */  lui   $t6, 0xb600
/* 10E1D8 802A4BC8 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 10E1DC 802A4BCC 44815000 */  mtc1  $at, $f10
/* 10E1E0 802A4BD0 AC4E0000 */  sw    $t6, ($v0)
/* 10E1E4 802A4BD4 AC580004 */  sw    $t8, 4($v0)
/* 10E1E8 802A4BD8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 10E1EC 802A4BDC 44813000 */  mtc1  $at, $f6
/* 10E1F0 802A4BE0 3C048015 */  lui   $a0, %hi(gGfxPool) # $a0, 0x8015
/* 10E1F4 802A4BE4 44050000 */  mfc1  $a1, $f0
/* 10E1F8 802A4BE8 44070000 */  mfc1  $a3, $f0
/* 10E1FC 802A4BEC 8C84EF40 */  lw    $a0, %lo(gGfxPool)($a0)
/* 10E200 802A4BF0 3C0643A0 */  lui   $a2, 0x43a0
/* 10E204 802A4BF4 E7A80010 */  swc1  $f8, 0x10($sp)
/* 10E208 802A4BF8 E7A00014 */  swc1  $f0, 0x14($sp)
/* 10E20C 802A4BFC E7AA0018 */  swc1  $f10, 0x18($sp)
/* 10E210 802A4C00 0C0338A9 */  jal   guOrtho
/* 10E214 802A4C04 E7A6001C */   swc1  $f6, 0x1c($sp)
/* 10E218 802A4C08 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 10E21C 802A4C0C 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 10E220 802A4C10 8C620000 */  lw    $v0, ($v1)
/* 10E224 802A4C14 3C19B400 */  lui   $t9, 0xb400
/* 10E228 802A4C18 340DFFFF */  li    $t5, 65535
/* 10E22C 802A4C1C 244F0008 */  addiu $t7, $v0, 8
/* 10E230 802A4C20 AC6F0000 */  sw    $t7, ($v1)
/* 10E234 802A4C24 AC4D0004 */  sw    $t5, 4($v0)
/* 10E238 802A4C28 AC590000 */  sw    $t9, ($v0)
/* 10E23C 802A4C2C 8C620000 */  lw    $v0, ($v1)
/* 10E240 802A4C30 3C180103 */  lui   $t8, (0x01030040 >> 16) # lui $t8, 0x103
/* 10E244 802A4C34 37180040 */  ori   $t8, (0x01030040 & 0xFFFF) # ori $t8, $t8, 0x40
/* 10E248 802A4C38 244E0008 */  addiu $t6, $v0, 8
/* 10E24C 802A4C3C AC6E0000 */  sw    $t6, ($v1)
/* 10E250 802A4C40 3C0F8015 */  lui   $t7, %hi(gGfxPool) # $t7, 0x8015
/* 10E254 802A4C44 AC580000 */  sw    $t8, ($v0)
/* 10E258 802A4C48 8DEFEF40 */  lw    $t7, %lo(gGfxPool)($t7)
/* 10E25C 802A4C4C 3C091FFF */  lui   $t1, (0x1FFFFFFF >> 16) # lui $t1, 0x1fff
/* 10E260 802A4C50 3529FFFF */  ori   $t1, (0x1FFFFFFF & 0xFFFF) # ori $t1, $t1, 0xffff
/* 10E264 802A4C54 01E9C824 */  and   $t9, $t7, $t1
/* 10E268 802A4C58 AC590004 */  sw    $t9, 4($v0)
/* 10E26C 802A4C5C 8C620000 */  lw    $v0, ($v1)
/* 10E270 802A4C60 3C180D01 */  lui   $t8, %hi(D_0D008E98) # $t8, 0xd01
/* 10E274 802A4C64 27188E98 */  addiu $t8, %lo(D_0D008E98) # addiu $t8, $t8, -0x7168
/* 10E278 802A4C68 244D0008 */  addiu $t5, $v0, 8
/* 10E27C 802A4C6C AC6D0000 */  sw    $t5, ($v1)
/* 10E280 802A4C70 3C0E0102 */  lui   $t6, (0x01020040 >> 16) # lui $t6, 0x102
/* 10E284 802A4C74 35CE0040 */  ori   $t6, (0x01020040 & 0xFFFF) # ori $t6, $t6, 0x40
/* 10E288 802A4C78 03097824 */  and   $t7, $t8, $t1
/* 10E28C 802A4C7C AC4F0004 */  sw    $t7, 4($v0)
/* 10E290 802A4C80 AC4E0000 */  sw    $t6, ($v0)
/* 10E294 802A4C84 8C620000 */  lw    $v0, ($v1)
/* 10E298 802A4C88 3C0A0400 */  lui   $t2, (0x0400103F >> 16) # lui $t2, 0x400
/* 10E29C 802A4C8C 354A103F */  ori   $t2, (0x0400103F & 0xFFFF) # ori $t2, $t2, 0x103f
/* 10E2A0 802A4C90 24590008 */  addiu $t9, $v0, 8
/* 10E2A4 802A4C94 AC790000 */  sw    $t9, ($v1)
/* 10E2A8 802A4C98 AC500004 */  sw    $s0, 4($v0)
/* 10E2AC 802A4C9C AC4A0000 */  sw    $t2, ($v0)
/* 10E2B0 802A4CA0 8C620000 */  lw    $v0, ($v1)
/* 10E2B4 802A4CA4 3C0BB100 */  lui   $t3, (0xB1000602 >> 16) # lui $t3, 0xb100
/* 10E2B8 802A4CA8 3C0C0002 */  lui   $t4, (0x00020604 >> 16) # lui $t4, 2
/* 10E2BC 802A4CAC 244D0008 */  addiu $t5, $v0, 8
/* 10E2C0 802A4CB0 AC6D0000 */  sw    $t5, ($v1)
/* 10E2C4 802A4CB4 358C0604 */  ori   $t4, (0x00020604 & 0xFFFF) # ori $t4, $t4, 0x604
/* 10E2C8 802A4CB8 356B0602 */  ori   $t3, (0xB1000602 & 0xFFFF) # ori $t3, $t3, 0x602
/* 10E2CC 802A4CBC 3C0E800E */  lui   $t6, %hi(gCurrentCourseId) # $t6, 0x800e
/* 10E2D0 802A4CC0 AC4B0000 */  sw    $t3, ($v0)
/* 10E2D4 802A4CC4 AC4C0004 */  sw    $t4, 4($v0)
/* 10E2D8 802A4CC8 85CEC5A0 */  lh    $t6, %lo(gCurrentCourseId)($t6)
/* 10E2DC 802A4CCC 2401000D */  li    $at, 13
/* 10E2E0 802A4CD0 55C1000D */  bnel  $t6, $at, .L802A4D08
/* 10E2E4 802A4CD4 8FBF002C */   lw    $ra, 0x2c($sp)
/* 10E2E8 802A4CD8 8C620000 */  lw    $v0, ($v1)
/* 10E2EC 802A4CDC 260F0040 */  addiu $t7, $s0, 0x40
/* 10E2F0 802A4CE0 24580008 */  addiu $t8, $v0, 8
/* 10E2F4 802A4CE4 AC780000 */  sw    $t8, ($v1)
/* 10E2F8 802A4CE8 AC4F0004 */  sw    $t7, 4($v0)
/* 10E2FC 802A4CEC AC4A0000 */  sw    $t2, ($v0)
/* 10E300 802A4CF0 8C620000 */  lw    $v0, ($v1)
/* 10E304 802A4CF4 24590008 */  addiu $t9, $v0, 8
/* 10E308 802A4CF8 AC790000 */  sw    $t9, ($v1)
/* 10E30C 802A4CFC AC4C0004 */  sw    $t4, 4($v0)
/* 10E310 802A4D00 AC4B0000 */  sw    $t3, ($v0)
/* 10E314 802A4D04 8FBF002C */  lw    $ra, 0x2c($sp)
.L802A4D08:
/* 10E318 802A4D08 8FB00028 */  lw    $s0, 0x28($sp)
/* 10E31C 802A4D0C 27BD0140 */  addiu $sp, $sp, 0x140
/* 10E320 802A4D10 03E00008 */  jr    $ra
/* 10E324 802A4D14 00000000 */   nop   
