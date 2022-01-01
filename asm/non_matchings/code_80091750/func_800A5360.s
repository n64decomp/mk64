glabel func_800A5360
/* 0A5F60 800A5360 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 0A5F64 800A5364 AFB00038 */  sw    $s0, 0x38($sp)
/* 0A5F68 800A5368 3C10800E */  lui   $s0, %hi(D_800DC5FC) # $s0, 0x800e
/* 0A5F6C 800A536C 2610C5FC */  addiu $s0, %lo(D_800DC5FC) # addiu $s0, $s0, -0x3a04
/* 0A5F70 800A5370 960E0000 */  lhu   $t6, ($s0)
/* 0A5F74 800A5374 3C198016 */  lui   $t9, %hi(D_8015F480) # $t9, 0x8016
/* 0A5F78 800A5378 2739F480 */  addiu $t9, %lo(D_8015F480) # addiu $t9, $t9, -0xb80
/* 0A5F7C 800A537C 000E7980 */  sll   $t7, $t6, 6
/* 0A5F80 800A5380 25F8FFC0 */  addiu $t8, $t7, -0x40
/* 0A5F84 800A5384 AFBF0054 */  sw    $ra, 0x54($sp)
/* 0A5F88 800A5388 AFB60050 */  sw    $s6, 0x50($sp)
/* 0A5F8C 800A538C AFB5004C */  sw    $s5, 0x4c($sp)
/* 0A5F90 800A5390 AFB40048 */  sw    $s4, 0x48($sp)
/* 0A5F94 800A5394 AFB30044 */  sw    $s3, 0x44($sp)
/* 0A5F98 800A5398 AFB20040 */  sw    $s2, 0x40($sp)
/* 0A5F9C 800A539C AFB1003C */  sw    $s1, 0x3c($sp)
/* 0A5FA0 800A53A0 F7B40030 */  sdc1  $f20, 0x30($sp)
/* 0A5FA4 800A53A4 03191021 */  addu  $v0, $t8, $t9
/* 0A5FA8 800A53A8 8449002C */  lh    $t1, 0x2c($v0)
/* 0A5FAC 800A53AC 844A002E */  lh    $t2, 0x2e($v0)
/* 0A5FB0 800A53B0 84430030 */  lh    $v1, 0x30($v0)
/* 0A5FB4 800A53B4 84480032 */  lh    $t0, 0x32($v0)
/* 0A5FB8 800A53B8 3C118015 */  lui   $s1, %hi(gDisplayListHead) # $s1, 0x8015
/* 0A5FBC 800A53BC 26310298 */  addiu $s1, %lo(gDisplayListHead) # addiu $s1, $s1, 0x298
/* 0A5FC0 800A53C0 0080A025 */  move  $s4, $a0
/* 0A5FC4 800A53C4 05210003 */  bgez  $t1, .L800A53D4
/* 0A5FC8 800A53C8 00095843 */   sra   $t3, $t1, 1
/* 0A5FCC 800A53CC 25210001 */  addiu $at, $t1, 1
/* 0A5FD0 800A53D0 00015843 */  sra   $t3, $at, 1
.L800A53D4:
/* 0A5FD4 800A53D4 01604825 */  move  $t1, $t3
/* 0A5FD8 800A53D8 05410003 */  bgez  $t2, .L800A53E8
/* 0A5FDC 800A53DC 000A6043 */   sra   $t4, $t2, 1
/* 0A5FE0 800A53E0 25410001 */  addiu $at, $t2, 1
/* 0A5FE4 800A53E4 00016043 */  sra   $t4, $at, 1
.L800A53E8:
/* 0A5FE8 800A53E8 240E008C */  li    $t6, 140
/* 0A5FEC 800A53EC 010C6821 */  addu  $t5, $t0, $t4
/* 0A5FF0 800A53F0 AFAD0010 */  sw    $t5, 0x10($sp)
/* 0A5FF4 800A53F4 AFAE0020 */  sw    $t6, 0x20($sp)
/* 0A5FF8 800A53F8 8E240000 */  lw    $a0, ($s1)
/* 0A5FFC 800A53FC AFA0001C */  sw    $zero, 0x1c($sp)
/* 0A6000 800A5400 AFA00018 */  sw    $zero, 0x18($sp)
/* 0A6004 800A5404 AFA00014 */  sw    $zero, 0x14($sp)
/* 0A6008 800A5408 00692823 */  subu  $a1, $v1, $t1
/* 0A600C 800A540C 00693821 */  addu  $a3, $v1, $t1
/* 0A6010 800A5410 0C02637E */  jal   draw_box
/* 0A6014 800A5414 010C3023 */   subu  $a2, $t0, $t4
/* 0A6018 800A5418 AE220000 */  sw    $v0, ($s1)
/* 0A601C 800A541C 3C0F800E */  lui   $t7, %hi(gScreenModeSelection) # $t7, 0x800e
/* 0A6020 800A5420 8DF8C530 */  lw    $t8, %lo(gScreenModeSelection)($t7)
/* 0A6024 800A5424 960B0000 */  lhu   $t3, ($s0)
/* 0A6028 800A5428 3C0F800F */  lui   $t7, %hi(D_800E8600) # $t7, 0x800f
/* 0A602C 800A542C 0018C940 */  sll   $t9, $t8, 5
/* 0A6030 800A5430 000B60C0 */  sll   $t4, $t3, 3
/* 0A6034 800A5434 032C6821 */  addu  $t5, $t9, $t4
/* 0A6038 800A5438 3C013F40 */  li    $at, 0x3F400000 # 0.750000
/* 0A603C 800A543C 25AEFFF8 */  addiu $t6, $t5, -8
/* 0A6040 800A5440 25EF8600 */  addiu $t7, %lo(D_800E8600) # addiu $t7, $t7, -0x7a00
/* 0A6044 800A5444 3C15800E */  lui   $s5, %hi(D_800E775C) # $s5, 0x800e
/* 0A6048 800A5448 4481A000 */  mtc1  $at, $f20
/* 0A604C 800A544C 01CF9821 */  addu  $s3, $t6, $t7
/* 0A6050 800A5450 26B5775C */  addiu $s5, %lo(D_800E775C) # addiu $s5, $s5, 0x775c
/* 0A6054 800A5454 00002825 */  move  $a1, $zero
/* 0A6058 800A5458 00009025 */  move  $s2, $zero
/* 0A605C 800A545C 24160004 */  li    $s6, 4
.L800A5460:
/* 0A6060 800A5460 18A00004 */  blez  $a1, .L800A5474
/* 0A6064 800A5464 00A08825 */   move  $s1, $a1
/* 0A6068 800A5468 24B00001 */  addiu $s0, $a1, 1
/* 0A606C 800A546C 10000002 */  b     .L800A5478
/* 0A6070 800A5470 02008825 */   move  $s1, $s0
.L800A5474:
/* 0A6074 800A5474 24B00001 */  addiu $s0, $a1, 1
.L800A5478:
/* 0A6078 800A5478 8E840004 */  lw    $a0, 4($s4)
/* 0A607C 800A547C 24060003 */  li    $a2, 3
/* 0A6080 800A5480 0C024870 */  jal   func_800921C0
/* 0A6084 800A5484 2484FFD7 */   addiu $a0, $a0, -0x29
/* 0A6088 800A5488 00115880 */  sll   $t3, $s1, 2
/* 0A608C 800A548C 86640000 */  lh    $a0, ($s3)
/* 0A6090 800A5490 86780002 */  lh    $t8, 2($s3)
/* 0A6094 800A5494 02ABC821 */  addu  $t9, $s5, $t3
/* 0A6098 800A5498 8F260000 */  lw    $a2, ($t9)
/* 0A609C 800A549C E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A60A0 800A54A0 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A60A4 800A54A4 00003825 */  move  $a3, $zero
/* 0A60A8 800A54A8 2484FFFE */  addiu $a0, $a0, -2
/* 0A60AC 800A54AC 0C024CC9 */  jal   func_80093324
/* 0A60B0 800A54B0 03122821 */   addu  $a1, $t8, $s2
/* 0A60B4 800A54B4 02002825 */  move  $a1, $s0
/* 0A60B8 800A54B8 1616FFE9 */  bne   $s0, $s6, .L800A5460
/* 0A60BC 800A54BC 2652000D */   addiu $s2, $s2, 0xd
/* 0A60C0 800A54C0 8FBF0054 */  lw    $ra, 0x54($sp)
/* 0A60C4 800A54C4 D7B40030 */  ldc1  $f20, 0x30($sp)
/* 0A60C8 800A54C8 8FB00038 */  lw    $s0, 0x38($sp)
/* 0A60CC 800A54CC 8FB1003C */  lw    $s1, 0x3c($sp)
/* 0A60D0 800A54D0 8FB20040 */  lw    $s2, 0x40($sp)
/* 0A60D4 800A54D4 8FB30044 */  lw    $s3, 0x44($sp)
/* 0A60D8 800A54D8 8FB40048 */  lw    $s4, 0x48($sp)
/* 0A60DC 800A54DC 8FB5004C */  lw    $s5, 0x4c($sp)
/* 0A60E0 800A54E0 8FB60050 */  lw    $s6, 0x50($sp)
/* 0A60E4 800A54E4 03E00008 */  jr    $ra
/* 0A60E8 800A54E8 27BD0058 */   addiu $sp, $sp, 0x58
