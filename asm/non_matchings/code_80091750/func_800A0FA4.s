glabel func_800A0FA4
/* 0A1BA4 800A0FA4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0A1BA8 800A0FA8 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0A1BAC 800A0FAC AFB20028 */  sw    $s2, 0x28($sp)
/* 0A1BB0 800A0FB0 AFB10024 */  sw    $s1, 0x24($sp)
/* 0A1BB4 800A0FB4 AFB00020 */  sw    $s0, 0x20($sp)
/* 0A1BB8 800A0FB8 8C8E0004 */  lw    $t6, 4($a0)
/* 0A1BBC 800A0FBC 00808025 */  move  $s0, $a0
/* 0A1BC0 800A0FC0 2DC10005 */  sltiu $at, $t6, 5
/* 0A1BC4 800A0FC4 1020003B */  beqz  $at, .L800A10B4
/* 0A1BC8 800A0FC8 000E7080 */   sll   $t6, $t6, 2
/* 0A1BCC 800A0FCC 3C01800F */  lui   $at, %hi(jpt_800F1B00)
/* 0A1BD0 800A0FD0 002E0821 */  addu  $at, $at, $t6
/* 0A1BD4 800A0FD4 8C2E1B00 */  lw    $t6, %lo(jpt_800F1B00)($at)
/* 0A1BD8 800A0FD8 01C00008 */  jr    $t6
/* 0A1BDC 800A0FDC 00000000 */   nop   
glabel L800A0FE0
/* 0A1BE0 800A0FE0 3C19800F */  lui   $t9, %hi(D_800E8234) # $t9, 0x800f
/* 0A1BE4 800A0FE4 27398234 */  addiu $t9, %lo(D_800E8234) # addiu $t9, $t9, -0x7dcc
/* 0A1BE8 800A0FE8 0005C0C0 */  sll   $t8, $a1, 3
/* 0A1BEC 800A0FEC 03198821 */  addu  $s1, $t8, $t9
/* 0A1BF0 800A0FF0 0C026449 */  jal   segmented_to_virtual
/* 0A1BF4 800A0FF4 8E240000 */   lw    $a0, ($s1)
/* 0A1BF8 800A0FF8 3C128015 */  lui   $s2, %hi(gDisplayListHead) # $s2, 0x8015
/* 0A1BFC 800A0FFC 26520298 */  addiu $s2, %lo(gDisplayListHead) # addiu $s2, $s2, 0x298
/* 0A1C00 800A1000 8E440000 */  lw    $a0, ($s2)
/* 0A1C04 800A1004 00402825 */  move  $a1, $v0
/* 0A1C08 800A1008 8E06000C */  lw    $a2, 0xc($s0)
/* 0A1C0C 800A100C 0C026E9D */  jal   func_8009BA74
/* 0A1C10 800A1010 8E070010 */   lw    $a3, 0x10($s0)
/* 0A1C14 800A1014 AE420000 */  sw    $v0, ($s2)
/* 0A1C18 800A1018 0C026449 */  jal   segmented_to_virtual
/* 0A1C1C 800A101C 8E240004 */   lw    $a0, 4($s1)
/* 0A1C20 800A1020 8E440000 */  lw    $a0, ($s2)
/* 0A1C24 800A1024 00402825 */  move  $a1, $v0
/* 0A1C28 800A1028 8E06000C */  lw    $a2, 0xc($s0)
/* 0A1C2C 800A102C 0C026E9D */  jal   func_8009BA74
/* 0A1C30 800A1030 8E070010 */   lw    $a3, 0x10($s0)
/* 0A1C34 800A1034 1000001F */  b     .L800A10B4
/* 0A1C38 800A1038 AE420000 */   sw    $v0, ($s2)
glabel L800A103C
/* 0A1C3C 800A103C 3C0A800F */  lui   $t2, %hi(D_800E8234) # $t2, 0x800f
/* 0A1C40 800A1040 254A8234 */  addiu $t2, %lo(D_800E8234) # addiu $t2, $t2, -0x7dcc
/* 0A1C44 800A1044 000548C0 */  sll   $t1, $a1, 3
/* 0A1C48 800A1048 012A8821 */  addu  $s1, $t1, $t2
/* 0A1C4C 800A104C 0C026449 */  jal   segmented_to_virtual
/* 0A1C50 800A1050 8E240000 */   lw    $a0, ($s1)
/* 0A1C54 800A1054 8E06000C */  lw    $a2, 0xc($s0)
/* 0A1C58 800A1058 8E070010 */  lw    $a3, 0x10($s0)
/* 0A1C5C 800A105C 240B0002 */  li    $t3, 2
/* 0A1C60 800A1060 AFAB0010 */  sw    $t3, 0x10($sp)
/* 0A1C64 800A1064 8E0C001C */  lw    $t4, 0x1c($s0)
/* 0A1C68 800A1068 3C128015 */  lui   $s2, %hi(gDisplayListHead) # $s2, 0x8015
/* 0A1C6C 800A106C 26520298 */  addiu $s2, %lo(gDisplayListHead) # addiu $s2, $s2, 0x298
/* 0A1C70 800A1070 8E440000 */  lw    $a0, ($s2)
/* 0A1C74 800A1074 00402825 */  move  $a1, $v0
/* 0A1C78 800A1078 0C026F27 */  jal   func_8009BC9C
/* 0A1C7C 800A107C AFAC0014 */   sw    $t4, 0x14($sp)
/* 0A1C80 800A1080 AE420000 */  sw    $v0, ($s2)
/* 0A1C84 800A1084 0C026449 */  jal   segmented_to_virtual
/* 0A1C88 800A1088 8E240004 */   lw    $a0, 4($s1)
/* 0A1C8C 800A108C 8E06000C */  lw    $a2, 0xc($s0)
/* 0A1C90 800A1090 8E070010 */  lw    $a3, 0x10($s0)
/* 0A1C94 800A1094 240D0002 */  li    $t5, 2
/* 0A1C98 800A1098 AFAD0010 */  sw    $t5, 0x10($sp)
/* 0A1C9C 800A109C 8E0E001C */  lw    $t6, 0x1c($s0)
/* 0A1CA0 800A10A0 8E440000 */  lw    $a0, ($s2)
/* 0A1CA4 800A10A4 00402825 */  move  $a1, $v0
/* 0A1CA8 800A10A8 0C026F27 */  jal   func_8009BC9C
/* 0A1CAC 800A10AC AFAE0014 */   sw    $t6, 0x14($sp)
/* 0A1CB0 800A10B0 AE420000 */  sw    $v0, ($s2)
.L800A10B4:
/* 0A1CB4 800A10B4 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0A1CB8 800A10B8 8FB00020 */  lw    $s0, 0x20($sp)
/* 0A1CBC 800A10BC 8FB10024 */  lw    $s1, 0x24($sp)
/* 0A1CC0 800A10C0 8FB20028 */  lw    $s2, 0x28($sp)
/* 0A1CC4 800A10C4 03E00008 */  jr    $ra
/* 0A1CC8 800A10C8 27BD0030 */   addiu $sp, $sp, 0x30
