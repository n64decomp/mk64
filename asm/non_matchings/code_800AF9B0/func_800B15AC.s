glabel func_800B15AC
/* 0B21AC 800B15AC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0B21B0 800B15B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B21B4 800B15B4 AFA50034 */  sw    $a1, 0x34($sp)
/* 0B21B8 800B15B8 948F000C */  lhu   $t7, 0xc($a0)
/* 0B21BC 800B15BC 948E0006 */  lhu   $t6, 6($a0)
/* 0B21C0 800B15C0 3C19800E */  lui   $t9, %hi(gEnableDebugMode) # $t9, 0x800e
/* 0B21C4 800B15C4 9739C520 */  lhu   $t9, %lo(gEnableDebugMode)($t9)
/* 0B21C8 800B15C8 01CF1825 */  or    $v1, $t6, $t7
/* 0B21CC 800B15CC 3078FFFF */  andi  $t8, $v1, 0xffff
/* 0B21D0 800B15D0 17200007 */  bnez  $t9, .L800B15F0
/* 0B21D4 800B15D4 03001825 */   move  $v1, $t8
/* 0B21D8 800B15D8 330A1000 */  andi  $t2, $t8, 0x1000
/* 0B21DC 800B15DC 11400004 */  beqz  $t2, .L800B15F0
/* 0B21E0 800B15E0 00000000 */   nop   
/* 0B21E4 800B15E4 37038000 */  ori   $v1, $t8, 0x8000
/* 0B21E8 800B15E8 306BFFFF */  andi  $t3, $v1, 0xffff
/* 0B21EC 800B15EC 01601825 */  move  $v1, $t3
.L800B15F0:
/* 0B21F0 800B15F0 0C02D148 */  jal   func_800B4520
/* 0B21F4 800B15F4 A7A3002E */   sh    $v1, 0x2e($sp)
/* 0B21F8 800B15F8 1440018D */  bnez  $v0, .L800B1C30
/* 0B21FC 800B15FC 97A3002E */   lhu   $v1, 0x2e($sp)
/* 0B2200 800B1600 3C028019 */  lui   $v0, %hi(D_8018EDEC) # $v0, 0x8019
/* 0B2204 800B1604 8042EDEC */  lb    $v0, %lo(D_8018EDEC)($v0)
/* 0B2208 800B1608 2405000B */  li    $a1, 11
/* 0B220C 800B160C 2401000C */  li    $at, 12
/* 0B2210 800B1610 10450008 */  beq   $v0, $a1, .L800B1634
/* 0B2214 800B1614 306C0200 */   andi  $t4, $v1, 0x200
/* 0B2218 800B1618 104100F0 */  beq   $v0, $at, .L800B19DC
/* 0B221C 800B161C 240400E9 */   li    $a0, 233
/* 0B2220 800B1620 2401000D */  li    $at, 13
/* 0B2224 800B1624 1041017F */  beq   $v0, $at, .L800B1C24
/* 0B2228 800B1628 306FD000 */   andi  $t7, $v1, 0xd000
/* 0B222C 800B162C 10000181 */  b     .L800B1C34
/* 0B2230 800B1630 8FBF0014 */   lw    $ra, 0x14($sp)
.L800B1634:
/* 0B2234 800B1634 1180000C */  beqz  $t4, .L800B1668
/* 0B2238 800B1638 00603825 */   move  $a3, $v1
/* 0B223C 800B163C 3C028019 */  lui   $v0, %hi(gDataMenuSelection) # $v0, 0x8019
/* 0B2240 800B1640 2442EDF7 */  addiu $v0, %lo(gDataMenuSelection) # addiu $v0, $v0, -0x1209
/* 0B2244 800B1644 80450000 */  lb    $a1, ($v0)
/* 0B2248 800B1648 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B224C 800B164C 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B2250 800B1650 18A00005 */  blez  $a1, .L800B1668
/* 0B2254 800B1654 24ADFFFF */   addiu $t5, $a1, -1
/* 0B2258 800B1658 A04D0000 */  sb    $t5, ($v0)
/* 0B225C 800B165C 0C032384 */  jal   play_sound2
/* 0B2260 800B1660 AFA30018 */   sw    $v1, 0x18($sp)
/* 0B2264 800B1664 8FA70018 */  lw    $a3, 0x18($sp)
.L800B1668:
/* 0B2268 800B1668 3C028019 */  lui   $v0, %hi(gDataMenuSelection) # $v0, 0x8019
/* 0B226C 800B166C 30EE0100 */  andi  $t6, $a3, 0x100
/* 0B2270 800B1670 11C0000B */  beqz  $t6, .L800B16A0
/* 0B2274 800B1674 2442EDF7 */   addiu $v0, %lo(gDataMenuSelection) # addiu $v0, $v0, -0x1209
/* 0B2278 800B1678 80450000 */  lb    $a1, ($v0)
/* 0B227C 800B167C 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B2280 800B1680 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B2284 800B1684 28A1000F */  slti  $at, $a1, 0xf
/* 0B2288 800B1688 10200005 */  beqz  $at, .L800B16A0
/* 0B228C 800B168C 24AF0001 */   addiu $t7, $a1, 1
/* 0B2290 800B1690 A04F0000 */  sb    $t7, ($v0)
/* 0B2294 800B1694 0C032384 */  jal   play_sound2
/* 0B2298 800B1698 AFA70018 */   sw    $a3, 0x18($sp)
/* 0B229C 800B169C 8FA70018 */  lw    $a3, 0x18($sp)
.L800B16A0:
/* 0B22A0 800B16A0 240400E8 */  li    $a0, 232
/* 0B22A4 800B16A4 0C02ABBD */  jal   func_800AAEF4
/* 0B22A8 800B16A8 AFA70018 */   sw    $a3, 0x18($sp)
/* 0B22AC 800B16AC 3C058019 */  lui   $a1, %hi(gDataMenuSelection) # $a1, 0x8019
/* 0B22B0 800B16B0 80A5EDF7 */  lb    $a1, %lo(gDataMenuSelection)($a1)
/* 0B22B4 800B16B4 3C038019 */  lui   $v1, %hi(gCourseRecordsMenuSelection) # $v1, 0x8019
/* 0B22B8 800B16B8 2463EDF8 */  addiu $v1, %lo(gCourseRecordsMenuSelection) # addiu $v1, $v1, -0x1208
/* 0B22BC 800B16BC 806E0000 */  lb    $t6, ($v1)
/* 0B22C0 800B16C0 3C0D8019 */  lui   $t5, %hi(D_8018EB90) # $t5, 0x8019
/* 0B22C4 800B16C4 25ADEB90 */  addiu $t5, %lo(D_8018EB90) # addiu $t5, $t5, -0x1470
/* 0B22C8 800B16C8 8FA70018 */  lw    $a3, 0x18($sp)
/* 0B22CC 800B16CC 00403025 */  move  $a2, $v0
/* 0B22D0 800B16D0 04A10003 */  bgez  $a1, .L800B16E0
/* 0B22D4 800B16D4 0005C083 */   sra   $t8, $a1, 2
/* 0B22D8 800B16D8 24A10003 */  addiu $at, $a1, 3
/* 0B22DC 800B16DC 0001C083 */  sra   $t8, $at, 2
.L800B16E0:
/* 0B22E0 800B16E0 0018C880 */  sll   $t9, $t8, 2
/* 0B22E4 800B16E4 0338C823 */  subu  $t9, $t9, $t8
/* 0B22E8 800B16E8 0019C940 */  sll   $t9, $t9, 5
/* 0B22EC 800B16EC 04A10004 */  bgez  $a1, .L800B1700
/* 0B22F0 800B16F0 30AA0003 */   andi  $t2, $a1, 3
/* 0B22F4 800B16F4 11400002 */  beqz  $t2, .L800B1700
/* 0B22F8 800B16F8 00000000 */   nop   
/* 0B22FC 800B16FC 254AFFFC */  addiu $t2, $t2, -4
.L800B1700:
/* 0B2300 800B1700 000A5880 */  sll   $t3, $t2, 2
/* 0B2304 800B1704 016A5823 */  subu  $t3, $t3, $t2
/* 0B2308 800B1708 000B58C0 */  sll   $t3, $t3, 3
/* 0B230C 800B170C 032B6021 */  addu  $t4, $t9, $t3
/* 0B2310 800B1710 24010002 */  li    $at, 2
/* 0B2314 800B1714 15C1000F */  bne   $t6, $at, .L800B1754
/* 0B2318 800B1718 018D4021 */   addu  $t0, $t4, $t5
/* 0B231C 800B171C 00A02025 */  move  $a0, $a1
/* 0B2320 800B1720 AFA60028 */  sw    $a2, 0x28($sp)
/* 0B2324 800B1724 AFA70018 */  sw    $a3, 0x18($sp)
/* 0B2328 800B1728 0C02D8E7 */  jal   func_800B639C
/* 0B232C 800B172C AFA80024 */   sw    $t0, 0x24($sp)
/* 0B2330 800B1730 3C038019 */  lui   $v1, %hi(gCourseRecordsMenuSelection) # $v1, 0x8019
/* 0B2334 800B1734 2463EDF8 */  addiu $v1, %lo(gCourseRecordsMenuSelection) # addiu $v1, $v1, -0x1208
/* 0B2338 800B1738 8FA60028 */  lw    $a2, 0x28($sp)
/* 0B233C 800B173C 8FA70018 */  lw    $a3, 0x18($sp)
/* 0B2340 800B1740 04410004 */  bgez  $v0, .L800B1754
/* 0B2344 800B1744 8FA80024 */   lw    $t0, 0x24($sp)
/* 0B2348 800B1748 806F0000 */  lb    $t7, ($v1)
/* 0B234C 800B174C 25F8FFFF */  addiu $t8, $t7, -1
/* 0B2350 800B1750 A0780000 */  sb    $t8, ($v1)
.L800B1754:
/* 0B2354 800B1754 80620000 */  lb    $v0, ($v1)
/* 0B2358 800B1758 24090001 */  li    $t1, 1
/* 0B235C 800B175C 30EB0800 */  andi  $t3, $a3, 0x800
/* 0B2360 800B1760 15220006 */  bne   $t1, $v0, .L800B177C
/* 0B2364 800B1764 00000000 */   nop   
/* 0B2368 800B1768 910A0012 */  lbu   $t2, 0x12($t0)
/* 0B236C 800B176C 2459FFFF */  addiu $t9, $v0, -1
/* 0B2370 800B1770 15400002 */  bnez  $t2, .L800B177C
/* 0B2374 800B1774 00000000 */   nop   
/* 0B2378 800B1778 A0790000 */  sb    $t9, ($v1)
.L800B177C:
/* 0B237C 800B177C 51600029 */  beql  $t3, $zero, .L800B1824
/* 0B2380 800B1780 30F80400 */   andi  $t8, $a3, 0x400
/* 0B2384 800B1784 80620000 */  lb    $v0, ($v1)
/* 0B2388 800B1788 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B238C 800B178C 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B2390 800B1790 18400023 */  blez  $v0, .L800B1820
/* 0B2394 800B1794 244CFFFF */   addiu $t4, $v0, -1
/* 0B2398 800B1798 A06C0000 */  sb    $t4, ($v1)
/* 0B239C 800B179C 80620000 */  lb    $v0, ($v1)
/* 0B23A0 800B17A0 55220007 */  bnel  $t1, $v0, .L800B17C0
/* 0B23A4 800B17A4 AFA60028 */   sw    $a2, 0x28($sp)
/* 0B23A8 800B17A8 910D0012 */  lbu   $t5, 0x12($t0)
/* 0B23AC 800B17AC 244EFFFF */  addiu $t6, $v0, -1
/* 0B23B0 800B17B0 55A00003 */  bnel  $t5, $zero, .L800B17C0
/* 0B23B4 800B17B4 AFA60028 */   sw    $a2, 0x28($sp)
/* 0B23B8 800B17B8 A06E0000 */  sb    $t6, ($v1)
/* 0B23BC 800B17BC AFA60028 */  sw    $a2, 0x28($sp)
.L800B17C0:
/* 0B23C0 800B17C0 AFA70018 */  sw    $a3, 0x18($sp)
/* 0B23C4 800B17C4 0C032384 */  jal   play_sound2
/* 0B23C8 800B17C8 AFA80024 */   sw    $t0, 0x24($sp)
/* 0B23CC 800B17CC 8FA60028 */  lw    $a2, 0x28($sp)
/* 0B23D0 800B17D0 3C01800F */  lui   $at, %hi(D_800F2D90)
/* 0B23D4 800B17D4 D4262D90 */  ldc1  $f6, %lo(D_800F2D90)($at)
/* 0B23D8 800B17D8 C4C40024 */  lwc1  $f4, 0x24($a2)
/* 0B23DC 800B17DC 3C038019 */  lui   $v1, %hi(gCourseRecordsMenuSelection) # $v1, 0x8019
/* 0B23E0 800B17E0 2463EDF8 */  addiu $v1, %lo(gCourseRecordsMenuSelection) # addiu $v1, $v1, -0x1208
/* 0B23E4 800B17E4 46002021 */  cvt.d.s $f0, $f4
/* 0B23E8 800B17E8 8FA70018 */  lw    $a3, 0x18($sp)
/* 0B23EC 800B17EC 4626003C */  c.lt.d $f0, $f6
/* 0B23F0 800B17F0 8FA80024 */  lw    $t0, 0x24($sp)
/* 0B23F4 800B17F4 24090001 */  li    $t1, 1
/* 0B23F8 800B17F8 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 0B23FC 800B17FC 45000007 */  bc1f  .L800B181C
/* 0B2400 800B1800 240FFFFF */   li    $t7, -1
/* 0B2404 800B1804 44814800 */  mtc1  $at, $f9
/* 0B2408 800B1808 44804000 */  mtc1  $zero, $f8
/* 0B240C 800B180C 00000000 */  nop   
/* 0B2410 800B1810 46280280 */  add.d $f10, $f0, $f8
/* 0B2414 800B1814 46205420 */  cvt.s.d $f16, $f10
/* 0B2418 800B1818 E4D00024 */  swc1  $f16, 0x24($a2)
.L800B181C:
/* 0B241C 800B181C ACCF0008 */  sw    $t7, 8($a2)
.L800B1820:
/* 0B2420 800B1820 30F80400 */  andi  $t8, $a3, 0x400
.L800B1824:
/* 0B2424 800B1824 53000040 */  beql  $t8, $zero, .L800B1928
/* 0B2428 800B1828 30ED4000 */   andi  $t5, $a3, 0x4000
/* 0B242C 800B182C 80620000 */  lb    $v0, ($v1)
/* 0B2430 800B1830 28410002 */  slti  $at, $v0, 2
/* 0B2434 800B1834 1020003B */  beqz  $at, .L800B1924
/* 0B2438 800B1838 244A0001 */   addiu $t2, $v0, 1
/* 0B243C 800B183C A06A0000 */  sb    $t2, ($v1)
/* 0B2440 800B1840 80620000 */  lb    $v0, ($v1)
/* 0B2444 800B1844 24010002 */  li    $at, 2
/* 0B2448 800B1848 3C048019 */  lui   $a0, %hi(gDataMenuSelection)
/* 0B244C 800B184C 15220007 */  bne   $t1, $v0, .L800B186C
/* 0B2450 800B1850 00000000 */   nop   
/* 0B2454 800B1854 91190012 */  lbu   $t9, 0x12($t0)
/* 0B2458 800B1858 244B0001 */  addiu $t3, $v0, 1
/* 0B245C 800B185C 17200003 */  bnez  $t9, .L800B186C
/* 0B2460 800B1860 00000000 */   nop   
/* 0B2464 800B1864 A06B0000 */  sb    $t3, ($v1)
/* 0B2468 800B1868 80620000 */  lb    $v0, ($v1)
.L800B186C:
/* 0B246C 800B186C 54410015 */  bnel  $v0, $at, .L800B18C4
/* 0B2470 800B1870 3C044900 */   lui   $a0, (0x49008000 >> 16) # $a0, 0x4900
/* 0B2474 800B1874 8084EDF7 */  lb    $a0, %lo(gDataMenuSelection)($a0)
/* 0B2478 800B1878 AFA60028 */  sw    $a2, 0x28($sp)
/* 0B247C 800B187C AFA70018 */  sw    $a3, 0x18($sp)
/* 0B2480 800B1880 0C02D8E7 */  jal   func_800B639C
/* 0B2484 800B1884 AFA80024 */   sw    $t0, 0x24($sp)
/* 0B2488 800B1888 3C038019 */  lui   $v1, %hi(gCourseRecordsMenuSelection) # $v1, 0x8019
/* 0B248C 800B188C 2463EDF8 */  addiu $v1, %lo(gCourseRecordsMenuSelection) # addiu $v1, $v1, -0x1208
/* 0B2490 800B1890 8FA60028 */  lw    $a2, 0x28($sp)
/* 0B2494 800B1894 8FA70018 */  lw    $a3, 0x18($sp)
/* 0B2498 800B1898 8FA80024 */  lw    $t0, 0x24($sp)
/* 0B249C 800B189C 04410008 */  bgez  $v0, .L800B18C0
/* 0B24A0 800B18A0 24090001 */   li    $t1, 1
/* 0B24A4 800B18A4 910C0012 */  lbu   $t4, 0x12($t0)
/* 0B24A8 800B18A8 15800003 */  bnez  $t4, .L800B18B8
/* 0B24AC 800B18AC 00000000 */   nop   
/* 0B24B0 800B18B0 1000001C */  b     .L800B1924
/* 0B24B4 800B18B4 A0600000 */   sb    $zero, ($v1)
.L800B18B8:
/* 0B24B8 800B18B8 1000001A */  b     .L800B1924
/* 0B24BC 800B18BC A0690000 */   sb    $t1, ($v1)
.L800B18C0:
/* 0B24C0 800B18C0 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
.L800B18C4:
/* 0B24C4 800B18C4 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B24C8 800B18C8 AFA60028 */  sw    $a2, 0x28($sp)
/* 0B24CC 800B18CC 0C032384 */  jal   play_sound2
/* 0B24D0 800B18D0 AFA70018 */   sw    $a3, 0x18($sp)
/* 0B24D4 800B18D4 8FA60028 */  lw    $a2, 0x28($sp)
/* 0B24D8 800B18D8 3C01800F */  lui   $at, %hi(D_800F2D98)
/* 0B24DC 800B18DC D4242D98 */  ldc1  $f4, %lo(D_800F2D98)($at)
/* 0B24E0 800B18E0 C4D20024 */  lwc1  $f18, 0x24($a2)
/* 0B24E4 800B18E4 3C038019 */  lui   $v1, %hi(gCourseRecordsMenuSelection) # $v1, 0x8019
/* 0B24E8 800B18E8 2463EDF8 */  addiu $v1, %lo(gCourseRecordsMenuSelection) # addiu $v1, $v1, -0x1208
/* 0B24EC 800B18EC 46009021 */  cvt.d.s $f0, $f18
/* 0B24F0 800B18F0 8FA70018 */  lw    $a3, 0x18($sp)
/* 0B24F4 800B18F4 4624003C */  c.lt.d $f0, $f4
/* 0B24F8 800B18F8 24090001 */  li    $t1, 1
/* 0B24FC 800B18FC 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 0B2500 800B1900 45020008 */  bc1fl .L800B1924
/* 0B2504 800B1904 ACC90008 */   sw    $t1, 8($a2)
/* 0B2508 800B1908 44813800 */  mtc1  $at, $f7
/* 0B250C 800B190C 44803000 */  mtc1  $zero, $f6
/* 0B2510 800B1910 00000000 */  nop   
/* 0B2514 800B1914 46260200 */  add.d $f8, $f0, $f6
/* 0B2518 800B1918 462042A0 */  cvt.s.d $f10, $f8
/* 0B251C 800B191C E4CA0024 */  swc1  $f10, 0x24($a2)
/* 0B2520 800B1920 ACC90008 */  sw    $t1, 8($a2)
.L800B1924:
/* 0B2524 800B1924 30ED4000 */  andi  $t5, $a3, 0x4000
.L800B1928:
/* 0B2528 800B1928 11A00008 */  beqz  $t5, .L800B194C
/* 0B252C 800B192C 30EE8000 */   andi  $t6, $a3, 0x8000
/* 0B2530 800B1930 0C027882 */  jal   func_8009E208
/* 0B2534 800B1934 00000000 */   nop   
/* 0B2538 800B1938 3C044900 */  lui   $a0, (0x49008002 >> 16) # lui $a0, 0x4900
/* 0B253C 800B193C 0C032384 */  jal   play_sound2
/* 0B2540 800B1940 34848002 */   ori   $a0, (0x49008002 & 0xFFFF) # ori $a0, $a0, 0x8002
/* 0B2544 800B1944 100000BB */  b     .L800B1C34
/* 0B2548 800B1948 8FBF0014 */   lw    $ra, 0x14($sp)
.L800B194C:
/* 0B254C 800B194C 51C000B9 */  beql  $t6, $zero, .L800B1C34
/* 0B2550 800B1950 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0B2554 800B1954 C4D00024 */  lwc1  $f16, 0x24($a2)
/* 0B2558 800B1958 3C01800F */  lui   $at, %hi(D_800F2DA0)
/* 0B255C 800B195C D4322DA0 */  ldc1  $f18, %lo(D_800F2DA0)($at)
/* 0B2560 800B1960 46008021 */  cvt.d.s $f0, $f16
/* 0B2564 800B1964 3C044900 */  lui   $a0, (0x49008001 >> 16) # lui $a0, 0x4900
/* 0B2568 800B1968 4632003C */  c.lt.d $f0, $f18
/* 0B256C 800B196C 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 0B2570 800B1970 2418000C */  li    $t8, 12
/* 0B2574 800B1974 34848001 */  ori   $a0, (0x49008001 & 0xFFFF) # ori $a0, $a0, 0x8001
/* 0B2578 800B1978 45020008 */  bc1fl .L800B199C
/* 0B257C 800B197C 806F0000 */   lb    $t7, ($v1)
/* 0B2580 800B1980 44812800 */  mtc1  $at, $f5
/* 0B2584 800B1984 44802000 */  mtc1  $zero, $f4
/* 0B2588 800B1988 00000000 */  nop   
/* 0B258C 800B198C 46240180 */  add.d $f6, $f0, $f4
/* 0B2590 800B1990 46203220 */  cvt.s.d $f8, $f6
/* 0B2594 800B1994 E4C80024 */  swc1  $f8, 0x24($a2)
/* 0B2598 800B1998 806F0000 */  lb    $t7, ($v1)
.L800B199C:
/* 0B259C 800B199C 3C018019 */  lui   $at, %hi(D_8018EDEC) # $at, 0x8019
/* 0B25A0 800B19A0 15E00008 */  bnez  $t7, .L800B19C4
/* 0B25A4 800B19A4 00000000 */   nop   
/* 0B25A8 800B19A8 0C027882 */  jal   func_8009E208
/* 0B25AC 800B19AC 00000000 */   nop   
/* 0B25B0 800B19B0 3C044900 */  lui   $a0, (0x49008002 >> 16) # lui $a0, 0x4900
/* 0B25B4 800B19B4 0C032384 */  jal   play_sound2
/* 0B25B8 800B19B8 34848002 */   ori   $a0, (0x49008002 & 0xFFFF) # ori $a0, $a0, 0x8002
/* 0B25BC 800B19BC 1000009D */  b     .L800B1C34
/* 0B25C0 800B19C0 8FBF0014 */   lw    $ra, 0x14($sp)
.L800B19C4:
/* 0B25C4 800B19C4 A038EDEC */  sb    $t8, %lo(D_8018EDEC)($at)
/* 0B25C8 800B19C8 3C018019 */  lui   $at, %hi(D_8018EDF9) # $at, 0x8019
/* 0B25CC 800B19CC 0C032384 */  jal   play_sound2
/* 0B25D0 800B19D0 A020EDF9 */   sb    $zero, %lo(D_8018EDF9)($at)
/* 0B25D4 800B19D4 10000097 */  b     .L800B1C34
/* 0B25D8 800B19D8 8FBF0014 */   lw    $ra, 0x14($sp)
.L800B19DC:
/* 0B25DC 800B19DC 00603825 */  move  $a3, $v1
/* 0B25E0 800B19E0 0C02ABBD */  jal   func_800AAEF4
/* 0B25E4 800B19E4 AFA30018 */   sw    $v1, 0x18($sp)
/* 0B25E8 800B19E8 8FA70018 */  lw    $a3, 0x18($sp)
/* 0B25EC 800B19EC 3C038019 */  lui   $v1, %hi(D_8018EDF9) # $v1, 0x8019
/* 0B25F0 800B19F0 00403025 */  move  $a2, $v0
/* 0B25F4 800B19F4 30EA0800 */  andi  $t2, $a3, 0x800
/* 0B25F8 800B19F8 1140001D */  beqz  $t2, .L800B1A70
/* 0B25FC 800B19FC 2463EDF9 */   addiu $v1, %lo(D_8018EDF9) # addiu $v1, $v1, -0x1207
/* 0B2600 800B1A00 80620000 */  lb    $v0, ($v1)
/* 0B2604 800B1A04 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B2608 800B1A08 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B260C 800B1A0C 18400018 */  blez  $v0, .L800B1A70
/* 0B2610 800B1A10 2459FFFF */   addiu $t9, $v0, -1
/* 0B2614 800B1A14 A0790000 */  sb    $t9, ($v1)
/* 0B2618 800B1A18 AFA60028 */  sw    $a2, 0x28($sp)
/* 0B261C 800B1A1C 0C032384 */  jal   play_sound2
/* 0B2620 800B1A20 AFA70018 */   sw    $a3, 0x18($sp)
/* 0B2624 800B1A24 8FA60028 */  lw    $a2, 0x28($sp)
/* 0B2628 800B1A28 3C01800F */  lui   $at, %hi(D_800F2DA8)
/* 0B262C 800B1A2C D4302DA8 */  ldc1  $f16, %lo(D_800F2DA8)($at)
/* 0B2630 800B1A30 C4CA0024 */  lwc1  $f10, 0x24($a2)
/* 0B2634 800B1A34 8FA70018 */  lw    $a3, 0x18($sp)
/* 0B2638 800B1A38 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 0B263C 800B1A3C 46005021 */  cvt.d.s $f0, $f10
/* 0B2640 800B1A40 240BFFFF */  li    $t3, -1
/* 0B2644 800B1A44 4630003C */  c.lt.d $f0, $f16
/* 0B2648 800B1A48 00000000 */  nop   
/* 0B264C 800B1A4C 45020008 */  bc1fl .L800B1A70
/* 0B2650 800B1A50 ACCB0008 */   sw    $t3, 8($a2)
/* 0B2654 800B1A54 44819800 */  mtc1  $at, $f19
/* 0B2658 800B1A58 44809000 */  mtc1  $zero, $f18
/* 0B265C 800B1A5C 00000000 */  nop   
/* 0B2660 800B1A60 46320100 */  add.d $f4, $f0, $f18
/* 0B2664 800B1A64 462021A0 */  cvt.s.d $f6, $f4
/* 0B2668 800B1A68 E4C60024 */  swc1  $f6, 0x24($a2)
/* 0B266C 800B1A6C ACCB0008 */  sw    $t3, 8($a2)
.L800B1A70:
/* 0B2670 800B1A70 3C038019 */  lui   $v1, %hi(D_8018EDF9) # $v1, 0x8019
/* 0B2674 800B1A74 30EC0400 */  andi  $t4, $a3, 0x400
/* 0B2678 800B1A78 1180001E */  beqz  $t4, .L800B1AF4
/* 0B267C 800B1A7C 2463EDF9 */   addiu $v1, %lo(D_8018EDF9) # addiu $v1, $v1, -0x1207
/* 0B2680 800B1A80 80620000 */  lb    $v0, ($v1)
/* 0B2684 800B1A84 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B2688 800B1A88 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B268C 800B1A8C 1C400019 */  bgtz  $v0, .L800B1AF4
/* 0B2690 800B1A90 244D0001 */   addiu $t5, $v0, 1
/* 0B2694 800B1A94 A06D0000 */  sb    $t5, ($v1)
/* 0B2698 800B1A98 AFA60028 */  sw    $a2, 0x28($sp)
/* 0B269C 800B1A9C 0C032384 */  jal   play_sound2
/* 0B26A0 800B1AA0 AFA70018 */   sw    $a3, 0x18($sp)
/* 0B26A4 800B1AA4 8FA60028 */  lw    $a2, 0x28($sp)
/* 0B26A8 800B1AA8 3C01800F */  lui   $at, %hi(D_800F2DB0)
/* 0B26AC 800B1AAC D42A2DB0 */  ldc1  $f10, %lo(D_800F2DB0)($at)
/* 0B26B0 800B1AB0 C4C80024 */  lwc1  $f8, 0x24($a2)
/* 0B26B4 800B1AB4 3C038019 */  lui   $v1, %hi(D_8018EDF9) # $v1, 0x8019
/* 0B26B8 800B1AB8 8FA70018 */  lw    $a3, 0x18($sp)
/* 0B26BC 800B1ABC 46004021 */  cvt.d.s $f0, $f8
/* 0B26C0 800B1AC0 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 0B26C4 800B1AC4 462A003C */  c.lt.d $f0, $f10
/* 0B26C8 800B1AC8 24090001 */  li    $t1, 1
/* 0B26CC 800B1ACC 2463EDF9 */  addiu $v1, %lo(D_8018EDF9) # addiu $v1, $v1, -0x1207
/* 0B26D0 800B1AD0 45020008 */  bc1fl .L800B1AF4
/* 0B26D4 800B1AD4 ACC90008 */   sw    $t1, 8($a2)
/* 0B26D8 800B1AD8 44818800 */  mtc1  $at, $f17
/* 0B26DC 800B1ADC 44808000 */  mtc1  $zero, $f16
/* 0B26E0 800B1AE0 00000000 */  nop   
/* 0B26E4 800B1AE4 46300480 */  add.d $f18, $f0, $f16
/* 0B26E8 800B1AE8 46209120 */  cvt.s.d $f4, $f18
/* 0B26EC 800B1AEC E4C40024 */  swc1  $f4, 0x24($a2)
/* 0B26F0 800B1AF0 ACC90008 */  sw    $t1, 8($a2)
.L800B1AF4:
/* 0B26F4 800B1AF4 30EE4000 */  andi  $t6, $a3, 0x4000
/* 0B26F8 800B1AF8 11C00009 */  beqz  $t6, .L800B1B20
/* 0B26FC 800B1AFC 24090001 */   li    $t1, 1
/* 0B2700 800B1B00 240F000B */  li    $t7, 11
/* 0B2704 800B1B04 3C018019 */  lui   $at, %hi(D_8018EDEC) # $at, 0x8019
/* 0B2708 800B1B08 3C044900 */  lui   $a0, (0x49008002 >> 16) # lui $a0, 0x4900
/* 0B270C 800B1B0C A02FEDEC */  sb    $t7, %lo(D_8018EDEC)($at)
/* 0B2710 800B1B10 0C032384 */  jal   play_sound2
/* 0B2714 800B1B14 34848002 */   ori   $a0, (0x49008002 & 0xFFFF) # ori $a0, $a0, 0x8002
/* 0B2718 800B1B18 10000046 */  b     .L800B1C34
/* 0B271C 800B1B1C 8FBF0014 */   lw    $ra, 0x14($sp)
.L800B1B20:
/* 0B2720 800B1B20 30F88000 */  andi  $t8, $a3, 0x8000
/* 0B2724 800B1B24 53000043 */  beql  $t8, $zero, .L800B1C34
/* 0B2728 800B1B28 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0B272C 800B1B2C 806A0000 */  lb    $t2, ($v1)
/* 0B2730 800B1B30 3C038019 */  lui   $v1, %hi(gCourseRecordsMenuSelection) # $v1, 0x8019
/* 0B2734 800B1B34 2463EDF8 */  addiu $v1, %lo(gCourseRecordsMenuSelection) # addiu $v1, $v1, -0x1208
/* 0B2738 800B1B38 11400034 */  beqz  $t2, .L800B1C0C
/* 0B273C 800B1B3C 3C044900 */   lui   $a0, (0x49008002 >> 16)
/* 0B2740 800B1B40 80620000 */  lb    $v0, ($v1)
/* 0B2744 800B1B44 00002825 */  move  $a1, $zero
/* 0B2748 800B1B48 24010002 */  li    $at, 2
/* 0B274C 800B1B4C 10490005 */  beq   $v0, $t1, .L800B1B64
/* 0B2750 800B1B50 3C048019 */   lui   $a0, %hi(gDataMenuSelection)
/* 0B2754 800B1B54 1041000D */  beq   $v0, $at, .L800B1B8C
/* 0B2758 800B1B58 3C048019 */   lui   $a0, %hi(gDataMenuSelection) # $a0, 0x8019
/* 0B275C 800B1B5C 10000026 */  b     .L800B1BF8
/* 0B2760 800B1B60 24AC0001 */   addiu $t4, $a1, 1
.L800B1B64:
/* 0B2764 800B1B64 0C02D1CA */  jal   func_800B4728
/* 0B2768 800B1B68 8084EDF7 */   lb    $a0, %lo(gDataMenuSelection)($a0)
/* 0B276C 800B1B6C 3C048019 */  lui   $a0, %hi(gDataMenuSelection) # $a0, 0x8019
/* 0B2770 800B1B70 0C02D567 */  jal   func_800B559C
/* 0B2774 800B1B74 8084EDF7 */   lb    $a0, %lo(gDataMenuSelection)($a0)
/* 0B2778 800B1B78 3C044900 */  lui   $a0, (0x4900801D >> 16) # $a0, 0x4900
/* 0B277C 800B1B7C 0C032384 */  jal   play_sound2
/* 0B2780 800B1B80 3484801D */   ori   $a0, (0x4900801D & 0xFFFF) # ori $a0, $a0, 0x801d
/* 0B2784 800B1B84 1000001B */  b     .L800B1BF4
/* 0B2788 800B1B88 2405FFFF */   li    $a1, -1
.L800B1B8C:
/* 0B278C 800B1B8C 0C02D8E7 */  jal   func_800B639C
/* 0B2790 800B1B90 8084EDF7 */   lb    $a0, %lo(gDataMenuSelection)($a0)
/* 0B2794 800B1B94 04400017 */  bltz  $v0, .L800B1BF4
/* 0B2798 800B1B98 00402825 */   move  $a1, $v0
/* 0B279C 800B1B9C 00402025 */  move  $a0, $v0
/* 0B27A0 800B1BA0 0C02DA6F */  jal   func_800B69BC
/* 0B27A4 800B1BA4 AFA20020 */   sw    $v0, 0x20($sp)
/* 0B27A8 800B1BA8 1040000A */  beqz  $v0, .L800B1BD4
/* 0B27AC 800B1BAC 8FA50020 */   lw    $a1, 0x20($sp)
/* 0B27B0 800B1BB0 2419000D */  li    $t9, 13
/* 0B27B4 800B1BB4 3C018019 */  lui   $at, %hi(D_8018EDEC) # $at, 0x8019
/* 0B27B8 800B1BB8 3C044900 */  lui   $a0, (0x4900FF07 >> 16) # lui $a0, 0x4900
/* 0B27BC 800B1BBC A039EDEC */  sb    $t9, %lo(D_8018EDEC)($at)
/* 0B27C0 800B1BC0 3484FF07 */  ori   $a0, (0x4900FF07 & 0xFFFF) # ori $a0, $a0, 0xff07
/* 0B27C4 800B1BC4 0C032384 */  jal   play_sound2
/* 0B27C8 800B1BC8 AFA50020 */   sw    $a1, 0x20($sp)
/* 0B27CC 800B1BCC 10000009 */  b     .L800B1BF4
/* 0B27D0 800B1BD0 8FA50020 */   lw    $a1, 0x20($sp)
.L800B1BD4:
/* 0B27D4 800B1BD4 3C044900 */  lui   $a0, (0x49008002 >> 16) # lui $a0, 0x4900
/* 0B27D8 800B1BD8 3484801D */  ori   $a0, (0x4900801D & 0xFFFF) # ori $a0, $a0, 0x801d
/* 0B27DC 800B1BDC 0C032384 */  jal   play_sound2
/* 0B27E0 800B1BE0 AFA50020 */   sw    $a1, 0x20($sp)
/* 0B27E4 800B1BE4 240B000B */  li    $t3, 11
/* 0B27E8 800B1BE8 3C018019 */  lui   $at, %hi(D_8018EDEC) # $at, 0x8019
/* 0B27EC 800B1BEC 8FA50020 */  lw    $a1, 0x20($sp)
/* 0B27F0 800B1BF0 A02BEDEC */  sb    $t3, %lo(D_8018EDEC)($at)
.L800B1BF4:
/* 0B27F4 800B1BF4 24AC0001 */  addiu $t4, $a1, 1
.L800B1BF8:
/* 0B27F8 800B1BF8 1580000D */  bnez  $t4, .L800B1C30
/* 0B27FC 800B1BFC 240D000B */   li    $t5, 11
/* 0B2800 800B1C00 3C018019 */  lui   $at, %hi(D_8018EDEC) # $at, 0x8019
/* 0B2804 800B1C04 1000000A */  b     .L800B1C30
/* 0B2808 800B1C08 A02DEDEC */   sb    $t5, %lo(D_8018EDEC)($at)
.L800B1C0C:
/* 0B280C 800B1C0C 0C032384 */  jal   play_sound2
/* 0B2810 800B1C10 34848002 */   ori   $a0, (0x49008002 & 0xFFFF) # ori $a0, $a0, 0x8002
/* 0B2814 800B1C14 240E000B */  li    $t6, 11
/* 0B2818 800B1C18 3C018019 */  lui   $at, %hi(D_8018EDEC) # $at, 0x8019
/* 0B281C 800B1C1C 10000004 */  b     .L800B1C30
/* 0B2820 800B1C20 A02EEDEC */   sb    $t6, %lo(D_8018EDEC)($at)
.L800B1C24:
/* 0B2824 800B1C24 11E00002 */  beqz  $t7, .L800B1C30
/* 0B2828 800B1C28 3C018019 */   lui   $at, %hi(D_8018EDEC) # $at, 0x8019
/* 0B282C 800B1C2C A025EDEC */  sb    $a1, %lo(D_8018EDEC)($at)
.L800B1C30:
/* 0B2830 800B1C30 8FBF0014 */  lw    $ra, 0x14($sp)
.L800B1C34:
/* 0B2834 800B1C34 27BD0030 */  addiu $sp, $sp, 0x30
/* 0B2838 800B1C38 03E00008 */  jr    $ra
/* 0B283C 800B1C3C 00000000 */   nop   
