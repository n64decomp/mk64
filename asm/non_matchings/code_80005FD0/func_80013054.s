glabel func_80013054
/* 013C54 80013054 3C048016 */  lui   $a0, %hi(D_801637B8) # $a0, 0x8016
/* 013C58 80013058 248437B8 */  addiu $a0, %lo(D_801637B8) # addiu $a0, $a0, 0x37b8
/* 013C5C 8001305C A4800000 */  sh    $zero, ($a0)
/* 013C60 80013060 A4800002 */  sh    $zero, 2($a0)
/* 013C64 80013064 3C01800F */  lui   $at, %hi(D_800ED100) # $at, 0x800f
/* 013C68 80013068 C430D100 */  lwc1  $f16, %lo(D_800ED100)($at)
/* 013C6C 8001306C 3C01800F */  lui   $at, %hi(D_800ED108)
/* 013C70 80013070 D42AD108 */  ldc1  $f10, %lo(D_800ED108)($at)
/* 013C74 80013074 3C0E8016 */  lui   $t6, %hi(D_8016359C) # $t6, 0x8016
/* 013C78 80013078 8DCE359C */  lw    $t6, %lo(D_8016359C)($t6)
/* 013C7C 8001307C 3C01800F */  lui   $at, %hi(D_800ED110) # $at, 0x800f
/* 013C80 80013080 C428D110 */  lwc1  $f8, %lo(D_800ED110)($at)
/* 013C84 80013084 448E3000 */  mtc1  $t6, $f6
/* 013C88 80013088 46008321 */  cvt.d.s $f12, $f16
/* 013C8C 8001308C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 013C90 80013090 468030A0 */  cvt.s.w $f2, $f6
/* 013C94 80013094 3C01800F */  lui   $at, %hi(D_800ED118)
/* 013C98 80013098 D426D118 */  ldc1  $f6, %lo(D_800ED118)($at)
/* 013C9C 8001309C F7B60010 */  sdc1  $f22, 0x10($sp)
/* 013CA0 800130A0 F7B40008 */  sdc1  $f20, 8($sp)
/* 013CA4 800130A4 462A6381 */  sub.d $f14, $f12, $f10
/* 013CA8 800130A8 3C038016 */  lui   $v1, %hi(D_801635A0) # $v1, 0x8016
/* 013CAC 800130AC 3C01800F */  lui   $at, %hi(D_800ED120)
/* 013CB0 800130B0 460044A1 */  cvt.d.s $f18, $f8
/* 013CB4 800130B4 D436D120 */  ldc1  $f22, %lo(D_800ED120)($at)
/* 013CB8 800130B8 46269501 */  sub.d $f20, $f18, $f6
/* 013CBC 800130BC 3C058016 */  lui   $a1, %hi(D_801637B8) # $a1, 0x8016
/* 013CC0 800130C0 246335A0 */  addiu $v1, %lo(D_801635A0) # addiu $v1, $v1, 0x35a0
/* 013CC4 800130C4 24A537B8 */  addiu $a1, %lo(D_801637B8) # addiu $a1, $a1, 0x37b8
/* 013CC8 800130C8 24020001 */  li    $v0, 1
/* 013CCC 800130CC 946F001C */  lhu   $t7, 0x1c($v1)
.L800130D0:
/* 013CD0 800130D0 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 013CD4 800130D4 448F3000 */  mtc1  $t7, $f6
/* 013CD8 800130D8 05E10004 */  bgez  $t7, .L800130EC
/* 013CDC 800130DC 46803220 */   cvt.s.w $f8, $f6
/* 013CE0 800130E0 44815000 */  mtc1  $at, $f10
/* 013CE4 800130E4 00000000 */  nop   
/* 013CE8 800130E8 460A4200 */  add.s $f8, $f8, $f10
.L800130EC:
/* 013CEC 800130EC 46024003 */  div.s $f0, $f8, $f2
/* 013CF0 800130F0 46000421 */  cvt.d.s $f16, $f0
/* 013CF4 800130F4 4630703C */  c.lt.d $f14, $f16
/* 013CF8 800130F8 00000000 */  nop   
/* 013CFC 800130FC 4502000E */  bc1fl .L80013138
/* 013D00 80013100 4630A03C */   c.lt.d $f20, $f16
/* 013D04 80013104 8C780104 */  lw    $t8, 0x104($v1)
/* 013D08 80013108 46366200 */  add.d $f8, $f12, $f22
/* 013D0C 8001310C 44982000 */  mtc1  $t8, $f4
/* 013D10 80013110 00000000 */  nop   
/* 013D14 80013114 468021A1 */  cvt.d.w $f6, $f4
/* 013D18 80013118 46363282 */  mul.d $f10, $f6, $f22
/* 013D1C 8001311C 46285100 */  add.d $f4, $f10, $f8
/* 013D20 80013120 4624803C */  c.lt.d $f16, $f4
/* 013D24 80013124 00000000 */  nop   
/* 013D28 80013128 45020003 */  bc1fl .L80013138
/* 013D2C 8001312C 4630A03C */   c.lt.d $f20, $f16
/* 013D30 80013130 A4820000 */  sh    $v0, ($a0)
/* 013D34 80013134 4630A03C */  c.lt.d $f20, $f16
.L80013138:
/* 013D38 80013138 00000000 */  nop   
/* 013D3C 8001313C 4502000E */  bc1fl .L80013178
/* 013D40 80013140 2463010C */   addiu $v1, $v1, 0x10c
/* 013D44 80013144 8C790104 */  lw    $t9, 0x104($v1)
/* 013D48 80013148 46369100 */  add.d $f4, $f18, $f22
/* 013D4C 8001314C 44993000 */  mtc1  $t9, $f6
/* 013D50 80013150 00000000 */  nop   
/* 013D54 80013154 468032A1 */  cvt.d.w $f10, $f6
/* 013D58 80013158 46365202 */  mul.d $f8, $f10, $f22
/* 013D5C 8001315C 46244180 */  add.d $f6, $f8, $f4
/* 013D60 80013160 4626803C */  c.lt.d $f16, $f6
/* 013D64 80013164 00000000 */  nop   
/* 013D68 80013168 45020003 */  bc1fl .L80013178
/* 013D6C 8001316C 2463010C */   addiu $v1, $v1, 0x10c
/* 013D70 80013170 A4820002 */  sh    $v0, 2($a0)
/* 013D74 80013174 2463010C */  addiu $v1, $v1, 0x10c
.L80013178:
/* 013D78 80013178 0065082B */  sltu  $at, $v1, $a1
/* 013D7C 8001317C 5420FFD4 */  bnel  $at, $zero, .L800130D0
/* 013D80 80013180 946F001C */   lhu   $t7, 0x1c($v1)
/* 013D84 80013184 3C038016 */  lui   $v1, %hi(D_801637B8) # $v1, 0x8016
/* 013D88 80013188 3C048016 */  lui   $a0, %hi(D_801637BC) # $a0, 0x8016
/* 013D8C 8001318C 3C058016 */  lui   $a1, %hi(D_801637C0) # $a1, 0x8016
/* 013D90 80013190 24A537C0 */  addiu $a1, %lo(D_801637C0) # addiu $a1, $a1, 0x37c0
/* 013D94 80013194 248437BC */  addiu $a0, %lo(D_801637BC) # addiu $a0, $a0, 0x37bc
/* 013D98 80013198 246337B8 */  addiu $v1, %lo(D_801637B8) # addiu $v1, $v1, 0x37b8
/* 013D9C 8001319C 24020001 */  li    $v0, 1
.L800131A0:
/* 013DA0 800131A0 94680000 */  lhu   $t0, ($v1)
/* 013DA4 800131A4 54480006 */  bnel  $v0, $t0, .L800131C0
/* 013DA8 800131A8 A4800000 */   sh    $zero, ($a0)
/* 013DAC 800131AC 94890000 */  lhu   $t1, ($a0)
/* 013DB0 800131B0 252A0001 */  addiu $t2, $t1, 1
/* 013DB4 800131B4 10000002 */  b     .L800131C0
/* 013DB8 800131B8 A48A0000 */   sh    $t2, ($a0)
/* 013DBC 800131BC A4800000 */  sh    $zero, ($a0)
.L800131C0:
/* 013DC0 800131C0 24840002 */  addiu $a0, $a0, 2
/* 013DC4 800131C4 1485FFF6 */  bne   $a0, $a1, .L800131A0
/* 013DC8 800131C8 24630002 */   addiu $v1, $v1, 2
/* 013DCC 800131CC D7B40008 */  ldc1  $f20, 8($sp)
/* 013DD0 800131D0 D7B60010 */  ldc1  $f22, 0x10($sp)
/* 013DD4 800131D4 03E00008 */  jr    $ra
/* 013DD8 800131D8 27BD0018 */   addiu $sp, $sp, 0x18
