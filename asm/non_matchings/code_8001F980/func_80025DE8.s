glabel func_80025DE8
/* 0269E8 80025DE8 27BDFF18 */  addiu $sp, $sp, -0xe8
/* 0269EC 80025DEC AFB00028 */  sw    $s0, 0x28($sp)
/* 0269F0 80025DF0 00808025 */  move  $s0, $a0
/* 0269F4 80025DF4 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0269F8 80025DF8 AFA500EC */  sw    $a1, 0xec($sp)
/* 0269FC 80025DFC AFA600F0 */  sw    $a2, 0xf0($sp)
/* 026A00 80025E00 AFA700F4 */  sw    $a3, 0xf4($sp)
/* 026A04 80025E04 8484002E */  lh    $a0, 0x2e($a0)
/* 026A08 80025E08 00042023 */  negu  $a0, $a0
/* 026A0C 80025E0C 308EFFFF */  andi  $t6, $a0, 0xffff
/* 026A10 80025E10 0C0AE006 */  jal   sins
/* 026A14 80025E14 01C02025 */   move  $a0, $t6
/* 026A18 80025E18 3C01BFF8 */  li    $at, 0xBFF80000 # -1.937500
/* 026A1C 80025E1C 44813800 */  mtc1  $at, $f7
/* 026A20 80025E20 44803000 */  mtc1  $zero, $f6
/* 026A24 80025E24 46000121 */  cvt.d.s $f4, $f0
/* 026A28 80025E28 C60A0014 */  lwc1  $f10, 0x14($s0)
/* 026A2C 80025E2C 46262202 */  mul.d $f8, $f4, $f6
/* 026A30 80025E30 3C01800F */  lui   $at, %hi(D_800ED6E0)
/* 026A34 80025E34 46005421 */  cvt.d.s $f16, $f10
/* 026A38 80025E38 46304480 */  add.d $f18, $f8, $f16
/* 026A3C 80025E3C 46209120 */  cvt.s.d $f4, $f18
/* 026A40 80025E40 E7A4009C */  swc1  $f4, 0x9c($sp)
/* 026A44 80025E44 C60A0070 */  lwc1  $f10, 0x70($s0)
/* 026A48 80025E48 C6060018 */  lwc1  $f6, 0x18($s0)
/* 026A4C 80025E4C C6100108 */  lwc1  $f16, 0x108($s0)
/* 026A50 80025E50 460A3201 */  sub.s $f8, $f6, $f10
/* 026A54 80025E54 D426D6E0 */  ldc1  $f6, %lo(D_800ED6E0)($at)
/* 026A58 80025E58 46104480 */  add.s $f18, $f8, $f16
/* 026A5C 80025E5C 46009121 */  cvt.d.s $f4, $f18
/* 026A60 80025E60 46262280 */  add.d $f10, $f4, $f6
/* 026A64 80025E64 46205220 */  cvt.s.d $f8, $f10
/* 026A68 80025E68 E7A800A0 */  swc1  $f8, 0xa0($sp)
/* 026A6C 80025E6C 8604002E */  lh    $a0, 0x2e($s0)
/* 026A70 80025E70 00042023 */  negu  $a0, $a0
/* 026A74 80025E74 308FFFFF */  andi  $t7, $a0, 0xffff
/* 026A78 80025E78 0C0AE00E */  jal   coss
/* 026A7C 80025E7C 01E02025 */   move  $a0, $t7
/* 026A80 80025E80 3C01BFF8 */  li    $at, 0xBFF80000 # -1.937500
/* 026A84 80025E84 44819800 */  mtc1  $at, $f19
/* 026A88 80025E88 44809000 */  mtc1  $zero, $f18
/* 026A8C 80025E8C 46000421 */  cvt.d.s $f16, $f0
/* 026A90 80025E90 C606001C */  lwc1  $f6, 0x1c($s0)
/* 026A94 80025E94 46328102 */  mul.d $f4, $f16, $f18
/* 026A98 80025E98 83B900F3 */  lb    $t9, 0xf3($sp)
/* 026A9C 80025E9C 460032A1 */  cvt.d.s $f10, $f6
/* 026AA0 80025EA0 2418FF4A */  li    $t8, -182
/* 026AA4 80025EA4 00197040 */  sll   $t6, $t9, 1
/* 026AA8 80025EA8 A7B80094 */  sh    $t8, 0x94($sp)
/* 026AAC 80025EAC 020E1021 */  addu  $v0, $s0, $t6
/* 026AB0 80025EB0 27A400A8 */  addiu $a0, $sp, 0xa8
/* 026AB4 80025EB4 462A2200 */  add.d $f8, $f4, $f10
/* 026AB8 80025EB8 27A5009C */  addiu $a1, $sp, 0x9c
/* 026ABC 80025EBC 27A60094 */  addiu $a2, $sp, 0x94
/* 026AC0 80025EC0 46204420 */  cvt.s.d $f16, $f8
/* 026AC4 80025EC4 E7B000A4 */  swc1  $f16, 0xa4($sp)
/* 026AC8 80025EC8 844F0048 */  lh    $t7, 0x48($v0)
/* 026ACC 80025ECC A7AF0096 */  sh    $t7, 0x96($sp)
/* 026AD0 80025ED0 84580050 */  lh    $t8, 0x50($v0)
/* 026AD4 80025ED4 0C008784 */  jal   func_80021E10
/* 026AD8 80025ED8 A7B80098 */   sh    $t8, 0x98($sp)
/* 026ADC 80025EDC 96190254 */  lhu   $t9, 0x254($s0)
/* 026AE0 80025EE0 3C01800E */  lui   $at, %hi(D_800DDBD4)
/* 026AE4 80025EE4 C6060224 */  lwc1  $f6, 0x224($s0)
/* 026AE8 80025EE8 00197080 */  sll   $t6, $t9, 2
/* 026AEC 80025EEC 002E0821 */  addu  $at, $at, $t6
/* 026AF0 80025EF0 C432DBD4 */  lwc1  $f18, %lo(D_800DDBD4)($at)
/* 026AF4 80025EF4 27A400A8 */  addiu $a0, $sp, 0xa8
/* 026AF8 80025EF8 46069102 */  mul.s $f4, $f18, $f6
/* 026AFC 80025EFC 44052000 */  mfc1  $a1, $f4
/* 026B00 80025F00 0C0087E1 */  jal   func_80021F84
/* 026B04 80025F04 00000000 */   nop   
/* 026B08 80025F08 3C108016 */  lui   $s0, %hi(D_80164AF0) # $s0, 0x8016
/* 026B0C 80025F0C 26104AF0 */  addiu $s0, %lo(D_80164AF0) # addiu $s0, $s0, 0x4af0
/* 026B10 80025F10 86180000 */  lh    $t8, ($s0)
/* 026B14 80025F14 3C0F8015 */  lui   $t7, %hi(gGfxPool) # $t7, 0x8015
/* 026B18 80025F18 8DEFEF40 */  lw    $t7, %lo(gGfxPool)($t7)
/* 026B1C 80025F1C 0018C980 */  sll   $t9, $t8, 6
/* 026B20 80025F20 3401FAC0 */  li    $at, 64192
/* 026B24 80025F24 01F92021 */  addu  $a0, $t7, $t9
/* 026B28 80025F28 00812021 */  addu  $a0, $a0, $at
/* 026B2C 80025F2C 0C008860 */  jal   func_80022180
/* 026B30 80025F30 27A500A8 */   addiu $a1, $sp, 0xa8
/* 026B34 80025F34 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 026B38 80025F38 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 026B3C 80025F3C 8C620000 */  lw    $v0, ($v1)
/* 026B40 80025F40 3C180102 */  lui   $t8, (0x01020040 >> 16) # lui $t8, 0x102
/* 026B44 80025F44 37180040 */  ori   $t8, (0x01020040 & 0xFFFF) # ori $t8, $t8, 0x40
/* 026B48 80025F48 244E0008 */  addiu $t6, $v0, 8
/* 026B4C 80025F4C AC6E0000 */  sw    $t6, ($v1)
/* 026B50 80025F50 AC580000 */  sw    $t8, ($v0)
/* 026B54 80025F54 86190000 */  lh    $t9, ($s0)
/* 026B58 80025F58 3C0F8015 */  lui   $t7, %hi(gGfxPool) # $t7, 0x8015
/* 026B5C 80025F5C 8DEFEF40 */  lw    $t7, %lo(gGfxPool)($t7)
/* 026B60 80025F60 00197180 */  sll   $t6, $t9, 6
/* 026B64 80025F64 3401FAC0 */  li    $at, 64192
/* 026B68 80025F68 01EEC021 */  addu  $t8, $t7, $t6
/* 026B6C 80025F6C 0301C821 */  addu  $t9, $t8, $at
/* 026B70 80025F70 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 026B74 80025F74 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 026B78 80025F78 03217824 */  and   $t7, $t9, $at
/* 026B7C 80025F7C AC4F0004 */  sw    $t7, 4($v0)
/* 026B80 80025F80 8C620000 */  lw    $v0, ($v1)
/* 026B84 80025F84 3C190D01 */  lui   $t9, %hi(D_0D008D10) # $t9, 0xd01
/* 026B88 80025F88 27398D10 */  addiu $t9, %lo(D_0D008D10) # addiu $t9, $t9, -0x72f0
/* 026B8C 80025F8C 244E0008 */  addiu $t6, $v0, 8
/* 026B90 80025F90 AC6E0000 */  sw    $t6, ($v1)
/* 026B94 80025F94 3C180600 */  lui   $t8, 0x600
/* 026B98 80025F98 AC580000 */  sw    $t8, ($v0)
/* 026B9C 80025F9C AC590004 */  sw    $t9, 4($v0)
/* 026BA0 80025FA0 8C620000 */  lw    $v0, ($v1)
/* 026BA4 80025FA4 3C0EBA00 */  lui   $t6, (0xBA000E02 >> 16) # lui $t6, 0xba00
/* 026BA8 80025FA8 35CE0E02 */  ori   $t6, (0xBA000E02 & 0xFFFF) # ori $t6, $t6, 0xe02
/* 026BAC 80025FAC 244F0008 */  addiu $t7, $v0, 8
/* 026BB0 80025FB0 AC6F0000 */  sw    $t7, ($v1)
/* 026BB4 80025FB4 34188000 */  li    $t8, 32768
/* 026BB8 80025FB8 AC580004 */  sw    $t8, 4($v0)
/* 026BBC 80025FBC AC4E0000 */  sw    $t6, ($v0)
/* 026BC0 80025FC0 83A800EF */  lb    $t0, 0xef($sp)
/* 026BC4 80025FC4 3C0E8016 */  lui   $t6, %hi(D_80164B60) # 0x8016
/* 026BC8 80025FC8 3C0F8016 */  lui   $t7, %hi(D_80164B50) # 0x8016
/* 026BCC 80025FCC 0008C840 */  sll   $t9, $t0, 1
/* 026BD0 80025FD0 01F97821 */  addu  $t7, $t7, $t9
/* 026BD4 80025FD4 01D97021 */  addu  $t6, $t6, $t9
/* 026BD8 80025FD8 95CE4B60 */  lhu   $t6, %lo(D_80164B60)($t6) # 0x4b60
/* 026BDC 80025FDC 95EF4B50 */  lhu   $t7, %lo(D_80164B50)($t7) # 0x4b50
/* 026BE0 80025FE0 3C048016 */  lui   $a0, %hi(D_80164B10) # 0x8016
/* 026BE4 80025FE4 3C058016 */  lui   $a1, %hi(D_80164B20) # 0x8016
/* 026BE8 80025FE8 3C068016 */  lui   $a2, %hi(D_80164B30) # 0x8016
/* 026BEC 80025FEC 3C078016 */  lui   $a3, %hi(D_80164B40) # 0x8016
/* 026BF0 80025FF0 00F93821 */  addu  $a3, $a3, $t9
/* 026BF4 80025FF4 00D93021 */  addu  $a2, $a2, $t9
/* 026BF8 80025FF8 00B92821 */  addu  $a1, $a1, $t9
/* 026BFC 80025FFC 00992021 */  addu  $a0, $a0, $t9
/* 026C00 80026000 24180040 */  li    $t8, 64
/* 026C04 80026004 AFB80018 */  sw    $t8, 0x18($sp)
/* 026C08 80026008 94844B10 */  lhu   $a0, %lo(D_80164B10)($a0) # 0x4b10
/* 026C0C 8002600C 94A54B20 */  lhu   $a1, %lo(D_80164B20)($a1) # 0x4b20
/* 026C10 80026010 94C64B30 */  lhu   $a2, %lo(D_80164B30)($a2) # 0x4b30
/* 026C14 80026014 94E74B40 */  lhu   $a3, %lo(D_80164B40)($a3) # 0x4b40
/* 026C18 80026018 03204025 */  move  $t0, $t9
/* 026C1C 8002601C AFAE0014 */  sw    $t6, 0x14($sp)
/* 026C20 80026020 0C012D85 */  jal   func_8004B614
/* 026C24 80026024 AFAF0010 */   sw    $t7, 0x10($sp)
/* 026C28 80026028 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 026C2C 8002602C 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 026C30 80026030 8C620000 */  lw    $v0, ($v1)
/* 026C34 80026034 3C0FB900 */  lui   $t7, (0xB900031D >> 16) # lui $t7, 0xb900
/* 026C38 80026038 3C0E0050 */  lui   $t6, (0x00505978 >> 16) # lui $t6, 0x50
/* 026C3C 8002603C 24590008 */  addiu $t9, $v0, 8
/* 026C40 80026040 AC790000 */  sw    $t9, ($v1)
/* 026C44 80026044 35CE5978 */  ori   $t6, (0x00505978 & 0xFFFF) # ori $t6, $t6, 0x5978
/* 026C48 80026048 35EF031D */  ori   $t7, (0xB900031D & 0xFFFF) # ori $t7, $t7, 0x31d
/* 026C4C 8002604C AC4F0000 */  sw    $t7, ($v0)
/* 026C50 80026050 AC4E0004 */  sw    $t6, 4($v0)
/* 026C54 80026054 8C620000 */  lw    $v0, ($v1)
/* 026C58 80026058 3C19FD50 */  lui   $t9, 0xfd50
/* 026C5C 8002605C 3C0F8016 */  lui   $t7, %hi(D_80164B08) # $t7, 0x8016
/* 026C60 80026060 24580008 */  addiu $t8, $v0, 8
/* 026C64 80026064 AC780000 */  sw    $t8, ($v1)
/* 026C68 80026068 AC590000 */  sw    $t9, ($v0)
/* 026C6C 8002606C 8DEF4B08 */  lw    $t7, %lo(D_80164B08)($t7)
/* 026C70 80026070 3C190708 */  lui   $t9, (0x07080200 >> 16) # lui $t9, 0x708
/* 026C74 80026074 37390200 */  ori   $t9, (0x07080200 & 0xFFFF) # ori $t9, $t9, 0x200
/* 026C78 80026078 AC4F0004 */  sw    $t7, 4($v0)
/* 026C7C 8002607C 8C620000 */  lw    $v0, ($v1)
/* 026C80 80026080 3C18F550 */  lui   $t8, 0xf550
/* 026C84 80026084 3C1F0D01 */  lui   $ra, %hi(D_0D008C78) # $ra, 0xd01
/* 026C88 80026088 244E0008 */  addiu $t6, $v0, 8
/* 026C8C 8002608C AC6E0000 */  sw    $t6, ($v1)
/* 026C90 80026090 AC590004 */  sw    $t9, 4($v0)
/* 026C94 80026094 AC580000 */  sw    $t8, ($v0)
/* 026C98 80026098 8C620000 */  lw    $v0, ($v1)
/* 026C9C 8002609C 3C0EE600 */  lui   $t6, 0xe600
/* 026CA0 800260A0 3C19F300 */  lui   $t9, 0xf300
/* 026CA4 800260A4 244F0008 */  addiu $t7, $v0, 8
/* 026CA8 800260A8 AC6F0000 */  sw    $t7, ($v1)
/* 026CAC 800260AC AC400004 */  sw    $zero, 4($v0)
/* 026CB0 800260B0 AC4E0000 */  sw    $t6, ($v0)
/* 026CB4 800260B4 8C620000 */  lw    $v0, ($v1)
/* 026CB8 800260B8 3C0F073F */  lui   $t7, (0x073FF100 >> 16) # lui $t7, 0x73f
/* 026CBC 800260BC 35EFF100 */  ori   $t7, (0x073FF100 & 0xFFFF) # ori $t7, $t7, 0xf100
/* 026CC0 800260C0 24580008 */  addiu $t8, $v0, 8
/* 026CC4 800260C4 AC780000 */  sw    $t8, ($v1)
/* 026CC8 800260C8 AC4F0004 */  sw    $t7, 4($v0)
/* 026CCC 800260CC AC590000 */  sw    $t9, ($v0)
/* 026CD0 800260D0 8C620000 */  lw    $v0, ($v1)
/* 026CD4 800260D4 3C18E700 */  lui   $t8, 0xe700
/* 026CD8 800260D8 3C0FF548 */  lui   $t7, (0xF5481000 >> 16) # lui $t7, 0xf548
/* 026CDC 800260DC 244E0008 */  addiu $t6, $v0, 8
/* 026CE0 800260E0 AC6E0000 */  sw    $t6, ($v1)
/* 026CE4 800260E4 AC400004 */  sw    $zero, 4($v0)
/* 026CE8 800260E8 AC580000 */  sw    $t8, ($v0)
/* 026CEC 800260EC 8C620000 */  lw    $v0, ($v1)
/* 026CF0 800260F0 3C0E0008 */  lui   $t6, (0x00080200 >> 16) # lui $t6, 8
/* 026CF4 800260F4 35CE0200 */  ori   $t6, (0x00080200 & 0xFFFF) # ori $t6, $t6, 0x200
/* 026CF8 800260F8 24590008 */  addiu $t9, $v0, 8
/* 026CFC 800260FC AC790000 */  sw    $t9, ($v1)
/* 026D00 80026100 35EF1000 */  ori   $t7, (0xF5481000 & 0xFFFF) # ori $t7, $t7, 0x1000
/* 026D04 80026104 AC4F0000 */  sw    $t7, ($v0)
/* 026D08 80026108 AC4E0004 */  sw    $t6, 4($v0)
/* 026D0C 8002610C 8C620000 */  lw    $v0, ($v1)
/* 026D10 80026110 3C0F000F */  lui   $t7, (0x000FC07C >> 16) # lui $t7, 0xf
/* 026D14 80026114 35EFC07C */  ori   $t7, (0x000FC07C & 0xFFFF) # ori $t7, $t7, 0xc07c
/* 026D18 80026118 24580008 */  addiu $t8, $v0, 8
/* 026D1C 8002611C AC780000 */  sw    $t8, ($v1)
/* 026D20 80026120 3C19F200 */  lui   $t9, 0xf200
/* 026D24 80026124 AC590000 */  sw    $t9, ($v0)
/* 026D28 80026128 AC4F0004 */  sw    $t7, 4($v0)
/* 026D2C 8002612C 8C620000 */  lw    $v0, ($v1)
/* 026D30 80026130 3C180400 */  lui   $t8, (0x0400103F >> 16) # lui $t8, 0x400
/* 026D34 80026134 3718103F */  ori   $t8, (0x0400103F & 0xFFFF) # ori $t8, $t8, 0x103f
/* 026D38 80026138 244E0008 */  addiu $t6, $v0, 8
/* 026D3C 8002613C AC6E0000 */  sw    $t6, ($v1)
/* 026D40 80026140 AC580000 */  sw    $t8, ($v0)
/* 026D44 80026144 83B900EF */  lb    $t9, 0xef($sp)
/* 026D48 80026148 3C0E800E */  lui   $t6, %hi(D_800DDBB4) # $t6, 0x800e
/* 026D4C 8002614C 25CEDBB4 */  addiu $t6, %lo(D_800DDBB4) # addiu $t6, $t6, -0x244c
/* 026D50 80026150 00197880 */  sll   $t7, $t9, 2
/* 026D54 80026154 83B900F7 */  lb    $t9, 0xf7($sp)
/* 026D58 80026158 01EE6821 */  addu  $t5, $t7, $t6
/* 026D5C 8002615C 8DB80000 */  lw    $t8, ($t5)
/* 026D60 80026160 00197900 */  sll   $t7, $t9, 4
/* 026D64 80026164 27FF8C78 */  addiu $ra, %lo(D_0D008C78) # addiu $ra, $ra, -0x7388
/* 026D68 80026168 030F7021 */  addu  $t6, $t8, $t7
/* 026D6C 8002616C AC4E0004 */  sw    $t6, 4($v0)
/* 026D70 80026170 8C620000 */  lw    $v0, ($v1)
/* 026D74 80026174 3C180600 */  lui   $t8, 0x600
/* 026D78 80026178 3C0EFD50 */  lui   $t6, 0xfd50
/* 026D7C 8002617C 24590008 */  addiu $t9, $v0, 8
/* 026D80 80026180 AC790000 */  sw    $t9, ($v1)
/* 026D84 80026184 AC5F0004 */  sw    $ra, 4($v0)
/* 026D88 80026188 AC580000 */  sw    $t8, ($v0)
/* 026D8C 8002618C 8C620000 */  lw    $v0, ($v1)
/* 026D90 80026190 3C198016 */  lui   $t9, %hi(D_80164B0C) # $t9, 0x8016
/* 026D94 80026194 244F0008 */  addiu $t7, $v0, 8
/* 026D98 80026198 AC6F0000 */  sw    $t7, ($v1)
/* 026D9C 8002619C AC4E0000 */  sw    $t6, ($v0)
/* 026DA0 800261A0 8F394B0C */  lw    $t9, %lo(D_80164B0C)($t9)
/* 026DA4 800261A4 3C0E0708 */  lui   $t6, (0x07080200 >> 16) # lui $t6, 0x708
/* 026DA8 800261A8 35CE0200 */  ori   $t6, (0x07080200 & 0xFFFF) # ori $t6, $t6, 0x200
/* 026DAC 800261AC AC590004 */  sw    $t9, 4($v0)
/* 026DB0 800261B0 8C620000 */  lw    $v0, ($v1)
/* 026DB4 800261B4 3C0FF550 */  lui   $t7, 0xf550
/* 026DB8 800261B8 24580008 */  addiu $t8, $v0, 8
/* 026DBC 800261BC AC780000 */  sw    $t8, ($v1)
/* 026DC0 800261C0 AC4E0004 */  sw    $t6, 4($v0)
/* 026DC4 800261C4 AC4F0000 */  sw    $t7, ($v0)
/* 026DC8 800261C8 8C620000 */  lw    $v0, ($v1)
/* 026DCC 800261CC 3C18E600 */  lui   $t8, 0xe600
/* 026DD0 800261D0 3C0EF300 */  lui   $t6, 0xf300
/* 026DD4 800261D4 24590008 */  addiu $t9, $v0, 8
/* 026DD8 800261D8 AC790000 */  sw    $t9, ($v1)
/* 026DDC 800261DC AC400004 */  sw    $zero, 4($v0)
/* 026DE0 800261E0 AC580000 */  sw    $t8, ($v0)
/* 026DE4 800261E4 8C620000 */  lw    $v0, ($v1)
/* 026DE8 800261E8 3C19073F */  lui   $t9, (0x073FF100 >> 16) # lui $t9, 0x73f
/* 026DEC 800261EC 3739F100 */  ori   $t9, (0x073FF100 & 0xFFFF) # ori $t9, $t9, 0xf100
/* 026DF0 800261F0 244F0008 */  addiu $t7, $v0, 8
/* 026DF4 800261F4 AC6F0000 */  sw    $t7, ($v1)
/* 026DF8 800261F8 AC590004 */  sw    $t9, 4($v0)
/* 026DFC 800261FC AC4E0000 */  sw    $t6, ($v0)
/* 026E00 80026200 8C620000 */  lw    $v0, ($v1)
/* 026E04 80026204 3C0FE700 */  lui   $t7, 0xe700
/* 026E08 80026208 3C19F548 */  lui   $t9, (0xF5481000 >> 16) # lui $t9, 0xf548
/* 026E0C 8002620C 24580008 */  addiu $t8, $v0, 8
/* 026E10 80026210 AC780000 */  sw    $t8, ($v1)
/* 026E14 80026214 AC400004 */  sw    $zero, 4($v0)
/* 026E18 80026218 AC4F0000 */  sw    $t7, ($v0)
/* 026E1C 8002621C 8C620000 */  lw    $v0, ($v1)
/* 026E20 80026220 3C180008 */  lui   $t8, (0x00080200 >> 16) # lui $t8, 8
/* 026E24 80026224 37180200 */  ori   $t8, (0x00080200 & 0xFFFF) # ori $t8, $t8, 0x200
/* 026E28 80026228 244E0008 */  addiu $t6, $v0, 8
/* 026E2C 8002622C AC6E0000 */  sw    $t6, ($v1)
/* 026E30 80026230 37391000 */  ori   $t9, (0xF5481000 & 0xFFFF) # ori $t9, $t9, 0x1000
/* 026E34 80026234 AC590000 */  sw    $t9, ($v0)
/* 026E38 80026238 AC580004 */  sw    $t8, 4($v0)
/* 026E3C 8002623C 8C620000 */  lw    $v0, ($v1)
/* 026E40 80026240 3C19000F */  lui   $t9, (0x000FC07C >> 16) # lui $t9, 0xf
/* 026E44 80026244 3739C07C */  ori   $t9, (0x000FC07C & 0xFFFF) # ori $t9, $t9, 0xc07c
/* 026E48 80026248 244F0008 */  addiu $t7, $v0, 8
/* 026E4C 8002624C AC6F0000 */  sw    $t7, ($v1)
/* 026E50 80026250 3C0EF200 */  lui   $t6, 0xf200
/* 026E54 80026254 AC4E0000 */  sw    $t6, ($v0)
/* 026E58 80026258 AC590004 */  sw    $t9, 4($v0)
/* 026E5C 8002625C 8C620000 */  lw    $v0, ($v1)
/* 026E60 80026260 3C0F0400 */  lui   $t7, (0x0400103F >> 16) # lui $t7, 0x400
/* 026E64 80026264 35EF103F */  ori   $t7, (0x0400103F & 0xFFFF) # ori $t7, $t7, 0x103f
/* 026E68 80026268 24580008 */  addiu $t8, $v0, 8
/* 026E6C 8002626C AC780000 */  sw    $t8, ($v1)
/* 026E70 80026270 AC4F0000 */  sw    $t7, ($v0)
/* 026E74 80026274 83B900F7 */  lb    $t9, 0xf7($sp)
/* 026E78 80026278 8DAE0000 */  lw    $t6, ($t5)
/* 026E7C 8002627C 27380004 */  addiu $t8, $t9, 4
/* 026E80 80026280 00187900 */  sll   $t7, $t8, 4
/* 026E84 80026284 01CFC821 */  addu  $t9, $t6, $t7
/* 026E88 80026288 AC590004 */  sw    $t9, 4($v0)
/* 026E8C 8002628C 8C620000 */  lw    $v0, ($v1)
/* 026E90 80026290 3C0E0600 */  lui   $t6, 0x600
/* 026E94 80026294 3C19BB00 */  lui   $t9, 0xbb00
/* 026E98 80026298 24580008 */  addiu $t8, $v0, 8
/* 026E9C 8002629C AC780000 */  sw    $t8, ($v1)
/* 026EA0 800262A0 AC5F0004 */  sw    $ra, 4($v0)
/* 026EA4 800262A4 AC4E0000 */  sw    $t6, ($v0)
/* 026EA8 800262A8 8C620000 */  lw    $v0, ($v1)
/* 026EAC 800262AC 3C180001 */  lui   $t8, (0x00010001 >> 16) # lui $t8, 1
/* 026EB0 800262B0 37180001 */  ori   $t8, (0x00010001 & 0xFFFF) # ori $t8, $t8, 1
/* 026EB4 800262B4 244F0008 */  addiu $t7, $v0, 8
/* 026EB8 800262B8 AC6F0000 */  sw    $t7, ($v1)
/* 026EBC 800262BC AC580004 */  sw    $t8, 4($v0)
/* 026EC0 800262C0 AC590000 */  sw    $t9, ($v0)
/* 026EC4 800262C4 860E0000 */  lh    $t6, ($s0)
/* 026EC8 800262C8 8FBF002C */  lw    $ra, 0x2c($sp)
/* 026ECC 800262CC 25CF0001 */  addiu $t7, $t6, 1
/* 026ED0 800262D0 A60F0000 */  sh    $t7, ($s0)
/* 026ED4 800262D4 8FB00028 */  lw    $s0, 0x28($sp)
/* 026ED8 800262D8 03E00008 */  jr    $ra
/* 026EDC 800262DC 27BD00E8 */   addiu $sp, $sp, 0xe8
