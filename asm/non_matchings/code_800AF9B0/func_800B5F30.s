glabel func_800B5F30
/* 0B6B30 800B5F30 3C0E800F */  lui   $t6, %hi(D_800E86F8) # $t6, 0x800f
/* 0B6B34 800B5F34 81CE86F8 */  lb    $t6, %lo(D_800E86F8)($t6)
/* 0B6B38 800B5F38 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0B6B3C 800B5F3C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B6B40 800B5F40 11C00003 */  beqz  $t6, .L800B5F50
/* 0B6B44 800B5F44 00000000 */   nop   
/* 0B6B48 800B5F48 1000002E */  b     .L800B6004
/* 0B6B4C 800B5F4C 2402FFFC */   li    $v0, -4
.L800B5F50:
/* 0B6B50 800B5F50 0C02D6CB */  jal   func_800B5B2C
/* 0B6B54 800B5F54 00002025 */   move  $a0, $zero
/* 0B6B58 800B5F58 10400029 */  beqz  $v0, .L800B6000
/* 0B6B5C 800B5F5C 3C048015 */   lui   $a0, %hi(gSIEventMesgQueue) # $a0, 0x8015
/* 0B6B60 800B5F60 3C058019 */  lui   $a1, %hi(D_8018E868) # $a1, 0x8019
/* 0B6B64 800B5F64 24A5E868 */  addiu $a1, %lo(D_8018E868) # addiu $a1, $a1, -0x1798
/* 0B6B68 800B5F68 2484F0B8 */  addiu $a0, %lo(gSIEventMesgQueue) # addiu $a0, $a0, -0xf48
/* 0B6B6C 800B5F6C 0C0339C8 */  jal   func_800CE720
/* 0B6B70 800B5F70 00003025 */   move  $a2, $zero
/* 0B6B74 800B5F74 3C048019 */  lui   $a0, %hi(D_8018E868) # $a0, 0x8019
/* 0B6B78 800B5F78 3C058019 */  lui   $a1, %hi(D_8018EB78) # $a1, 0x8019
/* 0B6B7C 800B5F7C 3C068019 */  lui   $a2, %hi(D_8018EB7C) # $a2, 0x8019
/* 0B6B80 800B5F80 AFA2001C */  sw    $v0, 0x1c($sp)
/* 0B6B84 800B5F84 24C6EB7C */  addiu $a2, %lo(D_8018EB7C) # addiu $a2, $a2, -0x1484
/* 0B6B88 800B5F88 24A5EB78 */  addiu $a1, %lo(D_8018EB78) # addiu $a1, $a1, -0x1488
/* 0B6B8C 800B5F8C 0C033A38 */  jal   osPfsNumFiles
/* 0B6B90 800B5F90 2484E868 */   addiu $a0, %lo(D_8018E868) # addiu $a0, $a0, -0x1798
/* 0B6B94 800B5F94 10400005 */  beqz  $v0, .L800B5FAC
/* 0B6B98 800B5F98 3C048019 */   lui   $a0, %hi(D_8018E868) # $a0, 0x8019
/* 0B6B9C 800B5F9C 3C01800F */  lui   $at, %hi(D_800E86F8) # $at, 0x800f
/* 0B6BA0 800B5FA0 A02086F8 */  sb    $zero, %lo(D_800E86F8)($at)
/* 0B6BA4 800B5FA4 10000017 */  b     .L800B6004
/* 0B6BA8 800B5FA8 2402FFFE */   li    $v0, -2
.L800B5FAC:
/* 0B6BAC 800B5FAC 3C058019 */  lui   $a1, %hi(gControllerPakPagesFree) # $a1, 0x8019
/* 0B6BB0 800B5FB0 24A5EB80 */  addiu $a1, %lo(gControllerPakPagesFree) # addiu $a1, $a1, -0x1480
/* 0B6BB4 800B5FB4 0C033B48 */  jal   osPfsFreeBlocks
/* 0B6BB8 800B5FB8 2484E868 */   addiu $a0, %lo(D_8018E868) # addiu $a0, $a0, -0x1798
/* 0B6BBC 800B5FBC 3C038019 */  lui   $v1, %hi(gControllerPakPagesFree) # $v1, 0x8019
/* 0B6BC0 800B5FC0 10400005 */  beqz  $v0, .L800B5FD8
/* 0B6BC4 800B5FC4 2463EB80 */   addiu $v1, %lo(gControllerPakPagesFree) # addiu $v1, $v1, -0x1480
/* 0B6BC8 800B5FC8 3C01800F */  lui   $at, %hi(D_800E86F8) # $at, 0x800f
/* 0B6BCC 800B5FCC A02086F8 */  sb    $zero, %lo(D_800E86F8)($at)
/* 0B6BD0 800B5FD0 1000000C */  b     .L800B6004
/* 0B6BD4 800B5FD4 2402FFFD */   li    $v0, -3
.L800B5FD8:
/* 0B6BD8 800B5FD8 8C6F0000 */  lw    $t7, ($v1)
/* 0B6BDC 800B5FDC 8FA4001C */  lw    $a0, 0x1c($sp)
/* 0B6BE0 800B5FE0 24190001 */  li    $t9, 1
/* 0B6BE4 800B5FE4 000FC203 */  sra   $t8, $t7, 8
/* 0B6BE8 800B5FE8 14800003 */  bnez  $a0, .L800B5FF8
/* 0B6BEC 800B5FEC AC780000 */   sw    $t8, ($v1)
/* 0B6BF0 800B5FF0 3C01800F */  lui   $at, %hi(D_800E86F8) # $at, 0x800f
/* 0B6BF4 800B5FF4 A03986F8 */  sb    $t9, %lo(D_800E86F8)($at)
.L800B5FF8:
/* 0B6BF8 800B5FF8 10000002 */  b     .L800B6004
/* 0B6BFC 800B5FFC 00801025 */   move  $v0, $a0
.L800B6000:
/* 0B6C00 800B6000 2402FFFF */  li    $v0, -1
.L800B6004:
/* 0B6C04 800B6004 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B6C08 800B6008 27BD0020 */  addiu $sp, $sp, 0x20
/* 0B6C0C 800B600C 03E00008 */  jr    $ra
/* 0B6C10 800B6010 00000000 */   nop   
