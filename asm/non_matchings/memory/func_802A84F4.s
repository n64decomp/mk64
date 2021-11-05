glabel func_802A84F4
/* 111B04 802A84F4 3C028016 */  lui   $v0, %hi(gPrevLoadedAddress) # $v0, 0x8016
/* 111B08 802A84F8 8C42F728 */  lw    $v0, %lo(gPrevLoadedAddress)($v0)
/* 111B0C 802A84FC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 111B10 802A8500 AFA40030 */  sw    $a0, 0x30($sp)
/* 111B14 802A8504 2403FFF0 */  li    $v1, -16
/* 111B18 802A8508 24AE000F */  addiu $t6, $a1, 0xf
/* 111B1C 802A850C 24CF000F */  addiu $t7, $a2, 0xf
/* 111B20 802A8510 00462021 */  addu  $a0, $v0, $a2
/* 111B24 802A8514 AFBF0024 */  sw    $ra, 0x24($sp)
/* 111B28 802A8518 01C32824 */  and   $a1, $t6, $v1
/* 111B2C 802A851C 01E33024 */  and   $a2, $t7, $v1
/* 111B30 802A8520 AFA60038 */  sw    $a2, 0x38($sp)
/* 111B34 802A8524 AFA50034 */  sw    $a1, 0x34($sp)
/* 111B38 802A8528 AFA40028 */  sw    $a0, 0x28($sp)
/* 111B3C 802A852C 0C0336E0 */  jal   osInvalDCache
/* 111B40 802A8530 AFA2002C */   sw    $v0, 0x2c($sp)
/* 111B44 802A8534 8FB80030 */  lw    $t8, 0x30($sp)
/* 111B48 802A8538 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 111B4C 802A853C 8FA90028 */  lw    $t1, 0x28($sp)
/* 111B50 802A8540 8FAA0034 */  lw    $t2, 0x34($sp)
/* 111B54 802A8544 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 111B58 802A8548 3C080064 */  lui   $t0, %hi(_other_texturesSegmentRomStart) # $t0, 0x64
/* 111B5C 802A854C 3C0B8015 */  lui   $t3, %hi(D_8014EF58) # $t3, 0x8015
/* 111B60 802A8550 256BEF58 */  addiu $t3, %lo(D_8014EF58) # addiu $t3, $t3, -0x10a8
/* 111B64 802A8554 25081F70 */  addiu $t0, %lo(_other_texturesSegmentRomStart) # addiu $t0, $t0, 0x1f70
/* 111B68 802A8558 3C048015 */  lui   $a0, %hi(D_8014F0A0) # $a0, 0x8015
/* 111B6C 802A855C 0301C824 */  and   $t9, $t8, $at
/* 111B70 802A8560 03283821 */  addu  $a3, $t9, $t0
/* 111B74 802A8564 2484F0A0 */  addiu $a0, %lo(D_8014F0A0) # addiu $a0, $a0, -0xf60
/* 111B78 802A8568 AFAB0018 */  sw    $t3, 0x18($sp)
/* 111B7C 802A856C 00002825 */  move  $a1, $zero
/* 111B80 802A8570 00003025 */  move  $a2, $zero
/* 111B84 802A8574 AFA90010 */  sw    $t1, 0x10($sp)
/* 111B88 802A8578 0C03370C */  jal   osPiStartDma
/* 111B8C 802A857C AFAA0014 */   sw    $t2, 0x14($sp)
/* 111B90 802A8580 3C048015 */  lui   $a0, %hi(D_8014EF58) # $a0, 0x8015
/* 111B94 802A8584 3C058015 */  lui   $a1, %hi(D_8014F098) # $a1, 0x8015
/* 111B98 802A8588 24A5F098 */  addiu $a1, %lo(D_8014F098) # addiu $a1, $a1, -0xf68
/* 111B9C 802A858C 2484EF58 */  addiu $a0, %lo(D_8014EF58) # addiu $a0, $a0, -0x10a8
/* 111BA0 802A8590 0C0335D4 */  jal   osRecvMesg
/* 111BA4 802A8594 24060001 */   li    $a2, 1
/* 111BA8 802A8598 8FA40028 */  lw    $a0, 0x28($sp)
/* 111BAC 802A859C 0C010034 */  jal   mio0decode
/* 111BB0 802A85A0 8FA5002C */   lw    $a1, 0x2c($sp)
/* 111BB4 802A85A4 3C038016 */  lui   $v1, %hi(gPrevLoadedAddress) # $v1, 0x8016
/* 111BB8 802A85A8 2463F728 */  addiu $v1, %lo(gPrevLoadedAddress) # addiu $v1, $v1, -0x8d8
/* 111BBC 802A85AC 8C6C0000 */  lw    $t4, ($v1)
/* 111BC0 802A85B0 8FAD0038 */  lw    $t5, 0x38($sp)
/* 111BC4 802A85B4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 111BC8 802A85B8 8FA2002C */  lw    $v0, 0x2c($sp)
/* 111BCC 802A85BC 018D7021 */  addu  $t6, $t4, $t5
/* 111BD0 802A85C0 AC6E0000 */  sw    $t6, ($v1)
/* 111BD4 802A85C4 03E00008 */  jr    $ra
/* 111BD8 802A85C8 27BD0030 */   addiu $sp, $sp, 0x30
