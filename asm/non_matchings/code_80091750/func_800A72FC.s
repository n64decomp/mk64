glabel func_800A72FC
/* 0A7EFC 800A72FC 3C0E8019 */  lui   $t6, %hi(gCupSelection) # $t6, 0x8019
/* 0A7F00 800A7300 81CEEE09 */  lb    $t6, %lo(gCupSelection)($t6)
/* 0A7F04 800A7304 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0A7F08 800A7308 AFA40038 */  sw    $a0, 0x38($sp)
/* 0A7F0C 800A730C 3C04800E */  lui   $a0, %hi(D_800E7500)
/* 0A7F10 800A7310 000E7880 */  sll   $t7, $t6, 2
/* 0A7F14 800A7314 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0A7F18 800A7318 008F2021 */  addu  $a0, $a0, $t7
/* 0A7F1C 800A731C F7B40018 */  sdc1  $f20, 0x18($sp)
/* 0A7F20 800A7320 0C024C0D */  jal   func_80093034
/* 0A7F24 800A7324 8C847500 */   lw    $a0, %lo(D_800E7500)($a0)
/* 0A7F28 800A7328 44822000 */  mtc1  $v0, $f4
/* 0A7F2C 800A732C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0A7F30 800A7330 4481A000 */  mtc1  $at, $f20
/* 0A7F34 800A7334 468021A0 */  cvt.s.w $f6, $f4
/* 0A7F38 800A7338 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 0A7F3C 800A733C 44815000 */  mtc1  $at, $f10
/* 0A7F40 800A7340 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0A7F44 800A7344 44819000 */  mtc1  $at, $f18
/* 0A7F48 800A7348 3C08800E */  lui   $t0, %hi(gCCSelection) # $t0, 0x800e
/* 0A7F4C 800A734C 46143202 */  mul.s $f8, $f6, $f20
/* 0A7F50 800A7350 8D08C548 */  lw    $t0, %lo(gCCSelection)($t0)
/* 0A7F54 800A7354 3C04800E */  lui   $a0, %hi(D_800E76CC)
/* 0A7F58 800A7358 00084880 */  sll   $t1, $t0, 2
/* 0A7F5C 800A735C 00892021 */  addu  $a0, $a0, $t1
/* 0A7F60 800A7360 8C8476CC */  lw    $a0, %lo(D_800E76CC)($a0)
/* 0A7F64 800A7364 460A4400 */  add.s $f16, $f8, $f10
/* 0A7F68 800A7368 46128103 */  div.s $f4, $f16, $f18
/* 0A7F6C 800A736C 4600218D */  trunc.w.s $f6, $f4
/* 0A7F70 800A7370 44193000 */  mfc1  $t9, $f6
/* 0A7F74 800A7374 0C024C0D */  jal   func_80093034
/* 0A7F78 800A7378 AFB90030 */   sw    $t9, 0x30($sp)
/* 0A7F7C 800A737C 44824000 */  mtc1  $v0, $f8
/* 0A7F80 800A7380 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 0A7F84 800A7384 44819000 */  mtc1  $at, $f18
/* 0A7F88 800A7388 468042A0 */  cvt.s.w $f10, $f8
/* 0A7F8C 800A738C 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0A7F90 800A7390 44813000 */  mtc1  $at, $f6
/* 0A7F94 800A7394 24040003 */  li    $a0, 3
/* 0A7F98 800A7398 46145402 */  mul.s $f16, $f10, $f20
/* 0A7F9C 800A739C 46128100 */  add.s $f4, $f16, $f18
/* 0A7FA0 800A73A0 46062203 */  div.s $f8, $f4, $f6
/* 0A7FA4 800A73A4 4600428D */  trunc.w.s $f10, $f8
/* 0A7FA8 800A73A8 440B5000 */  mfc1  $t3, $f10
/* 0A7FAC 800A73AC 0C024C36 */  jal   set_text_color
/* 0A7FB0 800A73B0 AFAB002C */   sw    $t3, 0x2c($sp)
/* 0A7FB4 800A73B4 3C0E8019 */  lui   $t6, %hi(gCupSelection) # $t6, 0x8019
/* 0A7FB8 800A73B8 8FA20038 */  lw    $v0, 0x38($sp)
/* 0A7FBC 800A73BC 81CEEE09 */  lb    $t6, %lo(gCupSelection)($t6)
/* 0A7FC0 800A73C0 8FAD002C */  lw    $t5, 0x2c($sp)
/* 0A7FC4 800A73C4 8C4C000C */  lw    $t4, 0xc($v0)
/* 0A7FC8 800A73C8 3C06800E */  lui   $a2, %hi(D_800E7500)
/* 0A7FCC 800A73CC 000E7880 */  sll   $t7, $t6, 2
/* 0A7FD0 800A73D0 00CF3021 */  addu  $a2, $a2, $t7
/* 0A7FD4 800A73D4 8C450010 */  lw    $a1, 0x10($v0)
/* 0A7FD8 800A73D8 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A7FDC 800A73DC E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A7FE0 800A73E0 8CC67500 */  lw    $a2, %lo(D_800E7500)($a2)
/* 0A7FE4 800A73E4 00003825 */  move  $a3, $zero
/* 0A7FE8 800A73E8 0C024DBB */  jal   draw_text
/* 0A7FEC 800A73EC 018D2023 */   subu  $a0, $t4, $t5
/* 0A7FF0 800A73F0 0C024C36 */  jal   set_text_color
/* 0A7FF4 800A73F4 24040003 */   li    $a0, 3
/* 0A7FF8 800A73F8 3C09800E */  lui   $t1, %hi(gCCSelection) # $t1, 0x800e
/* 0A7FFC 800A73FC 8D29C548 */  lw    $t1, %lo(gCCSelection)($t1)
/* 0A8000 800A7400 8FB80038 */  lw    $t8, 0x38($sp)
/* 0A8004 800A7404 8FA80030 */  lw    $t0, 0x30($sp)
/* 0A8008 800A7408 3C06800E */  lui   $a2, %hi(D_800E76DC)
/* 0A800C 800A740C 8F19000C */  lw    $t9, 0xc($t8)
/* 0A8010 800A7410 00095080 */  sll   $t2, $t1, 2
/* 0A8014 800A7414 00CA3021 */  addu  $a2, $a2, $t2
/* 0A8018 800A7418 8F050010 */  lw    $a1, 0x10($t8)
/* 0A801C 800A741C E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A8020 800A7420 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A8024 800A7424 8CC676DC */  lw    $a2, %lo(D_800E76DC)($a2)
/* 0A8028 800A7428 00003825 */  move  $a3, $zero
/* 0A802C 800A742C 0C024DBB */  jal   draw_text
/* 0A8030 800A7430 03282021 */   addu  $a0, $t9, $t0
/* 0A8034 800A7434 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0A8038 800A7438 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 0A803C 800A743C 27BD0038 */  addiu $sp, $sp, 0x38
/* 0A8040 800A7440 03E00008 */  jr    $ra
/* 0A8044 800A7444 00000000 */   nop   
