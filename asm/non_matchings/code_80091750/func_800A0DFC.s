glabel func_800A0DFC
/* 0A19FC 800A0DFC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0A1A00 800A0E00 AFB40028 */  sw    $s4, 0x28($sp)
/* 0A1A04 800A0E04 AFB30024 */  sw    $s3, 0x24($sp)
/* 0A1A08 800A0E08 AFB00018 */  sw    $s0, 0x18($sp)
/* 0A1A0C 800A0E0C AFB20020 */  sw    $s2, 0x20($sp)
/* 0A1A10 800A0E10 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0A1A14 800A0E14 3C108019 */  lui   $s0, %hi(gControllerPakNumPagesFree) # $s0, 0x8019
/* 0A1A18 800A0E18 3C138015 */  lui   $s3, %hi(gDisplayListHead) # $s3, 0x8015
/* 0A1A1C 800A0E1C 3C14800E */  lui   $s4, %hi(D_800E7D0C) # $s4, 0x800e
/* 0A1A20 800A0E20 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0A1A24 800A0E24 8E10EB80 */  lw    $s0, %lo(gControllerPakNumPagesFree)($s0)
/* 0A1A28 800A0E28 24110110 */  li    $s1, 272
/* 0A1A2C 800A0E2C 26947D0C */  addiu $s4, %lo(D_800E7D0C) # addiu $s4, $s4, 0x7d0c
/* 0A1A30 800A0E30 26730298 */  addiu $s3, %lo(gDisplayListHead) # addiu $s3, $s3, 0x298
/* 0A1A34 800A0E34 2412000A */  li    $s2, 10
.L800A0E38:
/* 0A1A38 800A0E38 0212001A */  div   $zero, $s0, $s2
/* 0A1A3C 800A0E3C 00001010 */  mfhi  $v0
/* 0A1A40 800A0E40 00027080 */  sll   $t6, $v0, 2
/* 0A1A44 800A0E44 16400002 */  bnez  $s2, .L800A0E50
/* 0A1A48 800A0E48 00000000 */   nop   
/* 0A1A4C 800A0E4C 0007000D */  break 7
.L800A0E50:
/* 0A1A50 800A0E50 2401FFFF */  li    $at, -1
/* 0A1A54 800A0E54 16410004 */  bne   $s2, $at, .L800A0E68
/* 0A1A58 800A0E58 3C018000 */   lui   $at, 0x8000
/* 0A1A5C 800A0E5C 16010002 */  bne   $s0, $at, .L800A0E68
/* 0A1A60 800A0E60 00000000 */   nop   
/* 0A1A64 800A0E64 0006000D */  break 6
.L800A0E68:
/* 0A1A68 800A0E68 00008012 */  mflo  $s0
/* 0A1A6C 800A0E6C 028E7821 */  addu  $t7, $s4, $t6
/* 0A1A70 800A0E70 0C026449 */  jal   segmented_to_virtual
/* 0A1A74 800A0E74 8DE40000 */   lw    $a0, ($t7)
/* 0A1A78 800A0E78 8E640000 */  lw    $a0, ($s3)
/* 0A1A7C 800A0E7C 00402825 */  move  $a1, $v0
/* 0A1A80 800A0E80 02203025 */  move  $a2, $s1
/* 0A1A84 800A0E84 0C026E9D */  jal   func_8009BA74
/* 0A1A88 800A0E88 240700B8 */   li    $a3, 184
/* 0A1A8C 800A0E8C AE620000 */  sw    $v0, ($s3)
/* 0A1A90 800A0E90 1600FFE9 */  bnez  $s0, .L800A0E38
/* 0A1A94 800A0E94 2631FFF7 */   addiu $s1, $s1, -9
/* 0A1A98 800A0E98 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0A1A9C 800A0E9C 8FB00018 */  lw    $s0, 0x18($sp)
/* 0A1AA0 800A0EA0 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0A1AA4 800A0EA4 8FB20020 */  lw    $s2, 0x20($sp)
/* 0A1AA8 800A0EA8 8FB30024 */  lw    $s3, 0x24($sp)
/* 0A1AAC 800A0EAC 8FB40028 */  lw    $s4, 0x28($sp)
/* 0A1AB0 800A0EB0 03E00008 */  jr    $ra
/* 0A1AB4 800A0EB4 27BD0030 */   addiu $sp, $sp, 0x30
