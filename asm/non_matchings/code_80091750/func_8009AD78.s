glabel func_8009AD78
/* 09B978 8009AD78 3C0F8019 */  lui   $t7, %hi(D_8018E118) # $t7, 0x8019
/* 09B97C 8009AD7C 25EFE118 */  addiu $t7, %lo(D_8018E118) # addiu $t7, $t7, -0x1ee8
/* 09B980 8009AD80 000470C0 */  sll   $t6, $a0, 3
/* 09B984 8009AD84 01CF1821 */  addu  $v1, $t6, $t7
/* 09B988 8009AD88 8C660004 */  lw    $a2, 4($v1)
/* 09B98C 8009AD8C 8C6E000C */  lw    $t6, 0xc($v1)
/* 09B990 8009AD90 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 09B994 8009AD94 3C198019 */  lui   $t9, %hi(D_8018D9B0) # $t9, 0x8019
/* 09B998 8009AD98 8F39D9B0 */  lw    $t9, %lo(D_8018D9B0)($t9)
/* 09B99C 8009AD9C AFB00008 */  sw    $s0, 8($sp)
/* 09B9A0 8009ADA0 0006C040 */  sll   $t8, $a2, 1
/* 09B9A4 8009ADA4 01C63823 */  subu  $a3, $t6, $a2
/* 09B9A8 8009ADA8 00A08025 */  move  $s0, $a1
/* 09B9AC 8009ADAC AFB30014 */  sw    $s3, 0x14($sp)
/* 09B9B0 8009ADB0 AFB20010 */  sw    $s2, 0x10($sp)
/* 09B9B4 8009ADB4 AFB1000C */  sw    $s1, 0xc($sp)
/* 09B9B8 8009ADB8 00004025 */  move  $t0, $zero
/* 09B9BC 8009ADBC 10E000B3 */  beqz  $a3, .L8009B08C
/* 09B9C0 8009ADC0 03191021 */   addu  $v0, $t8, $t9
/* 09B9C4 8009ADC4 30E30003 */  andi  $v1, $a3, 3
/* 09B9C8 8009ADC8 10600029 */  beqz  $v1, .L8009AE70
/* 09B9CC 8009ADCC 00606025 */   move  $t4, $v1
/* 09B9D0 8009ADD0 24130020 */  li    $s3, 32
/* 09B9D4 8009ADD4 2412001D */  li    $s2, 29
/* 09B9D8 8009ADD8 24110096 */  li    $s1, 150
/* 09B9DC 8009ADDC 240D004D */  li    $t5, 77
.L8009ADE0:
/* 09B9E0 8009ADE0 94440000 */  lhu   $a0, ($v0)
/* 09B9E4 8009ADE4 25080001 */  addiu $t0, $t0, 1
/* 09B9E8 8009ADE8 24420002 */  addiu $v0, $v0, 2
/* 09B9EC 8009ADEC 308FF800 */  andi  $t7, $a0, 0xf800
/* 09B9F0 8009ADF0 000FC2C3 */  sra   $t8, $t7, 0xb
/* 09B9F4 8009ADF4 030D0019 */  multu $t8, $t5
/* 09B9F8 8009ADF8 309907C0 */  andi  $t9, $a0, 0x7c0
/* 09B9FC 8009ADFC 00197183 */  sra   $t6, $t9, 6
/* 09BA00 8009AE00 308F003E */  andi  $t7, $a0, 0x3e
/* 09BA04 8009AE04 000FC043 */  sra   $t8, $t7, 1
/* 09BA08 8009AE08 30890001 */  andi  $t1, $a0, 1
/* 09BA0C 8009AE0C 00001812 */  mflo  $v1
/* 09BA10 8009AE10 00000000 */  nop   
/* 09BA14 8009AE14 00000000 */  nop   
/* 09BA18 8009AE18 01D10019 */  multu $t6, $s1
/* 09BA1C 8009AE1C 00002812 */  mflo  $a1
/* 09BA20 8009AE20 0065C821 */  addu  $t9, $v1, $a1
/* 09BA24 8009AE24 00000000 */  nop   
/* 09BA28 8009AE28 03120019 */  multu $t8, $s2
/* 09BA2C 8009AE2C 00003012 */  mflo  $a2
/* 09BA30 8009AE30 03265021 */  addu  $t2, $t9, $a2
/* 09BA34 8009AE34 000A7202 */  srl   $t6, $t2, 8
/* 09BA38 8009AE38 026E7823 */  subu  $t7, $s3, $t6
/* 09BA3C 8009AE3C 01F00019 */  multu $t7, $s0
/* 09BA40 8009AE40 0000C012 */  mflo  $t8
/* 09BA44 8009AE44 0018CA02 */  srl   $t9, $t8, 8
/* 09BA48 8009AE48 01D95821 */  addu  $t3, $t6, $t9
/* 09BA4C 8009AE4C 000B7040 */  sll   $t6, $t3, 1
/* 09BA50 8009AE50 000B7980 */  sll   $t7, $t3, 6
/* 09BA54 8009AE54 01CFC021 */  addu  $t8, $t6, $t7
/* 09BA58 8009AE58 000BCAC0 */  sll   $t9, $t3, 0xb
/* 09BA5C 8009AE5C 03197021 */  addu  $t6, $t8, $t9
/* 09BA60 8009AE60 01C97821 */  addu  $t7, $t6, $t1
/* 09BA64 8009AE64 1588FFDE */  bne   $t4, $t0, .L8009ADE0
/* 09BA68 8009AE68 A44FFFFE */   sh    $t7, -2($v0)
/* 09BA6C 8009AE6C 11070087 */  beq   $t0, $a3, .L8009B08C
.L8009AE70:
/* 09BA70 8009AE70 240D004D */   li    $t5, 77
/* 09BA74 8009AE74 24110096 */  li    $s1, 150
/* 09BA78 8009AE78 2412001D */  li    $s2, 29
/* 09BA7C 8009AE7C 24130020 */  li    $s3, 32
.L8009AE80:
/* 09BA80 8009AE80 94440000 */  lhu   $a0, ($v0)
/* 09BA84 8009AE84 25080004 */  addiu $t0, $t0, 4
/* 09BA88 8009AE88 24420008 */  addiu $v0, $v0, 8
/* 09BA8C 8009AE8C 3098F800 */  andi  $t8, $a0, 0xf800
/* 09BA90 8009AE90 0018CAC3 */  sra   $t9, $t8, 0xb
/* 09BA94 8009AE94 032D0019 */  multu $t9, $t5
/* 09BA98 8009AE98 308E07C0 */  andi  $t6, $a0, 0x7c0
/* 09BA9C 8009AE9C 000E7983 */  sra   $t7, $t6, 6
/* 09BAA0 8009AEA0 3098003E */  andi  $t8, $a0, 0x3e
/* 09BAA4 8009AEA4 0018C843 */  sra   $t9, $t8, 1
/* 09BAA8 8009AEA8 30890001 */  andi  $t1, $a0, 1
/* 09BAAC 8009AEAC 9444FFFA */  lhu   $a0, -6($v0)
/* 09BAB0 8009AEB0 00001812 */  mflo  $v1
/* 09BAB4 8009AEB4 00000000 */  nop   
/* 09BAB8 8009AEB8 00000000 */  nop   
/* 09BABC 8009AEBC 01F10019 */  multu $t7, $s1
/* 09BAC0 8009AEC0 00002812 */  mflo  $a1
/* 09BAC4 8009AEC4 00657021 */  addu  $t6, $v1, $a1
/* 09BAC8 8009AEC8 00000000 */  nop   
/* 09BACC 8009AECC 03320019 */  multu $t9, $s2
/* 09BAD0 8009AED0 00003012 */  mflo  $a2
/* 09BAD4 8009AED4 01C65021 */  addu  $t2, $t6, $a2
/* 09BAD8 8009AED8 000A7A02 */  srl   $t7, $t2, 8
/* 09BADC 8009AEDC 026FC023 */  subu  $t8, $s3, $t7
/* 09BAE0 8009AEE0 03100019 */  multu $t8, $s0
/* 09BAE4 8009AEE4 0000C812 */  mflo  $t9
/* 09BAE8 8009AEE8 00197202 */  srl   $t6, $t9, 8
/* 09BAEC 8009AEEC 01EE5821 */  addu  $t3, $t7, $t6
/* 09BAF0 8009AEF0 000B7840 */  sll   $t7, $t3, 1
/* 09BAF4 8009AEF4 000BC180 */  sll   $t8, $t3, 6
/* 09BAF8 8009AEF8 01F8C821 */  addu  $t9, $t7, $t8
/* 09BAFC 8009AEFC 000B72C0 */  sll   $t6, $t3, 0xb
/* 09BB00 8009AF00 032E7821 */  addu  $t7, $t9, $t6
/* 09BB04 8009AF04 3099F800 */  andi  $t9, $a0, 0xf800
/* 09BB08 8009AF08 001972C3 */  sra   $t6, $t9, 0xb
/* 09BB0C 8009AF0C 01CD0019 */  multu $t6, $t5
/* 09BB10 8009AF10 01E9C021 */  addu  $t8, $t7, $t1
/* 09BB14 8009AF14 A458FFF8 */  sh    $t8, -8($v0)
/* 09BB18 8009AF18 308F07C0 */  andi  $t7, $a0, 0x7c0
/* 09BB1C 8009AF1C 000FC183 */  sra   $t8, $t7, 6
/* 09BB20 8009AF20 3099003E */  andi  $t9, $a0, 0x3e
/* 09BB24 8009AF24 00197043 */  sra   $t6, $t9, 1
/* 09BB28 8009AF28 30890001 */  andi  $t1, $a0, 1
/* 09BB2C 8009AF2C 9444FFFC */  lhu   $a0, -4($v0)
/* 09BB30 8009AF30 00001812 */  mflo  $v1
/* 09BB34 8009AF34 00000000 */  nop   
/* 09BB38 8009AF38 00000000 */  nop   
/* 09BB3C 8009AF3C 03110019 */  multu $t8, $s1
/* 09BB40 8009AF40 00002812 */  mflo  $a1
/* 09BB44 8009AF44 00657821 */  addu  $t7, $v1, $a1
/* 09BB48 8009AF48 00000000 */  nop   
/* 09BB4C 8009AF4C 01D20019 */  multu $t6, $s2
/* 09BB50 8009AF50 00003012 */  mflo  $a2
/* 09BB54 8009AF54 01E65021 */  addu  $t2, $t7, $a2
/* 09BB58 8009AF58 000AC202 */  srl   $t8, $t2, 8
/* 09BB5C 8009AF5C 0278C823 */  subu  $t9, $s3, $t8
/* 09BB60 8009AF60 03300019 */  multu $t9, $s0
/* 09BB64 8009AF64 00007012 */  mflo  $t6
/* 09BB68 8009AF68 000E7A02 */  srl   $t7, $t6, 8
/* 09BB6C 8009AF6C 030F5821 */  addu  $t3, $t8, $t7
/* 09BB70 8009AF70 000BC040 */  sll   $t8, $t3, 1
/* 09BB74 8009AF74 000BC980 */  sll   $t9, $t3, 6
/* 09BB78 8009AF78 03197021 */  addu  $t6, $t8, $t9
/* 09BB7C 8009AF7C 000B7AC0 */  sll   $t7, $t3, 0xb
/* 09BB80 8009AF80 01CFC021 */  addu  $t8, $t6, $t7
/* 09BB84 8009AF84 308EF800 */  andi  $t6, $a0, 0xf800
/* 09BB88 8009AF88 000E7AC3 */  sra   $t7, $t6, 0xb
/* 09BB8C 8009AF8C 01ED0019 */  multu $t7, $t5
/* 09BB90 8009AF90 0309C821 */  addu  $t9, $t8, $t1
/* 09BB94 8009AF94 A459FFFA */  sh    $t9, -6($v0)
/* 09BB98 8009AF98 309807C0 */  andi  $t8, $a0, 0x7c0
/* 09BB9C 8009AF9C 0018C983 */  sra   $t9, $t8, 6
/* 09BBA0 8009AFA0 308E003E */  andi  $t6, $a0, 0x3e
/* 09BBA4 8009AFA4 000E7843 */  sra   $t7, $t6, 1
/* 09BBA8 8009AFA8 30890001 */  andi  $t1, $a0, 1
/* 09BBAC 8009AFAC 9444FFFE */  lhu   $a0, -2($v0)
/* 09BBB0 8009AFB0 00001812 */  mflo  $v1
/* 09BBB4 8009AFB4 00000000 */  nop   
/* 09BBB8 8009AFB8 00000000 */  nop   
/* 09BBBC 8009AFBC 03310019 */  multu $t9, $s1
/* 09BBC0 8009AFC0 00002812 */  mflo  $a1
/* 09BBC4 8009AFC4 0065C021 */  addu  $t8, $v1, $a1
/* 09BBC8 8009AFC8 00000000 */  nop   
/* 09BBCC 8009AFCC 01F20019 */  multu $t7, $s2
/* 09BBD0 8009AFD0 00003012 */  mflo  $a2
/* 09BBD4 8009AFD4 03065021 */  addu  $t2, $t8, $a2
/* 09BBD8 8009AFD8 000ACA02 */  srl   $t9, $t2, 8
/* 09BBDC 8009AFDC 02797023 */  subu  $t6, $s3, $t9
/* 09BBE0 8009AFE0 01D00019 */  multu $t6, $s0
/* 09BBE4 8009AFE4 00007812 */  mflo  $t7
/* 09BBE8 8009AFE8 000FC202 */  srl   $t8, $t7, 8
/* 09BBEC 8009AFEC 03385821 */  addu  $t3, $t9, $t8
/* 09BBF0 8009AFF0 000BC840 */  sll   $t9, $t3, 1
/* 09BBF4 8009AFF4 000B7180 */  sll   $t6, $t3, 6
/* 09BBF8 8009AFF8 032E7821 */  addu  $t7, $t9, $t6
/* 09BBFC 8009AFFC 000BC2C0 */  sll   $t8, $t3, 0xb
/* 09BC00 8009B000 01F8C821 */  addu  $t9, $t7, $t8
/* 09BC04 8009B004 308FF800 */  andi  $t7, $a0, 0xf800
/* 09BC08 8009B008 000FC2C3 */  sra   $t8, $t7, 0xb
/* 09BC0C 8009B00C 030D0019 */  multu $t8, $t5
/* 09BC10 8009B010 03297021 */  addu  $t6, $t9, $t1
/* 09BC14 8009B014 A44EFFFC */  sh    $t6, -4($v0)
/* 09BC18 8009B018 309907C0 */  andi  $t9, $a0, 0x7c0
/* 09BC1C 8009B01C 00197183 */  sra   $t6, $t9, 6
/* 09BC20 8009B020 308F003E */  andi  $t7, $a0, 0x3e
/* 09BC24 8009B024 000FC043 */  sra   $t8, $t7, 1
/* 09BC28 8009B028 30890001 */  andi  $t1, $a0, 1
/* 09BC2C 8009B02C 00001812 */  mflo  $v1
/* 09BC30 8009B030 00000000 */  nop   
/* 09BC34 8009B034 00000000 */  nop   
/* 09BC38 8009B038 01D10019 */  multu $t6, $s1
/* 09BC3C 8009B03C 00002812 */  mflo  $a1
/* 09BC40 8009B040 0065C821 */  addu  $t9, $v1, $a1
/* 09BC44 8009B044 00000000 */  nop   
/* 09BC48 8009B048 03120019 */  multu $t8, $s2
/* 09BC4C 8009B04C 00003012 */  mflo  $a2
/* 09BC50 8009B050 03265021 */  addu  $t2, $t9, $a2
/* 09BC54 8009B054 000A7202 */  srl   $t6, $t2, 8
/* 09BC58 8009B058 026E7823 */  subu  $t7, $s3, $t6
/* 09BC5C 8009B05C 01F00019 */  multu $t7, $s0
/* 09BC60 8009B060 0000C012 */  mflo  $t8
/* 09BC64 8009B064 0018CA02 */  srl   $t9, $t8, 8
/* 09BC68 8009B068 01D95821 */  addu  $t3, $t6, $t9
/* 09BC6C 8009B06C 000B7040 */  sll   $t6, $t3, 1
/* 09BC70 8009B070 000B7980 */  sll   $t7, $t3, 6
/* 09BC74 8009B074 01CFC021 */  addu  $t8, $t6, $t7
/* 09BC78 8009B078 000BCAC0 */  sll   $t9, $t3, 0xb
/* 09BC7C 8009B07C 03197021 */  addu  $t6, $t8, $t9
/* 09BC80 8009B080 01C97821 */  addu  $t7, $t6, $t1
/* 09BC84 8009B084 1507FF7E */  bne   $t0, $a3, .L8009AE80
/* 09BC88 8009B088 A44FFFFE */   sh    $t7, -2($v0)
.L8009B08C:
/* 09BC8C 8009B08C 8FB00008 */  lw    $s0, 8($sp)
/* 09BC90 8009B090 8FB1000C */  lw    $s1, 0xc($sp)
/* 09BC94 8009B094 8FB20010 */  lw    $s2, 0x10($sp)
/* 09BC98 8009B098 8FB30014 */  lw    $s3, 0x14($sp)
/* 09BC9C 8009B09C 03E00008 */  jr    $ra
/* 09BCA0 8009B0A0 27BD0018 */   addiu $sp, $sp, 0x18