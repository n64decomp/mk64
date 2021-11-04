glabel func_8000B95C
/* 00C55C 8000B95C 44802000 */  mtc1  $zero, $f4
/* 00C560 8000B960 3C188016 */  lui   $t8, %hi(D_80163068) # $t8, 0x8016
/* 00C564 8000B964 27183068 */  addiu $t8, %lo(D_80163068) # addiu $t8, $t8, 0x3068
/* 00C568 8000B968 00047880 */  sll   $t7, $a0, 2
/* 00C56C 8000B96C 01F81821 */  addu  $v1, $t7, $t8
/* 00C570 8000B970 3C19800E */  lui   $t9, %hi(gCurrentCourseId)
/* 00C574 8000B974 E4640000 */  swc1  $f4, ($v1)
/* 00C578 8000B978 8739C5A0 */  lh    $t9, %lo(gCurrentCourseId)($t9)
/* 00C57C 8000B97C 3C01800E */  lui   $at, %hi(D_800DCA4C)
/* 00C580 8000B980 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00C584 8000B984 00194080 */  sll   $t0, $t9, 2
/* 00C588 8000B988 00280821 */  addu  $at, $at, $t0
/* 00C58C 8000B98C C426CA4C */  lwc1  $f6, %lo(D_800DCA4C)($at)
/* 00C590 8000B990 000458C0 */  sll   $t3, $a0, 3
/* 00C594 8000B994 AFA5002C */  sw    $a1, 0x2c($sp)
/* 00C598 8000B998 4600320D */  trunc.w.s $f8, $f6
/* 00C59C 8000B99C 30AEFFFF */  andi  $t6, $a1, 0xffff
/* 00C5A0 8000B9A0 01645823 */  subu  $t3, $t3, $a0
/* 00C5A4 8000B9A4 01C02825 */  move  $a1, $t6
/* 00C5A8 8000B9A8 440A4000 */  mfc1  $t2, $f8
/* 00C5AC 8000B9AC AFBF0014 */  sw    $ra, 0x14($sp)
/* 00C5B0 8000B9B0 00C03825 */  move  $a3, $a2
/* 00C5B4 8000B9B4 05400013 */  bltz  $t2, .L8000BA04
/* 00C5B8 8000B9B8 000B5900 */   sll   $t3, $t3, 4
/* 00C5BC 8000B9BC 01645823 */  subu  $t3, $t3, $a0
/* 00C5C0 8000B9C0 000B5880 */  sll   $t3, $t3, 2
/* 00C5C4 8000B9C4 01645823 */  subu  $t3, $t3, $a0
/* 00C5C8 8000B9C8 3C0C800F */  lui   $t4, %hi(gPlayers) # $t4, 0x800f
/* 00C5CC 8000B9CC 258C6990 */  addiu $t4, %lo(gPlayers) # addiu $t4, $t4, 0x6990
/* 00C5D0 8000B9D0 000B58C0 */  sll   $t3, $t3, 3
/* 00C5D4 8000B9D4 016C1021 */  addu  $v0, $t3, $t4
/* 00C5D8 8000B9D8 944D0000 */  lhu   $t5, ($v0)
/* 00C5DC 8000B9DC 30A6FFFF */  andi  $a2, $a1, 0xffff
/* 00C5E0 8000B9E0 31AE8000 */  andi  $t6, $t5, 0x8000
/* 00C5E4 8000B9E4 51C00008 */  beql  $t6, $zero, .L8000BA08
/* 00C5E8 8000B9E8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 00C5EC 8000B9EC C44C0014 */  lwc1  $f12, 0x14($v0)
/* 00C5F0 8000B9F0 C44E001C */  lwc1  $f14, 0x1c($v0)
/* 00C5F4 8000B9F4 0C002E1D */  jal   func_8000B874
/* 00C5F8 8000B9F8 AFA30018 */   sw    $v1, 0x18($sp)
/* 00C5FC 8000B9FC 8FA30018 */  lw    $v1, 0x18($sp)
/* 00C600 8000BA00 E4600000 */  swc1  $f0, ($v1)
.L8000BA04:
/* 00C604 8000BA04 8FBF0014 */  lw    $ra, 0x14($sp)
.L8000BA08:
/* 00C608 8000BA08 27BD0028 */  addiu $sp, $sp, 0x28
/* 00C60C 8000BA0C 03E00008 */  jr    $ra
/* 00C610 8000BA10 00000000 */   nop   
