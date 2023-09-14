.section .late_rodata

glabel D_800ECFFC
.float 0.01

.section .text

glabel func_8000D6D0
/* 00E2D0 8000D6D0 27BDFF50 */  addiu $sp, $sp, -0xb0
/* 00E2D4 8000D6D4 87AE00C2 */  lh    $t6, 0xc2($sp)
/* 00E2D8 8000D6D8 3C188016 */  lui   $t8, %hi(D_80164550) # 0x8016
/* 00E2DC 8000D6DC AFBF003C */  sw    $ra, 0x3c($sp)
/* 00E2E0 8000D6E0 000E7880 */  sll   $t7, $t6, 2
/* 00E2E4 8000D6E4 030FC021 */  addu  $t8, $t8, $t7
/* 00E2E8 8000D6E8 8F184550 */  lw    $t8, %lo(D_80164550)($t8) # 0x4550($t8)
/* 00E2EC 8000D6EC AFB00038 */  sw    $s0, 0x38($sp)
/* 00E2F0 8000D6F0 F7B80030 */  sdc1  $f24, 0x30($sp)
/* 00E2F4 8000D6F4 F7B60028 */  sdc1  $f22, 0x28($sp)
/* 00E2F8 8000D6F8 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 00E2FC 8000D6FC AFA500B4 */  sw    $a1, 0xb4($sp)
/* 00E300 8000D700 AFA600B8 */  sw    $a2, 0xb8($sp)
/* 00E304 8000D704 AFA700BC */  sw    $a3, 0xbc($sp)
/* 00E308 8000D708 AFB8004C */  sw    $t8, 0x4c($sp)
/* 00E30C 8000D70C C4840000 */  lwc1  $f4, ($a0)
/* 00E310 8000D710 00808025 */  move  $s0, $a0
/* 00E314 8000D714 E7A40050 */  swc1  $f4, 0x50($sp)
/* 00E318 8000D718 C4860004 */  lwc1  $f6, 4($a0)
/* 00E31C 8000D71C E7A60054 */  swc1  $f6, 0x54($sp)
/* 00E320 8000D720 C4880008 */  lwc1  $f8, 8($a0)
/* 00E324 8000D724 E7A80058 */  swc1  $f8, 0x58($sp)
/* 00E328 8000D728 C4980008 */  lwc1  $f24, 8($a0)
/* 00E32C 8000D72C C4940000 */  lwc1  $f20, ($a0)
/* 00E330 8000D730 C4960004 */  lwc1  $f22, 4($a0)
/* 00E334 8000D734 84A70000 */  lh    $a3, ($a1)
/* 00E338 8000D738 4406C000 */  mfc1  $a2, $f24
/* 00E33C 8000D73C AFAE0010 */  sw    $t6, 0x10($sp)
/* 00E340 8000D740 4600A306 */  mov.s $f12, $f20
/* 00E344 8000D744 0C0034AD */  jal   func_8000D2B4
/* 00E348 8000D748 4600B386 */   mov.s $f14, $f22
/* 00E34C 8000D74C 87A600C2 */  lh    $a2, 0xc2($sp)
/* 00E350 8000D750 8FA900B4 */  lw    $t1, 0xb4($sp)
/* 00E354 8000D754 3C078016 */  lui   $a3, %hi(gWaypointCountByPathIndex) # 0x8016
/* 00E358 8000D758 00065840 */  sll   $t3, $a2, 1
/* 00E35C 8000D75C 00EB3821 */  addu  $a3, $a3, $t3
/* 00E360 8000D760 A5220000 */  sh    $v0, ($t1)
/* 00E364 8000D764 94E745C8 */  lhu   $a3, %lo(gWaypointCountByPathIndex)($a3) # 0x45c8($a3)
/* 00E368 8000D768 87AA00C6 */  lh    $t2, 0xc6($sp)
/* 00E36C 8000D76C 8FA500BC */  lw    $a1, 0xbc($sp)
/* 00E370 8000D770 004A1821 */  addu  $v1, $v0, $t2
/* 00E374 8000D774 0067001A */  div   $zero, $v1, $a3
/* 00E378 8000D778 246F0001 */  addiu $t7, $v1, 1
/* 00E37C 8000D77C 00004010 */  mfhi  $t0
/* 00E380 8000D780 00086400 */  sll   $t4, $t0, 0x10
/* 00E384 8000D784 14E00002 */  bnez  $a3, .L8000D790
/* 00E388 8000D788 00000000 */   nop
/* 00E38C 8000D78C 0007000D */  break 7
.L8000D790:
/* 00E390 8000D790 2401FFFF */  li    $at, -1
/* 00E394 8000D794 14E10004 */  bne   $a3, $at, .L8000D7A8
/* 00E398 8000D798 3C018000 */   li    $at, 0x80000000 # -0.000000
/* 00E39C 8000D79C 14610002 */  bne   $v1, $at, .L8000D7A8
/* 00E3A0 8000D7A0 00000000 */   nop
/* 00E3A4 8000D7A4 0006000D */  break 6
.L8000D7A8:
/* 00E3A8 8000D7A8 01E7001A */  div   $zero, $t7, $a3
/* 00E3AC 8000D7AC 000C6C03 */  sra   $t5, $t4, 0x10
/* 00E3B0 8000D7B0 01A04025 */  move  $t0, $t5
/* 00E3B4 8000D7B4 0000C010 */  mfhi  $t8
/* 00E3B8 8000D7B8 A7B8009E */  sh    $t8, 0x9e($sp)
/* 00E3BC 8000D7BC 14E00002 */  bnez  $a3, .L8000D7C8
/* 00E3C0 8000D7C0 00000000 */   nop
/* 00E3C4 8000D7C4 0007000D */  break 7
.L8000D7C8:
/* 00E3C8 8000D7C8 2401FFFF */  li    $at, -1
/* 00E3CC 8000D7CC 14E10004 */  bne   $a3, $at, .L8000D7E0
/* 00E3D0 8000D7D0 3C018000 */   li    $at, 0x80000000 # -0.000000
/* 00E3D4 8000D7D4 15E10002 */  bne   $t7, $at, .L8000D7E0
/* 00E3D8 8000D7D8 00000000 */   nop
/* 00E3DC 8000D7DC 0006000D */  break 6
.L8000D7E0:
/* 00E3E0 8000D7E0 3104FFFF */  andi  $a0, $t0, 0xffff
/* 00E3E4 8000D7E4 0C002EF6 */  jal   func_8000BBD8
/* 00E3E8 8000D7E8 A7A800A0 */   sh    $t0, 0xa0($sp)
/* 00E3EC 8000D7EC 3C028016 */  lui   $v0, %hi(D_80162FA0) # $v0, 0x8016
/* 00E3F0 8000D7F0 24422FA0 */  addiu $v0, %lo(D_80162FA0) # addiu $v0, $v0, 0x2fa0
/* 00E3F4 8000D7F4 C44A0000 */  lwc1  $f10, ($v0)
/* 00E3F8 8000D7F8 C4440008 */  lwc1  $f4, 8($v0)
/* 00E3FC 8000D7FC 97A4009E */  lhu   $a0, 0x9e($sp)
/* 00E400 8000D800 8FA500BC */  lw    $a1, 0xbc($sp)
/* 00E404 8000D804 87A600C2 */  lh    $a2, 0xc2($sp)
/* 00E408 8000D808 E7AA0098 */  swc1  $f10, 0x98($sp)
/* 00E40C 8000D80C 0C002EF6 */  jal   func_8000BBD8
/* 00E410 8000D810 E7A40090 */   swc1  $f4, 0x90($sp)
/* 00E414 8000D814 8FA3004C */  lw    $v1, 0x4c($sp)
/* 00E418 8000D818 87B9009E */  lh    $t9, 0x9e($sp)
/* 00E41C 8000D81C 87AB00A0 */  lh    $t3, 0xa0($sp)
/* 00E420 8000D820 3C028016 */  lui   $v0, %hi(D_80162FA0) # $v0, 0x8016
/* 00E424 8000D824 001970C0 */  sll   $t6, $t9, 3
/* 00E428 8000D828 000B60C0 */  sll   $t4, $t3, 3
/* 00E42C 8000D82C 006C6821 */  addu  $t5, $v1, $t4
/* 00E430 8000D830 006E4821 */  addu  $t1, $v1, $t6
/* 00E434 8000D834 852A0002 */  lh    $t2, 2($t1)
/* 00E438 8000D838 85AF0002 */  lh    $t7, 2($t5)
/* 00E43C 8000D83C 24422FA0 */  addiu $v0, %lo(D_80162FA0) # addiu $v0, $v0, 0x2fa0
/* 00E440 8000D840 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 00E444 8000D844 014FC021 */  addu  $t8, $t2, $t7
/* 00E448 8000D848 44983000 */  mtc1  $t8, $f6
/* 00E44C 8000D84C C4400000 */  lwc1  $f0, ($v0)
/* 00E450 8000D850 44815000 */  mtc1  $at, $f10
/* 00E454 8000D854 46803220 */  cvt.s.w $f8, $f6
/* 00E458 8000D858 C7A40098 */  lwc1  $f4, 0x98($sp)
/* 00E45C 8000D85C C4420008 */  lwc1  $f2, 8($v0)
/* 00E460 8000D860 46002180 */  add.s $f6, $f4, $f0
/* 00E464 8000D864 460A4382 */  mul.s $f14, $f8, $f10
/* 00E468 8000D868 44814000 */  mtc1  $at, $f8
/* 00E46C 8000D86C C7A40090 */  lwc1  $f4, 0x90($sp)
/* 00E470 8000D870 46083282 */  mul.s $f10, $f6, $f8
/* 00E474 8000D874 46022180 */  add.s $f6, $f4, $f2
/* 00E478 8000D878 44814000 */  mtc1  $at, $f8
/* 00E47C 8000D87C 46167481 */  sub.s $f18, $f14, $f22
/* 00E480 8000D880 46145401 */  sub.s $f16, $f10, $f20
/* 00E484 8000D884 46083282 */  mul.s $f10, $f6, $f8
/* 00E488 8000D888 E7B20044 */  swc1  $f18, 0x44($sp)
/* 00E48C 8000D88C E7B00048 */  swc1  $f16, 0x48($sp)
/* 00E490 8000D890 46185101 */  sub.s $f4, $f10, $f24
/* 00E494 8000D894 46042182 */  mul.s $f6, $f4, $f4
/* 00E498 8000D898 E7A40040 */  swc1  $f4, 0x40($sp)
/* 00E49C 8000D89C 46108202 */  mul.s $f8, $f16, $f16
/* 00E4A0 8000D8A0 00000000 */  nop
/* 00E4A4 8000D8A4 46129282 */  mul.s $f10, $f18, $f18
/* 00E4A8 8000D8A8 460A4100 */  add.s $f4, $f8, $f10
/* 00E4AC 8000D8AC 0C033850 */  jal   sqrtf
/* 00E4B0 8000D8B0 46062300 */   add.s $f12, $f4, $f6
/* 00E4B4 8000D8B4 3C01800F */  lui   $at, %hi(D_800ECFFC) # $at, 0x800f
/* 00E4B8 8000D8B8 C428CFFC */  lwc1  $f8, %lo(D_800ECFFC)($at)
/* 00E4BC 8000D8BC C7B00048 */  lwc1  $f16, 0x48($sp)
/* 00E4C0 8000D8C0 C7B20044 */  lwc1  $f18, 0x44($sp)
/* 00E4C4 8000D8C4 4600403C */  c.lt.s $f8, $f0
/* 00E4C8 8000D8C8 C7AA00B8 */  lwc1  $f10, 0xb8($sp)
/* 00E4CC 8000D8CC 27A40050 */  addiu $a0, $sp, 0x50
/* 00E4D0 8000D8D0 02002825 */  move  $a1, $s0
/* 00E4D4 8000D8D4 4502000D */  bc1fl .L8000D90C
/* 00E4D8 8000D8D8 4600A086 */   mov.s $f2, $f20
/* 00E4DC 8000D8DC 460A8102 */  mul.s $f4, $f16, $f10
/* 00E4E0 8000D8E0 46002183 */  div.s $f6, $f4, $f0
/* 00E4E4 8000D8E4 460A9202 */  mul.s $f8, $f18, $f10
/* 00E4E8 8000D8E8 46004103 */  div.s $f4, $f8, $f0
/* 00E4EC 8000D8EC 46143080 */  add.s $f2, $f6, $f20
/* 00E4F0 8000D8F0 C7A60040 */  lwc1  $f6, 0x40($sp)
/* 00E4F4 8000D8F4 460A3202 */  mul.s $f8, $f6, $f10
/* 00E4F8 8000D8F8 46162300 */  add.s $f12, $f4, $f22
/* 00E4FC 8000D8FC 46004103 */  div.s $f4, $f8, $f0
/* 00E500 8000D900 10000004 */  b     .L8000D914
/* 00E504 8000D904 46182380 */   add.s $f14, $f4, $f24
/* 00E508 8000D908 4600A086 */  mov.s $f2, $f20
.L8000D90C:
/* 00E50C 8000D90C 4600B306 */  mov.s $f12, $f22
/* 00E510 8000D910 4600C386 */  mov.s $f14, $f24
.L8000D914:
/* 00E514 8000D914 E6020000 */  swc1  $f2, ($s0)
/* 00E518 8000D918 E60C0004 */  swc1  $f12, 4($s0)
/* 00E51C 8000D91C 0C0017F4 */  jal   func_80005FD0
/* 00E520 8000D920 E60E0008 */   swc1  $f14, 8($s0)
/* 00E524 8000D924 8FBF003C */  lw    $ra, 0x3c($sp)
/* 00E528 8000D928 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 00E52C 8000D92C D7B60028 */  ldc1  $f22, 0x28($sp)
/* 00E530 8000D930 D7B80030 */  ldc1  $f24, 0x30($sp)
/* 00E534 8000D934 8FB00038 */  lw    $s0, 0x38($sp)
/* 00E538 8000D938 03E00008 */  jr    $ra
/* 00E53C 8000D93C 27BD00B0 */   addiu $sp, $sp, 0xb0
