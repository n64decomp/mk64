glabel func_800A4A24
/* 0A5624 800A4A24 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0A5628 800A4A28 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0A562C 800A4A2C 8C8E000C */  lw    $t6, 0xc($a0)
/* 0A5630 800A4A30 8C890010 */  lw    $t1, 0x10($a0)
/* 0A5634 800A4A34 00802825 */  move  $a1, $a0
/* 0A5638 800A4A38 240F0140 */  li    $t7, 320
/* 0A563C 800A4A3C 3C04800E */  lui   $a0, %hi(D_800E7780) # $a0, 0x800e
/* 0A5640 800A4A40 01EE4023 */  subu  $t0, $t7, $t6
/* 0A5644 800A4A44 AFA80038 */  sw    $t0, 0x38($sp)
/* 0A5648 800A4A48 24847780 */  addiu $a0, %lo(D_800E7780) # addiu $a0, $a0, 0x7780
/* 0A564C 800A4A4C AFA50040 */  sw    $a1, 0x40($sp)
/* 0A5650 800A4A50 0C024C0D */  jal   get_string_width
/* 0A5654 800A4A54 AFA90034 */   sw    $t1, 0x34($sp)
/* 0A5658 800A4A58 24580008 */  addiu $t8, $v0, 8
/* 0A565C 800A4A5C 44982000 */  mtc1  $t8, $f4
/* 0A5660 800A4A60 3C01800F */  lui   $at, %hi(D_800F1DCC) # $at, 0x800f
/* 0A5664 800A4A64 C4201DCC */  lwc1  $f0, %lo(D_800F1DCC)($at)
/* 0A5668 800A4A68 468021A0 */  cvt.s.w $f6, $f4
/* 0A566C 800A4A6C 8FA90034 */  lw    $t1, 0x34($sp)
/* 0A5670 800A4A70 8FA80038 */  lw    $t0, 0x38($sp)
/* 0A5674 800A4A74 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 0A5678 800A4A78 240F0064 */  li    $t7, 100
/* 0A567C 800A4A7C 252D0004 */  addiu $t5, $t1, 4
/* 0A5680 800A4A80 46003202 */  mul.s $f8, $f6, $f0
/* 0A5684 800A4A84 AFAD0010 */  sw    $t5, 0x10($sp)
/* 0A5688 800A4A88 AFAF0020 */  sw    $t7, 0x20($sp)
/* 0A568C 800A4A8C 8C840298 */  lw    $a0, %lo(gDisplayListHead)($a0)
/* 0A5690 800A4A90 AFA00014 */  sw    $zero, 0x14($sp)
/* 0A5694 800A4A94 AFA00018 */  sw    $zero, 0x18($sp)
/* 0A5698 800A4A98 AFA0001C */  sw    $zero, 0x1c($sp)
/* 0A569C 800A4A9C 4600428D */  trunc.w.s $f10, $f8
/* 0A56A0 800A4AA0 44035000 */  mfc1  $v1, $f10
/* 0A56A4 800A4AA4 00000000 */  nop   
/* 0A56A8 800A4AA8 04610003 */  bgez  $v1, .L800A4AB8
/* 0A56AC 800A4AAC 00035043 */   sra   $t2, $v1, 1
/* 0A56B0 800A4AB0 24610001 */  addiu $at, $v1, 1
/* 0A56B4 800A4AB4 00015043 */  sra   $t2, $at, 1
.L800A4AB8:
/* 0A56B8 800A4AB8 3C0141C0 */  li    $at, 0x41C00000 # 24.000000
/* 0A56BC 800A4ABC 44818000 */  mtc1  $at, $f16
/* 0A56C0 800A4AC0 01401825 */  move  $v1, $t2
/* 0A56C4 800A4AC4 010A2823 */  subu  $a1, $t0, $t2
/* 0A56C8 800A4AC8 46008482 */  mul.s $f18, $f16, $f0
/* 0A56CC 800A4ACC 01483821 */  addu  $a3, $t2, $t0
/* 0A56D0 800A4AD0 4600910D */  trunc.w.s $f4, $f18
/* 0A56D4 800A4AD4 440C2000 */  mfc1  $t4, $f4
/* 0A56D8 800A4AD8 00000000 */  nop   
/* 0A56DC 800A4ADC 012C3023 */  subu  $a2, $t1, $t4
/* 0A56E0 800A4AE0 0C02637E */  jal   draw_box
/* 0A56E4 800A4AE4 24C60004 */   addiu $a2, $a2, 4
/* 0A56E8 800A4AE8 3C018015 */  lui   $at, %hi(gDisplayListHead) # $at, 0x8015
/* 0A56EC 800A4AEC AC220298 */  sw    $v0, %lo(gDisplayListHead)($at)
/* 0A56F0 800A4AF0 0C024C36 */  jal   set_text_color
/* 0A56F4 800A4AF4 24040004 */   li    $a0, 4
/* 0A56F8 800A4AF8 8FA20040 */  lw    $v0, 0x40($sp)
/* 0A56FC 800A4AFC 3C01800F */  lui   $at, %hi(D_800F1DD0) # $at, 0x800f
/* 0A5700 800A4B00 C4201DD0 */  lwc1  $f0, %lo(D_800F1DD0)($at)
/* 0A5704 800A4B04 8C44000C */  lw    $a0, 0xc($v0)
/* 0A5708 800A4B08 3C06800E */  lui   $a2, %hi(D_800E7780) # $a2, 0x800e
/* 0A570C 800A4B0C 8C450010 */  lw    $a1, 0x10($v0)
/* 0A5710 800A4B10 24C67780 */  addiu $a2, %lo(D_800E7780) # addiu $a2, $a2, 0x7780
/* 0A5714 800A4B14 00003825 */  move  $a3, $zero
/* 0A5718 800A4B18 E7A00014 */  swc1  $f0, 0x14($sp)
/* 0A571C 800A4B1C E7A00010 */  swc1  $f0, 0x10($sp)
/* 0A5720 800A4B20 0C024DBB */  jal   draw_text
/* 0A5724 800A4B24 2484FFFD */   addiu $a0, $a0, -3
/* 0A5728 800A4B28 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0A572C 800A4B2C 27BD0040 */  addiu $sp, $sp, 0x40
/* 0A5730 800A4B30 03E00008 */  jr    $ra
/* 0A5734 800A4B34 00000000 */   nop   
