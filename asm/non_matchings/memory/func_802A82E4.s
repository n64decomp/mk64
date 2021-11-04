glabel func_802A82E4
/* 1118F4 802A82E4 00A03825 */  move  $a3, $a1
/* 1118F8 802A82E8 00802825 */  move  $a1, $a0
/* 1118FC 802A82EC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 111900 802A82F0 AFA40028 */  sw    $a0, 0x28($sp)
/* 111904 802A82F4 3C048016 */  lui   $a0, %hi(gPrevLoadedAddress) # $a0, 0x8016
/* 111908 802A82F8 00E53023 */  subu  $a2, $a3, $a1
/* 11190C 802A82FC 8C84F728 */  lw    $a0, %lo(gPrevLoadedAddress)($a0)
/* 111910 802A8300 24C6000F */  addiu $a2, $a2, 0xf
/* 111914 802A8304 2401FFF0 */  li    $at, -16
/* 111918 802A8308 AFBF0014 */  sw    $ra, 0x14($sp)
/* 11191C 802A830C 00C17024 */  and   $t6, $a2, $at
/* 111920 802A8310 01C03025 */  move  $a2, $t6
/* 111924 802A8314 AFAE001C */  sw    $t6, 0x1c($sp)
/* 111928 802A8318 0C000456 */  jal   dma_copy
/* 11192C 802A831C AFA40024 */   sw    $a0, 0x24($sp)
/* 111930 802A8320 3C0F8016 */  lui   $t7, %hi(gPrevLoadedAddress) # $t7, 0x8016
/* 111934 802A8324 8FA6001C */  lw    $a2, 0x1c($sp)
/* 111938 802A8328 8DEFF728 */  lw    $t7, %lo(gPrevLoadedAddress)($t7)
/* 11193C 802A832C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 111940 802A8330 8FA20024 */  lw    $v0, 0x24($sp)
/* 111944 802A8334 3C018016 */  lui   $at, %hi(gPrevLoadedAddress) # $at, 0x8016
/* 111948 802A8338 01E6C021 */  addu  $t8, $t7, $a2
/* 11194C 802A833C AC38F728 */  sw    $t8, %lo(gPrevLoadedAddress)($at)
/* 111950 802A8340 03E00008 */  jr    $ra
/* 111954 802A8344 27BD0028 */   addiu $sp, $sp, 0x28

