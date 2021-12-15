glabel func_800A4BC8
/* 0A57C8 800A4BC8 27BDFF88 */  addiu $sp, $sp, -0x78
/* 0A57CC 800A4BCC AFB00038 */  sw    $s0, 0x38($sp)
/* 0A57D0 800A4BD0 3C108015 */  lui   $s0, %hi(gDisplayListHead) # $s0, 0x8015
/* 0A57D4 800A4BD4 AFB40048 */  sw    $s4, 0x48($sp)
/* 0A57D8 800A4BD8 0080A025 */  move  $s4, $a0
/* 0A57DC 800A4BDC 26100298 */  addiu $s0, %lo(gDisplayListHead) # addiu $s0, $s0, 0x298
/* 0A57E0 800A4BE0 AFBF004C */  sw    $ra, 0x4c($sp)
/* 0A57E4 800A4BE4 240E00EF */  li    $t6, 239
/* 0A57E8 800A4BE8 240F008C */  li    $t7, 140
/* 0A57EC 800A4BEC AFB30044 */  sw    $s3, 0x44($sp)
/* 0A57F0 800A4BF0 AFB20040 */  sw    $s2, 0x40($sp)
/* 0A57F4 800A4BF4 AFB1003C */  sw    $s1, 0x3c($sp)
/* 0A57F8 800A4BF8 F7B40030 */  sdc1  $f20, 0x30($sp)
/* 0A57FC 800A4BFC AFAF0020 */  sw    $t7, 0x20($sp)
/* 0A5800 800A4C00 AFAE0010 */  sw    $t6, 0x10($sp)
/* 0A5804 800A4C04 8E040000 */  lw    $a0, ($s0)
/* 0A5808 800A4C08 AFA00014 */  sw    $zero, 0x14($sp)
/* 0A580C 800A4C0C AFA00018 */  sw    $zero, 0x18($sp)
/* 0A5810 800A4C10 AFA0001C */  sw    $zero, 0x1c($sp)
/* 0A5814 800A4C14 00002825 */  move  $a1, $zero
/* 0A5818 800A4C18 00003025 */  move  $a2, $zero
/* 0A581C 800A4C1C 0C02637E */  jal   draw_box
/* 0A5820 800A4C20 2407013F */   li    $a3, 319
/* 0A5824 800A4C24 AE020000 */  sw    $v0, ($s0)
/* 0A5828 800A4C28 0C024C36 */  jal   set_text_color
/* 0A582C 800A4C2C 24040003 */   li    $a0, 3
/* 0A5830 800A4C30 3C188019 */  lui   $t8, %hi(gCupSelection) # $t8, 0x8019
/* 0A5834 800A4C34 3C088019 */  lui   $t0, %hi(gCupCourseSelection) # $t0, 0x8019
/* 0A5838 800A4C38 8108EE0B */  lb    $t0, %lo(gCupCourseSelection)($t0)
/* 0A583C 800A4C3C 8318EE09 */  lb    $t8, %lo(gCupSelection)($t8)
/* 0A5840 800A4C40 3C0B800F */  lui   $t3, %hi(gCupCourseOrder)
/* 0A5844 800A4C44 00084840 */  sll   $t1, $t0, 1
/* 0A5848 800A4C48 0018C8C0 */  sll   $t9, $t8, 3
/* 0A584C 800A4C4C 03295021 */  addu  $t2, $t9, $t1
/* 0A5850 800A4C50 016A5821 */  addu  $t3, $t3, $t2
/* 0A5854 800A4C54 856B2BB4 */  lh    $t3, %lo(gCupCourseOrder)($t3)
/* 0A5858 800A4C58 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0A585C 800A4C5C 44810000 */  mtc1  $at, $f0
/* 0A5860 800A4C60 3C06800E */  lui   $a2, %hi(D_800E7574)
/* 0A5864 800A4C64 000B6080 */  sll   $t4, $t3, 2
/* 0A5868 800A4C68 00CC3021 */  addu  $a2, $a2, $t4
/* 0A586C 800A4C6C 8CC67574 */  lw    $a2, %lo(D_800E7574)($a2)
/* 0A5870 800A4C70 240400A0 */  li    $a0, 160
/* 0A5874 800A4C74 24050050 */  li    $a1, 80
/* 0A5878 800A4C78 00003825 */  move  $a3, $zero
/* 0A587C 800A4C7C E7A00010 */  swc1  $f0, 0x10($sp)
/* 0A5880 800A4C80 0C024DBB */  jal   draw_text
/* 0A5884 800A4C84 E7A00014 */   swc1  $f0, 0x14($sp)
/* 0A5888 800A4C88 0C024C36 */  jal   set_text_color
/* 0A588C 800A4C8C 24040002 */   li    $a0, 2
/* 0A5890 800A4C90 3C01800F */  lui   $at, %hi(D_800F1DD4) # $at, 0x800f
/* 0A5894 800A4C94 C4341DD4 */  lwc1  $f20, %lo(D_800F1DD4)($at)
/* 0A5898 800A4C98 3C12800E */  lui   $s2, %hi(D_800E7728) # $s2, 0x800e
/* 0A589C 800A4C9C 26527728 */  addiu $s2, %lo(D_800E7728) # addiu $s2, $s2, 0x7728
/* 0A58A0 800A4CA0 8E460000 */  lw    $a2, ($s2)
/* 0A58A4 800A4CA4 2404009D */  li    $a0, 157
/* 0A58A8 800A4CA8 24050060 */  li    $a1, 96
/* 0A58AC 800A4CAC 00003825 */  move  $a3, $zero
/* 0A58B0 800A4CB0 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A58B4 800A4CB4 0C024DBB */  jal   draw_text
/* 0A58B8 800A4CB8 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A58BC 800A4CBC 0C02D389 */  jal   func_800B4E24
/* 0A58C0 800A4CC0 00002025 */   move  $a0, $zero
/* 0A58C4 800A4CC4 3C13000F */  lui   $s3, (0x000FFFFF >> 16) # lui $s3, 0xf
/* 0A58C8 800A4CC8 3673FFFF */  ori   $s3, (0x000FFFFF & 0xFFFF) # ori $s3, $s3, 0xffff
/* 0A58CC 800A4CCC 27B00068 */  addiu $s0, $sp, 0x68
/* 0A58D0 800A4CD0 00532024 */  and   $a0, $v0, $s3
/* 0A58D4 800A4CD4 00808825 */  move  $s1, $a0
/* 0A58D8 800A4CD8 0C029E3D */  jal   get_time_record_minutes
/* 0A58DC 800A4CDC 02002825 */   move  $a1, $s0
/* 0A58E0 800A4CE0 2404007F */  li    $a0, 127
/* 0A58E4 800A4CE4 2405006D */  li    $a1, 109
/* 0A58E8 800A4CE8 02003025 */  move  $a2, $s0
/* 0A58EC 800A4CEC 00003825 */  move  $a3, $zero
/* 0A58F0 800A4CF0 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A58F4 800A4CF4 0C024E72 */  jal   func_800939C8
/* 0A58F8 800A4CF8 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A58FC 800A4CFC 3C06800F */  lui   $a2, %hi(D_800F0C5C) # $a2, 0x800f
/* 0A5900 800A4D00 24C60C5C */  addiu $a2, %lo(D_800F0C5C) # addiu $a2, $a2, 0xc5c
/* 0A5904 800A4D04 2404008E */  li    $a0, 142
/* 0A5908 800A4D08 2405006D */  li    $a1, 109
/* 0A590C 800A4D0C 00003825 */  move  $a3, $zero
/* 0A5910 800A4D10 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A5914 800A4D14 0C024CC9 */  jal   func_80093324
/* 0A5918 800A4D18 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A591C 800A4D1C 02202025 */  move  $a0, $s1
/* 0A5920 800A4D20 0C029E51 */  jal   get_time_record_seconds
/* 0A5924 800A4D24 02002825 */   move  $a1, $s0
/* 0A5928 800A4D28 24040098 */  li    $a0, 152
/* 0A592C 800A4D2C 2405006D */  li    $a1, 109
/* 0A5930 800A4D30 02003025 */  move  $a2, $s0
/* 0A5934 800A4D34 00003825 */  move  $a3, $zero
/* 0A5938 800A4D38 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A593C 800A4D3C 0C024E72 */  jal   func_800939C8
/* 0A5940 800A4D40 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A5944 800A4D44 3C06800F */  lui   $a2, %hi(D_800F0C60) # $a2, 0x800f
/* 0A5948 800A4D48 24C60C60 */  addiu $a2, %lo(D_800F0C60) # addiu $a2, $a2, 0xc60
/* 0A594C 800A4D4C 240400A7 */  li    $a0, 167
/* 0A5950 800A4D50 2405006D */  li    $a1, 109
/* 0A5954 800A4D54 00003825 */  move  $a3, $zero
/* 0A5958 800A4D58 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A595C 800A4D5C 0C024CC9 */  jal   func_80093324
/* 0A5960 800A4D60 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A5964 800A4D64 02202025 */  move  $a0, $s1
/* 0A5968 800A4D68 0C029E69 */  jal   get_time_record_centiseconds
/* 0A596C 800A4D6C 02002825 */   move  $a1, $s0
/* 0A5970 800A4D70 240400B3 */  li    $a0, 179
/* 0A5974 800A4D74 2405006D */  li    $a1, 109
/* 0A5978 800A4D78 02003025 */  move  $a2, $s0
/* 0A597C 800A4D7C 00003825 */  move  $a3, $zero
/* 0A5980 800A4D80 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A5984 800A4D84 0C024E72 */  jal   func_800939C8
/* 0A5988 800A4D88 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A598C 800A4D8C 2404009D */  li    $a0, 157
/* 0A5990 800A4D90 2405007C */  li    $a1, 124
/* 0A5994 800A4D94 8E460004 */  lw    $a2, 4($s2)
/* 0A5998 800A4D98 00003825 */  move  $a3, $zero
/* 0A599C 800A4D9C E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A59A0 800A4DA0 0C024DBB */  jal   draw_text
/* 0A59A4 800A4DA4 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A59A8 800A4DA8 0C02D3CB */  jal   func_800B4F2C
/* 0A59AC 800A4DAC 00000000 */   nop   
/* 0A59B0 800A4DB0 00532024 */  and   $a0, $v0, $s3
/* 0A59B4 800A4DB4 00808825 */  move  $s1, $a0
/* 0A59B8 800A4DB8 0C029E3D */  jal   get_time_record_minutes
/* 0A59BC 800A4DBC 02002825 */   move  $a1, $s0
/* 0A59C0 800A4DC0 2404007F */  li    $a0, 127
/* 0A59C4 800A4DC4 24050089 */  li    $a1, 137
/* 0A59C8 800A4DC8 02003025 */  move  $a2, $s0
/* 0A59CC 800A4DCC 00003825 */  move  $a3, $zero
/* 0A59D0 800A4DD0 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A59D4 800A4DD4 0C024E72 */  jal   func_800939C8
/* 0A59D8 800A4DD8 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A59DC 800A4DDC 3C06800F */  lui   $a2, %hi(D_800F0C64) # $a2, 0x800f
/* 0A59E0 800A4DE0 24C60C64 */  addiu $a2, %lo(D_800F0C64) # addiu $a2, $a2, 0xc64
/* 0A59E4 800A4DE4 2404008E */  li    $a0, 142
/* 0A59E8 800A4DE8 24050089 */  li    $a1, 137
/* 0A59EC 800A4DEC 00003825 */  move  $a3, $zero
/* 0A59F0 800A4DF0 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A59F4 800A4DF4 0C024CC9 */  jal   func_80093324
/* 0A59F8 800A4DF8 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A59FC 800A4DFC 02202025 */  move  $a0, $s1
/* 0A5A00 800A4E00 0C029E51 */  jal   get_time_record_seconds
/* 0A5A04 800A4E04 02002825 */   move  $a1, $s0
/* 0A5A08 800A4E08 24040098 */  li    $a0, 152
/* 0A5A0C 800A4E0C 24050089 */  li    $a1, 137
/* 0A5A10 800A4E10 02003025 */  move  $a2, $s0
/* 0A5A14 800A4E14 00003825 */  move  $a3, $zero
/* 0A5A18 800A4E18 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A5A1C 800A4E1C 0C024E72 */  jal   func_800939C8
/* 0A5A20 800A4E20 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A5A24 800A4E24 3C06800F */  lui   $a2, %hi(D_800F0C68) # $a2, 0x800f
/* 0A5A28 800A4E28 24C60C68 */  addiu $a2, %lo(D_800F0C68) # addiu $a2, $a2, 0xc68
/* 0A5A2C 800A4E2C 240400A7 */  li    $a0, 167
/* 0A5A30 800A4E30 24050089 */  li    $a1, 137
/* 0A5A34 800A4E34 00003825 */  move  $a3, $zero
/* 0A5A38 800A4E38 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A5A3C 800A4E3C 0C024CC9 */  jal   func_80093324
/* 0A5A40 800A4E40 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A5A44 800A4E44 02202025 */  move  $a0, $s1
/* 0A5A48 800A4E48 0C029E69 */  jal   get_time_record_centiseconds
/* 0A5A4C 800A4E4C 02002825 */   move  $a1, $s0
/* 0A5A50 800A4E50 240400B3 */  li    $a0, 179
/* 0A5A54 800A4E54 24050089 */  li    $a1, 137
/* 0A5A58 800A4E58 02003025 */  move  $a2, $s0
/* 0A5A5C 800A4E5C 00003825 */  move  $a3, $zero
/* 0A5A60 800A4E60 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A5A64 800A4E64 0C024E72 */  jal   func_800939C8
/* 0A5A68 800A4E68 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A5A6C 800A4E6C 3C013F40 */  li    $at, 0x3F400000 # 0.750000
/* 0A5A70 800A4E70 3C12800E */  lui   $s2, %hi(D_800E775C) # $s2, 0x800e
/* 0A5A74 800A4E74 4481A000 */  mtc1  $at, $f20
/* 0A5A78 800A4E78 2652775C */  addiu $s2, %lo(D_800E775C) # addiu $s2, $s2, 0x775c
/* 0A5A7C 800A4E7C 00008025 */  move  $s0, $zero
/* 0A5A80 800A4E80 00008825 */  move  $s1, $zero
/* 0A5A84 800A4E84 24130005 */  li    $s3, 5
.L800A4E88:
/* 0A5A88 800A4E88 8E840004 */  lw    $a0, 4($s4)
/* 0A5A8C 800A4E8C 02002825 */  move  $a1, $s0
/* 0A5A90 800A4E90 24060001 */  li    $a2, 1
/* 0A5A94 800A4E94 0C024870 */  jal   func_800921C0
/* 0A5A98 800A4E98 2484FFF5 */   addiu $a0, $a0, -0xb
/* 0A5A9C 800A4E9C 3C0D800F */  lui   $t5, %hi(D_800E853A) # $t5, 0x800f
/* 0A5AA0 800A4EA0 85AD853A */  lh    $t5, %lo(D_800E853A)($t5)
/* 0A5AA4 800A4EA4 3C04800F */  lui   $a0, %hi(D_800E8538) # $a0, 0x800f
/* 0A5AA8 800A4EA8 84848538 */  lh    $a0, %lo(D_800E8538)($a0)
/* 0A5AAC 800A4EAC 8E460000 */  lw    $a2, ($s2)
/* 0A5AB0 800A4EB0 00003825 */  move  $a3, $zero
/* 0A5AB4 800A4EB4 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A5AB8 800A4EB8 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A5ABC 800A4EBC 0C024CC9 */  jal   func_80093324
/* 0A5AC0 800A4EC0 01B12821 */   addu  $a1, $t5, $s1
/* 0A5AC4 800A4EC4 26100001 */  addiu $s0, $s0, 1
/* 0A5AC8 800A4EC8 2631000D */  addiu $s1, $s1, 0xd
/* 0A5ACC 800A4ECC 1613FFEE */  bne   $s0, $s3, .L800A4E88
/* 0A5AD0 800A4ED0 26520004 */   addiu $s2, $s2, 4
/* 0A5AD4 800A4ED4 8FBF004C */  lw    $ra, 0x4c($sp)
/* 0A5AD8 800A4ED8 D7B40030 */  ldc1  $f20, 0x30($sp)
/* 0A5ADC 800A4EDC 8FB00038 */  lw    $s0, 0x38($sp)
/* 0A5AE0 800A4EE0 8FB1003C */  lw    $s1, 0x3c($sp)
/* 0A5AE4 800A4EE4 8FB20040 */  lw    $s2, 0x40($sp)
/* 0A5AE8 800A4EE8 8FB30044 */  lw    $s3, 0x44($sp)
/* 0A5AEC 800A4EEC 8FB40048 */  lw    $s4, 0x48($sp)
/* 0A5AF0 800A4EF0 03E00008 */  jr    $ra
/* 0A5AF4 800A4EF4 27BD0078 */   addiu $sp, $sp, 0x78
