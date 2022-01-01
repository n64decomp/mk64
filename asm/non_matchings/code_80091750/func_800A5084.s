glabel func_800A5084
/* 0A5C84 800A5084 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0A5C88 800A5088 AFB00034 */  sw    $s0, 0x34($sp)
/* 0A5C8C 800A508C 3C10800E */  lui   $s0, %hi(D_800DC5FC) # $s0, 0x800e
/* 0A5C90 800A5090 2610C5FC */  addiu $s0, %lo(D_800DC5FC) # addiu $s0, $s0, -0x3a04
/* 0A5C94 800A5094 960E0000 */  lhu   $t6, ($s0)
/* 0A5C98 800A5098 3C198016 */  lui   $t9, %hi(D_8015F480) # $t9, 0x8016
/* 0A5C9C 800A509C 2739F480 */  addiu $t9, %lo(D_8015F480) # addiu $t9, $t9, -0xb80
/* 0A5CA0 800A50A0 000E7980 */  sll   $t7, $t6, 6
/* 0A5CA4 800A50A4 25F8FFC0 */  addiu $t8, $t7, -0x40
/* 0A5CA8 800A50A8 AFBF004C */  sw    $ra, 0x4c($sp)
/* 0A5CAC 800A50AC AFB50048 */  sw    $s5, 0x48($sp)
/* 0A5CB0 800A50B0 AFB40044 */  sw    $s4, 0x44($sp)
/* 0A5CB4 800A50B4 AFB30040 */  sw    $s3, 0x40($sp)
/* 0A5CB8 800A50B8 AFB2003C */  sw    $s2, 0x3c($sp)
/* 0A5CBC 800A50BC AFB10038 */  sw    $s1, 0x38($sp)
/* 0A5CC0 800A50C0 F7B40028 */  sdc1  $f20, 0x28($sp)
/* 0A5CC4 800A50C4 03191021 */  addu  $v0, $t8, $t9
/* 0A5CC8 800A50C8 8449002C */  lh    $t1, 0x2c($v0)
/* 0A5CCC 800A50CC 844A002E */  lh    $t2, 0x2e($v0)
/* 0A5CD0 800A50D0 84430030 */  lh    $v1, 0x30($v0)
/* 0A5CD4 800A50D4 84480032 */  lh    $t0, 0x32($v0)
/* 0A5CD8 800A50D8 3C118015 */  lui   $s1, %hi(gDisplayListHead) # $s1, 0x8015
/* 0A5CDC 800A50DC 26310298 */  addiu $s1, %lo(gDisplayListHead) # addiu $s1, $s1, 0x298
/* 0A5CE0 800A50E0 0080A825 */  move  $s5, $a0
/* 0A5CE4 800A50E4 05210003 */  bgez  $t1, .L800A50F4
/* 0A5CE8 800A50E8 00095843 */   sra   $t3, $t1, 1
/* 0A5CEC 800A50EC 25210001 */  addiu $at, $t1, 1
/* 0A5CF0 800A50F0 00015843 */  sra   $t3, $at, 1
.L800A50F4:
/* 0A5CF4 800A50F4 01604825 */  move  $t1, $t3
/* 0A5CF8 800A50F8 05410003 */  bgez  $t2, .L800A5108
/* 0A5CFC 800A50FC 000A6043 */   sra   $t4, $t2, 1
/* 0A5D00 800A5100 25410001 */  addiu $at, $t2, 1
/* 0A5D04 800A5104 00016043 */  sra   $t4, $at, 1
.L800A5108:
/* 0A5D08 800A5108 240E008C */  li    $t6, 140
/* 0A5D0C 800A510C 010C6821 */  addu  $t5, $t0, $t4
/* 0A5D10 800A5110 AFAD0010 */  sw    $t5, 0x10($sp)
/* 0A5D14 800A5114 AFAE0020 */  sw    $t6, 0x20($sp)
/* 0A5D18 800A5118 8E240000 */  lw    $a0, ($s1)
/* 0A5D1C 800A511C AFA0001C */  sw    $zero, 0x1c($sp)
/* 0A5D20 800A5120 AFA00018 */  sw    $zero, 0x18($sp)
/* 0A5D24 800A5124 AFA00014 */  sw    $zero, 0x14($sp)
/* 0A5D28 800A5128 00692823 */  subu  $a1, $v1, $t1
/* 0A5D2C 800A512C 00693821 */  addu  $a3, $v1, $t1
/* 0A5D30 800A5130 0C02637E */  jal   draw_box
/* 0A5D34 800A5134 010C3023 */   subu  $a2, $t0, $t4
/* 0A5D38 800A5138 AE220000 */  sw    $v0, ($s1)
/* 0A5D3C 800A513C 3C0F800E */  lui   $t7, %hi(gScreenModeSelection) # $t7, 0x800e
/* 0A5D40 800A5140 8DF8C530 */  lw    $t8, %lo(gScreenModeSelection)($t7)
/* 0A5D44 800A5144 960B0000 */  lhu   $t3, ($s0)
/* 0A5D48 800A5148 3C128019 */  lui   $s2, %hi(gCupSelection) # $s2, 0x8019
/* 0A5D4C 800A514C 2652EE09 */  addiu $s2, %lo(gCupSelection) # addiu $s2, $s2, -0x11f7
/* 0A5D50 800A5150 0018C940 */  sll   $t9, $t8, 5
/* 0A5D54 800A5154 82580000 */  lb    $t8, ($s2)
/* 0A5D58 800A5158 000B60C0 */  sll   $t4, $t3, 3
/* 0A5D5C 800A515C 3C14800E */  lui   $s4, %hi(D_800E7500) # $s4, 0x800e
/* 0A5D60 800A5160 032C6821 */  addu  $t5, $t9, $t4
/* 0A5D64 800A5164 26947500 */  addiu $s4, %lo(D_800E7500) # addiu $s4, $s4, 0x7500
/* 0A5D68 800A5168 3C0F800F */  lui   $t7, %hi(D_800E85C0) # $t7, 0x800f
/* 0A5D6C 800A516C 00185880 */  sll   $t3, $t8, 2
/* 0A5D70 800A5170 25EF85C0 */  addiu $t7, %lo(D_800E85C0) # addiu $t7, $t7, -0x7a40
/* 0A5D74 800A5174 25AEFFF8 */  addiu $t6, $t5, -8
/* 0A5D78 800A5178 028BC821 */  addu  $t9, $s4, $t3
/* 0A5D7C 800A517C 01CF9821 */  addu  $s3, $t6, $t7
/* 0A5D80 800A5180 0C024C0D */  jal   get_string_width
/* 0A5D84 800A5184 8F240000 */   lw    $a0, ($t9)
/* 0A5D88 800A5188 44822000 */  mtc1  $v0, $f4
/* 0A5D8C 800A518C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0A5D90 800A5190 4481A000 */  mtc1  $at, $f20
/* 0A5D94 800A5194 468021A0 */  cvt.s.w $f6, $f4
/* 0A5D98 800A5198 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 0A5D9C 800A519C 44815000 */  mtc1  $at, $f10
/* 0A5DA0 800A51A0 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0A5DA4 800A51A4 44819000 */  mtc1  $at, $f18
/* 0A5DA8 800A51A8 3C0D800E */  lui   $t5, %hi(gCCSelection) # $t5, 0x800e
/* 0A5DAC 800A51AC 46143202 */  mul.s $f8, $f6, $f20
/* 0A5DB0 800A51B0 8DADC548 */  lw    $t5, %lo(gCCSelection)($t5)
/* 0A5DB4 800A51B4 3C04800E */  lui   $a0, %hi(D_800E76CC)
/* 0A5DB8 800A51B8 000D7080 */  sll   $t6, $t5, 2
/* 0A5DBC 800A51BC 008E2021 */  addu  $a0, $a0, $t6
/* 0A5DC0 800A51C0 8C8476CC */  lw    $a0, %lo(D_800E76CC)($a0)
/* 0A5DC4 800A51C4 460A4400 */  add.s $f16, $f8, $f10
/* 0A5DC8 800A51C8 46128103 */  div.s $f4, $f16, $f18
/* 0A5DCC 800A51CC 4600218D */  trunc.w.s $f6, $f4
/* 0A5DD0 800A51D0 44103000 */  mfc1  $s0, $f6
/* 0A5DD4 800A51D4 0C024C0D */  jal   get_string_width
/* 0A5DD8 800A51D8 00000000 */   nop   
/* 0A5DDC 800A51DC 44824000 */  mtc1  $v0, $f8
/* 0A5DE0 800A51E0 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 0A5DE4 800A51E4 44819000 */  mtc1  $at, $f18
/* 0A5DE8 800A51E8 468042A0 */  cvt.s.w $f10, $f8
/* 0A5DEC 800A51EC 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0A5DF0 800A51F0 44813000 */  mtc1  $at, $f6
/* 0A5DF4 800A51F4 24040003 */  li    $a0, 3
/* 0A5DF8 800A51F8 46145402 */  mul.s $f16, $f10, $f20
/* 0A5DFC 800A51FC 46128100 */  add.s $f4, $f16, $f18
/* 0A5E00 800A5200 46062203 */  div.s $f8, $f4, $f6
/* 0A5E04 800A5204 4600428D */  trunc.w.s $f10, $f8
/* 0A5E08 800A5208 44115000 */  mfc1  $s1, $f10
/* 0A5E0C 800A520C 0C024C36 */  jal   set_text_color
/* 0A5E10 800A5210 00000000 */   nop   
/* 0A5E14 800A5214 824B0000 */  lb    $t3, ($s2)
/* 0A5E18 800A5218 86650002 */  lh    $a1, 2($s3)
/* 0A5E1C 800A521C 241800A0 */  li    $t8, 160
/* 0A5E20 800A5220 000BC880 */  sll   $t9, $t3, 2
/* 0A5E24 800A5224 02996021 */  addu  $t4, $s4, $t9
/* 0A5E28 800A5228 8D860000 */  lw    $a2, ($t4)
/* 0A5E2C 800A522C E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A5E30 800A5230 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A5E34 800A5234 03112023 */  subu  $a0, $t8, $s1
/* 0A5E38 800A5238 00003825 */  move  $a3, $zero
/* 0A5E3C 800A523C 0C024DBB */  jal   draw_text
/* 0A5E40 800A5240 24A5FFCE */   addiu $a1, $a1, -0x32
/* 0A5E44 800A5244 0C024C36 */  jal   set_text_color
/* 0A5E48 800A5248 24040003 */   li    $a0, 3
/* 0A5E4C 800A524C 3C0D800E */  lui   $t5, %hi(gCCSelection) # $t5, 0x800e
/* 0A5E50 800A5250 8DADC548 */  lw    $t5, %lo(gCCSelection)($t5)
/* 0A5E54 800A5254 86650002 */  lh    $a1, 2($s3)
/* 0A5E58 800A5258 3C06800E */  lui   $a2, %hi(D_800E76CC)
/* 0A5E5C 800A525C 000D7080 */  sll   $t6, $t5, 2
/* 0A5E60 800A5260 00CE3021 */  addu  $a2, $a2, $t6
/* 0A5E64 800A5264 8CC676CC */  lw    $a2, %lo(D_800E76CC)($a2)
/* 0A5E68 800A5268 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A5E6C 800A526C E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A5E70 800A5270 260400A0 */  addiu $a0, $s0, 0xa0
/* 0A5E74 800A5274 00003825 */  move  $a3, $zero
/* 0A5E78 800A5278 0C024DBB */  jal   draw_text
/* 0A5E7C 800A527C 24A5FFCE */   addiu $a1, $a1, -0x32
/* 0A5E80 800A5280 0C024C36 */  jal   set_text_color
/* 0A5E84 800A5284 24040003 */   li    $a0, 3
/* 0A5E88 800A5288 3C0B8019 */  lui   $t3, %hi(gCupCourseSelection) # $t3, 0x8019
/* 0A5E8C 800A528C 816BEE0B */  lb    $t3, %lo(gCupCourseSelection)($t3)
/* 0A5E90 800A5290 824F0000 */  lb    $t7, ($s2)
/* 0A5E94 800A5294 3C0D800F */  lui   $t5, %hi(gCupCourseOrder)
/* 0A5E98 800A5298 000BC840 */  sll   $t9, $t3, 1
/* 0A5E9C 800A529C 000FC0C0 */  sll   $t8, $t7, 3
/* 0A5EA0 800A52A0 03196021 */  addu  $t4, $t8, $t9
/* 0A5EA4 800A52A4 01AC6821 */  addu  $t5, $t5, $t4
/* 0A5EA8 800A52A8 85AD2BB4 */  lh    $t5, %lo(gCupCourseOrder)($t5)
/* 0A5EAC 800A52AC 86650002 */  lh    $a1, 2($s3)
/* 0A5EB0 800A52B0 3C06800E */  lui   $a2, %hi(D_800E7574)
/* 0A5EB4 800A52B4 000D7080 */  sll   $t6, $t5, 2
/* 0A5EB8 800A52B8 00CE3021 */  addu  $a2, $a2, $t6
/* 0A5EBC 800A52BC 8CC67574 */  lw    $a2, %lo(D_800E7574)($a2)
/* 0A5EC0 800A52C0 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A5EC4 800A52C4 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A5EC8 800A52C8 240400A0 */  li    $a0, 160
/* 0A5ECC 800A52CC 00003825 */  move  $a3, $zero
/* 0A5ED0 800A52D0 0C024DBB */  jal   draw_text
/* 0A5ED4 800A52D4 24A5FFE2 */   addiu $a1, $a1, -0x1e
/* 0A5ED8 800A52D8 3C013F40 */  li    $at, 0x3F400000 # 0.750000
/* 0A5EDC 800A52DC 3C12800E */  lui   $s2, %hi(D_800E775C) # $s2, 0x800e
/* 0A5EE0 800A52E0 4481A000 */  mtc1  $at, $f20
/* 0A5EE4 800A52E4 2652775C */  addiu $s2, %lo(D_800E775C) # addiu $s2, $s2, 0x775c
/* 0A5EE8 800A52E8 00008025 */  move  $s0, $zero
/* 0A5EEC 800A52EC 00008825 */  move  $s1, $zero
/* 0A5EF0 800A52F0 24140002 */  li    $s4, 2
.L800A52F4:
/* 0A5EF4 800A52F4 8EA40004 */  lw    $a0, 4($s5)
/* 0A5EF8 800A52F8 02002825 */  move  $a1, $s0
/* 0A5EFC 800A52FC 24060003 */  li    $a2, 3
/* 0A5F00 800A5300 0C024870 */  jal   func_800921C0
/* 0A5F04 800A5304 2484FFE1 */   addiu $a0, $a0, -0x1f
/* 0A5F08 800A5308 866F0002 */  lh    $t7, 2($s3)
/* 0A5F0C 800A530C 86640000 */  lh    $a0, ($s3)
/* 0A5F10 800A5310 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A5F14 800A5314 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A5F18 800A5318 8E460000 */  lw    $a2, ($s2)
/* 0A5F1C 800A531C 00003825 */  move  $a3, $zero
/* 0A5F20 800A5320 0C024CC9 */  jal   func_80093324
/* 0A5F24 800A5324 01F12821 */   addu  $a1, $t7, $s1
/* 0A5F28 800A5328 26100001 */  addiu $s0, $s0, 1
/* 0A5F2C 800A532C 2631000D */  addiu $s1, $s1, 0xd
/* 0A5F30 800A5330 1614FFF0 */  bne   $s0, $s4, .L800A52F4
/* 0A5F34 800A5334 26520010 */   addiu $s2, $s2, 0x10
/* 0A5F38 800A5338 8FBF004C */  lw    $ra, 0x4c($sp)
/* 0A5F3C 800A533C D7B40028 */  ldc1  $f20, 0x28($sp)
/* 0A5F40 800A5340 8FB00034 */  lw    $s0, 0x34($sp)
/* 0A5F44 800A5344 8FB10038 */  lw    $s1, 0x38($sp)
/* 0A5F48 800A5348 8FB2003C */  lw    $s2, 0x3c($sp)
/* 0A5F4C 800A534C 8FB30040 */  lw    $s3, 0x40($sp)
/* 0A5F50 800A5350 8FB40044 */  lw    $s4, 0x44($sp)
/* 0A5F54 800A5354 8FB50048 */  lw    $s5, 0x48($sp)
/* 0A5F58 800A5358 03E00008 */  jr    $ra
/* 0A5F5C 800A535C 27BD0050 */   addiu $sp, $sp, 0x50
