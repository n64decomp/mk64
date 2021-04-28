# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel guRotateF
/* 0CFA70 800CEE70 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0CFA74 800CEE74 3C01800F */  lui   $at, %hi(D_800F39E0) # $at, 0x800f
/* 0CFA78 800CEE78 C42439E0 */  lwc1  $f4, %lo(D_800F39E0)($at)
/* 0CFA7C 800CEE7C AFB00018 */  sw    $s0, 0x18($sp)
/* 0CFA80 800CEE80 00808025 */  move  $s0, $a0
/* 0CFA84 800CEE84 3C018019 */  lui    $at, %hi(D_801965D0)
/* 0CFA88 800CEE88 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0CFA8C 800CEE8C AFA5003C */  sw    $a1, 0x3c($sp)
/* 0CFA90 800CEE90 AFA60040 */  sw    $a2, 0x40($sp)
/* 0CFA94 800CEE94 AFA70044 */  sw    $a3, 0x44($sp)
/* 0CFA98 800CEE98 27A60048 */  addiu $a2, $sp, 0x48
/* 0CFA9C 800CEE9C 27A50044 */  addiu $a1, $sp, 0x44
/* 0CFAA0 800CEEA0 27A40040 */  addiu $a0, $sp, 0x40
/* 0CFAA4 800CEEA4 0C035818 */  jal   guNormalize
/* 0CFAA8 800CEEA8 E42465D0 */   swc1  $f4, %lo(D_801965D0)($at)
/* 0CFAAC 800CEEAC 3C018019 */  lui    $at, %hi(D_801965D0)
/* 0CFAB0 800CEEB0 C7AC003C */  lwc1  $f12, 0x3c($sp)
/* 0CFAB4 800CEEB4 C42665D0 */  lwc1  $f6, %lo(D_801965D0)($at)
/* 0CFAB8 800CEEB8 46066302 */  mul.s $f12, $f12, $f6
/* 0CFABC 800CEEBC 0C03583C */  jal   sinf
/* 0CFAC0 800CEEC0 E7AC003C */   swc1  $f12, 0x3c($sp)
/* 0CFAC4 800CEEC4 C7AC003C */  lwc1  $f12, 0x3c($sp)
/* 0CFAC8 800CEEC8 0C0358AC */  jal   cosf
/* 0CFACC 800CEECC E7A00034 */   swc1  $f0, 0x34($sp)
/* 0CFAD0 800CEED0 C7AA0040 */  lwc1  $f10, 0x40($sp)
/* 0CFAD4 800CEED4 C7A40044 */  lwc1  $f4, 0x44($sp)
/* 0CFAD8 800CEED8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0CFADC 800CEEDC 44814000 */  mtc1  $at, $f8
/* 0CFAE0 800CEEE0 46045182 */  mul.s $f6, $f10, $f4
/* 0CFAE4 800CEEE4 02002025 */  move  $a0, $s0
/* 0CFAE8 800CEEE8 46004081 */  sub.s $f2, $f8, $f0
/* 0CFAEC 800CEEEC C7A80048 */  lwc1  $f8, 0x48($sp)
/* 0CFAF0 800CEEF0 E7A00030 */  swc1  $f0, 0x30($sp)
/* 0CFAF4 800CEEF4 46023402 */  mul.s $f16, $f6, $f2
/* 0CFAF8 800CEEF8 00000000 */  nop   
/* 0CFAFC 800CEEFC 46082182 */  mul.s $f6, $f4, $f8
/* 0CFB00 800CEF00 E7B0002C */  swc1  $f16, 0x2c($sp)
/* 0CFB04 800CEF04 46023482 */  mul.s $f18, $f6, $f2
/* 0CFB08 800CEF08 00000000 */  nop   
/* 0CFB0C 800CEF0C 460A4102 */  mul.s $f4, $f8, $f10
/* 0CFB10 800CEF10 E7B20028 */  swc1  $f18, 0x28($sp)
/* 0CFB14 800CEF14 46022182 */  mul.s $f6, $f4, $f2
/* 0CFB18 800CEF18 0C034FA8 */  jal   guMtxIdentF
/* 0CFB1C 800CEF1C E7A60024 */   swc1  $f6, 0x24($sp)
/* 0CFB20 800CEF20 C7A80040 */  lwc1  $f8, 0x40($sp)
/* 0CFB24 800CEF24 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0CFB28 800CEF28 44815000 */  mtc1  $at, $f10
/* 0CFB2C 800CEF2C 46084002 */  mul.s $f0, $f8, $f8
/* 0CFB30 800CEF30 C7AC0030 */  lwc1  $f12, 0x30($sp)
/* 0CFB34 800CEF34 C7AE0034 */  lwc1  $f14, 0x34($sp)
/* 0CFB38 800CEF38 C7B0002C */  lwc1  $f16, 0x2c($sp)
/* 0CFB3C 800CEF3C C7B20028 */  lwc1  $f18, 0x28($sp)
/* 0CFB40 800CEF40 46005101 */  sub.s $f4, $f10, $f0
/* 0CFB44 800CEF44 460C2182 */  mul.s $f6, $f4, $f12
/* 0CFB48 800CEF48 46003200 */  add.s $f8, $f6, $f0
/* 0CFB4C 800CEF4C E6080000 */  swc1  $f8, ($s0)
/* 0CFB50 800CEF50 C7AA0040 */  lwc1  $f10, 0x40($sp)
/* 0CFB54 800CEF54 460E5102 */  mul.s $f4, $f10, $f14
/* 0CFB58 800CEF58 46049181 */  sub.s $f6, $f18, $f4
/* 0CFB5C 800CEF5C E6060024 */  swc1  $f6, 0x24($s0)
/* 0CFB60 800CEF60 C7A80040 */  lwc1  $f8, 0x40($sp)
/* 0CFB64 800CEF64 460E4282 */  mul.s $f10, $f8, $f14
/* 0CFB68 800CEF68 44814000 */  mtc1  $at, $f8
/* 0CFB6C 800CEF6C 46125100 */  add.s $f4, $f10, $f18
/* 0CFB70 800CEF70 E6040018 */  swc1  $f4, 0x18($s0)
/* 0CFB74 800CEF74 C7A60044 */  lwc1  $f6, 0x44($sp)
/* 0CFB78 800CEF78 46063082 */  mul.s $f2, $f6, $f6
/* 0CFB7C 800CEF7C 46024281 */  sub.s $f10, $f8, $f2
/* 0CFB80 800CEF80 460C5102 */  mul.s $f4, $f10, $f12
/* 0CFB84 800CEF84 46022180 */  add.s $f6, $f4, $f2
/* 0CFB88 800CEF88 E6060014 */  swc1  $f6, 0x14($s0)
/* 0CFB8C 800CEF8C C7A80044 */  lwc1  $f8, 0x44($sp)
/* 0CFB90 800CEF90 C7A40024 */  lwc1  $f4, 0x24($sp)
/* 0CFB94 800CEF94 460E4282 */  mul.s $f10, $f8, $f14
/* 0CFB98 800CEF98 46045180 */  add.s $f6, $f10, $f4
/* 0CFB9C 800CEF9C E6060020 */  swc1  $f6, 0x20($s0)
/* 0CFBA0 800CEFA0 C7AA0044 */  lwc1  $f10, 0x44($sp)
/* 0CFBA4 800CEFA4 C7A80024 */  lwc1  $f8, 0x24($sp)
/* 0CFBA8 800CEFA8 460E5102 */  mul.s $f4, $f10, $f14
/* 0CFBAC 800CEFAC 46044181 */  sub.s $f6, $f8, $f4
/* 0CFBB0 800CEFB0 44814000 */  mtc1  $at, $f8
/* 0CFBB4 800CEFB4 E6060008 */  swc1  $f6, 8($s0)
/* 0CFBB8 800CEFB8 C7AA0048 */  lwc1  $f10, 0x48($sp)
/* 0CFBBC 800CEFBC 460A5002 */  mul.s $f0, $f10, $f10
/* 0CFBC0 800CEFC0 46004101 */  sub.s $f4, $f8, $f0
/* 0CFBC4 800CEFC4 460C2182 */  mul.s $f6, $f4, $f12
/* 0CFBC8 800CEFC8 46003280 */  add.s $f10, $f6, $f0
/* 0CFBCC 800CEFCC E60A0028 */  swc1  $f10, 0x28($s0)
/* 0CFBD0 800CEFD0 C7A80048 */  lwc1  $f8, 0x48($sp)
/* 0CFBD4 800CEFD4 460E4102 */  mul.s $f4, $f8, $f14
/* 0CFBD8 800CEFD8 46048181 */  sub.s $f6, $f16, $f4
/* 0CFBDC 800CEFDC E6060010 */  swc1  $f6, 0x10($s0)
/* 0CFBE0 800CEFE0 C7AA0048 */  lwc1  $f10, 0x48($sp)
/* 0CFBE4 800CEFE4 460E5202 */  mul.s $f8, $f10, $f14
/* 0CFBE8 800CEFE8 46104100 */  add.s $f4, $f8, $f16
/* 0CFBEC 800CEFEC E6040004 */  swc1  $f4, 4($s0)
/* 0CFBF0 800CEFF0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0CFBF4 800CEFF4 8FB00018 */  lw    $s0, 0x18($sp)
/* 0CFBF8 800CEFF8 27BD0038 */  addiu $sp, $sp, 0x38
/* 0CFBFC 800CEFFC 03E00008 */  jr    $ra
/* 0CFC00 800CF000 00000000 */   nop   

