glabel func_8008F1B8
/* 08FDB8 8008F1B8 AFA50004 */  sw    $a1, 4($sp)
/* 08FDBC 8008F1BC C4840210 */  lwc1  $f4, 0x210($a0)
/* 08FDC0 8008F1C0 3C01800F */  lui   $at, %hi(D_800EF5A8)
/* 08FDC4 8008F1C4 D428F5A8 */  ldc1  $f8, %lo(D_800EF5A8)($at)
/* 08FDC8 8008F1C8 460021A1 */  cvt.d.s $f6, $f4
/* 08FDCC 8008F1CC 848200B2 */  lh    $v0, 0xb2($a0)
/* 08FDD0 8008F1D0 46283282 */  mul.d $f10, $f6, $f8
/* 08FDD4 8008F1D4 00057600 */  sll   $t6, $a1, 0x18
/* 08FDD8 8008F1D8 000E7E03 */  sra   $t7, $t6, 0x18
/* 08FDDC 8008F1DC 01E02825 */  move  $a1, $t7
/* 08FDE0 8008F1E0 304E0001 */  andi  $t6, $v0, 1
/* 08FDE4 8008F1E4 46205420 */  cvt.s.d $f16, $f10
/* 08FDE8 8008F1E8 04410043 */  bgez  $v0, .L8008F2F8
/* 08FDEC 8008F1EC E490008C */   swc1  $f16, 0x8c($a0)
/* 08FDF0 8008F1F0 84980044 */  lh    $t8, 0x44($a0)
/* 08FDF4 8008F1F4 24010080 */  li    $at, 128
/* 08FDF8 8008F1F8 00056840 */  sll   $t5, $a1, 1
/* 08FDFC 8008F1FC 33190080 */  andi  $t9, $t8, 0x80
/* 08FE00 8008F200 17210020 */  bne   $t9, $at, .L8008F284
/* 08FE04 8008F204 3C0E8019 */   lui   $t6, %hi(D_8018D920) # 0x8019
/* 08FE08 8008F208 8488002E */  lh    $t0, 0x2e($a0)
/* 08FE0C 8008F20C 3C0B8019 */  lui   $t3, %hi(D_8018D920) # $t3, 0x8019
/* 08FE10 8008F210 256BD920 */  addiu $t3, %lo(D_8018D920) # addiu $t3, $t3, -0x26e0
/* 08FE14 8008F214 000F5040 */  sll   $t2, $t7, 1
/* 08FE18 8008F218 250900B6 */  addiu $t1, $t0, 0xb6
/* 08FE1C 8008F21C A489002E */  sh    $t1, 0x2e($a0)
/* 08FE20 8008F220 014B1021 */  addu  $v0, $t2, $t3
/* 08FE24 8008F224 844C0000 */  lh    $t4, ($v0)
/* 08FE28 8008F228 240100B6 */  li    $at, 182
/* 08FE2C 8008F22C 258D00B6 */  addiu $t5, $t4, 0xb6
/* 08FE30 8008F230 31A3FFFF */  andi  $v1, $t5, 0xffff
/* 08FE34 8008F234 0061001A */  div   $zero, $v1, $at
/* 08FE38 8008F238 00007012 */  mflo  $t6
/* 08FE3C 8008F23C 000E7C00 */  sll   $t7, $t6, 0x10
/* 08FE40 8008F240 000FC403 */  sra   $t8, $t7, 0x10
/* 08FE44 8008F244 240100B4 */  li    $at, 180
/* 08FE48 8008F248 17010063 */  bne   $t8, $at, .L8008F3D8
/* 08FE4C 8008F24C A44D0000 */   sh    $t5, ($v0)
/* 08FE50 8008F250 8C9900BC */  lw    $t9, 0xbc($a0)
/* 08FE54 8008F254 2401BFFF */  li    $at, -16385
/* 08FE58 8008F258 C492009C */  lwc1  $f18, 0x9c($a0)
/* 08FE5C 8008F25C 03214024 */  and   $t0, $t9, $at
/* 08FE60 8008F260 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 08FE64 8008F264 44812000 */  mtc1  $at, $f4
/* 08FE68 8008F268 94890000 */  lhu   $t1, ($a0)
/* 08FE6C 8008F26C AC8800BC */  sw    $t0, 0xbc($a0)
/* 08FE70 8008F270 46049183 */  div.s $f6, $f18, $f4
/* 08FE74 8008F274 312AFF7F */  andi  $t2, $t1, 0xff7f
/* 08FE78 8008F278 A48A0000 */  sh    $t2, ($a0)
/* 08FE7C 8008F27C 03E00008 */  jr    $ra
/* 08FE80 8008F280 E486009C */   swc1  $f6, 0x9c($a0)

