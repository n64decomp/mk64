glabel func_8007C280
/* 07CE80 8007C280 3C028016 */  lui   $v0, %hi(D_801658BC) # $v0, 0x8016
/* 07CE84 8007C284 244258BC */  addiu $v0, %lo(D_801658BC) # addiu $v0, $v0, 0x58bc
/* 07CE88 8007C288 804E0000 */  lb    $t6, ($v0)
/* 07CE8C 8007C28C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 07CE90 8007C290 3C048018 */  lui   $a0, %hi(D_80183F28) # $a0, 0x8018
/* 07CE94 8007C294 24010001 */  li    $at, 1
/* 07CE98 8007C298 AFBF0014 */  sw    $ra, 0x14($sp)
/* 07CE9C 8007C29C 15C10006 */  bne   $t6, $at, .L8007C2B8
/* 07CEA0 8007C2A0 8C843F28 */   lw    $a0, %lo(D_80183F28)($a0)
/* 07CEA4 8007C2A4 A0400000 */  sb    $zero, ($v0)
/* 07CEA8 8007C2A8 00002825 */  move  $a1, $zero
/* 07CEAC 8007C2AC 0C01C8E9 */  jal   func_800723A4
/* 07CEB0 8007C2B0 AFA4001C */   sw    $a0, 0x1c($sp)
/* 07CEB4 8007C2B4 8FA4001C */  lw    $a0, 0x1c($sp)
.L8007C2B8:
/* 07CEB8 8007C2B8 000478C0 */  sll   $t7, $a0, 3
/* 07CEBC 8007C2BC 01E47823 */  subu  $t7, $t7, $a0
/* 07CEC0 8007C2C0 000F7940 */  sll   $t7, $t7, 5
/* 07CEC4 8007C2C4 3C188016 */  lui   $t8, %hi(D_80165CBE) # 0x8016
/* 07CEC8 8007C2C8 030FC021 */  addu  $t8, $t8, $t7
/* 07CECC 8007C2CC 87185CBE */  lh    $t8, %lo(D_80165CBE)($t8) # 0x5cbe($t8)
/* 07CED0 8007C2D0 53000006 */  beql  $t8, $zero, .L8007C2EC
/* 07CED4 8007C2D4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 07CED8 8007C2D8 0C01EFB2 */  jal   func_8007BEC8
/* 07CEDC 8007C2DC AFA4001C */   sw    $a0, 0x1c($sp)
/* 07CEE0 8007C2E0 0C01EFEC */  jal   func_8007BFB0
/* 07CEE4 8007C2E4 8FA4001C */   lw    $a0, 0x1c($sp)
/* 07CEE8 8007C2E8 8FBF0014 */  lw    $ra, 0x14($sp)
.L8007C2EC:
/* 07CEEC 8007C2EC 27BD0020 */  addiu $sp, $sp, 0x20
/* 07CEF0 8007C2F0 03E00008 */  jr    $ra
/* 07CEF4 8007C2F4 00000000 */   nop   
