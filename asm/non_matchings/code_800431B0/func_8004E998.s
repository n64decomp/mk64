glabel func_8004E998
/* 04F598 8004E998 00047940 */  sll   $t7, $a0, 5
/* 04F59C 8004E99C 01E47821 */  addu  $t7, $t7, $a0
/* 04F5A0 8004E9A0 3C188019 */  lui   $t8, %hi(D_8018CA70) # $t8, 0x8019
/* 04F5A4 8004E9A4 2718CA70 */  addiu $t8, %lo(D_8018CA70) # addiu $t8, $t8, -0x3590
/* 04F5A8 8004E9A8 000F7880 */  sll   $t7, $t7, 2
/* 04F5AC 8004E9AC 01F81021 */  addu  $v0, $t7, $t8
/* 04F5B0 8004E9B0 90590081 */  lbu   $t9, 0x81($v0)
/* 04F5B4 8004E9B4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 04F5B8 8004E9B8 AFBF003C */  sw    $ra, 0x3c($sp)
/* 04F5BC 8004E9BC AFA40040 */  sw    $a0, 0x40($sp)
/* 04F5C0 8004E9C0 13200057 */  beqz  $t9, .L8004EB20
/* 04F5C4 8004E9C4 00807025 */   move  $t6, $a0
/* 04F5C8 8004E9C8 80480071 */  lb    $t0, 0x71($v0)
/* 04F5CC 8004E9CC 24010003 */  li    $at, 3
/* 04F5D0 8004E9D0 00003025 */  move  $a2, $zero
/* 04F5D4 8004E9D4 1101002A */  beq   $t0, $at, .L8004EA80
/* 04F5D8 8004E9D8 240B00FF */   li    $t3, 255
/* 04F5DC 8004E9DC 000E7880 */  sll   $t7, $t6, 2
/* 04F5E0 8004E9E0 3C038016 */  lui   $v1, %hi(gPlayerPositions)
/* 04F5E4 8004E9E4 006F1821 */  addu  $v1, $v1, $t7
/* 04F5E8 8004E9E8 8C6343B8 */  lw    $v1, %lo(gPlayerPositions)($v1)
/* 04F5EC 8004E9EC 84490066 */  lh    $t1, 0x66($v0)
/* 04F5F0 8004E9F0 844A0062 */  lh    $t2, 0x62($v0)
/* 04F5F4 8004E9F4 844B0068 */  lh    $t3, 0x68($v0)
/* 04F5F8 8004E9F8 844C0064 */  lh    $t4, 0x64($v0)
/* 04F5FC 8004E9FC 3C19800E */  lui   $t9, %hi(D_800E5618)
/* 04F600 8004EA00 0003C080 */  sll   $t8, $v1, 2
/* 04F604 8004EA04 012A2021 */  addu  $a0, $t1, $t2
/* 04F608 8004EA08 3C0A0D01 */  lui   $t2, %hi(D_0D015258) # $t2, 0xd01
/* 04F60C 8004EA0C 0338C821 */  addu  $t9, $t9, $t8
/* 04F610 8004EA10 240D00FF */  li    $t5, 255
/* 04F614 8004EA14 016C2821 */  addu  $a1, $t3, $t4
/* 04F618 8004EA18 8F395618 */  lw    $t9, %lo(D_800E5618)($t9)
/* 04F61C 8004EA1C 3C0C0D00 */  lui   $t4, %hi(D_0D006030) # $t4, 0xd00
/* 04F620 8004EA20 AFAD0010 */  sw    $t5, 0x10($sp)
/* 04F624 8004EA24 254A5258 */  addiu $t2, %lo(D_0D015258) # addiu $t2, $t2, 0x5258
/* 04F628 8004EA28 00034AC0 */  sll   $t1, $v1, 0xb
/* 04F62C 8004EA2C 012A5821 */  addu  $t3, $t1, $t2
/* 04F630 8004EA30 240D0040 */  li    $t5, 64
/* 04F634 8004EA34 258C6030 */  addiu $t4, %lo(D_0D006030) # addiu $t4, $t4, 0x6030
/* 04F638 8004EA38 24180040 */  li    $t8, 64
/* 04F63C 8004EA3C 240F0040 */  li    $t7, 64
/* 04F640 8004EA40 240E0040 */  li    $t6, 64
/* 04F644 8004EA44 240800FF */  li    $t0, 255
/* 04F648 8004EA48 AFA8001C */  sw    $t0, 0x1c($sp)
/* 04F64C 8004EA4C AFAE002C */  sw    $t6, 0x2c($sp)
/* 04F650 8004EA50 AFAF0030 */  sw    $t7, 0x30($sp)
/* 04F654 8004EA54 AFB80034 */  sw    $t8, 0x34($sp)
/* 04F658 8004EA58 AFAC0024 */  sw    $t4, 0x24($sp)
/* 04F65C 8004EA5C AFAD0028 */  sw    $t5, 0x28($sp)
/* 04F660 8004EA60 AFAB0020 */  sw    $t3, 0x20($sp)
/* 04F664 8004EA64 00003025 */  move  $a2, $zero
/* 04F668 8004EA68 8C470004 */  lw    $a3, 4($v0)
/* 04F66C 8004EA6C AFA00018 */  sw    $zero, 0x18($sp)
/* 04F670 8004EA70 0C0128E1 */  jal   func_8004A384
/* 04F674 8004EA74 AFB90014 */   sw    $t9, 0x14($sp)
/* 04F678 8004EA78 1000002A */  b     .L8004EB24
/* 04F67C 8004EA7C 8FBF003C */   lw    $ra, 0x3c($sp)
.L8004EA80:
/* 04F680 8004EA80 84590066 */  lh    $t9, 0x66($v0)
/* 04F684 8004EA84 84480062 */  lh    $t0, 0x62($v0)
/* 04F688 8004EA88 3C0C8016 */  lui   $t4, %hi(D_80165598) # $t4, 0x8016
/* 04F68C 8004EA8C 8D8C5598 */  lw    $t4, %lo(D_80165598)($t4)
/* 04F690 8004EA90 8FB80040 */  lw    $t8, 0x40($sp)
/* 04F694 8004EA94 03282021 */  addu  $a0, $t9, $t0
/* 04F698 8004EA98 84490068 */  lh    $t1, 0x68($v0)
/* 04F69C 8004EA9C 844A0064 */  lh    $t2, 0x64($v0)
/* 04F6A0 8004EAA0 3C088016 */  lui   $t0, %hi(gPlayerPositions)
/* 04F6A4 8004EAA4 3C0E800E */  lui   $t6, %hi(D_800E5618) # 0x800e
/* 04F6A8 8004EAA8 000C6880 */  sll   $t5, $t4, 2
/* 04F6AC 8004EAAC 0018C880 */  sll   $t9, $t8, 2
/* 04F6B0 8004EAB0 01194021 */  addu  $t0, $t0, $t9
/* 04F6B4 8004EAB4 01CD7021 */  addu  $t6, $t6, $t5
/* 04F6B8 8004EAB8 8DCE5618 */  lw    $t6, %lo(D_800E5618)($t6) # 0x5618($t6)
/* 04F6BC 8004EABC 8D0843B8 */  lw    $t0, %lo(gPlayerPositions)($t0)
/* 04F6C0 8004EAC0 012A2821 */  addu  $a1, $t1, $t2
/* 04F6C4 8004EAC4 3C0A0D01 */  lui   $t2, %hi(D_0D015258) # $t2, 0xd01
/* 04F6C8 8004EAC8 240F00FF */  li    $t7, 255
/* 04F6CC 8004EACC AFAF001C */  sw    $t7, 0x1c($sp)
/* 04F6D0 8004EAD0 254A5258 */  addiu $t2, %lo(D_0D015258) # addiu $t2, $t2, 0x5258
/* 04F6D4 8004EAD4 3C0C0D00 */  lui   $t4, %hi(D_0D006030) # $t4, 0xd00
/* 04F6D8 8004EAD8 AFAB0010 */  sw    $t3, 0x10($sp)
/* 04F6DC 8004EADC AFAE0014 */  sw    $t6, 0x14($sp)
/* 04F6E0 8004EAE0 00084AC0 */  sll   $t1, $t0, 0xb
/* 04F6E4 8004EAE4 012A5821 */  addu  $t3, $t1, $t2
/* 04F6E8 8004EAE8 240E0040 */  li    $t6, 64
/* 04F6EC 8004EAEC 258C6030 */  addiu $t4, %lo(D_0D006030) # addiu $t4, $t4, 0x6030
/* 04F6F0 8004EAF0 240F0040 */  li    $t7, 64
/* 04F6F4 8004EAF4 240D0040 */  li    $t5, 64
/* 04F6F8 8004EAF8 24180040 */  li    $t8, 64
/* 04F6FC 8004EAFC AFB80034 */  sw    $t8, 0x34($sp)
/* 04F700 8004EB00 AFAD0028 */  sw    $t5, 0x28($sp)
/* 04F704 8004EB04 AFAF0030 */  sw    $t7, 0x30($sp)
/* 04F708 8004EB08 AFAC0024 */  sw    $t4, 0x24($sp)
/* 04F70C 8004EB0C AFAE002C */  sw    $t6, 0x2c($sp)
/* 04F710 8004EB10 AFAB0020 */  sw    $t3, 0x20($sp)
/* 04F714 8004EB14 8C470004 */  lw    $a3, 4($v0)
/* 04F718 8004EB18 0C0128E1 */  jal   func_8004A384
/* 04F71C 8004EB1C AFA00018 */   sw    $zero, 0x18($sp)
.L8004EB20:
/* 04F720 8004EB20 8FBF003C */  lw    $ra, 0x3c($sp)
.L8004EB24:
/* 04F724 8004EB24 27BD0040 */  addiu $sp, $sp, 0x40
/* 04F728 8004EB28 03E00008 */  jr    $ra
/* 04F72C 8004EB2C 00000000 */   nop
