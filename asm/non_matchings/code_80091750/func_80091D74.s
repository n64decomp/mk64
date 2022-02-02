glabel func_80091D74
/* 092974 80091D74 27BDFF98 */  addiu $sp, $sp, -0x68
/* 092978 80091D78 3C0E8015 */  lui   $t6, %hi(gControllerBits) # $t6, 0x8015
/* 09297C 80091D7C 91CEF108 */  lbu   $t6, %lo(gControllerBits)($t6)
/* 092980 80091D80 AFBF002C */  sw    $ra, 0x2c($sp)
/* 092984 80091D84 AFB40028 */  sw    $s4, 0x28($sp)
/* 092988 80091D88 AFB30024 */  sw    $s3, 0x24($sp)
/* 09298C 80091D8C AFB20020 */  sw    $s2, 0x20($sp)
/* 092990 80091D90 AFB1001C */  sw    $s1, 0x1c($sp)
/* 092994 80091D94 15C00003 */  bnez  $t6, .L80091DA4
/* 092998 80091D98 AFB00018 */   sw    $s0, 0x18($sp)
/* 09299C 80091D9C 10000049 */  b     .L80091EC4
/* 0929A0 80091DA0 00001025 */   move  $v0, $zero
.L80091DA4:
/* 0929A4 80091DA4 3C028015 */  lui   $v0, %hi(gControllerStatuses+0x2) # $v0, 0x8015
/* 0929A8 80091DA8 9042F0E2 */  lbu   $v0, %lo(gControllerStatuses+0x2)($v0)
/* 0929AC 80091DAC 3C19800E */  lui   $t9, %hi(gControllerOne) # $t9, 0x800e
/* 0929B0 80091DB0 2C4F0001 */  sltiu $t7, $v0, 1
/* 0929B4 80091DB4 31F80001 */  andi  $t8, $t7, 1
/* 0929B8 80091DB8 13000003 */  beqz  $t8, .L80091DC8
/* 0929BC 80091DBC 00000000 */   nop
/* 0929C0 80091DC0 10000040 */  b     .L80091EC4
/* 0929C4 80091DC4 00001025 */   move  $v0, $zero
.L80091DC8:
/* 0929C8 80091DC8 8F39C4BC */  lw    $t9, %lo(gControllerOne)($t9)
/* 0929CC 80091DCC 3C108015 */  lui   $s0, %hi(gSIEventMesgQueue) # $s0, 0x8015
/* 0929D0 80091DD0 2610F0B8 */  addiu $s0, %lo(gSIEventMesgQueue) # addiu $s0, $s0, -0xf48
/* 0929D4 80091DD4 97280004 */  lhu   $t0, 4($t9)
/* 0929D8 80091DD8 02002025 */  move  $a0, $s0
/* 0929DC 80091DDC 31091000 */  andi  $t1, $t0, 0x1000
/* 0929E0 80091DE0 15200003 */  bnez  $t1, .L80091DF0
/* 0929E4 80091DE4 00000000 */   nop
/* 0929E8 80091DE8 10000036 */  b     .L80091EC4
/* 0929EC 80091DEC 00001025 */   move  $v0, $zero
.L80091DF0:
/* 0929F0 80091DF0 0C0338EC */  jal   osPfsIsPlug
/* 0929F4 80091DF4 27A50067 */   addiu $a1, $sp, 0x67
/* 0929F8 80091DF8 93AA0067 */  lbu   $t2, 0x67($sp)
/* 0929FC 80091DFC 3C148019 */  lui   $s4, %hi(D_8018E868) # $s4, 0x8019
/* 092A00 80091E00 2694E868 */  addiu $s4, %lo(D_8018E868) # addiu $s4, $s4, -0x1798
/* 092A04 80091E04 314B0001 */  andi  $t3, $t2, 1
/* 092A08 80091E08 11600008 */  beqz  $t3, .L80091E2C
/* 092A0C 80091E0C 02002025 */   move  $a0, $s0
/* 092A10 80091E10 02802825 */  move  $a1, $s4
/* 092A14 80091E14 0C0339C8 */  jal   osPfsInit
/* 092A18 80091E18 00003025 */   move  $a2, $zero
/* 092A1C 80091E1C 10400005 */  beqz  $v0, .L80091E34
/* 092A20 80091E20 02802025 */   move  $a0, $s4
/* 092A24 80091E24 10000027 */  b     .L80091EC4
/* 092A28 80091E28 00001025 */   move  $v0, $zero
.L80091E2C:
/* 092A2C 80091E2C 10000025 */  b     .L80091EC4
/* 092A30 80091E30 00001025 */   move  $v0, $zero
.L80091E34:
/* 092A34 80091E34 3C058019 */  lui   $a1, %hi(D_8018EB78) # $a1, 0x8019
/* 092A38 80091E38 3C068019 */  lui   $a2, %hi(D_8018EB7C) # $a2, 0x8019
/* 092A3C 80091E3C 24C6EB7C */  addiu $a2, %lo(D_8018EB7C) # addiu $a2, $a2, -0x1484
/* 092A40 80091E40 0C033A38 */  jal   osPfsNumFiles
/* 092A44 80091E44 24A5EB78 */   addiu $a1, %lo(D_8018EB78) # addiu $a1, $a1, -0x1488
/* 092A48 80091E48 10400003 */  beqz  $v0, .L80091E58
/* 092A4C 80091E4C 00008025 */   move  $s0, $zero
/* 092A50 80091E50 1000001C */  b     .L80091EC4
/* 092A54 80091E54 00001025 */   move  $v0, $zero
.L80091E58:
/* 092A58 80091E58 3C118019 */  lui   $s1, %hi(D_8018EB38) # $s1, 0x8019
/* 092A5C 80091E5C 3C128019 */  lui   $s2, %hi(D_8018E938) # $s2, 0x8019
/* 092A60 80091E60 2652E938 */  addiu $s2, %lo(D_8018E938) # addiu $s2, $s2, -0x16c8
/* 092A64 80091E64 2631EB38 */  addiu $s1, %lo(D_8018EB38) # addiu $s1, $s1, -0x14c8
/* 092A68 80091E68 24130010 */  li    $s3, 16
.L80091E6C:
/* 092A6C 80091E6C 00106140 */  sll   $t4, $s0, 5
/* 092A70 80091E70 024C3021 */  addu  $a2, $s2, $t4
/* 092A74 80091E74 02802025 */  move  $a0, $s4
/* 092A78 80091E78 0C033A8C */  jal   osPfsFileState
/* 092A7C 80091E7C 02002825 */   move  $a1, $s0
/* 092A80 80091E80 26100001 */  addiu $s0, $s0, 1
/* 092A84 80091E84 26310004 */  addiu $s1, $s1, 4
/* 092A88 80091E88 1613FFF8 */  bne   $s0, $s3, .L80091E6C
/* 092A8C 80091E8C AE22FFFC */   sw    $v0, -4($s1)
/* 092A90 80091E90 3C108019 */  lui   $s0, %hi(gControllerPakNumPagesFree) # $s0, 0x8019
/* 092A94 80091E94 2610EB80 */  addiu $s0, %lo(gControllerPakNumPagesFree) # addiu $s0, $s0, -0x1480
/* 092A98 80091E98 02002825 */  move  $a1, $s0
/* 092A9C 80091E9C 0C033B48 */  jal   osPfsFreeBlocks
/* 092AA0 80091EA0 02802025 */   move  $a0, $s4
/* 092AA4 80091EA4 50400004 */  beql  $v0, $zero, .L80091EB8
/* 092AA8 80091EA8 8E0D0000 */   lw    $t5, ($s0)
/* 092AAC 80091EAC 10000005 */  b     .L80091EC4
/* 092AB0 80091EB0 00001025 */   move  $v0, $zero
/* 092AB4 80091EB4 8E0D0000 */  lw    $t5, ($s0)
.L80091EB8:
/* 092AB8 80091EB8 24020001 */  li    $v0, 1
/* 092ABC 80091EBC 000D7203 */  sra   $t6, $t5, 8
/* 092AC0 80091EC0 AE0E0000 */  sw    $t6, ($s0)
.L80091EC4:
/* 092AC4 80091EC4 8FBF002C */  lw    $ra, 0x2c($sp)
/* 092AC8 80091EC8 8FB00018 */  lw    $s0, 0x18($sp)
/* 092ACC 80091ECC 8FB1001C */  lw    $s1, 0x1c($sp)
/* 092AD0 80091ED0 8FB20020 */  lw    $s2, 0x20($sp)
/* 092AD4 80091ED4 8FB30024 */  lw    $s3, 0x24($sp)
/* 092AD8 80091ED8 8FB40028 */  lw    $s4, 0x28($sp)
/* 092ADC 80091EDC 03E00008 */  jr    $ra
/* 092AE0 80091EE0 27BD0068 */   addiu $sp, $sp, 0x68
