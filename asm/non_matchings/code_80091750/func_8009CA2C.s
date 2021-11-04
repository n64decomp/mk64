glabel func_8009CA2C
/* 09D62C 8009CA2C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 09D630 8009CA30 AFB10018 */  sw    $s1, 0x18($sp)
/* 09D634 8009CA34 AFB00014 */  sw    $s0, 0x14($sp)
/* 09D638 8009CA38 AFBF001C */  sw    $ra, 0x1c($sp)
/* 09D63C 8009CA3C 00008025 */  move  $s0, $zero
/* 09D640 8009CA40 24110005 */  li    $s1, 5
.L8009CA44:
/* 09D644 8009CA44 0C02729B */  jal   func_8009CA6C
/* 09D648 8009CA48 02002025 */   move  $a0, $s0
/* 09D64C 8009CA4C 26100001 */  addiu $s0, $s0, 1
/* 09D650 8009CA50 1611FFFC */  bne   $s0, $s1, .L8009CA44
/* 09D654 8009CA54 00000000 */   nop   
/* 09D658 8009CA58 8FBF001C */  lw    $ra, 0x1c($sp)
/* 09D65C 8009CA5C 8FB00014 */  lw    $s0, 0x14($sp)
/* 09D660 8009CA60 8FB10018 */  lw    $s1, 0x18($sp)
/* 09D664 8009CA64 03E00008 */  jr    $ra
/* 09D668 8009CA68 27BD0020 */   addiu $sp, $sp, 0x20
