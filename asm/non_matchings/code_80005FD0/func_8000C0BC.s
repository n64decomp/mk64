glabel func_8000C0BC
/* 00CCBC 8000C0BC 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 00CCC0 8000C0C0 8FAF0070 */  lw    $t7, 0x70($sp)
/* 00CCC4 8000C0C4 F7BA0020 */  sdc1  $f26, 0x20($sp)
/* 00CCC8 8000C0C8 F7B80018 */  sdc1  $f24, 0x18($sp)
/* 00CCCC 8000C0CC F7B60010 */  sdc1  $f22, 0x10($sp)
/* 00CCD0 8000C0D0 F7B40008 */  sdc1  $f20, 8($sp)
/* 00CCD4 8000C0D4 AFA7006C */  sw    $a3, 0x6c($sp)
/* 00CCD8 8000C0D8 8DE80000 */  lw    $t0, ($t7)
/* 00CCDC 8000C0DC 4486B000 */  mtc1  $a2, $f22
/* 00CCE0 8000C0E0 3C068016 */  lui   $a2, %hi(gWaypointCountByPathIndex) # 0x8016
/* 00CCE4 8000C0E4 0008C840 */  sll   $t9, $t0, 1
/* 00CCE8 8000C0E8 3C0A8016 */  lui   $t2, %hi(D_80164550) # 0x8016
/* 00CCEC 8000C0EC 00D93021 */  addu  $a2, $a2, $t9
/* 00CCF0 8000C0F0 0008C080 */  sll   $t8, $t0, 2
/* 00CCF4 8000C0F4 94C645C8 */  lhu   $a2, %lo(gWaypointCountByPathIndex)($a2) # 0x45c8($a2)
/* 00CCF8 8000C0F8 01585021 */  addu  $t2, $t2, $t8
/* 00CCFC 8000C0FC 8D4A4550 */  lw    $t2, %lo(D_80164550)($t2) # 0x4550($t2)
/* 00CD00 8000C100 30EEFFFF */  andi  $t6, $a3, 0xffff
/* 00CD04 8000C104 3C01800F */  lui   $at, %hi(D_800ECFE8) # $at, 0x800f
/* 00CD08 8000C108 01C03825 */  move  $a3, $t6
/* 00CD0C 8000C10C 46006506 */  mov.s $f20, $f12
/* 00CD10 8000C110 C430CFE8 */  lwc1  $f16, %lo(D_800ECFE8)($at)
/* 00CD14 8000C114 00002025 */  move  $a0, $zero
/* 00CD18 8000C118 00004825 */  move  $t1, $zero
/* 00CD1C 8000C11C 00002825 */  move  $a1, $zero
/* 00CD20 8000C120 00001825 */  move  $v1, $zero
/* 00CD24 8000C124 18C00080 */  blez  $a2, .L8000C328
/* 00CD28 8000C128 01401025 */   move  $v0, $t2
/* 00CD2C 8000C12C 30CB0001 */  andi  $t3, $a2, 1
/* 00CD30 8000C130 1160002B */  beqz  $t3, .L8000C1E0
/* 00CD34 8000C134 00000000 */   nop   
/* 00CD38 8000C138 954E0006 */  lhu   $t6, 6($t2)
/* 00CD3C 8000C13C 3C0D800E */  lui   $t5, %hi(gCurrentCourseId)
/* 00CD40 8000C140 25ADC5A0 */  addiu $t5, %lo(gCurrentCourseId) # addiu $t5, $t5, -0x3a60
/* 00CD44 8000C144 10EE0005 */  beq   $a3, $t6, .L8000C15C
/* 00CD48 8000C148 24030001 */   li    $v1, 1
/* 00CD4C 8000C14C 85AF0000 */  lh    $t7, ($t5)
/* 00CD50 8000C150 240C0014 */  li    $t4, 20
/* 00CD54 8000C154 158F0020 */  bne   $t4, $t7, .L8000C1D8
/* 00CD58 8000C158 00000000 */   nop   
.L8000C15C:
/* 00CD5C 8000C15C 85580000 */  lh    $t8, ($t2)
/* 00CD60 8000C160 85590002 */  lh    $t9, 2($t2)
/* 00CD64 8000C164 854E0004 */  lh    $t6, 4($t2)
/* 00CD68 8000C168 44982000 */  mtc1  $t8, $f4
/* 00CD6C 8000C16C 44994000 */  mtc1  $t9, $f8
/* 00CD70 8000C170 3C01800F */  lui   $at, %hi(D_800ECFEC) # $at, 0x800f
/* 00CD74 8000C174 468021A0 */  cvt.s.w $f6, $f4
/* 00CD78 8000C178 448E2000 */  mtc1  $t6, $f4
/* 00CD7C 8000C17C 24090001 */  li    $t1, 1
/* 00CD80 8000C180 468042A0 */  cvt.s.w $f10, $f8
/* 00CD84 8000C184 46143481 */  sub.s $f18, $f6, $f20
/* 00CD88 8000C188 468021A0 */  cvt.s.w $f6, $f4
/* 00CD8C 8000C18C 46129202 */  mul.s $f8, $f18, $f18
/* 00CD90 8000C190 460E5601 */  sub.s $f24, $f10, $f14
/* 00CD94 8000C194 46163681 */  sub.s $f26, $f6, $f22
/* 00CD98 8000C198 4618C282 */  mul.s $f10, $f24, $f24
/* 00CD9C 8000C19C 460A4100 */  add.s $f4, $f8, $f10
/* 00CDA0 8000C1A0 461AD182 */  mul.s $f6, $f26, $f26
/* 00CDA4 8000C1A4 C42ACFEC */  lwc1  $f10, %lo(D_800ECFEC)($at)
/* 00CDA8 8000C1A8 46062200 */  add.s $f8, $f4, $f6
/* 00CDAC 8000C1AC 460A403C */  c.lt.s $f8, $f10
/* 00CDB0 8000C1B0 00000000 */  nop   
/* 00CDB4 8000C1B4 45000008 */  bc1f  .L8000C1D8
/* 00CDB8 8000C1B8 00000000 */   nop   
/* 00CDBC 8000C1BC 46129102 */  mul.s $f4, $f18, $f18
/* 00CDC0 8000C1C0 00002025 */  move  $a0, $zero
/* 00CDC4 8000C1C4 24050001 */  li    $a1, 1
/* 00CDC8 8000C1C8 4618C182 */  mul.s $f6, $f24, $f24
/* 00CDCC 8000C1CC 46062200 */  add.s $f8, $f4, $f6
/* 00CDD0 8000C1D0 461AD282 */  mul.s $f10, $f26, $f26
/* 00CDD4 8000C1D4 460A4400 */  add.s $f16, $f8, $f10
.L8000C1D8:
/* 00CDD8 8000C1D8 10660053 */  beq   $v1, $a2, .L8000C328
/* 00CDDC 8000C1DC 25420008 */   addiu $v0, $t2, 8
.L8000C1E0:
/* 00CDE0 8000C1E0 3C0D800E */  lui   $t5, %hi(gCurrentCourseId)
/* 00CDE4 8000C1E4 25ADC5A0 */  addiu $t5, %lo(gCurrentCourseId) # addiu $t5, $t5, -0x3a60
/* 00CDE8 8000C1E8 240C0014 */  li    $t4, 20
/* 00CDEC 8000C1EC 00E05825 */  move  $t3, $a3
.L8000C1F0:
/* 00CDF0 8000C1F0 944F0006 */  lhu   $t7, 6($v0)
/* 00CDF4 8000C1F4 516F0005 */  beql  $t3, $t7, .L8000C20C
/* 00CDF8 8000C1F8 84590000 */   lh    $t9, ($v0)
/* 00CDFC 8000C1FC 85B80000 */  lh    $t8, ($t5)
/* 00CE00 8000C200 55980021 */  bnel  $t4, $t8, .L8000C288
/* 00CE04 8000C204 9459000E */   lhu   $t9, 0xe($v0)
/* 00CE08 8000C208 84590000 */  lh    $t9, ($v0)
.L8000C20C:
/* 00CE0C 8000C20C 844E0002 */  lh    $t6, 2($v0)
/* 00CE10 8000C210 844F0004 */  lh    $t7, 4($v0)
/* 00CE14 8000C214 44992000 */  mtc1  $t9, $f4
/* 00CE18 8000C218 448E4000 */  mtc1  $t6, $f8
/* 00CE1C 8000C21C 24090001 */  li    $t1, 1
/* 00CE20 8000C220 468021A0 */  cvt.s.w $f6, $f4
/* 00CE24 8000C224 448F2000 */  mtc1  $t7, $f4
/* 00CE28 8000C228 468042A0 */  cvt.s.w $f10, $f8
/* 00CE2C 8000C22C 46143481 */  sub.s $f18, $f6, $f20
/* 00CE30 8000C230 468021A0 */  cvt.s.w $f6, $f4
/* 00CE34 8000C234 46129202 */  mul.s $f8, $f18, $f18
/* 00CE38 8000C238 460E5601 */  sub.s $f24, $f10, $f14
/* 00CE3C 8000C23C 46163681 */  sub.s $f26, $f6, $f22
/* 00CE40 8000C240 4618C282 */  mul.s $f10, $f24, $f24
/* 00CE44 8000C244 460A4100 */  add.s $f4, $f8, $f10
/* 00CE48 8000C248 461AD182 */  mul.s $f6, $f26, $f26
/* 00CE4C 8000C24C 46062200 */  add.s $f8, $f4, $f6
/* 00CE50 8000C250 4610403C */  c.lt.s $f8, $f16
/* 00CE54 8000C254 00000000 */  nop   
/* 00CE58 8000C258 4502000B */  bc1fl .L8000C288
/* 00CE5C 8000C25C 9459000E */   lhu   $t9, 0xe($v0)
/* 00CE60 8000C260 46129282 */  mul.s $f10, $f18, $f18
/* 00CE64 8000C264 00032400 */  sll   $a0, $v1, 0x10
/* 00CE68 8000C268 0004C403 */  sra   $t8, $a0, 0x10
/* 00CE6C 8000C26C 4618C102 */  mul.s $f4, $f24, $f24
/* 00CE70 8000C270 03002025 */  move  $a0, $t8
/* 00CE74 8000C274 24050001 */  li    $a1, 1
/* 00CE78 8000C278 461AD202 */  mul.s $f8, $f26, $f26
/* 00CE7C 8000C27C 46045180 */  add.s $f6, $f10, $f4
/* 00CE80 8000C280 46083400 */  add.s $f16, $f6, $f8
/* 00CE84 8000C284 9459000E */  lhu   $t9, 0xe($v0)
.L8000C288:
/* 00CE88 8000C288 24420008 */  addiu $v0, $v0, 8
/* 00CE8C 8000C28C 51790005 */  beql  $t3, $t9, .L8000C2A4
/* 00CE90 8000C290 844F0000 */   lh    $t7, ($v0)
/* 00CE94 8000C294 85AE0000 */  lh    $t6, ($t5)
/* 00CE98 8000C298 558E0021 */  bnel  $t4, $t6, .L8000C320
/* 00CE9C 8000C29C 24630002 */   addiu $v1, $v1, 2
/* 00CEA0 8000C2A0 844F0000 */  lh    $t7, ($v0)
.L8000C2A4:
/* 00CEA4 8000C2A4 84580002 */  lh    $t8, 2($v0)
/* 00CEA8 8000C2A8 84590004 */  lh    $t9, 4($v0)
/* 00CEAC 8000C2AC 448F5000 */  mtc1  $t7, $f10
/* 00CEB0 8000C2B0 44983000 */  mtc1  $t8, $f6
/* 00CEB4 8000C2B4 24090001 */  li    $t1, 1
/* 00CEB8 8000C2B8 46805120 */  cvt.s.w $f4, $f10
/* 00CEBC 8000C2BC 44995000 */  mtc1  $t9, $f10
/* 00CEC0 8000C2C0 46803220 */  cvt.s.w $f8, $f6
/* 00CEC4 8000C2C4 46142481 */  sub.s $f18, $f4, $f20
/* 00CEC8 8000C2C8 46805120 */  cvt.s.w $f4, $f10
/* 00CECC 8000C2CC 46129182 */  mul.s $f6, $f18, $f18
/* 00CED0 8000C2D0 460E4601 */  sub.s $f24, $f8, $f14
/* 00CED4 8000C2D4 46162681 */  sub.s $f26, $f4, $f22
/* 00CED8 8000C2D8 4618C202 */  mul.s $f8, $f24, $f24
/* 00CEDC 8000C2DC 46083280 */  add.s $f10, $f6, $f8
/* 00CEE0 8000C2E0 461AD102 */  mul.s $f4, $f26, $f26
/* 00CEE4 8000C2E4 46045180 */  add.s $f6, $f10, $f4
/* 00CEE8 8000C2E8 4610303C */  c.lt.s $f6, $f16
/* 00CEEC 8000C2EC 00000000 */  nop   
/* 00CEF0 8000C2F0 4502000B */  bc1fl .L8000C320
/* 00CEF4 8000C2F4 24630002 */   addiu $v1, $v1, 2
/* 00CEF8 8000C2F8 46129202 */  mul.s $f8, $f18, $f18
/* 00CEFC 8000C2FC 24640001 */  addiu $a0, $v1, 1
/* 00CF00 8000C300 00047400 */  sll   $t6, $a0, 0x10
/* 00CF04 8000C304 4618C282 */  mul.s $f10, $f24, $f24
/* 00CF08 8000C308 000E2403 */  sra   $a0, $t6, 0x10
/* 00CF0C 8000C30C 24050001 */  li    $a1, 1
/* 00CF10 8000C310 461AD182 */  mul.s $f6, $f26, $f26
/* 00CF14 8000C314 460A4100 */  add.s $f4, $f8, $f10
/* 00CF18 8000C318 46062400 */  add.s $f16, $f4, $f6
/* 00CF1C 8000C31C 24630002 */  addiu $v1, $v1, 2
.L8000C320:
/* 00CF20 8000C320 1466FFB3 */  bne   $v1, $a2, .L8000C1F0
/* 00CF24 8000C324 24420008 */   addiu $v0, $v0, 8
.L8000C328:
/* 00CF28 8000C328 15200086 */  bnez  $t1, .L8000C544
/* 00CF2C 8000C32C 8FAC0028 */   lw    $t4, 0x28($sp)
/* 00CF30 8000C330 00004825 */  move  $t1, $zero
.L8000C334:
/* 00CF34 8000C334 1128007E */  beq   $t1, $t0, .L8000C530
/* 00CF38 8000C338 00095880 */   sll   $t3, $t1, 2
/* 00CF3C 8000C33C 3C188016 */  lui   $t8, %hi(D_80163368) # 0x8016
/* 00CF40 8000C340 030BC021 */  addu  $t8, $t8, $t3
/* 00CF44 8000C344 8F183368 */  lw    $t8, %lo(D_80163368)($t8) # 0x3368($t8)
/* 00CF48 8000C348 3C0A8016 */  lui   $t2, %hi(D_80164550) # 0x8016
/* 00CF4C 8000C34C 014B5021 */  addu  $t2, $t2, $t3
/* 00CF50 8000C350 2B010002 */  slti  $at, $t8, 2
/* 00CF54 8000C354 14200076 */  bnez  $at, .L8000C530
/* 00CF58 8000C358 0009C840 */   sll   $t9, $t1, 1
/* 00CF5C 8000C35C 3C068016 */  lui   $a2, %hi(gWaypointCountByPathIndex) # 0x8016
/* 00CF60 8000C360 00D93021 */  addu  $a2, $a2, $t9
/* 00CF64 8000C364 94C645C8 */  lhu   $a2, %lo(gWaypointCountByPathIndex)($a2) # 0x45c8($a2)
/* 00CF68 8000C368 8D4A4550 */  lw    $t2, %lo(D_80164550)($t2) # 0x4550($t2)
/* 00CF6C 8000C36C 00001825 */  move  $v1, $zero
/* 00CF70 8000C370 18C0006F */  blez  $a2, .L8000C530
/* 00CF74 8000C374 01401025 */   move  $v0, $t2
/* 00CF78 8000C378 30CD0001 */  andi  $t5, $a2, 1
/* 00CF7C 8000C37C 11A00024 */  beqz  $t5, .L8000C410
/* 00CF80 8000C380 00E05825 */   move  $t3, $a3
/* 00CF84 8000C384 954E0006 */  lhu   $t6, 6($t2)
/* 00CF88 8000C388 24030001 */  li    $v1, 1
/* 00CF8C 8000C38C 156E001E */  bne   $t3, $t6, .L8000C408
/* 00CF90 8000C390 00000000 */   nop   
/* 00CF94 8000C394 854F0000 */  lh    $t7, ($t2)
/* 00CF98 8000C398 85580002 */  lh    $t8, 2($t2)
/* 00CF9C 8000C39C 85590004 */  lh    $t9, 4($t2)
/* 00CFA0 8000C3A0 448F4000 */  mtc1  $t7, $f8
/* 00CFA4 8000C3A4 44982000 */  mtc1  $t8, $f4
/* 00CFA8 8000C3A8 468042A0 */  cvt.s.w $f10, $f8
/* 00CFAC 8000C3AC 44994000 */  mtc1  $t9, $f8
/* 00CFB0 8000C3B0 468021A0 */  cvt.s.w $f6, $f4
/* 00CFB4 8000C3B4 46145481 */  sub.s $f18, $f10, $f20
/* 00CFB8 8000C3B8 468042A0 */  cvt.s.w $f10, $f8
/* 00CFBC 8000C3BC 46129102 */  mul.s $f4, $f18, $f18
/* 00CFC0 8000C3C0 460E3601 */  sub.s $f24, $f6, $f14
/* 00CFC4 8000C3C4 46165681 */  sub.s $f26, $f10, $f22
/* 00CFC8 8000C3C8 4618C182 */  mul.s $f6, $f24, $f24
/* 00CFCC 8000C3CC 46062200 */  add.s $f8, $f4, $f6
/* 00CFD0 8000C3D0 461AD282 */  mul.s $f10, $f26, $f26
/* 00CFD4 8000C3D4 460A4100 */  add.s $f4, $f8, $f10
/* 00CFD8 8000C3D8 4610203C */  c.lt.s $f4, $f16
/* 00CFDC 8000C3DC 00000000 */  nop   
/* 00CFE0 8000C3E0 45000009 */  bc1f  .L8000C408
/* 00CFE4 8000C3E4 00000000 */   nop   
/* 00CFE8 8000C3E8 46129182 */  mul.s $f6, $f18, $f18
/* 00CFEC 8000C3EC 00002025 */  move  $a0, $zero
/* 00CFF0 8000C3F0 01206025 */  move  $t4, $t1
/* 00CFF4 8000C3F4 4618C202 */  mul.s $f8, $f24, $f24
/* 00CFF8 8000C3F8 24050002 */  li    $a1, 2
/* 00CFFC 8000C3FC 461AD102 */  mul.s $f4, $f26, $f26
/* 00D000 8000C400 46083280 */  add.s $f10, $f6, $f8
/* 00D004 8000C404 46045400 */  add.s $f16, $f10, $f4
.L8000C408:
/* 00D008 8000C408 10660049 */  beq   $v1, $a2, .L8000C530
/* 00D00C 8000C40C 25420008 */   addiu $v0, $t2, 8
.L8000C410:
/* 00D010 8000C410 944E0006 */  lhu   $t6, 6($v0)
/* 00D014 8000C414 556E0021 */  bnel  $t3, $t6, .L8000C49C
/* 00D018 8000C418 944F000E */   lhu   $t7, 0xe($v0)
/* 00D01C 8000C41C 844F0000 */  lh    $t7, ($v0)
/* 00D020 8000C420 84580002 */  lh    $t8, 2($v0)
/* 00D024 8000C424 84590004 */  lh    $t9, 4($v0)
/* 00D028 8000C428 448F3000 */  mtc1  $t7, $f6
/* 00D02C 8000C42C 44985000 */  mtc1  $t8, $f10
/* 00D030 8000C430 46803220 */  cvt.s.w $f8, $f6
/* 00D034 8000C434 44993000 */  mtc1  $t9, $f6
/* 00D038 8000C438 46805120 */  cvt.s.w $f4, $f10
/* 00D03C 8000C43C 46144481 */  sub.s $f18, $f8, $f20
/* 00D040 8000C440 46803220 */  cvt.s.w $f8, $f6
/* 00D044 8000C444 46129282 */  mul.s $f10, $f18, $f18
/* 00D048 8000C448 460E2601 */  sub.s $f24, $f4, $f14
/* 00D04C 8000C44C 46164681 */  sub.s $f26, $f8, $f22
/* 00D050 8000C450 4618C102 */  mul.s $f4, $f24, $f24
/* 00D054 8000C454 46045180 */  add.s $f6, $f10, $f4
/* 00D058 8000C458 461AD202 */  mul.s $f8, $f26, $f26
/* 00D05C 8000C45C 46083280 */  add.s $f10, $f6, $f8
/* 00D060 8000C460 4610503C */  c.lt.s $f10, $f16
/* 00D064 8000C464 00000000 */  nop   
/* 00D068 8000C468 4502000C */  bc1fl .L8000C49C
/* 00D06C 8000C46C 944F000E */   lhu   $t7, 0xe($v0)
/* 00D070 8000C470 46129102 */  mul.s $f4, $f18, $f18
/* 00D074 8000C474 00032400 */  sll   $a0, $v1, 0x10
/* 00D078 8000C478 00047403 */  sra   $t6, $a0, 0x10
/* 00D07C 8000C47C 4618C182 */  mul.s $f6, $f24, $f24
/* 00D080 8000C480 01C02025 */  move  $a0, $t6
/* 00D084 8000C484 01206025 */  move  $t4, $t1
/* 00D088 8000C488 461AD282 */  mul.s $f10, $f26, $f26
/* 00D08C 8000C48C 24050002 */  li    $a1, 2
/* 00D090 8000C490 46062200 */  add.s $f8, $f4, $f6
/* 00D094 8000C494 460A4400 */  add.s $f16, $f8, $f10
/* 00D098 8000C498 944F000E */  lhu   $t7, 0xe($v0)
.L8000C49C:
/* 00D09C 8000C49C 24420008 */  addiu $v0, $v0, 8
/* 00D0A0 8000C4A0 556F0021 */  bnel  $t3, $t7, .L8000C528
/* 00D0A4 8000C4A4 24630002 */   addiu $v1, $v1, 2
/* 00D0A8 8000C4A8 84580000 */  lh    $t8, ($v0)
/* 00D0AC 8000C4AC 84590002 */  lh    $t9, 2($v0)
/* 00D0B0 8000C4B0 844E0004 */  lh    $t6, 4($v0)
/* 00D0B4 8000C4B4 44982000 */  mtc1  $t8, $f4
/* 00D0B8 8000C4B8 44994000 */  mtc1  $t9, $f8
/* 00D0BC 8000C4BC 468021A0 */  cvt.s.w $f6, $f4
/* 00D0C0 8000C4C0 448E2000 */  mtc1  $t6, $f4
/* 00D0C4 8000C4C4 468042A0 */  cvt.s.w $f10, $f8
/* 00D0C8 8000C4C8 46143481 */  sub.s $f18, $f6, $f20
/* 00D0CC 8000C4CC 468021A0 */  cvt.s.w $f6, $f4
/* 00D0D0 8000C4D0 46129202 */  mul.s $f8, $f18, $f18
/* 00D0D4 8000C4D4 460E5601 */  sub.s $f24, $f10, $f14
/* 00D0D8 8000C4D8 46163681 */  sub.s $f26, $f6, $f22
/* 00D0DC 8000C4DC 4618C282 */  mul.s $f10, $f24, $f24
/* 00D0E0 8000C4E0 460A4100 */  add.s $f4, $f8, $f10
/* 00D0E4 8000C4E4 461AD182 */  mul.s $f6, $f26, $f26
/* 00D0E8 8000C4E8 46062200 */  add.s $f8, $f4, $f6
/* 00D0EC 8000C4EC 4610403C */  c.lt.s $f8, $f16
/* 00D0F0 8000C4F0 00000000 */  nop   
/* 00D0F4 8000C4F4 4502000C */  bc1fl .L8000C528
/* 00D0F8 8000C4F8 24630002 */   addiu $v1, $v1, 2
/* 00D0FC 8000C4FC 46129282 */  mul.s $f10, $f18, $f18
/* 00D100 8000C500 24640001 */  addiu $a0, $v1, 1
/* 00D104 8000C504 00047C00 */  sll   $t7, $a0, 0x10
/* 00D108 8000C508 4618C102 */  mul.s $f4, $f24, $f24
/* 00D10C 8000C50C 000F2403 */  sra   $a0, $t7, 0x10
/* 00D110 8000C510 01206025 */  move  $t4, $t1
/* 00D114 8000C514 461AD202 */  mul.s $f8, $f26, $f26
/* 00D118 8000C518 24050002 */  li    $a1, 2
/* 00D11C 8000C51C 46045180 */  add.s $f6, $f10, $f4
/* 00D120 8000C520 46083400 */  add.s $f16, $f6, $f8
/* 00D124 8000C524 24630002 */  addiu $v1, $v1, 2
.L8000C528:
/* 00D128 8000C528 1466FFB9 */  bne   $v1, $a2, .L8000C410
/* 00D12C 8000C52C 24420008 */   addiu $v0, $v0, 8
.L8000C530:
/* 00D130 8000C530 25290001 */  addiu $t1, $t1, 1
/* 00D134 8000C534 24010004 */  li    $at, 4
/* 00D138 8000C538 1521FF7E */  bne   $t1, $at, .L8000C334
/* 00D13C 8000C53C 00000000 */   nop   
/* 00D140 8000C540 AFAC0028 */  sw    $t4, 0x28($sp)
.L8000C544:
/* 00D144 8000C544 14A000C4 */  bnez  $a1, .L8000C858
/* 00D148 8000C548 8FAC0028 */   lw    $t4, 0x28($sp)
/* 00D14C 8000C54C 3C0A8016 */  lui   $t2, %hi(D_80164550) # $t2, 0x8016
/* 00D150 8000C550 8D424550 */  lw    $v0, %lo(D_80164550)($t2)
/* 00D154 8000C554 3C068016 */  lui   $a2, %hi(gWaypointCountByPathIndex) # $a2, 0x8016
/* 00D158 8000C558 94C645C8 */  lhu   $a2, %lo(gWaypointCountByPathIndex)($a2)
/* 00D15C 8000C55C 84590000 */  lh    $t9, ($v0)
/* 00D160 8000C560 844E0002 */  lh    $t6, 2($v0)
/* 00D164 8000C564 844F0004 */  lh    $t7, 4($v0)
/* 00D168 8000C568 44995000 */  mtc1  $t9, $f10
/* 00D16C 8000C56C 448E3000 */  mtc1  $t6, $f6
/* 00D170 8000C570 28C10002 */  slti  $at, $a2, 2
/* 00D174 8000C574 46805120 */  cvt.s.w $f4, $f10
/* 00D178 8000C578 448F5000 */  mtc1  $t7, $f10
/* 00D17C 8000C57C 24C8FFFF */  addiu $t0, $a2, -1
/* 00D180 8000C580 00002025 */  move  $a0, $zero
/* 00D184 8000C584 31180003 */  andi  $t8, $t0, 3
/* 00D188 8000C588 46803220 */  cvt.s.w $f8, $f6
/* 00D18C 8000C58C 24030001 */  li    $v1, 1
/* 00D190 8000C590 46142001 */  sub.s $f0, $f4, $f20
/* 00D194 8000C594 46805120 */  cvt.s.w $f4, $f10
/* 00D198 8000C598 46000182 */  mul.s $f6, $f0, $f0
/* 00D19C 8000C59C 460E4081 */  sub.s $f2, $f8, $f14
/* 00D1A0 8000C5A0 46162301 */  sub.s $f12, $f4, $f22
/* 00D1A4 8000C5A4 46021202 */  mul.s $f8, $f2, $f2
/* 00D1A8 8000C5A8 46083280 */  add.s $f10, $f6, $f8
/* 00D1AC 8000C5AC 460C6102 */  mul.s $f4, $f12, $f12
/* 00D1B0 8000C5B0 142000A9 */  bnez  $at, .L8000C858
/* 00D1B4 8000C5B4 46045400 */   add.s $f16, $f10, $f4
/* 00D1B8 8000C5B8 13000025 */  beqz  $t8, .L8000C650
/* 00D1BC 8000C5BC 27070001 */   addiu $a3, $t8, 1
.L8000C5C0:
/* 00D1C0 8000C5C0 84590000 */  lh    $t9, ($v0)
/* 00D1C4 8000C5C4 844E0002 */  lh    $t6, 2($v0)
/* 00D1C8 8000C5C8 844F0004 */  lh    $t7, 4($v0)
/* 00D1CC 8000C5CC 44993000 */  mtc1  $t9, $f6
/* 00D1D0 8000C5D0 448E5000 */  mtc1  $t6, $f10
/* 00D1D4 8000C5D4 46803220 */  cvt.s.w $f8, $f6
/* 00D1D8 8000C5D8 448F3000 */  mtc1  $t7, $f6
/* 00D1DC 8000C5DC 46805120 */  cvt.s.w $f4, $f10
/* 00D1E0 8000C5E0 46144481 */  sub.s $f18, $f8, $f20
/* 00D1E4 8000C5E4 46803220 */  cvt.s.w $f8, $f6
/* 00D1E8 8000C5E8 46129282 */  mul.s $f10, $f18, $f18
/* 00D1EC 8000C5EC 460E2601 */  sub.s $f24, $f4, $f14
/* 00D1F0 8000C5F0 46164681 */  sub.s $f26, $f8, $f22
/* 00D1F4 8000C5F4 4618C102 */  mul.s $f4, $f24, $f24
/* 00D1F8 8000C5F8 46045180 */  add.s $f6, $f10, $f4
/* 00D1FC 8000C5FC 461AD202 */  mul.s $f8, $f26, $f26
/* 00D200 8000C600 46083280 */  add.s $f10, $f6, $f8
/* 00D204 8000C604 4610503C */  c.lt.s $f10, $f16
/* 00D208 8000C608 00000000 */  nop   
/* 00D20C 8000C60C 4502000C */  bc1fl .L8000C640
/* 00D210 8000C610 24630001 */   addiu $v1, $v1, 1
/* 00D214 8000C614 46129102 */  mul.s $f4, $f18, $f18
/* 00D218 8000C618 00032400 */  sll   $a0, $v1, 0x10
/* 00D21C 8000C61C 0004C403 */  sra   $t8, $a0, 0x10
/* 00D220 8000C620 4618C182 */  mul.s $f6, $f24, $f24
/* 00D224 8000C624 03002025 */  move  $a0, $t8
/* 00D228 8000C628 00006025 */  move  $t4, $zero
/* 00D22C 8000C62C 461AD282 */  mul.s $f10, $f26, $f26
/* 00D230 8000C630 24050002 */  li    $a1, 2
/* 00D234 8000C634 46062200 */  add.s $f8, $f4, $f6
/* 00D238 8000C638 460A4400 */  add.s $f16, $f8, $f10
/* 00D23C 8000C63C 24630001 */  addiu $v1, $v1, 1
.L8000C640:
/* 00D240 8000C640 14E3FFDF */  bne   $a3, $v1, .L8000C5C0
/* 00D244 8000C644 24420008 */   addiu $v0, $v0, 8
/* 00D248 8000C648 50660084 */  beql  $v1, $a2, .L8000C85C
/* 00D24C 8000C64C 24010002 */   li    $at, 2
.L8000C650:
/* 00D250 8000C650 84590000 */  lh    $t9, ($v0)
/* 00D254 8000C654 844E0002 */  lh    $t6, 2($v0)
/* 00D258 8000C658 844F0004 */  lh    $t7, 4($v0)
/* 00D25C 8000C65C 44992000 */  mtc1  $t9, $f4
/* 00D260 8000C660 448E4000 */  mtc1  $t6, $f8
/* 00D264 8000C664 468021A0 */  cvt.s.w $f6, $f4
/* 00D268 8000C668 448F2000 */  mtc1  $t7, $f4
/* 00D26C 8000C66C 468042A0 */  cvt.s.w $f10, $f8
/* 00D270 8000C670 46143481 */  sub.s $f18, $f6, $f20
/* 00D274 8000C674 468021A0 */  cvt.s.w $f6, $f4
/* 00D278 8000C678 46129202 */  mul.s $f8, $f18, $f18
/* 00D27C 8000C67C 460E5601 */  sub.s $f24, $f10, $f14
/* 00D280 8000C680 46163681 */  sub.s $f26, $f6, $f22
/* 00D284 8000C684 4618C282 */  mul.s $f10, $f24, $f24
/* 00D288 8000C688 460A4100 */  add.s $f4, $f8, $f10
/* 00D28C 8000C68C 461AD182 */  mul.s $f6, $f26, $f26
/* 00D290 8000C690 46062200 */  add.s $f8, $f4, $f6
/* 00D294 8000C694 4610403C */  c.lt.s $f8, $f16
/* 00D298 8000C698 00000000 */  nop   
/* 00D29C 8000C69C 4502000C */  bc1fl .L8000C6D0
/* 00D2A0 8000C6A0 84590008 */   lh    $t9, 8($v0)
/* 00D2A4 8000C6A4 46129282 */  mul.s $f10, $f18, $f18
/* 00D2A8 8000C6A8 00032400 */  sll   $a0, $v1, 0x10
/* 00D2AC 8000C6AC 0004C403 */  sra   $t8, $a0, 0x10
/* 00D2B0 8000C6B0 4618C102 */  mul.s $f4, $f24, $f24
/* 00D2B4 8000C6B4 03002025 */  move  $a0, $t8
/* 00D2B8 8000C6B8 00006025 */  move  $t4, $zero
/* 00D2BC 8000C6BC 461AD202 */  mul.s $f8, $f26, $f26
/* 00D2C0 8000C6C0 24050002 */  li    $a1, 2
/* 00D2C4 8000C6C4 46045180 */  add.s $f6, $f10, $f4
/* 00D2C8 8000C6C8 46083400 */  add.s $f16, $f6, $f8
/* 00D2CC 8000C6CC 84590008 */  lh    $t9, 8($v0)
.L8000C6D0:
/* 00D2D0 8000C6D0 844E000A */  lh    $t6, 0xa($v0)
/* 00D2D4 8000C6D4 844F000C */  lh    $t7, 0xc($v0)
/* 00D2D8 8000C6D8 44995000 */  mtc1  $t9, $f10
/* 00D2DC 8000C6DC 448E3000 */  mtc1  $t6, $f6
/* 00D2E0 8000C6E0 24420008 */  addiu $v0, $v0, 8
/* 00D2E4 8000C6E4 46805120 */  cvt.s.w $f4, $f10
/* 00D2E8 8000C6E8 448F5000 */  mtc1  $t7, $f10
/* 00D2EC 8000C6EC 46803220 */  cvt.s.w $f8, $f6
/* 00D2F0 8000C6F0 46142481 */  sub.s $f18, $f4, $f20
/* 00D2F4 8000C6F4 46805120 */  cvt.s.w $f4, $f10
/* 00D2F8 8000C6F8 46129182 */  mul.s $f6, $f18, $f18
/* 00D2FC 8000C6FC 460E4601 */  sub.s $f24, $f8, $f14
/* 00D300 8000C700 46162681 */  sub.s $f26, $f4, $f22
/* 00D304 8000C704 4618C202 */  mul.s $f8, $f24, $f24
/* 00D308 8000C708 46083280 */  add.s $f10, $f6, $f8
/* 00D30C 8000C70C 461AD102 */  mul.s $f4, $f26, $f26
/* 00D310 8000C710 46045180 */  add.s $f6, $f10, $f4
/* 00D314 8000C714 4610303C */  c.lt.s $f6, $f16
/* 00D318 8000C718 00000000 */  nop   
/* 00D31C 8000C71C 4502000C */  bc1fl .L8000C750
/* 00D320 8000C720 844E0008 */   lh    $t6, 8($v0)
/* 00D324 8000C724 46129202 */  mul.s $f8, $f18, $f18
/* 00D328 8000C728 24640001 */  addiu $a0, $v1, 1
/* 00D32C 8000C72C 0004C400 */  sll   $t8, $a0, 0x10
/* 00D330 8000C730 4618C282 */  mul.s $f10, $f24, $f24
/* 00D334 8000C734 00182403 */  sra   $a0, $t8, 0x10
/* 00D338 8000C738 00006025 */  move  $t4, $zero
/* 00D33C 8000C73C 461AD182 */  mul.s $f6, $f26, $f26
/* 00D340 8000C740 24050002 */  li    $a1, 2
/* 00D344 8000C744 460A4100 */  add.s $f4, $f8, $f10
/* 00D348 8000C748 46062400 */  add.s $f16, $f4, $f6
/* 00D34C 8000C74C 844E0008 */  lh    $t6, 8($v0)
.L8000C750:
/* 00D350 8000C750 844F000A */  lh    $t7, 0xa($v0)
/* 00D354 8000C754 8458000C */  lh    $t8, 0xc($v0)
/* 00D358 8000C758 448E4000 */  mtc1  $t6, $f8
/* 00D35C 8000C75C 448F2000 */  mtc1  $t7, $f4
/* 00D360 8000C760 24420008 */  addiu $v0, $v0, 8
/* 00D364 8000C764 468042A0 */  cvt.s.w $f10, $f8
/* 00D368 8000C768 44984000 */  mtc1  $t8, $f8
/* 00D36C 8000C76C 468021A0 */  cvt.s.w $f6, $f4
/* 00D370 8000C770 46145481 */  sub.s $f18, $f10, $f20
/* 00D374 8000C774 468042A0 */  cvt.s.w $f10, $f8
/* 00D378 8000C778 46129102 */  mul.s $f4, $f18, $f18
/* 00D37C 8000C77C 460E3601 */  sub.s $f24, $f6, $f14
/* 00D380 8000C780 46165681 */  sub.s $f26, $f10, $f22
/* 00D384 8000C784 4618C182 */  mul.s $f6, $f24, $f24
/* 00D388 8000C788 46062200 */  add.s $f8, $f4, $f6
/* 00D38C 8000C78C 461AD282 */  mul.s $f10, $f26, $f26
/* 00D390 8000C790 460A4100 */  add.s $f4, $f8, $f10
/* 00D394 8000C794 4610203C */  c.lt.s $f4, $f16
/* 00D398 8000C798 00000000 */  nop   
/* 00D39C 8000C79C 4502000C */  bc1fl .L8000C7D0
/* 00D3A0 8000C7A0 844F0008 */   lh    $t7, 8($v0)
/* 00D3A4 8000C7A4 46129182 */  mul.s $f6, $f18, $f18
/* 00D3A8 8000C7A8 24640002 */  addiu $a0, $v1, 2
/* 00D3AC 8000C7AC 0004CC00 */  sll   $t9, $a0, 0x10
/* 00D3B0 8000C7B0 4618C202 */  mul.s $f8, $f24, $f24
/* 00D3B4 8000C7B4 00192403 */  sra   $a0, $t9, 0x10
/* 00D3B8 8000C7B8 00006025 */  move  $t4, $zero
/* 00D3BC 8000C7BC 461AD102 */  mul.s $f4, $f26, $f26
/* 00D3C0 8000C7C0 24050002 */  li    $a1, 2
/* 00D3C4 8000C7C4 46083280 */  add.s $f10, $f6, $f8
/* 00D3C8 8000C7C8 46045400 */  add.s $f16, $f10, $f4
/* 00D3CC 8000C7CC 844F0008 */  lh    $t7, 8($v0)
.L8000C7D0:
/* 00D3D0 8000C7D0 8458000A */  lh    $t8, 0xa($v0)
/* 00D3D4 8000C7D4 8459000C */  lh    $t9, 0xc($v0)
/* 00D3D8 8000C7D8 448F3000 */  mtc1  $t7, $f6
/* 00D3DC 8000C7DC 44985000 */  mtc1  $t8, $f10
/* 00D3E0 8000C7E0 24420008 */  addiu $v0, $v0, 8
/* 00D3E4 8000C7E4 46803220 */  cvt.s.w $f8, $f6
/* 00D3E8 8000C7E8 44993000 */  mtc1  $t9, $f6
/* 00D3EC 8000C7EC 46805120 */  cvt.s.w $f4, $f10
/* 00D3F0 8000C7F0 46144481 */  sub.s $f18, $f8, $f20
/* 00D3F4 8000C7F4 46803220 */  cvt.s.w $f8, $f6
/* 00D3F8 8000C7F8 46129282 */  mul.s $f10, $f18, $f18
/* 00D3FC 8000C7FC 460E2601 */  sub.s $f24, $f4, $f14
/* 00D400 8000C800 46164681 */  sub.s $f26, $f8, $f22
/* 00D404 8000C804 4618C102 */  mul.s $f4, $f24, $f24
/* 00D408 8000C808 46045180 */  add.s $f6, $f10, $f4
/* 00D40C 8000C80C 461AD202 */  mul.s $f8, $f26, $f26
/* 00D410 8000C810 46083280 */  add.s $f10, $f6, $f8
/* 00D414 8000C814 4610503C */  c.lt.s $f10, $f16
/* 00D418 8000C818 00000000 */  nop   
/* 00D41C 8000C81C 4502000C */  bc1fl .L8000C850
/* 00D420 8000C820 24630004 */   addiu $v1, $v1, 4
/* 00D424 8000C824 46129102 */  mul.s $f4, $f18, $f18
/* 00D428 8000C828 24640003 */  addiu $a0, $v1, 3
/* 00D42C 8000C82C 00047400 */  sll   $t6, $a0, 0x10
/* 00D430 8000C830 4618C182 */  mul.s $f6, $f24, $f24
/* 00D434 8000C834 000E2403 */  sra   $a0, $t6, 0x10
/* 00D438 8000C838 00006025 */  move  $t4, $zero
/* 00D43C 8000C83C 461AD282 */  mul.s $f10, $f26, $f26
/* 00D440 8000C840 24050002 */  li    $a1, 2
/* 00D444 8000C844 46062200 */  add.s $f8, $f4, $f6
/* 00D448 8000C848 460A4400 */  add.s $f16, $f8, $f10
/* 00D44C 8000C84C 24630004 */  addiu $v1, $v1, 4
.L8000C850:
/* 00D450 8000C850 1466FF7F */  bne   $v1, $a2, .L8000C650
/* 00D454 8000C854 24420008 */   addiu $v0, $v0, 8
.L8000C858:
/* 00D458 8000C858 24010002 */  li    $at, 2
.L8000C85C:
/* 00D45C 8000C85C 14A10003 */  bne   $a1, $at, .L8000C86C
/* 00D460 8000C860 00801025 */   move  $v0, $a0
/* 00D464 8000C864 8FB80070 */  lw    $t8, 0x70($sp)
/* 00D468 8000C868 AF0C0000 */  sw    $t4, ($t8)
.L8000C86C:
/* 00D46C 8000C86C D7B40008 */  ldc1  $f20, 8($sp)
/* 00D470 8000C870 D7B60010 */  ldc1  $f22, 0x10($sp)
/* 00D474 8000C874 D7B80018 */  ldc1  $f24, 0x18($sp)
/* 00D478 8000C878 D7BA0020 */  ldc1  $f26, 0x20($sp)
/* 00D47C 8000C87C 03E00008 */  jr    $ra
/* 00D480 8000C880 27BD0060 */   addiu $sp, $sp, 0x60
