glabel func_80064C74
/* 065874 80064C74 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 065878 80064C78 00057400 */  sll   $t6, $a1, 0x10
/* 06587C 80064C7C 000E7C03 */  sra   $t7, $t6, 0x10
/* 065880 80064C80 000FC0C0 */  sll   $t8, $t7, 3
/* 065884 80064C84 030FC021 */  addu  $t8, $t8, $t7
/* 065888 80064C88 0018C0C0 */  sll   $t8, $t8, 3
/* 06588C 80064C8C AFBF0014 */  sw    $ra, 0x14($sp)
/* 065890 80064C90 AFA40020 */  sw    $a0, 0x20($sp)
/* 065894 80064C94 AFA50024 */  sw    $a1, 0x24($sp)
/* 065898 80064C98 AFA60028 */  sw    $a2, 0x28($sp)
/* 06589C 80064C9C AFA7002C */  sw    $a3, 0x2c($sp)
/* 0658A0 80064CA0 00981021 */  addu  $v0, $a0, $t8
/* 0658A4 80064CA4 94590AD8 */  lhu   $t9, 0xad8($v0)
/* 0658A8 80064CA8 24010001 */  li    $at, 1
/* 0658AC 80064CAC 00803025 */  move  $a2, $a0
/* 0658B0 80064CB0 57210006 */  bnel  $t9, $at, .L80064CCC
/* 0658B4 80064CB4 844A0AE8 */   lh    $t2, 0xae8($v0)
/* 0658B8 80064CB8 84480AE8 */  lh    $t0, 0xae8($v0)
/* 0658BC 80064CBC 25090888 */  addiu $t1, $t0, 0x888
/* 0658C0 80064CC0 10000004 */  b     .L80064CD4
/* 0658C4 80064CC4 A4490AE8 */   sh    $t1, 0xae8($v0)
/* 0658C8 80064CC8 844A0AE8 */  lh    $t2, 0xae8($v0)
.L80064CCC:
/* 0658CC 80064CCC 254BF778 */  addiu $t3, $t2, -0x888
/* 0658D0 80064CD0 A44B0AE8 */  sh    $t3, 0xae8($v0)
.L80064CD4:
/* 0658D4 80064CD4 844C0AE8 */  lh    $t4, 0xae8($v0)
/* 0658D8 80064CD8 84CD002E */  lh    $t5, 0x2e($a2)
/* 0658DC 80064CDC 84CF00C0 */  lh    $t7, 0xc0($a2)
/* 0658E0 80064CE0 AFA60020 */  sw    $a2, 0x20($sp)
/* 0658E4 80064CE4 018D7023 */  subu  $t6, $t4, $t5
/* 0658E8 80064CE8 01CF2023 */  subu  $a0, $t6, $t7
/* 0658EC 80064CEC 3098FFFF */  andi  $t8, $a0, 0xffff
/* 0658F0 80064CF0 03002025 */  move  $a0, $t8
/* 0658F4 80064CF4 0C0AE00E */  jal   func_802B8038
/* 0658F8 80064CF8 AFA2001C */   sw    $v0, 0x1c($sp)
/* 0658FC 80064CFC 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 065900 80064D00 44812000 */  mtc1  $at, $f4
/* 065904 80064D04 8FA60020 */  lw    $a2, 0x20($sp)
/* 065908 80064D08 8FA2001C */  lw    $v0, 0x1c($sp)
/* 06590C 80064D0C 46040182 */  mul.s $f6, $f0, $f4
/* 065910 80064D10 C4C8001C */  lwc1  $f8, 0x1c($a2)
/* 065914 80064D14 84590AE8 */  lh    $t9, 0xae8($v0)
/* 065918 80064D18 46083280 */  add.s $f10, $f6, $f8
/* 06591C 80064D1C E44A0AD0 */  swc1  $f10, 0xad0($v0)
/* 065920 80064D20 84C8002E */  lh    $t0, 0x2e($a2)
/* 065924 80064D24 84CA00C0 */  lh    $t2, 0xc0($a2)
/* 065928 80064D28 03284823 */  subu  $t1, $t9, $t0
/* 06592C 80064D2C 012A2023 */  subu  $a0, $t1, $t2
/* 065930 80064D30 308BFFFF */  andi  $t3, $a0, 0xffff
/* 065934 80064D34 0C0AE006 */  jal   func_802B8018
/* 065938 80064D38 01602025 */   move  $a0, $t3
/* 06593C 80064D3C 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 065940 80064D40 44818000 */  mtc1  $at, $f16
/* 065944 80064D44 8FA60020 */  lw    $a2, 0x20($sp)
/* 065948 80064D48 8FA2001C */  lw    $v0, 0x1c($sp)
/* 06594C 80064D4C 46100482 */  mul.s $f18, $f0, $f16
/* 065950 80064D50 C4C40014 */  lwc1  $f4, 0x14($a2)
/* 065954 80064D54 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 065958 80064D58 44815000 */  mtc1  $at, $f10
/* 06595C 80064D5C 3C01800F */  lui   $at, %hi(D_800EE750)
/* 065960 80064D60 844C0AE6 */  lh    $t4, 0xae6($v0)
/* 065964 80064D64 46049180 */  add.s $f6, $f18, $f4
/* 065968 80064D68 C4520AD4 */  lwc1  $f18, 0xad4($v0)
/* 06596C 80064D6C 258D0001 */  addiu $t5, $t4, 1
/* 065970 80064D70 E4460AC8 */  swc1  $f6, 0xac8($v0)
/* 065974 80064D74 C4C80018 */  lwc1  $f8, 0x18($a2)
/* 065978 80064D78 46009121 */  cvt.d.s $f4, $f18
/* 06597C 80064D7C 460A4401 */  sub.s $f16, $f8, $f10
/* 065980 80064D80 E4500ACC */  swc1  $f16, 0xacc($v0)
/* 065984 80064D84 D426E750 */  ldc1  $f6, %lo(D_800EE750)($at)
/* 065988 80064D88 A44D0AE6 */  sh    $t5, 0xae6($v0)
/* 06598C 80064D8C 84430AE6 */  lh    $v1, 0xae6($v0)
/* 065990 80064D90 46262200 */  add.d $f8, $f4, $f6
/* 065994 80064D94 2401000A */  li    $at, 10
/* 065998 80064D98 462042A0 */  cvt.s.d $f10, $f8
/* 06599C 80064D9C 14610005 */  bne   $v1, $at, .L80064DB4
/* 0659A0 80064DA0 E44A0AD4 */   swc1  $f10, 0xad4($v0)
/* 0659A4 80064DA4 A4400AE6 */  sh    $zero, 0xae6($v0)
/* 0659A8 80064DA8 A4400AE4 */  sh    $zero, 0xae4($v0)
/* 0659AC 80064DAC 84430AE6 */  lh    $v1, 0xae6($v0)
/* 0659B0 80064DB0 A4400ADA */  sh    $zero, 0xada($v0)
.L80064DB4:
/* 0659B4 80064DB4 28610005 */  slti  $at, $v1, 5
/* 0659B8 80064DB8 54200009 */  bnel  $at, $zero, .L80064DE0
/* 0659BC 80064DBC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0659C0 80064DC0 844E0B06 */  lh    $t6, 0xb06($v0)
/* 0659C4 80064DC4 25CFFFEC */  addiu $t7, $t6, -0x14
/* 0659C8 80064DC8 A44F0B06 */  sh    $t7, 0xb06($v0)
/* 0659CC 80064DCC 84580B06 */  lh    $t8, 0xb06($v0)
/* 0659D0 80064DD0 5F000003 */  bgtzl $t8, .L80064DE0
/* 0659D4 80064DD4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0659D8 80064DD8 A4400B06 */  sh    $zero, 0xb06($v0)
/* 0659DC 80064DDC 8FBF0014 */  lw    $ra, 0x14($sp)
.L80064DE0:
/* 0659E0 80064DE0 27BD0020 */  addiu $sp, $sp, 0x20
/* 0659E4 80064DE4 03E00008 */  jr    $ra
/* 0659E8 80064DE8 00000000 */   nop   
