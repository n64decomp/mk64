
glabel crash_screen_draw_square
/* 004D44 80004144 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 004D48 80004148 AFB40028 */  sw    $s4, 0x28($sp)
/* 004D4C 8000414C AFB30024 */  sw    $s3, 0x24($sp)
/* 004D50 80004150 AFB20020 */  sw    $s2, 0x20($sp)
/* 004D54 80004154 AFB00018 */  sw    $s0, 0x18($sp)
/* 004D58 80004158 00809825 */  move  $s3, $a0
/* 004D5C 8000415C AFBF002C */  sw    $ra, 0x2c($sp)
/* 004D60 80004160 AFB1001C */  sw    $s1, 0x1c($sp)
/* 004D64 80004164 2410002E */  li    $s0, 46
/* 004D68 80004168 24120028 */  li    $s2, 40
/* 004D6C 8000416C 2414002C */  li    $s4, 44
/* 004D70 80004170 240D0006 */  li    $t5, 6
/* 004D74 80004174 240C0006 */  li    $t4, 6
/* 004D78 80004178 240B0006 */  li    $t3, 6
/* 004D7C 8000417C 240A0006 */  li    $t2, 6
/* 004D80 80004180 24090006 */  li    $t1, 6
/* 004D84 80004184 3407FFFF */  li    $a3, 65535
/* 004D88 80004188 3406F801 */  li    $a2, 63489
.L8000418C:
/* 004D8C 8000418C 0250082A */  slt   $at, $s2, $s0
/* 004D90 80004190 10200032 */  beqz  $at, .L8000425C
/* 004D94 80004194 02408825 */   move  $s1, $s2
/* 004D98 80004198 0250082A */  slt   $at, $s2, $s0
.L8000419C:
/* 004D9C 8000419C 1020002C */  beqz  $at, .L80004250
/* 004DA0 800041A0 02401825 */   move  $v1, $s2
/* 004DA4 800041A4 00117080 */  sll   $t6, $s1, 2
/* 004DA8 800041A8 01D17021 */  addu  $t6, $t6, $s1
/* 004DAC 800041AC 02122023 */  subu  $a0, $s0, $s2
/* 004DB0 800041B0 30880003 */  andi  $t0, $a0, 3
/* 004DB4 800041B4 000E79C0 */  sll   $t7, $t6, 7
/* 004DB8 800041B8 1100000C */  beqz  $t0, .L800041EC
/* 004DBC 800041BC 026FF821 */   addu  $ra, $s3, $t7
/* 004DC0 800041C0 0003C040 */  sll   $t8, $v1, 1
/* 004DC4 800041C4 03F81021 */  addu  $v0, $ra, $t8
/* 004DC8 800041C8 01122821 */  addu  $a1, $t0, $s2
.L800041CC:
/* 004DCC 800041CC 15240003 */  bne   $t1, $a0, .L800041DC
/* 004DD0 800041D0 24630001 */   addiu $v1, $v1, 1
/* 004DD4 800041D4 10000002 */  b     .L800041E0
/* 004DD8 800041D8 A4460000 */   sh    $a2, ($v0)
.L800041DC:
/* 004DDC 800041DC A4470000 */  sh    $a3, ($v0)
.L800041E0:
/* 004DE0 800041E0 14A3FFFA */  bne   $a1, $v1, .L800041CC
/* 004DE4 800041E4 24420002 */   addiu $v0, $v0, 2
/* 004DE8 800041E8 10700019 */  beq   $v1, $s0, .L80004250
.L800041EC:
/* 004DEC 800041EC 00032840 */   sll   $a1, $v1, 1
/* 004DF0 800041F0 03E51021 */  addu  $v0, $ra, $a1
/* 004DF4 800041F4 00104040 */  sll   $t0, $s0, 1
.L800041F8:
/* 004DF8 800041F8 15440003 */  bne   $t2, $a0, .L80004208
/* 004DFC 800041FC 24A50008 */   addiu $a1, $a1, 8
/* 004E00 80004200 10000002 */  b     .L8000420C
/* 004E04 80004204 A4460000 */   sh    $a2, ($v0)
.L80004208:
/* 004E08 80004208 A4470000 */  sh    $a3, ($v0)
.L8000420C:
/* 004E0C 8000420C 55640004 */  bnel  $t3, $a0, .L80004220
/* 004E10 80004210 A4470002 */   sh    $a3, 2($v0)
/* 004E14 80004214 10000002 */  b     .L80004220
/* 004E18 80004218 A4460002 */   sh    $a2, 2($v0)
/* 004E1C 8000421C A4470002 */  sh    $a3, 2($v0)
.L80004220:
/* 004E20 80004220 55840004 */  bnel  $t4, $a0, .L80004234
/* 004E24 80004224 A4470004 */   sh    $a3, 4($v0)
/* 004E28 80004228 10000002 */  b     .L80004234
/* 004E2C 8000422C A4460004 */   sh    $a2, 4($v0)
/* 004E30 80004230 A4470004 */  sh    $a3, 4($v0)
.L80004234:
/* 004E34 80004234 55A40004 */  bnel  $t5, $a0, .L80004248
/* 004E38 80004238 A4470006 */   sh    $a3, 6($v0)
/* 004E3C 8000423C 10000002 */  b     .L80004248
/* 004E40 80004240 A4460006 */   sh    $a2, 6($v0)
/* 004E44 80004244 A4470006 */  sh    $a3, 6($v0)
.L80004248:
/* 004E48 80004248 14A8FFEB */  bne   $a1, $t0, .L800041F8
/* 004E4C 8000424C 24420008 */   addiu $v0, $v0, 8
.L80004250:
/* 004E50 80004250 26310001 */  addiu $s1, $s1, 1
/* 004E54 80004254 5630FFD1 */  bnel  $s1, $s0, .L8000419C
/* 004E58 80004258 0250082A */   slt   $at, $s2, $s0
.L8000425C:
/* 004E5C 8000425C 2610FFFF */  addiu $s0, $s0, -1
/* 004E60 80004260 1690FFCA */  bne   $s4, $s0, .L8000418C
/* 004E64 80004264 26520001 */   addiu $s2, $s2, 1
/* 004E68 80004268 0C033624 */  jal   osWritebackDCacheAll
/* 004E6C 8000426C 00000000 */   nop   
/* 004E70 80004270 0C033684 */  jal   osViSwapBuffer
/* 004E74 80004274 02602025 */   move  $a0, $s3
/* 004E78 80004278 8FBF002C */  lw    $ra, 0x2c($sp)
/* 004E7C 8000427C 8FB00018 */  lw    $s0, 0x18($sp)
/* 004E80 80004280 8FB1001C */  lw    $s1, 0x1c($sp)
/* 004E84 80004284 8FB20020 */  lw    $s2, 0x20($sp)
/* 004E88 80004288 8FB30024 */  lw    $s3, 0x24($sp)
/* 004E8C 8000428C 8FB40028 */  lw    $s4, 0x28($sp)
/* 004E90 80004290 03E00008 */  jr    $ra
/* 004E94 80004294 27BD0030 */   addiu $sp, $sp, 0x30

