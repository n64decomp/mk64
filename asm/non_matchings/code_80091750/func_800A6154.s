glabel func_800A6154
/* 0A6D54 800A6154 27BDFF80 */  addiu $sp, $sp, -0x80
/* 0A6D58 800A6158 AFBF004C */  sw    $ra, 0x4c($sp)
/* 0A6D5C 800A615C AFB50048 */  sw    $s5, 0x48($sp)
/* 0A6D60 800A6160 AFB40044 */  sw    $s4, 0x44($sp)
/* 0A6D64 800A6164 AFB30040 */  sw    $s3, 0x40($sp)
/* 0A6D68 800A6168 AFB2003C */  sw    $s2, 0x3c($sp)
/* 0A6D6C 800A616C AFB10038 */  sw    $s1, 0x38($sp)
/* 0A6D70 800A6170 AFB00034 */  sw    $s0, 0x34($sp)
/* 0A6D74 800A6174 F7B40028 */  sdc1  $f20, 0x28($sp)
/* 0A6D78 800A6178 8C8E0004 */  lw    $t6, 4($a0)
/* 0A6D7C 800A617C 3C158015 */  lui   $s5, %hi(gDisplayListHead) # $s5, 0x8015
/* 0A6D80 800A6180 0080A025 */  move  $s4, $a0
/* 0A6D84 800A6184 15C00031 */  bnez  $t6, .L800A624C
/* 0A6D88 800A6188 26B50298 */   addiu $s5, %lo(gDisplayListHead) # addiu $s5, $s5, 0x298
/* 0A6D8C 800A618C 240F00EF */  li    $t7, 239
/* 0A6D90 800A6190 AFAF0010 */  sw    $t7, 0x10($sp)
/* 0A6D94 800A6194 AFA00014 */  sw    $zero, 0x14($sp)
/* 0A6D98 800A6198 AFA00018 */  sw    $zero, 0x18($sp)
/* 0A6D9C 800A619C AFA0001C */  sw    $zero, 0x1c($sp)
/* 0A6DA0 800A61A0 8E98001C */  lw    $t8, 0x1c($s4)
/* 0A6DA4 800A61A4 3C158015 */  lui   $s5, %hi(gDisplayListHead) # $s5, 0x8015
/* 0A6DA8 800A61A8 26B50298 */  addiu $s5, %lo(gDisplayListHead) # addiu $s5, $s5, 0x298
/* 0A6DAC 800A61AC 8EA40000 */  lw    $a0, ($s5)
/* 0A6DB0 800A61B0 00002825 */  move  $a1, $zero
/* 0A6DB4 800A61B4 00003025 */  move  $a2, $zero
/* 0A6DB8 800A61B8 2407013F */  li    $a3, 319
/* 0A6DBC 800A61BC 0C02637E */  jal   draw_box
/* 0A6DC0 800A61C0 AFB80020 */   sw    $t8, 0x20($sp)
/* 0A6DC4 800A61C4 AEA20000 */  sw    $v0, ($s5)
/* 0A6DC8 800A61C8 0C024C36 */  jal   set_text_color
/* 0A6DCC 800A61CC 24040003 */   li    $a0, 3
/* 0A6DD0 800A61D0 8EA20000 */  lw    $v0, ($s5)
/* 0A6DD4 800A61D4 3C08FA00 */  lui   $t0, 0xfa00
/* 0A6DD8 800A61D8 24010064 */  li    $at, 100
/* 0A6DDC 800A61DC 24590008 */  addiu $t9, $v0, 8
/* 0A6DE0 800A61E0 AEB90000 */  sw    $t9, ($s5)
/* 0A6DE4 800A61E4 AC480000 */  sw    $t0, ($v0)
/* 0A6DE8 800A61E8 8E89001C */  lw    $t1, 0x1c($s4)
/* 0A6DEC 800A61EC 3C12800E */  lui   $s2, %hi(D_800E775C) # $s2, 0x800e
/* 0A6DF0 800A61F0 2652775C */  addiu $s2, %lo(D_800E775C) # addiu $s2, $s2, 0x775c
/* 0A6DF4 800A61F4 00095200 */  sll   $t2, $t1, 8
/* 0A6DF8 800A61F8 01495023 */  subu  $t2, $t2, $t1
/* 0A6DFC 800A61FC 0141001A */  div   $zero, $t2, $at
/* 0A6E00 800A6200 00005812 */  mflo  $t3
/* 0A6E04 800A6204 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0A6E08 800A6208 316C00FF */  andi  $t4, $t3, 0xff
/* 0A6E0C 800A620C 4481A000 */  mtc1  $at, $f20
/* 0A6E10 800A6210 24100096 */  li    $s0, 150
/* 0A6E14 800A6214 241100BE */  li    $s1, 190
/* 0A6E18 800A6218 AC4C0004 */  sw    $t4, 4($v0)
.L800A621C:
/* 0A6E1C 800A621C 2404008C */  li    $a0, 140
/* 0A6E20 800A6220 02002825 */  move  $a1, $s0
/* 0A6E24 800A6224 8E460004 */  lw    $a2, 4($s2)
/* 0A6E28 800A6228 00003825 */  move  $a3, $zero
/* 0A6E2C 800A622C E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A6E30 800A6230 0C024CD6 */  jal   func_80093358
/* 0A6E34 800A6234 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A6E38 800A6238 26100014 */  addiu $s0, $s0, 0x14
/* 0A6E3C 800A623C 1611FFF7 */  bne   $s0, $s1, .L800A621C
/* 0A6E40 800A6240 2652000C */   addiu $s2, $s2, 0xc
/* 0A6E44 800A6244 10000026 */  b     .L800A62E0
/* 0A6E48 800A6248 8E8F0004 */   lw    $t7, 4($s4)
.L800A624C:
/* 0A6E4C 800A624C 240D00EF */  li    $t5, 239
/* 0A6E50 800A6250 240E0064 */  li    $t6, 100
/* 0A6E54 800A6254 AFAE0020 */  sw    $t6, 0x20($sp)
/* 0A6E58 800A6258 AFAD0010 */  sw    $t5, 0x10($sp)
/* 0A6E5C 800A625C 8EA40000 */  lw    $a0, ($s5)
/* 0A6E60 800A6260 00002825 */  move  $a1, $zero
/* 0A6E64 800A6264 00003025 */  move  $a2, $zero
/* 0A6E68 800A6268 2407013F */  li    $a3, 319
/* 0A6E6C 800A626C AFA00014 */  sw    $zero, 0x14($sp)
/* 0A6E70 800A6270 AFA00018 */  sw    $zero, 0x18($sp)
/* 0A6E74 800A6274 0C02637E */  jal   draw_box
/* 0A6E78 800A6278 AFA0001C */   sw    $zero, 0x1c($sp)
/* 0A6E7C 800A627C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0A6E80 800A6280 3C12800E */  lui   $s2, %hi(D_800E775C) # $s2, 0x800e
/* 0A6E84 800A6284 4481A000 */  mtc1  $at, $f20
/* 0A6E88 800A6288 AEA20000 */  sw    $v0, ($s5)
/* 0A6E8C 800A628C 2652775C */  addiu $s2, %lo(D_800E775C) # addiu $s2, $s2, 0x775c
/* 0A6E90 800A6290 00008825 */  move  $s1, $zero
/* 0A6E94 800A6294 24100096 */  li    $s0, 150
/* 0A6E98 800A6298 24130002 */  li    $s3, 2
.L800A629C:
/* 0A6E9C 800A629C 8E840004 */  lw    $a0, 4($s4)
/* 0A6EA0 800A62A0 02202825 */  move  $a1, $s1
/* 0A6EA4 800A62A4 24060003 */  li    $a2, 3
/* 0A6EA8 800A62A8 0C024870 */  jal   func_800921C0
/* 0A6EAC 800A62AC 2484FFF5 */   addiu $a0, $a0, -0xb
/* 0A6EB0 800A62B0 2404008C */  li    $a0, 140
/* 0A6EB4 800A62B4 02002825 */  move  $a1, $s0
/* 0A6EB8 800A62B8 8E460004 */  lw    $a2, 4($s2)
/* 0A6EBC 800A62BC 00003825 */  move  $a3, $zero
/* 0A6EC0 800A62C0 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A6EC4 800A62C4 0C024CC9 */  jal   func_80093324
/* 0A6EC8 800A62C8 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A6ECC 800A62CC 26310001 */  addiu $s1, $s1, 1
/* 0A6ED0 800A62D0 2652000C */  addiu $s2, $s2, 0xc
/* 0A6ED4 800A62D4 1633FFF1 */  bne   $s1, $s3, .L800A629C
/* 0A6ED8 800A62D8 26100014 */   addiu $s0, $s0, 0x14
/* 0A6EDC 800A62DC 8E8F0004 */  lw    $t7, 4($s4)
.L800A62E0:
/* 0A6EE0 800A62E0 24180084 */  li    $t8, 132
/* 0A6EE4 800A62E4 29E1000B */  slti  $at, $t7, 0xb
/* 0A6EE8 800A62E8 5420000C */  bnel  $at, $zero, .L800A631C
/* 0A6EEC 800A62EC 8E820020 */   lw    $v0, 0x20($s4)
/* 0A6EF0 800A62F0 A7B8006C */  sh    $t8, 0x6c($sp)
/* 0A6EF4 800A62F4 8E990004 */  lw    $t9, 4($s4)
/* 0A6EF8 800A62F8 02802025 */  move  $a0, $s4
/* 0A6EFC 800A62FC 27A5006C */  addiu $a1, $sp, 0x6c
/* 0A6F00 800A6300 00194080 */  sll   $t0, $t9, 2
/* 0A6F04 800A6304 01194021 */  addu  $t0, $t0, $t9
/* 0A6F08 800A6308 00084080 */  sll   $t0, $t0, 2
/* 0A6F0C 800A630C 2509FFB2 */  addiu $t1, $t0, -0x4e
/* 0A6F10 800A6310 0C0299AA */  jal   func_800A66A8
/* 0A6F14 800A6314 A7A9006E */   sh    $t1, 0x6e($sp)
/* 0A6F18 800A6318 8E820020 */  lw    $v0, 0x20($s4)
.L800A631C:
/* 0A6F1C 800A631C 00002825 */  move  $a1, $zero
/* 0A6F20 800A6320 00003025 */  move  $a2, $zero
/* 0A6F24 800A6324 1840000F */  blez  $v0, .L800A6364
/* 0A6F28 800A6328 2407013F */   li    $a3, 319
/* 0A6F2C 800A632C 8EA40000 */  lw    $a0, ($s5)
/* 0A6F30 800A6330 0C0263F2 */  jal   func_80098FC8
/* 0A6F34 800A6334 AFA20010 */   sw    $v0, 0x10($sp)
/* 0A6F38 800A6338 AEA20000 */  sw    $v0, ($s5)
/* 0A6F3C 800A633C 8E8A0020 */  lw    $t2, 0x20($s4)
/* 0A6F40 800A6340 240B00EF */  li    $t3, 239
/* 0A6F44 800A6344 240C00EF */  li    $t4, 239
/* 0A6F48 800A6348 AFAC0010 */  sw    $t4, 0x10($sp)
/* 0A6F4C 800A634C 00402025 */  move  $a0, $v0
/* 0A6F50 800A6350 00002825 */  move  $a1, $zero
/* 0A6F54 800A6354 2407013F */  li    $a3, 319
/* 0A6F58 800A6358 0C0263F2 */  jal   func_80098FC8
/* 0A6F5C 800A635C 016A3023 */   subu  $a2, $t3, $t2
/* 0A6F60 800A6360 AEA20000 */  sw    $v0, ($s5)
.L800A6364:
/* 0A6F64 800A6364 8FBF004C */  lw    $ra, 0x4c($sp)
/* 0A6F68 800A6368 D7B40028 */  ldc1  $f20, 0x28($sp)
/* 0A6F6C 800A636C 8FB00034 */  lw    $s0, 0x34($sp)
/* 0A6F70 800A6370 8FB10038 */  lw    $s1, 0x38($sp)
/* 0A6F74 800A6374 8FB2003C */  lw    $s2, 0x3c($sp)
/* 0A6F78 800A6378 8FB30040 */  lw    $s3, 0x40($sp)
/* 0A6F7C 800A637C 8FB40044 */  lw    $s4, 0x44($sp)
/* 0A6F80 800A6380 8FB50048 */  lw    $s5, 0x48($sp)
/* 0A6F84 800A6384 03E00008 */  jr    $ra
/* 0A6F88 800A6388 27BD0080 */   addiu $sp, $sp, 0x80
