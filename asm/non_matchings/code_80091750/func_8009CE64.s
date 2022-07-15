glabel func_8009CE64
/* 09DA64 8009CE64 3C02800E */  lui   $v0, %hi(gGamestate) # $v0, 0x800e
/* 09DA68 8009CE68 8C42C50C */  lw    $v0, %lo(gGamestate)($v0)
/* 09DA6C 8009CE6C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 09DA70 8009CE70 24080005 */  li    $t0, 5
/* 09DA74 8009CE74 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09DA78 8009CE78 15020026 */  bne   $t0, $v0, .L8009CF14
/* 09DA7C 8009CE7C 00002825 */   move  $a1, $zero
/* 09DA80 8009CE80 3C03800E */  lui   $v1, %hi(gCCSelection) # $v1, 0x800e
/* 09DA84 8009CE84 8C63C548 */  lw    $v1, %lo(gCCSelection)($v1)
/* 09DA88 8009CE88 24060002 */  li    $a2, 2
/* 09DA8C 8009CE8C 24070003 */  li    $a3, 3
/* 09DA90 8009CE90 10660006 */  beq   $v1, $a2, .L8009CEAC
/* 09DA94 8009CE94 3C0E8028 */   lui   $t6, %hi(D_802874F5) # $t6, 0x8028
/* 09DA98 8009CE98 24070003 */  li    $a3, 3
/* 09DA9C 8009CE9C 10670003 */  beq   $v1, $a3, .L8009CEAC
/* 09DAA0 8009CEA0 00000000 */   nop
/* 09DAA4 8009CEA4 1000000B */  b     .L8009CED4
/* 09DAA8 8009CEA8 00000000 */   nop
.L8009CEAC:
/* 09DAAC 8009CEAC 81CE74F5 */  lb    $t6, %lo(D_802874F5)($t6)
/* 09DAB0 8009CEB0 3C028019 */  lui   $v0, %hi(gCupSelection) # $v0, 0x8019
/* 09DAB4 8009CEB4 2442EE09 */  addiu $v0, %lo(gCupSelection) # addiu $v0, $v0, -0x11f7
/* 09DAB8 8009CEB8 29C10003 */  slti  $at, $t6, 3
/* 09DABC 8009CEBC 10200005 */  beqz  $at, .L8009CED4
/* 09DAC0 8009CEC0 00000000 */   nop
/* 09DAC4 8009CEC4 804F0000 */  lb    $t7, ($v0)
/* 09DAC8 8009CEC8 14EF0002 */  bne   $a3, $t7, .L8009CED4
/* 09DACC 8009CECC 00000000 */   nop
/* 09DAD0 8009CED0 24050001 */  li    $a1, 1
.L8009CED4:
/* 09DAD4 8009CED4 10A00008 */  beqz  $a1, .L8009CEF8
/* 09DAD8 8009CED8 3C04800F */   lui   $a0, %hi(gMenuSelection) # $a0, 0x800f
/* 09DADC 8009CEDC 24180009 */  li    $t8, 9
/* 09DAE0 8009CEE0 3C018028 */  lui   $at, %hi(gMenuSelectionFromEndingSequence) # $at, 0x8028
/* 09DAE4 8009CEE4 AC387550 */  sw    $t8, %lo(gMenuSelectionFromEndingSequence)($at)
/* 09DAE8 8009CEE8 3C01800E */  lui   $at, %hi(gCreditsCourseId) # $at, 0x800e
/* 09DAEC 8009CEEC 24190008 */  li    $t9, 8
/* 09DAF0 8009CEF0 1000021E */  b     .L8009D76C
/* 09DAF4 8009CEF4 A439C644 */   sh    $t9, %lo(gCreditsCourseId)($at)
.L8009CEF8:
/* 09DAF8 8009CEF8 24050001 */  li    $a1, 1
/* 09DAFC 8009CEFC 3C018028 */  lui   $at, %hi(gMenuSelectionFromEndingSequence) # $at, 0x8028
/* 09DB00 8009CF00 248486A0 */  addiu $a0, %lo(gMenuSelection) # addiu $a0, $a0, -0x7960
/* 09DB04 8009CF04 AC257550 */  sw    $a1, %lo(gMenuSelectionFromEndingSequence)($at)
/* 09DB08 8009CF08 240E000B */  li    $t6, 11
/* 09DB0C 8009CF0C 10000217 */  b     .L8009D76C
/* 09DB10 8009CF10 AC8E0000 */   sw    $t6, ($a0)
.L8009CF14:
/* 09DB14 8009CF14 24090004 */  li    $t1, 4
/* 09DB18 8009CF18 152200A0 */  bne   $t1, $v0, .L8009D19C
/* 09DB1C 8009CF1C 3C018019 */   lui   $at, %hi(D_8018E7AC)
/* 09DB20 8009CF20 3C0F8019 */  lui   $t7, %hi(D_8018E7AC) # $t7, 0x8019
/* 09DB24 8009CF24 25EFE7AC */  addiu $t7, %lo(D_8018E7AC) # addiu $t7, $t7, -0x1854
/* 09DB28 8009CF28 008F1021 */  addu  $v0, $a0, $t7
/* 09DB2C 8009CF2C 80580000 */  lb    $t8, ($v0)
/* 09DB30 8009CF30 24060002 */  li    $a2, 2
/* 09DB34 8009CF34 3C198019 */  lui   $t9, %hi(D_8018E7B0) # $t9, 0x8019
/* 09DB38 8009CF38 14D8020C */  bne   $a2, $t8, .L8009D76C
/* 09DB3C 8009CF3C 2739E7B0 */   addiu $t9, %lo(D_8018E7B0) # addiu $t9, $t9, -0x1850
/* 09DB40 8009CF40 10590003 */  beq   $v0, $t9, .L8009CF50
/* 09DB44 8009CF44 240400B0 */   li    $a0, 176
/* 09DB48 8009CF48 10000208 */  b     .L8009D76C
/* 09DB4C 8009CF4C A0480000 */   sb    $t0, ($v0)
.L8009CF50:
/* 09DB50 8009CF50 AFA20018 */  sw    $v0, 0x18($sp)
/* 09DB54 8009CF54 0C02ABCC */  jal   find_8018D9E0_entry
/* 09DB58 8009CF58 AFA50028 */   sw    $a1, 0x28($sp)
/* 09DB5C 8009CF5C 1040001D */  beqz  $v0, .L8009CFD4
/* 09DB60 8009CF60 8FA50028 */   lw    $a1, 0x28($sp)
/* 09DB64 8009CF64 8C430004 */  lw    $v1, 4($v0)
/* 09DB68 8009CF68 2401000A */  li    $at, 10
/* 09DB6C 8009CF6C 10610009 */  beq   $v1, $at, .L8009CF94
/* 09DB70 8009CF70 2401000B */   li    $at, 11
/* 09DB74 8009CF74 1061000B */  beq   $v1, $at, .L8009CFA4
/* 09DB78 8009CF78 2401000C */   li    $at, 12
/* 09DB7C 8009CF7C 1061000D */  beq   $v1, $at, .L8009CFB4
/* 09DB80 8009CF80 2401000D */   li    $at, 13
/* 09DB84 8009CF84 1061000F */  beq   $v1, $at, .L8009CFC4
/* 09DB88 8009CF88 00000000 */   nop
/* 09DB8C 8009CF8C 1000000D */  b     .L8009CFC4
/* 09DB90 8009CF90 00000000 */   nop
.L8009CF94:
/* 09DB94 8009CF94 0C0A40EC */  jal   func_802903B0
/* 09DB98 8009CF98 00000000 */   nop
/* 09DB9C 8009CF9C 100001F4 */  b     .L8009D770
/* 09DBA0 8009CFA0 8FBF0014 */   lw    $ra, 0x14($sp)
.L8009CFA4:
/* 09DBA4 8009CFA4 0C0A40E2 */  jal   func_80290388
/* 09DBA8 8009CFA8 00000000 */   nop
/* 09DBAC 8009CFAC 100001F0 */  b     .L8009D770
/* 09DBB0 8009CFB0 8FBF0014 */   lw    $ra, 0x14($sp)
.L8009CFB4:
/* 09DBB4 8009CFB4 0C0A40D8 */  jal   func_80290360
/* 09DBB8 8009CFB8 00000000 */   nop
/* 09DBBC 8009CFBC 100001EC */  b     .L8009D770
/* 09DBC0 8009CFC0 8FBF0014 */   lw    $ra, 0x14($sp)
.L8009CFC4:
/* 09DBC4 8009CFC4 0C0A40CE */  jal   func_80290338
/* 09DBC8 8009CFC8 00000000 */   nop
/* 09DBCC 8009CFCC 100001E8 */  b     .L8009D770
/* 09DBD0 8009CFD0 8FBF0014 */   lw    $ra, 0x14($sp)
.L8009CFD4:
/* 09DBD4 8009CFD4 240400AC */  li    $a0, 172
/* 09DBD8 8009CFD8 0C02ABCC */  jal   find_8018D9E0_entry
/* 09DBDC 8009CFDC AFA50028 */   sw    $a1, 0x28($sp)
/* 09DBE0 8009CFE0 10400013 */  beqz  $v0, .L8009D030
/* 09DBE4 8009CFE4 8FA50028 */   lw    $a1, 0x28($sp)
/* 09DBE8 8009CFE8 8C430004 */  lw    $v1, 4($v0)
/* 09DBEC 8009CFEC 2401000B */  li    $at, 11
/* 09DBF0 8009CFF0 10610005 */  beq   $v1, $at, .L8009D008
/* 09DBF4 8009CFF4 2401000C */   li    $at, 12
/* 09DBF8 8009CFF8 10610009 */  beq   $v1, $at, .L8009D020
/* 09DBFC 8009CFFC 00000000 */   nop
/* 09DC00 8009D000 10000007 */  b     .L8009D020
/* 09DC04 8009D004 00000000 */   nop
.L8009D008:
/* 09DC08 8009D008 0C0A40EC */  jal   func_802903B0
/* 09DC0C 8009D00C 00000000 */   nop
/* 09DC10 8009D010 24050001 */  li    $a1, 1
/* 09DC14 8009D014 3C018016 */  lui   $at, %hi(D_8016556E) # $at, 0x8016
/* 09DC18 8009D018 100001D4 */  b     .L8009D76C
/* 09DC1C 8009D01C A425556E */   sh    $a1, %lo(D_8016556E)($at)
.L8009D020:
/* 09DC20 8009D020 0C0A40CE */  jal   func_80290338
/* 09DC24 8009D024 00000000 */   nop
/* 09DC28 8009D028 100001D1 */  b     .L8009D770
/* 09DC2C 8009D02C 8FBF0014 */   lw    $ra, 0x14($sp)
.L8009D030:
/* 09DC30 8009D030 240400C7 */  li    $a0, 199
/* 09DC34 8009D034 0C02ABCC */  jal   find_8018D9E0_entry
/* 09DC38 8009D038 AFA50028 */   sw    $a1, 0x28($sp)
/* 09DC3C 8009D03C 10400021 */  beqz  $v0, .L8009D0C4
/* 09DC40 8009D040 8FA50028 */   lw    $a1, 0x28($sp)
/* 09DC44 8009D044 8C4E0004 */  lw    $t6, 4($v0)
/* 09DC48 8009D048 25CFFFF4 */  addiu $t7, $t6, -0xc
/* 09DC4C 8009D04C 2DE10021 */  sltiu $at, $t7, 0x21
/* 09DC50 8009D050 10200016 */  beqz  $at, .L8009D0AC
/* 09DC54 8009D054 000F7880 */   sll   $t7, $t7, 2
/* 09DC58 8009D058 3C01800F */  lui   $at, %hi(jpt_800F109C)
/* 09DC5C 8009D05C 002F0821 */  addu  $at, $at, $t7
/* 09DC60 8009D060 8C2F109C */  lw    $t7, %lo(jpt_800F109C)($at)
/* 09DC64 8009D064 01E00008 */  jr    $t7
/* 09DC68 8009D068 00000000 */   nop
glabel L8009D06C
/* 09DC6C 8009D06C 0C0A40EC */  jal   func_802903B0
/* 09DC70 8009D070 00000000 */   nop
/* 09DC74 8009D074 10000010 */  b     .L8009D0B8
/* 09DC78 8009D078 24050001 */   li    $a1, 1
glabel L8009D07C
/* 09DC7C 8009D07C 0C0A40E2 */  jal   func_80290388
/* 09DC80 8009D080 00000000 */   nop
/* 09DC84 8009D084 1000000C */  b     .L8009D0B8
/* 09DC88 8009D088 24050001 */   li    $a1, 1
glabel L8009D08C
/* 09DC8C 8009D08C 0C0A40D8 */  jal   func_80290360
/* 09DC90 8009D090 00000000 */   nop
/* 09DC94 8009D094 10000008 */  b     .L8009D0B8
/* 09DC98 8009D098 24050001 */   li    $a1, 1
glabel L8009D09C
/* 09DC9C 8009D09C 0C0A40CE */  jal   func_80290338
/* 09DCA0 8009D0A0 00000000 */   nop
/* 09DCA4 8009D0A4 10000004 */  b     .L8009D0B8
/* 09DCA8 8009D0A8 24050001 */   li    $a1, 1
.L8009D0AC:
glabel L8009D0AC
/* 09DCAC 8009D0AC 8FB90018 */  lw    $t9, 0x18($sp)
/* 09DCB0 8009D0B0 24180005 */  li    $t8, 5
/* 09DCB4 8009D0B4 A3380000 */  sb    $t8, ($t9)
.L8009D0B8:
/* 09DCB8 8009D0B8 10A00002 */  beqz  $a1, .L8009D0C4
/* 09DCBC 8009D0BC 3C01800E */   lui   $at, %hi(D_800DC5FC) # $at, 0x800e
/* 09DCC0 8009D0C0 A420C5FC */  sh    $zero, %lo(D_800DC5FC)($at)
.L8009D0C4:
/* 09DCC4 8009D0C4 0C02ABCC */  jal   find_8018D9E0_entry
/* 09DCC8 8009D0C8 240400BD */   li    $a0, 189
/* 09DCCC 8009D0CC 10400030 */  beqz  $v0, .L8009D190
/* 09DCD0 8009D0D0 8FAF0018 */   lw    $t7, 0x18($sp)
/* 09DCD4 8009D0D4 8C4E0004 */  lw    $t6, 4($v0)
/* 09DCD8 8009D0D8 25CFFFF5 */  addiu $t7, $t6, -0xb
/* 09DCDC 8009D0DC 2DE10005 */  sltiu $at, $t7, 5
/* 09DCE0 8009D0E0 102001A2 */  beqz  $at, .L8009D76C
/* 09DCE4 8009D0E4 000F7880 */   sll   $t7, $t7, 2
/* 09DCE8 8009D0E8 3C01800F */  lui   $at, %hi(jpt_800F1120)
/* 09DCEC 8009D0EC 002F0821 */  addu  $at, $at, $t7
/* 09DCF0 8009D0F0 8C2F1120 */  lw    $t7, %lo(jpt_800F1120)($at)
/* 09DCF4 8009D0F4 01E00008 */  jr    $t7
/* 09DCF8 8009D0F8 00000000 */   nop
glabel L8009D0FC
/* 09DCFC 8009D0FC 24180001 */  li    $t8, 1
/* 09DD00 8009D100 3C018016 */  lui   $at, %hi(D_8015F892) # $at, 0x8016
/* 09DD04 8009D104 A438F892 */  sh    $t8, %lo(D_8015F892)($at)
/* 09DD08 8009D108 3C018016 */  lui   $at, %hi(D_8015F890) # $at, 0x8016
/* 09DD0C 8009D10C 0C0A40EC */  jal   func_802903B0
/* 09DD10 8009D110 A420F890 */   sh    $zero, %lo(D_8015F890)($at)
/* 09DD14 8009D114 10000196 */  b     .L8009D770
/* 09DD18 8009D118 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L8009D11C
/* 09DD1C 8009D11C 3C018016 */  lui   $at, %hi(D_8015F892) # $at, 0x8016
/* 09DD20 8009D120 A420F892 */  sh    $zero, %lo(D_8015F892)($at)
/* 09DD24 8009D124 3C018016 */  lui   $at, %hi(D_8015F890) # $at, 0x8016
/* 09DD28 8009D128 0C0A40E2 */  jal   func_80290388
/* 09DD2C 8009D12C A420F890 */   sh    $zero, %lo(D_8015F890)($at)
/* 09DD30 8009D130 1000018F */  b     .L8009D770
/* 09DD34 8009D134 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L8009D138
/* 09DD38 8009D138 3C018016 */  lui   $at, %hi(D_8015F892) # $at, 0x8016
/* 09DD3C 8009D13C A420F892 */  sh    $zero, %lo(D_8015F892)($at)
/* 09DD40 8009D140 3C018016 */  lui   $at, %hi(D_8015F890) # $at, 0x8016
/* 09DD44 8009D144 0C0A40D8 */  jal   func_80290360
/* 09DD48 8009D148 A420F890 */   sh    $zero, %lo(D_8015F890)($at)
/* 09DD4C 8009D14C 10000188 */  b     .L8009D770
/* 09DD50 8009D150 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L8009D154
/* 09DD54 8009D154 3C018016 */  lui   $at, %hi(D_8015F892) # $at, 0x8016
/* 09DD58 8009D158 A420F892 */  sh    $zero, %lo(D_8015F892)($at)
/* 09DD5C 8009D15C 3C018016 */  lui   $at, %hi(D_8015F890) # $at, 0x8016
/* 09DD60 8009D160 0C0A40CE */  jal   func_80290338
/* 09DD64 8009D164 A420F890 */   sh    $zero, %lo(D_8015F890)($at)
/* 09DD68 8009D168 10000181 */  b     .L8009D770
/* 09DD6C 8009D16C 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L8009D170
/* 09DD70 8009D170 3C018016 */  lui   $at, %hi(D_8015F892) # $at, 0x8016
/* 09DD74 8009D174 A420F892 */  sh    $zero, %lo(D_8015F892)($at)
/* 09DD78 8009D178 3C018016 */  lui   $at, %hi(D_8015F890) # $at, 0x8016
/* 09DD7C 8009D17C 24190001 */  li    $t9, 1
/* 09DD80 8009D180 0C0A40EC */  jal   func_802903B0
/* 09DD84 8009D184 A439F890 */   sh    $t9, %lo(D_8015F890)($at)
/* 09DD88 8009D188 10000179 */  b     .L8009D770
/* 09DD8C 8009D18C 8FBF0014 */   lw    $ra, 0x14($sp)
.L8009D190:
/* 09DD90 8009D190 240E0005 */  li    $t6, 5
/* 09DD94 8009D194 10000175 */  b     .L8009D76C
/* 09DD98 8009D198 A1EE0000 */   sb    $t6, ($t7)
.L8009D19C:
/* 09DD9C 8009D19C 3C188019 */  lui   $t8, %hi(gDebugMenuSelection) # $t8, 0x8019
/* 09DDA0 8009D1A0 8318EDEF */  lb    $t8, %lo(gDebugMenuSelection)($t8)
/* 09DDA4 8009D1A4 00240821 */  addu  $at, $at, $a0
/* 09DDA8 8009D1A8 A020E7AC */  sb    $zero, %lo(D_8018E7AC)($at)
/* 09DDAC 8009D1AC 24010040 */  li    $at, 64
/* 09DDB0 8009D1B0 130100FA */  beq   $t8, $at, .L8009D59C
/* 09DDB4 8009D1B4 3C198019 */   lui   $t9, %hi(D_8018EDE0) # $t9, 0x8019
/* 09DDB8 8009D1B8 8F39EDE0 */  lw    $t9, %lo(D_8018EDE0)($t9)
/* 09DDBC 8009D1BC 2F210005 */  sltiu $at, $t9, 5
/* 09DDC0 8009D1C0 102000DE */  beqz  $at, .L8009D53C
/* 09DDC4 8009D1C4 0019C880 */   sll   $t9, $t9, 2
/* 09DDC8 8009D1C8 3C01800F */  lui   $at, %hi(jpt_800F1134)
/* 09DDCC 8009D1CC 00390821 */  addu  $at, $at, $t9
/* 09DDD0 8009D1D0 8C391134 */  lw    $t9, %lo(jpt_800F1134)($at)
/* 09DDD4 8009D1D4 03200008 */  jr    $t9
/* 09DDD8 8009D1D8 00000000 */   nop
glabel L8009D1DC
/* 09DDDC 8009D1DC 3C04800F */  lui   $a0, %hi(gMenuSelection) # $a0, 0x800f
/* 09DDE0 8009D1E0 248486A0 */  addiu $a0, %lo(gMenuSelection) # addiu $a0, $a0, -0x7960
/* 09DDE4 8009D1E4 8C820000 */  lw    $v0, ($a0)
/* 09DDE8 8009D1E8 24010008 */  li    $at, 8
/* 09DDEC 8009D1EC 24060002 */  li    $a2, 2
/* 09DDF0 8009D1F0 14410006 */  bne   $v0, $at, .L8009D20C
/* 09DDF4 8009D1F4 244F0001 */   addiu $t7, $v0, 1
/* 09DDF8 8009D1F8 240E000A */  li    $t6, 10
/* 09DDFC 8009D1FC AC8E0000 */  sw    $t6, ($a0)
/* 09DE00 8009D200 3C01800F */  lui   $at, %hi(D_800E86A4) # $at, 0x800f
/* 09DE04 8009D204 100000CD */  b     .L8009D53C
/* 09DE08 8009D208 AC2686A4 */   sw    $a2, %lo(D_800E86A4)($at)
.L8009D20C:
/* 09DE0C 8009D20C 100000CB */  b     .L8009D53C
/* 09DE10 8009D210 AC8F0000 */   sw    $t7, ($a0)
glabel L8009D214
/* 09DE14 8009D214 3C04800F */  lui   $a0, %hi(gMenuSelection) # $a0, 0x800f
/* 09DE18 8009D218 248486A0 */  addiu $a0, %lo(gMenuSelection) # addiu $a0, $a0, -0x7960
/* 09DE1C 8009D21C 8C980000 */  lw    $t8, ($a0)
/* 09DE20 8009D220 2719FFFF */  addiu $t9, $t8, -1
/* 09DE24 8009D224 100000C5 */  b     .L8009D53C
/* 09DE28 8009D228 AC990000 */   sw    $t9, ($a0)
glabel L8009D22C
/* 09DE2C 8009D22C 240E0001 */  li    $t6, 1
/* 09DE30 8009D230 3C01800E */  lui   $at, %hi(D_800DC51C) # $at, 0x800e
/* 09DE34 8009D234 A42EC51C */  sh    $t6, %lo(D_800DC51C)($at)
/* 09DE38 8009D238 24050001 */  li    $a1, 1
/* 09DE3C 8009D23C 3C018019 */  lui   $at, %hi(D_8018EE08) # $at, 0x8019
/* 09DE40 8009D240 A025EE08 */  sb    $a1, %lo(D_8018EE08)($at)
/* 09DE44 8009D244 3C01800E */  lui   $at, %hi(gGamestateNext) # $at, 0x800e
/* 09DE48 8009D248 AC29C524 */  sw    $t1, %lo(gGamestateNext)($at)
/* 09DE4C 8009D24C 3C04800F */  lui   $a0, %hi(gNextDemoId) # $a0, 0x800f
/* 09DE50 8009D250 3C01800E */  lui   $at, %hi(gCCSelection) # $at, 0x800e
/* 09DE54 8009D254 248486BC */  addiu $a0, %lo(gNextDemoId) # addiu $a0, $a0, -0x7944
/* 09DE58 8009D258 AC25C548 */  sw    $a1, %lo(gCCSelection)($at)
/* 09DE5C 8009D25C 80830000 */  lb    $v1, ($a0)
/* 09DE60 8009D260 2C610006 */  sltiu $at, $v1, 6
/* 09DE64 8009D264 10200084 */  beqz  $at, .L8009D478
/* 09DE68 8009D268 00037880 */   sll   $t7, $v1, 2
/* 09DE6C 8009D26C 3C01800F */  lui   $at, %hi(jpt_800F1148)
/* 09DE70 8009D270 002F0821 */  addu  $at, $at, $t7
/* 09DE74 8009D274 8C2F1148 */  lw    $t7, %lo(jpt_800F1148)($at)
/* 09DE78 8009D278 01E00008 */  jr    $t7
/* 09DE7C 8009D27C 00000000 */   nop
glabel L8009D280
/* 09DE80 8009D280 3C01800E */  lui   $at, %hi(gCurrentCourseId) # $at, 0x800e
/* 09DE84 8009D284 A420C5A0 */  sh    $zero, %lo(gCurrentCourseId)($at)
/* 09DE88 8009D288 3C02800F */  lui   $v0, %hi(gCharacterSelections) # $v0, 0x800f
/* 09DE8C 8009D28C 3C0A800E */  lui   $t2, %hi(gPlayerCountSelection1) # $t2, 0x800e
/* 09DE90 8009D290 3C0B8019 */  lui   $t3, %hi(D_8018EDF3) # $t3, 0x8019
/* 09DE94 8009D294 3C0C800E */  lui   $t4, %hi(gModeSelection) # $t4, 0x800e
/* 09DE98 8009D298 3C0D800E */  lui   $t5, %hi(gScreenModeSelection) # $t5, 0x800e
/* 09DE9C 8009D29C 25ADC530 */  addiu $t5, %lo(gScreenModeSelection) # addiu $t5, $t5, -0x3ad0
/* 09DEA0 8009D2A0 258CC53C */  addiu $t4, %lo(gModeSelection) # addiu $t4, $t4, -0x3ac4
/* 09DEA4 8009D2A4 256BEDF3 */  addiu $t3, %lo(D_8018EDF3) # addiu $t3, $t3, -0x120d
/* 09DEA8 8009D2A8 254AC538 */  addiu $t2, %lo(gPlayerCountSelection1) # addiu $t2, $t2, -0x3ac8
/* 09DEAC 8009D2AC 244286A8 */  addiu $v0, %lo(gCharacterSelections) # addiu $v0, $v0, -0x7958
/* 09DEB0 8009D2B0 ADA00000 */  sw    $zero, ($t5)
/* 09DEB4 8009D2B4 AD450000 */  sw    $a1, ($t2)
/* 09DEB8 8009D2B8 A1650000 */  sb    $a1, ($t3)
/* 09DEBC 8009D2BC A0400000 */  sb    $zero, ($v0)
/* 09DEC0 8009D2C0 1000006D */  b     .L8009D478
/* 09DEC4 8009D2C4 AD800000 */   sw    $zero, ($t4)
glabel L8009D2C8
/* 09DEC8 8009D2C8 3C01800E */  lui   $at, %hi(gCurrentCourseId) # $at, 0x800e
/* 09DECC 8009D2CC A425C5A0 */  sh    $a1, %lo(gCurrentCourseId)($at)
/* 09DED0 8009D2D0 24060002 */  li    $a2, 2
/* 09DED4 8009D2D4 3C02800F */  lui   $v0, %hi(gCharacterSelections) # $v0, 0x800f
/* 09DED8 8009D2D8 3C0A800E */  lui   $t2, %hi(gPlayerCountSelection1) # $t2, 0x800e
/* 09DEDC 8009D2DC 3C0B8019 */  lui   $t3, %hi(D_8018EDF3) # $t3, 0x8019
/* 09DEE0 8009D2E0 3C0C800E */  lui   $t4, %hi(gModeSelection) # $t4, 0x800e
/* 09DEE4 8009D2E4 3C0D800E */  lui   $t5, %hi(gScreenModeSelection) # $t5, 0x800e
/* 09DEE8 8009D2E8 25ADC530 */  addiu $t5, %lo(gScreenModeSelection) # addiu $t5, $t5, -0x3ad0
/* 09DEEC 8009D2EC 258CC53C */  addiu $t4, %lo(gModeSelection) # addiu $t4, $t4, -0x3ac4
/* 09DEF0 8009D2F0 256BEDF3 */  addiu $t3, %lo(D_8018EDF3) # addiu $t3, $t3, -0x120d
/* 09DEF4 8009D2F4 254AC538 */  addiu $t2, %lo(gPlayerCountSelection1) # addiu $t2, $t2, -0x3ac8
/* 09DEF8 8009D2F8 244286A8 */  addiu $v0, %lo(gCharacterSelections) # addiu $v0, $v0, -0x7958
/* 09DEFC 8009D2FC ADA50000 */  sw    $a1, ($t5)
/* 09DF00 8009D300 AD460000 */  sw    $a2, ($t2)
/* 09DF04 8009D304 A1660000 */  sb    $a2, ($t3)
/* 09DF08 8009D308 A0460000 */  sb    $a2, ($v0)
/* 09DF0C 8009D30C A0490001 */  sb    $t1, 1($v0)
/* 09DF10 8009D310 10000059 */  b     .L8009D478
/* 09DF14 8009D314 AD860000 */   sw    $a2, ($t4)
glabel L8009D318
/* 09DF18 8009D318 2418000B */  li    $t8, 11
/* 09DF1C 8009D31C 3C01800E */  lui   $at, %hi(gCurrentCourseId) # $at, 0x800e
/* 09DF20 8009D320 A438C5A0 */  sh    $t8, %lo(gCurrentCourseId)($at)
/* 09DF24 8009D324 3C02800F */  lui   $v0, %hi(gCharacterSelections) # $v0, 0x800f
/* 09DF28 8009D328 3C0A800E */  lui   $t2, %hi(gPlayerCountSelection1) # $t2, 0x800e
/* 09DF2C 8009D32C 3C0B8019 */  lui   $t3, %hi(D_8018EDF3) # $t3, 0x8019
/* 09DF30 8009D330 3C0C800E */  lui   $t4, %hi(gModeSelection) # $t4, 0x800e
/* 09DF34 8009D334 3C0D800E */  lui   $t5, %hi(gScreenModeSelection) # $t5, 0x800e
/* 09DF38 8009D338 25ADC530 */  addiu $t5, %lo(gScreenModeSelection) # addiu $t5, $t5, -0x3ad0
/* 09DF3C 8009D33C 258CC53C */  addiu $t4, %lo(gModeSelection) # addiu $t4, $t4, -0x3ac4
/* 09DF40 8009D340 256BEDF3 */  addiu $t3, %lo(D_8018EDF3) # addiu $t3, $t3, -0x120d
/* 09DF44 8009D344 254AC538 */  addiu $t2, %lo(gPlayerCountSelection1) # addiu $t2, $t2, -0x3ac8
/* 09DF48 8009D348 244286A8 */  addiu $v0, %lo(gCharacterSelections) # addiu $v0, $v0, -0x7958
/* 09DF4C 8009D34C ADA00000 */  sw    $zero, ($t5)
/* 09DF50 8009D350 AD450000 */  sw    $a1, ($t2)
/* 09DF54 8009D354 A1650000 */  sb    $a1, ($t3)
/* 09DF58 8009D358 A0450000 */  sb    $a1, ($v0)
/* 09DF5C 8009D35C 10000046 */  b     .L8009D478
/* 09DF60 8009D360 AD800000 */   sw    $zero, ($t4)
glabel L8009D364
/* 09DF64 8009D364 2419000E */  li    $t9, 14
/* 09DF68 8009D368 3C01800E */  lui   $at, %hi(gCurrentCourseId) # $at, 0x800e
/* 09DF6C 8009D36C A439C5A0 */  sh    $t9, %lo(gCurrentCourseId)($at)
/* 09DF70 8009D370 3C02800F */  lui   $v0, %hi(gCharacterSelections) # $v0, 0x800f
/* 09DF74 8009D374 244286A8 */  addiu $v0, %lo(gCharacterSelections) # addiu $v0, $v0, -0x7958
/* 09DF78 8009D378 24070003 */  li    $a3, 3
/* 09DF7C 8009D37C 3C0A800E */  lui   $t2, %hi(gPlayerCountSelection1) # $t2, 0x800e
/* 09DF80 8009D380 3C0B8019 */  lui   $t3, %hi(D_8018EDF3) # $t3, 0x8019
/* 09DF84 8009D384 3C0C800E */  lui   $t4, %hi(gModeSelection) # $t4, 0x800e
/* 09DF88 8009D388 3C0D800E */  lui   $t5, %hi(gScreenModeSelection) # $t5, 0x800e
/* 09DF8C 8009D38C 25ADC530 */  addiu $t5, %lo(gScreenModeSelection) # addiu $t5, $t5, -0x3ad0
/* 09DF90 8009D390 258CC53C */  addiu $t4, %lo(gModeSelection) # addiu $t4, $t4, -0x3ac4
/* 09DF94 8009D394 256BEDF3 */  addiu $t3, %lo(D_8018EDF3) # addiu $t3, $t3, -0x120d
/* 09DF98 8009D398 254AC538 */  addiu $t2, %lo(gPlayerCountSelection1) # addiu $t2, $t2, -0x3ac8
/* 09DF9C 8009D39C 24060002 */  li    $a2, 2
/* 09DFA0 8009D3A0 240E0007 */  li    $t6, 7
/* 09DFA4 8009D3A4 ADA70000 */  sw    $a3, ($t5)
/* 09DFA8 8009D3A8 AD470000 */  sw    $a3, ($t2)
/* 09DFAC 8009D3AC A1670000 */  sb    $a3, ($t3)
/* 09DFB0 8009D3B0 A0480000 */  sb    $t0, ($v0)
/* 09DFB4 8009D3B4 A0460001 */  sb    $a2, 1($v0)
/* 09DFB8 8009D3B8 A04E0002 */  sb    $t6, 2($v0)
/* 09DFBC 8009D3BC 1000002E */  b     .L8009D478
/* 09DFC0 8009D3C0 AD860000 */   sw    $a2, ($t4)
glabel L8009D3C4
/* 09DFC4 8009D3C4 24060002 */  li    $a2, 2
/* 09DFC8 8009D3C8 3C01800E */  lui   $at, %hi(gCurrentCourseId) # $at, 0x800e
/* 09DFCC 8009D3CC A426C5A0 */  sh    $a2, %lo(gCurrentCourseId)($at)
/* 09DFD0 8009D3D0 3C02800F */  lui   $v0, %hi(gCharacterSelections) # $v0, 0x800f
/* 09DFD4 8009D3D4 3C0A800E */  lui   $t2, %hi(gPlayerCountSelection1) # $t2, 0x800e
/* 09DFD8 8009D3D8 3C0B8019 */  lui   $t3, %hi(D_8018EDF3) # $t3, 0x8019
/* 09DFDC 8009D3DC 3C0C800E */  lui   $t4, %hi(gModeSelection) # $t4, 0x800e
/* 09DFE0 8009D3E0 3C0D800E */  lui   $t5, %hi(gScreenModeSelection) # $t5, 0x800e
/* 09DFE4 8009D3E4 25ADC530 */  addiu $t5, %lo(gScreenModeSelection) # addiu $t5, $t5, -0x3ad0
/* 09DFE8 8009D3E8 258CC53C */  addiu $t4, %lo(gModeSelection) # addiu $t4, $t4, -0x3ac4
/* 09DFEC 8009D3EC 256BEDF3 */  addiu $t3, %lo(D_8018EDF3) # addiu $t3, $t3, -0x120d
/* 09DFF0 8009D3F0 254AC538 */  addiu $t2, %lo(gPlayerCountSelection1) # addiu $t2, $t2, -0x3ac8
/* 09DFF4 8009D3F4 244286A8 */  addiu $v0, %lo(gCharacterSelections) # addiu $v0, $v0, -0x7958
/* 09DFF8 8009D3F8 240F0007 */  li    $t7, 7
/* 09DFFC 8009D3FC ADA00000 */  sw    $zero, ($t5)
/* 09E000 8009D400 AD450000 */  sw    $a1, ($t2)
/* 09E004 8009D404 A1650000 */  sb    $a1, ($t3)
/* 09E008 8009D408 A04F0000 */  sb    $t7, ($v0)
/* 09E00C 8009D40C 1000001A */  b     .L8009D478
/* 09E010 8009D410 AD800000 */   sw    $zero, ($t4)
glabel L8009D414
/* 09E014 8009D414 2418000C */  li    $t8, 12
/* 09E018 8009D418 3C01800E */  lui   $at, %hi(gCurrentCourseId) # $at, 0x800e
/* 09E01C 8009D41C A438C5A0 */  sh    $t8, %lo(gCurrentCourseId)($at)
/* 09E020 8009D420 3C02800F */  lui   $v0, %hi(gCharacterSelections) # $v0, 0x800f
/* 09E024 8009D424 244286A8 */  addiu $v0, %lo(gCharacterSelections) # addiu $v0, $v0, -0x7958
/* 09E028 8009D428 3C0A800E */  lui   $t2, %hi(gPlayerCountSelection1) # $t2, 0x800e
/* 09E02C 8009D42C 3C0B8019 */  lui   $t3, %hi(D_8018EDF3) # $t3, 0x8019
/* 09E030 8009D430 3C0C800E */  lui   $t4, %hi(gModeSelection) # $t4, 0x800e
/* 09E034 8009D434 3C0D800E */  lui   $t5, %hi(gScreenModeSelection) # $t5, 0x800e
/* 09E038 8009D438 25ADC530 */  addiu $t5, %lo(gScreenModeSelection) # addiu $t5, $t5, -0x3ad0
/* 09E03C 8009D43C 258CC53C */  addiu $t4, %lo(gModeSelection) # addiu $t4, $t4, -0x3ac4
/* 09E040 8009D440 256BEDF3 */  addiu $t3, %lo(D_8018EDF3) # addiu $t3, $t3, -0x120d
/* 09E044 8009D444 254AC538 */  addiu $t2, %lo(gPlayerCountSelection1) # addiu $t2, $t2, -0x3ac8
/* 09E048 8009D448 24060002 */  li    $a2, 2
/* 09E04C 8009D44C 24070003 */  li    $a3, 3
/* 09E050 8009D450 24080006 */  li    $t0, 6
/* 09E054 8009D454 ADA70000 */  sw    $a3, ($t5)
/* 09E058 8009D458 AD490000 */  sw    $t1, ($t2)
/* 09E05C 8009D45C A1690000 */  sb    $t1, ($t3)
/* 09E060 8009D460 A0400000 */  sb    $zero, ($v0)
/* 09E064 8009D464 A0450001 */  sb    $a1, 1($v0)
/* 09E068 8009D468 A0480002 */  sb    $t0, 2($v0)
/* 09E06C 8009D46C A0470003 */  sb    $a3, 3($v0)
/* 09E070 8009D470 10000001 */  b     .L8009D478
/* 09E074 8009D474 AD860000 */   sw    $a2, ($t4)
.L8009D478:
/* 09E078 8009D478 24790001 */  addiu $t9, $v1, 1
/* 09E07C 8009D47C A0990000 */  sb    $t9, ($a0)
/* 09E080 8009D480 808E0000 */  lb    $t6, ($a0)
/* 09E084 8009D484 3C028019 */  lui   $v0, %hi(gCupSelection) # $v0, 0x8019
/* 09E088 8009D488 29C10006 */  slti  $at, $t6, 6
/* 09E08C 8009D48C 14200002 */  bnez  $at, .L8009D498
/* 09E090 8009D490 00000000 */   nop
/* 09E094 8009D494 A0800000 */  sb    $zero, ($a0)
.L8009D498:
/* 09E098 8009D498 3C04800E */  lui   $a0, %hi(gCurrentCourseId) # $a0, 0x800e
/* 09E09C 8009D49C 8484C5A0 */  lh    $a0, %lo(gCurrentCourseId)($a0)
/* 09E0A0 8009D4A0 3C0F800E */  lui   $t7, %hi(gCupSelectionByCourseId)
/* 09E0A4 8009D4A4 2442EE09 */  addiu $v0, %lo(gCupSelection) # addiu $v0, $v0, -0x11f7
/* 09E0A8 8009D4A8 01E47821 */  addu  $t7, $t7, $a0
/* 09E0AC 8009D4AC 81EF7664 */  lb    $t7, %lo(gCupSelectionByCourseId)($t7)
/* 09E0B0 8009D4B0 3C19800F */  lui   $t9, %hi(gPerCupIndexByCourseId)
/* 09E0B4 8009D4B4 3C01800E */  lui   $at, %hi(D_800DC540) # $at, 0x800e
/* 09E0B8 8009D4B8 A04F0000 */  sb    $t7, ($v0)
/* 09E0BC 8009D4BC 80580000 */  lb    $t8, ($v0)
/* 09E0C0 8009D4C0 0324C821 */  addu  $t9, $t9, $a0
/* 09E0C4 8009D4C4 8339FD50 */  lb    $t9, %lo(gPerCupIndexByCourseId)($t9)
/* 09E0C8 8009D4C8 AC38C540 */  sw    $t8, %lo(D_800DC540)($at)
/* 09E0CC 8009D4CC 3C018019 */  lui   $at, %hi(gCupCourseSelection) # $at, 0x8019
/* 09E0D0 8009D4D0 1000001A */  b     .L8009D53C
/* 09E0D4 8009D4D4 A039EE0B */   sb    $t9, %lo(gCupCourseSelection)($at)
glabel L8009D4D8
/* 09E0D8 8009D4D8 3C04800F */  lui   $a0, %hi(gMenuSelection) # $a0, 0x800f
/* 09E0DC 8009D4DC 248486A0 */  addiu $a0, %lo(gMenuSelection) # addiu $a0, $a0, -0x7960
/* 09E0E0 8009D4E0 8C830000 */  lw    $v1, ($a0)
/* 09E0E4 8009D4E4 24080006 */  li    $t0, 6
/* 09E0E8 8009D4E8 2401000B */  li    $at, 11
/* 09E0EC 8009D4EC 10680005 */  beq   $v1, $t0, .L8009D504
/* 09E0F0 8009D4F0 240E000B */   li    $t6, 11
/* 09E0F4 8009D4F4 14610011 */  bne   $v1, $at, .L8009D53C
/* 09E0F8 8009D4F8 00000000 */   nop
/* 09E0FC 8009D4FC 1000000F */  b     .L8009D53C
/* 09E100 8009D500 AC880000 */   sw    $t0, ($a0)
.L8009D504:
/* 09E104 8009D504 1000000D */  b     .L8009D53C
/* 09E108 8009D508 AC8E0000 */   sw    $t6, ($a0)
glabel L8009D50C
/* 09E10C 8009D50C 3C04800F */  lui   $a0, %hi(gMenuSelection) # $a0, 0x800f
/* 09E110 8009D510 248486A0 */  addiu $a0, %lo(gMenuSelection) # addiu $a0, $a0, -0x7960
/* 09E114 8009D514 8C830000 */  lw    $v1, ($a0)
/* 09E118 8009D518 2401000B */  li    $at, 11
/* 09E11C 8009D51C 240F000B */  li    $t7, 11
/* 09E120 8009D520 50680006 */  beql  $v1, $t0, .L8009D53C
/* 09E124 8009D524 AC8F0000 */   sw    $t7, ($a0)
/* 09E128 8009D528 14610004 */  bne   $v1, $at, .L8009D53C
/* 09E12C 8009D52C 00000000 */   nop
/* 09E130 8009D530 10000002 */  b     .L8009D53C
/* 09E134 8009D534 AC880000 */   sw    $t0, ($a0)
/* 09E138 8009D538 AC8F0000 */  sw    $t7, ($a0)
.L8009D53C:
/* 09E13C 8009D53C 3C18800F */  lui   $t8, %hi(D_800E86A4) # $t8, 0x800f
/* 09E140 8009D540 8F1886A4 */  lw    $t8, %lo(D_800E86A4)($t8)
/* 09E144 8009D544 3C0C800E */  lui   $t4, %hi(gModeSelection) # $t4, 0x800e
/* 09E148 8009D548 3C02800F */  lui   $v0, %hi(gMenuSelection) # $v0, 0x800f
/* 09E14C 8009D54C 258CC53C */  addiu $t4, %lo(gModeSelection) # addiu $t4, $t4, -0x3ac4
/* 09E150 8009D550 24050001 */  li    $a1, 1
/* 09E154 8009D554 17000003 */  bnez  $t8, .L8009D564
/* 09E158 8009D558 8C4286A0 */   lw    $v0, %lo(gMenuSelection)($v0)
/* 09E15C 8009D55C 3C01800F */  lui   $at, %hi(D_800E86A4) # $at, 0x800f
/* 09E160 8009D560 AC2586A4 */  sw    $a1, %lo(D_800E86A4)($at)
.L8009D564:
/* 09E164 8009D564 2841000E */  slti  $at, $v0, 0xe
/* 09E168 8009D568 14200009 */  bnez  $at, .L8009D590
/* 09E16C 8009D56C 3C01800E */   lui   $at, %hi(gGamestateNext) # $at, 0x800e
/* 09E170 8009D570 AC29C524 */  sw    $t1, %lo(gGamestateNext)($at)
/* 09E174 8009D574 8D990000 */  lw    $t9, ($t4)
/* 09E178 8009D578 3C018019 */  lui   $at, %hi(D_8018EDFB) # $at, 0x8019
/* 09E17C 8009D57C 14B90002 */  bne   $a1, $t9, .L8009D588
/* 09E180 8009D580 00000000 */   nop
/* 09E184 8009D584 A025EDFB */  sb    $a1, %lo(D_8018EDFB)($at)
.L8009D588:
/* 09E188 8009D588 0C027387 */  jal   func_8009CE1C
/* 09E18C 8009D58C 00000000 */   nop
.L8009D590:
/* 09E190 8009D590 3C018019 */  lui   $at, %hi(D_8018EE0C) # $at, 0x8019
/* 09E194 8009D594 10000075 */  b     .L8009D76C
/* 09E198 8009D598 A020EE0C */   sb    $zero, %lo(D_8018EE0C)($at)
.L8009D59C:
/* 09E19C 8009D59C 3C038019 */  lui   $v1, %hi(gDebugGotoScene) # $v1, 0x8019
/* 09E1A0 8009D5A0 8063EDFA */  lb    $v1, %lo(gDebugGotoScene)($v1)
/* 09E1A4 8009D5A4 24050001 */  li    $a1, 1
/* 09E1A8 8009D5A8 24060002 */  li    $a2, 2
/* 09E1AC 8009D5AC 10650008 */  beq   $v1, $a1, .L8009D5D0
/* 09E1B0 8009D5B0 3C01800E */   lui   $at, %hi(gGamestateNext) # $at, 0x800e
/* 09E1B4 8009D5B4 10660008 */  beq   $v1, $a2, .L8009D5D8
/* 09E1B8 8009D5B8 240E0009 */   li    $t6, 9
/* 09E1BC 8009D5BC 24070003 */  li    $a3, 3
/* 09E1C0 8009D5C0 10670005 */  beq   $v1, $a3, .L8009D5D8
/* 09E1C4 8009D5C4 3C0C800E */   lui   $t4, %hi(gModeSelection) # $t4, 0x800e
/* 09E1C8 8009D5C8 10000009 */  b     .L8009D5F0
/* 09E1CC 8009D5CC 258CC53C */   addiu $t4, %lo(gModeSelection) # addiu $t4, $t4, -0x3ac4
.L8009D5D0:
/* 09E1D0 8009D5D0 1000000E */  b     .L8009D60C
/* 09E1D4 8009D5D4 AC28C524 */   sw    $t0, %lo(gGamestateNext)($at)
.L8009D5D8:
/* 09E1D8 8009D5D8 3C01800E */  lui   $at, %hi(gGamestateNext) # $at, 0x800e
/* 09E1DC 8009D5DC AC2EC524 */  sw    $t6, %lo(gGamestateNext)($at)
/* 09E1E0 8009D5E0 3C01800E */  lui   $at, %hi(gCreditsCourseId) # $at, 0x800e
/* 09E1E4 8009D5E4 240F0008 */  li    $t7, 8
/* 09E1E8 8009D5E8 10000008 */  b     .L8009D60C
/* 09E1EC 8009D5EC A42FC644 */   sh    $t7, %lo(gCreditsCourseId)($at)
.L8009D5F0:
/* 09E1F0 8009D5F0 3C01800E */  lui   $at, %hi(gGamestateNext) # $at, 0x800e
/* 09E1F4 8009D5F4 AC29C524 */  sw    $t1, %lo(gGamestateNext)($at)
/* 09E1F8 8009D5F8 8D980000 */  lw    $t8, ($t4)
/* 09E1FC 8009D5FC 3C018019 */  lui   $at, %hi(D_8018EDFB) # $at, 0x8019
/* 09E200 8009D600 14B80002 */  bne   $a1, $t8, .L8009D60C
/* 09E204 8009D604 00000000 */   nop
/* 09E208 8009D608 A025EDFB */  sb    $a1, %lo(D_8018EDFB)($at)
.L8009D60C:
/* 09E20C 8009D60C 0C003C49 */  jal   func_8000F124
/* 09E210 8009D610 00000000 */   nop
/* 09E214 8009D614 3C0D800E */  lui   $t5, %hi(gScreenModeSelection) # $t5, 0x800e
/* 09E218 8009D618 25ADC530 */  addiu $t5, %lo(gScreenModeSelection) # addiu $t5, $t5, -0x3ad0
/* 09E21C 8009D61C 8DB90000 */  lw    $t9, ($t5)
/* 09E220 8009D620 24070003 */  li    $a3, 3
/* 09E224 8009D624 3C0C800E */  lui   $t4, %hi(gModeSelection) # $t4, 0x800e
/* 09E228 8009D628 258CC53C */  addiu $t4, %lo(gModeSelection) # addiu $t4, $t4, -0x3ac4
/* 09E22C 8009D62C 24050001 */  li    $a1, 1
/* 09E230 8009D630 14F90007 */  bne   $a3, $t9, .L8009D650
/* 09E234 8009D634 24060002 */   li    $a2, 2
/* 09E238 8009D638 8D830000 */  lw    $v1, ($t4)
/* 09E23C 8009D63C 50600004 */  beql  $v1, $zero, .L8009D650
/* 09E240 8009D640 AD860000 */   sw    $a2, ($t4)
/* 09E244 8009D644 14650002 */  bne   $v1, $a1, .L8009D650
/* 09E248 8009D648 00000000 */   nop
/* 09E24C 8009D64C AD860000 */  sw    $a2, ($t4)
.L8009D650:
/* 09E250 8009D650 3C04800E */  lui   $a0, %hi(gCurrentCourseId) # $a0, 0x800e
/* 09E254 8009D654 8484C5A0 */  lh    $a0, %lo(gCurrentCourseId)($a0)
/* 09E258 8009D658 2401000F */  li    $at, 15
/* 09E25C 8009D65C 3C19800E */  lui   $t9, %hi(gCupSelectionByCourseId)
/* 09E260 8009D660 1081000A */  beq   $a0, $at, .L8009D68C
/* 09E264 8009D664 00801825 */   move  $v1, $a0
/* 09E268 8009D668 24010010 */  li    $at, 16
/* 09E26C 8009D66C 10610007 */  beq   $v1, $at, .L8009D68C
/* 09E270 8009D670 24010011 */   li    $at, 17
/* 09E274 8009D674 10610005 */  beq   $v1, $at, .L8009D68C
/* 09E278 8009D678 24010013 */   li    $at, 19
/* 09E27C 8009D67C 10610003 */  beq   $v1, $at, .L8009D68C
/* 09E280 8009D680 00000000 */   nop
/* 09E284 8009D684 1000000D */  b     .L8009D6BC
/* 09E288 8009D688 8D820000 */   lw    $v0, ($t4)
.L8009D68C:
/* 09E28C 8009D68C 3C0A800E */  lui   $t2, %hi(gPlayerCountSelection1) # $t2, 0x800e
/* 09E290 8009D690 254AC538 */  addiu $t2, %lo(gPlayerCountSelection1) # addiu $t2, $t2, -0x3ac8
/* 09E294 8009D694 8D4E0000 */  lw    $t6, ($t2)
/* 09E298 8009D698 3C0B8019 */  lui   $t3, %hi(D_8018EDF3) # $t3, 0x8019
/* 09E29C 8009D69C AD870000 */  sw    $a3, ($t4)
/* 09E2A0 8009D6A0 14AE0010 */  bne   $a1, $t6, .L8009D6E4
/* 09E2A4 8009D6A4 256BEDF3 */   addiu $t3, %lo(D_8018EDF3) # addiu $t3, $t3, -0x120d
/* 09E2A8 8009D6A8 A1660000 */  sb    $a2, ($t3)
/* 09E2AC 8009D6AC 816F0000 */  lb    $t7, ($t3)
/* 09E2B0 8009D6B0 ADA50000 */  sw    $a1, ($t5)
/* 09E2B4 8009D6B4 1000000B */  b     .L8009D6E4
/* 09E2B8 8009D6B8 AD4F0000 */   sw    $t7, ($t2)
.L8009D6BC:
/* 09E2BC 8009D6BC 14E20003 */  bne   $a3, $v0, .L8009D6CC
/* 09E2C0 8009D6C0 3C0A800E */   lui   $t2, %hi(gPlayerCountSelection1) # $t2, 0x800e
/* 09E2C4 8009D6C4 AD800000 */  sw    $zero, ($t4)
/* 09E2C8 8009D6C8 00001025 */  move  $v0, $zero
.L8009D6CC:
/* 09E2CC 8009D6CC 14C20005 */  bne   $a2, $v0, .L8009D6E4
/* 09E2D0 8009D6D0 254AC538 */   addiu $t2, %lo(gPlayerCountSelection1) # addiu $t2, $t2, -0x3ac8
/* 09E2D4 8009D6D4 8D580000 */  lw    $t8, ($t2)
/* 09E2D8 8009D6D8 54B80003 */  bnel  $a1, $t8, .L8009D6E8
/* 09E2DC 8009D6DC 0324C821 */   addu  $t9, $t9, $a0
/* 09E2E0 8009D6E0 AD800000 */  sw    $zero, ($t4)
.L8009D6E4:
/* 09E2E4 8009D6E4 0324C821 */  addu  $t9, $t9, $a0
.L8009D6E8:
/* 09E2E8 8009D6E8 83397664 */  lb    $t9, %lo(gCupSelectionByCourseId)($t9)
/* 09E2EC 8009D6EC 3C028019 */  lui   $v0, %hi(gCupSelection) # $v0, 0x8019
/* 09E2F0 8009D6F0 2442EE09 */  addiu $v0, %lo(gCupSelection) # addiu $v0, $v0, -0x11f7
/* 09E2F4 8009D6F4 A0590000 */  sb    $t9, ($v0)
/* 09E2F8 8009D6F8 804E0000 */  lb    $t6, ($v0)
/* 09E2FC 8009D6FC 3C0F800F */  lui   $t7, %hi(gPerCupIndexByCourseId)
/* 09E300 8009D700 3C038019 */  lui   $v1, %hi(gDebugGotoScene) # $v1, 0x8019
/* 09E304 8009D704 8063EDFA */  lb    $v1, %lo(gDebugGotoScene)($v1)
/* 09E308 8009D708 3C01800E */  lui   $at, %hi(D_800DC540) # $at, 0x800e
/* 09E30C 8009D70C 01E47821 */  addu  $t7, $t7, $a0
/* 09E310 8009D710 81EFFD50 */  lb    $t7, %lo(gPerCupIndexByCourseId)($t7)
/* 09E314 8009D714 AC2EC540 */  sw    $t6, %lo(D_800DC540)($at)
/* 09E318 8009D718 3C018019 */  lui   $at, %hi(gCupCourseSelection) # $at, 0x8019
/* 09E31C 8009D71C 10650013 */  beq   $v1, $a1, .L8009D76C
/* 09E320 8009D720 A02FEE0B */   sb    $t7, %lo(gCupCourseSelection)($at)
/* 09E324 8009D724 10660005 */  beq   $v1, $a2, .L8009D73C
/* 09E328 8009D728 3C01800E */   lui   $at, %hi(gCCSelection)
/* 09E32C 8009D72C 10670005 */  beq   $v1, $a3, .L8009D744
/* 09E330 8009D730 3C01800E */   lui   $at, %hi(gCCSelection) # $at, 0x800e
/* 09E334 8009D734 10000005 */  b     .L8009D74C
/* 09E338 8009D738 3C18800E */   lui   $t8, %hi(gCCSelection) # $t8, 0x800e
.L8009D73C:
/* 09E33C 8009D73C 1000000B */  b     .L8009D76C
/* 09E340 8009D740 AC20C548 */   sw    $zero, %lo(gCCSelection)($at)
.L8009D744:
/* 09E344 8009D744 10000009 */  b     .L8009D76C
/* 09E348 8009D748 AC27C548 */   sw    $a3, %lo(gCCSelection)($at)
.L8009D74C:
/* 09E34C 8009D74C 8F18C548 */  lw    $t8, %lo(gCCSelection)($t8)
/* 09E350 8009D750 3C01800E */  lui   $at, %hi(gIsMirrorMode)
/* 09E354 8009D754 14F80004 */  bne   $a3, $t8, .L8009D768
/* 09E358 8009D758 00000000 */   nop
/* 09E35C 8009D75C 3C01800E */  lui   $at, %hi(gIsMirrorMode) # $at, 0x800e
/* 09E360 8009D760 10000002 */  b     .L8009D76C
/* 09E364 8009D764 AC25C604 */   sw    $a1, %lo(gIsMirrorMode)($at)
.L8009D768:
/* 09E368 8009D768 AC20C604 */  sw    $zero, %lo(gIsMirrorMode)($at)
.L8009D76C:
/* 09E36C 8009D76C 8FBF0014 */  lw    $ra, 0x14($sp)
.L8009D770:
/* 09E370 8009D770 27BD0030 */  addiu $sp, $sp, 0x30
/* 09E374 8009D774 03E00008 */  jr    $ra
/* 09E378 8009D778 00000000 */   nop
