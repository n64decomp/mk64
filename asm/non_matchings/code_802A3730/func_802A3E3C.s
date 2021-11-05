glabel func_802A3E3C
/* 10D44C 802A3E3C 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 10D450 802A3E40 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 10D454 802A3E44 8C620000 */  lw    $v0, ($v1)
/* 10D458 802A3E48 3C0FE700 */  lui   $t7, 0xe700
/* 10D45C 802A3E4C 3C19BA00 */  lui   $t9, (0xBA001701 >> 16) # lui $t9, 0xba00
/* 10D460 802A3E50 244E0008 */  addiu $t6, $v0, 8
/* 10D464 802A3E54 AC6E0000 */  sw    $t6, ($v1)
/* 10D468 802A3E58 AC400004 */  sw    $zero, 4($v0)
/* 10D46C 802A3E5C AC4F0000 */  sw    $t7, ($v0)
/* 10D470 802A3E60 8C620000 */  lw    $v0, ($v1)
/* 10D474 802A3E64 3C0E0080 */  lui   $t6, 0x80
/* 10D478 802A3E68 37391701 */  ori   $t9, (0xBA001701 & 0xFFFF) # ori $t9, $t9, 0x1701
/* 10D47C 802A3E6C 24580008 */  addiu $t8, $v0, 8
/* 10D480 802A3E70 AC780000 */  sw    $t8, ($v1)
/* 10D484 802A3E74 AC4E0004 */  sw    $t6, 4($v0)
/* 10D488 802A3E78 AC590000 */  sw    $t9, ($v0)
/* 10D48C 802A3E7C 8C620000 */  lw    $v0, ($v1)
/* 10D490 802A3E80 3C190050 */  lui   $t9, (0x005003C0 >> 16) # lui $t9, 0x50
/* 10D494 802A3E84 373903C0 */  ori   $t9, (0x005003C0 & 0xFFFF) # ori $t9, $t9, 0x3c0
/* 10D498 802A3E88 244F0008 */  addiu $t7, $v0, 8
/* 10D49C 802A3E8C AC6F0000 */  sw    $t7, ($v1)
/* 10D4A0 802A3E90 3C18ED00 */  lui   $t8, 0xed00
/* 10D4A4 802A3E94 AC580000 */  sw    $t8, ($v0)
/* 10D4A8 802A3E98 AC590004 */  sw    $t9, 4($v0)
/* 10D4AC 802A3E9C 8C620000 */  lw    $v0, ($v1)
/* 10D4B0 802A3EA0 3C18FFFE */  lui   $t8, (0xFFFE793C >> 16) # lui $t8, 0xfffe
/* 10D4B4 802A3EA4 3C0FFCFF */  lui   $t7, (0xFCFFFFFF >> 16) # lui $t7, 0xfcff
/* 10D4B8 802A3EA8 244E0008 */  addiu $t6, $v0, 8
/* 10D4BC 802A3EAC AC6E0000 */  sw    $t6, ($v1)
/* 10D4C0 802A3EB0 35EFFFFF */  ori   $t7, (0xFCFFFFFF & 0xFFFF) # ori $t7, $t7, 0xffff
/* 10D4C4 802A3EB4 3718793C */  ori   $t8, (0xFFFE793C & 0xFFFF) # ori $t8, $t8, 0x793c
/* 10D4C8 802A3EB8 AC580004 */  sw    $t8, 4($v0)
/* 10D4CC 802A3EBC AC4F0000 */  sw    $t7, ($v0)
/* 10D4D0 802A3EC0 8C620000 */  lw    $v0, ($v1)
/* 10D4D4 802A3EC4 3C0EBA00 */  lui   $t6, (0xBA001001 >> 16) # lui $t6, 0xba00
/* 10D4D8 802A3EC8 35CE1001 */  ori   $t6, (0xBA001001 & 0xFFFF) # ori $t6, $t6, 0x1001
/* 10D4DC 802A3ECC 24590008 */  addiu $t9, $v0, 8
/* 10D4E0 802A3ED0 AC790000 */  sw    $t9, ($v1)
/* 10D4E4 802A3ED4 AC400004 */  sw    $zero, 4($v0)
/* 10D4E8 802A3ED8 AC4E0000 */  sw    $t6, ($v0)
/* 10D4EC 802A3EDC 8C620000 */  lw    $v0, ($v1)
/* 10D4F0 802A3EE0 3C18BA00 */  lui   $t8, (0xBA000E02 >> 16) # lui $t8, 0xba00
/* 10D4F4 802A3EE4 37180E02 */  ori   $t8, (0xBA000E02 & 0xFFFF) # ori $t8, $t8, 0xe02
/* 10D4F8 802A3EE8 244F0008 */  addiu $t7, $v0, 8
/* 10D4FC 802A3EEC AC6F0000 */  sw    $t7, ($v1)
/* 10D500 802A3EF0 AC400004 */  sw    $zero, 4($v0)
/* 10D504 802A3EF4 AC580000 */  sw    $t8, ($v0)
/* 10D508 802A3EF8 8C620000 */  lw    $v0, ($v1)
/* 10D50C 802A3EFC 3C0EBA00 */  lui   $t6, (0xBA001102 >> 16) # lui $t6, 0xba00
/* 10D510 802A3F00 35CE1102 */  ori   $t6, (0xBA001102 & 0xFFFF) # ori $t6, $t6, 0x1102
/* 10D514 802A3F04 24590008 */  addiu $t9, $v0, 8
/* 10D518 802A3F08 AC790000 */  sw    $t9, ($v1)
/* 10D51C 802A3F0C AC400004 */  sw    $zero, 4($v0)
/* 10D520 802A3F10 AC4E0000 */  sw    $t6, ($v0)
/* 10D524 802A3F14 8C620000 */  lw    $v0, ($v1)
/* 10D528 802A3F18 3C18BA00 */  lui   $t8, (0xBA001301 >> 16) # lui $t8, 0xba00
/* 10D52C 802A3F1C 37181301 */  ori   $t8, (0xBA001301 & 0xFFFF) # ori $t8, $t8, 0x1301
/* 10D530 802A3F20 244F0008 */  addiu $t7, $v0, 8
/* 10D534 802A3F24 AC6F0000 */  sw    $t7, ($v1)
/* 10D538 802A3F28 3C190008 */  lui   $t9, 8
/* 10D53C 802A3F2C AC590004 */  sw    $t9, 4($v0)
/* 10D540 802A3F30 AC580000 */  sw    $t8, ($v0)
/* 10D544 802A3F34 8C620000 */  lw    $v0, ($v1)
/* 10D548 802A3F38 3C0FBA00 */  lui   $t7, (0xBA000C02 >> 16) # lui $t7, 0xba00
/* 10D54C 802A3F3C 35EF0C02 */  ori   $t7, (0xBA000C02 & 0xFFFF) # ori $t7, $t7, 0xc02
/* 10D550 802A3F40 244E0008 */  addiu $t6, $v0, 8
/* 10D554 802A3F44 AC6E0000 */  sw    $t6, ($v1)
/* 10D558 802A3F48 24182000 */  li    $t8, 8192
/* 10D55C 802A3F4C AC580004 */  sw    $t8, 4($v0)
/* 10D560 802A3F50 AC4F0000 */  sw    $t7, ($v0)
/* 10D564 802A3F54 8C620000 */  lw    $v0, ($v1)
/* 10D568 802A3F58 3C0EBA00 */  lui   $t6, (0xBA000903 >> 16) # lui $t6, 0xba00
/* 10D56C 802A3F5C 35CE0903 */  ori   $t6, (0xBA000903 & 0xFFFF) # ori $t6, $t6, 0x903
/* 10D570 802A3F60 24590008 */  addiu $t9, $v0, 8
/* 10D574 802A3F64 AC790000 */  sw    $t9, ($v1)
/* 10D578 802A3F68 240F0C00 */  li    $t7, 3072
/* 10D57C 802A3F6C AC4F0004 */  sw    $t7, 4($v0)
/* 10D580 802A3F70 AC4E0000 */  sw    $t6, ($v0)
/* 10D584 802A3F74 8C620000 */  lw    $v0, ($v1)
/* 10D588 802A3F78 3C19BA00 */  lui   $t9, (0xBA000801 >> 16) # lui $t9, 0xba00
/* 10D58C 802A3F7C 37390801 */  ori   $t9, (0xBA000801 & 0xFFFF) # ori $t9, $t9, 0x801
/* 10D590 802A3F80 24580008 */  addiu $t8, $v0, 8
/* 10D594 802A3F84 AC780000 */  sw    $t8, ($v1)
/* 10D598 802A3F88 AC400004 */  sw    $zero, 4($v0)
/* 10D59C 802A3F8C AC590000 */  sw    $t9, ($v0)
/* 10D5A0 802A3F90 8C620000 */  lw    $v0, ($v1)
/* 10D5A4 802A3F94 3C0FB900 */  lui   $t7, (0xB9000002 >> 16) # lui $t7, 0xb900
/* 10D5A8 802A3F98 35EF0002 */  ori   $t7, (0xB9000002 & 0xFFFF) # ori $t7, $t7, 2
/* 10D5AC 802A3F9C 244E0008 */  addiu $t6, $v0, 8
/* 10D5B0 802A3FA0 AC6E0000 */  sw    $t6, ($v1)
/* 10D5B4 802A3FA4 AC400004 */  sw    $zero, 4($v0)
/* 10D5B8 802A3FA8 AC4F0000 */  sw    $t7, ($v0)
/* 10D5BC 802A3FAC 8C620000 */  lw    $v0, ($v1)
/* 10D5C0 802A3FB0 3C0E0F0A */  lui   $t6, (0x0F0A4000 >> 16) # lui $t6, 0xf0a
/* 10D5C4 802A3FB4 3C19B900 */  lui   $t9, (0xB900031D >> 16) # lui $t9, 0xb900
/* 10D5C8 802A3FB8 24580008 */  addiu $t8, $v0, 8
/* 10D5CC 802A3FBC AC780000 */  sw    $t8, ($v1)
/* 10D5D0 802A3FC0 3739031D */  ori   $t9, (0xB900031D & 0xFFFF) # ori $t9, $t9, 0x31d
/* 10D5D4 802A3FC4 35CE4000 */  ori   $t6, (0x0F0A4000 & 0xFFFF) # ori $t6, $t6, 0x4000
/* 10D5D8 802A3FC8 AC4E0004 */  sw    $t6, 4($v0)
/* 10D5DC 802A3FCC AC590000 */  sw    $t9, ($v0)
/* 10D5E0 802A3FD0 8C620000 */  lw    $v0, ($v1)
/* 10D5E4 802A3FD4 3C18C000 */  lui   $t8, 0xc000
/* 10D5E8 802A3FD8 3C0EBA00 */  lui   $t6, (0xBA000602 >> 16) # lui $t6, 0xba00
/* 10D5EC 802A3FDC 244F0008 */  addiu $t7, $v0, 8
/* 10D5F0 802A3FE0 AC6F0000 */  sw    $t7, ($v1)
/* 10D5F4 802A3FE4 AC400004 */  sw    $zero, 4($v0)
/* 10D5F8 802A3FE8 AC580000 */  sw    $t8, ($v0)
/* 10D5FC 802A3FEC 8C620000 */  lw    $v0, ($v1)
/* 10D600 802A3FF0 240F00C0 */  li    $t7, 192
/* 10D604 802A3FF4 35CE0602 */  ori   $t6, (0xBA000602 & 0xFFFF) # ori $t6, $t6, 0x602
/* 10D608 802A3FF8 24590008 */  addiu $t9, $v0, 8
/* 10D60C 802A3FFC AC790000 */  sw    $t9, ($v1)
/* 10D610 802A4000 AC4F0004 */  sw    $t7, 4($v0)
/* 10D614 802A4004 AC4E0000 */  sw    $t6, ($v0)
/* 10D618 802A4008 8C620000 */  lw    $v0, ($v1)
/* 10D61C 802A400C 3C19E700 */  lui   $t9, 0xe700
/* 10D620 802A4010 3C0FBC00 */  lui   $t7, (0xBC000404 >> 16) # lui $t7, 0xbc00
/* 10D624 802A4014 24580008 */  addiu $t8, $v0, 8
/* 10D628 802A4018 AC780000 */  sw    $t8, ($v1)
/* 10D62C 802A401C AC400004 */  sw    $zero, 4($v0)
/* 10D630 802A4020 AC590000 */  sw    $t9, ($v0)
/* 10D634 802A4024 8C620000 */  lw    $v0, ($v1)
/* 10D638 802A4028 24180001 */  li    $t8, 1
/* 10D63C 802A402C 35EF0404 */  ori   $t7, (0xBC000404 & 0xFFFF) # ori $t7, $t7, 0x404
/* 10D640 802A4030 244E0008 */  addiu $t6, $v0, 8
/* 10D644 802A4034 AC6E0000 */  sw    $t6, ($v1)
/* 10D648 802A4038 AC580004 */  sw    $t8, 4($v0)
/* 10D64C 802A403C AC4F0000 */  sw    $t7, ($v0)
/* 10D650 802A4040 8C620000 */  lw    $v0, ($v1)
/* 10D654 802A4044 3C0EBC00 */  lui   $t6, (0xBC000C04 >> 16) # lui $t6, 0xbc00
/* 10D658 802A4048 35CE0C04 */  ori   $t6, (0xBC000C04 & 0xFFFF) # ori $t6, $t6, 0xc04
/* 10D65C 802A404C 24590008 */  addiu $t9, $v0, 8
/* 10D660 802A4050 AC790000 */  sw    $t9, ($v1)
/* 10D664 802A4054 240F0001 */  li    $t7, 1
/* 10D668 802A4058 AC4F0004 */  sw    $t7, 4($v0)
/* 10D66C 802A405C AC4E0000 */  sw    $t6, ($v0)
/* 10D670 802A4060 8C620000 */  lw    $v0, ($v1)
/* 10D674 802A4064 3C19BC00 */  lui   $t9, (0xBC001404 >> 16) # lui $t9, 0xbc00
/* 10D678 802A4068 37391404 */  ori   $t9, (0xBC001404 & 0xFFFF) # ori $t9, $t9, 0x1404
/* 10D67C 802A406C 24580008 */  addiu $t8, $v0, 8
/* 10D680 802A4070 AC780000 */  sw    $t8, ($v1)
/* 10D684 802A4074 340EFFFF */  li    $t6, 65535
/* 10D688 802A4078 AC4E0004 */  sw    $t6, 4($v0)
/* 10D68C 802A407C AC590000 */  sw    $t9, ($v0)
/* 10D690 802A4080 8C620000 */  lw    $v0, ($v1)
/* 10D694 802A4084 3C18BC00 */  lui   $t8, (0xBC001C04 >> 16) # lui $t8, 0xbc00
/* 10D698 802A4088 37181C04 */  ori   $t8, (0xBC001C04 & 0xFFFF) # ori $t8, $t8, 0x1c04
/* 10D69C 802A408C 244F0008 */  addiu $t7, $v0, 8
/* 10D6A0 802A4090 AC6F0000 */  sw    $t7, ($v1)
/* 10D6A4 802A4094 3419FFFF */  li    $t9, 65535
/* 10D6A8 802A4098 AC590004 */  sw    $t9, 4($v0)
/* 10D6AC 802A409C 03E00008 */  jr    $ra
/* 10D6B0 802A40A0 AC580000 */   sw    $t8, ($v0)

