glabel func_80083F18
/* 084B18 80083F18 000470C0 */  sll   $t6, $a0, 3
/* 084B1C 80083F1C 01C47023 */  subu  $t6, $t6, $a0
/* 084B20 80083F20 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 084B24 80083F24 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 084B28 80083F28 000E7140 */  sll   $t6, $t6, 5
/* 084B2C 80083F2C 01CF1021 */  addu  $v0, $t6, $t7
/* 084B30 80083F30 844300A6 */  lh    $v1, 0xa6($v0)
/* 084B34 80083F34 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 084B38 80083F38 AFB00020 */  sw    $s0, 0x20($sp)
/* 084B3C 80083F3C 00808025 */  move  $s0, $a0
/* 084B40 80083F40 1060001E */  beqz  $v1, .L80083FBC
/* 084B44 80083F44 AFBF0024 */   sw    $ra, 0x24($sp)
/* 084B48 80083F48 24010001 */  li    $at, 1
/* 084B4C 80083F4C 10610006 */  beq   $v1, $at, .L80083F68
/* 084B50 80083F50 02002025 */   move  $a0, $s0
/* 084B54 80083F54 24010002 */  li    $at, 2
/* 084B58 80083F58 10610014 */  beq   $v1, $at, .L80083FAC
/* 084B5C 80083F5C 00000000 */   nop   
/* 084B60 80083F60 10000017 */  b     .L80083FC0
/* 084B64 80083F64 8FBF0024 */   lw    $ra, 0x24($sp)
.L80083F68:
/* 084B68 80083F68 945800C0 */  lhu   $t8, 0xc0($v0)
/* 084B6C 80083F6C 3C063DF5 */  lui   $a2, (0x3DF5C28F >> 16) # lui $a2, 0x3df5
/* 084B70 80083F70 24190064 */  li    $t9, 100
/* 084B74 80083F74 AFB90014 */  sw    $t9, 0x14($sp)
/* 084B78 80083F78 34C6C28F */  ori   $a2, (0x3DF5C28F & 0xFFFF) # ori $a2, $a2, 0xc28f
/* 084B7C 80083F7C 8C45003C */  lw    $a1, 0x3c($v0)
/* 084B80 80083F80 8C470034 */  lw    $a3, 0x34($v0)
/* 084B84 80083F84 0C021F82 */  jal   func_80087E08
/* 084B88 80083F88 AFB80010 */   sw    $t8, 0x10($sp)
/* 084B8C 80083F8C 10400003 */  beqz  $v0, .L80083F9C
/* 084B90 80083F90 00000000 */   nop   
/* 084B94 80083F94 0C01C922 */  jal   func_80072488
/* 084B98 80083F98 02002025 */   move  $a0, $s0
.L80083F9C:
/* 084B9C 80083F9C 0C022FC6 */  jal   func_8008BF18
/* 084BA0 80083FA0 02002025 */   move  $a0, $s0
/* 084BA4 80083FA4 10000006 */  b     .L80083FC0
/* 084BA8 80083FA8 8FBF0024 */   lw    $ra, 0x24($sp)
.L80083FAC:
/* 084BAC 80083FAC 0C021BD8 */  jal   func_80086F60
/* 084BB0 80083FB0 02002025 */   move  $a0, $s0
/* 084BB4 80083FB4 0C01C90A */  jal   func_80072428
/* 084BB8 80083FB8 02002025 */   move  $a0, $s0
.L80083FBC:
/* 084BBC 80083FBC 8FBF0024 */  lw    $ra, 0x24($sp)
.L80083FC0:
/* 084BC0 80083FC0 8FB00020 */  lw    $s0, 0x20($sp)
/* 084BC4 80083FC4 27BD0028 */  addiu $sp, $sp, 0x28
/* 084BC8 80083FC8 03E00008 */  jr    $ra
/* 084BCC 80083FCC 00000000 */   nop   