/* 111958 802A8348 00A60019 */  multu $a1, $a2
/* 11195C 802A834C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 111960 802A8350 AFB00028 */  sw    $s0, 0x28($sp)
/* 111964 802A8354 3C028016 */  lui   $v0, %hi(gPrevLoadedAddress) # $v0, 0x8016
/* 111968 802A8358 8C42F728 */  lw    $v0, %lo(gPrevLoadedAddress)($v0)
/* 11196C 802A835C 2401FFF0 */  li    $at, -16
/* 111970 802A8360 AFA40040 */  sw    $a0, 0x40($sp)
/* 111974 802A8364 AFBF002C */  sw    $ra, 0x2c($sp)
/* 111978 802A8368 AFA20034 */  sw    $v0, 0x34($sp)
/* 11197C 802A836C 00008012 */  mflo  $s0
/* 111980 802A8370 2610000F */  addiu $s0, $s0, 0xf
/* 111984 802A8374 02012824 */  and   $a1, $s0, $at
/* 111988 802A8378 00452021 */  addu  $a0, $v0, $a1
/* 11198C 802A837C 00A08025 */  move  $s0, $a1
/* 111990 802A8380 0C0336E0 */  jal   osInvalDCache
/* 111994 802A8384 AFA40030 */   sw    $a0, 0x30($sp)
/* 111998 802A8388 8FAF0040 */  lw    $t7, 0x40($sp)
/* 11199C 802A838C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 1119A0 802A8390 8FA80030 */  lw    $t0, 0x30($sp)
/* 1119A4 802A8394 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 1119A8 802A8398 3C190064 */  lui   $t9, %hi(_other_texturesSegmentRomStart) # $t9, 0x64
/* 1119AC 802A839C 3C098015 */  lui   $t1, %hi(D_8014EF58) # $t1, 0x8015
/* 1119B0 802A83A0 2529EF58 */  addiu $t1, %lo(D_8014EF58) # addiu $t1, $t1, -0x10a8
/* 1119B4 802A83A4 27391F70 */  addiu $t9, %lo(_other_texturesSegmentRomStart) # addiu $t9, $t9, 0x1f70
/* 1119B8 802A83A8 3C048015 */  lui   $a0, %hi(D_8014F0A0) # $a0, 0x8015
/* 1119BC 802A83AC 01E1C024 */  and   $t8, $t7, $at
/* 1119C0 802A83B0 03193821 */  addu  $a3, $t8, $t9
/* 1119C4 802A83B4 2484F0A0 */  addiu $a0, %lo(D_8014F0A0) # addiu $a0, $a0, -0xf60
/* 1119C8 802A83B8 AFA90018 */  sw    $t1, 0x18($sp)
/* 1119CC 802A83BC 00002825 */  move  $a1, $zero
/* 1119D0 802A83C0 00003025 */  move  $a2, $zero
/* 1119D4 802A83C4 AFB00014 */  sw    $s0, 0x14($sp)
/* 1119D8 802A83C8 0C03370C */  jal   osPiStartDma
/* 1119DC 802A83CC AFA80010 */   sw    $t0, 0x10($sp)
/* 1119E0 802A83D0 3C048015 */  lui   $a0, %hi(D_8014EF58) # $a0, 0x8015
/* 1119E4 802A83D4 3C058015 */  lui   $a1, %hi(D_8014F098) # $a1, 0x8015
/* 1119E8 802A83D8 24A5F098 */  addiu $a1, %lo(D_8014F098) # addiu $a1, $a1, -0xf68
/* 1119EC 802A83DC 2484EF58 */  addiu $a0, %lo(D_8014EF58) # addiu $a0, $a0, -0x10a8
/* 1119F0 802A83E0 0C0335D4 */  jal   osRecvMesg
/* 1119F4 802A83E4 24060001 */   li    $a2, 1
/* 1119F8 802A83E8 8FA40030 */  lw    $a0, 0x30($sp)
/* 1119FC 802A83EC 0C01000C */  jal   func_80040030
/* 111A00 802A83F0 8FA50034 */   lw    $a1, 0x34($sp)
/* 111A04 802A83F4 3C0A8016 */  lui   $t2, %hi(gPrevLoadedAddress) # $t2, 0x8016
/* 111A08 802A83F8 8D4AF728 */  lw    $t2, %lo(gPrevLoadedAddress)($t2)
/* 111A0C 802A83FC 8FBF002C */  lw    $ra, 0x2c($sp)
/* 111A10 802A8400 3C018016 */  lui   $at, %hi(gPrevLoadedAddress) # $at, 0x8016
/* 111A14 802A8404 01505821 */  addu  $t3, $t2, $s0
/* 111A18 802A8408 8FB00028 */  lw    $s0, 0x28($sp)
/* 111A1C 802A840C 8FA20034 */  lw    $v0, 0x34($sp)
/* 111A20 802A8410 AC2BF728 */  sw    $t3, %lo(gPrevLoadedAddress)($at)
/* 111A24 802A8414 03E00008 */  jr    $ra
/* 111A28 802A8418 27BD0040 */   addiu $sp, $sp, 0x40

