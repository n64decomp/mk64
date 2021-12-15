glabel func_800A8F48
/* 0A9B48 800A8F48 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0A9B4C 800A8F4C 3C028019 */  lui   $v0, %hi(D_8018EDEC) # $v0, 0x8019
/* 0A9B50 800A8F50 8042EDEC */  lb    $v0, %lo(D_8018EDEC)($v0)
/* 0A9B54 800A8F54 24010001 */  li    $at, 1
/* 0A9B58 800A8F58 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0A9B5C 800A8F5C AFB70038 */  sw    $s7, 0x38($sp)
/* 0A9B60 800A8F60 AFB60034 */  sw    $s6, 0x34($sp)
/* 0A9B64 800A8F64 AFB50030 */  sw    $s5, 0x30($sp)
/* 0A9B68 800A8F68 AFB4002C */  sw    $s4, 0x2c($sp)
/* 0A9B6C 800A8F6C AFB30028 */  sw    $s3, 0x28($sp)
/* 0A9B70 800A8F70 AFB20024 */  sw    $s2, 0x24($sp)
/* 0A9B74 800A8F74 AFB10020 */  sw    $s1, 0x20($sp)
/* 0A9B78 800A8F78 AFB0001C */  sw    $s0, 0x1c($sp)
/* 0A9B7C 800A8F7C 10410006 */  beq   $v0, $at, .L800A8F98
/* 0A9B80 800A8F80 AFA40040 */   sw    $a0, 0x40($sp)
/* 0A9B84 800A8F84 24010002 */  li    $at, 2
/* 0A9B88 800A8F88 1041002E */  beq   $v0, $at, .L800A9044
/* 0A9B8C 800A8F8C 3C148019 */   lui   $s4, %hi(gCupSelection) # 0x8019
/* 0A9B90 800A8F90 1000002C */  b     .L800A9044
/* 0A9B94 800A8F94 00000000 */   nop   
.L800A8F98:
/* 0A9B98 800A8F98 3C16800E */  lui   $s6, %hi(D_800E7168) # $s6, 0x800e
/* 0A9B9C 800A8F9C 3C150200 */  lui   $s5, %hi(D_02004A0C) # $s5, 0x200
/* 0A9BA0 800A8FA0 3C148019 */  lui   $s4, %hi(gCupSelection) # $s4, 0x8019
/* 0A9BA4 800A8FA4 3C138015 */  lui   $s3, %hi(gDisplayListHead) # $s3, 0x8015
/* 0A9BA8 800A8FA8 26730298 */  addiu $s3, %lo(gDisplayListHead) # addiu $s3, $s3, 0x298
/* 0A9BAC 800A8FAC 2694EE09 */  addiu $s4, %lo(gCupSelection) # addiu $s4, $s4, -0x11f7
/* 0A9BB0 800A8FB0 26B54A0C */  addiu $s5, %lo(D_02004A0C) # addiu $s5, $s5, 0x4a0c
/* 0A9BB4 800A8FB4 26D67168 */  addiu $s6, %lo(D_800E7168) # addiu $s6, $s6, 0x7168
/* 0A9BB8 800A8FB8 00008825 */  move  $s1, $zero
/* 0A9BBC 800A8FBC 24170004 */  li    $s7, 4
/* 0A9BC0 800A8FC0 828E0000 */  lb    $t6, ($s4)
.L800A8FC4:
/* 0A9BC4 800A8FC4 000E7880 */  sll   $t7, $t6, 2
/* 0A9BC8 800A8FC8 0C02D8E7 */  jal   func_800B639C
/* 0A9BCC 800A8FCC 01F12021 */   addu  $a0, $t7, $s1
/* 0A9BD0 800A8FD0 04400017 */  bltz  $v0, .L800A9030
/* 0A9BD4 800A8FD4 0011C0C0 */   sll   $t8, $s1, 3
/* 0A9BD8 800A8FD8 02D81021 */  addu  $v0, $s6, $t8
/* 0A9BDC 800A8FDC 84430000 */  lh    $v1, ($v0)
/* 0A9BE0 800A8FE0 84500002 */  lh    $s0, 2($v0)
/* 0A9BE4 800A8FE4 8E640000 */  lw    $a0, ($s3)
/* 0A9BE8 800A8FE8 24720020 */  addiu $s2, $v1, 0x20
/* 0A9BEC 800A8FEC 26190009 */  addiu $t9, $s0, 9
/* 0A9BF0 800A8FF0 AFB90010 */  sw    $t9, 0x10($sp)
/* 0A9BF4 800A8FF4 02402825 */  move  $a1, $s2
/* 0A9BF8 800A8FF8 2467003F */  addiu $a3, $v1, 0x3f
/* 0A9BFC 800A8FFC 0C0263F2 */  jal   func_80098FC8
/* 0A9C00 800A9000 02003025 */   move  $a2, $s0
/* 0A9C04 800A9004 AE620000 */  sw    $v0, ($s3)
/* 0A9C08 800A9008 0C026449 */  jal   segmented_to_virtual
/* 0A9C0C 800A900C 02A02025 */   move  $a0, $s5
/* 0A9C10 800A9010 24080002 */  li    $t0, 2
/* 0A9C14 800A9014 AFA80010 */  sw    $t0, 0x10($sp)
/* 0A9C18 800A9018 8E640000 */  lw    $a0, ($s3)
/* 0A9C1C 800A901C 00402825 */  move  $a1, $v0
/* 0A9C20 800A9020 02403025 */  move  $a2, $s2
/* 0A9C24 800A9024 0C027081 */  jal   func_8009C204
/* 0A9C28 800A9028 02003825 */   move  $a3, $s0
/* 0A9C2C 800A902C AE620000 */  sw    $v0, ($s3)
.L800A9030:
/* 0A9C30 800A9030 26310001 */  addiu $s1, $s1, 1
/* 0A9C34 800A9034 5637FFE3 */  bnel  $s1, $s7, .L800A8FC4
/* 0A9C38 800A9038 828E0000 */   lb    $t6, ($s4)
/* 0A9C3C 800A903C 1000001B */  b     .L800A90AC
/* 0A9C40 800A9040 8FBF003C */   lw    $ra, 0x3c($sp)
.L800A9044:
/* 0A9C44 800A9044 2694EE09 */  addiu $s4, $s4, %lo(gCupSelection) # -0x11f7
/* 0A9C48 800A9048 82890000 */  lb    $t1, ($s4)
/* 0A9C4C 800A904C 3C0B8019 */  lui   $t3, %hi(gCupCourseSelection) # $t3, 0x8019
/* 0A9C50 800A9050 816BEE0B */  lb    $t3, %lo(gCupCourseSelection)($t3)
/* 0A9C54 800A9054 00095080 */  sll   $t2, $t1, 2
/* 0A9C58 800A9058 0C02D8E7 */  jal   func_800B639C
/* 0A9C5C 800A905C 014B2021 */   addu  $a0, $t2, $t3
/* 0A9C60 800A9060 04400011 */  bltz  $v0, .L800A90A8
/* 0A9C64 800A9064 3C138015 */   lui   $s3, %hi(gDisplayListHead) # $s3, 0x8015
/* 0A9C68 800A9068 26730298 */  addiu $s3, %lo(gDisplayListHead) # addiu $s3, $s3, 0x298
/* 0A9C6C 800A906C 240C0081 */  li    $t4, 129
/* 0A9C70 800A9070 AFAC0010 */  sw    $t4, 0x10($sp)
/* 0A9C74 800A9074 8E640000 */  lw    $a0, ($s3)
/* 0A9C78 800A9078 24050057 */  li    $a1, 87
/* 0A9C7C 800A907C 24060070 */  li    $a2, 112
/* 0A9C80 800A9080 0C0263F2 */  jal   func_80098FC8
/* 0A9C84 800A9084 24070096 */   li    $a3, 150
/* 0A9C88 800A9088 3C150200 */  lui   $s5, 0x200
/* 0A9C8C 800A908C 26A54A0C */  addiu $a1, $s5, 0x4a0c
/* 0A9C90 800A9090 AE620000 */  sw    $v0, ($s3)
/* 0A9C94 800A9094 00402025 */  move  $a0, $v0
/* 0A9C98 800A9098 24060057 */  li    $a2, 87
/* 0A9C9C 800A909C 0C026E9D */  jal   func_8009BA74
/* 0A9CA0 800A90A0 24070070 */   li    $a3, 112
/* 0A9CA4 800A90A4 AE620000 */  sw    $v0, ($s3)
.L800A90A8:
/* 0A9CA8 800A90A8 8FBF003C */  lw    $ra, 0x3c($sp)
.L800A90AC:
/* 0A9CAC 800A90AC 8FB0001C */  lw    $s0, 0x1c($sp)
/* 0A9CB0 800A90B0 8FB10020 */  lw    $s1, 0x20($sp)
/* 0A9CB4 800A90B4 8FB20024 */  lw    $s2, 0x24($sp)
/* 0A9CB8 800A90B8 8FB30028 */  lw    $s3, 0x28($sp)
/* 0A9CBC 800A90BC 8FB4002C */  lw    $s4, 0x2c($sp)
/* 0A9CC0 800A90C0 8FB50030 */  lw    $s5, 0x30($sp)
/* 0A9CC4 800A90C4 8FB60034 */  lw    $s6, 0x34($sp)
/* 0A9CC8 800A90C8 8FB70038 */  lw    $s7, 0x38($sp)
/* 0A9CCC 800A90CC 03E00008 */  jr    $ra
/* 0A9CD0 800A90D0 27BD0040 */   addiu $sp, $sp, 0x40
