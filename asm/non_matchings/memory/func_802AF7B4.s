glabel func_802AF7B4
/* 118DC4 802AF7B4 00047602 */  srl   $t6, $a0, 0x18
/* 118DC8 802AF7B8 000E7880 */  sll   $t7, $t6, 2
/* 118DCC 802AF7BC 3C188015 */  lui   $t8, %hi(gSegmentTable)
/* 118DD0 802AF7C0 030FC021 */  addu  $t8, $t8, $t7
/* 118DD4 802AF7C4 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 118DD8 802AF7C8 8F180258 */  lw    $t8, %lo(gSegmentTable)($t8)
/* 118DDC 802AF7CC 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 118DE0 802AF7D0 0081C824 */  and   $t9, $a0, $at
/* 118DE4 802AF7D4 3C018000 */  lui   $at, 0x8000
/* 118DE8 802AF7D8 03191021 */  addu  $v0, $t8, $t9
/* 118DEC 802AF7DC 00411021 */  addu  $v0, $v0, $at
/* 118DF0 802AF7E0 3C0100FF */  lui   $at, (0x00FFF000 >> 16) # lui $at, 0xff
/* 118DF4 802AF7E4 3421F000 */  ori   $at, (0x00FFF000 & 0xFFFF) # ori $at, $at, 0xf000
/* 118DF8 802AF7E8 00054B00 */  sll   $t1, $a1, 0xc
/* 118DFC 802AF7EC 30CB0FFF */  andi  $t3, $a2, 0xfff
/* 118E00 802AF7F0 01212824 */  and   $a1, $t1, $at
/* 118E04 802AF7F4 01603025 */  move  $a2, $t3
/* 118E08 802AF7F8 3C04FF00 */  lui   $a0, 0xff00
/* 118E0C 802AF7FC 3C08F200 */  lui   $t0, 0xf200
/* 118E10 802AF800 3C07B800 */  lui   $a3, 0xb800
.L802AF804:
/* 118E14 802AF804 8C4C0000 */  lw    $t4, ($v0)
/* 118E18 802AF808 01841824 */  and   $v1, $t4, $a0
/* 118E1C 802AF80C 10670009 */  beq   $v1, $a3, .L802AF834
/* 118E20 802AF810 00000000 */   nop   
/* 118E24 802AF814 14680005 */  bne   $v1, $t0, .L802AF82C
/* 118E28 802AF818 3C01F200 */   lui   $at, 0xf200
/* 118E2C 802AF81C 00A16825 */  or    $t5, $a1, $at
/* 118E30 802AF820 01A67025 */  or    $t6, $t5, $a2
/* 118E34 802AF824 03E00008 */  jr    $ra
/* 118E38 802AF828 AC4E0000 */   sw    $t6, ($v0)

.L802AF82C:
/* 118E3C 802AF82C 1000FFF5 */  b     .L802AF804
/* 118E40 802AF830 24420008 */   addiu $v0, $v0, 8
.L802AF834:
/* 118E44 802AF834 03E00008 */  jr    $ra
/* 118E48 802AF838 00000000 */   nop   