/* 10D6B4 802A40A4 03E00008 */  jr    $ra
/* 10D6B8 802A40A8 00000000 */   nop   

/* 10D6BC 802A40AC 03E00008 */  jr    $ra
/* 10D6C0 802A40B0 00000000 */   nop   

/* 10D6C4 802A40B4 03E00008 */  jr    $ra
/* 10D6C8 802A40B8 00000000 */   nop   

/* 10D6CC 802A40BC 03E00008 */  jr    $ra
/* 10D6D0 802A40C0 00000000 */   nop   

/* 10D6D4 802A40C4 03E00008 */  jr    $ra
/* 10D6D8 802A40C8 00000000 */   nop   

/* 10D6DC 802A40CC 03E00008 */  jr    $ra
/* 10D6E0 802A40D0 00000000 */   nop   

/* 10D6E4 802A40D4 03E00008 */  jr    $ra
/* 10D6E8 802A40D8 00000000 */   nop   

/* 10D6EC 802A40DC 03E00008 */  jr    $ra
/* 10D6F0 802A40E0 00000000 */   nop   

/* 10D6F4 802A40E4 3C068015 */  lui   $a2, %hi(gDisplayListHead) # $a2, 0x8015
/* 10D6F8 802A40E8 24C60298 */  addiu $a2, %lo(gDisplayListHead) # addiu $a2, $a2, 0x298
/* 10D6FC 802A40EC 8CC20000 */  lw    $v0, ($a2)
/* 10D700 802A40F0 3C0F0380 */  lui   $t7, (0x03800010 >> 16) # lui $t7, 0x380
/* 10D704 802A40F4 35EF0010 */  ori   $t7, (0x03800010 & 0xFFFF) # ori $t7, $t7, 0x10
/* 10D708 802A40F8 244E0008 */  addiu $t6, $v0, 8
/* 10D70C 802A40FC ACCE0000 */  sw    $t6, ($a2)
/* 10D710 802A4100 3C18800E */  lui   $t8, %hi(D_800DC5EC) # $t8, 0x800e
/* 10D714 802A4104 AC4F0000 */  sw    $t7, ($v0)
/* 10D718 802A4108 8F18C5EC */  lw    $t8, %lo(D_800DC5EC)($t8)
/* 10D71C 802A410C 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 10D720 802A4110 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 10D724 802A4114 27190010 */  addiu $t9, $t8, 0x10
/* 10D728 802A4118 03214024 */  and   $t0, $t9, $at
/* 10D72C 802A411C AC480004 */  sw    $t0, 4($v0)
/* 10D730 802A4120 8CC30000 */  lw    $v1, ($a2)
/* 10D734 802A4124 3C0AB600 */  lui   $t2, 0xb600
/* 10D738 802A4128 240BFFFF */  li    $t3, -1
/* 10D73C 802A412C 24690008 */  addiu $t1, $v1, 8
/* 10D740 802A4130 ACC90000 */  sw    $t1, ($a2)
/* 10D744 802A4134 AC6B0004 */  sw    $t3, 4($v1)
/* 10D748 802A4138 AC6A0000 */  sw    $t2, ($v1)
/* 10D74C 802A413C 8CC30000 */  lw    $v1, ($a2)
/* 10D750 802A4140 3C0E0082 */  lui   $t6, (0x00822205 >> 16) # lui $t6, 0x82
/* 10D754 802A4144 35CE2205 */  ori   $t6, (0x00822205 & 0xFFFF) # ori $t6, $t6, 0x2205
/* 10D758 802A4148 246C0008 */  addiu $t4, $v1, 8
/* 10D75C 802A414C ACCC0000 */  sw    $t4, ($a2)
/* 10D760 802A4150 3C0DB700 */  lui   $t5, 0xb700
/* 10D764 802A4154 AC6D0000 */  sw    $t5, ($v1)
/* 10D768 802A4158 03E00008 */  jr    $ra
/* 10D76C 802A415C AC6E0004 */   sw    $t6, 4($v1)
