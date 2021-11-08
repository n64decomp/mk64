glabel dma_copy_base_729a30
/* 099C00 80099000 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 099C04 80099004 AFBF0024 */  sw    $ra, 0x24($sp)
/* 099C08 80099008 AFA40048 */  sw    $a0, 0x48($sp)
/* 099C0C 8009900C AFA5004C */  sw    $a1, 0x4c($sp)
/* 099C10 80099010 AFA60050 */  sw    $a2, 0x50($sp)
/* 099C14 80099014 0C0336E0 */  jal   osInvalDCache
/* 099C18 80099018 00C02025 */   move  $a0, $a2
/* 099C1C 8009901C 8FAE0048 */  lw    $t6, 0x48($sp)
/* 099C20 80099020 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 099C24 80099024 8FB90050 */  lw    $t9, 0x50($sp)
/* 099C28 80099028 8FA8004C */  lw    $t0, 0x4c($sp)
/* 099C2C 8009902C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 099C30 80099030 3C180073 */  lui   $t8, %hi(_textures_0aSegmentRomStart) # $t8, 0x73
/* 099C34 80099034 3C098015 */  lui   $t1, %hi(gDmaMesgQueue) # $t1, 0x8015
/* 099C38 80099038 2529EF58 */  addiu $t1, %lo(gDmaMesgQueue) # addiu $t1, $t1, -0x10a8
/* 099C3C 8009903C 27189A30 */  addiu $t8, %lo(_textures_0aSegmentRomStart) # addiu $t8, $t8, -0x65d0
/* 099C40 80099040 01C17824 */  and   $t7, $t6, $at
/* 099C44 80099044 01F83821 */  addu  $a3, $t7, $t8
/* 099C48 80099048 AFA90018 */  sw    $t1, 0x18($sp)
/* 099C4C 8009904C 27A40030 */  addiu $a0, $sp, 0x30
/* 099C50 80099050 00002825 */  move  $a1, $zero
/* 099C54 80099054 00003025 */  move  $a2, $zero
/* 099C58 80099058 AFB90010 */  sw    $t9, 0x10($sp)
/* 099C5C 8009905C 0C03370C */  jal   osPiStartDma
/* 099C60 80099060 AFA80014 */   sw    $t0, 0x14($sp)
/* 099C64 80099064 3C048015 */  lui   $a0, %hi(gDmaMesgQueue) # $a0, 0x8015
/* 099C68 80099068 2484EF58 */  addiu $a0, %lo(gDmaMesgQueue) # addiu $a0, $a0, -0x10a8
/* 099C6C 8009906C 27A5002C */  addiu $a1, $sp, 0x2c
/* 099C70 80099070 0C0335D4 */  jal   osRecvMesg
/* 099C74 80099074 24060001 */   li    $a2, 1
/* 099C78 80099078 8FBF0024 */  lw    $ra, 0x24($sp)
/* 099C7C 8009907C 27BD0048 */  addiu $sp, $sp, 0x48
/* 099C80 80099080 03E00008 */  jr    $ra
/* 099C84 80099084 00000000 */   nop   
