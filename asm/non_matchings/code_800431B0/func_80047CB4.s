glabel func_80047CB4
/* 0488B4 80047CB4 44876000 */  mtc1  $a3, $f12
/* 0488B8 80047CB8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0488BC 80047CBC AFBF0024 */  sw    $ra, 0x24($sp)
/* 0488C0 80047CC0 AFA60030 */  sw    $a2, 0x30($sp)
/* 0488C4 80047CC4 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 0488C8 80047CC8 44076000 */  mfc1  $a3, $f12
/* 0488CC 80047CCC 0C0108CC */  jal   func_80042330
/* 0488D0 80047CD0 01C03025 */   move  $a2, $t6
/* 0488D4 80047CD4 3C058015 */  lui   $a1, %hi(gDisplayListHead) # $a1, 0x8015
/* 0488D8 80047CD8 24A50298 */  addiu $a1, %lo(gDisplayListHead) # addiu $a1, $a1, 0x298
/* 0488DC 80047CDC 8CA30000 */  lw    $v1, ($a1)
/* 0488E0 80047CE0 3C190D00 */  lui   $t9, %hi(D_0D007E38) # $t9, 0xd00
/* 0488E4 80047CE4 27397E38 */  addiu $t9, %lo(D_0D007E38) # addiu $t9, $t9, 0x7e38
/* 0488E8 80047CE8 246F0008 */  addiu $t7, $v1, 8
/* 0488EC 80047CEC ACAF0000 */  sw    $t7, ($a1)
/* 0488F0 80047CF0 3C180600 */  lui   $t8, 0x600
/* 0488F4 80047CF4 AC780000 */  sw    $t8, ($v1)
/* 0488F8 80047CF8 AC790004 */  sw    $t9, 4($v1)
/* 0488FC 80047CFC 0C012CAF */  jal   func_8004B2BC
/* 048900 80047D00 8FA40038 */   lw    $a0, 0x38($sp)
/* 048904 80047D04 8FA8004C */  lw    $t0, 0x4c($sp)
/* 048908 80047D08 8FA90050 */  lw    $t1, 0x50($sp)
/* 04890C 80047D0C 8FAA0054 */  lw    $t2, 0x54($sp)
/* 048910 80047D10 8FA4003C */  lw    $a0, 0x3c($sp)
/* 048914 80047D14 8FA50040 */  lw    $a1, 0x40($sp)
/* 048918 80047D18 8FA60044 */  lw    $a2, 0x44($sp)
/* 04891C 80047D1C 8FA70048 */  lw    $a3, 0x48($sp)
/* 048920 80047D20 AFA80010 */  sw    $t0, 0x10($sp)
/* 048924 80047D24 AFA90014 */  sw    $t1, 0x14($sp)
/* 048928 80047D28 0C011C1A */  jal   func_80047068
/* 04892C 80047D2C AFAA0018 */   sw    $t2, 0x18($sp)
/* 048930 80047D30 8FBF0024 */  lw    $ra, 0x24($sp)
/* 048934 80047D34 27BD0028 */  addiu $sp, $sp, 0x28
/* 048938 80047D38 03E00008 */  jr    $ra
/* 04893C 80047D3C 00000000 */   nop   

