glabel func_80284494
/* 127AD4 80284494 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 127AD8 80284498 AFA40018 */  sw    $a0, 0x18($sp)
/* 127ADC 8028449C AFBF0014 */  sw    $ra, 0x14($sp)
/* 127AE0 802844A0 3C048028 */  lui   $a0, %hi(D_80283ACC) # $a0, 0x8028
/* 127AE4 802844A4 24843ACC */  addiu $a0, %lo(D_80283ACC) # addiu $a0, $a0, 0x3acc
/* 127AE8 802844A8 8FA50018 */  lw    $a1, 0x18($sp)
/* 127AEC 802844AC 2406001E */  li    $a2, 30
/* 127AF0 802844B0 0C0A0CB1 */  jal   func_802832C4
/* 127AF4 802844B4 2407001E */   li    $a3, 30
/* 127AF8 802844B8 3C048028 */  lui   $a0, %hi(D_80283968) # $a0, 0x8028
/* 127AFC 802844BC 24843968 */  addiu $a0, %lo(D_80283968) # addiu $a0, $a0, 0x3968
/* 127B00 802844C0 8FA50018 */  lw    $a1, 0x18($sp)
/* 127B04 802844C4 00003025 */  move  $a2, $zero
/* 127B08 802844C8 0C0A0CB1 */  jal   func_802832C4
/* 127B0C 802844CC 00003825 */   move  $a3, $zero
/* 127B10 802844D0 3C058028 */  lui   $a1, %hi(D_80285A88) # $a1, 0x8028
/* 127B14 802844D4 3C068028 */  lui   $a2, %hi(D_80285AB8) # $a2, 0x8028
/* 127B18 802844D8 24C65AB8 */  addiu $a2, %lo(D_80285AB8) # addiu $a2, $a2, 0x5ab8
/* 127B1C 802844DC 24A55A88 */  addiu $a1, %lo(D_80285A88) # addiu $a1, $a1, 0x5a88
/* 127B20 802844E0 8FA40018 */  lw    $a0, 0x18($sp)
/* 127B24 802844E4 0C0A0B64 */  jal   func_80282D90
/* 127B28 802844E8 00003825 */   move  $a3, $zero
/* 127B2C 802844EC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 127B30 802844F0 27BD0018 */  addiu $sp, $sp, 0x18
/* 127B34 802844F4 03E00008 */  jr    $ra
/* 127B38 802844F8 00000000 */   nop   
