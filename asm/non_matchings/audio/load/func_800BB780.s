glabel func_800BB780
/* 0BC380 800BB780 3C0E803B */  lui   $t6, %hi(D_803B7070) # $t6, 0x803b
/* 0BC384 800BB784 8DCE7070 */  lw    $t6, %lo(D_803B7070)($t6)
/* 0BC388 800BB788 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 0BC38C 800BB78C 000478C0 */  sll   $t7, $a0, 3
/* 0BC390 800BB790 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0BC394 800BB794 AFB00020 */  sw    $s0, 0x20($sp)
/* 0BC398 800BB798 01CF1021 */  addu  $v0, $t6, $t7
/* 0BC39C 800BB79C 8C460008 */  lw    $a2, 8($v0)
/* 0BC3A0 800BB7A0 2401FFF0 */  li    $at, -16
/* 0BC3A4 800BB7A4 8C590004 */  lw    $t9, 4($v0)
/* 0BC3A8 800BB7A8 24C6001E */  addiu $a2, $a2, 0x1e
/* 0BC3AC 800BB7AC 00808025 */  move  $s0, $a0
/* 0BC3B0 800BB7B0 00C1C024 */  and   $t8, $a2, $at
/* 0BC3B4 800BB7B4 00A03825 */  move  $a3, $a1
/* 0BC3B8 800BB7B8 2706FFF0 */  addiu $a2, $t8, -0x10
/* 0BC3BC 800BB7BC 3C04803B */  lui   $a0, %hi(D_803AFE18) # $a0, 0x803b
/* 0BC3C0 800BB7C0 2484FE18 */  addiu $a0, %lo(D_803AFE18) # addiu $a0, $a0, -0x1e8
/* 0BC3C4 800BB7C4 AFA60054 */  sw    $a2, 0x54($sp)
/* 0BC3C8 800BB7C8 24050001 */  li    $a1, 1
/* 0BC3CC 800BB7CC AFB00010 */  sw    $s0, 0x10($sp)
/* 0BC3D0 800BB7D0 0C02E4EF */  jal   func_800B93BC
/* 0BC3D4 800BB7D4 AFB90028 */   sw    $t9, 0x28($sp)
/* 0BC3D8 800BB7D8 8FA60054 */  lw    $a2, 0x54($sp)
/* 0BC3DC 800BB7DC 14400003 */  bnez  $v0, .L800BB7EC
/* 0BC3E0 800BB7E0 00402825 */   move  $a1, $v0
/* 0BC3E4 800BB7E4 1000001A */  b     .L800BB850
/* 0BC3E8 800BB7E8 00001025 */   move  $v0, $zero
.L800BB7EC:
/* 0BC3EC 800BB7EC 8FA40028 */  lw    $a0, 0x28($sp)
/* 0BC3F0 800BB7F0 AFA5002C */  sw    $a1, 0x2c($sp)
/* 0BC3F4 800BB7F4 0C02EAA0 */  jal   audio_dma_copy_immediate
/* 0BC3F8 800BB7F8 24840010 */   addiu $a0, $a0, 0x10
/* 0BC3FC 800BB7FC 3C0A803B */  lui   $t2, %hi(D_803B7080) # $t2, 0x803b
/* 0BC400 800BB800 8D4A7080 */  lw    $t2, %lo(D_803B7080)($t2)
/* 0BC404 800BB804 8FA8002C */  lw    $t0, 0x2c($sp)
/* 0BC408 800BB808 00105880 */  sll   $t3, $s0, 2
/* 0BC40C 800BB80C 01705823 */  subu  $t3, $t3, $s0
/* 0BC410 800BB810 000B5880 */  sll   $t3, $t3, 2
/* 0BC414 800BB814 014B6021 */  addu  $t4, $t2, $t3
/* 0BC418 800BB818 25090004 */  addiu $t1, $t0, 4
/* 0BC41C 800BB81C AD890004 */  sw    $t1, 4($t4)
/* 0BC420 800BB820 0C02ED61 */  jal   func_800BB584
/* 0BC424 800BB824 02002025 */   move  $a0, $s0
/* 0BC428 800BB828 3C0D803B */  lui   $t5, %hi(D_803B03C0) # $t5, 0x803b
/* 0BC42C 800BB82C 25AD03C0 */  addiu $t5, %lo(D_803B03C0) # addiu $t5, $t5, 0x3c0
/* 0BC430 800BB830 020D1021 */  addu  $v0, $s0, $t5
/* 0BC434 800BB834 904E0000 */  lbu   $t6, ($v0)
/* 0BC438 800BB838 24010005 */  li    $at, 5
/* 0BC43C 800BB83C 240F0002 */  li    $t7, 2
/* 0BC440 800BB840 51C10003 */  beql  $t6, $at, .L800BB850
/* 0BC444 800BB844 8FA2002C */   lw    $v0, 0x2c($sp)
/* 0BC448 800BB848 A04F0000 */  sb    $t7, ($v0)
/* 0BC44C 800BB84C 8FA2002C */  lw    $v0, 0x2c($sp)
.L800BB850:
/* 0BC450 800BB850 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0BC454 800BB854 8FB00020 */  lw    $s0, 0x20($sp)
/* 0BC458 800BB858 27BD0058 */  addiu $sp, $sp, 0x58
/* 0BC45C 800BB85C 03E00008 */  jr    $ra
/* 0BC460 800BB860 00000000 */   nop   
