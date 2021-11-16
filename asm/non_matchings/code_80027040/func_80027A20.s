glabel func_80027A20
/* 028620 80027A20 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 028624 80027A24 3C02800E */  lui   $v0, %hi(D_800DC52C) # $v0, 0x800e
/* 028628 80027A28 8C42C52C */  lw    $v0, %lo(D_800DC52C)($v0)
/* 02862C 80027A2C AFA60038 */  sw    $a2, 0x38($sp)
/* 028630 80027A30 AFA7003C */  sw    $a3, 0x3c($sp)
/* 028634 80027A34 00067600 */  sll   $t6, $a2, 0x18
/* 028638 80027A38 0007C600 */  sll   $t8, $a3, 0x18
/* 02863C 80027A3C 00183E03 */  sra   $a3, $t8, 0x18
/* 028640 80027A40 000E3603 */  sra   $a2, $t6, 0x18
/* 028644 80027A44 AFBF002C */  sw    $ra, 0x2c($sp)
/* 028648 80027A48 AFB00028 */  sw    $s0, 0x28($sp)
/* 02864C 80027A4C AFA40030 */  sw    $a0, 0x30($sp)
/* 028650 80027A50 1040000A */  beqz  $v0, .L80027A7C
/* 028654 80027A54 AFA50034 */   sw    $a1, 0x34($sp)
/* 028658 80027A58 24010001 */  li    $at, 1
/* 02865C 80027A5C 10410007 */  beq   $v0, $at, .L80027A7C
/* 028660 80027A60 24010002 */   li    $at, 2
/* 028664 80027A64 10410005 */  beq   $v0, $at, .L80027A7C
/* 028668 80027A68 24010003 */   li    $at, 3
/* 02866C 80027A6C 1041002E */  beq   $v0, $at, .L80027B28
/* 028670 80027A70 00077380 */   sll   $t6, $a3, 0xe
/* 028674 80027A74 10000055 */  b     .L80027BCC
/* 028678 80027A78 8FBF002C */   lw    $ra, 0x2c($sp)
.L80027A7C:
/* 02867C 80027A7C 83AC0037 */  lb    $t4, 0x37($sp)
/* 028680 80027A80 00074380 */  sll   $t0, $a3, 0xe
/* 028684 80027A84 00064B00 */  sll   $t1, $a2, 0xc
/* 028688 80027A88 01095021 */  addu  $t2, $t0, $t1
/* 02868C 80027A8C 3C0F802F */  lui   $t7, %hi(D_802F1F80) # $t7, 0x802f
/* 028690 80027A90 000C6A40 */  sll   $t5, $t4, 9
/* 028694 80027A94 014D7021 */  addu  $t6, $t2, $t5
/* 028698 80027A98 25EF1F80 */  addiu $t7, %lo(D_802F1F80) # addiu $t7, $t7, 0x1f80
/* 02869C 80027A9C 01CF8021 */  addu  $s0, $t6, $t7
/* 0286A0 80027AA0 02002025 */  move  $a0, $s0
/* 0286A4 80027AA4 0C0336E0 */  jal   osInvalDCache
/* 0286A8 80027AA8 24050200 */   li    $a1, 512
/* 0286AC 80027AAC 8FB80030 */  lw    $t8, 0x30($sp)
/* 0286B0 80027AB0 3C09800E */  lui   $t1, %hi(gKartPalettes)
/* 0286B4 80027AB4 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 0286B8 80027AB8 97190254 */  lhu   $t9, 0x254($t8)
/* 0286BC 80027ABC 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0286C0 80027AC0 3C0C0014 */  lui   $t4, %hi(_kart_texturesSegmentRomStart) # $t4, 0x14
/* 0286C4 80027AC4 00194080 */  sll   $t0, $t9, 2
/* 0286C8 80027AC8 01284821 */  addu  $t1, $t1, $t0
/* 0286CC 80027ACC 8D292340 */  lw    $t1, %lo(gKartPalettes)($t1)
/* 0286D0 80027AD0 3C0D8015 */  lui   $t5, %hi(gDmaMesgQueue) # $t5, 0x8015
/* 0286D4 80027AD4 25ADEF58 */  addiu $t5, %lo(gDmaMesgQueue) # addiu $t5, $t5, -0x10a8
/* 0286D8 80027AD8 258C5470 */  addiu $t4, %lo(_kart_texturesSegmentRomStart) # addiu $t4, $t4, 0x5470
/* 0286DC 80027ADC 3C048015 */  lui   $a0, %hi(gDmaIoMesg) # $a0, 0x8015
/* 0286E0 80027AE0 240A0200 */  li    $t2, 512
/* 0286E4 80027AE4 01215824 */  and   $t3, $t1, $at
/* 0286E8 80027AE8 016C3821 */  addu  $a3, $t3, $t4
/* 0286EC 80027AEC AFAA0014 */  sw    $t2, 0x14($sp)
/* 0286F0 80027AF0 2484F0A0 */  addiu $a0, %lo(gDmaIoMesg) # addiu $a0, $a0, -0xf60
/* 0286F4 80027AF4 AFAD0018 */  sw    $t5, 0x18($sp)
/* 0286F8 80027AF8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0286FC 80027AFC 00002825 */  move  $a1, $zero
/* 028700 80027B00 0C03370C */  jal   osPiStartDma
/* 028704 80027B04 00003025 */   move  $a2, $zero
/* 028708 80027B08 3C048015 */  lui   $a0, %hi(gDmaMesgQueue) # $a0, 0x8015
/* 02870C 80027B0C 3C058015 */  lui   $a1, %hi(gMainReceivedMesg) # $a1, 0x8015
/* 028710 80027B10 24A5F098 */  addiu $a1, %lo(gMainReceivedMesg) # addiu $a1, $a1, -0xf68
/* 028714 80027B14 2484EF58 */  addiu $a0, %lo(gDmaMesgQueue) # addiu $a0, $a0, -0x10a8
/* 028718 80027B18 0C0335D4 */  jal   osRecvMesg
/* 02871C 80027B1C 24060001 */   li    $a2, 1
/* 028720 80027B20 1000002A */  b     .L80027BCC
/* 028724 80027B24 8FBF002C */   lw    $ra, 0x2c($sp)
.L80027B28:
/* 028728 80027B28 83A80037 */  lb    $t0, 0x37($sp)
/* 02872C 80027B2C 00067B00 */  sll   $t7, $a2, 0xc
/* 028730 80027B30 01CFC021 */  addu  $t8, $t6, $t7
/* 028734 80027B34 3C0C802F */  lui   $t4, %hi(D_802F1F80) # $t4, 0x802f
/* 028738 80027B38 00084A40 */  sll   $t1, $t0, 9
/* 02873C 80027B3C 03095821 */  addu  $t3, $t8, $t1
/* 028740 80027B40 258C1F80 */  addiu $t4, %lo(D_802F1F80) # addiu $t4, $t4, 0x1f80
/* 028744 80027B44 016C8021 */  addu  $s0, $t3, $t4
/* 028748 80027B48 02002025 */  move  $a0, $s0
/* 02874C 80027B4C 0C0336E0 */  jal   osInvalDCache
/* 028750 80027B50 24050200 */   li    $a1, 512
/* 028754 80027B54 8FAA0030 */  lw    $t2, 0x30($sp)
/* 028758 80027B58 3C0F800E */  lui   $t7, %hi(gKartPalettes)
/* 02875C 80027B5C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 028760 80027B60 954D0254 */  lhu   $t5, 0x254($t2)
/* 028764 80027B64 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 028768 80027B68 3C080014 */  lui   $t0, %hi(_kart_texturesSegmentRomStart) # $t0, 0x14
/* 02876C 80027B6C 000D7080 */  sll   $t6, $t5, 2
/* 028770 80027B70 01EE7821 */  addu  $t7, $t7, $t6
/* 028774 80027B74 8DEF2340 */  lw    $t7, %lo(gKartPalettes)($t7)
/* 028778 80027B78 3C098015 */  lui   $t1, %hi(gDmaMesgQueue) # $t1, 0x8015
/* 02877C 80027B7C 2529EF58 */  addiu $t1, %lo(gDmaMesgQueue) # addiu $t1, $t1, -0x10a8
/* 028780 80027B80 25085470 */  addiu $t0, %lo(_kart_texturesSegmentRomStart) # addiu $t0, $t0, 0x5470
/* 028784 80027B84 3C048015 */  lui   $a0, %hi(gDmaIoMesg) # $a0, 0x8015
/* 028788 80027B88 24180200 */  li    $t8, 512
/* 02878C 80027B8C 01E1C824 */  and   $t9, $t7, $at
/* 028790 80027B90 03283821 */  addu  $a3, $t9, $t0
/* 028794 80027B94 AFB80014 */  sw    $t8, 0x14($sp)
/* 028798 80027B98 2484F0A0 */  addiu $a0, %lo(gDmaIoMesg) # addiu $a0, $a0, -0xf60
/* 02879C 80027B9C AFA90018 */  sw    $t1, 0x18($sp)
/* 0287A0 80027BA0 AFB00010 */  sw    $s0, 0x10($sp)
/* 0287A4 80027BA4 00002825 */  move  $a1, $zero
/* 0287A8 80027BA8 0C03370C */  jal   osPiStartDma
/* 0287AC 80027BAC 00003025 */   move  $a2, $zero
/* 0287B0 80027BB0 3C048015 */  lui   $a0, %hi(gDmaMesgQueue) # $a0, 0x8015
/* 0287B4 80027BB4 3C058015 */  lui   $a1, %hi(gMainReceivedMesg) # $a1, 0x8015
/* 0287B8 80027BB8 24A5F098 */  addiu $a1, %lo(gMainReceivedMesg) # addiu $a1, $a1, -0xf68
/* 0287BC 80027BBC 2484EF58 */  addiu $a0, %lo(gDmaMesgQueue) # addiu $a0, $a0, -0x10a8
/* 0287C0 80027BC0 0C0335D4 */  jal   osRecvMesg
/* 0287C4 80027BC4 24060001 */   li    $a2, 1
/* 0287C8 80027BC8 8FBF002C */  lw    $ra, 0x2c($sp)
.L80027BCC:
/* 0287CC 80027BCC 8FB00028 */  lw    $s0, 0x28($sp)
/* 0287D0 80027BD0 27BD0030 */  addiu $sp, $sp, 0x30
/* 0287D4 80027BD4 03E00008 */  jr    $ra
/* 0287D8 80027BD8 00000000 */   nop   
