glabel render_luigi_raceway
/* 0FD0A0 80293A90 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0FD0A4 80293A94 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FD0A8 80293A98 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FD0AC 80293A9C 8C620000 */  lw    $v0, ($v1)
/* 0FD0B0 80293AA0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0FD0B4 80293AA4 AFA40028 */  sw    $a0, 0x28($sp)
/* 0FD0B8 80293AA8 848F0038 */  lh    $t7, 0x38($a0)
/* 0FD0BC 80293AAC 24580008 */  addiu $t8, $v0, 8
/* 0FD0C0 80293AB0 AC780000 */  sw    $t8, ($v1)
/* 0FD0C4 80293AB4 3C19BB00 */  lui   $t9, (0xBB000001 >> 16) # lui $t9, 0xbb00
/* 0FD0C8 80293AB8 A7AF0022 */  sh    $t7, 0x22($sp)
/* 0FD0CC 80293ABC 37390001 */  ori   $t9, (0xBB000001 & 0xFFFF) # ori $t9, $t9, 1
/* 0FD0D0 80293AC0 240BFFFF */  li    $t3, -1
/* 0FD0D4 80293AC4 AC4B0004 */  sw    $t3, 4($v0)
/* 0FD0D8 80293AC8 AC590000 */  sw    $t9, ($v0)
/* 0FD0DC 80293ACC 8C620000 */  lw    $v0, ($v1)
/* 0FD0E0 80293AD0 3C0DB700 */  lui   $t5, 0xb700
/* 0FD0E4 80293AD4 240E0200 */  li    $t6, 512
/* 0FD0E8 80293AD8 244C0008 */  addiu $t4, $v0, 8
/* 0FD0EC 80293ADC AC6C0000 */  sw    $t4, ($v1)
/* 0FD0F0 80293AE0 AC4E0004 */  sw    $t6, 4($v0)
/* 0FD0F4 80293AE4 AC4D0000 */  sw    $t5, ($v0)
/* 0FD0F8 80293AE8 8C620000 */  lw    $v0, ($v1)
/* 0FD0FC 80293AEC 3C190002 */  lui   $t9, 2
/* 0FD100 80293AF0 3C18B600 */  lui   $t8, 0xb600
/* 0FD104 80293AF4 244F0008 */  addiu $t7, $v0, 8
/* 0FD108 80293AF8 AC6F0000 */  sw    $t7, ($v1)
/* 0FD10C 80293AFC AC590004 */  sw    $t9, 4($v0)
/* 0FD110 80293B00 AC580000 */  sw    $t8, ($v0)
/* 0FD114 80293B04 8FAB0028 */  lw    $t3, 0x28($sp)
/* 0FD118 80293B08 0C0A4308 */  jal   func_80290C20
/* 0FD11C 80293B0C 8D640004 */   lw    $a0, 4($t3)
/* 0FD120 80293B10 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FD124 80293B14 24010001 */  li    $at, 1
/* 0FD128 80293B18 1441001B */  bne   $v0, $at, .L80293B88
/* 0FD12C 80293B1C 24630298 */   addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FD130 80293B20 8C620000 */  lw    $v0, ($v1)
/* 0FD134 80293B24 3C0DFCFF */  lui   $t5, (0xFCFFFFFF >> 16) # lui $t5, 0xfcff
/* 0FD138 80293B28 3C0EFFFE */  lui   $t6, (0xFFFE793C >> 16) # lui $t6, 0xfffe
/* 0FD13C 80293B2C 244C0008 */  addiu $t4, $v0, 8
/* 0FD140 80293B30 AC6C0000 */  sw    $t4, ($v1)
/* 0FD144 80293B34 35CE793C */  ori   $t6, (0xFFFE793C & 0xFFFF) # ori $t6, $t6, 0x793c
/* 0FD148 80293B38 35ADFFFF */  ori   $t5, (0xFCFFFFFF & 0xFFFF) # ori $t5, $t5, 0xffff
/* 0FD14C 80293B3C AC4D0000 */  sw    $t5, ($v0)
/* 0FD150 80293B40 AC4E0004 */  sw    $t6, 4($v0)
/* 0FD154 80293B44 8C620000 */  lw    $v0, ($v1)
/* 0FD158 80293B48 3C18B900 */  lui   $t8, (0xB900031D >> 16) # lui $t8, 0xb900
/* 0FD15C 80293B4C 3C190055 */  lui   $t9, (0x00552078 >> 16) # lui $t9, 0x55
/* 0FD160 80293B50 244F0008 */  addiu $t7, $v0, 8
/* 0FD164 80293B54 AC6F0000 */  sw    $t7, ($v1)
/* 0FD168 80293B58 37392078 */  ori   $t9, (0x00552078 & 0xFFFF) # ori $t9, $t9, 0x2078
/* 0FD16C 80293B5C 3718031D */  ori   $t8, (0xB900031D & 0xFFFF) # ori $t8, $t8, 0x31d
/* 0FD170 80293B60 AC580000 */  sw    $t8, ($v0)
/* 0FD174 80293B64 AC590004 */  sw    $t9, 4($v0)
/* 0FD178 80293B68 8C620000 */  lw    $v0, ($v1)
/* 0FD17C 80293B6C 3C0D0700 */  lui   $t5, (0x07009EC0 >> 16) # lui $t5, 0x700
/* 0FD180 80293B70 35AD9EC0 */  ori   $t5, (0x07009EC0 & 0xFFFF) # ori $t5, $t5, 0x9ec0
/* 0FD184 80293B74 244B0008 */  addiu $t3, $v0, 8
/* 0FD188 80293B78 AC6B0000 */  sw    $t3, ($v1)
/* 0FD18C 80293B7C 3C0C0600 */  lui   $t4, 0x600
/* 0FD190 80293B80 AC4C0000 */  sw    $t4, ($v0)
/* 0FD194 80293B84 AC4D0004 */  sw    $t5, 4($v0)
.L80293B88:
/* 0FD198 80293B88 8C620000 */  lw    $v0, ($v1)
/* 0FD19C 80293B8C 3C0FFC12 */  lui   $t7, (0xFC121824 >> 16) # lui $t7, 0xfc12
/* 0FD1A0 80293B90 3C18FF33 */  lui   $t8, (0xFF33FFFF >> 16) # lui $t8, 0xff33
/* 0FD1A4 80293B94 244E0008 */  addiu $t6, $v0, 8
/* 0FD1A8 80293B98 AC6E0000 */  sw    $t6, ($v1)
/* 0FD1AC 80293B9C 3718FFFF */  ori   $t8, (0xFF33FFFF & 0xFFFF) # ori $t8, $t8, 0xffff
/* 0FD1B0 80293BA0 35EF1824 */  ori   $t7, (0xFC121824 & 0xFFFF) # ori $t7, $t7, 0x1824
/* 0FD1B4 80293BA4 AC4F0000 */  sw    $t7, ($v0)
/* 0FD1B8 80293BA8 AC580004 */  sw    $t8, 4($v0)
/* 0FD1BC 80293BAC 8C620000 */  lw    $v0, ($v1)
/* 0FD1C0 80293BB0 3C0BB900 */  lui   $t3, (0xB900031D >> 16) # lui $t3, 0xb900
/* 0FD1C4 80293BB4 3C0C0055 */  lui   $t4, (0x00552078 >> 16) # lui $t4, 0x55
/* 0FD1C8 80293BB8 24590008 */  addiu $t9, $v0, 8
/* 0FD1CC 80293BBC AC790000 */  sw    $t9, ($v1)
/* 0FD1D0 80293BC0 358C2078 */  ori   $t4, (0x00552078 & 0xFFFF) # ori $t4, $t4, 0x2078
/* 0FD1D4 80293BC4 356B031D */  ori   $t3, (0xB900031D & 0xFFFF) # ori $t3, $t3, 0x31d
/* 0FD1D8 80293BC8 3C040900 */  lui   $a0, %hi(luigi_raceway_dls) # $a0, 0x900
/* 0FD1DC 80293BCC AC4B0000 */  sw    $t3, ($v0)
/* 0FD1E0 80293BD0 AC4C0004 */  sw    $t4, 4($v0)
/* 0FD1E4 80293BD4 8FA50028 */  lw    $a1, 0x28($sp)
/* 0FD1E8 80293BD8 0C0A436B */  jal   load_surface_map
/* 0FD1EC 80293BDC 24840290 */   addiu $a0, %lo(luigi_raceway_dls) # addiu $a0, $a0, 0x290
/* 0FD1F0 80293BE0 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FD1F4 80293BE4 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FD1F8 80293BE8 8C620000 */  lw    $v0, ($v1)
/* 0FD1FC 80293BEC 3C0EFC12 */  lui   $t6, (0xFC127E24 >> 16) # lui $t6, 0xfc12
/* 0FD200 80293BF0 35CE7E24 */  ori   $t6, (0xFC127E24 & 0xFFFF) # ori $t6, $t6, 0x7e24
/* 0FD204 80293BF4 244D0008 */  addiu $t5, $v0, 8
/* 0FD208 80293BF8 AC6D0000 */  sw    $t5, ($v1)
/* 0FD20C 80293BFC 240FF3F9 */  li    $t7, -3079
/* 0FD210 80293C00 AC4F0004 */  sw    $t7, 4($v0)
/* 0FD214 80293C04 AC4E0000 */  sw    $t6, ($v0)
/* 0FD218 80293C08 8C620000 */  lw    $v0, ($v1)
/* 0FD21C 80293C0C 3C19B900 */  lui   $t9, (0xB900031D >> 16) # lui $t9, 0xb900
/* 0FD220 80293C10 3C0B0055 */  lui   $t3, (0x00553078 >> 16) # lui $t3, 0x55
/* 0FD224 80293C14 24580008 */  addiu $t8, $v0, 8
/* 0FD228 80293C18 AC780000 */  sw    $t8, ($v1)
/* 0FD22C 80293C1C 356B3078 */  ori   $t3, (0x00553078 & 0xFFFF) # ori $t3, $t3, 0x3078
/* 0FD230 80293C20 3739031D */  ori   $t9, (0xB900031D & 0xFFFF) # ori $t9, $t9, 0x31d
/* 0FD234 80293C24 AC590000 */  sw    $t9, ($v0)
/* 0FD238 80293C28 AC4B0004 */  sw    $t3, 4($v0)
/* 0FD23C 80293C2C 8C620000 */  lw    $v0, ($v1)
/* 0FD240 80293C30 3C0D0700 */  lui   $t5, (0x070000E0 >> 16) # lui $t5, 0x700
/* 0FD244 80293C34 3C0A0600 */  lui   $t2, 0x600
/* 0FD248 80293C38 244C0008 */  addiu $t4, $v0, 8
/* 0FD24C 80293C3C AC6C0000 */  sw    $t4, ($v1)
/* 0FD250 80293C40 35AD00E0 */  ori   $t5, (0x070000E0 & 0xFFFF) # ori $t5, $t5, 0xe0
/* 0FD254 80293C44 AC4D0004 */  sw    $t5, 4($v0)
/* 0FD258 80293C48 AC4A0000 */  sw    $t2, ($v0)
/* 0FD25C 80293C4C 8C620000 */  lw    $v0, ($v1)
/* 0FD260 80293C50 3C0F0700 */  lui   $t7, (0x07000068 >> 16) # lui $t7, 0x700
/* 0FD264 80293C54 35EF0068 */  ori   $t7, (0x07000068 & 0xFFFF) # ori $t7, $t7, 0x68
/* 0FD268 80293C58 244E0008 */  addiu $t6, $v0, 8
/* 0FD26C 80293C5C AC6E0000 */  sw    $t6, ($v1)
/* 0FD270 80293C60 3C08800E */  lui   $t0, %hi(D_800DC5DC) # $t0, 0x800e
/* 0FD274 80293C64 3C09800E */  lui   $t1, %hi(D_800DC5E0) # $t1, 0x800e
/* 0FD278 80293C68 AC4F0004 */  sw    $t7, 4($v0)
/* 0FD27C 80293C6C AC4A0000 */  sw    $t2, ($v0)
/* 0FD280 80293C70 2529C5E0 */  addiu $t1, %lo(D_800DC5E0) # addiu $t1, $t1, -0x3a20
/* 0FD284 80293C74 2508C5DC */  addiu $t0, %lo(D_800DC5DC) # addiu $t0, $t0, -0x3a24
/* 0FD288 80293C78 24180058 */  li    $t8, 88
/* 0FD28C 80293C7C 24190048 */  li    $t9, 72
/* 0FD290 80293C80 AD180000 */  sw    $t8, ($t0)
/* 0FD294 80293C84 AD390000 */  sw    $t9, ($t1)
/* 0FD298 80293C88 3C0B800E */  lui   $t3, %hi(D_800DC52C) # $t3, 0x800e
/* 0FD29C 80293C8C 8D6BC52C */  lw    $t3, %lo(D_800DC52C)($t3)
/* 0FD2A0 80293C90 97A20022 */  lhu   $v0, 0x22($sp)
/* 0FD2A4 80293C94 156000A5 */  bnez  $t3, .L80293F2C
/* 0FD2A8 80293C98 2841000A */   slti  $at, $v0, 0xa
/* 0FD2AC 80293C9C 142000A3 */  bnez  $at, .L80293F2C
/* 0FD2B0 80293CA0 28410011 */   slti  $at, $v0, 0x11
/* 0FD2B4 80293CA4 102000A1 */  beqz  $at, .L80293F2C
/* 0FD2B8 80293CA8 3C02800E */   lui   $v0, %hi(sRenderedFramebuffer) # $v0, 0x800e
/* 0FD2BC 80293CAC 8442C55C */  lh    $v0, %lo(sRenderedFramebuffer)($v0)
/* 0FD2C0 80293CB0 3C04802C */  lui   $a0, %hi(D_802B87D8) # $a0, 0x802c
/* 0FD2C4 80293CB4 248487D8 */  addiu $a0, %lo(D_802B87D8) # addiu $a0, $a0, -0x7828
/* 0FD2C8 80293CB8 2442FFFF */  addiu $v0, $v0, -1
/* 0FD2CC 80293CBC 00026400 */  sll   $t4, $v0, 0x10
/* 0FD2D0 80293CC0 000C1403 */  sra   $v0, $t4, 0x10
/* 0FD2D4 80293CC4 04410003 */  bgez  $v0, .L80293CD4
/* 0FD2D8 80293CC8 28410003 */   slti  $at, $v0, 3
/* 0FD2DC 80293CCC 10000004 */  b     .L80293CE0
/* 0FD2E0 80293CD0 24020002 */   li    $v0, 2
.L80293CD4:
/* 0FD2E4 80293CD4 54200003 */  bnel  $at, $zero, .L80293CE4
/* 0FD2E8 80293CD8 848E0000 */   lh    $t6, ($a0)
/* 0FD2EC 80293CDC 00001025 */  move  $v0, $zero
.L80293CE0:
/* 0FD2F0 80293CE0 848E0000 */  lh    $t6, ($a0)
.L80293CE4:
/* 0FD2F4 80293CE4 25CF0001 */  addiu $t7, $t6, 1
/* 0FD2F8 80293CE8 A48F0000 */  sh    $t7, ($a0)
/* 0FD2FC 80293CEC 84830000 */  lh    $v1, ($a0)
/* 0FD300 80293CF0 28610006 */  slti  $at, $v1, 6
/* 0FD304 80293CF4 54200004 */  bnel  $at, $zero, .L80293D08
/* 0FD308 80293CF8 2C610006 */   sltiu $at, $v1, 6
/* 0FD30C 80293CFC A4800000 */  sh    $zero, ($a0)
/* 0FD310 80293D00 84830000 */  lh    $v1, ($a0)
/* 0FD314 80293D04 2C610006 */  sltiu $at, $v1, 6
.L80293D08:
/* 0FD318 80293D08 10200088 */  beqz  $at, .L80293F2C
/* 0FD31C 80293D0C 0003C080 */   sll   $t8, $v1, 2
/* 0FD320 80293D10 3C01802C */  lui   $at, %hi(D_802B93D4)
/* 0FD324 80293D14 00380821 */  addu  $at, $at, $t8
/* 0FD328 80293D18 8C3893D4 */  lw    $t8, %lo(D_802B93D4)($at)
/* 0FD32C 80293D1C 03000008 */  jr    $t8
/* 0FD330 80293D20 00000000 */   nop   
glabel L80293D24
/* 0FD334 80293D24 0002C880 */  sll   $t9, $v0, 2
/* 0FD338 80293D28 3C0B8015 */  lui   $t3, %hi(gPhysicalFramebuffers) # 0x8015
/* 0FD33C 80293D2C 3C0D8015 */  lui   $t5, %hi(gSegmentTable+0x14) # $t5, 0x8015
/* 0FD340 80293D30 8DAD026C */  lw    $t5, %lo(gSegmentTable+0x14)($t5)
/* 0FD344 80293D34 01795821 */  addu  $t3, $t3, $t9
/* 0FD348 80293D38 8D6B02A8 */  lw    $t3, %lo(gPhysicalFramebuffers)($t3) # 0x2a8($t3)
/* 0FD34C 80293D3C 3C038000 */  lui   $v1, 0x8000
/* 0FD350 80293D40 3401F800 */  li    $at, 63488
/* 0FD354 80293D44 01A17021 */  addu  $t6, $t5, $at
/* 0FD358 80293D48 01C37825 */  or    $t7, $t6, $v1
/* 0FD35C 80293D4C 01636025 */  or    $t4, $t3, $v1
/* 0FD360 80293D50 AFAC0010 */  sw    $t4, 0x10($sp)
/* 0FD364 80293D54 AFAF0014 */  sw    $t7, 0x14($sp)
/* 0FD368 80293D58 8D040000 */  lw    $a0, ($t0)
/* 0FD36C 80293D5C 8D250000 */  lw    $a1, ($t1)
/* 0FD370 80293D60 24060040 */  li    $a2, 64
/* 0FD374 80293D64 0C0A9D96 */  jal   func_802A7658
/* 0FD378 80293D68 24070020 */   li    $a3, 32
/* 0FD37C 80293D6C 10000070 */  b     .L80293F30
/* 0FD380 80293D70 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80293D74
/* 0FD384 80293D74 0002C080 */  sll   $t8, $v0, 2
/* 0FD388 80293D78 3C198015 */  lui   $t9, %hi(gPhysicalFramebuffers) # 0x8015
/* 0FD38C 80293D7C 3C0C8015 */  lui   $t4, %hi(gSegmentTable+0x14) # $t4, 0x8015
/* 0FD390 80293D80 8D8C026C */  lw    $t4, %lo(gSegmentTable+0x14)($t4)
/* 0FD394 80293D84 0338C821 */  addu  $t9, $t9, $t8
/* 0FD398 80293D88 8F3902A8 */  lw    $t9, %lo(gPhysicalFramebuffers)($t9) # 0x2a8($t9)
/* 0FD39C 80293D8C 3C010001 */  lui   $at, (0x00010800 >> 16) # lui $at, 1
/* 0FD3A0 80293D90 3C038000 */  lui   $v1, 0x8000
/* 0FD3A4 80293D94 34210800 */  ori   $at, (0x00010800 & 0xFFFF) # ori $at, $at, 0x800
/* 0FD3A8 80293D98 8D040000 */  lw    $a0, ($t0)
/* 0FD3AC 80293D9C 01816821 */  addu  $t5, $t4, $at
/* 0FD3B0 80293DA0 01A37025 */  or    $t6, $t5, $v1
/* 0FD3B4 80293DA4 03235825 */  or    $t3, $t9, $v1
/* 0FD3B8 80293DA8 AFAB0010 */  sw    $t3, 0x10($sp)
/* 0FD3BC 80293DAC AFAE0014 */  sw    $t6, 0x14($sp)
/* 0FD3C0 80293DB0 8D250000 */  lw    $a1, ($t1)
/* 0FD3C4 80293DB4 24060040 */  li    $a2, 64
/* 0FD3C8 80293DB8 24070020 */  li    $a3, 32
/* 0FD3CC 80293DBC 0C0A9D96 */  jal   func_802A7658
/* 0FD3D0 80293DC0 24840040 */   addiu $a0, $a0, 0x40
/* 0FD3D4 80293DC4 1000005A */  b     .L80293F30
/* 0FD3D8 80293DC8 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80293DCC
/* 0FD3DC 80293DCC 00027880 */  sll   $t7, $v0, 2
/* 0FD3E0 80293DD0 3C188015 */  lui   $t8, %hi(gPhysicalFramebuffers) # 0x8015
/* 0FD3E4 80293DD4 3C0B8015 */  lui   $t3, %hi(gSegmentTable+0x14) # $t3, 0x8015
/* 0FD3E8 80293DD8 8D6B026C */  lw    $t3, %lo(gSegmentTable+0x14)($t3)
/* 0FD3EC 80293DDC 030FC021 */  addu  $t8, $t8, $t7
/* 0FD3F0 80293DE0 8F1802A8 */  lw    $t8, %lo(gPhysicalFramebuffers)($t8) # 0x2a8($t8)
/* 0FD3F4 80293DE4 3C010001 */  lui   $at, (0x00011800 >> 16) # lui $at, 1
/* 0FD3F8 80293DE8 3C038000 */  lui   $v1, 0x8000
/* 0FD3FC 80293DEC 34211800 */  ori   $at, (0x00011800 & 0xFFFF) # ori $at, $at, 0x1800
/* 0FD400 80293DF0 8D250000 */  lw    $a1, ($t1)
/* 0FD404 80293DF4 01616021 */  addu  $t4, $t3, $at
/* 0FD408 80293DF8 01836825 */  or    $t5, $t4, $v1
/* 0FD40C 80293DFC 0303C825 */  or    $t9, $t8, $v1
/* 0FD410 80293E00 AFB90010 */  sw    $t9, 0x10($sp)
/* 0FD414 80293E04 AFAD0014 */  sw    $t5, 0x14($sp)
/* 0FD418 80293E08 8D040000 */  lw    $a0, ($t0)
/* 0FD41C 80293E0C 24060040 */  li    $a2, 64
/* 0FD420 80293E10 24070020 */  li    $a3, 32
/* 0FD424 80293E14 0C0A9D96 */  jal   func_802A7658
/* 0FD428 80293E18 24A50020 */   addiu $a1, $a1, 0x20
/* 0FD42C 80293E1C 10000044 */  b     .L80293F30
/* 0FD430 80293E20 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80293E24
/* 0FD434 80293E24 00027080 */  sll   $t6, $v0, 2
/* 0FD438 80293E28 3C0F8015 */  lui   $t7, %hi(gPhysicalFramebuffers) # 0x8015
/* 0FD43C 80293E2C 3C198015 */  lui   $t9, %hi(gSegmentTable+0x14) # $t9, 0x8015
/* 0FD440 80293E30 8F39026C */  lw    $t9, %lo(gSegmentTable+0x14)($t9)
/* 0FD444 80293E34 01EE7821 */  addu  $t7, $t7, $t6
/* 0FD448 80293E38 8DEF02A8 */  lw    $t7, %lo(gPhysicalFramebuffers)($t7) # 0x2a8($t7)
/* 0FD44C 80293E3C 3C010001 */  lui   $at, (0x00012800 >> 16) # lui $at, 1
/* 0FD450 80293E40 3C038000 */  lui   $v1, 0x8000
/* 0FD454 80293E44 34212800 */  ori   $at, (0x00012800 & 0xFFFF) # ori $at, $at, 0x2800
/* 0FD458 80293E48 8D040000 */  lw    $a0, ($t0)
/* 0FD45C 80293E4C 8D250000 */  lw    $a1, ($t1)
/* 0FD460 80293E50 03215821 */  addu  $t3, $t9, $at
/* 0FD464 80293E54 01636025 */  or    $t4, $t3, $v1
/* 0FD468 80293E58 01E3C025 */  or    $t8, $t7, $v1
/* 0FD46C 80293E5C AFB80010 */  sw    $t8, 0x10($sp)
/* 0FD470 80293E60 AFAC0014 */  sw    $t4, 0x14($sp)
/* 0FD474 80293E64 24060040 */  li    $a2, 64
/* 0FD478 80293E68 24070020 */  li    $a3, 32
/* 0FD47C 80293E6C 24840040 */  addiu $a0, $a0, 0x40
/* 0FD480 80293E70 0C0A9D96 */  jal   func_802A7658
/* 0FD484 80293E74 24A50020 */   addiu $a1, $a1, 0x20
/* 0FD488 80293E78 1000002D */  b     .L80293F30
/* 0FD48C 80293E7C 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80293E80
/* 0FD490 80293E80 00026880 */  sll   $t5, $v0, 2
/* 0FD494 80293E84 3C0E8015 */  lui   $t6, %hi(gPhysicalFramebuffers) # 0x8015
/* 0FD498 80293E88 3C188015 */  lui   $t8, %hi(gSegmentTable+0x14) # $t8, 0x8015
/* 0FD49C 80293E8C 8F18026C */  lw    $t8, %lo(gSegmentTable+0x14)($t8)
/* 0FD4A0 80293E90 01CD7021 */  addu  $t6, $t6, $t5
/* 0FD4A4 80293E94 8DCE02A8 */  lw    $t6, %lo(gPhysicalFramebuffers)($t6) # 0x2a8($t6)
/* 0FD4A8 80293E98 3C010001 */  lui   $at, (0x00013800 >> 16) # lui $at, 1
/* 0FD4AC 80293E9C 3C038000 */  lui   $v1, 0x8000
/* 0FD4B0 80293EA0 34213800 */  ori   $at, (0x00013800 & 0xFFFF) # ori $at, $at, 0x3800
/* 0FD4B4 80293EA4 8D250000 */  lw    $a1, ($t1)
/* 0FD4B8 80293EA8 0301C821 */  addu  $t9, $t8, $at
/* 0FD4BC 80293EAC 03235825 */  or    $t3, $t9, $v1
/* 0FD4C0 80293EB0 01C37825 */  or    $t7, $t6, $v1
/* 0FD4C4 80293EB4 AFAF0010 */  sw    $t7, 0x10($sp)
/* 0FD4C8 80293EB8 AFAB0014 */  sw    $t3, 0x14($sp)
/* 0FD4CC 80293EBC 8D040000 */  lw    $a0, ($t0)
/* 0FD4D0 80293EC0 24060040 */  li    $a2, 64
/* 0FD4D4 80293EC4 24070020 */  li    $a3, 32
/* 0FD4D8 80293EC8 0C0A9D96 */  jal   func_802A7658
/* 0FD4DC 80293ECC 24A50040 */   addiu $a1, $a1, 0x40
/* 0FD4E0 80293ED0 10000017 */  b     .L80293F30
/* 0FD4E4 80293ED4 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80293ED8
/* 0FD4E8 80293ED8 00026080 */  sll   $t4, $v0, 2
/* 0FD4EC 80293EDC 3C0D8015 */  lui   $t5, %hi(gPhysicalFramebuffers) # 0x8015
/* 0FD4F0 80293EE0 3C0F8015 */  lui   $t7, %hi(gSegmentTable+0x14) # $t7, 0x8015
/* 0FD4F4 80293EE4 8DEF026C */  lw    $t7, %lo(gSegmentTable+0x14)($t7)
/* 0FD4F8 80293EE8 01AC6821 */  addu  $t5, $t5, $t4
/* 0FD4FC 80293EEC 8DAD02A8 */  lw    $t5, %lo(gPhysicalFramebuffers)($t5) # 0x2a8($t5)
/* 0FD500 80293EF0 3C010001 */  lui   $at, (0x00014800 >> 16) # lui $at, 1
/* 0FD504 80293EF4 3C038000 */  lui   $v1, 0x8000
/* 0FD508 80293EF8 34214800 */  ori   $at, (0x00014800 & 0xFFFF) # ori $at, $at, 0x4800
/* 0FD50C 80293EFC 8D040000 */  lw    $a0, ($t0)
/* 0FD510 80293F00 8D250000 */  lw    $a1, ($t1)
/* 0FD514 80293F04 01E1C021 */  addu  $t8, $t7, $at
/* 0FD518 80293F08 0303C825 */  or    $t9, $t8, $v1
/* 0FD51C 80293F0C 01A37025 */  or    $t6, $t5, $v1
/* 0FD520 80293F10 AFAE0010 */  sw    $t6, 0x10($sp)
/* 0FD524 80293F14 AFB90014 */  sw    $t9, 0x14($sp)
/* 0FD528 80293F18 24060040 */  li    $a2, 64
/* 0FD52C 80293F1C 24070020 */  li    $a3, 32
/* 0FD530 80293F20 24840040 */  addiu $a0, $a0, 0x40
/* 0FD534 80293F24 0C0A9D96 */  jal   func_802A7658
/* 0FD538 80293F28 24A50040 */   addiu $a1, $a1, 0x40
.L80293F2C:
/* 0FD53C 80293F2C 8FBF001C */  lw    $ra, 0x1c($sp)
.L80293F30:
/* 0FD540 80293F30 27BD0028 */  addiu $sp, $sp, 0x28
/* 0FD544 80293F34 03E00008 */  jr    $ra
/* 0FD548 80293F38 00000000 */   nop   
