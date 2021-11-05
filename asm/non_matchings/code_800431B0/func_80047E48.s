glabel func_80047E48
/* 048A48 80047E48 44866000 */  mtc1  $a2, $f12
/* 048A4C 80047E4C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 048A50 80047E50 AFBF0024 */  sw    $ra, 0x24($sp)
/* 048A54 80047E54 44066000 */  mfc1  $a2, $f12
/* 048A58 80047E58 0C010B80 */  jal   func_80042E00
/* 048A5C 80047E5C AFA70034 */   sw    $a3, 0x34($sp)
/* 048A60 80047E60 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 048A64 80047E64 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 048A68 80047E68 8D030000 */  lw    $v1, ($t0)
/* 048A6C 80047E6C 3C180D00 */  lui   $t8, %hi(D_0D007CD8) # $t8, 0xd00
/* 048A70 80047E70 27187CD8 */  addiu $t8, %lo(D_0D007CD8) # addiu $t8, $t8, 0x7cd8
/* 048A74 80047E74 246E0008 */  addiu $t6, $v1, 8
/* 048A78 80047E78 AD0E0000 */  sw    $t6, ($t0)
/* 048A7C 80047E7C 3C0F0600 */  lui   $t7, 0x600
/* 048A80 80047E80 AC6F0000 */  sw    $t7, ($v1)
/* 048A84 80047E84 AC780004 */  sw    $t8, 4($v1)
/* 048A88 80047E88 8FAA004C */  lw    $t2, 0x4c($sp)
/* 048A8C 80047E8C 8FA90048 */  lw    $t1, 0x48($sp)
/* 048A90 80047E90 8FB90044 */  lw    $t9, 0x44($sp)
/* 048A94 80047E94 8FA70040 */  lw    $a3, 0x40($sp)
/* 048A98 80047E98 8FA6003C */  lw    $a2, 0x3c($sp)
/* 048A9C 80047E9C 8FA50038 */  lw    $a1, 0x38($sp)
/* 048AA0 80047EA0 8FA40034 */  lw    $a0, 0x34($sp)
/* 048AA4 80047EA4 AFAA0018 */  sw    $t2, 0x18($sp)
/* 048AA8 80047EA8 AFA90014 */  sw    $t1, 0x14($sp)
/* 048AAC 80047EAC 0C011C9C */  jal   func_80047270
/* 048AB0 80047EB0 AFB90010 */   sw    $t9, 0x10($sp)
/* 048AB4 80047EB4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 048AB8 80047EB8 27BD0028 */  addiu $sp, $sp, 0x28
/* 048ABC 80047EBC 03E00008 */  jr    $ra
/* 048AC0 80047EC0 00000000 */   nop   

/* 048AC4 80047EC4 44866000 */  mtc1  $a2, $f12
/* 048AC8 80047EC8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 048ACC 80047ECC AFBF0024 */  sw    $ra, 0x24($sp)
/* 048AD0 80047ED0 44066000 */  mfc1  $a2, $f12
/* 048AD4 80047ED4 0C010B80 */  jal   func_80042E00
/* 048AD8 80047ED8 AFA70034 */   sw    $a3, 0x34($sp)
/* 048ADC 80047EDC 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 048AE0 80047EE0 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 048AE4 80047EE4 8D030000 */  lw    $v1, ($t0)
/* 048AE8 80047EE8 3C180D00 */  lui   $t8, %hi(D_0D007D18) # $t8, 0xd00
/* 048AEC 80047EEC 27187D18 */  addiu $t8, %lo(D_0D007D18) # addiu $t8, $t8, 0x7d18
/* 048AF0 80047EF0 246E0008 */  addiu $t6, $v1, 8
/* 048AF4 80047EF4 AD0E0000 */  sw    $t6, ($t0)
/* 048AF8 80047EF8 3C0F0600 */  lui   $t7, 0x600
/* 048AFC 80047EFC AC6F0000 */  sw    $t7, ($v1)
/* 048B00 80047F00 AC780004 */  sw    $t8, 4($v1)
/* 048B04 80047F04 8FAA004C */  lw    $t2, 0x4c($sp)
/* 048B08 80047F08 8FA90048 */  lw    $t1, 0x48($sp)
/* 048B0C 80047F0C 8FB90044 */  lw    $t9, 0x44($sp)
/* 048B10 80047F10 8FA70040 */  lw    $a3, 0x40($sp)
/* 048B14 80047F14 8FA6003C */  lw    $a2, 0x3c($sp)
/* 048B18 80047F18 8FA50038 */  lw    $a1, 0x38($sp)
/* 048B1C 80047F1C 8FA40034 */  lw    $a0, 0x34($sp)
/* 048B20 80047F20 AFAA0018 */  sw    $t2, 0x18($sp)
/* 048B24 80047F24 AFA90014 */  sw    $t1, 0x14($sp)
/* 048B28 80047F28 0C011C1A */  jal   func_80047068
/* 048B2C 80047F2C AFB90010 */   sw    $t9, 0x10($sp)
/* 048B30 80047F30 8FBF0024 */  lw    $ra, 0x24($sp)
/* 048B34 80047F34 27BD0028 */  addiu $sp, $sp, 0x28
/* 048B38 80047F38 03E00008 */  jr    $ra
/* 048B3C 80047F3C 00000000 */   nop   
