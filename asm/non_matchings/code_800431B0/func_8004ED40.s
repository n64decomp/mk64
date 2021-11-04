glabel func_8004ED40
/* 04F940 8004ED40 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 04F944 8004ED44 00047940 */  sll   $t7, $a0, 5
/* 04F948 8004ED48 01E47821 */  addu  $t7, $t7, $a0
/* 04F94C 8004ED4C 3C188019 */  lui   $t8, %hi(D_8018CA70) # $t8, 0x8019
/* 04F950 8004ED50 2718CA70 */  addiu $t8, %lo(D_8018CA70) # addiu $t8, $t8, -0x3590
/* 04F954 8004ED54 000F7880 */  sll   $t7, $t7, 2
/* 04F958 8004ED58 01F81021 */  addu  $v0, $t7, $t8
/* 04F95C 8004ED5C 3C198019 */  lui   $t9, %hi(D_8018D300) # $t9, 0x8019
/* 04F960 8004ED60 3C088019 */  lui   $t0, %hi(D_8018D308) # $t0, 0x8019
/* 04F964 8004ED64 3C098019 */  lui   $t1, %hi(D_8018D310) # $t1, 0x8019
/* 04F968 8004ED68 9529D310 */  lhu   $t1, %lo(D_8018D310)($t1)
/* 04F96C 8004ED6C 9508D308 */  lhu   $t0, %lo(D_8018D308)($t0)
/* 04F970 8004ED70 9739D300 */  lhu   $t9, %lo(D_8018D300)($t9)
/* 04F974 8004ED74 3C0B0D01 */  lui   $t3, %hi(D_0D009958) # $t3, 0xd01
/* 04F978 8004ED78 3C0C0D00 */  lui   $t4, %hi(D_0D0064B0) # $t4, 0xd00
/* 04F97C 8004ED7C AFBF003C */  sw    $ra, 0x3c($sp)
/* 04F980 8004ED80 AFA40040 */  sw    $a0, 0x40($sp)
/* 04F984 8004ED84 258C64B0 */  addiu $t4, %lo(D_0D0064B0) # addiu $t4, $t4, 0x64b0
/* 04F988 8004ED88 256B9958 */  addiu $t3, %lo(D_0D009958) # addiu $t3, $t3, -0x66a8
/* 04F98C 8004ED8C 24180030 */  li    $t8, 48
/* 04F990 8004ED90 240F0040 */  li    $t7, 64
/* 04F994 8004ED94 240A00FF */  li    $t2, 255
/* 04F998 8004ED98 240D0040 */  li    $t5, 64
/* 04F99C 8004ED9C 240E0060 */  li    $t6, 96
/* 04F9A0 8004EDA0 AFAE002C */  sw    $t6, 0x2c($sp)
/* 04F9A4 8004EDA4 AFAD0028 */  sw    $t5, 0x28($sp)
/* 04F9A8 8004EDA8 AFAA001C */  sw    $t2, 0x1c($sp)
/* 04F9AC 8004EDAC AFAF0030 */  sw    $t7, 0x30($sp)
/* 04F9B0 8004EDB0 AFB80034 */  sw    $t8, 0x34($sp)
/* 04F9B4 8004EDB4 AFAB0020 */  sw    $t3, 0x20($sp)
/* 04F9B8 8004EDB8 AFAC0024 */  sw    $t4, 0x24($sp)
/* 04F9BC 8004EDBC 8444003E */  lh    $a0, 0x3e($v0)
/* 04F9C0 8004EDC0 84450040 */  lh    $a1, 0x40($v0)
/* 04F9C4 8004EDC4 00003025 */  move  $a2, $zero
/* 04F9C8 8004EDC8 3C073F80 */  lui   $a3, 0x3f80
/* 04F9CC 8004EDCC AFA90018 */  sw    $t1, 0x18($sp)
/* 04F9D0 8004EDD0 AFA80014 */  sw    $t0, 0x14($sp)
/* 04F9D4 8004EDD4 0C0128BD */  jal   func_8004A2F4
/* 04F9D8 8004EDD8 AFB90010 */   sw    $t9, 0x10($sp)
/* 04F9DC 8004EDDC 3C018019 */  lui   $at, %hi(D_8018CFEC) # $at, 0x8019
/* 04F9E0 8004EDE0 C424CFEC */  lwc1  $f4, %lo(D_8018CFEC)($at)
/* 04F9E4 8004EDE4 3C018019 */  lui   $at, %hi(D_8018CFF4) # $at, 0x8019
/* 04F9E8 8004EDE8 C428CFF4 */  lwc1  $f8, %lo(D_8018CFF4)($at)
/* 04F9EC 8004EDEC 4600218D */  trunc.w.s $f6, $f4
/* 04F9F0 8004EDF0 3C090D01 */  lui   $t1, %hi(D_0D00A558) # $t1, 0xd01
/* 04F9F4 8004EDF4 3C0A0D00 */  lui   $t2, %hi(D_0D005FF0) # $t2, 0xd00
/* 04F9F8 8004EDF8 4600428D */  trunc.w.s $f10, $f8
/* 04F9FC 8004EDFC 254A5FF0 */  addiu $t2, %lo(D_0D005FF0) # addiu $t2, $t2, 0x5ff0
/* 04FA00 8004EE00 2529A558 */  addiu $t1, %lo(D_0D00A558) # addiu $t1, $t1, -0x5aa8
/* 04FA04 8004EE04 44043000 */  mfc1  $a0, $f6
/* 04FA08 8004EE08 44055000 */  mfc1  $a1, $f10
/* 04FA0C 8004EE0C 3C068016 */  lui   $a2, %hi(D_8016579E) # $a2, 0x8016
/* 04FA10 8004EE10 240B0040 */  li    $t3, 64
/* 04FA14 8004EE14 240C0020 */  li    $t4, 32
/* 04FA18 8004EE18 240D0040 */  li    $t5, 64
/* 04FA1C 8004EE1C 240E0020 */  li    $t6, 32
/* 04FA20 8004EE20 AFAE0024 */  sw    $t6, 0x24($sp)
/* 04FA24 8004EE24 AFAD0020 */  sw    $t5, 0x20($sp)
/* 04FA28 8004EE28 AFAC001C */  sw    $t4, 0x1c($sp)
/* 04FA2C 8004EE2C AFAB0018 */  sw    $t3, 0x18($sp)
/* 04FA30 8004EE30 94C6579E */  lhu   $a2, %lo(D_8016579E)($a2)
/* 04FA34 8004EE34 AFA90010 */  sw    $t1, 0x10($sp)
/* 04FA38 8004EE38 AFAA0014 */  sw    $t2, 0x14($sp)
/* 04FA3C 8004EE3C 0C012896 */  jal   func_8004A258
/* 04FA40 8004EE40 3C073F80 */   lui   $a3, 0x3f80
/* 04FA44 8004EE44 8FBF003C */  lw    $ra, 0x3c($sp)
/* 04FA48 8004EE48 27BD0040 */  addiu $sp, $sp, 0x40
/* 04FA4C 8004EE4C 03E00008 */  jr    $ra
/* 04FA50 8004EE50 00000000 */   nop   
