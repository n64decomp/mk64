glabel func_800AF270
/* 0AFE70 800AF270 3C058028 */  lui   $a1, %hi(D_802874D8) # $a1, 0x8028
/* 0AFE74 800AF274 24A574D8 */  addiu $a1, %lo(D_802874D8) # addiu $a1, $a1, 0x74d8
/* 0AFE78 800AF278 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0AFE7C 800AF27C 80AE001E */  lb    $t6, 0x1e($a1)
/* 0AFE80 800AF280 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0AFE84 800AF284 AFB00018 */  sw    $s0, 0x18($sp)
/* 0AFE88 800AF288 8C830000 */  lw    $v1, ($a0)
/* 0AFE8C 800AF28C AFAE0030 */  sw    $t6, 0x30($sp)
/* 0AFE90 800AF290 8C980004 */  lw    $t8, 4($a0)
/* 0AFE94 800AF294 3C02800F */  lui   $v0, %hi(D_800EFD64) # 0x800f
/* 0AFE98 800AF298 004E1021 */  addu  $v0, $v0, $t6
/* 0AFE9C 800AF29C 2F010005 */  sltiu $at, $t8, 5
/* 0AFEA0 800AF2A0 00808025 */  move  $s0, $a0
/* 0AFEA4 800AF2A4 8042FD64 */  lb    $v0, %lo(D_800EFD64)($v0) # -0x29c($v0)
/* 0AFEA8 800AF2A8 10200070 */  beqz  $at, .L800AF46C
/* 0AFEAC 800AF2AC 2463FED4 */   addiu $v1, $v1, -0x12c
/* 0AFEB0 800AF2B0 0018C080 */  sll   $t8, $t8, 2
/* 0AFEB4 800AF2B4 3C01800F */  lui   $at, %hi(jpt_800F2ABC)
/* 0AFEB8 800AF2B8 00380821 */  addu  $at, $at, $t8
/* 0AFEBC 800AF2BC 8C382ABC */  lw    $t8, %lo(jpt_800F2ABC)($at)
/* 0AFEC0 800AF2C0 03000008 */  jr    $t8
/* 0AFEC4 800AF2C4 00000000 */   nop   
glabel L800AF2C8
/* 0AFEC8 800AF2C8 3C08800E */  lui   $t0, %hi(D_800E7458) # $t0, 0x800e
/* 0AFECC 800AF2CC 25087458 */  addiu $t0, %lo(D_800E7458) # addiu $t0, $t0, 0x7458
/* 0AFED0 800AF2D0 0003C8C0 */  sll   $t9, $v1, 3
/* 0AFED4 800AF2D4 03281021 */  addu  $v0, $t9, $t0
/* 0AFED8 800AF2D8 84490000 */  lh    $t1, ($v0)
/* 0AFEDC 800AF2DC 240B0001 */  li    $t3, 1
/* 0AFEE0 800AF2E0 AE09000C */  sw    $t1, 0xc($s0)
/* 0AFEE4 800AF2E4 844A0002 */  lh    $t2, 2($v0)
/* 0AFEE8 800AF2E8 AE0B0004 */  sw    $t3, 4($s0)
/* 0AFEEC 800AF2EC 1000005F */  b     .L800AF46C
/* 0AFEF0 800AF2F0 AE0A0010 */   sw    $t2, 0x10($s0)
glabel L800AF2F4
/* 0AFEF4 800AF2F4 3C0D800E */  lui   $t5, %hi(D_800E7480) # $t5, 0x800e
/* 0AFEF8 800AF2F8 25AD7480 */  addiu $t5, %lo(D_800E7480) # addiu $t5, $t5, 0x7480
/* 0AFEFC 800AF2FC 000360C0 */  sll   $t4, $v1, 3
/* 0AFF00 800AF300 018D1021 */  addu  $v0, $t4, $t5
/* 0AFF04 800AF304 84450000 */  lh    $a1, ($v0)
/* 0AFF08 800AF308 84460002 */  lh    $a2, 2($v0)
/* 0AFF0C 800AF30C AFA20020 */  sw    $v0, 0x20($sp)
/* 0AFF10 800AF310 0C02A476 */  jal   func_800A91D8
/* 0AFF14 800AF314 02002025 */   move  $a0, $s0
/* 0AFF18 800AF318 8FA20020 */  lw    $v0, 0x20($sp)
/* 0AFF1C 800AF31C 8E0F000C */  lw    $t7, 0xc($s0)
/* 0AFF20 800AF320 844E0000 */  lh    $t6, ($v0)
/* 0AFF24 800AF324 55CF0052 */  bnel  $t6, $t7, .L800AF470
/* 0AFF28 800AF328 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0AFF2C 800AF32C 84580002 */  lh    $t8, 2($v0)
/* 0AFF30 800AF330 8E190010 */  lw    $t9, 0x10($s0)
/* 0AFF34 800AF334 24080002 */  li    $t0, 2
/* 0AFF38 800AF338 5719004D */  bnel  $t8, $t9, .L800AF470
/* 0AFF3C 800AF33C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0AFF40 800AF340 AE080004 */  sw    $t0, 4($s0)
/* 0AFF44 800AF344 10000049 */  b     .L800AF46C
/* 0AFF48 800AF348 AE000020 */   sw    $zero, 0x20($s0)
glabel L800AF34C
/* 0AFF4C 800AF34C 8E090020 */  lw    $t1, 0x20($s0)
/* 0AFF50 800AF350 252A0001 */  addiu $t2, $t1, 1
/* 0AFF54 800AF354 2941001F */  slti  $at, $t2, 0x1f
/* 0AFF58 800AF358 14200044 */  bnez  $at, .L800AF46C
/* 0AFF5C 800AF35C AE0A0020 */   sw    $t2, 0x20($s0)
/* 0AFF60 800AF360 80AC001D */  lb    $t4, 0x1d($a1)
/* 0AFF64 800AF364 240F0003 */  li    $t7, 3
/* 0AFF68 800AF368 0002C080 */  sll   $t8, $v0, 2
/* 0AFF6C 800AF36C 29810003 */  slti  $at, $t4, 3
/* 0AFF70 800AF370 1420000F */  bnez  $at, .L800AF3B0
/* 0AFF74 800AF374 3C04800F */   lui   $a0, %hi(gCharacterCelebrateAnimation) # 0x800f
/* 0AFF78 800AF378 240D0004 */  li    $t5, 4
/* 0AFF7C 800AF37C 0C03282E */  jal   func_800CA0B8
/* 0AFF80 800AF380 AE0D0004 */   sw    $t5, 4($s0)
/* 0AFF84 800AF384 8FA50030 */  lw    $a1, 0x30($sp)
/* 0AFF88 800AF388 3C012900 */  lui   $at, (0x29008003 >> 16) # lui $at, 0x2900
/* 0AFF8C 800AF38C 34218003 */  ori   $at, (0x29008003 & 0xFFFF) # ori $at, $at, 0x8003
/* 0AFF90 800AF390 00057100 */  sll   $t6, $a1, 4
/* 0AFF94 800AF394 01C12821 */  addu  $a1, $t6, $at
/* 0AFF98 800AF398 0C03243D */  jal   func_800C90F4
/* 0AFF9C 800AF39C 00002025 */   move  $a0, $zero
/* 0AFFA0 800AF3A0 0C032828 */  jal   func_800CA0A0
/* 0AFFA4 800AF3A4 00000000 */   nop   
/* 0AFFA8 800AF3A8 10000031 */  b     .L800AF470
/* 0AFFAC 800AF3AC 8FBF001C */   lw    $ra, 0x1c($sp)
.L800AF3B0:
/* 0AFFB0 800AF3B0 AE0F0004 */  sw    $t7, 4($s0)
/* 0AFFB4 800AF3B4 00982021 */  addu  $a0, $a0, $t8
/* 0AFFB8 800AF3B8 0C026455 */  jal   segmented_to_virtual_dupe
/* 0AFFBC 800AF3BC 8C848380 */   lw    $a0, %lo(gCharacterCelebrateAnimation)($a0) # -0x7c80($a0)
/* 0AFFC0 800AF3C0 8E040018 */  lw    $a0, 0x18($s0)
/* 0AFFC4 800AF3C4 00002825 */  move  $a1, $zero
/* 0AFFC8 800AF3C8 8FA60030 */  lw    $a2, 0x30($sp)
/* 0AFFCC 800AF3CC 0C026990 */  jal   func_8009A640
/* 0AFFD0 800AF3D0 00403825 */   move  $a3, $v0
/* 0AFFD4 800AF3D4 0C03282E */  jal   func_800CA0B8
/* 0AFFD8 800AF3D8 00000000 */   nop   
/* 0AFFDC 800AF3DC 8FA50030 */  lw    $a1, 0x30($sp)
/* 0AFFE0 800AF3E0 3C012900 */  lui   $at, (0x29008007 >> 16) # lui $at, 0x2900
/* 0AFFE4 800AF3E4 34218007 */  ori   $at, (0x29008007 & 0xFFFF) # ori $at, $at, 0x8007
/* 0AFFE8 800AF3E8 0005C900 */  sll   $t9, $a1, 4
/* 0AFFEC 800AF3EC 03212821 */  addu  $a1, $t9, $at
/* 0AFFF0 800AF3F0 0C03243D */  jal   func_800C90F4
/* 0AFFF4 800AF3F4 00002025 */   move  $a0, $zero
/* 0AFFF8 800AF3F8 0C032828 */  jal   func_800CA0A0
/* 0AFFFC 800AF3FC 00000000 */   nop   
/* 0B0000 800AF400 1000001B */  b     .L800AF470
/* 0B0004 800AF404 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800AF408
/* 0B0008 800AF408 8E080018 */  lw    $t0, 0x18($s0)
/* 0B000C 800AF40C 00021880 */  sll   $v1, $v0, 2
/* 0B0010 800AF410 3C0A8019 */  lui   $t2, %hi(D_8018DEE4) # 0x8019
/* 0B0014 800AF414 00084880 */  sll   $t1, $t0, 2
/* 0B0018 800AF418 01284823 */  subu  $t1, $t1, $t0
/* 0B001C 800AF41C 000948C0 */  sll   $t1, $t1, 3
/* 0B0020 800AF420 3C0B800F */  lui   $t3, %hi(D_800E8440)
/* 0B0024 800AF424 01635821 */  addu  $t3, $t3, $v1
/* 0B0028 800AF428 01495021 */  addu  $t2, $t2, $t1
/* 0B002C 800AF42C 8D4ADEE4 */  lw    $t2, %lo(D_8018DEE4)($t2) # -0x211c($t2)
/* 0B0030 800AF430 8D6B8440 */  lw    $t3, %lo(D_800E8440)($t3)
/* 0B0034 800AF434 3C04800F */  lui   $a0, %hi(D_800E83A0) # 0x800f
/* 0B0038 800AF438 00832021 */  addu  $a0, $a0, $v1
/* 0B003C 800AF43C 014B082A */  slt   $at, $t2, $t3
/* 0B0040 800AF440 5420000B */  bnel  $at, $zero, .L800AF470
/* 0B0044 800AF444 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0B0048 800AF448 0C026455 */  jal   segmented_to_virtual_dupe
/* 0B004C 800AF44C 8C8483A0 */   lw    $a0, %lo(D_800E83A0)($a0) # -0x7c60($a0)
/* 0B0050 800AF450 8E040018 */  lw    $a0, 0x18($s0)
/* 0B0054 800AF454 00002825 */  move  $a1, $zero
/* 0B0058 800AF458 8FA60030 */  lw    $a2, 0x30($sp)
/* 0B005C 800AF45C 0C026990 */  jal   func_8009A640
/* 0B0060 800AF460 00403825 */   move  $a3, $v0
/* 0B0064 800AF464 240C0004 */  li    $t4, 4
/* 0B0068 800AF468 AE0C0004 */  sw    $t4, 4($s0)
.L800AF46C:
glabel L800AF46C
/* 0B006C 800AF46C 8FBF001C */  lw    $ra, 0x1c($sp)
.L800AF470:
/* 0B0070 800AF470 8FB00018 */  lw    $s0, 0x18($sp)
/* 0B0074 800AF474 27BD0038 */  addiu $sp, $sp, 0x38
/* 0B0078 800AF478 03E00008 */  jr    $ra
/* 0B007C 800AF47C 00000000 */   nop   
