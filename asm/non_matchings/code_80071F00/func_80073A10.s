glabel func_80073A10
/* 074610 80073A10 000470C0 */  sll   $t6, $a0, 3
/* 074614 80073A14 01C47023 */  subu  $t6, $t6, $a0
/* 074618 80073A18 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 07461C 80073A1C 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 074620 80073A20 000E7140 */  sll   $t6, $t6, 5
/* 074624 80073A24 01CF1021 */  addu  $v0, $t6, $t7
/* 074628 80073A28 805800CF */  lb    $t8, 0xcf($v0)
/* 07462C 80073A2C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 074630 80073A30 AFB00018 */  sw    $s0, 0x18($sp)
/* 074634 80073A34 00A08025 */  move  $s0, $a1
/* 074638 80073A38 AFBF001C */  sw    $ra, 0x1c($sp)
/* 07463C 80073A3C 1700000B */  bnez  $t8, .L80073A6C
/* 074640 80073A40 00004025 */   move  $t0, $zero
/* 074644 80073A44 A4A60000 */  sh    $a2, ($a1)
/* 074648 80073A48 8FB9003C */  lw    $t9, 0x3c($sp)
/* 07464C 80073A4C 8FA90040 */  lw    $t1, 0x40($sp)
/* 074650 80073A50 AFA00024 */  sw    $zero, 0x24($sp)
/* 074654 80073A54 24050001 */  li    $a1, 1
/* 074658 80073A58 A45900AC */  sh    $t9, 0xac($v0)
/* 07465C 80073A5C 0C01CE00 */  jal   func_80073800
/* 074660 80073A60 A04900D0 */   sb    $t1, 0xd0($v0)
/* 074664 80073A64 10000021 */  b     .L80073AEC
/* 074668 80073A68 8FA80024 */   lw    $t0, 0x24($sp)
.L80073A6C:
/* 07466C 80073A6C 844A00AC */  lh    $t2, 0xac($v0)
/* 074670 80073A70 254BFFFF */  addiu $t3, $t2, -1
/* 074674 80073A74 A44B00AC */  sh    $t3, 0xac($v0)
/* 074678 80073A78 844C00AC */  lh    $t4, 0xac($v0)
/* 07467C 80073A7C 8FAD003C */  lw    $t5, 0x3c($sp)
/* 074680 80073A80 0583001B */  bgezl $t4, .L80073AF0
/* 074684 80073A84 8FBF001C */   lw    $ra, 0x1c($sp)
/* 074688 80073A88 A44D00AC */  sh    $t5, 0xac($v0)
/* 07468C 80073A8C 860E0000 */  lh    $t6, ($s0)
/* 074690 80073A90 8FAF0038 */  lw    $t7, 0x38($sp)
/* 074694 80073A94 01CFC023 */  subu  $t8, $t6, $t7
/* 074698 80073A98 A6180000 */  sh    $t8, ($s0)
/* 07469C 80073A9C 86190000 */  lh    $t9, ($s0)
/* 0746A0 80073AA0 0327082A */  slt   $at, $t9, $a3
/* 0746A4 80073AA4 50200012 */  beql  $at, $zero, .L80073AF0
/* 0746A8 80073AA8 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0746AC 80073AAC 804300D0 */  lb    $v1, 0xd0($v0)
/* 0746B0 80073AB0 00002825 */  move  $a1, $zero
/* 0746B4 80073AB4 18600003 */  blez  $v1, .L80073AC4
/* 0746B8 80073AB8 2469FFFF */   addiu $t1, $v1, -1
/* 0746BC 80073ABC A04900D0 */  sb    $t1, 0xd0($v0)
/* 0746C0 80073AC0 804300D0 */  lb    $v1, 0xd0($v0)
.L80073AC4:
/* 0746C4 80073AC4 54600009 */  bnel  $v1, $zero, .L80073AEC
/* 0746C8 80073AC8 A6060000 */   sh    $a2, ($s0)
/* 0746CC 80073ACC A6070000 */  sh    $a3, ($s0)
/* 0746D0 80073AD0 0C01CE00 */  jal   func_80073800
/* 0746D4 80073AD4 AFA40028 */   sw    $a0, 0x28($sp)
/* 0746D8 80073AD8 0C01CE07 */  jal   func_8007381C
/* 0746DC 80073ADC 8FA40028 */   lw    $a0, 0x28($sp)
/* 0746E0 80073AE0 10000002 */  b     .L80073AEC
/* 0746E4 80073AE4 24080001 */   li    $t0, 1
/* 0746E8 80073AE8 A6060000 */  sh    $a2, ($s0)
.L80073AEC:
/* 0746EC 80073AEC 8FBF001C */  lw    $ra, 0x1c($sp)
.L80073AF0:
/* 0746F0 80073AF0 8FB00018 */  lw    $s0, 0x18($sp)
/* 0746F4 80073AF4 27BD0028 */  addiu $sp, $sp, 0x28
/* 0746F8 80073AF8 03E00008 */  jr    $ra
/* 0746FC 80073AFC 01001025 */   move  $v0, $t0
