glabel func_80030150
/* 030D50 80030150 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 030D54 80030154 AFBF0014 */  sw    $ra, 0x14($sp)
/* 030D58 80030158 AFA5002C */  sw    $a1, 0x2c($sp)
/* 030D5C 8003015C 3C014190 */  li    $at, 0x41900000 # 18.000000
/* 030D60 80030160 44813000 */  mtc1  $at, $f6
/* 030D64 80030164 C4840094 */  lwc1  $f4, 0x94($a0)
/* 030D68 80030168 3C014358 */  li    $at, 0x43580000 # 216.000000
/* 030D6C 8003016C 44815000 */  mtc1  $at, $f10
/* 030D70 80030170 46062203 */  div.s $f8, $f4, $f6
/* 030D74 80030174 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 030D78 80030178 44818000 */  mtc1  $at, $f16
/* 030D7C 8003017C 44807000 */  mtc1  $zero, $f14
/* 030D80 80030180 00803825 */  move  $a3, $a0
/* 030D84 80030184 46007006 */  mov.s $f0, $f14
/* 030D88 80030188 460A4082 */  mul.s $f2, $f8, $f10
/* 030D8C 8003018C 4602803E */  c.le.s $f16, $f2
/* 030D90 80030190 00000000 */  nop   
/* 030D94 80030194 45020147 */  bc1fl .L800306B4
/* 030D98 80030198 84F900C4 */   lh    $t9, 0xc4($a3)
/* 030D9C 8003019C 8C8500BC */  lw    $a1, 0xbc($a0)
/* 030DA0 800301A0 24090200 */  li    $t1, 512
/* 030DA4 800301A4 30A80200 */  andi  $t0, $a1, 0x200
/* 030DA8 800301A8 11280037 */  beq   $t1, $t0, .L80030288
/* 030DAC 800301AC 30A60008 */   andi  $a2, $a1, 8
/* 030DB0 800301B0 908201EC */  lbu   $v0, 0x1ec($a0)
/* 030DB4 800301B4 3C03800E */  lui   $v1, %hi(D_800E2E90) # $v1, 0x800e
/* 030DB8 800301B8 2841000F */  slti  $at, $v0, 0xf
/* 030DBC 800301BC 54200004 */  bnel  $at, $zero, .L800301D0
/* 030DC0 800301C0 94EE0254 */   lhu   $t6, 0x254($a3)
/* 030DC4 800301C4 1000000B */  b     .L800301F4
/* 030DC8 800301C8 24632E90 */   addiu $v1, %lo(D_800E2E90) # addiu $v1, $v1, 0x2e90
/* 030DCC 800301CC 94EE0254 */  lhu   $t6, 0x254($a3)
.L800301D0:
/* 030DD0 800301D0 3C03800E */  lui   $v1, %hi(D_800E2E90) # $v1, 0x800e
/* 030DD4 800301D4 24632E90 */  addiu $v1, %lo(D_800E2E90) # addiu $v1, $v1, 0x2e90
/* 030DD8 800301D8 000E7880 */  sll   $t7, $t6, 2
/* 030DDC 800301DC 006FC021 */  addu  $t8, $v1, $t7
/* 030DE0 800301E0 8F190000 */  lw    $t9, ($t8)
/* 030DE4 800301E4 00025080 */  sll   $t2, $v0, 2
/* 030DE8 800301E8 032A5821 */  addu  $t3, $t9, $t2
/* 030DEC 800301EC C5720000 */  lwc1  $f18, ($t3)
/* 030DF0 800301F0 46127000 */  add.s $f0, $f14, $f18
.L800301F4:
/* 030DF4 800301F4 90E201D4 */  lbu   $v0, 0x1d4($a3)
/* 030DF8 800301F8 2841000F */  slti  $at, $v0, 0xf
/* 030DFC 800301FC 5020000A */  beql  $at, $zero, .L80030228
/* 030E00 80030200 90E201BC */   lbu   $v0, 0x1bc($a3)
/* 030E04 80030204 94EC0254 */  lhu   $t4, 0x254($a3)
/* 030E08 80030208 0002C080 */  sll   $t8, $v0, 2
/* 030E0C 8003020C 000C6880 */  sll   $t5, $t4, 2
/* 030E10 80030210 006D7021 */  addu  $t6, $v1, $t5
/* 030E14 80030214 8DCF0000 */  lw    $t7, ($t6)
/* 030E18 80030218 01F8C821 */  addu  $t9, $t7, $t8
/* 030E1C 8003021C C7240000 */  lwc1  $f4, ($t9)
/* 030E20 80030220 46040000 */  add.s $f0, $f0, $f4
/* 030E24 80030224 90E201BC */  lbu   $v0, 0x1bc($a3)
.L80030228:
/* 030E28 80030228 2841000F */  slti  $at, $v0, 0xf
/* 030E2C 8003022C 5020000B */  beql  $at, $zero, .L8003025C
/* 030E30 80030230 90E201A4 */   lbu   $v0, 0x1a4($a3)
/* 030E34 80030234 94EA0254 */  lhu   $t2, 0x254($a3)
/* 030E38 80030238 3C0C800E */  lui   $t4, %hi(D_800E2EB0)
/* 030E3C 8003023C 00026880 */  sll   $t5, $v0, 2
/* 030E40 80030240 000A5880 */  sll   $t3, $t2, 2
/* 030E44 80030244 018B6021 */  addu  $t4, $t4, $t3
/* 030E48 80030248 8D8C2EB0 */  lw    $t4, %lo(D_800E2EB0)($t4)
/* 030E4C 8003024C 018D7021 */  addu  $t6, $t4, $t5
/* 030E50 80030250 C5C60000 */  lwc1  $f6, ($t6)
/* 030E54 80030254 46060000 */  add.s $f0, $f0, $f6
/* 030E58 80030258 90E201A4 */  lbu   $v0, 0x1a4($a3)
.L8003025C:
/* 030E5C 8003025C 2841000F */  slti  $at, $v0, 0xf
/* 030E60 80030260 5020000A */  beql  $at, $zero, .L8003028C
/* 030E64 80030264 24010008 */   li    $at, 8
/* 030E68 80030268 94EF0254 */  lhu   $t7, 0x254($a3)
/* 030E6C 8003026C 00025880 */  sll   $t3, $v0, 2
/* 030E70 80030270 000FC080 */  sll   $t8, $t7, 2
/* 030E74 80030274 0078C821 */  addu  $t9, $v1, $t8
/* 030E78 80030278 8F2A0000 */  lw    $t2, ($t9)
/* 030E7C 8003027C 014B6021 */  addu  $t4, $t2, $t3
/* 030E80 80030280 C5880000 */  lwc1  $f8, ($t4)
/* 030E84 80030284 46080000 */  add.s $f0, $f0, $f8
.L80030288:
/* 030E88 80030288 24010008 */  li    $at, 8
.L8003028C:
/* 030E8C 8003028C 50C100BD */  beql  $a2, $at, .L80030584
/* 030E90 80030290 94E200DE */   lhu   $v0, 0xde($a3)
/* 030E94 80030294 84ED00CA */  lh    $t5, 0xca($a3)
/* 030E98 80030298 24010002 */  li    $at, 2
/* 030E9C 8003029C 30AB0010 */  andi  $t3, $a1, 0x10
/* 030EA0 800302A0 31AE0002 */  andi  $t6, $t5, 2
/* 030EA4 800302A4 51C100B7 */  beql  $t6, $at, .L80030584
/* 030EA8 800302A8 94E200DE */   lhu   $v0, 0xde($a3)
/* 030EAC 800302AC 84EF00C4 */  lh    $t7, 0xc4($a3)
/* 030EB0 800302B0 240400B6 */  li    $a0, 182
/* 030EB4 800302B4 01E4001A */  div   $zero, $t7, $a0
/* 030EB8 800302B8 14800002 */  bnez  $a0, .L800302C4
/* 030EBC 800302BC 00000000 */   nop   
/* 030EC0 800302C0 0007000D */  break 7
.L800302C4:
/* 030EC4 800302C4 2401FFFF */  li    $at, -1
/* 030EC8 800302C8 14810004 */  bne   $a0, $at, .L800302DC
/* 030ECC 800302CC 3C018000 */   lui   $at, 0x8000
/* 030ED0 800302D0 15E10002 */  bne   $t7, $at, .L800302DC
/* 030ED4 800302D4 00000000 */   nop   
/* 030ED8 800302D8 0006000D */  break 6
.L800302DC:
/* 030EDC 800302DC 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 030EE0 800302E0 44815000 */  mtc1  $at, $f10
/* 030EE4 800302E4 00001012 */  mflo  $v0
/* 030EE8 800302E8 0002C400 */  sll   $t8, $v0, 0x10
/* 030EEC 800302EC 4602503E */  c.le.s $f10, $f2
/* 030EF0 800302F0 0018CC03 */  sra   $t9, $t8, 0x10
/* 030EF4 800302F4 03201025 */  move  $v0, $t9
/* 030EF8 800302F8 3C01800F */  lui   $at, %hi(D_800ED940)
/* 030EFC 800302FC 45000020 */  bc1f  .L80030380
/* 030F00 80030300 00000000 */   nop   
/* 030F04 80030304 28410012 */  slti  $at, $v0, 0x12
/* 030F08 80030308 10200003 */  beqz  $at, .L80030318
/* 030F0C 8003030C 2841FFEF */   slti  $at, $v0, -0x11
/* 030F10 80030310 5020000F */  beql  $at, $zero, .L80030350
/* 030F14 80030314 44822000 */   mtc1  $v0, $f4
.L80030318:
/* 030F18 80030318 44828000 */  mtc1  $v0, $f16
/* 030F1C 8003031C 3C01800F */  lui   $at, %hi(D_800ED930)
/* 030F20 80030320 D424D930 */  ldc1  $f4, %lo(D_800ED930)($at)
/* 030F24 80030324 468084A1 */  cvt.d.w $f18, $f16
/* 030F28 80030328 3C014008 */  li    $at, 0x40080000 # 2.125000
/* 030F2C 8003032C 44814800 */  mtc1  $at, $f9
/* 030F30 80030330 44804000 */  mtc1  $zero, $f8
/* 030F34 80030334 46000421 */  cvt.d.s $f16, $f0
/* 030F38 80030338 46249182 */  mul.d $f6, $f18, $f4
/* 030F3C 8003033C 46283283 */  div.d $f10, $f6, $f8
/* 030F40 80030340 462A8481 */  sub.d $f18, $f16, $f10
/* 030F44 80030344 1000001A */  b     .L800303B0
/* 030F48 80030348 46209020 */   cvt.s.d $f0, $f18
/* 030F4C 8003034C 44822000 */  mtc1  $v0, $f4
.L80030350:
/* 030F50 80030350 3C01800F */  lui   $at, %hi(D_800ED938)
/* 030F54 80030354 D428D938 */  ldc1  $f8, %lo(D_800ED938)($at)
/* 030F58 80030358 468021A1 */  cvt.d.w $f6, $f4
/* 030F5C 8003035C 3C014008 */  li    $at, 0x40080000 # 2.125000
/* 030F60 80030360 44815800 */  mtc1  $at, $f11
/* 030F64 80030364 44805000 */  mtc1  $zero, $f10
/* 030F68 80030368 46000121 */  cvt.d.s $f4, $f0
/* 030F6C 8003036C 46283402 */  mul.d $f16, $f6, $f8
/* 030F70 80030370 462A8483 */  div.d $f18, $f16, $f10
/* 030F74 80030374 46322181 */  sub.d $f6, $f4, $f18
/* 030F78 80030378 1000000D */  b     .L800303B0
/* 030F7C 8003037C 46203020 */   cvt.s.d $f0, $f6
.L80030380:
/* 030F80 80030380 D430D940 */  ldc1  $f16, %lo(D_800ED940)($at)
/* 030F84 80030384 46000221 */  cvt.d.s $f8, $f0
/* 030F88 80030388 3C024000 */  li    $v0, 0x40000000 # 2.000000
/* 030F8C 8003038C 46304280 */  add.d $f10, $f8, $f16
/* 030F90 80030390 00A25024 */  and   $t2, $a1, $v0
/* 030F94 80030394 3C01800F */  lui   $at, %hi(D_800ED948)
/* 030F98 80030398 144A0005 */  bne   $v0, $t2, .L800303B0
/* 030F9C 8003039C 46205020 */   cvt.s.d $f0, $f10
/* 030FA0 800303A0 D432D948 */  ldc1  $f18, %lo(D_800ED948)($at)
/* 030FA4 800303A4 46000121 */  cvt.d.s $f4, $f0
/* 030FA8 800303A8 46322180 */  add.d $f6, $f4, $f18
/* 030FAC 800303AC 46203020 */  cvt.s.d $f0, $f6
.L800303B0:
/* 030FB0 800303B0 24010010 */  li    $at, 16
/* 030FB4 800303B4 51610005 */  beql  $t3, $at, .L800303CC
/* 030FB8 800303B8 84ED00C0 */   lh    $t5, 0xc0($a3)
/* 030FBC 800303BC 84EC0204 */  lh    $t4, 0x204($a3)
/* 030FC0 800303C0 59800022 */  blezl $t4, .L8003044C
/* 030FC4 800303C4 84EF00C0 */   lh    $t7, 0xc0($a3)
/* 030FC8 800303C8 84ED00C0 */  lh    $t5, 0xc0($a3)
.L800303CC:
/* 030FCC 800303CC 01A4001A */  div   $zero, $t5, $a0
/* 030FD0 800303D0 14800002 */  bnez  $a0, .L800303DC
/* 030FD4 800303D4 00000000 */   nop   
/* 030FD8 800303D8 0007000D */  break 7
.L800303DC:
/* 030FDC 800303DC 2401FFFF */  li    $at, -1
/* 030FE0 800303E0 14810004 */  bne   $a0, $at, .L800303F4
/* 030FE4 800303E4 3C018000 */   lui   $at, 0x8000
/* 030FE8 800303E8 15A10002 */  bne   $t5, $at, .L800303F4
/* 030FEC 800303EC 00000000 */   nop   
/* 030FF0 800303F0 0006000D */  break 6
.L800303F4:
/* 030FF4 800303F4 00001012 */  mflo  $v0
/* 030FF8 800303F8 00027023 */  negu  $t6, $v0
/* 030FFC 800303FC 0441000A */  bgez  $v0, .L80030428
/* 031000 80030400 3C01800F */   lui   $at, %hi(D_800ED958)
/* 031004 80030404 448E4000 */  mtc1  $t6, $f8
/* 031008 80030408 3C01800F */  lui   $at, %hi(D_800ED950)
/* 03100C 8003040C D42AD950 */  ldc1  $f10, %lo(D_800ED950)($at)
/* 031010 80030410 46804421 */  cvt.d.w $f16, $f8
/* 031014 80030414 460004A1 */  cvt.d.s $f18, $f0
/* 031018 80030418 462A8102 */  mul.d $f4, $f16, $f10
/* 03101C 8003041C 46249180 */  add.d $f6, $f18, $f4
/* 031020 80030420 10000035 */  b     .L800304F8
/* 031024 80030424 46203020 */   cvt.s.d $f0, $f6
.L80030428:
/* 031028 80030428 44824000 */  mtc1  $v0, $f8
/* 03102C 8003042C D42AD958 */  ldc1  $f10, %lo(D_800ED958)($at)
/* 031030 80030430 46000121 */  cvt.d.s $f4, $f0
/* 031034 80030434 46804421 */  cvt.d.w $f16, $f8
/* 031038 80030438 462A8482 */  mul.d $f18, $f16, $f10
/* 03103C 8003043C 46322180 */  add.d $f6, $f4, $f18
/* 031040 80030440 1000002D */  b     .L800304F8
/* 031044 80030444 46203020 */   cvt.s.d $f0, $f6
/* 031048 80030448 84EF00C0 */  lh    $t7, 0xc0($a3)
.L8003044C:
/* 03104C 8003044C 94E30254 */  lhu   $v1, 0x254($a3)
/* 031050 80030450 01E4001A */  div   $zero, $t7, $a0
/* 031054 80030454 14800002 */  bnez  $a0, .L80030460
/* 031058 80030458 00000000 */   nop   
/* 03105C 8003045C 0007000D */  break 7
.L80030460:
/* 031060 80030460 2401FFFF */  li    $at, -1
/* 031064 80030464 14810004 */  bne   $a0, $at, .L80030478
/* 031068 80030468 3C018000 */   lui   $at, 0x8000
/* 03106C 8003046C 15E10002 */  bne   $t7, $at, .L80030478
/* 031070 80030470 00000000 */   nop   
/* 031074 80030474 0006000D */  break 6
.L80030478:
/* 031078 80030478 00001012 */  mflo  $v0
/* 03107C 8003047C 0003C080 */  sll   $t8, $v1, 2
/* 031080 80030480 03001825 */  move  $v1, $t8
/* 031084 80030484 04410010 */  bgez  $v0, .L800304C8
/* 031088 80030488 3C01800F */   lui   $at, %hi(D_800ED968)
/* 03108C 8003048C 3C01800F */  lui   $at, %hi(D_800ED960)
/* 031090 80030490 D428D960 */  ldc1  $f8, %lo(D_800ED960)($at)
/* 031094 80030494 3C01800E */  lui   $at, %hi(gKartTurnSpeedReductionTable0)
/* 031098 80030498 00380821 */  addu  $at, $at, $t8
/* 03109C 8003049C C4303670 */  lwc1  $f16, %lo(gKartTurnSpeedReductionTable0)($at)
/* 0310A0 800304A0 0002C823 */  negu  $t9, $v0
/* 0310A4 800304A4 44999000 */  mtc1  $t9, $f18
/* 0310A8 800304A8 460082A1 */  cvt.d.s $f10, $f16
/* 0310AC 800304AC 468091A1 */  cvt.d.w $f6, $f18
/* 0310B0 800304B0 462A4100 */  add.d $f4, $f8, $f10
/* 0310B4 800304B4 46000221 */  cvt.d.s $f8, $f0
/* 0310B8 800304B8 46243402 */  mul.d $f16, $f6, $f4
/* 0310BC 800304BC 46304280 */  add.d $f10, $f8, $f16
/* 0310C0 800304C0 1000000D */  b     .L800304F8
/* 0310C4 800304C4 46205020 */   cvt.s.d $f0, $f10
.L800304C8:
/* 0310C8 800304C8 D432D968 */  ldc1  $f18, %lo(D_800ED968)($at)
/* 0310CC 800304CC 3C01800E */  lui   $at, %hi(gKartTurnSpeedReductionTable0)
/* 0310D0 800304D0 00230821 */  addu  $at, $at, $v1
/* 0310D4 800304D4 C4263670 */  lwc1  $f6, %lo(gKartTurnSpeedReductionTable0)($at)
/* 0310D8 800304D8 44828000 */  mtc1  $v0, $f16
/* 0310DC 800304DC 46003121 */  cvt.d.s $f4, $f6
/* 0310E0 800304E0 468082A1 */  cvt.d.w $f10, $f16
/* 0310E4 800304E4 46249200 */  add.d $f8, $f18, $f4
/* 0310E8 800304E8 460004A1 */  cvt.d.s $f18, $f0
/* 0310EC 800304EC 46285182 */  mul.d $f6, $f10, $f8
/* 0310F0 800304F0 46269100 */  add.d $f4, $f18, $f6
/* 0310F4 800304F4 46202020 */  cvt.s.d $f0, $f4
.L800304F8:
/* 0310F8 800304F8 3C032000 */  lui   $v1, 0x2000
/* 0310FC 800304FC 00A35024 */  and   $t2, $a1, $v1
/* 031100 80030500 146A0018 */  bne   $v1, $t2, .L80030564
/* 031104 80030504 00000000 */   nop   
/* 031108 80030508 84EB0228 */  lh    $t3, 0x228($a3)
/* 03110C 8003050C 2961000A */  slti  $at, $t3, 0xa
/* 031110 80030510 10200014 */  beqz  $at, .L80030564
/* 031114 80030514 00000000 */   nop   
/* 031118 80030518 0441000A */  bgez  $v0, .L80030544
/* 03111C 8003051C 00026023 */   negu  $t4, $v0
/* 031120 80030520 448C8000 */  mtc1  $t4, $f16
/* 031124 80030524 3C01800F */  lui   $at, %hi(D_800ED970)
/* 031128 80030528 D428D970 */  ldc1  $f8, %lo(D_800ED970)($at)
/* 03112C 8003052C 468082A1 */  cvt.d.w $f10, $f16
/* 031130 80030530 460001A1 */  cvt.d.s $f6, $f0
/* 031134 80030534 46285482 */  mul.d $f18, $f10, $f8
/* 031138 80030538 46323100 */  add.d $f4, $f6, $f18
/* 03113C 8003053C 10000009 */  b     .L80030564
/* 031140 80030540 46202020 */   cvt.s.d $f0, $f4
.L80030544:
/* 031144 80030544 44828000 */  mtc1  $v0, $f16
/* 031148 80030548 3C01800F */  lui   $at, %hi(D_800ED978)
/* 03114C 8003054C D428D978 */  ldc1  $f8, %lo(D_800ED978)($at)
/* 031150 80030550 468082A1 */  cvt.d.w $f10, $f16
/* 031154 80030554 460004A1 */  cvt.d.s $f18, $f0
/* 031158 80030558 46285182 */  mul.d $f6, $f10, $f8
/* 03115C 8003055C 46269100 */  add.d $f4, $f18, $f6
/* 031160 80030560 46202020 */  cvt.s.d $f0, $f4
.L80030564:
/* 031164 80030564 15280006 */  bne   $t1, $t0, .L80030580
/* 031168 80030568 3C01BFD0 */   li    $at, 0xBFD00000 # -1.625000
/* 03116C 8003056C 44815800 */  mtc1  $at, $f11
/* 031170 80030570 44805000 */  mtc1  $zero, $f10
/* 031174 80030574 46000421 */  cvt.d.s $f16, $f0
/* 031178 80030578 462A8200 */  add.d $f8, $f16, $f10
/* 03117C 8003057C 46204020 */  cvt.s.d $f0, $f8
.L80030580:
/* 031180 80030580 94E200DE */  lhu   $v0, 0xde($a3)
.L80030584:
/* 031184 80030584 24010001 */  li    $at, 1
/* 031188 80030588 83AF002F */  lb    $t7, 0x2f($sp)
/* 03118C 8003058C 304D0001 */  andi  $t5, $v0, 1
/* 031190 80030590 15A10007 */  bne   $t5, $at, .L800305B0
/* 031194 80030594 304E0002 */   andi  $t6, $v0, 2
/* 031198 80030598 3C01800F */  lui   $at, %hi(D_800ED980)
/* 03119C 8003059C D426D980 */  ldc1  $f6, %lo(D_800ED980)($at)
/* 0311A0 800305A0 460004A1 */  cvt.d.s $f18, $f0
/* 0311A4 800305A4 46269100 */  add.d $f4, $f18, $f6
/* 0311A8 800305A8 10000022 */  b     .L80030634
/* 0311AC 800305AC 46202020 */   cvt.s.d $f0, $f4
.L800305B0:
/* 0311B0 800305B0 24010002 */  li    $at, 2
/* 0311B4 800305B4 15C10006 */  bne   $t6, $at, .L800305D0
/* 0311B8 800305B8 000FC080 */   sll   $t8, $t7, 2
/* 0311BC 800305BC 3C01800F */  lui   $at, %hi(D_800ED988)
/* 0311C0 800305C0 D42AD988 */  ldc1  $f10, %lo(D_800ED988)($at)
/* 0311C4 800305C4 46000421 */  cvt.d.s $f16, $f0
/* 0311C8 800305C8 462A8200 */  add.d $f8, $f16, $f10
/* 0311CC 800305CC 46204020 */  cvt.s.d $f0, $f8
.L800305D0:
/* 0311D0 800305D0 3C01400C */  li    $at, 0x400C0000 # 2.187500
/* 0311D4 800305D4 44816800 */  mtc1  $at, $f13
/* 0311D8 800305D8 3C018016 */  lui   $at, %hi(D_801652A0)
/* 0311DC 800305DC 00380821 */  addu  $at, $at, $t8
/* 0311E0 800305E0 C42252A0 */  lwc1  $f2, %lo(D_801652A0)($at)
/* 0311E4 800305E4 C4F201D8 */  lwc1  $f18, 0x1d8($a3)
/* 0311E8 800305E8 44806000 */  mtc1  $zero, $f12
/* 0311EC 800305EC 3C01800F */  lui   $at, %hi(D_800ED990)
/* 0311F0 800305F0 46121181 */  sub.s $f6, $f2, $f18
/* 0311F4 800305F4 46003121 */  cvt.d.s $f4, $f6
/* 0311F8 800305F8 4624603E */  c.le.d $f12, $f4
/* 0311FC 800305FC 00000000 */  nop   
/* 031200 80030600 45010008 */  bc1t  .L80030624
/* 031204 80030604 00000000 */   nop   
/* 031208 80030608 C4F001F0 */  lwc1  $f16, 0x1f0($a3)
/* 03120C 8003060C 46101281 */  sub.s $f10, $f2, $f16
/* 031210 80030610 46005221 */  cvt.d.s $f8, $f10
/* 031214 80030614 4628603E */  c.le.d $f12, $f8
/* 031218 80030618 00000000 */  nop   
/* 03121C 8003061C 45000005 */  bc1f  .L80030634
/* 031220 80030620 00000000 */   nop   
.L80030624:
/* 031224 80030624 D426D990 */  ldc1  $f6, %lo(D_800ED990)($at)
/* 031228 80030628 460004A1 */  cvt.d.s $f18, $f0
/* 03122C 8003062C 46269100 */  add.d $f4, $f18, $f6
/* 031230 80030630 46202020 */  cvt.s.d $f0, $f4
.L80030634:
/* 031234 80030634 10C00013 */  beqz  $a2, .L80030684
/* 031238 80030638 24E400A0 */   addiu $a0, $a3, 0xa0
/* 03123C 8003063C C4F0008C */  lwc1  $f16, 0x8c($a3)
/* 031240 80030640 3C01800F */  lui   $at, %hi(D_800ED998)
/* 031244 80030644 D428D998 */  ldc1  $f8, %lo(D_800ED998)($at)
/* 031248 80030648 460082A1 */  cvt.d.s $f10, $f16
/* 03124C 8003064C 3C063E19 */  lui   $a2, (0x3E19999A >> 16) # lui $a2, 0x3e19
/* 031250 80030650 46285482 */  mul.d $f18, $f10, $f8
/* 031254 80030654 34C6999A */  ori   $a2, (0x3E19999A & 0xFFFF) # ori $a2, $a2, 0x999a
/* 031258 80030658 E7A00024 */  swc1  $f0, 0x24($sp)
/* 03125C 8003065C AFA70028 */  sw    $a3, 0x28($sp)
/* 031260 80030660 24E400A0 */  addiu $a0, $a3, 0xa0
/* 031264 80030664 462091A0 */  cvt.s.d $f6, $f18
/* 031268 80030668 44053000 */  mfc1  $a1, $f6
/* 03126C 8003066C 0C008973 */  jal   move_f32_towards
/* 031270 80030670 00000000 */   nop   
/* 031274 80030674 44807000 */  mtc1  $zero, $f14
/* 031278 80030678 8FA70028 */  lw    $a3, 0x28($sp)
/* 03127C 8003067C 1000002A */  b     .L80030728
/* 031280 80030680 C7A00024 */   lwc1  $f0, 0x24($sp)
.L80030684:
/* 031284 80030684 44057000 */  mfc1  $a1, $f14
/* 031288 80030688 3C063DCC */  lui   $a2, (0x3DCCCCCD >> 16) # lui $a2, 0x3dcc
/* 03128C 8003068C 34C6CCCD */  ori   $a2, (0x3DCCCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 031290 80030690 AFA70028 */  sw    $a3, 0x28($sp)
/* 031294 80030694 0C008973 */  jal   move_f32_towards
/* 031298 80030698 E7A00024 */   swc1  $f0, 0x24($sp)
/* 03129C 8003069C 8FA70028 */  lw    $a3, 0x28($sp)
/* 0312A0 800306A0 C7A00024 */  lwc1  $f0, 0x24($sp)
/* 0312A4 800306A4 44807000 */  mtc1  $zero, $f14
/* 0312A8 800306A8 10000020 */  b     .L8003072C
/* 0312AC 800306AC 94E20000 */   lhu   $v0, ($a3)
/* 0312B0 800306B0 84F900C4 */  lh    $t9, 0xc4($a3)
.L800306B4:
/* 0312B4 800306B4 240400B6 */  li    $a0, 182
/* 0312B8 800306B8 E4EE00A0 */  swc1  $f14, 0xa0($a3)
/* 0312BC 800306BC 0324001A */  div   $zero, $t9, $a0
/* 0312C0 800306C0 00005012 */  mflo  $t2
/* 0312C4 800306C4 E4EE00E8 */  swc1  $f14, 0xe8($a3)
/* 0312C8 800306C8 14800002 */  bnez  $a0, .L800306D4
/* 0312CC 800306CC 00000000 */   nop   
/* 0312D0 800306D0 0007000D */  break 7
.L800306D4:
/* 0312D4 800306D4 2401FFFF */  li    $at, -1
/* 0312D8 800306D8 14810004 */  bne   $a0, $at, .L800306EC
/* 0312DC 800306DC 3C018000 */   lui   $at, 0x8000
/* 0312E0 800306E0 17210002 */  bne   $t9, $at, .L800306EC
/* 0312E4 800306E4 00000000 */   nop   
/* 0312E8 800306E8 0006000D */  break 6
.L800306EC:
/* 0312EC 800306EC 3C01800F */  lui   $at, %hi(D_800ED9A0)
/* 0312F0 800306F0 0543000E */  bgezl $t2, .L8003072C
/* 0312F4 800306F4 94E20000 */   lhu   $v0, ($a3)
/* 0312F8 800306F8 D430D9A0 */  ldc1  $f16, %lo(D_800ED9A0)($at)
/* 0312FC 800306FC 46007121 */  cvt.d.s $f4, $f14
/* 031300 80030700 8CEB00BC */  lw    $t3, 0xbc($a3)
/* 031304 80030704 46302280 */  add.d $f10, $f4, $f16
/* 031308 80030708 3C01800F */  lui   $at, %hi(D_800ED9A8)
/* 03130C 8003070C 000B6040 */  sll   $t4, $t3, 1
/* 031310 80030710 05810005 */  bgez  $t4, .L80030728
/* 031314 80030714 46205020 */   cvt.s.d $f0, $f10
/* 031318 80030718 D432D9A8 */  ldc1  $f18, %lo(D_800ED9A8)($at)
/* 03131C 8003071C 46000221 */  cvt.d.s $f8, $f0
/* 031320 80030720 46324180 */  add.d $f6, $f8, $f18
/* 031324 80030724 46203020 */  cvt.s.d $f0, $f6
.L80030728:
/* 031328 80030728 94E20000 */  lhu   $v0, ($a3)
.L8003072C:
/* 03132C 8003072C 24014000 */  li    $at, 16384
/* 031330 80030730 304D4000 */  andi  $t5, $v0, 0x4000
/* 031334 80030734 11A1001F */  beq   $t5, $at, .L800307B4
/* 031338 80030738 01A01025 */   move  $v0, $t5
/* 03133C 8003073C 8CEE00BC */  lw    $t6, 0xbc($a3)
/* 031340 80030740 3C020020 */  lui   $v0, 0x20
/* 031344 80030744 24E400E8 */  addiu $a0, $a3, 0xe8
/* 031348 80030748 01C27824 */  and   $t7, $t6, $v0
/* 03134C 8003074C 144F000E */  bne   $v0, $t7, .L80030788
/* 031350 80030750 3C063DCC */   lui   $a2, 0x3dcc
/* 031354 80030754 24E400E8 */  addiu $a0, $a3, 0xe8
/* 031358 80030758 3C0543BE */  lui   $a1, 0x43be
/* 03135C 8003075C 3C063F00 */  lui   $a2, (0x3F00CCCD >> 16) # lui $a2, 0x3f00
/* 031360 80030760 AFA70028 */  sw    $a3, 0x28($sp)
/* 031364 80030764 0C008973 */  jal   move_f32_towards
/* 031368 80030768 E7A00024 */   swc1  $f0, 0x24($sp)
/* 03136C 8003076C 8FA70028 */  lw    $a3, 0x28($sp)
/* 031370 80030770 44807000 */  mtc1  $zero, $f14
/* 031374 80030774 C7A00024 */  lwc1  $f0, 0x24($sp)
/* 031378 80030778 94E20000 */  lhu   $v0, ($a3)
/* 03137C 8003077C 30584000 */  andi  $t8, $v0, 0x4000
/* 031380 80030780 1000000C */  b     .L800307B4
/* 031384 80030784 03001025 */   move  $v0, $t8
.L80030788:
/* 031388 80030788 44057000 */  mfc1  $a1, $f14
/* 03138C 8003078C 34C6CCCD */  ori   $a2, (0x3F00CCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 031390 80030790 AFA70028 */  sw    $a3, 0x28($sp)
/* 031394 80030794 0C008973 */  jal   move_f32_towards
/* 031398 80030798 E7A00024 */   swc1  $f0, 0x24($sp)
/* 03139C 8003079C 8FA70028 */  lw    $a3, 0x28($sp)
/* 0313A0 800307A0 44807000 */  mtc1  $zero, $f14
/* 0313A4 800307A4 C7A00024 */  lwc1  $f0, 0x24($sp)
/* 0313A8 800307A8 94E20000 */  lhu   $v0, ($a3)
/* 0313AC 800307AC 30594000 */  andi  $t9, $v0, 0x4000
/* 0313B0 800307B0 03201025 */  move  $v0, $t9
.L800307B4:
/* 0313B4 800307B4 24014000 */  li    $at, 16384
/* 0313B8 800307B8 54410032 */  bnel  $v0, $at, .L80030884
/* 0313BC 800307BC 94EE0254 */   lhu   $t6, 0x254($a3)
/* 0313C0 800307C0 8CE500BC */  lw    $a1, 0xbc($a3)
/* 0313C4 800307C4 24010100 */  li    $at, 256
/* 0313C8 800307C8 24E400E8 */  addiu $a0, $a3, 0xe8
/* 0313CC 800307CC 30AA0100 */  andi  $t2, $a1, 0x100
/* 0313D0 800307D0 1541000C */  bne   $t2, $at, .L80030804
/* 0313D4 800307D4 30AB0010 */   andi  $t3, $a1, 0x10
/* 0313D8 800307D8 24010010 */  li    $at, 16
/* 0313DC 800307DC 11610009 */  beq   $t3, $at, .L80030804
/* 0313E0 800307E0 3C054411 */   lui   $a1, 0x4411
/* 0313E4 800307E4 3C063E4C */  lui   $a2, (0x3E4CCCCD >> 16) # lui $a2, 0x3e4c
/* 0313E8 800307E8 34C6CCCD */  ori   $a2, (0x3E4CCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 0313EC 800307EC AFA70028 */  sw    $a3, 0x28($sp)
/* 0313F0 800307F0 0C008973 */  jal   move_f32_towards
/* 0313F4 800307F4 E7A00024 */   swc1  $f0, 0x24($sp)
/* 0313F8 800307F8 8FA70028 */  lw    $a3, 0x28($sp)
/* 0313FC 800307FC 10000009 */  b     .L80030824
/* 031400 80030800 C7A00024 */   lwc1  $f0, 0x24($sp)
.L80030804:
/* 031404 80030804 44057000 */  mfc1  $a1, $f14
/* 031408 80030808 3C063C23 */  lui   $a2, (0x3C23D70A >> 16) # lui $a2, 0x3c23
/* 03140C 8003080C 34C6D70A */  ori   $a2, (0x3C23D70A & 0xFFFF) # ori $a2, $a2, 0xd70a
/* 031410 80030810 AFA70028 */  sw    $a3, 0x28($sp)
/* 031414 80030814 0C008973 */  jal   move_f32_towards
/* 031418 80030818 E7A00024 */   swc1  $f0, 0x24($sp)
/* 03141C 8003081C 8FA70028 */  lw    $a3, 0x28($sp)
/* 031420 80030820 C7A00024 */  lwc1  $f0, 0x24($sp)
.L80030824:
/* 031424 80030824 8CEC00BC */  lw    $t4, 0xbc($a3)
/* 031428 80030828 3C010020 */  lui   $at, 0x20
/* 03142C 8003082C 24E400E4 */  addiu $a0, $a3, 0xe4
/* 031430 80030830 01816824 */  and   $t5, $t4, $at
/* 031434 80030834 15A1000B */  bne   $t5, $at, .L80030864
/* 031438 80030838 24050000 */   li    $a1, 0
/* 03143C 8003083C 3C063C23 */  lui   $a2, (0x3C23D70A >> 16) # lui $a2, 0x3c23
/* 031440 80030840 34C6D70A */  ori   $a2, (0x3C23D70A & 0xFFFF) # ori $a2, $a2, 0xd70a
/* 031444 80030844 24E400E4 */  addiu $a0, $a3, 0xe4
/* 031448 80030848 3C054411 */  lui   $a1, 0x4411
/* 03144C 8003084C AFA70028 */  sw    $a3, 0x28($sp)
/* 031450 80030850 0C008973 */  jal   move_f32_towards
/* 031454 80030854 E7A00024 */   swc1  $f0, 0x24($sp)
/* 031458 80030858 8FA70028 */  lw    $a3, 0x28($sp)
/* 03145C 8003085C 10000008 */  b     .L80030880
/* 031460 80030860 C7A00024 */   lwc1  $f0, 0x24($sp)
.L80030864:
/* 031464 80030864 3C063C23 */  lui   $a2, (0x3C23D70A >> 16) # lui $a2, 0x3c23
/* 031468 80030868 34C6D70A */  ori   $a2, (0x3C23D70A & 0xFFFF) # ori $a2, $a2, 0xd70a
/* 03146C 8003086C AFA70028 */  sw    $a3, 0x28($sp)
/* 031470 80030870 0C008973 */  jal   move_f32_towards
/* 031474 80030874 E7A00024 */   swc1  $f0, 0x24($sp)
/* 031478 80030878 8FA70028 */  lw    $a3, 0x28($sp)
/* 03147C 8003087C C7A00024 */  lwc1  $f0, 0x24($sp)
.L80030880:
/* 031480 80030880 94EE0254 */  lhu   $t6, 0x254($a3)
.L80030884:
/* 031484 80030884 3C01800E */  lui   $at, %hi(gKartTurnSpeedReductionTable1)
/* 031488 80030888 44050000 */  mfc1  $a1, $f0
/* 03148C 8003088C 000E7880 */  sll   $t7, $t6, 2
/* 031490 80030890 002F0821 */  addu  $at, $at, $t7
/* 031494 80030894 C4243690 */  lwc1  $f4, %lo(gKartTurnSpeedReductionTable1)($at)
/* 031498 80030898 3C01800F */  lui   $at, %hi(D_800ED9B0)
/* 03149C 8003089C D42AD9B0 */  ldc1  $f10, %lo(D_800ED9B0)($at)
/* 0314A0 800308A0 46002421 */  cvt.d.s $f16, $f4
/* 0314A4 800308A4 AFA70028 */  sw    $a3, 0x28($sp)
/* 0314A8 800308A8 462A8200 */  add.d $f8, $f16, $f10
/* 0314AC 800308AC 24E40104 */  addiu $a0, $a3, 0x104
/* 0314B0 800308B0 462044A0 */  cvt.s.d $f18, $f8
/* 0314B4 800308B4 44069000 */  mfc1  $a2, $f18
/* 0314B8 800308B8 0C008973 */  jal   move_f32_towards
/* 0314BC 800308BC 00000000 */   nop   
/* 0314C0 800308C0 8FA70028 */  lw    $a3, 0x28($sp)
/* 0314C4 800308C4 C4E0008C */  lwc1  $f0, 0x8c($a3)
/* 0314C8 800308C8 C4E600E8 */  lwc1  $f6, 0xe8($a3)
/* 0314CC 800308CC C4EC0080 */  lwc1  $f12, 0x80($a3)
/* 0314D0 800308D0 C4EA00E4 */  lwc1  $f10, 0xe4($a3)
/* 0314D4 800308D4 46060100 */  add.s $f4, $f0, $f6
/* 0314D8 800308D8 C4F200A0 */  lwc1  $f18, 0xa0($a3)
/* 0314DC 800308DC 44803000 */  mtc1  $zero, $f6
/* 0314E0 800308E0 460C2400 */  add.s $f16, $f4, $f12
/* 0314E4 800308E4 460A8200 */  add.s $f8, $f16, $f10
/* 0314E8 800308E8 46124081 */  sub.s $f2, $f8, $f18
/* 0314EC 800308EC 4606103C */  c.lt.s $f2, $f6
/* 0314F0 800308F0 00000000 */  nop   
/* 0314F4 800308F4 45020004 */  bc1fl .L80030908
/* 0314F8 800308F8 84E200CA */   lh    $v0, 0xca($a3)
/* 0314FC 800308FC 44801000 */  mtc1  $zero, $f2
/* 031500 80030900 00000000 */  nop   
/* 031504 80030904 84E200CA */  lh    $v0, 0xca($a3)
.L80030908:
/* 031508 80030908 24010002 */  li    $at, 2
/* 03150C 8003090C 30580002 */  andi  $t8, $v0, 2
/* 031510 80030910 13010008 */  beq   $t8, $at, .L80030934
/* 031514 80030914 30590008 */   andi  $t9, $v0, 8
/* 031518 80030918 24010008 */  li    $at, 8
/* 03151C 8003091C 53210006 */  beql  $t9, $at, .L80030938
/* 031520 80030920 3C013F80 */   lui   $at, 0x3f80
/* 031524 80030924 94EA0000 */  lhu   $t2, ($a3)
/* 031528 80030928 24012000 */  li    $at, 8192
/* 03152C 8003092C 314B2000 */  andi  $t3, $t2, 0x2000
/* 031530 80030930 15610007 */  bne   $t3, $at, .L80030950
.L80030934:
/* 031534 80030934 3C013F80 */   li    $at, 0x3F800000 # 1.000000
.L80030938:
/* 031538 80030938 44812000 */  mtc1  $at, $f4
/* 03153C 8003093C C4F00104 */  lwc1  $f16, 0x104($a3)
/* 031540 80030940 46102281 */  sub.s $f10, $f4, $f16
/* 031544 80030944 46025002 */  mul.s $f0, $f10, $f2
/* 031548 80030948 10000037 */  b     .L80030A28
/* 03154C 8003094C 8FBF0014 */   lw    $ra, 0x14($sp)
.L80030950:
/* 031550 80030950 8CE500BC */  lw    $a1, 0xbc($a3)
/* 031554 80030954 24010080 */  li    $at, 128
/* 031558 80030958 30AC0080 */  andi  $t4, $a1, 0x80
/* 03155C 8003095C 1181000A */  beq   $t4, $at, .L80030988
/* 031560 80030960 30AD0040 */   andi  $t5, $a1, 0x40
/* 031564 80030964 24010040 */  li    $at, 64
/* 031568 80030968 11A10007 */  beq   $t5, $at, .L80030988
/* 03156C 8003096C 3C020100 */   lui   $v0, 0x100
/* 031570 80030970 00A27024 */  and   $t6, $a1, $v0
/* 031574 80030974 104E0004 */  beq   $v0, $t6, .L80030988
/* 031578 80030978 3C020200 */   lui   $v0, 0x200
/* 03157C 8003097C 00A27824 */  and   $t7, $a1, $v0
/* 031580 80030980 144F0008 */  bne   $v0, $t7, .L800309A4
/* 031584 80030984 30B82000 */   andi  $t8, $a1, 0x2000
.L80030988:
/* 031588 80030988 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 03158C 8003098C 44814000 */  mtc1  $at, $f8
/* 031590 80030990 C4F20104 */  lwc1  $f18, 0x104($a3)
/* 031594 80030994 46124181 */  sub.s $f6, $f8, $f18
/* 031598 80030998 46023002 */  mul.s $f0, $f6, $f2
/* 03159C 8003099C 10000022 */  b     .L80030A28
/* 0315A0 800309A0 8FBF0014 */   lw    $ra, 0x14($sp)
.L800309A4:
/* 0315A4 800309A4 24012000 */  li    $at, 8192
/* 0315A8 800309A8 13010007 */  beq   $t8, $at, .L800309C8
/* 0315AC 800309AC 3C020010 */   lui   $v0, 0x10
/* 0315B0 800309B0 00A2C824 */  and   $t9, $a1, $v0
/* 0315B4 800309B4 10590004 */  beq   $v0, $t9, .L800309C8
/* 0315B8 800309B8 30AA0004 */   andi  $t2, $a1, 4
/* 0315BC 800309BC 24010004 */  li    $at, 4
/* 0315C0 800309C0 1541000C */  bne   $t2, $at, .L800309F4
/* 0315C4 800309C4 00E02025 */   move  $a0, $a3
.L800309C8:
/* 0315C8 800309C8 46006100 */  add.s $f4, $f12, $f0
/* 0315CC 800309CC 00E02025 */  move  $a0, $a3
/* 0315D0 800309D0 AFA70028 */  sw    $a3, 0x28($sp)
/* 0315D4 800309D4 44052000 */  mfc1  $a1, $f4
/* 0315D8 800309D8 0C00BFA1 */  jal   func_8002FE84
/* 0315DC 800309DC 00000000 */   nop   
/* 0315E0 800309E0 8FA70028 */  lw    $a3, 0x28($sp)
/* 0315E4 800309E4 C4F00080 */  lwc1  $f16, 0x80($a3)
/* 0315E8 800309E8 C4EA008C */  lwc1  $f10, 0x8c($a3)
/* 0315EC 800309EC 1000000D */  b     .L80030A24
/* 0315F0 800309F0 460A8000 */   add.s $f0, $f16, $f10
.L800309F4:
/* 0315F4 800309F4 44051000 */  mfc1  $a1, $f2
/* 0315F8 800309F8 AFA70028 */  sw    $a3, 0x28($sp)
/* 0315FC 800309FC 0C00BFA1 */  jal   func_8002FE84
/* 031600 80030A00 E7A2001C */   swc1  $f2, 0x1c($sp)
/* 031604 80030A04 8FA70028 */  lw    $a3, 0x28($sp)
/* 031608 80030A08 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 03160C 80030A0C 44814000 */  mtc1  $at, $f8
/* 031610 80030A10 C4F20104 */  lwc1  $f18, 0x104($a3)
/* 031614 80030A14 C7A2001C */  lwc1  $f2, 0x1c($sp)
/* 031618 80030A18 46124181 */  sub.s $f6, $f8, $f18
/* 03161C 80030A1C 46023002 */  mul.s $f0, $f6, $f2
/* 031620 80030A20 00000000 */  nop   
.L80030A24:
/* 031624 80030A24 8FBF0014 */  lw    $ra, 0x14($sp)
.L80030A28:
/* 031628 80030A28 27BD0028 */  addiu $sp, $sp, 0x28
/* 03162C 80030A2C 03E00008 */  jr    $ra
/* 031630 80030A30 00000000 */   nop   