glabel crash_screen_draw_info
/* 004E98 80004298 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 004E9C 8000429C AFB50028 */  sw    $s5, 0x28($sp)
/* 004EA0 800042A0 AFB30020 */  sw    $s3, 0x20($sp)
/* 004EA4 800042A4 00A09825 */  move  $s3, $a1
/* 004EA8 800042A8 0080A825 */  move  $s5, $a0
/* 004EAC 800042AC 3C09800E */  lui   $t1, %hi(D_800DC670) # $t1, 0x800e
/* 004EB0 800042B0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 004EB4 800042B4 AFB40024 */  sw    $s4, 0x24($sp)
/* 004EB8 800042B8 AFB2001C */  sw    $s2, 0x1c($sp)
/* 004EBC 800042BC AFB10018 */  sw    $s1, 0x18($sp)
/* 004EC0 800042C0 AFB00014 */  sw    $s0, 0x14($sp)
/* 004EC4 800042C4 2529C670 */  addiu $t1, %lo(D_800DC670) # addiu $t1, $t1, -0x3990
/* 004EC8 800042C8 24040001 */  li    $a0, 1
/* 004ECC 800042CC 24050078 */  li    $a1, 120
/* 004ED0 800042D0 00004025 */  move  $t0, $zero
/* 004ED4 800042D4 240A0018 */  li    $t2, 24
/* 004ED8 800042D8 8D2E0000 */  lw    $t6, ($t1)
.L800042DC:
/* 004EDC 800042DC 00003025 */  move  $a2, $zero
/* 004EE0 800042E0 01CA0019 */  multu $t6, $t2
/* 004EE4 800042E4 00007812 */  mflo  $t7
/* 004EE8 800042E8 01E81021 */  addu  $v0, $t7, $t0
/* 004EEC 800042EC 24420030 */  addiu $v0, $v0, 0x30
/* 004EF0 800042F0 0002C080 */  sll   $t8, $v0, 2
/* 004EF4 800042F4 0302C021 */  addu  $t8, $t8, $v0
/* 004EF8 800042F8 0018C9C0 */  sll   $t9, $t8, 7
/* 004EFC 800042FC 02B93821 */  addu  $a3, $s5, $t9
.L80004300:
/* 004F00 80004300 00001825 */  move  $v1, $zero
/* 004F04 80004304 00E01025 */  move  $v0, $a3
.L80004308:
/* 004F08 80004308 24630004 */  addiu $v1, $v1, 4
/* 004F0C 8000430C A44400CA */  sh    $a0, 0xca($v0)
/* 004F10 80004310 A44400CC */  sh    $a0, 0xcc($v0)
/* 004F14 80004314 A44400CE */  sh    $a0, 0xce($v0)
/* 004F18 80004318 24420008 */  addiu $v0, $v0, 8
/* 004F1C 8000431C 1465FFFA */  bne   $v1, $a1, .L80004308
/* 004F20 80004320 A44400C0 */   sh    $a0, 0xc0($v0)
/* 004F24 80004324 24C60001 */  addiu $a2, $a2, 1
/* 004F28 80004328 28C10010 */  slti  $at, $a2, 0x10
/* 004F2C 8000432C 1420FFF4 */  bnez  $at, .L80004300
/* 004F30 80004330 24E70280 */   addiu $a3, $a3, 0x280
/* 004F34 80004334 25080014 */  addiu $t0, $t0, 0x14
/* 004F38 80004338 2901003C */  slti  $at, $t0, 0x3c
/* 004F3C 8000433C 5420FFE7 */  bnel  $at, $zero, .L800042DC
/* 004F40 80004340 8D2E0000 */   lw    $t6, ($t1)
/* 004F44 80004344 8D2B0000 */  lw    $t3, ($t1)
/* 004F48 80004348 8E670014 */  lw    $a3, 0x14($s3)
/* 004F4C 8000434C 02A02025 */  move  $a0, $s5
/* 004F50 80004350 016A0019 */  multu $t3, $t2
/* 004F54 80004354 30EC000F */  andi  $t4, $a3, 0xf
/* 004F58 80004358 01803825 */  move  $a3, $t4
/* 004F5C 8000435C 2405006C */  li    $a1, 108
/* 004F60 80004360 00001012 */  mflo  $v0
/* 004F64 80004364 24500035 */  addiu $s0, $v0, 0x35
/* 004F68 80004368 0C001030 */  jal   func_800040C0
/* 004F6C 8000436C 02003025 */   move  $a2, $s0
/* 004F70 80004370 02A02025 */  move  $a0, $s5
/* 004F74 80004374 24050074 */  li    $a1, 116
/* 004F78 80004378 02003025 */  move  $a2, $s0
/* 004F7C 8000437C 0C001030 */  jal   func_800040C0
/* 004F80 80004380 24070010 */   li    $a3, 16
/* 004F84 80004384 26720020 */  addiu $s2, $s3, 0x20
/* 004F88 80004388 8E5400FC */  lw    $s4, 0xfc($s2)
/* 004F8C 8000438C 241100B4 */  li    $s1, 180
.L80004390:
/* 004F90 80004390 02A02025 */  move  $a0, $s5
/* 004F94 80004394 02202825 */  move  $a1, $s1
/* 004F98 80004398 02003025 */  move  $a2, $s0
/* 004F9C 8000439C 0C001030 */  jal   func_800040C0
/* 004FA0 800043A0 3287000F */   andi  $a3, $s4, 0xf
/* 004FA4 800043A4 2631FFF8 */  addiu $s1, $s1, -8
/* 004FA8 800043A8 2A21007C */  slti  $at, $s1, 0x7c
/* 004FAC 800043AC 00146902 */  srl   $t5, $s4, 4
/* 004FB0 800043B0 1020FFF7 */  beqz  $at, .L80004390
/* 004FB4 800043B4 01A0A025 */   move  $s4, $t5
/* 004FB8 800043B8 8E510100 */  lw    $s1, 0x100($s2)
/* 004FBC 800043BC 02A02025 */  move  $a0, $s5
/* 004FC0 800043C0 240500BC */  li    $a1, 188
/* 004FC4 800043C4 00117082 */  srl   $t6, $s1, 2
/* 004FC8 800043C8 31D1001F */  andi  $s1, $t6, 0x1f
/* 004FCC 800043CC 02003025 */  move  $a2, $s0
/* 004FD0 800043D0 0C001030 */  jal   func_800040C0
/* 004FD4 800043D4 24070010 */   li    $a3, 16
/* 004FD8 800043D8 02A02025 */  move  $a0, $s5
/* 004FDC 800043DC 240500C4 */  li    $a1, 196
/* 004FE0 800043E0 02003025 */  move  $a2, $s0
/* 004FE4 800043E4 0C001030 */  jal   func_800040C0
/* 004FE8 800043E8 00113902 */   srl   $a3, $s1, 4
/* 004FEC 800043EC 02A02025 */  move  $a0, $s5
/* 004FF0 800043F0 240500CC */  li    $a1, 204
/* 004FF4 800043F4 02003025 */  move  $a2, $s0
/* 004FF8 800043F8 0C001030 */  jal   func_800040C0
/* 004FFC 800043FC 3227000F */   andi  $a3, $s1, 0xf
/* 005000 80004400 8E5400E4 */  lw    $s4, 0xe4($s2)
/* 005004 80004404 241100B4 */  li    $s1, 180
.L80004408:
/* 005008 80004408 02A02025 */  move  $a0, $s5
/* 00500C 8000440C 02202825 */  move  $a1, $s1
/* 005010 80004410 24060049 */  li    $a2, 73
/* 005014 80004414 0C001030 */  jal   func_800040C0
/* 005018 80004418 3287000F */   andi  $a3, $s4, 0xf
/* 00501C 8000441C 2631FFF8 */  addiu $s1, $s1, -8
/* 005020 80004420 2A21007C */  slti  $at, $s1, 0x7c
/* 005024 80004424 00145902 */  srl   $t3, $s4, 4
/* 005028 80004428 1020FFF7 */  beqz  $at, .L80004408
/* 00502C 8000442C 0160A025 */   move  $s4, $t3
/* 005030 80004430 8E4200FC */  lw    $v0, 0xfc($s2)
/* 005034 80004434 2401FFFC */  li    $at, -4
/* 005038 80004438 241100B4 */  li    $s1, 180
/* 00503C 8000443C 00416024 */  and   $t4, $v0, $at
/* 005040 80004440 3C018000 */  lui   $at, (0x80000001 >> 16) # lui $at, 0x8000
/* 005044 80004444 34210001 */  ori   $at, (0x80000001 & 0xFFFF) # ori $at, $at, 1
/* 005048 80004448 0181082B */  sltu  $at, $t4, $at
/* 00504C 8000444C 14200006 */  bnez  $at, .L80004468
/* 005050 80004450 3C01803F */   lui   $at, (0x803FFF7F >> 16) # lui $at, 0x803f
/* 005054 80004454 3421FF7F */  ori   $at, (0x803FFF7F & 0xFFFF) # ori $at, $at, 0xff7f
/* 005058 80004458 0181082B */  sltu  $at, $t4, $at
/* 00505C 8000445C 10200002 */  beqz  $at, .L80004468
/* 005060 80004460 00000000 */   nop   
/* 005064 80004464 8D940000 */  lw    $s4, ($t4)
.L80004468:
/* 005068 80004468 02A02025 */  move  $a0, $s5
/* 00506C 8000446C 02202825 */  move  $a1, $s1
/* 005070 80004470 2406005D */  li    $a2, 93
/* 005074 80004474 0C001030 */  jal   func_800040C0
/* 005078 80004478 3287000F */   andi  $a3, $s4, 0xf
/* 00507C 8000447C 2631FFF8 */  addiu $s1, $s1, -8
/* 005080 80004480 2A21007C */  slti  $at, $s1, 0x7c
/* 005084 80004484 00146902 */  srl   $t5, $s4, 4
/* 005088 80004488 1020FFF7 */  beqz  $at, .L80004468
/* 00508C 8000448C 01A0A025 */   move  $s4, $t5
/* 005090 80004490 0C033624 */  jal   osWritebackDCacheAll
/* 005094 80004494 00000000 */   nop   
/* 005098 80004498 0C033684 */  jal   osViSwapBuffer
/* 00509C 8000449C 02A02025 */   move  $a0, $s5
/* 0050A0 800044A0 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0050A4 800044A4 8FB00014 */  lw    $s0, 0x14($sp)
/* 0050A8 800044A8 8FB10018 */  lw    $s1, 0x18($sp)
/* 0050AC 800044AC 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0050B0 800044B0 8FB30020 */  lw    $s3, 0x20($sp)
/* 0050B4 800044B4 8FB40024 */  lw    $s4, 0x24($sp)
/* 0050B8 800044B8 8FB50028 */  lw    $s5, 0x28($sp)
/* 0050BC 800044BC 03E00008 */  jr    $ra
/* 0050C0 800044C0 27BD0030 */   addiu $sp, $sp, 0x30

