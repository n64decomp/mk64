glabel func_800BA250
/* 0BAE50 800BA250 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0BAE54 800BA254 3C0E803B */  lui   $t6, %hi(D_803B0501) # $t6, 0x803b
/* 0BAE58 800BA258 91CE0501 */  lbu   $t6, %lo(D_803B0501)($t6)
/* 0BAE5C 800BA25C 3C18800F */  lui   $t8, %hi(D_800EA4D8) # $t8, 0x800f
/* 0BAE60 800BA260 AFB60030 */  sw    $s6, 0x30($sp)
/* 0BAE64 800BA264 000E7880 */  sll   $t7, $t6, 2
/* 0BAE68 800BA268 01EE7821 */  addu  $t7, $t7, $t6
/* 0BAE6C 800BA26C 000F78C0 */  sll   $t7, $t7, 3
/* 0BAE70 800BA270 2718A4D8 */  addiu $t8, %lo(D_800EA4D8) # addiu $t8, $t8, -0x5b28
/* 0BAE74 800BA274 3C01803B */  lui   $at, %hi(gSampleDmaNumListItems) # $at, 0x803b
/* 0BAE78 800BA278 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0BAE7C 800BA27C AFBE0038 */  sw    $fp, 0x38($sp)
/* 0BAE80 800BA280 AFB70034 */  sw    $s7, 0x34($sp)
/* 0BAE84 800BA284 AFB5002C */  sw    $s5, 0x2c($sp)
/* 0BAE88 800BA288 AFB40028 */  sw    $s4, 0x28($sp)
/* 0BAE8C 800BA28C AFB30024 */  sw    $s3, 0x24($sp)
/* 0BAE90 800BA290 AFB20020 */  sw    $s2, 0x20($sp)
/* 0BAE94 800BA294 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0BAE98 800BA298 AFB00018 */  sw    $s0, 0x18($sp)
/* 0BAE9C 800BA29C 01F8B021 */  addu  $s6, $t7, $t8
/* 0BAEA0 800BA2A0 AC206E58 */  sw    $zero, %lo(gSampleDmaNumListItems)($at)
/* 0BAEA4 800BA2A4 8ED90000 */  lw    $t9, ($s6)
/* 0BAEA8 800BA2A8 3C14803B */  lui   $s4, %hi(gAudioBufferParameters) # $s4, 0x803b
/* 0BAEAC 800BA2AC 26947088 */  addiu $s4, %lo(gAudioBufferParameters) # addiu $s4, $s4, 0x7088
/* 0BAEB0 800BA2B0 A6990002 */  sh    $t9, 2($s4)
/* 0BAEB4 800BA2B4 0C0343E0 */  jal   osAiSetFrequency
/* 0BAEB8 800BA2B8 3324FFFF */   andi  $a0, $t9, 0xffff
/* 0BAEBC 800BA2BC A6820004 */  sh    $v0, 4($s4)
/* 0BAEC0 800BA2C0 3C0D803B */  lui   $t5, %hi(D_803B717C) # $t5, 0x803b
/* 0BAEC4 800BA2C4 8DAD717C */  lw    $t5, %lo(D_803B717C)($t5)
/* 0BAEC8 800BA2C8 96870002 */  lhu   $a3, 2($s4)
/* 0BAECC 800BA2CC 3C0C803B */  lui   $t4, %hi(gMaxSimultaneousNotes) # $t4, 0x803b
/* 0BAED0 800BA2D0 258C70B0 */  addiu $t4, %lo(gMaxSimultaneousNotes) # addiu $t4, $t4, 0x70b0
/* 0BAED4 800BA2D4 00ED001A */  div   $zero, $a3, $t5
/* 0BAED8 800BA2D8 00007012 */  mflo  $t6
/* 0BAEDC 800BA2DC 25CF000F */  addiu $t7, $t6, 0xf
/* 0BAEE0 800BA2E0 31F8FFF0 */  andi  $t8, $t7, 0xfff0
/* 0BAEE4 800BA2E4 A6980006 */  sh    $t8, 6($s4)
/* 0BAEE8 800BA2E8 86830006 */  lh    $v1, 6($s4)
/* 0BAEEC 800BA2EC 44873000 */  mtc1  $a3, $f6
/* 0BAEF0 800BA2F0 3C04803B */  lui   $a0, %hi(D_803B0348) # $a0, 0x803b
/* 0BAEF4 800BA2F4 24680010 */  addiu $t0, $v1, 0x10
/* 0BAEF8 800BA2F8 46803220 */  cvt.s.w $f8, $f6
/* 0BAEFC 800BA2FC 2479FFF0 */  addiu $t9, $v1, -0x10
/* 0BAF00 800BA300 A699000A */  sh    $t9, 0xa($s4)
/* 0BAF04 800BA304 A6880008 */  sh    $t0, 8($s4)
/* 0BAF08 800BA308 3C12803B */  lui   $s2, %hi(D_803B70AC) # $s2, 0x803b
/* 0BAF0C 800BA30C 265270AC */  addiu $s2, %lo(D_803B70AC) # addiu $s2, $s2, 0x70ac
/* 0BAF10 800BA310 24840348 */  addiu $a0, %lo(D_803B0348) # addiu $a0, $a0, 0x348
/* 0BAF14 800BA314 15A00002 */  bnez  $t5, .L800BA320
/* 0BAF18 800BA318 00000000 */   nop   
/* 0BAF1C 800BA31C 0007000D */  break 7
.L800BA320:
/* 0BAF20 800BA320 2401FFFF */  li    $at, -1
/* 0BAF24 800BA324 15A10004 */  bne   $t5, $at, .L800BA338
/* 0BAF28 800BA328 3C018000 */   lui   $at, 0x8000
/* 0BAF2C 800BA32C 14E10002 */  bne   $a3, $at, .L800BA338
/* 0BAF30 800BA330 00000000 */   nop   
/* 0BAF34 800BA334 0006000D */  break 6
.L800BA338:
/* 0BAF38 800BA338 240100C0 */  li    $at, 192
/* 0BAF3C 800BA33C 0101001A */  div   $zero, $t0, $at
/* 0BAF40 800BA340 00006812 */  mflo  $t5
/* 0BAF44 800BA344 25AE0001 */  addiu $t6, $t5, 1
/* 0BAF48 800BA348 A68E000C */  sh    $t6, 0xc($s4)
/* 0BAF4C 800BA34C 8686000C */  lh    $a2, 0xc($s4)
/* 0BAF50 800BA350 0066001A */  div   $zero, $v1, $a2
/* 0BAF54 800BA354 14C00002 */  bnez  $a2, .L800BA360
/* 0BAF58 800BA358 00000000 */   nop   
/* 0BAF5C 800BA35C 0007000D */  break 7
.L800BA360:
/* 0BAF60 800BA360 2401FFFF */  li    $at, -1
/* 0BAF64 800BA364 14C10004 */  bne   $a2, $at, .L800BA378
/* 0BAF68 800BA368 3C018000 */   lui   $at, 0x8000
/* 0BAF6C 800BA36C 14610002 */  bne   $v1, $at, .L800BA378
/* 0BAF70 800BA370 00000000 */   nop   
/* 0BAF74 800BA374 0006000D */  break 6
.L800BA378:
/* 0BAF78 800BA378 3C0146FA */  li    $at, 0x46FA0000 # 32000.000000
/* 0BAF7C 800BA37C 44812000 */  mtc1  $at, $f4
/* 0BAF80 800BA380 00007812 */  mflo  $t7
/* 0BAF84 800BA384 31F8FFF8 */  andi  $t8, $t7, 0xfff8
/* 0BAF88 800BA388 46082283 */  div.s $f10, $f4, $f8
/* 0BAF8C 800BA38C A698000E */  sh    $t8, 0xe($s4)
/* 0BAF90 800BA390 8689000E */  lh    $t1, 0xe($s4)
/* 0BAF94 800BA394 44868000 */  mtc1  $a2, $f16
/* 0BAF98 800BA398 3C01800F */  lui   $at, %hi(D_800F2E98) # $at, 0x800f
/* 0BAF9C 800BA39C 25390008 */  addiu $t9, $t1, 8
/* 0BAFA0 800BA3A0 46808020 */  cvt.s.w $f0, $f16
/* 0BAFA4 800BA3A4 252DFFF8 */  addiu $t5, $t1, -8
/* 0BAFA8 800BA3A8 A6990010 */  sh    $t9, 0x10($s4)
/* 0BAFAC 800BA3AC A68D0012 */  sh    $t5, 0x12($s4)
/* 0BAFB0 800BA3B0 3C18800F */  lui   $t8, %hi(D_800EA5CC) # $t8, 0x800f
/* 0BAFB4 800BA3B4 240D0001 */  li    $t5, 1
/* 0BAFB8 800BA3B8 E68A0014 */  swc1  $f10, 0x14($s4)
/* 0BAFBC 800BA3BC C4322E98 */  lwc1  $f18, %lo(D_800F2E98)($at)
/* 0BAFC0 800BA3C0 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0BAFC4 800BA3C4 44812000 */  mtc1  $at, $f4
/* 0BAFC8 800BA3C8 46009183 */  div.s $f6, $f18, $f0
/* 0BAFCC 800BA3CC 3C01803B */  lui   $at, %hi(gVolume) # $at, 0x803b
/* 0BAFD0 800BA3D0 46002203 */  div.s $f8, $f4, $f0
/* 0BAFD4 800BA3D4 E686001C */  swc1  $f6, 0x1c($s4)
/* 0BAFD8 800BA3D8 E6880018 */  swc1  $f8, 0x18($s4)
/* 0BAFDC 800BA3DC 92CE0005 */  lbu   $t6, 5($s6)
/* 0BAFE0 800BA3E0 AD8E0000 */  sw    $t6, ($t4)
/* 0BAFE4 800BA3E4 96CF000C */  lhu   $t7, 0xc($s6)
/* 0BAFE8 800BA3E8 8718A5CC */  lh    $t8, %lo(D_800EA5CC)($t8)
/* 0BAFEC 800BA3EC A42FFBC0 */  sh    $t7, %lo(gVolume)($at)
/* 0BAFF0 800BA3F0 3C01800F */  lui   $at, %hi(D_800F2E9C) # $at, 0x800f
/* 0BAFF4 800BA3F4 C42A2E9C */  lwc1  $f10, %lo(D_800F2E9C)($at)
/* 0BAFF8 800BA3F8 44989000 */  mtc1  $t8, $f18
/* 0BAFFC 800BA3FC 3C01803B */  lui   $at, %hi(D_803B7178) # $at, 0x803b
/* 0BB000 800BA400 460A0402 */  mul.s $f16, $f0, $f10
/* 0BB004 800BA404 C4287178 */  lwc1  $f8, %lo(D_803B7178)($at)
/* 0BB008 800BA408 468091A0 */  cvt.s.w $f6, $f18
/* 0BB00C 800BA40C 46068103 */  div.s $f4, $f16, $f6
/* 0BB010 800BA410 46082283 */  div.s $f10, $f4, $f8
/* 0BB014 800BA414 4459F800 */  cfc1  $t9, $31
/* 0BB018 800BA418 44CDF800 */  ctc1  $t5, $31
/* 0BB01C 800BA41C 00000000 */  nop   
/* 0BB020 800BA420 460054A4 */  cvt.w.s $f18, $f10
/* 0BB024 800BA424 444DF800 */  cfc1  $t5, $31
/* 0BB028 800BA428 00000000 */  nop   
/* 0BB02C 800BA42C 31A10004 */  andi  $at, $t5, 4
/* 0BB030 800BA430 31AD0078 */  andi  $t5, $t5, 0x78
/* 0BB034 800BA434 11A00012 */  beqz  $t5, .L800BA480
/* 0BB038 800BA438 3C014F00 */   li    $at, 0x4F000000 # 2147483648.000000
/* 0BB03C 800BA43C 44819000 */  mtc1  $at, $f18
/* 0BB040 800BA440 240D0001 */  li    $t5, 1
/* 0BB044 800BA444 46125481 */  sub.s $f18, $f10, $f18
/* 0BB048 800BA448 44CDF800 */  ctc1  $t5, $31
/* 0BB04C 800BA44C 00000000 */  nop   
/* 0BB050 800BA450 460094A4 */  cvt.w.s $f18, $f18
/* 0BB054 800BA454 444DF800 */  cfc1  $t5, $31
/* 0BB058 800BA458 00000000 */  nop   
/* 0BB05C 800BA45C 31AD0078 */  andi  $t5, $t5, 0x78
/* 0BB060 800BA460 15A00005 */  bnez  $t5, .L800BA478
/* 0BB064 800BA464 00000000 */   nop   
/* 0BB068 800BA468 440D9000 */  mfc1  $t5, $f18
/* 0BB06C 800BA46C 3C018000 */  lui   $at, 0x8000
/* 0BB070 800BA470 10000007 */  b     .L800BA490
/* 0BB074 800BA474 01A16825 */   or    $t5, $t5, $at
.L800BA478:
/* 0BB078 800BA478 10000005 */  b     .L800BA490
/* 0BB07C 800BA47C 240DFFFF */   li    $t5, -1
.L800BA480:
/* 0BB080 800BA480 440D9000 */  mfc1  $t5, $f18
/* 0BB084 800BA484 00000000 */  nop   
/* 0BB088 800BA488 05A0FFFB */  bltz  $t5, .L800BA478
/* 0BB08C 800BA48C 00000000 */   nop   
.L800BA490:
/* 0BB090 800BA490 3C01803B */  lui   $at, %hi(D_803B70B4) # $at, 0x803b
/* 0BB094 800BA494 A42D70B4 */  sh    $t5, %lo(D_803B70B4)($at)
/* 0BB098 800BA498 92CE0004 */  lbu   $t6, 4($s6)
/* 0BB09C 800BA49C 86980008 */  lh    $t8, 8($s4)
/* 0BB0A0 800BA4A0 44D9F800 */  ctc1  $t9, $31
/* 0BB0A4 800BA4A4 A68E0000 */  sh    $t6, ($s4)
/* 0BB0A8 800BA4A8 86850000 */  lh    $a1, ($s4)
/* 0BB0AC 800BA4AC 868D000A */  lh    $t5, 0xa($s4)
/* 0BB0B0 800BA4B0 00650019 */  multu $v1, $a1
/* 0BB0B4 800BA4B4 00007812 */  mflo  $t7
/* 0BB0B8 800BA4B8 A68F0006 */  sh    $t7, 6($s4)
/* 0BB0BC 800BA4BC 00000000 */  nop   
/* 0BB0C0 800BA4C0 03050019 */  multu $t8, $a1
/* 0BB0C4 800BA4C4 8D980000 */  lw    $t8, ($t4)
/* 0BB0C8 800BA4C8 0000C812 */  mflo  $t9
/* 0BB0CC 800BA4CC A6990008 */  sh    $t9, 8($s4)
/* 0BB0D0 800BA4D0 0018C880 */  sll   $t9, $t8, 2
/* 0BB0D4 800BA4D4 01A50019 */  multu $t5, $a1
/* 0BB0D8 800BA4D8 0338C821 */  addu  $t9, $t9, $t8
/* 0BB0DC 800BA4DC 0019C880 */  sll   $t9, $t9, 2
/* 0BB0E0 800BA4E0 00007012 */  mflo  $t6
/* 0BB0E4 800BA4E4 A68E000A */  sh    $t6, 0xa($s4)
/* 0BB0E8 800BA4E8 00000000 */  nop   
/* 0BB0EC 800BA4EC 00C50019 */  multu $a2, $a1
/* 0BB0F0 800BA4F0 00007812 */  mflo  $t7
/* 0BB0F4 800BA4F4 A68F000C */  sh    $t7, 0xc($s4)
/* 0BB0F8 800BA4F8 868D000C */  lh    $t5, 0xc($s4)
/* 0BB0FC 800BA4FC 92CF0006 */  lbu   $t7, 6($s6)
/* 0BB100 800BA500 032D0019 */  multu $t9, $t5
/* 0BB104 800BA504 000FC140 */  sll   $t8, $t7, 5
/* 0BB108 800BA508 00007012 */  mflo  $t6
/* 0BB10C 800BA50C 01D8C821 */  addu  $t9, $t6, $t8
/* 0BB110 800BA510 272D01E0 */  addiu $t5, $t9, 0x1e0
/* 0BB114 800BA514 AE4D0000 */  sw    $t5, ($s2)
/* 0BB118 800BA518 8ECE0014 */  lw    $t6, 0x14($s6)
/* 0BB11C 800BA51C 8ECF0010 */  lw    $t7, 0x10($s6)
/* 0BB120 800BA520 8ED90018 */  lw    $t9, 0x18($s6)
/* 0BB124 800BA524 8ECD001C */  lw    $t5, 0x1c($s6)
/* 0BB128 800BA528 01EEC021 */  addu  $t8, $t7, $t6
/* 0BB12C 800BA52C 8ECF0020 */  lw    $t7, 0x20($s6)
/* 0BB130 800BA530 03198021 */  addu  $s0, $t8, $t9
/* 0BB134 800BA534 8ED80024 */  lw    $t8, 0x24($s6)
/* 0BB138 800BA538 3C19803B */  lui   $t9, %hi(D_803AFBD0) # $t9, 0x803b
/* 0BB13C 800BA53C 8F39FBD0 */  lw    $t9, %lo(D_803AFBD0)($t9)
/* 0BB140 800BA540 01AF7021 */  addu  $t6, $t5, $t7
/* 0BB144 800BA544 01D88821 */  addu  $s1, $t6, $t8
/* 0BB148 800BA548 02115021 */  addu  $t2, $s0, $s1
/* 0BB14C 800BA54C 032A5823 */  subu  $t3, $t9, $t2
/* 0BB150 800BA550 256BFF00 */  addiu $t3, $t3, -0x100
/* 0BB154 800BA554 AC8B0000 */  sw    $t3, ($a0)
/* 0BB158 800BA558 0C02E453 */  jal   func_800B914C
/* 0BB15C 800BA55C AC8A000C */   sw    $t2, 0xc($a0)
/* 0BB160 800BA560 3C04803B */  lui   $a0, %hi(D_803B0358) # $a0, 0x803b
/* 0BB164 800BA564 24840358 */  addiu $a0, %lo(D_803B0358) # addiu $a0, $a0, 0x358
/* 0BB168 800BA568 AC900000 */  sw    $s0, ($a0)
/* 0BB16C 800BA56C 0C02E472 */  jal   func_800B91C8
/* 0BB170 800BA570 AC910004 */   sw    $s1, 4($a0)
/* 0BB174 800BA574 8ECD0010 */  lw    $t5, 0x10($s6)
/* 0BB178 800BA578 3C04803B */  lui   $a0, %hi(D_803B0360) # $a0, 0x803b
/* 0BB17C 800BA57C 24840360 */  addiu $a0, %lo(D_803B0360) # addiu $a0, $a0, 0x360
/* 0BB180 800BA580 AC8D0000 */  sw    $t5, ($a0)
/* 0BB184 800BA584 8ECF0014 */  lw    $t7, 0x14($s6)
/* 0BB188 800BA588 AC8F0004 */  sw    $t7, 4($a0)
/* 0BB18C 800BA58C 8ECE0018 */  lw    $t6, 0x18($s6)
/* 0BB190 800BA590 0C02E491 */  jal   func_800B9244
/* 0BB194 800BA594 AC8E0008 */   sw    $t6, 8($a0)
/* 0BB198 800BA598 8ED8001C */  lw    $t8, 0x1c($s6)
/* 0BB19C 800BA59C 3C04803B */  lui   $a0, %hi(D_803B0370) # $a0, 0x803b
/* 0BB1A0 800BA5A0 24840370 */  addiu $a0, %lo(D_803B0370) # addiu $a0, $a0, 0x370
/* 0BB1A4 800BA5A4 AC980000 */  sw    $t8, ($a0)
/* 0BB1A8 800BA5A8 8ED90020 */  lw    $t9, 0x20($s6)
/* 0BB1AC 800BA5AC AC990004 */  sw    $t9, 4($a0)
/* 0BB1B0 800BA5B0 8ECD0024 */  lw    $t5, 0x24($s6)
/* 0BB1B4 800BA5B4 0C02E4C0 */  jal   func_800B9300
/* 0BB1B8 800BA5B8 AC8D0008 */   sw    $t5, 8($a0)
/* 0BB1BC 800BA5BC 0C02E378 */  jal   func_800B8DE0
/* 0BB1C0 800BA5C0 00000000 */   nop   
/* 0BB1C4 800BA5C4 3C05803B */  lui   $a1, %hi(gMaxSimultaneousNotes) # $a1, 0x803b
/* 0BB1C8 800BA5C8 8CA570B0 */  lw    $a1, %lo(gMaxSimultaneousNotes)($a1)
/* 0BB1CC 800BA5CC 3C13803B */  lui   $s3, %hi(gNotesAndBuffersPool) # $s3, 0x803b
/* 0BB1D0 800BA5D0 2673FBE8 */  addiu $s3, %lo(gNotesAndBuffersPool) # addiu $s3, $s3, -0x418
/* 0BB1D4 800BA5D4 00057880 */  sll   $t7, $a1, 2
/* 0BB1D8 800BA5D8 01E57823 */  subu  $t7, $t7, $a1
/* 0BB1DC 800BA5DC 000F2980 */  sll   $a1, $t7, 6
/* 0BB1E0 800BA5E0 0C02E3FF */  jal   soundAlloc
/* 0BB1E4 800BA5E4 02602025 */   move  $a0, $s3
/* 0BB1E8 800BA5E8 3C01803B */  lui   $at, %hi(D_803B1508) # $at, 0x803b
/* 0BB1EC 800BA5EC 0C02F74D */  jal   func_800BDD34
/* 0BB1F0 800BA5F0 AC221508 */   sw    $v0, %lo(D_803B1508)($at)
/* 0BB1F4 800BA5F4 0C02F4DA */  jal   func_800BD368
/* 0BB1F8 800BA5F8 00000000 */   nop   
/* 0BB1FC 800BA5FC 3C18803B */  lui   $t8, %hi(gMaxSimultaneousNotes) # $t8, 0x803b
/* 0BB200 800BA600 8F1870B0 */  lw    $t8, %lo(gMaxSimultaneousNotes)($t8)
/* 0BB204 800BA604 868E000C */  lh    $t6, 0xc($s4)
/* 0BB208 800BA608 02602025 */  move  $a0, $s3
/* 0BB20C 800BA60C 01D80019 */  multu $t6, $t8
/* 0BB210 800BA610 00002812 */  mflo  $a1
/* 0BB214 800BA614 0005C900 */  sll   $t9, $a1, 4
/* 0BB218 800BA618 0C02E3FF */  jal   soundAlloc
/* 0BB21C 800BA61C 03202825 */   move  $a1, $t9
/* 0BB220 800BA620 3C01803B */  lui   $at, %hi(gNoteSubsEu) # $at, 0x803b
/* 0BB224 800BA624 3C10803B */  lui   $s0, %hi(D_803B70C8) # $s0, 0x803b
/* 0BB228 800BA628 3C11803B */  lui   $s1, %hi(D_803B70D0) # $s1, 0x803b
/* 0BB22C 800BA62C AC22FBC4 */  sw    $v0, %lo(gNoteSubsEu)($at)
/* 0BB230 800BA630 263170D0 */  addiu $s1, %lo(D_803B70D0) # addiu $s1, $s1, 0x70d0
/* 0BB234 800BA634 261070C8 */  addiu $s0, %lo(D_803B70C8) # addiu $s0, $s0, 0x70c8
.L800BA638:
/* 0BB238 800BA638 8E450000 */  lw    $a1, ($s2)
/* 0BB23C 800BA63C 02602025 */  move  $a0, $s3
/* 0BB240 800BA640 000568C0 */  sll   $t5, $a1, 3
/* 0BB244 800BA644 0C02E3FF */  jal   soundAlloc
/* 0BB248 800BA648 01A02825 */   move  $a1, $t5
/* 0BB24C 800BA64C 26100004 */  addiu $s0, $s0, 4
/* 0BB250 800BA650 1611FFF9 */  bne   $s0, $s1, .L800BA638
/* 0BB254 800BA654 AE02FFFC */   sw    $v0, -4($s0)
/* 0BB258 800BA658 3C12803B */  lui   $s2, %hi(gSynthesisReverbs) # $s2, 0x803b
/* 0BB25C 800BA65C 3C02803B */  lui   $v0, %hi(sAudioSynthesisPad) # $v0, 0x803b
/* 0BB260 800BA660 2442FBB0 */  addiu $v0, %lo(sAudioSynthesisPad) # addiu $v0, $v0, -0x450
/* 0BB264 800BA664 2652F790 */  addiu $s2, %lo(gSynthesisReverbs) # addiu $s2, $s2, -0x870
.L800BA668:
/* 0BB268 800BA668 26520108 */  addiu $s2, $s2, 0x108
/* 0BB26C 800BA66C 0242082B */  sltu  $at, $s2, $v0
/* 0BB270 800BA670 1420FFFD */  bnez  $at, .L800BA668
/* 0BB274 800BA674 A240FEF9 */   sb    $zero, -0x107($s2)
/* 0BB278 800BA678 92CF0006 */  lbu   $t7, 6($s6)
/* 0BB27C 800BA67C 3C17803B */  lui   $s7, %hi(gNumSynthesisReverbs) # $s7, 0x803b
/* 0BB280 800BA680 26F7FBC3 */  addiu $s7, %lo(gNumSynthesisReverbs) # addiu $s7, $s7, -0x43d
/* 0BB284 800BA684 A2EF0000 */  sb    $t7, ($s7)
/* 0BB288 800BA688 82EE0000 */  lb    $t6, ($s7)
/* 0BB28C 800BA68C 3C12803B */  lui   $s2, %hi(gSynthesisReverbs) # $s2, 0x803b
/* 0BB290 800BA690 2652F790 */  addiu $s2, %lo(gSynthesisReverbs) # addiu $s2, $s2, -0x870
/* 0BB294 800BA694 19C0005F */  blez  $t6, .L800BA814
/* 0BB298 800BA698 0000A825 */   move  $s5, $zero
/* 0BB29C 800BA69C 241E0008 */  li    $fp, 8
/* 0BB2A0 800BA6A0 8ED80008 */  lw    $t8, 8($s6)
.L800BA6A4:
/* 0BB2A4 800BA6A4 0015C880 */  sll   $t9, $s5, 2
/* 0BB2A8 800BA6A8 02602025 */  move  $a0, $s3
/* 0BB2AC 800BA6AC 03191021 */  addu  $v0, $t8, $t9
/* 0BB2B0 800BA6B0 904D0001 */  lbu   $t5, 1($v0)
/* 0BB2B4 800BA6B4 000D7980 */  sll   $t7, $t5, 6
/* 0BB2B8 800BA6B8 A64F0006 */  sh    $t7, 6($s2)
/* 0BB2BC 800BA6BC 904E0000 */  lbu   $t6, ($v0)
/* 0BB2C0 800BA6C0 31E5FFFF */  andi  $a1, $t7, 0xffff
/* 0BB2C4 800BA6C4 0005C840 */  sll   $t9, $a1, 1
/* 0BB2C8 800BA6C8 A24E0004 */  sb    $t6, 4($s2)
/* 0BB2CC 800BA6CC 94580002 */  lhu   $t8, 2($v0)
/* 0BB2D0 800BA6D0 A25E0001 */  sb    $fp, 1($s2)
/* 0BB2D4 800BA6D4 03202825 */  move  $a1, $t9
/* 0BB2D8 800BA6D8 0C02E3FF */  jal   soundAlloc
/* 0BB2DC 800BA6DC A6580008 */   sh    $t8, 8($s2)
/* 0BB2E0 800BA6E0 96450006 */  lhu   $a1, 6($s2)
/* 0BB2E4 800BA6E4 AE420018 */  sw    $v0, 0x18($s2)
/* 0BB2E8 800BA6E8 02602025 */  move  $a0, $s3
/* 0BB2EC 800BA6EC 00056840 */  sll   $t5, $a1, 1
/* 0BB2F0 800BA6F0 0C02E3FF */  jal   soundAlloc
/* 0BB2F4 800BA6F4 01A02825 */   move  $a1, $t5
/* 0BB2F8 800BA6F8 92430004 */  lbu   $v1, 4($s2)
/* 0BB2FC 800BA6FC 964F0006 */  lhu   $t7, 6($s2)
/* 0BB300 800BA700 240E0002 */  li    $t6, 2
/* 0BB304 800BA704 24010001 */  li    $at, 1
/* 0BB308 800BA708 AE42001C */  sw    $v0, 0x1c($s2)
/* 0BB30C 800BA70C AE40000C */  sw    $zero, 0xc($s2)
/* 0BB310 800BA710 AE400010 */  sw    $zero, 0x10($s2)
/* 0BB314 800BA714 A2400003 */  sb    $zero, 3($s2)
/* 0BB318 800BA718 A24E0002 */  sb    $t6, 2($s2)
/* 0BB31C 800BA71C 10610037 */  beq   $v1, $at, .L800BA7FC
/* 0BB320 800BA720 AE4F0014 */   sw    $t7, 0x14($s2)
/* 0BB324 800BA724 34198000 */  li    $t9, 32768
/* 0BB328 800BA728 0323001A */  div   $zero, $t9, $v1
/* 0BB32C 800BA72C 24180001 */  li    $t8, 1
/* 0BB330 800BA730 00006812 */  mflo  $t5
/* 0BB334 800BA734 A2580000 */  sb    $t8, ($s2)
/* 0BB338 800BA738 14600002 */  bnez  $v1, .L800BA744
/* 0BB33C 800BA73C 00000000 */   nop   
/* 0BB340 800BA740 0007000D */  break 7
.L800BA744:
/* 0BB344 800BA744 2401FFFF */  li    $at, -1
/* 0BB348 800BA748 14610004 */  bne   $v1, $at, .L800BA75C
/* 0BB34C 800BA74C 3C018000 */   lui   $at, 0x8000
/* 0BB350 800BA750 17210002 */  bne   $t9, $at, .L800BA75C
/* 0BB354 800BA754 00000000 */   nop   
/* 0BB358 800BA758 0006000D */  break 6
.L800BA75C:
/* 0BB35C 800BA75C A64D000A */  sh    $t5, 0xa($s2)
/* 0BB360 800BA760 02602025 */  move  $a0, $s3
/* 0BB364 800BA764 24050020 */  li    $a1, 32
/* 0BB368 800BA768 0C02E3FF */  jal   soundAlloc
/* 0BB36C 800BA76C 00008825 */   move  $s1, $zero
/* 0BB370 800BA770 AE420020 */  sw    $v0, 0x20($s2)
/* 0BB374 800BA774 02602025 */  move  $a0, $s3
/* 0BB378 800BA778 0C02E3FF */  jal   soundAlloc
/* 0BB37C 800BA77C 24050020 */   li    $a1, 32
/* 0BB380 800BA780 AE420024 */  sw    $v0, 0x24($s2)
/* 0BB384 800BA784 02602025 */  move  $a0, $s3
/* 0BB388 800BA788 0C02E3FF */  jal   soundAlloc
/* 0BB38C 800BA78C 24050020 */   li    $a1, 32
/* 0BB390 800BA790 AE420028 */  sw    $v0, 0x28($s2)
/* 0BB394 800BA794 02602025 */  move  $a0, $s3
/* 0BB398 800BA798 0C02E3FF */  jal   soundAlloc
/* 0BB39C 800BA79C 24050020 */   li    $a1, 32
/* 0BB3A0 800BA7A0 868F000C */  lh    $t7, 0xc($s4)
/* 0BB3A4 800BA7A4 AE42002C */  sw    $v0, 0x2c($s2)
/* 0BB3A8 800BA7A8 59E00015 */  blezl $t7, .L800BA800
/* 0BB3AC 800BA7AC 82ED0000 */   lb    $t5, ($s7)
/* 0BB3B0 800BA7B0 02408025 */  move  $s0, $s2
/* 0BB3B4 800BA7B4 02602025 */  move  $a0, $s3
.L800BA7B8:
/* 0BB3B8 800BA7B8 0C02E3FF */  jal   soundAlloc
/* 0BB3BC 800BA7BC 24050300 */   li    $a1, 768
/* 0BB3C0 800BA7C0 244E0180 */  addiu $t6, $v0, 0x180
/* 0BB3C4 800BA7C4 AE020034 */  sw    $v0, 0x34($s0)
/* 0BB3C8 800BA7C8 AE0E0038 */  sw    $t6, 0x38($s0)
/* 0BB3CC 800BA7CC 02602025 */  move  $a0, $s3
/* 0BB3D0 800BA7D0 0C02E3FF */  jal   soundAlloc
/* 0BB3D4 800BA7D4 24050300 */   li    $a1, 768
/* 0BB3D8 800BA7D8 24580180 */  addiu $t8, $v0, 0x180
/* 0BB3DC 800BA7DC AE020098 */  sw    $v0, 0x98($s0)
/* 0BB3E0 800BA7E0 AE18009C */  sw    $t8, 0x9c($s0)
/* 0BB3E4 800BA7E4 8699000C */  lh    $t9, 0xc($s4)
/* 0BB3E8 800BA7E8 26310001 */  addiu $s1, $s1, 1
/* 0BB3EC 800BA7EC 26100014 */  addiu $s0, $s0, 0x14
/* 0BB3F0 800BA7F0 0239082A */  slt   $at, $s1, $t9
/* 0BB3F4 800BA7F4 5420FFF0 */  bnel  $at, $zero, .L800BA7B8
/* 0BB3F8 800BA7F8 02602025 */   move  $a0, $s3
.L800BA7FC:
/* 0BB3FC 800BA7FC 82ED0000 */  lb    $t5, ($s7)
.L800BA800:
/* 0BB400 800BA800 26B50001 */  addiu $s5, $s5, 1
/* 0BB404 800BA804 26520108 */  addiu $s2, $s2, 0x108
/* 0BB408 800BA808 02AD082A */  slt   $at, $s5, $t5
/* 0BB40C 800BA80C 5420FFA5 */  bnel  $at, $zero, .L800BA6A4
/* 0BB410 800BA810 8ED80008 */   lw    $t8, 8($s6)
.L800BA814:
/* 0BB414 800BA814 3C04803B */  lui   $a0, %hi(gMaxSimultaneousNotes) # $a0, 0x803b
/* 0BB418 800BA818 0C02EC0C */  jal   func_800BB030
/* 0BB41C 800BA81C 8C8470B0 */   lw    $a0, %lo(gMaxSimultaneousNotes)($a0)
/* 0BB420 800BA820 0C033624 */  jal   osWritebackDCacheAll
/* 0BB424 800BA824 00000000 */   nop   
/* 0BB428 800BA828 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0BB42C 800BA82C 8FB00018 */  lw    $s0, 0x18($sp)
/* 0BB430 800BA830 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0BB434 800BA834 8FB20020 */  lw    $s2, 0x20($sp)
/* 0BB438 800BA838 8FB30024 */  lw    $s3, 0x24($sp)
/* 0BB43C 800BA83C 8FB40028 */  lw    $s4, 0x28($sp)
/* 0BB440 800BA840 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0BB444 800BA844 8FB60030 */  lw    $s6, 0x30($sp)
/* 0BB448 800BA848 8FB70034 */  lw    $s7, 0x34($sp)
/* 0BB44C 800BA84C 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0BB450 800BA850 03E00008 */  jr    $ra
/* 0BB454 800BA854 27BD0040 */   addiu $sp, $sp, 0x40
