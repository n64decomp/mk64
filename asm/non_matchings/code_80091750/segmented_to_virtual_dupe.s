glabel segmented_to_virtual_dupe
/* 099D54 80099154 00047602 */  srl   $t6, $a0, 0x18
/* 099D58 80099158 000E7880 */  sll   $t7, $t6, 2
/* 099D5C 8009915C 3C188015 */  lui   $t8, %hi(gSegmentTable)
/* 099D60 80099160 030FC021 */  addu  $t8, $t8, $t7
/* 099D64 80099164 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 099D68 80099168 8F180258 */  lw    $t8, %lo(gSegmentTable)($t8)
/* 099D6C 8009916C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 099D70 80099170 0081C824 */  and   $t9, $a0, $at
/* 099D74 80099174 3C018000 */  lui   $at, 0x8000
/* 099D78 80099178 03191021 */  addu  $v0, $t8, $t9
/* 099D7C 8009917C 03E00008 */  jr    $ra
/* 099D80 80099180 00411021 */   addu  $v0, $v0, $at
