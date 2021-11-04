glabel func_802A62A4
/* 10F8B4 802A62A4 27BDFF58 */  addiu $sp, $sp, -0xa8
/* 10F8B8 802A62A8 AFBF0034 */  sw    $ra, 0x34($sp)
/* 10F8BC 802A62AC 0C0A9475 */  jal   func_802A51D4
/* 10F8C0 802A62B0 AFB00030 */   sw    $s0, 0x30($sp)
/* 10F8C4 802A62B4 3C108015 */  lui   $s0, %hi(gDisplayListHead) # $s0, 0x8015
/* 10F8C8 802A62B8 26100298 */  addiu $s0, %lo(gDisplayListHead) # addiu $s0, $s0, 0x298
/* 10F8CC 802A62BC 8E020000 */  lw    $v0, ($s0)
/* 10F8D0 802A62C0 3C180002 */  lui   $t8, (0x00022204 >> 16) # lui $t8, 2
/* 10F8D4 802A62C4 37182204 */  ori   $t8, (0x00022204 & 0xFFFF) # ori $t8, $t8, 0x2204
/* 10F8D8 802A62C8 244E0008 */  addiu $t6, $v0, 8
/* 10F8DC 802A62CC AE0E0000 */  sw    $t6, ($s0)
/* 10F8E0 802A62D0 3C0FB700 */  lui   $t7, 0xb700
/* 10F8E4 802A62D4 AC4F0000 */  sw    $t7, ($v0)
/* 10F8E8 802A62D8 0C0A8F8F */  jal   func_802A3E3C
/* 10F8EC 802A62DC AC580004 */   sw    $t8, 4($v0)
/* 10F8F0 802A62E0 3C04800E */  lui   $a0, %hi(D_800DC5EC) # $a0, 0x800e
/* 10F8F4 802A62E4 0C0A8DCC */  jal   func_802A3730
/* 10F8F8 802A62E8 8C84C5EC */   lw    $a0, %lo(D_800DC5EC)($a0)
/* 10F8FC 802A62EC 8E020000 */  lw    $v0, ($s0)
/* 10F900 802A62F0 3C0AB700 */  lui   $t2, 0xb700
/* 10F904 802A62F4 240B2205 */  li    $t3, 8709
/* 10F908 802A62F8 24590008 */  addiu $t9, $v0, 8
/* 10F90C 802A62FC AE190000 */  sw    $t9, ($s0)
/* 10F910 802A6300 3C018015 */  lui   $at, %hi(D_80150150) # $at, 0x8015
/* 10F914 802A6304 AC4B0004 */  sw    $t3, 4($v0)
/* 10F918 802A6308 AC4A0000 */  sw    $t2, ($v0)
/* 10F91C 802A630C C4240150 */  lwc1  $f4, %lo(D_80150150)($at)
/* 10F920 802A6310 3C018015 */  lui   $at, %hi(D_8015014C) # $at, 0x8015
/* 10F924 802A6314 C426014C */  lwc1  $f6, %lo(D_8015014C)($at)
/* 10F928 802A6318 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 10F92C 802A631C 3C048015 */  lui   $a0, %hi(gGfxPool) # $a0, 0x8015
/* 10F930 802A6320 8C84EF40 */  lw    $a0, %lo(gGfxPool)($a0)
/* 10F934 802A6324 44814000 */  mtc1  $at, $f8
/* 10F938 802A6328 3C068015 */  lui   $a2, %hi(D_80150130) # $a2, 0x8015
/* 10F93C 802A632C 3C078015 */  lui   $a3, %hi(D_80150148) # $a3, 0x8015
/* 10F940 802A6330 8CE70148 */  lw    $a3, %lo(D_80150148)($a3)
/* 10F944 802A6334 8CC60130 */  lw    $a2, %lo(D_80150130)($a2)
/* 10F948 802A6338 27A5009A */  addiu $a1, $sp, 0x9a
/* 10F94C 802A633C E7A40010 */  swc1  $f4, 0x10($sp)
/* 10F950 802A6340 E7A60014 */  swc1  $f6, 0x14($sp)
/* 10F954 802A6344 24840040 */  addiu $a0, $a0, 0x40
/* 10F958 802A6348 0C033CCC */  jal   guPerspective
/* 10F95C 802A634C E7A80018 */   swc1  $f8, 0x18($sp)
/* 10F960 802A6350 8E020000 */  lw    $v0, ($s0)
/* 10F964 802A6354 3C0DB400 */  lui   $t5, 0xb400
/* 10F968 802A6358 3C180103 */  lui   $t8, (0x01030040 >> 16) # lui $t8, 0x103
/* 10F96C 802A635C 244C0008 */  addiu $t4, $v0, 8
/* 10F970 802A6360 AE0C0000 */  sw    $t4, ($s0)
/* 10F974 802A6364 AC4D0000 */  sw    $t5, ($v0)
/* 10F978 802A6368 97AE009A */  lhu   $t6, 0x9a($sp)
/* 10F97C 802A636C 3C098015 */  lui   $t1, %hi(gGfxPool) # $t1, 0x8015
/* 10F980 802A6370 37180040 */  ori   $t8, (0x01030040 & 0xFFFF) # ori $t8, $t8, 0x40
/* 10F984 802A6374 AC4E0004 */  sw    $t6, 4($v0)
/* 10F988 802A6378 8E020000 */  lw    $v0, ($s0)
/* 10F98C 802A637C 2529EF40 */  addiu $t1, %lo(gGfxPool) # addiu $t1, $t1, -0x10c0
/* 10F990 802A6380 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 10F994 802A6384 244F0008 */  addiu $t7, $v0, 8
/* 10F998 802A6388 AE0F0000 */  sw    $t7, ($s0)
/* 10F99C 802A638C AC580000 */  sw    $t8, ($v0)
/* 10F9A0 802A6390 8D390000 */  lw    $t9, ($t1)
/* 10F9A4 802A6394 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 10F9A8 802A6398 3C058016 */  lui   $a1, %hi(D_801646F0) # $a1, 0x8016
/* 10F9AC 802A639C 272A0040 */  addiu $t2, $t9, 0x40
/* 10F9B0 802A63A0 01415824 */  and   $t3, $t2, $at
/* 10F9B4 802A63A4 AC4B0004 */  sw    $t3, 4($v0)
/* 10F9B8 802A63A8 3C018016 */  lui   $at, %hi(D_801646FC) # $at, 0x8016
/* 10F9BC 802A63AC C42A46FC */  lwc1  $f10, %lo(D_801646FC)($at)
/* 10F9C0 802A63B0 3C018016 */  lui   $at, %hi(D_80164700) # $at, 0x8016
/* 10F9C4 802A63B4 C4304700 */  lwc1  $f16, %lo(D_80164700)($at)
/* 10F9C8 802A63B8 3C018016 */  lui   $at, %hi(D_80164704) # $at, 0x8016
/* 10F9CC 802A63BC C4324704 */  lwc1  $f18, %lo(D_80164704)($at)
/* 10F9D0 802A63C0 3C018016 */  lui   $at, %hi(D_80164708) # $at, 0x8016
/* 10F9D4 802A63C4 C4244708 */  lwc1  $f4, %lo(D_80164708)($at)
/* 10F9D8 802A63C8 3C018016 */  lui   $at, %hi(D_8016470C) # $at, 0x8016
/* 10F9DC 802A63CC C426470C */  lwc1  $f6, %lo(D_8016470C)($at)
/* 10F9E0 802A63D0 3C018016 */  lui   $at, %hi(D_80164710) # $at, 0x8016
/* 10F9E4 802A63D4 C4284710 */  lwc1  $f8, %lo(D_80164710)($at)
/* 10F9E8 802A63D8 8D240000 */  lw    $a0, ($t1)
/* 10F9EC 802A63DC 3C068016 */  lui   $a2, %hi(D_801646F4) # $a2, 0x8016
/* 10F9F0 802A63E0 3C078016 */  lui   $a3, %hi(D_801646F8) # $a3, 0x8016
/* 10F9F4 802A63E4 8CE746F8 */  lw    $a3, %lo(D_801646F8)($a3)
/* 10F9F8 802A63E8 8CC646F4 */  lw    $a2, %lo(D_801646F4)($a2)
/* 10F9FC 802A63EC 8CA546F0 */  lw    $a1, %lo(D_801646F0)($a1)
/* 10FA00 802A63F0 E7AA0010 */  swc1  $f10, 0x10($sp)
/* 10FA04 802A63F4 E7B00014 */  swc1  $f16, 0x14($sp)
/* 10FA08 802A63F8 E7B20018 */  swc1  $f18, 0x18($sp)
/* 10FA0C 802A63FC E7A4001C */  swc1  $f4, 0x1c($sp)
/* 10FA10 802A6400 E7A60020 */  swc1  $f6, 0x20($sp)
/* 10FA14 802A6404 E7A80024 */  swc1  $f8, 0x24($sp)
/* 10FA18 802A6408 0C033D92 */  jal   guLookAt
/* 10FA1C 802A640C 248401C0 */   addiu $a0, $a0, 0x1c0
/* 10FA20 802A6410 3C0C800E */  lui   $t4, %hi(D_800DC5C8) # $t4, 0x800e
/* 10FA24 802A6414 958CC5C8 */  lhu   $t4, %lo(D_800DC5C8)($t4)
/* 10FA28 802A6418 55800016 */  bnel  $t4, $zero, .L802A6474
/* 10FA2C 802A641C 8E020000 */   lw    $v0, ($s0)
/* 10FA30 802A6420 8E020000 */  lw    $v0, ($s0)
/* 10FA34 802A6424 3C0E0101 */  lui   $t6, (0x01010040 >> 16) # lui $t6, 0x101
/* 10FA38 802A6428 35CE0040 */  ori   $t6, (0x01010040 & 0xFFFF) # ori $t6, $t6, 0x40
/* 10FA3C 802A642C 244D0008 */  addiu $t5, $v0, 8
/* 10FA40 802A6430 AE0D0000 */  sw    $t5, ($s0)
/* 10FA44 802A6434 3C0F8015 */  lui   $t7, %hi(gGfxPool) # $t7, 0x8015
/* 10FA48 802A6438 AC4E0000 */  sw    $t6, ($v0)
/* 10FA4C 802A643C 8DEFEF40 */  lw    $t7, %lo(gGfxPool)($t7)
/* 10FA50 802A6440 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 10FA54 802A6444 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 10FA58 802A6448 25F801C0 */  addiu $t8, $t7, 0x1c0
/* 10FA5C 802A644C 0301C824 */  and   $t9, $t8, $at
/* 10FA60 802A6450 27A40058 */  addiu $a0, $sp, 0x58
/* 10FA64 802A6454 0C0AD4F2 */  jal   func_802B53C8
/* 10FA68 802A6458 AC590004 */   sw    $t9, 4($v0)
/* 10FA6C 802A645C 27A40058 */  addiu $a0, $sp, 0x58
/* 10FA70 802A6460 0C0AD3FE */  jal   func_802B4FF8
/* 10FA74 802A6464 00002825 */   move  $a1, $zero
/* 10FA78 802A6468 1000000E */  b     .L802A64A4
/* 10FA7C 802A646C 00000000 */   nop   
/* 10FA80 802A6470 8E020000 */  lw    $v0, ($s0)
.L802A6474:
/* 10FA84 802A6474 3C0B0102 */  lui   $t3, (0x01020040 >> 16) # lui $t3, 0x102
/* 10FA88 802A6478 356B0040 */  ori   $t3, (0x01020040 & 0xFFFF) # ori $t3, $t3, 0x40
/* 10FA8C 802A647C 244A0008 */  addiu $t2, $v0, 8
/* 10FA90 802A6480 AE0A0000 */  sw    $t2, ($s0)
/* 10FA94 802A6484 3C0C8015 */  lui   $t4, %hi(gGfxPool) # $t4, 0x8015
/* 10FA98 802A6488 AC4B0000 */  sw    $t3, ($v0)
/* 10FA9C 802A648C 8D8CEF40 */  lw    $t4, %lo(gGfxPool)($t4)
/* 10FAA0 802A6490 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 10FAA4 802A6494 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 10FAA8 802A6498 258D01C0 */  addiu $t5, $t4, 0x1c0
/* 10FAAC 802A649C 01A17024 */  and   $t6, $t5, $at
/* 10FAB0 802A64A0 AC4E0004 */  sw    $t6, 4($v0)
.L802A64A4:
/* 10FAB4 802A64A4 3C04800E */  lui   $a0, %hi(D_800DC5EC) # $a0, 0x800e
/* 10FAB8 802A64A8 0C0A568E */  jal   func_80295A38
/* 10FABC 802A64AC 8C84C5EC */   lw    $a0, %lo(D_800DC5EC)($a0)
/* 10FAC0 802A64B0 3C0F800E */  lui   $t7, %hi(D_800DC5C8) # $t7, 0x800e
/* 10FAC4 802A64B4 95EFC5C8 */  lhu   $t7, %lo(D_800DC5C8)($t7)
/* 10FAC8 802A64B8 24010001 */  li    $at, 1
/* 10FACC 802A64BC 15E10013 */  bne   $t7, $at, .L802A650C
/* 10FAD0 802A64C0 00000000 */   nop   
/* 10FAD4 802A64C4 8E020000 */  lw    $v0, ($s0)
/* 10FAD8 802A64C8 3C190101 */  lui   $t9, (0x01010040 >> 16) # lui $t9, 0x101
/* 10FADC 802A64CC 37390040 */  ori   $t9, (0x01010040 & 0xFFFF) # ori $t9, $t9, 0x40
/* 10FAE0 802A64D0 24580008 */  addiu $t8, $v0, 8
/* 10FAE4 802A64D4 AE180000 */  sw    $t8, ($s0)
/* 10FAE8 802A64D8 3C0A8015 */  lui   $t2, %hi(gGfxPool) # $t2, 0x8015
/* 10FAEC 802A64DC AC590000 */  sw    $t9, ($v0)
/* 10FAF0 802A64E0 8D4AEF40 */  lw    $t2, %lo(gGfxPool)($t2)
/* 10FAF4 802A64E4 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 10FAF8 802A64E8 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 10FAFC 802A64EC 254B01C0 */  addiu $t3, $t2, 0x1c0
/* 10FB00 802A64F0 01616024 */  and   $t4, $t3, $at
/* 10FB04 802A64F4 27A40058 */  addiu $a0, $sp, 0x58
/* 10FB08 802A64F8 0C0AD4F2 */  jal   func_802B53C8
/* 10FB0C 802A64FC AC4C0004 */   sw    $t4, 4($v0)
/* 10FB10 802A6500 27A40058 */  addiu $a0, $sp, 0x58
/* 10FB14 802A6504 0C0AD3FE */  jal   func_802B4FF8
/* 10FB18 802A6508 00002825 */   move  $a1, $zero
.L802A650C:
/* 10FB1C 802A650C 3C04800E */  lui   $a0, %hi(D_800DC5EC) # $a0, 0x800e
/* 10FB20 802A6510 0C0A8C02 */  jal   func_802A3008
/* 10FB24 802A6514 8C84C5EC */   lw    $a0, %lo(D_800DC5EC)($a0)
/* 10FB28 802A6518 0C016024 */  jal   func_80058090
/* 10FB2C 802A651C 24040003 */   li    $a0, 3
/* 10FB30 802A6520 0C0084AD */  jal   func_800212B4
/* 10FB34 802A6524 00000000 */   nop   
/* 10FB38 802A6528 3C04800E */  lui   $a0, %hi(D_800DC5EC) # $a0, 0x800e
/* 10FB3C 802A652C 8C84C5EC */  lw    $a0, %lo(D_800DC5EC)($a0)
/* 10FB40 802A6530 0C0A448B */  jal   func_8029122C
/* 10FB44 802A6534 00002825 */   move  $a1, $zero
/* 10FB48 802A6538 0C0086C3 */  jal   func_80021B0C
/* 10FB4C 802A653C 00000000 */   nop   
/* 10FB50 802A6540 3C04800E */  lui   $a0, %hi(D_800DC5EC) # $a0, 0x800e
/* 10FB54 802A6544 0C0A8BCD */  jal   func_802A2F34
/* 10FB58 802A6548 8C84C5EC */   lw    $a0, %lo(D_800DC5EC)($a0)
/* 10FB5C 802A654C 0C01614E */  jal   func_80058538
/* 10FB60 802A6550 24040003 */   li    $a0, 3
/* 10FB64 802A6554 0C0162FD */  jal   func_80058BF4
/* 10FB68 802A6558 00000000 */   nop   
/* 10FB6C 802A655C 3C10800E */  lui   $s0, %hi(D_800DC5B8) # $s0, 0x800e
/* 10FB70 802A6560 2610C5B8 */  addiu $s0, %lo(D_800DC5B8) # addiu $s0, $s0, -0x3a48
/* 10FB74 802A6564 960D0000 */  lhu   $t5, ($s0)
/* 10FB78 802A6568 11A00003 */  beqz  $t5, .L802A6578
/* 10FB7C 802A656C 00000000 */   nop   
/* 10FB80 802A6570 0C016308 */  jal   func_80058C20
/* 10FB84 802A6574 24040003 */   li    $a0, 3
.L802A6578:
/* 10FB88 802A6578 0C024E97 */  jal   func_80093A5C
/* 10FB8C 802A657C 24040003 */   li    $a0, 3
/* 10FB90 802A6580 960E0000 */  lhu   $t6, ($s0)
/* 10FB94 802A6584 11C00003 */  beqz  $t6, .L802A6594
/* 10FB98 802A6588 00000000 */   nop   
/* 10FB9C 802A658C 0C01636D */  jal   func_80058DB4
/* 10FBA0 802A6590 24040003 */   li    $a0, 3
.L802A6594:
/* 10FBA4 802A6594 3C028016 */  lui   $v0, %hi(D_8015F788) # $v0, 0x8016
/* 10FBA8 802A6598 2442F788 */  addiu $v0, %lo(D_8015F788) # addiu $v0, $v0, -0x878
/* 10FBAC 802A659C 8C4F0000 */  lw    $t7, ($v0)
/* 10FBB0 802A65A0 8FBF0034 */  lw    $ra, 0x34($sp)
/* 10FBB4 802A65A4 8FB00030 */  lw    $s0, 0x30($sp)
/* 10FBB8 802A65A8 25F80001 */  addiu $t8, $t7, 1
/* 10FBBC 802A65AC AC580000 */  sw    $t8, ($v0)
/* 10FBC0 802A65B0 03E00008 */  jr    $ra
/* 10FBC4 802A65B4 27BD00A8 */   addiu $sp, $sp, 0xa8
