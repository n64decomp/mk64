glabel func_80052E30
/* 053A30 80052E30 3C078016 */  lui   $a3, %hi(D_80165840) # $a3, 0x8016
/* 053A34 80052E34 24E75840 */  addiu $a3, %lo(D_80165840) # addiu $a3, $a3, 0x5840
/* 053A38 80052E38 3C068015 */  lui   $a2, %hi(gDisplayListHead) # $a2, 0x8015
/* 053A3C 80052E3C 24C60298 */  addiu $a2, %lo(gDisplayListHead) # addiu $a2, $a2, 0x298
/* 053A40 80052E40 8CC20000 */  lw    $v0, ($a2)
/* 053A44 80052E44 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 053A48 80052E48 3C05800E */  lui   $a1, %hi(D_800E4620) # $a1, 0x800e
/* 053A4C 80052E4C 80EE0000 */  lb    $t6, ($a3)
/* 053A50 80052E50 80EF0001 */  lb    $t7, 1($a3)
/* 053A54 80052E54 80F80002 */  lb    $t8, 2($a3)
/* 053A58 80052E58 24A54620 */  addiu $a1, %lo(D_800E4620) # addiu $a1, $a1, 0x4620
/* 053A5C 80052E5C 24590008 */  addiu $t9, $v0, 8
/* 053A60 80052E60 AFBF001C */  sw    $ra, 0x1c($sp)
/* 053A64 80052E64 AFB10018 */  sw    $s1, 0x18($sp)
/* 053A68 80052E68 AFB00014 */  sw    $s0, 0x14($sp)
/* 053A6C 80052E6C AFA40020 */  sw    $a0, 0x20($sp)
/* 053A70 80052E70 ACD90000 */  sw    $t9, ($a2)
/* 053A74 80052E74 3C090386 */  lui   $t1, (0x03860010 >> 16) # lui $t1, 0x386
/* 053A78 80052E78 3C0A800E */  lui   $t2, %hi(D_800E4628) # $t2, 0x800e
/* 053A7C 80052E7C A0AE0010 */  sb    $t6, 0x10($a1)
/* 053A80 80052E80 A0AF0011 */  sb    $t7, 0x11($a1)
/* 053A84 80052E84 A0B80012 */  sb    $t8, 0x12($a1)
/* 053A88 80052E88 254A4628 */  addiu $t2, %lo(D_800E4628) # addiu $t2, $t2, 0x4628
/* 053A8C 80052E8C 35290010 */  ori   $t1, (0x03860010 & 0xFFFF) # ori $t1, $t1, 0x10
/* 053A90 80052E90 AC490000 */  sw    $t1, ($v0)
/* 053A94 80052E94 AC4A0004 */  sw    $t2, 4($v0)
/* 053A98 80052E98 8CC20000 */  lw    $v0, ($a2)
/* 053A9C 80052E9C 3C0C0388 */  lui   $t4, (0x03880010 >> 16) # lui $t4, 0x388
/* 053AA0 80052EA0 3C088018 */  lui   $t0, %hi(D_80183E80) # $t0, 0x8018
/* 053AA4 80052EA4 244B0008 */  addiu $t3, $v0, 8
/* 053AA8 80052EA8 ACCB0000 */  sw    $t3, ($a2)
/* 053AAC 80052EAC 358C0010 */  ori   $t4, (0x03880010 & 0xFFFF) # ori $t4, $t4, 0x10
/* 053AB0 80052EB0 25083E80 */  addiu $t0, %lo(D_80183E80) # addiu $t0, $t0, 0x3e80
/* 053AB4 80052EB4 AC4C0000 */  sw    $t4, ($v0)
/* 053AB8 80052EB8 AC450004 */  sw    $a1, 4($v0)
/* 053ABC 80052EBC A5000000 */  sh    $zero, ($t0)
/* 053AC0 80052EC0 A5000002 */  sh    $zero, 2($t0)
/* 053AC4 80052EC4 A5000004 */  sh    $zero, 4($t0)
/* 053AC8 80052EC8 3C0D8019 */  lui   $t5, %hi(D_8018EDF3) # $t5, 0x8019
/* 053ACC 80052ECC 81ADEDF3 */  lb    $t5, %lo(D_8018EDF3)($t5)
/* 053AD0 80052ED0 3C11800E */  lui   $s1, %hi(gPlayerCountSelection1) # $s1, 0x800e
/* 053AD4 80052ED4 24010001 */  li    $at, 1
/* 053AD8 80052ED8 15A1000C */  bne   $t5, $at, .L80052F0C
/* 053ADC 80052EDC 2631C538 */   addiu $s1, %lo(gPlayerCountSelection1) # addiu $s1, $s1, -0x3ac8
/* 053AE0 80052EE0 8E2E0000 */  lw    $t6, ($s1)
/* 053AE4 80052EE4 00008025 */  move  $s0, $zero
/* 053AE8 80052EE8 59C00009 */  blezl $t6, .L80052F10
/* 053AEC 80052EEC 8FBF001C */   lw    $ra, 0x1c($sp)
.L80052EF0:
/* 053AF0 80052EF0 0C014B5C */  jal   func_80052D70
/* 053AF4 80052EF4 02002025 */   move  $a0, $s0
/* 053AF8 80052EF8 8E2F0000 */  lw    $t7, ($s1)
/* 053AFC 80052EFC 26100001 */  addiu $s0, $s0, 1
/* 053B00 80052F00 020F082A */  slt   $at, $s0, $t7
/* 053B04 80052F04 1420FFFA */  bnez  $at, .L80052EF0
/* 053B08 80052F08 00000000 */   nop   
.L80052F0C:
/* 053B0C 80052F0C 8FBF001C */  lw    $ra, 0x1c($sp)
.L80052F10:
/* 053B10 80052F10 8FB00014 */  lw    $s0, 0x14($sp)
/* 053B14 80052F14 8FB10018 */  lw    $s1, 0x18($sp)
/* 053B18 80052F18 03E00008 */  jr    $ra
/* 053B1C 80052F1C 27BD0020 */   addiu $sp, $sp, 0x20
