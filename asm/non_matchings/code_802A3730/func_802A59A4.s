glabel func_802A59A4
/* 10EFB4 802A59A4 27BDFF40 */  addiu $sp, $sp, -0xc0
/* 10EFB8 802A59A8 AFBF0034 */  sw    $ra, 0x34($sp)
/* 10EFBC 802A59AC 0C0A94E9 */  jal   func_802A53A4
/* 10EFC0 802A59B0 AFB00030 */   sw    $s0, 0x30($sp)
/* 10EFC4 802A59B4 0C0A8F8F */  jal   func_802A3E3C
/* 10EFC8 802A59B8 00000000 */   nop   
/* 10EFCC 802A59BC 3C04800E */  lui   $a0, %hi(D_800DC5EC) # $a0, 0x800e
/* 10EFD0 802A59C0 0C0A8DCC */  jal   func_802A3730
/* 10EFD4 802A59C4 8C84C5EC */   lw    $a0, %lo(D_800DC5EC)($a0)
/* 10EFD8 802A59C8 3C108015 */  lui   $s0, %hi(gDisplayListHead) # $s0, 0x8015
/* 10EFDC 802A59CC 26100298 */  addiu $s0, %lo(gDisplayListHead) # addiu $s0, $s0, 0x298
/* 10EFE0 802A59D0 8E020000 */  lw    $v0, ($s0)
/* 10EFE4 802A59D4 3C180002 */  lui   $t8, (0x00022205 >> 16) # lui $t8, 2
/* 10EFE8 802A59D8 37182205 */  ori   $t8, (0x00022205 & 0xFFFF) # ori $t8, $t8, 0x2205
/* 10EFEC 802A59DC 244E0008 */  addiu $t6, $v0, 8
/* 10EFF0 802A59E0 AE0E0000 */  sw    $t6, ($s0)
/* 10EFF4 802A59E4 3C0FB700 */  lui   $t7, 0xb700
/* 10EFF8 802A59E8 AC4F0000 */  sw    $t7, ($v0)
/* 10EFFC 802A59EC AC580004 */  sw    $t8, 4($v0)
/* 10F000 802A59F0 8E020000 */  lw    $v0, ($s0)
/* 10F004 802A59F4 3C0AB900 */  lui   $t2, (0xB900031D >> 16) # lui $t2, 0xb900
/* 10F008 802A59F8 3C0B0055 */  lui   $t3, (0x00552078 >> 16) # lui $t3, 0x55
/* 10F00C 802A59FC 24590008 */  addiu $t9, $v0, 8
/* 10F010 802A5A00 AE190000 */  sw    $t9, ($s0)
/* 10F014 802A5A04 356B2078 */  ori   $t3, (0x00552078 & 0xFFFF) # ori $t3, $t3, 0x2078
/* 10F018 802A5A08 354A031D */  ori   $t2, (0xB900031D & 0xFFFF) # ori $t2, $t2, 0x31d
/* 10F01C 802A5A0C 3C018015 */  lui   $at, %hi(D_80150150) # $at, 0x8015
/* 10F020 802A5A10 AC4A0000 */  sw    $t2, ($v0)
/* 10F024 802A5A14 AC4B0004 */  sw    $t3, 4($v0)
/* 10F028 802A5A18 C4240150 */  lwc1  $f4, %lo(D_80150150)($at)
/* 10F02C 802A5A1C 3C018015 */  lui   $at, %hi(D_8015014C) # $at, 0x8015
/* 10F030 802A5A20 C426014C */  lwc1  $f6, %lo(D_8015014C)($at)
/* 10F034 802A5A24 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 10F038 802A5A28 3C048015 */  lui   $a0, %hi(gGfxPool) # $a0, 0x8015
/* 10F03C 802A5A2C 8C84EF40 */  lw    $a0, %lo(gGfxPool)($a0)
/* 10F040 802A5A30 44814000 */  mtc1  $at, $f8
/* 10F044 802A5A34 3C068015 */  lui   $a2, %hi(D_80150130) # $a2, 0x8015
/* 10F048 802A5A38 3C078015 */  lui   $a3, %hi(D_80150148) # $a3, 0x8015
/* 10F04C 802A5A3C 8CE70148 */  lw    $a3, %lo(D_80150148)($a3)
/* 10F050 802A5A40 8CC60130 */  lw    $a2, %lo(D_80150130)($a2)
/* 10F054 802A5A44 27A500AA */  addiu $a1, $sp, 0xaa
/* 10F058 802A5A48 E7A40010 */  swc1  $f4, 0x10($sp)
/* 10F05C 802A5A4C E7A60014 */  swc1  $f6, 0x14($sp)
/* 10F060 802A5A50 24840040 */  addiu $a0, $a0, 0x40
/* 10F064 802A5A54 0C033CCC */  jal   guPerspective
/* 10F068 802A5A58 E7A80018 */   swc1  $f8, 0x18($sp)
/* 10F06C 802A5A5C 8E020000 */  lw    $v0, ($s0)
/* 10F070 802A5A60 3C0DB400 */  lui   $t5, 0xb400
/* 10F074 802A5A64 3C180103 */  lui   $t8, (0x01030040 >> 16) # lui $t8, 0x103
/* 10F078 802A5A68 244C0008 */  addiu $t4, $v0, 8
/* 10F07C 802A5A6C AE0C0000 */  sw    $t4, ($s0)
/* 10F080 802A5A70 AC4D0000 */  sw    $t5, ($v0)
/* 10F084 802A5A74 97AE00AA */  lhu   $t6, 0xaa($sp)
/* 10F088 802A5A78 3C098015 */  lui   $t1, %hi(gGfxPool) # $t1, 0x8015
/* 10F08C 802A5A7C 37180040 */  ori   $t8, (0x01030040 & 0xFFFF) # ori $t8, $t8, 0x40
/* 10F090 802A5A80 AC4E0004 */  sw    $t6, 4($v0)
/* 10F094 802A5A84 8E020000 */  lw    $v0, ($s0)
/* 10F098 802A5A88 2529EF40 */  addiu $t1, %lo(gGfxPool) # addiu $t1, $t1, -0x10c0
/* 10F09C 802A5A8C 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 10F0A0 802A5A90 244F0008 */  addiu $t7, $v0, 8
/* 10F0A4 802A5A94 AE0F0000 */  sw    $t7, ($s0)
/* 10F0A8 802A5A98 AC580000 */  sw    $t8, ($v0)
/* 10F0AC 802A5A9C 8D390000 */  lw    $t9, ($t1)
/* 10F0B0 802A5AA0 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 10F0B4 802A5AA4 3C058016 */  lui   $a1, %hi(D_801646F0) # $a1, 0x8016
/* 10F0B8 802A5AA8 272A0040 */  addiu $t2, $t9, 0x40
/* 10F0BC 802A5AAC 01415824 */  and   $t3, $t2, $at
/* 10F0C0 802A5AB0 AC4B0004 */  sw    $t3, 4($v0)
/* 10F0C4 802A5AB4 3C018016 */  lui   $at, %hi(D_801646FC) # $at, 0x8016
/* 10F0C8 802A5AB8 C42A46FC */  lwc1  $f10, %lo(D_801646FC)($at)
/* 10F0CC 802A5ABC 3C018016 */  lui   $at, %hi(D_80164700) # $at, 0x8016
/* 10F0D0 802A5AC0 C4304700 */  lwc1  $f16, %lo(D_80164700)($at)
/* 10F0D4 802A5AC4 3C018016 */  lui   $at, %hi(D_80164704) # $at, 0x8016
/* 10F0D8 802A5AC8 C4324704 */  lwc1  $f18, %lo(D_80164704)($at)
/* 10F0DC 802A5ACC 3C018016 */  lui   $at, %hi(D_80164708) # $at, 0x8016
/* 10F0E0 802A5AD0 C4244708 */  lwc1  $f4, %lo(D_80164708)($at)
/* 10F0E4 802A5AD4 3C018016 */  lui   $at, %hi(D_8016470C) # $at, 0x8016
/* 10F0E8 802A5AD8 C426470C */  lwc1  $f6, %lo(D_8016470C)($at)
/* 10F0EC 802A5ADC 3C018016 */  lui   $at, %hi(D_80164710) # $at, 0x8016
/* 10F0F0 802A5AE0 C4284710 */  lwc1  $f8, %lo(D_80164710)($at)
/* 10F0F4 802A5AE4 8D240000 */  lw    $a0, ($t1)
/* 10F0F8 802A5AE8 3C068016 */  lui   $a2, %hi(D_801646F4) # $a2, 0x8016
/* 10F0FC 802A5AEC 3C078016 */  lui   $a3, %hi(D_801646F8) # $a3, 0x8016
/* 10F100 802A5AF0 8CE746F8 */  lw    $a3, %lo(D_801646F8)($a3)
/* 10F104 802A5AF4 8CC646F4 */  lw    $a2, %lo(D_801646F4)($a2)
/* 10F108 802A5AF8 8CA546F0 */  lw    $a1, %lo(D_801646F0)($a1)
/* 10F10C 802A5AFC E7AA0010 */  swc1  $f10, 0x10($sp)
/* 10F110 802A5B00 E7B00014 */  swc1  $f16, 0x14($sp)
/* 10F114 802A5B04 E7B20018 */  swc1  $f18, 0x18($sp)
/* 10F118 802A5B08 E7A4001C */  swc1  $f4, 0x1c($sp)
/* 10F11C 802A5B0C E7A60020 */  swc1  $f6, 0x20($sp)
/* 10F120 802A5B10 E7A80024 */  swc1  $f8, 0x24($sp)
/* 10F124 802A5B14 0C033D92 */  jal   guLookAt
/* 10F128 802A5B18 248401C0 */   addiu $a0, $a0, 0x1c0
/* 10F12C 802A5B1C 3C0C800E */  lui   $t4, %hi(D_800DC5C8) # $t4, 0x800e
/* 10F130 802A5B20 958CC5C8 */  lhu   $t4, %lo(D_800DC5C8)($t4)
/* 10F134 802A5B24 55800016 */  bnel  $t4, $zero, .L802A5B80
/* 10F138 802A5B28 8E020000 */   lw    $v0, ($s0)
/* 10F13C 802A5B2C 8E020000 */  lw    $v0, ($s0)
/* 10F140 802A5B30 3C0E0101 */  lui   $t6, (0x01010040 >> 16) # lui $t6, 0x101
/* 10F144 802A5B34 35CE0040 */  ori   $t6, (0x01010040 & 0xFFFF) # ori $t6, $t6, 0x40
/* 10F148 802A5B38 244D0008 */  addiu $t5, $v0, 8
/* 10F14C 802A5B3C AE0D0000 */  sw    $t5, ($s0)
/* 10F150 802A5B40 3C0F8015 */  lui   $t7, %hi(gGfxPool) # $t7, 0x8015
/* 10F154 802A5B44 AC4E0000 */  sw    $t6, ($v0)
/* 10F158 802A5B48 8DEFEF40 */  lw    $t7, %lo(gGfxPool)($t7)
/* 10F15C 802A5B4C 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 10F160 802A5B50 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 10F164 802A5B54 25F801C0 */  addiu $t8, $t7, 0x1c0
/* 10F168 802A5B58 0301C824 */  and   $t9, $t8, $at
/* 10F16C 802A5B5C 27A4005C */  addiu $a0, $sp, 0x5c
/* 10F170 802A5B60 0C0AD4F2 */  jal   func_802B53C8
/* 10F174 802A5B64 AC590004 */   sw    $t9, 4($v0)
/* 10F178 802A5B68 27A4005C */  addiu $a0, $sp, 0x5c
/* 10F17C 802A5B6C 0C0AD3FE */  jal   func_802B4FF8
/* 10F180 802A5B70 00002825 */   move  $a1, $zero
/* 10F184 802A5B74 1000000E */  b     .L802A5BB0
/* 10F188 802A5B78 00000000 */   nop   
/* 10F18C 802A5B7C 8E020000 */  lw    $v0, ($s0)
.L802A5B80:
/* 10F190 802A5B80 3C0B0102 */  lui   $t3, (0x01020040 >> 16) # lui $t3, 0x102
/* 10F194 802A5B84 356B0040 */  ori   $t3, (0x01020040 & 0xFFFF) # ori $t3, $t3, 0x40
/* 10F198 802A5B88 244A0008 */  addiu $t2, $v0, 8
/* 10F19C 802A5B8C AE0A0000 */  sw    $t2, ($s0)
/* 10F1A0 802A5B90 3C0C8015 */  lui   $t4, %hi(gGfxPool) # $t4, 0x8015
/* 10F1A4 802A5B94 AC4B0000 */  sw    $t3, ($v0)
/* 10F1A8 802A5B98 8D8CEF40 */  lw    $t4, %lo(gGfxPool)($t4)
/* 10F1AC 802A5B9C 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 10F1B0 802A5BA0 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 10F1B4 802A5BA4 258D01C0 */  addiu $t5, $t4, 0x1c0
/* 10F1B8 802A5BA8 01A17024 */  and   $t6, $t5, $at
/* 10F1BC 802A5BAC AC4E0004 */  sw    $t6, 4($v0)
.L802A5BB0:
/* 10F1C0 802A5BB0 3C04800E */  lui   $a0, %hi(D_800DC5EC) # $a0, 0x800e
/* 10F1C4 802A5BB4 0C0A568E */  jal   func_80295A38
/* 10F1C8 802A5BB8 8C84C5EC */   lw    $a0, %lo(D_800DC5EC)($a0)
/* 10F1CC 802A5BBC 3C0F800E */  lui   $t7, %hi(D_800DC5C8) # $t7, 0x800e
/* 10F1D0 802A5BC0 95EFC5C8 */  lhu   $t7, %lo(D_800DC5C8)($t7)
/* 10F1D4 802A5BC4 24010001 */  li    $at, 1
/* 10F1D8 802A5BC8 15E10013 */  bne   $t7, $at, .L802A5C18
/* 10F1DC 802A5BCC 00000000 */   nop   
/* 10F1E0 802A5BD0 8E020000 */  lw    $v0, ($s0)
/* 10F1E4 802A5BD4 3C190101 */  lui   $t9, (0x01010040 >> 16) # lui $t9, 0x101
/* 10F1E8 802A5BD8 37390040 */  ori   $t9, (0x01010040 & 0xFFFF) # ori $t9, $t9, 0x40
/* 10F1EC 802A5BDC 24580008 */  addiu $t8, $v0, 8
/* 10F1F0 802A5BE0 AE180000 */  sw    $t8, ($s0)
/* 10F1F4 802A5BE4 3C0A8015 */  lui   $t2, %hi(gGfxPool) # $t2, 0x8015
/* 10F1F8 802A5BE8 AC590000 */  sw    $t9, ($v0)
/* 10F1FC 802A5BEC 8D4AEF40 */  lw    $t2, %lo(gGfxPool)($t2)
/* 10F200 802A5BF0 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 10F204 802A5BF4 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 10F208 802A5BF8 254B01C0 */  addiu $t3, $t2, 0x1c0
/* 10F20C 802A5BFC 01616024 */  and   $t4, $t3, $at
/* 10F210 802A5C00 27A4005C */  addiu $a0, $sp, 0x5c
/* 10F214 802A5C04 0C0AD4F2 */  jal   func_802B53C8
/* 10F218 802A5C08 AC4C0004 */   sw    $t4, 4($v0)
/* 10F21C 802A5C0C 27A4005C */  addiu $a0, $sp, 0x5c
/* 10F220 802A5C10 0C0AD3FE */  jal   func_802B4FF8
/* 10F224 802A5C14 00002825 */   move  $a1, $zero
.L802A5C18:
/* 10F228 802A5C18 3C04800E */  lui   $a0, %hi(D_800DC5EC) # $a0, 0x800e
/* 10F22C 802A5C1C 0C0A8C02 */  jal   func_802A3008
/* 10F230 802A5C20 8C84C5EC */   lw    $a0, %lo(D_800DC5EC)($a0)
/* 10F234 802A5C24 0C016024 */  jal   func_80058090
/* 10F238 802A5C28 00002025 */   move  $a0, $zero
/* 10F23C 802A5C2C 0C0084AD */  jal   func_800212B4
/* 10F240 802A5C30 00000000 */   nop   
/* 10F244 802A5C34 3C04800E */  lui   $a0, %hi(D_800DC5EC) # $a0, 0x800e
/* 10F248 802A5C38 8C84C5EC */  lw    $a0, %lo(D_800DC5EC)($a0)
/* 10F24C 802A5C3C 0C0A448B */  jal   func_8029122C
/* 10F250 802A5C40 00002825 */   move  $a1, $zero
/* 10F254 802A5C44 0C0086C3 */  jal   func_80021B0C
/* 10F258 802A5C48 00000000 */   nop   
/* 10F25C 802A5C4C 3C04800E */  lui   $a0, %hi(D_800DC5EC) # $a0, 0x800e
/* 10F260 802A5C50 0C0A8BCD */  jal   func_802A2F34
/* 10F264 802A5C54 8C84C5EC */   lw    $a0, %lo(D_800DC5EC)($a0)
/* 10F268 802A5C58 0C01614E */  jal   func_80058538
/* 10F26C 802A5C5C 00002025 */   move  $a0, $zero
/* 10F270 802A5C60 0C0162FD */  jal   func_80058BF4
/* 10F274 802A5C64 00000000 */   nop   
/* 10F278 802A5C68 3C10800E */  lui   $s0, %hi(D_800DC5B8) # $s0, 0x800e
/* 10F27C 802A5C6C 2610C5B8 */  addiu $s0, %lo(D_800DC5B8) # addiu $s0, $s0, -0x3a48
/* 10F280 802A5C70 960D0000 */  lhu   $t5, ($s0)
/* 10F284 802A5C74 11A00003 */  beqz  $t5, .L802A5C84
/* 10F288 802A5C78 00000000 */   nop   
/* 10F28C 802A5C7C 0C016308 */  jal   func_80058C20
/* 10F290 802A5C80 00002025 */   move  $a0, $zero
.L802A5C84:
/* 10F294 802A5C84 0C024E97 */  jal   func_80093A5C
/* 10F298 802A5C88 00002025 */   move  $a0, $zero
/* 10F29C 802A5C8C 960E0000 */  lhu   $t6, ($s0)
/* 10F2A0 802A5C90 51C00004 */  beql  $t6, $zero, .L802A5CA4
/* 10F2A4 802A5C94 8FBF0034 */   lw    $ra, 0x34($sp)
/* 10F2A8 802A5C98 0C01636D */  jal   func_80058DB4
/* 10F2AC 802A5C9C 00002025 */   move  $a0, $zero
/* 10F2B0 802A5CA0 8FBF0034 */  lw    $ra, 0x34($sp)
.L802A5CA4:
/* 10F2B4 802A5CA4 8FB00030 */  lw    $s0, 0x30($sp)
/* 10F2B8 802A5CA8 27BD00C0 */  addiu $sp, $sp, 0xc0
/* 10F2BC 802A5CAC 03E00008 */  jr    $ra
/* 10F2C0 802A5CB0 00000000 */   nop   
