glabel func_8008A4CC
/* 08B0CC 8008A4CC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 08B0D0 8008A4D0 AFBF003C */  sw    $ra, 0x3c($sp)
/* 08B0D4 8008A4D4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 08B0D8 8008A4D8 00808825 */  move  $s1, $a0
/* 08B0DC 8008A4DC AFBE0038 */  sw    $fp, 0x38($sp)
/* 08B0E0 8008A4E0 AFB70034 */  sw    $s7, 0x34($sp)
/* 08B0E4 8008A4E4 AFB60030 */  sw    $s6, 0x30($sp)
/* 08B0E8 8008A4E8 AFB5002C */  sw    $s5, 0x2c($sp)
/* 08B0EC 8008A4EC AFB40028 */  sw    $s4, 0x28($sp)
/* 08B0F0 8008A4F0 AFB30024 */  sw    $s3, 0x24($sp)
/* 08B0F4 8008A4F4 AFB20020 */  sw    $s2, 0x20($sp)
/* 08B0F8 8008A4F8 AFB00018 */  sw    $s0, 0x18($sp)
/* 08B0FC 8008A4FC 0C01C87A */  jal   func_800721E8
/* 08B100 8008A500 3C050007 */   lui   $a1, 7
/* 08B104 8008A504 3C0E800E */  lui   $t6, %hi(gPlayerCountSelection1) # $t6, 0x800e
/* 08B108 8008A508 8DCEC538 */  lw    $t6, %lo(gPlayerCountSelection1)($t6)
/* 08B10C 8008A50C 3C14800E */  lui   $s4, %hi(D_800DDB40) # $s4, 0x800e
/* 08B110 8008A510 8E94DB40 */  lw    $s4, %lo(D_800DDB40)($s4)
/* 08B114 8008A514 19C00032 */  blez  $t6, .L8008A5E0
/* 08B118 8008A518 00009025 */   move  $s2, $zero
/* 08B11C 8008A51C 001178C0 */  sll   $t7, $s1, 3
/* 08B120 8008A520 01F17823 */  subu  $t7, $t7, $s1
/* 08B124 8008A524 3C188016 */  lui   $t8, %hi(D_80165C18) # $t8, 0x8016
/* 08B128 8008A528 27185C18 */  addiu $t8, %lo(D_80165C18) # addiu $t8, $t8, 0x5c18
/* 08B12C 8008A52C 000F7940 */  sll   $t7, $t7, 5
/* 08B130 8008A530 3C158019 */  lui   $s5, %hi(D_8018CF68) # $s5, 0x8019
/* 08B134 8008A534 26B5CF68 */  addiu $s5, %lo(D_8018CF68) # addiu $s5, $s5, -0x3098
/* 08B138 8008A538 01F89821 */  addu  $s3, $t7, $t8
/* 08B13C 8008A53C 3C1E0004 */  lui   $fp, 4
/* 08B140 8008A540 3C170002 */  lui   $s7, 2
/* 08B144 8008A544 3C160001 */  lui   $s6, 1
/* 08B148 8008A548 867900A6 */  lh    $t9, 0xa6($s3)
.L8008A54C:
/* 08B14C 8008A54C 00124040 */  sll   $t0, $s2, 1
/* 08B150 8008A550 02A88021 */  addu  $s0, $s5, $t0
/* 08B154 8008A554 1320001B */  beqz  $t9, .L8008A5C4
/* 08B158 8008A558 00000000 */   nop   
/* 08B15C 8008A55C 926300DF */  lbu   $v1, 0xdf($s3)
/* 08B160 8008A560 86020000 */  lh    $v0, ($s0)
/* 08B164 8008A564 2469FFFF */  addiu $t1, $v1, -1
/* 08B168 8008A568 0049082A */  slt   $at, $v0, $t1
/* 08B16C 8008A56C 14200015 */  bnez  $at, .L8008A5C4
/* 08B170 8008A570 246A0001 */   addiu $t2, $v1, 1
/* 08B174 8008A574 0142082A */  slt   $at, $t2, $v0
/* 08B178 8008A578 14200012 */  bnez  $at, .L8008A5C4
/* 08B17C 8008A57C 02202025 */   move  $a0, $s1
/* 08B180 8008A580 0C01C870 */  jal   func_800721C0
/* 08B184 8008A584 02C02825 */   move  $a1, $s6
/* 08B188 8008A588 860B0000 */  lh    $t3, ($s0)
/* 08B18C 8008A58C 926C00DF */  lbu   $t4, 0xdf($s3)
/* 08B190 8008A590 02202025 */  move  $a0, $s1
/* 08B194 8008A594 556C0004 */  bnel  $t3, $t4, .L8008A5A8
/* 08B198 8008A598 02202025 */   move  $a0, $s1
/* 08B19C 8008A59C 0C01C870 */  jal   func_800721C0
/* 08B1A0 8008A5A0 02E02825 */   move  $a1, $s7
/* 08B1A4 8008A5A4 02202025 */  move  $a0, $s1
.L8008A5A8:
/* 08B1A8 8008A5A8 02802825 */  move  $a1, $s4
/* 08B1AC 8008A5AC 0C022850 */  jal   func_8008A140
/* 08B1B0 8008A5B0 24062AAB */   li    $a2, 10923
/* 08B1B4 8008A5B4 10400003 */  beqz  $v0, .L8008A5C4
/* 08B1B8 8008A5B8 02202025 */   move  $a0, $s1
/* 08B1BC 8008A5BC 0C01C870 */  jal   func_800721C0
/* 08B1C0 8008A5C0 03C02825 */   move  $a1, $fp
.L8008A5C4:
/* 08B1C4 8008A5C4 3C0D800E */  lui   $t5, %hi(gPlayerCountSelection1) # $t5, 0x800e
/* 08B1C8 8008A5C8 8DADC538 */  lw    $t5, %lo(gPlayerCountSelection1)($t5)
/* 08B1CC 8008A5CC 26520001 */  addiu $s2, $s2, 1
/* 08B1D0 8008A5D0 269400B8 */  addiu $s4, $s4, 0xb8
/* 08B1D4 8008A5D4 024D082A */  slt   $at, $s2, $t5
/* 08B1D8 8008A5D8 5420FFDC */  bnel  $at, $zero, .L8008A54C
/* 08B1DC 8008A5DC 867900A6 */   lh    $t9, 0xa6($s3)
.L8008A5E0:
/* 08B1E0 8008A5E0 8FBF003C */  lw    $ra, 0x3c($sp)
/* 08B1E4 8008A5E4 8FB00018 */  lw    $s0, 0x18($sp)
/* 08B1E8 8008A5E8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 08B1EC 8008A5EC 8FB20020 */  lw    $s2, 0x20($sp)
/* 08B1F0 8008A5F0 8FB30024 */  lw    $s3, 0x24($sp)
/* 08B1F4 8008A5F4 8FB40028 */  lw    $s4, 0x28($sp)
/* 08B1F8 8008A5F8 8FB5002C */  lw    $s5, 0x2c($sp)
/* 08B1FC 8008A5FC 8FB60030 */  lw    $s6, 0x30($sp)
/* 08B200 8008A600 8FB70034 */  lw    $s7, 0x34($sp)
/* 08B204 8008A604 8FBE0038 */  lw    $fp, 0x38($sp)
/* 08B208 8008A608 03E00008 */  jr    $ra
/* 08B20C 8008A60C 27BD0040 */   addiu $sp, $sp, 0x40

