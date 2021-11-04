glabel func_80049D10
/* 04A910 80049D10 44876000 */  mtc1  $a3, $f12
/* 04A914 80049D14 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04A918 80049D18 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04A91C 80049D1C AFA60028 */  sw    $a2, 0x28($sp)
/* 04A920 80049D20 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04A924 80049D24 44076000 */  mfc1  $a3, $f12
/* 04A928 80049D28 0C0108CC */  jal   func_80042330
/* 04A92C 80049D2C 01C03025 */   move  $a2, $t6
/* 04A930 80049D30 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04A934 80049D34 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04A938 80049D38 8D030000 */  lw    $v1, ($t0)
/* 04A93C 80049D3C 3C190D00 */  lui   $t9, %hi(D_0D007A80) # $t9, 0xd00
/* 04A940 80049D40 27397A80 */  addiu $t9, %lo(D_0D007A80) # addiu $t9, $t9, 0x7a80
/* 04A944 80049D44 246F0008 */  addiu $t7, $v1, 8
/* 04A948 80049D48 AD0F0000 */  sw    $t7, ($t0)
/* 04A94C 80049D4C 3C180600 */  lui   $t8, 0x600
/* 04A950 80049D50 AC780000 */  sw    $t8, ($v1)
/* 04A954 80049D54 AC790004 */  sw    $t9, 4($v1)
/* 04A958 80049D58 8FAA0044 */  lw    $t2, 0x44($sp)
/* 04A95C 80049D5C 8FA90040 */  lw    $t1, 0x40($sp)
/* 04A960 80049D60 8FA7003C */  lw    $a3, 0x3c($sp)
/* 04A964 80049D64 8FA60038 */  lw    $a2, 0x38($sp)
/* 04A968 80049D68 8FA50034 */  lw    $a1, 0x34($sp)
/* 04A96C 80049D6C 8FA40030 */  lw    $a0, 0x30($sp)
/* 04A970 80049D70 AFAA0014 */  sw    $t2, 0x14($sp)
/* 04A974 80049D74 0C0124B5 */  jal   func_800492D4
/* 04A978 80049D78 AFA90010 */   sw    $t1, 0x10($sp)
/* 04A97C 80049D7C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04A980 80049D80 27BD0020 */  addiu $sp, $sp, 0x20
/* 04A984 80049D84 03E00008 */  jr    $ra
/* 04A988 80049D88 00000000 */   nop   
