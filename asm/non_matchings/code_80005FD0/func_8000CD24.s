glabel func_8000CD24
/* 00D924 8000CD24 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 00D928 8000CD28 AFB00038 */  sw    $s0, 0x38($sp)
/* 00D92C 8000CD2C 8FB00070 */  lw    $s0, 0x70($sp)
/* 00D930 8000CD30 AFBF003C */  sw    $ra, 0x3c($sp)
/* 00D934 8000CD34 F7B80030 */  sdc1  $f24, 0x30($sp)
/* 00D938 8000CD38 F7B60028 */  sdc1  $f22, 0x28($sp)
/* 00D93C 8000CD3C F7B40020 */  sdc1  $f20, 0x20($sp)
/* 00D940 8000CD40 AFA7006C */  sw    $a3, 0x6c($sp)
/* 00D944 8000CD44 96020000 */  lhu   $v0, ($s0)
/* 00D948 8000CD48 4486C000 */  mtc1  $a2, $f24
/* 00D94C 8000CD4C 46006506 */  mov.s $f20, $f12
/* 00D950 8000CD50 304E4000 */  andi  $t6, $v0, 0x4000
/* 00D954 8000CD54 11C0001C */  beqz  $t6, .L8000CDC8
/* 00D958 8000CD58 46007586 */   mov.s $f22, $f14
/* 00D95C 8000CD5C 304F1000 */  andi  $t7, $v0, 0x1000
/* 00D960 8000CD60 55E0001A */  bnel  $t7, $zero, .L8000CDCC
/* 00D964 8000CD64 8FA30074 */   lw    $v1, 0x74($sp)
/* 00D968 8000CD68 0C0AAF50 */  jal   func_802ABD40
/* 00D96C 8000CD6C 9604011A */   lhu   $a0, 0x11a($s0)
/* 00D970 8000CD70 8FB80078 */  lw    $t8, 0x78($sp)
/* 00D974 8000CD74 4406C000 */  mfc1  $a2, $f24
/* 00D978 8000CD78 4600A306 */  mov.s $f12, $f20
/* 00D97C 8000CD7C 4600B386 */  mov.s $f14, $f22
/* 00D980 8000CD80 87A7006E */  lh    $a3, 0x6e($sp)
/* 00D984 8000CD84 AFA20014 */  sw    $v0, 0x14($sp)
/* 00D988 8000CD88 0C003221 */  jal   func_8000C884
/* 00D98C 8000CD8C AFB80010 */   sw    $t8, 0x10($sp)
/* 00D990 8000CD90 2401FFFF */  li    $at, -1
/* 00D994 8000CD94 144100CB */  bne   $v0, $at, .L8000D0C4
/* 00D998 8000CD98 A7A2005E */   sh    $v0, 0x5e($sp)
/* 00D99C 8000CD9C 8FA30074 */  lw    $v1, 0x74($sp)
/* 00D9A0 8000CDA0 4406C000 */  mfc1  $a2, $f24
/* 00D9A4 8000CDA4 27B90078 */  addiu $t9, $sp, 0x78
/* 00D9A8 8000CDA8 AFB90014 */  sw    $t9, 0x14($sp)
/* 00D9AC 8000CDAC 4600A306 */  mov.s $f12, $f20
/* 00D9B0 8000CDB0 4600B386 */  mov.s $f14, $f22
/* 00D9B4 8000CDB4 02003825 */  move  $a3, $s0
/* 00D9B8 8000CDB8 0C003322 */  jal   func_8000CC88
/* 00D9BC 8000CDBC AFA30010 */   sw    $v1, 0x10($sp)
/* 00D9C0 8000CDC0 100000C0 */  b     .L8000D0C4
/* 00D9C4 8000CDC4 A7A2005E */   sh    $v0, 0x5e($sp)
.L8000CDC8:
/* 00D9C8 8000CDC8 8FA30074 */  lw    $v1, 0x74($sp)
.L8000CDCC:
/* 00D9CC 8000CDCC 3C0A8016 */  lui   $t2, %hi(D_801631E0) # 0x8016
/* 00D9D0 8000CDD0 24010001 */  li    $at, 1
/* 00D9D4 8000CDD4 00034040 */  sll   $t0, $v1, 1
/* 00D9D8 8000CDD8 01485021 */  addu  $t2, $t2, $t0
/* 00D9DC 8000CDDC 954A31E0 */  lhu   $t2, %lo(D_801631E0)($t2) # 0x31e0($t2)
/* 00D9E0 8000CDE0 AFA80048 */  sw    $t0, 0x48($sp)
/* 00D9E4 8000CDE4 87A7006E */  lh    $a3, 0x6e($sp)
/* 00D9E8 8000CDE8 1541009D */  bne   $t2, $at, .L8000D060
/* 00D9EC 8000CDEC 8FAE0078 */   lw    $t6, 0x78($sp)
/* 00D9F0 8000CDF0 860400CA */  lh    $a0, 0xca($s0)
/* 00D9F4 8000CDF4 8FAC0078 */  lw    $t4, 0x78($sp)
/* 00D9F8 8000CDF8 3C0E8016 */  lui   $t6, %hi(D_80164550) # 0x8016
/* 00D9FC 8000CDFC 308B0001 */  andi  $t3, $a0, 1
/* 00DA00 8000CE00 11600019 */  beqz  $t3, .L8000CE68
/* 00DA04 8000CE04 000C6880 */   sll   $t5, $t4, 2
/* 00DA08 8000CE08 87AF006E */  lh    $t7, 0x6e($sp)
/* 00DA0C 8000CE0C 01CD7021 */  addu  $t6, $t6, $t5
/* 00DA10 8000CE10 8DCE4550 */  lw    $t6, %lo(D_80164550)($t6) # 0x4550($t6)
/* 00DA14 8000CE14 000FC0C0 */  sll   $t8, $t7, 3
/* 00DA18 8000CE18 308AFFFE */  andi  $t2, $a0, 0xfffe
/* 00DA1C 8000CE1C 01D81821 */  addu  $v1, $t6, $t8
/* 00DA20 8000CE20 84790000 */  lh    $t9, ($v1)
/* 00DA24 8000CE24 44992000 */  mtc1  $t9, $f4
/* 00DA28 8000CE28 00000000 */  nop   
/* 00DA2C 8000CE2C 468021A0 */  cvt.s.w $f6, $f4
/* 00DA30 8000CE30 E6060014 */  swc1  $f6, 0x14($s0)
/* 00DA34 8000CE34 84680002 */  lh    $t0, 2($v1)
/* 00DA38 8000CE38 44884000 */  mtc1  $t0, $f8
/* 00DA3C 8000CE3C 00000000 */  nop   
/* 00DA40 8000CE40 468042A0 */  cvt.s.w $f10, $f8
/* 00DA44 8000CE44 E60A0018 */  swc1  $f10, 0x18($s0)
/* 00DA48 8000CE48 84690004 */  lh    $t1, 4($v1)
/* 00DA4C 8000CE4C A60A00CA */  sh    $t2, 0xca($s0)
/* 00DA50 8000CE50 44898000 */  mtc1  $t1, $f16
/* 00DA54 8000CE54 00000000 */  nop   
/* 00DA58 8000CE58 468084A0 */  cvt.s.w $f18, $f16
/* 00DA5C 8000CE5C E612001C */  swc1  $f18, 0x1c($s0)
/* 00DA60 8000CE60 100000A0 */  b     .L8000D0E4
/* 00DA64 8000CE64 87A2006E */   lh    $v0, 0x6e($sp)
.L8000CE68:
/* 00DA68 8000CE68 3C0B8016 */  lui   $t3, %hi(D_80163488) # $t3, 0x8016
/* 00DA6C 8000CE6C 8D6B3488 */  lw    $t3, %lo(D_80163488)($t3)
/* 00DA70 8000CE70 26040110 */  addiu $a0, $s0, 0x110
/* 00DA74 8000CE74 87A7006E */  lh    $a3, 0x6e($sp)
/* 00DA78 8000CE78 05610004 */  bgez  $t3, .L8000CE8C
/* 00DA7C 8000CE7C 316C0007 */   andi  $t4, $t3, 7
/* 00DA80 8000CE80 11800002 */  beqz  $t4, .L8000CE8C
/* 00DA84 8000CE84 00000000 */   nop   
/* 00DA88 8000CE88 258CFFF8 */  addiu $t4, $t4, -8
.L8000CE8C:
/* 00DA8C 8000CE8C 146C0046 */  bne   $v1, $t4, .L8000CFA8
/* 00DA90 8000CE90 8FB80078 */   lw    $t8, 0x78($sp)
/* 00DA94 8000CE94 4406A000 */  mfc1  $a2, $f20
/* 00DA98 8000CE98 4407B000 */  mfc1  $a3, $f22
/* 00DA9C 8000CE9C 3C054120 */  lui   $a1, 0x4120
/* 00DAA0 8000CEA0 0C0AB772 */  jal   func_802ADDC8
/* 00DAA4 8000CEA4 E7B80010 */   swc1  $f24, 0x10($sp)
/* 00DAA8 8000CEA8 0C0AAF50 */  jal   func_802ABD40
/* 00DAAC 8000CEAC 9604011A */   lhu   $a0, 0x11a($s0)
/* 00DAB0 8000CEB0 8FAD0048 */  lw    $t5, 0x48($sp)
/* 00DAB4 8000CEB4 3C0F8016 */  lui   $t7, %hi(D_80163318) # $t7, 0x8016
/* 00DAB8 8000CEB8 8FAE0078 */  lw    $t6, 0x78($sp)
/* 00DABC 8000CEBC 25EF3318 */  addiu $t7, %lo(D_80163318) # addiu $t7, $t7, 0x3318
/* 00DAC0 8000CEC0 4406C000 */  mfc1  $a2, $f24
/* 00DAC4 8000CEC4 3058FFFF */  andi  $t8, $v0, 0xffff
/* 00DAC8 8000CEC8 01AF1821 */  addu  $v1, $t5, $t7
/* 00DACC 8000CECC A4620000 */  sh    $v0, ($v1)
/* 00DAD0 8000CED0 AFA30044 */  sw    $v1, 0x44($sp)
/* 00DAD4 8000CED4 AFB80014 */  sw    $t8, 0x14($sp)
/* 00DAD8 8000CED8 4600A306 */  mov.s $f12, $f20
/* 00DADC 8000CEDC 4600B386 */  mov.s $f14, $f22
/* 00DAE0 8000CEE0 87A7006E */  lh    $a3, 0x6e($sp)
/* 00DAE4 8000CEE4 0C003221 */  jal   func_8000C884
/* 00DAE8 8000CEE8 AFAE0010 */   sw    $t6, 0x10($sp)
/* 00DAEC 8000CEEC 2401FFFF */  li    $at, -1
/* 00DAF0 8000CEF0 8FA30044 */  lw    $v1, 0x44($sp)
/* 00DAF4 8000CEF4 1441000B */  bne   $v0, $at, .L8000CF24
/* 00DAF8 8000CEF8 A7A2005E */   sh    $v0, 0x5e($sp)
/* 00DAFC 8000CEFC 8FB90078 */  lw    $t9, 0x78($sp)
/* 00DB00 8000CF00 4406C000 */  mfc1  $a2, $f24
/* 00DB04 8000CF04 4600A306 */  mov.s $f12, $f20
/* 00DB08 8000CF08 4600B386 */  mov.s $f14, $f22
/* 00DB0C 8000CF0C 87A7006E */  lh    $a3, 0x6e($sp)
/* 00DB10 8000CF10 AFA30044 */  sw    $v1, 0x44($sp)
/* 00DB14 8000CF14 0C003277 */  jal   func_8000C9DC
/* 00DB18 8000CF18 AFB90010 */   sw    $t9, 0x10($sp)
/* 00DB1C 8000CF1C 8FA30044 */  lw    $v1, 0x44($sp)
/* 00DB20 8000CF20 A7A2005E */  sh    $v0, 0x5e($sp)
.L8000CF24:
/* 00DB24 8000CF24 2401FFFF */  li    $at, -1
/* 00DB28 8000CF28 1441005F */  bne   $v0, $at, .L8000D0A8
/* 00DB2C 8000CF2C 27A80078 */   addiu $t0, $sp, 0x78
/* 00DB30 8000CF30 4406C000 */  mfc1  $a2, $f24
/* 00DB34 8000CF34 4600A306 */  mov.s $f12, $f20
/* 00DB38 8000CF38 4600B386 */  mov.s $f14, $f22
/* 00DB3C 8000CF3C 94670000 */  lhu   $a3, ($v1)
/* 00DB40 8000CF40 0C00302F */  jal   func_8000C0BC
/* 00DB44 8000CF44 AFA80010 */   sw    $t0, 0x10($sp)
/* 00DB48 8000CF48 8FA90078 */  lw    $t1, 0x78($sp)
/* 00DB4C 8000CF4C 3C0B8016 */  lui   $t3, %hi(D_80164550) # 0x8016
/* 00DB50 8000CF50 000260C0 */  sll   $t4, $v0, 3
/* 00DB54 8000CF54 00095080 */  sll   $t2, $t1, 2
/* 00DB58 8000CF58 016A5821 */  addu  $t3, $t3, $t2
/* 00DB5C 8000CF5C 8D6B4550 */  lw    $t3, %lo(D_80164550)($t3) # 0x4550($t3)
/* 00DB60 8000CF60 A7A2005E */  sh    $v0, 0x5e($sp)
/* 00DB64 8000CF64 016C1821 */  addu  $v1, $t3, $t4
/* 00DB68 8000CF68 846D0000 */  lh    $t5, ($v1)
/* 00DB6C 8000CF6C 448D2000 */  mtc1  $t5, $f4
/* 00DB70 8000CF70 00000000 */  nop   
/* 00DB74 8000CF74 468021A0 */  cvt.s.w $f6, $f4
/* 00DB78 8000CF78 E6060014 */  swc1  $f6, 0x14($s0)
/* 00DB7C 8000CF7C 846F0002 */  lh    $t7, 2($v1)
/* 00DB80 8000CF80 448F4000 */  mtc1  $t7, $f8
/* 00DB84 8000CF84 00000000 */  nop   
/* 00DB88 8000CF88 468042A0 */  cvt.s.w $f10, $f8
/* 00DB8C 8000CF8C E60A0018 */  swc1  $f10, 0x18($s0)
/* 00DB90 8000CF90 846E0004 */  lh    $t6, 4($v1)
/* 00DB94 8000CF94 448E8000 */  mtc1  $t6, $f16
/* 00DB98 8000CF98 00000000 */  nop   
/* 00DB9C 8000CF9C 468084A0 */  cvt.s.w $f18, $f16
/* 00DBA0 8000CFA0 10000041 */  b     .L8000D0A8
/* 00DBA4 8000CFA4 E612001C */   swc1  $f18, 0x1c($s0)
.L8000CFA8:
/* 00DBA8 8000CFA8 4406C000 */  mfc1  $a2, $f24
/* 00DBAC 8000CFAC 4600A306 */  mov.s $f12, $f20
/* 00DBB0 8000CFB0 4600B386 */  mov.s $f14, $f22
/* 00DBB4 8000CFB4 0C003277 */  jal   func_8000C9DC
/* 00DBB8 8000CFB8 AFB80010 */   sw    $t8, 0x10($sp)
/* 00DBBC 8000CFBC 2401FFFF */  li    $at, -1
/* 00DBC0 8000CFC0 14410039 */  bne   $v0, $at, .L8000D0A8
/* 00DBC4 8000CFC4 A7A2005E */   sh    $v0, 0x5e($sp)
/* 00DBC8 8000CFC8 4406C000 */  mfc1  $a2, $f24
/* 00DBCC 8000CFCC 4600A306 */  mov.s $f12, $f20
/* 00DBD0 8000CFD0 4600B386 */  mov.s $f14, $f22
/* 00DBD4 8000CFD4 0C002F65 */  jal   func_8000BD94
/* 00DBD8 8000CFD8 8FA70078 */   lw    $a3, 0x78($sp)
/* 00DBDC 8000CFDC 8FB90078 */  lw    $t9, 0x78($sp)
/* 00DBE0 8000CFE0 3C098016 */  lui   $t1, %hi(D_80164550) # 0x8016
/* 00DBE4 8000CFE4 000250C0 */  sll   $t2, $v0, 3
/* 00DBE8 8000CFE8 00194080 */  sll   $t0, $t9, 2
/* 00DBEC 8000CFEC 01284821 */  addu  $t1, $t1, $t0
/* 00DBF0 8000CFF0 8D294550 */  lw    $t1, %lo(D_80164550)($t1) # 0x4550($t1)
/* 00DBF4 8000CFF4 A7A2005E */  sh    $v0, 0x5e($sp)
/* 00DBF8 8000CFF8 26040110 */  addiu $a0, $s0, 0x110
/* 00DBFC 8000CFFC 012A1821 */  addu  $v1, $t1, $t2
/* 00DC00 8000D000 846B0000 */  lh    $t3, ($v1)
/* 00DC04 8000D004 846C0002 */  lh    $t4, 2($v1)
/* 00DC08 8000D008 846D0004 */  lh    $t5, 4($v1)
/* 00DC0C 8000D00C 448B2000 */  mtc1  $t3, $f4
/* 00DC10 8000D010 448C3000 */  mtc1  $t4, $f6
/* 00DC14 8000D014 448D4000 */  mtc1  $t5, $f8
/* 00DC18 8000D018 46802520 */  cvt.s.w $f20, $f4
/* 00DC1C 8000D01C 3C054120 */  lui   $a1, 0x4120
/* 00DC20 8000D020 468035A0 */  cvt.s.w $f22, $f6
/* 00DC24 8000D024 E6140014 */  swc1  $f20, 0x14($s0)
/* 00DC28 8000D028 4406A000 */  mfc1  $a2, $f20
/* 00DC2C 8000D02C 46804620 */  cvt.s.w $f24, $f8
/* 00DC30 8000D030 E6160018 */  swc1  $f22, 0x18($s0)
/* 00DC34 8000D034 4407B000 */  mfc1  $a3, $f22
/* 00DC38 8000D038 E618001C */  swc1  $f24, 0x1c($s0)
/* 00DC3C 8000D03C 0C0AB772 */  jal   func_802ADDC8
/* 00DC40 8000D040 E7B80010 */   swc1  $f24, 0x10($sp)
/* 00DC44 8000D044 0C0AAF50 */  jal   func_802ABD40
/* 00DC48 8000D048 9604011A */   lhu   $a0, 0x11a($s0)
/* 00DC4C 8000D04C 8FAF0048 */  lw    $t7, 0x48($sp)
/* 00DC50 8000D050 3C018016 */  lui   $at, %hi(D_80163318) # 0x8016
/* 00DC54 8000D054 002F0821 */  addu  $at, $at, $t7
/* 00DC58 8000D058 10000013 */  b     .L8000D0A8
/* 00DC5C 8000D05C A4223318 */   sh    $v0, %lo(D_80163318)($at) # 0x3318($at)
.L8000D060:
/* 00DC60 8000D060 4406C000 */  mfc1  $a2, $f24
/* 00DC64 8000D064 4600A306 */  mov.s $f12, $f20
/* 00DC68 8000D068 4600B386 */  mov.s $f14, $f22
/* 00DC6C 8000D06C 0C003277 */  jal   func_8000C9DC
/* 00DC70 8000D070 AFAE0010 */   sw    $t6, 0x10($sp)
/* 00DC74 8000D074 2401FFFF */  li    $at, -1
/* 00DC78 8000D078 8FA30074 */  lw    $v1, 0x74($sp)
/* 00DC7C 8000D07C 1441000A */  bne   $v0, $at, .L8000D0A8
/* 00DC80 8000D080 A7A2005E */   sh    $v0, 0x5e($sp)
/* 00DC84 8000D084 4406C000 */  mfc1  $a2, $f24
/* 00DC88 8000D088 27B80078 */  addiu $t8, $sp, 0x78
/* 00DC8C 8000D08C AFB80014 */  sw    $t8, 0x14($sp)
/* 00DC90 8000D090 4600A306 */  mov.s $f12, $f20
/* 00DC94 8000D094 4600B386 */  mov.s $f14, $f22
/* 00DC98 8000D098 02003825 */  move  $a3, $s0
/* 00DC9C 8000D09C 0C003322 */  jal   func_8000CC88
/* 00DCA0 8000D0A0 AFA30010 */   sw    $v1, 0x10($sp)
/* 00DCA4 8000D0A4 A7A2005E */  sh    $v0, 0x5e($sp)
.L8000D0A8:
/* 00DCA8 8000D0A8 8FB90078 */  lw    $t9, 0x78($sp)
/* 00DCAC 8000D0AC 4406C000 */  mfc1  $a2, $f24
/* 00DCB0 8000D0B0 4600A306 */  mov.s $f12, $f20
/* 00DCB4 8000D0B4 4600B386 */  mov.s $f14, $f22
/* 00DCB8 8000D0B8 27A7005E */  addiu $a3, $sp, 0x5e
/* 00DCBC 8000D0BC 0C0032E9 */  jal   func_8000CBA4
/* 00DCC0 8000D0C0 AFB90010 */   sw    $t9, 0x10($sp)
.L8000D0C4:
/* 00DCC4 8000D0C4 8FA80078 */  lw    $t0, 0x78($sp)
/* 00DCC8 8000D0C8 4406C000 */  mfc1  $a2, $f24
/* 00DCCC 8000D0CC 4600A306 */  mov.s $f12, $f20
/* 00DCD0 8000D0D0 4600B386 */  mov.s $f14, $f22
/* 00DCD4 8000D0D4 27A7005E */  addiu $a3, $sp, 0x5e
/* 00DCD8 8000D0D8 0C0032FE */  jal   func_8000CBF8
/* 00DCDC 8000D0DC AFA80010 */   sw    $t0, 0x10($sp)
/* 00DCE0 8000D0E0 87A2005E */  lh    $v0, 0x5e($sp)
.L8000D0E4:
/* 00DCE4 8000D0E4 8FBF003C */  lw    $ra, 0x3c($sp)
/* 00DCE8 8000D0E8 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 00DCEC 8000D0EC D7B60028 */  ldc1  $f22, 0x28($sp)
/* 00DCF0 8000D0F0 D7B80030 */  ldc1  $f24, 0x30($sp)
/* 00DCF4 8000D0F4 8FB00038 */  lw    $s0, 0x38($sp)
/* 00DCF8 8000D0F8 03E00008 */  jr    $ra
/* 00DCFC 8000D0FC 27BD0060 */   addiu $sp, $sp, 0x60