.L8008F284:
/* 08FE84 8008F284 848B002E */  lh    $t3, 0x2e($a0)
/* 08FE88 8008F288 25CED920 */  addiu $t6, $t6, %lo(D_8018D920) # -0x26e0
/* 08FE8C 8008F28C 01AE1021 */  addu  $v0, $t5, $t6
/* 08FE90 8008F290 256CFF4A */  addiu $t4, $t3, -0xb6
/* 08FE94 8008F294 A48C002E */  sh    $t4, 0x2e($a0)
/* 08FE98 8008F298 844F0000 */  lh    $t7, ($v0)
/* 08FE9C 8008F29C 240100B6 */  li    $at, 182
/* 08FEA0 8008F2A0 25F8FF4A */  addiu $t8, $t7, -0xb6
/* 08FEA4 8008F2A4 3303FFFF */  andi  $v1, $t8, 0xffff
/* 08FEA8 8008F2A8 0061001A */  div   $zero, $v1, $at
/* 08FEAC 8008F2AC 0000C812 */  mflo  $t9
/* 08FEB0 8008F2B0 00194400 */  sll   $t0, $t9, 0x10
/* 08FEB4 8008F2B4 00084C03 */  sra   $t1, $t0, 0x10
/* 08FEB8 8008F2B8 240100B4 */  li    $at, 180
/* 08FEBC 8008F2BC 15210046 */  bne   $t1, $at, .L8008F3D8
/* 08FEC0 8008F2C0 A4580000 */   sh    $t8, ($v0)
/* 08FEC4 8008F2C4 8C8A00BC */  lw    $t2, 0xbc($a0)
/* 08FEC8 8008F2C8 2401BFFF */  li    $at, -16385
/* 08FECC 8008F2CC C488009C */  lwc1  $f8, 0x9c($a0)
/* 08FED0 8008F2D0 01415824 */  and   $t3, $t2, $at
/* 08FED4 8008F2D4 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 08FED8 8008F2D8 44815000 */  mtc1  $at, $f10
/* 08FEDC 8008F2DC 948C0000 */  lhu   $t4, ($a0)
/* 08FEE0 8008F2E0 AC8B00BC */  sw    $t3, 0xbc($a0)
/* 08FEE4 8008F2E4 460A4403 */  div.s $f16, $f8, $f10
/* 08FEE8 8008F2E8 318DFF7F */  andi  $t5, $t4, 0xff7f
/* 08FEEC 8008F2EC A48D0000 */  sh    $t5, ($a0)
/* 08FEF0 8008F2F0 03E00008 */  jr    $ra
/* 08FEF4 8008F2F4 E490009C */   swc1  $f16, 0x9c($a0)

