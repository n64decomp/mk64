glabel func_8002AA50
/* 02B650 8002AA50 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 02B654 8002AA54 AFBF0014 */  sw    $ra, 0x14($sp)
/* 02B658 8002AA58 94820254 */  lhu   $v0, 0x254($a0)
/* 02B65C 8002AA5C 3C01800E */  lui   $at, %hi(gKartHopJerkTable)
/* 02B660 8002AA60 44803000 */  mtc1  $zero, $f6
/* 02B664 8002AA64 00027080 */  sll   $t6, $v0, 2
/* 02B668 8002AA68 002E0821 */  addu  $at, $at, $t6
/* 02B66C 8002AA6C C42436F0 */  lwc1  $f4, %lo(gKartHopJerkTable)($at)
/* 02B670 8002AA70 3C01800E */  lui   $at, %hi(gKartHopInitialVelocityTable)
/* 02B674 8002AA74 002E0821 */  addu  $at, $at, $t6
/* 02B678 8002AA78 E48600F4 */  swc1  $f6, 0xf4($a0)
/* 02B67C 8002AA7C E48400F0 */  swc1  $f4, 0xf0($a0)
/* 02B680 8002AA80 C42836D0 */  lwc1  $f8, %lo(gKartHopInitialVelocityTable)($at)
/* 02B684 8002AA84 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 02B688 8002AA88 8C8F00BC */  lw    $t7, 0xbc($a0)
/* 02B68C 8002AA8C 44815000 */  mtc1  $at, $f10
/* 02B690 8002AA90 3C0143FA */  li    $at, 0x43FA0000 # 500.000000
/* 02B694 8002AA94 44818000 */  mtc1  $at, $f16
/* 02B698 8002AA98 35F80002 */  ori   $t8, $t7, 2
/* 02B69C 8002AA9C AC9800BC */  sw    $t8, 0xbc($a0)
/* 02B6A0 8002AAA0 E48800EC */  swc1  $f8, 0xec($a0)
/* 02B6A4 8002AAA4 E48A0DAC */  swc1  $f10, 0xdac($a0)
/* 02B6A8 8002AAA8 0C00DB17 */  jal   func_80036C5C
/* 02B6AC 8002AAAC E4900100 */   swc1  $f16, 0x100($a0)
/* 02B6B0 8002AAB0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 02B6B4 8002AAB4 27BD0018 */  addiu $sp, $sp, 0x18
/* 02B6B8 8002AAB8 03E00008 */  jr    $ra
/* 02B6BC 8002AABC 00000000 */   nop   
