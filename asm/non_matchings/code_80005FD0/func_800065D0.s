glabel func_800065D0
/* 0071D0 800065D0 84AE002E */  lh    $t6, 0x2e($a1)
/* 0071D4 800065D4 240C00B6 */  li    $t4, 182
/* 0071D8 800065D8 00041040 */  sll   $v0, $a0, 1
/* 0071DC 800065DC 01CC001A */  div   $zero, $t6, $t4
/* 0071E0 800065E0 3C038016 */  lui   $v1, %hi(gPathIndexByPlayerId) # 0x8016
/* 0071E4 800065E4 00621821 */  addu  $v1, $v1, $v0
/* 0071E8 800065E8 846345B0 */  lh    $v1, %lo(gPathIndexByPlayerId)($v1) # 0x45b0($v1)
/* 0071EC 800065EC 3C068016 */  lui   $a2, %hi(gNearestWaypointByPlayerId) # 0x8016
/* 0071F0 800065F0 00C23021 */  addu  $a2, $a2, $v0
/* 0071F4 800065F4 3C0D8016 */  lui   $t5, %hi(D_80164590) # 0x8016
/* 0071F8 800065F8 0003C880 */  sll   $t9, $v1, 2
/* 0071FC 800065FC 94C64438 */  lhu   $a2, %lo(gNearestWaypointByPlayerId)($a2) # 0x4438($a2)
/* 007200 80006600 01B96821 */  addu  $t5, $t5, $t9
/* 007204 80006604 00003812 */  mflo  $a3
/* 007208 80006608 8DAD4590 */  lw    $t5, %lo(D_80164590)($t5) # 0x4590($t5)
/* 00720C 8000660C 15800002 */  bnez  $t4, .L80006618
/* 007210 80006610 00000000 */   nop
/* 007214 80006614 0007000D */  break 7
.L80006618:
/* 007218 80006618 2401FFFF */  li    $at, -1
/* 00721C 8000661C 15810004 */  bne   $t4, $at, .L80006630
/* 007220 80006620 3C018000 */   lui   $at, 0x8000
/* 007224 80006624 15C10002 */  bne   $t6, $at, .L80006630
/* 007228 80006628 00000000 */   nop
/* 00722C 8000662C 0006000D */  break 6
.L80006630:
/* 007230 80006630 00077C00 */  sll   $t7, $a3, 0x10
/* 007234 80006634 000F3C03 */  sra   $a3, $t7, 0x10
/* 007238 80006638 00067040 */  sll   $t6, $a2, 1
/* 00723C 8000663C 01AE7821 */  addu  $t7, $t5, $t6
/* 007240 80006640 85F80000 */  lh    $t8, ($t7)
/* 007244 80006644 00041880 */  sll   $v1, $a0, 2
/* 007248 80006648 3C058016 */  lui   $a1, %hi(D_80164450) # 0x8016
/* 00724C 8000664C 030C001A */  div   $zero, $t8, $t4
/* 007250 80006650 00004012 */  mflo  $t0
/* 007254 80006654 0008CC00 */  sll   $t9, $t0, 0x10
/* 007258 80006658 00196C03 */  sra   $t5, $t9, 0x10
/* 00725C 8000665C 00ED5023 */  subu  $t2, $a3, $t5
/* 007260 80006660 000A4C00 */  sll   $t1, $t2, 0x10
/* 007264 80006664 000A5C00 */  sll   $t3, $t2, 0x10
/* 007268 80006668 00097403 */  sra   $t6, $t1, 0x10
/* 00726C 8000666C 000B7C03 */  sra   $t7, $t3, 0x10
/* 007270 80006670 15800002 */  bnez  $t4, .L8000667C
/* 007274 80006674 00000000 */   nop
/* 007278 80006678 0007000D */  break 7
.L8000667C:
/* 00727C 8000667C 2401FFFF */  li    $at, -1
/* 007280 80006680 15810004 */  bne   $t4, $at, .L80006694
/* 007284 80006684 3C018000 */   lui   $at, 0x8000
/* 007288 80006688 17010002 */  bne   $t8, $at, .L80006694
/* 00728C 8000668C 00000000 */   nop
/* 007290 80006690 0006000D */  break 6
.L80006694:
/* 007294 80006694 01A04025 */  move  $t0, $t5
/* 007298 80006698 01C04825 */  move  $t1, $t6
/* 00729C 8000669C 05E10004 */  bgez  $t7, .L800066B0
/* 0072A0 800066A0 01E05825 */   move  $t3, $t7
/* 0072A4 800066A4 000F4823 */  negu  $t1, $t7
/* 0072A8 800066A8 0009C400 */  sll   $t8, $t1, 0x10
/* 0072AC 800066AC 00184C03 */  sra   $t1, $t8, 0x10
.L800066B0:
/* 0072B0 800066B0 3C0D8016 */  lui   $t5, %hi(D_80163288) # $t5, 0x8016
/* 0072B4 800066B4 25AD3288 */  addiu $t5, %lo(D_80163288) # addiu $t5, $t5, 0x3288
/* 0072B8 800066B8 006D3021 */  addu  $a2, $v1, $t5
/* 0072BC 800066BC 00A32821 */  addu  $a1, $a1, $v1
/* 0072C0 800066C0 8CA54450 */  lw    $a1, %lo(D_80164450)($a1) # 0x4450($a1)
/* 0072C4 800066C4 8CCE0000 */  lw    $t6, ($a2)
/* 0072C8 800066C8 00AE082A */  slt   $at, $a1, $t6
/* 0072CC 800066CC 10200022 */  beqz  $at, .L80006758
/* 0072D0 800066D0 29210088 */   slti  $at, $t1, 0x88
/* 0072D4 800066D4 14200020 */  bnez  $at, .L80006758
/* 0072D8 800066D8 292100E1 */   slti  $at, $t1, 0xe1
/* 0072DC 800066DC 1020001E */  beqz  $at, .L80006758
/* 0072E0 800066E0 3C0F8016 */   lui   $t7, %hi(D_80163258) # $t7, 0x8016
/* 0072E4 800066E4 25EF3258 */  addiu $t7, %lo(D_80163258) # addiu $t7, $t7, 0x3258
/* 0072E8 800066E8 004F1821 */  addu  $v1, $v0, $t7
/* 0072EC 800066EC 94780000 */  lhu   $t8, ($v1)
/* 0072F0 800066F0 240E0001 */  li    $t6, 1
/* 0072F4 800066F4 240F0005 */  li    $t7, 5
/* 0072F8 800066F8 27190001 */  addiu $t9, $t8, 1
/* 0072FC 800066FC 332DFFFF */  andi  $t5, $t9, 0xffff
/* 007300 80006700 29A10005 */  slti  $at, $t5, 5
/* 007304 80006704 1420002D */  bnez  $at, .L800067BC
/* 007308 80006708 A4790000 */   sh    $t9, ($v1)
/* 00730C 8000670C 0004C0C0 */  sll   $t8, $a0, 3
/* 007310 80006710 0304C023 */  subu  $t8, $t8, $a0
/* 007314 80006714 0018C100 */  sll   $t8, $t8, 4
/* 007318 80006718 0304C023 */  subu  $t8, $t8, $a0
/* 00731C 8000671C 0018C080 */  sll   $t8, $t8, 2
/* 007320 80006720 3C018016 */  lui   $at, %hi(D_80163270) # 0x8016
/* 007324 80006724 0304C023 */  subu  $t8, $t8, $a0
/* 007328 80006728 3C19800F */  lui   $t9, %hi(gPlayers) # $t9, 0x800f
/* 00732C 8000672C 00220821 */  addu  $at, $at, $v0
/* 007330 80006730 27396990 */  addiu $t9, %lo(gPlayers) # addiu $t9, $t9, 0x6990
/* 007334 80006734 0018C0C0 */  sll   $t8, $t8, 3
/* 007338 80006738 A42E3270 */  sh    $t6, %lo(D_80163270)($at) # 0x3270($at)
/* 00733C 8000673C 03193821 */  addu  $a3, $t8, $t9
/* 007340 80006740 8CED00BC */  lw    $t5, 0xbc($a3)
/* 007344 80006744 3C010040 */  lui   $at, 0x40
/* 007348 80006748 A46F0000 */  sh    $t7, ($v1)
/* 00734C 8000674C 01A17025 */  or    $t6, $t5, $at
/* 007350 80006750 1000001A */  b     .L800067BC
/* 007354 80006754 ACEE00BC */   sw    $t6, 0xbc($a3)
.L80006758:
/* 007358 80006758 2921002D */  slti  $at, $t1, 0x2d
/* 00735C 8000675C 14200003 */  bnez  $at, .L8000676C
/* 007360 80006760 000478C0 */   sll   $t7, $a0, 3
/* 007364 80006764 2921013C */  slti  $at, $t1, 0x13c
/* 007368 80006768 14200014 */  bnez  $at, .L800067BC
.L8000676C:
/* 00736C 8000676C 01E47823 */   subu  $t7, $t7, $a0
/* 007370 80006770 3C018016 */  lui   $at, %hi(D_80163270) # 0x8016
/* 007374 80006774 000F7900 */  sll   $t7, $t7, 4
/* 007378 80006778 00220821 */  addu  $at, $at, $v0
/* 00737C 8000677C 01E47823 */  subu  $t7, $t7, $a0
/* 007380 80006780 A4203270 */  sh    $zero, %lo(D_80163270)($at) # 0x3270($at)
/* 007384 80006784 000F7880 */  sll   $t7, $t7, 2
/* 007388 80006788 3C018016 */  lui   $at, %hi(D_80163258) # 0x8016
/* 00738C 8000678C 01E47823 */  subu  $t7, $t7, $a0
/* 007390 80006790 3C18800F */  lui   $t8, %hi(gPlayers) # $t8, 0x800f
/* 007394 80006794 00220821 */  addu  $at, $at, $v0
/* 007398 80006798 27186990 */  addiu $t8, %lo(gPlayers) # addiu $t8, $t8, 0x6990
/* 00739C 8000679C 000F78C0 */  sll   $t7, $t7, 3
/* 0073A0 800067A0 A4203258 */  sh    $zero, %lo(D_80163258)($at) # 0x3258($at)
/* 0073A4 800067A4 01F83821 */  addu  $a3, $t7, $t8
/* 0073A8 800067A8 8CF900BC */  lw    $t9, 0xbc($a3)
/* 0073AC 800067AC 3C01FFBF */  lui   $at, (0xFFBFFFFF >> 16) # lui $at, 0xffbf
/* 0073B0 800067B0 3421FFFF */  ori   $at, (0xFFBFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0073B4 800067B4 03216824 */  and   $t5, $t9, $at
/* 0073B8 800067B8 ACED00BC */  sw    $t5, 0xbc($a3)
.L800067BC:
/* 0073BC 800067BC 03E00008 */  jr    $ra
/* 0073C0 800067C0 ACC50000 */   sw    $a1, ($a2)
