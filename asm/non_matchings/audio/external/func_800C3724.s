glabel func_800C3724
/* 0C4324 800C3724 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 0C4328 800C3728 AFB60048 */  sw    $s6, 0x48($sp)
/* 0C432C 800C372C F7B40028 */  sdc1  $f20, 0x28($sp)
/* 0C4330 800C3730 3C0142FE */  li    $at, 0x42FE0000 # 127.000000
/* 0C4334 800C3734 AFBE0050 */  sw    $fp, 0x50($sp)
/* 0C4338 800C3738 AFB7004C */  sw    $s7, 0x4c($sp)
/* 0C433C 800C373C AFB50044 */  sw    $s5, 0x44($sp)
/* 0C4340 800C3740 3C168019 */  lui   $s6, %hi(D_801930D0) # $s6, 0x8019
/* 0C4344 800C3744 4481A000 */  mtc1  $at, $f20
/* 0C4348 800C3748 03A0F025 */  move  $fp, $sp
/* 0C434C 800C374C AFBF0054 */  sw    $ra, 0x54($sp)
/* 0C4350 800C3750 AFB40040 */  sw    $s4, 0x40($sp)
/* 0C4354 800C3754 AFB3003C */  sw    $s3, 0x3c($sp)
/* 0C4358 800C3758 AFB20038 */  sw    $s2, 0x38($sp)
/* 0C435C 800C375C AFB10034 */  sw    $s1, 0x34($sp)
/* 0C4360 800C3760 AFB00030 */  sw    $s0, 0x30($sp)
/* 0C4364 800C3764 26D630D0 */  addiu $s6, %lo(D_801930D0) # addiu $s6, $s6, 0x30d0
/* 0C4368 800C3768 0000A825 */  move  $s5, $zero
/* 0C436C 800C376C 2417024C */  li    $s7, 588
.L800C3770:
/* 0C4370 800C3770 02B70019 */  multu $s5, $s7
/* 0C4374 800C3774 00007012 */  mflo  $t6
/* 0C4378 800C3778 02CE9821 */  addu  $s3, $s6, $t6
/* 0C437C 800C377C 926F0012 */  lbu   $t7, 0x12($s3)
/* 0C4380 800C3780 11E00048 */  beqz  $t7, .L800C38A4
/* 0C4384 800C3784 0015C0C0 */   sll   $t8, $s5, 3
/* 0C4388 800C3788 0315C021 */  addu  $t8, $t8, $s5
/* 0C438C 800C378C 0018C080 */  sll   $t8, $t8, 2
/* 0C4390 800C3790 0315C021 */  addu  $t8, $t8, $s5
/* 0C4394 800C3794 0018C080 */  sll   $t8, $t8, 2
/* 0C4398 800C3798 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0C439C 800C379C 0315C023 */  subu  $t8, $t8, $s5
/* 0C43A0 800C37A0 0018C080 */  sll   $t8, $t8, 2
/* 0C43A4 800C37A4 44810000 */  mtc1  $at, $f0
/* 0C43A8 800C37A8 02D8A021 */  addu  $s4, $s6, $t8
/* 0C43AC 800C37AC 00009025 */  move  $s2, $zero
/* 0C43B0 800C37B0 02A01025 */  move  $v0, $s5
/* 0C43B4 800C37B4 0292C821 */  addu  $t9, $s4, $s2
.L800C37B8:
/* 0C43B8 800C37B8 932A000E */  lbu   $t2, 0xe($t9)
/* 0C43BC 800C37BC 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 0C43C0 800C37C0 448A2000 */  mtc1  $t2, $f4
/* 0C43C4 800C37C4 05410004 */  bgez  $t2, .L800C37D8
/* 0C43C8 800C37C8 468021A0 */   cvt.s.w $f6, $f4
/* 0C43CC 800C37CC 44814000 */  mtc1  $at, $f8
/* 0C43D0 800C37D0 00000000 */  nop   
/* 0C43D4 800C37D4 46083180 */  add.s $f6, $f6, $f8
.L800C37D8:
/* 0C43D8 800C37D8 46143283 */  div.s $f10, $f6, $f20
/* 0C43DC 800C37DC 26520001 */  addiu $s2, $s2, 1
/* 0C43E0 800C37E0 324B00FF */  andi  $t3, $s2, 0xff
/* 0C43E4 800C37E4 29610003 */  slti  $at, $t3, 3
/* 0C43E8 800C37E8 01609025 */  move  $s2, $t3
/* 0C43EC 800C37EC 460A0002 */  mul.s $f0, $f0, $f10
/* 0C43F0 800C37F0 5420FFF1 */  bnel  $at, $zero, .L800C37B8
/* 0C43F4 800C37F4 0292C821 */   addu  $t9, $s4, $s2
/* 0C43F8 800C37F8 46140402 */  mul.s $f16, $f0, $f20
/* 0C43FC 800C37FC 240A0001 */  li    $t2, 1
/* 0C4400 800C3800 926C0011 */  lbu   $t4, 0x11($s3)
/* 0C4404 800C3804 3C014000 */  lui   $at, 0x4000
/* 0C4408 800C3808 00027E00 */  sll   $t7, $v0, 0x18
/* 0C440C 800C380C 000C6C00 */  sll   $t5, $t4, 0x10
/* 0C4410 800C3810 01A17025 */  or    $t6, $t5, $at
/* 0C4414 800C3814 4459F800 */  cfc1  $t9, $31
/* 0C4418 800C3818 44CAF800 */  ctc1  $t2, $31
/* 0C441C 800C381C 01CFC025 */  or    $t8, $t6, $t7
/* 0C4420 800C3820 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 0C4424 800C3824 460084A4 */  cvt.w.s $f18, $f16
/* 0C4428 800C3828 444AF800 */  cfc1  $t2, $31
/* 0C442C 800C382C 00000000 */  nop   
/* 0C4430 800C3830 314A0078 */  andi  $t2, $t2, 0x78
/* 0C4434 800C3834 51400013 */  beql  $t2, $zero, .L800C3884
/* 0C4438 800C3838 440A9000 */   mfc1  $t2, $f18
/* 0C443C 800C383C 44819000 */  mtc1  $at, $f18
/* 0C4440 800C3840 240A0001 */  li    $t2, 1
/* 0C4444 800C3844 46128481 */  sub.s $f18, $f16, $f18
/* 0C4448 800C3848 44CAF800 */  ctc1  $t2, $31
/* 0C444C 800C384C 00000000 */  nop   
/* 0C4450 800C3850 460094A4 */  cvt.w.s $f18, $f18
/* 0C4454 800C3854 444AF800 */  cfc1  $t2, $31
/* 0C4458 800C3858 00000000 */  nop   
/* 0C445C 800C385C 314A0078 */  andi  $t2, $t2, 0x78
/* 0C4460 800C3860 15400005 */  bnez  $t2, .L800C3878
/* 0C4464 800C3864 00000000 */   nop   
/* 0C4468 800C3868 440A9000 */  mfc1  $t2, $f18
/* 0C446C 800C386C 3C018000 */  lui   $at, 0x8000
/* 0C4470 800C3870 10000007 */  b     .L800C3890
/* 0C4474 800C3874 01415025 */   or    $t2, $t2, $at
.L800C3878:
/* 0C4478 800C3878 10000005 */  b     .L800C3890
/* 0C447C 800C387C 240AFFFF */   li    $t2, -1
/* 0C4480 800C3880 440A9000 */  mfc1  $t2, $f18
.L800C3884:
/* 0C4484 800C3884 00000000 */  nop   
/* 0C4488 800C3888 0540FFFB */  bltz  $t2, .L800C3878
/* 0C448C 800C388C 00000000 */   nop   
.L800C3890:
/* 0C4490 800C3890 44D9F800 */  ctc1  $t9, $31
/* 0C4494 800C3894 314B00FF */  andi  $t3, $t2, 0xff
/* 0C4498 800C3898 0C030D12 */  jal   func_800C3448
/* 0C449C 800C389C 030B2025 */   or    $a0, $t8, $t3
/* 0C44A0 800C38A0 A2600012 */  sb    $zero, 0x12($s3)
.L800C38A4:
/* 0C44A4 800C38A4 9662000C */  lhu   $v0, 0xc($s3)
/* 0C44A8 800C38A8 10400011 */  beqz  $v0, .L800C38F0
/* 0C44AC 800C38AC 244CFFFF */   addiu $t4, $v0, -1
/* 0C44B0 800C38B0 318DFFFF */  andi  $t5, $t4, 0xffff
/* 0C44B4 800C38B4 11A00006 */  beqz  $t5, .L800C38D0
/* 0C44B8 800C38B8 A66C000C */   sh    $t4, 0xc($s3)
/* 0C44BC 800C38BC C6640000 */  lwc1  $f4, ($s3)
/* 0C44C0 800C38C0 C6680008 */  lwc1  $f8, 8($s3)
/* 0C44C4 800C38C4 46082181 */  sub.s $f6, $f4, $f8
/* 0C44C8 800C38C8 10000003 */  b     .L800C38D8
/* 0C44CC 800C38CC E6660000 */   swc1  $f6, ($s3)
.L800C38D0:
/* 0C44D0 800C38D0 C66A0004 */  lwc1  $f10, 4($s3)
/* 0C44D4 800C38D4 E66A0000 */  swc1  $f10, ($s3)
.L800C38D8:
/* 0C44D8 800C38D8 32A400FF */  andi  $a0, $s5, 0xff
/* 0C44DC 800C38DC 00047400 */  sll   $t6, $a0, 0x10
/* 0C44E0 800C38E0 3C014100 */  lui   $at, 0x4100
/* 0C44E4 800C38E4 01C12025 */  or    $a0, $t6, $at
/* 0C44E8 800C38E8 0C032EE2 */  jal   func_800CBB88
/* 0C44EC 800C38EC 8E650000 */   lw    $a1, ($s3)
.L800C38F0:
/* 0C44F0 800C38F0 8E650014 */  lw    $a1, 0x14($s3)
/* 0C44F4 800C38F4 10A00093 */  beqz  $a1, .L800C3B44
/* 0C44F8 800C38F8 3C0100FF */   lui   $at, 0xff
/* 0C44FC 800C38FC 00A11024 */  and   $v0, $a1, $at
/* 0C4500 800C3900 0002CBC2 */  srl   $t9, $v0, 0xf
/* 0C4504 800C3904 30A40FFF */  andi  $a0, $a1, 0xfff
/* 0C4508 800C3908 332700FF */  andi  $a3, $t9, 0xff
/* 0C450C 800C390C 00A01825 */  move  $v1, $a1
/* 0C4510 800C3910 332800FF */  andi  $t0, $t9, 0xff
/* 0C4514 800C3914 14E00004 */  bnez  $a3, .L800C3928
/* 0C4518 800C3918 3086FFFF */   andi  $a2, $a0, 0xffff
/* 0C451C 800C391C 24E80001 */  addiu $t0, $a3, 1
/* 0C4520 800C3920 310A00FF */  andi  $t2, $t0, 0xff
/* 0C4524 800C3924 01404025 */  move  $t0, $t2
.L800C3928:
/* 0C4528 800C3928 0015C080 */  sll   $t8, $s5, 2
/* 0C452C 800C392C 0315C021 */  addu  $t8, $t8, $s5
/* 0C4530 800C3930 0018C0C0 */  sll   $t8, $t8, 3
/* 0C4534 800C3934 0315C021 */  addu  $t8, $t8, $s5
/* 0C4538 800C3938 3C0B803B */  lui   $t3, %hi(D_803B1510) # $t3, 0x803b
/* 0C453C 800C393C 256B1510 */  addiu $t3, %lo(D_803B1510) # addiu $t3, $t3, 0x1510
/* 0C4540 800C3940 0018C0C0 */  sll   $t8, $t8, 3
/* 0C4544 800C3944 030B2821 */  addu  $a1, $t8, $t3
/* 0C4548 800C3948 8CAC0000 */  lw    $t4, ($a1)
/* 0C454C 800C394C 24010030 */  li    $at, 48
/* 0C4550 800C3950 3062F000 */  andi  $v0, $v1, 0xf000
/* 0C4554 800C3954 000C6FC2 */  srl   $t5, $t4, 0x1f
/* 0C4558 800C3958 51A0007A */  beql  $t5, $zero, .L800C3B44
/* 0C455C 800C395C AE600014 */   sw    $zero, 0x14($s3)
/* 0C4560 800C3960 94A90008 */  lhu   $t1, 8($a1)
/* 0C4564 800C3964 00027B02 */  srl   $t7, $v0, 0xc
/* 0C4568 800C3968 31F900FF */  andi  $t9, $t7, 0xff
/* 0C456C 800C396C 0121001A */  div   $zero, $t1, $at
/* 0C4570 800C3970 00004812 */  mflo  $t1
/* 0C4574 800C3974 24010001 */  li    $at, 1
/* 0C4578 800C3978 1321000C */  beq   $t9, $at, .L800C39AC
/* 0C457C 800C397C 3127FFFF */   andi  $a3, $t1, 0xffff
/* 0C4580 800C3980 24010002 */  li    $at, 2
/* 0C4584 800C3984 1321000E */  beq   $t9, $at, .L800C39C0
/* 0C4588 800C3988 3083FFFF */   andi  $v1, $a0, 0xffff
/* 0C458C 800C398C 24010003 */  li    $at, 3
/* 0C4590 800C3990 13210013 */  beq   $t9, $at, .L800C39E0
/* 0C4594 800C3994 308CFFFF */   andi  $t4, $a0, 0xffff
/* 0C4598 800C3998 24010004 */  li    $at, 4
/* 0C459C 800C399C 53210048 */  beql  $t9, $at, .L800C3AC0
/* 0C45A0 800C39A0 96620018 */   lhu   $v0, 0x18($s3)
/* 0C45A4 800C39A4 1000004B */  b     .L800C3AD4
/* 0C45A8 800C39A8 96620018 */   lhu   $v0, 0x18($s3)
.L800C39AC:
/* 0C45AC 800C39AC 00873021 */  addu  $a2, $a0, $a3
/* 0C45B0 800C39B0 30D8FFFF */  andi  $t8, $a2, 0xffff
/* 0C45B4 800C39B4 03003025 */  move  $a2, $t8
/* 0C45B8 800C39B8 10000046 */  b     .L800C3AD4
/* 0C45BC 800C39BC 96620018 */   lhu   $v0, 0x18($s3)
.L800C39C0:
/* 0C45C0 800C39C0 0067082A */  slt   $at, $v1, $a3
/* 0C45C4 800C39C4 10200004 */  beqz  $at, .L800C39D8
/* 0C45C8 800C39C8 00E01025 */   move  $v0, $a3
/* 0C45CC 800C39CC 00433023 */  subu  $a2, $v0, $v1
/* 0C45D0 800C39D0 30CBFFFF */  andi  $t3, $a2, 0xffff
/* 0C45D4 800C39D4 01603025 */  move  $a2, $t3
.L800C39D8:
/* 0C45D8 800C39D8 1000003E */  b     .L800C3AD4
/* 0C45DC 800C39DC 96620018 */   lhu   $v0, 0x18($s3)
.L800C39E0:
/* 0C45E0 800C39E0 448C8000 */  mtc1  $t4, $f16
/* 0C45E4 800C39E4 44875000 */  mtc1  $a3, $f10
/* 0C45E8 800C39E8 05810005 */  bgez  $t4, .L800C3A00
/* 0C45EC 800C39EC 468084A0 */   cvt.s.w $f18, $f16
/* 0C45F0 800C39F0 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 0C45F4 800C39F4 44812000 */  mtc1  $at, $f4
/* 0C45F8 800C39F8 00000000 */  nop   
/* 0C45FC 800C39FC 46049480 */  add.s $f18, $f18, $f4
.L800C3A00:
/* 0C4600 800C3A00 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 0C4604 800C3A04 44814000 */  mtc1  $at, $f8
/* 0C4608 800C3A08 46805420 */  cvt.s.w $f16, $f10
/* 0C460C 800C3A0C 04E10005 */  bgez  $a3, .L800C3A24
/* 0C4610 800C3A10 46089183 */   div.s $f6, $f18, $f8
/* 0C4614 800C3A14 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 0C4618 800C3A18 44812000 */  mtc1  $at, $f4
/* 0C461C 800C3A1C 00000000 */  nop   
/* 0C4620 800C3A20 46048400 */  add.s $f16, $f16, $f4
.L800C3A24:
/* 0C4624 800C3A24 46068482 */  mul.s $f18, $f16, $f6
/* 0C4628 800C3A28 24060001 */  li    $a2, 1
/* 0C462C 800C3A2C 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 0C4630 800C3A30 444DF800 */  cfc1  $t5, $31
/* 0C4634 800C3A34 44C6F800 */  ctc1  $a2, $31
/* 0C4638 800C3A38 00000000 */  nop   
/* 0C463C 800C3A3C 46009224 */  cvt.w.s $f8, $f18
/* 0C4640 800C3A40 4446F800 */  cfc1  $a2, $31
/* 0C4644 800C3A44 00000000 */  nop   
/* 0C4648 800C3A48 30C60078 */  andi  $a2, $a2, 0x78
/* 0C464C 800C3A4C 50C00013 */  beql  $a2, $zero, .L800C3A9C
/* 0C4650 800C3A50 44064000 */   mfc1  $a2, $f8
/* 0C4654 800C3A54 44814000 */  mtc1  $at, $f8
/* 0C4658 800C3A58 24060001 */  li    $a2, 1
/* 0C465C 800C3A5C 46089201 */  sub.s $f8, $f18, $f8
/* 0C4660 800C3A60 44C6F800 */  ctc1  $a2, $31
/* 0C4664 800C3A64 00000000 */  nop   
/* 0C4668 800C3A68 46004224 */  cvt.w.s $f8, $f8
/* 0C466C 800C3A6C 4446F800 */  cfc1  $a2, $31
/* 0C4670 800C3A70 00000000 */  nop   
/* 0C4674 800C3A74 30C60078 */  andi  $a2, $a2, 0x78
/* 0C4678 800C3A78 14C00005 */  bnez  $a2, .L800C3A90
/* 0C467C 800C3A7C 00000000 */   nop   
/* 0C4680 800C3A80 44064000 */  mfc1  $a2, $f8
/* 0C4684 800C3A84 3C018000 */  lui   $at, 0x8000
/* 0C4688 800C3A88 10000007 */  b     .L800C3AA8
/* 0C468C 800C3A8C 00C13025 */   or    $a2, $a2, $at
.L800C3A90:
/* 0C4690 800C3A90 10000005 */  b     .L800C3AA8
/* 0C4694 800C3A94 2406FFFF */   li    $a2, -1
/* 0C4698 800C3A98 44064000 */  mfc1  $a2, $f8
.L800C3A9C:
/* 0C469C 800C3A9C 00000000 */  nop   
/* 0C46A0 800C3AA0 04C0FFFB */  bltz  $a2, .L800C3A90
/* 0C46A4 800C3AA4 00000000 */   nop   
.L800C3AA8:
/* 0C46A8 800C3AA8 44CDF800 */  ctc1  $t5, $31
/* 0C46AC 800C3AAC 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 0C46B0 800C3AB0 01C03025 */  move  $a2, $t6
/* 0C46B4 800C3AB4 10000007 */  b     .L800C3AD4
/* 0C46B8 800C3AB8 96620018 */   lhu   $v0, 0x18($s3)
/* 0C46BC 800C3ABC 96620018 */  lhu   $v0, 0x18($s3)
.L800C3AC0:
/* 0C46C0 800C3AC0 30E6FFFF */  andi  $a2, $a3, 0xffff
/* 0C46C4 800C3AC4 10400003 */  beqz  $v0, .L800C3AD4
/* 0C46C8 800C3AC8 00000000 */   nop   
/* 0C46CC 800C3ACC 10000001 */  b     .L800C3AD4
/* 0C46D0 800C3AD0 3046FFFF */   andi  $a2, $v0, 0xffff
.L800C3AD4:
/* 0C46D4 800C3AD4 44898000 */  mtc1  $t1, $f16
/* 0C46D8 800C3AD8 28C1012D */  slti  $at, $a2, 0x12d
/* 0C46DC 800C3ADC 14200002 */  bnez  $at, .L800C3AE8
/* 0C46E0 800C3AE0 468080A0 */   cvt.s.w $f2, $f16
/* 0C46E4 800C3AE4 2406012C */  li    $a2, 300
.L800C3AE8:
/* 0C46E8 800C3AE8 44865000 */  mtc1  $a2, $f10
/* 0C46EC 800C3AEC 14400002 */  bnez  $v0, .L800C3AF8
/* 0C46F0 800C3AF0 3C014F80 */   li    $at, 0x4F800000 # 4294967296.000000
/* 0C46F4 800C3AF4 A6670018 */  sh    $a3, 0x18($s3)
.L800C3AF8:
/* 0C46F8 800C3AF8 04C10004 */  bgez  $a2, .L800C3B0C
/* 0C46FC 800C3AFC 46805020 */   cvt.s.w $f0, $f10
/* 0C4700 800C3B00 44812000 */  mtc1  $at, $f4
/* 0C4704 800C3B04 00000000 */  nop   
/* 0C4708 800C3B08 46040000 */  add.s $f0, $f0, $f4
.L800C3B0C:
/* 0C470C 800C3B0C 44889000 */  mtc1  $t0, $f18
/* 0C4710 800C3B10 E6600020 */  swc1  $f0, 0x20($s3)
/* 0C4714 800C3B14 E662001C */  swc1  $f2, 0x1c($s3)
/* 0C4718 800C3B18 46001181 */  sub.s $f6, $f2, $f0
/* 0C471C 800C3B1C 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 0C4720 800C3B20 05010004 */  bgez  $t0, .L800C3B34
/* 0C4724 800C3B24 46809220 */   cvt.s.w $f8, $f18
/* 0C4728 800C3B28 44815000 */  mtc1  $at, $f10
/* 0C472C 800C3B2C 00000000 */  nop   
/* 0C4730 800C3B30 460A4200 */  add.s $f8, $f8, $f10
.L800C3B34:
/* 0C4734 800C3B34 46083103 */  div.s $f4, $f6, $f8
/* 0C4738 800C3B38 A6680028 */  sh    $t0, 0x28($s3)
/* 0C473C 800C3B3C E6640024 */  swc1  $f4, 0x24($s3)
/* 0C4740 800C3B40 AE600014 */  sw    $zero, 0x14($s3)
.L800C3B44:
/* 0C4744 800C3B44 96620028 */  lhu   $v0, 0x28($s3)
/* 0C4748 800C3B48 10400015 */  beqz  $v0, .L800C3BA0
/* 0C474C 800C3B4C 244FFFFF */   addiu $t7, $v0, -1
/* 0C4750 800C3B50 32A300FF */  andi  $v1, $s5, 0xff
/* 0C4754 800C3B54 0003CC00 */  sll   $t9, $v1, 0x10
/* 0C4758 800C3B58 31EAFFFF */  andi  $t2, $t7, 0xffff
/* 0C475C 800C3B5C A66F0028 */  sh    $t7, 0x28($s3)
/* 0C4760 800C3B60 11400006 */  beqz  $t2, .L800C3B7C
/* 0C4764 800C3B64 03201825 */   move  $v1, $t9
/* 0C4768 800C3B68 C670001C */  lwc1  $f16, 0x1c($s3)
/* 0C476C 800C3B6C C6720024 */  lwc1  $f18, 0x24($s3)
/* 0C4770 800C3B70 46128281 */  sub.s $f10, $f16, $f18
/* 0C4774 800C3B74 10000003 */  b     .L800C3B84
/* 0C4778 800C3B78 E66A001C */   swc1  $f10, 0x1c($s3)
.L800C3B7C:
/* 0C477C 800C3B7C C6660020 */  lwc1  $f6, 0x20($s3)
/* 0C4780 800C3B80 E666001C */  swc1  $f6, 0x1c($s3)
.L800C3B84:
/* 0C4784 800C3B84 C668001C */  lwc1  $f8, 0x1c($s3)
/* 0C4788 800C3B88 3C014700 */  lui   $at, 0x4700
/* 0C478C 800C3B8C 00612025 */  or    $a0, $v1, $at
/* 0C4790 800C3B90 4600410D */  trunc.w.s $f4, $f8
/* 0C4794 800C3B94 44052000 */  mfc1  $a1, $f4
/* 0C4798 800C3B98 0C032EEE */  jal   func_800CBBB8
/* 0C479C 800C3B9C 00000000 */   nop   
.L800C3BA0:
/* 0C47A0 800C3BA0 966B0246 */  lhu   $t3, 0x246($s3)
/* 0C47A4 800C3BA4 1160002C */  beqz  $t3, .L800C3C58
/* 0C47A8 800C3BA8 001560C0 */   sll   $t4, $s5, 3
/* 0C47AC 800C3BAC 01956021 */  addu  $t4, $t4, $s5
/* 0C47B0 800C3BB0 000C6080 */  sll   $t4, $t4, 2
/* 0C47B4 800C3BB4 01956021 */  addu  $t4, $t4, $s5
/* 0C47B8 800C3BB8 000C6080 */  sll   $t4, $t4, 2
/* 0C47BC 800C3BBC 01956023 */  subu  $t4, $t4, $s5
/* 0C47C0 800C3BC0 000C6080 */  sll   $t4, $t4, 2
/* 0C47C4 800C3BC4 02CCA021 */  addu  $s4, $s6, $t4
/* 0C47C8 800C3BC8 00008025 */  move  $s0, $zero
.L800C3BCC:
/* 0C47CC 800C3BCC 00102140 */  sll   $a0, $s0, 5
/* 0C47D0 800C3BD0 02841021 */  addu  $v0, $s4, $a0
/* 0C47D4 800C3BD4 94430050 */  lhu   $v1, 0x50($v0)
/* 0C47D8 800C3BD8 32A600FF */  andi  $a2, $s5, 0xff
/* 0C47DC 800C3BDC 00067400 */  sll   $t6, $a2, 0x10
/* 0C47E0 800C3BE0 10600018 */  beqz  $v1, .L800C3C44
/* 0C47E4 800C3BE4 246DFFFF */   addiu $t5, $v1, -1
/* 0C47E8 800C3BE8 3C010100 */  lui   $at, 0x100
/* 0C47EC 800C3BEC 31B9FFFF */  andi  $t9, $t5, 0xffff
/* 0C47F0 800C3BF0 A44D0050 */  sh    $t5, 0x50($v0)
/* 0C47F4 800C3BF4 13200006 */  beqz  $t9, .L800C3C10
/* 0C47F8 800C3BF8 01C13025 */   or    $a2, $t6, $at
/* 0C47FC 800C3BFC C4500044 */  lwc1  $f16, 0x44($v0)
/* 0C4800 800C3C00 C452004C */  lwc1  $f18, 0x4c($v0)
/* 0C4804 800C3C04 46128281 */  sub.s $f10, $f16, $f18
/* 0C4808 800C3C08 10000009 */  b     .L800C3C30
/* 0C480C 800C3C0C E44A0044 */   swc1  $f10, 0x44($v0)
.L800C3C10:
/* 0C4810 800C3C10 02641821 */  addu  $v1, $s3, $a0
/* 0C4814 800C3C14 C4660048 */  lwc1  $f6, 0x48($v1)
/* 0C4818 800C3C18 24180001 */  li    $t8, 1
/* 0C481C 800C3C1C 02185804 */  sllv  $t3, $t8, $s0
/* 0C4820 800C3C20 E4660044 */  swc1  $f6, 0x44($v1)
/* 0C4824 800C3C24 966A0246 */  lhu   $t2, 0x246($s3)
/* 0C4828 800C3C28 014B6026 */  xor   $t4, $t2, $t3
/* 0C482C 800C3C2C A66C0246 */  sh    $t4, 0x246($s3)
.L800C3C30:
/* 0C4830 800C3C30 320D00FF */  andi  $t5, $s0, 0xff
/* 0C4834 800C3C34 000D7200 */  sll   $t6, $t5, 8
/* 0C4838 800C3C38 00CE2025 */  or    $a0, $a2, $t6
/* 0C483C 800C3C3C 0C032EE2 */  jal   func_800CBB88
/* 0C4840 800C3C40 8C450044 */   lw    $a1, 0x44($v0)
.L800C3C44:
/* 0C4844 800C3C44 26100001 */  addiu $s0, $s0, 1
/* 0C4848 800C3C48 320F00FF */  andi  $t7, $s0, 0xff
/* 0C484C 800C3C4C 29E10010 */  slti  $at, $t7, 0x10
/* 0C4850 800C3C50 1420FFDE */  bnez  $at, .L800C3BCC
/* 0C4854 800C3C54 01E08025 */   move  $s0, $t7
.L800C3C58:
/* 0C4858 800C3C58 96790244 */  lhu   $t9, 0x244($s3)
/* 0C485C 800C3C5C 1320002C */  beqz  $t9, .L800C3D10
/* 0C4860 800C3C60 0015C0C0 */   sll   $t8, $s5, 3
/* 0C4864 800C3C64 0315C021 */  addu  $t8, $t8, $s5
/* 0C4868 800C3C68 0018C080 */  sll   $t8, $t8, 2
/* 0C486C 800C3C6C 0315C021 */  addu  $t8, $t8, $s5
/* 0C4870 800C3C70 0018C080 */  sll   $t8, $t8, 2
/* 0C4874 800C3C74 0315C023 */  subu  $t8, $t8, $s5
/* 0C4878 800C3C78 0018C080 */  sll   $t8, $t8, 2
/* 0C487C 800C3C7C 02D8A021 */  addu  $s4, $s6, $t8
/* 0C4880 800C3C80 00008025 */  move  $s0, $zero
.L800C3C84:
/* 0C4884 800C3C84 00102140 */  sll   $a0, $s0, 5
/* 0C4888 800C3C88 02841021 */  addu  $v0, $s4, $a0
/* 0C488C 800C3C8C 94430060 */  lhu   $v1, 0x60($v0)
/* 0C4890 800C3C90 32A600FF */  andi  $a2, $s5, 0xff
/* 0C4894 800C3C94 00065C00 */  sll   $t3, $a2, 0x10
/* 0C4898 800C3C98 10600018 */  beqz  $v1, .L800C3CFC
/* 0C489C 800C3C9C 246AFFFF */   addiu $t2, $v1, -1
/* 0C48A0 800C3CA0 3C010400 */  lui   $at, 0x400
/* 0C48A4 800C3CA4 314DFFFF */  andi  $t5, $t2, 0xffff
/* 0C48A8 800C3CA8 A44A0060 */  sh    $t2, 0x60($v0)
/* 0C48AC 800C3CAC 11A00006 */  beqz  $t5, .L800C3CC8
/* 0C48B0 800C3CB0 01613025 */   or    $a2, $t3, $at
/* 0C48B4 800C3CB4 C4480054 */  lwc1  $f8, 0x54($v0)
/* 0C48B8 800C3CB8 C444005C */  lwc1  $f4, 0x5c($v0)
/* 0C48BC 800C3CBC 46044401 */  sub.s $f16, $f8, $f4
/* 0C48C0 800C3CC0 10000009 */  b     .L800C3CE8
/* 0C48C4 800C3CC4 E4500054 */   swc1  $f16, 0x54($v0)
.L800C3CC8:
/* 0C48C8 800C3CC8 02641821 */  addu  $v1, $s3, $a0
/* 0C48CC 800C3CCC C4720058 */  lwc1  $f18, 0x58($v1)
/* 0C48D0 800C3CD0 240F0001 */  li    $t7, 1
/* 0C48D4 800C3CD4 020FC804 */  sllv  $t9, $t7, $s0
/* 0C48D8 800C3CD8 E4720054 */  swc1  $f18, 0x54($v1)
/* 0C48DC 800C3CDC 966E0244 */  lhu   $t6, 0x244($s3)
/* 0C48E0 800C3CE0 01D9C026 */  xor   $t8, $t6, $t9
/* 0C48E4 800C3CE4 A6780244 */  sh    $t8, 0x244($s3)
.L800C3CE8:
/* 0C48E8 800C3CE8 320A00FF */  andi  $t2, $s0, 0xff
/* 0C48EC 800C3CEC 000A5A00 */  sll   $t3, $t2, 8
/* 0C48F0 800C3CF0 00CB2025 */  or    $a0, $a2, $t3
/* 0C48F4 800C3CF4 0C032EE2 */  jal   func_800CBB88
/* 0C48F8 800C3CF8 8C450054 */   lw    $a1, 0x54($v0)
.L800C3CFC:
/* 0C48FC 800C3CFC 26100001 */  addiu $s0, $s0, 1
/* 0C4900 800C3D00 320C00FF */  andi  $t4, $s0, 0xff
/* 0C4904 800C3D04 29810010 */  slti  $at, $t4, 0x10
/* 0C4908 800C3D08 1420FFDE */  bnez  $at, .L800C3C84
/* 0C490C 800C3D0C 01808025 */   move  $s0, $t4
.L800C3D10:
/* 0C4910 800C3D10 92620041 */  lbu   $v0, 0x41($s3)
/* 0C4914 800C3D14 50400084 */  beql  $v0, $zero, .L800C3F28
/* 0C4918 800C3D18 26B50001 */   addiu $s5, $s5, 1
/* 0C491C 800C3D1C 92630040 */  lbu   $v1, 0x40($s3)
/* 0C4920 800C3D20 00157880 */  sll   $t7, $s5, 2
/* 0C4924 800C3D24 01F57821 */  addu  $t7, $t7, $s5
/* 0C4928 800C3D28 10600004 */  beqz  $v1, .L800C3D3C
/* 0C492C 800C3D2C 000F78C0 */   sll   $t7, $t7, 3
/* 0C4930 800C3D30 246DFFFF */  addiu $t5, $v1, -1
/* 0C4934 800C3D34 1000007B */  b     .L800C3F24
/* 0C4938 800C3D38 A26D0040 */   sb    $t5, 0x40($s3)
.L800C3D3C:
/* 0C493C 800C3D3C 01F57821 */  addu  $t7, $t7, $s5
/* 0C4940 800C3D40 000F78C0 */  sll   $t7, $t7, 3
/* 0C4944 800C3D44 3C0E803B */  lui   $t6, %hi(D_803B1510) # 0x803b
/* 0C4948 800C3D48 01CF7021 */  addu  $t6, $t6, $t7
/* 0C494C 800C3D4C 8DCE1510 */  lw    $t6, %lo(D_803B1510)($t6) # 0x1510($t6)
/* 0C4950 800C3D50 00009025 */  move  $s2, $zero
/* 0C4954 800C3D54 000ECFC2 */  srl   $t9, $t6, 0x1f
/* 0C4958 800C3D58 57200073 */  bnel  $t9, $zero, .L800C3F28
/* 0C495C 800C3D5C 26B50001 */   addiu $s5, $s5, 1
/* 0C4960 800C3D60 1840006F */  blez  $v0, .L800C3F20
/* 0C4964 800C3D64 00401825 */   move  $v1, $v0
/* 0C4968 800C3D68 0015C0C0 */  sll   $t8, $s5, 3
/* 0C496C 800C3D6C 0315C021 */  addu  $t8, $t8, $s5
/* 0C4970 800C3D70 0018C080 */  sll   $t8, $t8, 2
/* 0C4974 800C3D74 0315C021 */  addu  $t8, $t8, $s5
/* 0C4978 800C3D78 0018C080 */  sll   $t8, $t8, 2
/* 0C497C 800C3D7C 0315C023 */  subu  $t8, $t8, $s5
/* 0C4980 800C3D80 0018C080 */  sll   $t8, $t8, 2
/* 0C4984 800C3D84 02D8A021 */  addu  $s4, $s6, $t8
.L800C3D88:
/* 0C4988 800C3D88 00125080 */  sll   $t2, $s2, 2
/* 0C498C 800C3D8C 028A5821 */  addu  $t3, $s4, $t2
/* 0C4990 800C3D90 8D62002C */  lw    $v0, 0x2c($t3)
/* 0C4994 800C3D94 3C0100F0 */  lui   $at, 0xf0
/* 0C4998 800C3D98 00412024 */  and   $a0, $v0, $at
/* 0C499C 800C3D9C 3C01000F */  lui   $at, 0xf
/* 0C49A0 800C3DA0 00046502 */  srl   $t4, $a0, 0x14
/* 0C49A4 800C3DA4 00418824 */  and   $s1, $v0, $at
/* 0C49A8 800C3DA8 318D00FF */  andi  $t5, $t4, 0xff
/* 0C49AC 800C3DAC 3045FF00 */  andi  $a1, $v0, 0xff00
/* 0C49B0 800C3DB0 00403025 */  move  $a2, $v0
/* 0C49B4 800C3DB4 00117C02 */  srl   $t7, $s1, 0x10
/* 0C49B8 800C3DB8 0005CA02 */  srl   $t9, $a1, 8
/* 0C49BC 800C3DBC 30CA00FF */  andi  $t2, $a2, 0xff
/* 0C49C0 800C3DC0 2DA10007 */  sltiu $at, $t5, 7
/* 0C49C4 800C3DC4 31F100FF */  andi  $s1, $t7, 0xff
/* 0C49C8 800C3DC8 332500FF */  andi  $a1, $t9, 0xff
/* 0C49CC 800C3DCC 1020004F */  beqz  $at, .L800C3F0C
/* 0C49D0 800C3DD0 01403025 */   move  $a2, $t2
/* 0C49D4 800C3DD4 000D5880 */  sll   $t3, $t5, 2
/* 0C49D8 800C3DD8 3C01800F */  lui   $at, %hi(D_800F362C)
/* 0C49DC 800C3DDC 002B0821 */  addu  $at, $at, $t3
/* 0C49E0 800C3DE0 8C2B362C */  lw    $t3, %lo(D_800F362C)($at)
/* 0C49E4 800C3DE4 01600008 */  jr    $t3
/* 0C49E8 800C3DE8 00000000 */   nop   
glabel L800C3DEC
/* 0C49EC 800C3DEC 02370019 */  multu $s1, $s7
/* 0C49F0 800C3DF0 240D0001 */  li    $t5, 1
/* 0C49F4 800C3DF4 240F007F */  li    $t7, 127
/* 0C49F8 800C3DF8 00006012 */  mflo  $t4
/* 0C49FC 800C3DFC 02CC8021 */  addu  $s0, $s6, $t4
/* 0C4A00 800C3E00 A20D0012 */  sb    $t5, 0x12($s0)
/* 0C4A04 800C3E04 A20F000F */  sb    $t7, 0xf($s0)
/* 0C4A08 800C3E08 10000040 */  b     .L800C3F0C
/* 0C4A0C 800C3E0C 92630041 */   lbu   $v1, 0x41($s3)
glabel L800C3E10
/* 0C4A10 800C3E10 966E0248 */  lhu   $t6, 0x248($s3)
/* 0C4A14 800C3E14 3C013000 */  lui   $at, 0x3000
/* 0C4A18 800C3E18 0015C600 */  sll   $t8, $s5, 0x18
/* 0C4A1C 800C3E1C 01C1C825 */  or    $t9, $t6, $at
/* 0C4A20 800C3E20 0C030D12 */  jal   func_800C3448
/* 0C4A24 800C3E24 03382025 */   or    $a0, $t9, $t8
/* 0C4A28 800C3E28 10000038 */  b     .L800C3F0C
/* 0C4A2C 800C3E2C 92630041 */   lbu   $v1, 0x41($s3)
glabel L800C3E30
/* 0C4A30 800C3E30 02370019 */  multu $s1, $s7
/* 0C4A34 800C3E34 00116600 */  sll   $t4, $s1, 0x18
/* 0C4A38 800C3E38 3C010001 */  lui   $at, 1
/* 0C4A3C 800C3E3C 00005012 */  mflo  $t2
/* 0C4A40 800C3E40 02CA8021 */  addu  $s0, $s6, $t2
/* 0C4A44 800C3E44 960B0248 */  lhu   $t3, 0x248($s0)
/* 0C4A48 800C3E48 016C2025 */  or    $a0, $t3, $t4
/* 0C4A4C 800C3E4C 00816825 */  or    $t5, $a0, $at
/* 0C4A50 800C3E50 0C030D12 */  jal   func_800C3448
/* 0C4A54 800C3E54 01A02025 */   move  $a0, $t5
/* 0C4A58 800C3E58 240F0001 */  li    $t7, 1
/* 0C4A5C 800C3E5C 240E007F */  li    $t6, 127
/* 0C4A60 800C3E60 A20F0012 */  sb    $t7, 0x12($s0)
/* 0C4A64 800C3E64 A20E000F */  sb    $t6, 0xf($s0)
/* 0C4A68 800C3E68 10000028 */  b     .L800C3F0C
/* 0C4A6C 800C3E6C 92630041 */   lbu   $v1, 0x41($s3)
glabel L800C3E70
/* 0C4A70 800C3E70 3C01B000 */  lui   $at, (0xB0003000 >> 16) # lui $at, 0xb000
/* 0C4A74 800C3E74 34213000 */  ori   $at, (0xB0003000 & 0xFFFF) # ori $at, $at, 0x3000
/* 0C4A78 800C3E78 0011CE00 */  sll   $t9, $s1, 0x18
/* 0C4A7C 800C3E7C 0321C025 */  or    $t8, $t9, $at
/* 0C4A80 800C3E80 00055400 */  sll   $t2, $a1, 0x10
/* 0C4A84 800C3E84 030A5825 */  or    $t3, $t8, $t2
/* 0C4A88 800C3E88 0C030D12 */  jal   func_800C3448
/* 0C4A8C 800C3E8C 01662025 */   or    $a0, $t3, $a2
/* 0C4A90 800C3E90 1000001E */  b     .L800C3F0C
/* 0C4A94 800C3E94 92630041 */   lbu   $v1, 0x41($s3)
glabel L800C3E98
/* 0C4A98 800C3E98 3C01B000 */  lui   $at, (0xB0004000 >> 16) # lui $at, 0xb000
/* 0C4A9C 800C3E9C 34214000 */  ori   $at, (0xB0004000 & 0xFFFF) # ori $at, $at, 0x4000
/* 0C4AA0 800C3EA0 00116600 */  sll   $t4, $s1, 0x18
/* 0C4AA4 800C3EA4 01816825 */  or    $t5, $t4, $at
/* 0C4AA8 800C3EA8 00067C00 */  sll   $t7, $a2, 0x10
/* 0C4AAC 800C3EAC 0C030D12 */  jal   func_800C3448
/* 0C4AB0 800C3EB0 01AF2025 */   or    $a0, $t5, $t7
/* 0C4AB4 800C3EB4 10000015 */  b     .L800C3F0C
/* 0C4AB8 800C3EB8 92630041 */   lbu   $v1, 0x41($s3)
glabel L800C3EBC
/* 0C4ABC 800C3EBC 02370019 */  multu $s1, $s7
/* 0C4AC0 800C3EC0 00115E00 */  sll   $t3, $s1, 0x18
/* 0C4AC4 800C3EC4 304EFFFF */  andi  $t6, $v0, 0xffff
/* 0C4AC8 800C3EC8 0000C812 */  mflo  $t9
/* 0C4ACC 800C3ECC 02D98021 */  addu  $s0, $s6, $t9
/* 0C4AD0 800C3ED0 92180042 */  lbu   $t8, 0x42($s0)
/* 0C4AD4 800C3ED4 00185400 */  sll   $t2, $t8, 0x10
/* 0C4AD8 800C3ED8 014B6025 */  or    $t4, $t2, $t3
/* 0C4ADC 800C3EDC 0C030D12 */  jal   func_800C3448
/* 0C4AE0 800C3EE0 018E2025 */   or    $a0, $t4, $t6
/* 0C4AE4 800C3EE4 322400FF */  andi  $a0, $s1, 0xff
/* 0C4AE8 800C3EE8 24050001 */  li    $a1, 1
/* 0C4AEC 800C3EEC 2406007F */  li    $a2, 127
/* 0C4AF0 800C3EF0 0C030DB1 */  jal   func_800C36C4
/* 0C4AF4 800C3EF4 00003825 */   move  $a3, $zero
/* 0C4AF8 800C3EF8 A2000042 */  sb    $zero, 0x42($s0)
/* 0C4AFC 800C3EFC 10000003 */  b     .L800C3F0C
/* 0C4B00 800C3F00 92630041 */   lbu   $v1, 0x41($s3)
glabel L800C3F04
/* 0C4B04 800C3F04 A2650042 */  sb    $a1, 0x42($s3)
/* 0C4B08 800C3F08 92630041 */  lbu   $v1, 0x41($s3)
.L800C3F0C:
/* 0C4B0C 800C3F0C 26520001 */  addiu $s2, $s2, 1
/* 0C4B10 800C3F10 324D00FF */  andi  $t5, $s2, 0xff
/* 0C4B14 800C3F14 01A3082A */  slt   $at, $t5, $v1
/* 0C4B18 800C3F18 1420FF9B */  bnez  $at, .L800C3D88
/* 0C4B1C 800C3F1C 01A09025 */   move  $s2, $t5
.L800C3F20:
/* 0C4B20 800C3F20 A2600041 */  sb    $zero, 0x41($s3)
.L800C3F24:
/* 0C4B24 800C3F24 26B50001 */  addiu $s5, $s5, 1
.L800C3F28:
/* 0C4B28 800C3F28 32AF00FF */  andi  $t7, $s5, 0xff
/* 0C4B2C 800C3F2C 29E10003 */  slti  $at, $t7, 3
/* 0C4B30 800C3F30 1420FE0F */  bnez  $at, .L800C3770
/* 0C4B34 800C3F34 01E0A825 */   move  $s5, $t7
/* 0C4B38 800C3F38 8FDF0054 */  lw    $ra, 0x54($fp)
/* 0C4B3C 800C3F3C 03C0E825 */  move  $sp, $fp
/* 0C4B40 800C3F40 D7D40028 */  ldc1  $f20, 0x28($fp)
/* 0C4B44 800C3F44 8FD00030 */  lw    $s0, 0x30($fp)
/* 0C4B48 800C3F48 8FD10034 */  lw    $s1, 0x34($fp)
/* 0C4B4C 800C3F4C 8FD20038 */  lw    $s2, 0x38($fp)
/* 0C4B50 800C3F50 8FD3003C */  lw    $s3, 0x3c($fp)
/* 0C4B54 800C3F54 8FD40040 */  lw    $s4, 0x40($fp)
/* 0C4B58 800C3F58 8FD50044 */  lw    $s5, 0x44($fp)
/* 0C4B5C 800C3F5C 8FD60048 */  lw    $s6, 0x48($fp)
/* 0C4B60 800C3F60 8FD7004C */  lw    $s7, 0x4c($fp)
/* 0C4B64 800C3F64 8FDE0050 */  lw    $fp, 0x50($fp)
/* 0C4B68 800C3F68 03E00008 */  jr    $ra
/* 0C4B6C 800C3F6C 27BD0058 */   addiu $sp, $sp, 0x58
