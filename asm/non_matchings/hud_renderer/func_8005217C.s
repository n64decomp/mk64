glabel func_8005217C
/* 052D7C 8005217C 3C078018 */  lui   $a3, %hi(D_80183F28) # $a3, 0x8018
/* 052D80 80052180 8CE73F28 */  lw    $a3, %lo(D_80183F28)($a3)
/* 052D84 80052184 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 052D88 80052188 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 052D8C 8005218C 000770C0 */  sll   $t6, $a3, 3
/* 052D90 80052190 01C77023 */  subu  $t6, $t6, $a3
/* 052D94 80052194 000E7140 */  sll   $t6, $t6, 5
/* 052D98 80052198 01CF1821 */  addu  $v1, $t6, $t7
/* 052D9C 8005219C 847800A6 */  lh    $t8, 0xa6($v1)
/* 052DA0 800521A0 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 052DA4 800521A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 052DA8 800521A8 2B010002 */  slti  $at, $t8, 2
/* 052DAC 800521AC 1420007E */  bnez  $at, .L800523A8
/* 052DB0 800521B0 AFA40058 */   sw    $a0, 0x58($sp)
/* 052DB4 800521B4 00E02025 */  move  $a0, $a3
/* 052DB8 800521B8 24050010 */  li    $a1, 16
/* 052DBC 800521BC AFA30018 */  sw    $v1, 0x18($sp)
/* 052DC0 800521C0 0C01C88F */  jal   func_8007223C
/* 052DC4 800521C4 AFA70050 */   sw    $a3, 0x50($sp)
/* 052DC8 800521C8 8FA30018 */  lw    $v1, 0x18($sp)
/* 052DCC 800521CC 10400076 */  beqz  $v0, .L800523A8
/* 052DD0 800521D0 8FA70050 */   lw    $a3, 0x50($sp)
/* 052DD4 800521D4 24640004 */  addiu $a0, $v1, 4
/* 052DD8 800521D8 246500BE */  addiu $a1, $v1, 0xbe
/* 052DDC 800521DC 8C660000 */  lw    $a2, ($v1)
/* 052DE0 800521E0 0C010B80 */  jal   rsp_set_matrix_transformation
/* 052DE4 800521E4 AFA70050 */   sw    $a3, 0x50($sp)
/* 052DE8 800521E8 0C014830 */  jal   func_800520C0
/* 052DEC 800521EC 8FA40050 */   lw    $a0, 0x50($sp)
/* 052DF0 800521F0 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 052DF4 800521F4 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 052DF8 800521F8 8C620000 */  lw    $v0, ($v1)
/* 052DFC 800521FC 3C0E0D00 */  lui   $t6, %hi(D_0D007828) # $t6, 0xd00
/* 052E00 80052200 3C1F0600 */  lui   $ra, 0x600
/* 052E04 80052204 24590008 */  addiu $t9, $v0, 8
/* 052E08 80052208 AC790000 */  sw    $t9, ($v1)
/* 052E0C 8005220C 25CE7828 */  addiu $t6, %lo(D_0D007828) # addiu $t6, $t6, 0x7828
/* 052E10 80052210 AC4E0004 */  sw    $t6, 4($v0)
/* 052E14 80052214 AC5F0000 */  sw    $ra, ($v0)
/* 052E18 80052218 8C620000 */  lw    $v0, ($v1)
/* 052E1C 8005221C 3C19800E */  lui   $t9, %hi(D_800E45C0 + 0x8) # $t9, 0x800e
/* 052E20 80052220 3C180386 */  lui   $t8, (0x03860010 >> 16) # lui $t8, 0x386
/* 052E24 80052224 244F0008 */  addiu $t7, $v0, 8
/* 052E28 80052228 AC6F0000 */  sw    $t7, ($v1)
/* 052E2C 8005222C 37180010 */  ori   $t8, (0x03860010 & 0xFFFF) # ori $t8, $t8, 0x10
/* 052E30 80052230 273945C8 */  addiu $t9, %lo(D_800E45C0 + 0x8) # addiu $t9, $t9, 0x45c8
/* 052E34 80052234 AC590004 */  sw    $t9, 4($v0)
/* 052E38 80052238 AC580000 */  sw    $t8, ($v0)
/* 052E3C 8005223C 8C620000 */  lw    $v0, ($v1)
/* 052E40 80052240 3C18800E */  lui   $t8, %hi(D_800E45C0) # $t8, 0x800e
/* 052E44 80052244 3C0F0388 */  lui   $t7, (0x03880010 >> 16) # lui $t7, 0x388
/* 052E48 80052248 244E0008 */  addiu $t6, $v0, 8
/* 052E4C 8005224C AC6E0000 */  sw    $t6, ($v1)
/* 052E50 80052250 35EF0010 */  ori   $t7, (0x03880010 & 0xFFFF) # ori $t7, $t7, 0x10
/* 052E54 80052254 271845C0 */  addiu $t8, %lo(D_800E45C0) # addiu $t8, $t8, 0x45c0
/* 052E58 80052258 AC580004 */  sw    $t8, 4($v0)
/* 052E5C 8005225C AC4F0000 */  sw    $t7, ($v0)
/* 052E60 80052260 8C620000 */  lw    $v0, ($v1)
/* 052E64 80052264 3C0E0600 */  lui   $t6, %hi(d_course_banshee_boardwalk_dl_7B38) # $t6, 0x600
/* 052E68 80052268 25CE7B38 */  addiu $t6, %lo(d_course_banshee_boardwalk_dl_7B38) # addiu $t6, $t6, 0x7b38
/* 052E6C 8005226C 24590008 */  addiu $t9, $v0, 8
/* 052E70 80052270 AC790000 */  sw    $t9, ($v1)
/* 052E74 80052274 AC4E0004 */  sw    $t6, 4($v0)
/* 052E78 80052278 AC5F0000 */  sw    $ra, ($v0)
/* 052E7C 8005227C 8C620000 */  lw    $v0, ($v1)
/* 052E80 80052280 3C19800E */  lui   $t9, %hi(D_800E45D8 + 0x8) # $t9, 0x800e
/* 052E84 80052284 3C180386 */  lui   $t8, (0x03860010 >> 16) # lui $t8, 0x386
/* 052E88 80052288 244F0008 */  addiu $t7, $v0, 8
/* 052E8C 8005228C AC6F0000 */  sw    $t7, ($v1)
/* 052E90 80052290 37180010 */  ori   $t8, (0x03860010 & 0xFFFF) # ori $t8, $t8, 0x10
/* 052E94 80052294 273945E0 */  addiu $t9, %lo(D_800E45D8 + 0x8) # addiu $t9, $t9, 0x45e0
/* 052E98 80052298 AC590004 */  sw    $t9, 4($v0)
/* 052E9C 8005229C AC580000 */  sw    $t8, ($v0)
/* 052EA0 800522A0 8C620000 */  lw    $v0, ($v1)
/* 052EA4 800522A4 3C18800E */  lui   $t8, %hi(D_800E45D8) # $t8, 0x800e
/* 052EA8 800522A8 3C0F0388 */  lui   $t7, (0x03880010 >> 16) # lui $t7, 0x388
/* 052EAC 800522AC 244E0008 */  addiu $t6, $v0, 8
/* 052EB0 800522B0 AC6E0000 */  sw    $t6, ($v1)
/* 052EB4 800522B4 35EF0010 */  ori   $t7, (0x03880010 & 0xFFFF) # ori $t7, $t7, 0x10
/* 052EB8 800522B8 271845D8 */  addiu $t8, %lo(D_800E45D8) # addiu $t8, $t8, 0x45d8
/* 052EBC 800522BC AC580004 */  sw    $t8, 4($v0)
/* 052EC0 800522C0 AC4F0000 */  sw    $t7, ($v0)
/* 052EC4 800522C4 8C620000 */  lw    $v0, ($v1)
/* 052EC8 800522C8 3C0E0600 */  lui   $t6, %hi(d_course_banshee_boardwalk_dl_7978) # $t6, 0x600
/* 052ECC 800522CC 25CE7978 */  addiu $t6, %lo(d_course_banshee_boardwalk_dl_7978) # addiu $t6, $t6, 0x7978
/* 052ED0 800522D0 24590008 */  addiu $t9, $v0, 8
/* 052ED4 800522D4 AC790000 */  sw    $t9, ($v1)
/* 052ED8 800522D8 AC4E0004 */  sw    $t6, 4($v0)
/* 052EDC 800522DC AC5F0000 */  sw    $ra, ($v0)
/* 052EE0 800522E0 8C620000 */  lw    $v0, ($v1)
/* 052EE4 800522E4 3C19800E */  lui   $t9, %hi(D_800E45F0 + 0x8) # $t9, 0x800e
/* 052EE8 800522E8 3C180386 */  lui   $t8, (0x03860010 >> 16) # lui $t8, 0x386
/* 052EEC 800522EC 244F0008 */  addiu $t7, $v0, 8
/* 052EF0 800522F0 AC6F0000 */  sw    $t7, ($v1)
/* 052EF4 800522F4 37180010 */  ori   $t8, (0x03860010 & 0xFFFF) # ori $t8, $t8, 0x10
/* 052EF8 800522F8 273945F8 */  addiu $t9, %lo(D_800E45F0 + 0x8) # addiu $t9, $t9, 0x45f8
/* 052EFC 800522FC AC590004 */  sw    $t9, 4($v0)
/* 052F00 80052300 AC580000 */  sw    $t8, ($v0)
/* 052F04 80052304 8C620000 */  lw    $v0, ($v1)
/* 052F08 80052308 3C18800E */  lui   $t8, %hi(D_800E45F0) # $t8, 0x800e
/* 052F0C 8005230C 3C0F0388 */  lui   $t7, (0x03880010 >> 16) # lui $t7, 0x388
/* 052F10 80052310 244E0008 */  addiu $t6, $v0, 8
/* 052F14 80052314 AC6E0000 */  sw    $t6, ($v1)
/* 052F18 80052318 35EF0010 */  ori   $t7, (0x03880010 & 0xFFFF) # ori $t7, $t7, 0x10
/* 052F1C 8005231C 271845F0 */  addiu $t8, %lo(D_800E45F0) # addiu $t8, $t8, 0x45f0
/* 052F20 80052320 AC580004 */  sw    $t8, 4($v0)
/* 052F24 80052324 AC4F0000 */  sw    $t7, ($v0)
/* 052F28 80052328 8C620000 */  lw    $v0, ($v1)
/* 052F2C 8005232C 3C0E0600 */  lui   $t6, %hi(d_course_banshee_boardwalk_dl_78C0) # $t6, 0x600
/* 052F30 80052330 25CE78C0 */  addiu $t6, %lo(d_course_banshee_boardwalk_dl_78C0) # addiu $t6, $t6, 0x78c0
/* 052F34 80052334 24590008 */  addiu $t9, $v0, 8
/* 052F38 80052338 AC790000 */  sw    $t9, ($v1)
/* 052F3C 8005233C AC4E0004 */  sw    $t6, 4($v0)
/* 052F40 80052340 AC5F0000 */  sw    $ra, ($v0)
/* 052F44 80052344 8C620000 */  lw    $v0, ($v1)
/* 052F48 80052348 3C19800E */  lui   $t9, %hi(D_800E4608 + 0x8) # $t9, 0x800e
/* 052F4C 8005234C 3C180386 */  lui   $t8, (0x03860010 >> 16) # lui $t8, 0x386
/* 052F50 80052350 244F0008 */  addiu $t7, $v0, 8
/* 052F54 80052354 AC6F0000 */  sw    $t7, ($v1)
/* 052F58 80052358 37180010 */  ori   $t8, (0x03860010 & 0xFFFF) # ori $t8, $t8, 0x10
/* 052F5C 8005235C 27394610 */  addiu $t9, %lo(D_800E4608 + 0x8) # addiu $t9, $t9, 0x4610
/* 052F60 80052360 AC590004 */  sw    $t9, 4($v0)
/* 052F64 80052364 AC580000 */  sw    $t8, ($v0)
/* 052F68 80052368 8C620000 */  lw    $v0, ($v1)
/* 052F6C 8005236C 3C18800E */  lui   $t8, %hi(D_800E4608) # $t8, 0x800e
/* 052F70 80052370 3C0F0388 */  lui   $t7, (0x03880010 >> 16) # lui $t7, 0x388
/* 052F74 80052374 244E0008 */  addiu $t6, $v0, 8
/* 052F78 80052378 AC6E0000 */  sw    $t6, ($v1)
/* 052F7C 8005237C 35EF0010 */  ori   $t7, (0x03880010 & 0xFFFF) # ori $t7, $t7, 0x10
/* 052F80 80052380 27184608 */  addiu $t8, %lo(D_800E4608) # addiu $t8, $t8, 0x4608
/* 052F84 80052384 AC580004 */  sw    $t8, 4($v0)
/* 052F88 80052388 AC4F0000 */  sw    $t7, ($v0)
/* 052F8C 8005238C 8C620000 */  lw    $v0, ($v1)
/* 052F90 80052390 3C0E0600 */  lui   $t6, %hi(d_course_banshee_boardwalk_dl_7650) # $t6, 0x600
/* 052F94 80052394 25CE7650 */  addiu $t6, %lo(d_course_banshee_boardwalk_dl_7650) # addiu $t6, $t6, 0x7650
/* 052F98 80052398 24590008 */  addiu $t9, $v0, 8
/* 052F9C 8005239C AC790000 */  sw    $t9, ($v1)
/* 052FA0 800523A0 AC4E0004 */  sw    $t6, 4($v0)
/* 052FA4 800523A4 AC5F0000 */  sw    $ra, ($v0)
.L800523A8:
/* 052FA8 800523A8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 052FAC 800523AC 27BD0058 */  addiu $sp, $sp, 0x58
/* 052FB0 800523B0 03E00008 */  jr    $ra
/* 052FB4 800523B4 00000000 */   nop   
