glabel func_800B536C
/* 0B5F6C 800B536C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0B5F70 800B5370 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B5F74 800B5374 0480001F */  bltz  $a0, .L800B53F4
/* 0B5F78 800B5378 00803025 */   move  $a2, $a0
/* 0B5F7C 800B537C 3C0E800E */  lui   $t6, %hi(gCCSelection) # $t6, 0x800e
/* 0B5F80 800B5380 8DCEC548 */  lw    $t6, %lo(gCCSelection)($t6)
/* 0B5F84 800B5384 3C188019 */  lui   $t8, %hi(D_8018EB90) # $t8, 0x8019
/* 0B5F88 800B5388 2718EB90 */  addiu $t8, %lo(D_8018EB90) # addiu $t8, $t8, -0x1470
/* 0B5F8C 800B538C 25CF0180 */  addiu $t7, $t6, 0x180
/* 0B5F90 800B5390 01F81021 */  addu  $v0, $t7, $t8
/* 0B5F94 800B5394 90450000 */  lbu   $a1, ($v0)
/* 0B5F98 800B5398 3C048019 */  lui   $a0, %hi(gCupSelection) # $a0, 0x8019
/* 0B5F9C 800B539C 8084EE09 */  lb    $a0, %lo(gCupSelection)($a0)
/* 0B5FA0 800B53A0 AFA60020 */  sw    $a2, 0x20($sp)
/* 0B5FA4 800B53A4 0C02D53B */  jal   func_800B54EC
/* 0B5FA8 800B53A8 AFA2001C */   sw    $v0, 0x1c($sp)
/* 0B5FAC 800B53AC 8FA60020 */  lw    $a2, 0x20($sp)
/* 0B5FB0 800B53B0 24190003 */  li    $t9, 3
/* 0B5FB4 800B53B4 28C10003 */  slti  $at, $a2, 3
/* 0B5FB8 800B53B8 1020000E */  beqz  $at, .L800B53F4
/* 0B5FBC 800B53BC 03261823 */   subu  $v1, $t9, $a2
/* 0B5FC0 800B53C0 0043082A */  slt   $at, $v0, $v1
/* 0B5FC4 800B53C4 1020000B */  beqz  $at, .L800B53F4
/* 0B5FC8 800B53C8 3C048019 */   lui   $a0, %hi(gCupSelection) # $a0, 0x8019
/* 0B5FCC 800B53CC 8FA8001C */  lw    $t0, 0x1c($sp)
/* 0B5FD0 800B53D0 8084EE09 */  lb    $a0, %lo(gCupSelection)($a0)
/* 0B5FD4 800B53D4 00603025 */  move  $a2, $v1
/* 0B5FD8 800B53D8 0C02D542 */  jal   func_800B5508
/* 0B5FDC 800B53DC 91050000 */   lbu   $a1, ($t0)
/* 0B5FE0 800B53E0 8FA9001C */  lw    $t1, 0x1c($sp)
/* 0B5FE4 800B53E4 0C02D19C */  jal   func_800B4670
/* 0B5FE8 800B53E8 A1220000 */   sb    $v0, ($t1)
/* 0B5FEC 800B53EC 0C02D652 */  jal   func_800B5948
/* 0B5FF0 800B53F0 00000000 */   nop   
.L800B53F4:
/* 0B5FF4 800B53F4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B5FF8 800B53F8 27BD0020 */  addiu $sp, $sp, 0x20
/* 0B5FFC 800B53FC 03E00008 */  jr    $ra
/* 0B6000 800B5400 00000000 */   nop   
