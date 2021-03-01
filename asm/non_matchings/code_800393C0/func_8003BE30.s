glabel func_8003BE30
/* 03CA30 8003BE30 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 03CA34 8003BE34 3C01800F */  lui   $at, %hi(D_800EDE20) # $at, 0x800f
/* 03CA38 8003BE38 3C0E8019 */  lui   $t6, %hi(D_8018D9D0) # $t6, 0x8019
/* 03CA3C 8003BE3C 81CED9D0 */  lb    $t6, %lo(D_8018D9D0)($t6)
/* 03CA40 8003BE40 C424DE20 */  lwc1  $f4, %lo(D_800EDE20)($at)
/* 03CA44 8003BE44 44803000 */  mtc1  $zero, $f6
/* 03CA48 8003BE48 AFBF0024 */  sw    $ra, 0x24($sp)
/* 03CA4C 8003BE4C 3C04800E */  lui   $a0, %hi(D_800DC4DC) # $a0, 0x800e
/* 03CA50 8003BE50 3C06C52D */  lui   $a2, (0xC52D2C62 >> 16) # lui $a2, 0xc52d
/* 03CA54 8003BE54 3C07C3AC */  lui   $a3, (0xC3AC97F0 >> 16) # lui $a3, 0xc3ac
/* 03CA58 8003BE58 240FB000 */  li    $t7, -20480
/* 03CA5C 8003BE5C AFAF001C */  sw    $t7, 0x1c($sp)
/* 03CA60 8003BE60 34E797F0 */  ori   $a3, (0xC3AC97F0 & 0xFFFF) # ori $a3, $a3, 0x97f0
/* 03CA64 8003BE64 34C62C62 */  ori   $a2, (0xC52D2C62 & 0xFFFF) # ori $a2, $a2, 0x2c62
/* 03CA68 8003BE68 8C84C4DC */  lw    $a0, %lo(D_800DC4DC)($a0)
/* 03CA6C 8003BE6C 00002825 */  move  $a1, $zero
/* 03CA70 8003BE70 AFAE0018 */  sw    $t6, 0x18($sp)
/* 03CA74 8003BE74 E7A40010 */  swc1  $f4, 0x10($sp)
/* 03CA78 8003BE78 0C00E4F0 */  jal   spawn_player
/* 03CA7C 8003BE7C E7A60014 */   swc1  $f6, 0x14($sp)
/* 03CA80 8003BE80 3C01800F */  lui   $at, %hi(D_800EDE24) # $at, 0x800f
/* 03CA84 8003BE84 C428DE24 */  lwc1  $f8, %lo(D_800EDE24)($at)
/* 03CA88 8003BE88 3C01800F */  lui   $at, %hi(D_800EDE28) # $at, 0x800f
/* 03CA8C 8003BE8C 3C188019 */  lui   $t8, %hi(D_8018D9D1) # $t8, 0x8019
/* 03CA90 8003BE90 8318D9D1 */  lb    $t8, %lo(D_8018D9D1)($t8)
/* 03CA94 8003BE94 C42ADE28 */  lwc1  $f10, %lo(D_800EDE28)($at)
/* 03CA98 8003BE98 3C04800E */  lui   $a0, %hi(D_800DC4E0) # $a0, 0x800e
/* 03CA9C 8003BE9C 3C06C566 */  lui   $a2, (0xC566B819 >> 16) # lui $a2, 0xc566
/* 03CAA0 8003BEA0 3C07C0DA */  lui   $a3, (0xC0DA4DD3 >> 16) # lui $a3, 0xc0da
/* 03CAA4 8003BEA4 2419B000 */  li    $t9, -20480
/* 03CAA8 8003BEA8 AFB9001C */  sw    $t9, 0x1c($sp)
/* 03CAAC 8003BEAC 34E74DD3 */  ori   $a3, (0xC0DA4DD3 & 0xFFFF) # ori $a3, $a3, 0x4dd3
/* 03CAB0 8003BEB0 34C6B819 */  ori   $a2, (0xC566B819 & 0xFFFF) # ori $a2, $a2, 0xb819
/* 03CAB4 8003BEB4 8C84C4E0 */  lw    $a0, %lo(D_800DC4E0)($a0)
/* 03CAB8 8003BEB8 24050001 */  li    $a1, 1
/* 03CABC 8003BEBC E7A80010 */  swc1  $f8, 0x10($sp)
/* 03CAC0 8003BEC0 AFB80018 */  sw    $t8, 0x18($sp)
/* 03CAC4 8003BEC4 0C00E4F0 */  jal   spawn_player
/* 03CAC8 8003BEC8 E7AA0014 */   swc1  $f10, 0x14($sp)
/* 03CACC 8003BECC 3C01800F */  lui   $at, %hi(D_800EDE2C) # $at, 0x800f
/* 03CAD0 8003BED0 C430DE2C */  lwc1  $f16, %lo(D_800EDE2C)($at)
/* 03CAD4 8003BED4 3C01800F */  lui   $at, %hi(D_800EDE30) # $at, 0x800f
/* 03CAD8 8003BED8 3C088019 */  lui   $t0, %hi(D_8018D9D2) # $t0, 0x8019
/* 03CADC 8003BEDC 8108D9D2 */  lb    $t0, %lo(D_8018D9D2)($t0)
/* 03CAE0 8003BEE0 C432DE30 */  lwc1  $f18, %lo(D_800EDE30)($at)
/* 03CAE4 8003BEE4 3C04800E */  lui   $a0, %hi(D_800DC4E4) # $a0, 0x800e
/* 03CAE8 8003BEE8 3C06C559 */  lui   $a2, (0xC5593073 >> 16) # lui $a2, 0xc559
/* 03CAEC 8003BEEC 3C07C479 */  lui   $a3, (0xC4799F0A >> 16) # lui $a3, 0xc479
/* 03CAF0 8003BEF0 2409B000 */  li    $t1, -20480
/* 03CAF4 8003BEF4 AFA9001C */  sw    $t1, 0x1c($sp)
/* 03CAF8 8003BEF8 34E79F0A */  ori   $a3, (0xC4799F0A & 0xFFFF) # ori $a3, $a3, 0x9f0a
/* 03CAFC 8003BEFC 34C63073 */  ori   $a2, (0xC5593073 & 0xFFFF) # ori $a2, $a2, 0x3073
/* 03CB00 8003BF00 8C84C4E4 */  lw    $a0, %lo(D_800DC4E4)($a0)
/* 03CB04 8003BF04 24050002 */  li    $a1, 2
/* 03CB08 8003BF08 E7B00010 */  swc1  $f16, 0x10($sp)
/* 03CB0C 8003BF0C AFA80018 */  sw    $t0, 0x18($sp)
/* 03CB10 8003BF10 0C00E4F0 */  jal   spawn_player
/* 03CB14 8003BF14 E7B20014 */   swc1  $f18, 0x14($sp)
/* 03CB18 8003BF18 3C028028 */  lui   $v0, %hi(D_802874D8) # $v0, 0x8028
/* 03CB1C 8003BF1C 244274D8 */  addiu $v0, %lo(D_802874D8) # addiu $v0, $v0, 0x74d8
/* 03CB20 8003BF20 804A001D */  lb    $t2, 0x1d($v0)
/* 03CB24 8003BF24 3C04800E */  lui   $a0, 0x800e
/* 03CB28 8003BF28 24050003 */  li    $a1, 3
/* 03CB2C 8003BF2C 29410003 */  slti  $at, $t2, 3
/* 03CB30 8003BF30 14200015 */  bnez  $at, .L8003BF88
/* 03CB34 8003BF34 3C06C53D */   lui   $a2, 0xc53d
/* 03CB38 8003BF38 3C01800F */  lui   $at, %hi(D_800EDE34) # $at, 0x800f
/* 03CB3C 8003BF3C C424DE34 */  lwc1  $f4, %lo(D_800EDE34)($at)
/* 03CB40 8003BF40 3C01800F */  lui   $at, %hi(D_800EDE38) # $at, 0x800f
/* 03CB44 8003BF44 C426DE38 */  lwc1  $f6, %lo(D_800EDE38)($at)
/* 03CB48 8003BF48 804B001E */  lb    $t3, 0x1e($v0)
/* 03CB4C 8003BF4C 3C04800E */  lui   $a0, %hi(D_800DC4E8) # $a0, 0x800e
/* 03CB50 8003BF50 3C06C53D */  lui   $a2, (0xC53D1C5A >> 16) # lui $a2, 0xc53d
/* 03CB54 8003BF54 3C0742DC */  lui   $a3, (0x42DC13F8 >> 16) # lui $a3, 0x42dc
/* 03CB58 8003BF58 240CB000 */  li    $t4, -20480
/* 03CB5C 8003BF5C AFAC001C */  sw    $t4, 0x1c($sp)
/* 03CB60 8003BF60 34E713F8 */  ori   $a3, (0x42DC13F8 & 0xFFFF) # ori $a3, $a3, 0x13f8
/* 03CB64 8003BF64 34C61C5A */  ori   $a2, (0xC53D1C5A & 0xFFFF) # ori $a2, $a2, 0x1c5a
/* 03CB68 8003BF68 8C84C4E8 */  lw    $a0, %lo(D_800DC4E8)($a0)
/* 03CB6C 8003BF6C 24050003 */  li    $a1, 3
/* 03CB70 8003BF70 E7A40010 */  swc1  $f4, 0x10($sp)
/* 03CB74 8003BF74 E7A60014 */  swc1  $f6, 0x14($sp)
/* 03CB78 8003BF78 0C00E4F0 */  jal   spawn_player
/* 03CB7C 8003BF7C AFAB0018 */   sw    $t3, 0x18($sp)
/* 03CB80 8003BF80 10000011 */  b     .L8003BFC8
/* 03CB84 8003BF84 00000000 */   nop   
.L8003BF88:
/* 03CB88 8003BF88 3C01800F */  lui   $at, %hi(D_800EDE3C) # $at, 0x800f
/* 03CB8C 8003BF8C C428DE3C */  lwc1  $f8, %lo(D_800EDE3C)($at)
/* 03CB90 8003BF90 3C01800F */  lui   $at, %hi(D_800EDE40) # $at, 0x800f
/* 03CB94 8003BF94 3C0D8019 */  lui   $t5, %hi(D_8018D9D3) # $t5, 0x8019
/* 03CB98 8003BF98 81ADD9D3 */  lb    $t5, %lo(D_8018D9D3)($t5)
/* 03CB9C 8003BF9C C42ADE40 */  lwc1  $f10, %lo(D_800EDE40)($at)
/* 03CBA0 8003BFA0 3C0742DC */  lui   $a3, (0x42DC13F8 >> 16) # lui $a3, 0x42dc
/* 03CBA4 8003BFA4 240EB000 */  li    $t6, -20480
/* 03CBA8 8003BFA8 AFAE001C */  sw    $t6, 0x1c($sp)
/* 03CBAC 8003BFAC 34E713F8 */  ori   $a3, (0x42DC13F8 & 0xFFFF) # ori $a3, $a3, 0x13f8
/* 03CBB0 8003BFB0 8C84C4E8 */  lw    $a0, -0x3b18($a0)
/* 03CBB4 8003BFB4 34C61C5A */  ori   $a2, (0xC53D1C5A & 0xFFFF) # ori $a2, $a2, 0x1c5a
/* 03CBB8 8003BFB8 E7A80010 */  swc1  $f8, 0x10($sp)
/* 03CBBC 8003BFBC AFAD0018 */  sw    $t5, 0x18($sp)
/* 03CBC0 8003BFC0 0C00E4F0 */  jal   spawn_player
/* 03CBC4 8003BFC4 E7AA0014 */   swc1  $f10, 0x14($sp)
.L8003BFC8:
/* 03CBC8 8003BFC8 3C01800F */  lui   $at, %hi(D_800EDE44) # $at, 0x800f
/* 03CBCC 8003BFCC C430DE44 */  lwc1  $f16, %lo(D_800EDE44)($at)
/* 03CBD0 8003BFD0 44809000 */  mtc1  $zero, $f18
/* 03CBD4 8003BFD4 3C04800E */  lui   $a0, %hi(D_800DC4EC) # $a0, 0x800e
/* 03CBD8 8003BFD8 3C06C52D */  lui   $a2, (0xC52D2C62 >> 16) # lui $a2, 0xc52d
/* 03CBDC 8003BFDC 3C07C3AC */  lui   $a3, (0xC3AC97F0 >> 16) # lui $a3, 0xc3ac
/* 03CBE0 8003BFE0 240F7000 */  li    $t7, 28672
/* 03CBE4 8003BFE4 AFAF001C */  sw    $t7, 0x1c($sp)
/* 03CBE8 8003BFE8 34E797F0 */  ori   $a3, (0xC3AC97F0 & 0xFFFF) # ori $a3, $a3, 0x97f0
/* 03CBEC 8003BFEC 34C62C62 */  ori   $a2, (0xC52D2C62 & 0xFFFF) # ori $a2, $a2, 0x2c62
/* 03CBF0 8003BFF0 8C84C4EC */  lw    $a0, %lo(D_800DC4EC)($a0)
/* 03CBF4 8003BFF4 24050004 */  li    $a1, 4
/* 03CBF8 8003BFF8 AFA00018 */  sw    $zero, 0x18($sp)
/* 03CBFC 8003BFFC E7B00010 */  swc1  $f16, 0x10($sp)
/* 03CC00 8003C000 0C00E4F0 */  jal   spawn_player
/* 03CC04 8003C004 E7B20014 */   swc1  $f18, 0x14($sp)
/* 03CC08 8003C008 3C01800F */  lui   $at, %hi(D_800EDE48) # $at, 0x800f
/* 03CC0C 8003C00C C424DE48 */  lwc1  $f4, %lo(D_800EDE48)($at)
/* 03CC10 8003C010 3C01800F */  lui   $at, %hi(D_800EDE4C) # $at, 0x800f
/* 03CC14 8003C014 C426DE4C */  lwc1  $f6, %lo(D_800EDE4C)($at)
/* 03CC18 8003C018 3C04800E */  lui   $a0, %hi(D_800DC4F0) # $a0, 0x800e
/* 03CC1C 8003C01C 3C06C566 */  lui   $a2, (0xC566B819 >> 16) # lui $a2, 0xc566
/* 03CC20 8003C020 3C07C0DA */  lui   $a3, (0xC0DA4DD3 >> 16) # lui $a3, 0xc0da
/* 03CC24 8003C024 24187000 */  li    $t8, 28672
/* 03CC28 8003C028 AFB8001C */  sw    $t8, 0x1c($sp)
/* 03CC2C 8003C02C 34E74DD3 */  ori   $a3, (0xC0DA4DD3 & 0xFFFF) # ori $a3, $a3, 0x4dd3
/* 03CC30 8003C030 34C6B819 */  ori   $a2, (0xC566B819 & 0xFFFF) # ori $a2, $a2, 0xb819
/* 03CC34 8003C034 8C84C4F0 */  lw    $a0, %lo(D_800DC4F0)($a0)
/* 03CC38 8003C038 24050005 */  li    $a1, 5
/* 03CC3C 8003C03C AFA00018 */  sw    $zero, 0x18($sp)
/* 03CC40 8003C040 E7A40010 */  swc1  $f4, 0x10($sp)
/* 03CC44 8003C044 0C00E4F0 */  jal   spawn_player
/* 03CC48 8003C048 E7A60014 */   swc1  $f6, 0x14($sp)
/* 03CC4C 8003C04C 3C01800F */  lui   $at, %hi(D_800EDE50) # $at, 0x800f
/* 03CC50 8003C050 C428DE50 */  lwc1  $f8, %lo(D_800EDE50)($at)
/* 03CC54 8003C054 3C01800F */  lui   $at, %hi(D_800EDE54) # $at, 0x800f
/* 03CC58 8003C058 C42ADE54 */  lwc1  $f10, %lo(D_800EDE54)($at)
/* 03CC5C 8003C05C 3C04800E */  lui   $a0, %hi(D_800DC4F4) # $a0, 0x800e
/* 03CC60 8003C060 3C06C559 */  lui   $a2, (0xC5593073 >> 16) # lui $a2, 0xc559
/* 03CC64 8003C064 3C07C479 */  lui   $a3, (0xC4799F0A >> 16) # lui $a3, 0xc479
/* 03CC68 8003C068 24197000 */  li    $t9, 28672
/* 03CC6C 8003C06C AFB9001C */  sw    $t9, 0x1c($sp)
/* 03CC70 8003C070 34E79F0A */  ori   $a3, (0xC4799F0A & 0xFFFF) # ori $a3, $a3, 0x9f0a
/* 03CC74 8003C074 34C63073 */  ori   $a2, (0xC5593073 & 0xFFFF) # ori $a2, $a2, 0x3073
/* 03CC78 8003C078 8C84C4F4 */  lw    $a0, %lo(D_800DC4F4)($a0)
/* 03CC7C 8003C07C 24050006 */  li    $a1, 6
/* 03CC80 8003C080 AFA00018 */  sw    $zero, 0x18($sp)
/* 03CC84 8003C084 E7A80010 */  swc1  $f8, 0x10($sp)
/* 03CC88 8003C088 0C00E4F0 */  jal   spawn_player
/* 03CC8C 8003C08C E7AA0014 */   swc1  $f10, 0x14($sp)
/* 03CC90 8003C090 3C01800F */  lui   $at, %hi(D_800EDE58) # $at, 0x800f
/* 03CC94 8003C094 C430DE58 */  lwc1  $f16, %lo(D_800EDE58)($at)
/* 03CC98 8003C098 3C01800F */  lui   $at, %hi(D_800EDE5C) # $at, 0x800f
/* 03CC9C 8003C09C C432DE5C */  lwc1  $f18, %lo(D_800EDE5C)($at)
/* 03CCA0 8003C0A0 3C04800E */  lui   $a0, %hi(D_800DC4F8) # $a0, 0x800e
/* 03CCA4 8003C0A4 3C06C53D */  lui   $a2, (0xC53D1C5A >> 16) # lui $a2, 0xc53d
/* 03CCA8 8003C0A8 3C0742DC */  lui   $a3, (0x42DC13F8 >> 16) # lui $a3, 0x42dc
/* 03CCAC 8003C0AC 24087000 */  li    $t0, 28672
/* 03CCB0 8003C0B0 AFA8001C */  sw    $t0, 0x1c($sp)
/* 03CCB4 8003C0B4 34E713F8 */  ori   $a3, (0x42DC13F8 & 0xFFFF) # ori $a3, $a3, 0x13f8
/* 03CCB8 8003C0B8 34C61C5A */  ori   $a2, (0xC53D1C5A & 0xFFFF) # ori $a2, $a2, 0x1c5a
/* 03CCBC 8003C0BC 8C84C4F8 */  lw    $a0, %lo(D_800DC4F8)($a0)
/* 03CCC0 8003C0C0 24050007 */  li    $a1, 7
/* 03CCC4 8003C0C4 AFA00018 */  sw    $zero, 0x18($sp)
/* 03CCC8 8003C0C8 E7B00010 */  swc1  $f16, 0x10($sp)
/* 03CCCC 8003C0CC 0C00E4F0 */  jal   spawn_player
/* 03CCD0 8003C0D0 E7B20014 */   swc1  $f18, 0x14($sp)
/* 03CCD4 8003C0D4 3C018016 */  lui   $at, %hi(D_80164A28) # $at, 0x8016
/* 03CCD8 8003C0D8 0C00E6B9 */  jal   func_80039AE4
/* 03CCDC 8003C0DC AC204A28 */   sw    $zero, %lo(D_80164A28)($at)
/* 03CCE0 8003C0E0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 03CCE4 8003C0E4 27BD0028 */  addiu $sp, $sp, 0x28
/* 03CCE8 8003C0E8 03E00008 */  jr    $ra
/* 03CCEC 8003C0EC 00000000 */   nop   
