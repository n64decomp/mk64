glabel func_800BB864
/* 0BC464 800BB864 3C0E803B */  lui   $t6, %hi(D_803B7070) # $t6, 0x803b
/* 0BC468 800BB868 8DCE7070 */  lw    $t6, %lo(D_803B7070)($t6)
/* 0BC46C 800BB86C 27BDFF98 */  addiu $sp, $sp, -0x68
/* 0BC470 800BB870 AFB0001C */  sw    $s0, 0x1c($sp)
/* 0BC474 800BB874 000478C0 */  sll   $t7, $a0, 3
/* 0BC478 800BB878 00C08025 */  move  $s0, $a2
/* 0BC47C 800BB87C AFBF0024 */  sw    $ra, 0x24($sp)
/* 0BC480 800BB880 AFB10020 */  sw    $s1, 0x20($sp)
/* 0BC484 800BB884 01CF1021 */  addu  $v0, $t6, $t7
/* 0BC488 800BB888 8C460008 */  lw    $a2, 8($v0)
/* 0BC48C 800BB88C 2401FFF0 */  li    $at, -16
/* 0BC490 800BB890 8C590004 */  lw    $t9, 4($v0)
/* 0BC494 800BB894 24C6001E */  addiu $a2, $a2, 0x1e
/* 0BC498 800BB898 00808825 */  move  $s1, $a0
/* 0BC49C 800BB89C 00C1C024 */  and   $t8, $a2, $at
/* 0BC4A0 800BB8A0 00A03825 */  move  $a3, $a1
/* 0BC4A4 800BB8A4 2706FFF0 */  addiu $a2, $t8, -0x10
/* 0BC4A8 800BB8A8 3C04803B */  lui   $a0, %hi(D_803AFE18) # $a0, 0x803b
/* 0BC4AC 800BB8AC 2484FE18 */  addiu $a0, %lo(D_803AFE18) # addiu $a0, $a0, -0x1e8
/* 0BC4B0 800BB8B0 AFA60064 */  sw    $a2, 0x64($sp)
/* 0BC4B4 800BB8B4 24050001 */  li    $a1, 1
/* 0BC4B8 800BB8B8 AFB10010 */  sw    $s1, 0x10($sp)
/* 0BC4BC 800BB8BC 0C02E4EF */  jal   func_800B93BC
/* 0BC4C0 800BB8C0 AFB90038 */   sw    $t9, 0x38($sp)
/* 0BC4C4 800BB8C4 8FA60064 */  lw    $a2, 0x64($sp)
/* 0BC4C8 800BB8C8 14400003 */  bnez  $v0, .L800BB8D8
/* 0BC4CC 800BB8CC AFA2003C */   sw    $v0, 0x3c($sp)
/* 0BC4D0 800BB8D0 1000002D */  b     .L800BB988
/* 0BC4D4 800BB8D4 00001025 */   move  $v0, $zero
.L800BB8D8:
/* 0BC4D8 800BB8D8 3C04803B */  lui   $a0, %hi(D_803B7080) # $a0, 0x803b
/* 0BC4DC 800BB8DC 24847080 */  addiu $a0, %lo(D_803B7080) # addiu $a0, $a0, 0x7080
/* 0BC4E0 800BB8E0 A2110006 */  sb    $s1, 6($s0)
/* 0BC4E4 800BB8E4 8C890000 */  lw    $t1, ($a0)
/* 0BC4E8 800BB8E8 00111880 */  sll   $v1, $s1, 2
/* 0BC4EC 800BB8EC 00711823 */  subu  $v1, $v1, $s1
/* 0BC4F0 800BB8F0 00031880 */  sll   $v1, $v1, 2
/* 0BC4F4 800BB8F4 24480004 */  addiu $t0, $v0, 4
/* 0BC4F8 800BB8F8 01235021 */  addu  $t2, $t1, $v1
/* 0BC4FC 800BB8FC AD480004 */  sw    $t0, 4($t2)
/* 0BC500 800BB900 8C8B0000 */  lw    $t3, ($a0)
/* 0BC504 800BB904 26070108 */  addiu $a3, $s0, 0x108
/* 0BC508 800BB908 00E02025 */  move  $a0, $a3
/* 0BC50C 800BB90C 01636021 */  addu  $t4, $t3, $v1
/* 0BC510 800BB910 AD800008 */  sw    $zero, 8($t4)
/* 0BC514 800BB914 AE02013C */  sw    $v0, 0x13c($s0)
/* 0BC518 800BB918 8FAD0038 */  lw    $t5, 0x38($sp)
/* 0BC51C 800BB91C AE060144 */  sw    $a2, 0x144($s0)
/* 0BC520 800BB920 24060001 */  li    $a2, 1
/* 0BC524 800BB924 25AE0010 */  addiu $t6, $t5, 0x10
/* 0BC528 800BB928 AE0E0140 */  sw    $t6, 0x140($s0)
/* 0BC52C 800BB92C AFA7002C */  sw    $a3, 0x2c($sp)
/* 0BC530 800BB930 0C033358 */  jal   osCreateMesgQueue
/* 0BC534 800BB934 26050120 */   addiu $a1, $s0, 0x120
/* 0BC538 800BB938 92180000 */  lbu   $t8, ($s0)
/* 0BC53C 800BB93C 8FA7002C */  lw    $a3, 0x2c($sp)
/* 0BC540 800BB940 26090124 */  addiu $t1, $s0, 0x124
/* 0BC544 800BB944 37190008 */  ori   $t9, $t8, 8
/* 0BC548 800BB948 A2190000 */  sb    $t9, ($s0)
/* 0BC54C 800BB94C AFA90010 */  sw    $t1, 0x10($sp)
/* 0BC550 800BB950 26040140 */  addiu $a0, $s0, 0x140
/* 0BC554 800BB954 2605013C */  addiu $a1, $s0, 0x13c
/* 0BC558 800BB958 0C02EAD6 */  jal   func_800BAB58
/* 0BC55C 800BB95C 26060144 */   addiu $a2, $s0, 0x144
/* 0BC560 800BB960 3C08803B */  lui   $t0, %hi(D_803B03C0) # $t0, 0x803b
/* 0BC564 800BB964 250803C0 */  addiu $t0, %lo(D_803B03C0) # addiu $t0, $t0, 0x3c0
/* 0BC568 800BB968 02281021 */  addu  $v0, $s1, $t0
/* 0BC56C 800BB96C 904A0000 */  lbu   $t2, ($v0)
/* 0BC570 800BB970 24010005 */  li    $at, 5
/* 0BC574 800BB974 240B0001 */  li    $t3, 1
/* 0BC578 800BB978 51410003 */  beql  $t2, $at, .L800BB988
/* 0BC57C 800BB97C 8FA2003C */   lw    $v0, 0x3c($sp)
/* 0BC580 800BB980 A04B0000 */  sb    $t3, ($v0)
/* 0BC584 800BB984 8FA2003C */  lw    $v0, 0x3c($sp)
.L800BB988:
/* 0BC588 800BB988 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0BC58C 800BB98C 8FB0001C */  lw    $s0, 0x1c($sp)
/* 0BC590 800BB990 8FB10020 */  lw    $s1, 0x20($sp)
/* 0BC594 800BB994 03E00008 */  jr    $ra
/* 0BC598 800BB998 27BD0068 */   addiu $sp, $sp, 0x68
