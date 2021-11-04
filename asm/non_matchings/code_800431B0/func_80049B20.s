glabel func_80049B20
/* 04A720 80049B20 44876000 */  mtc1  $a3, $f12
/* 04A724 80049B24 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04A728 80049B28 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04A72C 80049B2C AFA60028 */  sw    $a2, 0x28($sp)
/* 04A730 80049B30 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04A734 80049B34 44076000 */  mfc1  $a3, $f12
/* 04A738 80049B38 0C0108CC */  jal   func_80042330
/* 04A73C 80049B3C 01C03025 */   move  $a2, $t6
/* 04A740 80049B40 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04A744 80049B44 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04A748 80049B48 8D030000 */  lw    $v1, ($t0)
/* 04A74C 80049B4C 3C190D00 */  lui   $t9, %hi(D_0D007A40) # $t9, 0xd00
/* 04A750 80049B50 27397A40 */  addiu $t9, %lo(D_0D007A40) # addiu $t9, $t9, 0x7a40
/* 04A754 80049B54 246F0008 */  addiu $t7, $v1, 8
/* 04A758 80049B58 AD0F0000 */  sw    $t7, ($t0)
/* 04A75C 80049B5C 3C180600 */  lui   $t8, 0x600
/* 04A760 80049B60 AC780000 */  sw    $t8, ($v1)
/* 04A764 80049B64 AC790004 */  sw    $t9, 4($v1)
/* 04A768 80049B68 8FAA0044 */  lw    $t2, 0x44($sp)
/* 04A76C 80049B6C 8FA90040 */  lw    $t1, 0x40($sp)
/* 04A770 80049B70 8FA7003C */  lw    $a3, 0x3c($sp)
/* 04A774 80049B74 8FA60038 */  lw    $a2, 0x38($sp)
/* 04A778 80049B78 8FA50034 */  lw    $a1, 0x34($sp)
/* 04A77C 80049B7C 8FA40030 */  lw    $a0, 0x30($sp)
/* 04A780 80049B80 AFAA0014 */  sw    $t2, 0x14($sp)
/* 04A784 80049B84 0C0123E3 */  jal   func_80048F8C
/* 04A788 80049B88 AFA90010 */   sw    $t1, 0x10($sp)
/* 04A78C 80049B8C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04A790 80049B90 27BD0020 */  addiu $sp, $sp, 0x20
/* 04A794 80049B94 03E00008 */  jr    $ra
/* 04A798 80049B98 00000000 */   nop   

/* 04A79C 80049B9C 44876000 */  mtc1  $a3, $f12
/* 04A7A0 80049BA0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04A7A4 80049BA4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04A7A8 80049BA8 AFA60028 */  sw    $a2, 0x28($sp)
/* 04A7AC 80049BAC 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04A7B0 80049BB0 44076000 */  mfc1  $a3, $f12
/* 04A7B4 80049BB4 0C0108CC */  jal   func_80042330
/* 04A7B8 80049BB8 01C03025 */   move  $a2, $t6
/* 04A7BC 80049BBC 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04A7C0 80049BC0 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04A7C4 80049BC4 8D030000 */  lw    $v1, ($t0)
/* 04A7C8 80049BC8 3C190D00 */  lui   $t9, %hi(D_0D007A40) # $t9, 0xd00
/* 04A7CC 80049BCC 27397A40 */  addiu $t9, %lo(D_0D007A40) # addiu $t9, $t9, 0x7a40
/* 04A7D0 80049BD0 246F0008 */  addiu $t7, $v1, 8
/* 04A7D4 80049BD4 AD0F0000 */  sw    $t7, ($t0)
/* 04A7D8 80049BD8 3C180600 */  lui   $t8, 0x600
/* 04A7DC 80049BDC AC780000 */  sw    $t8, ($v1)
/* 04A7E0 80049BE0 AC790004 */  sw    $t9, 4($v1)
/* 04A7E4 80049BE4 8FAA0044 */  lw    $t2, 0x44($sp)
/* 04A7E8 80049BE8 8FA90040 */  lw    $t1, 0x40($sp)
/* 04A7EC 80049BEC 8FA7003C */  lw    $a3, 0x3c($sp)
/* 04A7F0 80049BF0 8FA60038 */  lw    $a2, 0x38($sp)
/* 04A7F4 80049BF4 8FA50034 */  lw    $a1, 0x34($sp)
/* 04A7F8 80049BF8 8FA40030 */  lw    $a0, 0x30($sp)
/* 04A7FC 80049BFC AFAA0014 */  sw    $t2, 0x14($sp)
/* 04A800 80049C00 0C01244C */  jal   func_80049130
/* 04A804 80049C04 AFA90010 */   sw    $t1, 0x10($sp)
/* 04A808 80049C08 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04A80C 80049C0C 27BD0020 */  addiu $sp, $sp, 0x20
/* 04A810 80049C10 03E00008 */  jr    $ra
/* 04A814 80049C14 00000000 */   nop   
