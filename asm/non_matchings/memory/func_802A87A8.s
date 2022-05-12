glabel func_802A87A8
/* 111DB8 802A87A8 00047602 */  srl   $t6, $a0, 0x18
/* 111DBC 802A87AC 000E7880 */  sll   $t7, $t6, 2
/* 111DC0 802A87B0 3C188015 */  lui   $t8, %hi(gSegmentTable)
/* 111DC4 802A87B4 030FC021 */  addu  $t8, $t8, $t7
/* 111DC8 802A87B8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 111DCC 802A87BC 8F180258 */  lw    $t8, %lo(gSegmentTable)($t8)
/* 111DD0 802A87C0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 111DD4 802A87C4 0081C824 */  and   $t9, $a0, $at
/* 111DD8 802A87C8 3C038016 */  lui   $v1, %hi(gPrevLoadedAddress) # $v1, 0x8016
/* 111DDC 802A87CC 00054880 */  sll   $t1, $a1, 2
/* 111DE0 802A87D0 2463F728 */  addiu $v1, %lo(gPrevLoadedAddress) # addiu $v1, $v1, -0x8d8
/* 111DE4 802A87D4 3C018000 */  lui   $at, 0x8000
/* 111DE8 802A87D8 01254823 */  subu  $t1, $t1, $a1
/* 111DEC 802A87DC 03192021 */  addu  $a0, $t8, $t9
/* 111DF0 802A87E0 8C620000 */  lw    $v0, ($v1)
/* 111DF4 802A87E4 00812021 */  addu  $a0, $a0, $at
/* 111DF8 802A87E8 000948C0 */  sll   $t1, $t1, 3
/* 111DFC 802A87EC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 111E00 802A87F0 252A000F */  addiu $t2, $t1, 0xf
/* 111E04 802A87F4 2401FFF0 */  li    $at, -16
/* 111E08 802A87F8 01415824 */  and   $t3, $t2, $at
/* 111E0C 802A87FC AFBF0014 */  sw    $ra, 0x14($sp)
/* 111E10 802A8800 AFA5002C */  sw    $a1, 0x2c($sp)
/* 111E14 802A8804 004B6021 */  addu  $t4, $v0, $t3
/* 111E18 802A8808 AC6C0000 */  sw    $t4, ($v1)
/* 111E1C 802A880C 00402825 */  move  $a1, $v0
/* 111E20 802A8810 0C010034 */  jal   mio0decode
/* 111E24 802A8814 AFA20018 */   sw    $v0, 0x18($sp)
/* 111E28 802A8818 8FA40018 */  lw    $a0, 0x18($sp)
/* 111E2C 802A881C 0C0AA1AA */  jal   func_802A86A8
/* 111E30 802A8820 8FA5002C */   lw    $a1, 0x2c($sp)
/* 111E34 802A8824 3C058016 */  lui   $a1, %hi(gHeapEndPtr) # $a1, 0x8016
/* 111E38 802A8828 8CA5F72C */  lw    $a1, %lo(gHeapEndPtr)($a1)
/* 111E3C 802A882C 0C0A9EE5 */  jal   set_segment_base_addr
/* 111E40 802A8830 24040004 */   li    $a0, 4
/* 111E44 802A8834 8FBF0014 */  lw    $ra, 0x14($sp)
/* 111E48 802A8838 27BD0028 */  addiu $sp, $sp, 0x28
/* 111E4C 802A883C 03E00008 */  jr    $ra
/* 111E50 802A8840 00000000 */   nop   