/* 08B210 8008A610 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 08B214 8008A614 AFB40024 */  sw    $s4, 0x24($sp)
/* 08B218 8008A618 3C140004 */  lui   $s4, 4
/* 08B21C 8008A61C AFBF002C */  sw    $ra, 0x2c($sp)
/* 08B220 8008A620 AFB2001C */  sw    $s2, 0x1c($sp)
/* 08B224 8008A624 00809025 */  move  $s2, $a0
/* 08B228 8008A628 AFB50028 */  sw    $s5, 0x28($sp)
/* 08B22C 8008A62C AFB30020 */  sw    $s3, 0x20($sp)
/* 08B230 8008A630 AFB10018 */  sw    $s1, 0x18($sp)
/* 08B234 8008A634 AFB00014 */  sw    $s0, 0x14($sp)
/* 08B238 8008A638 0C01C87A */  jal   func_800721E8
/* 08B23C 8008A63C 02802825 */   move  $a1, $s4
/* 08B240 8008A640 3C15800E */  lui   $s5, %hi(gPlayerCountSelection1) # $s5, 0x800e
/* 08B244 8008A644 26B5C538 */  addiu $s5, %lo(gPlayerCountSelection1) # addiu $s5, $s5, -0x3ac8
/* 08B248 8008A648 8EAE0000 */  lw    $t6, ($s5)
/* 08B24C 8008A64C 3C10800E */  lui   $s0, %hi(D_800DDB40) # $s0, 0x800e
/* 08B250 8008A650 8E10DB40 */  lw    $s0, %lo(D_800DDB40)($s0)
/* 08B254 8008A654 19C00018 */  blez  $t6, .L8008A6B8
/* 08B258 8008A658 00008825 */   move  $s1, $zero
/* 08B25C 8008A65C 001278C0 */  sll   $t7, $s2, 3
/* 08B260 8008A660 01F27823 */  subu  $t7, $t7, $s2
/* 08B264 8008A664 3C188016 */  lui   $t8, %hi(D_80165C18) # $t8, 0x8016
/* 08B268 8008A668 27185C18 */  addiu $t8, %lo(D_80165C18) # addiu $t8, $t8, 0x5c18
/* 08B26C 8008A66C 000F7940 */  sll   $t7, $t7, 5
/* 08B270 8008A670 01F89821 */  addu  $s3, $t7, $t8
/* 08B274 8008A674 867900A6 */  lh    $t9, 0xa6($s3)
.L8008A678:
/* 08B278 8008A678 02402025 */  move  $a0, $s2
/* 08B27C 8008A67C 02002825 */  move  $a1, $s0
/* 08B280 8008A680 53200008 */  beql  $t9, $zero, .L8008A6A4
/* 08B284 8008A684 8EA80000 */   lw    $t0, ($s5)
/* 08B288 8008A688 0C022850 */  jal   func_8008A140
/* 08B28C 8008A68C 24062AAB */   li    $a2, 10923
/* 08B290 8008A690 10400003 */  beqz  $v0, .L8008A6A0
/* 08B294 8008A694 02402025 */   move  $a0, $s2
/* 08B298 8008A698 0C01C870 */  jal   func_800721C0
/* 08B29C 8008A69C 02802825 */   move  $a1, $s4
.L8008A6A0:
/* 08B2A0 8008A6A0 8EA80000 */  lw    $t0, ($s5)
.L8008A6A4:
/* 08B2A4 8008A6A4 26310001 */  addiu $s1, $s1, 1
/* 08B2A8 8008A6A8 261000B8 */  addiu $s0, $s0, 0xb8
/* 08B2AC 8008A6AC 0228082A */  slt   $at, $s1, $t0
/* 08B2B0 8008A6B0 5420FFF1 */  bnel  $at, $zero, .L8008A678
/* 08B2B4 8008A6B4 867900A6 */   lh    $t9, 0xa6($s3)
.L8008A6B8:
/* 08B2B8 8008A6B8 8FBF002C */  lw    $ra, 0x2c($sp)
/* 08B2BC 8008A6BC 8FB00014 */  lw    $s0, 0x14($sp)
/* 08B2C0 8008A6C0 8FB10018 */  lw    $s1, 0x18($sp)
/* 08B2C4 8008A6C4 8FB2001C */  lw    $s2, 0x1c($sp)
/* 08B2C8 8008A6C8 8FB30020 */  lw    $s3, 0x20($sp)
/* 08B2CC 8008A6CC 8FB40024 */  lw    $s4, 0x24($sp)
/* 08B2D0 8008A6D0 8FB50028 */  lw    $s5, 0x28($sp)
/* 08B2D4 8008A6D4 03E00008 */  jr    $ra
/* 08B2D8 8008A6D8 27BD0030 */   addiu $sp, $sp, 0x30
