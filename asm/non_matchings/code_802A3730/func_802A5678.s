glabel func_802A5678
/* 10EC88 802A5678 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 10EC8C 802A567C AFBF001C */  sw    $ra, 0x1c($sp)
/* 10EC90 802A5680 0C0A8F8F */  jal   func_802A3E3C
/* 10EC94 802A5684 00000000 */   nop   
/* 10EC98 802A5688 3C04800E */  lui   $a0, %hi(D_800DC5F4) # $a0, 0x800e
/* 10EC9C 802A568C 0C0A8E78 */  jal   func_802A39E0
/* 10ECA0 802A5690 8C84C5F4 */   lw    $a0, %lo(D_800DC5F4)($a0)
/* 10ECA4 802A5694 3C04800E */  lui   $a0, %hi(D_800DC5F4) # $a0, 0x800e
/* 10ECA8 802A5698 0C0A8DCC */  jal   func_802A3730
/* 10ECAC 802A569C 8C84C5F4 */   lw    $a0, %lo(D_800DC5F4)($a0)
/* 10ECB0 802A56A0 3C058015 */  lui   $a1, %hi(gDisplayListHead) # $a1, 0x8015
/* 10ECB4 802A56A4 24A50298 */  addiu $a1, %lo(gDisplayListHead) # addiu $a1, $a1, 0x298
/* 10ECB8 802A56A8 8CA20000 */  lw    $v0, ($a1)
/* 10ECBC 802A56AC 3C0FB600 */  lui   $t7, 0xb600
/* 10ECC0 802A56B0 2418FFFF */  li    $t8, -1
/* 10ECC4 802A56B4 244E0008 */  addiu $t6, $v0, 8
/* 10ECC8 802A56B8 ACAE0000 */  sw    $t6, ($a1)
/* 10ECCC 802A56BC AC580004 */  sw    $t8, 4($v0)
/* 10ECD0 802A56C0 AC4F0000 */  sw    $t7, ($v0)
/* 10ECD4 802A56C4 8CA20000 */  lw    $v0, ($a1)
/* 10ECD8 802A56C8 3C090080 */  lui   $t1, (0x00800204 >> 16) # lui $t1, 0x80
/* 10ECDC 802A56CC 35290204 */  ori   $t1, (0x00800204 & 0xFFFF) # ori $t1, $t1, 0x204
/* 10ECE0 802A56D0 24590008 */  addiu $t9, $v0, 8
/* 10ECE4 802A56D4 ACB90000 */  sw    $t9, ($a1)
/* 10ECE8 802A56D8 3C08B700 */  lui   $t0, 0xb700
/* 10ECEC 802A56DC 3C0A800E */  lui   $t2, %hi(D_800DC5B4) # $t2, 0x800e
/* 10ECF0 802A56E0 AC480000 */  sw    $t0, ($v0)
/* 10ECF4 802A56E4 AC490004 */  sw    $t1, 4($v0)
/* 10ECF8 802A56E8 954AC5B4 */  lhu   $t2, %lo(D_800DC5B4)($t2)
/* 10ECFC 802A56EC 3C04802C */  lui   $a0, %hi(D_802B8990) # $a0, 0x802c
/* 10ED00 802A56F0 24848990 */  addiu $a0, %lo(D_802B8990) # addiu $a0, $a0, -0x7670
/* 10ED04 802A56F4 11400016 */  beqz  $t2, .L802A5750
/* 10ED08 802A56F8 3C05800E */   lui   $a1, %hi(D_800DC5F4) # $a1, 0x800e
/* 10ED0C 802A56FC 3C0B8015 */  lui   $t3, %hi(D_80150138) # $t3, 0x8015
/* 10ED10 802A5700 256B0138 */  addiu $t3, %lo(D_80150138) # addiu $t3, $t3, 0x138
/* 10ED14 802A5704 AFAB0010 */  sw    $t3, 0x10($sp)
/* 10ED18 802A5708 8CA5C5F4 */  lw    $a1, %lo(D_800DC5F4)($a1)
/* 10ED1C 802A570C 24060140 */  li    $a2, 320
/* 10ED20 802A5710 0C0A9283 */  jal   func_802A4A0C
/* 10ED24 802A5714 240700F0 */   li    $a3, 240
/* 10ED28 802A5718 0C015FF1 */  jal   func_80057FC4
/* 10ED2C 802A571C 2404000A */   li    $a0, 10
/* 10ED30 802A5720 3C0C8015 */  lui   $t4, %hi(D_80150138) # $t4, 0x8015
/* 10ED34 802A5724 258C0138 */  addiu $t4, %lo(D_80150138) # addiu $t4, $t4, 0x138
/* 10ED38 802A5728 3C04802C */  lui   $a0, %hi(D_802B8990) # $a0, 0x802c
/* 10ED3C 802A572C 3C05800E */  lui   $a1, %hi(D_800DC5F4) # $a1, 0x800e
/* 10ED40 802A5730 8CA5C5F4 */  lw    $a1, %lo(D_800DC5F4)($a1)
/* 10ED44 802A5734 24848990 */  addiu $a0, %lo(D_802B8990) # addiu $a0, $a0, -0x7670
/* 10ED48 802A5738 AFAC0010 */  sw    $t4, 0x10($sp)
/* 10ED4C 802A573C 24060140 */  li    $a2, 320
/* 10ED50 802A5740 0C0A921F */  jal   func_802A487C
/* 10ED54 802A5744 240700F0 */   li    $a3, 240
/* 10ED58 802A5748 0C024E8C */  jal   func_80093A30
/* 10ED5C 802A574C 2404000A */   li    $a0, 10
.L802A5750:
/* 10ED60 802A5750 8FBF001C */  lw    $ra, 0x1c($sp)
/* 10ED64 802A5754 27BD0020 */  addiu $sp, $sp, 0x20
/* 10ED68 802A5758 03E00008 */  jr    $ra
/* 10ED6C 802A575C 00000000 */   nop   
