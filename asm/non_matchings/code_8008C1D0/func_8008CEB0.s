glabel func_8008CEB0
/* 08DAB0 8008CEB0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 08DAB4 8008CEB4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 08DAB8 8008CEB8 AFB00018 */  sw    $s0, 0x18($sp)
/* 08DABC 8008CEBC AFA50034 */  sw    $a1, 0x34($sp)
/* 08DAC0 8008CEC0 848300B4 */  lh    $v1, 0xb4($a0)
/* 08DAC4 8008CEC4 3C01800F */  lui   $at, %hi(D_800EF540)
/* 08DAC8 8008CEC8 D424F540 */  ldc1  $f4, %lo(D_800EF540)($at)
/* 08DACC 8008CECC 24630001 */  addiu $v1, $v1, 1
/* 08DAD0 8008CED0 00037400 */  sll   $t6, $v1, 0x10
/* 08DAD4 8008CED4 000E1C03 */  sra   $v1, $t6, 0x10
/* 08DAD8 8008CED8 00630019 */  multu $v1, $v1
/* 08DADC 8008CEDC 44838000 */  mtc1  $v1, $f16
/* 08DAE0 8008CEE0 C48000B8 */  lwc1  $f0, 0xb8($a0)
/* 08DAE4 8008CEE4 00808025 */  move  $s0, $a0
/* 08DAE8 8008CEE8 468084A0 */  cvt.s.w $f18, $f16
/* 08DAEC 8008CEEC 848700AC */  lh    $a3, 0xac($a0)
/* 08DAF0 8008CEF0 0000C012 */  mflo  $t8
/* 08DAF4 8008CEF4 44983000 */  mtc1  $t8, $f6
/* 08DAF8 8008CEF8 00000000 */  nop   
/* 08DAFC 8008CEFC 46803221 */  cvt.d.w $f8, $f6
/* 08DB00 8008CF00 46282282 */  mul.d $f10, $f4, $f8
/* 08DB04 8008CF04 00000000 */  nop   
/* 08DB08 8008CF08 46009182 */  mul.s $f6, $f18, $f0
/* 08DB0C 8008CF0C 46003121 */  cvt.d.s $f4, $f6
/* 08DB10 8008CF10 462A2201 */  sub.d $f8, $f4, $f10
/* 08DB14 8008CF14 4620440D */  trunc.w.d $f16, $f8
/* 08DB18 8008CF18 44028000 */  mfc1  $v0, $f16
/* 08DB1C 8008CF1C 00000000 */  nop   
/* 08DB20 8008CF20 00023400 */  sll   $a2, $v0, 0x10
/* 08DB24 8008CF24 00064403 */  sra   $t0, $a2, 0x10
/* 08DB28 8008CF28 10600047 */  beqz  $v1, .L8008D048
/* 08DB2C 8008CF2C 01003025 */   move  $a2, $t0
/* 08DB30 8008CF30 00024C00 */  sll   $t1, $v0, 0x10
/* 08DB34 8008CF34 00095403 */  sra   $t2, $t1, 0x10
/* 08DB38 8008CF38 05410043 */  bgez  $t2, .L8008D048
/* 08DB3C 8008CF3C 3C01800F */   lui   $at, %hi(D_800EF548)
/* 08DB40 8008CF40 D426F548 */  ldc1  $f6, %lo(D_800EF548)($at)
/* 08DB44 8008CF44 460004A1 */  cvt.d.s $f18, $f0
/* 08DB48 8008CF48 8C8200BC */  lw    $v0, 0xbc($a0)
/* 08DB4C 8008CF4C 46269102 */  mul.d $f4, $f18, $f6
/* 08DB50 8008CF50 00073823 */  negu  $a3, $a3
/* 08DB54 8008CF54 00075C00 */  sll   $t3, $a3, 0x10
/* 08DB58 8008CF58 24010001 */  li    $at, 1
/* 08DB5C 8008CF5C 304D0001 */  andi  $t5, $v0, 1
/* 08DB60 8008CF60 00001825 */  move  $v1, $zero
/* 08DB64 8008CF64 000B3C03 */  sra   $a3, $t3, 0x10
/* 08DB68 8008CF68 15A10004 */  bne   $t5, $at, .L8008CF7C
/* 08DB6C 8008CF6C 46202020 */   cvt.s.d $f0, $f4
/* 08DB70 8008CF70 3C040004 */  lui   $a0, 4
/* 08DB74 8008CF74 00447025 */  or    $t6, $v0, $a0
/* 08DB78 8008CF78 AE0E00BC */  sw    $t6, 0xbc($s0)
.L8008CF7C:
/* 08DB7C 8008CF7C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 08DB80 8008CF80 44815000 */  mtc1  $at, $f10
/* 08DB84 8008CF84 3C040004 */  lui   $a0, 4
/* 08DB88 8008CF88 460A003E */  c.le.s $f0, $f10
/* 08DB8C 8008CF8C 00000000 */  nop   
/* 08DB90 8008CF90 4500002D */  bc1f  .L8008D048
/* 08DB94 8008CF94 00000000 */   nop   
/* 08DB98 8008CF98 8E0F00BC */  lw    $t7, 0xbc($s0)
/* 08DB9C 8008CF9C 2401F7FF */  li    $at, -2049
/* 08DBA0 8008CFA0 01E11024 */  and   $v0, $t7, $at
/* 08DBA4 8008CFA4 0044C824 */  and   $t9, $v0, $a0
/* 08DBA8 8008CFA8 1099000D */  beq   $a0, $t9, .L8008CFE0
/* 08DBAC 8008CFAC AE0200BC */   sw    $v0, 0xbc($s0)
/* 08DBB0 8008CFB0 02002025 */  move  $a0, $s0
/* 08DBB4 8008CFB4 83A50037 */  lb    $a1, 0x37($sp)
/* 08DBB8 8008CFB8 A7A3002A */  sh    $v1, 0x2a($sp)
/* 08DBBC 8008CFBC A7A60026 */  sh    $a2, 0x26($sp)
/* 08DBC0 8008CFC0 A7A70028 */  sh    $a3, 0x28($sp)
/* 08DBC4 8008CFC4 0C0231CF */  jal   func_8008C73C
/* 08DBC8 8008CFC8 E7A0002C */   swc1  $f0, 0x2c($sp)
/* 08DBCC 8008CFCC 87A3002A */  lh    $v1, 0x2a($sp)
/* 08DBD0 8008CFD0 87A60026 */  lh    $a2, 0x26($sp)
/* 08DBD4 8008CFD4 87A70028 */  lh    $a3, 0x28($sp)
/* 08DBD8 8008CFD8 1000001B */  b     .L8008D048
/* 08DBDC 8008CFDC C7A0002C */   lwc1  $f0, 0x2c($sp)
.L8008CFE0:
/* 08DBE0 8008CFE0 960800B6 */  lhu   $t0, 0xb6($s0)
/* 08DBE4 8008CFE4 960B0000 */  lhu   $t3, ($s0)
/* 08DBE8 8008CFE8 3C01FFFB */  lui   $at, (0xFFFBFFFF >> 16) # lui $at, 0xfffb
/* 08DBEC 8008CFEC 3421FFFF */  ori   $at, (0xFFFBFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 08DBF0 8008CFF0 00415024 */  and   $t2, $v0, $at
/* 08DBF4 8008CFF4 24014000 */  li    $at, 16384
/* 08DBF8 8008CFF8 35090020 */  ori   $t1, $t0, 0x20
/* 08DBFC 8008CFFC 316C4000 */  andi  $t4, $t3, 0x4000
/* 08DC00 8008D000 A60900B6 */  sh    $t1, 0xb6($s0)
/* 08DC04 8008D004 15810010 */  bne   $t4, $at, .L8008D048
/* 08DC08 8008D008 AE0A00BC */   sw    $t2, 0xbc($s0)
/* 08DC0C 8008D00C 96050254 */  lhu   $a1, 0x254($s0)
/* 08DC10 8008D010 3C012900 */  lui   $at, (0x29008008 >> 16) # lui $at, 0x2900
/* 08DC14 8008D014 34218008 */  ori   $at, (0x29008008 & 0xFFFF) # ori $at, $at, 0x8008
/* 08DC18 8008D018 00056900 */  sll   $t5, $a1, 4
/* 08DC1C 8008D01C 01A12821 */  addu  $a1, $t5, $at
/* 08DC20 8008D020 E7A0002C */  swc1  $f0, 0x2c($sp)
/* 08DC24 8008D024 A7A70028 */  sh    $a3, 0x28($sp)
/* 08DC28 8008D028 A7A60026 */  sh    $a2, 0x26($sp)
/* 08DC2C 8008D02C A7A3002A */  sh    $v1, 0x2a($sp)
/* 08DC30 8008D030 0C03243D */  jal   func_800C90F4
/* 08DC34 8008D034 93A40037 */   lbu   $a0, 0x37($sp)
/* 08DC38 8008D038 87A3002A */  lh    $v1, 0x2a($sp)
/* 08DC3C 8008D03C 87A60026 */  lh    $a2, 0x26($sp)
/* 08DC40 8008D040 87A70028 */  lh    $a3, 0x28($sp)
/* 08DC44 8008D044 C7A0002C */  lwc1  $f0, 0x2c($sp)
.L8008D048:
/* 08DC48 8008D048 00C70019 */  multu $a2, $a3
/* 08DC4C 8008D04C 8E0200BC */  lw    $v0, 0xbc($s0)
/* 08DC50 8008D050 24010001 */  li    $at, 1
/* 08DC54 8008D054 02002025 */  move  $a0, $s0
/* 08DC58 8008D058 30490008 */  andi  $t1, $v0, 8
/* 08DC5C 8008D05C 00003012 */  mflo  $a2
/* 08DC60 8008D060 00067400 */  sll   $t6, $a2, 0x10
/* 08DC64 8008D064 000E3403 */  sra   $a2, $t6, 0x10
/* 08DC68 8008D068 1CC00004 */  bgtz  $a2, .L8008D07C
/* 08DC6C 8008D06C 00000000 */   nop   
/* 08DC70 8008D070 14E10002 */  bne   $a3, $at, .L8008D07C
/* 08DC74 8008D074 00000000 */   nop   
/* 08DC78 8008D078 00003025 */  move  $a2, $zero
.L8008D07C:
/* 08DC7C 8008D07C 04C00004 */  bltz  $a2, .L8008D090
/* 08DC80 8008D080 2401FFFF */   li    $at, -1
/* 08DC84 8008D084 54E10003 */  bnel  $a3, $at, .L8008D094
/* 08DC88 8008D088 86180078 */   lh    $t8, 0x78($s0)
/* 08DC8C 8008D08C 00003025 */  move  $a2, $zero
.L8008D090:
/* 08DC90 8008D090 86180078 */  lh    $t8, 0x78($s0)
.L8008D094:
/* 08DC94 8008D094 0006C8C0 */  sll   $t9, $a2, 3
/* 08DC98 8008D098 0326C821 */  addu  $t9, $t9, $a2
/* 08DC9C 8008D09C 0019C840 */  sll   $t9, $t9, 1
/* 08DCA0 8008D0A0 03194021 */  addu  $t0, $t8, $t9
/* 08DCA4 8008D0A4 A6080078 */  sh    $t0, 0x78($s0)
/* 08DCA8 8008D0A8 E60000B8 */  swc1  $f0, 0xb8($s0)
/* 08DCAC 8008D0AC A60300B4 */  sh    $v1, 0xb4($s0)
/* 08DCB0 8008D0B0 11200007 */  beqz  $t1, .L8008D0D0
/* 08DCB4 8008D0B4 A60700AC */   sh    $a3, 0xac($s0)
/* 08DCB8 8008D0B8 0C0231CF */  jal   func_8008C73C
/* 08DCBC 8008D0BC 83A50037 */   lb    $a1, 0x37($sp)
/* 08DCC0 8008D0C0 8E0A00BC */  lw    $t2, 0xbc($s0)
/* 08DCC4 8008D0C4 2401F7FF */  li    $at, -2049
/* 08DCC8 8008D0C8 01415824 */  and   $t3, $t2, $at
/* 08DCCC 8008D0CC AE0B00BC */  sw    $t3, 0xbc($s0)
.L8008D0D0:
/* 08DCD0 8008D0D0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 08DCD4 8008D0D4 8FB00018 */  lw    $s0, 0x18($sp)
/* 08DCD8 8008D0D8 27BD0030 */  addiu $sp, $sp, 0x30
/* 08DCDC 8008D0DC 03E00008 */  jr    $ra
/* 08DCE0 8008D0E0 00000000 */   nop   
