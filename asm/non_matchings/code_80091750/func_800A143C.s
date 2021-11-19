glabel func_800A143C
/* 0A203C 800A143C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0A2040 800A1440 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0A2044 800A1444 AFB00020 */  sw    $s0, 0x20($sp)
/* 0A2048 800A1448 8C8E0004 */  lw    $t6, 4($a0)
/* 0A204C 800A144C 00808025 */  move  $s0, $a0
/* 0A2050 800A1450 2DC10005 */  sltiu $at, $t6, 5
/* 0A2054 800A1454 10200025 */  beqz  $at, .L800A14EC
/* 0A2058 800A1458 000E7080 */   sll   $t6, $t6, 2
/* 0A205C 800A145C 3C01800F */  lui   $at, %hi(jpt_800F1B40)
/* 0A2060 800A1460 002E0821 */  addu  $at, $at, $t6
/* 0A2064 800A1464 8C2E1B40 */  lw    $t6, %lo(jpt_800F1B40)($at)
/* 0A2068 800A1468 01C00008 */  jr    $t6
/* 0A206C 800A146C 00000000 */   nop   
glabel L800A1470
/* 0A2070 800A1470 00057880 */  sll   $t7, $a1, 2
/* 0A2074 800A1474 3C04800F */  lui   $a0, %hi(D_800E82C8) # 0x800f
/* 0A2078 800A1478 008F2021 */  addu  $a0, $a0, $t7
/* 0A207C 800A147C 0C026449 */  jal   segmented_to_virtual
/* 0A2080 800A1480 8C8482C8 */   lw    $a0, %lo(D_800E82C8)($a0) # -0x7d38($a0)
/* 0A2084 800A1484 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 0A2088 800A1488 8C840298 */  lw    $a0, %lo(gDisplayListHead)($a0)
/* 0A208C 800A148C 00402825 */  move  $a1, $v0
/* 0A2090 800A1490 8E06000C */  lw    $a2, 0xc($s0)
/* 0A2094 800A1494 0C026E9D */  jal   func_8009BA74
/* 0A2098 800A1498 8E070010 */   lw    $a3, 0x10($s0)
/* 0A209C 800A149C 3C018015 */  lui   $at, %hi(gDisplayListHead) # $at, 0x8015
/* 0A20A0 800A14A0 10000012 */  b     .L800A14EC
/* 0A20A4 800A14A4 AC220298 */   sw    $v0, %lo(gDisplayListHead)($at)
glabel L800A14A8
/* 0A20A8 800A14A8 0005C080 */  sll   $t8, $a1, 2
/* 0A20AC 800A14AC 3C04800F */  lui   $a0, %hi(D_800E82C8) # 0x800f
/* 0A20B0 800A14B0 00982021 */  addu  $a0, $a0, $t8
/* 0A20B4 800A14B4 0C026449 */  jal   segmented_to_virtual
/* 0A20B8 800A14B8 8C8482C8 */   lw    $a0, %lo(D_800E82C8)($a0) # -0x7d38($a0)
/* 0A20BC 800A14BC 8E06000C */  lw    $a2, 0xc($s0)
/* 0A20C0 800A14C0 8E070010 */  lw    $a3, 0x10($s0)
/* 0A20C4 800A14C4 24190002 */  li    $t9, 2
/* 0A20C8 800A14C8 AFB90010 */  sw    $t9, 0x10($sp)
/* 0A20CC 800A14CC 8E08001C */  lw    $t0, 0x1c($s0)
/* 0A20D0 800A14D0 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 0A20D4 800A14D4 8C840298 */  lw    $a0, %lo(gDisplayListHead)($a0)
/* 0A20D8 800A14D8 00402825 */  move  $a1, $v0
/* 0A20DC 800A14DC 0C026F27 */  jal   func_8009BC9C
/* 0A20E0 800A14E0 AFA80014 */   sw    $t0, 0x14($sp)
/* 0A20E4 800A14E4 3C018015 */  lui   $at, %hi(gDisplayListHead) # $at, 0x8015
/* 0A20E8 800A14E8 AC220298 */  sw    $v0, %lo(gDisplayListHead)($at)
.L800A14EC:
/* 0A20EC 800A14EC 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0A20F0 800A14F0 8FB00020 */  lw    $s0, 0x20($sp)
/* 0A20F4 800A14F4 27BD0028 */  addiu $sp, $sp, 0x28
/* 0A20F8 800A14F8 03E00008 */  jr    $ra
/* 0A20FC 800A14FC 00000000 */   nop   
