glabel func_80027560
/* 028160 80027560 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 028164 80027564 AFBF002C */  sw    $ra, 0x2c($sp)
/* 028168 80027568 AFB10028 */  sw    $s1, 0x28($sp)
/* 02816C 8002756C AFB00024 */  sw    $s0, 0x24($sp)
/* 028170 80027570 AFA5003C */  sw    $a1, 0x3c($sp)
/* 028174 80027574 AFA60040 */  sw    $a2, 0x40($sp)
/* 028178 80027578 AFA70044 */  sw    $a3, 0x44($sp)
/* 02817C 8002757C 8C8200BC */  lw    $v0, 0xbc($a0)
/* 028180 80027580 00077600 */  sll   $t6, $a3, 0x18
/* 028184 80027584 24010080 */  li    $at, 128
/* 028188 80027588 30580080 */  andi  $t8, $v0, 0x80
/* 02818C 8002758C 000E3E03 */  sra   $a3, $t6, 0x18
/* 028190 80027590 13010014 */  beq   $t8, $at, .L800275E4
/* 028194 80027594 00808825 */   move  $s1, $a0
/* 028198 80027598 30590040 */  andi  $t9, $v0, 0x40
/* 02819C 8002759C 24010040 */  li    $at, 64
/* 0281A0 800275A0 13210010 */  beq   $t9, $at, .L800275E4
/* 0281A4 800275A4 3C030008 */   lui   $v1, 8
/* 0281A8 800275A8 00434024 */  and   $t0, $v0, $v1
/* 0281AC 800275AC 1068000D */  beq   $v1, $t0, .L800275E4
/* 0281B0 800275B0 3C030080 */   lui   $v1, 0x80
/* 0281B4 800275B4 00434824 */  and   $t1, $v0, $v1
/* 0281B8 800275B8 1069000A */  beq   $v1, $t1, .L800275E4
/* 0281BC 800275BC 3C030002 */   lui   $v1, 2
/* 0281C0 800275C0 00435024 */  and   $t2, $v0, $v1
/* 0281C4 800275C4 506A0008 */  beql  $v1, $t2, .L800275E8
/* 0281C8 800275C8 83AD0043 */   lb    $t5, 0x43($sp)
/* 0281CC 800275CC 848B0044 */  lh    $t3, 0x44($a0)
/* 0281D0 800275D0 30480400 */  andi  $t0, $v0, 0x400
/* 0281D4 800275D4 24010400 */  li    $at, 1024
/* 0281D8 800275D8 316C0800 */  andi  $t4, $t3, 0x800
/* 0281DC 800275DC 1180008A */  beqz  $t4, .L80027808
/* 0281E0 800275E0 00000000 */   nop   
.L800275E4:
/* 0281E4 800275E4 83AD0043 */  lb    $t5, 0x43($sp)
.L800275E8:
/* 0281E8 800275E8 83AC004B */  lb    $t4, 0x4b($sp)
/* 0281EC 800275EC 3C19802E */  lui   $t9, %hi(D_802DFB80) # 0x802e
/* 0281F0 800275F0 000D7040 */  sll   $t6, $t5, 1
/* 0281F4 800275F4 022E1821 */  addu  $v1, $s1, $t6
/* 0281F8 800275F8 946F0244 */  lhu   $t7, 0x244($v1)
/* 0281FC 800275FC 000C58C0 */  sll   $t3, $t4, 3
/* 028200 80027600 016C5821 */  addu  $t3, $t3, $t4
/* 028204 80027604 11E00043 */  beqz  $t7, .L80027714
/* 028208 80027608 000B58C0 */   sll   $t3, $t3, 3
/* 02820C 8002760C 83B8004B */  lb    $t8, 0x4b($sp)
/* 028210 80027610 83AA003F */  lb    $t2, 0x3f($sp)
/* 028214 80027614 000740C0 */  sll   $t0, $a3, 3
/* 028218 80027618 0018C8C0 */  sll   $t9, $t8, 3
/* 02821C 8002761C 01074021 */  addu  $t0, $t0, $a3
/* 028220 80027620 0338C821 */  addu  $t9, $t9, $t8
/* 028224 80027624 000A58C0 */  sll   $t3, $t2, 3
/* 028228 80027628 0019C8C0 */  sll   $t9, $t9, 3
/* 02822C 8002762C 000840C0 */  sll   $t0, $t0, 3
/* 028230 80027630 016A5821 */  addu  $t3, $t3, $t2
/* 028234 80027634 962E0254 */  lhu   $t6, 0x254($s1)
/* 028238 80027638 000B58C0 */  sll   $t3, $t3, 3
/* 02823C 8002763C 01074021 */  addu  $t0, $t0, $a3
/* 028240 80027640 0338C821 */  addu  $t9, $t9, $t8
/* 028244 80027644 0019CA40 */  sll   $t9, $t9, 9
/* 028248 80027648 00084200 */  sll   $t0, $t0, 8
/* 02824C 8002764C 016A5821 */  addu  $t3, $t3, $t2
/* 028250 80027650 000B5940 */  sll   $t3, $t3, 5
/* 028254 80027654 03284821 */  addu  $t1, $t9, $t0
/* 028258 80027658 3C0D802E */  lui   $t5, %hi(D_802DFB80) # $t5, 0x802e
/* 02825C 8002765C 25ADFB80 */  addiu $t5, %lo(D_802DFB80) # addiu $t5, $t5, -0x480
/* 028260 80027660 012B6021 */  addu  $t4, $t1, $t3
/* 028264 80027664 3C05800E */  lui   $a1, %hi(D_800DDEB0)
/* 028268 80027668 000E7840 */  sll   $t7, $t6, 1
/* 02826C 8002766C 00AF2821 */  addu  $a1, $a1, $t7
/* 028270 80027670 018D8021 */  addu  $s0, $t4, $t5
/* 028274 80027674 02002025 */  move  $a0, $s0
/* 028278 80027678 94A5DEB0 */  lhu   $a1, %lo(D_800DDEB0)($a1)
/* 02827C 8002767C 0C0336E0 */  jal   osInvalDCache
/* 028280 80027680 AFA30030 */   sw    $v1, 0x30($sp)
/* 028284 80027684 96220254 */  lhu   $v0, 0x254($s1)
/* 028288 80027688 8FA30030 */  lw    $v1, 0x30($sp)
/* 02828C 8002768C 3C19800E */  lui   $t9, %hi(gKartTextureTable1)
/* 028290 80027690 0002C080 */  sll   $t8, $v0, 2
/* 028294 80027694 9468024C */  lhu   $t0, 0x24c($v1)
/* 028298 80027698 0338C821 */  addu  $t9, $t9, $t8
/* 02829C 8002769C 8F391F00 */  lw    $t9, %lo(gKartTextureTable1)($t9)
/* 0282A0 800276A0 00085080 */  sll   $t2, $t0, 2
/* 0282A4 800276A4 946C0244 */  lhu   $t4, 0x244($v1)
/* 0282A8 800276A8 032A4821 */  addu  $t1, $t9, $t2
/* 0282AC 800276AC 8D2B0000 */  lw    $t3, ($t1)
/* 0282B0 800276B0 000C6880 */  sll   $t5, $t4, 2
/* 0282B4 800276B4 3C0A800E */  lui   $t2, %hi(D_800DDEB0)
/* 0282B8 800276B8 016D7021 */  addu  $t6, $t3, $t5
/* 0282BC 800276BC 8DCF0000 */  lw    $t7, ($t6)
/* 0282C0 800276C0 0002C840 */  sll   $t9, $v0, 1
/* 0282C4 800276C4 01595021 */  addu  $t2, $t2, $t9
/* 0282C8 800276C8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 0282CC 800276CC 954ADEB0 */  lhu   $t2, %lo(D_800DDEB0)($t2)
/* 0282D0 800276D0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0282D4 800276D4 3C098015 */  lui   $t1, %hi(gDmaMesgQueue) # $t1, 0x8015
/* 0282D8 800276D8 3C080014 */  lui   $t0, %hi(_kart_texturesSegmentRomStart) # $t0, 0x14
/* 0282DC 800276DC 25085470 */  addiu $t0, %lo(_kart_texturesSegmentRomStart) # addiu $t0, $t0, 0x5470
/* 0282E0 800276E0 2529EF58 */  addiu $t1, %lo(gDmaMesgQueue) # addiu $t1, $t1, -0x10a8
/* 0282E4 800276E4 3C048015 */  lui   $a0, %hi(gDmaIoMesg) # $a0, 0x8015
/* 0282E8 800276E8 01E1C024 */  and   $t8, $t7, $at
/* 0282EC 800276EC 03083821 */  addu  $a3, $t8, $t0
/* 0282F0 800276F0 2484F0A0 */  addiu $a0, %lo(gDmaIoMesg) # addiu $a0, $a0, -0xf60
/* 0282F4 800276F4 AFA90018 */  sw    $t1, 0x18($sp)
/* 0282F8 800276F8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0282FC 800276FC 00002825 */  move  $a1, $zero
/* 028300 80027700 00003025 */  move  $a2, $zero
/* 028304 80027704 0C03370C */  jal   osPiStartDma
/* 028308 80027708 AFAA0014 */   sw    $t2, 0x14($sp)
/* 02830C 8002770C 100000C0 */  b     .L80027A10
/* 028310 80027710 8FBF002C */   lw    $ra, 0x2c($sp)
.L80027714:
/* 028314 80027714 83AF003F */  lb    $t7, 0x3f($sp)
/* 028318 80027718 000768C0 */  sll   $t5, $a3, 3
/* 02831C 8002771C 01A76821 */  addu  $t5, $t5, $a3
/* 028320 80027720 000FC0C0 */  sll   $t8, $t7, 3
/* 028324 80027724 000D68C0 */  sll   $t5, $t5, 3
/* 028328 80027728 030FC021 */  addu  $t8, $t8, $t7
/* 02832C 8002772C 962A0254 */  lhu   $t2, 0x254($s1)
/* 028330 80027730 0018C0C0 */  sll   $t8, $t8, 3
/* 028334 80027734 01A76821 */  addu  $t5, $t5, $a3
/* 028338 80027738 016C5821 */  addu  $t3, $t3, $t4
/* 02833C 8002773C 000B5A40 */  sll   $t3, $t3, 9
/* 028340 80027740 000D6A00 */  sll   $t5, $t5, 8
/* 028344 80027744 030FC021 */  addu  $t8, $t8, $t7
/* 028348 80027748 0018C140 */  sll   $t8, $t8, 5
/* 02834C 8002774C 016D7021 */  addu  $t6, $t3, $t5
/* 028350 80027750 01D84021 */  addu  $t0, $t6, $t8
/* 028354 80027754 2739FB80 */  addiu $t9, $t9, %lo(D_802DFB80) # -0x480
/* 028358 80027758 3C05800E */  lui   $a1, %hi(D_800DDEB0)
/* 02835C 8002775C 000A4840 */  sll   $t1, $t2, 1
/* 028360 80027760 00A92821 */  addu  $a1, $a1, $t1
/* 028364 80027764 01198021 */  addu  $s0, $t0, $t9
/* 028368 80027768 02002025 */  move  $a0, $s0
/* 02836C 8002776C 94A5DEB0 */  lhu   $a1, %lo(D_800DDEB0)($a1)
/* 028370 80027770 0C0336E0 */  jal   osInvalDCache
/* 028374 80027774 AFA30030 */   sw    $v1, 0x30($sp)
/* 028378 80027778 96220254 */  lhu   $v0, 0x254($s1)
/* 02837C 8002777C 8FA30030 */  lw    $v1, 0x30($sp)
/* 028380 80027780 3C0B800E */  lui   $t3, %hi(gKartTextureTable0)
/* 028384 80027784 00026080 */  sll   $t4, $v0, 2
/* 028388 80027788 946D024C */  lhu   $t5, 0x24c($v1)
/* 02838C 8002778C 016C5821 */  addu  $t3, $t3, $t4
/* 028390 80027790 8D6B1EE0 */  lw    $t3, %lo(gKartTextureTable0)($t3)
/* 028394 80027794 000D7880 */  sll   $t7, $t5, 2
/* 028398 80027798 94680244 */  lhu   $t0, 0x244($v1)
/* 02839C 8002779C 016F7021 */  addu  $t6, $t3, $t7
/* 0283A0 800277A0 8DD80000 */  lw    $t8, ($t6)
/* 0283A4 800277A4 0008C880 */  sll   $t9, $t0, 2
/* 0283A8 800277A8 3C0F800E */  lui   $t7, %hi(D_800DDEB0)
/* 0283AC 800277AC 03195021 */  addu  $t2, $t8, $t9
/* 0283B0 800277B0 8D490000 */  lw    $t1, ($t2)
/* 0283B4 800277B4 00025840 */  sll   $t3, $v0, 1
/* 0283B8 800277B8 01EB7821 */  addu  $t7, $t7, $t3
/* 0283BC 800277BC 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 0283C0 800277C0 95EFDEB0 */  lhu   $t7, %lo(D_800DDEB0)($t7)
/* 0283C4 800277C4 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0283C8 800277C8 3C0E8015 */  lui   $t6, %hi(gDmaMesgQueue) # $t6, 0x8015
/* 0283CC 800277CC 3C0D0014 */  lui   $t5, %hi(_kart_texturesSegmentRomStart) # $t5, 0x14
/* 0283D0 800277D0 25AD5470 */  addiu $t5, %lo(_kart_texturesSegmentRomStart) # addiu $t5, $t5, 0x5470
/* 0283D4 800277D4 25CEEF58 */  addiu $t6, %lo(gDmaMesgQueue) # addiu $t6, $t6, -0x10a8
/* 0283D8 800277D8 3C048015 */  lui   $a0, %hi(gDmaIoMesg) # $a0, 0x8015
/* 0283DC 800277DC 01216024 */  and   $t4, $t1, $at
/* 0283E0 800277E0 018D3821 */  addu  $a3, $t4, $t5
/* 0283E4 800277E4 2484F0A0 */  addiu $a0, %lo(gDmaIoMesg) # addiu $a0, $a0, -0xf60
/* 0283E8 800277E8 AFAE0018 */  sw    $t6, 0x18($sp)
/* 0283EC 800277EC AFB00010 */  sw    $s0, 0x10($sp)
/* 0283F0 800277F0 00002825 */  move  $a1, $zero
/* 0283F4 800277F4 00003025 */  move  $a2, $zero
/* 0283F8 800277F8 0C03370C */  jal   osPiStartDma
/* 0283FC 800277FC AFAF0014 */   sw    $t7, 0x14($sp)
/* 028400 80027800 10000083 */  b     .L80027A10
/* 028404 80027804 8FBF002C */   lw    $ra, 0x2c($sp)
.L80027808:
/* 028408 80027808 1101000A */  beq   $t0, $at, .L80027834
/* 02840C 8002780C 3C030100 */   lui   $v1, 0x100
/* 028410 80027810 0043C024 */  and   $t8, $v0, $v1
/* 028414 80027814 10780007 */  beq   $v1, $t8, .L80027834
/* 028418 80027818 3C030200 */   lui   $v1, 0x200
/* 02841C 8002781C 0043C824 */  and   $t9, $v0, $v1
/* 028420 80027820 10790004 */  beq   $v1, $t9, .L80027834
/* 028424 80027824 3C030001 */   lui   $v1, 1
/* 028428 80027828 00435024 */  and   $t2, $v0, $v1
/* 02842C 8002782C 146A0037 */  bne   $v1, $t2, .L8002790C
/* 028430 80027830 83AC004B */   lb    $t4, 0x4b($sp)
.L80027834:
/* 028434 80027834 83A9004B */  lb    $t1, 0x4b($sp)
/* 028438 80027838 83AF003F */  lb    $t7, 0x3f($sp)
/* 02843C 8002783C 000768C0 */  sll   $t5, $a3, 3
/* 028440 80027840 000960C0 */  sll   $t4, $t1, 3
/* 028444 80027844 01A76821 */  addu  $t5, $t5, $a3
/* 028448 80027848 01896021 */  addu  $t4, $t4, $t1
/* 02844C 8002784C 000F70C0 */  sll   $t6, $t7, 3
/* 028450 80027850 000C60C0 */  sll   $t4, $t4, 3
/* 028454 80027854 000D68C0 */  sll   $t5, $t5, 3
/* 028458 80027858 01CF7021 */  addu  $t6, $t6, $t7
/* 02845C 8002785C 000E70C0 */  sll   $t6, $t6, 3
/* 028460 80027860 01A76821 */  addu  $t5, $t5, $a3
/* 028464 80027864 01896021 */  addu  $t4, $t4, $t1
/* 028468 80027868 000C6240 */  sll   $t4, $t4, 9
/* 02846C 8002786C 000D6A00 */  sll   $t5, $t5, 8
/* 028470 80027870 01CF7021 */  addu  $t6, $t6, $t7
/* 028474 80027874 000E7140 */  sll   $t6, $t6, 5
/* 028478 80027878 018D5821 */  addu  $t3, $t4, $t5
/* 02847C 8002787C 3C18802E */  lui   $t8, %hi(D_802DFB80) # $t8, 0x802e
/* 028480 80027880 2718FB80 */  addiu $t8, %lo(D_802DFB80) # addiu $t8, $t8, -0x480
/* 028484 80027884 016E4021 */  addu  $t0, $t3, $t6
/* 028488 80027888 01188021 */  addu  $s0, $t0, $t8
/* 02848C 8002788C 02002025 */  move  $a0, $s0
/* 028490 80027890 0C0336E0 */  jal   osInvalDCache
/* 028494 80027894 24050780 */   li    $a1, 1920
/* 028498 80027898 96390254 */  lhu   $t9, 0x254($s1)
/* 02849C 8002789C 862C00A8 */  lh    $t4, 0xa8($s1)
/* 0284A0 800278A0 3C09800E */  lui   $t1, %hi(gKartTextureGroup18s)
/* 0284A4 800278A4 00195080 */  sll   $t2, $t9, 2
/* 0284A8 800278A8 012A4821 */  addu  $t1, $t1, $t2
/* 0284AC 800278AC 8D292320 */  lw    $t1, %lo(gKartTextureGroup18s)($t1)
/* 0284B0 800278B0 000C6A03 */  sra   $t5, $t4, 8
/* 0284B4 800278B4 000D7880 */  sll   $t7, $t5, 2
/* 0284B8 800278B8 012F5821 */  addu  $t3, $t1, $t7
/* 0284BC 800278BC 8D6E0000 */  lw    $t6, ($t3)
/* 0284C0 800278C0 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 0284C4 800278C4 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0284C8 800278C8 3C0A8015 */  lui   $t2, %hi(gDmaMesgQueue) # $t2, 0x8015
/* 0284CC 800278CC 3C180014 */  lui   $t8, %hi(_kart_texturesSegmentRomStart) # $t8, 0x14
/* 0284D0 800278D0 27185470 */  addiu $t8, %lo(_kart_texturesSegmentRomStart) # addiu $t8, $t8, 0x5470
/* 0284D4 800278D4 254AEF58 */  addiu $t2, %lo(gDmaMesgQueue) # addiu $t2, $t2, -0x10a8
/* 0284D8 800278D8 24190900 */  li    $t9, 2304
/* 0284DC 800278DC 3C048015 */  lui   $a0, %hi(gDmaIoMesg) # $a0, 0x8015
/* 0284E0 800278E0 01C14024 */  and   $t0, $t6, $at
/* 0284E4 800278E4 01183821 */  addu  $a3, $t0, $t8
/* 0284E8 800278E8 2484F0A0 */  addiu $a0, %lo(gDmaIoMesg) # addiu $a0, $a0, -0xf60
/* 0284EC 800278EC AFB90014 */  sw    $t9, 0x14($sp)
/* 0284F0 800278F0 AFAA0018 */  sw    $t2, 0x18($sp)
/* 0284F4 800278F4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0284F8 800278F8 00002825 */  move  $a1, $zero
/* 0284FC 800278FC 0C03370C */  jal   osPiStartDma
/* 028500 80027900 00003025 */   move  $a2, $zero
/* 028504 80027904 10000042 */  b     .L80027A10
/* 028508 80027908 8FBF002C */   lw    $ra, 0x2c($sp)
.L8002790C:
/* 02850C 8002790C 83AB003F */  lb    $t3, 0x3f($sp)
/* 028510 80027910 000C68C0 */  sll   $t5, $t4, 3
/* 028514 80027914 000748C0 */  sll   $t1, $a3, 3
/* 028518 80027918 01274821 */  addu  $t1, $t1, $a3
/* 02851C 8002791C 01AC6821 */  addu  $t5, $t5, $t4
/* 028520 80027920 000B70C0 */  sll   $t6, $t3, 3
/* 028524 80027924 000D68C0 */  sll   $t5, $t5, 3
/* 028528 80027928 000948C0 */  sll   $t1, $t1, 3
/* 02852C 8002792C 01CB7021 */  addu  $t6, $t6, $t3
/* 028530 80027930 96390254 */  lhu   $t9, 0x254($s1)
/* 028534 80027934 000E70C0 */  sll   $t6, $t6, 3
/* 028538 80027938 01274821 */  addu  $t1, $t1, $a3
/* 02853C 8002793C 01AC6821 */  addu  $t5, $t5, $t4
/* 028540 80027940 000D6A40 */  sll   $t5, $t5, 9
/* 028544 80027944 00094A00 */  sll   $t1, $t1, 8
/* 028548 80027948 01CB7021 */  addu  $t6, $t6, $t3
/* 02854C 8002794C 000E7140 */  sll   $t6, $t6, 5
/* 028550 80027950 01A97821 */  addu  $t7, $t5, $t1
/* 028554 80027954 3C18802E */  lui   $t8, %hi(D_802DFB80) # $t8, 0x802e
/* 028558 80027958 2718FB80 */  addiu $t8, %lo(D_802DFB80) # addiu $t8, $t8, -0x480
/* 02855C 8002795C 01EE4021 */  addu  $t0, $t7, $t6
/* 028560 80027960 3C05800E */  lui   $a1, %hi(D_800DDEB0)
/* 028564 80027964 00195040 */  sll   $t2, $t9, 1
/* 028568 80027968 00AA2821 */  addu  $a1, $a1, $t2
/* 02856C 8002796C 01188021 */  addu  $s0, $t0, $t8
/* 028570 80027970 02002025 */  move  $a0, $s0
/* 028574 80027974 0C0336E0 */  jal   osInvalDCache
/* 028578 80027978 94A5DEB0 */   lhu   $a1, %lo(D_800DDEB0)($a1)
/* 02857C 8002797C 83AC0043 */  lb    $t4, 0x43($sp)
/* 028580 80027980 96220254 */  lhu   $v0, 0x254($s1)
/* 028584 80027984 3C0B800E */  lui   $t3, %hi(gKartTextureTable0)
/* 028588 80027988 000C6840 */  sll   $t5, $t4, 1
/* 02858C 8002798C 022D1821 */  addu  $v1, $s1, $t5
/* 028590 80027990 00024880 */  sll   $t1, $v0, 2
/* 028594 80027994 946F024C */  lhu   $t7, 0x24c($v1)
/* 028598 80027998 01695821 */  addu  $t3, $t3, $t1
/* 02859C 8002799C 8D6B1EE0 */  lw    $t3, %lo(gKartTextureTable0)($t3)
/* 0285A0 800279A0 000F7080 */  sll   $t6, $t7, 2
/* 0285A4 800279A4 94790244 */  lhu   $t9, 0x244($v1)
/* 0285A8 800279A8 016E4021 */  addu  $t0, $t3, $t6
/* 0285AC 800279AC 8D180000 */  lw    $t8, ($t0)
/* 0285B0 800279B0 00195080 */  sll   $t2, $t9, 2
/* 0285B4 800279B4 3C0E800E */  lui   $t6, %hi(D_800DDEB0)
/* 0285B8 800279B8 030A6021 */  addu  $t4, $t8, $t2
/* 0285BC 800279BC 8D8D0000 */  lw    $t5, ($t4)
/* 0285C0 800279C0 00025840 */  sll   $t3, $v0, 1
/* 0285C4 800279C4 01CB7021 */  addu  $t6, $t6, $t3
/* 0285C8 800279C8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 0285CC 800279CC 95CEDEB0 */  lhu   $t6, %lo(D_800DDEB0)($t6)
/* 0285D0 800279D0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0285D4 800279D4 3C088015 */  lui   $t0, %hi(gDmaMesgQueue) # $t0, 0x8015
/* 0285D8 800279D8 3C0F0014 */  lui   $t7, %hi(_kart_texturesSegmentRomStart) # $t7, 0x14
/* 0285DC 800279DC 25EF5470 */  addiu $t7, %lo(_kart_texturesSegmentRomStart) # addiu $t7, $t7, 0x5470
/* 0285E0 800279E0 2508EF58 */  addiu $t0, %lo(gDmaMesgQueue) # addiu $t0, $t0, -0x10a8
/* 0285E4 800279E4 3C048015 */  lui   $a0, %hi(gDmaIoMesg) # $a0, 0x8015
/* 0285E8 800279E8 01A14824 */  and   $t1, $t5, $at
/* 0285EC 800279EC 012F3821 */  addu  $a3, $t1, $t7
/* 0285F0 800279F0 2484F0A0 */  addiu $a0, %lo(gDmaIoMesg) # addiu $a0, $a0, -0xf60
/* 0285F4 800279F4 AFA80018 */  sw    $t0, 0x18($sp)
/* 0285F8 800279F8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0285FC 800279FC 00002825 */  move  $a1, $zero
/* 028600 80027A00 00003025 */  move  $a2, $zero
/* 028604 80027A04 0C03370C */  jal   osPiStartDma
/* 028608 80027A08 AFAE0014 */   sw    $t6, 0x14($sp)
/* 02860C 80027A0C 8FBF002C */  lw    $ra, 0x2c($sp)
.L80027A10:
/* 028610 80027A10 8FB00024 */  lw    $s0, 0x24($sp)
/* 028614 80027A14 8FB10028 */  lw    $s1, 0x28($sp)
/* 028618 80027A18 03E00008 */  jr    $ra
/* 02861C 80027A1C 27BD0038 */   addiu $sp, $sp, 0x38