glabel get_faulted_thread
/* 0050C4 800044C4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0050C8 800044C8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0050CC 800044CC 0C03384C */  jal   __osGetCurrFaultedThread
/* 0050D0 800044D0 00000000 */   nop   
/* 0050D4 800044D4 8C4E0004 */  lw    $t6, 4($v0)
/* 0050D8 800044D8 2404FFFF */  li    $a0, -1
/* 0050DC 800044DC 00401825 */  move  $v1, $v0
/* 0050E0 800044E0 108E0010 */  beq   $a0, $t6, .L80004524
/* 0050E4 800044E4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0050E8 800044E8 8C420004 */  lw    $v0, 4($v0)
.L800044EC:
/* 0050EC 800044EC 18400009 */  blez  $v0, .L80004514
/* 0050F0 800044F0 28410080 */   slti  $at, $v0, 0x80
/* 0050F4 800044F4 50200008 */  beql  $at, $zero, .L80004518
/* 0050F8 800044F8 8C63000C */   lw    $v1, 0xc($v1)
/* 0050FC 800044FC 946F0012 */  lhu   $t7, 0x12($v1)
/* 005100 80004500 31F80003 */  andi  $t8, $t7, 3
/* 005104 80004504 53000004 */  beql  $t8, $zero, .L80004518
/* 005108 80004508 8C63000C */   lw    $v1, 0xc($v1)
/* 00510C 8000450C 10000006 */  b     .L80004528
/* 005110 80004510 00601025 */   move  $v0, $v1
.L80004514:
/* 005114 80004514 8C63000C */  lw    $v1, 0xc($v1)
.L80004518:
/* 005118 80004518 8C620004 */  lw    $v0, 4($v1)
/* 00511C 8000451C 1482FFF3 */  bne   $a0, $v0, .L800044EC
/* 005120 80004520 00000000 */   nop   
.L80004524:
/* 005124 80004524 00001025 */  move  $v0, $zero
.L80004528:
/* 005128 80004528 03E00008 */  jr    $ra
/* 00512C 8000452C 27BD0018 */   addiu $sp, $sp, 0x18