/* 048940 80047D40 44876000 */  mtc1  $a3, $f12
/* 048944 80047D44 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 048948 80047D48 AFBF0024 */  sw    $ra, 0x24($sp)
/* 04894C 80047D4C AFA60030 */  sw    $a2, 0x30($sp)
/* 048950 80047D50 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 048954 80047D54 44076000 */  mfc1  $a3, $f12
/* 048958 80047D58 0C0108CC */  jal   func_80042330
/* 04895C 80047D5C 01C03025 */   move  $a2, $t6
/* 048960 80047D60 3C058015 */  lui   $a1, %hi(gDisplayListHead) # $a1, 0x8015
/* 048964 80047D64 24A50298 */  addiu $a1, %lo(gDisplayListHead) # addiu $a1, $a1, 0x298
/* 048968 80047D68 8CA30000 */  lw    $v1, ($a1)
/* 04896C 80047D6C 3C190D00 */  lui   $t9, %hi(D_0D007E58) # $t9, 0xd00
/* 048970 80047D70 27397E58 */  addiu $t9, %lo(D_0D007E58) # addiu $t9, $t9, 0x7e58
/* 048974 80047D74 246F0008 */  addiu $t7, $v1, 8
/* 048978 80047D78 ACAF0000 */  sw    $t7, ($a1)
/* 04897C 80047D7C 3C180600 */  lui   $t8, 0x600
/* 048980 80047D80 AC780000 */  sw    $t8, ($v1)
/* 048984 80047D84 AC790004 */  sw    $t9, 4($v1)
/* 048988 80047D88 0C012CAF */  jal   func_8004B2BC
/* 04898C 80047D8C 8FA40038 */   lw    $a0, 0x38($sp)
/* 048990 80047D90 8FA8004C */  lw    $t0, 0x4c($sp)
/* 048994 80047D94 8FA90050 */  lw    $t1, 0x50($sp)
/* 048998 80047D98 8FAA0054 */  lw    $t2, 0x54($sp)
/* 04899C 80047D9C 8FA4003C */  lw    $a0, 0x3c($sp)
/* 0489A0 80047DA0 8FA50040 */  lw    $a1, 0x40($sp)
/* 0489A4 80047DA4 8FA60044 */  lw    $a2, 0x44($sp)
/* 0489A8 80047DA8 8FA70048 */  lw    $a3, 0x48($sp)
/* 0489AC 80047DAC AFA80010 */  sw    $t0, 0x10($sp)
/* 0489B0 80047DB0 AFA90014 */  sw    $t1, 0x14($sp)
/* 0489B4 80047DB4 0C011C9C */  jal   func_80047270
/* 0489B8 80047DB8 AFAA0018 */   sw    $t2, 0x18($sp)
/* 0489BC 80047DBC 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0489C0 80047DC0 27BD0028 */  addiu $sp, $sp, 0x28
/* 0489C4 80047DC4 03E00008 */  jr    $ra
/* 0489C8 80047DC8 00000000 */   nop   

/* 0489CC 80047DCC 44866000 */  mtc1  $a2, $f12
/* 0489D0 80047DD0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0489D4 80047DD4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0489D8 80047DD8 44066000 */  mfc1  $a2, $f12
/* 0489DC 80047DDC 0C010B80 */  jal   func_80042E00
/* 0489E0 80047DE0 AFA70034 */   sw    $a3, 0x34($sp)
/* 0489E4 80047DE4 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 0489E8 80047DE8 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 0489EC 80047DEC 8D030000 */  lw    $v1, ($t0)
/* 0489F0 80047DF0 3C180D00 */  lui   $t8, %hi(D_0D007CB8) # $t8, 0xd00
/* 0489F4 80047DF4 27187CB8 */  addiu $t8, %lo(D_0D007CB8) # addiu $t8, $t8, 0x7cb8
/* 0489F8 80047DF8 246E0008 */  addiu $t6, $v1, 8
/* 0489FC 80047DFC AD0E0000 */  sw    $t6, ($t0)
/* 048A00 80047E00 3C0F0600 */  lui   $t7, 0x600
/* 048A04 80047E04 AC6F0000 */  sw    $t7, ($v1)
/* 048A08 80047E08 AC780004 */  sw    $t8, 4($v1)
/* 048A0C 80047E0C 8FAA004C */  lw    $t2, 0x4c($sp)
/* 048A10 80047E10 8FA90048 */  lw    $t1, 0x48($sp)
/* 048A14 80047E14 8FB90044 */  lw    $t9, 0x44($sp)
/* 048A18 80047E18 8FA70040 */  lw    $a3, 0x40($sp)
/* 048A1C 80047E1C 8FA6003C */  lw    $a2, 0x3c($sp)
/* 048A20 80047E20 8FA50038 */  lw    $a1, 0x38($sp)
/* 048A24 80047E24 8FA40034 */  lw    $a0, 0x34($sp)
/* 048A28 80047E28 AFAA0018 */  sw    $t2, 0x18($sp)
/* 048A2C 80047E2C AFA90014 */  sw    $t1, 0x14($sp)
/* 048A30 80047E30 0C011C1A */  jal   func_80047068
/* 048A34 80047E34 AFB90010 */   sw    $t9, 0x10($sp)
/* 048A38 80047E38 8FBF0024 */  lw    $ra, 0x24($sp)
/* 048A3C 80047E3C 27BD0028 */  addiu $sp, $sp, 0x28
/* 048A40 80047E40 03E00008 */  jr    $ra
/* 048A44 80047E44 00000000 */   nop   
