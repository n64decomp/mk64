glabel func_800070F4
/* 007CF4 800070F4 3C02800E */  lui   $v0, %hi(gModeSelection)
/* 007CF8 800070F8 8C42C53C */  lw    $v0, %lo(gModeSelection)($v0)
/* 007CFC 800070FC 27BDFF88 */  addiu $sp, $sp, -0x78
/* 007D00 80007100 24010001 */  li    $at, 1
/* 007D04 80007104 1040000A */  beqz  $v0, .L80007130
/* 007D08 80007108 27AD0050 */   addiu $t5, $sp, 0x50
/* 007D0C 8000710C 10410008 */  beq   $v0, $at, .L80007130
/* 007D10 80007110 24010002 */   li    $at, 2
/* 007D14 80007114 10410008 */  beq   $v0, $at, .L80007138
/* 007D18 80007118 3C068019 */   lui   $a2, %hi(D_8018EDF3) # $a2, 0x8019
/* 007D1C 8000711C 24010003 */  li    $at, 3
/* 007D20 80007120 104100EA */  beq   $v0, $at, .L800074CC
/* 007D24 80007124 00000000 */   nop   
/* 007D28 80007128 100000E8 */  b     .L800074CC
/* 007D2C 8000712C 00000000 */   nop   
.L80007130:
/* 007D30 80007130 10000002 */  b     .L8000713C
/* 007D34 80007134 24060008 */   li    $a2, 8
.L80007138:
/* 007D38 80007138 80C6EDF3 */  lb    $a2, %lo(D_8018EDF3)($a2)
.L8000713C:
/* 007D3C 8000713C 18C0004E */  blez  $a2, .L80007278
/* 007D40 80007140 00003825 */   move  $a3, $zero
/* 007D44 80007144 30CA0003 */  andi  $t2, $a2, 3
/* 007D48 80007148 1140001C */  beqz  $t2, .L800071BC
/* 007D4C 8000714C 01404825 */   move  $t1, $t2
/* 007D50 80007150 3C0F8016 */  lui   $t7, %hi(D_80164360) # $t7, 0x8016
/* 007D54 80007154 00002080 */  sll   $a0, $zero, 2
/* 007D58 80007158 3C198016 */  lui   $t9, %hi(gTrackCompletionPercentByRank) # $t9, 0x8016
/* 007D5C 8000715C 27392FD8 */  addiu $t9, %lo(gTrackCompletionPercentByRank) # addiu $t9, $t9, 0x2fd8
/* 007D60 80007160 25EF4360 */  addiu $t7, %lo(D_80164360) # addiu $t7, $t7, 0x4360
/* 007D64 80007164 00007040 */  sll   $t6, $zero, 1
/* 007D68 80007168 27B80050 */  addiu $t8, $sp, 0x50
/* 007D6C 8000716C 3C0A8016 */  lui   $t2, %hi(gTimePlayerLastTouchedFinishLine) # $t2, 0x8016
/* 007D70 80007170 254AF898 */  addiu $t2, %lo(gTimePlayerLastTouchedFinishLine) # addiu $t2, $t2, -0x768
/* 007D74 80007174 00981021 */  addu  $v0, $a0, $t8
/* 007D78 80007178 01CF4021 */  addu  $t0, $t6, $t7
/* 007D7C 8000717C 00991821 */  addu  $v1, $a0, $t9
/* 007D80 80007180 24050001 */  li    $a1, 1
.L80007184:
/* 007D84 80007184 85040000 */  lh    $a0, ($t0)
/* 007D88 80007188 00A03825 */  move  $a3, $a1
/* 007D8C 8000718C 25080002 */  addiu $t0, $t0, 2
/* 007D90 80007190 00047080 */  sll   $t6, $a0, 2
/* 007D94 80007194 014E7821 */  addu  $t7, $t2, $t6
/* 007D98 80007198 C5E40000 */  lwc1  $f4, ($t7)
/* 007D9C 8000719C 24420004 */  addiu $v0, $v0, 4
/* 007DA0 800071A0 24630004 */  addiu $v1, $v1, 4
/* 007DA4 800071A4 46002187 */  neg.s $f6, $f4
/* 007DA8 800071A8 AC44FFFC */  sw    $a0, -4($v0)
/* 007DAC 800071AC E466FFFC */  swc1  $f6, -4($v1)
/* 007DB0 800071B0 1525FFF4 */  bne   $t1, $a1, .L80007184
/* 007DB4 800071B4 24A50001 */   addiu $a1, $a1, 1
/* 007DB8 800071B8 10E6002E */  beq   $a3, $a2, .L80007274
.L800071BC:
/* 007DBC 800071BC 3C198016 */   lui   $t9, %hi(D_80164360) # $t9, 0x8016
/* 007DC0 800071C0 27394360 */  addiu $t9, %lo(D_80164360) # addiu $t9, $t9, 0x4360
/* 007DC4 800071C4 0007C040 */  sll   $t8, $a3, 1
/* 007DC8 800071C8 3C0F8016 */  lui   $t7, %hi(gTrackCompletionPercentByRank) # $t7, 0x8016
/* 007DCC 800071CC 25EF2FD8 */  addiu $t7, %lo(gTrackCompletionPercentByRank) # addiu $t7, $t7, 0x2fd8
/* 007DD0 800071D0 03194021 */  addu  $t0, $t8, $t9
/* 007DD4 800071D4 00072080 */  sll   $a0, $a3, 2
/* 007DD8 800071D8 0006C080 */  sll   $t8, $a2, 2
/* 007DDC 800071DC 3C0A8016 */  lui   $t2, %hi(gTimePlayerLastTouchedFinishLine) # $t2, 0x8016
/* 007DE0 800071E0 27AE0050 */  addiu $t6, $sp, 0x50
/* 007DE4 800071E4 008E1021 */  addu  $v0, $a0, $t6
/* 007DE8 800071E8 254AF898 */  addiu $t2, %lo(gTimePlayerLastTouchedFinishLine) # addiu $t2, $t2, -0x768
/* 007DEC 800071EC 030F2821 */  addu  $a1, $t8, $t7
/* 007DF0 800071F0 008F1821 */  addu  $v1, $a0, $t7
.L800071F4:
/* 007DF4 800071F4 85040000 */  lh    $a0, ($t0)
/* 007DF8 800071F8 24630010 */  addiu $v1, $v1, 0x10
/* 007DFC 800071FC 25080008 */  addiu $t0, $t0, 8
/* 007E00 80007200 AC440000 */  sw    $a0, ($v0)
/* 007E04 80007204 0004C880 */  sll   $t9, $a0, 2
/* 007E08 80007208 8504FFFA */  lh    $a0, -6($t0)
/* 007E0C 8000720C 01597021 */  addu  $t6, $t2, $t9
/* 007E10 80007210 C5C80000 */  lwc1  $f8, ($t6)
/* 007E14 80007214 AC440004 */  sw    $a0, 4($v0)
/* 007E18 80007218 0004C080 */  sll   $t8, $a0, 2
/* 007E1C 8000721C 8504FFFC */  lh    $a0, -4($t0)
/* 007E20 80007220 01587821 */  addu  $t7, $t2, $t8
/* 007E24 80007224 C5F00000 */  lwc1  $f16, ($t7)
/* 007E28 80007228 AC440008 */  sw    $a0, 8($v0)
/* 007E2C 8000722C 0004C880 */  sll   $t9, $a0, 2
/* 007E30 80007230 8504FFFE */  lh    $a0, -2($t0)
/* 007E34 80007234 46004287 */  neg.s $f10, $f8
/* 007E38 80007238 01597021 */  addu  $t6, $t2, $t9
/* 007E3C 8000723C 0004C080 */  sll   $t8, $a0, 2
/* 007E40 80007240 01587821 */  addu  $t7, $t2, $t8
/* 007E44 80007244 E46AFFF0 */  swc1  $f10, -0x10($v1)
/* 007E48 80007248 C5E80000 */  lwc1  $f8, ($t7)
/* 007E4C 8000724C C5C40000 */  lwc1  $f4, ($t6)
/* 007E50 80007250 46008487 */  neg.s $f18, $f16
/* 007E54 80007254 46004287 */  neg.s $f10, $f8
/* 007E58 80007258 46002187 */  neg.s $f6, $f4
/* 007E5C 8000725C E46AFFFC */  swc1  $f10, -4($v1)
/* 007E60 80007260 E466FFF8 */  swc1  $f6, -8($v1)
/* 007E64 80007264 E472FFF4 */  swc1  $f18, -0xc($v1)
/* 007E68 80007268 24420010 */  addiu $v0, $v0, 0x10
/* 007E6C 8000726C 1465FFE1 */  bne   $v1, $a1, .L800071F4
/* 007E70 80007270 AC44FFFC */   sw    $a0, -4($v0)
.L80007274:
/* 007E74 80007274 00003825 */  move  $a3, $zero
.L80007278:
/* 007E78 80007278 24C8FFFF */  addiu $t0, $a2, -1
/* 007E7C 8000727C 19000046 */  blez  $t0, .L80007398
/* 007E80 80007280 24050001 */   li    $a1, 1
.L80007284:
/* 007E84 80007284 00A6082A */  slt   $at, $a1, $a2
/* 007E88 80007288 10200040 */  beqz  $at, .L8000738C
/* 007E8C 8000728C 00A01025 */   move  $v0, $a1
/* 007E90 80007290 00072080 */  sll   $a0, $a3, 2
/* 007E94 80007294 3C198016 */  lui   $t9, %hi(gTrackCompletionPercentByRank) # $t9, 0x8016
/* 007E98 80007298 00C54823 */  subu  $t1, $a2, $a1
/* 007E9C 8000729C 31270001 */  andi  $a3, $t1, 1
/* 007EA0 800072A0 27392FD8 */  addiu $t9, %lo(gTrackCompletionPercentByRank) # addiu $t9, $t9, 0x2fd8
/* 007EA4 800072A4 10E00013 */  beqz  $a3, .L800072F4
/* 007EA8 800072A8 00991821 */   addu  $v1, $a0, $t9
/* 007EAC 800072AC 00053880 */  sll   $a3, $a1, 2
/* 007EB0 800072B0 00F95821 */  addu  $t3, $a3, $t9
/* 007EB4 800072B4 C5620000 */  lwc1  $f2, ($t3)
/* 007EB8 800072B8 C4600000 */  lwc1  $f0, ($v1)
/* 007EBC 800072BC 01A74821 */  addu  $t1, $t5, $a3
/* 007EC0 800072C0 01A41021 */  addu  $v0, $t5, $a0
/* 007EC4 800072C4 4602003C */  c.lt.s $f0, $f2
/* 007EC8 800072C8 00000000 */  nop   
/* 007ECC 800072CC 45020008 */  bc1fl .L800072F0
/* 007ED0 800072D0 24A20001 */   addiu $v0, $a1, 1
/* 007ED4 800072D4 8D2E0000 */  lw    $t6, ($t1)
/* 007ED8 800072D8 8C4A0000 */  lw    $t2, ($v0)
/* 007EDC 800072DC E4620000 */  swc1  $f2, ($v1)
/* 007EE0 800072E0 AC4E0000 */  sw    $t6, ($v0)
/* 007EE4 800072E4 E5600000 */  swc1  $f0, ($t3)
/* 007EE8 800072E8 AD2A0000 */  sw    $t2, ($t1)
/* 007EEC 800072EC 24A20001 */  addiu $v0, $a1, 1
.L800072F0:
/* 007EF0 800072F0 10460026 */  beq   $v0, $a2, .L8000738C
.L800072F4:
/* 007EF4 800072F4 3C188016 */   lui   $t8, %hi(gTrackCompletionPercentByRank) # $t8, 0x8016
/* 007EF8 800072F8 27182FD8 */  addiu $t8, %lo(gTrackCompletionPercentByRank) # addiu $t8, $t8, 0x2fd8
/* 007EFC 800072FC 00023880 */  sll   $a3, $v0, 2
/* 007F00 80007300 00067880 */  sll   $t7, $a2, 2
/* 007F04 80007304 01F86021 */  addu  $t4, $t7, $t8
/* 007F08 80007308 00F84821 */  addu  $t1, $a3, $t8
.L8000730C:
/* 007F0C 8000730C C4600000 */  lwc1  $f0, ($v1)
/* 007F10 80007310 C5220000 */  lwc1  $f2, ($t1)
/* 007F14 80007314 01A41021 */  addu  $v0, $t5, $a0
/* 007F18 80007318 01A75821 */  addu  $t3, $t5, $a3
/* 007F1C 8000731C 4602003C */  c.lt.s $f0, $f2
/* 007F20 80007320 00000000 */  nop   
/* 007F24 80007324 4502000A */  bc1fl .L80007350
/* 007F28 80007328 C5220004 */   lwc1  $f2, 4($t1)
/* 007F2C 8000732C 8D790000 */  lw    $t9, ($t3)
/* 007F30 80007330 8C4A0000 */  lw    $t2, ($v0)
/* 007F34 80007334 46000306 */  mov.s $f12, $f0
/* 007F38 80007338 E4620000 */  swc1  $f2, ($v1)
/* 007F3C 8000733C E52C0000 */  swc1  $f12, ($t1)
/* 007F40 80007340 AC590000 */  sw    $t9, ($v0)
/* 007F44 80007344 C4600000 */  lwc1  $f0, ($v1)
/* 007F48 80007348 AD6A0000 */  sw    $t2, ($t3)
/* 007F4C 8000734C C5220004 */  lwc1  $f2, 4($t1)
.L80007350:
/* 007F50 80007350 01A41021 */  addu  $v0, $t5, $a0
/* 007F54 80007354 01A75821 */  addu  $t3, $t5, $a3
/* 007F58 80007358 4602003C */  c.lt.s $f0, $f2
/* 007F5C 8000735C 00000000 */  nop   
/* 007F60 80007360 45020008 */  bc1fl .L80007384
/* 007F64 80007364 25290008 */   addiu $t1, $t1, 8
/* 007F68 80007368 8D6E0004 */  lw    $t6, 4($t3)
/* 007F6C 8000736C 8C4A0000 */  lw    $t2, ($v0)
/* 007F70 80007370 E4620000 */  swc1  $f2, ($v1)
/* 007F74 80007374 AC4E0000 */  sw    $t6, ($v0)
/* 007F78 80007378 E5200004 */  swc1  $f0, 4($t1)
/* 007F7C 8000737C AD6A0004 */  sw    $t2, 4($t3)
/* 007F80 80007380 25290008 */  addiu $t1, $t1, 8
.L80007384:
/* 007F84 80007384 152CFFE1 */  bne   $t1, $t4, .L8000730C
/* 007F88 80007388 24E70008 */   addiu $a3, $a3, 8
.L8000738C:
/* 007F8C 8000738C 00A03825 */  move  $a3, $a1
/* 007F90 80007390 14A8FFBC */  bne   $a1, $t0, .L80007284
/* 007F94 80007394 24A50001 */   addiu $a1, $a1, 1
.L80007398:
/* 007F98 80007398 3C028016 */  lui   $v0, %hi(D_801643E0) # $v0, 0x8016
/* 007F9C 8000739C 3C038016 */  lui   $v1, %hi(D_801643B8) # $v1, 0x8016
/* 007FA0 800073A0 3C048016 */  lui   $a0, %hi(D_801643D8) # $a0, 0x8016
/* 007FA4 800073A4 248443D8 */  addiu $a0, %lo(D_801643D8) # addiu $a0, $a0, 0x43d8
/* 007FA8 800073A8 246343B8 */  addiu $v1, %lo(D_801643B8) # addiu $v1, $v1, 0x43b8
/* 007FAC 800073AC 244243E0 */  addiu $v0, %lo(D_801643E0) # addiu $v0, $v0, 0x43e0
/* 007FB0 800073B0 24050001 */  li    $a1, 1
.L800073B4:
/* 007FB4 800073B4 8C6F0000 */  lw    $t7, ($v1)
/* 007FB8 800073B8 24630004 */  addiu $v1, $v1, 4
/* 007FBC 800073BC 0064082B */  sltu  $at, $v1, $a0
/* 007FC0 800073C0 24A50001 */  addiu $a1, $a1, 1
/* 007FC4 800073C4 24420004 */  addiu $v0, $v0, 4
/* 007FC8 800073C8 1420FFFA */  bnez  $at, .L800073B4
/* 007FCC 800073CC AC4FFFFC */   sw    $t7, -4($v0)
/* 007FD0 800073D0 18C0003E */  blez  $a2, .L800074CC
/* 007FD4 800073D4 00003825 */   move  $a3, $zero
/* 007FD8 800073D8 30CA0003 */  andi  $t2, $a2, 3
/* 007FDC 800073DC 11400016 */  beqz  $t2, .L80007438
/* 007FE0 800073E0 01402025 */   move  $a0, $t2
/* 007FE4 800073E4 3C198016 */  lui   $t9, %hi(D_80164360) # $t9, 0x8016
/* 007FE8 800073E8 27394360 */  addiu $t9, %lo(D_80164360) # addiu $t9, $t9, 0x4360
/* 007FEC 800073EC 0000C040 */  sll   $t8, $zero, 1
/* 007FF0 800073F0 00007080 */  sll   $t6, $zero, 2
/* 007FF4 800073F4 27AF0050 */  addiu $t7, $sp, 0x50
/* 007FF8 800073F8 3C0B8016 */  lui   $t3, %hi(D_801643B8) # $t3, 0x8016
/* 007FFC 800073FC 256B43B8 */  addiu $t3, %lo(D_801643B8) # addiu $t3, $t3, 0x43b8
/* 008000 80007400 01CF1021 */  addu  $v0, $t6, $t7
/* 008004 80007404 03194021 */  addu  $t0, $t8, $t9
/* 008008 80007408 24050001 */  li    $a1, 1
.L8000740C:
/* 00800C 8000740C 8C430000 */  lw    $v1, ($v0)
/* 008010 80007410 25080002 */  addiu $t0, $t0, 2
/* 008014 80007414 24420004 */  addiu $v0, $v0, 4
/* 008018 80007418 0003C080 */  sll   $t8, $v1, 2
/* 00801C 8000741C 0178C821 */  addu  $t9, $t3, $t8
/* 008020 80007420 AF270000 */  sw    $a3, ($t9)
/* 008024 80007424 00A03825 */  move  $a3, $a1
/* 008028 80007428 A503FFFE */  sh    $v1, -2($t0)
/* 00802C 8000742C 1485FFF7 */  bne   $a0, $a1, .L8000740C
/* 008030 80007430 24A50001 */   addiu $a1, $a1, 1
/* 008034 80007434 10E60025 */  beq   $a3, $a2, .L800074CC
.L80007438:
/* 008038 80007438 3C0F8016 */   lui   $t7, %hi(D_80164360) # $t7, 0x8016
/* 00803C 8000743C 25EF4360 */  addiu $t7, %lo(D_80164360) # addiu $t7, $t7, 0x4360
/* 008040 80007440 3C0B8016 */  lui   $t3, %hi(D_801643B8) # $t3, 0x8016
/* 008044 80007444 00077040 */  sll   $t6, $a3, 1
/* 008048 80007448 0007C080 */  sll   $t8, $a3, 2
/* 00804C 8000744C 27B90050 */  addiu $t9, $sp, 0x50
/* 008050 80007450 03191021 */  addu  $v0, $t8, $t9
/* 008054 80007454 01CF4021 */  addu  $t0, $t6, $t7
/* 008058 80007458 256B43B8 */  addiu $t3, %lo(D_801643B8) # addiu $t3, $t3, 0x43b8
/* 00805C 8000745C 24E50001 */  addiu $a1, $a3, 1
.L80007460:
/* 008060 80007460 8C430000 */  lw    $v1, ($v0)
/* 008064 80007464 25080008 */  addiu $t0, $t0, 8
/* 008068 80007468 24420010 */  addiu $v0, $v0, 0x10
/* 00806C 8000746C 00037080 */  sll   $t6, $v1, 2
/* 008070 80007470 016E7821 */  addu  $t7, $t3, $t6
/* 008074 80007474 ADE70000 */  sw    $a3, ($t7)
/* 008078 80007478 8C44FFF4 */  lw    $a0, -0xc($v0)
/* 00807C 8000747C 24EE0002 */  addiu $t6, $a3, 2
/* 008080 80007480 A503FFF8 */  sh    $v1, -8($t0)
/* 008084 80007484 0004C080 */  sll   $t8, $a0, 2
/* 008088 80007488 0178C821 */  addu  $t9, $t3, $t8
/* 00808C 8000748C AF250000 */  sw    $a1, ($t9)
/* 008090 80007490 8C49FFF8 */  lw    $t1, -8($v0)
/* 008094 80007494 24F90003 */  addiu $t9, $a3, 3
/* 008098 80007498 24E70004 */  addiu $a3, $a3, 4
/* 00809C 8000749C 00097880 */  sll   $t7, $t1, 2
/* 0080A0 800074A0 016FC021 */  addu  $t8, $t3, $t7
/* 0080A4 800074A4 AF0E0000 */  sw    $t6, ($t8)
/* 0080A8 800074A8 8C4AFFFC */  lw    $t2, -4($v0)
/* 0080AC 800074AC 24A50004 */  addiu $a1, $a1, 4
/* 0080B0 800074B0 A504FFFA */  sh    $a0, -6($t0)
/* 0080B4 800074B4 000A7880 */  sll   $t7, $t2, 2
/* 0080B8 800074B8 016F7021 */  addu  $t6, $t3, $t7
/* 0080BC 800074BC ADD90000 */  sw    $t9, ($t6)
/* 0080C0 800074C0 A509FFFC */  sh    $t1, -4($t0)
/* 0080C4 800074C4 14E6FFE6 */  bne   $a3, $a2, .L80007460
/* 0080C8 800074C8 A50AFFFE */   sh    $t2, -2($t0)
.L800074CC:
/* 0080CC 800074CC 03E00008 */  jr    $ra
/* 0080D0 800074D0 27BD0078 */   addiu $sp, $sp, 0x78
