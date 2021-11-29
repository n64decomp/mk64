glabel func_800A874C
/* 0A934C 800A874C 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 0A9350 800A8750 AFB00030 */  sw    $s0, 0x30($sp)
/* 0A9354 800A8754 00808025 */  move  $s0, $a0
/* 0A9358 800A8758 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0A935C 800A875C AFB20038 */  sw    $s2, 0x38($sp)
/* 0A9360 800A8760 AFB10034 */  sw    $s1, 0x34($sp)
/* 0A9364 800A8764 F7B60028 */  sdc1  $f22, 0x28($sp)
/* 0A9368 800A8768 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0A936C 800A876C 0C024C36 */  jal   set_text_color
/* 0A9370 800A8770 24040001 */   li    $a0, 1
/* 0A9374 800A8774 8E0E0000 */  lw    $t6, ($s0)
/* 0A9378 800A8778 24010065 */  li    $at, 101
/* 0A937C 800A877C 15C10005 */  bne   $t6, $at, .L800A8794
/* 0A9380 800A8780 00000000 */   nop   
/* 0A9384 800A8784 0C02D389 */  jal   func_800B4E24
/* 0A9388 800A8788 00002025 */   move  $a0, $zero
/* 0A938C 800A878C 10000004 */  b     .L800A87A0
/* 0A9390 800A8790 00409025 */   move  $s2, $v0
.L800A8794:
/* 0A9394 800A8794 0C02D3CB */  jal   func_800B4F2C
/* 0A9398 800A8798 00000000 */   nop   
/* 0A939C 800A879C 00409025 */  move  $s2, $v0
.L800A87A0:
/* 0A93A0 800A87A0 3C01000F */  lui   $at, (0x000FFFFF >> 16) # lui $at, 0xf
/* 0A93A4 800A87A4 3421FFFF */  ori   $at, (0x000FFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0A93A8 800A87A8 02418824 */  and   $s1, $s2, $at
/* 0A93AC 800A87AC 02202025 */  move  $a0, $s1
/* 0A93B0 800A87B0 0C029E3D */  jal   get_time_record_minutes
/* 0A93B4 800A87B4 27A50058 */   addiu $a1, $sp, 0x58
/* 0A93B8 800A87B8 3C01800F */  lui   $at, %hi(D_800F24A0) # $at, 0x800f
/* 0A93BC 800A87BC C43424A0 */  lwc1  $f20, %lo(D_800F24A0)($at)
/* 0A93C0 800A87C0 3C01800F */  lui   $at, %hi(D_800F24A4) # $at, 0x800f
/* 0A93C4 800A87C4 C43624A4 */  lwc1  $f22, %lo(D_800F24A4)($at)
/* 0A93C8 800A87C8 8E04000C */  lw    $a0, 0xc($s0)
/* 0A93CC 800A87CC 8E050010 */  lw    $a1, 0x10($s0)
/* 0A93D0 800A87D0 27A60058 */  addiu $a2, $sp, 0x58
/* 0A93D4 800A87D4 00003825 */  move  $a3, $zero
/* 0A93D8 800A87D8 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A93DC 800A87DC E7B60014 */  swc1  $f22, 0x14($sp)
/* 0A93E0 800A87E0 24840005 */  addiu $a0, $a0, 5
/* 0A93E4 800A87E4 0C024E7F */  jal   text_draw
/* 0A93E8 800A87E8 24A50021 */   addiu $a1, $a1, 0x21
/* 0A93EC 800A87EC 8E04000C */  lw    $a0, 0xc($s0)
/* 0A93F0 800A87F0 8E050010 */  lw    $a1, 0x10($s0)
/* 0A93F4 800A87F4 3C06800F */  lui   $a2, %hi(D_800F0C98) # $a2, 0x800f
/* 0A93F8 800A87F8 24C60C98 */  addiu $a2, %lo(D_800F0C98) # addiu $a2, $a2, 0xc98
/* 0A93FC 800A87FC E7B60014 */  swc1  $f22, 0x14($sp)
/* 0A9400 800A8800 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A9404 800A8804 00003825 */  move  $a3, $zero
/* 0A9408 800A8808 2484000E */  addiu $a0, $a0, 0xe
/* 0A940C 800A880C 0C024CC9 */  jal   func_80093324
/* 0A9410 800A8810 24A50021 */   addiu $a1, $a1, 0x21
/* 0A9414 800A8814 02202025 */  move  $a0, $s1
/* 0A9418 800A8818 0C029E51 */  jal   get_time_record_seconds
/* 0A941C 800A881C 27A50058 */   addiu $a1, $sp, 0x58
/* 0A9420 800A8820 8E04000C */  lw    $a0, 0xc($s0)
/* 0A9424 800A8824 8E050010 */  lw    $a1, 0x10($s0)
/* 0A9428 800A8828 E7B60014 */  swc1  $f22, 0x14($sp)
/* 0A942C 800A882C E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A9430 800A8830 27A60058 */  addiu $a2, $sp, 0x58
/* 0A9434 800A8834 00003825 */  move  $a3, $zero
/* 0A9438 800A8838 24840016 */  addiu $a0, $a0, 0x16
/* 0A943C 800A883C 0C024E7F */  jal   text_draw
/* 0A9440 800A8840 24A50021 */   addiu $a1, $a1, 0x21
/* 0A9444 800A8844 8E04000C */  lw    $a0, 0xc($s0)
/* 0A9448 800A8848 8E050010 */  lw    $a1, 0x10($s0)
/* 0A944C 800A884C 3C06800F */  lui   $a2, %hi(D_800F0C9C) # $a2, 0x800f
/* 0A9450 800A8850 24C60C9C */  addiu $a2, %lo(D_800F0C9C) # addiu $a2, $a2, 0xc9c
/* 0A9454 800A8854 E7B60014 */  swc1  $f22, 0x14($sp)
/* 0A9458 800A8858 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A945C 800A885C 00003825 */  move  $a3, $zero
/* 0A9460 800A8860 24840020 */  addiu $a0, $a0, 0x20
/* 0A9464 800A8864 0C024CC9 */  jal   func_80093324
/* 0A9468 800A8868 24A50021 */   addiu $a1, $a1, 0x21
/* 0A946C 800A886C 02202025 */  move  $a0, $s1
/* 0A9470 800A8870 0C029E69 */  jal   get_time_record_centiseconds
/* 0A9474 800A8874 27A50058 */   addiu $a1, $sp, 0x58
/* 0A9478 800A8878 8E04000C */  lw    $a0, 0xc($s0)
/* 0A947C 800A887C 8E050010 */  lw    $a1, 0x10($s0)
/* 0A9480 800A8880 E7B60014 */  swc1  $f22, 0x14($sp)
/* 0A9484 800A8884 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A9488 800A8888 27A60058 */  addiu $a2, $sp, 0x58
/* 0A948C 800A888C 00003825 */  move  $a3, $zero
/* 0A9490 800A8890 24840029 */  addiu $a0, $a0, 0x29
/* 0A9494 800A8894 0C024E7F */  jal   text_draw
/* 0A9498 800A8898 24A50021 */   addiu $a1, $a1, 0x21
/* 0A949C 800A889C 3C010009 */  lui   $at, (0x000927C0 >> 16) # lui $at, 9
/* 0A94A0 800A88A0 342127C0 */  ori   $at, (0x000927C0 & 0xFFFF) # ori $at, $at, 0x27c0
/* 0A94A4 800A88A4 0221082B */  sltu  $at, $s1, $at
/* 0A94A8 800A88A8 10200004 */  beqz  $at, .L800A88BC
/* 0A94AC 800A88AC 3C06800E */   lui   $a2, %hi(D_800E76A8)
/* 0A94B0 800A88B0 00127D02 */  srl   $t7, $s2, 0x14
/* 0A94B4 800A88B4 10000002 */  b     .L800A88C0
/* 0A94B8 800A88B8 01E09025 */   move  $s2, $t7
.L800A88BC:
/* 0A94BC 800A88BC 24120008 */  li    $s2, 8
.L800A88C0:
/* 0A94C0 800A88C0 8E04000C */  lw    $a0, 0xc($s0)
/* 0A94C4 800A88C4 8E050010 */  lw    $a1, 0x10($s0)
/* 0A94C8 800A88C8 0012C080 */  sll   $t8, $s2, 2
/* 0A94CC 800A88CC 00D83021 */  addu  $a2, $a2, $t8
/* 0A94D0 800A88D0 8CC676A8 */  lw    $a2, %lo(D_800E76A8)($a2)
/* 0A94D4 800A88D4 E7B60014 */  swc1  $f22, 0x14($sp)
/* 0A94D8 800A88D8 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A94DC 800A88DC 00003825 */  move  $a3, $zero
/* 0A94E0 800A88E0 24840060 */  addiu $a0, $a0, 0x60
/* 0A94E4 800A88E4 0C024DAE */  jal   func_800936B8
/* 0A94E8 800A88E8 24A50021 */   addiu $a1, $a1, 0x21
/* 0A94EC 800A88EC 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0A94F0 800A88F0 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0A94F4 800A88F4 D7B60028 */  ldc1  $f22, 0x28($sp)
/* 0A94F8 800A88F8 8FB00030 */  lw    $s0, 0x30($sp)
/* 0A94FC 800A88FC 8FB10034 */  lw    $s1, 0x34($sp)
/* 0A9500 800A8900 8FB20038 */  lw    $s2, 0x38($sp)
/* 0A9504 800A8904 03E00008 */  jr    $ra
/* 0A9508 800A8908 27BD0060 */   addiu $sp, $sp, 0x60
