.section .late_rodata

glabel D_800ED1B0
.double 1.6666666666666667

.section .text

glabel func_800146B8
/* 0152B8 800146B8 000478C0 */  sll   $t7, $a0, 3
/* 0152BC 800146BC 01E47823 */  subu  $t7, $t7, $a0
/* 0152C0 800146C0 000F7900 */  sll   $t7, $t7, 4
/* 0152C4 800146C4 01E47823 */  subu  $t7, $t7, $a0
/* 0152C8 800146C8 000F7880 */  sll   $t7, $t7, 2
/* 0152CC 800146CC 01E47823 */  subu  $t7, $t7, $a0
/* 0152D0 800146D0 000F78C0 */  sll   $t7, $t7, 3
/* 0152D4 800146D4 3C01800F */  lui   $at, %hi(gPlayers+0x94)
/* 0152D8 800146D8 002F0821 */  addu  $at, $at, $t7
/* 0152DC 800146DC C4246A24 */  lwc1  $f4, %lo(gPlayers+0x94)($at)
/* 0152E0 800146E0 3C01800F */  lui   $at, %hi(D_800ED1B0)
/* 0152E4 800146E4 D428D1B0 */  ldc1  $f8, %lo(D_800ED1B0)($at)
/* 0152E8 800146E8 460021A1 */  cvt.d.s $f6, $f4
/* 0152EC 800146EC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0152F0 800146F0 4628303C */  c.lt.d $f6, $f8
/* 0152F4 800146F4 AFB10018 */  sw    $s1, 0x18($sp)
/* 0152F8 800146F8 AFB00014 */  sw    $s0, 0x14($sp)
/* 0152FC 800146FC 3C088016 */  lui   $t0, %hi(gWaypointCountByPathIndex) # $t0, 0x8016
/* 015300 80014700 00C08025 */  move  $s0, $a2
/* 015304 80014704 00A08825 */  move  $s1, $a1
/* 015308 80014708 AFBF001C */  sw    $ra, 0x1c($sp)
/* 01530C 8001470C AFA40020 */  sw    $a0, 0x20($sp)
/* 015310 80014710 950845C8 */  lhu   $t0, %lo(gWaypointCountByPathIndex)($t0)
/* 015314 80014714 4501002D */  bc1t  .L800147CC
/* 015318 80014718 00807025 */   move  $t6, $a0
/* 01531C 8001471C 18A0002B */  blez  $a1, .L800147CC
/* 015320 80014720 00003025 */   move  $a2, $zero
/* 015324 80014724 3C098016 */  lui   $t1, %hi(D_80162FCE) # $t1, 0x8016
/* 015328 80014728 85292FCE */  lh    $t1, %lo(D_80162FCE)($t1)
/* 01532C 8001472C 24040018 */  li    $a0, 24
.L80014730:
/* 015330 80014730 9605001C */  lhu   $a1, 0x1c($s0)
/* 015334 80014734 00001025 */  move  $v0, $zero
/* 015338 80014738 01201825 */  move  $v1, $t1
/* 01533C 8001473C 00A03825 */  move  $a3, $a1
.L80014740:
/* 015340 80014740 0068001A */  div   $zero, $v1, $t0
/* 015344 80014744 0000C010 */  mfhi  $t8
/* 015348 80014748 24420003 */  addiu $v0, $v0, 3
/* 01534C 8001474C 15000002 */  bnez  $t0, .L80014758
/* 015350 80014750 00000000 */   nop   
/* 015354 80014754 0007000D */  break 7
.L80014758:
/* 015358 80014758 2401FFFF */  li    $at, -1
/* 01535C 8001475C 15010004 */  bne   $t0, $at, .L80014770
/* 015360 80014760 3C018000 */   lui   $at, 0x8000
/* 015364 80014764 14610002 */  bne   $v1, $at, .L80014770
/* 015368 80014768 00000000 */   nop   
/* 01536C 8001476C 0006000D */  break 6
.L80014770:
/* 015370 80014770 14F80011 */  bne   $a3, $t8, .L800147B8
/* 015374 80014774 00000000 */   nop   
/* 015378 80014778 8FB90020 */  lw    $t9, 0x20($sp)
/* 01537C 8001477C 3C058016 */  lui   $a1, %hi(D_80163068) # 0x8016
/* 015380 80014780 00073400 */  sll   $a2, $a3, 0x10
/* 015384 80014784 00195080 */  sll   $t2, $t9, 2
/* 015388 80014788 00AA2821 */  addu  $a1, $a1, $t2
/* 01538C 8001478C 00065C03 */  sra   $t3, $a2, 0x10
/* 015390 80014790 01603025 */  move  $a2, $t3
/* 015394 80014794 8CA53068 */  lw    $a1, %lo(D_80163068)($a1) # 0x3068($a1)
/* 015398 80014798 0C00516A */  jal   func_800145A8
/* 01539C 8001479C 8604002E */   lh    $a0, 0x2e($s0)
/* 0153A0 800147A0 8FAC0020 */  lw    $t4, 0x20($sp)
/* 0153A4 800147A4 3C018016 */  lui   $at, %hi(D_801634FC)
/* 0153A8 800147A8 000C6900 */  sll   $t5, $t4, 4
/* 0153AC 800147AC 002D0821 */  addu  $at, $at, $t5
/* 0153B0 800147B0 10000006 */  b     .L800147CC
/* 0153B4 800147B4 E42034FC */   swc1  $f0, %lo(D_801634FC)($at)
.L800147B8:
/* 0153B8 800147B8 1444FFE1 */  bne   $v0, $a0, .L80014740
/* 0153BC 800147BC 24630003 */   addiu $v1, $v1, 3
/* 0153C0 800147C0 24C60001 */  addiu $a2, $a2, 1
/* 0153C4 800147C4 14D1FFDA */  bne   $a2, $s1, .L80014730
/* 0153C8 800147C8 26100034 */   addiu $s0, $s0, 0x34
.L800147CC:
/* 0153CC 800147CC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0153D0 800147D0 8FB00014 */  lw    $s0, 0x14($sp)
/* 0153D4 800147D4 8FB10018 */  lw    $s1, 0x18($sp)
/* 0153D8 800147D8 03E00008 */  jr    $ra
/* 0153DC 800147DC 27BD0020 */   addiu $sp, $sp, 0x20
