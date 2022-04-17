glabel func_800BB484
/* 0BC084 800BB484 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0BC088 800BB488 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0BC08C 800BB48C AFB00018 */  sw    $s0, 0x18($sp)
/* 0BC090 800BB490 AFA40030 */  sw    $a0, 0x30($sp)
/* 0BC094 800BB494 8C820000 */  lw    $v0, ($a0)
/* 0BC098 800BB498 00A08025 */  move  $s0, $a1
/* 0BC09C 800BB49C 10400034 */  beqz  $v0, .L800BB570
/* 0BC0A0 800BB4A0 00453821 */   addu  $a3, $v0, $a1
/* 0BC0A4 800BB4A4 AC870000 */  sw    $a3, ($a0)
/* 0BC0A8 800BB4A8 90E40001 */  lbu   $a0, 1($a3)
/* 0BC0AC 800BB4AC 00E01825 */  move  $v1, $a3
/* 0BC0B0 800BB4B0 24080001 */  li    $t0, 1
/* 0BC0B4 800BB4B4 1480000C */  bnez  $a0, .L800BB4E8
/* 0BC0B8 800BB4B8 24010080 */   li    $at, 128
/* 0BC0BC 800BB4BC 8CEF0004 */  lw    $t7, 4($a3)
/* 0BC0C0 800BB4C0 8C780008 */  lw    $t8, 8($v1)
/* 0BC0C4 800BB4C4 8C79000C */  lw    $t9, 0xc($v1)
/* 0BC0C8 800BB4C8 01E63821 */  addu  $a3, $t7, $a2
/* 0BC0CC 800BB4CC AC670004 */  sw    $a3, 4($v1)
/* 0BC0D0 800BB4D0 03053821 */  addu  $a3, $t8, $a1
/* 0BC0D4 800BB4D4 AC670008 */  sw    $a3, 8($v1)
/* 0BC0D8 800BB4D8 03253821 */  addu  $a3, $t9, $a1
/* 0BC0DC 800BB4DC AC67000C */  sw    $a3, 0xc($v1)
/* 0BC0E0 800BB4E0 10000023 */  b     .L800BB570
/* 0BC0E4 800BB4E4 A0680001 */   sb    $t0, 1($v1)
.L800BB4E8:
/* 0BC0E8 800BB4E8 54810022 */  bnel  $a0, $at, .L800BB574
/* 0BC0EC 800BB4EC 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0BC0F0 800BB4F0 8C690004 */  lw    $t1, 4($v1)
/* 0BC0F4 800BB4F4 3C04803B */  lui   $a0, %hi(gNotesAndBuffersPool) # $a0, 0x803b
/* 0BC0F8 800BB4F8 8C650010 */  lw    $a1, 0x10($v1)
/* 0BC0FC 800BB4FC 01263821 */  addu  $a3, $t1, $a2
/* 0BC100 800BB500 AFA70028 */  sw    $a3, 0x28($sp)
/* 0BC104 800BB504 AFA3002C */  sw    $v1, 0x2c($sp)
/* 0BC108 800BB508 0C02E3FF */  jal   soundAlloc
/* 0BC10C 800BB50C 2484FBE8 */   addiu $a0, %lo(gNotesAndBuffersPool) # addiu $a0, $a0, -0x418
/* 0BC110 800BB510 8FA3002C */  lw    $v1, 0x2c($sp)
/* 0BC114 800BB514 8FA70028 */  lw    $a3, 0x28($sp)
/* 0BC118 800BB518 14400005 */  bnez  $v0, .L800BB530
/* 0BC11C 800BB51C 00402825 */   move  $a1, $v0
/* 0BC120 800BB520 240A0001 */  li    $t2, 1
/* 0BC124 800BB524 AC670004 */  sw    $a3, 4($v1)
/* 0BC128 800BB528 1000000B */  b     .L800BB558
/* 0BC12C 800BB52C A06A0001 */   sb    $t2, 1($v1)
.L800BB530:
/* 0BC130 800BB530 8C660010 */  lw    $a2, 0x10($v1)
/* 0BC134 800BB534 AFA50024 */  sw    $a1, 0x24($sp)
/* 0BC138 800BB538 AFA3002C */  sw    $v1, 0x2c($sp)
/* 0BC13C 800BB53C 0C02EAA0 */  jal   audio_dma_copy_immediate
/* 0BC140 800BB540 00E02025 */   move  $a0, $a3
/* 0BC144 800BB544 8FA3002C */  lw    $v1, 0x2c($sp)
/* 0BC148 800BB548 8FA50024 */  lw    $a1, 0x24($sp)
/* 0BC14C 800BB54C 240B0081 */  li    $t3, 129
/* 0BC150 800BB550 A06B0001 */  sb    $t3, 1($v1)
/* 0BC154 800BB554 AC650004 */  sw    $a1, 4($v1)
.L800BB558:
/* 0BC158 800BB558 8C6C0008 */  lw    $t4, 8($v1)
/* 0BC15C 800BB55C 8C6D000C */  lw    $t5, 0xc($v1)
/* 0BC160 800BB560 01903821 */  addu  $a3, $t4, $s0
/* 0BC164 800BB564 AC670008 */  sw    $a3, 8($v1)
/* 0BC168 800BB568 01B03821 */  addu  $a3, $t5, $s0
/* 0BC16C 800BB56C AC67000C */  sw    $a3, 0xc($v1)
.L800BB570:
/* 0BC170 800BB570 8FBF001C */  lw    $ra, 0x1c($sp)
.L800BB574:
/* 0BC174 800BB574 8FB00018 */  lw    $s0, 0x18($sp)
/* 0BC178 800BB578 27BD0030 */  addiu $sp, $sp, 0x30
/* 0BC17C 800BB57C 03E00008 */  jr    $ra
/* 0BC180 800BB580 00000000 */   nop   
