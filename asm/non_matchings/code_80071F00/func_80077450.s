glabel func_80077450
/* 078050 80077450 000470C0 */  sll   $t6, $a0, 3
/* 078054 80077454 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 078058 80077458 01C47023 */  subu  $t6, $t6, $a0
/* 07805C 8007745C 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 078060 80077460 AFB00028 */  sw    $s0, 0x28($sp)
/* 078064 80077464 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 078068 80077468 000E7140 */  sll   $t6, $t6, 5
/* 07806C 8007746C 01CF8021 */  addu  $s0, $t6, $t7
/* 078070 80077470 860200A6 */  lh    $v0, 0xa6($s0)
/* 078074 80077474 AFBF002C */  sw    $ra, 0x2c($sp)
/* 078078 80077478 00803825 */  move  $a3, $a0
/* 07807C 8007747C 10400028 */  beqz  $v0, .L80077520
/* 078080 80077480 24010001 */   li    $at, 1
/* 078084 80077484 10410005 */  beq   $v0, $at, .L8007749C
/* 078088 80077488 24010002 */   li    $at, 2
/* 07808C 8007748C 10410007 */  beq   $v0, $at, .L800774AC
/* 078090 80077490 02002025 */   move  $a0, $s0
/* 078094 80077494 10000023 */  b     .L80077524
/* 078098 80077498 8E080048 */   lw    $t0, 0x48($s0)
.L8007749C:
/* 07809C 8007749C 0C01DD0A */  jal   func_80077428
/* 0780A0 800774A0 00E02025 */   move  $a0, $a3
/* 0780A4 800774A4 1000001F */  b     .L80077524
/* 0780A8 800774A8 8E080048 */   lw    $t0, 0x48($s0)
.L800774AC:
/* 0780AC 800774AC 3C053DCC */  lui   $a1, (0x3DCCCCCD >> 16) # lui $a1, 0x3dcc
/* 0780B0 800774B0 3C063C23 */  lui   $a2, (0x3C23D70A >> 16) # lui $a2, 0x3c23
/* 0780B4 800774B4 34C6D70A */  ori   $a2, (0x3C23D70A & 0xFFFF) # ori $a2, $a2, 0xd70a
/* 0780B8 800774B8 34A5CCCD */  ori   $a1, (0x3DCCCCCD & 0xFFFF) # ori $a1, $a1, 0xcccd
/* 0780BC 800774BC 0C0103B8 */  jal   func_80040EE0
/* 0780C0 800774C0 AFA70040 */   sw    $a3, 0x40($sp)
/* 0780C4 800774C4 8618008E */  lh    $t8, 0x8e($s0)
/* 0780C8 800774C8 C6080008 */  lwc1  $f8, 8($s0)
/* 0780CC 800774CC 8FA40040 */  lw    $a0, 0x40($sp)
/* 0780D0 800774D0 44982000 */  mtc1  $t8, $f4
/* 0780D4 800774D4 260500A0 */  addiu $a1, $s0, 0xa0
/* 0780D8 800774D8 240600FF */  li    $a2, 255
/* 0780DC 800774DC 468021A0 */  cvt.s.w $f6, $f4
/* 0780E0 800774E0 00003825 */  move  $a3, $zero
/* 0780E4 800774E4 24190010 */  li    $t9, 16
/* 0780E8 800774E8 4606403E */  c.le.s $f8, $f6
/* 0780EC 800774EC 00000000 */  nop   
/* 0780F0 800774F0 4502000C */  bc1fl .L80077524
/* 0780F4 800774F4 8E080048 */   lw    $t0, 0x48($s0)
/* 0780F8 800774F8 AFB90010 */  sw    $t9, 0x10($sp)
/* 0780FC 800774FC AFA00014 */  sw    $zero, 0x14($sp)
/* 078100 80077500 0C01CEC0 */  jal   func_80073B00
/* 078104 80077504 AFA00018 */   sw    $zero, 0x18($sp)
/* 078108 80077508 50400006 */  beql  $v0, $zero, .L80077524
/* 07810C 8007750C 8E080048 */   lw    $t0, 0x48($s0)
/* 078110 80077510 0C021BD8 */  jal   func_80086F60
/* 078114 80077514 8FA40040 */   lw    $a0, 0x40($sp)
/* 078118 80077518 0C01C90A */  jal   func_80072428
/* 07811C 8007751C 8FA40040 */   lw    $a0, 0x40($sp)
.L80077520:
/* 078120 80077520 8E080048 */  lw    $t0, 0x48($s0)
.L80077524:
/* 078124 80077524 24010003 */  li    $at, 3
/* 078128 80077528 27A5003C */  addiu $a1, $sp, 0x3c
/* 07812C 8007752C 51000011 */  beql  $t0, $zero, .L80077574
/* 078130 80077530 8FBF002C */   lw    $ra, 0x2c($sp)
/* 078134 80077534 8609008C */  lh    $t1, 0x8c($s0)
/* 078138 80077538 27A6003A */  addiu $a2, $sp, 0x3a
/* 07813C 8007753C 27A70038 */  addiu $a3, $sp, 0x38
/* 078140 80077540 252A0001 */  addiu $t2, $t1, 1
/* 078144 80077544 0141001A */  div   $zero, $t2, $at
/* 078148 80077548 00005810 */  mfhi  $t3
/* 07814C 8007754C A60B008C */  sh    $t3, 0x8c($s0)
/* 078150 80077550 0C0171AD */  jal   func_8005C6B4
/* 078154 80077554 8204008D */   lb    $a0, 0x8d($s0)
/* 078158 80077558 87AC003C */  lh    $t4, 0x3c($sp)
/* 07815C 8007755C 87AD003A */  lh    $t5, 0x3a($sp)
/* 078160 80077560 87AE0038 */  lh    $t6, 0x38($sp)
/* 078164 80077564 A60C0084 */  sh    $t4, 0x84($s0)
/* 078168 80077568 A60D0086 */  sh    $t5, 0x86($s0)
/* 07816C 8007756C A60E0088 */  sh    $t6, 0x88($s0)
/* 078170 80077570 8FBF002C */  lw    $ra, 0x2c($sp)
.L80077574:
/* 078174 80077574 8FB00028 */  lw    $s0, 0x28($sp)
/* 078178 80077578 27BD0040 */  addiu $sp, $sp, 0x40
/* 07817C 8007757C 03E00008 */  jr    $ra
/* 078180 80077580 00000000 */   nop   
