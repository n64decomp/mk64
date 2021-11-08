glabel dma_copy_base_7fa3c0
/* 099C88 80099088 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 099C8C 8009908C AFBF0024 */  sw    $ra, 0x24($sp)
/* 099C90 80099090 AFA40048 */  sw    $a0, 0x48($sp)
/* 099C94 80099094 AFA5004C */  sw    $a1, 0x4c($sp)
/* 099C98 80099098 AFA60050 */  sw    $a2, 0x50($sp)
/* 099C9C 8009909C 0C0336E0 */  jal   osInvalDCache
/* 099CA0 800990A0 00C02025 */   move  $a0, $a2
/* 099CA4 800990A4 8FAE0048 */  lw    $t6, 0x48($sp)
/* 099CA8 800990A8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 099CAC 800990AC 8FB90050 */  lw    $t9, 0x50($sp)
/* 099CB0 800990B0 8FA8004C */  lw    $t0, 0x4c($sp)
/* 099CB4 800990B4 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 099CB8 800990B8 3C180080 */  lui   $t8, %hi(_textures_0bSegmentRomStart) # $t8, 0x80
/* 099CBC 800990BC 3C098015 */  lui   $t1, %hi(gDmaMesgQueue) # $t1, 0x8015
/* 099CC0 800990C0 2529EF58 */  addiu $t1, %lo(gDmaMesgQueue) # addiu $t1, $t1, -0x10a8
/* 099CC4 800990C4 2718A3C0 */  addiu $t8, %lo(_textures_0bSegmentRomStart) # addiu $t8, $t8, -0x5c40
/* 099CC8 800990C8 01C17824 */  and   $t7, $t6, $at
/* 099CCC 800990CC 01F83821 */  addu  $a3, $t7, $t8
/* 099CD0 800990D0 AFA90018 */  sw    $t1, 0x18($sp)
/* 099CD4 800990D4 27A40030 */  addiu $a0, $sp, 0x30
/* 099CD8 800990D8 00002825 */  move  $a1, $zero
/* 099CDC 800990DC 00003025 */  move  $a2, $zero
/* 099CE0 800990E0 AFB90010 */  sw    $t9, 0x10($sp)
/* 099CE4 800990E4 0C03370C */  jal   osPiStartDma
/* 099CE8 800990E8 AFA80014 */   sw    $t0, 0x14($sp)
/* 099CEC 800990EC 3C048015 */  lui   $a0, %hi(gDmaMesgQueue) # $a0, 0x8015
/* 099CF0 800990F0 2484EF58 */  addiu $a0, %lo(gDmaMesgQueue) # addiu $a0, $a0, -0x10a8
/* 099CF4 800990F4 27A5002C */  addiu $a1, $sp, 0x2c
/* 099CF8 800990F8 0C0335D4 */  jal   osRecvMesg
/* 099CFC 800990FC 24060001 */   li    $a2, 1
/* 099D00 80099100 8FBF0024 */  lw    $ra, 0x24($sp)
/* 099D04 80099104 27BD0048 */  addiu $sp, $sp, 0x48
/* 099D08 80099108 03E00008 */  jr    $ra
/* 099D0C 8009910C 00000000 */   nop   
