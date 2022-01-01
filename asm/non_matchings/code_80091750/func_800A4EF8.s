glabel func_800A4EF8
/* 0A5AF8 800A4EF8 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 0A5AFC 800A4EFC AFB00038 */  sw    $s0, 0x38($sp)
/* 0A5B00 800A4F00 3C10800E */  lui   $s0, %hi(D_800DC5FC) # $s0, 0x800e
/* 0A5B04 800A4F04 2610C5FC */  addiu $s0, %lo(D_800DC5FC) # addiu $s0, $s0, -0x3a04
/* 0A5B08 800A4F08 960E0000 */  lhu   $t6, ($s0)
/* 0A5B0C 800A4F0C 3C198016 */  lui   $t9, %hi(D_8015F480) # $t9, 0x8016
/* 0A5B10 800A4F10 2739F480 */  addiu $t9, %lo(D_8015F480) # addiu $t9, $t9, -0xb80
/* 0A5B14 800A4F14 000E7980 */  sll   $t7, $t6, 6
/* 0A5B18 800A4F18 25F8FFC0 */  addiu $t8, $t7, -0x40
/* 0A5B1C 800A4F1C AFBF0054 */  sw    $ra, 0x54($sp)
/* 0A5B20 800A4F20 AFB60050 */  sw    $s6, 0x50($sp)
/* 0A5B24 800A4F24 AFB5004C */  sw    $s5, 0x4c($sp)
/* 0A5B28 800A4F28 AFB40048 */  sw    $s4, 0x48($sp)
/* 0A5B2C 800A4F2C AFB30044 */  sw    $s3, 0x44($sp)
/* 0A5B30 800A4F30 AFB20040 */  sw    $s2, 0x40($sp)
/* 0A5B34 800A4F34 AFB1003C */  sw    $s1, 0x3c($sp)
/* 0A5B38 800A4F38 F7B40030 */  sdc1  $f20, 0x30($sp)
/* 0A5B3C 800A4F3C 03191021 */  addu  $v0, $t8, $t9
/* 0A5B40 800A4F40 8449002C */  lh    $t1, 0x2c($v0)
/* 0A5B44 800A4F44 844A002E */  lh    $t2, 0x2e($v0)
/* 0A5B48 800A4F48 84430030 */  lh    $v1, 0x30($v0)
/* 0A5B4C 800A4F4C 84480032 */  lh    $t0, 0x32($v0)
/* 0A5B50 800A4F50 3C118015 */  lui   $s1, %hi(gDisplayListHead) # $s1, 0x8015
/* 0A5B54 800A4F54 26310298 */  addiu $s1, %lo(gDisplayListHead) # addiu $s1, $s1, 0x298
/* 0A5B58 800A4F58 0080A025 */  move  $s4, $a0
/* 0A5B5C 800A4F5C 05210003 */  bgez  $t1, .L800A4F6C
/* 0A5B60 800A4F60 00095843 */   sra   $t3, $t1, 1
/* 0A5B64 800A4F64 25210001 */  addiu $at, $t1, 1
/* 0A5B68 800A4F68 00015843 */  sra   $t3, $at, 1
.L800A4F6C:
/* 0A5B6C 800A4F6C 01604825 */  move  $t1, $t3
/* 0A5B70 800A4F70 05410003 */  bgez  $t2, .L800A4F80
/* 0A5B74 800A4F74 000A6043 */   sra   $t4, $t2, 1
/* 0A5B78 800A4F78 25410001 */  addiu $at, $t2, 1
/* 0A5B7C 800A4F7C 00016043 */  sra   $t4, $at, 1
.L800A4F80:
/* 0A5B80 800A4F80 240E008C */  li    $t6, 140
/* 0A5B84 800A4F84 010C6821 */  addu  $t5, $t0, $t4
/* 0A5B88 800A4F88 AFAD0010 */  sw    $t5, 0x10($sp)
/* 0A5B8C 800A4F8C AFAE0020 */  sw    $t6, 0x20($sp)
/* 0A5B90 800A4F90 8E240000 */  lw    $a0, ($s1)
/* 0A5B94 800A4F94 AFA0001C */  sw    $zero, 0x1c($sp)
/* 0A5B98 800A4F98 AFA00018 */  sw    $zero, 0x18($sp)
/* 0A5B9C 800A4F9C AFA00014 */  sw    $zero, 0x14($sp)
/* 0A5BA0 800A4FA0 00692823 */  subu  $a1, $v1, $t1
/* 0A5BA4 800A4FA4 00693821 */  addu  $a3, $v1, $t1
/* 0A5BA8 800A4FA8 0C02637E */  jal   draw_box
/* 0A5BAC 800A4FAC 010C3023 */   subu  $a2, $t0, $t4
/* 0A5BB0 800A4FB0 AE220000 */  sw    $v0, ($s1)
/* 0A5BB4 800A4FB4 3C0F800E */  lui   $t7, %hi(gScreenModeSelection) # $t7, 0x800e
/* 0A5BB8 800A4FB8 8DF8C530 */  lw    $t8, %lo(gScreenModeSelection)($t7)
/* 0A5BBC 800A4FBC 960B0000 */  lhu   $t3, ($s0)
/* 0A5BC0 800A4FC0 3C0F800F */  lui   $t7, %hi(D_800E8540) # $t7, 0x800f
/* 0A5BC4 800A4FC4 0018C940 */  sll   $t9, $t8, 5
/* 0A5BC8 800A4FC8 000B60C0 */  sll   $t4, $t3, 3
/* 0A5BCC 800A4FCC 032C6821 */  addu  $t5, $t9, $t4
/* 0A5BD0 800A4FD0 3C013F40 */  li    $at, 0x3F400000 # 0.750000
/* 0A5BD4 800A4FD4 25AEFFF8 */  addiu $t6, $t5, -8
/* 0A5BD8 800A4FD8 25EF8540 */  addiu $t7, %lo(D_800E8540) # addiu $t7, $t7, -0x7ac0
/* 0A5BDC 800A4FDC 3C15800E */  lui   $s5, %hi(D_800E775C) # $s5, 0x800e
/* 0A5BE0 800A4FE0 4481A000 */  mtc1  $at, $f20
/* 0A5BE4 800A4FE4 01CF9821 */  addu  $s3, $t6, $t7
/* 0A5BE8 800A4FE8 26B5775C */  addiu $s5, %lo(D_800E775C) # addiu $s5, $s5, 0x775c
/* 0A5BEC 800A4FEC 00002825 */  move  $a1, $zero
/* 0A5BF0 800A4FF0 00009025 */  move  $s2, $zero
/* 0A5BF4 800A4FF4 24160004 */  li    $s6, 4
.L800A4FF8:
/* 0A5BF8 800A4FF8 18A00004 */  blez  $a1, .L800A500C
/* 0A5BFC 800A4FFC 00A08825 */   move  $s1, $a1
/* 0A5C00 800A5000 24B00001 */  addiu $s0, $a1, 1
/* 0A5C04 800A5004 10000002 */  b     .L800A5010
/* 0A5C08 800A5008 02008825 */   move  $s1, $s0
.L800A500C:
/* 0A5C0C 800A500C 24B00001 */  addiu $s0, $a1, 1
.L800A5010:
/* 0A5C10 800A5010 8E840004 */  lw    $a0, 4($s4)
/* 0A5C14 800A5014 24060003 */  li    $a2, 3
/* 0A5C18 800A5018 0C024870 */  jal   func_800921C0
/* 0A5C1C 800A501C 2484FFEB */   addiu $a0, $a0, -0x15
/* 0A5C20 800A5020 00115880 */  sll   $t3, $s1, 2
/* 0A5C24 800A5024 86640000 */  lh    $a0, ($s3)
/* 0A5C28 800A5028 86780002 */  lh    $t8, 2($s3)
/* 0A5C2C 800A502C 02ABC821 */  addu  $t9, $s5, $t3
/* 0A5C30 800A5030 8F260000 */  lw    $a2, ($t9)
/* 0A5C34 800A5034 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A5C38 800A5038 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A5C3C 800A503C 00003825 */  move  $a3, $zero
/* 0A5C40 800A5040 2484FFFE */  addiu $a0, $a0, -2
/* 0A5C44 800A5044 0C024CC9 */  jal   func_80093324
/* 0A5C48 800A5048 03122821 */   addu  $a1, $t8, $s2
/* 0A5C4C 800A504C 02002825 */  move  $a1, $s0
/* 0A5C50 800A5050 1616FFE9 */  bne   $s0, $s6, .L800A4FF8
/* 0A5C54 800A5054 2652000D */   addiu $s2, $s2, 0xd
/* 0A5C58 800A5058 8FBF0054 */  lw    $ra, 0x54($sp)
/* 0A5C5C 800A505C D7B40030 */  ldc1  $f20, 0x30($sp)
/* 0A5C60 800A5060 8FB00038 */  lw    $s0, 0x38($sp)
/* 0A5C64 800A5064 8FB1003C */  lw    $s1, 0x3c($sp)
/* 0A5C68 800A5068 8FB20040 */  lw    $s2, 0x40($sp)
/* 0A5C6C 800A506C 8FB30044 */  lw    $s3, 0x44($sp)
/* 0A5C70 800A5070 8FB40048 */  lw    $s4, 0x48($sp)
/* 0A5C74 800A5074 8FB5004C */  lw    $s5, 0x4c($sp)
/* 0A5C78 800A5078 8FB60050 */  lw    $s6, 0x50($sp)
/* 0A5C7C 800A507C 03E00008 */  jr    $ra
/* 0A5C80 800A5080 27BD0058 */   addiu $sp, $sp, 0x58
