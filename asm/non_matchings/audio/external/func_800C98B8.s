glabel func_800C98B8
/* 0CA4B8 800C98B8 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 0CA4BC 800C98BC 3C0E800F */  lui   $t6, %hi(D_800EA108) # $t6, 0x800f
/* 0CA4C0 800C98C0 91CEA108 */  lbu   $t6, %lo(D_800EA108)($t6)
/* 0CA4C4 800C98C4 AFBE0058 */  sw    $fp, 0x58($sp)
/* 0CA4C8 800C98C8 AFB60050 */  sw    $s6, 0x50($sp)
/* 0CA4CC 800C98CC AFB5004C */  sw    $s5, 0x4c($sp)
/* 0CA4D0 800C98D0 AFB1003C */  sw    $s1, 0x3c($sp)
/* 0CA4D4 800C98D4 00C08825 */  move  $s1, $a2
/* 0CA4D8 800C98D8 0080A825 */  move  $s5, $a0
/* 0CA4DC 800C98DC 00A0B025 */  move  $s6, $a1
/* 0CA4E0 800C98E0 03A0F025 */  move  $fp, $sp
/* 0CA4E4 800C98E4 AFBF005C */  sw    $ra, 0x5c($sp)
/* 0CA4E8 800C98E8 AFB70054 */  sw    $s7, 0x54($sp)
/* 0CA4EC 800C98EC AFB40048 */  sw    $s4, 0x48($sp)
/* 0CA4F0 800C98F0 AFB30044 */  sw    $s3, 0x44($sp)
/* 0CA4F4 800C98F4 AFB20040 */  sw    $s2, 0x40($sp)
/* 0CA4F8 800C98F8 AFB00038 */  sw    $s0, 0x38($sp)
/* 0CA4FC 800C98FC 15C0002A */  bnez  $t6, .L800C99A8
/* 0CA500 800C9900 F7B40030 */   sdc1  $f20, 0x30($sp)
/* 0CA504 800C9904 3C0F800F */  lui   $t7, %hi(D_800EA0F0) # $t7, 0x800f
/* 0CA508 800C9908 91EFA0F0 */  lbu   $t7, %lo(D_800EA0F0)($t7)
/* 0CA50C 800C990C 3C17800F */  lui   $s7, %hi(D_800EA1C0) # $s7, 0x800f
/* 0CA510 800C9910 26F7A1C0 */  addiu $s7, %lo(D_800EA1C0) # addiu $s7, $s7, -0x5e40
/* 0CA514 800C9914 55E00025 */  bnel  $t7, $zero, .L800C99AC
/* 0CA518 800C9918 8FDF005C */   lw    $ra, 0x5c($fp)
/* 0CA51C 800C991C 92F80000 */  lbu   $t8, ($s7)
/* 0CA520 800C9920 00008025 */  move  $s0, $zero
/* 0CA524 800C9924 3C01432A */  li    $at, 0x432A0000 # 170.000000
/* 0CA528 800C9928 27190001 */  addiu $t9, $t8, 1
/* 0CA52C 800C992C 1B20001E */  blez  $t9, .L800C99A8
/* 0CA530 800C9930 3C14800F */   lui   $s4, %hi(D_800EA1DC) # $s4, 0x800f
/* 0CA534 800C9934 3C13800F */  lui   $s3, %hi(D_800EA1D4) # $s3, 0x800f
/* 0CA538 800C9938 3C12800F */  lui   $s2, %hi(D_800EA1C8) # $s2, 0x800f
/* 0CA53C 800C993C 4481A000 */  mtc1  $at, $f20
/* 0CA540 800C9940 2652A1C8 */  addiu $s2, %lo(D_800EA1C8) # addiu $s2, $s2, -0x5e38
/* 0CA544 800C9944 2673A1D4 */  addiu $s3, %lo(D_800EA1D4) # addiu $s3, $s3, -0x5e2c
/* 0CA548 800C9948 2694A1DC */  addiu $s4, %lo(D_800EA1DC) # addiu $s4, $s4, -0x5e24
.L800C994C:
/* 0CA54C 800C994C 00002025 */  move  $a0, $zero
/* 0CA550 800C9950 02A02825 */  move  $a1, $s5
/* 0CA554 800C9954 02C03025 */  move  $a2, $s6
/* 0CA558 800C9958 02403825 */  move  $a3, $s2
/* 0CA55C 800C995C AFB00010 */  sw    $s0, 0x10($sp)
/* 0CA560 800C9960 0C030722 */  jal   func_800C1C88
/* 0CA564 800C9964 AFB10014 */   sw    $s1, 0x14($sp)
/* 0CA568 800C9968 10400008 */  beqz  $v0, .L800C998C
/* 0CA56C 800C996C 02202025 */   move  $a0, $s1
/* 0CA570 800C9970 E4540034 */  swc1  $f20, 0x34($v0)
/* 0CA574 800C9974 AFB40014 */  sw    $s4, 0x14($sp)
/* 0CA578 800C9978 AFB30010 */  sw    $s3, 0x10($sp)
/* 0CA57C 800C997C 24450018 */  addiu $a1, $v0, 0x18
/* 0CA580 800C9980 320600FF */  andi  $a2, $s0, 0xff
/* 0CA584 800C9984 0C031052 */  jal   play_sound
/* 0CA588 800C9988 2447002C */   addiu $a3, $v0, 0x2c
.L800C998C:
/* 0CA58C 800C998C 92E90000 */  lbu   $t1, ($s7)
/* 0CA590 800C9990 26100001 */  addiu $s0, $s0, 1
/* 0CA594 800C9994 320800FF */  andi  $t0, $s0, 0xff
/* 0CA598 800C9998 252A0001 */  addiu $t2, $t1, 1
/* 0CA59C 800C999C 010A082A */  slt   $at, $t0, $t2
/* 0CA5A0 800C99A0 1420FFEA */  bnez  $at, .L800C994C
/* 0CA5A4 800C99A4 01008025 */   move  $s0, $t0
.L800C99A8:
/* 0CA5A8 800C99A8 8FDF005C */  lw    $ra, 0x5c($fp)
.L800C99AC:
/* 0CA5AC 800C99AC 03C0E825 */  move  $sp, $fp
/* 0CA5B0 800C99B0 D7D40030 */  ldc1  $f20, 0x30($fp)
/* 0CA5B4 800C99B4 8FD00038 */  lw    $s0, 0x38($fp)
/* 0CA5B8 800C99B8 8FD1003C */  lw    $s1, 0x3c($fp)
/* 0CA5BC 800C99BC 8FD20040 */  lw    $s2, 0x40($fp)
/* 0CA5C0 800C99C0 8FD30044 */  lw    $s3, 0x44($fp)
/* 0CA5C4 800C99C4 8FD40048 */  lw    $s4, 0x48($fp)
/* 0CA5C8 800C99C8 8FD5004C */  lw    $s5, 0x4c($fp)
/* 0CA5CC 800C99CC 8FD60050 */  lw    $s6, 0x50($fp)
/* 0CA5D0 800C99D0 8FD70054 */  lw    $s7, 0x54($fp)
/* 0CA5D4 800C99D4 8FDE0058 */  lw    $fp, 0x58($fp)
/* 0CA5D8 800C99D8 03E00008 */  jr    $ra
/* 0CA5DC 800C99DC 27BD0060 */   addiu $sp, $sp, 0x60
