glabel func_802A6BB0
/* 1101C0 802A6BB0 3C03800E */  lui   $v1, %hi(D_800DDB44) # $v1, 0x800e
/* 1101C4 802A6BB4 8C63DB44 */  lw    $v1, %lo(D_800DDB44)($v1)
/* 1101C8 802A6BB8 27BDFF58 */  addiu $sp, $sp, -0xa8
/* 1101CC 802A6BBC AFBF0034 */  sw    $ra, 0x34($sp)
/* 1101D0 802A6BC0 AFB00030 */  sw    $s0, 0x30($sp)
/* 1101D4 802A6BC4 0C0A9564 */  jal   func_802A5590
/* 1101D8 802A6BC8 AFA300A4 */   sw    $v1, 0xa4($sp)
/* 1101DC 802A6BCC 0C0A8F8F */  jal   func_802A3E3C
/* 1101E0 802A6BD0 00000000 */   nop   
/* 1101E4 802A6BD4 3C04800E */  lui   $a0, %hi(D_800DC5F0) # $a0, 0x800e
/* 1101E8 802A6BD8 0C0A8DCC */  jal   func_802A3730
/* 1101EC 802A6BDC 8C84C5F0 */   lw    $a0, %lo(D_800DC5F0)($a0)
/* 1101F0 802A6BE0 3C108015 */  lui   $s0, %hi(gDisplayListHead) # $s0, 0x8015
/* 1101F4 802A6BE4 26100298 */  addiu $s0, %lo(gDisplayListHead) # addiu $s0, $s0, 0x298
/* 1101F8 802A6BE8 8E020000 */  lw    $v0, ($s0)
/* 1101FC 802A6BEC 3C0FB700 */  lui   $t7, 0xb700
/* 110200 802A6BF0 24182205 */  li    $t8, 8709
/* 110204 802A6BF4 244E0008 */  addiu $t6, $v0, 8
/* 110208 802A6BF8 AE0E0000 */  sw    $t6, ($s0)
/* 11020C 802A6BFC 3C018015 */  lui   $at, %hi(D_80150150) # $at, 0x8015
/* 110210 802A6C00 AC580004 */  sw    $t8, 4($v0)
/* 110214 802A6C04 AC4F0000 */  sw    $t7, ($v0)
/* 110218 802A6C08 C4240150 */  lwc1  $f4, %lo(D_80150150)($at)
/* 11021C 802A6C0C 3C018015 */  lui   $at, %hi(D_8015014C) # $at, 0x8015
/* 110220 802A6C10 C426014C */  lwc1  $f6, %lo(D_8015014C)($at)
/* 110224 802A6C14 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 110228 802A6C18 3C048015 */  lui   $a0, %hi(gGfxPool) # $a0, 0x8015
/* 11022C 802A6C1C 8C84EF40 */  lw    $a0, %lo(gGfxPool)($a0)
/* 110230 802A6C20 44814000 */  mtc1  $at, $f8
/* 110234 802A6C24 3C068015 */  lui   $a2, %hi(D_80150134) # $a2, 0x8015
/* 110238 802A6C28 3C078015 */  lui   $a3, %hi(D_80150148) # $a3, 0x8015
/* 11023C 802A6C2C 8CE70148 */  lw    $a3, %lo(D_80150148)($a3)
/* 110240 802A6C30 8CC60134 */  lw    $a2, %lo(D_80150134)($a2)
/* 110244 802A6C34 27A5009A */  addiu $a1, $sp, 0x9a
/* 110248 802A6C38 E7A40010 */  swc1  $f4, 0x10($sp)
/* 11024C 802A6C3C E7A60014 */  swc1  $f6, 0x14($sp)
/* 110250 802A6C40 24840080 */  addiu $a0, $a0, 0x80
/* 110254 802A6C44 0C033CCC */  jal   guPerspective
/* 110258 802A6C48 E7A80018 */   swc1  $f8, 0x18($sp)
/* 11025C 802A6C4C 8E020000 */  lw    $v0, ($s0)
/* 110260 802A6C50 8FA300A4 */  lw    $v1, 0xa4($sp)
/* 110264 802A6C54 3C0BB400 */  lui   $t3, 0xb400
/* 110268 802A6C58 24590008 */  addiu $t9, $v0, 8
/* 11026C 802A6C5C AE190000 */  sw    $t9, ($s0)
/* 110270 802A6C60 AC4B0000 */  sw    $t3, ($v0)
/* 110274 802A6C64 97AC009A */  lhu   $t4, 0x9a($sp)
/* 110278 802A6C68 3C0E0103 */  lui   $t6, (0x01030040 >> 16) # lui $t6, 0x103
/* 11027C 802A6C6C 3C0A8015 */  lui   $t2, %hi(gGfxPool) # $t2, 0x8015
/* 110280 802A6C70 AC4C0004 */  sw    $t4, 4($v0)
/* 110284 802A6C74 8E020000 */  lw    $v0, ($s0)
/* 110288 802A6C78 35CE0040 */  ori   $t6, (0x01030040 & 0xFFFF) # ori $t6, $t6, 0x40
/* 11028C 802A6C7C 254AEF40 */  addiu $t2, %lo(gGfxPool) # addiu $t2, $t2, -0x10c0
/* 110290 802A6C80 244D0008 */  addiu $t5, $v0, 8
/* 110294 802A6C84 AE0D0000 */  sw    $t5, ($s0)
/* 110298 802A6C88 AC4E0000 */  sw    $t6, ($v0)
/* 11029C 802A6C8C 8D4F0000 */  lw    $t7, ($t2)
/* 1102A0 802A6C90 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 1102A4 802A6C94 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 1102A8 802A6C98 25F80080 */  addiu $t8, $t7, 0x80
/* 1102AC 802A6C9C 0301C824 */  and   $t9, $t8, $at
/* 1102B0 802A6CA0 AC590004 */  sw    $t9, 4($v0)
/* 1102B4 802A6CA4 C46A000C */  lwc1  $f10, 0xc($v1)
/* 1102B8 802A6CA8 8C670008 */  lw    $a3, 8($v1)
/* 1102BC 802A6CAC 8C660004 */  lw    $a2, 4($v1)
/* 1102C0 802A6CB0 8C650000 */  lw    $a1, ($v1)
/* 1102C4 802A6CB4 E7AA0010 */  swc1  $f10, 0x10($sp)
/* 1102C8 802A6CB8 C4700010 */  lwc1  $f16, 0x10($v1)
/* 1102CC 802A6CBC 8D440000 */  lw    $a0, ($t2)
/* 1102D0 802A6CC0 E7B00014 */  swc1  $f16, 0x14($sp)
/* 1102D4 802A6CC4 C4720014 */  lwc1  $f18, 0x14($v1)
/* 1102D8 802A6CC8 24840200 */  addiu $a0, $a0, 0x200
/* 1102DC 802A6CCC E7B20018 */  swc1  $f18, 0x18($sp)
/* 1102E0 802A6CD0 C4640018 */  lwc1  $f4, 0x18($v1)
/* 1102E4 802A6CD4 E7A4001C */  swc1  $f4, 0x1c($sp)
/* 1102E8 802A6CD8 C466001C */  lwc1  $f6, 0x1c($v1)
/* 1102EC 802A6CDC E7A60020 */  swc1  $f6, 0x20($sp)
/* 1102F0 802A6CE0 C4680020 */  lwc1  $f8, 0x20($v1)
/* 1102F4 802A6CE4 0C033D92 */  jal   guLookAt
/* 1102F8 802A6CE8 E7A80024 */   swc1  $f8, 0x24($sp)
/* 1102FC 802A6CEC 3C0B800E */  lui   $t3, %hi(D_800DC5C8) # $t3, 0x800e
/* 110300 802A6CF0 956BC5C8 */  lhu   $t3, %lo(D_800DC5C8)($t3)
/* 110304 802A6CF4 55600016 */  bnel  $t3, $zero, .L802A6D50
/* 110308 802A6CF8 8E020000 */   lw    $v0, ($s0)
/* 11030C 802A6CFC 8E020000 */  lw    $v0, ($s0)
/* 110310 802A6D00 3C0D0101 */  lui   $t5, (0x01010040 >> 16) # lui $t5, 0x101
/* 110314 802A6D04 35AD0040 */  ori   $t5, (0x01010040 & 0xFFFF) # ori $t5, $t5, 0x40
/* 110318 802A6D08 244C0008 */  addiu $t4, $v0, 8
/* 11031C 802A6D0C AE0C0000 */  sw    $t4, ($s0)
/* 110320 802A6D10 3C0E8015 */  lui   $t6, %hi(gGfxPool) # $t6, 0x8015
/* 110324 802A6D14 AC4D0000 */  sw    $t5, ($v0)
/* 110328 802A6D18 8DCEEF40 */  lw    $t6, %lo(gGfxPool)($t6)
/* 11032C 802A6D1C 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 110330 802A6D20 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 110334 802A6D24 25CF0200 */  addiu $t7, $t6, 0x200
/* 110338 802A6D28 01E1C024 */  and   $t8, $t7, $at
/* 11033C 802A6D2C 27A40058 */  addiu $a0, $sp, 0x58
/* 110340 802A6D30 0C0AD4F2 */  jal   func_802B53C8
/* 110344 802A6D34 AC580004 */   sw    $t8, 4($v0)
/* 110348 802A6D38 27A40058 */  addiu $a0, $sp, 0x58
/* 11034C 802A6D3C 0C0AD3FE */  jal   func_802B4FF8
/* 110350 802A6D40 00002825 */   move  $a1, $zero
/* 110354 802A6D44 1000000E */  b     .L802A6D80
/* 110358 802A6D48 00000000 */   nop   
/* 11035C 802A6D4C 8E020000 */  lw    $v0, ($s0)
.L802A6D50:
/* 110360 802A6D50 3C0B0102 */  lui   $t3, (0x01020040 >> 16) # lui $t3, 0x102
/* 110364 802A6D54 356B0040 */  ori   $t3, (0x01020040 & 0xFFFF) # ori $t3, $t3, 0x40
/* 110368 802A6D58 24590008 */  addiu $t9, $v0, 8
/* 11036C 802A6D5C AE190000 */  sw    $t9, ($s0)
/* 110370 802A6D60 3C0C8015 */  lui   $t4, %hi(gGfxPool) # $t4, 0x8015
/* 110374 802A6D64 AC4B0000 */  sw    $t3, ($v0)
/* 110378 802A6D68 8D8CEF40 */  lw    $t4, %lo(gGfxPool)($t4)
/* 11037C 802A6D6C 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 110380 802A6D70 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 110384 802A6D74 258D0200 */  addiu $t5, $t4, 0x200
/* 110388 802A6D78 01A17024 */  and   $t6, $t5, $at
/* 11038C 802A6D7C AC4E0004 */  sw    $t6, 4($v0)
.L802A6D80:
/* 110390 802A6D80 3C04800E */  lui   $a0, %hi(D_800DC5F0) # $a0, 0x800e
/* 110394 802A6D84 0C0A568E */  jal   func_80295A38
/* 110398 802A6D88 8C84C5F0 */   lw    $a0, %lo(D_800DC5F0)($a0)
/* 11039C 802A6D8C 3C0F800E */  lui   $t7, %hi(D_800DC5C8) # $t7, 0x800e
/* 1103A0 802A6D90 95EFC5C8 */  lhu   $t7, %lo(D_800DC5C8)($t7)
/* 1103A4 802A6D94 24010001 */  li    $at, 1
/* 1103A8 802A6D98 15E10013 */  bne   $t7, $at, .L802A6DE8
/* 1103AC 802A6D9C 00000000 */   nop   
/* 1103B0 802A6DA0 8E020000 */  lw    $v0, ($s0)
/* 1103B4 802A6DA4 3C190101 */  lui   $t9, (0x01010040 >> 16) # lui $t9, 0x101
/* 1103B8 802A6DA8 37390040 */  ori   $t9, (0x01010040 & 0xFFFF) # ori $t9, $t9, 0x40
/* 1103BC 802A6DAC 24580008 */  addiu $t8, $v0, 8
/* 1103C0 802A6DB0 AE180000 */  sw    $t8, ($s0)
/* 1103C4 802A6DB4 3C0B8015 */  lui   $t3, %hi(gGfxPool) # $t3, 0x8015
/* 1103C8 802A6DB8 AC590000 */  sw    $t9, ($v0)
/* 1103CC 802A6DBC 8D6BEF40 */  lw    $t3, %lo(gGfxPool)($t3)
/* 1103D0 802A6DC0 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 1103D4 802A6DC4 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 1103D8 802A6DC8 256C0200 */  addiu $t4, $t3, 0x200
/* 1103DC 802A6DCC 01816824 */  and   $t5, $t4, $at
/* 1103E0 802A6DD0 27A40058 */  addiu $a0, $sp, 0x58
/* 1103E4 802A6DD4 0C0AD4F2 */  jal   func_802B53C8
/* 1103E8 802A6DD8 AC4D0004 */   sw    $t5, 4($v0)
/* 1103EC 802A6DDC 27A40058 */  addiu $a0, $sp, 0x58
/* 1103F0 802A6DE0 0C0AD3FE */  jal   func_802B4FF8
/* 1103F4 802A6DE4 00002825 */   move  $a1, $zero
.L802A6DE8:
/* 1103F8 802A6DE8 3C04800E */  lui   $a0, %hi(D_800DC5F0) # $a0, 0x800e
/* 1103FC 802A6DEC 0C0A8C02 */  jal   func_802A3008
/* 110400 802A6DF0 8C84C5F0 */   lw    $a0, %lo(D_800DC5F0)($a0)
/* 110404 802A6DF4 0C016024 */  jal   func_80058090
/* 110408 802A6DF8 24040009 */   li    $a0, 9
/* 11040C 802A6DFC 0C008577 */  jal   func_800215DC
/* 110410 802A6E00 00000000 */   nop   
/* 110414 802A6E04 3C04800E */  lui   $a0, %hi(D_800DC5F0) # $a0, 0x800e
/* 110418 802A6E08 8C84C5F0 */  lw    $a0, %lo(D_800DC5F0)($a0)
/* 11041C 802A6E0C 0C0A448B */  jal   func_8029122C
/* 110420 802A6E10 24050001 */   li    $a1, 1
/* 110424 802A6E14 0C00871E */  jal   func_80021C78
/* 110428 802A6E18 00000000 */   nop   
/* 11042C 802A6E1C 3C04800E */  lui   $a0, %hi(D_800DC5F0) # $a0, 0x800e
/* 110430 802A6E20 0C0A8BCD */  jal   func_802A2F34
/* 110434 802A6E24 8C84C5F0 */   lw    $a0, %lo(D_800DC5F0)($a0)
/* 110438 802A6E28 0C01614E */  jal   func_80058538
/* 11043C 802A6E2C 24040009 */   li    $a0, 9
/* 110440 802A6E30 0C0162FD */  jal   func_80058BF4
/* 110444 802A6E34 00000000 */   nop   
/* 110448 802A6E38 3C10800E */  lui   $s0, %hi(D_800DC5B8) # $s0, 0x800e
/* 11044C 802A6E3C 2610C5B8 */  addiu $s0, %lo(D_800DC5B8) # addiu $s0, $s0, -0x3a48
/* 110450 802A6E40 960E0000 */  lhu   $t6, ($s0)
/* 110454 802A6E44 11C00003 */  beqz  $t6, .L802A6E54
/* 110458 802A6E48 00000000 */   nop   
/* 11045C 802A6E4C 0C016308 */  jal   func_80058C20
/* 110460 802A6E50 24040009 */   li    $a0, 9
.L802A6E54:
/* 110464 802A6E54 0C024E97 */  jal   func_80093A5C
/* 110468 802A6E58 24040009 */   li    $a0, 9
/* 11046C 802A6E5C 960F0000 */  lhu   $t7, ($s0)
/* 110470 802A6E60 11E00003 */  beqz  $t7, .L802A6E70
/* 110474 802A6E64 00000000 */   nop   
/* 110478 802A6E68 0C01636D */  jal   func_80058DB4
/* 11047C 802A6E6C 24040009 */   li    $a0, 9
.L802A6E70:
/* 110480 802A6E70 3C028016 */  lui   $v0, %hi(D_8015F788) # $v0, 0x8016
/* 110484 802A6E74 2442F788 */  addiu $v0, %lo(D_8015F788) # addiu $v0, $v0, -0x878
/* 110488 802A6E78 8C580000 */  lw    $t8, ($v0)
/* 11048C 802A6E7C 8FBF0034 */  lw    $ra, 0x34($sp)
/* 110490 802A6E80 8FB00030 */  lw    $s0, 0x30($sp)
/* 110494 802A6E84 27190001 */  addiu $t9, $t8, 1
/* 110498 802A6E88 AC590000 */  sw    $t9, ($v0)
/* 11049C 802A6E8C 03E00008 */  jr    $ra
/* 1104A0 802A6E90 27BD00A8 */   addiu $sp, $sp, 0xa8
