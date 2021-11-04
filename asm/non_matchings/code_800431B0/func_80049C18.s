glabel func_80049C18
/* 04A818 80049C18 44876000 */  mtc1  $a3, $f12
/* 04A81C 80049C1C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04A820 80049C20 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04A824 80049C24 AFA60028 */  sw    $a2, 0x28($sp)
/* 04A828 80049C28 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04A82C 80049C2C 44076000 */  mfc1  $a3, $f12
/* 04A830 80049C30 0C0108CC */  jal   func_80042330
/* 04A834 80049C34 01C03025 */   move  $a2, $t6
/* 04A838 80049C38 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04A83C 80049C3C 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04A840 80049C40 8D030000 */  lw    $v1, ($t0)
/* 04A844 80049C44 3C190D00 */  lui   $t9, %hi(D_0D007A40) # $t9, 0xd00
/* 04A848 80049C48 27397A40 */  addiu $t9, %lo(D_0D007A40) # addiu $t9, $t9, 0x7a40
/* 04A84C 80049C4C 246F0008 */  addiu $t7, $v1, 8
/* 04A850 80049C50 AD0F0000 */  sw    $t7, ($t0)
/* 04A854 80049C54 3C180600 */  lui   $t8, 0x600
/* 04A858 80049C58 AC780000 */  sw    $t8, ($v1)
/* 04A85C 80049C5C AC790004 */  sw    $t9, 4($v1)
/* 04A860 80049C60 8FAA0044 */  lw    $t2, 0x44($sp)
/* 04A864 80049C64 8FA90040 */  lw    $t1, 0x40($sp)
/* 04A868 80049C68 8FA7003C */  lw    $a3, 0x3c($sp)
/* 04A86C 80049C6C 8FA60038 */  lw    $a2, 0x38($sp)
/* 04A870 80049C70 8FA50034 */  lw    $a1, 0x34($sp)
/* 04A874 80049C74 8FA40030 */  lw    $a0, 0x30($sp)
/* 04A878 80049C78 AFAA0014 */  sw    $t2, 0x14($sp)
/* 04A87C 80049C7C 0C0124B5 */  jal   func_800492D4
/* 04A880 80049C80 AFA90010 */   sw    $t1, 0x10($sp)
/* 04A884 80049C84 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04A888 80049C88 27BD0020 */  addiu $sp, $sp, 0x20
/* 04A88C 80049C8C 03E00008 */  jr    $ra
/* 04A890 80049C90 00000000 */   nop   
