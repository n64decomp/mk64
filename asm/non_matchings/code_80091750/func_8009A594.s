glabel func_8009A594
/* 09B194 8009A594 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 09B198 8009A598 AFBF001C */  sw    $ra, 0x1c($sp)
/* 09B19C 8009A59C AFA40020 */  sw    $a0, 0x20($sp)
/* 09B1A0 8009A5A0 AFB00018 */  sw    $s0, 0x18($sp)
/* 09B1A4 8009A5A4 00C02025 */  move  $a0, $a2
/* 09B1A8 8009A5A8 0C026455 */  jal   segmented_to_virtual_dupe
/* 09B1AC 8009A5AC AFA50024 */   sw    $a1, 0x24($sp)
/* 09B1B0 8009A5B0 8FAE0020 */  lw    $t6, 0x20($sp)
/* 09B1B4 8009A5B4 8FA50024 */  lw    $a1, 0x24($sp)
/* 09B1B8 8009A5B8 3C188019 */  lui   $t8, %hi(D_8018DEE0) # $t8, 0x8019
/* 09B1BC 8009A5BC 000E7880 */  sll   $t7, $t6, 2
/* 09B1C0 8009A5C0 01EE7823 */  subu  $t7, $t7, $t6
/* 09B1C4 8009A5C4 000F78C0 */  sll   $t7, $t7, 3
/* 09B1C8 8009A5C8 2718DEE0 */  addiu $t8, %lo(D_8018DEE0) # addiu $t8, $t8, -0x2120
/* 09B1CC 8009A5CC 01F88021 */  addu  $s0, $t7, $t8
/* 09B1D0 8009A5D0 0005C8C0 */  sll   $t9, $a1, 3
/* 09B1D4 8009A5D4 AE020000 */  sw    $v0, ($s0)
/* 09B1D8 8009A5D8 03224021 */  addu  $t0, $t9, $v0
/* 09B1DC 8009A5DC AE050004 */  sw    $a1, 4($s0)
/* 09B1E0 8009A5E0 8D090004 */  lw    $t1, 4($t0)
/* 09B1E4 8009A5E4 000550C0 */  sll   $t2, $a1, 3
/* 09B1E8 8009A5E8 004A5821 */  addu  $t3, $v0, $t2
/* 09B1EC 8009A5EC AE090008 */  sw    $t1, 8($s0)
/* 09B1F0 8009A5F0 0C026449 */  jal   segmented_to_virtual
/* 09B1F4 8009A5F4 8D640000 */   lw    $a0, ($t3)
/* 09B1F8 8009A5F8 8E0C0014 */  lw    $t4, 0x14($s0)
/* 09B1FC 8009A5FC 00402025 */  move  $a0, $v0
/* 09B200 8009A600 51800006 */  beql  $t4, $zero, .L8009A61C
/* 09B204 8009A604 8E050010 */   lw    $a1, 0x10($s0)
/* 09B208 8009A608 0C0266A5 */  jal   func_80099A94
/* 09B20C 8009A60C 8E050010 */   lw    $a1, 0x10($s0)
/* 09B210 8009A610 10000006 */  b     .L8009A62C
/* 09B214 8009A614 AE000014 */   sw    $zero, 0x14($s0)
/* 09B218 8009A618 8E050010 */  lw    $a1, 0x10($s0)
.L8009A61C:
/* 09B21C 8009A61C 0C0266A5 */  jal   func_80099A94
/* 09B220 8009A620 24A50001 */   addiu $a1, $a1, 1
/* 09B224 8009A624 240D0001 */  li    $t5, 1
/* 09B228 8009A628 AE0D0014 */  sw    $t5, 0x14($s0)
.L8009A62C:
/* 09B22C 8009A62C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 09B230 8009A630 8FB00018 */  lw    $s0, 0x18($sp)
/* 09B234 8009A634 27BD0020 */  addiu $sp, $sp, 0x20
/* 09B238 8009A638 03E00008 */  jr    $ra
/* 09B23C 8009A63C 00000000 */   nop   
