glabel func_800132F4
/* 013EF4 800132F4 3C058016 */  lui   $a1, %hi(D_801637C0) # $a1, 0x8016
/* 013EF8 800132F8 3C01800F */  lui   $at, %hi(D_800ED128) # $at, 0x800f
/* 013EFC 800132FC 3C0B8016 */  lui   $t3, %hi(D_801637EC) # $t3, 0x8016
/* 013F00 80013300 3C0A8019 */  lui   $t2, %hi(D_8018EDF3) # $t2, 0x8019
/* 013F04 80013304 3C088016 */  lui   $t0, %hi(D_80162EB2) # $t0, 0x8016
/* 013F08 80013308 3C078016 */  lui   $a3, %hi(D_80163598) # $a3, 0x8016
/* 013F0C 8001330C 44800000 */  mtc1  $zero, $f0
/* 013F10 80013310 24E73598 */  addiu $a3, %lo(D_80163598) # addiu $a3, $a3, 0x3598
/* 013F14 80013314 25082EB2 */  addiu $t0, %lo(D_80162EB2) # addiu $t0, $t0, 0x2eb2
/* 013F18 80013318 254AEDF3 */  addiu $t2, %lo(D_8018EDF3) # addiu $t2, $t2, -0x120d
/* 013F1C 8001331C 256B37EC */  addiu $t3, %lo(D_801637EC) # addiu $t3, $t3, 0x37ec
/* 013F20 80013320 C422D128 */  lwc1  $f2, %lo(D_800ED128)($at)
/* 013F24 80013324 24A537C0 */  addiu $a1, %lo(D_801637C0) # addiu $a1, $a1, 0x37c0
/* 013F28 80013328 00001825 */  move  $v1, $zero
/* 013F2C 8001332C 240C0001 */  li    $t4, 1
/* 013F30 80013330 2409FFFF */  li    $t1, -1
.L80013334:
/* 013F34 80013334 8CF80000 */  lw    $t8, ($a3)
/* 013F38 80013338 306EFFFF */  andi  $t6, $v1, 0xffff
/* 013F3C 8001333C 000E7880 */  sll   $t7, $t6, 2
/* 013F40 80013340 01F83021 */  addu  $a2, $t7, $t8
/* 013F44 80013344 84D90000 */  lh    $t9, ($a2)
/* 013F48 80013348 850D0000 */  lh    $t5, ($t0)
/* 013F4C 8001334C 814F0000 */  lb    $t7, ($t2)
/* 013F50 80013350 44992000 */  mtc1  $t9, $f4
/* 013F54 80013354 448D4000 */  mtc1  $t5, $f8
/* 013F58 80013358 29E10003 */  slti  $at, $t7, 3
/* 013F5C 8001335C 468021A0 */  cvt.s.w $f6, $f4
/* 013F60 80013360 00A02025 */  move  $a0, $a1
/* 013F64 80013364 468042A0 */  cvt.s.w $f10, $f8
/* 013F68 80013368 E4A60004 */  swc1  $f6, 4($a1)
/* 013F6C 8001336C E4AA0008 */  swc1  $f10, 8($a1)
/* 013F70 80013370 84CE0002 */  lh    $t6, 2($a2)
/* 013F74 80013374 A4A3001C */  sh    $v1, 0x1c($a1)
/* 013F78 80013378 246300B4 */  addiu $v1, $v1, 0xb4
/* 013F7C 8001337C 448E8000 */  mtc1  $t6, $f16
/* 013F80 80013380 A4A9001E */  sh    $t1, 0x1e($a1)
/* 013F84 80013384 468084A0 */  cvt.s.w $f18, $f16
/* 013F88 80013388 14200003 */  bnez  $at, .L80013398
/* 013F8C 8001338C E4B2000C */   swc1  $f18, 0xc($a1)
/* 013F90 80013390 10000002 */  b     .L8001339C
/* 013F94 80013394 A4A00000 */   sh    $zero, ($a1)
.L80013398:
/* 013F98 80013398 A4AC0000 */  sh    $t4, ($a1)
.L8001339C:
/* 013F9C 8001339C 24A5002C */  addiu $a1, $a1, 0x2c
/* 013FA0 800133A0 E4800010 */  swc1  $f0, 0x10($a0)
/* 013FA4 800133A4 E4800014 */  swc1  $f0, 0x14($a0)
/* 013FA8 800133A8 E4800018 */  swc1  $f0, 0x18($a0)
/* 013FAC 800133AC E4820020 */  swc1  $f2, 0x20($a0)
/* 013FB0 800133B0 14ABFFE0 */  bne   $a1, $t3, .L80013334
/* 013FB4 800133B4 A4800024 */   sh    $zero, 0x24($a0)
/* 013FB8 800133B8 3C018016 */  lui   $at, %hi(D_801630FC) # 0x8016
/* 013FBC 800133BC 03E00008 */  jr    $ra
/* 013FC0 800133C0 A42030FC */   sh    $zero, %lo(D_801630FC)($at) # 0x30fc($at)
