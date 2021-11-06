glabel func_800C1DA4
/* 0C29A4 800C1DA4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0C29A8 800C1DA8 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0C29AC 800C1DAC AFBE0028 */  sw    $fp, 0x28($sp)
/* 0C29B0 800C1DB0 AFA5003C */  sw    $a1, 0x3c($sp)
/* 0C29B4 800C1DB4 8CCE0000 */  lw    $t6, ($a2)
/* 0C29B8 800C1DB8 8CCF0008 */  lw    $t7, 8($a2)
/* 0C29BC 800C1DBC C4840000 */  lwc1  $f4, ($a0)
/* 0C29C0 800C1DC0 C4880008 */  lwc1  $f8, 8($a0)
/* 0C29C4 800C1DC4 C5C60000 */  lwc1  $f6, ($t6)
/* 0C29C8 800C1DC8 C5EA0000 */  lwc1  $f10, ($t7)
/* 0C29CC 800C1DCC 00C03825 */  move  $a3, $a2
/* 0C29D0 800C1DD0 46062301 */  sub.s $f12, $f4, $f6
/* 0C29D4 800C1DD4 94A60002 */  lhu   $a2, 2($a1)
/* 0C29D8 800C1DD8 03A0F025 */  move  $fp, $sp
/* 0C29DC 800C1DDC 460A4381 */  sub.s $f14, $f8, $f10
/* 0C29E0 800C1DE0 E7AC0034 */  swc1  $f12, 0x34($sp)
/* 0C29E4 800C1DE4 AFA70040 */  sw    $a3, 0x40($sp)
/* 0C29E8 800C1DE8 0C0105B6 */  jal   func_800416D8
/* 0C29EC 800C1DEC E7AE0030 */   swc1  $f14, 0x30($sp)
/* 0C29F0 800C1DF0 8FD90040 */  lw    $t9, 0x40($fp)
/* 0C29F4 800C1DF4 C7CC0034 */  lwc1  $f12, 0x34($fp)
/* 0C29F8 800C1DF8 C7CE0030 */  lwc1  $f14, 0x30($fp)
/* 0C29FC 800C1DFC E7200018 */  swc1  $f0, 0x18($t9)
/* 0C2A00 800C1E00 8FC8003C */  lw    $t0, 0x3c($fp)
/* 0C2A04 800C1E04 0C0105C9 */  jal   func_80041724
/* 0C2A08 800C1E08 95060002 */   lhu   $a2, 2($t0)
/* 0C2A0C 800C1E0C 8FC90040 */  lw    $t1, 0x40($fp)
/* 0C2A10 800C1E10 03C0E825 */  move  $sp, $fp
/* 0C2A14 800C1E14 E5200020 */  swc1  $f0, 0x20($t1)
/* 0C2A18 800C1E18 8FDF002C */  lw    $ra, 0x2c($fp)
/* 0C2A1C 800C1E1C 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0C2A20 800C1E20 27BD0038 */  addiu $sp, $sp, 0x38
/* 0C2A24 800C1E24 03E00008 */  jr    $ra
/* 0C2A28 800C1E28 00000000 */   nop   
