glabel update_save_data_backup
/* 0B6548 800B5948 3C0E8019 */  lui   $t6, %hi(D_8018ED10) # $t6, 0x8019
/* 0B654C 800B594C 91CEED10 */  lbu   $t6, %lo(D_8018ED10)($t6)
/* 0B6550 800B5950 3C018019 */  lui   $at, %hi(D_8018ED88) # $at, 0x8019
/* 0B6554 800B5954 3C0F8019 */  lui   $t7, %hi(D_8018ED11) # $t7, 0x8019
/* 0B6558 800B5958 A02EED88 */  sb    $t6, %lo(D_8018ED88)($at)
/* 0B655C 800B595C 91EFED11 */  lbu   $t7, %lo(D_8018ED11)($t7)
/* 0B6560 800B5960 3C018019 */  lui   $at, %hi(D_8018ED89) # $at, 0x8019
/* 0B6564 800B5964 3C188019 */  lui   $t8, %hi(D_8018ED12) # $t8, 0x8019
/* 0B6568 800B5968 A02FED89 */  sb    $t7, %lo(D_8018ED89)($at)
/* 0B656C 800B596C 9318ED12 */  lbu   $t8, %lo(D_8018ED12)($t8)
/* 0B6570 800B5970 3C018019 */  lui   $at, %hi(D_8018ED8A) # $at, 0x8019
/* 0B6574 800B5974 3C198019 */  lui   $t9, %hi(D_8018ED13) # $t9, 0x8019
/* 0B6578 800B5978 A038ED8A */  sb    $t8, %lo(D_8018ED8A)($at)
/* 0B657C 800B597C 9339ED13 */  lbu   $t9, %lo(D_8018ED13)($t9)
/* 0B6580 800B5980 3C018019 */  lui   $at, %hi(D_8018ED8B) # $at, 0x8019
/* 0B6584 800B5984 3C088019 */  lui   $t0, %hi(gSaveDataSoundMode) # $t0, 0x8019
/* 0B6588 800B5988 A039ED8B */  sb    $t9, %lo(D_8018ED8B)($at)
/* 0B658C 800B598C 9108ED14 */  lbu   $t0, %lo(gSaveDataSoundMode)($t0)
/* 0B6590 800B5990 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B6594 800B5994 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B6598 800B5998 3C018019 */  lui   $at, %hi(gSaveDataSoundModeBackup) # $at, 0x8019
/* 0B659C 800B599C 0C02D67D */  jal   compute_save_data_checksum_backup_1
/* 0B65A0 800B59A0 A028ED8C */   sb    $t0, %lo(gSaveDataSoundModeBackup)($at)
/* 0B65A4 800B59A4 3C018019 */  lui   $at, %hi(D_8018ED8E) # $at, 0x8019
/* 0B65A8 800B59A8 0C02D6AB */  jal   compute_save_data_checksum_backup_2
/* 0B65AC 800B59AC A022ED8E */   sb    $v0, %lo(D_8018ED8E)($at)
/* 0B65B0 800B59B0 3C068019 */  lui   $a2, %hi(D_8018ED88) # $a2, 0x8019
/* 0B65B4 800B59B4 3C098019 */  lui   $t1, %hi(D_8018EB90) # $t1, 0x8019
/* 0B65B8 800B59B8 24C6ED88 */  addiu $a2, %lo(D_8018ED88) # addiu $a2, $a2, -0x1278
/* 0B65BC 800B59BC 2529EB90 */  addiu $t1, %lo(D_8018EB90) # addiu $t1, $t1, -0x1470
/* 0B65C0 800B59C0 00C92823 */  subu  $a1, $a2, $t1
/* 0B65C4 800B59C4 3C018019 */  lui   $at, %hi(D_8018ED8F) # $at, 0x8019
/* 0B65C8 800B59C8 000550C2 */  srl   $t2, $a1, 3
/* 0B65CC 800B59CC 3C048015 */  lui   $a0, %hi(gSIEventMesgQueue) # $a0, 0x8015
/* 0B65D0 800B59D0 A022ED8F */  sb    $v0, %lo(D_8018ED8F)($at)
/* 0B65D4 800B59D4 2484F0B8 */  addiu $a0, %lo(gSIEventMesgQueue) # addiu $a0, $a0, -0xf48
/* 0B65D8 800B59D8 314500FF */  andi  $a1, $t2, 0xff
/* 0B65DC 800B59DC 0C034014 */  jal   osEepromLongWrite
/* 0B65E0 800B59E0 24070008 */   li    $a3, 8
/* 0B65E4 800B59E4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B65E8 800B59E8 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B65EC 800B59EC 03E00008 */  jr    $ra
/* 0B65F0 800B59F0 00000000 */   nop   
