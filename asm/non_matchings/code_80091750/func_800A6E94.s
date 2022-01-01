glabel func_800A6E94
/* 0A7A94 800A6E94 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0A7A98 800A6E98 00057880 */  sll   $t7, $a1, 2
/* 0A7A9C 800A6E9C 3C188016 */  lui   $t8, %hi(gPlayerPositions)
/* 0A7AA0 800A6EA0 030FC021 */  addu  $t8, $t8, $t7
/* 0A7AA4 800A6EA4 8F1843B8 */  lw    $t8, %lo(gPlayerPositions)($t8)
/* 0A7AA8 800A6EA8 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0A7AAC 800A6EAC AFB00028 */  sw    $s0, 0x28($sp)
/* 0A7AB0 800A6EB0 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0A7AB4 800A6EB4 AFA40050 */  sw    $a0, 0x50($sp)
/* 0A7AB8 800A6EB8 AFA50054 */  sw    $a1, 0x54($sp)
/* 0A7ABC 800A6EBC AFA60058 */  sw    $a2, 0x58($sp)
/* 0A7AC0 800A6EC0 1700000A */  bnez  $t8, .L800A6EEC
/* 0A7AC4 800A6EC4 AFB8003C */   sw    $t8, 0x3c($sp)
/* 0A7AC8 800A6EC8 3C04800E */  lui   $a0, %hi(gGlobalTimer) # $a0, 0x800e
/* 0A7ACC 800A6ECC 8C84C54C */  lw    $a0, %lo(gGlobalTimer)($a0)
/* 0A7AD0 800A6ED0 24010003 */  li    $at, 3
/* 0A7AD4 800A6ED4 0081001A */  div   $zero, $a0, $at
/* 0A7AD8 800A6ED8 00002010 */  mfhi  $a0
/* 0A7ADC 800A6EDC 0C024C36 */  jal   set_text_color
/* 0A7AE0 800A6EE0 00000000 */   nop
/* 0A7AE4 800A6EE4 10000004 */  b     .L800A6EF8
/* 0A7AE8 800A6EE8 8FA90050 */   lw    $t1, 0x50($sp)
.L800A6EEC:
/* 0A7AEC 800A6EEC 0C024C36 */  jal   set_text_color
/* 0A7AF0 800A6EF0 24040003 */   li    $a0, 3
/* 0A7AF4 800A6EF4 8FA90050 */  lw    $t1, 0x50($sp)
.L800A6EF8:
/* 0A7AF8 800A6EF8 8FAB0054 */  lw    $t3, 0x54($sp)
/* 0A7AFC 800A6EFC 3C0F800E */  lui   $t7, %hi(D_800E7300) # $t7, 0x800e
/* 0A7B00 800A6F00 00095140 */  sll   $t2, $t1, 5
/* 0A7B04 800A6F04 000B60C0 */  sll   $t4, $t3, 3
/* 0A7B08 800A6F08 014C6821 */  addu  $t5, $t2, $t4
/* 0A7B0C 800A6F0C 25AEFFC0 */  addiu $t6, $t5, -0x40
/* 0A7B10 800A6F10 25EF7300 */  addiu $t7, %lo(D_800E7300) # addiu $t7, $t7, 0x7300
/* 0A7B14 800A6F14 3C01800F */  lui   $at, %hi(D_800F1F28) # $at, 0x800f
/* 0A7B18 800A6F18 01CF8021 */  addu  $s0, $t6, $t7
/* 0A7B1C 800A6F1C C4341F28 */  lwc1  $f20, %lo(D_800F1F28)($at)
/* 0A7B20 800A6F20 86040000 */  lh    $a0, ($s0)
/* 0A7B24 800A6F24 86050002 */  lh    $a1, 2($s0)
/* 0A7B28 800A6F28 3C06800F */  lui   $a2, %hi(D_800F0C80) # $a2, 0x800f
/* 0A7B2C 800A6F2C 24C60C80 */  addiu $a2, %lo(D_800F0C80) # addiu $a2, $a2, 0xc80
/* 0A7B30 800A6F30 00003825 */  move  $a3, $zero
/* 0A7B34 800A6F34 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A7B38 800A6F38 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A7B3C 800A6F3C 24840004 */  addiu $a0, $a0, 4
/* 0A7B40 800A6F40 0C024E7F */  jal   text_draw
/* 0A7B44 800A6F44 24A5005A */   addiu $a1, $a1, 0x5a
/* 0A7B48 800A6F48 8FB80054 */  lw    $t8, 0x54($sp)
/* 0A7B4C 800A6F4C 8FA80058 */  lw    $t0, 0x58($sp)
/* 0A7B50 800A6F50 27A50040 */  addiu $a1, $sp, 0x40
/* 0A7B54 800A6F54 0018C880 */  sll   $t9, $t8, 2
/* 0A7B58 800A6F58 0338C823 */  subu  $t9, $t9, $t8
/* 0A7B5C 800A6F5C 03281021 */  addu  $v0, $t9, $t0
/* 0A7B60 800A6F60 90440000 */  lbu   $a0, ($v0)
/* 0A7B64 800A6F64 0C029E25 */  jal   convert_number_to_ascii
/* 0A7B68 800A6F68 AFA20030 */   sw    $v0, 0x30($sp)
/* 0A7B6C 800A6F6C 86040000 */  lh    $a0, ($s0)
/* 0A7B70 800A6F70 86050002 */  lh    $a1, 2($s0)
/* 0A7B74 800A6F74 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A7B78 800A6F78 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A7B7C 800A6F7C 27A60040 */  addiu $a2, $sp, 0x40
/* 0A7B80 800A6F80 00003825 */  move  $a3, $zero
/* 0A7B84 800A6F84 2484002D */  addiu $a0, $a0, 0x2d
/* 0A7B88 800A6F88 0C024E7F */  jal   text_draw
/* 0A7B8C 800A6F8C 24A5005A */   addiu $a1, $a1, 0x5a
/* 0A7B90 800A6F90 8FA9003C */  lw    $t1, 0x3c($sp)
/* 0A7B94 800A6F94 24020001 */  li    $v0, 1
/* 0A7B98 800A6F98 00002025 */  move  $a0, $zero
/* 0A7B9C 800A6F9C 1449000B */  bne   $v0, $t1, .L800A6FCC
/* 0A7BA0 800A6FA0 00000000 */   nop
/* 0A7BA4 800A6FA4 3C04800E */  lui   $a0, %hi(gGlobalTimer) # $a0, 0x800e
/* 0A7BA8 800A6FA8 8C84C54C */  lw    $a0, %lo(gGlobalTimer)($a0)
/* 0A7BAC 800A6FAC 24010003 */  li    $at, 3
/* 0A7BB0 800A6FB0 AFA20038 */  sw    $v0, 0x38($sp)
/* 0A7BB4 800A6FB4 0081001A */  div   $zero, $a0, $at
/* 0A7BB8 800A6FB8 00002010 */  mfhi  $a0
/* 0A7BBC 800A6FBC 0C024C36 */  jal   set_text_color
/* 0A7BC0 800A6FC0 00000000 */   nop
/* 0A7BC4 800A6FC4 10000004 */  b     .L800A6FD8
/* 0A7BC8 800A6FC8 8FA20038 */   lw    $v0, 0x38($sp)
.L800A6FCC:
/* 0A7BCC 800A6FCC 0C024C36 */  jal   set_text_color
/* 0A7BD0 800A6FD0 AFA20038 */   sw    $v0, 0x38($sp)
/* 0A7BD4 800A6FD4 8FA20038 */  lw    $v0, 0x38($sp)
.L800A6FD8:
/* 0A7BD8 800A6FD8 86040000 */  lh    $a0, ($s0)
/* 0A7BDC 800A6FDC 86050002 */  lh    $a1, 2($s0)
/* 0A7BE0 800A6FE0 3C06800F */  lui   $a2, %hi(D_800F0C88) # $a2, 0x800f
/* 0A7BE4 800A6FE4 24C60C88 */  addiu $a2, %lo(D_800F0C88) # addiu $a2, $a2, 0xc88
/* 0A7BE8 800A6FE8 AFA20038 */  sw    $v0, 0x38($sp)
/* 0A7BEC 800A6FEC E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A7BF0 800A6FF0 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A7BF4 800A6FF4 00003825 */  move  $a3, $zero
/* 0A7BF8 800A6FF8 24840004 */  addiu $a0, $a0, 4
/* 0A7BFC 800A6FFC 0C024E7F */  jal   text_draw
/* 0A7C00 800A7000 24A50069 */   addiu $a1, $a1, 0x69
/* 0A7C04 800A7004 8FAA0030 */  lw    $t2, 0x30($sp)
/* 0A7C08 800A7008 27A50040 */  addiu $a1, $sp, 0x40
/* 0A7C0C 800A700C 0C029E25 */  jal   convert_number_to_ascii
/* 0A7C10 800A7010 91440001 */   lbu   $a0, 1($t2)
/* 0A7C14 800A7014 86040000 */  lh    $a0, ($s0)
/* 0A7C18 800A7018 86050002 */  lh    $a1, 2($s0)
/* 0A7C1C 800A701C E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A7C20 800A7020 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A7C24 800A7024 27A60040 */  addiu $a2, $sp, 0x40
/* 0A7C28 800A7028 00003825 */  move  $a3, $zero
/* 0A7C2C 800A702C 2484002D */  addiu $a0, $a0, 0x2d
/* 0A7C30 800A7030 0C024E7F */  jal   text_draw
/* 0A7C34 800A7034 24A50069 */   addiu $a1, $a1, 0x69
/* 0A7C38 800A7038 8FA20038 */  lw    $v0, 0x38($sp)
/* 0A7C3C 800A703C 8FAC003C */  lw    $t4, 0x3c($sp)
/* 0A7C40 800A7040 3C04800E */  lui   $a0, %hi(gGlobalTimer) # $a0, 0x800e
/* 0A7C44 800A7044 24420001 */  addiu $v0, $v0, 1
/* 0A7C48 800A7048 144C0009 */  bne   $v0, $t4, .L800A7070
/* 0A7C4C 800A704C 00000000 */   nop
/* 0A7C50 800A7050 8C84C54C */  lw    $a0, %lo(gGlobalTimer)($a0)
/* 0A7C54 800A7054 24010003 */  li    $at, 3
/* 0A7C58 800A7058 0081001A */  div   $zero, $a0, $at
/* 0A7C5C 800A705C 00002010 */  mfhi  $a0
/* 0A7C60 800A7060 0C024C36 */  jal   set_text_color
/* 0A7C64 800A7064 00000000 */   nop
/* 0A7C68 800A7068 10000004 */  b     .L800A707C
/* 0A7C6C 800A706C 86040000 */   lh    $a0, ($s0)
.L800A7070:
/* 0A7C70 800A7070 0C024C36 */  jal   set_text_color
/* 0A7C74 800A7074 24040002 */   li    $a0, 2
/* 0A7C78 800A7078 86040000 */  lh    $a0, ($s0)
.L800A707C:
/* 0A7C7C 800A707C 86050002 */  lh    $a1, 2($s0)
/* 0A7C80 800A7080 3C06800F */  lui   $a2, %hi(D_800F0C90) # $a2, 0x800f
/* 0A7C84 800A7084 24C60C90 */  addiu $a2, %lo(D_800F0C90) # addiu $a2, $a2, 0xc90
/* 0A7C88 800A7088 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A7C8C 800A708C E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A7C90 800A7090 00003825 */  move  $a3, $zero
/* 0A7C94 800A7094 24840004 */  addiu $a0, $a0, 4
/* 0A7C98 800A7098 0C024E7F */  jal   text_draw
/* 0A7C9C 800A709C 24A50078 */   addiu $a1, $a1, 0x78
/* 0A7CA0 800A70A0 8FAE0030 */  lw    $t6, 0x30($sp)
/* 0A7CA4 800A70A4 27A50040 */  addiu $a1, $sp, 0x40
/* 0A7CA8 800A70A8 0C029E25 */  jal   convert_number_to_ascii
/* 0A7CAC 800A70AC 91C40002 */   lbu   $a0, 2($t6)
/* 0A7CB0 800A70B0 86040000 */  lh    $a0, ($s0)
/* 0A7CB4 800A70B4 86050002 */  lh    $a1, 2($s0)
/* 0A7CB8 800A70B8 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A7CBC 800A70BC E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A7CC0 800A70C0 27A60040 */  addiu $a2, $sp, 0x40
/* 0A7CC4 800A70C4 00003825 */  move  $a3, $zero
/* 0A7CC8 800A70C8 2484002D */  addiu $a0, $a0, 0x2d
/* 0A7CCC 800A70CC 0C024E7F */  jal   text_draw
/* 0A7CD0 800A70D0 24A50078 */   addiu $a1, $a1, 0x78
/* 0A7CD4 800A70D4 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0A7CD8 800A70D8 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0A7CDC 800A70DC 8FB00028 */  lw    $s0, 0x28($sp)
/* 0A7CE0 800A70E0 03E00008 */  jr    $ra
/* 0A7CE4 800A70E4 27BD0050 */   addiu $sp, $sp, 0x50
