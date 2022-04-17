glabel func_800BB99C
/* 0BC59C 800BB99C 3C0E803B */  lui   $t6, %hi(D_803B706C) # $t6, 0x803b
/* 0BC5A0 800BB9A0 8DCE706C */  lw    $t6, %lo(D_803B706C)($t6)
/* 0BC5A4 800BB9A4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0BC5A8 800BB9A8 0004C0C0 */  sll   $t8, $a0, 3
/* 0BC5AC 800BB9AC AFBF001C */  sw    $ra, 0x1c($sp)
/* 0BC5B0 800BB9B0 AFA40030 */  sw    $a0, 0x30($sp)
/* 0BC5B4 800BB9B4 01D81021 */  addu  $v0, $t6, $t8
/* 0BC5B8 800BB9B8 8C460008 */  lw    $a2, 8($v0)
/* 0BC5BC 800BB9BC 8C480004 */  lw    $t0, 4($v0)
/* 0BC5C0 800BB9C0 00807825 */  move  $t7, $a0
/* 0BC5C4 800BB9C4 2401FFF0 */  li    $at, -16
/* 0BC5C8 800BB9C8 24C6000F */  addiu $a2, $a2, 0xf
/* 0BC5CC 800BB9CC 00A03825 */  move  $a3, $a1
/* 0BC5D0 800BB9D0 00C1C824 */  and   $t9, $a2, $at
/* 0BC5D4 800BB9D4 3C04803B */  lui   $a0, %hi(D_803AFC48) # $a0, 0x803b
/* 0BC5D8 800BB9D8 03203025 */  move  $a2, $t9
/* 0BC5DC 800BB9DC 2484FC48 */  addiu $a0, %lo(D_803AFC48) # addiu $a0, $a0, -0x3b8
/* 0BC5E0 800BB9E0 AFB9002C */  sw    $t9, 0x2c($sp)
/* 0BC5E4 800BB9E4 24050001 */  li    $a1, 1
/* 0BC5E8 800BB9E8 AFAF0010 */  sw    $t7, 0x10($sp)
/* 0BC5EC 800BB9EC 0C02E4EF */  jal   func_800B93BC
/* 0BC5F0 800BB9F0 AFA80024 */   sw    $t0, 0x24($sp)
/* 0BC5F4 800BB9F4 8FA6002C */  lw    $a2, 0x2c($sp)
/* 0BC5F8 800BB9F8 14400003 */  bnez  $v0, .L800BBA08
/* 0BC5FC 800BB9FC 00402825 */   move  $a1, $v0
/* 0BC600 800BBA00 1000000F */  b     .L800BBA40
/* 0BC604 800BBA04 00001025 */   move  $v0, $zero
.L800BBA08:
/* 0BC608 800BBA08 8FA40024 */  lw    $a0, 0x24($sp)
/* 0BC60C 800BBA0C 0C02EAA0 */  jal   audio_dma_copy_immediate
/* 0BC610 800BBA10 AFA50028 */   sw    $a1, 0x28($sp)
/* 0BC614 800BBA14 8FA90030 */  lw    $t1, 0x30($sp)
/* 0BC618 800BBA18 3C0A803B */  lui   $t2, %hi(D_803B0400) # $t2, 0x803b
/* 0BC61C 800BBA1C 254A0400 */  addiu $t2, %lo(D_803B0400) # addiu $t2, $t2, 0x400
/* 0BC620 800BBA20 012A1021 */  addu  $v0, $t1, $t2
/* 0BC624 800BBA24 904B0000 */  lbu   $t3, ($v0)
/* 0BC628 800BBA28 24010005 */  li    $at, 5
/* 0BC62C 800BBA2C 8FA50028 */  lw    $a1, 0x28($sp)
/* 0BC630 800BBA30 11610002 */  beq   $t3, $at, .L800BBA3C
/* 0BC634 800BBA34 240C0002 */   li    $t4, 2
/* 0BC638 800BBA38 A04C0000 */  sb    $t4, ($v0)
.L800BBA3C:
/* 0BC63C 800BBA3C 00A01025 */  move  $v0, $a1
.L800BBA40:
/* 0BC640 800BBA40 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0BC644 800BBA44 27BD0030 */  addiu $sp, $sp, 0x30
/* 0BC648 800BBA48 03E00008 */  jr    $ra
/* 0BC64C 800BBA4C 00000000 */   nop   
