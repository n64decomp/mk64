glabel segmented_to_virtual
/* 099D24 80099124 00047602 */  srl   $t6, $a0, 0x18
/* 099D28 80099128 000E7880 */  sll   $t7, $t6, 2
/* 099D2C 8009912C 3C188015 */  lui   $t8, %hi(gSegmentTable)
/* 099D30 80099130 030FC021 */  addu  $t8, $t8, $t7
/* 099D34 80099134 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 099D38 80099138 8F180258 */  lw    $t8, %lo(gSegmentTable)($t8)
/* 099D3C 8009913C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 099D40 80099140 0081C824 */  and   $t9, $a0, $at
/* 099D44 80099144 3C018000 */  lui   $at, 0x8000
/* 099D48 80099148 03191021 */  addu  $v0, $t8, $t9
/* 099D4C 8009914C 03E00008 */  jr    $ra
/* 099D50 80099150 00411021 */   addu  $v0, $v0, $at