glabel thread9_crash_screen
/* 005130 80004530 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 005134 80004534 AFB70030 */  sw    $s7, 0x30($sp)
/* 005138 80004538 3C178016 */  lui   $s7, %hi(D_80162D40) # $s7, 0x8016
/* 00513C 8000453C 26F72D40 */  addiu $s7, %lo(D_80162D40) # addiu $s7, $s7, 0x2d40
/* 005140 80004540 AFBF0034 */  sw    $ra, 0x34($sp)
/* 005144 80004544 AFA40048 */  sw    $a0, 0x48($sp)
/* 005148 80004548 AFB6002C */  sw    $s6, 0x2c($sp)
/* 00514C 8000454C AFB50028 */  sw    $s5, 0x28($sp)
/* 005150 80004550 AFB40024 */  sw    $s4, 0x24($sp)
/* 005154 80004554 AFB30020 */  sw    $s3, 0x20($sp)
/* 005158 80004558 AFB2001C */  sw    $s2, 0x1c($sp)
/* 00515C 8000455C AFB10018 */  sw    $s1, 0x18($sp)
/* 005160 80004560 AFB00014 */  sw    $s0, 0x14($sp)
/* 005164 80004564 2404000C */  li    $a0, 12
/* 005168 80004568 02E02825 */  move  $a1, $s7
/* 00516C 8000456C 0C033380 */  jal   osSetEventMesg
/* 005170 80004570 24060010 */   li    $a2, 16
/* 005174 80004574 2404000A */  li    $a0, 10
/* 005178 80004578 02E02825 */  move  $a1, $s7
/* 00517C 8000457C 0C033380 */  jal   osSetEventMesg
/* 005180 80004580 24060010 */   li    $a2, 16
/* 005184 80004584 3C108016 */  lui   $s0, %hi(D_80162D60) # $s0, 0x8016
/* 005188 80004588 26102D60 */  addiu $s0, %lo(D_80162D60) # addiu $s0, $s0, 0x2d60
/* 00518C 8000458C 3C158016 */  lui   $s5, %hi(pFramebuffer) # $s5, 0x8016
/* 005190 80004590 3C14800E */  lui   $s4, %hi(D_800DC670) # $s4, 0x800e
/* 005194 80004594 3C12800E */  lui   $s2, %hi(D_800DC4BC) # $s2, 0x800e
/* 005198 80004598 3C11800E */  lui   $s1, %hi(D_800DC6FC) # $s1, 0x800e
/* 00519C 8000459C AE000000 */  sw    $zero, ($s0)
/* 0051A0 800045A0 2631C6FC */  addiu $s1, %lo(D_800DC6FC) # addiu $s1, $s1, -0x3904
/* 0051A4 800045A4 2652C4BC */  addiu $s2, %lo(D_800DC4BC) # addiu $s2, $s2, -0x3b44
/* 0051A8 800045A8 2694C670 */  addiu $s4, %lo(D_800DC670) # addiu $s4, $s4, -0x3990
/* 0051AC 800045AC 26B52D5C */  addiu $s5, %lo(pFramebuffer) # addiu $s5, $s5, 0x2d5c
/* 0051B0 800045B0 27B60044 */  addiu $s6, $sp, 0x44
/* 0051B4 800045B4 3413FFFF */  li    $s3, 65535
.L800045B8:
/* 0051B8 800045B8 02E02025 */  move  $a0, $s7
.L800045BC:
/* 0051BC 800045BC 02C02825 */  move  $a1, $s6
/* 0051C0 800045C0 0C0335D4 */  jal   osRecvMesg
/* 0051C4 800045C4 24060001 */   li    $a2, 1
/* 0051C8 800045C8 0C001131 */  jal   get_faulted_thread
/* 0051CC 800045CC 00000000 */   nop   
/* 0051D0 800045D0 3C018016 */  lui   $at, %hi(D_80162D64) # $at, 0x8016
/* 0051D4 800045D4 1040FFF8 */  beqz  $v0, .L800045B8
/* 0051D8 800045D8 AC222D64 */   sw    $v0, %lo(D_80162D64)($at)
/* 0051DC 800045DC 8E820000 */  lw    $v0, ($s4)
/* 0051E0 800045E0 5440001F */  bnel  $v0, $zero, .L80004660
/* 0051E4 800045E4 28410005 */   slti  $at, $v0, 5
/* 0051E8 800045E8 0C001051 */  jal   crash_screen_draw_square
/* 0051EC 800045EC 8EA40000 */   lw    $a0, ($s5)
.L800045F0:
/* 0051F0 800045F0 0C00028A */  jal   read_controllers
/* 0051F4 800045F4 00000000 */   nop   
/* 0051F8 800045F8 8E4E0000 */  lw    $t6, ($s2)
/* 0051FC 800045FC 95C20006 */  lhu   $v0, 6($t6)
/* 005200 80004600 1040FFFB */  beqz  $v0, .L800045F0
/* 005204 80004604 00000000 */   nop   
/* 005208 80004608 8E030000 */  lw    $v1, ($s0)
/* 00520C 8000460C 00037840 */  sll   $t7, $v1, 1
/* 005210 80004610 022FC021 */  addu  $t8, $s1, $t7
/* 005214 80004614 97190000 */  lhu   $t9, ($t8)
/* 005218 80004618 24680001 */  addiu $t0, $v1, 1
/* 00521C 8000461C 54590004 */  bnel  $v0, $t9, .L80004630
/* 005220 80004620 AE000000 */   sw    $zero, ($s0)
/* 005224 80004624 10000002 */  b     .L80004630
/* 005228 80004628 AE080000 */   sw    $t0, ($s0)
/* 00522C 8000462C AE000000 */  sw    $zero, ($s0)
.L80004630:
/* 005230 80004630 8E090000 */  lw    $t1, ($s0)
/* 005234 80004634 00095040 */  sll   $t2, $t1, 1
/* 005238 80004638 022A5821 */  addu  $t3, $s1, $t2
/* 00523C 8000463C 956C0000 */  lhu   $t4, ($t3)
/* 005240 80004640 166CFFEB */  bne   $s3, $t4, .L800045F0
/* 005244 80004644 00000000 */   nop   
/* 005248 80004648 3C058016 */  lui   $a1, %hi(D_80162D64) # $a1, 0x8016
/* 00524C 8000464C 8CA52D64 */  lw    $a1, %lo(D_80162D64)($a1)
/* 005250 80004650 0C0010A6 */  jal   crash_screen_draw_info
/* 005254 80004654 8EA40000 */   lw    $a0, ($s5)
/* 005258 80004658 8E820000 */  lw    $v0, ($s4)
/* 00525C 8000465C 28410005 */  slti  $at, $v0, 5
.L80004660:
/* 005260 80004660 5020FFD6 */  beql  $at, $zero, .L800045BC
/* 005264 80004664 02E02025 */   move  $a0, $s7
/* 005268 80004668 244D0001 */  addiu $t5, $v0, 1
/* 00526C 8000466C 1000FFD2 */  b     .L800045B8
/* 005270 80004670 AE8D0000 */   sw    $t5, ($s4)
/* 005274 80004674 00000000 */  nop   
/* 005278 80004678 00000000 */  nop   
/* 00527C 8000467C 00000000 */  nop   
/* 005280 80004680 8FBF0034 */  lw    $ra, 0x34($sp)
/* 005284 80004684 8FB00014 */  lw    $s0, 0x14($sp)
/* 005288 80004688 8FB10018 */  lw    $s1, 0x18($sp)
/* 00528C 8000468C 8FB2001C */  lw    $s2, 0x1c($sp)
/* 005290 80004690 8FB30020 */  lw    $s3, 0x20($sp)
/* 005294 80004694 8FB40024 */  lw    $s4, 0x24($sp)
/* 005298 80004698 8FB50028 */  lw    $s5, 0x28($sp)
/* 00529C 8000469C 8FB6002C */  lw    $s6, 0x2c($sp)
/* 0052A0 800046A0 8FB70030 */  lw    $s7, 0x30($sp)
/* 0052A4 800046A4 03E00008 */  jr    $ra
/* 0052A8 800046A8 27BD0048 */   addiu $sp, $sp, 0x48

