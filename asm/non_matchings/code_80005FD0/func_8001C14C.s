glabel func_8001C14C
/* 01CD4C 8001C14C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 01CD50 8001C150 AFB20028 */  sw    $s2, 0x28($sp)
/* 01CD54 8001C154 3C128016 */  lui   $s2, %hi(D_8016347C) # $s2, 0x8016
/* 01CD58 8001C158 2652347C */  addiu $s2, %lo(D_8016347C) # addiu $s2, $s2, 0x347c
/* 01CD5C 8001C15C 864E0000 */  lh    $t6, ($s2)
/* 01CD60 8001C160 AFB60038 */  sw    $s6, 0x38($sp)
/* 01CD64 8001C164 24160001 */  li    $s6, 1
/* 01CD68 8001C168 AFBF0044 */  sw    $ra, 0x44($sp)
/* 01CD6C 8001C16C AFBE0040 */  sw    $fp, 0x40($sp)
/* 01CD70 8001C170 AFB7003C */  sw    $s7, 0x3c($sp)
/* 01CD74 8001C174 AFB50034 */  sw    $s5, 0x34($sp)
/* 01CD78 8001C178 AFB40030 */  sw    $s4, 0x30($sp)
/* 01CD7C 8001C17C AFB3002C */  sw    $s3, 0x2c($sp)
/* 01CD80 8001C180 AFB10024 */  sw    $s1, 0x24($sp)
/* 01CD84 8001C184 AFB00020 */  sw    $s0, 0x20($sp)
/* 01CD88 8001C188 16CE0006 */  bne   $s6, $t6, .L8001C1A4
/* 01CD8C 8001C18C F7B40018 */   sdc1  $f20, 0x18($sp)
/* 01CD90 8001C190 3C0F8016 */  lui   $t7, %hi(D_80163480) # $t7, 0x8016
/* 01CD94 8001C194 8DEF3480 */  lw    $t7, %lo(D_80163480)($t7)
/* 01CD98 8001C198 3C018016 */  lui   $at, %hi(D_80163480) # $at, 0x8016
/* 01CD9C 8001C19C 25F80001 */  addiu $t8, $t7, 1
/* 01CDA0 8001C1A0 AC383480 */  sw    $t8, %lo(D_80163480)($at)
.L8001C1A4:
/* 01CDA4 8001C1A4 3C178016 */  lui   $s7, %hi(D_8016347E) # $s7, 0x8016
/* 01CDA8 8001C1A8 26F7347E */  addiu $s7, %lo(D_8016347E) # addiu $s7, $s7, 0x347e
/* 01CDAC 8001C1AC 86F90000 */  lh    $t9, ($s7)
/* 01CDB0 8001C1B0 3C088016 */  lui   $t0, %hi(D_80163E2C) # $t0, 0x8016
/* 01CDB4 8001C1B4 56D90015 */  bnel  $s6, $t9, .L8001C20C
/* 01CDB8 8001C1B8 3C013FF0 */   lui   $at, 0x3ff0
/* 01CDBC 8001C1BC 95083E2C */  lhu   $t0, %lo(D_80163E2C)($t0)
/* 01CDC0 8001C1C0 3C098028 */  lui   $t1, %hi(D_802874D8+0x1D) # $t1, 0x8028
/* 01CDC4 8001C1C4 55000011 */  bnel  $t0, $zero, .L8001C20C
/* 01CDC8 8001C1C8 3C013FF0 */   lui   $at, 0x3ff0
/* 01CDCC 8001C1CC 812974F5 */  lb    $t1, %lo(D_802874D8+0x1D)($t1)
/* 01CDD0 8001C1D0 3C1E8016 */  lui   $fp, %hi(D_80163484) # $fp, 0x8016
/* 01CDD4 8001C1D4 27DE3484 */  addiu $fp, %lo(D_80163484) # addiu $fp, $fp, 0x3484
/* 01CDD8 8001C1D8 29210003 */  slti  $at, $t1, 3
/* 01CDDC 8001C1DC 5420000B */  bnel  $at, $zero, .L8001C20C
/* 01CDE0 8001C1E0 3C013FF0 */   lui   $at, 0x3ff0
/* 01CDE4 8001C1E4 8FCA0000 */  lw    $t2, ($fp)
/* 01CDE8 8001C1E8 240D0002 */  li    $t5, 2
/* 01CDEC 8001C1EC 254B0001 */  addiu $t3, $t2, 1
/* 01CDF0 8001C1F0 2961000F */  slti  $at, $t3, 0xf
/* 01CDF4 8001C1F4 14200004 */  bnez  $at, .L8001C208
/* 01CDF8 8001C1F8 AFCB0000 */   sw    $t3, ($fp)
/* 01CDFC 8001C1FC AFC00000 */  sw    $zero, ($fp)
/* 01CE00 8001C200 0C024997 */  jal   func_8009265C
/* 01CE04 8001C204 A6ED0000 */   sh    $t5, ($s7)
.L8001C208:
/* 01CE08 8001C208 3C013FF0 */  li    $at, 0x3FF00000 # 1.875000
.L8001C20C:
/* 01CE0C 8001C20C 3C1E8016 */  lui   $fp, %hi(D_80163484) # $fp, 0x8016
/* 01CE10 8001C210 3C14800E */  lui   $s4, %hi(gPlayerOne)
/* 01CE14 8001C214 4481A800 */  mtc1  $at, $f21
/* 01CE18 8001C218 4480A000 */  mtc1  $zero, $f20
/* 01CE1C 8001C21C 27DE3484 */  addiu $fp, %lo(D_80163484) # addiu $fp, $fp, 0x3484
/* 01CE20 8001C220 2694C4DC */  addiu $s4, %lo(gPlayerOne) # addiu $s4, $s4, -0x3b24
/* 01CE24 8001C224 00008825 */  move  $s1, $zero
/* 01CE28 8001C228 3C150100 */  lui   $s5, 0x100
/* 01CE2C 8001C22C 24130003 */  li    $s3, 3
.L8001C230:
/* 01CE30 8001C230 16330003 */  bne   $s1, $s3, .L8001C240
/* 01CE34 8001C234 001178C0 */   sll   $t7, $s1, 3
/* 01CE38 8001C238 864E0000 */  lh    $t6, ($s2)
/* 01CE3C 8001C23C 11C00054 */  beqz  $t6, .L8001C390
.L8001C240:
/* 01CE40 8001C240 01F17823 */   subu  $t7, $t7, $s1
/* 01CE44 8001C244 000F7900 */  sll   $t7, $t7, 4
/* 01CE48 8001C248 01F17823 */  subu  $t7, $t7, $s1
/* 01CE4C 8001C24C 000F7880 */  sll   $t7, $t7, 2
/* 01CE50 8001C250 8E980000 */  lw    $t8, ($s4)
/* 01CE54 8001C254 01F17823 */  subu  $t7, $t7, $s1
/* 01CE58 8001C258 000F78C0 */  sll   $t7, $t7, 3
/* 01CE5C 8001C25C 02202025 */  move  $a0, $s1
/* 01CE60 8001C260 0C0026D8 */  jal   func_80009B60
/* 01CE64 8001C264 01F88021 */   addu  $s0, $t7, $t8
/* 01CE68 8001C268 96030000 */  lhu   $v1, ($s0)
/* 01CE6C 8001C26C 00111080 */  sll   $v0, $s1, 2
/* 01CE70 8001C270 3C018016 */  lui   $at, %hi(D_80163418)
/* 01CE74 8001C274 30792000 */  andi  $t9, $v1, 0x2000
/* 01CE78 8001C278 17200041 */  bnez  $t9, .L8001C380
/* 01CE7C 8001C27C 00220821 */   addu  $at, $at, $v0
/* 01CE80 8001C280 C4243418 */  lwc1  $f4, %lo(D_80163418)($at)
/* 01CE84 8001C284 C6060014 */  lwc1  $f6, 0x14($s0)
/* 01CE88 8001C288 3C018016 */  lui   $at, %hi(D_80163438)
/* 01CE8C 8001C28C 00220821 */  addu  $at, $at, $v0
/* 01CE90 8001C290 46062001 */  sub.s $f0, $f4, $f6
/* 01CE94 8001C294 C4283438 */  lwc1  $f8, %lo(D_80163438)($at)
/* 01CE98 8001C298 C60A001C */  lwc1  $f10, 0x1c($s0)
/* 01CE9C 8001C29C 46000402 */  mul.s $f16, $f0, $f0
/* 01CEA0 8001C2A0 460A4081 */  sub.s $f2, $f8, $f10
/* 01CEA4 8001C2A4 46021482 */  mul.s $f18, $f2, $f2
/* 01CEA8 8001C2A8 46128100 */  add.s $f4, $f16, $f18
/* 01CEAC 8001C2AC 460021A1 */  cvt.d.s $f6, $f4
/* 01CEB0 8001C2B0 4634303C */  c.lt.d $f6, $f20
/* 01CEB4 8001C2B4 00000000 */  nop
/* 01CEB8 8001C2B8 45020032 */  bc1fl .L8001C384
/* 01CEBC 8001C2BC 26310001 */   addiu $s1, $s1, 1
/* 01CEC0 8001C2C0 5233001E */  beql  $s1, $s3, .L8001C33C
/* 01CEC4 8001C2C4 86EA0000 */   lh    $t2, ($s7)
/* 01CEC8 8001C2C8 86480000 */  lh    $t0, ($s2)
/* 01CECC 8001C2CC 306ADFFF */  andi  $t2, $v1, 0xdfff
/* 01CED0 8001C2D0 34692000 */  ori   $t1, $v1, 0x2000
/* 01CED4 8001C2D4 15000003 */  bnez  $t0, .L8001C2E4
/* 01CED8 8001C2D8 3C0E800E */   lui   $t6, %hi(gPlayerTwo)
/* 01CEDC 8001C2DC 10000002 */  b     .L8001C2E8
/* 01CEE0 8001C2E0 A6090000 */   sh    $t1, ($s0)
.L8001C2E4:
/* 01CEE4 8001C2E4 A60A0000 */  sh    $t2, ($s0)
.L8001C2E8:
/* 01CEE8 8001C2E8 8E8B0000 */  lw    $t3, ($s4)
/* 01CEEC 8001C2EC 956C0000 */  lhu   $t4, ($t3)
/* 01CEF0 8001C2F0 318D2000 */  andi  $t5, $t4, 0x2000
/* 01CEF4 8001C2F4 51A00023 */  beql  $t5, $zero, .L8001C384
/* 01CEF8 8001C2F8 26310001 */   addiu $s1, $s1, 1
/* 01CEFC 8001C2FC 8DCEC4E0 */  lw    $t6, %lo(gPlayerTwo)($t6)
/* 01CF00 8001C300 3C19800E */  lui   $t9, %hi(gPlayerThree)
/* 01CF04 8001C304 95CF0000 */  lhu   $t7, ($t6)
/* 01CF08 8001C308 31F82000 */  andi  $t8, $t7, 0x2000
/* 01CF0C 8001C30C 5300001D */  beql  $t8, $zero, .L8001C384
/* 01CF10 8001C310 26310001 */   addiu $s1, $s1, 1
/* 01CF14 8001C314 8F39C4E4 */  lw    $t9, %lo(gPlayerThree)($t9)
/* 01CF18 8001C318 3C018016 */  lui   $at, %hi(D_80163480) # $at, 0x8016
/* 01CF1C 8001C31C 97280000 */  lhu   $t0, ($t9)
/* 01CF20 8001C320 31092000 */  andi  $t1, $t0, 0x2000
/* 01CF24 8001C324 51200017 */  beql  $t1, $zero, .L8001C384
/* 01CF28 8001C328 26310001 */   addiu $s1, $s1, 1
/* 01CF2C 8001C32C A6560000 */  sh    $s6, ($s2)
/* 01CF30 8001C330 10000013 */  b     .L8001C380
/* 01CF34 8001C334 AC203480 */   sw    $zero, %lo(D_80163480)($at)
/* 01CF38 8001C338 86EA0000 */  lh    $t2, ($s7)
.L8001C33C:
/* 01CF3C 8001C33C 5540000B */  bnel  $t2, $zero, .L8001C36C
/* 01CF40 8001C340 8E0E00BC */   lw    $t6, 0xbc($s0)
/* 01CF44 8001C344 8E0B00BC */  lw    $t3, 0xbc($s0)
/* 01CF48 8001C348 346D2000 */  ori   $t5, $v1, 0x2000
/* 01CF4C 8001C34C 01756024 */  and   $t4, $t3, $s5
/* 01CF50 8001C350 55800003 */  bnel  $t4, $zero, .L8001C360
/* 01CF54 8001C354 A6F60000 */   sh    $s6, ($s7)
/* 01CF58 8001C358 A60D0000 */  sh    $t5, ($s0)
/* 01CF5C 8001C35C A6F60000 */  sh    $s6, ($s7)
.L8001C360:
/* 01CF60 8001C360 10000007 */  b     .L8001C380
/* 01CF64 8001C364 AFC00000 */   sw    $zero, ($fp)
/* 01CF68 8001C368 8E0E00BC */  lw    $t6, 0xbc($s0)
.L8001C36C:
/* 01CF6C 8001C36C 34782000 */  ori   $t8, $v1, 0x2000
/* 01CF70 8001C370 01D57824 */  and   $t7, $t6, $s5
/* 01CF74 8001C374 55E00003 */  bnel  $t7, $zero, .L8001C384
/* 01CF78 8001C378 26310001 */   addiu $s1, $s1, 1
/* 01CF7C 8001C37C A6180000 */  sh    $t8, ($s0)
.L8001C380:
/* 01CF80 8001C380 26310001 */  addiu $s1, $s1, 1
.L8001C384:
/* 01CF84 8001C384 24010004 */  li    $at, 4
/* 01CF88 8001C388 1621FFA9 */  bne   $s1, $at, .L8001C230
/* 01CF8C 8001C38C 00000000 */   nop
.L8001C390:
/* 01CF90 8001C390 8FBF0044 */  lw    $ra, 0x44($sp)
/* 01CF94 8001C394 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 01CF98 8001C398 8FB00020 */  lw    $s0, 0x20($sp)
/* 01CF9C 8001C39C 8FB10024 */  lw    $s1, 0x24($sp)
/* 01CFA0 8001C3A0 8FB20028 */  lw    $s2, 0x28($sp)
/* 01CFA4 8001C3A4 8FB3002C */  lw    $s3, 0x2c($sp)
/* 01CFA8 8001C3A8 8FB40030 */  lw    $s4, 0x30($sp)
/* 01CFAC 8001C3AC 8FB50034 */  lw    $s5, 0x34($sp)
/* 01CFB0 8001C3B0 8FB60038 */  lw    $s6, 0x38($sp)
/* 01CFB4 8001C3B4 8FB7003C */  lw    $s7, 0x3c($sp)
/* 01CFB8 8001C3B8 8FBE0040 */  lw    $fp, 0x40($sp)
/* 01CFBC 8001C3BC 03E00008 */  jr    $ra
/* 01CFC0 8001C3C0 27BD0048 */   addiu $sp, $sp, 0x48
