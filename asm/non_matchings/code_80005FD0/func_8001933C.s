.section .late_rodata

glabel D_800ED318
.double 0.8

glabel D_800ED320
.double 0.2

.section .text

glabel func_8001933C
/* 019F3C 8001933C 27BDFF68 */  addiu $sp, $sp, -0x98
/* 019F40 80019340 AFBF002C */  sw    $ra, 0x2c($sp)
/* 019F44 80019344 AFB20028 */  sw    $s2, 0x28($sp)
/* 019F48 80019348 AFB10024 */  sw    $s1, 0x24($sp)
/* 019F4C 8001934C AFB00020 */  sw    $s0, 0x20($sp)
/* 019F50 80019350 AFA5009C */  sw    $a1, 0x9c($sp)
/* 019F54 80019354 AFA600A0 */  sw    $a2, 0xa0($sp)
/* 019F58 80019358 848300AE */  lh    $v1, 0xae($a0)
/* 019F5C 8001935C 3C058016 */  lui   $a1, %hi(gPathIndexByPlayerId) # 0x8016
/* 019F60 80019360 3C188016 */  lui   $t8, %hi(gWaypointCountByPathIndex) # 0x8016
/* 019F64 80019364 00035040 */  sll   $t2, $v1, 1
/* 019F68 80019368 00AA2821 */  addu  $a1, $a1, $t2
/* 019F6C 8001936C 94A545B0 */  lhu   $a1, %lo(gPathIndexByPlayerId)($a1) # 0x45b0($a1)
/* 019F70 80019370 000370C0 */  sll   $t6, $v1, 3
/* 019F74 80019374 01C37023 */  subu  $t6, $t6, $v1
/* 019F78 80019378 00057840 */  sll   $t7, $a1, 1
/* 019F7C 8001937C 030FC021 */  addu  $t8, $t8, $t7
/* 019F80 80019380 971845C8 */  lhu   $t8, %lo(gWaypointCountByPathIndex)($t8) # 0x45c8($t8)
/* 019F84 80019384 000E7100 */  sll   $t6, $t6, 4
/* 019F88 80019388 01C37023 */  subu  $t6, $t6, $v1
/* 019F8C 8001938C AFB80044 */  sw    $t8, 0x44($sp)
/* 019F90 80019390 8C860008 */  lw    $a2, 8($a0)
/* 019F94 80019394 C48E0004 */  lwc1  $f14, 4($a0)
/* 019F98 80019398 C48C0000 */  lwc1  $f12, ($a0)
/* 019F9C 8001939C 3C12800E */  lui   $s2, %hi(gPlayerOne)
/* 019FA0 800193A0 000E7080 */  sll   $t6, $t6, 2
/* 019FA4 800193A4 3C198016 */  lui   $t9, %hi(gNearestWaypointByCameraId) # $t9, 0x8016
/* 019FA8 800193A8 8E52C4DC */  lw    $s2, %lo(gPlayerOne)($s2)
/* 019FAC 800193AC 27394668 */  addiu $t9, %lo(gNearestWaypointByCameraId) # addiu $t9, $t9, 0x4668
/* 019FB0 800193B0 00071040 */  sll   $v0, $a3, 1
/* 019FB4 800193B4 01C37023 */  subu  $t6, $t6, $v1
/* 019FB8 800193B8 00E08825 */  move  $s1, $a3
/* 019FBC 800193BC 000E70C0 */  sll   $t6, $t6, 3
/* 019FC0 800193C0 00594021 */  addu  $t0, $v0, $t9
/* 019FC4 800193C4 00808025 */  move  $s0, $a0
/* 019FC8 800193C8 85070000 */  lh    $a3, ($t0)
/* 019FCC 800193CC AFA80034 */  sw    $t0, 0x34($sp)
/* 019FD0 800193D0 AFA20038 */  sw    $v0, 0x38($sp)
/* 019FD4 800193D4 AFAA003C */  sw    $t2, 0x3c($sp)
/* 019FD8 800193D8 AFA00010 */  sw    $zero, 0x10($sp)
/* 019FDC 800193DC AFA3007C */  sw    $v1, 0x7c($sp)
/* 019FE0 800193E0 AFA50048 */  sw    $a1, 0x48($sp)
/* 019FE4 800193E4 0C0034CF */  jal   func_8000D33C
/* 019FE8 800193E8 024E9021 */   addu  $s2, $s2, $t6
/* 019FEC 800193EC 8FA80034 */  lw    $t0, 0x34($sp)
/* 019FF0 800193F0 8FAA003C */  lw    $t2, 0x3c($sp)
/* 019FF4 800193F4 3C098016 */  lui   $t1, %hi(gNearestWaypointByPlayerId) # 0x8016
/* 019FF8 800193F8 A5020000 */  sh    $v0, ($t0)
/* 019FFC 800193FC 850B0000 */  lh    $t3, ($t0)
/* 01A000 80019400 012A4821 */  addu  $t1, $t1, $t2
/* 01A004 80019404 85294438 */  lh    $t1, %lo(gNearestWaypointByPlayerId)($t1) # 0x4438($t1)
/* 01A008 80019408 8FAC0044 */  lw    $t4, 0x44($sp)
/* 01A00C 8001940C 24060032 */  li    $a2, 50
/* 01A010 80019410 24070014 */  li    $a3, 20
/* 01A014 80019414 3165FFFF */  andi  $a1, $t3, 0xffff
/* 01A018 80019418 A7AB0096 */  sh    $t3, 0x96($sp)
/* 01A01C 8001941C 3124FFFF */  andi  $a0, $t1, 0xffff
/* 01A020 80019420 0C001EFE */  jal   func_80007BF8
/* 01A024 80019424 AFAC0010 */   sw    $t4, 0x10($sp)
/* 01A028 80019428 1C40000E */  bgtz  $v0, .L80019464
/* 01A02C 8001942C 8FA3007C */   lw    $v1, 0x7c($sp)
/* 01A030 80019430 8FAD0038 */  lw    $t5, 0x38($sp)
/* 01A034 80019434 00111880 */  sll   $v1, $s1, 2
/* 01A038 80019438 3C058016 */  lui   $a1, %hi(D_80164688) # 0x8016
/* 01A03C 8001943C 3C068016 */  lui   $a2, %hi(D_80164680) # 0x8016
/* 01A040 80019440 00A32821 */  addu  $a1, $a1, $v1
/* 01A044 80019444 00CD3021 */  addu  $a2, $a2, $t5
/* 01A048 80019448 84C64680 */  lh    $a2, %lo(D_80164680)($a2) # 0x4680($a2)
/* 01A04C 8001944C 8CA54688 */  lw    $a1, %lo(D_80164688)($a1) # 0x4688($a1)
/* 01A050 80019450 AFA3003C */  sw    $v1, 0x3c($sp)
/* 01A054 80019454 0C0068D2 */  jal   func_8001A348
/* 01A058 80019458 02202025 */   move  $a0, $s1
/* 01A05C 8001945C 10000031 */  b     .L80019524
/* 01A060 80019460 8FA3003C */   lw    $v1, 0x3c($sp)
.L80019464:
/* 01A064 80019464 3C01BFE0 */  li    $at, 0xBFE00000 # -1.750000
/* 01A068 80019468 44811800 */  mtc1  $at, $f3
/* 01A06C 8001946C 3C018016 */  lui   $at, %hi(D_80163068)
/* 01A070 80019470 00037080 */  sll   $t6, $v1, 2
/* 01A074 80019474 002E0821 */  addu  $at, $at, $t6
/* 01A078 80019478 C4243068 */  lwc1  $f4, %lo(D_80163068)($at)
/* 01A07C 8001947C 44801000 */  mtc1  $zero, $f2
/* 01A080 80019480 3C018016 */  lui   $at, %hi(D_80164688)
/* 01A084 80019484 46002021 */  cvt.d.s $f0, $f4
/* 01A088 80019488 00111880 */  sll   $v1, $s1, 2
/* 01A08C 8001948C 4622003C */  c.lt.d $f0, $f2
/* 01A090 80019490 00230821 */  addu  $at, $at, $v1
/* 01A094 80019494 4502000F */  bc1fl .L800194D4
/* 01A098 80019498 3C013FE0 */   lui   $at, 0x3fe0 # 1.75
/* 01A09C 8001949C C4264688 */  lwc1  $f6, %lo(D_80164688)($at)
/* 01A0A0 800194A0 02202025 */  move  $a0, $s1
/* 01A0A4 800194A4 3C053F80 */  li    $a1, 0x3f800000 # 1.0
/* 01A0A8 800194A8 46003221 */  cvt.d.s $f8, $f6
/* 01A0AC 800194AC 2406000D */  li    $a2, 13
/* 01A0B0 800194B0 4622403C */  c.lt.d $f8, $f2
/* 01A0B4 800194B4 00000000 */  nop
/* 01A0B8 800194B8 45020006 */  bc1fl .L800194D4
/* 01A0BC 800194BC 3C013FE0 */   lui   $at, 0x3fe0 # 1.75
/* 01A0C0 800194C0 0C0068D2 */  jal   func_8001A348
/* 01A0C4 800194C4 AFA3003C */   sw    $v1, 0x3c($sp)
/* 01A0C8 800194C8 10000016 */  b     .L80019524
/* 01A0CC 800194CC 8FA3003C */   lw    $v1, 0x3c($sp)
/* 01A0D0 800194D0 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
.L800194D4:
/* 01A0D4 800194D4 44811800 */  mtc1  $at, $f3
/* 01A0D8 800194D8 44801000 */  mtc1  $zero, $f2
/* 01A0DC 800194DC 3C018016 */  lui   $at, %hi(D_80164688)
/* 01A0E0 800194E0 00111880 */  sll   $v1, $s1, 2
/* 01A0E4 800194E4 4620103C */  c.lt.d $f2, $f0
/* 01A0E8 800194E8 00230821 */  addu  $at, $at, $v1
/* 01A0EC 800194EC 4500000D */  bc1f  .L80019524
/* 01A0F0 800194F0 00000000 */   nop
/* 01A0F4 800194F4 C42A4688 */  lwc1  $f10, %lo(D_80164688)($at)
/* 01A0F8 800194F8 02202025 */  move  $a0, $s1
/* 01A0FC 800194FC 3C05BF80 */  lui   $a1, 0xbf80
/* 01A100 80019500 46005421 */  cvt.d.s $f16, $f10
/* 01A104 80019504 2406000C */  li    $a2, 12
/* 01A108 80019508 4630103C */  c.lt.d $f2, $f16
/* 01A10C 8001950C 00000000 */  nop
/* 01A110 80019510 45000004 */  bc1f  .L80019524
/* 01A114 80019514 00000000 */   nop
/* 01A118 80019518 0C0068D2 */  jal   func_8001A348
/* 01A11C 8001951C AFA3003C */   sw    $v1, 0x3c($sp)
/* 01A120 80019520 8FA3003C */  lw    $v1, 0x3c($sp)
.L80019524:
/* 01A124 80019524 3C01800F */  lui   $at, %hi(D_800ED318)
/* 01A128 80019528 D420D318 */  ldc1  $f0, %lo(D_800ED318)($at)
/* 01A12C 8001952C 3C01800F */  lui   $at, %hi(D_800ED320)
/* 01A130 80019530 D422D320 */  ldc1  $f2, %lo(D_800ED320)($at)
/* 01A134 80019534 3C018016 */  lui   $at, %hi(D_801645F8)
/* 01A138 80019538 00230821 */  addu  $at, $at, $v1
/* 01A13C 8001953C C43245F8 */  lwc1  $f18, %lo(D_801645F8)($at)
/* 01A140 80019540 8FA50048 */  lw    $a1, 0x48($sp)
/* 01A144 80019544 3C018016 */  lui   $at, %hi(D_80164618)
/* 01A148 80019548 00230821 */  addu  $at, $at, $v1
/* 01A14C 8001954C E6120000 */  swc1  $f18, ($s0)
/* 01A150 80019550 C4244618 */  lwc1  $f4, %lo(D_80164618)($at)
/* 01A154 80019554 3C018016 */  lui   $at, %hi(D_80164638)
/* 01A158 80019558 00230821 */  addu  $at, $at, $v1
/* 01A15C 8001955C E6040004 */  swc1  $f4, 4($s0)
/* 01A160 80019560 C4264638 */  lwc1  $f6, %lo(D_80164638)($at)
/* 01A164 80019564 3C188016 */  lui   $t8, %hi(D_80164550)
/* 01A168 80019568 00057880 */  sll   $t7, $a1, 2
/* 01A16C 8001956C E6060008 */  swc1  $f6, 8($s0)
/* 01A170 80019570 87B90096 */  lh    $t9, 0x96($sp)
/* 01A174 80019574 030FC021 */  addu  $t8, $t8, $t7
/* 01A178 80019578 8F184550 */  lw    $t8, %lo(D_80164550)($t8)
/* 01A17C 8001957C 001960C0 */  sll   $t4, $t9, 3
/* 01A180 80019580 C6480014 */  lwc1  $f8, 0x14($s2)
/* 01A184 80019584 030C1021 */  addu  $v0, $t8, $t4
/* 01A188 80019588 844D0000 */  lh    $t5, ($v0)
/* 01A18C 8001958C 460042A1 */  cvt.d.s $f10, $f8
/* 01A190 80019590 02202025 */  move  $a0, $s1
/* 01A194 80019594 448D9000 */  mtc1  $t5, $f18
/* 01A198 80019598 46205402 */  mul.d $f16, $f10, $f0
/* 01A19C 8001959C 46809121 */  cvt.d.w $f4, $f18
/* 01A1A0 800195A0 46241182 */  mul.d $f6, $f2, $f4
/* 01A1A4 800195A4 46268200 */  add.d $f8, $f16, $f6
/* 01A1A8 800195A8 462042A0 */  cvt.s.d $f10, $f8
/* 01A1AC 800195AC E60A000C */  swc1  $f10, 0xc($s0)
/* 01A1B0 800195B0 844E0002 */  lh    $t6, 2($v0)
/* 01A1B4 800195B4 C6520018 */  lwc1  $f18, 0x18($s2)
/* 01A1B8 800195B8 448E3000 */  mtc1  $t6, $f6
/* 01A1BC 800195BC 46009121 */  cvt.d.s $f4, $f18
/* 01A1C0 800195C0 46803221 */  cvt.d.w $f8, $f6
/* 01A1C4 800195C4 46202402 */  mul.d $f16, $f4, $f0
/* 01A1C8 800195C8 00000000 */  nop
/* 01A1CC 800195CC 46281282 */  mul.d $f10, $f2, $f8
/* 01A1D0 800195D0 462A8480 */  add.d $f18, $f16, $f10
/* 01A1D4 800195D4 46209120 */  cvt.s.d $f4, $f18
/* 01A1D8 800195D8 E6040010 */  swc1  $f4, 0x10($s0)
/* 01A1DC 800195DC 844F0004 */  lh    $t7, 4($v0)
/* 01A1E0 800195E0 C646001C */  lwc1  $f6, 0x1c($s2)
/* 01A1E4 800195E4 448F5000 */  mtc1  $t7, $f10
/* 01A1E8 800195E8 46003221 */  cvt.d.s $f8, $f6
/* 01A1EC 800195EC 468054A1 */  cvt.d.w $f18, $f10
/* 01A1F0 800195F0 46204402 */  mul.d $f16, $f8, $f0
/* 01A1F4 800195F4 00000000 */  nop
/* 01A1F8 800195F8 46321102 */  mul.d $f4, $f2, $f18
/* 01A1FC 800195FC 46248180 */  add.d $f6, $f16, $f4
/* 01A200 80019600 46203220 */  cvt.s.d $f8, $f6
/* 01A204 80019604 0C00534C */  jal   func_80014D30
/* 01A208 80019608 E6080014 */   swc1  $f8, 0x14($s0)
/* 01A20C 8001960C C6100010 */  lwc1  $f16, 0x10($s0)
/* 01A210 80019610 C6040004 */  lwc1  $f4, 4($s0)
/* 01A214 80019614 C60A000C */  lwc1  $f10, 0xc($s0)
/* 01A218 80019618 C6120000 */  lwc1  $f18, ($s0)
/* 01A21C 8001961C 46048181 */  sub.s $f6, $f16, $f4
/* 01A220 80019620 46125301 */  sub.s $f12, $f10, $f18
/* 01A224 80019624 E7A60088 */  swc1  $f6, 0x88($sp)
/* 01A228 80019628 C60A0008 */  lwc1  $f10, 8($s0)
/* 01A22C 8001962C C6080014 */  lwc1  $f8, 0x14($s0)
/* 01A230 80019630 E7AC008C */  swc1  $f12, 0x8c($sp)
/* 01A234 80019634 460A4381 */  sub.s $f14, $f8, $f10
/* 01A238 80019638 0C0ADE0C */  jal   atan2s
/* 01A23C 8001963C E7AE0084 */   swc1  $f14, 0x84($sp)
/* 01A240 80019640 C7A0008C */  lwc1  $f0, 0x8c($sp)
/* 01A244 80019644 C7AE0084 */  lwc1  $f14, 0x84($sp)
/* 01A248 80019648 A6020026 */  sh    $v0, 0x26($s0)
/* 01A24C 8001964C 46000482 */  mul.s $f18, $f0, $f0
/* 01A250 80019650 00000000 */  nop
/* 01A254 80019654 460E7402 */  mul.s $f16, $f14, $f14
/* 01A258 80019658 0C033850 */  jal   sqrtf
/* 01A25C 8001965C 46109300 */   add.s $f12, $f18, $f16
/* 01A260 80019660 46000306 */  mov.s $f12, $f0
/* 01A264 80019664 0C0ADE0C */  jal   atan2s
/* 01A268 80019668 C7AE0088 */   lwc1  $f14, 0x88($sp)
/* 01A26C 8001966C A6020024 */  sh    $v0, 0x24($s0)
/* 01A270 80019670 A6000028 */  sh    $zero, 0x28($s0)
/* 01A274 80019674 8FBF002C */  lw    $ra, 0x2c($sp)
/* 01A278 80019678 8FB20028 */  lw    $s2, 0x28($sp)
/* 01A27C 8001967C 8FB10024 */  lw    $s1, 0x24($sp)
/* 01A280 80019680 8FB00020 */  lw    $s0, 0x20($sp)
/* 01A284 80019684 03E00008 */  jr    $ra
/* 01A288 80019688 27BD0098 */   addiu $sp, $sp, 0x98