glabel func_800046AC
/* 0052AC 800046AC 3C018016 */  lui   $at, %hi(pFramebuffer) # 0x8016
/* 0052B0 800046B0 03E00008 */  jr    $ra
/* 0052B4 800046B4 AC242D5C */   sw    $a0, %lo(pFramebuffer)($at) # 0x2d5c($at)

glabel create_debug_thread
/* 0052B8 800046B8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0052BC 800046BC AFBF001C */  sw    $ra, 0x1c($sp)
/* 0052C0 800046C0 3C048016 */  lui   $a0, %hi(D_80162D40) # $a0, 0x8016
/* 0052C4 800046C4 3C058016 */  lui   $a1, %hi(D_80162D58) # $a1, 0x8016
/* 0052C8 800046C8 24A52D58 */  addiu $a1, %lo(D_80162D58) # addiu $a1, $a1, 0x2d58
/* 0052CC 800046CC 24842D40 */  addiu $a0, %lo(D_80162D40) # addiu $a0, $a0, 0x2d40
/* 0052D0 800046D0 0C033358 */  jal   osCreateMesgQueue
/* 0052D4 800046D4 24060001 */   li    $a2, 1
/* 0052D8 800046D8 3C0E8016 */  lui   $t6, %hi(D_80162D40) # $t6, 0x8016
/* 0052DC 800046DC 25CE2D40 */  addiu $t6, %lo(D_80162D40) # addiu $t6, $t6, 0x2d40
/* 0052E0 800046E0 3C048016 */  lui   $a0, %hi(D_80162790) # $a0, 0x8016
/* 0052E4 800046E4 3C068000 */  lui   $a2, %hi(thread9_crash_screen) # $a2, 0x8000
/* 0052E8 800046E8 240F007F */  li    $t7, 127
/* 0052EC 800046EC AFAF0014 */  sw    $t7, 0x14($sp)
/* 0052F0 800046F0 24C64530 */  addiu $a2, %lo(thread9_crash_screen) # addiu $a2, $a2, 0x4530
/* 0052F4 800046F4 24842790 */  addiu $a0, %lo(D_80162790) # addiu $a0, $a0, 0x2790
/* 0052F8 800046F8 AFAE0010 */  sw    $t6, 0x10($sp)
/* 0052FC 800046FC 24050009 */  li    $a1, 9
/* 005300 80004700 0C032FDC */  jal   osCreateThread
/* 005304 80004704 00003825 */   move  $a3, $zero
/* 005308 80004708 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00530C 8000470C 27BD0020 */  addiu $sp, $sp, 0x20
/* 005310 80004710 03E00008 */  jr    $ra
/* 005314 80004714 00000000 */   nop   

glabel start_debug_thread
/* 005318 80004718 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00531C 8000471C AFBF0014 */  sw    $ra, 0x14($sp)
/* 005320 80004720 3C048016 */  lui   $a0, %hi(D_80162790) # $a0, 0x8016
/* 005324 80004724 0C0330D8 */  jal   osStartThread
/* 005328 80004728 24842790 */   addiu $a0, %lo(D_80162790) # addiu $a0, $a0, 0x2790
/* 00532C 8000472C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 005330 80004730 27BD0018 */  addiu $sp, $sp, 0x18
/* 005334 80004734 03E00008 */  jr    $ra
/* 005338 80004738 00000000 */   nop   

/* 00533C 8000473C 00000000 */  nop   
