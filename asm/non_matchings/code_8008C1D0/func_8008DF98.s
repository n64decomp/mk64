glabel func_8008DF98
/* 08EB98 8008DF98 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 08EB9C 8008DF9C AFB10018 */  sw    $s1, 0x18($sp)
/* 08EBA0 8008DFA0 00058E00 */  sll   $s1, $a1, 0x18
/* 08EBA4 8008DFA4 00117603 */  sra   $t6, $s1, 0x18
/* 08EBA8 8008DFA8 AFA50024 */  sw    $a1, 0x24($sp)
/* 08EBAC 8008DFAC 000E2E00 */  sll   $a1, $t6, 0x18
/* 08EBB0 8008DFB0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 08EBB4 8008DFB4 AFB00014 */  sw    $s0, 0x14($sp)
/* 08EBB8 8008DFB8 00057E03 */  sra   $t7, $a1, 0x18
/* 08EBBC 8008DFBC 00808025 */  move  $s0, $a0
/* 08EBC0 8008DFC0 01C08825 */  move  $s1, $t6
/* 08EBC4 8008DFC4 0C0230D5 */  jal   func_8008C354
/* 08EBC8 8008DFC8 01E02825 */   move  $a1, $t7
/* 08EBCC 8008DFCC 8E18000C */  lw    $t8, 0xc($s0)
/* 08EBD0 8008DFD0 8E0800BC */  lw    $t0, 0xbc($s0)
/* 08EBD4 8008DFD4 2401BFFF */  li    $at, -16385
/* 08EBD8 8008DFD8 0301C824 */  and   $t9, $t8, $at
/* 08EBDC 8008DFDC 3C014002 */  lui   $at, 0x4002
/* 08EBE0 8008DFE0 01014825 */  or    $t1, $t0, $at
/* 08EBE4 8008DFE4 2401FFEF */  li    $at, -17
/* 08EBE8 8008DFE8 01215824 */  and   $t3, $t1, $at
/* 08EBEC 8008DFEC C604008C */  lwc1  $f4, 0x8c($s0)
/* 08EBF0 8008DFF0 AE0900BC */  sw    $t1, 0xbc($s0)
/* 08EBF4 8008DFF4 AE19000C */  sw    $t9, 0xc($s0)
/* 08EBF8 8008DFF8 AE0B00BC */  sw    $t3, 0xbc($s0)
/* 08EBFC 8008DFFC 3C01800F */  lui   $at, %hi(D_800EF588)
/* 08EC00 8008E000 D428F588 */  ldc1  $f8, %lo(D_800EF588)($at)
/* 08EC04 8008E004 460021A1 */  cvt.d.s $f6, $f4
/* 08EC08 8008E008 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 08EC0C 8008E00C 46283282 */  mul.d $f10, $f6, $f8
/* 08EC10 8008E010 44819000 */  mtc1  $at, $f18
/* 08EC14 8008E014 A60000B0 */  sh    $zero, 0xb0($s0)
/* 08EC18 8008E018 3C01800E */  lui   $at, %hi(gCourseTimer) # $at, 0x800e
/* 08EC1C 8008E01C E6120224 */  swc1  $f18, 0x224($s0)
/* 08EC20 8008E020 00117080 */  sll   $t6, $s1, 2
/* 08EC24 8008E024 3C198016 */  lui   $t9, %hi(D_80165190) # $t9, 0x8016
/* 08EC28 8008E028 24180002 */  li    $t8, 2
/* 08EC2C 8008E02C 46205420 */  cvt.s.d $f16, $f10
/* 08EC30 8008E030 27395190 */  addiu $t9, %lo(D_80165190) # addiu $t9, $t9, 0x5190
/* 08EC34 8008E034 00111840 */  sll   $v1, $s1, 1
/* 08EC38 8008E038 24050001 */  li    $a1, 1
/* 08EC3C 8008E03C E610008C */  swc1  $f16, 0x8c($s0)
/* 08EC40 8008E040 C424C598 */  lwc1  $f4, %lo(gCourseTimer)($at)
/* 08EC44 8008E044 3C018019 */  lui   $at, %hi(D_8018D930) # 0x8019
/* 08EC48 8008E048 002E0821 */  addu  $at, $at, $t6
/* 08EC4C 8008E04C 4600218D */  trunc.w.s $f6, $f4
/* 08EC50 8008E050 00791021 */  addu  $v0, $v1, $t9
/* 08EC54 8008E054 440D3000 */  mfc1  $t5, $f6
/* 08EC58 8008E058 00000000 */  nop   
/* 08EC5C 8008E05C AC2DD930 */  sw    $t5, %lo(D_8018D930)($at) # -0x26d0($at)
/* 08EC60 8008E060 860F002E */  lh    $t7, 0x2e($s0)
/* 08EC64 8008E064 A61800B2 */  sh    $t8, 0xb2($s0)
/* 08EC68 8008E068 A60000C0 */  sh    $zero, 0xc0($s0)
/* 08EC6C 8008E06C AE00007C */  sw    $zero, 0x7c($s0)
/* 08EC70 8008E070 A6000078 */  sh    $zero, 0x78($s0)
/* 08EC74 8008E074 A60F00AE */  sh    $t7, 0xae($s0)
/* 08EC78 8008E078 3C018019 */  lui   $at, %hi(D_8018D920) # 0x8019
/* 08EC7C 8008E07C A4450000 */  sh    $a1, ($v0)
/* 08EC80 8008E080 A4450010 */  sh    $a1, 0x10($v0)
/* 08EC84 8008E084 A4450020 */  sh    $a1, 0x20($v0)
/* 08EC88 8008E088 A4450030 */  sh    $a1, 0x30($v0)
/* 08EC8C 8008E08C 00230821 */  addu  $at, $at, $v1
/* 08EC90 8008E090 A420D920 */  sh    $zero, %lo(D_8018D920)($at) # -0x26e0($at)
/* 08EC94 8008E094 96040000 */  lhu   $a0, ($s0)
/* 08EC98 8008E098 24014000 */  li    $at, 16384
/* 08EC9C 8008E09C 02002825 */  move  $a1, $s0
/* 08ECA0 8008E0A0 30884000 */  andi  $t0, $a0, 0x4000
/* 08ECA4 8008E0A4 1501000C */  bne   $t0, $at, .L8008E0D8
/* 08ECA8 8008E0A8 30890100 */   andi  $t1, $a0, 0x100
/* 08ECAC 8008E0AC 24010100 */  li    $at, 256
/* 08ECB0 8008E0B0 11210009 */  beq   $t1, $at, .L8008E0D8
/* 08ECB4 8008E0B4 322400FF */   andi  $a0, $s1, 0xff
/* 08ECB8 8008E0B8 96050254 */  lhu   $a1, 0x254($s0)
/* 08ECBC 8008E0BC 3C012900 */  lui   $at, (0x29008003 >> 16) # lui $at, 0x2900
/* 08ECC0 8008E0C0 34218003 */  ori   $at, (0x29008003 & 0xFFFF) # ori $at, $at, 0x8003
/* 08ECC4 8008E0C4 00055100 */  sll   $t2, $a1, 4
/* 08ECC8 8008E0C8 0C03243D */  jal   func_800C90F4
/* 08ECCC 8008E0CC 01412821 */   addu  $a1, $t2, $at
/* 08ECD0 8008E0D0 10000003 */  b     .L8008E0E0
/* 08ECD4 8008E0D4 00000000 */   nop   
.L8008E0D8:
/* 08ECD8 8008E0D8 0C00263F */  jal   func_800098FC
/* 08ECDC 8008E0DC 02202025 */   move  $a0, $s1
.L8008E0E0:
/* 08ECE0 8008E0E0 3C0B800E */  lui   $t3, %hi(gModeSelection) # $t3, 0x800e
/* 08ECE4 8008E0E4 8D6BC53C */  lw    $t3, %lo(gModeSelection)($t3)
/* 08ECE8 8008E0E8 24010003 */  li    $at, 3
/* 08ECEC 8008E0EC 02002025 */  move  $a0, $s0
/* 08ECF0 8008E0F0 15610004 */  bne   $t3, $at, .L8008E104
/* 08ECF4 8008E0F4 00112E00 */   sll   $a1, $s1, 0x18
/* 08ECF8 8008E0F8 00056603 */  sra   $t4, $a1, 0x18
/* 08ECFC 8008E0FC 0C01AE2D */  jal   func_8006B8B4
/* 08ED00 8008E100 01802825 */   move  $a1, $t4
.L8008E104:
/* 08ED04 8008E104 8FBF001C */  lw    $ra, 0x1c($sp)
/* 08ED08 8008E108 8FB00014 */  lw    $s0, 0x14($sp)
/* 08ED0C 8008E10C 8FB10018 */  lw    $s1, 0x18($sp)
/* 08ED10 8008E110 03E00008 */  jr    $ra
/* 08ED14 8008E114 27BD0020 */   addiu $sp, $sp, 0x20
