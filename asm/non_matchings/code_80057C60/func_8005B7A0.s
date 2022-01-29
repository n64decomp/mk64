glabel func_8005B7A0
/* 05C3A0 8005B7A0 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 05C3A4 8005B7A4 AFBF0054 */  sw    $ra, 0x54($sp)
/* 05C3A8 8005B7A8 3C048019 */  lui   $a0, %hi(D_8018CAC0) # $a0, 0x8019
/* 05C3AC 8005B7AC AFBE0050 */  sw    $fp, 0x50($sp)
/* 05C3B0 8005B7B0 AFB7004C */  sw    $s7, 0x4c($sp)
/* 05C3B4 8005B7B4 AFB60048 */  sw    $s6, 0x48($sp)
/* 05C3B8 8005B7B8 AFB50044 */  sw    $s5, 0x44($sp)
/* 05C3BC 8005B7BC AFB40040 */  sw    $s4, 0x40($sp)
/* 05C3C0 8005B7C0 AFB3003C */  sw    $s3, 0x3c($sp)
/* 05C3C4 8005B7C4 AFB20038 */  sw    $s2, 0x38($sp)
/* 05C3C8 8005B7C8 AFB10034 */  sw    $s1, 0x34($sp)
/* 05C3CC 8005B7CC AFB00030 */  sw    $s0, 0x30($sp)
/* 05C3D0 8005B7D0 F7B80028 */  sdc1  $f24, 0x28($sp)
/* 05C3D4 8005B7D4 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 05C3D8 8005B7D8 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 05C3DC 8005B7DC 2484CAC0 */  addiu $a0, %lo(D_8018CAC0) # addiu $a0, $a0, -0x3540
/* 05C3E0 8005B7E0 240500E4 */  li    $a1, 228
/* 05C3E4 8005B7E4 0C0104A2 */  jal   s16_step_towards
/* 05C3E8 8005B7E8 24060010 */   li    $a2, 16
/* 05C3EC 8005B7EC 3C048019 */  lui   $a0, %hi(D_8018CAC2) # $a0, 0x8019
/* 05C3F0 8005B7F0 2484CAC2 */  addiu $a0, %lo(D_8018CAC2) # addiu $a0, $a0, -0x353e
/* 05C3F4 8005B7F4 240500E4 */  li    $a1, 228
/* 05C3F8 8005B7F8 0C0104A2 */  jal   s16_step_towards
/* 05C3FC 8005B7FC 24060010 */   li    $a2, 16
/* 05C400 8005B800 3C048019 */  lui   $a0, %hi(D_8018CAC4) # $a0, 0x8019
/* 05C404 8005B804 2484CAC4 */  addiu $a0, %lo(D_8018CAC4) # addiu $a0, $a0, -0x353c
/* 05C408 8005B808 240500E4 */  li    $a1, 228
/* 05C40C 8005B80C 0C0104A2 */  jal   s16_step_towards
/* 05C410 8005B810 24060010 */   li    $a2, 16
/* 05C414 8005B814 3C048019 */  lui   $a0, %hi(D_8018CAC6) # $a0, 0x8019
/* 05C418 8005B818 2484CAC6 */  addiu $a0, %lo(D_8018CAC6) # addiu $a0, $a0, -0x353a
/* 05C41C 8005B81C 240500E4 */  li    $a1, 228
/* 05C420 8005B820 0C0104A2 */  jal   s16_step_towards
/* 05C424 8005B824 24060010 */   li    $a2, 16
/* 05C428 8005B828 3C01C200 */  li    $at, 0xC2000000 # -32.000000
/* 05C42C 8005B82C 4481C000 */  mtc1  $at, $f24
/* 05C430 8005B830 3C01C040 */  li    $at, 0xC0400000 # -3.000000
/* 05C434 8005B834 3C118019 */  lui   $s1, %hi(D_8018D050) # $s1, 0x8019
/* 05C438 8005B838 3C1E8019 */  lui   $fp, %hi(D_8018D070) # $fp, 0x8019
/* 05C43C 8005B83C 3C178019 */  lui   $s7, %hi(D_8018D078) # $s7, 0x8019
/* 05C440 8005B840 3C168019 */  lui   $s6, %hi(D_8018D0C8) # $s6, 0x8019
/* 05C444 8005B844 3C158019 */  lui   $s5, %hi(D_8018D028) # $s5, 0x8019
/* 05C448 8005B848 4481B800 */  mtc1  $at, $f23
/* 05C44C 8005B84C 4480B000 */  mtc1  $zero, $f22
/* 05C450 8005B850 4480A000 */  mtc1  $zero, $f20
/* 05C454 8005B854 26B5D028 */  addiu $s5, %lo(D_8018D028) # addiu $s5, $s5, -0x2fd8
/* 05C458 8005B858 26D6D0C8 */  addiu $s6, %lo(D_8018D0C8) # addiu $s6, $s6, -0x2f38
/* 05C45C 8005B85C 26F7D078 */  addiu $s7, %lo(D_8018D078) # addiu $s7, $s7, -0x2f88
/* 05C460 8005B860 27DED070 */  addiu $fp, %lo(D_8018D070) # addiu $fp, $fp, -0x2f90
/* 05C464 8005B864 2631D050 */  addiu $s1, %lo(D_8018D050) # addiu $s1, $s1, -0x2fb0
/* 05C468 8005B868 00008025 */  move  $s0, $zero
.L8005B86C:
/* 05C46C 8005B86C C6240000 */  lwc1  $f4, ($s1)
/* 05C470 8005B870 02B09021 */  addu  $s2, $s5, $s0
/* 05C474 8005B874 02402025 */  move  $a0, $s2
/* 05C478 8005B878 4604A03E */  c.le.s $f20, $f4
/* 05C47C 8005B87C 02D09821 */  addu  $s3, $s6, $s0
/* 05C480 8005B880 02F0A021 */  addu  $s4, $s7, $s0
/* 05C484 8005B884 45020012 */  bc1fl .L8005B8D0
/* 05C488 8005B888 26310004 */   addiu $s1, $s1, 4
/* 05C48C 8005B88C 8E650000 */  lw    $a1, ($s3)
/* 05C490 8005B890 0C0104EE */  jal   f32_step_towards
/* 05C494 8005B894 8E860000 */   lw    $a2, ($s4)
/* 05C498 8005B898 C6400000 */  lwc1  $f0, ($s2)
/* 05C49C 8005B89C C6660000 */  lwc1  $f6, ($s3)
/* 05C4A0 8005B8A0 46000221 */  cvt.d.s $f8, $f0
/* 05C4A4 8005B8A4 46060032 */  c.eq.s $f0, $f6
/* 05C4A8 8005B8A8 00000000 */  nop   
/* 05C4AC 8005B8AC 45020003 */  bc1fl .L8005B8BC
/* 05C4B0 8005B8B0 4636403E */   c.le.d $f8, $f22
/* 05C4B4 8005B8B4 E6940000 */  swc1  $f20, ($s4)
/* 05C4B8 8005B8B8 4636403E */  c.le.d $f8, $f22
.L8005B8BC:
/* 05C4BC 8005B8BC 00000000 */  nop   
/* 05C4C0 8005B8C0 45020003 */  bc1fl .L8005B8D0
/* 05C4C4 8005B8C4 26310004 */   addiu $s1, $s1, 4
/* 05C4C8 8005B8C8 E6380000 */  swc1  $f24, ($s1)
/* 05C4CC 8005B8CC 26310004 */  addiu $s1, $s1, 4
.L8005B8D0:
/* 05C4D0 8005B8D0 163EFFE6 */  bne   $s1, $fp, .L8005B86C
/* 05C4D4 8005B8D4 26100004 */   addiu $s0, $s0, 4
/* 05C4D8 8005B8D8 8FBF0054 */  lw    $ra, 0x54($sp)
/* 05C4DC 8005B8DC D7B40018 */  ldc1  $f20, 0x18($sp)
/* 05C4E0 8005B8E0 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 05C4E4 8005B8E4 D7B80028 */  ldc1  $f24, 0x28($sp)
/* 05C4E8 8005B8E8 8FB00030 */  lw    $s0, 0x30($sp)
/* 05C4EC 8005B8EC 8FB10034 */  lw    $s1, 0x34($sp)
/* 05C4F0 8005B8F0 8FB20038 */  lw    $s2, 0x38($sp)
/* 05C4F4 8005B8F4 8FB3003C */  lw    $s3, 0x3c($sp)
/* 05C4F8 8005B8F8 8FB40040 */  lw    $s4, 0x40($sp)
/* 05C4FC 8005B8FC 8FB50044 */  lw    $s5, 0x44($sp)
/* 05C500 8005B900 8FB60048 */  lw    $s6, 0x48($sp)
/* 05C504 8005B904 8FB7004C */  lw    $s7, 0x4c($sp)
/* 05C508 8005B908 8FBE0050 */  lw    $fp, 0x50($sp)
/* 05C50C 8005B90C 03E00008 */  jr    $ra
/* 05C510 8005B910 27BD0058 */   addiu $sp, $sp, 0x58
