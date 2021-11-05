glabel func_8008BF18
/* 08CB18 8008BF18 000470C0 */  sll   $t6, $a0, 3
/* 08CB1C 8008BF1C 01C47023 */  subu  $t6, $t6, $a0
/* 08CB20 8008BF20 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 08CB24 8008BF24 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 08CB28 8008BF28 000E7140 */  sll   $t6, $t6, 5
/* 08CB2C 8008BF2C 01CF1021 */  addu  $v0, $t6, $t7
/* 08CB30 8008BF30 C4440028 */  lwc1  $f4, 0x28($v0)
/* 08CB34 8008BF34 C4460010 */  lwc1  $f6, 0x10($v0)
/* 08CB38 8008BF38 C44A002C */  lwc1  $f10, 0x2c($v0)
/* 08CB3C 8008BF3C C4500014 */  lwc1  $f16, 0x14($v0)
/* 08CB40 8008BF40 46062200 */  add.s $f8, $f4, $f6
/* 08CB44 8008BF44 C4460018 */  lwc1  $f6, 0x18($v0)
/* 08CB48 8008BF48 C4440030 */  lwc1  $f4, 0x30($v0)
/* 08CB4C 8008BF4C 46105480 */  add.s $f18, $f10, $f16
/* 08CB50 8008BF50 E4480004 */  swc1  $f8, 4($v0)
/* 08CB54 8008BF54 46062200 */  add.s $f8, $f4, $f6
/* 08CB58 8008BF58 E4520008 */  swc1  $f18, 8($v0)
/* 08CB5C 8008BF5C 03E00008 */  jr    $ra
/* 08CB60 8008BF60 E448000C */   swc1  $f8, 0xc($v0)

/* 08CB64 8008BF64 000470C0 */  sll   $t6, $a0, 3
/* 08CB68 8008BF68 01C47023 */  subu  $t6, $t6, $a0
/* 08CB6C 8008BF6C 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 08CB70 8008BF70 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 08CB74 8008BF74 000E7140 */  sll   $t6, $t6, 5
/* 08CB78 8008BF78 01CF1021 */  addu  $v0, $t6, $t7
/* 08CB7C 8008BF7C 3C038018 */  lui   $v1, %hi(D_80183E40) # $v1, 0x8018
/* 08CB80 8008BF80 3C058018 */  lui   $a1, %hi(D_80183E80) # $a1, 0x8018
/* 08CB84 8008BF84 C4440004 */  lwc1  $f4, 4($v0)
/* 08CB88 8008BF88 C4460008 */  lwc1  $f6, 8($v0)
/* 08CB8C 8008BF8C C448000C */  lwc1  $f8, 0xc($v0)
/* 08CB90 8008BF90 945800BE */  lhu   $t8, 0xbe($v0)
/* 08CB94 8008BF94 945900C0 */  lhu   $t9, 0xc0($v0)
/* 08CB98 8008BF98 944800C2 */  lhu   $t0, 0xc2($v0)
/* 08CB9C 8008BF9C 24A53E80 */  addiu $a1, %lo(D_80183E80) # addiu $a1, $a1, 0x3e80
/* 08CBA0 8008BFA0 24633E40 */  addiu $v1, %lo(D_80183E40) # addiu $v1, $v1, 0x3e40
/* 08CBA4 8008BFA4 E4640000 */  swc1  $f4, ($v1)
/* 08CBA8 8008BFA8 E4660004 */  swc1  $f6, 4($v1)
/* 08CBAC 8008BFAC E4680008 */  swc1  $f8, 8($v1)
/* 08CBB0 8008BFB0 A4B80000 */  sh    $t8, ($a1)
/* 08CBB4 8008BFB4 A4B90002 */  sh    $t9, 2($a1)
/* 08CBB8 8008BFB8 03E00008 */  jr    $ra
/* 08CBBC 8008BFBC A4A80004 */   sh    $t0, 4($a1)
