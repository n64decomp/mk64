glabel func_800A6034
/* 0A6C34 800A6034 3C0E8016 */  lui   $t6, %hi(D_801657E8) # $t6, 0x8016
/* 0A6C38 800A6038 81CE57E8 */  lb    $t6, %lo(D_801657E8)($t6)
/* 0A6C3C 800A603C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0A6C40 800A6040 AFB00020 */  sw    $s0, 0x20($sp)
/* 0A6C44 800A6044 24010001 */  li    $at, 1
/* 0A6C48 800A6048 00808025 */  move  $s0, $a0
/* 0A6C4C 800A604C 11C1003C */  beq   $t6, $at, .L800A6140
/* 0A6C50 800A6050 AFBF0024 */   sw    $ra, 0x24($sp)
/* 0A6C54 800A6054 3C058015 */  lui   $a1, %hi(gDisplayListHead) # $a1, 0x8015
/* 0A6C58 800A6058 24A50298 */  addiu $a1, %lo(gDisplayListHead) # addiu $a1, $a1, 0x298
/* 0A6C5C 800A605C 8CA30000 */  lw    $v1, ($a1)
/* 0A6C60 800A6060 3C18FA00 */  lui   $t8, 0xfa00
/* 0A6C64 800A6064 3C09800E */  lui   $t1, %hi(D_800DC540) # $t1, 0x800e
/* 0A6C68 800A6068 246F0008 */  addiu $t7, $v1, 8
/* 0A6C6C 800A606C ACAF0000 */  sw    $t7, ($a1)
/* 0A6C70 800A6070 AC780000 */  sw    $t8, ($v1)
/* 0A6C74 800A6074 8C99001C */  lw    $t9, 0x1c($a0)
/* 0A6C78 800A6078 3C0B800E */  lui   $t3, %hi(D_800E7500)
/* 0A6C7C 800A607C 24040005 */  li    $a0, 5
/* 0A6C80 800A6080 332800FF */  andi  $t0, $t9, 0xff
/* 0A6C84 800A6084 AC680004 */  sw    $t0, 4($v1)
/* 0A6C88 800A6088 8D29C540 */  lw    $t1, %lo(D_800DC540)($t1)
/* 0A6C8C 800A608C 00095080 */  sll   $t2, $t1, 2
/* 0A6C90 800A6090 016A5821 */  addu  $t3, $t3, $t2
/* 0A6C94 800A6094 8D6B7500 */  lw    $t3, %lo(D_800E7500)($t3)
/* 0A6C98 800A6098 0C024C36 */  jal   set_text_color
/* 0A6C9C 800A609C AFAB002C */   sw    $t3, 0x2c($sp)
/* 0A6CA0 800A60A0 3C01800F */  lui   $at, %hi(D_800F1F04) # $at, 0x800f
/* 0A6CA4 800A60A4 C4241F04 */  lwc1  $f4, %lo(D_800F1F04)($at)
/* 0A6CA8 800A60A8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0A6CAC 800A60AC 44813000 */  mtc1  $at, $f6
/* 0A6CB0 800A60B0 8E04000C */  lw    $a0, 0xc($s0)
/* 0A6CB4 800A60B4 8E050010 */  lw    $a1, 0x10($s0)
/* 0A6CB8 800A60B8 8FA6002C */  lw    $a2, 0x2c($sp)
/* 0A6CBC 800A60BC 00003825 */  move  $a3, $zero
/* 0A6CC0 800A60C0 E7A40010 */  swc1  $f4, 0x10($sp)
/* 0A6CC4 800A60C4 E7A60014 */  swc1  $f6, 0x14($sp)
/* 0A6CC8 800A60C8 24840041 */  addiu $a0, $a0, 0x41
/* 0A6CCC 800A60CC 0C024DD5 */  jal   func_80093754
/* 0A6CD0 800A60D0 24A500A0 */   addiu $a1, $a1, 0xa0
/* 0A6CD4 800A60D4 3C02800E */  lui   $v0, %hi(gCurrentCourseId) # $v0, 0x800e
/* 0A6CD8 800A60D8 8442C5A0 */  lh    $v0, %lo(gCurrentCourseId)($v0)
/* 0A6CDC 800A60DC 3C0D800E */  lui   $t5, %hi(D_800E7524)
/* 0A6CE0 800A60E0 00026080 */  sll   $t4, $v0, 2
/* 0A6CE4 800A60E4 01AC6821 */  addu  $t5, $t5, $t4
/* 0A6CE8 800A60E8 8DAD7524 */  lw    $t5, %lo(D_800E7524)($t5)
/* 0A6CEC 800A60EC AFAD002C */  sw    $t5, 0x2c($sp)
/* 0A6CF0 800A60F0 04410004 */  bgez  $v0, .L800A6104
/* 0A6CF4 800A60F4 30440003 */   andi  $a0, $v0, 3
/* 0A6CF8 800A60F8 10800002 */  beqz  $a0, .L800A6104
/* 0A6CFC 800A60FC 00000000 */   nop   
/* 0A6D00 800A6100 2484FFFC */  addiu $a0, $a0, -4
.L800A6104:
/* 0A6D04 800A6104 0C024C36 */  jal   set_text_color
/* 0A6D08 800A6108 00000000 */   nop   
/* 0A6D0C 800A610C 3C01800F */  lui   $at, %hi(D_800F1F08) # $at, 0x800f
/* 0A6D10 800A6110 C4281F08 */  lwc1  $f8, %lo(D_800F1F08)($at)
/* 0A6D14 800A6114 3C01800F */  lui   $at, %hi(D_800F1F0C) # $at, 0x800f
/* 0A6D18 800A6118 C42A1F0C */  lwc1  $f10, %lo(D_800F1F0C)($at)
/* 0A6D1C 800A611C 8E04000C */  lw    $a0, 0xc($s0)
/* 0A6D20 800A6120 8E050010 */  lw    $a1, 0x10($s0)
/* 0A6D24 800A6124 8FA6002C */  lw    $a2, 0x2c($sp)
/* 0A6D28 800A6128 00003825 */  move  $a3, $zero
/* 0A6D2C 800A612C E7A80010 */  swc1  $f8, 0x10($sp)
/* 0A6D30 800A6130 E7AA0014 */  swc1  $f10, 0x14($sp)
/* 0A6D34 800A6134 24840041 */  addiu $a0, $a0, 0x41
/* 0A6D38 800A6138 0C024DD5 */  jal   func_80093754
/* 0A6D3C 800A613C 24A500C3 */   addiu $a1, $a1, 0xc3
.L800A6140:
/* 0A6D40 800A6140 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0A6D44 800A6144 8FB00020 */  lw    $s0, 0x20($sp)
/* 0A6D48 800A6148 27BD0030 */  addiu $sp, $sp, 0x30
/* 0A6D4C 800A614C 03E00008 */  jr    $ra
/* 0A6D50 800A6150 00000000 */   nop   
