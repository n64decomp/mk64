glabel func_800963F0
/* 096FF0 800963F0 27BDFF68 */  addiu $sp, $sp, -0x98
/* 096FF4 800963F4 8FAE00CC */  lw    $t6, 0xcc($sp)
/* 096FF8 800963F8 AFBF002C */  sw    $ra, 0x2c($sp)
/* 096FFC 800963FC AFBE0028 */  sw    $fp, 0x28($sp)
/* 097000 80096400 2DC10002 */  sltiu $at, $t6, 2
/* 097004 80096404 AFB70024 */  sw    $s7, 0x24($sp)
/* 097008 80096408 AFB60020 */  sw    $s6, 0x20($sp)
/* 09700C 8009640C AFB5001C */  sw    $s5, 0x1c($sp)
/* 097010 80096410 AFB40018 */  sw    $s4, 0x18($sp)
/* 097014 80096414 AFB30014 */  sw    $s3, 0x14($sp)
/* 097018 80096418 AFB20010 */  sw    $s2, 0x10($sp)
/* 09701C 8009641C AFB1000C */  sw    $s1, 0xc($sp)
/* 097020 80096420 AFB00008 */  sw    $s0, 8($sp)
/* 097024 80096424 AFA5009C */  sw    $a1, 0x9c($sp)
/* 097028 80096428 AFA600A0 */  sw    $a2, 0xa0($sp)
/* 09702C 8009642C AFA700A4 */  sw    $a3, 0xa4($sp)
/* 097030 80096430 24080001 */  li    $t0, 1
/* 097034 80096434 AFA00070 */  sw    $zero, 0x70($sp)
/* 097038 80096438 14200007 */  bnez  $at, .L80096458
/* 09703C 8009643C AFA0006C */   sw    $zero, 0x6c($sp)
/* 097040 80096440 8FB800CC */  lw    $t8, 0xcc($sp)
.L80096444:
/* 097044 80096444 00087840 */  sll   $t7, $t0, 1
/* 097048 80096448 01E04025 */  move  $t0, $t7
/* 09704C 8009644C 01F8082B */  sltu  $at, $t7, $t8
/* 097050 80096450 5420FFFC */  bnel  $at, $zero, .L80096444
/* 097054 80096454 8FB800CC */   lw    $t8, 0xcc($sp)
.L80096458:
/* 097058 80096458 24190400 */  li    $t9, 1024
/* 09705C 8009645C 0328001A */  div   $zero, $t9, $t0
/* 097060 80096460 00001012 */  mflo  $v0
/* 097064 80096464 8FA300D0 */  lw    $v1, 0xd0($sp)
/* 097068 80096468 15000002 */  bnez  $t0, .L80096474
/* 09706C 8009646C 00000000 */   nop
/* 097070 80096470 0007000D */  break 7
.L80096474:
/* 097074 80096474 2401FFFF */  li    $at, -1
/* 097078 80096478 15010004 */  bne   $t0, $at, .L8009648C
/* 09707C 8009647C 3C018000 */   lui   $at, 0x8000
/* 097080 80096480 17210002 */  bne   $t9, $at, .L8009648C
/* 097084 80096484 00000000 */   nop
/* 097088 80096488 0006000D */  break 6
.L8009648C:
/* 09708C 8009648C 00403825 */  move  $a3, $v0
/* 097090 80096490 04410003 */  bgez  $v0, .L800964A0
/* 097094 80096494 00027043 */   sra   $t6, $v0, 1
/* 097098 80096498 24410001 */  addiu $at, $v0, 1
/* 09709C 8009649C 00017043 */  sra   $t6, $at, 1
.L800964A0:
/* 0970A0 800964A0 006E082B */  sltu  $at, $v1, $t6
/* 0970A4 800964A4 50200010 */  beql  $at, $zero, .L800964E8
/* 0970A8 800964A8 29010002 */   slti  $at, $t0, 2
/* 0970AC 800964AC 04E10003 */  bgez  $a3, .L800964BC
/* 0970B0 800964B0 00071043 */   sra   $v0, $a3, 1
/* 0970B4 800964B4 24E10001 */  addiu $at, $a3, 1
/* 0970B8 800964B8 00011043 */  sra   $v0, $at, 1
.L800964BC:
/* 0970BC 800964BC 00402825 */  move  $a1, $v0
.L800964C0:
/* 0970C0 800964C0 04A10003 */  bgez  $a1, .L800964D0
/* 0970C4 800964C4 00051043 */   sra   $v0, $a1, 1
/* 0970C8 800964C8 24A10001 */  addiu $at, $a1, 1
/* 0970CC 800964CC 00011043 */  sra   $v0, $at, 1
.L800964D0:
/* 0970D0 800964D0 0062082B */  sltu  $at, $v1, $v0
/* 0970D4 800964D4 5420FFFA */  bnel  $at, $zero, .L800964C0
/* 0970D8 800964D8 00402825 */   move  $a1, $v0
/* 0970DC 800964DC AFA50074 */  sw    $a1, 0x74($sp)
/* 0970E0 800964E0 00A03825 */  move  $a3, $a1
/* 0970E4 800964E4 29010002 */  slti  $at, $t0, 2
.L800964E8:
/* 0970E8 800964E8 1420000B */  bnez  $at, .L80096518
/* 0970EC 800964EC 01001025 */   move  $v0, $t0
.L800964F0:
/* 0970F0 800964F0 8FB80070 */  lw    $t8, 0x70($sp)
/* 0970F4 800964F4 04410003 */  bgez  $v0, .L80096504
/* 0970F8 800964F8 00027843 */   sra   $t7, $v0, 1
/* 0970FC 800964FC 24410001 */  addiu $at, $v0, 1
/* 097100 80096500 00017843 */  sra   $t7, $at, 1
.L80096504:
/* 097104 80096504 29E10002 */  slti  $at, $t7, 2
/* 097108 80096508 27190001 */  addiu $t9, $t8, 1
/* 09710C 8009650C 01E01025 */  move  $v0, $t7
/* 097110 80096510 1020FFF7 */  beqz  $at, .L800964F0
/* 097114 80096514 AFB90070 */   sw    $t9, 0x70($sp)
.L80096518:
/* 097118 80096518 28E10002 */  slti  $at, $a3, 2
/* 09711C 8009651C 1420000B */  bnez  $at, .L8009654C
/* 097120 80096520 00E01025 */   move  $v0, $a3
.L80096524:
/* 097124 80096524 8FAF006C */  lw    $t7, 0x6c($sp)
/* 097128 80096528 04410003 */  bgez  $v0, .L80096538
/* 09712C 8009652C 00027043 */   sra   $t6, $v0, 1
/* 097130 80096530 24410001 */  addiu $at, $v0, 1
/* 097134 80096534 00017043 */  sra   $t6, $at, 1
.L80096538:
/* 097138 80096538 29C10002 */  slti  $at, $t6, 2
/* 09713C 8009653C 25F80001 */  addiu $t8, $t7, 1
/* 097140 80096540 01C01025 */  move  $v0, $t6
/* 097144 80096544 1020FFF7 */  beqz  $at, .L80096524
/* 097148 80096548 AFB8006C */   sw    $t8, 0x6c($sp)
.L8009654C:
/* 09714C 8009654C 8FBF00C0 */  lw    $ra, 0xc0($sp)
/* 097150 80096550 8FB900B0 */  lw    $t9, 0xb0($sp)
/* 097154 80096554 8FAF00B8 */  lw    $t7, 0xb8($sp)
/* 097158 80096558 07E10006 */  bgez  $ra, .L80096574
/* 09715C 8009655C 8FB800B0 */   lw    $t8, 0xb0($sp)
/* 097160 80096560 033F7023 */  subu  $t6, $t9, $ra
/* 097164 80096564 AFAE00B0 */  sw    $t6, 0xb0($sp)
/* 097168 80096568 0000F825 */  move  $ra, $zero
/* 09716C 8009656C 10000017 */  b     .L800965CC
/* 097170 80096570 C7A200A8 */   lwc1  $f2, 0xa8($sp)
.L80096574:
/* 097174 80096574 01F8C823 */  subu  $t9, $t7, $t8
/* 097178 80096578 44992000 */  mtc1  $t9, $f4
/* 09717C 8009657C C7A200A8 */  lwc1  $f2, 0xa8($sp)
/* 097180 80096580 449F5000 */  mtc1  $ra, $f10
/* 097184 80096584 468021A0 */  cvt.s.w $f6, $f4
/* 097188 80096588 3C0143A0 */  li    $at, 0x43A00000 # 320.000000
/* 09718C 8009658C 44816000 */  mtc1  $at, $f12
/* 097190 80096590 46805120 */  cvt.s.w $f4, $f10
/* 097194 80096594 46023202 */  mul.s $f8, $f6, $f2
/* 097198 80096598 46082000 */  add.s $f0, $f4, $f8
/* 09719C 8009659C 4600603C */  c.lt.s $f12, $f0
/* 0971A0 800965A0 00000000 */  nop
/* 0971A4 800965A4 4502000A */  bc1fl .L800965D0
/* 0971A8 800965A8 8FA500C4 */   lw    $a1, 0xc4($sp)
/* 0971AC 800965AC 448F3000 */  mtc1  $t7, $f6
/* 0971B0 800965B0 460C0101 */  sub.s $f4, $f0, $f12
/* 0971B4 800965B4 468032A0 */  cvt.s.w $f10, $f6
/* 0971B8 800965B8 46045201 */  sub.s $f8, $f10, $f4
/* 0971BC 800965BC 4600418D */  trunc.w.s $f6, $f8
/* 0971C0 800965C0 44183000 */  mfc1  $t8, $f6
/* 0971C4 800965C4 00000000 */  nop
/* 0971C8 800965C8 AFB800B8 */  sw    $t8, 0xb8($sp)
.L800965CC:
/* 0971CC 800965CC 8FA500C4 */  lw    $a1, 0xc4($sp)
.L800965D0:
/* 0971D0 800965D0 8FA200B4 */  lw    $v0, 0xb4($sp)
/* 0971D4 800965D4 8FB900BC */  lw    $t9, 0xbc($sp)
/* 0971D8 800965D8 04A30007 */  bgezl $a1, .L800965F8
/* 0971DC 800965DC 03227823 */   subu  $t7, $t9, $v0
/* 0971E0 800965E0 8FA200B4 */  lw    $v0, 0xb4($sp)
/* 0971E4 800965E4 C7AE00AC */  lwc1  $f14, 0xac($sp)
/* 0971E8 800965E8 00451023 */  subu  $v0, $v0, $a1
/* 0971EC 800965EC 10000017 */  b     .L8009664C
/* 0971F0 800965F0 00002825 */   move  $a1, $zero
/* 0971F4 800965F4 03227823 */  subu  $t7, $t9, $v0
.L800965F8:
/* 0971F8 800965F8 448F4000 */  mtc1  $t7, $f8
/* 0971FC 800965FC 44855000 */  mtc1  $a1, $f10
/* 097200 80096600 C7AE00AC */  lwc1  $f14, 0xac($sp)
/* 097204 80096604 468041A0 */  cvt.s.w $f6, $f8
/* 097208 80096608 3C014370 */  li    $at, 0x43700000 # 240.000000
/* 09720C 8009660C 44816000 */  mtc1  $at, $f12
/* 097210 80096610 46805120 */  cvt.s.w $f4, $f10
/* 097214 80096614 460E3282 */  mul.s $f10, $f6, $f14
/* 097218 80096618 460A2000 */  add.s $f0, $f4, $f10
/* 09721C 8009661C 4600603C */  c.lt.s $f12, $f0
/* 097220 80096620 00000000 */  nop
/* 097224 80096624 4502000A */  bc1fl .L80096650
/* 097228 80096628 8FA300B8 */   lw    $v1, 0xb8($sp)
/* 09722C 8009662C 44994000 */  mtc1  $t9, $f8
/* 097230 80096630 460C0101 */  sub.s $f4, $f0, $f12
/* 097234 80096634 468041A0 */  cvt.s.w $f6, $f8
/* 097238 80096638 46043281 */  sub.s $f10, $f6, $f4
/* 09723C 8009663C 4600520D */  trunc.w.s $f8, $f10
/* 097240 80096640 44184000 */  mfc1  $t8, $f8
/* 097244 80096644 00000000 */  nop
/* 097248 80096648 AFB800BC */  sw    $t8, 0xbc($sp)
.L8009664C:
/* 09724C 8009664C 8FA300B8 */  lw    $v1, 0xb8($sp)
.L80096650:
/* 097250 80096650 8FAF00B0 */  lw    $t7, 0xb0($sp)
/* 097254 80096654 8FA600BC */  lw    $a2, 0xbc($sp)
/* 097258 80096658 006F082A */  slt   $at, $v1, $t7
/* 09725C 8009665C 50200004 */  beql  $at, $zero, .L80096670
/* 097260 80096660 00C2082A */   slt   $at, $a2, $v0
/* 097264 80096664 10000190 */  b     .L80096CA8
/* 097268 80096668 00801025 */   move  $v0, $a0
/* 09726C 8009666C 00C2082A */  slt   $at, $a2, $v0
.L80096670:
/* 097270 80096670 10200003 */  beqz  $at, .L80096680
/* 097274 80096674 8FB900A0 */   lw    $t9, 0xa0($sp)
/* 097278 80096678 1000018B */  b     .L80096CA8
/* 09727C 8009667C 00801025 */   move  $v0, $a0
.L80096680:
/* 097280 80096680 44993000 */  mtc1  $t9, $f6
/* 097284 80096684 8FAF00A4 */  lw    $t7, 0xa4($sp)
/* 097288 80096688 0046082B */  sltu  $at, $v0, $a2
/* 09728C 8009668C 46803120 */  cvt.s.w $f4, $f6
/* 097290 80096690 448F3000 */  mtc1  $t7, $f6
/* 097294 80096694 AFBF008C */  sw    $ra, 0x8c($sp)
/* 097298 80096698 00409825 */  move  $s3, $v0
/* 09729C 8009669C 46022283 */  div.s $f10, $f4, $f2
/* 0972A0 800966A0 46803120 */  cvt.s.w $f4, $f6
/* 0972A4 800966A4 4600520D */  trunc.w.s $f8, $f10
/* 0972A8 800966A8 460E2283 */  div.s $f10, $f4, $f14
/* 0972AC 800966AC 44184000 */  mfc1  $t8, $f8
/* 0972B0 800966B0 00000000 */  nop
/* 0972B4 800966B4 AFB800A0 */  sw    $t8, 0xa0($sp)
/* 0972B8 800966B8 4600520D */  trunc.w.s $f8, $f10
/* 0972BC 800966BC 440E4000 */  mfc1  $t6, $f8
/* 0972C0 800966C0 10200178 */  beqz  $at, .L80096CA4
/* 0972C4 800966C4 AFAE00A4 */   sw    $t6, 0xa4($sp)
/* 0972C8 800966C8 AFA500C4 */  sw    $a1, 0xc4($sp)
.L800966CC:
/* 0972CC 800966CC 00F3C021 */  addu  $t8, $a3, $s3
/* 0972D0 800966D0 00D8082B */  sltu  $at, $a2, $t8
/* 0972D4 800966D4 1020000E */  beqz  $at, .L80096710
/* 0972D8 800966D8 AFB80034 */   sw    $t8, 0x34($sp)
/* 0972DC 800966DC 00D3F023 */  subu  $fp, $a2, $s3
/* 0972E0 800966E0 53C00171 */  beql  $fp, $zero, .L80096CA8
/* 0972E4 800966E4 00801025 */   move  $v0, $a0
/* 0972E8 800966E8 44872000 */  mtc1  $a3, $f4
/* 0972EC 800966EC 8FB900C4 */  lw    $t9, 0xc4($sp)
/* 0972F0 800966F0 8FA500B0 */  lw    $a1, 0xb0($sp)
/* 0972F4 800966F4 468022A0 */  cvt.s.w $f10, $f4
/* 0972F8 800966F8 44993000 */  mtc1  $t9, $f6
/* 0972FC 800966FC 00000000 */  nop
/* 097300 80096700 46803320 */  cvt.s.w $f12, $f6
/* 097304 80096704 460E5482 */  mul.s $f18, $f10, $f14
/* 097308 80096708 1000000B */  b     .L80096738
/* 09730C 8009670C 8FB800B0 */   lw    $t8, 0xb0($sp)
.L80096710:
/* 097310 80096710 44873000 */  mtc1  $a3, $f6
/* 097314 80096714 8FAE00C4 */  lw    $t6, 0xc4($sp)
/* 097318 80096718 00E0F025 */  move  $fp, $a3
/* 09731C 8009671C 46803120 */  cvt.s.w $f4, $f6
/* 097320 80096720 448E4000 */  mtc1  $t6, $f8
/* 097324 80096724 8FA500B0 */  lw    $a1, 0xb0($sp)
/* 097328 80096728 46804320 */  cvt.s.w $f12, $f8
/* 09732C 8009672C 460E2482 */  mul.s $f18, $f4, $f14
/* 097330 80096730 00000000 */  nop
/* 097334 80096734 8FB800B0 */  lw    $t8, 0xb0($sp)
.L80096738:
/* 097338 80096738 0303082B */  sltu  $at, $t8, $v1
/* 09733C 8009673C 50200152 */  beql  $at, $zero, .L80096C88
/* 097340 80096740 46126100 */   add.s $f4, $f12, $f18
/* 097344 80096744 AFA70074 */  sw    $a3, 0x74($sp)
/* 097348 80096748 AFA80078 */  sw    $t0, 0x78($sp)
.L8009674C:
/* 09734C 8009674C 8FB90078 */  lw    $t9, 0x78($sp)
/* 097350 80096750 8FA300B8 */  lw    $v1, 0xb8($sp)
/* 097354 80096754 8FA600BC */  lw    $a2, 0xbc($sp)
/* 097358 80096758 0325A021 */  addu  $s4, $t9, $a1
/* 09735C 8009675C 0074082B */  sltu  $at, $v1, $s4
/* 097360 80096760 10200064 */  beqz  $at, .L800968F4
/* 097364 80096764 8FAF0074 */   lw    $t7, 0x74($sp)
/* 097368 80096768 00659023 */  subu  $s2, $v1, $a1
/* 09736C 8009676C 16400004 */  bnez  $s2, .L80096780
/* 097370 80096770 8FAB00C4 */   lw    $t3, 0xc4($sp)
/* 097374 80096774 03204025 */  move  $t0, $t9
/* 097378 80096778 10000142 */  b     .L80096C84
/* 09737C 8009677C 01E03825 */   move  $a3, $t7
.L80096780:
/* 097380 80096780 83A2009F */  lb    $v0, 0x9f($sp)
/* 097384 80096784 3C01FD00 */  lui   $at, 0xfd00
/* 097388 80096788 8FA3006C */  lw    $v1, 0x6c($sp)
/* 09738C 8009678C 304E0007 */  andi  $t6, $v0, 7
/* 097390 80096790 000E1540 */  sll   $v0, $t6, 0x15
/* 097394 80096794 8FAE00CC */  lw    $t6, 0xcc($sp)
/* 097398 80096798 0041C825 */  or    $t9, $v0, $at
/* 09739C 8009679C 3C010010 */  lui   $at, 0x10
/* 0973A0 800967A0 03217825 */  or    $t7, $t9, $at
/* 0973A4 800967A4 3C01F500 */  lui   $at, 0xf500
/* 0973A8 800967A8 25D8FFFF */  addiu $t8, $t6, -1
/* 0973AC 800967AC 8FA60070 */  lw    $a2, 0x70($sp)
/* 0973B0 800967B0 33190FFF */  andi  $t9, $t8, 0xfff
/* 0973B4 800967B4 00415025 */  or    $t2, $v0, $at
/* 0973B8 800967B8 3C010010 */  lui   $at, 0x10
/* 0973BC 800967BC 01417025 */  or    $t6, $t2, $at
/* 0973C0 800967C0 01F94825 */  or    $t1, $t7, $t9
/* 0973C4 800967C4 3078000F */  andi  $t8, $v1, 0xf
/* 0973C8 800967C8 00181B80 */  sll   $v1, $t8, 0xe
/* 0973CC 800967CC 3C010700 */  lui   $at, 0x700
/* 0973D0 800967D0 30D9000F */  andi  $t9, $a2, 0xf
/* 0973D4 800967D4 00193100 */  sll   $a2, $t9, 4
/* 0973D8 800967D8 0061C025 */  or    $t8, $v1, $at
/* 0973DC 800967DC 03066025 */  or    $t4, $t8, $a2
/* 0973E0 800967E0 000BA880 */  sll   $s5, $t3, 2
/* 0973E4 800967E4 32B80FFF */  andi  $t8, $s5, 0xfff
/* 0973E8 800967E8 00133880 */  sll   $a3, $s3, 2
/* 0973EC 800967EC 30EF0FFF */  andi  $t7, $a3, 0xfff
/* 0973F0 800967F0 0300A825 */  move  $s5, $t8
/* 0973F4 800967F4 8FB800A0 */  lw    $t8, 0xa0($sp)
/* 0973F8 800967F8 01E03825 */  move  $a3, $t7
/* 0973FC 800967FC 00137940 */  sll   $t7, $s3, 5
/* 097400 80096800 31F6FFFF */  andi  $s6, $t7, 0xffff
/* 097404 80096804 00187C00 */  sll   $t7, $t8, 0x10
/* 097408 80096808 8FB80078 */  lw    $t8, 0x78($sp)
/* 09740C 8009680C 027E4021 */  addu  $t0, $s3, $fp
/* 097410 80096810 0008C880 */  sll   $t9, $t0, 2
/* 097414 80096814 44984000 */  mtc1  $t8, $f8
/* 097418 80096818 33280FFF */  andi  $t0, $t9, 0xfff
/* 09741C 8009681C 8FB900A4 */  lw    $t9, 0xa4($sp)
/* 097420 80096820 468041A0 */  cvt.s.w $f6, $f8
/* 097424 80096824 449F5000 */  mtc1  $ra, $f10
/* 097428 80096828 449E2000 */  mtc1  $fp, $f4
/* 09742C 8009682C 01C05025 */  move  $t2, $t6
/* 097430 80096830 332EFFFF */  andi  $t6, $t9, 0xffff
/* 097434 80096834 46805020 */  cvt.s.w $f0, $f10
/* 097438 80096838 46023402 */  mul.s $f16, $f6, $f2
/* 09743C 8009683C 01EEB825 */  or    $s7, $t7, $t6
/* 097440 80096840 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 097444 80096844 00668025 */  or    $s0, $v1, $a2
/* 097448 80096848 07C10004 */  bgez  $fp, .L8009685C
/* 09744C 8009684C 468022A0 */   cvt.s.w $f10, $f4
/* 097450 80096850 44814000 */  mtc1  $at, $f8
/* 097454 80096854 00000000 */  nop
/* 097458 80096858 46085280 */  add.s $f10, $f10, $f8
.L8009685C:
/* 09745C 8009685C 460E5182 */  mul.s $f6, $f10, $f14
/* 097460 80096860 240F0001 */  li    $t7, 1
/* 097464 80096864 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 097468 80096868 4459F800 */  cfc1  $t9, $31
/* 09746C 8009686C 44CFF800 */  ctc1  $t7, $31
/* 097470 80096870 00000000 */  nop
/* 097474 80096874 46003124 */  cvt.w.s $f4, $f6
/* 097478 80096878 444FF800 */  cfc1  $t7, $31
/* 09747C 8009687C 00000000 */  nop
/* 097480 80096880 31EF0078 */  andi  $t7, $t7, 0x78
/* 097484 80096884 51E00013 */  beql  $t7, $zero, .L800968D4
/* 097488 80096888 440F2000 */   mfc1  $t7, $f4
/* 09748C 8009688C 44812000 */  mtc1  $at, $f4
/* 097490 80096890 240F0001 */  li    $t7, 1
/* 097494 80096894 46043101 */  sub.s $f4, $f6, $f4
/* 097498 80096898 44CFF800 */  ctc1  $t7, $31
/* 09749C 8009689C 00000000 */  nop
/* 0974A0 800968A0 46002124 */  cvt.w.s $f4, $f4
/* 0974A4 800968A4 444FF800 */  cfc1  $t7, $31
/* 0974A8 800968A8 00000000 */  nop
/* 0974AC 800968AC 31EF0078 */  andi  $t7, $t7, 0x78
/* 0974B0 800968B0 15E00005 */  bnez  $t7, .L800968C8
/* 0974B4 800968B4 00000000 */   nop
/* 0974B8 800968B8 440F2000 */  mfc1  $t7, $f4
/* 0974BC 800968BC 3C018000 */  lui   $at, 0x8000
/* 0974C0 800968C0 10000007 */  b     .L800968E0
/* 0974C4 800968C4 01E17825 */   or    $t7, $t7, $at
.L800968C8:
/* 0974C8 800968C8 10000005 */  b     .L800968E0
/* 0974CC 800968CC 240FFFFF */   li    $t7, -1
/* 0974D0 800968D0 440F2000 */  mfc1  $t7, $f4
.L800968D4:
/* 0974D4 800968D4 00000000 */  nop
/* 0974D8 800968D8 05E0FFFB */  bltz  $t7, .L800968C8
/* 0974DC 800968DC 00000000 */   nop
.L800968E0:
/* 0974E0 800968E0 016F8821 */  addu  $s1, $t3, $t7
/* 0974E4 800968E4 00117080 */  sll   $t6, $s1, 2
/* 0974E8 800968E8 44D9F800 */  ctc1  $t9, $31
/* 0974EC 800968EC 1000005E */  b     .L80096A68
/* 0974F0 800968F0 31D10FFF */   andi  $s1, $t6, 0xfff
.L800968F4:
/* 0974F4 800968F4 83A2009F */  lb    $v0, 0x9f($sp)
/* 0974F8 800968F8 8FB20078 */  lw    $s2, 0x78($sp)
/* 0974FC 800968FC 8FAB00C4 */  lw    $t3, 0xc4($sp)
/* 097500 80096900 8FA3006C */  lw    $v1, 0x6c($sp)
/* 097504 80096904 8FA60070 */  lw    $a2, 0x70($sp)
/* 097508 80096908 449F4000 */  mtc1  $ra, $f8
/* 09750C 8009690C 30590007 */  andi  $t9, $v0, 7
/* 097510 80096910 00191540 */  sll   $v0, $t9, 0x15
/* 097514 80096914 46804020 */  cvt.s.w $f0, $f8
/* 097518 80096918 8FB900CC */  lw    $t9, 0xcc($sp)
/* 09751C 8009691C 3C01FD00 */  lui   $at, 0xfd00
/* 097520 80096920 00417025 */  or    $t6, $v0, $at
/* 097524 80096924 3C010010 */  lui   $at, 0x10
/* 097528 80096928 44925000 */  mtc1  $s2, $f10
/* 09752C 8009692C 01C1C025 */  or    $t8, $t6, $at
/* 097530 80096930 272FFFFF */  addiu $t7, $t9, -1
/* 097534 80096934 468052A0 */  cvt.s.w $f10, $f10
/* 097538 80096938 3C01F500 */  lui   $at, 0xf500
/* 09753C 8009693C 31EE0FFF */  andi  $t6, $t7, 0xfff
/* 097540 80096940 00415025 */  or    $t2, $v0, $at
/* 097544 80096944 3C010010 */  lui   $at, 0x10
/* 097548 80096948 030E4825 */  or    $t1, $t8, $t6
/* 09754C 8009694C 46025402 */  mul.s $f16, $f10, $f2
/* 097550 80096950 0141C825 */  or    $t9, $t2, $at
/* 097554 80096954 306F000F */  andi  $t7, $v1, 0xf
/* 097558 80096958 000F1B80 */  sll   $v1, $t7, 0xe
/* 09755C 8009695C 30CE000F */  andi  $t6, $a2, 0xf
/* 097560 80096960 3C010700 */  lui   $at, 0x700
/* 097564 80096964 000E3100 */  sll   $a2, $t6, 4
/* 097568 80096968 00617825 */  or    $t7, $v1, $at
/* 09756C 8009696C 449E5000 */  mtc1  $fp, $f10
/* 097570 80096970 01E66025 */  or    $t4, $t7, $a2
/* 097574 80096974 00133880 */  sll   $a3, $s3, 2
/* 097578 80096978 46805220 */  cvt.s.w $f8, $f10
/* 09757C 8009697C 027E4021 */  addu  $t0, $s3, $fp
/* 097580 80096980 00087080 */  sll   $t6, $t0, 2
/* 097584 80096984 000BA880 */  sll   $s5, $t3, 2
/* 097588 80096988 30F80FFF */  andi  $t8, $a3, 0xfff
/* 09758C 8009698C 32AF0FFF */  andi  $t7, $s5, 0xfff
/* 097590 80096990 31C80FFF */  andi  $t0, $t6, 0xfff
/* 097594 80096994 8FAE00A4 */  lw    $t6, 0xa4($sp)
/* 097598 80096998 03003825 */  move  $a3, $t8
/* 09759C 8009699C 03205025 */  move  $t2, $t9
/* 0975A0 800969A0 01E0A825 */  move  $s5, $t7
/* 0975A4 800969A4 8FAF00A0 */  lw    $t7, 0xa0($sp)
/* 0975A8 800969A8 0013C140 */  sll   $t8, $s3, 5
/* 0975AC 800969AC 3316FFFF */  andi  $s6, $t8, 0xffff
/* 0975B0 800969B0 000FC400 */  sll   $t8, $t7, 0x10
/* 0975B4 800969B4 31D9FFFF */  andi  $t9, $t6, 0xffff
/* 0975B8 800969B8 00668025 */  or    $s0, $v1, $a2
/* 0975BC 800969BC 07C10005 */  bgez  $fp, .L800969D4
/* 0975C0 800969C0 0319B825 */   or    $s7, $t8, $t9
/* 0975C4 800969C4 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 0975C8 800969C8 44815000 */  mtc1  $at, $f10
/* 0975CC 800969CC 00000000 */  nop
/* 0975D0 800969D0 460A4200 */  add.s $f8, $f8, $f10
.L800969D4:
/* 0975D4 800969D4 460E4182 */  mul.s $f6, $f8, $f14
/* 0975D8 800969D8 240E0001 */  li    $t6, 1
/* 0975DC 800969DC 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 0975E0 800969E0 444FF800 */  cfc1  $t7, $31
/* 0975E4 800969E4 44CEF800 */  ctc1  $t6, $31
/* 0975E8 800969E8 00000000 */  nop
/* 0975EC 800969EC 46003124 */  cvt.w.s $f4, $f6
/* 0975F0 800969F0 444EF800 */  cfc1  $t6, $31
/* 0975F4 800969F4 00000000 */  nop
/* 0975F8 800969F8 31CE0078 */  andi  $t6, $t6, 0x78
/* 0975FC 800969FC 51C00013 */  beql  $t6, $zero, .L80096A4C
/* 097600 80096A00 440E2000 */   mfc1  $t6, $f4
/* 097604 80096A04 44812000 */  mtc1  $at, $f4
/* 097608 80096A08 240E0001 */  li    $t6, 1
/* 09760C 80096A0C 46043101 */  sub.s $f4, $f6, $f4
/* 097610 80096A10 44CEF800 */  ctc1  $t6, $31
/* 097614 80096A14 00000000 */  nop
/* 097618 80096A18 46002124 */  cvt.w.s $f4, $f4
/* 09761C 80096A1C 444EF800 */  cfc1  $t6, $31
/* 097620 80096A20 00000000 */  nop
/* 097624 80096A24 31CE0078 */  andi  $t6, $t6, 0x78
/* 097628 80096A28 15C00005 */  bnez  $t6, .L80096A40
/* 09762C 80096A2C 00000000 */   nop
/* 097630 80096A30 440E2000 */  mfc1  $t6, $f4
/* 097634 80096A34 3C018000 */  lui   $at, 0x8000
/* 097638 80096A38 10000007 */  b     .L80096A58
/* 09763C 80096A3C 01C17025 */   or    $t6, $t6, $at
.L80096A40:
/* 097640 80096A40 10000005 */  b     .L80096A58
/* 097644 80096A44 240EFFFF */   li    $t6, -1
/* 097648 80096A48 440E2000 */  mfc1  $t6, $f4
.L80096A4C:
/* 09764C 80096A4C 00000000 */  nop
/* 097650 80096A50 05C0FFFB */  bltz  $t6, .L80096A40
/* 097654 80096A54 00000000 */   nop
.L80096A58:
/* 097658 80096A58 016E8821 */  addu  $s1, $t3, $t6
/* 09765C 80096A5C 44CFF800 */  ctc1  $t7, $31
/* 097660 80096A60 0011C080 */  sll   $t8, $s1, 2
/* 097664 80096A64 33110FFF */  andi  $s1, $t8, 0xfff
.L80096A68:
/* 097668 80096A68 00801025 */  move  $v0, $a0
/* 09766C 80096A6C AC490000 */  sw    $t1, ($v0)
/* 097670 80096A70 8FAF00C8 */  lw    $t7, 0xc8($sp)
/* 097674 80096A74 00B23021 */  addu  $a2, $a1, $s2
/* 097678 80096A78 00C57023 */  subu  $t6, $a2, $a1
/* 09767C 80096A7C 000EC040 */  sll   $t8, $t6, 1
/* 097680 80096A80 27190009 */  addiu $t9, $t8, 9
/* 097684 80096A84 AC4F0004 */  sw    $t7, 4($v0)
/* 097688 80096A88 001978C2 */  srl   $t7, $t9, 3
/* 09768C 80096A8C 31EE01FF */  andi  $t6, $t7, 0x1ff
/* 097690 80096A90 24840008 */  addiu $a0, $a0, 8
/* 097694 80096A94 00801825 */  move  $v1, $a0
/* 097698 80096A98 000EC240 */  sll   $t8, $t6, 9
/* 09769C 80096A9C 01585825 */  or    $t3, $t2, $t8
/* 0976A0 80096AA0 00054880 */  sll   $t1, $a1, 2
/* 0976A4 80096AA4 312F0FFF */  andi  $t7, $t1, 0xfff
/* 0976A8 80096AA8 24840008 */  addiu $a0, $a0, 8
/* 0976AC 80096AAC 00806825 */  move  $t5, $a0
/* 0976B0 80096AB0 000F4B00 */  sll   $t1, $t7, 0xc
/* 0976B4 80096AB4 AC6B0000 */  sw    $t3, ($v1)
/* 0976B8 80096AB8 AC6C0004 */  sw    $t4, 4($v1)
/* 0976BC 80096ABC 3C19E600 */  lui   $t9, 0xe600
/* 0976C0 80096AC0 3C01F400 */  lui   $at, 0xf400
/* 0976C4 80096AC4 0121C025 */  or    $t8, $t1, $at
/* 0976C8 80096AC8 ADB90000 */  sw    $t9, ($t5)
/* 0976CC 80096ACC 00065080 */  sll   $t2, $a2, 2
/* 0976D0 80096AD0 314F0FFF */  andi  $t7, $t2, 0xfff
/* 0976D4 80096AD4 0307C825 */  or    $t9, $t8, $a3
/* 0976D8 80096AD8 24840008 */  addiu $a0, $a0, 8
/* 0976DC 80096ADC 00801025 */  move  $v0, $a0
/* 0976E0 80096AE0 000F5300 */  sll   $t2, $t7, 0xc
/* 0976E4 80096AE4 3C010700 */  lui   $at, 0x700
/* 0976E8 80096AE8 ADA00004 */  sw    $zero, 4($t5)
/* 0976EC 80096AEC AC590000 */  sw    $t9, ($v0)
/* 0976F0 80096AF0 0141C025 */  or    $t8, $t2, $at
/* 0976F4 80096AF4 0308C825 */  or    $t9, $t8, $t0
/* 0976F8 80096AF8 24840008 */  addiu $a0, $a0, 8
/* 0976FC 80096AFC 00801825 */  move  $v1, $a0
/* 097700 80096B00 AC590004 */  sw    $t9, 4($v0)
/* 097704 80096B04 24840008 */  addiu $a0, $a0, 8
/* 097708 80096B08 00806025 */  move  $t4, $a0
/* 09770C 80096B0C 24840008 */  addiu $a0, $a0, 8
/* 097710 80096B10 3C0FE700 */  lui   $t7, 0xe700
/* 097714 80096B14 AC6F0000 */  sw    $t7, ($v1)
/* 097718 80096B18 00801025 */  move  $v0, $a0
/* 09771C 80096B1C AC600004 */  sw    $zero, 4($v1)
/* 097720 80096B20 3C01F200 */  lui   $at, 0xf200
/* 097724 80096B24 44925000 */  mtc1  $s2, $f10
/* 097728 80096B28 01217025 */  or    $t6, $t1, $at
/* 09772C 80096B2C 24840008 */  addiu $a0, $a0, 8
/* 097730 80096B30 01C7C025 */  or    $t8, $t6, $a3
/* 097734 80096B34 AD900004 */  sw    $s0, 4($t4)
/* 097738 80096B38 AD8B0000 */  sw    $t3, ($t4)
/* 09773C 80096B3C 0148C825 */  or    $t9, $t2, $t0
/* 097740 80096B40 00803025 */  move  $a2, $a0
/* 097744 80096B44 AC590004 */  sw    $t9, 4($v0)
/* 097748 80096B48 AC580000 */  sw    $t8, ($v0)
/* 09774C 80096B4C 24840008 */  addiu $a0, $a0, 8
/* 097750 80096B50 06410005 */  bgez  $s2, .L80096B68
/* 097754 80096B54 46805220 */   cvt.s.w $f8, $f10
/* 097758 80096B58 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 09775C 80096B5C 44813000 */  mtc1  $at, $f6
/* 097760 80096B60 00000000 */  nop
/* 097764 80096B64 46064200 */  add.s $f8, $f8, $f6
.L80096B68:
/* 097768 80096B68 46024102 */  mul.s $f4, $f8, $f2
/* 09776C 80096B6C 240E0001 */  li    $t6, 1
/* 097770 80096B70 00801025 */  move  $v0, $a0
/* 097774 80096B74 24840008 */  addiu $a0, $a0, 8
/* 097778 80096B78 00801825 */  move  $v1, $a0
/* 09777C 80096B7C 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 097780 80096B80 444FF800 */  cfc1  $t7, $31
/* 097784 80096B84 44CEF800 */  ctc1  $t6, $31
/* 097788 80096B88 00000000 */  nop
/* 09778C 80096B8C 460022A4 */  cvt.w.s $f10, $f4
/* 097790 80096B90 444EF800 */  cfc1  $t6, $31
/* 097794 80096B94 00000000 */  nop
/* 097798 80096B98 31CE0078 */  andi  $t6, $t6, 0x78
/* 09779C 80096B9C 51C00013 */  beql  $t6, $zero, .L80096BEC
/* 0977A0 80096BA0 440E5000 */   mfc1  $t6, $f10
/* 0977A4 80096BA4 44815000 */  mtc1  $at, $f10
/* 0977A8 80096BA8 240E0001 */  li    $t6, 1
/* 0977AC 80096BAC 460A2281 */  sub.s $f10, $f4, $f10
/* 0977B0 80096BB0 44CEF800 */  ctc1  $t6, $31
/* 0977B4 80096BB4 00000000 */  nop
/* 0977B8 80096BB8 460052A4 */  cvt.w.s $f10, $f10
/* 0977BC 80096BBC 444EF800 */  cfc1  $t6, $31
/* 0977C0 80096BC0 00000000 */  nop
/* 0977C4 80096BC4 31CE0078 */  andi  $t6, $t6, 0x78
/* 0977C8 80096BC8 15C00005 */  bnez  $t6, .L80096BE0
/* 0977CC 80096BCC 00000000 */   nop
/* 0977D0 80096BD0 440E5000 */  mfc1  $t6, $f10
/* 0977D4 80096BD4 3C018000 */  lui   $at, 0x8000
/* 0977D8 80096BD8 10000007 */  b     .L80096BF8
/* 0977DC 80096BDC 01C17025 */   or    $t6, $t6, $at
.L80096BE0:
/* 0977E0 80096BE0 10000005 */  b     .L80096BF8
/* 0977E4 80096BE4 240EFFFF */   li    $t6, -1
/* 0977E8 80096BE8 440E5000 */  mfc1  $t6, $f10
.L80096BEC:
/* 0977EC 80096BEC 00000000 */  nop
/* 0977F0 80096BF0 05C0FFFB */  bltz  $t6, .L80096BE0
/* 0977F4 80096BF4 00000000 */   nop
.L80096BF8:
/* 0977F8 80096BF8 03EEC021 */  addu  $t8, $ra, $t6
/* 0977FC 80096BFC 44CFF800 */  ctc1  $t7, $31
/* 097800 80096C00 0018C880 */  sll   $t9, $t8, 2
/* 097804 80096C04 332F0FFF */  andi  $t7, $t9, 0xfff
/* 097808 80096C08 000F7300 */  sll   $t6, $t7, 0xc
/* 09780C 80096C0C 3C01E400 */  lui   $at, 0xe400
/* 097810 80096C10 01C1C025 */  or    $t8, $t6, $at
/* 097814 80096C14 0311C825 */  or    $t9, $t8, $s1
/* 097818 80096C18 001F7880 */  sll   $t7, $ra, 2
/* 09781C 80096C1C 31EE0FFF */  andi  $t6, $t7, 0xfff
/* 097820 80096C20 000EC300 */  sll   $t8, $t6, 0xc
/* 097824 80096C24 ACD90000 */  sw    $t9, ($a2)
/* 097828 80096C28 0315C825 */  or    $t9, $t8, $s5
/* 09782C 80096C2C ACD90004 */  sw    $t9, 4($a2)
/* 097830 80096C30 3C0FB300 */  lui   $t7, 0xb300
/* 097834 80096C34 AC4F0000 */  sw    $t7, ($v0)
/* 097838 80096C38 00A0C825 */  move  $t9, $a1
/* 09783C 80096C3C 46100180 */  add.s $f6, $f0, $f16
/* 097840 80096C40 00197D40 */  sll   $t7, $t9, 0x15
/* 097844 80096C44 01F67025 */  or    $t6, $t7, $s6
/* 097848 80096C48 AC4E0004 */  sw    $t6, 4($v0)
/* 09784C 80096C4C 3C18B200 */  lui   $t8, 0xb200
/* 097850 80096C50 4600320D */  trunc.w.s $f8, $f6
/* 097854 80096C54 AC780000 */  sw    $t8, ($v1)
/* 097858 80096C58 AC770004 */  sw    $s7, 4($v1)
/* 09785C 80096C5C 8FAF00B8 */  lw    $t7, 0xb8($sp)
/* 097860 80096C60 441F4000 */  mfc1  $ra, $f8
/* 097864 80096C64 02802825 */  move  $a1, $s4
/* 097868 80096C68 028F082B */  sltu  $at, $s4, $t7
/* 09786C 80096C6C 1420FEB7 */  bnez  $at, .L8009674C
/* 097870 80096C70 24840008 */   addiu $a0, $a0, 8
/* 097874 80096C74 8FA80078 */  lw    $t0, 0x78($sp)
/* 097878 80096C78 8FA70074 */  lw    $a3, 0x74($sp)
/* 09787C 80096C7C 8FA600BC */  lw    $a2, 0xbc($sp)
/* 097880 80096C80 01E01825 */  move  $v1, $t7
.L80096C84:
/* 097884 80096C84 46126100 */  add.s $f4, $f12, $f18
.L80096C88:
/* 097888 80096C88 8FB30034 */  lw    $s3, 0x34($sp)
/* 09788C 80096C8C 8FBF008C */  lw    $ra, 0x8c($sp)
/* 097890 80096C90 4600228D */  trunc.w.s $f10, $f4
/* 097894 80096C94 0266082B */  sltu  $at, $s3, $a2
/* 097898 80096C98 44185000 */  mfc1  $t8, $f10
/* 09789C 80096C9C 1420FE8B */  bnez  $at, .L800966CC
/* 0978A0 80096CA0 AFB800C4 */   sw    $t8, 0xc4($sp)
.L80096CA4:
/* 0978A4 80096CA4 00801025 */  move  $v0, $a0
.L80096CA8:
/* 0978A8 80096CA8 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0978AC 80096CAC 8FB00008 */  lw    $s0, 8($sp)
/* 0978B0 80096CB0 8FB1000C */  lw    $s1, 0xc($sp)
/* 0978B4 80096CB4 8FB20010 */  lw    $s2, 0x10($sp)
/* 0978B8 80096CB8 8FB30014 */  lw    $s3, 0x14($sp)
/* 0978BC 80096CBC 8FB40018 */  lw    $s4, 0x18($sp)
/* 0978C0 80096CC0 8FB5001C */  lw    $s5, 0x1c($sp)
/* 0978C4 80096CC4 8FB60020 */  lw    $s6, 0x20($sp)
/* 0978C8 80096CC8 8FB70024 */  lw    $s7, 0x24($sp)
/* 0978CC 80096CCC 8FBE0028 */  lw    $fp, 0x28($sp)
/* 0978D0 80096CD0 03E00008 */  jr    $ra
/* 0978D4 80096CD4 27BD0098 */   addiu $sp, $sp, 0x98
