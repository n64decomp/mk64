glabel func_800B5404
/* 0B6004 800B5404 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0B6008 800B5408 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B600C 800B540C AFA5003C */  sw    $a1, 0x3c($sp)
/* 0B6010 800B5410 04800027 */  bltz  $a0, .L800B54B0
/* 0B6014 800B5414 00803025 */   move  $a2, $a0
/* 0B6018 800B5418 00A07025 */  move  $t6, $a1
/* 0B601C 800B541C 3C188019 */  lui   $t8, %hi(D_8018EB90) # $t8, 0x8019
/* 0B6020 800B5420 2718EB90 */  addiu $t8, %lo(D_8018EB90) # addiu $t8, $t8, -0x1470
/* 0B6024 800B5424 05C10003 */  bgez  $t6, .L800B5434
/* 0B6028 800B5428 000E2083 */   sra   $a0, $t6, 2
/* 0B602C 800B542C 25C10003 */  addiu $at, $t6, 3
/* 0B6030 800B5430 00012083 */  sra   $a0, $at, 2
.L800B5434:
/* 0B6034 800B5434 05C10004 */  bgez  $t6, .L800B5448
/* 0B6038 800B5438 31CF0003 */   andi  $t7, $t6, 3
/* 0B603C 800B543C 11E00002 */  beqz  $t7, .L800B5448
/* 0B6040 800B5440 00000000 */   nop   
/* 0B6044 800B5444 25EFFFFC */  addiu $t7, $t7, -4
.L800B5448:
/* 0B6048 800B5448 01F83821 */  addu  $a3, $t7, $t8
/* 0B604C 800B544C 90E50180 */  lbu   $a1, 0x180($a3)
/* 0B6050 800B5450 AFA7001C */  sw    $a3, 0x1c($sp)
/* 0B6054 800B5454 AFA40020 */  sw    $a0, 0x20($sp)
/* 0B6058 800B5458 0C02D53B */  jal   func_800B54EC
/* 0B605C 800B545C AFA60038 */   sw    $a2, 0x38($sp)
/* 0B6060 800B5460 8FA60038 */  lw    $a2, 0x38($sp)
/* 0B6064 800B5464 8FA40020 */  lw    $a0, 0x20($sp)
/* 0B6068 800B5468 8FA7001C */  lw    $a3, 0x1c($sp)
/* 0B606C 800B546C 28C10003 */  slti  $at, $a2, 3
/* 0B6070 800B5470 1020000F */  beqz  $at, .L800B54B0
/* 0B6074 800B5474 24190003 */   li    $t9, 3
/* 0B6078 800B5478 03261823 */  subu  $v1, $t9, $a2
/* 0B607C 800B547C 0043082A */  slt   $at, $v0, $v1
/* 0B6080 800B5480 1020000B */  beqz  $at, .L800B54B0
/* 0B6084 800B5484 AFA30030 */   sw    $v1, 0x30($sp)
/* 0B6088 800B5488 24E30180 */  addiu $v1, $a3, 0x180
/* 0B608C 800B548C 90650000 */  lbu   $a1, ($v1)
/* 0B6090 800B5490 AFA30018 */  sw    $v1, 0x18($sp)
/* 0B6094 800B5494 0C02D542 */  jal   func_800B5508
/* 0B6098 800B5498 8FA60030 */   lw    $a2, 0x30($sp)
/* 0B609C 800B549C 8FA30018 */  lw    $v1, 0x18($sp)
/* 0B60A0 800B54A0 0C02D19C */  jal   write_save_data_grand_prix_points_and_sound_mode
/* 0B60A4 800B54A4 A0620000 */   sb    $v0, ($v1)
/* 0B60A8 800B54A8 0C02D652 */  jal   update_save_data_backup
/* 0B60AC 800B54AC 00000000 */   nop   
.L800B54B0:
/* 0B60B0 800B54B0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B60B4 800B54B4 27BD0038 */  addiu $sp, $sp, 0x38
/* 0B60B8 800B54B8 03E00008 */  jr    $ra
/* 0B60BC 800B54BC 00000000 */   nop   
