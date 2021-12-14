glabel func_80091EE4
/* 092AE4 80091EE4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 092AE8 80091EE8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 092AEC 80091EEC 3C01800F */  lui   $at, %hi(D_800E86F8) # $at, 0x800f
/* 092AF0 80091EF0 AFB30020 */  sw    $s3, 0x20($sp)
/* 092AF4 80091EF4 AFB2001C */  sw    $s2, 0x1c($sp)
/* 092AF8 80091EF8 AFB10018 */  sw    $s1, 0x18($sp)
/* 092AFC 80091EFC AFB00014 */  sw    $s0, 0x14($sp)
/* 092B00 80091F00 0C02D7CC */  jal   func_800B5F30
/* 092B04 80091F04 A02086F8 */   sb    $zero, %lo(D_800E86F8)($at)
/* 092B08 80091F08 3C138019 */  lui   $s3, %hi(D_8018EDFB) # $s3, 0x8019
/* 092B0C 80091F0C 2673EDFB */  addiu $s3, %lo(D_8018EDFB) # addiu $s3, $s3, -0x1205
/* 092B10 80091F10 826E0000 */  lb    $t6, ($s3)
/* 092B14 80091F14 51C0001D */  beql  $t6, $zero, .L80091F8C
/* 092B18 80091F18 8FBF0024 */   lw    $ra, 0x24($sp)
/* 092B1C 80091F1C 1440001A */  bnez  $v0, .L80091F88
/* 092B20 80091F20 3C0F8019 */   lui   $t7, %hi(gCupSelection) # $t7, 0x8019
/* 092B24 80091F24 81EFEE09 */  lb    $t7, %lo(gCupSelection)($t7)
/* 092B28 80091F28 3C198019 */  lui   $t9, %hi(gCupTrackSelection) # $t9, 0x8019
/* 092B2C 80091F2C 8339EE0B */  lb    $t9, %lo(gCupTrackSelection)($t9)
/* 092B30 80091F30 000FC080 */  sll   $t8, $t7, 2
/* 092B34 80091F34 0C02D9C2 */  jal   func_800B6708
/* 092B38 80091F38 03199021 */   addu  $s2, $t8, $t9
/* 092B3C 80091F3C 3C118019 */  lui   $s1, %hi(D_8018EE10) # $s1, 0x8019
/* 092B40 80091F40 2631EE10 */  addiu $s1, %lo(D_8018EE10) # addiu $s1, $s1, -0x11f0
/* 092B44 80091F44 00008025 */  move  $s0, $zero
/* 092B48 80091F48 001041C0 */  sll   $t0, $s0, 7
.L80091F4C:
/* 092B4C 80091F4C 02281021 */  addu  $v0, $s1, $t0
/* 092B50 80091F50 90490004 */  lbu   $t1, 4($v0)
/* 092B54 80091F54 51200009 */  beql  $t1, $zero, .L80091F7C
/* 092B58 80091F58 26100001 */   addiu $s0, $s0, 1
/* 092B5C 80091F5C 804A0005 */  lb    $t2, 5($v0)
/* 092B60 80091F60 564A0006 */  bnel  $s2, $t2, .L80091F7C
/* 092B64 80091F64 26100001 */   addiu $s0, $s0, 1
/* 092B68 80091F68 0C02D93B */  jal   func_800B64EC
/* 092B6C 80091F6C 02002025 */   move  $a0, $s0
/* 092B70 80091F70 24100002 */  li    $s0, 2
/* 092B74 80091F74 A2600000 */  sb    $zero, ($s3)
/* 092B78 80091F78 26100001 */  addiu $s0, $s0, 1
.L80091F7C:
/* 092B7C 80091F7C 2A010002 */  slti  $at, $s0, 2
/* 092B80 80091F80 5420FFF2 */  bnel  $at, $zero, .L80091F4C
/* 092B84 80091F84 001041C0 */   sll   $t0, $s0, 7
.L80091F88:
/* 092B88 80091F88 8FBF0024 */  lw    $ra, 0x24($sp)
.L80091F8C:
/* 092B8C 80091F8C 8FB00014 */  lw    $s0, 0x14($sp)
/* 092B90 80091F90 8FB10018 */  lw    $s1, 0x18($sp)
/* 092B94 80091F94 8FB2001C */  lw    $s2, 0x1c($sp)
/* 092B98 80091F98 8FB30020 */  lw    $s3, 0x20($sp)
/* 092B9C 80091F9C 03E00008 */  jr    $ra
/* 092BA0 80091FA0 27BD0028 */   addiu $sp, $sp, 0x28
