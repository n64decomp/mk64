glabel func_802A68CC
/* 10FEDC 802A68CC 3C03800E */  lui   $v1, %hi(D_800DDB40) # $v1, 0x800e
/* 10FEE0 802A68D0 8C63DB40 */  lw    $v1, %lo(D_800DDB40)($v1)
/* 10FEE4 802A68D4 27BDFF58 */  addiu $sp, $sp, -0xa8
/* 10FEE8 802A68D8 AFBF0034 */  sw    $ra, 0x34($sp)
/* 10FEEC 802A68DC AFB00030 */  sw    $s0, 0x30($sp)
/* 10FEF0 802A68E0 0C0A952A */  jal   func_802A54A8
/* 10FEF4 802A68E4 AFA300A4 */   sw    $v1, 0xa4($sp)
/* 10FEF8 802A68E8 0C0A8F8F */  jal   func_802A3E3C
/* 10FEFC 802A68EC 00000000 */   nop   
/* 10FF00 802A68F0 3C04800E */  lui   $a0, %hi(D_800DC5EC) # $a0, 0x800e
/* 10FF04 802A68F4 0C0A8DCC */  jal   func_802A3730
/* 10FF08 802A68F8 8C84C5EC */   lw    $a0, %lo(D_800DC5EC)($a0)
/* 10FF0C 802A68FC 3C108015 */  lui   $s0, %hi(gDisplayListHead) # $s0, 0x8015
/* 10FF10 802A6900 26100298 */  addiu $s0, %lo(gDisplayListHead) # addiu $s0, $s0, 0x298
/* 10FF14 802A6904 8E020000 */  lw    $v0, ($s0)
/* 10FF18 802A6908 3C0FB700 */  lui   $t7, 0xb700
/* 10FF1C 802A690C 24182205 */  li    $t8, 8709
/* 10FF20 802A6910 244E0008 */  addiu $t6, $v0, 8
/* 10FF24 802A6914 AE0E0000 */  sw    $t6, ($s0)
/* 10FF28 802A6918 3C018015 */  lui   $at, %hi(D_80150150) # $at, 0x8015
/* 10FF2C 802A691C AC580004 */  sw    $t8, 4($v0)
/* 10FF30 802A6920 AC4F0000 */  sw    $t7, ($v0)
/* 10FF34 802A6924 C4240150 */  lwc1  $f4, %lo(D_80150150)($at)
/* 10FF38 802A6928 3C018015 */  lui   $at, %hi(D_8015014C) # $at, 0x8015
/* 10FF3C 802A692C C426014C */  lwc1  $f6, %lo(D_8015014C)($at)
/* 10FF40 802A6930 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 10FF44 802A6934 3C048015 */  lui   $a0, %hi(gGfxPool) # $a0, 0x8015
/* 10FF48 802A6938 8C84EF40 */  lw    $a0, %lo(gGfxPool)($a0)
/* 10FF4C 802A693C 44814000 */  mtc1  $at, $f8
/* 10FF50 802A6940 3C068015 */  lui   $a2, %hi(D_80150130) # $a2, 0x8015
/* 10FF54 802A6944 3C078015 */  lui   $a3, %hi(D_80150148) # $a3, 0x8015
/* 10FF58 802A6948 8CE70148 */  lw    $a3, %lo(D_80150148)($a3)
/* 10FF5C 802A694C 8CC60130 */  lw    $a2, %lo(D_80150130)($a2)
/* 10FF60 802A6950 27A5009A */  addiu $a1, $sp, 0x9a
/* 10FF64 802A6954 E7A40010 */  swc1  $f4, 0x10($sp)
/* 10FF68 802A6958 E7A60014 */  swc1  $f6, 0x14($sp)
/* 10FF6C 802A695C 24840040 */  addiu $a0, $a0, 0x40
/* 10FF70 802A6960 0C033CCC */  jal   guPerspective
/* 10FF74 802A6964 E7A80018 */   swc1  $f8, 0x18($sp)
/* 10FF78 802A6968 8E020000 */  lw    $v0, ($s0)
/* 10FF7C 802A696C 8FA300A4 */  lw    $v1, 0xa4($sp)
/* 10FF80 802A6970 3C0BB400 */  lui   $t3, 0xb400
/* 10FF84 802A6974 24590008 */  addiu $t9, $v0, 8
/* 10FF88 802A6978 AE190000 */  sw    $t9, ($s0)
/* 10FF8C 802A697C AC4B0000 */  sw    $t3, ($v0)
/* 10FF90 802A6980 97AC009A */  lhu   $t4, 0x9a($sp)
/* 10FF94 802A6984 3C0E0103 */  lui   $t6, (0x01030040 >> 16) # lui $t6, 0x103
/* 10FF98 802A6988 3C0A8015 */  lui   $t2, %hi(gGfxPool) # $t2, 0x8015
/* 10FF9C 802A698C AC4C0004 */  sw    $t4, 4($v0)
/* 10FFA0 802A6990 8E020000 */  lw    $v0, ($s0)
/* 10FFA4 802A6994 35CE0040 */  ori   $t6, (0x01030040 & 0xFFFF) # ori $t6, $t6, 0x40
/* 10FFA8 802A6998 254AEF40 */  addiu $t2, %lo(gGfxPool) # addiu $t2, $t2, -0x10c0
/* 10FFAC 802A699C 244D0008 */  addiu $t5, $v0, 8
/* 10FFB0 802A69A0 AE0D0000 */  sw    $t5, ($s0)
/* 10FFB4 802A69A4 AC4E0000 */  sw    $t6, ($v0)
/* 10FFB8 802A69A8 8D4F0000 */  lw    $t7, ($t2)
/* 10FFBC 802A69AC 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 10FFC0 802A69B0 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 10FFC4 802A69B4 25F80040 */  addiu $t8, $t7, 0x40
/* 10FFC8 802A69B8 0301C824 */  and   $t9, $t8, $at
/* 10FFCC 802A69BC AC590004 */  sw    $t9, 4($v0)
/* 10FFD0 802A69C0 C46A000C */  lwc1  $f10, 0xc($v1)
/* 10FFD4 802A69C4 8C670008 */  lw    $a3, 8($v1)
/* 10FFD8 802A69C8 8C660004 */  lw    $a2, 4($v1)
/* 10FFDC 802A69CC 8C650000 */  lw    $a1, ($v1)
/* 10FFE0 802A69D0 E7AA0010 */  swc1  $f10, 0x10($sp)
/* 10FFE4 802A69D4 C4700010 */  lwc1  $f16, 0x10($v1)
/* 10FFE8 802A69D8 8D440000 */  lw    $a0, ($t2)
/* 10FFEC 802A69DC E7B00014 */  swc1  $f16, 0x14($sp)
/* 10FFF0 802A69E0 C4720014 */  lwc1  $f18, 0x14($v1)
/* 10FFF4 802A69E4 248401C0 */  addiu $a0, $a0, 0x1c0
/* 10FFF8 802A69E8 E7B20018 */  swc1  $f18, 0x18($sp)
/* 10FFFC 802A69EC C4640018 */  lwc1  $f4, 0x18($v1)
/* 110000 802A69F0 E7A4001C */  swc1  $f4, 0x1c($sp)
/* 110004 802A69F4 C466001C */  lwc1  $f6, 0x1c($v1)
/* 110008 802A69F8 E7A60020 */  swc1  $f6, 0x20($sp)
/* 11000C 802A69FC C4680020 */  lwc1  $f8, 0x20($v1)
/* 110010 802A6A00 0C033D92 */  jal   guLookAt
/* 110014 802A6A04 E7A80024 */   swc1  $f8, 0x24($sp)
/* 110018 802A6A08 3C0B800E */  lui   $t3, %hi(D_800DC5C8) # $t3, 0x800e
/* 11001C 802A6A0C 956BC5C8 */  lhu   $t3, %lo(D_800DC5C8)($t3)
/* 110020 802A6A10 55600016 */  bnel  $t3, $zero, .L802A6A6C
/* 110024 802A6A14 8E020000 */   lw    $v0, ($s0)
/* 110028 802A6A18 8E020000 */  lw    $v0, ($s0)
/* 11002C 802A6A1C 3C0D0101 */  lui   $t5, (0x01010040 >> 16) # lui $t5, 0x101
/* 110030 802A6A20 35AD0040 */  ori   $t5, (0x01010040 & 0xFFFF) # ori $t5, $t5, 0x40
/* 110034 802A6A24 244C0008 */  addiu $t4, $v0, 8
/* 110038 802A6A28 AE0C0000 */  sw    $t4, ($s0)
/* 11003C 802A6A2C 3C0E8015 */  lui   $t6, %hi(gGfxPool) # $t6, 0x8015
/* 110040 802A6A30 AC4D0000 */  sw    $t5, ($v0)
/* 110044 802A6A34 8DCEEF40 */  lw    $t6, %lo(gGfxPool)($t6)
/* 110048 802A6A38 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 11004C 802A6A3C 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 110050 802A6A40 25CF01C0 */  addiu $t7, $t6, 0x1c0
/* 110054 802A6A44 01E1C024 */  and   $t8, $t7, $at
/* 110058 802A6A48 27A40058 */  addiu $a0, $sp, 0x58
/* 11005C 802A6A4C 0C0AD4F2 */  jal   func_802B53C8
/* 110060 802A6A50 AC580004 */   sw    $t8, 4($v0)
/* 110064 802A6A54 27A40058 */  addiu $a0, $sp, 0x58
/* 110068 802A6A58 0C0AD3FE */  jal   func_802B4FF8
/* 11006C 802A6A5C 00002825 */   move  $a1, $zero
/* 110070 802A6A60 1000000E */  b     .L802A6A9C
/* 110074 802A6A64 00000000 */   nop   
/* 110078 802A6A68 8E020000 */  lw    $v0, ($s0)
.L802A6A6C:
/* 11007C 802A6A6C 3C0B0102 */  lui   $t3, (0x01020040 >> 16) # lui $t3, 0x102
/* 110080 802A6A70 356B0040 */  ori   $t3, (0x01020040 & 0xFFFF) # ori $t3, $t3, 0x40
/* 110084 802A6A74 24590008 */  addiu $t9, $v0, 8
/* 110088 802A6A78 AE190000 */  sw    $t9, ($s0)
/* 11008C 802A6A7C 3C0C8015 */  lui   $t4, %hi(gGfxPool) # $t4, 0x8015
/* 110090 802A6A80 AC4B0000 */  sw    $t3, ($v0)
/* 110094 802A6A84 8D8CEF40 */  lw    $t4, %lo(gGfxPool)($t4)
/* 110098 802A6A88 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 11009C 802A6A8C 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 1100A0 802A6A90 258D01C0 */  addiu $t5, $t4, 0x1c0
/* 1100A4 802A6A94 01A17024 */  and   $t6, $t5, $at
/* 1100A8 802A6A98 AC4E0004 */  sw    $t6, 4($v0)
.L802A6A9C:
/* 1100AC 802A6A9C 3C04800E */  lui   $a0, %hi(D_800DC5EC) # $a0, 0x800e
/* 1100B0 802A6AA0 0C0A568E */  jal   func_80295A38
/* 1100B4 802A6AA4 8C84C5EC */   lw    $a0, %lo(D_800DC5EC)($a0)
/* 1100B8 802A6AA8 3C0F800E */  lui   $t7, %hi(D_800DC5C8) # $t7, 0x800e
/* 1100BC 802A6AAC 95EFC5C8 */  lhu   $t7, %lo(D_800DC5C8)($t7)
/* 1100C0 802A6AB0 24010001 */  li    $at, 1
/* 1100C4 802A6AB4 15E10013 */  bne   $t7, $at, .L802A6B04
/* 1100C8 802A6AB8 00000000 */   nop   
/* 1100CC 802A6ABC 8E020000 */  lw    $v0, ($s0)
/* 1100D0 802A6AC0 3C190101 */  lui   $t9, (0x01010040 >> 16) # lui $t9, 0x101
/* 1100D4 802A6AC4 37390040 */  ori   $t9, (0x01010040 & 0xFFFF) # ori $t9, $t9, 0x40
/* 1100D8 802A6AC8 24580008 */  addiu $t8, $v0, 8
/* 1100DC 802A6ACC AE180000 */  sw    $t8, ($s0)
/* 1100E0 802A6AD0 3C0B8015 */  lui   $t3, %hi(gGfxPool) # $t3, 0x8015
/* 1100E4 802A6AD4 AC590000 */  sw    $t9, ($v0)
/* 1100E8 802A6AD8 8D6BEF40 */  lw    $t3, %lo(gGfxPool)($t3)
/* 1100EC 802A6ADC 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 1100F0 802A6AE0 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 1100F4 802A6AE4 256C01C0 */  addiu $t4, $t3, 0x1c0
/* 1100F8 802A6AE8 01816824 */  and   $t5, $t4, $at
/* 1100FC 802A6AEC 27A40058 */  addiu $a0, $sp, 0x58
/* 110100 802A6AF0 0C0AD4F2 */  jal   func_802B53C8
/* 110104 802A6AF4 AC4D0004 */   sw    $t5, 4($v0)
/* 110108 802A6AF8 27A40058 */  addiu $a0, $sp, 0x58
/* 11010C 802A6AFC 0C0AD3FE */  jal   func_802B4FF8
/* 110110 802A6B00 00002825 */   move  $a1, $zero
.L802A6B04:
/* 110114 802A6B04 3C04800E */  lui   $a0, %hi(D_800DC5EC) # $a0, 0x800e
/* 110118 802A6B08 0C0A8C02 */  jal   func_802A3008
/* 11011C 802A6B0C 8C84C5EC */   lw    $a0, %lo(D_800DC5EC)($a0)
/* 110120 802A6B10 0C016024 */  jal   func_80058090
/* 110124 802A6B14 24040008 */   li    $a0, 8
/* 110128 802A6B18 0C0084AD */  jal   func_800212B4
/* 11012C 802A6B1C 00000000 */   nop   
/* 110130 802A6B20 3C04800E */  lui   $a0, %hi(D_800DC5EC) # $a0, 0x800e
/* 110134 802A6B24 8C84C5EC */  lw    $a0, %lo(D_800DC5EC)($a0)
/* 110138 802A6B28 0C0A448B */  jal   func_8029122C
/* 11013C 802A6B2C 00002825 */   move  $a1, $zero
/* 110140 802A6B30 0C0086C3 */  jal   func_80021B0C
/* 110144 802A6B34 00000000 */   nop   
/* 110148 802A6B38 3C04800E */  lui   $a0, %hi(D_800DC5EC) # $a0, 0x800e
/* 11014C 802A6B3C 0C0A8BCD */  jal   func_802A2F34
/* 110150 802A6B40 8C84C5EC */   lw    $a0, %lo(D_800DC5EC)($a0)
/* 110154 802A6B44 0C01614E */  jal   func_80058538
/* 110158 802A6B48 24040008 */   li    $a0, 8
/* 11015C 802A6B4C 0C0162FD */  jal   func_80058BF4
/* 110160 802A6B50 00000000 */   nop   
/* 110164 802A6B54 3C10800E */  lui   $s0, %hi(D_800DC5B8) # $s0, 0x800e
/* 110168 802A6B58 2610C5B8 */  addiu $s0, %lo(D_800DC5B8) # addiu $s0, $s0, -0x3a48
/* 11016C 802A6B5C 960E0000 */  lhu   $t6, ($s0)
/* 110170 802A6B60 11C00003 */  beqz  $t6, .L802A6B70
/* 110174 802A6B64 00000000 */   nop   
/* 110178 802A6B68 0C016308 */  jal   func_80058C20
/* 11017C 802A6B6C 24040008 */   li    $a0, 8
.L802A6B70:
/* 110180 802A6B70 0C024E97 */  jal   func_80093A5C
/* 110184 802A6B74 24040008 */   li    $a0, 8
/* 110188 802A6B78 960F0000 */  lhu   $t7, ($s0)
/* 11018C 802A6B7C 11E00003 */  beqz  $t7, .L802A6B8C
/* 110190 802A6B80 00000000 */   nop   
/* 110194 802A6B84 0C01636D */  jal   func_80058DB4
/* 110198 802A6B88 24040008 */   li    $a0, 8
.L802A6B8C:
/* 11019C 802A6B8C 3C028016 */  lui   $v0, %hi(D_8015F788) # $v0, 0x8016
/* 1101A0 802A6B90 2442F788 */  addiu $v0, %lo(D_8015F788) # addiu $v0, $v0, -0x878
/* 1101A4 802A6B94 8C580000 */  lw    $t8, ($v0)
/* 1101A8 802A6B98 8FBF0034 */  lw    $ra, 0x34($sp)
/* 1101AC 802A6B9C 8FB00030 */  lw    $s0, 0x30($sp)
/* 1101B0 802A6BA0 27190001 */  addiu $t9, $t8, 1
/* 1101B4 802A6BA4 AC590000 */  sw    $t9, ($v0)
/* 1101B8 802A6BA8 03E00008 */  jr    $ra
/* 1101BC 802A6BAC 27BD00A8 */   addiu $sp, $sp, 0xa8
