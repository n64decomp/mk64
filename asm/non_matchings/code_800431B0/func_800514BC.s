glabel func_800514BC
/* 0520BC 800514BC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0520C0 800514C0 3C0E800E */  lui   $t6, %hi(gScreenModeSelection) # $t6, 0x800e
/* 0520C4 800514C4 8DCEC530 */  lw    $t6, %lo(gScreenModeSelection)($t6)
/* 0520C8 800514C8 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0520CC 800514CC AFB70030 */  sw    $s7, 0x30($sp)
/* 0520D0 800514D0 AFB6002C */  sw    $s6, 0x2c($sp)
/* 0520D4 800514D4 AFB50028 */  sw    $s5, 0x28($sp)
/* 0520D8 800514D8 AFB40024 */  sw    $s4, 0x24($sp)
/* 0520DC 800514DC AFB30020 */  sw    $s3, 0x20($sp)
/* 0520E0 800514E0 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0520E4 800514E4 AFB10018 */  sw    $s1, 0x18($sp)
/* 0520E8 800514E8 15C00003 */  bnez  $t6, .L800514F8
/* 0520EC 800514EC AFB00014 */   sw    $s0, 0x14($sp)
/* 0520F0 800514F0 0C014230 */  jal   func_800508C0
/* 0520F4 800514F4 00000000 */   nop
.L800514F8:
/* 0520F8 800514F8 3C17800E */  lui   $s7, %hi(gPlayerCountSelection1) # $s7, 0x800e
/* 0520FC 800514FC 26F7C538 */  addiu $s7, %lo(gPlayerCountSelection1) # addiu $s7, $s7, -0x3ac8
/* 052100 80051500 8EEF0000 */  lw    $t7, ($s7)
/* 052104 80051504 24020002 */  li    $v0, 2
/* 052108 80051508 24130008 */  li    $s3, 8
/* 05210C 8005150C 144F0006 */  bne   $v0, $t7, .L80051528
/* 052110 80051510 00008825 */   move  $s1, $zero
/* 052114 80051514 3C18800E */  lui   $t8, %hi(D_800DC52C) # $t8, 0x800e
/* 052118 80051518 8F18C52C */  lw    $t8, %lo(D_800DC52C)($t8)
/* 05211C 8005151C 14580002 */  bne   $v0, $t8, .L80051528
/* 052120 80051520 00000000 */   nop
/* 052124 80051524 00009825 */  move  $s3, $zero
.L80051528:
/* 052128 80051528 1A60001D */  blez  $s3, .L800515A0
/* 05212C 8005152C 2670FFFF */   addiu $s0, $s3, -1
/* 052130 80051530 3C088016 */  lui   $t0, %hi(D_80164360) # $t0, 0x8016
/* 052134 80051534 25084360 */  addiu $t0, %lo(D_80164360) # addiu $t0, $t0, 0x4360
/* 052138 80051538 0010C840 */  sll   $t9, $s0, 1
/* 05213C 8005153C 3C15800E */  lui   $s5, %hi(gPlayerOne) # $s5, 0x800e
/* 052140 80051540 26B5C4DC */  addiu $s5, %lo(gPlayerOne) # addiu $s5, $s5, -0x3b24
/* 052144 80051544 03289021 */  addu  $s2, $t9, $t0
/* 052148 80051548 24160001 */  li    $s6, 1
/* 05214C 8005154C 24140DD8 */  li    $s4, 3544
.L80051550:
/* 052150 80051550 86440000 */  lh    $a0, ($s2)
/* 052154 80051554 8EAA0000 */  lw    $t2, ($s5)
/* 052158 80051558 00940019 */  multu $a0, $s4
/* 05215C 8005155C 00004812 */  mflo  $t1
/* 052160 80051560 012A1021 */  addu  $v0, $t1, $t2
/* 052164 80051564 944B0000 */  lhu   $t3, ($v0)
/* 052168 80051568 316C8000 */  andi  $t4, $t3, 0x8000
/* 05216C 8005156C 51800009 */  beql  $t4, $zero, .L80051594
/* 052170 80051570 26310001 */   addiu $s1, $s1, 1
/* 052174 80051574 14800004 */  bnez  $a0, .L80051588
/* 052178 80051578 00000000 */   nop
/* 05217C 8005157C 8EED0000 */  lw    $t5, ($s7)
/* 052180 80051580 52CD0004 */  beql  $s6, $t5, .L80051594
/* 052184 80051584 26310001 */   addiu $s1, $s1, 1
.L80051588:
/* 052188 80051588 0C01438D */  jal   func_80050E34
/* 05218C 8005158C 02002825 */   move  $a1, $s0
/* 052190 80051590 26310001 */  addiu $s1, $s1, 1
.L80051594:
/* 052194 80051594 2610FFFF */  addiu $s0, $s0, -1
/* 052198 80051598 1633FFED */  bne   $s1, $s3, .L80051550
/* 05219C 8005159C 2652FFFE */   addiu $s2, $s2, -2
.L800515A0:
/* 0521A0 800515A0 3C0E800E */  lui   $t6, %hi(gModeSelection) # $t6, 0x800e
/* 0521A4 800515A4 8DCEC53C */  lw    $t6, %lo(gModeSelection)($t6)
/* 0521A8 800515A8 24160001 */  li    $s6, 1
/* 0521AC 800515AC 00002025 */  move  $a0, $zero
/* 0521B0 800515B0 16CE0005 */  bne   $s6, $t6, .L800515C8
/* 0521B4 800515B4 3C058016 */   lui   $a1, %hi(D_80164408) # $a1, 0x8016
/* 0521B8 800515B8 0C01438D */  jal   func_80050E34
/* 0521BC 800515BC 8CA54408 */   lw    $a1, %lo(D_80164408)($a1)
/* 0521C0 800515C0 10000008 */  b     .L800515E4
/* 0521C4 800515C4 00000000 */   nop
.L800515C8:
/* 0521C8 800515C8 8EEF0000 */  lw    $t7, ($s7)
/* 0521CC 800515CC 00002025 */  move  $a0, $zero
/* 0521D0 800515D0 3C058016 */  lui   $a1, %hi(D_801643B8) # $a1, 0x8016
/* 0521D4 800515D4 16CF0003 */  bne   $s6, $t7, .L800515E4
/* 0521D8 800515D8 00000000 */   nop
/* 0521DC 800515DC 0C01438D */  jal   func_80050E34
/* 0521E0 800515E0 8CA543B8 */   lw    $a1, %lo(D_801643B8)($a1)
.L800515E4:
/* 0521E4 800515E4 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 0521E8 800515E8 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 0521EC 800515EC 8C830000 */  lw    $v1, ($a0)
/* 0521F0 800515F0 3C080001 */  lui   $t0, (0x00010001 >> 16) # lui $t0, 1
/* 0521F4 800515F4 35080001 */  ori   $t0, (0x00010001 & 0xFFFF) # ori $t0, $t0, 1
/* 0521F8 800515F8 24780008 */  addiu $t8, $v1, 8
/* 0521FC 800515FC AC980000 */  sw    $t8, ($a0)
/* 052200 80051600 3C19BB00 */  lui   $t9, 0xbb00
/* 052204 80051604 AC790000 */  sw    $t9, ($v1)
/* 052208 80051608 AC680004 */  sw    $t0, 4($v1)
/* 05220C 8005160C 8FBF0034 */  lw    $ra, 0x34($sp)
/* 052210 80051610 8FB70030 */  lw    $s7, 0x30($sp)
/* 052214 80051614 8FB6002C */  lw    $s6, 0x2c($sp)
/* 052218 80051618 8FB50028 */  lw    $s5, 0x28($sp)
/* 05221C 8005161C 8FB40024 */  lw    $s4, 0x24($sp)
/* 052220 80051620 8FB30020 */  lw    $s3, 0x20($sp)
/* 052224 80051624 8FB2001C */  lw    $s2, 0x1c($sp)
/* 052228 80051628 8FB10018 */  lw    $s1, 0x18($sp)
/* 05222C 8005162C 8FB00014 */  lw    $s0, 0x14($sp)
/* 052230 80051630 03E00008 */  jr    $ra
/* 052234 80051634 27BD0038 */   addiu $sp, $sp, 0x38
