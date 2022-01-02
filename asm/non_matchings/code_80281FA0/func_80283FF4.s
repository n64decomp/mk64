glabel func_80283FF4
/* 127634 80283FF4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 127638 80283FF8 3C0E800E */  lui   $t6, %hi(gPlayerThree) # $t6, 0x800e
/* 12763C 80283FFC 8DCEC4E4 */  lw    $t6, %lo(gPlayerThree)($t6)
/* 127640 80284000 AFBF0014 */  sw    $ra, 0x14($sp)
/* 127644 80284004 AFA40018 */  sw    $a0, 0x18($sp)
/* 127648 80284008 3C063DF5 */  lui   $a2, (0x3DF5C28F >> 16) # lui $a2, 0x3df5
/* 12764C 8028400C 34C6C28F */  ori   $a2, (0x3DF5C28F & 0xFFFF) # ori $a2, $a2, 0xc28f
/* 127650 80284010 0C0A0868 */  jal   func_802821A0
/* 127654 80284014 8DC50014 */   lw    $a1, 0x14($t6)
/* 127658 80284018 3C0F800E */  lui   $t7, %hi(gPlayerThree) # $t7, 0x800e
/* 12765C 8028401C 8DEFC4E4 */  lw    $t7, %lo(gPlayerThree)($t7)
/* 127660 80284020 8FA40018 */  lw    $a0, 0x18($sp)
/* 127664 80284024 3C063DF5 */  lui   $a2, (0x3DF5C28F >> 16) # lui $a2, 0x3df5
/* 127668 80284028 34C6C28F */  ori   $a2, (0x3DF5C28F & 0xFFFF) # ori $a2, $a2, 0xc28f
/* 12766C 8028402C 8DE50018 */  lw    $a1, 0x18($t7)
/* 127670 80284030 0C0A0868 */  jal   func_802821A0
/* 127674 80284034 24840004 */   addiu $a0, $a0, 4
/* 127678 80284038 3C18800E */  lui   $t8, %hi(gPlayerThree) # $t8, 0x800e
/* 12767C 8028403C 8F18C4E4 */  lw    $t8, %lo(gPlayerThree)($t8)
/* 127680 80284040 8FA40018 */  lw    $a0, 0x18($sp)
/* 127684 80284044 3C063DF5 */  lui   $a2, (0x3DF5C28F >> 16) # lui $a2, 0x3df5
/* 127688 80284048 34C6C28F */  ori   $a2, (0x3DF5C28F & 0xFFFF) # ori $a2, $a2, 0xc28f
/* 12768C 8028404C 8F05001C */  lw    $a1, 0x1c($t8)
/* 127690 80284050 0C0A0868 */  jal   func_802821A0
/* 127694 80284054 24840008 */   addiu $a0, $a0, 8
/* 127698 80284058 8FBF0014 */  lw    $ra, 0x14($sp)
/* 12769C 8028405C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1276A0 80284060 03E00008 */  jr    $ra
/* 1276A4 80284064 00000000 */   nop
