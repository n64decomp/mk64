glabel func_8004BD14
/* 04C914 8004BD14 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 04C918 8004BD18 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 04C91C 8004BD1C 27BDFF70 */  addiu $sp, $sp, -0x90
/* 04C920 8004BD20 8C620000 */  lw    $v0, ($v1)
/* 04C924 8004BD24 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04C928 8004BD28 AFA40090 */  sw    $a0, 0x90($sp)
/* 04C92C 8004BD2C 244E0008 */  addiu $t6, $v0, 8
/* 04C930 8004BD30 AFA50094 */  sw    $a1, 0x94($sp)
/* 04C934 8004BD34 AFA60098 */  sw    $a2, 0x98($sp)
/* 04C938 8004BD38 AFA7009C */  sw    $a3, 0x9c($sp)
/* 04C93C 8004BD3C AC6E0000 */  sw    $t6, ($v1)
/* 04C940 8004BD40 3C180D00 */  lui   $t8, %hi(D_0D007F38) # $t8, 0xd00
/* 04C944 8004BD44 27187F38 */  addiu $t8, %lo(D_0D007F38) # addiu $t8, $t8, 0x7f38
/* 04C948 8004BD48 3C0F0600 */  lui   $t7, 0x600
/* 04C94C 8004BD4C AC4F0000 */  sw    $t7, ($v0)
/* 04C950 8004BD50 AC580004 */  sw    $t8, 4($v0)
/* 04C954 8004BD54 8C620000 */  lw    $v0, ($v1)
/* 04C958 8004BD58 3C0F0D01 */  lui   $t7, %hi(D_0D008138) # $t7, 0xd01
/* 04C95C 8004BD5C 25EF8138 */  addiu $t7, %lo(D_0D008138) # addiu $t7, $t7, -0x7ec8
/* 04C960 8004BD60 24590008 */  addiu $t9, $v0, 8
/* 04C964 8004BD64 AC790000 */  sw    $t9, ($v1)
/* 04C968 8004BD68 3C0E0600 */  lui   $t6, 0x600
/* 04C96C 8004BD6C AC4E0000 */  sw    $t6, ($v0)
/* 04C970 8004BD70 AC4F0004 */  sw    $t7, 4($v0)
/* 04C974 8004BD74 8C620000 */  lw    $v0, ($v1)
/* 04C978 8004BD78 3C19BA00 */  lui   $t9, (0xBA001001 >> 16) # lui $t9, 0xba00
/* 04C97C 8004BD7C 37391001 */  ori   $t9, (0xBA001001 & 0xFFFF) # ori $t9, $t9, 0x1001
/* 04C980 8004BD80 24580008 */  addiu $t8, $v0, 8
/* 04C984 8004BD84 AC780000 */  sw    $t8, ($v1)
/* 04C988 8004BD88 AC400004 */  sw    $zero, 4($v0)
/* 04C98C 8004BD8C AC590000 */  sw    $t9, ($v0)
/* 04C990 8004BD90 8C620000 */  lw    $v0, ($v1)
/* 04C994 8004BD94 3C0FFA00 */  lui   $t7, 0xfa00
/* 04C998 8004BD98 3C01FD10 */  lui   $at, 0xfd10
/* 04C99C 8004BD9C 244E0008 */  addiu $t6, $v0, 8
/* 04C9A0 8004BDA0 AC6E0000 */  sw    $t6, ($v1)
/* 04C9A4 8004BDA4 AC4F0000 */  sw    $t7, ($v0)
/* 04C9A8 8004BDA8 8FB800A0 */  lw    $t8, 0xa0($sp)
/* 04C9AC 8004BDAC 3C0FFC25 */  lui   $t7, (0xFC2527FF >> 16) # lui $t7, 0xfc25
/* 04C9B0 8004BDB0 35EF27FF */  ori   $t7, (0xFC2527FF & 0xFFFF) # ori $t7, $t7, 0x27ff
/* 04C9B4 8004BDB4 331900FF */  andi  $t9, $t8, 0xff
/* 04C9B8 8004BDB8 AC590004 */  sw    $t9, 4($v0)
/* 04C9BC 8004BDBC 8C620000 */  lw    $v0, ($v1)
/* 04C9C0 8004BDC0 3C181FFC */  lui   $t8, (0x1FFC9238 >> 16) # lui $t8, 0x1ffc
/* 04C9C4 8004BDC4 37189238 */  ori   $t8, (0x1FFC9238 & 0xFFFF) # ori $t8, $t8, 0x9238
/* 04C9C8 8004BDC8 244E0008 */  addiu $t6, $v0, 8
/* 04C9CC 8004BDCC AC6E0000 */  sw    $t6, ($v1)
/* 04C9D0 8004BDD0 AC580004 */  sw    $t8, 4($v0)
/* 04C9D4 8004BDD4 AC4F0000 */  sw    $t7, ($v0)
/* 04C9D8 8004BDD8 8FAE0098 */  lw    $t6, 0x98($sp)
/* 04C9DC 8004BDDC 8C620000 */  lw    $v0, ($v1)
/* 04C9E0 8004BDE0 25CFFFFF */  addiu $t7, $t6, -1
/* 04C9E4 8004BDE4 24590008 */  addiu $t9, $v0, 8
/* 04C9E8 8004BDE8 AC790000 */  sw    $t9, ($v1)
/* 04C9EC 8004BDEC 31F80FFF */  andi  $t8, $t7, 0xfff
/* 04C9F0 8004BDF0 0301C825 */  or    $t9, $t8, $at
/* 04C9F4 8004BDF4 AFB90038 */  sw    $t9, 0x38($sp)
/* 04C9F8 8004BDF8 AFAF003C */  sw    $t7, 0x3c($sp)
/* 04C9FC 8004BDFC AC590000 */  sw    $t9, ($v0)
/* 04CA00 8004BE00 8FAE00A4 */  lw    $t6, 0xa4($sp)
/* 04CA04 8004BE04 3C01F510 */  lui   $at, 0xf510
/* 04CA08 8004BE08 AC4E0004 */  sw    $t6, 4($v0)
/* 04CA0C 8004BE0C 8C620000 */  lw    $v0, ($v1)
/* 04CA10 8004BE10 8FB8003C */  lw    $t8, 0x3c($sp)
/* 04CA14 8004BE14 244F0008 */  addiu $t7, $v0, 8
/* 04CA18 8004BE18 0018C840 */  sll   $t9, $t8, 1
/* 04CA1C 8004BE1C 272E0009 */  addiu $t6, $t9, 9
/* 04CA20 8004BE20 AC6F0000 */  sw    $t7, ($v1)
/* 04CA24 8004BE24 000E78C2 */  srl   $t7, $t6, 3
/* 04CA28 8004BE28 31F801FF */  andi  $t8, $t7, 0x1ff
/* 04CA2C 8004BE2C 0018CA40 */  sll   $t9, $t8, 9
/* 04CA30 8004BE30 03217025 */  or    $t6, $t9, $at
/* 04CA34 8004BE34 AFAE0034 */  sw    $t6, 0x34($sp)
/* 04CA38 8004BE38 3C0F0708 */  lui   $t7, (0x07080200 >> 16) # lui $t7, 0x708
/* 04CA3C 8004BE3C 35EF0200 */  ori   $t7, (0x07080200 & 0xFFFF) # ori $t7, $t7, 0x200
/* 04CA40 8004BE40 AC4F0004 */  sw    $t7, 4($v0)
/* 04CA44 8004BE44 AC4E0000 */  sw    $t6, ($v0)
/* 04CA48 8004BE48 8C620000 */  lw    $v0, ($v1)
/* 04CA4C 8004BE4C 3C19E600 */  lui   $t9, 0xe600
/* 04CA50 8004BE50 3C010700 */  lui   $at, 0x700
/* 04CA54 8004BE54 24580008 */  addiu $t8, $v0, 8
/* 04CA58 8004BE58 AC780000 */  sw    $t8, ($v1)
/* 04CA5C 8004BE5C AFA20070 */  sw    $v0, 0x70($sp)
/* 04CA60 8004BE60 AC400004 */  sw    $zero, 4($v0)
/* 04CA64 8004BE64 AC590000 */  sw    $t9, ($v0)
/* 04CA68 8004BE68 8C620000 */  lw    $v0, ($v1)
/* 04CA6C 8004BE6C 8FAC0034 */  lw    $t4, 0x34($sp)
/* 04CA70 8004BE70 3C18F400 */  lui   $t8, 0xf400
/* 04CA74 8004BE74 244F0008 */  addiu $t7, $v0, 8
/* 04CA78 8004BE78 AC6F0000 */  sw    $t7, ($v1)
/* 04CA7C 8004BE7C AC580000 */  sw    $t8, ($v0)
/* 04CA80 8004BE80 8FAD003C */  lw    $t5, 0x3c($sp)
/* 04CA84 8004BE84 8FBF009C */  lw    $ra, 0x9c($sp)
/* 04CA88 8004BE88 358B0100 */  ori   $t3, $t4, 0x100
/* 04CA8C 8004BE8C 000DC880 */  sll   $t9, $t5, 2
/* 04CA90 8004BE90 332E0FFF */  andi  $t6, $t9, 0xfff
/* 04CA94 8004BE94 27FFFFFF */  addiu $ra, $ra, -1
/* 04CA98 8004BE98 001FC080 */  sll   $t8, $ra, 2
/* 04CA9C 8004BE9C 000E6B00 */  sll   $t5, $t6, 0xc
/* 04CAA0 8004BEA0 01A17025 */  or    $t6, $t5, $at
/* 04CAA4 8004BEA4 331F0FFF */  andi  $ra, $t8, 0xfff
/* 04CAA8 8004BEA8 01DF5025 */  or    $t2, $t6, $ra
/* 04CAAC 8004BEAC AC4A0004 */  sw    $t2, 4($v0)
/* 04CAB0 8004BEB0 8C620000 */  lw    $v0, ($v1)
/* 04CAB4 8004BEB4 3C18E700 */  lui   $t8, 0xe700
/* 04CAB8 8004BEB8 3C0E0008 */  lui   $t6, (0x00080200 >> 16) # lui $t6, 8
/* 04CABC 8004BEBC 244F0008 */  addiu $t7, $v0, 8
/* 04CAC0 8004BEC0 AC6F0000 */  sw    $t7, ($v1)
/* 04CAC4 8004BEC4 AC400004 */  sw    $zero, 4($v0)
/* 04CAC8 8004BEC8 AC580000 */  sw    $t8, ($v0)
/* 04CACC 8004BECC 8C620000 */  lw    $v0, ($v1)
/* 04CAD0 8004BED0 35CE0200 */  ori   $t6, (0x00080200 & 0xFFFF) # ori $t6, $t6, 0x200
/* 04CAD4 8004BED4 3C18F200 */  lui   $t8, 0xf200
/* 04CAD8 8004BED8 24590008 */  addiu $t9, $v0, 8
/* 04CADC 8004BEDC AC790000 */  sw    $t9, ($v1)
/* 04CAE0 8004BEE0 AC4E0004 */  sw    $t6, 4($v0)
/* 04CAE4 8004BEE4 AC4C0000 */  sw    $t4, ($v0)
/* 04CAE8 8004BEE8 8C620000 */  lw    $v0, ($v1)
/* 04CAEC 8004BEEC 01BFC825 */  or    $t9, $t5, $ra
/* 04CAF0 8004BEF0 3C010100 */  lui   $at, 0x100
/* 04CAF4 8004BEF4 244F0008 */  addiu $t7, $v0, 8
/* 04CAF8 8004BEF8 AC6F0000 */  sw    $t7, ($v1)
/* 04CAFC 8004BEFC AC590004 */  sw    $t9, 4($v0)
/* 04CB00 8004BF00 AC580000 */  sw    $t8, ($v0)
/* 04CB04 8004BF04 8C620000 */  lw    $v0, ($v1)
/* 04CB08 8004BF08 8FAF0038 */  lw    $t7, 0x38($sp)
/* 04CB0C 8004BF0C 244E0008 */  addiu $t6, $v0, 8
/* 04CB10 8004BF10 AC6E0000 */  sw    $t6, ($v1)
/* 04CB14 8004BF14 AC4F0000 */  sw    $t7, ($v0)
/* 04CB18 8004BF18 8FB800A8 */  lw    $t8, 0xa8($sp)
/* 04CB1C 8004BF1C 3C0E0708 */  lui   $t6, (0x07080200 >> 16) # lui $t6, 0x708
/* 04CB20 8004BF20 35CE0200 */  ori   $t6, (0x07080200 & 0xFFFF) # ori $t6, $t6, 0x200
/* 04CB24 8004BF24 AC580004 */  sw    $t8, 4($v0)
/* 04CB28 8004BF28 8C620000 */  lw    $v0, ($v1)
/* 04CB2C 8004BF2C 3C18E600 */  lui   $t8, 0xe600
/* 04CB30 8004BF30 24590008 */  addiu $t9, $v0, 8
/* 04CB34 8004BF34 AC790000 */  sw    $t9, ($v1)
/* 04CB38 8004BF38 AC4E0004 */  sw    $t6, 4($v0)
/* 04CB3C 8004BF3C AC4B0000 */  sw    $t3, ($v0)
/* 04CB40 8004BF40 8C620000 */  lw    $v0, ($v1)
/* 04CB44 8004BF44 AFAB0024 */  sw    $t3, 0x24($sp)
/* 04CB48 8004BF48 AFAA0028 */  sw    $t2, 0x28($sp)
/* 04CB4C 8004BF4C 244F0008 */  addiu $t7, $v0, 8
/* 04CB50 8004BF50 AC6F0000 */  sw    $t7, ($v1)
/* 04CB54 8004BF54 AC400004 */  sw    $zero, 4($v0)
/* 04CB58 8004BF58 AC580000 */  sw    $t8, ($v0)
/* 04CB5C 8004BF5C 8C620000 */  lw    $v0, ($v1)
/* 04CB60 8004BF60 3C0EF400 */  lui   $t6, 0xf400
/* 04CB64 8004BF64 24590008 */  addiu $t9, $v0, 8
/* 04CB68 8004BF68 AC790000 */  sw    $t9, ($v1)
/* 04CB6C 8004BF6C AC4E0000 */  sw    $t6, ($v0)
/* 04CB70 8004BF70 8FAF0028 */  lw    $t7, 0x28($sp)
/* 04CB74 8004BF74 3C19E700 */  lui   $t9, 0xe700
/* 04CB78 8004BF78 AC4F0004 */  sw    $t7, 4($v0)
/* 04CB7C 8004BF7C 8C620000 */  lw    $v0, ($v1)
/* 04CB80 8004BF80 24580008 */  addiu $t8, $v0, 8
/* 04CB84 8004BF84 AC780000 */  sw    $t8, ($v1)
/* 04CB88 8004BF88 AC400004 */  sw    $zero, 4($v0)
/* 04CB8C 8004BF8C AC590000 */  sw    $t9, ($v0)
/* 04CB90 8004BF90 8C620000 */  lw    $v0, ($v1)
/* 04CB94 8004BF94 8FAF0024 */  lw    $t7, 0x24($sp)
/* 04CB98 8004BF98 3C180108 */  lui   $t8, (0x01080200 >> 16) # lui $t8, 0x108
/* 04CB9C 8004BF9C 244E0008 */  addiu $t6, $v0, 8
/* 04CBA0 8004BFA0 AC6E0000 */  sw    $t6, ($v1)
/* 04CBA4 8004BFA4 37180200 */  ori   $t8, (0x01080200 & 0xFFFF) # ori $t8, $t8, 0x200
/* 04CBA8 8004BFA8 AC580004 */  sw    $t8, 4($v0)
/* 04CBAC 8004BFAC AC4F0000 */  sw    $t7, ($v0)
/* 04CBB0 8004BFB0 8C620000 */  lw    $v0, ($v1)
/* 04CBB4 8004BFB4 01A17825 */  or    $t7, $t5, $at
/* 04CBB8 8004BFB8 01FFC025 */  or    $t8, $t7, $ra
/* 04CBBC 8004BFBC 24590008 */  addiu $t9, $v0, 8
/* 04CBC0 8004BFC0 AC790000 */  sw    $t9, ($v1)
/* 04CBC4 8004BFC4 3C0EF200 */  lui   $t6, 0xf200
/* 04CBC8 8004BFC8 AC4E0000 */  sw    $t6, ($v0)
/* 04CBCC 8004BFCC AC580004 */  sw    $t8, 4($v0)
/* 04CBD0 8004BFD0 24190002 */  li    $t9, 2
/* 04CBD4 8004BFD4 AFB90010 */  sw    $t9, 0x10($sp)
/* 04CBD8 8004BFD8 8FA7009C */  lw    $a3, 0x9c($sp)
/* 04CBDC 8004BFDC 8FA60098 */  lw    $a2, 0x98($sp)
/* 04CBE0 8004BFE0 8FA50094 */  lw    $a1, 0x94($sp)
/* 04CBE4 8004BFE4 0C012E54 */  jal   func_8004B950
/* 04CBE8 8004BFE8 8FA40090 */   lw    $a0, 0x90($sp)
/* 04CBEC 8004BFEC 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 04CBF0 8004BFF0 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 04CBF4 8004BFF4 8C620000 */  lw    $v0, ($v1)
/* 04CBF8 8004BFF8 3C180D01 */  lui   $t8, %hi(D_0D008120) # $t8, 0xd01
/* 04CBFC 8004BFFC 27188120 */  addiu $t8, %lo(D_0D008120) # addiu $t8, $t8, -0x7ee0
/* 04CC00 8004C000 244E0008 */  addiu $t6, $v0, 8
/* 04CC04 8004C004 AC6E0000 */  sw    $t6, ($v1)
/* 04CC08 8004C008 3C0F0600 */  lui   $t7, 0x600
/* 04CC0C 8004C00C AC4F0000 */  sw    $t7, ($v0)
/* 04CC10 8004C010 AC580004 */  sw    $t8, 4($v0)
/* 04CC14 8004C014 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04CC18 8004C018 27BD0090 */  addiu $sp, $sp, 0x90
/* 04CC1C 8004C01C 03E00008 */  jr    $ra
/* 04CC20 8004C020 00000000 */   nop   
