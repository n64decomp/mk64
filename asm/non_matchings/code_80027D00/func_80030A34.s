glabel func_80030A34
/* 031634 80030A34 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 031638 80030A38 AFBF0014 */  sw    $ra, 0x14($sp)
/* 03163C 80030A3C 848200CA */  lh    $v0, 0xca($a0)
/* 031640 80030A40 24010002 */  li    $at, 2
/* 031644 80030A44 00802825 */  move  $a1, $a0
/* 031648 80030A48 304E0002 */  andi  $t6, $v0, 2
/* 03164C 80030A4C 11C10075 */  beq   $t6, $at, .L80030C24
/* 031650 80030A50 304F0008 */   andi  $t7, $v0, 8
/* 031654 80030A54 24010008 */  li    $at, 8
/* 031658 80030A58 11E10072 */  beq   $t7, $at, .L80030C24
/* 03165C 80030A5C 3C014190 */   li    $at, 0x41900000 # 18.000000
/* 031660 80030A60 44813000 */  mtc1  $at, $f6
/* 031664 80030A64 C4840094 */  lwc1  $f4, 0x94($a0)
/* 031668 80030A68 3C014358 */  li    $at, 0x43580000 # 216.000000
/* 03166C 80030A6C 44815000 */  mtc1  $at, $f10
/* 031670 80030A70 46062203 */  div.s $f8, $f4, $f6
/* 031674 80030A74 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 031678 80030A78 44819000 */  mtc1  $at, $f18
/* 03167C 80030A7C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 031680 80030A80 460A4402 */  mul.s $f16, $f8, $f10
/* 031684 80030A84 4610903E */  c.le.s $f18, $f16
/* 031688 80030A88 00000000 */  nop   
/* 03168C 80030A8C 45020030 */  bc1fl .L80030B50
/* 031690 80030A90 2404000A */   li    $a0, 10
/* 031694 80030A94 C4840DC0 */  lwc1  $f4, 0xdc0($a0)
/* 031698 80030A98 44813000 */  mtc1  $at, $f6
/* 03169C 80030A9C 00000000 */  nop   
/* 0316A0 80030AA0 4606203C */  c.lt.s $f4, $f6
/* 0316A4 80030AA4 00000000 */  nop   
/* 0316A8 80030AA8 45020029 */  bc1fl .L80030B50
/* 0316AC 80030AAC 2404000A */   li    $a0, 10
/* 0316B0 80030AB0 948200F8 */  lhu   $v0, 0xf8($a0)
/* 0316B4 80030AB4 24010001 */  li    $at, 1
/* 0316B8 80030AB8 2404000A */  li    $a0, 10
/* 0316BC 80030ABC 10410007 */  beq   $v0, $at, .L80030ADC
/* 0316C0 80030AC0 2401000E */   li    $at, 14
/* 0316C4 80030AC4 10410016 */  beq   $v0, $at, .L80030B20
/* 0316C8 80030AC8 24010010 */   li    $at, 16
/* 0316CC 80030ACC 10410014 */  beq   $v0, $at, .L80030B20
/* 0316D0 80030AD0 00000000 */   nop   
/* 0316D4 80030AD4 10000018 */  b     .L80030B38
/* 0316D8 80030AD8 3C01800F */   lui   $at, %hi(D_800ED9C8) # 0x800f
.L80030ADC:
/* 0316DC 80030ADC 0C0ADF8D */  jal   random_int
/* 0316E0 80030AE0 AFA50018 */   sw    $a1, 0x18($sp)
/* 0316E4 80030AE4 24010008 */  li    $at, 8
/* 0316E8 80030AE8 10410007 */  beq   $v0, $at, .L80030B08
/* 0316EC 80030AEC 8FA50018 */   lw    $a1, 0x18($sp)
/* 0316F0 80030AF0 3C01800F */  lui   $at, %hi(D_800ED9B8) # $at, 0x800f
/* 0316F4 80030AF4 C420D9B8 */  lwc1  $f0, %lo(D_800ED9B8)($at)
/* 0316F8 80030AF8 3C01800F */  lui   $at, %hi(D_800ED9BC) # $at, 0x800f
/* 0316FC 80030AFC 44806000 */  mtc1  $zero, $f12
/* 031700 80030B00 10000023 */  b     .L80030B90
/* 031704 80030B04 C422D9BC */   lwc1  $f2, %lo(D_800ED9BC)($at)
.L80030B08:
/* 031708 80030B08 44806000 */  mtc1  $zero, $f12
/* 03170C 80030B0C A4A0007A */  sh    $zero, 0x7a($a1)
/* 031710 80030B10 E4AC0108 */  swc1  $f12, 0x108($a1)
/* 031714 80030B14 46006006 */  mov.s $f0, $f12
/* 031718 80030B18 1000001D */  b     .L80030B90
/* 03171C 80030B1C 46006086 */   mov.s $f2, $f12
.L80030B20:
/* 031720 80030B20 3C01800F */  lui   $at, %hi(D_800ED9C0) # $at, 0x800f
/* 031724 80030B24 C420D9C0 */  lwc1  $f0, %lo(D_800ED9C0)($at)
/* 031728 80030B28 3C01800F */  lui   $at, %hi(D_800ED9C4) # $at, 0x800f
/* 03172C 80030B2C 44806000 */  mtc1  $zero, $f12
/* 031730 80030B30 10000017 */  b     .L80030B90
/* 031734 80030B34 C422D9C4 */   lwc1  $f2, %lo(D_800ED9C4)($at)
.L80030B38:
/* 031738 80030B38 C420D9C8 */  lwc1  $f0, %lo(D_800ED9C8)($at)
/* 03173C 80030B3C 3C01800F */  lui   $at, %hi(D_800ED9CC) # $at, 0x800f
/* 031740 80030B40 44806000 */  mtc1  $zero, $f12
/* 031744 80030B44 10000012 */  b     .L80030B90
/* 031748 80030B48 C422D9CC */   lwc1  $f2, %lo(D_800ED9CC)($at)
/* 03174C 80030B4C 2404000A */  li    $a0, 10
.L80030B50:
/* 031750 80030B50 0C0ADF8D */  jal   random_int
/* 031754 80030B54 AFA50018 */   sw    $a1, 0x18($sp)
/* 031758 80030B58 24010008 */  li    $at, 8
/* 03175C 80030B5C 10410007 */  beq   $v0, $at, .L80030B7C
/* 031760 80030B60 8FA50018 */   lw    $a1, 0x18($sp)
/* 031764 80030B64 3C01800F */  lui   $at, %hi(D_800ED9D0) # $at, 0x800f
/* 031768 80030B68 C420D9D0 */  lwc1  $f0, %lo(D_800ED9D0)($at)
/* 03176C 80030B6C 3C01800F */  lui   $at, %hi(D_800ED9D4) # $at, 0x800f
/* 031770 80030B70 44806000 */  mtc1  $zero, $f12
/* 031774 80030B74 10000006 */  b     .L80030B90
/* 031778 80030B78 C422D9D4 */   lwc1  $f2, %lo(D_800ED9D4)($at)
.L80030B7C:
/* 03177C 80030B7C 44806000 */  mtc1  $zero, $f12
/* 031780 80030B80 A4A0007A */  sh    $zero, 0x7a($a1)
/* 031784 80030B84 E4AC0108 */  swc1  $f12, 0x108($a1)
/* 031788 80030B88 46006006 */  mov.s $f0, $f12
/* 03178C 80030B8C 46006086 */  mov.s $f2, $f12
.L80030B90:
/* 031790 80030B90 84B8007A */  lh    $t8, 0x7a($a1)
/* 031794 80030B94 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 031798 80030B98 44814800 */  mtc1  $at, $f9
/* 03179C 80030B9C 27190001 */  addiu $t9, $t8, 1
/* 0317A0 80030BA0 A4B9007A */  sh    $t9, 0x7a($a1)
/* 0317A4 80030BA4 84A2007A */  lh    $v0, 0x7a($a1)
/* 0317A8 80030BA8 44804000 */  mtc1  $zero, $f8
/* 0317AC 80030BAC 460012A1 */  cvt.d.s $f10, $f2
/* 0317B0 80030BB0 00420019 */  multu $v0, $v0
/* 0317B4 80030BB4 462A4402 */  mul.d $f16, $f8, $f10
/* 0317B8 80030BB8 44824000 */  mtc1  $v0, $f8
/* 0317BC 80030BBC 00000000 */  nop   
/* 0317C0 80030BC0 468042A0 */  cvt.s.w $f10, $f8
/* 0317C4 80030BC4 00004012 */  mflo  $t0
/* 0317C8 80030BC8 44889000 */  mtc1  $t0, $f18
/* 0317CC 80030BCC 00000000 */  nop   
/* 0317D0 80030BD0 46809121 */  cvt.d.w $f4, $f18
/* 0317D4 80030BD4 46248182 */  mul.d $f6, $f16, $f4
/* 0317D8 80030BD8 00000000 */  nop   
/* 0317DC 80030BDC 46005482 */  mul.s $f18, $f10, $f0
/* 0317E0 80030BE0 46009421 */  cvt.d.s $f16, $f18
/* 0317E4 80030BE4 46268101 */  sub.d $f4, $f16, $f6
/* 0317E8 80030BE8 46202220 */  cvt.s.d $f8, $f4
/* 0317EC 80030BEC 10400007 */  beqz  $v0, .L80030C0C
/* 0317F0 80030BF0 E4A80108 */   swc1  $f8, 0x108($a1)
/* 0317F4 80030BF4 C4AA0108 */  lwc1  $f10, 0x108($a1)
/* 0317F8 80030BF8 460C503C */  c.lt.s $f10, $f12
/* 0317FC 80030BFC 00000000 */  nop   
/* 031800 80030C00 45020003 */  bc1fl .L80030C10
/* 031804 80030C04 C4B20108 */   lwc1  $f18, 0x108($a1)
/* 031808 80030C08 A4A0007A */  sh    $zero, 0x7a($a1)
.L80030C0C:
/* 03180C 80030C0C C4B20108 */  lwc1  $f18, 0x108($a1)
.L80030C10:
/* 031810 80030C10 460C903E */  c.le.s $f18, $f12
/* 031814 80030C14 00000000 */  nop   
/* 031818 80030C18 45020003 */  bc1fl .L80030C28
/* 03181C 80030C1C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 031820 80030C20 E4AC0108 */  swc1  $f12, 0x108($a1)
.L80030C24:
/* 031824 80030C24 8FBF0014 */  lw    $ra, 0x14($sp)
.L80030C28:
/* 031828 80030C28 27BD0018 */  addiu $sp, $sp, 0x18
/* 03182C 80030C2C 03E00008 */  jr    $ra
/* 031830 80030C30 00000000 */   nop   