/* 111A2C 802A841C 3C028016 */  lui   $v0, %hi(gPrevLoadedAddress) # $v0, 0x8016
/* 111A30 802A8420 8C42F728 */  lw    $v0, %lo(gPrevLoadedAddress)($v0)
/* 111A34 802A8424 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 111A38 802A8428 AFA40030 */  sw    $a0, 0x30($sp)
/* 111A3C 802A842C 2403FFF0 */  li    $v1, -16
/* 111A40 802A8430 24AE000F */  addiu $t6, $a1, 0xf
/* 111A44 802A8434 24CF000F */  addiu $t7, $a2, 0xf
/* 111A48 802A8438 00462021 */  addu  $a0, $v0, $a2
/* 111A4C 802A843C AFBF0024 */  sw    $ra, 0x24($sp)
/* 111A50 802A8440 01C32824 */  and   $a1, $t6, $v1
/* 111A54 802A8444 01E33024 */  and   $a2, $t7, $v1
/* 111A58 802A8448 AFA60038 */  sw    $a2, 0x38($sp)
/* 111A5C 802A844C AFA50034 */  sw    $a1, 0x34($sp)
/* 111A60 802A8450 AFA40028 */  sw    $a0, 0x28($sp)
/* 111A64 802A8454 0C0336E0 */  jal   osInvalDCache
/* 111A68 802A8458 AFA2002C */   sw    $v0, 0x2c($sp)
/* 111A6C 802A845C 8FB80030 */  lw    $t8, 0x30($sp)
/* 111A70 802A8460 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 111A74 802A8464 8FA90028 */  lw    $t1, 0x28($sp)
/* 111A78 802A8468 8FAA0034 */  lw    $t2, 0x34($sp)
/* 111A7C 802A846C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 111A80 802A8470 3C080064 */  lui   $t0, %hi(_other_texturesSegmentRomStart) # $t0, 0x64
/* 111A84 802A8474 3C0B8015 */  lui   $t3, %hi(D_8014EF58) # $t3, 0x8015
/* 111A88 802A8478 256BEF58 */  addiu $t3, %lo(D_8014EF58) # addiu $t3, $t3, -0x10a8
/* 111A8C 802A847C 25081F70 */  addiu $t0, %lo(_other_texturesSegmentRomStart) # addiu $t0, $t0, 0x1f70
/* 111A90 802A8480 3C048015 */  lui   $a0, %hi(D_8014F0A0) # $a0, 0x8015
/* 111A94 802A8484 0301C824 */  and   $t9, $t8, $at
/* 111A98 802A8488 03283821 */  addu  $a3, $t9, $t0
/* 111A9C 802A848C 2484F0A0 */  addiu $a0, %lo(D_8014F0A0) # addiu $a0, $a0, -0xf60
/* 111AA0 802A8490 AFAB0018 */  sw    $t3, 0x18($sp)
/* 111AA4 802A8494 00002825 */  move  $a1, $zero
/* 111AA8 802A8498 00003025 */  move  $a2, $zero
/* 111AAC 802A849C AFA90010 */  sw    $t1, 0x10($sp)
/* 111AB0 802A84A0 0C03370C */  jal   osPiStartDma
/* 111AB4 802A84A4 AFAA0014 */   sw    $t2, 0x14($sp)
/* 111AB8 802A84A8 3C048015 */  lui   $a0, %hi(D_8014EF58) # $a0, 0x8015
/* 111ABC 802A84AC 3C058015 */  lui   $a1, %hi(D_8014F098) # $a1, 0x8015
/* 111AC0 802A84B0 24A5F098 */  addiu $a1, %lo(D_8014F098) # addiu $a1, $a1, -0xf68
/* 111AC4 802A84B4 2484EF58 */  addiu $a0, %lo(D_8014EF58) # addiu $a0, $a0, -0x10a8
/* 111AC8 802A84B8 0C0335D4 */  jal   osRecvMesg
/* 111ACC 802A84BC 24060001 */   li    $a2, 1
/* 111AD0 802A84C0 8FA40028 */  lw    $a0, 0x28($sp)
/* 111AD4 802A84C4 0C01000C */  jal   func_80040030
/* 111AD8 802A84C8 8FA5002C */   lw    $a1, 0x2c($sp)
/* 111ADC 802A84CC 3C038016 */  lui   $v1, %hi(gPrevLoadedAddress) # $v1, 0x8016
/* 111AE0 802A84D0 2463F728 */  addiu $v1, %lo(gPrevLoadedAddress) # addiu $v1, $v1, -0x8d8
/* 111AE4 802A84D4 8C6C0000 */  lw    $t4, ($v1)
/* 111AE8 802A84D8 8FAD0038 */  lw    $t5, 0x38($sp)
/* 111AEC 802A84DC 8FBF0024 */  lw    $ra, 0x24($sp)
/* 111AF0 802A84E0 8FA2002C */  lw    $v0, 0x2c($sp)
/* 111AF4 802A84E4 018D7021 */  addu  $t6, $t4, $t5
/* 111AF8 802A84E8 AC6E0000 */  sw    $t6, ($v1)
/* 111AFC 802A84EC 03E00008 */  jr    $ra
/* 111B00 802A84F0 27BD0030 */   addiu $sp, $sp, 0x30
