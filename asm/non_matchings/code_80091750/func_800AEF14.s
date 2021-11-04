glabel func_800AEF14
/* 0AFB14 800AEF14 3C0E8019 */  lui   $t6, %hi(D_8018CAE0) # $t6, 0x8019
/* 0AFB18 800AEF18 81CECAE0 */  lb    $t6, %lo(D_8018CAE0)($t6)
/* 0AFB1C 800AEF1C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0AFB20 800AEF20 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0AFB24 800AEF24 11C0000F */  beqz  $t6, .L800AEF64
/* 0AFB28 800AEF28 AFA40018 */   sw    $a0, 0x18($sp)
/* 0AFB2C 800AEF2C 0C02D389 */  jal   func_800B4E24
/* 0AFB30 800AEF30 24040004 */   li    $a0, 4
/* 0AFB34 800AEF34 3C0F8019 */  lui   $t7, %hi(D_8018CA78) # $t7, 0x8019
/* 0AFB38 800AEF38 8DEFCA78 */  lw    $t7, %lo(D_8018CA78)($t7)
/* 0AFB3C 800AEF3C 3C01000F */  lui   $at, (0x000FFFFF >> 16) # lui $at, 0xf
/* 0AFB40 800AEF40 3421FFFF */  ori   $at, (0x000FFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0AFB44 800AEF44 0041C024 */  and   $t8, $v0, $at
/* 0AFB48 800AEF48 01F8082B */  sltu  $at, $t7, $t8
/* 0AFB4C 800AEF4C 10200003 */  beqz  $at, .L800AEF5C
/* 0AFB50 800AEF50 24190001 */   li    $t9, 1
/* 0AFB54 800AEF54 3C018019 */  lui   $at, %hi(D_8018ED90) # $at, 0x8019
/* 0AFB58 800AEF58 A039ED90 */  sb    $t9, %lo(D_8018ED90)($at)
.L800AEF5C:
/* 0AFB5C 800AEF5C 8FA80018 */  lw    $t0, 0x18($sp)
/* 0AFB60 800AEF60 AD000000 */  sw    $zero, ($t0)
.L800AEF64:
/* 0AFB64 800AEF64 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0AFB68 800AEF68 27BD0018 */  addiu $sp, $sp, 0x18
/* 0AFB6C 800AEF6C 03E00008 */  jr    $ra
/* 0AFB70 800AEF70 00000000 */   nop   
