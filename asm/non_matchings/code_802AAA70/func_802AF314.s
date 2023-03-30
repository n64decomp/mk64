glabel func_802AF314
/* 118924 802AF314 27BDFF58 */  addiu $sp, $sp, -0xa8
/* 118928 802AF318 3C0E8016 */  lui   $t6, %hi(D_8015F6E8) # $t6, 0x8016
/* 11892C 802AF31C 3C0F8016 */  lui   $t7, %hi(D_8015F6EA) # $t7, 0x8016
/* 118930 802AF320 3C188016 */  lui   $t8, %hi(D_8015F6F0) # $t8, 0x8016
/* 118934 802AF324 3C198016 */  lui   $t9, %hi(D_8015F6F2) # $t9, 0x8016
/* 118938 802AF328 85EFF6EA */  lh    $t7, %lo(D_8015F6EA)($t7)
/* 11893C 802AF32C 85CEF6E8 */  lh    $t6, %lo(D_8015F6E8)($t6)
/* 118940 802AF330 8739F6F2 */  lh    $t9, %lo(D_8015F6F2)($t9)
/* 118944 802AF334 8718F6F0 */  lh    $t8, %lo(D_8015F6F0)($t8)
/* 118948 802AF338 3C028015 */  lui   $v0, %hi(D_8014F110) # $v0, 0x8015
/* 11894C 802AF33C 3C038015 */  lui   $v1, %hi(gNumActors) # $v1, 0x8015
/* 118950 802AF340 AFBF0044 */  sw    $ra, 0x44($sp)
/* 118954 802AF344 AFBE0040 */  sw    $fp, 0x40($sp)
/* 118958 802AF348 AFB7003C */  sw    $s7, 0x3c($sp)
/* 11895C 802AF34C AFB60038 */  sw    $s6, 0x38($sp)
/* 118960 802AF350 AFB50034 */  sw    $s5, 0x34($sp)
/* 118964 802AF354 AFB40030 */  sw    $s4, 0x30($sp)
/* 118968 802AF358 AFB3002C */  sw    $s3, 0x2c($sp)
/* 11896C 802AF35C AFB20028 */  sw    $s2, 0x28($sp)
/* 118970 802AF360 AFB10024 */  sw    $s1, 0x24($sp)
/* 118974 802AF364 AFB00020 */  sw    $s0, 0x20($sp)
/* 118978 802AF368 24630110 */  addiu $v1, %lo(gNumActors) # addiu $v1, $v1, 0x110
/* 11897C 802AF36C 2442F110 */  addiu $v0, %lo(D_8014F110) # addiu $v0, $v0, -0xef0
/* 118980 802AF370 01CF2023 */  subu  $a0, $t6, $t7
/* 118984 802AF374 03192823 */  subu  $a1, $t8, $t9
.L802AF378:
/* 118988 802AF378 24420010 */  addiu $v0, $v0, 0x10
/* 11898C 802AF37C A440FFF6 */  sh    $zero, -0xa($v0)
/* 118990 802AF380 A440FFFA */  sh    $zero, -6($v0)
/* 118994 802AF384 A440FFFE */  sh    $zero, -2($v0)
/* 118998 802AF388 1443FFFB */  bne   $v0, $v1, .L802AF378
/* 11899C 802AF38C A440FFF2 */   sh    $zero, -0xe($v0)
/* 1189A0 802AF390 3C148016 */  lui   $s4, %hi(D_8015F58A) # $s4, 0x8016
/* 1189A4 802AF394 2694F58A */  addiu $s4, %lo(D_8015F58A) # addiu $s4, $s4, -0xa76
/* 1189A8 802AF398 A6800000 */  sh    $zero, ($s4)
/* 1189AC 802AF39C 3C088016 */  lui   $t0, %hi(gPrevLoadedAddress) # $t0, 0x8016
/* 1189B0 802AF3A0 8D08F728 */  lw    $t0, %lo(gPrevLoadedAddress)($t0)
/* 1189B4 802AF3A4 3C018016 */  lui   $at, %hi(D_8015F584) # $at, 0x8016
/* 1189B8 802AF3A8 3C038016 */  lui   $v1, %hi(D_8015F588) # $v1, 0x8016
/* 1189BC 802AF3AC AC28F584 */  sw    $t0, %lo(D_8015F584)($at)
/* 1189C0 802AF3B0 9463F588 */  lhu   $v1, %lo(D_8015F588)($v1)
/* 1189C4 802AF3B4 0000B825 */  move  $s7, $zero
/* 1189C8 802AF3B8 04810003 */  bgez  $a0, .L802AF3C8
/* 1189CC 802AF3BC 0004B143 */   sra   $s6, $a0, 5
/* 1189D0 802AF3C0 2481001F */  addiu $at, $a0, 0x1f
/* 1189D4 802AF3C4 0001B143 */  sra   $s6, $at, 5
.L802AF3C8:
/* 1189D8 802AF3C8 04A10003 */  bgez  $a1, .L802AF3D8
/* 1189DC 802AF3CC 0005F143 */   sra   $fp, $a1, 5
/* 1189E0 802AF3D0 24A1001F */  addiu $at, $a1, 0x1f
/* 1189E4 802AF3D4 0001F143 */  sra   $fp, $at, 5
.L802AF3D8:
/* 1189E8 802AF3D8 03D70019 */  multu $fp, $s7
/* 1189EC 802AF3DC 0000A825 */  move  $s5, $zero
/* 1189F0 802AF3E0 00004812 */  mflo  $t1
/* 1189F4 802AF3E4 AFA9004C */  sw    $t1, 0x4c($sp)
/* 1189F8 802AF3E8 00000000 */  nop   
.L802AF3EC:
/* 1189FC 802AF3EC 02D50019 */  multu $s6, $s5
/* 118A00 802AF3F0 3C0A8016 */  lui   $t2, %hi(D_8015F6EA) # $t2, 0x8016
/* 118A04 802AF3F4 3C0E8016 */  lui   $t6, %hi(D_8015F6F2) # $t6, 0x8016
/* 118A08 802AF3F8 854AF6EA */  lh    $t2, %lo(D_8015F6EA)($t2)
/* 118A0C 802AF3FC 85CEF6F2 */  lh    $t6, %lo(D_8015F6F2)($t6)
/* 118A10 802AF400 8FAF004C */  lw    $t7, 0x4c($sp)
/* 118A14 802AF404 00008025 */  move  $s0, $zero
/* 118A18 802AF408 00009825 */  move  $s3, $zero
/* 118A1C 802AF40C 01CF9021 */  addu  $s2, $t6, $t7
/* 118A20 802AF410 2652FFEC */  addiu $s2, $s2, -0x14
/* 118A24 802AF414 00005812 */  mflo  $t3
/* 118A28 802AF418 014B8821 */  addu  $s1, $t2, $t3
/* 118A2C 802AF41C 2631FFEC */  addiu $s1, $s1, -0x14
/* 118A30 802AF420 00116400 */  sll   $t4, $s1, 0x10
/* 118A34 802AF424 0012C400 */  sll   $t8, $s2, 0x10
/* 118A38 802AF428 000C8C03 */  sra   $s1, $t4, 0x10
/* 118A3C 802AF42C 18600042 */  blez  $v1, .L802AF538
/* 118A40 802AF430 00189403 */   sra   $s2, $t8, 0x10
.L802AF434:
/* 118A44 802AF434 3C088016 */  lui   $t0, %hi(D_8015F580) # $t0, 0x8016
/* 118A48 802AF438 8D08F580 */  lw    $t0, %lo(D_8015F580)($t0)
/* 118A4C 802AF43C 025E3821 */  addu  $a3, $s2, $fp
/* 118A50 802AF440 24E70028 */  addiu $a3, $a3, 0x28
/* 118A54 802AF444 02681021 */  addu  $v0, $s3, $t0
/* 118A58 802AF448 8449000E */  lh    $t1, 0xe($v0)
/* 118A5C 802AF44C 0132082A */  slt   $at, $t1, $s2
/* 118A60 802AF450 54200036 */  bnel  $at, $zero, .L802AF52C
/* 118A64 802AF454 26100001 */   addiu $s0, $s0, 1
/* 118A68 802AF458 844C0008 */  lh    $t4, 8($v0)
/* 118A6C 802AF45C 00075400 */  sll   $t2, $a3, 0x10
/* 118A70 802AF460 000A3C03 */  sra   $a3, $t2, 0x10
/* 118A74 802AF464 00EC082A */  slt   $at, $a3, $t4
/* 118A78 802AF468 54200030 */  bnel  $at, $zero, .L802AF52C
/* 118A7C 802AF46C 26100001 */   addiu $s0, $s0, 1
/* 118A80 802AF470 844D000A */  lh    $t5, 0xa($v0)
/* 118A84 802AF474 02362821 */  addu  $a1, $s1, $s6
/* 118A88 802AF478 24A50028 */  addiu $a1, $a1, 0x28
/* 118A8C 802AF47C 01B1082A */  slt   $at, $t5, $s1
/* 118A90 802AF480 5420002A */  bnel  $at, $zero, .L802AF52C
/* 118A94 802AF484 26100001 */   addiu $s0, $s0, 1
/* 118A98 802AF488 84580004 */  lh    $t8, 4($v0)
/* 118A9C 802AF48C 00057400 */  sll   $t6, $a1, 0x10
/* 118AA0 802AF490 000E2C03 */  sra   $a1, $t6, 0x10
/* 118AA4 802AF494 00B8082A */  slt   $at, $a1, $t8
/* 118AA8 802AF498 14200023 */  bnez  $at, .L802AF528
/* 118AAC 802AF49C 00112400 */   sll   $a0, $s1, 0x10
/* 118AB0 802AF4A0 00123400 */  sll   $a2, $s2, 0x10
/* 118AB4 802AF4A4 00064403 */  sra   $t0, $a2, 0x10
/* 118AB8 802AF4A8 0004CC03 */  sra   $t9, $a0, 0x10
/* 118ABC 802AF4AC 03202025 */  move  $a0, $t9
/* 118AC0 802AF4B0 01003025 */  move  $a2, $t0
/* 118AC4 802AF4B4 0C0ABC3F */  jal   func_802AF0FC
/* 118AC8 802AF4B8 AFB00010 */   sw    $s0, 0x10($sp)
/* 118ACC 802AF4BC 24010001 */  li    $at, 1
/* 118AD0 802AF4C0 14410017 */  bne   $v0, $at, .L802AF520
/* 118AD4 802AF4C4 00174940 */   sll   $t1, $s7, 5
/* 118AD8 802AF4C8 01355021 */  addu  $t2, $t1, $s5
/* 118ADC 802AF4CC 3C0C8015 */  lui   $t4, %hi(D_8014F110) # $t4, 0x8015
/* 118AE0 802AF4D0 258CF110 */  addiu $t4, %lo(D_8014F110) # addiu $t4, $t4, -0xef0
/* 118AE4 802AF4D4 000A5880 */  sll   $t3, $t2, 2
/* 118AE8 802AF4D8 016C1021 */  addu  $v0, $t3, $t4
/* 118AEC 802AF4DC 94430002 */  lhu   $v1, 2($v0)
/* 118AF0 802AF4E0 3C0F8016 */  lui   $t7, %hi(D_8015F584) # $t7, 0x8016
/* 118AF4 802AF4E4 54600005 */  bnel  $v1, $zero, .L802AF4FC
/* 118AF8 802AF4E8 246E0001 */   addiu $t6, $v1, 1
/* 118AFC 802AF4EC 968D0000 */  lhu   $t5, ($s4)
/* 118B00 802AF4F0 94430002 */  lhu   $v1, 2($v0)
/* 118B04 802AF4F4 A44D0000 */  sh    $t5, ($v0)
/* 118B08 802AF4F8 246E0001 */  addiu $t6, $v1, 1
.L802AF4FC:
/* 118B0C 802AF4FC 96980000 */  lhu   $t8, ($s4)
/* 118B10 802AF500 A44E0002 */  sh    $t6, 2($v0)
/* 118B14 802AF504 8DEFF584 */  lw    $t7, %lo(D_8015F584)($t7)
/* 118B18 802AF508 0018C840 */  sll   $t9, $t8, 1
/* 118B1C 802AF50C 01F94021 */  addu  $t0, $t7, $t9
/* 118B20 802AF510 A5100000 */  sh    $s0, ($t0)
/* 118B24 802AF514 96890000 */  lhu   $t1, ($s4)
/* 118B28 802AF518 252A0001 */  addiu $t2, $t1, 1
/* 118B2C 802AF51C A68A0000 */  sh    $t2, ($s4)
.L802AF520:
/* 118B30 802AF520 3C038016 */  lui   $v1, %hi(D_8015F588) # $v1, 0x8016
/* 118B34 802AF524 9463F588 */  lhu   $v1, %lo(D_8015F588)($v1)
.L802AF528:
/* 118B38 802AF528 26100001 */  addiu $s0, $s0, 1
.L802AF52C:
/* 118B3C 802AF52C 0203082A */  slt   $at, $s0, $v1
/* 118B40 802AF530 1420FFC0 */  bnez  $at, .L802AF434
/* 118B44 802AF534 2673002C */   addiu $s3, $s3, 0x2c
.L802AF538:
/* 118B48 802AF538 26B50001 */  addiu $s5, $s5, 1
/* 118B4C 802AF53C 24010020 */  li    $at, 32
/* 118B50 802AF540 16A1FFAA */  bne   $s5, $at, .L802AF3EC
/* 118B54 802AF544 00000000 */   nop   
/* 118B58 802AF548 26F70001 */  addiu $s7, $s7, 1
/* 118B5C 802AF54C 24010020 */  li    $at, 32
/* 118B60 802AF550 16E1FFA1 */  bne   $s7, $at, .L802AF3D8
/* 118B64 802AF554 00000000 */   nop   
/* 118B68 802AF558 8FBF0044 */  lw    $ra, 0x44($sp)
/* 118B6C 802AF55C 8FB00020 */  lw    $s0, 0x20($sp)
/* 118B70 802AF560 8FB10024 */  lw    $s1, 0x24($sp)
/* 118B74 802AF564 8FB20028 */  lw    $s2, 0x28($sp)
/* 118B78 802AF568 8FB3002C */  lw    $s3, 0x2c($sp)
/* 118B7C 802AF56C 8FB40030 */  lw    $s4, 0x30($sp)
/* 118B80 802AF570 8FB50034 */  lw    $s5, 0x34($sp)
/* 118B84 802AF574 8FB60038 */  lw    $s6, 0x38($sp)
/* 118B88 802AF578 8FB7003C */  lw    $s7, 0x3c($sp)
/* 118B8C 802AF57C 8FBE0040 */  lw    $fp, 0x40($sp)
/* 118B90 802AF580 03E00008 */  jr    $ra
/* 118B94 802AF584 27BD00A8 */   addiu $sp, $sp, 0xa8
