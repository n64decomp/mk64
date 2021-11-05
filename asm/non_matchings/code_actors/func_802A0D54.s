glabel func_802A0D54
/* 10A364 802A0D54 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 10A368 802A0D58 AFB60030 */  sw    $s6, 0x30($sp)
/* 10A36C 802A0D5C AFB30024 */  sw    $s3, 0x24($sp)
/* 10A370 802A0D60 AFB1001C */  sw    $s1, 0x1c($sp)
/* 10A374 802A0D64 AFB5002C */  sw    $s5, 0x2c($sp)
/* 10A378 802A0D68 AFB40028 */  sw    $s4, 0x28($sp)
/* 10A37C 802A0D6C AFB20020 */  sw    $s2, 0x20($sp)
/* 10A380 802A0D70 3C11800F */  lui   $s1, %hi(gPlayers) # $s1, 0x800f
/* 10A384 802A0D74 3C138016 */  lui   $s3, %hi(D_8015F9B8) # $s3, 0x8016
/* 10A388 802A0D78 3C168010 */  lui   $s6, %hi(D_800FD850) # $s6, 0x8010
/* 10A38C 802A0D7C AFBF0034 */  sw    $ra, 0x34($sp)
/* 10A390 802A0D80 AFB00018 */  sw    $s0, 0x18($sp)
/* 10A394 802A0D84 26D6D850 */  addiu $s6, %lo(D_800FD850) # addiu $s6, $s6, -0x27b0
/* 10A398 802A0D88 2673F9B8 */  addiu $s3, %lo(D_8015F9B8) # addiu $s3, $s3, -0x648
/* 10A39C 802A0D8C 26316990 */  addiu $s1, %lo(gPlayers) # addiu $s1, $s1, 0x6990
/* 10A3A0 802A0D90 3C120400 */  lui   $s2, 0x400
/* 10A3A4 802A0D94 24140070 */  li    $s4, 112
/* 10A3A8 802A0D98 24150064 */  li    $s5, 100
/* 10A3AC 802A0D9C 962E0000 */  lhu   $t6, ($s1)
.L802A0DA0:
/* 10A3B0 802A0DA0 31CF8000 */  andi  $t7, $t6, 0x8000
/* 10A3B4 802A0DA4 51E0001B */  beql  $t7, $zero, .L802A0E14
/* 10A3B8 802A0DA8 26310DD8 */   addiu $s1, $s1, 0xdd8
/* 10A3BC 802A0DAC 8E3800BC */  lw    $t8, 0xbc($s1)
/* 10A3C0 802A0DB0 0312C824 */  and   $t9, $t8, $s2
/* 10A3C4 802A0DB4 57200017 */  bnel  $t9, $zero, .L802A0E14
/* 10A3C8 802A0DB8 26310DD8 */   addiu $s1, $s1, 0xdd8
/* 10A3CC 802A0DBC 0C0A5DF9 */  jal   func_802977E4
/* 10A3D0 802A0DC0 02202025 */   move  $a0, $s1
/* 10A3D4 802A0DC4 00008025 */  move  $s0, $zero
/* 10A3D8 802A0DC8 8E2800BC */  lw    $t0, 0xbc($s1)
.L802A0DCC:
/* 10A3DC 802A0DCC 01124824 */  and   $t1, $t0, $s2
/* 10A3E0 802A0DD0 5520000D */  bnel  $t1, $zero, .L802A0E08
/* 10A3E4 802A0DD4 26100001 */   addiu $s0, $s0, 1
/* 10A3E8 802A0DD8 02140019 */  multu $s0, $s4
/* 10A3EC 802A0DDC 00005012 */  mflo  $t2
/* 10A3F0 802A0DE0 026A2821 */  addu  $a1, $s3, $t2
/* 10A3F4 802A0DE4 84A20002 */  lh    $v0, 2($a1)
/* 10A3F8 802A0DE8 304B8000 */  andi  $t3, $v0, 0x8000
/* 10A3FC 802A0DEC 11600005 */  beqz  $t3, .L802A0E04
/* 10A400 802A0DF0 304C4000 */   andi  $t4, $v0, 0x4000
/* 10A404 802A0DF4 51800004 */  beql  $t4, $zero, .L802A0E08
/* 10A408 802A0DF8 26100001 */   addiu $s0, $s0, 1
/* 10A40C 802A0DFC 0C0A8114 */  jal   func_802A0450
/* 10A410 802A0E00 02202025 */   move  $a0, $s1
.L802A0E04:
/* 10A414 802A0E04 26100001 */  addiu $s0, $s0, 1
.L802A0E08:
/* 10A418 802A0E08 5615FFF0 */  bnel  $s0, $s5, .L802A0DCC
/* 10A41C 802A0E0C 8E2800BC */   lw    $t0, 0xbc($s1)
/* 10A420 802A0E10 26310DD8 */  addiu $s1, $s1, 0xdd8
.L802A0E14:
/* 10A424 802A0E14 5636FFE2 */  bnel  $s1, $s6, .L802A0DA0
/* 10A428 802A0E18 962E0000 */   lhu   $t6, ($s1)
/* 10A42C 802A0E1C 8FBF0034 */  lw    $ra, 0x34($sp)
/* 10A430 802A0E20 8FB00018 */  lw    $s0, 0x18($sp)
/* 10A434 802A0E24 8FB1001C */  lw    $s1, 0x1c($sp)
/* 10A438 802A0E28 8FB20020 */  lw    $s2, 0x20($sp)
/* 10A43C 802A0E2C 8FB30024 */  lw    $s3, 0x24($sp)
/* 10A440 802A0E30 8FB40028 */  lw    $s4, 0x28($sp)
/* 10A444 802A0E34 8FB5002C */  lw    $s5, 0x2c($sp)
/* 10A448 802A0E38 8FB60030 */  lw    $s6, 0x30($sp)
/* 10A44C 802A0E3C 03E00008 */  jr    $ra
/* 10A450 802A0E40 27BD0038 */   addiu $sp, $sp, 0x38