.L8008F2F8:
/* 08FEF8 8008F2F8 11C0001D */  beqz  $t6, .L8008F370
/* 08FEFC 8008F2FC 00056040 */   sll   $t4, $a1, 1
/* 08FF00 8008F300 848F002E */  lh    $t7, 0x2e($a0)
/* 08FF04 8008F304 3C088019 */  lui   $t0, %hi(D_8018D920) # $t0, 0x8019
/* 08FF08 8008F308 2508D920 */  addiu $t0, %lo(D_8018D920) # addiu $t0, $t0, -0x26e0
/* 08FF0C 8008F30C 0005C840 */  sll   $t9, $a1, 1
/* 08FF10 8008F310 25F8FE94 */  addiu $t8, $t7, -0x16c
/* 08FF14 8008F314 A498002E */  sh    $t8, 0x2e($a0)
/* 08FF18 8008F318 03281021 */  addu  $v0, $t9, $t0
/* 08FF1C 8008F31C 84490000 */  lh    $t1, ($v0)
/* 08FF20 8008F320 2401016C */  li    $at, 364
/* 08FF24 8008F324 252AFE94 */  addiu $t2, $t1, -0x16c
/* 08FF28 8008F328 3143FFFF */  andi  $v1, $t2, 0xffff
/* 08FF2C 8008F32C 0061001A */  div   $zero, $v1, $at
/* 08FF30 8008F330 00005812 */  mflo  $t3
/* 08FF34 8008F334 000B6400 */  sll   $t4, $t3, 0x10
/* 08FF38 8008F338 000C6C03 */  sra   $t5, $t4, 0x10
/* 08FF3C 8008F33C 29A10047 */  slti  $at, $t5, 0x47
/* 08FF40 8008F340 10200004 */  beqz  $at, .L8008F354
/* 08FF44 8008F344 A44A0000 */   sh    $t2, ($v0)
/* 08FF48 8008F348 848E00B2 */  lh    $t6, 0xb2($a0)
/* 08FF4C 8008F34C 25CFFFFF */  addiu $t7, $t6, -1
/* 08FF50 8008F350 A48F00B2 */  sh    $t7, 0xb2($a0)
.L8008F354:
/* 08FF54 8008F354 84980044 */  lh    $t8, 0x44($a0)
/* 08FF58 8008F358 37190080 */  ori   $t9, $t8, 0x80
/* 08FF5C 8008F35C A4990044 */  sh    $t9, 0x44($a0)
/* 08FF60 8008F360 84880044 */  lh    $t0, 0x44($a0)
/* 08FF64 8008F364 3109FFBF */  andi  $t1, $t0, 0xffbf
/* 08FF68 8008F368 03E00008 */  jr    $ra
/* 08FF6C 8008F36C A4890044 */   sh    $t1, 0x44($a0)

.L8008F370:
/* 08FF70 8008F370 848A002E */  lh    $t2, 0x2e($a0)
/* 08FF74 8008F374 3C0D8019 */  lui   $t5, %hi(D_8018D920) # $t5, 0x8019
/* 08FF78 8008F378 25ADD920 */  addiu $t5, %lo(D_8018D920) # addiu $t5, $t5, -0x26e0
/* 08FF7C 8008F37C 254B016C */  addiu $t3, $t2, 0x16c
/* 08FF80 8008F380 A48B002E */  sh    $t3, 0x2e($a0)
/* 08FF84 8008F384 018D1021 */  addu  $v0, $t4, $t5
/* 08FF88 8008F388 844E0000 */  lh    $t6, ($v0)
/* 08FF8C 8008F38C 2401016C */  li    $at, 364
/* 08FF90 8008F390 25CF016C */  addiu $t7, $t6, 0x16c
/* 08FF94 8008F394 31E3FFFF */  andi  $v1, $t7, 0xffff
/* 08FF98 8008F398 0061001A */  div   $zero, $v1, $at
/* 08FF9C 8008F39C 0000C012 */  mflo  $t8
/* 08FFA0 8008F3A0 0018CC00 */  sll   $t9, $t8, 0x10
/* 08FFA4 8008F3A4 00194403 */  sra   $t0, $t9, 0x10
/* 08FFA8 8008F3A8 2901006E */  slti  $at, $t0, 0x6e
/* 08FFAC 8008F3AC 14200004 */  bnez  $at, .L8008F3C0
/* 08FFB0 8008F3B0 A44F0000 */   sh    $t7, ($v0)
/* 08FFB4 8008F3B4 848900B2 */  lh    $t1, 0xb2($a0)
/* 08FFB8 8008F3B8 252AFFFF */  addiu $t2, $t1, -1
/* 08FFBC 8008F3BC A48A00B2 */  sh    $t2, 0xb2($a0)
.L8008F3C0:
/* 08FFC0 8008F3C0 848B0044 */  lh    $t3, 0x44($a0)
/* 08FFC4 8008F3C4 356C0040 */  ori   $t4, $t3, 0x40
/* 08FFC8 8008F3C8 A48C0044 */  sh    $t4, 0x44($a0)
/* 08FFCC 8008F3CC 848D0044 */  lh    $t5, 0x44($a0)
/* 08FFD0 8008F3D0 31AEFF7F */  andi  $t6, $t5, 0xff7f
/* 08FFD4 8008F3D4 A48E0044 */  sh    $t6, 0x44($a0)
.L8008F3D8:
/* 08FFD8 8008F3D8 03E00008 */  jr    $ra
/* 08FFDC 8008F3DC 00000000 */   nop   
