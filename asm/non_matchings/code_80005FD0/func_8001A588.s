glabel func_8001A588
/* 01B188 8001A588 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 01B18C 8001A58C 3C0F800E */  lui   $t7, %hi(gModeSelection)
/* 01B190 8001A590 8DEFC53C */  lw    $t7, %lo(gModeSelection)($t7)
/* 01B194 8001A594 AFBF001C */  sw    $ra, 0x1c($sp)
/* 01B198 8001A598 AFB00018 */  sw    $s0, 0x18($sp)
/* 01B19C 8001A59C AFA40050 */  sw    $a0, 0x50($sp)
/* 01B1A0 8001A5A0 AFA50054 */  sw    $a1, 0x54($sp)
/* 01B1A4 8001A5A4 AFA60058 */  sw    $a2, 0x58($sp)
/* 01B1A8 8001A5A8 AFA7005C */  sw    $a3, 0x5c($sp)
/* 01B1AC 8001A5AC 24010001 */  li    $at, 1
/* 01B1B0 8001A5B0 15E10002 */  bne   $t7, $at, .L8001A5BC
/* 01B1B4 8001A5B4 84B000AE */   lh    $s0, 0xae($a1)
/* 01B1B8 8001A5B8 00008025 */  move  $s0, $zero
.L8001A5BC:
/* 01B1BC 8001A5BC 0C0067ED */  jal   func_80019FB4
/* 01B1C0 8001A5C0 8FA40060 */   lw    $a0, 0x60($sp)
/* 01B1C4 8001A5C4 8FB80054 */  lw    $t8, 0x54($sp)
/* 01B1C8 8001A5C8 3C014024 */  li    $at, 0x40240000 # 2.562500
/* 01B1CC 8001A5CC 44816800 */  mtc1  $at, $f13
/* 01B1D0 8001A5D0 C7040000 */  lwc1  $f4, ($t8)
/* 01B1D4 8001A5D4 44806000 */  mtc1  $zero, $f12
/* 01B1D8 8001A5D8 C70A000C */  lwc1  $f10, 0xc($t8)
/* 01B1DC 8001A5DC 46002021 */  cvt.d.s $f0, $f4
/* 01B1E0 8001A5E0 8FA70060 */  lw    $a3, 0x60($sp)
/* 01B1E4 8001A5E4 462C0182 */  mul.d $f6, $f0, $f12
/* 01B1E8 8001A5E8 46005421 */  cvt.d.s $f16, $f10
/* 01B1EC 8001A5EC 3C0A8016 */  lui   $t2, %hi(D_80164680) # 0x8016
/* 01B1F0 8001A5F0 0007C840 */  sll   $t9, $a3, 1
/* 01B1F4 8001A5F4 462C8482 */  mul.d $f18, $f16, $f12
/* 01B1F8 8001A5F8 01595021 */  addu  $t2, $t2, $t9
/* 01B1FC 8001A5FC 3C02800E */  lui   $v0, %hi(gModeSelection)
/* 01B200 8001A600 4620320D */  trunc.w.d $f8, $f6
/* 01B204 8001A604 4620910D */  trunc.w.d $f4, $f18
/* 01B208 8001A608 44094000 */  mfc1  $t1, $f8
/* 01B20C 8001A60C 440B2000 */  mfc1  $t3, $f4
/* 01B210 8001A610 00000000 */  nop   
/* 01B214 8001A614 152B0019 */  bne   $t1, $t3, .L8001A67C
/* 01B218 8001A618 00000000 */   nop   
/* 01B21C 8001A61C C7060008 */  lwc1  $f6, 8($t8)
/* 01B220 8001A620 C7100014 */  lwc1  $f16, 0x14($t8)
/* 01B224 8001A624 3C014059 */  li    $at, 0x40590000 # 3.390625
/* 01B228 8001A628 460030A1 */  cvt.d.s $f2, $f6
/* 01B22C 8001A62C 460084A1 */  cvt.d.s $f18, $f16
/* 01B230 8001A630 462C1202 */  mul.d $f8, $f2, $f12
/* 01B234 8001A634 00000000 */  nop   
/* 01B238 8001A638 462C9102 */  mul.d $f4, $f18, $f12
/* 01B23C 8001A63C 4620428D */  trunc.w.d $f10, $f8
/* 01B240 8001A640 4620218D */  trunc.w.d $f6, $f4
/* 01B244 8001A644 440D5000 */  mfc1  $t5, $f10
/* 01B248 8001A648 440F3000 */  mfc1  $t7, $f6
/* 01B24C 8001A64C 00000000 */  nop   
/* 01B250 8001A650 15AF000A */  bne   $t5, $t7, .L8001A67C
/* 01B254 8001A654 00000000 */   nop   
/* 01B258 8001A658 44816800 */  mtc1  $at, $f13
/* 01B25C 8001A65C 44806000 */  mtc1  $zero, $f12
/* 01B260 8001A660 00000000 */  nop   
/* 01B264 8001A664 462C0200 */  add.d $f8, $f0, $f12
/* 01B268 8001A668 462C1400 */  add.d $f16, $f2, $f12
/* 01B26C 8001A66C 462042A0 */  cvt.s.d $f10, $f8
/* 01B270 8001A670 462084A0 */  cvt.s.d $f18, $f16
/* 01B274 8001A674 E70A0000 */  swc1  $f10, ($t8)
/* 01B278 8001A678 E7120008 */  swc1  $f18, 8($t8)
.L8001A67C:
/* 01B27C 8001A67C 8C42C53C */  lw    $v0, %lo(gModeSelection)($v0)
/* 01B280 8001A680 24010003 */  li    $at, 3
/* 01B284 8001A684 10410022 */  beq   $v0, $at, .L8001A710
/* 01B288 8001A688 00000000 */   nop   
/* 01B28C 8001A68C 854A4680 */  lh    $t2, %lo(D_80164680)($t2) # 0x4680($t2)
/* 01B290 8001A690 2401FFFF */  li    $at, -1
/* 01B294 8001A694 8FA90058 */  lw    $t1, 0x58($sp)
/* 01B298 8001A698 1541001D */  bne   $t2, $at, .L8001A710
/* 01B29C 8001A69C 00000000 */   nop   
/* 01B2A0 8001A6A0 952B0000 */  lhu   $t3, ($t1)
/* 01B2A4 8001A6A4 3C0E8016 */  lui   $t6, %hi(D_801646CC) # $t6, 0x8016
/* 01B2A8 8001A6A8 316C0800 */  andi  $t4, $t3, 0x800
/* 01B2AC 8001A6AC 11800018 */  beqz  $t4, .L8001A710
/* 01B2B0 8001A6B0 00000000 */   nop   
/* 01B2B4 8001A6B4 95CE46CC */  lhu   $t6, %lo(D_801646CC)($t6)
/* 01B2B8 8001A6B8 3C088016 */  lui   $t0, %hi(D_801646C8) # $t0, 0x8016
/* 01B2BC 8001A6BC 250846C8 */  addiu $t0, %lo(D_801646C8) # addiu $t0, $t0, 0x46c8
/* 01B2C0 8001A6C0 15C00013 */  bnez  $t6, .L8001A710
/* 01B2C4 8001A6C4 00000000 */   nop   
/* 01B2C8 8001A6C8 8D0D0000 */  lw    $t5, ($t0)
/* 01B2CC 8001A6CC 24010002 */  li    $at, 2
/* 01B2D0 8001A6D0 15A0000F */  bnez  $t5, .L8001A710
/* 01B2D4 8001A6D4 00000000 */   nop   
/* 01B2D8 8001A6D8 14410006 */  bne   $v0, $at, .L8001A6F4
/* 01B2DC 8001A6DC 02002025 */   move  $a0, $s0
/* 01B2E0 8001A6E0 02002025 */  move  $a0, $s0
/* 01B2E4 8001A6E4 0C006888 */  jal   func_8001A220
/* 01B2E8 8001A6E8 00E02825 */   move  $a1, $a3
/* 01B2EC 8001A6EC 10000004 */  b     .L8001A700
/* 01B2F0 8001A6F0 8FA70060 */   lw    $a3, 0x60($sp)
.L8001A6F4:
/* 01B2F4 8001A6F4 0C006849 */  jal   func_8001A124
/* 01B2F8 8001A6F8 00E02825 */   move  $a1, $a3
/* 01B2FC 8001A6FC 8FA70060 */  lw    $a3, 0x60($sp)
.L8001A700:
/* 01B300 8001A700 02002025 */  move  $a0, $s0
/* 01B304 8001A704 0C006624 */  jal   func_80019890
/* 01B308 8001A708 00E02825 */   move  $a1, $a3
/* 01B30C 8001A70C 8FA70060 */  lw    $a3, 0x60($sp)
.L8001A710:
/* 01B310 8001A710 3C0F8016 */  lui   $t7, %hi(D_80164680) # $t7, 0x8016
/* 01B314 8001A714 25EF4680 */  addiu $t7, %lo(D_80164680) # addiu $t7, $t7, 0x4680
/* 01B318 8001A718 00071040 */  sll   $v0, $a3, 1
/* 01B31C 8001A71C 004FC021 */  addu  $t8, $v0, $t7
/* 01B320 8001A720 AFB80024 */  sw    $t8, 0x24($sp)
/* 01B324 8001A724 87030000 */  lh    $v1, ($t8)
/* 01B328 8001A728 2401000E */  li    $at, 14
/* 01B32C 8001A72C 8FA40054 */  lw    $a0, 0x54($sp)
/* 01B330 8001A730 10610003 */  beq   $v1, $at, .L8001A740
/* 01B334 8001A734 8FA50058 */   lw    $a1, 0x58($sp)
/* 01B338 8001A738 14600007 */  bnez  $v1, .L8001A758
/* 01B33C 8001A73C 3C018016 */   lui   $at, %hi(D_801646C0) # 0x8016
.L8001A740:
/* 01B340 8001A740 0C00674B */  jal   func_80019D2C
/* 01B344 8001A744 00E03025 */   move  $a2, $a3
/* 01B348 8001A748 3C088016 */  lui   $t0, %hi(D_801646C8) # $t0, 0x8016
/* 01B34C 8001A74C 250846C8 */  addiu $t0, %lo(D_801646C8) # addiu $t0, $t0, 0x46c8
/* 01B350 8001A750 10000009 */  b     .L8001A778
/* 01B354 8001A754 8FA70060 */   lw    $a3, 0x60($sp)
.L8001A758:
/* 01B358 8001A758 00220821 */  addu  $at, $at, $v0
/* 01B35C 8001A75C A42046C0 */  sh    $zero, %lo(D_801646C0)($at) # 0x46c0($at)
/* 01B360 8001A760 8FA40054 */  lw    $a0, 0x54($sp)
/* 01B364 8001A764 0C005469 */  jal   func_800151A4
/* 01B368 8001A768 00E02825 */   move  $a1, $a3
/* 01B36C 8001A76C 3C088016 */  lui   $t0, %hi(D_801646C8) # $t0, 0x8016
/* 01B370 8001A770 250846C8 */  addiu $t0, %lo(D_801646C8) # addiu $t0, $t0, 0x46c8
/* 01B374 8001A774 8FA70060 */  lw    $a3, 0x60($sp)
.L8001A778:
/* 01B378 8001A778 3C028016 */  lui   $v0, %hi(D_801646CC) # $v0, 0x8016
/* 01B37C 8001A77C 944246CC */  lhu   $v0, %lo(D_801646CC)($v0)
/* 01B380 8001A780 24030001 */  li    $v1, 1
/* 01B384 8001A784 24010002 */  li    $at, 2
/* 01B388 8001A788 50430006 */  beql  $v0, $v1, .L8001A7A4
/* 01B38C 8001A78C 8D0A0000 */   lw    $t2, ($t0)
/* 01B390 8001A790 10410050 */  beq   $v0, $at, .L8001A8D4
/* 01B394 8001A794 000778C0 */   sll   $t7, $a3, 3
/* 01B398 8001A798 1000005F */  b     .L8001A918
/* 01B39C 8001A79C 3C188016 */   lui   $t8, %hi(D_801646D0) # $t8, 0x8016
/* 01B3A0 8001A7A0 8D0A0000 */  lw    $t2, ($t0)
.L8001A7A4:
/* 01B3A4 8001A7A4 25490001 */  addiu $t1, $t2, 1
/* 01B3A8 8001A7A8 2D2101F5 */  sltiu $at, $t1, 0x1f5
/* 01B3AC 8001A7AC 14200002 */  bnez  $at, .L8001A7B8
/* 01B3B0 8001A7B0 AD090000 */   sw    $t1, ($t0)
/* 01B3B4 8001A7B4 AD000000 */  sw    $zero, ($t0)
.L8001A7B8:
/* 01B3B8 8001A7B8 14E00011 */  bnez  $a3, .L8001A800
/* 01B3BC 8001A7BC 00000000 */   nop   
/* 01B3C0 8001A7C0 8D020000 */  lw    $v0, ($t0)
/* 01B3C4 8001A7C4 2401000A */  li    $at, 10
/* 01B3C8 8001A7C8 02002025 */  move  $a0, $s0
/* 01B3CC 8001A7CC 10410003 */  beq   $v0, $at, .L8001A7DC
/* 01B3D0 8001A7D0 00106080 */   sll   $t4, $s0, 2
/* 01B3D4 8001A7D4 2401000B */  li    $at, 11
/* 01B3D8 8001A7D8 14410009 */  bne   $v0, $at, .L8001A800
.L8001A7DC:
/* 01B3DC 8001A7DC 3C058016 */   lui   $a1, %hi(D_801643B8)
/* 01B3E0 8001A7E0 00AC2821 */  addu  $a1, $a1, $t4
/* 01B3E4 8001A7E4 8CA543B8 */  lw    $a1, %lo(D_801643B8)($a1)
/* 01B3E8 8001A7E8 0C006946 */  jal   func_8001A518
/* 01B3EC 8001A7EC 00003025 */   move  $a2, $zero
/* 01B3F0 8001A7F0 3C088016 */  lui   $t0, %hi(D_801646C8) # $t0, 0x8016
/* 01B3F4 8001A7F4 250846C8 */  addiu $t0, %lo(D_801646C8) # addiu $t0, $t0, 0x46c8
/* 01B3F8 8001A7F8 8FA70060 */  lw    $a3, 0x60($sp)
/* 01B3FC 8001A7FC 24030001 */  li    $v1, 1
.L8001A800:
/* 01B400 8001A800 3C0E800E */  lui   $t6, %hi(gModeSelection)
/* 01B404 8001A804 8DCEC53C */  lw    $t6, %lo(gModeSelection)($t6)
/* 01B408 8001A808 106E0056 */  beq   $v1, $t6, .L8001A964
/* 01B40C 8001A80C 00000000 */   nop   
/* 01B410 8001A810 14E30054 */  bne   $a3, $v1, .L8001A964
/* 01B414 8001A814 00000000 */   nop   
/* 01B418 8001A818 8D020000 */  lw    $v0, ($t0)
/* 01B41C 8001A81C 24010104 */  li    $at, 260
/* 01B420 8001A820 3C0D8019 */  lui   $t5, %hi(D_8018EDF3) # $t5, 0x8019
/* 01B424 8001A824 10410003 */  beq   $v0, $at, .L8001A834
/* 01B428 8001A828 24010105 */   li    $at, 261
/* 01B42C 8001A82C 1441004D */  bne   $v0, $at, .L8001A964
/* 01B430 8001A830 00000000 */   nop   
.L8001A834:
/* 01B434 8001A834 81ADEDF3 */  lb    $t5, %lo(D_8018EDF3)($t5)
/* 01B438 8001A838 24010002 */  li    $at, 2
/* 01B43C 8001A83C 00001825 */  move  $v1, $zero
/* 01B440 8001A840 15A1000A */  bne   $t5, $at, .L8001A86C
/* 01B444 8001A844 24060008 */   li    $a2, 8
/* 01B448 8001A848 00107880 */  sll   $t7, $s0, 2
/* 01B44C 8001A84C 3C058016 */  lui   $a1, %hi(D_801643B8)
/* 01B450 8001A850 00AF2821 */  addu  $a1, $a1, $t7
/* 01B454 8001A854 8CA543B8 */  lw    $a1, %lo(D_801643B8)($a1)
/* 01B458 8001A858 02002025 */  move  $a0, $s0
/* 01B45C 8001A85C 0C006946 */  jal   func_8001A518
/* 01B460 8001A860 24060001 */   li    $a2, 1
/* 01B464 8001A864 1000003F */  b     .L8001A964
/* 01B468 8001A868 8FA70060 */   lw    $a3, 0x60($sp)
.L8001A86C:
/* 01B46C 8001A86C 3C04800F */  lui   $a0, %hi(gPlayers) # $a0, 0x800f
/* 01B470 8001A870 AFB00044 */  sw    $s0, 0x44($sp)
/* 01B474 8001A874 24846990 */  addiu $a0, %lo(gPlayers) # addiu $a0, $a0, 0x6990
/* 01B478 8001A878 24050DD8 */  li    $a1, 3544
/* 01B47C 8001A87C 26100001 */  addiu $s0, $s0, 1
.L8001A880:
/* 01B480 8001A880 2A010008 */  slti  $at, $s0, 8
/* 01B484 8001A884 14200002 */  bnez  $at, .L8001A890
/* 01B488 8001A888 24630001 */   addiu $v1, $v1, 1
/* 01B48C 8001A88C 24100001 */  li    $s0, 1
.L8001A890:
/* 01B490 8001A890 02050019 */  multu $s0, $a1
/* 01B494 8001A894 0000C012 */  mflo  $t8
/* 01B498 8001A898 0098C821 */  addu  $t9, $a0, $t8
/* 01B49C 8001A89C 872200CA */  lh    $v0, 0xca($t9)
/* 01B4A0 8001A8A0 304A0002 */  andi  $t2, $v0, 2
/* 01B4A4 8001A8A4 15400003 */  bnez  $t2, .L8001A8B4
/* 01B4A8 8001A8A8 30490008 */   andi  $t1, $v0, 8
/* 01B4AC 8001A8AC 51200004 */  beql  $t1, $zero, .L8001A8C0
/* 01B4B0 8001A8B0 8FA40044 */   lw    $a0, 0x44($sp)
.L8001A8B4:
/* 01B4B4 8001A8B4 5466FFF2 */  bnel  $v1, $a2, .L8001A880
/* 01B4B8 8001A8B8 26100001 */   addiu $s0, $s0, 1
/* 01B4BC 8001A8BC 8FA40044 */  lw    $a0, 0x44($sp)
.L8001A8C0:
/* 01B4C0 8001A8C0 00E02825 */  move  $a1, $a3
/* 01B4C4 8001A8C4 0C006914 */  jal   func_8001A450
/* 01B4C8 8001A8C8 02003025 */   move  $a2, $s0
/* 01B4CC 8001A8CC 10000025 */  b     .L8001A964
/* 01B4D0 8001A8D0 8FA70060 */   lw    $a3, 0x60($sp)
.L8001A8D4:
/* 01B4D4 8001A8D4 8D0B0000 */  lw    $t3, ($t0)
/* 01B4D8 8001A8D8 256C0001 */  addiu $t4, $t3, 1
/* 01B4DC 8001A8DC 2D8100FB */  sltiu $at, $t4, 0xfb
/* 01B4E0 8001A8E0 14200002 */  bnez  $at, .L8001A8EC
/* 01B4E4 8001A8E4 AD0C0000 */   sw    $t4, ($t0)
/* 01B4E8 8001A8E8 AD000000 */  sw    $zero, ($t0)
.L8001A8EC:
/* 01B4EC 8001A8EC 14E0001D */  bnez  $a3, .L8001A964
/* 01B4F0 8001A8F0 00000000 */   nop   
/* 01B4F4 8001A8F4 8D0D0000 */  lw    $t5, ($t0)
/* 01B4F8 8001A8F8 2401000A */  li    $at, 10
/* 01B4FC 8001A8FC 02002025 */  move  $a0, $s0
/* 01B500 8001A900 15A10018 */  bne   $t5, $at, .L8001A964
/* 01B504 8001A904 00E02825 */   move  $a1, $a3
/* 01B508 8001A908 0C006914 */  jal   func_8001A450
/* 01B50C 8001A90C 02003025 */   move  $a2, $s0
/* 01B510 8001A910 10000014 */  b     .L8001A964
/* 01B514 8001A914 8FA70060 */   lw    $a3, 0x60($sp)
.L8001A918:
/* 01B518 8001A918 271846D0 */  addiu $t8, %lo(D_801646D0) # addiu $t8, $t8, 0x46d0
/* 01B51C 8001A91C 01F81021 */  addu  $v0, $t7, $t8
/* 01B520 8001A920 84590000 */  lh    $t9, ($v0)
/* 01B524 8001A924 00075080 */  sll   $t2, $a3, 2
/* 01B528 8001A928 01475023 */  subu  $t2, $t2, $a3
/* 01B52C 8001A92C 1479000D */  bne   $v1, $t9, .L8001A964
/* 01B530 8001A930 000A50C0 */   sll   $t2, $t2, 3
/* 01B534 8001A934 84500004 */  lh    $s0, 4($v0)
/* 01B538 8001A938 01475023 */  subu  $t2, $t2, $a3
/* 01B53C 8001A93C 000A50C0 */  sll   $t2, $t2, 3
/* 01B540 8001A940 3C018016 */  lui   $at, %hi(cameras+0xAE) # 0x8016
/* 01B544 8001A944 A4400000 */  sh    $zero, ($v0)
/* 01B548 8001A948 002A0821 */  addu  $at, $at, $t2
/* 01B54C 8001A94C A430479E */  sh    $s0, %lo(cameras+0xAE)($at) # 0x479e($at)
/* 01B550 8001A950 84460002 */  lh    $a2, 2($v0)
/* 01B554 8001A954 00E02025 */  move  $a0, $a3
/* 01B558 8001A958 0C0068F6 */  jal   func_8001A3D8
/* 01B55C 8001A95C 24050000 */   li    $a1, 0
/* 01B560 8001A960 8FA70060 */  lw    $a3, 0x60($sp)
.L8001A964:
/* 01B564 8001A964 0C006714 */  jal   func_80019C50
/* 01B568 8001A968 00E02025 */   move  $a0, $a3
/* 01B56C 8001A96C 8FA90024 */  lw    $t1, 0x24($sp)
/* 01B570 8001A970 8FA70060 */  lw    $a3, 0x60($sp)
/* 01B574 8001A974 952B0000 */  lhu   $t3, ($t1)
/* 01B578 8001A978 2D610011 */  sltiu $at, $t3, 0x11
/* 01B57C 8001A97C 10200042 */  beqz  $at, .L8001AA88
/* 01B580 8001A980 000B5880 */   sll   $t3, $t3, 2
/* 01B584 8001A984 3C01800F */  lui   $at, %hi(jpt_800ED384) # 0x800f
/* 01B588 8001A988 002B0821 */  addu  $at, $at, $t3
/* 01B58C 8001A98C 8C2BD384 */  lw    $t3, %lo(jpt_800ED384)($at) # -0x2c7c($at)
/* 01B590 8001A990 01600008 */  jr    $t3
/* 01B594 8001A994 00000000 */   nop   
glabel L8001A998
/* 01B598 8001A998 8FA40054 */  lw    $a0, 0x54($sp)
/* 01B59C 8001A99C 8FA50058 */  lw    $a1, 0x58($sp)
/* 01B5A0 8001A9A0 0C0054E4 */  jal   func_80015390
/* 01B5A4 8001A9A4 83A6005F */   lb    $a2, 0x5f($sp)
/* 01B5A8 8001A9A8 1000003C */  b     .L8001AA9C
/* 01B5AC 8001A9AC 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L8001A9B0
/* 01B5B0 8001A9B0 8FA40054 */  lw    $a0, 0x54($sp)
/* 01B5B4 8001A9B4 8FA50058 */  lw    $a1, 0x58($sp)
/* 01B5B8 8001A9B8 0C0055DF */  jal   func_8001577C
/* 01B5BC 8001A9BC 83A6005F */   lb    $a2, 0x5f($sp)
/* 01B5C0 8001A9C0 10000036 */  b     .L8001AA9C
/* 01B5C4 8001A9C4 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L8001A9C8
/* 01B5C8 8001A9C8 8FA40054 */  lw    $a0, 0x54($sp)
/* 01B5CC 8001A9CC 8FA50058 */  lw    $a1, 0x58($sp)
/* 01B5D0 8001A9D0 0C005725 */  jal   func_80015C94
/* 01B5D4 8001A9D4 83A6005F */   lb    $a2, 0x5f($sp)
/* 01B5D8 8001A9D8 10000030 */  b     .L8001AA9C
/* 01B5DC 8001A9DC 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L8001A9E0
/* 01B5E0 8001A9E0 8FA40054 */  lw    $a0, 0x54($sp)
/* 01B5E4 8001A9E4 8FA50058 */  lw    $a1, 0x58($sp)
/* 01B5E8 8001A9E8 0C005925 */  jal   func_80016494
/* 01B5EC 8001A9EC 83A6005F */   lb    $a2, 0x5f($sp)
/* 01B5F0 8001A9F0 1000002A */  b     .L8001AA9C
/* 01B5F4 8001A9F4 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L8001A9F8
/* 01B5F8 8001A9F8 8FA40054 */  lw    $a0, 0x54($sp)
/* 01B5FC 8001A9FC 8FA50058 */  lw    $a1, 0x58($sp)
/* 01B600 8001AA00 0C005C15 */  jal   func_80017054
/* 01B604 8001AA04 83A6005F */   lb    $a2, 0x5f($sp)
/* 01B608 8001AA08 10000024 */  b     .L8001AA9C
/* 01B60C 8001AA0C 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L8001AA10
/* 01B610 8001AA10 8FA40054 */  lw    $a0, 0x54($sp)
/* 01B614 8001AA14 8FA50058 */  lw    $a1, 0x58($sp)
/* 01B618 8001AA18 0C005E3D */  jal   func_800178F4
/* 01B61C 8001AA1C 83A6005F */   lb    $a2, 0x5f($sp)
/* 01B620 8001AA20 1000001E */  b     .L8001AA9C
/* 01B624 8001AA24 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L8001AA28
/* 01B628 8001AA28 8FA40054 */  lw    $a0, 0x54($sp)
/* 01B62C 8001AA2C 8FA50058 */  lw    $a1, 0x58($sp)
/* 01B630 8001AA30 0C00603C */  jal   func_800180F0
/* 01B634 8001AA34 83A6005F */   lb    $a2, 0x5f($sp)
/* 01B638 8001AA38 10000018 */  b     .L8001AA9C
/* 01B63C 8001AA3C 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L8001AA40
/* 01B640 8001AA40 8FA40054 */  lw    $a0, 0x54($sp)
/* 01B644 8001AA44 8FA50058 */  lw    $a1, 0x58($sp)
/* 01B648 8001AA48 0C00623D */  jal   func_800188F4
/* 01B64C 8001AA4C 83A6005F */   lb    $a2, 0x5f($sp)
/* 01B650 8001AA50 10000012 */  b     .L8001AA9C
/* 01B654 8001AA54 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L8001AA58
/* 01B658 8001AA58 8FA40054 */  lw    $a0, 0x54($sp)
/* 01B65C 8001AA5C 8FA50058 */  lw    $a1, 0x58($sp)
/* 01B660 8001AA60 0C0064CF */  jal   func_8001933C
/* 01B664 8001AA64 83A6005F */   lb    $a2, 0x5f($sp)
/* 01B668 8001AA68 1000000C */  b     .L8001AA9C
/* 01B66C 8001AA6C 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L8001AA70
/* 01B670 8001AA70 8FA40054 */  lw    $a0, 0x54($sp)
/* 01B674 8001AA74 8FA50058 */  lw    $a1, 0x58($sp)
/* 01B678 8001AA78 0C0065D8 */  jal   func_80019760
/* 01B67C 8001AA7C 83A6005F */   lb    $a2, 0x5f($sp)
/* 01B680 8001AA80 10000006 */  b     .L8001AA9C
/* 01B684 8001AA84 8FBF001C */   lw    $ra, 0x1c($sp)
.L8001AA88:
glabel L8001AA88
/* 01B688 8001AA88 8FA40054 */  lw    $a0, 0x54($sp)
/* 01B68C 8001AA8C 8FA50058 */  lw    $a1, 0x58($sp)
/* 01B690 8001AA90 0C0054E4 */  jal   func_80015390
/* 01B694 8001AA94 83A6005F */   lb    $a2, 0x5f($sp)
/* 01B698 8001AA98 8FBF001C */  lw    $ra, 0x1c($sp)
.L8001AA9C:
/* 01B69C 8001AA9C 8FB00018 */  lw    $s0, 0x18($sp)
/* 01B6A0 8001AAA0 27BD0050 */  addiu $sp, $sp, 0x50
/* 01B6A4 8001AAA4 03E00008 */  jr    $ra
/* 01B6A8 8001AAA8 00000000 */   nop   
