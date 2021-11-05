glabel func_8004B614
/* 04C214 8004B614 3C0A8015 */  lui   $t2, %hi(gDisplayListHead) # $t2, 0x8015
/* 04C218 8004B618 254A0298 */  addiu $t2, %lo(gDisplayListHead) # addiu $t2, $t2, 0x298
/* 04C21C 8004B61C 8D430000 */  lw    $v1, ($t2)
/* 04C220 8004B620 3C0FFA00 */  lui   $t7, 0xfa00
/* 04C224 8004B624 30AB00FF */  andi  $t3, $a1, 0xff
/* 04C228 8004B628 246E0008 */  addiu $t6, $v1, 8
/* 04C22C 8004B62C AD4E0000 */  sw    $t6, ($t2)
/* 04C230 8004B630 000B6400 */  sll   $t4, $t3, 0x10
/* 04C234 8004B634 AC6F0000 */  sw    $t7, ($v1)
/* 04C238 8004B638 8FAB0018 */  lw    $t3, 0x18($sp)
/* 04C23C 8004B63C 0004CE00 */  sll   $t9, $a0, 0x18
/* 04C240 8004B640 032C6825 */  or    $t5, $t9, $t4
/* 04C244 8004B644 30CE00FF */  andi  $t6, $a2, 0xff
/* 04C248 8004B648 000E7A00 */  sll   $t7, $t6, 8
/* 04C24C 8004B64C 01AFC025 */  or    $t8, $t5, $t7
/* 04C250 8004B650 317900FF */  andi  $t9, $t3, 0xff
/* 04C254 8004B654 03196025 */  or    $t4, $t8, $t9
/* 04C258 8004B658 AC6C0004 */  sw    $t4, 4($v1)
/* 04C25C 8004B65C 8D430000 */  lw    $v1, ($t2)
/* 04C260 8004B660 3C0DFB00 */  lui   $t5, 0xfb00
/* 04C264 8004B664 00075E00 */  sll   $t3, $a3, 0x18
/* 04C268 8004B668 246E0008 */  addiu $t6, $v1, 8
/* 04C26C 8004B66C AD4E0000 */  sw    $t6, ($t2)
/* 04C270 8004B670 AC6D0000 */  sw    $t5, ($v1)
/* 04C274 8004B674 8FB80010 */  lw    $t8, 0x10($sp)
/* 04C278 8004B678 8FAD0014 */  lw    $t5, 0x14($sp)
/* 04C27C 8004B67C 331900FF */  andi  $t9, $t8, 0xff
/* 04C280 8004B680 00196400 */  sll   $t4, $t9, 0x10
/* 04C284 8004B684 31AF00FF */  andi  $t7, $t5, 0xff
/* 04C288 8004B688 000FC200 */  sll   $t8, $t7, 8
/* 04C28C 8004B68C 016C7025 */  or    $t6, $t3, $t4
/* 04C290 8004B690 01D8C825 */  or    $t9, $t6, $t8
/* 04C294 8004B694 372B00FF */  ori   $t3, $t9, 0xff
/* 04C298 8004B698 AC6B0004 */  sw    $t3, 4($v1)
/* 04C29C 8004B69C 8D430000 */  lw    $v1, ($t2)
/* 04C2A0 8004B6A0 3C0F5565 */  lui   $t7, (0x5565FEFF >> 16) # lui $t7, 0x5565
/* 04C2A4 8004B6A4 3C0DFC60 */  lui   $t5, (0xFC60B2C1 >> 16) # lui $t5, 0xfc60
/* 04C2A8 8004B6A8 246C0008 */  addiu $t4, $v1, 8
/* 04C2AC 8004B6AC AD4C0000 */  sw    $t4, ($t2)
/* 04C2B0 8004B6B0 35ADB2C1 */  ori   $t5, (0xFC60B2C1 & 0xFFFF) # ori $t5, $t5, 0xb2c1
/* 04C2B4 8004B6B4 35EFFEFF */  ori   $t7, (0x5565FEFF & 0xFFFF) # ori $t7, $t7, 0xfeff
/* 04C2B8 8004B6B8 AC6F0004 */  sw    $t7, 4($v1)
/* 04C2BC 8004B6BC 03E00008 */  jr    $ra
/* 04C2C0 8004B6C0 AC6D0000 */   sw    $t5, ($v1)
