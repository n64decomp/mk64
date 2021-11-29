glabel func_8008BE0C
/* 08CA0C 8008BE0C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 08CA10 8008BE10 AFBF0014 */  sw    $ra, 0x14($sp)
/* 08CA14 8008BE14 AFA40020 */  sw    $a0, 0x20($sp)
/* 08CA18 8008BE18 AFA60028 */  sw    $a2, 0x28($sp)
/* 08CA1C 8008BE1C AFA50024 */  sw    $a1, 0x24($sp)
/* 08CA20 8008BE20 0C0AE006 */  jal   sins
/* 08CA24 8008BE24 97A4002A */   lhu   $a0, 0x2a($sp)
/* 08CA28 8008BE28 87B90026 */  lh    $t9, 0x26($sp)
/* 08CA2C 8008BE2C 3C08800E */  lui   $t0, %hi(D_800DC4FC) # $t0, 0x800e
/* 08CA30 8008BE30 8D08C4FC */  lw    $t0, %lo(D_800DC4FC)($t0)
/* 08CA34 8008BE34 44992000 */  mtc1  $t9, $f4
/* 08CA38 8008BE38 8FAE0020 */  lw    $t6, 0x20($sp)
/* 08CA3C 8008BE3C C5080014 */  lwc1  $f8, 0x14($t0)
/* 08CA40 8008BE40 468020A0 */  cvt.s.w $f2, $f4
/* 08CA44 8008BE44 000E78C0 */  sll   $t7, $t6, 3
/* 08CA48 8008BE48 3C188016 */  lui   $t8, %hi(D_80165C18) # $t8, 0x8016
/* 08CA4C 8008BE4C 01EE7823 */  subu  $t7, $t7, $t6
/* 08CA50 8008BE50 000F7940 */  sll   $t7, $t7, 5
/* 08CA54 8008BE54 27185C18 */  addiu $t8, %lo(D_80165C18) # addiu $t8, $t8, 0x5c18
/* 08CA58 8008BE58 46020182 */  mul.s $f6, $f0, $f2
/* 08CA5C 8008BE5C 01F81021 */  addu  $v0, $t7, $t8
/* 08CA60 8008BE60 AFA2001C */  sw    $v0, 0x1c($sp)
/* 08CA64 8008BE64 E7A20018 */  swc1  $f2, 0x18($sp)
/* 08CA68 8008BE68 97A4002A */  lhu   $a0, 0x2a($sp)
/* 08CA6C 8008BE6C 46083280 */  add.s $f10, $f6, $f8
/* 08CA70 8008BE70 0C0AE00E */  jal   coss
/* 08CA74 8008BE74 E44A0010 */   swc1  $f10, 0x10($v0)
/* 08CA78 8008BE78 C7A20018 */  lwc1  $f2, 0x18($sp)
/* 08CA7C 8008BE7C 3C09800E */  lui   $t1, %hi(D_800DC4FC) # $t1, 0x800e
/* 08CA80 8008BE80 8D29C4FC */  lw    $t1, %lo(D_800DC4FC)($t1)
/* 08CA84 8008BE84 46020402 */  mul.s $f16, $f0, $f2
/* 08CA88 8008BE88 8FBF0014 */  lw    $ra, 0x14($sp)
/* 08CA8C 8008BE8C C532001C */  lwc1  $f18, 0x1c($t1)
/* 08CA90 8008BE90 8FA2001C */  lw    $v0, 0x1c($sp)
/* 08CA94 8008BE94 27BD0020 */  addiu $sp, $sp, 0x20
/* 08CA98 8008BE98 46128100 */  add.s $f4, $f16, $f18
/* 08CA9C 8008BE9C 03E00008 */  jr    $ra
/* 08CAA0 8008BEA0 E4440018 */   swc1  $f4, 0x18($v0)

/* 08CAA4 8008BEA4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 08CAA8 8008BEA8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 08CAAC 8008BEAC AFA40020 */  sw    $a0, 0x20($sp)
/* 08CAB0 8008BEB0 AFA50024 */  sw    $a1, 0x24($sp)
/* 08CAB4 8008BEB4 AFA60028 */  sw    $a2, 0x28($sp)
/* 08CAB8 8008BEB8 0C0ADF8D */  jal   random_int
/* 08CABC 8008BEBC 30A4FFFF */   andi  $a0, $a1, 0xffff
/* 08CAC0 8008BEC0 A7A2001E */  sh    $v0, 0x1e($sp)
/* 08CAC4 8008BEC4 0C0ADF8D */  jal   random_int
/* 08CAC8 8008BEC8 97A4002A */   lhu   $a0, 0x2a($sp)
/* 08CACC 8008BECC 3C0F800E */  lui   $t7, %hi(camera1) # $t7, 0x800e
/* 08CAD0 8008BED0 8DEFDB40 */  lw    $t7, %lo(camera1)($t7)
/* 08CAD4 8008BED4 97A8002A */  lhu   $t0, 0x2a($sp)
/* 08CAD8 8008BED8 8FA40020 */  lw    $a0, 0x20($sp)
/* 08CADC 8008BEDC 85F80026 */  lh    $t8, 0x26($t7)
/* 08CAE0 8008BEE0 87A5001E */  lh    $a1, 0x1e($sp)
/* 08CAE4 8008BEE4 0058C821 */  addu  $t9, $v0, $t8
/* 08CAE8 8008BEE8 05010003 */  bgez  $t0, .L8008BEF8
/* 08CAEC 8008BEEC 00084843 */   sra   $t1, $t0, 1
/* 08CAF0 8008BEF0 25010001 */  addiu $at, $t0, 1
/* 08CAF4 8008BEF4 00014843 */  sra   $t1, $at, 1
.L8008BEF8:
/* 08CAF8 8008BEF8 03293023 */  subu  $a2, $t9, $t1
/* 08CAFC 8008BEFC 30CAFFFF */  andi  $t2, $a2, 0xffff
/* 08CB00 8008BF00 0C022F83 */  jal   func_8008BE0C
/* 08CB04 8008BF04 01403025 */   move  $a2, $t2
/* 08CB08 8008BF08 8FBF0014 */  lw    $ra, 0x14($sp)
/* 08CB0C 8008BF0C 27BD0020 */  addiu $sp, $sp, 0x20
/* 08CB10 8008BF10 03E00008 */  jr    $ra
/* 08CB14 8008BF14 00000000 */   nop   
