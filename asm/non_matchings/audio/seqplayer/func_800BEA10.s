glabel func_800BEA10
/* 0BF610 800BEA10 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0BF614 800BEA14 00057880 */  sll   $t7, $a1, 2
/* 0BF618 800BEA18 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0BF61C 800BEA1C AFA40028 */  sw    $a0, 0x28($sp)
/* 0BF620 800BEA20 008F3021 */  addu  $a2, $a0, $t7
/* 0BF624 800BEA24 8CC70048 */  lw    $a3, 0x48($a2)
/* 0BF628 800BEA28 14E0000B */  bnez  $a3, .L800BEA58
/* 0BF62C 800BEA2C 00E02025 */   move  $a0, $a3
/* 0BF630 800BEA30 3C04803B */  lui   $a0, %hi(D_803B5FB8) # $a0, 0x803b
/* 0BF634 800BEA34 24845FB8 */  addiu $a0, %lo(D_803B5FB8) # addiu $a0, $a0, 0x5fb8
/* 0BF638 800BEA38 0C02FC11 */  jal   func_800BF044
/* 0BF63C 800BEA3C AFA6001C */   sw    $a2, 0x1c($sp)
/* 0BF640 800BEA40 8FA6001C */  lw    $a2, 0x1c($sp)
/* 0BF644 800BEA44 14400007 */  bnez  $v0, .L800BEA64
/* 0BF648 800BEA48 ACC20048 */   sw    $v0, 0x48($a2)
/* 0BF64C 800BEA4C ACC00048 */  sw    $zero, 0x48($a2)
/* 0BF650 800BEA50 1000002D */  b     .L800BEB08
/* 0BF654 800BEA54 2402FFFF */   li    $v0, -1
.L800BEA58:
/* 0BF658 800BEA58 0C02F448 */  jal   func_800BD120
/* 0BF65C 800BEA5C AFA6001C */   sw    $a2, 0x1c($sp)
/* 0BF660 800BEA60 8FA6001C */  lw    $a2, 0x1c($sp)
.L800BEA64:
/* 0BF664 800BEA64 8CC30048 */  lw    $v1, 0x48($a2)
/* 0BF668 800BEA68 8FB80028 */  lw    $t8, 0x28($sp)
/* 0BF66C 800BEA6C 44803000 */  mtc1  $zero, $f6
/* 0BF670 800BEA70 906B0000 */  lbu   $t3, ($v1)
/* 0BF674 800BEA74 AC78004C */  sw    $t8, 0x4c($v1)
/* 0BF678 800BEA78 8FB90028 */  lw    $t9, 0x28($sp)
/* 0BF67C 800BEA7C 356D0080 */  ori   $t5, $t3, 0x80
/* 0BF680 800BEA80 31AF00DF */  andi  $t7, $t5, 0xdf
/* 0BF684 800BEA84 8F21007C */  lw    $at, 0x7c($t9)
/* 0BF688 800BEA88 31E800EF */  andi  $t0, $t7, 0xef
/* 0BF68C 800BEA8C 240B0080 */  li    $t3, 128
/* 0BF690 800BEA90 AC610018 */  sw    $at, 0x18($v1)
/* 0BF694 800BEA94 8F290080 */  lw    $t1, 0x80($t9)
/* 0BF698 800BEA98 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0BF69C 800BEA9C A06D0000 */  sb    $t5, ($v1)
/* 0BF6A0 800BEAA0 AC69001C */  sw    $t1, 0x1c($v1)
/* 0BF6A4 800BEAA4 44812000 */  mtc1  $at, $f4
/* 0BF6A8 800BEAA8 310900BF */  andi  $t1, $t0, 0xbf
/* 0BF6AC 800BEAAC A06F0000 */  sb    $t7, ($v1)
/* 0BF6B0 800BEAB0 A0680000 */  sb    $t0, ($v1)
/* 0BF6B4 800BEAB4 312A00FD */  andi  $t2, $t1, 0xfd
/* 0BF6B8 800BEAB8 240C0040 */  li    $t4, 64
/* 0BF6BC 800BEABC 240D00FF */  li    $t5, 255
/* 0BF6C0 800BEAC0 A0690000 */  sb    $t1, ($v1)
/* 0BF6C4 800BEAC4 00001025 */  move  $v0, $zero
/* 0BF6C8 800BEAC8 A0600018 */  sb    $zero, 0x18($v1)
/* 0BF6CC 800BEACC A06A0000 */  sb    $t2, ($v1)
/* 0BF6D0 800BEAD0 A0600008 */  sb    $zero, 8($v1)
/* 0BF6D4 800BEAD4 A0600068 */  sb    $zero, 0x68($v1)
/* 0BF6D8 800BEAD8 A0600002 */  sb    $zero, 2($v1)
/* 0BF6DC 800BEADC A06B0003 */  sb    $t3, 3($v1)
/* 0BF6E0 800BEAE0 A06C0005 */  sb    $t4, 5($v1)
/* 0BF6E4 800BEAE4 A4600022 */  sh    $zero, 0x22($v1)
/* 0BF6E8 800BEAE8 A4600038 */  sh    $zero, 0x38($v1)
/* 0BF6EC 800BEAEC A460003A */  sh    $zero, 0x3a($v1)
/* 0BF6F0 800BEAF0 A460003C */  sh    $zero, 0x3c($v1)
/* 0BF6F4 800BEAF4 AC600040 */  sw    $zero, 0x40($v1)
/* 0BF6F8 800BEAF8 AC600044 */  sw    $zero, 0x44($v1)
/* 0BF6FC 800BEAFC A06D0001 */  sb    $t5, 1($v1)
/* 0BF700 800BEB00 E4660028 */  swc1  $f6, 0x28($v1)
/* 0BF704 800BEB04 E4640024 */  swc1  $f4, 0x24($v1)
.L800BEB08:
/* 0BF708 800BEB08 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0BF70C 800BEB0C 27BD0028 */  addiu $sp, $sp, 0x28
/* 0BF710 800BEB10 03E00008 */  jr    $ra
/* 0BF714 800BEB14 00000000 */   nop   
