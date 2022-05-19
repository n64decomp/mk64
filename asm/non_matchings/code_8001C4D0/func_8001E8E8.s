glabel func_8001E8E8
/* 01F4E8 8001E8E8 27BDFF58 */  addiu $sp, $sp, -0xa8
/* 01F4EC 8001E8EC AFBF002C */  sw    $ra, 0x2c($sp)
/* 01F4F0 8001E8F0 AFB00028 */  sw    $s0, 0x28($sp)
/* 01F4F4 8001E8F4 AFA500AC */  sw    $a1, 0xac($sp)
/* 01F4F8 8001E8F8 AFA600B0 */  sw    $a2, 0xb0($sp)
/* 01F4FC 8001E8FC A48000B0 */  sh    $zero, 0xb0($a0)
/* 01F500 8001E900 8FAE00AC */  lw    $t6, 0xac($sp)
/* 01F504 8001E904 00808025 */  move  $s0, $a0
/* 01F508 8001E908 27B90078 */  addiu $t9, $sp, 0x78
/* 01F50C 8001E90C 85CF002E */  lh    $t7, 0x2e($t6)
/* 01F510 8001E910 27A80074 */  addiu $t0, $sp, 0x74
/* 01F514 8001E914 02002825 */  move  $a1, $s0
/* 01F518 8001E918 A48F002C */  sh    $t7, 0x2c($a0)
/* 01F51C 8001E91C 8FA400AC */  lw    $a0, 0xac($sp)
/* 01F520 8001E920 AFA80014 */  sw    $t0, 0x14($sp)
/* 01F524 8001E924 AFB90010 */  sw    $t9, 0x10($sp)
/* 01F528 8001E928 83AA00B3 */  lb    $t2, 0xb3($sp)
/* 01F52C 8001E92C 8489002E */  lh    $t1, 0x2e($a0)
/* 01F530 8001E930 27A6005C */  addiu $a2, $sp, 0x5c
/* 01F534 8001E934 27A7007C */  addiu $a3, $sp, 0x7c
/* 01F538 8001E938 AFAA001C */  sw    $t2, 0x1c($sp)
/* 01F53C 8001E93C 0C00754F */  jal   func_8001D53C
/* 01F540 8001E940 AFA90018 */   sw    $t1, 0x18($sp)
/* 01F544 8001E944 C7A40074 */  lwc1  $f4, 0x74($sp)
/* 01F548 8001E948 26040054 */  addiu $a0, $s0, 0x54
/* 01F54C 8001E94C 3C0540A0 */  lui   $a1, 0x40a0
/* 01F550 8001E950 8FA6007C */  lw    $a2, 0x7c($sp)
/* 01F554 8001E954 8FA70078 */  lw    $a3, 0x78($sp)
/* 01F558 8001E958 0C0AB772 */  jal   func_802ADDC8
/* 01F55C 8001E95C E7A40010 */   swc1  $f4, 0x10($sp)
/* 01F560 8001E960 C7A6005C */  lwc1  $f6, 0x5c($sp)
/* 01F564 8001E964 E606000C */  swc1  $f6, 0xc($s0)
/* 01F568 8001E968 C7A80060 */  lwc1  $f8, 0x60($sp)
/* 01F56C 8001E96C C606000C */  lwc1  $f6, 0xc($s0)
/* 01F570 8001E970 E6080010 */  swc1  $f8, 0x10($s0)
/* 01F574 8001E974 C7AA0064 */  lwc1  $f10, 0x64($sp)
/* 01F578 8001E978 E60A0014 */  swc1  $f10, 0x14($s0)
/* 01F57C 8001E97C C7B0007C */  lwc1  $f16, 0x7c($sp)
/* 01F580 8001E980 C60A0010 */  lwc1  $f10, 0x10($s0)
/* 01F584 8001E984 E6100000 */  swc1  $f16, ($s0)
/* 01F588 8001E988 C7B20078 */  lwc1  $f18, 0x78($sp)
/* 01F58C 8001E98C C6080000 */  lwc1  $f8, ($s0)
/* 01F590 8001E990 E6120004 */  swc1  $f18, 4($s0)
/* 01F594 8001E994 C6100004 */  lwc1  $f16, 4($s0)
/* 01F598 8001E998 C7A40074 */  lwc1  $f4, 0x74($sp)
/* 01F59C 8001E99C 46083301 */  sub.s $f12, $f6, $f8
/* 01F5A0 8001E9A0 E6040008 */  swc1  $f4, 8($s0)
/* 01F5A4 8001E9A4 46105481 */  sub.s $f18, $f10, $f16
/* 01F5A8 8001E9A8 E7B20088 */  swc1  $f18, 0x88($sp)
/* 01F5AC 8001E9AC C6060008 */  lwc1  $f6, 8($s0)
/* 01F5B0 8001E9B0 C6040014 */  lwc1  $f4, 0x14($s0)
/* 01F5B4 8001E9B4 E7AC008C */  swc1  $f12, 0x8c($sp)
/* 01F5B8 8001E9B8 46062381 */  sub.s $f14, $f4, $f6
/* 01F5BC 8001E9BC 0C0ADE0C */  jal   atan2s
/* 01F5C0 8001E9C0 E7AE0084 */   swc1  $f14, 0x84($sp)
/* 01F5C4 8001E9C4 C7A0008C */  lwc1  $f0, 0x8c($sp)
/* 01F5C8 8001E9C8 C7AE0084 */  lwc1  $f14, 0x84($sp)
/* 01F5CC 8001E9CC A6020026 */  sh    $v0, 0x26($s0)
/* 01F5D0 8001E9D0 46000202 */  mul.s $f8, $f0, $f0
/* 01F5D4 8001E9D4 00000000 */  nop   
/* 01F5D8 8001E9D8 460E7282 */  mul.s $f10, $f14, $f14
/* 01F5DC 8001E9DC 0C033850 */  jal   sqrtf
/* 01F5E0 8001E9E0 460A4300 */   add.s $f12, $f8, $f10
/* 01F5E4 8001E9E4 46000306 */  mov.s $f12, $f0
/* 01F5E8 8001E9E8 0C0ADE0C */  jal   atan2s
/* 01F5EC 8001E9EC C7AE0088 */   lwc1  $f14, 0x88($sp)
/* 01F5F0 8001E9F0 A6020024 */  sh    $v0, 0x24($s0)
/* 01F5F4 8001E9F4 A6000028 */  sh    $zero, 0x28($s0)
/* 01F5F8 8001E9F8 8FBF002C */  lw    $ra, 0x2c($sp)
/* 01F5FC 8001E9FC 8FB00028 */  lw    $s0, 0x28($sp)
/* 01F600 8001EA00 27BD00A8 */  addiu $sp, $sp, 0xa8
/* 01F604 8001EA04 03E00008 */  jr    $ra
/* 01F608 8001EA08 00000000 */   nop   