glabel guRotate
/* 0CFC04 800CF004 44856000 */  mtc1  $a1, $f12
/* 0CFC08 800CF008 44867000 */  mtc1  $a2, $f14
/* 0CFC0C 800CF00C 44878000 */  mtc1  $a3, $f16
/* 0CFC10 800CF010 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 0CFC14 800CF014 C7A40070 */  lwc1  $f4, 0x70($sp)
/* 0CFC18 800CF018 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0CFC1C 800CF01C AFA40060 */  sw    $a0, 0x60($sp)
/* 0CFC20 800CF020 44056000 */  mfc1  $a1, $f12
/* 0CFC24 800CF024 44067000 */  mfc1  $a2, $f14
/* 0CFC28 800CF028 44078000 */  mfc1  $a3, $f16
/* 0CFC2C 800CF02C 27A40020 */  addiu $a0, $sp, 0x20
/* 0CFC30 800CF030 0C033B9C */  jal   guRotateF
/* 0CFC34 800CF034 E7A40010 */   swc1  $f4, 0x10($sp)
/* 0CFC38 800CF038 27A40020 */  addiu $a0, $sp, 0x20
/* 0CFC3C 800CF03C 0C034F68 */  jal   guMtxF2L
/* 0CFC40 800CF040 8FA50060 */   lw    $a1, 0x60($sp)
/* 0CFC44 800CF044 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0CFC48 800CF048 27BD0060 */  addiu $sp, $sp, 0x60
/* 0CFC4C 800CF04C 03E00008 */  jr    $ra
/* 0CFC50 800CF050 00000000 */   nop   

/* 0CFC54 800CF054 00000000 */  nop   
/* 0CFC58 800CF058 00000000 */  nop   
/* 0CFC5C 800CF05C 00000000 */  nop   