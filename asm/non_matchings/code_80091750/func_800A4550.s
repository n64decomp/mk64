glabel func_800A4550
/* 0A5150 800A4550 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0A5154 800A4554 28810003 */  slti  $at, $a0, 3
/* 0A5158 800A4558 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0A515C 800A455C F7B40018 */  sdc1  $f20, 0x18($sp)
/* 0A5160 800A4560 AFA40048 */  sw    $a0, 0x48($sp)
/* 0A5164 800A4564 AFA5004C */  sw    $a1, 0x4c($sp)
/* 0A5168 800A4568 1020000B */  beqz  $at, .L800A4598
/* 0A516C 800A456C AFA60050 */   sw    $a2, 0x50($sp)
/* 0A5170 800A4570 00041080 */  sll   $v0, $a0, 2
/* 0A5174 800A4574 3C0F8019 */  lui   $t7, %hi(D_8018CA90) # 0x8019
/* 0A5178 800A4578 01E27821 */  addu  $t7, $t7, $v0
/* 0A517C 800A457C 8DEFCA90 */  lw    $t7, %lo(D_8018CA90)($t7) # -0x3570($t7)
/* 0A5180 800A4580 AFA2002C */  sw    $v0, 0x2c($sp)
/* 0A5184 800A4584 24040002 */  li    $a0, 2
/* 0A5188 800A4588 0C024C36 */  jal   set_text_color
/* 0A518C 800A458C AFAF0040 */   sw    $t7, 0x40($sp)
/* 0A5190 800A4590 10000009 */  b     .L800A45B8
/* 0A5194 800A4594 8FA2002C */   lw    $v0, 0x2c($sp)
.L800A4598:
/* 0A5198 800A4598 3C188019 */  lui   $t8, %hi(D_8018CA78) # $t8, 0x8019
/* 0A519C 800A459C 8F18CA78 */  lw    $t8, %lo(D_8018CA78)($t8)
/* 0A51A0 800A45A0 24040001 */  li    $a0, 1
/* 0A51A4 800A45A4 0C024C36 */  jal   set_text_color
/* 0A51A8 800A45A8 AFB80040 */   sw    $t8, 0x40($sp)
/* 0A51AC 800A45AC 8FA20048 */  lw    $v0, 0x48($sp)
/* 0A51B0 800A45B0 0002C880 */  sll   $t9, $v0, 2
/* 0A51B4 800A45B4 03201025 */  move  $v0, $t9
.L800A45B8:
/* 0A51B8 800A45B8 3C01800F */  lui   $at, %hi(D_800F1DC4) # $at, 0x800f
/* 0A51BC 800A45BC C4341DC4 */  lwc1  $f20, %lo(D_800F1DC4)($at)
/* 0A51C0 800A45C0 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0A51C4 800A45C4 3C06800E */  lui   $a2, %hi(D_800E7734)
/* 0A51C8 800A45C8 00C23021 */  addu  $a2, $a2, $v0
/* 0A51CC 800A45CC 8CC67734 */  lw    $a2, %lo(D_800E7734)($a2)
/* 0A51D0 800A45D0 8FA50050 */  lw    $a1, 0x50($sp)
/* 0A51D4 800A45D4 00003825 */  move  $a3, $zero
/* 0A51D8 800A45D8 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A51DC 800A45DC E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A51E0 800A45E0 0C024DAE */  jal   func_800936B8
/* 0A51E4 800A45E4 24840021 */   addiu $a0, $a0, 0x21
/* 0A51E8 800A45E8 0C02ABBD */  jal   find_8018D9E0_entry_dupe
/* 0A51EC 800A45EC 240400BB */   li    $a0, 187
/* 0A51F0 800A45F0 8FA30048 */  lw    $v1, 0x48($sp)
/* 0A51F4 800A45F4 28610003 */  slti  $at, $v1, 3
/* 0A51F8 800A45F8 50200010 */  beql  $at, $zero, .L800A463C
/* 0A51FC 800A45FC 8C4D001C */   lw    $t5, 0x1c($v0)
/* 0A5200 800A4600 8C480020 */  lw    $t0, 0x20($v0)
/* 0A5204 800A4604 24090001 */  li    $t1, 1
/* 0A5208 800A4608 00695004 */  sllv  $t2, $t1, $v1
/* 0A520C 800A460C 010A5824 */  and   $t3, $t0, $t2
/* 0A5210 800A4610 11600007 */  beqz  $t3, .L800A4630
/* 0A5214 800A4614 3C04800E */   lui   $a0, %hi(gGlobalTimer) # $a0, 0x800e
/* 0A5218 800A4618 8C84C54C */  lw    $a0, %lo(gGlobalTimer)($a0)
/* 0A521C 800A461C 24010003 */  li    $at, 3
/* 0A5220 800A4620 0081001A */  div   $zero, $a0, $at
/* 0A5224 800A4624 00002010 */  mfhi  $a0
/* 0A5228 800A4628 1000000E */  b     .L800A4664
/* 0A522C 800A462C 00000000 */   nop   
.L800A4630:
/* 0A5230 800A4630 1000000C */  b     .L800A4664
/* 0A5234 800A4634 24040003 */   li    $a0, 3
/* 0A5238 800A4638 8C4D001C */  lw    $t5, 0x1c($v0)
.L800A463C:
/* 0A523C 800A463C 24040003 */  li    $a0, 3
/* 0A5240 800A4640 05A00008 */  bltz  $t5, .L800A4664
/* 0A5244 800A4644 00000000 */   nop   
/* 0A5248 800A4648 3C04800E */  lui   $a0, %hi(gGlobalTimer) # $a0, 0x800e
/* 0A524C 800A464C 8C84C54C */  lw    $a0, %lo(gGlobalTimer)($a0)
/* 0A5250 800A4650 24010003 */  li    $at, 3
/* 0A5254 800A4654 0081001A */  div   $zero, $a0, $at
/* 0A5258 800A4658 00002010 */  mfhi  $a0
/* 0A525C 800A465C 10000001 */  b     .L800A4664
/* 0A5260 800A4660 00000000 */   nop   
.L800A4664:
/* 0A5264 800A4664 0C024C36 */  jal   set_text_color
/* 0A5268 800A4668 00000000 */   nop   
/* 0A526C 800A466C 8FA40040 */  lw    $a0, 0x40($sp)
/* 0A5270 800A4670 0C029E3D */  jal   get_time_record_minutes
/* 0A5274 800A4674 27A50034 */   addiu $a1, $sp, 0x34
/* 0A5278 800A4678 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0A527C 800A467C 8FA50050 */  lw    $a1, 0x50($sp)
/* 0A5280 800A4680 27A60034 */  addiu $a2, $sp, 0x34
/* 0A5284 800A4684 00003825 */  move  $a3, $zero
/* 0A5288 800A4688 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A528C 800A468C E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A5290 800A4690 0C024E72 */  jal   func_800939C8
/* 0A5294 800A4694 2484002C */   addiu $a0, $a0, 0x2c
/* 0A5298 800A4698 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0A529C 800A469C 3C06800F */  lui   $a2, %hi(D_800F0C4C) # $a2, 0x800f
/* 0A52A0 800A46A0 24C60C4C */  addiu $a2, %lo(D_800F0C4C) # addiu $a2, $a2, 0xc4c
/* 0A52A4 800A46A4 8FA50050 */  lw    $a1, 0x50($sp)
/* 0A52A8 800A46A8 00003825 */  move  $a3, $zero
/* 0A52AC 800A46AC E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A52B0 800A46B0 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A52B4 800A46B4 0C024CC9 */  jal   func_80093324
/* 0A52B8 800A46B8 24840037 */   addiu $a0, $a0, 0x37
/* 0A52BC 800A46BC 8FA40040 */  lw    $a0, 0x40($sp)
/* 0A52C0 800A46C0 0C029E51 */  jal   get_time_record_seconds
/* 0A52C4 800A46C4 27A50034 */   addiu $a1, $sp, 0x34
/* 0A52C8 800A46C8 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0A52CC 800A46CC 8FA50050 */  lw    $a1, 0x50($sp)
/* 0A52D0 800A46D0 27A60034 */  addiu $a2, $sp, 0x34
/* 0A52D4 800A46D4 00003825 */  move  $a3, $zero
/* 0A52D8 800A46D8 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A52DC 800A46DC E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A52E0 800A46E0 0C024E72 */  jal   func_800939C8
/* 0A52E4 800A46E4 24840040 */   addiu $a0, $a0, 0x40
/* 0A52E8 800A46E8 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0A52EC 800A46EC 3C06800F */  lui   $a2, %hi(D_800F0C50) # $a2, 0x800f
/* 0A52F0 800A46F0 24C60C50 */  addiu $a2, %lo(D_800F0C50) # addiu $a2, $a2, 0xc50
/* 0A52F4 800A46F4 8FA50050 */  lw    $a1, 0x50($sp)
/* 0A52F8 800A46F8 00003825 */  move  $a3, $zero
/* 0A52FC 800A46FC E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A5300 800A4700 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A5304 800A4704 0C024CC9 */  jal   func_80093324
/* 0A5308 800A4708 2484004B */   addiu $a0, $a0, 0x4b
/* 0A530C 800A470C 8FA40040 */  lw    $a0, 0x40($sp)
/* 0A5310 800A4710 0C029E69 */  jal   get_time_record_centiseconds
/* 0A5314 800A4714 27A50034 */   addiu $a1, $sp, 0x34
/* 0A5318 800A4718 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0A531C 800A471C 8FA50050 */  lw    $a1, 0x50($sp)
/* 0A5320 800A4720 27A60034 */  addiu $a2, $sp, 0x34
/* 0A5324 800A4724 00003825 */  move  $a3, $zero
/* 0A5328 800A4728 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A532C 800A472C E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A5330 800A4730 0C024E72 */  jal   func_800939C8
/* 0A5334 800A4734 24840055 */   addiu $a0, $a0, 0x55
/* 0A5338 800A4738 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0A533C 800A473C D7B40018 */  ldc1  $f20, 0x18($sp)
/* 0A5340 800A4740 27BD0048 */  addiu $sp, $sp, 0x48
/* 0A5344 800A4744 03E00008 */  jr    $ra
/* 0A5348 800A4748 00000000 */   nop   
