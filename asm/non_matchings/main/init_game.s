glabel init_game
/* 001E64 80001264 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 001E68 80001268 AFBF0024 */  sw    $ra, 0x24($sp)
/* 001E6C 8000126C 0C000433 */  jal   func_800010CC
/* 001E70 80001270 00000000 */   nop   
/* 001E74 80001274 3C0E8028 */  lui   $t6, (0x8028DF00 >> 16) # lui $t6, 0x8028
/* 001E78 80001278 35CEDF00 */  ori   $t6, (0x8028DF00 & 0xFFFF) # ori $t6, $t6, 0xdf00
/* 001E7C 8000127C 3C018016 */  lui   $at, %hi(gHeapEndPtr) # $at, 0x8016
/* 001E80 80001280 AC2EF72C */  sw    $t6, %lo(gHeapEndPtr)($at)
/* 001E84 80001284 00002025 */  move  $a0, $zero
/* 001E88 80001288 0C0A9EE5 */  jal   set_segment_base_addr
/* 001E8C 8000128C 3C058000 */   lui   $a1, 0x8000
/* 001E90 80001290 3C048019 */  lui   $a0, %hi(D_801978D0) # $a0, 0x8019
/* 001E94 80001294 3C058024 */  lui   $a1, (0x80242F00 >> 16) # lui $a1, 0x8024
/* 001E98 80001298 34A52F00 */  ori   $a1, (0x80242F00 & 0xFFFF) # ori $a1, $a1, 0x2f00
/* 001E9C 8000129C 0C0A9F3C */  jal   func_802A7CF0
/* 001EA0 800012A0 248478D0 */   addiu $a0, %lo(D_801978D0) # addiu $a0, $a0, 0x78d0
/* 001EA4 800012A4 0C0002FB */  jal   func_80000BEC
/* 001EA8 800012A8 00000000 */   nop   
/* 001EAC 800012AC 3C04802B */  lui   $a0, (0x802BA370 >> 16) # lui $a0, 0x802b
/* 001EB0 800012B0 3484A370 */  ori   $a0, (0x802BA370 & 0xFFFF) # ori $a0, $a0, 0xa370
/* 001EB4 800012B4 0C0336E0 */  jal   osInvalDCache
/* 001EB8 800012B8 24055810 */   li    $a1, 22544
/* 001EBC 800012BC 3C0F802B */  lui   $t7, (0x802BA370 >> 16) # lui $t7, 0x802b
/* 001EC0 800012C0 3C198015 */  lui   $t9, %hi(D_8014EF58) # $t9, 0x8015
/* 001EC4 800012C4 2739EF58 */  addiu $t9, %lo(D_8014EF58) # addiu $t9, $t9, -0x10a8
/* 001EC8 800012C8 35EFA370 */  ori   $t7, (0x802BA370 & 0xFFFF) # ori $t7, $t7, 0xa370
/* 001ECC 800012CC 3C048015 */  lui   $a0, %hi(D_8014F0A0) # $a0, 0x8015
/* 001ED0 800012D0 3C070072 */  lui   $a3, %hi(_data_802BA370SegmentRomStart) # $a3, 0x72
/* 001ED4 800012D4 24185810 */  li    $t8, 22544
/* 001ED8 800012D8 AFB80014 */  sw    $t8, 0x14($sp)
/* 001EDC 800012DC 24E74220 */  addiu $a3, %lo(_data_802BA370SegmentRomStart) # addiu $a3, $a3, 0x4220
/* 001EE0 800012E0 2484F0A0 */  addiu $a0, %lo(D_8014F0A0) # addiu $a0, $a0, -0xf60
/* 001EE4 800012E4 AFAF0010 */  sw    $t7, 0x10($sp)
/* 001EE8 800012E8 AFB90018 */  sw    $t9, 0x18($sp)
/* 001EEC 800012EC 00002825 */  move  $a1, $zero
/* 001EF0 800012F0 0C03370C */  jal   osPiStartDma
/* 001EF4 800012F4 00003025 */   move  $a2, $zero
/* 001EF8 800012F8 3C048015 */  lui   $a0, %hi(D_8014EF58) # $a0, 0x8015
/* 001EFC 800012FC 3C058015 */  lui   $a1, %hi(D_8014F098) # $a1, 0x8015
/* 001F00 80001300 24A5F098 */  addiu $a1, %lo(D_8014F098) # addiu $a1, $a1, -0xf68
/* 001F04 80001304 2484EF58 */  addiu $a0, %lo(D_8014EF58) # addiu $a0, $a0, -0x10a8
/* 001F08 80001308 0C0335D4 */  jal   osRecvMesg
/* 001F0C 8000130C 24060001 */   li    $a2, 1
/* 001F10 80001310 3C040013 */  lui   $a0, %hi(_data_segment2SegmentRomStart) # $a0, 0x13
/* 001F14 80001314 3C050013 */  lui   $a1, %hi(_data_segment2SegmentRomEnd) # $a1, 0x13
/* 001F18 80001318 24A52B50 */  addiu $a1, %lo(_data_segment2SegmentRomEnd) # addiu $a1, $a1, 0x2b50
/* 001F1C 8000131C 0C0A9F5C */  jal   func_802A7D70
/* 001F20 80001320 2484AAE0 */   addiu $a0, %lo(_data_segment2SegmentRomStart) # addiu $a0, $a0, -0x5520
/* 001F24 80001324 24040002 */  li    $a0, 2
/* 001F28 80001328 0C0A9EE5 */  jal   set_segment_base_addr
/* 001F2C 8000132C 00402825 */   move  $a1, $v0
/* 001F30 80001330 3C070013 */  lui   $a3, %hi(_common_texturesSegmentRomStart) # $a3, 0x13
/* 001F34 80001334 3C090014 */  lui   $t1, %hi(_common_texturesSegmentRomEnd) # $t1, 0x14
/* 001F38 80001338 25295470 */  addiu $t1, %lo(_common_texturesSegmentRomEnd) # addiu $t1, $t1, 0x5470
/* 001F3C 8000133C 24E72B50 */  addiu $a3, %lo(_common_texturesSegmentRomStart) # addiu $a3, $a3, 0x2b50
/* 001F40 80001340 01271823 */  subu  $v1, $t1, $a3
/* 001F44 80001344 2463000F */  addiu $v1, $v1, 0xf
/* 001F48 80001348 2401FFF0 */  li    $at, -16
/* 001F4C 8000134C 3C0B8028 */  lui   $t3, (0x8028DF00 >> 16) # lui $t3, 0x8028
/* 001F50 80001350 356BDF00 */  ori   $t3, (0x8028DF00 & 0xFFFF) # ori $t3, $t3, 0xdf00
/* 001F54 80001354 00615024 */  and   $t2, $v1, $at
/* 001F58 80001358 3C0C8015 */  lui   $t4, %hi(D_8014EF58) # $t4, 0x8015
/* 001F5C 8000135C 258CEF58 */  addiu $t4, %lo(D_8014EF58) # addiu $t4, $t4, -0x10a8
/* 001F60 80001360 016A4023 */  subu  $t0, $t3, $t2
/* 001F64 80001364 3C048015 */  lui   $a0, %hi(D_8014F0A0) # $a0, 0x8015
/* 001F68 80001368 2484F0A0 */  addiu $a0, %lo(D_8014F0A0) # addiu $a0, $a0, -0xf60
/* 001F6C 8000136C AFA80010 */  sw    $t0, 0x10($sp)
/* 001F70 80001370 AFA8002C */  sw    $t0, 0x2c($sp)
/* 001F74 80001374 AFAC0018 */  sw    $t4, 0x18($sp)
/* 001F78 80001378 01401825 */  move  $v1, $t2
/* 001F7C 8000137C AFAA0014 */  sw    $t2, 0x14($sp)
/* 001F80 80001380 00002825 */  move  $a1, $zero
/* 001F84 80001384 0C03370C */  jal   osPiStartDma
/* 001F88 80001388 00003025 */   move  $a2, $zero
/* 001F8C 8000138C 3C048015 */  lui   $a0, %hi(D_8014EF58) # $a0, 0x8015
/* 001F90 80001390 3C058015 */  lui   $a1, %hi(D_8014F098) # $a1, 0x8015
/* 001F94 80001394 24A5F098 */  addiu $a1, %lo(D_8014F098) # addiu $a1, $a1, -0xf68
/* 001F98 80001398 2484EF58 */  addiu $a0, %lo(D_8014EF58) # addiu $a0, $a0, -0x10a8
/* 001F9C 8000139C 0C0335D4 */  jal   osRecvMesg
/* 001FA0 800013A0 24060001 */   li    $a2, 1
/* 001FA4 800013A4 8FA4002C */  lw    $a0, 0x2c($sp)
/* 001FA8 800013A8 3C058016 */  lui   $a1, %hi(gPrevLoadedAddress) # $a1, 0x8016
/* 001FAC 800013AC 8CA5F728 */  lw    $a1, %lo(gPrevLoadedAddress)($a1)
/* 001FB0 800013B0 8C830004 */  lw    $v1, 4($a0)
/* 001FB4 800013B4 2401FFF0 */  li    $at, -16
/* 001FB8 800013B8 AFA50038 */  sw    $a1, 0x38($sp)
/* 001FBC 800013BC 2463000F */  addiu $v1, $v1, 0xf
/* 001FC0 800013C0 00616824 */  and   $t5, $v1, $at
/* 001FC4 800013C4 0C010034 */  jal   mio0decode
/* 001FC8 800013C8 AFAD0040 */   sw    $t5, 0x40($sp)
/* 001FCC 800013CC 8FA50038 */  lw    $a1, 0x38($sp)
/* 001FD0 800013D0 0C0A9EE5 */  jal   set_segment_base_addr
/* 001FD4 800013D4 2404000D */   li    $a0, 13
/* 001FD8 800013D8 3C048016 */  lui   $a0, %hi(gPrevLoadedAddress) # $a0, 0x8016
/* 001FDC 800013DC 2484F728 */  addiu $a0, %lo(gPrevLoadedAddress) # addiu $a0, $a0, -0x8d8
/* 001FE0 800013E0 8FA30040 */  lw    $v1, 0x40($sp)
/* 001FE4 800013E4 8C8E0000 */  lw    $t6, ($a0)
/* 001FE8 800013E8 8FBF0024 */  lw    $ra, 0x24($sp)
/* 001FEC 800013EC 3C018016 */  lui   $at, %hi(D_8015F734) # $at, 0x8016
/* 001FF0 800013F0 01C37821 */  addu  $t7, $t6, $v1
/* 001FF4 800013F4 AC8F0000 */  sw    $t7, ($a0)
/* 001FF8 800013F8 AC2FF734 */  sw    $t7, %lo(D_8015F734)($at)
/* 001FFC 800013FC 03E00008 */  jr    $ra
/* 002000 80001400 27BD0050 */   addiu $sp, $sp, 0x50
