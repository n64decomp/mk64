glabel MIO0_0F
/* 111BDC 802A85CC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 111BE0 802A85D0 AFA40030 */  sw    $a0, 0x30($sp)
/* 111BE4 802A85D4 2402FFF0 */  li    $v0, -16
/* 111BE8 802A85D8 3C188016 */  lui   $t8, %hi(gHeapEndPtr) # $t8, 0x8016
/* 111BEC 802A85DC 3C048016 */  lui   $a0, %hi(gPrevLoadedAddress) # $a0, 0x8016
/* 111BF0 802A85E0 8F18F72C */  lw    $t8, %lo(gHeapEndPtr)($t8)
/* 111BF4 802A85E4 8C84F728 */  lw    $a0, %lo(gPrevLoadedAddress)($a0)
/* 111BF8 802A85E8 24AE000F */  addiu $t6, $a1, 0xf
/* 111BFC 802A85EC 24CF000F */  addiu $t7, $a2, 0xf
/* 111C00 802A85F0 AFBF0024 */  sw    $ra, 0x24($sp)
/* 111C04 802A85F4 01C22824 */  and   $a1, $t6, $v0
/* 111C08 802A85F8 01E23024 */  and   $a2, $t7, $v0
/* 111C0C 802A85FC AFA60038 */  sw    $a2, 0x38($sp)
/* 111C10 802A8600 AFA50034 */  sw    $a1, 0x34($sp)
/* 111C14 802A8604 AFB8002C */  sw    $t8, 0x2c($sp)
/* 111C18 802A8608 0C0336E0 */  jal   osInvalDCache
/* 111C1C 802A860C AFA40028 */   sw    $a0, 0x28($sp)
/* 111C20 802A8610 8FB90030 */  lw    $t9, 0x30($sp)
/* 111C24 802A8614 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 111C28 802A8618 8FAA0028 */  lw    $t2, 0x28($sp)
/* 111C2C 802A861C 8FAB0034 */  lw    $t3, 0x34($sp)
/* 111C30 802A8620 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 111C34 802A8624 3C090064 */  lui   $t1, %hi(_other_texturesSegmentRomStart) # $t1, 0x64
/* 111C38 802A8628 3C0C8015 */  lui   $t4, %hi(D_8014EF58) # $t4, 0x8015
/* 111C3C 802A862C 258CEF58 */  addiu $t4, %lo(D_8014EF58) # addiu $t4, $t4, -0x10a8
/* 111C40 802A8630 25291F70 */  addiu $t1, %lo(_other_texturesSegmentRomStart) # addiu $t1, $t1, 0x1f70
/* 111C44 802A8634 3C048015 */  lui   $a0, %hi(D_8014F0A0) # $a0, 0x8015
/* 111C48 802A8638 03214024 */  and   $t0, $t9, $at
/* 111C4C 802A863C 01093821 */  addu  $a3, $t0, $t1
/* 111C50 802A8640 2484F0A0 */  addiu $a0, %lo(D_8014F0A0) # addiu $a0, $a0, -0xf60
/* 111C54 802A8644 AFAC0018 */  sw    $t4, 0x18($sp)
/* 111C58 802A8648 00002825 */  move  $a1, $zero
/* 111C5C 802A864C 00003025 */  move  $a2, $zero
/* 111C60 802A8650 AFAA0010 */  sw    $t2, 0x10($sp)
/* 111C64 802A8654 0C03370C */  jal   osPiStartDma
/* 111C68 802A8658 AFAB0014 */   sw    $t3, 0x14($sp)
/* 111C6C 802A865C 3C048015 */  lui   $a0, %hi(D_8014EF58) # $a0, 0x8015
/* 111C70 802A8660 3C058015 */  lui   $a1, %hi(D_8014F098) # $a1, 0x8015
/* 111C74 802A8664 24A5F098 */  addiu $a1, %lo(D_8014F098) # addiu $a1, $a1, -0xf68
/* 111C78 802A8668 2484EF58 */  addiu $a0, %lo(D_8014EF58) # addiu $a0, $a0, -0x10a8
/* 111C7C 802A866C 0C0335D4 */  jal   osRecvMesg
/* 111C80 802A8670 24060001 */   li    $a2, 1
/* 111C84 802A8674 8FA40028 */  lw    $a0, 0x28($sp)
/* 111C88 802A8678 0C010034 */  jal   mio0decode
/* 111C8C 802A867C 8FA5002C */   lw    $a1, 0x2c($sp)
/* 111C90 802A8680 3C038016 */  lui   $v1, %hi(gHeapEndPtr) # $v1, 0x8016
/* 111C94 802A8684 2463F72C */  addiu $v1, %lo(gHeapEndPtr) # addiu $v1, $v1, -0x8d4
/* 111C98 802A8688 8C6D0000 */  lw    $t5, ($v1)
/* 111C9C 802A868C 8FAE0038 */  lw    $t6, 0x38($sp)
/* 111CA0 802A8690 8FBF0024 */  lw    $ra, 0x24($sp)
/* 111CA4 802A8694 8FA2002C */  lw    $v0, 0x2c($sp)
/* 111CA8 802A8698 01AE7821 */  addu  $t7, $t5, $t6
/* 111CAC 802A869C AC6F0000 */  sw    $t7, ($v1)
/* 111CB0 802A86A0 03E00008 */  jr    $ra
/* 111CB4 802A86A4 27BD0030 */   addiu $sp, $sp, 0x30
