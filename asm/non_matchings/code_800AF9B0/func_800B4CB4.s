glabel validate_save_data
/* 0B58B4 800B4CB4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B58B8 800B4CB8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B58BC 800B4CBC 0C02D24B */  jal   compute_save_data_checksum_1
/* 0B58C0 800B4CC0 00000000 */   nop   
/* 0B58C4 800B4CC4 3C0E8019 */  lui   $t6, %hi(D_8018ED16) # $t6, 0x8019
/* 0B58C8 800B4CC8 91CEED16 */  lbu   $t6, %lo(D_8018ED16)($t6)
/* 0B58CC 800B4CCC 15C20007 */  bne   $t6, $v0, .L800B4CEC
/* 0B58D0 800B4CD0 00000000 */   nop   
/* 0B58D4 800B4CD4 0C02D279 */  jal   compute_save_data_checksum_2
/* 0B58D8 800B4CD8 00000000 */   nop   
/* 0B58DC 800B4CDC 3C0F8019 */  lui   $t7, %hi(D_8018ED17) # $t7, 0x8019
/* 0B58E0 800B4CE0 91EFED17 */  lbu   $t7, %lo(D_8018ED17)($t7)
/* 0B58E4 800B4CE4 11E2002F */  beq   $t7, $v0, .L800B4DA4
/* 0B58E8 800B4CE8 00000000 */   nop   
.L800B4CEC:
/* 0B58EC 800B4CEC 0C02D208 */  jal   reset_save_data_grand_prix_points_and_sound_mode
/* 0B58F0 800B4CF0 00000000 */   nop   
/* 0B58F4 800B4CF4 0C02D6B6 */  jal   validate_save_data_checksum_backup
/* 0B58F8 800B4CF8 00000000 */   nop   
/* 0B58FC 800B4CFC 14400025 */  bnez  $v0, .L800B4D94
/* 0B5900 800B4D00 3C188019 */   lui   $t8, %hi(D_8018ED88) # $t8, 0x8019
/* 0B5904 800B4D04 9318ED88 */  lbu   $t8, %lo(D_8018ED88)($t8)
/* 0B5908 800B4D08 3C018019 */  lui   $at, %hi(D_8018ED10) # $at, 0x8019
/* 0B590C 800B4D0C 3C198019 */  lui   $t9, %hi(D_8018ED89) # $t9, 0x8019
/* 0B5910 800B4D10 A038ED10 */  sb    $t8, %lo(D_8018ED10)($at)
/* 0B5914 800B4D14 9339ED89 */  lbu   $t9, %lo(D_8018ED89)($t9)
/* 0B5918 800B4D18 3C018019 */  lui   $at, %hi(D_8018ED11) # $at, 0x8019
/* 0B591C 800B4D1C 3C088019 */  lui   $t0, %hi(D_8018ED8A) # $t0, 0x8019
/* 0B5920 800B4D20 A039ED11 */  sb    $t9, %lo(D_8018ED11)($at)
/* 0B5924 800B4D24 9108ED8A */  lbu   $t0, %lo(D_8018ED8A)($t0)
/* 0B5928 800B4D28 3C018019 */  lui   $at, %hi(D_8018ED12) # $at, 0x8019
/* 0B592C 800B4D2C 3C098019 */  lui   $t1, %hi(D_8018ED8B) # $t1, 0x8019
/* 0B5930 800B4D30 A028ED12 */  sb    $t0, %lo(D_8018ED12)($at)
/* 0B5934 800B4D34 9129ED8B */  lbu   $t1, %lo(D_8018ED8B)($t1)
/* 0B5938 800B4D38 3C018019 */  lui   $at, %hi(D_8018ED13) # $at, 0x8019
/* 0B593C 800B4D3C 3C0A8019 */  lui   $t2, %hi(gSaveDataSoundModeBackup) # $t2, 0x8019
/* 0B5940 800B4D40 A029ED13 */  sb    $t1, %lo(D_8018ED13)($at)
/* 0B5944 800B4D44 914AED8C */  lbu   $t2, %lo(gSaveDataSoundModeBackup)($t2)
/* 0B5948 800B4D48 3C018019 */  lui   $at, %hi(gSaveDataSoundMode) # $at, 0x8019
/* 0B594C 800B4D4C 0C02D67D */  jal   compute_save_data_checksum_backup_1
/* 0B5950 800B4D50 A02AED14 */   sb    $t2, %lo(gSaveDataSoundMode)($at)
/* 0B5954 800B4D54 3C018019 */  lui   $at, %hi(D_8018ED16) # $at, 0x8019
/* 0B5958 800B4D58 0C02D6AB */  jal   compute_save_data_checksum_backup_2
/* 0B595C 800B4D5C A022ED16 */   sb    $v0, %lo(D_8018ED16)($at)
/* 0B5960 800B4D60 3C068019 */  lui   $a2, %hi(D_8018ED10) # $a2, 0x8019
/* 0B5964 800B4D64 3C0B8019 */  lui   $t3, %hi(D_8018EB90) # $t3, 0x8019
/* 0B5968 800B4D68 24C6ED10 */  addiu $a2, %lo(D_8018ED10) # addiu $a2, $a2, -0x12f0
/* 0B596C 800B4D6C 256BEB90 */  addiu $t3, %lo(D_8018EB90) # addiu $t3, $t3, -0x1470
/* 0B5970 800B4D70 00CB2823 */  subu  $a1, $a2, $t3
/* 0B5974 800B4D74 3C018019 */  lui   $at, %hi(D_8018ED17) # $at, 0x8019
/* 0B5978 800B4D78 000560C2 */  srl   $t4, $a1, 3
/* 0B597C 800B4D7C 3C048015 */  lui   $a0, %hi(gSIEventMesgQueue) # $a0, 0x8015
/* 0B5980 800B4D80 A022ED17 */  sb    $v0, %lo(D_8018ED17)($at)
/* 0B5984 800B4D84 2484F0B8 */  addiu $a0, %lo(gSIEventMesgQueue) # addiu $a0, $a0, -0xf48
/* 0B5988 800B4D88 318500FF */  andi  $a1, $t4, 0xff
/* 0B598C 800B4D8C 0C034014 */  jal   osEepromLongWrite
/* 0B5990 800B4D90 24070008 */   li    $a3, 8
.L800B4D94:
/* 0B5994 800B4D94 0C02D652 */  jal   update_save_data_backup
/* 0B5998 800B4D98 00000000 */   nop   
/* 0B599C 800B4D9C 10000008 */  b     .L800B4DC0
/* 0B59A0 800B4DA0 8FBF0014 */   lw    $ra, 0x14($sp)
.L800B4DA4:
/* 0B59A4 800B4DA4 0C02D6B6 */  jal   validate_save_data_checksum_backup
/* 0B59A8 800B4DA8 00000000 */   nop   
/* 0B59AC 800B4DAC 50400004 */  beql  $v0, $zero, .L800B4DC0
/* 0B59B0 800B4DB0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0B59B4 800B4DB4 0C02D652 */  jal   update_save_data_backup
/* 0B59B8 800B4DB8 00000000 */   nop   
/* 0B59BC 800B4DBC 8FBF0014 */  lw    $ra, 0x14($sp)
.L800B4DC0:
/* 0B59C0 800B4DC0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B59C4 800B4DC4 03E00008 */  jr    $ra
/* 0B59C8 800B4DC8 00000000 */   nop   
