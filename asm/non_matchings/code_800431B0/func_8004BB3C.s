glabel func_8004BB3C
/* 04C73C 8004BB3C 00067080 */  sll   $t6, $a2, 2
/* 04C740 8004BB40 448E2000 */  mtc1  $t6, $f4
/* 04C744 8004BB44 C7AC0010 */  lwc1  $f12, 0x10($sp)
/* 04C748 8004BB48 0007C080 */  sll   $t8, $a3, 2
/* 04C74C 8004BB4C 468021A0 */  cvt.s.w $f6, $f4
/* 04C750 8004BB50 44982000 */  mtc1  $t8, $f4
/* 04C754 8004BB54 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 04C758 8004BB58 44810800 */  mtc1  $at, $f1
/* 04C75C 8004BB5C 44800000 */  mtc1  $zero, $f0
/* 04C760 8004BB60 00047080 */  sll   $t6, $a0, 2
/* 04C764 8004BB64 460C3202 */  mul.s $f8, $f6, $f12
/* 04C768 8004BB68 0005C080 */  sll   $t8, $a1, 2
/* 04C76C 8004BB6C 468021A0 */  cvt.s.w $f6, $f4
/* 04C770 8004BB70 460042A1 */  cvt.d.s $f10, $f8
/* 04C774 8004BB74 460C3202 */  mul.s $f8, $f6, $f12
/* 04C778 8004BB78 46205400 */  add.d $f16, $f10, $f0
/* 04C77C 8004BB7C 4620848D */  trunc.w.d $f18, $f16
/* 04C780 8004BB80 460042A1 */  cvt.d.s $f10, $f8
/* 04C784 8004BB84 440A9000 */  mfc1  $t2, $f18
/* 04C788 8004BB88 46205400 */  add.d $f16, $f10, $f0
/* 04C78C 8004BB8C 01404025 */  move  $t0, $t2
/* 04C790 8004BB90 4620848D */  trunc.w.d $f18, $f16
/* 04C794 8004BB94 440B9000 */  mfc1  $t3, $f18
/* 04C798 8004BB98 00000000 */  nop   
/* 04C79C 8004BB9C 01604825 */  move  $t1, $t3
/* 04C7A0 8004BBA0 05410003 */  bgez  $t2, .L8004BBB0
/* 04C7A4 8004BBA4 000A7843 */   sra   $t7, $t2, 1
/* 04C7A8 8004BBA8 25410001 */  addiu $at, $t2, 1
/* 04C7AC 8004BBAC 00017843 */  sra   $t7, $at, 1
.L8004BBB0:
/* 04C7B0 8004BBB0 01CF6023 */  subu  $t4, $t6, $t7
/* 04C7B4 8004BBB4 000A7023 */  negu  $t6, $t2
/* 04C7B8 8004BBB8 01801025 */  move  $v0, $t4
/* 04C7BC 8004BBBC 05610003 */  bgez  $t3, .L8004BBCC
/* 04C7C0 8004BBC0 000BC843 */   sra   $t9, $t3, 1
/* 04C7C4 8004BBC4 25610001 */  addiu $at, $t3, 1
/* 04C7C8 8004BBC8 0001C843 */  sra   $t9, $at, 1
.L8004BBCC:
/* 04C7CC 8004BBCC 03196823 */  subu  $t5, $t8, $t9
/* 04C7D0 8004BBD0 01CC082A */  slt   $at, $t6, $t4
/* 04C7D4 8004BBD4 1020004D */  beqz  $at, .L8004BD0C
/* 04C7D8 8004BBD8 01A01825 */   move  $v1, $t5
/* 04C7DC 8004BBDC 000B7823 */  negu  $t7, $t3
/* 04C7E0 8004BBE0 01ED082A */  slt   $at, $t7, $t5
/* 04C7E4 8004BBE4 10200049 */  beqz  $at, .L8004BD0C
/* 04C7E8 8004BBE8 00002025 */   move  $a0, $zero
/* 04C7EC 8004BBEC 0581000D */  bgez  $t4, .L8004BC24
/* 04C7F0 8004BBF0 00002825 */   move  $a1, $zero
/* 04C7F4 8004BBF4 000CC023 */  negu  $t8, $t4
/* 04C7F8 8004BBF8 0018C8C0 */  sll   $t9, $t8, 3
/* 04C7FC 8004BBFC 44992000 */  mtc1  $t9, $f4
/* 04C800 8004BC00 014C4021 */  addu  $t0, $t2, $t4
/* 04C804 8004BC04 00001025 */  move  $v0, $zero
/* 04C808 8004BC08 468021A0 */  cvt.s.w $f6, $f4
/* 04C80C 8004BC0C 460C3203 */  div.s $f8, $f6, $f12
/* 04C810 8004BC10 4600428D */  trunc.w.s $f10, $f8
/* 04C814 8004BC14 44055000 */  mfc1  $a1, $f10
/* 04C818 8004BC18 00000000 */  nop   
/* 04C81C 8004BC1C 00057C00 */  sll   $t7, $a1, 0x10
/* 04C820 8004BC20 000F2C03 */  sra   $a1, $t7, 0x10
.L8004BC24:
/* 04C824 8004BC24 05A1000D */  bgez  $t5, .L8004BC5C
/* 04C828 8004BC28 00487821 */   addu  $t7, $v0, $t0
/* 04C82C 8004BC2C 000DC823 */  negu  $t9, $t5
/* 04C830 8004BC30 001970C0 */  sll   $t6, $t9, 3
/* 04C834 8004BC34 448E8000 */  mtc1  $t6, $f16
/* 04C838 8004BC38 016D4821 */  addu  $t1, $t3, $t5
/* 04C83C 8004BC3C 00001825 */  move  $v1, $zero
/* 04C840 8004BC40 468084A0 */  cvt.s.w $f18, $f16
/* 04C844 8004BC44 460C9103 */  div.s $f4, $f18, $f12
/* 04C848 8004BC48 4600218D */  trunc.w.s $f6, $f4
/* 04C84C 8004BC4C 44043000 */  mfc1  $a0, $f6
/* 04C850 8004BC50 00000000 */  nop   
/* 04C854 8004BC54 0004C400 */  sll   $t8, $a0, 0x10
/* 04C858 8004BC58 00182403 */  sra   $a0, $t8, 0x10
.L8004BC5C:
/* 04C85C 8004BC5C 3C0D8015 */  lui   $t5, %hi(gDisplayListHead) # $t5, 0x8015
/* 04C860 8004BC60 25AD0298 */  addiu $t5, %lo(gDisplayListHead) # addiu $t5, $t5, 0x298
/* 04C864 8004BC64 8DA70000 */  lw    $a3, ($t5)
/* 04C868 8004BC68 31F80FFF */  andi  $t8, $t7, 0xfff
/* 04C86C 8004BC6C 0018CB00 */  sll   $t9, $t8, 0xc
/* 04C870 8004BC70 24EE0008 */  addiu $t6, $a3, 8
/* 04C874 8004BC74 ADAE0000 */  sw    $t6, ($t5)
/* 04C878 8004BC78 3C01E400 */  lui   $at, 0xe400
/* 04C87C 8004BC7C 03217025 */  or    $t6, $t9, $at
/* 04C880 8004BC80 3C014480 */  li    $at, 0x44800000 # 1024.000000
/* 04C884 8004BC84 44814000 */  mtc1  $at, $f8
/* 04C888 8004BC88 00697821 */  addu  $t7, $v1, $t1
/* 04C88C 8004BC8C 31F80FFF */  andi  $t8, $t7, 0xfff
/* 04C890 8004BC90 460C4283 */  div.s $f10, $f8, $f12
/* 04C894 8004BC94 01D8C825 */  or    $t9, $t6, $t8
/* 04C898 8004BC98 304F0FFF */  andi  $t7, $v0, 0xfff
/* 04C89C 8004BC9C 000F7300 */  sll   $t6, $t7, 0xc
/* 04C8A0 8004BCA0 30780FFF */  andi  $t8, $v1, 0xfff
/* 04C8A4 8004BCA4 ACF90000 */  sw    $t9, ($a3)
/* 04C8A8 8004BCA8 01D8C825 */  or    $t9, $t6, $t8
/* 04C8AC 8004BCAC ACF90004 */  sw    $t9, 4($a3)
/* 04C8B0 8004BCB0 8DA70000 */  lw    $a3, ($t5)
/* 04C8B4 8004BCB4 3C0EB300 */  lui   $t6, 0xb300
/* 04C8B8 8004BCB8 0005CC00 */  sll   $t9, $a1, 0x10
/* 04C8BC 8004BCBC 24EF0008 */  addiu $t7, $a3, 8
/* 04C8C0 8004BCC0 ADAF0000 */  sw    $t7, ($t5)
/* 04C8C4 8004BCC4 308FFFFF */  andi  $t7, $a0, 0xffff
/* 04C8C8 8004BCC8 ACEE0000 */  sw    $t6, ($a3)
/* 04C8CC 8004BCCC 032F7025 */  or    $t6, $t9, $t7
/* 04C8D0 8004BCD0 ACEE0004 */  sw    $t6, 4($a3)
/* 04C8D4 8004BCD4 8DA70000 */  lw    $a3, ($t5)
/* 04C8D8 8004BCD8 3C19B200 */  lui   $t9, 0xb200
/* 04C8DC 8004BCDC 24F80008 */  addiu $t8, $a3, 8
/* 04C8E0 8004BCE0 ADB80000 */  sw    $t8, ($t5)
/* 04C8E4 8004BCE4 ACF90000 */  sw    $t9, ($a3)
/* 04C8E8 8004BCE8 46005421 */  cvt.d.s $f16, $f10
/* 04C8EC 8004BCEC 46208480 */  add.d $f18, $f16, $f0
/* 04C8F0 8004BCF0 4620910D */  trunc.w.d $f4, $f18
/* 04C8F4 8004BCF4 44182000 */  mfc1  $t8, $f4
/* 04C8F8 8004BCF8 00000000 */  nop   
/* 04C8FC 8004BCFC 3319FFFF */  andi  $t9, $t8, 0xffff
/* 04C900 8004BD00 00197C00 */  sll   $t7, $t9, 0x10
/* 04C904 8004BD04 01F97025 */  or    $t6, $t7, $t9
/* 04C908 8004BD08 ACEE0004 */  sw    $t6, 4($a3)
.L8004BD0C:
/* 04C90C 8004BD0C 03E00008 */  jr    $ra
/* 04C910 8004BD10 00000000 */   nop   

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
