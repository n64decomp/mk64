glabel func_80032700
/* 033300 80032700 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 033304 80032704 AFBF0014 */  sw    $ra, 0x14($sp)
/* 033308 80032708 0C009F40 */  jal   get_player_index_for_player
/* 03330C 8003270C AFA40018 */   sw    $a0, 0x18($sp)
/* 033310 80032710 8FA40018 */  lw    $a0, 0x18($sp)
/* 033314 80032714 44803800 */  mtc1  $zero, $f7
/* 033318 80032718 44803000 */  mtc1  $zero, $f6
/* 03331C 8003271C C484009C */  lwc1  $f4, 0x9c($a0)
/* 033320 80032720 46002021 */  cvt.d.s $f0, $f4
/* 033324 80032724 4620303E */  c.le.d $f6, $f0
/* 033328 80032728 00000000 */  nop
/* 03332C 8003272C 4502001C */  bc1fl .L800327A0
/* 033330 80032730 3C014008 */   lui   $at, 0x4008
/* 033334 80032734 C4880214 */  lwc1  $f8, 0x214($a0)
/* 033338 80032738 3C01800F */  lui   $at, %hi(D_800EDB10)
/* 03333C 8003273C D430DB10 */  ldc1  $f16, %lo(D_800EDB10)($at)
/* 033340 80032740 460042A1 */  cvt.d.s $f10, $f8
/* 033344 80032744 46305482 */  mul.d $f18, $f10, $f16
/* 033348 80032748 4632003C */  c.lt.d $f0, $f18
/* 03334C 8003274C 00000000 */  nop
/* 033350 80032750 45020013 */  bc1fl .L800327A0
/* 033354 80032754 3C014008 */   lui   $at, 0x4008
/* 033358 80032758 948E0254 */  lhu   $t6, 0x254($a0)
/* 03335C 8003275C 3C03800E */  lui   $v1, %hi(gKartAccelerationTables) # $v1, 0x800e
/* 033360 80032760 24633010 */  addiu $v1, %lo(gKartAccelerationTables) # addiu $v1, $v1, 0x3010
/* 033364 80032764 000E7880 */  sll   $t7, $t6, 2
/* 033368 80032768 006FC021 */  addu  $t8, $v1, $t7
/* 03336C 8003276C 8F190000 */  lw    $t9, ($t8)
/* 033370 80032770 3C014008 */  li    $at, 0x40080000 # 2.125000
/* 033374 80032774 44816800 */  mtc1  $at, $f13
/* 033378 80032778 C7240000 */  lwc1  $f4, ($t9)
/* 03337C 8003277C 44806000 */  mtc1  $zero, $f12
/* 033380 80032780 460021A1 */  cvt.d.s $f6, $f4
/* 033384 80032784 462C3202 */  mul.d $f8, $f6, $f12
/* 033388 80032788 46280280 */  add.d $f10, $f0, $f8
/* 03338C 8003278C 46205420 */  cvt.s.d $f16, $f10
/* 033390 80032790 E490009C */  swc1  $f16, 0x9c($a0)
/* 033394 80032794 C492009C */  lwc1  $f18, 0x9c($a0)
/* 033398 80032798 46009021 */  cvt.d.s $f0, $f18
/* 03339C 8003279C 3C014008 */  li    $at, 0x40080000 # 2.125000
.L800327A0:
/* 0333A0 800327A0 C4840214 */  lwc1  $f4, 0x214($a0)
/* 0333A4 800327A4 44816800 */  mtc1  $at, $f13
/* 0333A8 800327A8 3C01800F */  lui   $at, %hi(D_800EDB18)
/* 0333AC 800327AC D426DB18 */  ldc1  $f6, %lo(D_800EDB18)($at)
/* 0333B0 800327B0 460020A1 */  cvt.d.s $f2, $f4
/* 0333B4 800327B4 3C03800E */  lui   $v1, %hi(gKartAccelerationTables) # $v1, 0x800e
/* 0333B8 800327B8 46261202 */  mul.d $f8, $f2, $f6
/* 0333BC 800327BC 44806000 */  mtc1  $zero, $f12
/* 0333C0 800327C0 24633010 */  addiu $v1, %lo(gKartAccelerationTables) # addiu $v1, $v1, 0x3010
/* 0333C4 800327C4 3C01800F */  lui   $at, %hi(D_800EDB20)
/* 0333C8 800327C8 4620403E */  c.le.d $f8, $f0
/* 0333CC 800327CC 00000000 */  nop
/* 0333D0 800327D0 45000015 */  bc1f  .L80032828
/* 0333D4 800327D4 00000000 */   nop
/* 0333D8 800327D8 D42ADB20 */  ldc1  $f10, %lo(D_800EDB20)($at)
/* 0333DC 800327DC 462A1402 */  mul.d $f16, $f2, $f10
/* 0333E0 800327E0 4630003C */  c.lt.d $f0, $f16
/* 0333E4 800327E4 00000000 */  nop
/* 0333E8 800327E8 4500000F */  bc1f  .L80032828
/* 0333EC 800327EC 00000000 */   nop
/* 0333F0 800327F0 94880254 */  lhu   $t0, 0x254($a0)
/* 0333F4 800327F4 00084880 */  sll   $t1, $t0, 2
/* 0333F8 800327F8 00695021 */  addu  $t2, $v1, $t1
/* 0333FC 800327FC 8D4B0000 */  lw    $t3, ($t2)
/* 033400 80032800 C5720004 */  lwc1  $f18, 4($t3)
/* 033404 80032804 46009121 */  cvt.d.s $f4, $f18
/* 033408 80032808 C4920214 */  lwc1  $f18, 0x214($a0)
/* 03340C 8003280C 462C2182 */  mul.d $f6, $f4, $f12
/* 033410 80032810 460090A1 */  cvt.d.s $f2, $f18
/* 033414 80032814 46260200 */  add.d $f8, $f0, $f6
/* 033418 80032818 462042A0 */  cvt.s.d $f10, $f8
/* 03341C 8003281C E48A009C */  swc1  $f10, 0x9c($a0)
/* 033420 80032820 C490009C */  lwc1  $f16, 0x9c($a0)
/* 033424 80032824 46008021 */  cvt.d.s $f0, $f16
.L80032828:
/* 033428 80032828 3C01800F */  lui   $at, %hi(D_800EDB28)
/* 03342C 8003282C D424DB28 */  ldc1  $f4, %lo(D_800EDB28)($at)
/* 033430 80032830 3C01800F */  lui   $at, %hi(D_800EDB30)
/* 033434 80032834 46241182 */  mul.d $f6, $f2, $f4
/* 033438 80032838 4620303E */  c.le.d $f6, $f0
/* 03343C 8003283C 00000000 */  nop
/* 033440 80032840 45000015 */  bc1f  .L80032898
/* 033444 80032844 00000000 */   nop
/* 033448 80032848 D428DB30 */  ldc1  $f8, %lo(D_800EDB30)($at)
/* 03344C 8003284C 46281282 */  mul.d $f10, $f2, $f8
/* 033450 80032850 462A003C */  c.lt.d $f0, $f10
/* 033454 80032854 00000000 */  nop
/* 033458 80032858 4500000F */  bc1f  .L80032898
/* 03345C 8003285C 00000000 */   nop
/* 033460 80032860 948C0254 */  lhu   $t4, 0x254($a0)
/* 033464 80032864 000C6880 */  sll   $t5, $t4, 2
/* 033468 80032868 006D7021 */  addu  $t6, $v1, $t5
/* 03346C 8003286C 8DCF0000 */  lw    $t7, ($t6)
/* 033470 80032870 C5F00008 */  lwc1  $f16, 8($t7)
/* 033474 80032874 460084A1 */  cvt.d.s $f18, $f16
/* 033478 80032878 C4900214 */  lwc1  $f16, 0x214($a0)
/* 03347C 8003287C 462C9102 */  mul.d $f4, $f18, $f12
/* 033480 80032880 460080A1 */  cvt.d.s $f2, $f16
/* 033484 80032884 46240180 */  add.d $f6, $f0, $f4
/* 033488 80032888 46203220 */  cvt.s.d $f8, $f6
/* 03348C 8003288C E488009C */  swc1  $f8, 0x9c($a0)
/* 033490 80032890 C48A009C */  lwc1  $f10, 0x9c($a0)
/* 033494 80032894 46005021 */  cvt.d.s $f0, $f10
.L80032898:
/* 033498 80032898 3C01800F */  lui   $at, %hi(D_800EDB38)
/* 03349C 8003289C D432DB38 */  ldc1  $f18, %lo(D_800EDB38)($at)
/* 0334A0 800328A0 3C01800F */  lui   $at, %hi(D_800EDB40)
/* 0334A4 800328A4 46321102 */  mul.d $f4, $f2, $f18
/* 0334A8 800328A8 4620203E */  c.le.d $f4, $f0
/* 0334AC 800328AC 00000000 */  nop
/* 0334B0 800328B0 45000015 */  bc1f  .L80032908
/* 0334B4 800328B4 00000000 */   nop
/* 0334B8 800328B8 D426DB40 */  ldc1  $f6, %lo(D_800EDB40)($at)
/* 0334BC 800328BC 46261202 */  mul.d $f8, $f2, $f6
/* 0334C0 800328C0 4628003C */  c.lt.d $f0, $f8
/* 0334C4 800328C4 00000000 */  nop
/* 0334C8 800328C8 4500000F */  bc1f  .L80032908
/* 0334CC 800328CC 00000000 */   nop
/* 0334D0 800328D0 94980254 */  lhu   $t8, 0x254($a0)
/* 0334D4 800328D4 0018C880 */  sll   $t9, $t8, 2
/* 0334D8 800328D8 00794021 */  addu  $t0, $v1, $t9
/* 0334DC 800328DC 8D090000 */  lw    $t1, ($t0)
/* 0334E0 800328E0 C52A000C */  lwc1  $f10, 0xc($t1)
/* 0334E4 800328E4 46005421 */  cvt.d.s $f16, $f10
/* 0334E8 800328E8 C48A0214 */  lwc1  $f10, 0x214($a0)
/* 0334EC 800328EC 462C8482 */  mul.d $f18, $f16, $f12
/* 0334F0 800328F0 460050A1 */  cvt.d.s $f2, $f10
/* 0334F4 800328F4 46320100 */  add.d $f4, $f0, $f18
/* 0334F8 800328F8 462021A0 */  cvt.s.d $f6, $f4
/* 0334FC 800328FC E486009C */  swc1  $f6, 0x9c($a0)
/* 033500 80032900 C488009C */  lwc1  $f8, 0x9c($a0)
/* 033504 80032904 46004021 */  cvt.d.s $f0, $f8
.L80032908:
/* 033508 80032908 3C01800F */  lui   $at, %hi(D_800EDB48)
/* 03350C 8003290C D430DB48 */  ldc1  $f16, %lo(D_800EDB48)($at)
/* 033510 80032910 3C013FE0 */  lui   $at, 0x3fe0
/* 033514 80032914 46301482 */  mul.d $f18, $f2, $f16
/* 033518 80032918 4620903E */  c.le.d $f18, $f0
/* 03351C 8003291C 00000000 */  nop
/* 033520 80032920 45020018 */  bc1fl .L80032984
/* 033524 80032924 3C013FE0 */   li    $at, 0x3FE00000 # 1.750000
/* 033528 80032928 44812800 */  mtc1  $at, $f5
/* 03352C 8003292C 44802000 */  mtc1  $zero, $f4
/* 033530 80032930 00000000 */  nop
/* 033534 80032934 46241182 */  mul.d $f6, $f2, $f4
/* 033538 80032938 4626003C */  c.lt.d $f0, $f6
/* 03353C 8003293C 00000000 */  nop
/* 033540 80032940 45020010 */  bc1fl .L80032984
/* 033544 80032944 3C013FE0 */   lui   $at, 0x3fe0
/* 033548 80032948 948A0254 */  lhu   $t2, 0x254($a0)
/* 03354C 8003294C 000A5880 */  sll   $t3, $t2, 2
/* 033550 80032950 006B6021 */  addu  $t4, $v1, $t3
/* 033554 80032954 8D8D0000 */  lw    $t5, ($t4)
/* 033558 80032958 C5A80010 */  lwc1  $f8, 0x10($t5)
/* 03355C 8003295C 460042A1 */  cvt.d.s $f10, $f8
/* 033560 80032960 C4880214 */  lwc1  $f8, 0x214($a0)
/* 033564 80032964 462C5402 */  mul.d $f16, $f10, $f12
/* 033568 80032968 460040A1 */  cvt.d.s $f2, $f8
/* 03356C 8003296C 46300480 */  add.d $f18, $f0, $f16
/* 033570 80032970 46209120 */  cvt.s.d $f4, $f18
/* 033574 80032974 E484009C */  swc1  $f4, 0x9c($a0)
/* 033578 80032978 C486009C */  lwc1  $f6, 0x9c($a0)
/* 03357C 8003297C 46003021 */  cvt.d.s $f0, $f6
/* 033580 80032980 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
.L80032984:
/* 033584 80032984 44815800 */  mtc1  $at, $f11
/* 033588 80032988 44805000 */  mtc1  $zero, $f10
/* 03358C 8003298C 3C01800F */  lui   $at, %hi(D_800EDB50)
/* 033590 80032990 462A1402 */  mul.d $f16, $f2, $f10
/* 033594 80032994 4620803E */  c.le.d $f16, $f0
/* 033598 80032998 00000000 */  nop
/* 03359C 8003299C 45000015 */  bc1f  .L800329F4
/* 0335A0 800329A0 00000000 */   nop
/* 0335A4 800329A4 D432DB50 */  ldc1  $f18, %lo(D_800EDB50)($at)
/* 0335A8 800329A8 46321102 */  mul.d $f4, $f2, $f18
/* 0335AC 800329AC 4624003C */  c.lt.d $f0, $f4
/* 0335B0 800329B0 00000000 */  nop
/* 0335B4 800329B4 4500000F */  bc1f  .L800329F4
/* 0335B8 800329B8 00000000 */   nop
/* 0335BC 800329BC 948E0254 */  lhu   $t6, 0x254($a0)
/* 0335C0 800329C0 000E7880 */  sll   $t7, $t6, 2
/* 0335C4 800329C4 006FC021 */  addu  $t8, $v1, $t7
/* 0335C8 800329C8 8F190000 */  lw    $t9, ($t8)
/* 0335CC 800329CC C7260014 */  lwc1  $f6, 0x14($t9)
/* 0335D0 800329D0 46003221 */  cvt.d.s $f8, $f6
/* 0335D4 800329D4 C4860214 */  lwc1  $f6, 0x214($a0)
/* 0335D8 800329D8 462C4282 */  mul.d $f10, $f8, $f12
/* 0335DC 800329DC 460030A1 */  cvt.d.s $f2, $f6
/* 0335E0 800329E0 462A0400 */  add.d $f16, $f0, $f10
/* 0335E4 800329E4 462084A0 */  cvt.s.d $f18, $f16
/* 0335E8 800329E8 E492009C */  swc1  $f18, 0x9c($a0)
/* 0335EC 800329EC C484009C */  lwc1  $f4, 0x9c($a0)
/* 0335F0 800329F0 46002021 */  cvt.d.s $f0, $f4
.L800329F4:
/* 0335F4 800329F4 3C01800F */  lui   $at, %hi(D_800EDB58)
/* 0335F8 800329F8 D428DB58 */  ldc1  $f8, %lo(D_800EDB58)($at)
/* 0335FC 800329FC 3C01800F */  lui   $at, %hi(D_800EDB60)
/* 033600 80032A00 46281282 */  mul.d $f10, $f2, $f8
/* 033604 80032A04 4620503E */  c.le.d $f10, $f0
/* 033608 80032A08 00000000 */  nop
/* 03360C 80032A0C 45020019 */  bc1fl .L80032A74
/* 033610 80032A10 3C014004 */   lui   $at, 0x4004 # 2.0625
/* 033614 80032A14 D430DB60 */  ldc1  $f16, %lo(D_800EDB60)($at)
/* 033618 80032A18 46301482 */  mul.d $f18, $f2, $f16
/* 03361C 80032A1C 4632003C */  c.lt.d $f0, $f18
/* 033620 80032A20 00000000 */  nop
/* 033624 80032A24 45020013 */  bc1fl .L80032A74
/* 033628 80032A28 3C014004 */   lui   $at, 0x4004 # 2.0625
/* 03362C 80032A2C 94880254 */  lhu   $t0, 0x254($a0)
/* 033630 80032A30 3C014004 */  li    $at, 0x40040000 # 2.062500
/* 033634 80032A34 44816800 */  mtc1  $at, $f13
/* 033638 80032A38 00084880 */  sll   $t1, $t0, 2
/* 03363C 80032A3C 00695021 */  addu  $t2, $v1, $t1
/* 033640 80032A40 8D4B0000 */  lw    $t3, ($t2)
/* 033644 80032A44 44806000 */  mtc1  $zero, $f12
/* 033648 80032A48 C5640018 */  lwc1  $f4, 0x18($t3)
/* 03364C 80032A4C 460021A1 */  cvt.d.s $f6, $f4
/* 033650 80032A50 C4840214 */  lwc1  $f4, 0x214($a0)
/* 033654 80032A54 462C3202 */  mul.d $f8, $f6, $f12
/* 033658 80032A58 460020A1 */  cvt.d.s $f2, $f4
/* 03365C 80032A5C 46280280 */  add.d $f10, $f0, $f8
/* 033660 80032A60 46205420 */  cvt.s.d $f16, $f10
/* 033664 80032A64 E490009C */  swc1  $f16, 0x9c($a0)
/* 033668 80032A68 C492009C */  lwc1  $f18, 0x9c($a0)
/* 03366C 80032A6C 46009021 */  cvt.d.s $f0, $f18
/* 033670 80032A70 3C014004 */  li    $at, 0x40040000 # 2.062500
.L80032A74:
/* 033674 80032A74 44816800 */  mtc1  $at, $f13
/* 033678 80032A78 3C01800F */  lui   $at, %hi(D_800EDB68)
/* 03367C 80032A7C D426DB68 */  ldc1  $f6, %lo(D_800EDB68)($at)
/* 033680 80032A80 44806000 */  mtc1  $zero, $f12
/* 033684 80032A84 3C01800F */  lui   $at, %hi(D_800EDB70)
/* 033688 80032A88 46261202 */  mul.d $f8, $f2, $f6
/* 03368C 80032A8C 4620403E */  c.le.d $f8, $f0
/* 033690 80032A90 00000000 */  nop
/* 033694 80032A94 45000015 */  bc1f  .L80032AEC
/* 033698 80032A98 00000000 */   nop
/* 03369C 80032A9C D42ADB70 */  ldc1  $f10, %lo(D_800EDB70)($at)
/* 0336A0 80032AA0 462A1402 */  mul.d $f16, $f2, $f10
/* 0336A4 80032AA4 4630003C */  c.lt.d $f0, $f16
/* 0336A8 80032AA8 00000000 */  nop
/* 0336AC 80032AAC 4500000F */  bc1f  .L80032AEC
/* 0336B0 80032AB0 00000000 */   nop
/* 0336B4 80032AB4 948C0254 */  lhu   $t4, 0x254($a0)
/* 0336B8 80032AB8 000C6880 */  sll   $t5, $t4, 2
/* 0336BC 80032ABC 006D7021 */  addu  $t6, $v1, $t5
/* 0336C0 80032AC0 8DCF0000 */  lw    $t7, ($t6)
/* 0336C4 80032AC4 C5F2001C */  lwc1  $f18, 0x1c($t7)
/* 0336C8 80032AC8 46009121 */  cvt.d.s $f4, $f18
/* 0336CC 80032ACC C4920214 */  lwc1  $f18, 0x214($a0)
/* 0336D0 80032AD0 462C2182 */  mul.d $f6, $f4, $f12
/* 0336D4 80032AD4 460090A1 */  cvt.d.s $f2, $f18
/* 0336D8 80032AD8 46260200 */  add.d $f8, $f0, $f6
/* 0336DC 80032ADC 462042A0 */  cvt.s.d $f10, $f8
/* 0336E0 80032AE0 E48A009C */  swc1  $f10, 0x9c($a0)
/* 0336E4 80032AE4 C490009C */  lwc1  $f16, 0x9c($a0)
/* 0336E8 80032AE8 46008021 */  cvt.d.s $f0, $f16
.L80032AEC:
/* 0336EC 80032AEC 3C01800F */  lui   $at, %hi(D_800EDB78)
/* 0336F0 80032AF0 D424DB78 */  ldc1  $f4, %lo(D_800EDB78)($at)
/* 0336F4 80032AF4 3C01800F */  lui   $at, %hi(D_800EDB80)
/* 0336F8 80032AF8 3C0E8016 */  lui   $t6, %hi(D_801656F0) # $t6, 0x8016
/* 0336FC 80032AFC 46241182 */  mul.d $f6, $f2, $f4
/* 033700 80032B00 3C0F8019 */  lui   $t7, %hi(gRaceFrameCounter) # $t7, 0x8019
/* 033704 80032B04 4620303E */  c.le.d $f6, $f0
/* 033708 80032B08 00000000 */  nop
/* 03370C 80032B0C 45000015 */  bc1f  .L80032B64
/* 033710 80032B10 00000000 */   nop
/* 033714 80032B14 D428DB80 */  ldc1  $f8, %lo(D_800EDB80)($at)
/* 033718 80032B18 46281282 */  mul.d $f10, $f2, $f8
/* 03371C 80032B1C 462A003C */  c.lt.d $f0, $f10
/* 033720 80032B20 00000000 */  nop
/* 033724 80032B24 4500000F */  bc1f  .L80032B64
/* 033728 80032B28 00000000 */   nop
/* 03372C 80032B2C 94980254 */  lhu   $t8, 0x254($a0)
/* 033730 80032B30 0018C880 */  sll   $t9, $t8, 2
/* 033734 80032B34 00794021 */  addu  $t0, $v1, $t9
/* 033738 80032B38 8D090000 */  lw    $t1, ($t0)
/* 03373C 80032B3C C5300020 */  lwc1  $f16, 0x20($t1)
/* 033740 80032B40 460084A1 */  cvt.d.s $f18, $f16
/* 033744 80032B44 C4900214 */  lwc1  $f16, 0x214($a0)
/* 033748 80032B48 462C9102 */  mul.d $f4, $f18, $f12
/* 03374C 80032B4C 460080A1 */  cvt.d.s $f2, $f16
/* 033750 80032B50 46240180 */  add.d $f6, $f0, $f4
/* 033754 80032B54 46203220 */  cvt.s.d $f8, $f6
/* 033758 80032B58 E488009C */  swc1  $f8, 0x9c($a0)
/* 03375C 80032B5C C48A009C */  lwc1  $f10, 0x9c($a0)
/* 033760 80032B60 46005021 */  cvt.d.s $f0, $f10
.L80032B64:
/* 033764 80032B64 3C01800F */  lui   $at, %hi(D_800EDB88)
/* 033768 80032B68 D432DB88 */  ldc1  $f18, %lo(D_800EDB88)($at)
/* 03376C 80032B6C 0002C080 */  sll   $t8, $v0, 2
/* 033770 80032B70 3C198016 */  lui   $t9, %hi(D_801652E0) # 0x8016
/* 033774 80032B74 46321102 */  mul.d $f4, $f2, $f18
/* 033778 80032B78 0338C821 */  addu  $t9, $t9, $t8
/* 03377C 80032B7C 3C08800E */  lui   $t0, %hi(gModeSelection) # $t0, 0x800e
/* 033780 80032B80 4620203E */  c.le.d $f4, $f0
/* 033784 80032B84 00000000 */  nop
/* 033788 80032B88 4500000F */  bc1f  .L80032BC8
/* 03378C 80032B8C 00000000 */   nop
/* 033790 80032B90 4622003E */  c.le.d $f0, $f2
/* 033794 80032B94 00000000 */  nop
/* 033798 80032B98 4500000B */  bc1f  .L80032BC8
/* 03379C 80032B9C 00000000 */   nop
/* 0337A0 80032BA0 948A0254 */  lhu   $t2, 0x254($a0)
/* 0337A4 80032BA4 000A5880 */  sll   $t3, $t2, 2
/* 0337A8 80032BA8 006B6021 */  addu  $t4, $v1, $t3
/* 0337AC 80032BAC 8D8D0000 */  lw    $t5, ($t4)
/* 0337B0 80032BB0 C5A60024 */  lwc1  $f6, 0x24($t5)
/* 0337B4 80032BB4 46003221 */  cvt.d.s $f8, $f6
/* 0337B8 80032BB8 462C4282 */  mul.d $f10, $f8, $f12
/* 0337BC 80032BBC 462A0400 */  add.d $f16, $f0, $f10
/* 0337C0 80032BC0 462084A0 */  cvt.s.d $f18, $f16
/* 0337C4 80032BC4 E492009C */  swc1  $f18, 0x9c($a0)
.L80032BC8:
/* 0337C8 80032BC8 85CE56F0 */  lh    $t6, %lo(D_801656F0)($t6)
/* 0337CC 80032BCC 24050001 */  li    $a1, 1
/* 0337D0 80032BD0 54AE002B */  bnel  $a1, $t6, .L80032C80
/* 0337D4 80032BD4 C480009C */   lwc1  $f0, 0x9c($a0)
/* 0337D8 80032BD8 8D08C53C */  lw    $t0, %lo(gModeSelection)($t0)
/* 0337DC 80032BDC 8DEFD3FC */  lw    $t7, %lo(gRaceFrameCounter)($t7)
/* 0337E0 80032BE0 8F3952E0 */  lw    $t9, %lo(D_801652E0)($t9) # 0x52e0($t9)
/* 0337E4 80032BE4 24020008 */  li    $v0, 8
/* 0337E8 80032BE8 14A80003 */  bne   $a1, $t0, .L80032BF8
/* 0337EC 80032BEC 01F91823 */   subu  $v1, $t7, $t9
/* 0337F0 80032BF0 10000001 */  b     .L80032BF8
/* 0337F4 80032BF4 24020014 */   li    $v0, 20
.L80032BF8:
/* 0337F8 80032BF8 0062082A */  slt   $at, $v1, $v0
/* 0337FC 80032BFC 1020000B */  beqz  $at, .L80032C2C
/* 033800 80032C00 00000000 */   nop
/* 033804 80032C04 84890044 */  lh    $t1, 0x44($a0)
/* 033808 80032C08 24010020 */  li    $at, 32
/* 03380C 80032C0C 312A0020 */  andi  $t2, $t1, 0x20
/* 033810 80032C10 11410006 */  beq   $t2, $at, .L80032C2C
/* 033814 80032C14 00000000 */   nop
/* 033818 80032C18 8C8B000C */  lw    $t3, 0xc($a0)
/* 03381C 80032C1C 3C030200 */  lui   $v1, 0x200
/* 033820 80032C20 01636025 */  or    $t4, $t3, $v1
/* 033824 80032C24 10000015 */  b     .L80032C7C
/* 033828 80032C28 AC8C000C */   sw    $t4, 0xc($a0)
.L80032C2C:
/* 03382C 80032C2C 3C01800F */  lui   $at, %hi(D_800EDB90) # $at, 0x800f
/* 033830 80032C30 C428DB90 */  lwc1  $f8, %lo(D_800EDB90)($at)
/* 033834 80032C34 C4860214 */  lwc1  $f6, 0x214($a0)
/* 033838 80032C38 C484009C */  lwc1  $f4, 0x9c($a0)
/* 03383C 80032C3C 46083282 */  mul.s $f10, $f6, $f8
/* 033840 80032C40 4604503E */  c.le.s $f10, $f4
/* 033844 80032C44 00000000 */  nop
/* 033848 80032C48 4502000D */  bc1fl .L80032C80
/* 03384C 80032C4C C480009C */   lwc1  $f0, 0x9c($a0)
/* 033850 80032C50 8C82000C */  lw    $v0, 0xc($a0)
/* 033854 80032C54 3C030200 */  lui   $v1, 0x200
/* 033858 80032C58 3C011000 */  lui   $at, 0x1000
/* 03385C 80032C5C 00436824 */  and   $t5, $v0, $v1
/* 033860 80032C60 106D0006 */  beq   $v1, $t5, .L80032C7C
/* 033864 80032C64 00417025 */   or    $t6, $v0, $at
/* 033868 80032C68 3C01FDFF */  lui   $at, (0xFDFFFFFF >> 16) # lui $at, 0xfdff
/* 03386C 80032C6C 3421FFFF */  ori   $at, (0xFDFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 033870 80032C70 AC8E000C */  sw    $t6, 0xc($a0)
/* 033874 80032C74 01C17824 */  and   $t7, $t6, $at
/* 033878 80032C78 AC8F000C */  sw    $t7, 0xc($a0)
.L80032C7C:
/* 03387C 80032C7C C480009C */  lwc1  $f0, 0x9c($a0)
.L80032C80:
/* 033880 80032C80 3C0141C8 */  li    $at, 0x41C80000 # 25.000000
/* 033884 80032C84 44819000 */  mtc1  $at, $f18
/* 033888 80032C88 46000402 */  mul.s $f16, $f0, $f0
/* 03388C 80032C8C 84990044 */  lh    $t9, 0x44($a0)
/* 033890 80032C90 37280020 */  ori   $t0, $t9, 0x20
/* 033894 80032C94 A4880044 */  sh    $t0, 0x44($a0)
/* 033898 80032C98 46128183 */  div.s $f6, $f16, $f18
/* 03389C 80032C9C E4860098 */  swc1  $f6, 0x98($a0)
/* 0338A0 80032CA0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0338A4 80032CA4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0338A8 80032CA8 03E00008 */  jr    $ra
/* 0338AC 80032CAC 00000000 */   nop
