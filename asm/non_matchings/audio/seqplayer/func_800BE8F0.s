glabel func_800BE8F0
/* 0BF4F0 800BE8F0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0BF4F4 800BE8F4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0BF4F8 800BE8F8 908E0000 */  lbu   $t6, ($a0)
/* 0BF4FC 800BE8FC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0BF500 800BE900 44810000 */  mtc1  $at, $f0
/* 0BF504 800BE904 31D8FF7F */  andi  $t8, $t6, 0xff7f
/* 0BF508 800BE908 330800BF */  andi  $t0, $t8, 0xbf
/* 0BF50C 800BE90C A0980000 */  sb    $t8, ($a0)
/* 0BF510 800BE910 310A00DF */  andi  $t2, $t0, 0xdf
/* 0BF514 800BE914 A0880000 */  sb    $t0, ($a0)
/* 0BF518 800BE918 314C00EF */  andi  $t4, $t2, 0xef
/* 0BF51C 800BE91C A08A0000 */  sb    $t2, ($a0)
/* 0BF520 800BE920 318E00F7 */  andi  $t6, $t4, 0xf7
/* 0BF524 800BE924 A08C0000 */  sb    $t4, ($a0)
/* 0BF528 800BE928 31D800FB */  andi  $t8, $t6, 0xfb
/* 0BF52C 800BE92C 24020800 */  li    $v0, 2048
/* 0BF530 800BE930 A08E0000 */  sb    $t6, ($a0)
/* 0BF534 800BE934 3C0C800F */  lui   $t4, %hi(gDefaultEnvelope) # $t4, 0x800f
/* 0BF538 800BE938 00802825 */  move  $a1, $a0
/* 0BF53C 800BE93C A0980000 */  sb    $t8, ($a0)
/* 0BF540 800BE940 331900FD */  andi  $t9, $t8, 0xfd
/* 0BF544 800BE944 240800FF */  li    $t0, 255
/* 0BF548 800BE948 24090040 */  li    $t1, 64
/* 0BF54C 800BE94C 240A0080 */  li    $t2, 128
/* 0BF550 800BE950 240B0003 */  li    $t3, 3
/* 0BF554 800BE954 258C6240 */  addiu $t4, %lo(gDefaultEnvelope) # addiu $t4, $t4, 0x6240
/* 0BF558 800BE958 240D0020 */  li    $t5, 32
/* 0BF55C 800BE95C A4820010 */  sh    $v0, 0x10($a0)
/* 0BF560 800BE960 A482000C */  sh    $v0, 0xc($a0)
/* 0BF564 800BE964 A480001E */  sh    $zero, 0x1e($a0)
/* 0BF568 800BE968 A0990000 */  sb    $t9, ($a0)
/* 0BF56C 800BE96C A0800008 */  sb    $zero, 8($a0)
/* 0BF570 800BE970 A0880001 */  sb    $t0, 1($a0)
/* 0BF574 800BE974 A0800078 */  sb    $zero, 0x78($a0)
/* 0BF578 800BE978 A0890009 */  sb    $t1, 9($a0)
/* 0BF57C 800BE97C A08A000A */  sb    $t2, 0xa($a0)
/* 0BF580 800BE980 AC800038 */  sw    $zero, 0x38($a0)
/* 0BF584 800BE984 A0800007 */  sb    $zero, 7($a0)
/* 0BF588 800BE988 A0800004 */  sb    $zero, 4($a0)
/* 0BF58C 800BE98C A08B0005 */  sb    $t3, 5($a0)
/* 0BF590 800BE990 A480001A */  sh    $zero, 0x1a($a0)
/* 0BF594 800BE994 AC8C0080 */  sw    $t4, 0x80($a0)
/* 0BF598 800BE998 A08D007C */  sb    $t5, 0x7c($a0)
/* 0BF59C 800BE99C A080007D */  sb    $zero, 0x7d($a0)
/* 0BF5A0 800BE9A0 A4800012 */  sh    $zero, 0x12($a0)
/* 0BF5A4 800BE9A4 A480000E */  sh    $zero, 0xe($a0)
/* 0BF5A8 800BE9A8 A4800014 */  sh    $zero, 0x14($a0)
/* 0BF5AC 800BE9AC A4800016 */  sh    $zero, 0x16($a0)
/* 0BF5B0 800BE9B0 A4800018 */  sh    $zero, 0x18($a0)
/* 0BF5B4 800BE9B4 E4800024 */  swc1  $f0, 0x24($a0)
/* 0BF5B8 800BE9B8 E4800020 */  swc1  $f0, 0x20($a0)
/* 0BF5BC 800BE9BC E4800030 */  swc1  $f0, 0x30($a0)
/* 0BF5C0 800BE9C0 00002025 */  move  $a0, $zero
/* 0BF5C4 800BE9C4 2402FFFF */  li    $v0, -1
/* 0BF5C8 800BE9C8 00A01825 */  move  $v1, $a1
/* 0BF5CC 800BE9CC 24060008 */  li    $a2, 8
.L800BE9D0:
/* 0BF5D0 800BE9D0 24840004 */  addiu $a0, $a0, 4
/* 0BF5D4 800BE9D4 A0620059 */  sb    $v0, 0x59($v1)
/* 0BF5D8 800BE9D8 A062005A */  sb    $v0, 0x5a($v1)
/* 0BF5DC 800BE9DC A062005B */  sb    $v0, 0x5b($v1)
/* 0BF5E0 800BE9E0 24630004 */  addiu $v1, $v1, 4
/* 0BF5E4 800BE9E4 1486FFFA */  bne   $a0, $a2, .L800BE9D0
/* 0BF5E8 800BE9E8 A0620054 */   sb    $v0, 0x54($v1)
/* 0BF5EC 800BE9EC 90AE0000 */  lbu   $t6, ($a1)
/* 0BF5F0 800BE9F0 24A40084 */  addiu $a0, $a1, 0x84
/* 0BF5F4 800BE9F4 31CFFFFE */  andi  $t7, $t6, 0xfffe
/* 0BF5F8 800BE9F8 0C02F4C6 */  jal   func_800BD318
/* 0BF5FC 800BE9FC A0AF0000 */   sb    $t7, ($a1)
/* 0BF600 800BEA00 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0BF604 800BEA04 27BD0018 */  addiu $sp, $sp, 0x18
/* 0BF608 800BEA08 03E00008 */  jr    $ra
/* 0BF60C 800BEA0C 00000000 */   nop   
