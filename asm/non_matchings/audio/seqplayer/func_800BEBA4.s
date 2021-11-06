glabel func_800BEBA4
/* 0BF7A4 800BEBA4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0BF7A8 800BEBA8 AFB20020 */  sw    $s2, 0x20($sp)
/* 0BF7AC 800BEBAC AFB1001C */  sw    $s1, 0x1c($sp)
/* 0BF7B0 800BEBB0 AFB00018 */  sw    $s0, 0x18($sp)
/* 0BF7B4 800BEBB4 00808825 */  move  $s1, $a0
/* 0BF7B8 800BEBB8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0BF7BC 800BEBBC 00008025 */  move  $s0, $zero
/* 0BF7C0 800BEBC0 24120004 */  li    $s2, 4
/* 0BF7C4 800BEBC4 02202025 */  move  $a0, $s1
.L800BEBC8:
/* 0BF7C8 800BEBC8 0C02FAD5 */  jal   func_800BEB54
/* 0BF7CC 800BEBCC 02002825 */   move  $a1, $s0
/* 0BF7D0 800BEBD0 26100001 */  addiu $s0, $s0, 1
/* 0BF7D4 800BEBD4 5612FFFC */  bnel  $s0, $s2, .L800BEBC8
/* 0BF7D8 800BEBD8 02202025 */   move  $a0, $s1
/* 0BF7DC 800BEBDC 0C02F506 */  jal   func_800BD418
/* 0BF7E0 800BEBE0 26240084 */   addiu $a0, $s1, 0x84
/* 0BF7E4 800BEBE4 922E0000 */  lbu   $t6, ($s1)
/* 0BF7E8 800BEBE8 31D9FF7F */  andi  $t9, $t6, 0xff7f
/* 0BF7EC 800BEBEC A2390000 */  sb    $t9, ($s1)
/* 0BF7F0 800BEBF0 37280040 */  ori   $t0, $t9, 0x40
/* 0BF7F4 800BEBF4 A2280000 */  sb    $t0, ($s1)
/* 0BF7F8 800BEBF8 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0BF7FC 800BEBFC 8FB20020 */  lw    $s2, 0x20($sp)
/* 0BF800 800BEC00 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0BF804 800BEC04 8FB00018 */  lw    $s0, 0x18($sp)
/* 0BF808 800BEC08 03E00008 */  jr    $ra
/* 0BF80C 800BEC0C 27BD0028 */   addiu $sp, $sp, 0x28
