glabel func_802AAA70
/* 114080 802AAA70 00047602 */  srl   $t6, $a0, 0x18
/* 114084 802AAA74 000E7880 */  sll   $t7, $t6, 2
/* 114088 802AAA78 3C188015 */  lui   $t8, %hi(gSegmentTable)
/* 11408C 802AAA7C 030FC021 */  addu  $t8, $t8, $t7
/* 114090 802AAA80 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 114094 802AAA84 8F180258 */  lw    $t8, %lo(gSegmentTable)($t8)
/* 114098 802AAA88 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 11409C 802AAA8C 0081C824 */  and   $t9, $a0, $at
/* 1140A0 802AAA90 3C018000 */  lui   $at, 0x8000
/* 1140A4 802AAA94 03191021 */  addu  $v0, $t8, $t9
/* 1140A8 802AAA98 00411021 */  addu  $v0, $v0, $at
/* 1140AC 802AAA9C 3C08B800 */  lui   $t0, 0xb800
/* 1140B0 802AAAA0 AC480000 */  sw    $t0, ($v0)
/* 1140B4 802AAAA4 03E00008 */  jr    $ra
/* 1140B8 802AAAA8 AC400004 */   sw    $zero, 4($v0)
