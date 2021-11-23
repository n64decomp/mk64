glabel func_8008E8D8
/* 08F4D8 8008E8D8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 08F4DC 8008E8DC AFBF0014 */  sw    $ra, 0x14($sp)
/* 08F4E0 8008E8E0 AFA5001C */  sw    $a1, 0x1c($sp)
/* 08F4E4 8008E8E4 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 08F4E8 8008E8E8 44813000 */  mtc1  $at, $f6
/* 08F4EC 8008E8EC C484008C */  lwc1  $f4, 0x8c($a0)
/* 08F4F0 8008E8F0 8C8900BC */  lw    $t1, 0xbc($a0)
/* 08F4F4 8008E8F4 84990042 */  lh    $t9, 0x42($a0)
/* 08F4F8 8008E8F8 46062203 */  div.s $f8, $f4, $f6
/* 08F4FC 8008E8FC 2401FF3F */  li    $at, -193
/* 08F500 8008E900 01215024 */  and   $t2, $t1, $at
/* 08F504 8008E904 44805000 */  mtc1  $zero, $f10
/* 08F508 8008E908 00057600 */  sll   $t6, $a1, 0x18
/* 08F50C 8008E90C 27280AAA */  addiu $t0, $t9, 0xaaa
/* 08F510 8008E910 000E2E03 */  sra   $a1, $t6, 0x18
/* 08F514 8008E914 2418000F */  li    $t8, 15
/* 08F518 8008E918 A4880042 */  sh    $t0, 0x42($a0)
/* 08F51C 8008E91C 314C0008 */  andi  $t4, $t2, 8
/* 08F520 8008E920 24010008 */  li    $at, 8
/* 08F524 8008E924 3C098016 */  lui   $t1, %hi(D_80165190) # $t1, 0x8016
/* 08F528 8008E928 A4800206 */  sh    $zero, 0x206($a0)
/* 08F52C 8008E92C A48000C4 */  sh    $zero, 0xc4($a0)
/* 08F530 8008E930 A48000C0 */  sh    $zero, 0xc0($a0)
/* 08F534 8008E934 AC80007C */  sw    $zero, 0x7c($a0)
/* 08F538 8008E938 A49800C2 */  sh    $t8, 0xc2($a0)
/* 08F53C 8008E93C AC8A00BC */  sw    $t2, 0xbc($a0)
/* 08F540 8008E940 24030001 */  li    $v1, 1
/* 08F544 8008E944 25295190 */  addiu $t1, %lo(D_80165190) # addiu $t1, $t1, 0x5190
/* 08F548 8008E948 00054040 */  sll   $t0, $a1, 1
/* 08F54C 8008E94C E48A009C */  swc1  $f10, 0x9c($a0)
/* 08F550 8008E950 11810004 */  beq   $t4, $at, .L8008E964
/* 08F554 8008E954 E488008C */   swc1  $f8, 0x8c($a0)
/* 08F558 8008E958 848D00E0 */  lh    $t5, 0xe0($a0)
/* 08F55C 8008E95C 25AE0001 */  addiu $t6, $t5, 1
/* 08F560 8008E960 A48E00E0 */  sh    $t6, 0xe0($a0)
.L8008E964:
/* 08F564 8008E964 848F00E0 */  lh    $t7, 0xe0($a0)
/* 08F568 8008E968 24010004 */  li    $at, 4
/* 08F56C 8008E96C 01091021 */  addu  $v0, $t0, $t1
/* 08F570 8008E970 15E10024 */  bne   $t7, $at, .L8008EA04
/* 08F574 8008E974 00055080 */   sll   $t2, $a1, 2
/* 08F578 8008E978 8C9800BC */  lw    $t8, 0xbc($a0)
/* 08F57C 8008E97C 3C01FDFF */  lui   $at, (0xFDFFFFFF >> 16) # lui $at, 0xfdff
/* 08F580 8008E980 3421FFFF */  ori   $at, (0xFDFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 08F584 8008E984 0301C824 */  and   $t9, $t8, $at
/* 08F588 8008E988 AC9900BC */  sw    $t9, 0xbc($a0)
/* 08F58C 8008E98C A48000A8 */  sh    $zero, 0xa8($a0)
/* 08F590 8008E990 A4800236 */  sh    $zero, 0x236($a0)
/* 08F594 8008E994 A4430030 */  sh    $v1, 0x30($v0)
/* 08F598 8008E998 A4430000 */  sh    $v1, ($v0)
/* 08F59C 8008E99C A4430010 */  sh    $v1, 0x10($v0)
/* 08F5A0 8008E9A0 A4430020 */  sh    $v1, 0x20($v0)
/* 08F5A4 8008E9A4 3C0B8016 */  lui   $t3, %hi(D_80165460) # 0x8016
/* 08F5A8 8008E9A8 A4800042 */  sh    $zero, 0x42($a0)
/* 08F5AC 8008E9AC 016A5821 */  addu  $t3, $t3, $t2
/* 08F5B0 8008E9B0 8D6B5460 */  lw    $t3, %lo(D_80165460)($t3) # 0x5460($t3)
/* 08F5B4 8008E9B4 3C0E800E */  lui   $t6, %hi(gModeSelection) # $t6, 0x800e
/* 08F5B8 8008E9B8 146B000A */  bne   $v1, $t3, .L8008E9E4
/* 08F5BC 8008E9BC 00000000 */   nop   
/* 08F5C0 8008E9C0 948C0000 */  lhu   $t4, ($a0)
/* 08F5C4 8008E9C4 24014000 */  li    $at, 16384
/* 08F5C8 8008E9C8 318D4000 */  andi  $t5, $t4, 0x4000
/* 08F5CC 8008E9CC 15A10005 */  bne   $t5, $at, .L8008E9E4
/* 08F5D0 8008E9D0 3C0142C8 */   li    $at, 0x42C80000 # 100.000000
/* 08F5D4 8008E9D4 44819000 */  mtc1  $at, $f18
/* 08F5D8 8008E9D8 C490009C */  lwc1  $f16, 0x9c($a0)
/* 08F5DC 8008E9DC 46128100 */  add.s $f4, $f16, $f18
/* 08F5E0 8008E9E0 E484009C */  swc1  $f4, 0x9c($a0)
.L8008E9E4:
/* 08F5E4 8008E9E4 8DCEC53C */  lw    $t6, %lo(gModeSelection)($t6)
/* 08F5E8 8008E9E8 24010003 */  li    $at, 3
/* 08F5EC 8008E9EC 55C10039 */  bnel  $t6, $at, .L8008EAD4
/* 08F5F0 8008E9F0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 08F5F4 8008E9F4 0C01AE2D */  jal   func_8006B8B4
/* 08F5F8 8008E9F8 00000000 */   nop   
/* 08F5FC 8008E9FC 10000035 */  b     .L8008EAD4
/* 08F600 8008EA00 8FBF0014 */   lw    $ra, 0x14($sp)
.L8008EA04:
/* 08F604 8008EA04 848F00A8 */  lh    $t7, 0xa8($a0)
/* 08F608 8008EA08 25F80090 */  addiu $t8, $t7, 0x90
/* 08F60C 8008EA0C A49800A8 */  sh    $t8, 0xa8($a0)
/* 08F610 8008EA10 849900A8 */  lh    $t9, 0xa8($a0)
/* 08F614 8008EA14 2B212000 */  slti  $at, $t9, 0x2000
/* 08F618 8008EA18 5420002E */  bnel  $at, $zero, .L8008EAD4
/* 08F61C 8008EA1C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 08F620 8008EA20 84880236 */  lh    $t0, 0x236($a0)
/* 08F624 8008EA24 3C01FDFF */  lui   $at, (0xFDFFFFFF >> 16) # lui $at, 0xfdff
/* 08F628 8008EA28 A48000A8 */  sh    $zero, 0xa8($a0)
/* 08F62C 8008EA2C 2509FFFF */  addiu $t1, $t0, -1
/* 08F630 8008EA30 A4890236 */  sh    $t1, 0x236($a0)
/* 08F634 8008EA34 848A0236 */  lh    $t2, 0x236($a0)
/* 08F638 8008EA38 24030001 */  li    $v1, 1
/* 08F63C 8008EA3C 3421FFFF */  ori   $at, (0xFDFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 08F640 8008EA40 15400023 */  bnez  $t2, .L8008EAD0
/* 08F644 8008EA44 00056840 */   sll   $t5, $a1, 1
/* 08F648 8008EA48 8C8B00BC */  lw    $t3, 0xbc($a0)
/* 08F64C 8008EA4C 3C0E8016 */  lui   $t6, %hi(D_80165190) # $t6, 0x8016
/* 08F650 8008EA50 25CE5190 */  addiu $t6, %lo(D_80165190) # addiu $t6, $t6, 0x5190
/* 08F654 8008EA54 01616024 */  and   $t4, $t3, $at
/* 08F658 8008EA58 AC8C00BC */  sw    $t4, 0xbc($a0)
/* 08F65C 8008EA5C A4800236 */  sh    $zero, 0x236($a0)
/* 08F660 8008EA60 01AE1021 */  addu  $v0, $t5, $t6
/* 08F664 8008EA64 A4430000 */  sh    $v1, ($v0)
/* 08F668 8008EA68 A4430010 */  sh    $v1, 0x10($v0)
/* 08F66C 8008EA6C A4430020 */  sh    $v1, 0x20($v0)
/* 08F670 8008EA70 A4430030 */  sh    $v1, 0x30($v0)
/* 08F674 8008EA74 00057880 */  sll   $t7, $a1, 2
/* 08F678 8008EA78 3C188016 */  lui   $t8, %hi(D_80165460) # 0x8016
/* 08F67C 8008EA7C A4800042 */  sh    $zero, 0x42($a0)
/* 08F680 8008EA80 030FC021 */  addu  $t8, $t8, $t7
/* 08F684 8008EA84 8F185460 */  lw    $t8, %lo(D_80165460)($t8) # 0x5460($t8)
/* 08F688 8008EA88 3C09800E */  lui   $t1, %hi(gModeSelection) # $t1, 0x800e
/* 08F68C 8008EA8C 1478000A */  bne   $v1, $t8, .L8008EAB8
/* 08F690 8008EA90 00000000 */   nop   
/* 08F694 8008EA94 94990000 */  lhu   $t9, ($a0)
/* 08F698 8008EA98 24014000 */  li    $at, 16384
/* 08F69C 8008EA9C 33284000 */  andi  $t0, $t9, 0x4000
/* 08F6A0 8008EAA0 15010005 */  bne   $t0, $at, .L8008EAB8
/* 08F6A4 8008EAA4 3C0142C8 */   li    $at, 0x42C80000 # 100.000000
/* 08F6A8 8008EAA8 44814000 */  mtc1  $at, $f8
/* 08F6AC 8008EAAC C486009C */  lwc1  $f6, 0x9c($a0)
/* 08F6B0 8008EAB0 46083280 */  add.s $f10, $f6, $f8
/* 08F6B4 8008EAB4 E48A009C */  swc1  $f10, 0x9c($a0)
.L8008EAB8:
/* 08F6B8 8008EAB8 8D29C53C */  lw    $t1, %lo(gModeSelection)($t1)
/* 08F6BC 8008EABC 24010003 */  li    $at, 3
/* 08F6C0 8008EAC0 55210004 */  bnel  $t1, $at, .L8008EAD4
/* 08F6C4 8008EAC4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 08F6C8 8008EAC8 0C01AE2D */  jal   func_8006B8B4
/* 08F6CC 8008EACC 00000000 */   nop   
.L8008EAD0:
/* 08F6D0 8008EAD0 8FBF0014 */  lw    $ra, 0x14($sp)
.L8008EAD4:
/* 08F6D4 8008EAD4 27BD0018 */  addiu $sp, $sp, 0x18
/* 08F6D8 8008EAD8 03E00008 */  jr    $ra
/* 08F6DC 8008EADC 00000000 */   nop   
