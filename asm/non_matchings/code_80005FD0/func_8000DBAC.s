.section .late_rodata

glabel D_800ED004
.float 0.01

.section .text

glabel func_8000DBAC
/* 00E7AC 8000DBAC 27BDFF60 */  addiu $sp, $sp, -0xa0
/* 00E7B0 8000DBB0 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00E7B4 8000DBB4 AFB00020 */  sw    $s0, 0x20($sp)
/* 00E7B8 8000DBB8 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 00E7BC 8000DBBC AFA500A4 */  sw    $a1, 0xa4($sp)
/* 00E7C0 8000DBC0 AFA600A8 */  sw    $a2, 0xa8($sp)
/* 00E7C4 8000DBC4 C48C0000 */  lwc1  $f12, ($a0)
/* 00E7C8 8000DBC8 C48E0004 */  lwc1  $f14, 4($a0)
/* 00E7CC 8000DBCC C4820008 */  lwc1  $f2, 8($a0)
/* 00E7D0 8000DBD0 E7AC0038 */  swc1  $f12, 0x38($sp)
/* 00E7D4 8000DBD4 C4840004 */  lwc1  $f4, 4($a0)
/* 00E7D8 8000DBD8 44061000 */  mfc1  $a2, $f2
/* 00E7DC 8000DBDC 00808025 */  move  $s0, $a0
/* 00E7E0 8000DBE0 E7A4003C */  swc1  $f4, 0x3c($sp)
/* 00E7E4 8000DBE4 C4860008 */  lwc1  $f6, 8($a0)
/* 00E7E8 8000DBE8 46006506 */  mov.s $f20, $f12
/* 00E7EC 8000DBEC E7A60040 */  swc1  $f6, 0x40($sp)
/* 00E7F0 8000DBF0 84A70000 */  lh    $a3, ($a1)
/* 00E7F4 8000DBF4 E7AE0098 */  swc1  $f14, 0x98($sp)
/* 00E7F8 8000DBF8 0C003440 */  jal   func_8000D100
/* 00E7FC 8000DBFC E7A20094 */   swc1  $f2, 0x94($sp)
/* 00E800 8000DC00 8FAF00A4 */  lw    $t7, 0xa4($sp)
/* 00E804 8000DC04 C7A20094 */  lwc1  $f2, 0x94($sp)
/* 00E808 8000DC08 3C038016 */  lui   $v1, %hi(D_8016359C) # $v1, 0x8016
/* 00E80C 8000DC0C A5E20000 */  sh    $v0, ($t7)
/* 00E810 8000DC10 8C63359C */  lw    $v1, %lo(D_8016359C)($v1)
/* 00E814 8000DC14 24580003 */  addiu $t8, $v0, 3
/* 00E818 8000DC18 244A0004 */  addiu $t2, $v0, 4
/* 00E81C 8000DC1C 0303001A */  div   $zero, $t8, $v1
/* 00E820 8000DC20 00003810 */  mfhi  $a3
/* 00E824 8000DC24 3C058016 */  lui   $a1, %hi(D_80163598) # $a1, 0x8016
/* 00E828 8000DC28 8CA53598 */  lw    $a1, %lo(D_80163598)($a1)
/* 00E82C 8000DC2C 0143001A */  div   $zero, $t2, $v1
/* 00E830 8000DC30 0007CC00 */  sll   $t9, $a3, 0x10
/* 00E834 8000DC34 00004010 */  mfhi  $t0
/* 00E838 8000DC38 00194C03 */  sra   $t1, $t9, 0x10
/* 00E83C 8000DC3C 00085C00 */  sll   $t3, $t0, 0x10
/* 00E840 8000DC40 01203825 */  move  $a3, $t1
/* 00E844 8000DC44 000B6403 */  sra   $t4, $t3, 0x10
/* 00E848 8000DC48 00076880 */  sll   $t5, $a3, 2
/* 00E84C 8000DC4C 000C7080 */  sll   $t6, $t4, 2
/* 00E850 8000DC50 14600002 */  bnez  $v1, .L8000DC5C
/* 00E854 8000DC54 00000000 */   nop
/* 00E858 8000DC58 0007000D */  break 7
.L8000DC5C:
/* 00E85C 8000DC5C 2401FFFF */  li    $at, -1
/* 00E860 8000DC60 14610004 */  bne   $v1, $at, .L8000DC74
/* 00E864 8000DC64 3C018000 */   lui   $at, 0x8000
/* 00E868 8000DC68 17010002 */  bne   $t8, $at, .L8000DC74
/* 00E86C 8000DC6C 00000000 */   nop
/* 00E870 8000DC70 0006000D */  break 6
.L8000DC74:
/* 00E874 8000DC74 01A52021 */  addu  $a0, $t5, $a1
/* 00E878 8000DC78 01C53021 */  addu  $a2, $t6, $a1
/* 00E87C 8000DC7C 84D80000 */  lh    $t8, ($a2)
/* 00E880 8000DC80 848F0000 */  lh    $t7, ($a0)
/* 00E884 8000DC84 14600002 */  bnez  $v1, .L8000DC90
/* 00E888 8000DC88 00000000 */   nop
/* 00E88C 8000DC8C 0007000D */  break 7
.L8000DC90:
/* 00E890 8000DC90 2401FFFF */  li    $at, -1
/* 00E894 8000DC94 14610004 */  bne   $v1, $at, .L8000DCA8
/* 00E898 8000DC98 3C018000 */   li    $at, 0x80000000 # -0.000000
/* 00E89C 8000DC9C 15410002 */  bne   $t2, $at, .L8000DCA8
/* 00E8A0 8000DCA0 00000000 */   nop
/* 00E8A4 8000DCA4 0006000D */  break 6
.L8000DCA8:
/* 00E8A8 8000DCA8 01F8C821 */  addu  $t9, $t7, $t8
/* 00E8AC 8000DCAC 44994000 */  mtc1  $t9, $f8
/* 00E8B0 8000DCB0 84CA0002 */  lh    $t2, 2($a2)
/* 00E8B4 8000DCB4 84890002 */  lh    $t1, 2($a0)
/* 00E8B8 8000DCB8 468042A0 */  cvt.s.w $f10, $f8
/* 00E8BC 8000DCBC 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 00E8C0 8000DCC0 012A5821 */  addu  $t3, $t1, $t2
/* 00E8C4 8000DCC4 448B3000 */  mtc1  $t3, $f6
/* 00E8C8 8000DCC8 44812000 */  mtc1  $at, $f4
/* 00E8CC 8000DCCC 46803220 */  cvt.s.w $f8, $f6
/* 00E8D0 8000DCD0 46045002 */  mul.s $f0, $f10, $f4
/* 00E8D4 8000DCD4 44815000 */  mtc1  $at, $f10
/* 00E8D8 8000DCD8 00000000 */  nop
/* 00E8DC 8000DCDC 460A4382 */  mul.s $f14, $f8, $f10
/* 00E8E0 8000DCE0 46140401 */  sub.s $f16, $f0, $f20
/* 00E8E4 8000DCE4 46108102 */  mul.s $f4, $f16, $f16
/* 00E8E8 8000DCE8 46027481 */  sub.s $f18, $f14, $f2
/* 00E8EC 8000DCEC E7B00034 */  swc1  $f16, 0x34($sp)
/* 00E8F0 8000DCF0 46129182 */  mul.s $f6, $f18, $f18
/* 00E8F4 8000DCF4 E7B20030 */  swc1  $f18, 0x30($sp)
/* 00E8F8 8000DCF8 0C033850 */  jal   sqrtf
/* 00E8FC 8000DCFC 46062300 */   add.s $f12, $f4, $f6
/* 00E900 8000DD00 3C01800F */  lui   $at, %hi(D_800ED004) # $at, 0x800f
/* 00E904 8000DD04 C428D004 */  lwc1  $f8, %lo(D_800ED004)($at)
/* 00E908 8000DD08 C7A20094 */  lwc1  $f2, 0x94($sp)
/* 00E90C 8000DD0C C7B00034 */  lwc1  $f16, 0x34($sp)
/* 00E910 8000DD10 4600403C */  c.lt.s $f8, $f0
/* 00E914 8000DD14 C7B20030 */  lwc1  $f18, 0x30($sp)
/* 00E918 8000DD18 C7AA00A8 */  lwc1  $f10, 0xa8($sp)
/* 00E91C 8000DD1C 27A40038 */  addiu $a0, $sp, 0x38
/* 00E920 8000DD20 45000009 */  bc1f  .L8000DD48
/* 00E924 8000DD24 02002825 */   move  $a1, $s0
/* 00E928 8000DD28 460A8102 */  mul.s $f4, $f16, $f10
/* 00E92C 8000DD2C 00000000 */  nop
/* 00E930 8000DD30 460A9202 */  mul.s $f8, $f18, $f10
/* 00E934 8000DD34 46002183 */  div.s $f6, $f4, $f0
/* 00E938 8000DD38 46004103 */  div.s $f4, $f8, $f0
/* 00E93C 8000DD3C 46143300 */  add.s $f12, $f6, $f20
/* 00E940 8000DD40 10000003 */  b     .L8000DD50
/* 00E944 8000DD44 46022380 */   add.s $f14, $f4, $f2
.L8000DD48:
/* 00E948 8000DD48 4600A306 */  mov.s $f12, $f20
/* 00E94C 8000DD4C 46001386 */  mov.s $f14, $f2
.L8000DD50:
/* 00E950 8000DD50 E60C0000 */  swc1  $f12, ($s0)
/* 00E954 8000DD54 C7A60098 */  lwc1  $f6, 0x98($sp)
/* 00E958 8000DD58 E60E0008 */  swc1  $f14, 8($s0)
/* 00E95C 8000DD5C 0C0017F4 */  jal   func_80005FD0
/* 00E960 8000DD60 E6060004 */   swc1  $f6, 4($s0)
/* 00E964 8000DD64 8FBF0024 */  lw    $ra, 0x24($sp)
/* 00E968 8000DD68 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 00E96C 8000DD6C 8FB00020 */  lw    $s0, 0x20($sp)
/* 00E970 8000DD70 03E00008 */  jr    $ra
/* 00E974 8000DD74 27BD00A0 */   addiu $sp, $sp, 0xa0
