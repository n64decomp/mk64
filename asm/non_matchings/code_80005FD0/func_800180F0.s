glabel func_800180F0
/* 018CF0 800180F0 27BDFF60 */  addiu $sp, $sp, -0xa0
/* 018CF4 800180F4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 018CF8 800180F8 AFB10020 */  sw    $s1, 0x20($sp)
/* 018CFC 800180FC AFB0001C */  sw    $s0, 0x1c($sp)
/* 018D00 80018100 AFA500A4 */  sw    $a1, 0xa4($sp)
/* 018D04 80018104 AFA600A8 */  sw    $a2, 0xa8($sp)
/* 018D08 80018108 AFA700AC */  sw    $a3, 0xac($sp)
/* 018D0C 8001810C 848200AE */  lh    $v0, 0xae($a0)
/* 018D10 80018110 3C018016 */  lui   $at, %hi(D_80163068)
/* 018D14 80018114 00076880 */  sll   $t5, $a3, 2
/* 018D18 80018118 0002C080 */  sll   $t8, $v0, 2
/* 018D1C 8001811C 00380821 */  addu  $at, $at, $t8
/* 018D20 80018120 C4243068 */  lwc1  $f4, %lo(D_80163068)($at)
/* 018D24 80018124 3C0F8016 */  lui   $t7, %hi(D_80164688) # $t7, 0x8016
/* 018D28 80018128 3C198016 */  lui   $t9, %hi(D_80164648) # $t9, 0x8016
/* 018D2C 8001812C 3C11800E */  lui   $s1, %hi(gPlayerOne)
/* 018D30 80018130 25EF4688 */  addiu $t7, %lo(D_80164688) # addiu $t7, $t7, 0x4688
/* 018D34 80018134 27394648 */  addiu $t9, %lo(D_80164648) # addiu $t9, $t9, 0x4648
/* 018D38 80018138 3C188016 */  lui   $t8, %hi(D_80164658) # $t8, 0x8016
/* 018D3C 8001813C 8E31C4DC */  lw    $s1, %lo(gPlayerOne)($s1)
/* 018D40 80018140 01AF2821 */  addu  $a1, $t5, $t7
/* 018D44 80018144 27184658 */  addiu $t8, %lo(D_80164658) # addiu $t8, $t8, 0x4658
/* 018D48 80018148 01B97021 */  addu  $t6, $t5, $t9
/* 018D4C 8001814C AFAE003C */  sw    $t6, 0x3c($sp)
/* 018D50 80018150 01B81821 */  addu  $v1, $t5, $t8
/* 018D54 80018154 E4A40000 */  swc1  $f4, ($a1)
/* 018D58 80018158 C5D00000 */  lwc1  $f16, ($t6)
/* 018D5C 8001815C C4660000 */  lwc1  $f6, ($v1)
/* 018D60 80018160 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 018D64 80018164 44815000 */  mtc1  $at, $f10
/* 018D68 80018168 46103201 */  sub.s $f8, $f6, $f16
/* 018D6C 8001816C 3C018016 */  lui   $at, %hi(D_80163238) # $at, 0x8016
/* 018D70 80018170 3C1F8016 */  lui   $ra, %hi(D_801645B0) # 0x8016
/* 018D74 80018174 00025040 */  sll   $t2, $v0, 1
/* 018D78 80018178 460A4102 */  mul.s $f4, $f8, $f10
/* 018D7C 8001817C 03EAF821 */  addu  $ra, $ra, $t2
/* 018D80 80018180 000258C0 */  sll   $t3, $v0, 3
/* 018D84 80018184 01625823 */  subu  $t3, $t3, $v0
/* 018D88 80018188 000B5900 */  sll   $t3, $t3, 4
/* 018D8C 8001818C 3C0C8016 */  lui   $t4, %hi(D_801645C8) # 0x8016
/* 018D90 80018190 01625823 */  subu  $t3, $t3, $v0
/* 018D94 80018194 46048180 */  add.s $f6, $f16, $f4
/* 018D98 80018198 000B5880 */  sll   $t3, $t3, 2
/* 018D9C 8001819C 3C188016 */  lui   $t8, %hi(D_80164668) # $t8, 0x8016
/* 018DA0 800181A0 27184668 */  addiu $t8, %lo(D_80164668) # addiu $t8, $t8, 0x4668
/* 018DA4 800181A4 E5C60000 */  swc1  $f6, ($t6)
/* 018DA8 800181A8 AC223238 */  sw    $v0, %lo(D_80163238)($at)
/* 018DAC 800181AC 8C860008 */  lw    $a2, 8($a0)
/* 018DB0 800181B0 C48E0004 */  lwc1  $f14, 4($a0)
/* 018DB4 800181B4 C48C0000 */  lwc1  $f12, ($a0)
/* 018DB8 800181B8 97FF45B0 */  lhu   $ra, %lo(D_801645B0)($ra) # 0x45b0($ra)
/* 018DBC 800181BC 8FA800AC */  lw    $t0, 0xac($sp)
/* 018DC0 800181C0 01625823 */  subu  $t3, $t3, $v0
/* 018DC4 800181C4 001FC840 */  sll   $t9, $ra, 1
/* 018DC8 800181C8 01996021 */  addu  $t4, $t4, $t9
/* 018DCC 800181CC 958C45C8 */  lhu   $t4, %lo(D_801645C8)($t4) # 0x45c8($t4)
/* 018DD0 800181D0 00087040 */  sll   $t6, $t0, 1
/* 018DD4 800181D4 000B58C0 */  sll   $t3, $t3, 3
/* 018DD8 800181D8 01D84821 */  addu  $t1, $t6, $t8
/* 018DDC 800181DC AFBF0010 */  sw    $ra, 0x10($sp)
/* 018DE0 800181E0 AFBF0050 */  sw    $ra, 0x50($sp)
/* 018DE4 800181E4 00808025 */  move  $s0, $a0
/* 018DE8 800181E8 85270000 */  lh    $a3, ($t1)
/* 018DEC 800181EC AFA90028 */  sw    $t1, 0x28($sp)
/* 018DF0 800181F0 AFAB0030 */  sw    $t3, 0x30($sp)
/* 018DF4 800181F4 01C04025 */  move  $t0, $t6
/* 018DF8 800181F8 AFAE002C */  sw    $t6, 0x2c($sp)
/* 018DFC 800181FC AFAD0044 */  sw    $t5, 0x44($sp)
/* 018E00 80018200 AFAA0034 */  sw    $t2, 0x34($sp)
/* 018E04 80018204 AFA50040 */  sw    $a1, 0x40($sp)
/* 018E08 80018208 AFA30038 */  sw    $v1, 0x38($sp)
/* 018E0C 8001820C 022B8821 */  addu  $s1, $s1, $t3
/* 018E10 80018210 0C0034CF */  jal   func_8000D33C
/* 018E14 80018214 AFAC004C */   sw    $t4, 0x4c($sp)
/* 018E18 80018218 8FAA0034 */  lw    $t2, 0x34($sp)
/* 018E1C 8001821C 8FBF0028 */  lw    $ra, 0x28($sp)
/* 018E20 80018220 3C0F8016 */  lui   $t7, %hi(D_80164438) # 0x8016
/* 018E24 80018224 01EA7821 */  addu  $t7, $t7, $t2
/* 018E28 80018228 A7E20000 */  sh    $v0, ($ra)
/* 018E2C 8001822C 8FAC004C */  lw    $t4, 0x4c($sp)
/* 018E30 80018230 95EF4438 */  lhu   $t7, %lo(D_80164438)($t7) # 0x4438($t7)
/* 018E34 80018234 87E90000 */  lh    $t1, ($ra)
/* 018E38 80018238 8FA30038 */  lw    $v1, 0x38($sp)
/* 018E3C 8001823C 01ECC821 */  addu  $t9, $t7, $t4
/* 018E40 80018240 272EFFFE */  addiu $t6, $t9, -2
/* 018E44 80018244 01CC001A */  div   $zero, $t6, $t4
/* 018E48 80018248 00007810 */  mfhi  $t7
/* 018E4C 8001824C 8FAB0030 */  lw    $t3, 0x30($sp)
/* 018E50 80018250 8FAD0044 */  lw    $t5, 0x44($sp)
/* 018E54 80018254 15800002 */  bnez  $t4, .L80018260
/* 018E58 80018258 00000000 */   nop
/* 018E5C 8001825C 0007000D */  break 7
.L80018260:
/* 018E60 80018260 2401FFFF */  li    $at, -1
/* 018E64 80018264 15810004 */  bne   $t4, $at, .L80018278
/* 018E68 80018268 3C018000 */   lui   $at, 0x8000
/* 018E6C 8001826C 15C10002 */  bne   $t6, $at, .L80018278
/* 018E70 80018270 00000000 */   nop
/* 018E74 80018274 0006000D */  break 6
.L80018278:
/* 018E78 80018278 31E4FFFF */  andi  $a0, $t7, 0xffff
/* 018E7C 8001827C A7AF009C */  sh    $t7, 0x9c($sp)
/* 018E80 80018280 24060001 */  li    $a2, 1
/* 018E84 80018284 2407000A */  li    $a3, 10
/* 018E88 80018288 AFAC0010 */  sw    $t4, 0x10($sp)
/* 018E8C 8001828C 3125FFFF */  andi  $a1, $t1, 0xffff
/* 018E90 80018290 0C001EFE */  jal   func_80007BF8
/* 018E94 80018294 A7A9009E */   sh    $t1, 0x9e($sp)
/* 018E98 80018298 8FA30038 */  lw    $v1, 0x38($sp)
/* 018E9C 8001829C 87A8009C */  lh    $t0, 0x9c($sp)
/* 018EA0 800182A0 87A9009E */  lh    $t1, 0x9e($sp)
/* 018EA4 800182A4 8FAB0030 */  lw    $t3, 0x30($sp)
/* 018EA8 800182A8 8FAC004C */  lw    $t4, 0x4c($sp)
/* 018EAC 800182AC 1C40000E */  bgtz  $v0, .L800182E8
/* 018EB0 800182B0 8FAD0044 */   lw    $t5, 0x44($sp)
/* 018EB4 800182B4 8FB90040 */  lw    $t9, 0x40($sp)
/* 018EB8 800182B8 8FAE002C */  lw    $t6, 0x2c($sp)
/* 018EBC 800182BC 3C068016 */  lui   $a2, %hi(D_80164680) # 0x8016
/* 018EC0 800182C0 8F250000 */  lw    $a1, ($t9)
/* 018EC4 800182C4 00CE3021 */  addu  $a2, $a2, $t6
/* 018EC8 800182C8 84C64680 */  lh    $a2, %lo(D_80164680)($a2) # 0x4680($a2)
/* 018ECC 800182CC AFAD0044 */  sw    $t5, 0x44($sp)
/* 018ED0 800182D0 AFAC004C */  sw    $t4, 0x4c($sp)
/* 018ED4 800182D4 0C0068D2 */  jal   func_8001A348
/* 018ED8 800182D8 8FA400AC */   lw    $a0, 0xac($sp)
/* 018EDC 800182DC 8FAC004C */  lw    $t4, 0x4c($sp)
/* 018EE0 800182E0 10000036 */  b     .L800183BC
/* 018EE4 800182E4 8FAD0044 */   lw    $t5, 0x44($sp)
.L800182E8:
/* 018EE8 800182E8 0128082A */  slt   $at, $t1, $t0
/* 018EEC 800182EC 5020000E */  beql  $at, $zero, .L80018328
/* 018EF0 800182F0 0109082A */   slt   $at, $t0, $t1
/* 018EF4 800182F4 0109C023 */  subu  $t8, $t0, $t1
/* 018EF8 800182F8 2B010003 */  slti  $at, $t8, 3
/* 018EFC 800182FC 10200009 */  beqz  $at, .L80018324
/* 018F00 80018300 3C01800F */   lui   $at, %hi(gPlayers+0x94)
/* 018F04 80018304 002B0821 */  addu  $at, $at, $t3
/* 018F08 80018308 C4286A24 */  lwc1  $f8, %lo(gPlayers+0x94)($at)
/* 018F0C 8001830C 3C01800F */  lui   $at, %hi(D_800ED298)
/* 018F10 80018310 D424D298 */  ldc1  $f4, %lo(D_800ED298)($at)
/* 018F14 80018314 460042A1 */  cvt.d.s $f10, $f8
/* 018F18 80018318 46245180 */  add.d $f6, $f10, $f4
/* 018F1C 8001831C 46203220 */  cvt.s.d $f8, $f6
/* 018F20 80018320 E4680000 */  swc1  $f8, ($v1)
.L80018324:
/* 018F24 80018324 0109082A */  slt   $at, $t0, $t1
.L80018328:
/* 018F28 80018328 5020000E */  beql  $at, $zero, .L80018364
/* 018F2C 8001832C C4640000 */   lwc1  $f4, ($v1)
/* 018F30 80018330 01287823 */  subu  $t7, $t1, $t0
/* 018F34 80018334 29E10003 */  slti  $at, $t7, 3
/* 018F38 80018338 10200009 */  beqz  $at, .L80018360
/* 018F3C 8001833C 3C01800F */   lui   $at, %hi(gPlayers+0x94)
/* 018F40 80018340 002B0821 */  addu  $at, $at, $t3
/* 018F44 80018344 C42A6A24 */  lwc1  $f10, %lo(gPlayers+0x94)($at)
/* 018F48 80018348 3C01800F */  lui   $at, %hi(D_800ED2A0)
/* 018F4C 8001834C D426D2A0 */  ldc1  $f6, %lo(D_800ED2A0)($at)
/* 018F50 80018350 46005121 */  cvt.d.s $f4, $f10
/* 018F54 80018354 46262201 */  sub.d $f8, $f4, $f6
/* 018F58 80018358 462042A0 */  cvt.s.d $f10, $f8
/* 018F5C 8001835C E46A0000 */  swc1  $f10, ($v1)
.L80018360:
/* 018F60 80018360 C4640000 */  lwc1  $f4, ($v1)
.L80018364:
/* 018F64 80018364 3C014024 */  li    $at, 0x40240000 # 2.562500
/* 018F68 80018368 44813800 */  mtc1  $at, $f7
/* 018F6C 8001836C 44803000 */  mtc1  $zero, $f6
/* 018F70 80018370 46002021 */  cvt.d.s $f0, $f4
/* 018F74 80018374 44802000 */  mtc1  $zero, $f4
/* 018F78 80018378 4620303C */  c.lt.d $f6, $f0
/* 018F7C 8001837C 44802800 */  mtc1  $zero, $f5
/* 018F80 80018380 45020008 */  bc1fl .L800183A4
/* 018F84 80018384 4624003C */   c.lt.d $f0, $f4
/* 018F88 80018388 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 018F8C 8001838C 44814000 */  mtc1  $at, $f8
/* 018F90 80018390 00000000 */  nop
/* 018F94 80018394 E4680000 */  swc1  $f8, ($v1)
/* 018F98 80018398 C46A0000 */  lwc1  $f10, ($v1)
/* 018F9C 8001839C 46005021 */  cvt.d.s $f0, $f10
/* 018FA0 800183A0 4624003C */  c.lt.d $f0, $f4
.L800183A4:
/* 018FA4 800183A4 00000000 */  nop
/* 018FA8 800183A8 45020005 */  bc1fl .L800183C0
/* 018FAC 800183AC 8FB90028 */   lw    $t9, 0x28($sp)
/* 018FB0 800183B0 44803000 */  mtc1  $zero, $f6
/* 018FB4 800183B4 00000000 */  nop
/* 018FB8 800183B8 E4660000 */  swc1  $f6, ($v1)
.L800183BC:
/* 018FBC 800183BC 8FB90028 */  lw    $t9, 0x28($sp)
.L800183C0:
/* 018FC0 800183C0 87A60052 */  lh    $a2, 0x52($sp)
/* 018FC4 800183C4 87220000 */  lh    $v0, ($t9)
/* 018FC8 800183C8 244E0001 */  addiu $t6, $v0, 1
/* 018FCC 800183CC 01CC001A */  div   $zero, $t6, $t4
/* 018FD0 800183D0 00001810 */  mfhi  $v1
/* 018FD4 800183D4 24590002 */  addiu $t9, $v0, 2
/* 018FD8 800183D8 15800002 */  bnez  $t4, .L800183E4
/* 018FDC 800183DC 00000000 */   nop
/* 018FE0 800183E0 0007000D */  break 7
.L800183E4:
/* 018FE4 800183E4 2401FFFF */  li    $at, -1
/* 018FE8 800183E8 15810004 */  bne   $t4, $at, .L800183FC
/* 018FEC 800183EC 3C018000 */   lui   $at, 0x8000
/* 018FF0 800183F0 15C10002 */  bne   $t6, $at, .L800183FC
/* 018FF4 800183F4 00000000 */   nop
/* 018FF8 800183F8 0006000D */  break 6
.L800183FC:
/* 018FFC 800183FC 032C001A */  div   $zero, $t9, $t4
/* 019000 80018400 0003C400 */  sll   $t8, $v1, 0x10
/* 019004 80018404 00187C03 */  sra   $t7, $t8, 0x10
/* 019008 80018408 8FB80040 */  lw    $t8, 0x40($sp)
/* 01900C 8001840C 00007010 */  mfhi  $t6
/* 019010 80018410 A7AE0060 */  sh    $t6, 0x60($sp)
/* 019014 80018414 8F050000 */  lw    $a1, ($t8)
/* 019018 80018418 01E01825 */  move  $v1, $t7
/* 01901C 8001841C 15800002 */  bnez  $t4, .L80018428
/* 019020 80018420 00000000 */   nop
/* 019024 80018424 0007000D */  break 7
.L80018428:
/* 019028 80018428 2401FFFF */  li    $at, -1
/* 01902C 8001842C 15810004 */  bne   $t4, $at, .L80018440
/* 019030 80018430 3C018000 */   li    $at, 0x80000000 # -0.000000
/* 019034 80018434 17210002 */  bne   $t9, $at, .L80018440
/* 019038 80018438 00000000 */   nop
/* 01903C 8001843C 0006000D */  break 6
.L80018440:
/* 019040 80018440 3064FFFF */  andi  $a0, $v1, 0xffff
/* 019044 80018444 A7A30062 */  sh    $v1, 0x62($sp)
/* 019048 80018448 AFAD0044 */  sw    $t5, 0x44($sp)
/* 01904C 8001844C 0C002EF6 */  jal   func_8000BBD8
/* 019050 80018450 AFA60038 */   sw    $a2, 0x38($sp)
/* 019054 80018454 3C088016 */  lui   $t0, %hi(D_80162FA0) # $t0, 0x8016
/* 019058 80018458 25082FA0 */  addiu $t0, %lo(D_80162FA0) # addiu $t0, $t0, 0x2fa0
/* 01905C 8001845C C5080000 */  lwc1  $f8, ($t0)
/* 019060 80018460 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 019064 80018464 44810800 */  mtc1  $at, $f1
/* 019068 80018468 44800000 */  mtc1  $zero, $f0
/* 01906C 8001846C C5060008 */  lwc1  $f6, 8($t0)
/* 019070 80018470 460042A1 */  cvt.d.s $f10, $f8
/* 019074 80018474 8FAF0040 */  lw    $t7, 0x40($sp)
/* 019078 80018478 46205102 */  mul.d $f4, $f10, $f0
/* 01907C 8001847C 46003221 */  cvt.d.s $f8, $f6
/* 019080 80018480 8DE50000 */  lw    $a1, ($t7)
/* 019084 80018484 8FA60038 */  lw    $a2, 0x38($sp)
/* 019088 80018488 46204282 */  mul.d $f10, $f8, $f0
/* 01908C 8001848C 97A40060 */  lhu   $a0, 0x60($sp)
/* 019090 80018490 462020A0 */  cvt.s.d $f2, $f4
/* 019094 80018494 462053A0 */  cvt.s.d $f14, $f10
/* 019098 80018498 E7A20080 */  swc1  $f2, 0x80($sp)
/* 01909C 8001849C 0C002EF6 */  jal   func_8000BBD8
/* 0190A0 800184A0 E7AE0078 */   swc1  $f14, 0x78($sp)
/* 0190A4 800184A4 3C088016 */  lui   $t0, %hi(D_80162FA0) # $t0, 0x8016
/* 0190A8 800184A8 25082FA0 */  addiu $t0, %lo(D_80162FA0) # addiu $t0, $t0, 0x2fa0
/* 0190AC 800184AC C5060000 */  lwc1  $f6, ($t0)
/* 0190B0 800184B0 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 0190B4 800184B4 44810800 */  mtc1  $at, $f1
/* 0190B8 800184B8 44800000 */  mtc1  $zero, $f0
/* 0190BC 800184BC 46003221 */  cvt.d.s $f8, $f6
/* 0190C0 800184C0 C7A20080 */  lwc1  $f2, 0x80($sp)
/* 0190C4 800184C4 46204282 */  mul.d $f10, $f8, $f0
/* 0190C8 800184C8 8FB90050 */  lw    $t9, 0x50($sp)
/* 0190CC 800184CC 46001121 */  cvt.d.s $f4, $f2
/* 0190D0 800184D0 87B80060 */  lh    $t8, 0x60($sp)
/* 0190D4 800184D4 3C028016 */  lui   $v0, %hi(D_80164550) # 0x8016
/* 0190D8 800184D8 00197080 */  sll   $t6, $t9, 2
/* 0190DC 800184DC 004E1021 */  addu  $v0, $v0, $t6
/* 0190E0 800184E0 8C424550 */  lw    $v0, %lo(D_80164550)($v0) # 0x4550($v0)
/* 0190E4 800184E4 462A2180 */  add.d $f6, $f4, $f10
/* 0190E8 800184E8 C5040008 */  lwc1  $f4, 8($t0)
/* 0190EC 800184EC 001878C0 */  sll   $t7, $t8, 3
/* 0190F0 800184F0 87B80062 */  lh    $t8, 0x62($sp)
/* 0190F4 800184F4 460022A1 */  cvt.d.s $f10, $f4
/* 0190F8 800184F8 462030A0 */  cvt.s.d $f2, $f6
/* 0190FC 800184FC 004FC821 */  addu  $t9, $v0, $t7
/* 019100 80018500 46205182 */  mul.d $f6, $f10, $f0
/* 019104 80018504 872E0002 */  lh    $t6, 2($t9)
/* 019108 80018508 001878C0 */  sll   $t7, $t8, 3
/* 01910C 8001850C 004FC821 */  addu  $t9, $v0, $t7
/* 019110 80018510 C7AE0078 */  lwc1  $f14, 0x78($sp)
/* 019114 80018514 87380002 */  lh    $t8, 2($t9)
/* 019118 80018518 8FAD0044 */  lw    $t5, 0x44($sp)
/* 01911C 8001851C 46007221 */  cvt.d.s $f8, $f14
/* 019120 80018520 01D87821 */  addu  $t7, $t6, $t8
/* 019124 80018524 448F5000 */  mtc1  $t7, $f10
/* 019128 80018528 46264100 */  add.d $f4, $f8, $f6
/* 01912C 8001852C 44803000 */  mtc1  $zero, $f6
/* 019130 80018530 44813800 */  mtc1  $at, $f7
/* 019134 80018534 46805221 */  cvt.d.w $f8, $f10
/* 019138 80018538 3C0E8016 */  lui   $t6, %hi(D_80164618) # $t6, 0x8016
/* 01913C 8001853C 25CE4618 */  addiu $t6, %lo(D_80164618) # addiu $t6, $t6, 0x4618
/* 019140 80018540 01AE3021 */  addu  $a2, $t5, $t6
/* 019144 80018544 462023A0 */  cvt.s.d $f14, $f4
/* 019148 80018548 46264102 */  mul.d $f4, $f8, $f6
/* 01914C 8001854C C4C80000 */  lwc1  $f8, ($a2)
/* 019150 80018550 3C198016 */  lui   $t9, %hi(D_801645F8) # $t9, 0x8016
/* 019154 80018554 273945F8 */  addiu $t9, %lo(D_801645F8) # addiu $t9, $t9, 0x45f8
/* 019158 80018558 01B91821 */  addu  $v1, $t5, $t9
/* 01915C 8001855C C46A0000 */  lwc1  $f10, ($v1)
/* 019160 80018560 3C188016 */  lui   $t8, %hi(D_80164638) # $t8, 0x8016
/* 019164 80018564 27184638 */  addiu $t8, %lo(D_80164638) # addiu $t8, $t8, 0x4638
/* 019168 80018568 462024A0 */  cvt.s.d $f18, $f4
/* 01916C 8001856C 01B83821 */  addu  $a3, $t5, $t8
/* 019170 80018570 C4E40000 */  lwc1  $f4, ($a3)
/* 019174 80018574 460A1401 */  sub.s $f16, $f2, $f10
/* 019178 80018578 AFA70034 */  sw    $a3, 0x34($sp)
/* 01917C 8001857C AFA30040 */  sw    $v1, 0x40($sp)
/* 019180 80018580 46089181 */  sub.s $f6, $f18, $f8
/* 019184 80018584 E7B00074 */  swc1  $f16, 0x74($sp)
/* 019188 80018588 AFA60038 */  sw    $a2, 0x38($sp)
/* 01918C 8001858C 46047281 */  sub.s $f10, $f14, $f4
/* 019190 80018590 E7A60070 */  swc1  $f6, 0x70($sp)
/* 019194 80018594 C7A80070 */  lwc1  $f8, 0x70($sp)
/* 019198 80018598 E7AA006C */  swc1  $f10, 0x6c($sp)
/* 01919C 8001859C 46084182 */  mul.s $f6, $f8, $f8
/* 0191A0 800185A0 C7A8006C */  lwc1  $f8, 0x6c($sp)
/* 0191A4 800185A4 46108102 */  mul.s $f4, $f16, $f16
/* 0191A8 800185A8 46062280 */  add.s $f10, $f4, $f6
/* 0191AC 800185AC 46084102 */  mul.s $f4, $f8, $f8
/* 0191B0 800185B0 0C033850 */  jal   sqrtf
/* 0191B4 800185B4 46045300 */   add.s $f12, $f10, $f4
/* 0191B8 800185B8 44803800 */  mtc1  $zero, $f7
/* 0191BC 800185BC 44803000 */  mtc1  $zero, $f6
/* 0191C0 800185C0 46000221 */  cvt.d.s $f8, $f0
/* 0191C4 800185C4 8FA30040 */  lw    $v1, 0x40($sp)
/* 0191C8 800185C8 46283032 */  c.eq.d $f6, $f8
/* 0191CC 800185CC 8FA60038 */  lw    $a2, 0x38($sp)
/* 0191D0 800185D0 8FA70034 */  lw    $a3, 0x34($sp)
/* 0191D4 800185D4 8FAF003C */  lw    $t7, 0x3c($sp)
/* 0191D8 800185D8 45010012 */  bc1t  .L80018624
/* 0191DC 800185DC 3C014024 */   li    $at, 0x40240000 # 2.562500
/* 0191E0 800185E0 C5F00000 */  lwc1  $f16, ($t7)
/* 0191E4 800185E4 C7AA0074 */  lwc1  $f10, 0x74($sp)
/* 0191E8 800185E8 C4680000 */  lwc1  $f8, ($v1)
/* 0191EC 800185EC 460A8102 */  mul.s $f4, $f16, $f10
/* 0191F0 800185F0 C7AA0070 */  lwc1  $f10, 0x70($sp)
/* 0191F4 800185F4 46002183 */  div.s $f6, $f4, $f0
/* 0191F8 800185F8 460A8102 */  mul.s $f4, $f16, $f10
/* 0191FC 800185FC C7AA006C */  lwc1  $f10, 0x6c($sp)
/* 019200 80018600 46083080 */  add.s $f2, $f6, $f8
/* 019204 80018604 C4C80000 */  lwc1  $f8, ($a2)
/* 019208 80018608 46002183 */  div.s $f6, $f4, $f0
/* 01920C 8001860C 460A8102 */  mul.s $f4, $f16, $f10
/* 019210 80018610 46083480 */  add.s $f18, $f6, $f8
/* 019214 80018614 C4E80000 */  lwc1  $f8, ($a3)
/* 019218 80018618 46002183 */  div.s $f6, $f4, $f0
/* 01921C 8001861C 10000004 */  b     .L80018630
/* 019220 80018620 46083380 */   add.s $f14, $f6, $f8
.L80018624:
/* 019224 80018624 C4620000 */  lwc1  $f2, ($v1)
/* 019228 80018628 C4D20000 */  lwc1  $f18, ($a2)
/* 01922C 8001862C C4EE0000 */  lwc1  $f14, ($a3)
.L80018630:
/* 019230 80018630 E6020000 */  swc1  $f2, ($s0)
/* 019234 80018634 E60E0008 */  swc1  $f14, 8($s0)
/* 019238 80018638 C62A0018 */  lwc1  $f10, 0x18($s1)
/* 01923C 8001863C 44813800 */  mtc1  $at, $f7
/* 019240 80018640 44803000 */  mtc1  $zero, $f6
/* 019244 80018644 46005121 */  cvt.d.s $f4, $f10
/* 019248 80018648 3C014018 */  li    $at, 0x40180000 # 2.375000
/* 01924C 8001864C 46262200 */  add.d $f8, $f4, $f6
/* 019250 80018650 462042A0 */  cvt.s.d $f10, $f8
/* 019254 80018654 44815800 */  mtc1  $at, $f11
/* 019258 80018658 E60A0004 */  swc1  $f10, 4($s0)
/* 01925C 8001865C E4620000 */  swc1  $f2, ($v1)
/* 019260 80018660 E4D20000 */  swc1  $f18, ($a2)
/* 019264 80018664 E4EE0000 */  swc1  $f14, ($a3)
/* 019268 80018668 C6240014 */  lwc1  $f4, 0x14($s1)
/* 01926C 8001866C 44805000 */  mtc1  $zero, $f10
/* 019270 80018670 E604000C */  swc1  $f4, 0xc($s0)
/* 019274 80018674 C6260018 */  lwc1  $f6, 0x18($s1)
/* 019278 80018678 46003221 */  cvt.d.s $f8, $f6
/* 01927C 8001867C 462A4100 */  add.d $f4, $f8, $f10
/* 019280 80018680 462021A0 */  cvt.s.d $f6, $f4
/* 019284 80018684 E6060010 */  swc1  $f6, 0x10($s0)
/* 019288 80018688 C628001C */  lwc1  $f8, 0x1c($s1)
/* 01928C 8001868C E6080014 */  swc1  $f8, 0x14($s0)
/* 019290 80018690 8FA50050 */  lw    $a1, 0x50($sp)
/* 019294 80018694 0C00534C */  jal   func_80014D30
/* 019298 80018698 8FA400AC */   lw    $a0, 0xac($sp)
/* 01929C 8001869C C60A000C */  lwc1  $f10, 0xc($s0)
/* 0192A0 800186A0 C6040000 */  lwc1  $f4, ($s0)
/* 0192A4 800186A4 C6060010 */  lwc1  $f6, 0x10($s0)
/* 0192A8 800186A8 C6080004 */  lwc1  $f8, 4($s0)
/* 0192AC 800186AC 46045301 */  sub.s $f12, $f10, $f4
/* 0192B0 800186B0 46083281 */  sub.s $f10, $f6, $f8
/* 0192B4 800186B4 E7AA0090 */  swc1  $f10, 0x90($sp)
/* 0192B8 800186B8 C6060008 */  lwc1  $f6, 8($s0)
/* 0192BC 800186BC C6040014 */  lwc1  $f4, 0x14($s0)
/* 0192C0 800186C0 E7AC0094 */  swc1  $f12, 0x94($sp)
/* 0192C4 800186C4 46062381 */  sub.s $f14, $f4, $f6
/* 0192C8 800186C8 0C0ADE0C */  jal   func_802B7830
/* 0192CC 800186CC E7AE008C */   swc1  $f14, 0x8c($sp)
/* 0192D0 800186D0 C7A00094 */  lwc1  $f0, 0x94($sp)
/* 0192D4 800186D4 C7AE008C */  lwc1  $f14, 0x8c($sp)
/* 0192D8 800186D8 A6020026 */  sh    $v0, 0x26($s0)
/* 0192DC 800186DC 46000202 */  mul.s $f8, $f0, $f0
/* 0192E0 800186E0 00000000 */  nop
/* 0192E4 800186E4 460E7282 */  mul.s $f10, $f14, $f14
/* 0192E8 800186E8 0C033850 */  jal   sqrtf
/* 0192EC 800186EC 460A4300 */   add.s $f12, $f8, $f10
/* 0192F0 800186F0 46000306 */  mov.s $f12, $f0
/* 0192F4 800186F4 0C0ADE0C */  jal   func_802B7830
/* 0192F8 800186F8 C7AE0090 */   lwc1  $f14, 0x90($sp)
/* 0192FC 800186FC A6020024 */  sh    $v0, 0x24($s0)
/* 019300 80018700 A6000028 */  sh    $zero, 0x28($s0)
/* 019304 80018704 8FBF0024 */  lw    $ra, 0x24($sp)
/* 019308 80018708 8FB10020 */  lw    $s1, 0x20($sp)
/* 01930C 8001870C 8FB0001C */  lw    $s0, 0x1c($sp)
/* 019310 80018710 03E00008 */  jr    $ra
/* 019314 80018714 27BD00A0 */   addiu $sp, $sp, 0xa0
