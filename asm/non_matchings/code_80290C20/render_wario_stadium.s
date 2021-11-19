glabel render_wario_stadium
/* 0FE13C 80294B2C 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FE140 80294B30 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FE144 80294B34 8C620000 */  lw    $v0, ($v1)
/* 0FE148 80294B38 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0FE14C 80294B3C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0FE150 80294B40 244E0008 */  addiu $t6, $v0, 8
/* 0FE154 80294B44 AFA40020 */  sw    $a0, 0x20($sp)
/* 0FE158 80294B48 AC6E0000 */  sw    $t6, ($v1)
/* 0FE15C 80294B4C 3C0FBB00 */  lui   $t7, (0xBB000001 >> 16) # lui $t7, 0xbb00
/* 0FE160 80294B50 35EF0001 */  ori   $t7, (0xBB000001 & 0xFFFF) # ori $t7, $t7, 1
/* 0FE164 80294B54 2418FFFF */  li    $t8, -1
/* 0FE168 80294B58 AC580004 */  sw    $t8, 4($v0)
/* 0FE16C 80294B5C AC4F0000 */  sw    $t7, ($v0)
/* 0FE170 80294B60 8C620000 */  lw    $v0, ($v1)
/* 0FE174 80294B64 240F0200 */  li    $t7, 512
/* 0FE178 80294B68 3C0EB700 */  lui   $t6, 0xb700
/* 0FE17C 80294B6C 24590008 */  addiu $t9, $v0, 8
/* 0FE180 80294B70 AC790000 */  sw    $t9, ($v1)
/* 0FE184 80294B74 AC4F0004 */  sw    $t7, 4($v0)
/* 0FE188 80294B78 AC4E0000 */  sw    $t6, ($v0)
/* 0FE18C 80294B7C 8C620000 */  lw    $v0, ($v1)
/* 0FE190 80294B80 3C0E0002 */  lui   $t6, 2
/* 0FE194 80294B84 3C19B600 */  lui   $t9, 0xb600
/* 0FE198 80294B88 24580008 */  addiu $t8, $v0, 8
/* 0FE19C 80294B8C AC780000 */  sw    $t8, ($v1)
/* 0FE1A0 80294B90 AC4E0004 */  sw    $t6, 4($v0)
/* 0FE1A4 80294B94 AC590000 */  sw    $t9, ($v0)
/* 0FE1A8 80294B98 8FAF0020 */  lw    $t7, 0x20($sp)
/* 0FE1AC 80294B9C 0C0A4308 */  jal   func_80290C20
/* 0FE1B0 80294BA0 8DE40004 */   lw    $a0, 4($t7)
/* 0FE1B4 80294BA4 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FE1B8 80294BA8 24010001 */  li    $at, 1
/* 0FE1BC 80294BAC 1441001B */  bne   $v0, $at, .L80294C1C
/* 0FE1C0 80294BB0 24630298 */   addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FE1C4 80294BB4 8C620000 */  lw    $v0, ($v1)
/* 0FE1C8 80294BB8 3C19FCFF */  lui   $t9, (0xFCFFFFFF >> 16) # lui $t9, 0xfcff
/* 0FE1CC 80294BBC 3C0EFFFE */  lui   $t6, (0xFFFE793C >> 16) # lui $t6, 0xfffe
/* 0FE1D0 80294BC0 24580008 */  addiu $t8, $v0, 8
/* 0FE1D4 80294BC4 AC780000 */  sw    $t8, ($v1)
/* 0FE1D8 80294BC8 35CE793C */  ori   $t6, (0xFFFE793C & 0xFFFF) # ori $t6, $t6, 0x793c
/* 0FE1DC 80294BCC 3739FFFF */  ori   $t9, (0xFCFFFFFF & 0xFFFF) # ori $t9, $t9, 0xffff
/* 0FE1E0 80294BD0 AC590000 */  sw    $t9, ($v0)
/* 0FE1E4 80294BD4 AC4E0004 */  sw    $t6, 4($v0)
/* 0FE1E8 80294BD8 8C620000 */  lw    $v0, ($v1)
/* 0FE1EC 80294BDC 3C190055 */  lui   $t9, (0x00552078 >> 16) # lui $t9, 0x55
/* 0FE1F0 80294BE0 3C18B900 */  lui   $t8, (0xB900031D >> 16) # lui $t8, 0xb900
/* 0FE1F4 80294BE4 244F0008 */  addiu $t7, $v0, 8
/* 0FE1F8 80294BE8 AC6F0000 */  sw    $t7, ($v1)
/* 0FE1FC 80294BEC 3718031D */  ori   $t8, (0xB900031D & 0xFFFF) # ori $t8, $t8, 0x31d
/* 0FE200 80294BF0 37392078 */  ori   $t9, (0x00552078 & 0xFFFF) # ori $t9, $t9, 0x2078
/* 0FE204 80294BF4 AC590004 */  sw    $t9, 4($v0)
/* 0FE208 80294BF8 AC580000 */  sw    $t8, ($v0)
/* 0FE20C 80294BFC 8C620000 */  lw    $v0, ($v1)
/* 0FE210 80294C00 3C180700 */  lui   $t8, (0x0700A0C8 >> 16) # lui $t8, 0x700
/* 0FE214 80294C04 3718A0C8 */  ori   $t8, (0x0700A0C8 & 0xFFFF) # ori $t8, $t8, 0xa0c8
/* 0FE218 80294C08 244E0008 */  addiu $t6, $v0, 8
/* 0FE21C 80294C0C AC6E0000 */  sw    $t6, ($v1)
/* 0FE220 80294C10 3C0F0600 */  lui   $t7, 0x600
/* 0FE224 80294C14 AC4F0000 */  sw    $t7, ($v0)
/* 0FE228 80294C18 AC580004 */  sw    $t8, 4($v0)
.L80294C1C:
/* 0FE22C 80294C1C 8C620000 */  lw    $v0, ($v1)
/* 0FE230 80294C20 3C0EFC12 */  lui   $t6, (0xFC121824 >> 16) # lui $t6, 0xfc12
/* 0FE234 80294C24 3C0FFF33 */  lui   $t7, (0xFF33FFFF >> 16) # lui $t7, 0xff33
/* 0FE238 80294C28 24590008 */  addiu $t9, $v0, 8
/* 0FE23C 80294C2C AC790000 */  sw    $t9, ($v1)
/* 0FE240 80294C30 35EFFFFF */  ori   $t7, (0xFF33FFFF & 0xFFFF) # ori $t7, $t7, 0xffff
/* 0FE244 80294C34 35CE1824 */  ori   $t6, (0xFC121824 & 0xFFFF) # ori $t6, $t6, 0x1824
/* 0FE248 80294C38 AC4E0000 */  sw    $t6, ($v0)
/* 0FE24C 80294C3C AC4F0004 */  sw    $t7, 4($v0)
/* 0FE250 80294C40 8C620000 */  lw    $v0, ($v1)
/* 0FE254 80294C44 3C0E0055 */  lui   $t6, (0x00552078 >> 16) # lui $t6, 0x55
/* 0FE258 80294C48 3C19B900 */  lui   $t9, (0xB900031D >> 16) # lui $t9, 0xb900
/* 0FE25C 80294C4C 24580008 */  addiu $t8, $v0, 8
/* 0FE260 80294C50 AC780000 */  sw    $t8, ($v1)
/* 0FE264 80294C54 3739031D */  ori   $t9, (0xB900031D & 0xFFFF) # ori $t9, $t9, 0x31d
/* 0FE268 80294C58 35CE2078 */  ori   $t6, (0x00552078 & 0xFFFF) # ori $t6, $t6, 0x2078
/* 0FE26C 80294C5C 3C040900 */  lui   $a0, %hi(wario_stadium_dls) # $a0, 0x900
/* 0FE270 80294C60 AC4E0004 */  sw    $t6, 4($v0)
/* 0FE274 80294C64 AC590000 */  sw    $t9, ($v0)
/* 0FE278 80294C68 8FA50020 */  lw    $a1, 0x20($sp)
/* 0FE27C 80294C6C 0C0A436B */  jal   load_surface_map
/* 0FE280 80294C70 24840150 */   addiu $a0, %lo(wario_stadium_dls) # addiu $a0, $a0, 0x150
/* 0FE284 80294C74 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FE288 80294C78 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FE28C 80294C7C 8C620000 */  lw    $v0, ($v1)
/* 0FE290 80294C80 3C180700 */  lui   $t8, (0x0700A228 >> 16) # lui $t8, 0x700
/* 0FE294 80294C84 3C0D0600 */  lui   $t5, 0x600
/* 0FE298 80294C88 244F0008 */  addiu $t7, $v0, 8
/* 0FE29C 80294C8C AC6F0000 */  sw    $t7, ($v1)
/* 0FE2A0 80294C90 3718A228 */  ori   $t8, (0x0700A228 & 0xFFFF) # ori $t8, $t8, 0xa228
/* 0FE2A4 80294C94 AC580004 */  sw    $t8, 4($v0)
/* 0FE2A8 80294C98 AC4D0000 */  sw    $t5, ($v0)
/* 0FE2AC 80294C9C 8C620000 */  lw    $v0, ($v1)
/* 0FE2B0 80294CA0 3C0EFC12 */  lui   $t6, (0xFC127E24 >> 16) # lui $t6, 0xfc12
/* 0FE2B4 80294CA4 35CE7E24 */  ori   $t6, (0xFC127E24 & 0xFFFF) # ori $t6, $t6, 0x7e24
/* 0FE2B8 80294CA8 24590008 */  addiu $t9, $v0, 8
/* 0FE2BC 80294CAC AC790000 */  sw    $t9, ($v1)
/* 0FE2C0 80294CB0 240FF3F9 */  li    $t7, -3079
/* 0FE2C4 80294CB4 AC4F0004 */  sw    $t7, 4($v0)
/* 0FE2C8 80294CB8 AC4E0000 */  sw    $t6, ($v0)
/* 0FE2CC 80294CBC 8C620000 */  lw    $v0, ($v1)
/* 0FE2D0 80294CC0 3C0E0055 */  lui   $t6, (0x00553078 >> 16) # lui $t6, 0x55
/* 0FE2D4 80294CC4 3C19B900 */  lui   $t9, (0xB900031D >> 16) # lui $t9, 0xb900
/* 0FE2D8 80294CC8 24580008 */  addiu $t8, $v0, 8
/* 0FE2DC 80294CCC AC780000 */  sw    $t8, ($v1)
/* 0FE2E0 80294CD0 3739031D */  ori   $t9, (0xB900031D & 0xFFFF) # ori $t9, $t9, 0x31d
/* 0FE2E4 80294CD4 35CE3078 */  ori   $t6, (0x00553078 & 0xFFFF) # ori $t6, $t6, 0x3078
/* 0FE2E8 80294CD8 AC4E0004 */  sw    $t6, 4($v0)
/* 0FE2EC 80294CDC AC590000 */  sw    $t9, ($v0)
/* 0FE2F0 80294CE0 8C620000 */  lw    $v0, ($v1)
/* 0FE2F4 80294CE4 240C2000 */  li    $t4, 8192
/* 0FE2F8 80294CE8 3C18B600 */  lui   $t8, 0xb600
/* 0FE2FC 80294CEC 244F0008 */  addiu $t7, $v0, 8
/* 0FE300 80294CF0 AC6F0000 */  sw    $t7, ($v1)
/* 0FE304 80294CF4 AC4C0004 */  sw    $t4, 4($v0)
/* 0FE308 80294CF8 AC580000 */  sw    $t8, ($v0)
/* 0FE30C 80294CFC 8C620000 */  lw    $v0, ($v1)
/* 0FE310 80294D00 3C0E0700 */  lui   $t6, (0x07000A88 >> 16) # lui $t6, 0x700
/* 0FE314 80294D04 35CE0A88 */  ori   $t6, (0x07000A88 & 0xFFFF) # ori $t6, $t6, 0xa88
/* 0FE318 80294D08 24590008 */  addiu $t9, $v0, 8
/* 0FE31C 80294D0C AC790000 */  sw    $t9, ($v1)
/* 0FE320 80294D10 AC4E0004 */  sw    $t6, 4($v0)
/* 0FE324 80294D14 AC4D0000 */  sw    $t5, ($v0)
/* 0FE328 80294D18 8C620000 */  lw    $v0, ($v1)
/* 0FE32C 80294D1C 3C18B700 */  lui   $t8, 0xb700
/* 0FE330 80294D20 3C0A800E */  lui   $t2, %hi(D_800DC5DC) # $t2, 0x800e
/* 0FE334 80294D24 244F0008 */  addiu $t7, $v0, 8
/* 0FE338 80294D28 AC6F0000 */  sw    $t7, ($v1)
/* 0FE33C 80294D2C 3C0B800E */  lui   $t3, %hi(D_800DC5E0) # $t3, 0x800e
/* 0FE340 80294D30 AC4C0004 */  sw    $t4, 4($v0)
/* 0FE344 80294D34 AC580000 */  sw    $t8, ($v0)
/* 0FE348 80294D38 256BC5E0 */  addiu $t3, %lo(D_800DC5E0) # addiu $t3, $t3, -0x3a20
/* 0FE34C 80294D3C 254AC5DC */  addiu $t2, %lo(D_800DC5DC) # addiu $t2, $t2, -0x3a24
/* 0FE350 80294D40 24190058 */  li    $t9, 88
/* 0FE354 80294D44 240E0048 */  li    $t6, 72
/* 0FE358 80294D48 AD590000 */  sw    $t9, ($t2)
/* 0FE35C 80294D4C AD6E0000 */  sw    $t6, ($t3)
/* 0FE360 80294D50 3C0F800E */  lui   $t7, %hi(D_800DC52C) # $t7, 0x800e
/* 0FE364 80294D54 8DEFC52C */  lw    $t7, %lo(D_800DC52C)($t7)
/* 0FE368 80294D58 3C04802C */  lui   $a0, %hi(D_802B87D8) # $a0, 0x802c
/* 0FE36C 80294D5C 3C02800E */  lui   $v0, %hi(sRenderedFramebuffer) # $v0, 0x800e
/* 0FE370 80294D60 15E0009A */  bnez  $t7, .L80294FCC
/* 0FE374 80294D64 248487D8 */   addiu $a0, %lo(D_802B87D8) # addiu $a0, $a0, -0x7828
/* 0FE378 80294D68 8442C55C */  lh    $v0, %lo(sRenderedFramebuffer)($v0)
/* 0FE37C 80294D6C 2442FFFF */  addiu $v0, $v0, -1
/* 0FE380 80294D70 0002C400 */  sll   $t8, $v0, 0x10
/* 0FE384 80294D74 00181403 */  sra   $v0, $t8, 0x10
/* 0FE388 80294D78 04410003 */  bgez  $v0, .L80294D88
/* 0FE38C 80294D7C 28410003 */   slti  $at, $v0, 3
/* 0FE390 80294D80 10000004 */  b     .L80294D94
/* 0FE394 80294D84 24020002 */   li    $v0, 2
.L80294D88:
/* 0FE398 80294D88 54200003 */  bnel  $at, $zero, .L80294D98
/* 0FE39C 80294D8C 848E0000 */   lh    $t6, ($a0)
/* 0FE3A0 80294D90 00001025 */  move  $v0, $zero
.L80294D94:
/* 0FE3A4 80294D94 848E0000 */  lh    $t6, ($a0)
.L80294D98:
/* 0FE3A8 80294D98 25CF0001 */  addiu $t7, $t6, 1
/* 0FE3AC 80294D9C A48F0000 */  sh    $t7, ($a0)
/* 0FE3B0 80294DA0 84830000 */  lh    $v1, ($a0)
/* 0FE3B4 80294DA4 28610006 */  slti  $at, $v1, 6
/* 0FE3B8 80294DA8 54200004 */  bnel  $at, $zero, .L80294DBC
/* 0FE3BC 80294DAC 2C610006 */   sltiu $at, $v1, 6
/* 0FE3C0 80294DB0 A4800000 */  sh    $zero, ($a0)
/* 0FE3C4 80294DB4 84830000 */  lh    $v1, ($a0)
/* 0FE3C8 80294DB8 2C610006 */  sltiu $at, $v1, 6
.L80294DBC:
/* 0FE3CC 80294DBC 10200083 */  beqz  $at, .L80294FCC
/* 0FE3D0 80294DC0 0003C080 */   sll   $t8, $v1, 2
/* 0FE3D4 80294DC4 3C01802C */  lui   $at, %hi(jpt_802B93EC)
/* 0FE3D8 80294DC8 00380821 */  addu  $at, $at, $t8
/* 0FE3DC 80294DCC 8C3893EC */  lw    $t8, %lo(jpt_802B93EC)($at)
/* 0FE3E0 80294DD0 03000008 */  jr    $t8
/* 0FE3E4 80294DD4 00000000 */   nop   
glabel L80294DD8
/* 0FE3E8 80294DD8 0002C880 */  sll   $t9, $v0, 2
/* 0FE3EC 80294DDC 3C0E8015 */  lui   $t6, %hi(gPhysicalFramebuffers) # 0x8015
/* 0FE3F0 80294DE0 01D97021 */  addu  $t6, $t6, $t9
/* 0FE3F4 80294DE4 3C188015 */  lui   $t8, %hi(gSegmentTable+0x14) # $t8, 0x8015
/* 0FE3F8 80294DE8 8F18026C */  lw    $t8, %lo(gSegmentTable+0x14)($t8)
/* 0FE3FC 80294DEC 8DCE02A8 */  lw    $t6, %lo(gPhysicalFramebuffers)($t6) # 0x2a8($t6)
/* 0FE400 80294DF0 3C038000 */  lui   $v1, 0x8000
/* 0FE404 80294DF4 34018800 */  li    $at, 34816
/* 0FE408 80294DF8 0301C821 */  addu  $t9, $t8, $at
/* 0FE40C 80294DFC 01C37825 */  or    $t7, $t6, $v1
/* 0FE410 80294E00 03237025 */  or    $t6, $t9, $v1
/* 0FE414 80294E04 AFAE0014 */  sw    $t6, 0x14($sp)
/* 0FE418 80294E08 AFAF0010 */  sw    $t7, 0x10($sp)
/* 0FE41C 80294E0C 8D440000 */  lw    $a0, ($t2)
/* 0FE420 80294E10 8D650000 */  lw    $a1, ($t3)
/* 0FE424 80294E14 24060040 */  li    $a2, 64
/* 0FE428 80294E18 0C0A9D96 */  jal   func_802A7658
/* 0FE42C 80294E1C 24070020 */   li    $a3, 32
/* 0FE430 80294E20 1000006B */  b     .L80294FD0
/* 0FE434 80294E24 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80294E28
/* 0FE438 80294E28 00027880 */  sll   $t7, $v0, 2
/* 0FE43C 80294E2C 3C188015 */  lui   $t8, %hi(gPhysicalFramebuffers) # 0x8015
/* 0FE440 80294E30 030FC021 */  addu  $t8, $t8, $t7
/* 0FE444 80294E34 3C0E8015 */  lui   $t6, %hi(gSegmentTable+0x14) # $t6, 0x8015
/* 0FE448 80294E38 8DCE026C */  lw    $t6, %lo(gSegmentTable+0x14)($t6)
/* 0FE44C 80294E3C 8F1802A8 */  lw    $t8, %lo(gPhysicalFramebuffers)($t8) # 0x2a8($t8)
/* 0FE450 80294E40 3C038000 */  lui   $v1, 0x8000
/* 0FE454 80294E44 34019800 */  li    $at, 38912
/* 0FE458 80294E48 8D440000 */  lw    $a0, ($t2)
/* 0FE45C 80294E4C 01C17821 */  addu  $t7, $t6, $at
/* 0FE460 80294E50 0303C825 */  or    $t9, $t8, $v1
/* 0FE464 80294E54 01E3C025 */  or    $t8, $t7, $v1
/* 0FE468 80294E58 AFB80014 */  sw    $t8, 0x14($sp)
/* 0FE46C 80294E5C AFB90010 */  sw    $t9, 0x10($sp)
/* 0FE470 80294E60 8D650000 */  lw    $a1, ($t3)
/* 0FE474 80294E64 24060040 */  li    $a2, 64
/* 0FE478 80294E68 24070020 */  li    $a3, 32
/* 0FE47C 80294E6C 0C0A9D96 */  jal   func_802A7658
/* 0FE480 80294E70 24840040 */   addiu $a0, $a0, 0x40
/* 0FE484 80294E74 10000056 */  b     .L80294FD0
/* 0FE488 80294E78 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80294E7C
/* 0FE48C 80294E7C 0002C880 */  sll   $t9, $v0, 2
/* 0FE490 80294E80 3C0E8015 */  lui   $t6, %hi(gPhysicalFramebuffers) # 0x8015
/* 0FE494 80294E84 01D97021 */  addu  $t6, $t6, $t9
/* 0FE498 80294E88 3C188015 */  lui   $t8, %hi(gSegmentTable+0x14) # $t8, 0x8015
/* 0FE49C 80294E8C 8F18026C */  lw    $t8, %lo(gSegmentTable+0x14)($t8)
/* 0FE4A0 80294E90 8DCE02A8 */  lw    $t6, %lo(gPhysicalFramebuffers)($t6) # 0x2a8($t6)
/* 0FE4A4 80294E94 3C038000 */  lui   $v1, 0x8000
/* 0FE4A8 80294E98 3401A800 */  li    $at, 43008
/* 0FE4AC 80294E9C 8D650000 */  lw    $a1, ($t3)
/* 0FE4B0 80294EA0 0301C821 */  addu  $t9, $t8, $at
/* 0FE4B4 80294EA4 01C37825 */  or    $t7, $t6, $v1
/* 0FE4B8 80294EA8 03237025 */  or    $t6, $t9, $v1
/* 0FE4BC 80294EAC AFAE0014 */  sw    $t6, 0x14($sp)
/* 0FE4C0 80294EB0 AFAF0010 */  sw    $t7, 0x10($sp)
/* 0FE4C4 80294EB4 8D440000 */  lw    $a0, ($t2)
/* 0FE4C8 80294EB8 24060040 */  li    $a2, 64
/* 0FE4CC 80294EBC 24070020 */  li    $a3, 32
/* 0FE4D0 80294EC0 0C0A9D96 */  jal   func_802A7658
/* 0FE4D4 80294EC4 24A50020 */   addiu $a1, $a1, 0x20
/* 0FE4D8 80294EC8 10000041 */  b     .L80294FD0
/* 0FE4DC 80294ECC 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80294ED0
/* 0FE4E0 80294ED0 00027880 */  sll   $t7, $v0, 2
/* 0FE4E4 80294ED4 3C188015 */  lui   $t8, %hi(gPhysicalFramebuffers) # 0x8015
/* 0FE4E8 80294ED8 030FC021 */  addu  $t8, $t8, $t7
/* 0FE4EC 80294EDC 3C0E8015 */  lui   $t6, %hi(gSegmentTable+0x14) # $t6, 0x8015
/* 0FE4F0 80294EE0 8DCE026C */  lw    $t6, %lo(gSegmentTable+0x14)($t6)
/* 0FE4F4 80294EE4 8F1802A8 */  lw    $t8, %lo(gPhysicalFramebuffers)($t8) # 0x2a8($t8)
/* 0FE4F8 80294EE8 3C038000 */  lui   $v1, 0x8000
/* 0FE4FC 80294EEC 3401B800 */  li    $at, 47104
/* 0FE500 80294EF0 8D440000 */  lw    $a0, ($t2)
/* 0FE504 80294EF4 8D650000 */  lw    $a1, ($t3)
/* 0FE508 80294EF8 01C17821 */  addu  $t7, $t6, $at
/* 0FE50C 80294EFC 0303C825 */  or    $t9, $t8, $v1
/* 0FE510 80294F00 01E3C025 */  or    $t8, $t7, $v1
/* 0FE514 80294F04 AFB80014 */  sw    $t8, 0x14($sp)
/* 0FE518 80294F08 AFB90010 */  sw    $t9, 0x10($sp)
/* 0FE51C 80294F0C 24060040 */  li    $a2, 64
/* 0FE520 80294F10 24070020 */  li    $a3, 32
/* 0FE524 80294F14 24840040 */  addiu $a0, $a0, 0x40
/* 0FE528 80294F18 0C0A9D96 */  jal   func_802A7658
/* 0FE52C 80294F1C 24A50020 */   addiu $a1, $a1, 0x20
/* 0FE530 80294F20 1000002B */  b     .L80294FD0
/* 0FE534 80294F24 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80294F28
/* 0FE538 80294F28 0002C880 */  sll   $t9, $v0, 2
/* 0FE53C 80294F2C 3C0E8015 */  lui   $t6, %hi(gPhysicalFramebuffers) # 0x8015
/* 0FE540 80294F30 01D97021 */  addu  $t6, $t6, $t9
/* 0FE544 80294F34 3C188015 */  lui   $t8, %hi(gSegmentTable+0x14) # $t8, 0x8015
/* 0FE548 80294F38 8F18026C */  lw    $t8, %lo(gSegmentTable+0x14)($t8)
/* 0FE54C 80294F3C 8DCE02A8 */  lw    $t6, %lo(gPhysicalFramebuffers)($t6) # 0x2a8($t6)
/* 0FE550 80294F40 3C038000 */  lui   $v1, 0x8000
/* 0FE554 80294F44 3401C800 */  li    $at, 51200
/* 0FE558 80294F48 8D650000 */  lw    $a1, ($t3)
/* 0FE55C 80294F4C 0301C821 */  addu  $t9, $t8, $at
/* 0FE560 80294F50 01C37825 */  or    $t7, $t6, $v1
/* 0FE564 80294F54 03237025 */  or    $t6, $t9, $v1
/* 0FE568 80294F58 AFAE0014 */  sw    $t6, 0x14($sp)
/* 0FE56C 80294F5C AFAF0010 */  sw    $t7, 0x10($sp)
/* 0FE570 80294F60 8D440000 */  lw    $a0, ($t2)
/* 0FE574 80294F64 24060040 */  li    $a2, 64
/* 0FE578 80294F68 24070020 */  li    $a3, 32
/* 0FE57C 80294F6C 0C0A9D96 */  jal   func_802A7658
/* 0FE580 80294F70 24A50040 */   addiu $a1, $a1, 0x40
/* 0FE584 80294F74 10000016 */  b     .L80294FD0
/* 0FE588 80294F78 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80294F7C
/* 0FE58C 80294F7C 00027880 */  sll   $t7, $v0, 2
/* 0FE590 80294F80 3C188015 */  lui   $t8, %hi(gPhysicalFramebuffers) # 0x8015
/* 0FE594 80294F84 030FC021 */  addu  $t8, $t8, $t7
/* 0FE598 80294F88 3C0E8015 */  lui   $t6, %hi(gSegmentTable+0x14) # $t6, 0x8015
/* 0FE59C 80294F8C 8DCE026C */  lw    $t6, %lo(gSegmentTable+0x14)($t6)
/* 0FE5A0 80294F90 8F1802A8 */  lw    $t8, %lo(gPhysicalFramebuffers)($t8) # 0x2a8($t8)
/* 0FE5A4 80294F94 3C038000 */  lui   $v1, 0x8000
/* 0FE5A8 80294F98 3401D800 */  li    $at, 55296
/* 0FE5AC 80294F9C 8D440000 */  lw    $a0, ($t2)
/* 0FE5B0 80294FA0 8D650000 */  lw    $a1, ($t3)
/* 0FE5B4 80294FA4 01C17821 */  addu  $t7, $t6, $at
/* 0FE5B8 80294FA8 0303C825 */  or    $t9, $t8, $v1
/* 0FE5BC 80294FAC 01E3C025 */  or    $t8, $t7, $v1
/* 0FE5C0 80294FB0 AFB80014 */  sw    $t8, 0x14($sp)
/* 0FE5C4 80294FB4 AFB90010 */  sw    $t9, 0x10($sp)
/* 0FE5C8 80294FB8 24060040 */  li    $a2, 64
/* 0FE5CC 80294FBC 24070020 */  li    $a3, 32
/* 0FE5D0 80294FC0 24840040 */  addiu $a0, $a0, 0x40
/* 0FE5D4 80294FC4 0C0A9D96 */  jal   func_802A7658
/* 0FE5D8 80294FC8 24A50040 */   addiu $a1, $a1, 0x40
.L80294FCC:
/* 0FE5DC 80294FCC 8FBF001C */  lw    $ra, 0x1c($sp)
.L80294FD0:
/* 0FE5E0 80294FD0 27BD0020 */  addiu $sp, $sp, 0x20
/* 0FE5E4 80294FD4 03E00008 */  jr    $ra
/* 0FE5E8 80294FD8 00000000 */   nop   
