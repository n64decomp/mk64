glabel func_802A39E0
/* 10CFF0 802A39E0 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 10CFF4 802A39E4 AFB1000C */  sw    $s1, 0xc($sp)
/* 10CFF8 802A39E8 AFB00008 */  sw    $s0, 8($sp)
/* 10CFFC 802A39EC 8483002C */  lh    $v1, 0x2c($a0)
/* 10D000 802A39F0 8486002E */  lh    $a2, 0x2e($a0)
/* 10D004 802A39F4 84820030 */  lh    $v0, 0x30($a0)
/* 10D008 802A39F8 04610003 */  bgez  $v1, .L802A3A08
/* 10D00C 802A39FC 00037043 */   sra   $t6, $v1, 1
/* 10D010 802A3A00 24610001 */  addiu $at, $v1, 1
/* 10D014 802A3A04 00017043 */  sra   $t6, $at, 1
.L802A3A08:
/* 10D018 802A3A08 84850032 */  lh    $a1, 0x32($a0)
/* 10D01C 802A3A0C 01C01825 */  move  $v1, $t6
/* 10D020 802A3A10 004E8023 */  subu  $s0, $v0, $t6
/* 10D024 802A3A14 04C10003 */  bgez  $a2, .L802A3A24
/* 10D028 802A3A18 00067843 */   sra   $t7, $a2, 1
/* 10D02C 802A3A1C 24C10001 */  addiu $at, $a2, 1
/* 10D030 802A3A20 00017843 */  sra   $t7, $at, 1
.L802A3A24:
/* 10D034 802A3A24 00435821 */  addu  $t3, $v0, $v1
/* 10D038 802A3A28 00AF8823 */  subu  $s1, $a1, $t7
/* 10D03C 802A3A2C 06010002 */  bgez  $s0, .L802A3A38
/* 10D040 802A3A30 00AF6021 */   addu  $t4, $a1, $t7
/* 10D044 802A3A34 00008025 */  move  $s0, $zero
.L802A3A38:
/* 10D048 802A3A38 06210002 */  bgez  $s1, .L802A3A44
/* 10D04C 802A3A3C 29610141 */   slti  $at, $t3, 0x141
/* 10D050 802A3A40 00008825 */  move  $s1, $zero
.L802A3A44:
/* 10D054 802A3A44 14200002 */  bnez  $at, .L802A3A50
/* 10D058 802A3A48 3C038015 */   lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 10D05C 802A3A4C 240B0140 */  li    $t3, 320
.L802A3A50:
/* 10D060 802A3A50 298100F1 */  slti  $at, $t4, 0xf1
/* 10D064 802A3A54 14200002 */  bnez  $at, .L802A3A60
/* 10D068 802A3A58 24630298 */   addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 10D06C 802A3A5C 240C00F0 */  li    $t4, 240
.L802A3A60:
/* 10D070 802A3A60 020B082A */  slt   $at, $s0, $t3
/* 10D074 802A3A64 14200002 */  bnez  $at, .L802A3A70
/* 10D078 802A3A68 3C19E700 */   lui   $t9, 0xe700
/* 10D07C 802A3A6C 260B0002 */  addiu $t3, $s0, 2
.L802A3A70:
/* 10D080 802A3A70 022C082A */  slt   $at, $s1, $t4
/* 10D084 802A3A74 14200002 */  bnez  $at, .L802A3A80
/* 10D088 802A3A78 3C0FBA00 */   lui   $t7, (0xBA001402 >> 16) # lui $t7, 0xba00
/* 10D08C 802A3A7C 262C0002 */  addiu $t4, $s1, 2
.L802A3A80:
/* 10D090 802A3A80 8C620000 */  lw    $v0, ($v1)
/* 10D094 802A3A84 35EF1402 */  ori   $t7, (0xBA001402 & 0xFFFF) # ori $t7, $t7, 0x1402
/* 10D098 802A3A88 44902000 */  mtc1  $s0, $f4
/* 10D09C 802A3A8C 24580008 */  addiu $t8, $v0, 8
/* 10D0A0 802A3A90 AC780000 */  sw    $t8, ($v1)
/* 10D0A4 802A3A94 AC400004 */  sw    $zero, 4($v0)
/* 10D0A8 802A3A98 AC590000 */  sw    $t9, ($v0)
/* 10D0AC 802A3A9C 8C620000 */  lw    $v0, ($v1)
/* 10D0B0 802A3AA0 3C180030 */  lui   $t8, 0x30
/* 10D0B4 802A3AA4 468021A0 */  cvt.s.w $f6, $f4
/* 10D0B8 802A3AA8 244E0008 */  addiu $t6, $v0, 8
/* 10D0BC 802A3AAC AC6E0000 */  sw    $t6, ($v1)
/* 10D0C0 802A3AB0 AC580004 */  sw    $t8, 4($v0)
/* 10D0C4 802A3AB4 AC4F0000 */  sw    $t7, ($v0)
/* 10D0C8 802A3AB8 8C620000 */  lw    $v0, ($v1)
/* 10D0CC 802A3ABC 3C0EFE00 */  lui   $t6, 0xfe00
/* 10D0D0 802A3AC0 3C0F8015 */  lui   $t7, %hi(D_801502B4) # $t7, 0x8015
/* 10D0D4 802A3AC4 24590008 */  addiu $t9, $v0, 8
/* 10D0D8 802A3AC8 AC790000 */  sw    $t9, ($v1)
/* 10D0DC 802A3ACC AC4E0000 */  sw    $t6, ($v0)
/* 10D0E0 802A3AD0 8DEF02B4 */  lw    $t7, %lo(D_801502B4)($t7)
/* 10D0E4 802A3AD4 3C19FF10 */  lui   $t9, (0xFF10013F >> 16) # lui $t9, 0xff10
/* 10D0E8 802A3AD8 3739013F */  ori   $t9, (0xFF10013F & 0xFFFF) # ori $t9, $t9, 0x13f
/* 10D0EC 802A3ADC AC4F0004 */  sw    $t7, 4($v0)
/* 10D0F0 802A3AE0 8C620000 */  lw    $v0, ($v1)
/* 10D0F4 802A3AE4 3C0E8015 */  lui   $t6, %hi(D_801502B4) # $t6, 0x8015
/* 10D0F8 802A3AE8 44918000 */  mtc1  $s1, $f16
/* 10D0FC 802A3AEC 24580008 */  addiu $t8, $v0, 8
/* 10D100 802A3AF0 AC780000 */  sw    $t8, ($v1)
/* 10D104 802A3AF4 AC590000 */  sw    $t9, ($v0)
/* 10D108 802A3AF8 8DCE02B4 */  lw    $t6, %lo(D_801502B4)($t6)
/* 10D10C 802A3AFC 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 10D110 802A3B00 44810000 */  mtc1  $at, $f0
/* 10D114 802A3B04 AC4E0004 */  sw    $t6, 4($v0)
/* 10D118 802A3B08 8C620000 */  lw    $v0, ($v1)
/* 10D11C 802A3B0C 468084A0 */  cvt.s.w $f18, $f16
/* 10D120 802A3B10 46003202 */  mul.s $f8, $f6, $f0
/* 10D124 802A3B14 244F0008 */  addiu $t7, $v0, 8
/* 10D128 802A3B18 AC6F0000 */  sw    $t7, ($v1)
/* 10D12C 802A3B1C 3C19FFFC */  lui   $t9, (0xFFFCFFFC >> 16) # lui $t9, 0xfffc
/* 10D130 802A3B20 3739FFFC */  ori   $t9, (0xFFFCFFFC & 0xFFFF) # ori $t9, $t9, 0xfffc
/* 10D134 802A3B24 3C18F700 */  lui   $t8, 0xf700
/* 10D138 802A3B28 AC580000 */  sw    $t8, ($v0)
/* 10D13C 802A3B2C AC590004 */  sw    $t9, 4($v0)
/* 10D140 802A3B30 8C620000 */  lw    $v0, ($v1)
/* 10D144 802A3B34 46009102 */  mul.s $f4, $f18, $f0
/* 10D148 802A3B38 4600428D */  trunc.w.s $f10, $f8
/* 10D14C 802A3B3C 244E0008 */  addiu $t6, $v0, 8
/* 10D150 802A3B40 AC6E0000 */  sw    $t6, ($v1)
/* 10D154 802A3B44 3C0FE700 */  lui   $t7, 0xe700
/* 10D158 802A3B48 AC4F0000 */  sw    $t7, ($v0)
/* 10D15C 802A3B4C AC400004 */  sw    $zero, 4($v0)
/* 10D160 802A3B50 8C620000 */  lw    $v0, ($v1)
/* 10D164 802A3B54 448B4000 */  mtc1  $t3, $f8
/* 10D168 802A3B58 440E5000 */  mfc1  $t6, $f10
/* 10D16C 802A3B5C 4600218D */  trunc.w.s $f6, $f4
/* 10D170 802A3B60 24580008 */  addiu $t8, $v0, 8
/* 10D174 802A3B64 448C2000 */  mtc1  $t4, $f4
/* 10D178 802A3B68 468042A0 */  cvt.s.w $f10, $f8
/* 10D17C 802A3B6C AC780000 */  sw    $t8, ($v1)
/* 10D180 802A3B70 31CF0FFF */  andi  $t7, $t6, 0xfff
/* 10D184 802A3B74 000FC300 */  sll   $t8, $t7, 0xc
/* 10D188 802A3B78 440F3000 */  mfc1  $t7, $f6
/* 10D18C 802A3B7C 468021A0 */  cvt.s.w $f6, $f4
/* 10D190 802A3B80 46005402 */  mul.s $f16, $f10, $f0
/* 10D194 802A3B84 3C01ED00 */  lui   $at, 0xed00
/* 10D198 802A3B88 0301C825 */  or    $t9, $t8, $at
/* 10D19C 802A3B8C 31F80FFF */  andi  $t8, $t7, 0xfff
/* 10D1A0 802A3B90 03387025 */  or    $t6, $t9, $t8
/* 10D1A4 802A3B94 46003202 */  mul.s $f8, $f6, $f0
/* 10D1A8 802A3B98 AC4E0000 */  sw    $t6, ($v0)
/* 10D1AC 802A3B9C 3C01F600 */  lui   $at, 0xf600
/* 10D1B0 802A3BA0 4600848D */  trunc.w.s $f18, $f16
/* 10D1B4 802A3BA4 4600428D */  trunc.w.s $f10, $f8
/* 10D1B8 802A3BA8 44199000 */  mfc1  $t9, $f18
/* 10D1BC 802A3BAC 00000000 */  nop   
/* 10D1C0 802A3BB0 33380FFF */  andi  $t8, $t9, 0xfff
/* 10D1C4 802A3BB4 44195000 */  mfc1  $t9, $f10
/* 10D1C8 802A3BB8 00187300 */  sll   $t6, $t8, 0xc
/* 10D1CC 802A3BBC 33380FFF */  andi  $t8, $t9, 0xfff
/* 10D1D0 802A3BC0 01D87825 */  or    $t7, $t6, $t8
/* 10D1D4 802A3BC4 AC4F0004 */  sw    $t7, 4($v0)
/* 10D1D8 802A3BC8 8C620000 */  lw    $v0, ($v1)
/* 10D1DC 802A3BCC 256EFFFF */  addiu $t6, $t3, -1
/* 10D1E0 802A3BD0 31D803FF */  andi  $t8, $t6, 0x3ff
/* 10D1E4 802A3BD4 00187B80 */  sll   $t7, $t8, 0xe
/* 10D1E8 802A3BD8 24590008 */  addiu $t9, $v0, 8
/* 10D1EC 802A3BDC AC790000 */  sw    $t9, ($v1)
/* 10D1F0 802A3BE0 258EFFFF */  addiu $t6, $t4, -1
/* 10D1F4 802A3BE4 31D803FF */  andi  $t8, $t6, 0x3ff
/* 10D1F8 802A3BE8 01E1C825 */  or    $t9, $t7, $at
/* 10D1FC 802A3BEC 00187880 */  sll   $t7, $t8, 2
/* 10D200 802A3BF0 032F7025 */  or    $t6, $t9, $t7
/* 10D204 802A3BF4 322F03FF */  andi  $t7, $s1, 0x3ff
/* 10D208 802A3BF8 321803FF */  andi  $t8, $s0, 0x3ff
/* 10D20C 802A3BFC AC4E0000 */  sw    $t6, ($v0)
/* 10D210 802A3C00 000F7080 */  sll   $t6, $t7, 2
/* 10D214 802A3C04 0018CB80 */  sll   $t9, $t8, 0xe
/* 10D218 802A3C08 032EC025 */  or    $t8, $t9, $t6
/* 10D21C 802A3C0C AC580004 */  sw    $t8, 4($v0)
/* 10D220 802A3C10 8C620000 */  lw    $v0, ($v1)
/* 10D224 802A3C14 3C19E700 */  lui   $t9, 0xe700
/* 10D228 802A3C18 3C18FF10 */  lui   $t8, (0xFF10013F >> 16) # lui $t8, 0xff10
/* 10D22C 802A3C1C 244F0008 */  addiu $t7, $v0, 8
/* 10D230 802A3C20 AC6F0000 */  sw    $t7, ($v1)
/* 10D234 802A3C24 AC400004 */  sw    $zero, 4($v0)
/* 10D238 802A3C28 AC590000 */  sw    $t9, ($v0)
/* 10D23C 802A3C2C 8C620000 */  lw    $v0, ($v1)
/* 10D240 802A3C30 3718013F */  ori   $t8, (0xFF10013F & 0xFFFF) # ori $t8, $t8, 0x13f
/* 10D244 802A3C34 3C0F800E */  lui   $t7, %hi(sRenderingFramebuffer) # $t7, 0x800e
/* 10D248 802A3C38 244E0008 */  addiu $t6, $v0, 8
/* 10D24C 802A3C3C AC6E0000 */  sw    $t6, ($v1)
/* 10D250 802A3C40 AC580000 */  sw    $t8, ($v0)
/* 10D254 802A3C44 95EFC560 */  lhu   $t7, %lo(sRenderingFramebuffer)($t7)
/* 10D258 802A3C48 3C0E8015 */  lui   $t6, %hi(gPhysicalFramebuffers)
/* 10D25C 802A3C4C 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 10D260 802A3C50 000FC880 */  sll   $t9, $t7, 2
/* 10D264 802A3C54 01D97021 */  addu  $t6, $t6, $t9
/* 10D268 802A3C58 8DCE02A8 */  lw    $t6, %lo(gPhysicalFramebuffers)($t6)
/* 10D26C 802A3C5C 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 10D270 802A3C60 3C19BA00 */  lui   $t9, (0xBA001402 >> 16) # lui $t9, 0xba00
/* 10D274 802A3C64 01C1C024 */  and   $t8, $t6, $at
/* 10D278 802A3C68 AC580004 */  sw    $t8, 4($v0)
/* 10D27C 802A3C6C 8C620000 */  lw    $v0, ($v1)
/* 10D280 802A3C70 37391402 */  ori   $t9, (0xBA001402 & 0xFFFF) # ori $t9, $t9, 0x1402
/* 10D284 802A3C74 3C18B900 */  lui   $t8, (0xB9000201 >> 16) # lui $t8, 0xb900
/* 10D288 802A3C78 244F0008 */  addiu $t7, $v0, 8
/* 10D28C 802A3C7C AC6F0000 */  sw    $t7, ($v1)
/* 10D290 802A3C80 AC400004 */  sw    $zero, 4($v0)
/* 10D294 802A3C84 AC590000 */  sw    $t9, ($v0)
/* 10D298 802A3C88 8C620000 */  lw    $v0, ($v1)
/* 10D29C 802A3C8C 37180201 */  ori   $t8, (0xB9000201 & 0xFFFF) # ori $t8, $t8, 0x201
/* 10D2A0 802A3C90 244E0008 */  addiu $t6, $v0, 8
/* 10D2A4 802A3C94 AC6E0000 */  sw    $t6, ($v1)
/* 10D2A8 802A3C98 AC400004 */  sw    $zero, 4($v0)
/* 10D2AC 802A3C9C AC580000 */  sw    $t8, ($v0)
/* 10D2B0 802A3CA0 8FB1000C */  lw    $s1, 0xc($sp)
/* 10D2B4 802A3CA4 8FB00008 */  lw    $s0, 8($sp)
/* 10D2B8 802A3CA8 03E00008 */  jr    $ra
/* 10D2BC 802A3CAC 27BD0010 */   addiu $sp, $sp, 0x10
