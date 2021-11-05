glabel func_80047B9C
/* 04879C 80047B9C 44876000 */  mtc1  $a3, $f12
/* 0487A0 80047BA0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0487A4 80047BA4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0487A8 80047BA8 AFA60030 */  sw    $a2, 0x30($sp)
/* 0487AC 80047BAC 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 0487B0 80047BB0 44076000 */  mfc1  $a3, $f12
/* 0487B4 80047BB4 0C0108CC */  jal   func_80042330
/* 0487B8 80047BB8 01C03025 */   move  $a2, $t6
/* 0487BC 80047BBC 3C058015 */  lui   $a1, %hi(gDisplayListHead) # $a1, 0x8015
/* 0487C0 80047BC0 24A50298 */  addiu $a1, %lo(gDisplayListHead) # addiu $a1, $a1, 0x298
/* 0487C4 80047BC4 8CA30000 */  lw    $v1, ($a1)
/* 0487C8 80047BC8 3C190D00 */  lui   $t9, %hi(D_0D007DB8) # $t9, 0xd00
/* 0487CC 80047BCC 27397DB8 */  addiu $t9, %lo(D_0D007DB8) # addiu $t9, $t9, 0x7db8
/* 0487D0 80047BD0 246F0008 */  addiu $t7, $v1, 8
/* 0487D4 80047BD4 ACAF0000 */  sw    $t7, ($a1)
/* 0487D8 80047BD8 3C180600 */  lui   $t8, 0x600
/* 0487DC 80047BDC AC780000 */  sw    $t8, ($v1)
/* 0487E0 80047BE0 AC790004 */  sw    $t9, 4($v1)
/* 0487E4 80047BE4 0C012CAF */  jal   func_8004B2BC
/* 0487E8 80047BE8 8FA40038 */   lw    $a0, 0x38($sp)
/* 0487EC 80047BEC 8FA8004C */  lw    $t0, 0x4c($sp)
/* 0487F0 80047BF0 8FA90050 */  lw    $t1, 0x50($sp)
/* 0487F4 80047BF4 8FAA0054 */  lw    $t2, 0x54($sp)
/* 0487F8 80047BF8 8FA4003C */  lw    $a0, 0x3c($sp)
/* 0487FC 80047BFC 8FA50040 */  lw    $a1, 0x40($sp)
/* 048800 80047C00 8FA60044 */  lw    $a2, 0x44($sp)
/* 048804 80047C04 8FA70048 */  lw    $a3, 0x48($sp)
/* 048808 80047C08 AFA80010 */  sw    $t0, 0x10($sp)
/* 04880C 80047C0C AFA90014 */  sw    $t1, 0x14($sp)
/* 048810 80047C10 0C011C1A */  jal   func_80047068
/* 048814 80047C14 AFAA0018 */   sw    $t2, 0x18($sp)
/* 048818 80047C18 8FBF0024 */  lw    $ra, 0x24($sp)
/* 04881C 80047C1C 27BD0028 */  addiu $sp, $sp, 0x28
/* 048820 80047C20 03E00008 */  jr    $ra
/* 048824 80047C24 00000000 */   nop   

/* 048828 80047C28 44876000 */  mtc1  $a3, $f12
/* 04882C 80047C2C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 048830 80047C30 AFBF0024 */  sw    $ra, 0x24($sp)
/* 048834 80047C34 AFA60030 */  sw    $a2, 0x30($sp)
/* 048838 80047C38 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04883C 80047C3C 44076000 */  mfc1  $a3, $f12
/* 048840 80047C40 0C0108CC */  jal   func_80042330
/* 048844 80047C44 01C03025 */   move  $a2, $t6
/* 048848 80047C48 3C058015 */  lui   $a1, %hi(gDisplayListHead) # $a1, 0x8015
/* 04884C 80047C4C 24A50298 */  addiu $a1, %lo(gDisplayListHead) # addiu $a1, $a1, 0x298
/* 048850 80047C50 8CA30000 */  lw    $v1, ($a1)
/* 048854 80047C54 3C190D00 */  lui   $t9, %hi(D_0D007DD8) # $t9, 0xd00
/* 048858 80047C58 27397DD8 */  addiu $t9, %lo(D_0D007DD8) # addiu $t9, $t9, 0x7dd8
/* 04885C 80047C5C 246F0008 */  addiu $t7, $v1, 8
/* 048860 80047C60 ACAF0000 */  sw    $t7, ($a1)
/* 048864 80047C64 3C180600 */  lui   $t8, 0x600
/* 048868 80047C68 AC780000 */  sw    $t8, ($v1)
/* 04886C 80047C6C AC790004 */  sw    $t9, 4($v1)
/* 048870 80047C70 0C012CAF */  jal   func_8004B2BC
/* 048874 80047C74 8FA40038 */   lw    $a0, 0x38($sp)
/* 048878 80047C78 8FA8004C */  lw    $t0, 0x4c($sp)
/* 04887C 80047C7C 8FA90050 */  lw    $t1, 0x50($sp)
/* 048880 80047C80 8FAA0054 */  lw    $t2, 0x54($sp)
/* 048884 80047C84 8FA4003C */  lw    $a0, 0x3c($sp)
/* 048888 80047C88 8FA50040 */  lw    $a1, 0x40($sp)
/* 04888C 80047C8C 8FA60044 */  lw    $a2, 0x44($sp)
/* 048890 80047C90 8FA70048 */  lw    $a3, 0x48($sp)
/* 048894 80047C94 AFA80010 */  sw    $t0, 0x10($sp)
/* 048898 80047C98 AFA90014 */  sw    $t1, 0x14($sp)
/* 04889C 80047C9C 0C011C9C */  jal   func_80047270
/* 0488A0 80047CA0 AFAA0018 */   sw    $t2, 0x18($sp)
/* 0488A4 80047CA4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0488A8 80047CA8 27BD0028 */  addiu $sp, $sp, 0x28
/* 0488AC 80047CAC 03E00008 */  jr    $ra
/* 0488B0 80047CB0 00000000 */   nop   
