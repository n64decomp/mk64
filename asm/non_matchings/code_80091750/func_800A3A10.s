glabel func_800A3A10
/* 0A4610 800A3A10 27BDFFF8 */  addiu $sp, $sp, -8
/* 0A4614 800A3A14 AFB00004 */  sw    $s0, 4($sp)
/* 0A4618 800A3A18 3C108019 */  lui   $s0, %hi(D_8018EDF3) # $s0, 0x8019
/* 0A461C 800A3A1C 3C0D8016 */  lui   $t5, %hi(D_80164478) # $t5, 0x8016
/* 0A4620 800A3A20 3C0B8019 */  lui   $t3, %hi(gGPPointsByCharacterId) # $t3, 0x8019
/* 0A4624 800A3A24 256BD9C8 */  addiu $t3, %lo(gGPPointsByCharacterId) # addiu $t3, $t3, -0x2638
/* 0A4628 800A3A28 25AD4478 */  addiu $t5, %lo(D_80164478) # addiu $t5, $t5, 0x4478
/* 0A462C 800A3A2C 2610EDF3 */  addiu $s0, %lo(D_8018EDF3) # addiu $s0, $s0, -0x120d
/* 0A4630 800A3A30 00001025 */  move  $v0, $zero
/* 0A4634 800A3A34 00801825 */  move  $v1, $a0
/* 0A4638 800A3A38 240C0008 */  li    $t4, 8
.L800A3A3C:
/* 0A463C 800A3A3C A0620000 */  sb    $v0, ($v1)
/* 0A4640 800A3A40 18400020 */  blez  $v0, .L800A3AC4
/* 0A4644 800A3A44 00402825 */   move  $a1, $v0
/* 0A4648 800A3A48 00853021 */  addu  $a2, $a0, $a1
.L800A3A4C:
/* 0A464C 800A3A4C 80C7FFFF */  lb    $a3, -1($a2)
/* 0A4650 800A3A50 80C90000 */  lb    $t1, ($a2)
/* 0A4654 800A3A54 24A5FFFF */  addiu $a1, $a1, -1
/* 0A4658 800A3A58 01677021 */  addu  $t6, $t3, $a3
/* 0A465C 800A3A5C 01697821 */  addu  $t7, $t3, $t1
/* 0A4660 800A3A60 81EA0000 */  lb    $t2, ($t7)
/* 0A4664 800A3A64 81C80000 */  lb    $t0, ($t6)
/* 0A4668 800A3A68 0009C040 */  sll   $t8, $t1, 1
/* 0A466C 800A3A6C 01B8C821 */  addu  $t9, $t5, $t8
/* 0A4670 800A3A70 010A082A */  slt   $at, $t0, $t2
/* 0A4674 800A3A74 10200004 */  beqz  $at, .L800A3A88
/* 0A4678 800A3A78 00077840 */   sll   $t7, $a3, 1
/* 0A467C 800A3A7C A0C70000 */  sb    $a3, ($a2)
/* 0A4680 800A3A80 1000000E */  b     .L800A3ABC
/* 0A4684 800A3A84 A0C9FFFF */   sb    $t1, -1($a2)
.L800A3A88:
/* 0A4688 800A3A88 1548000E */  bne   $t2, $t0, .L800A3AC4
/* 0A468C 800A3A8C 01AFC021 */   addu  $t8, $t5, $t7
/* 0A4690 800A3A90 87280000 */  lh    $t0, ($t9)
/* 0A4694 800A3A94 820E0000 */  lb    $t6, ($s0)
/* 0A4698 800A3A98 010E082A */  slt   $at, $t0, $t6
/* 0A469C 800A3A9C 5020000A */  beql  $at, $zero, .L800A3AC8
/* 0A46A0 800A3AA0 24420001 */   addiu $v0, $v0, 1
/* 0A46A4 800A3AA4 87190000 */  lh    $t9, ($t8)
/* 0A46A8 800A3AA8 0119082A */  slt   $at, $t0, $t9
/* 0A46AC 800A3AAC 50200006 */  beql  $at, $zero, .L800A3AC8
/* 0A46B0 800A3AB0 24420001 */   addiu $v0, $v0, 1
/* 0A46B4 800A3AB4 A0C70000 */  sb    $a3, ($a2)
/* 0A46B8 800A3AB8 A0C9FFFF */  sb    $t1, -1($a2)
.L800A3ABC:
/* 0A46BC 800A3ABC 14A0FFE3 */  bnez  $a1, .L800A3A4C
/* 0A46C0 800A3AC0 24C6FFFF */   addiu $a2, $a2, -1
.L800A3AC4:
/* 0A46C4 800A3AC4 24420001 */  addiu $v0, $v0, 1
.L800A3AC8:
/* 0A46C8 800A3AC8 144CFFDC */  bne   $v0, $t4, .L800A3A3C
/* 0A46CC 800A3ACC 24630001 */   addiu $v1, $v1, 1
/* 0A46D0 800A3AD0 8FB00004 */  lw    $s0, 4($sp)
/* 0A46D4 800A3AD4 03E00008 */  jr    $ra
/* 0A46D8 800A3AD8 27BD0008 */   addiu $sp, $sp, 8
