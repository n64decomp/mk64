glabel func_8008241C
/* 08301C 8008241C 000470C0 */  sll   $t6, $a0, 3
/* 083020 80082420 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 083024 80082424 01C47023 */  subu  $t6, $t6, $a0
/* 083028 80082428 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 08302C 8008242C AFB00014 */  sw    $s0, 0x14($sp)
/* 083030 80082430 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 083034 80082434 000E7140 */  sll   $t6, $t6, 5
/* 083038 80082438 01CF8021 */  addu  $s0, $t6, $t7
/* 08303C 8008243C 3C180601 */  lui   $t8, %hi(D_060169B0) # $t8, 0x601
/* 083040 80082440 3C190601 */  lui   $t9, %hi(D_06016B60) # $t9, 0x601
/* 083044 80082444 24020001 */  li    $v0, 1
/* 083048 80082448 271869B0 */  addiu $t8, %lo(D_060169B0) # addiu $t8, $t8, 0x69b0
/* 08304C 8008244C 27396B60 */  addiu $t9, %lo(D_06016B60) # addiu $t9, $t9, 0x6b60
/* 083050 80082450 A20200D8 */  sb    $v0, 0xd8($s0)
/* 083054 80082454 AE180070 */  sw    $t8, 0x70($s0)
/* 083058 80082458 AE190074 */  sw    $t9, 0x74($s0)
/* 08305C 8008245C 3C01800F */  lui   $at, %hi(D_800EF16C) # $at, 0x800f
/* 083060 80082460 C424F16C */  lwc1  $f4, %lo(D_800EF16C)($at)
/* 083064 80082464 AFB10018 */  sw    $s1, 0x18($sp)
/* 083068 80082468 00808825 */  move  $s1, $a0
/* 08306C 8008246C AFBF001C */  sw    $ra, 0x1c($sp)
/* 083070 80082470 AFA5002C */  sw    $a1, 0x2c($sp)
/* 083074 80082474 A20200DD */  sb    $v0, 0xdd($s0)
/* 083078 80082478 240400C8 */  li    $a0, 200
/* 08307C 8008247C 0C0ADF8D */  jal   random_int
/* 083080 80082480 E6040000 */   swc1  $f4, ($s0)
/* 083084 80082484 44823000 */  mtc1  $v0, $f6
/* 083088 80082488 44808000 */  mtc1  $zero, $f16
/* 08308C 8008248C 04410006 */  bgez  $v0, .L800824A8
/* 083090 80082490 46803221 */   cvt.d.w $f8, $f6
/* 083094 80082494 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 083098 80082498 44815800 */  mtc1  $at, $f11
/* 08309C 8008249C 44805000 */  mtc1  $zero, $f10
/* 0830A0 800824A0 00000000 */  nop   
/* 0830A4 800824A4 462A4200 */  add.d $f8, $f8, $f10
.L800824A8:
/* 0830A8 800824A8 3C01C059 */  li    $at, 0xC0590000 # -3.390625
/* 0830AC 800824AC 44818800 */  mtc1  $at, $f17
/* 0830B0 800824B0 24040014 */  li    $a0, 20
/* 0830B4 800824B4 46304480 */  add.d $f18, $f8, $f16
/* 0830B8 800824B8 4620910D */  trunc.w.d $f4, $f18
/* 0830BC 800824BC 440C2000 */  mfc1  $t4, $f4
/* 0830C0 800824C0 0C0ADF8D */  jal   random_int
/* 0830C4 800824C4 A7AC0022 */   sh    $t4, 0x22($sp)
/* 0830C8 800824C8 240400C8 */  li    $a0, 200
/* 0830CC 800824CC 0C0ADF8D */  jal   random_int
/* 0830D0 800824D0 A7A20020 */   sh    $v0, 0x20($sp)
/* 0830D4 800824D4 44823000 */  mtc1  $v0, $f6
/* 0830D8 800824D8 87A80022 */  lh    $t0, 0x22($sp)
/* 0830DC 800824DC 87A90020 */  lh    $t1, 0x20($sp)
/* 0830E0 800824E0 04410006 */  bgez  $v0, .L800824FC
/* 0830E4 800824E4 468032A1 */   cvt.d.w $f10, $f6
/* 0830E8 800824E8 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 0830EC 800824EC 44814800 */  mtc1  $at, $f9
/* 0830F0 800824F0 44804000 */  mtc1  $zero, $f8
/* 0830F4 800824F4 00000000 */  nop   
/* 0830F8 800824F8 46285280 */  add.d $f10, $f10, $f8
.L800824FC:
/* 0830FC 800824FC 3C01C059 */  li    $at, 0xC0590000 # -3.390625
/* 083100 80082500 44818800 */  mtc1  $at, $f17
/* 083104 80082504 44808000 */  mtc1  $zero, $f16
/* 083108 80082508 3C19800E */  lui   $t9, %hi(D_800DC50C) # $t9, 0x800e
/* 08310C 8008250C 8F39C50C */  lw    $t9, %lo(D_800DC50C)($t9)
/* 083110 80082510 46305480 */  add.d $f18, $f10, $f16
/* 083114 80082514 24010009 */  li    $at, 9
/* 083118 80082518 4620910D */  trunc.w.d $f4, $f18
/* 08311C 8008251C 44032000 */  mfc1  $v1, $f4
/* 083120 80082520 00000000 */  nop   
/* 083124 80082524 00037C00 */  sll   $t7, $v1, 0x10
/* 083128 80082528 1721001C */  bne   $t9, $at, .L8008259C
/* 08312C 8008252C 000F1C03 */   sra   $v1, $t7, 0x10
/* 083130 80082530 44883000 */  mtc1  $t0, $f6
/* 083134 80082534 3C01800F */  lui   $at, %hi(D_800EF170)
/* 083138 80082538 D42AF170 */  ldc1  $f10, %lo(D_800EF170)($at)
/* 08313C 8008253C 46803221 */  cvt.d.w $f8, $f6
/* 083140 80082540 44892000 */  mtc1  $t1, $f4
/* 083144 80082544 3C01404E */  li    $at, 0x404E0000 # 3.218750
/* 083148 80082548 02202025 */  move  $a0, $s1
/* 08314C 8008254C 468021A1 */  cvt.d.w $f6, $f4
/* 083150 80082550 462A4400 */  add.d $f16, $f8, $f10
/* 083154 80082554 44804000 */  mtc1  $zero, $f8
/* 083158 80082558 44814800 */  mtc1  $at, $f9
/* 08315C 8008255C 3C01800F */  lui   $at, %hi(D_800EF178)
/* 083160 80082560 462084A0 */  cvt.s.d $f18, $f16
/* 083164 80082564 46283280 */  add.d $f10, $f6, $f8
/* 083168 80082568 44059000 */  mfc1  $a1, $f18
/* 08316C 8008256C 44839000 */  mtc1  $v1, $f18
/* 083170 80082570 D426F178 */  ldc1  $f6, %lo(D_800EF178)($at)
/* 083174 80082574 46205420 */  cvt.s.d $f16, $f10
/* 083178 80082578 46809121 */  cvt.d.w $f4, $f18
/* 08317C 8008257C 44068000 */  mfc1  $a2, $f16
/* 083180 80082580 46262200 */  add.d $f8, $f4, $f6
/* 083184 80082584 462042A0 */  cvt.s.d $f10, $f8
/* 083188 80082588 44075000 */  mfc1  $a3, $f10
/* 08318C 8008258C 0C022DF5 */  jal   func_8008B7D4
/* 083190 80082590 00000000 */   nop   
/* 083194 80082594 10000041 */  b     .L8008269C
/* 083198 80082598 02202025 */   move  $a0, $s1
.L8008259C:
/* 08319C 8008259C 920A00D5 */  lbu   $t2, 0xd5($s0)
/* 0831A0 800825A0 51400021 */  beql  $t2, $zero, .L80082628
/* 0831A4 800825A4 44888000 */   mtc1  $t0, $f16
/* 0831A8 800825A8 44888000 */  mtc1  $t0, $f16
/* 0831AC 800825AC 3C01800F */  lui   $at, %hi(D_800EF180)
/* 0831B0 800825B0 D424F180 */  ldc1  $f4, %lo(D_800EF180)($at)
/* 0831B4 800825B4 468084A1 */  cvt.d.w $f18, $f16
/* 0831B8 800825B8 3C018019 */  lui   $at, %hi(D_8018D01C) # $at, 0x8019
/* 0831BC 800825BC C428D01C */  lwc1  $f8, %lo(D_8018D01C)($at)
/* 0831C0 800825C0 3C014034 */  li    $at, 0x40340000 # 2.812500
/* 0831C4 800825C4 02202025 */  move  $a0, $s1
/* 0831C8 800825C8 46249180 */  add.d $f6, $f18, $f4
/* 0831CC 800825CC 44892000 */  mtc1  $t1, $f4
/* 0831D0 800825D0 460042A1 */  cvt.d.s $f10, $f8
/* 0831D4 800825D4 46802221 */  cvt.d.w $f8, $f4
/* 0831D8 800825D8 462A3402 */  mul.d $f16, $f6, $f10
/* 0831DC 800825DC 44803000 */  mtc1  $zero, $f6
/* 0831E0 800825E0 44813800 */  mtc1  $at, $f7
/* 0831E4 800825E4 3C01800F */  lui   $at, %hi(D_800EF188)
/* 0831E8 800825E8 46264280 */  add.d $f10, $f8, $f6
/* 0831EC 800825EC D428F188 */  ldc1  $f8, %lo(D_800EF188)($at)
/* 0831F0 800825F0 462084A0 */  cvt.s.d $f18, $f16
/* 0831F4 800825F4 46205420 */  cvt.s.d $f16, $f10
/* 0831F8 800825F8 44059000 */  mfc1  $a1, $f18
/* 0831FC 800825FC 44839000 */  mtc1  $v1, $f18
/* 083200 80082600 44068000 */  mfc1  $a2, $f16
/* 083204 80082604 46809121 */  cvt.d.w $f4, $f18
/* 083208 80082608 46282180 */  add.d $f6, $f4, $f8
/* 08320C 8008260C 462032A0 */  cvt.s.d $f10, $f6
/* 083210 80082610 44075000 */  mfc1  $a3, $f10
/* 083214 80082614 0C022DF5 */  jal   func_8008B7D4
/* 083218 80082618 00000000 */   nop   
/* 08321C 8008261C 1000001F */  b     .L8008269C
/* 083220 80082620 02202025 */   move  $a0, $s1
/* 083224 80082624 44888000 */  mtc1  $t0, $f16
.L80082628:
/* 083228 80082628 3C01800F */  lui   $at, %hi(D_800EF190)
/* 08322C 8008262C D424F190 */  ldc1  $f4, %lo(D_800EF190)($at)
/* 083230 80082630 468084A1 */  cvt.d.w $f18, $f16
/* 083234 80082634 3C018019 */  lui   $at, %hi(D_8018D01C) # $at, 0x8019
/* 083238 80082638 C426D01C */  lwc1  $f6, %lo(D_8018D01C)($at)
/* 08323C 8008263C 3C01402E */  li    $at, 0x402E0000 # 2.718750
/* 083240 80082640 02202025 */  move  $a0, $s1
/* 083244 80082644 46249200 */  add.d $f8, $f18, $f4
/* 083248 80082648 44892000 */  mtc1  $t1, $f4
/* 08324C 8008264C 460032A1 */  cvt.d.s $f10, $f6
/* 083250 80082650 468021A1 */  cvt.d.w $f6, $f4
/* 083254 80082654 462A4402 */  mul.d $f16, $f8, $f10
/* 083258 80082658 44804000 */  mtc1  $zero, $f8
/* 08325C 8008265C 44814800 */  mtc1  $at, $f9
/* 083260 80082660 3C01800F */  lui   $at, %hi(D_800EF198)
/* 083264 80082664 46283280 */  add.d $f10, $f6, $f8
/* 083268 80082668 D426F198 */  ldc1  $f6, %lo(D_800EF198)($at)
/* 08326C 8008266C 462084A0 */  cvt.s.d $f18, $f16
/* 083270 80082670 46205420 */  cvt.s.d $f16, $f10
/* 083274 80082674 44059000 */  mfc1  $a1, $f18
/* 083278 80082678 44839000 */  mtc1  $v1, $f18
/* 08327C 8008267C 44068000 */  mfc1  $a2, $f16
/* 083280 80082680 46809121 */  cvt.d.w $f4, $f18
/* 083284 80082684 46262200 */  add.d $f8, $f4, $f6
/* 083288 80082688 462042A0 */  cvt.s.d $f10, $f8
/* 08328C 8008268C 44075000 */  mfc1  $a3, $f10
/* 083290 80082690 0C022DF5 */  jal   func_8008B7D4
/* 083294 80082694 00000000 */   nop   
/* 083298 80082698 02202025 */  move  $a0, $s1
.L8008269C:
/* 08329C 8008269C 00002825 */  move  $a1, $zero
/* 0832A0 800826A0 00003025 */  move  $a2, $zero
/* 0832A4 800826A4 0C022E22 */  jal   func_8008B888
/* 0832A8 800826A8 00003825 */   move  $a3, $zero
/* 0832AC 800826AC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0832B0 800826B0 44818000 */  mtc1  $at, $f16
/* 0832B4 800826B4 02202025 */  move  $a0, $s1
/* 0832B8 800826B8 0C021BBC */  jal   func_80086EF0
/* 0832BC 800826BC E6100034 */   swc1  $f16, 0x34($s0)
/* 0832C0 800826C0 8FAB002C */  lw    $t3, 0x2c($sp)
/* 0832C4 800826C4 3C0E800E */  lui   $t6, %hi(D_800E633C)
/* 0832C8 800826C8 02202025 */  move  $a0, $s1
/* 0832CC 800826CC 05610004 */  bgez  $t3, .L800826E0
/* 0832D0 800826D0 316C0003 */   andi  $t4, $t3, 3
/* 0832D4 800826D4 11800002 */  beqz  $t4, .L800826E0
/* 0832D8 800826D8 00000000 */   nop   
/* 0832DC 800826DC 258CFFFC */  addiu $t4, $t4, -4
.L800826E0:
/* 0832E0 800826E0 000C6880 */  sll   $t5, $t4, 2
/* 0832E4 800826E4 01CD7021 */  addu  $t6, $t6, $t5
/* 0832E8 800826E8 8DCE633C */  lw    $t6, %lo(D_800E633C)($t6)
/* 0832EC 800826EC 24050800 */  li    $a1, 2048
/* 0832F0 800826F0 0C01C870 */  jal   func_800721C0
/* 0832F4 800826F4 AE0E0080 */   sw    $t6, 0x80($s0)
/* 0832F8 800826F8 0C01C922 */  jal   func_80072488
/* 0832FC 800826FC 02202025 */   move  $a0, $s1
/* 083300 80082700 8FBF001C */  lw    $ra, 0x1c($sp)
/* 083304 80082704 8FB00014 */  lw    $s0, 0x14($sp)
/* 083308 80082708 8FB10018 */  lw    $s1, 0x18($sp)
/* 08330C 8008270C 03E00008 */  jr    $ra
/* 083310 80082710 27BD0028 */   addiu $sp, $sp, 0x28
