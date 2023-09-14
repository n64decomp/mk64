.section .rodata

glabel D_800F0CA0
.byte 0x03, 0x03, 0x03, 0x02, 0x00, 0x02, 0x02

glabel D_800F0CA7 # Second OK menu button
.byte 0x01, 0x03, 0x02, 0x00

glabel D_800F0CAB # Third OK menu button
.byte 0x00, 0x03, 0x03, 0x02, 0x00

.section .text

glabel func_800A9A98
/* 0AA698 800A9A98 8C820000 */  lw    $v0, ($a0)
/* 0AA69C 800A9A9C 2401000F */  li    $at, 15
/* 0AA6A0 800A9AA0 27BDFFF8 */  addiu $sp, $sp, -8
/* 0AA6A4 800A9AA4 10410009 */  beq   $v0, $at, .L800A9ACC
/* 0AA6A8 800A9AA8 3C0E8019 */   lui   $t6, %hi(gMainMenuSelectionDepth) # $t6, 0x8019
/* 0AA6AC 800A9AAC 24010033 */  li    $at, 51
/* 0AA6B0 800A9AB0 10410010 */  beq   $v0, $at, .L800A9AF4
/* 0AA6B4 800A9AB4 3C188019 */   lui   $t8, %hi(D_8018EDEE) # $t8, 0x8019
/* 0AA6B8 800A9AB8 2401005D */  li    $at, 93
/* 0AA6BC 800A9ABC 10410008 */  beq   $v0, $at, .L800A9AE0
/* 0AA6C0 800A9AC0 3C0F8019 */   lui   $t7, %hi(D_8018EDEC) # $t7, 0x8019
/* 0AA6C4 800A9AC4 1000000F */  b     .L800A9B04
/* 0AA6C8 800A9AC8 8FA20004 */   lw    $v0, 4($sp)
.L800A9ACC:
/* 0AA6CC 800A9ACC 81CEEDED */  lb    $t6, %lo(gMainMenuSelectionDepth)($t6)
/* 0AA6D0 800A9AD0 3C02800F */  lui   $v0, %hi(D_800F0C9C+0x03) # 0x800f
/* 0AA6D4 800A9AD4 004E1021 */  addu  $v0, $v0, $t6
/* 0AA6D8 800A9AD8 1000000A */  b     .L800A9B04
/* 0AA6DC 800A9ADC 80420C9F */   lb    $v0, %lo(D_800F0C9C+0x03)($v0) # 0xc9f($v0)
.L800A9AE0:
/* 0AA6E0 800A9AE0 81EFEDEC */  lb    $t7, %lo(D_8018EDEC)($t7)
/* 0AA6E4 800A9AE4 3C02800F */  lui   $v0, %hi(D_800F0CAB) # 0x800f
/* 0AA6E8 800A9AE8 004F1021 */  addu  $v0, $v0, $t7
/* 0AA6EC 800A9AEC 10000005 */  b     .L800A9B04
/* 0AA6F0 800A9AF0 80420CAB */   lb    $v0, %lo(D_800F0CAB)($v0) # 0xcab($v0)
.L800A9AF4:
/* 0AA6F4 800A9AF4 8318EDEE */  lb    $t8, %lo(D_8018EDEE)($t8)
/* 0AA6F8 800A9AF8 3C02800F */  lui   $v0, %hi(D_800F0CA7) # 0x800f
/* 0AA6FC 800A9AFC 00581021 */  addu  $v0, $v0, $t8
/* 0AA700 800A9B00 80420CA7 */  lb    $v0, %lo(D_800F0CA7)($v0) # 0xca7($v0)
.L800A9B04:
/* 0AA704 800A9B04 1040000A */  beqz  $v0, .L800A9B30
/* 0AA708 800A9B08 24010001 */   li    $at, 1
/* 0AA70C 800A9B0C 1041000A */  beq   $v0, $at, .L800A9B38
/* 0AA710 800A9B10 24190020 */   li    $t9, 32
/* 0AA714 800A9B14 24010002 */  li    $at, 2
/* 0AA718 800A9B18 10410009 */  beq   $v0, $at, .L800A9B40
/* 0AA71C 800A9B1C 24010003 */   li    $at, 3
/* 0AA720 800A9B20 50410014 */  beql  $v0, $at, .L800A9B74
/* 0AA724 800A9B24 8C82001C */   lw    $v0, 0x1c($a0)
/* 0AA728 800A9B28 1000001A */  b     .L800A9B94
/* 0AA72C 800A9B2C 00000000 */   nop
.L800A9B30:
/* 0AA730 800A9B30 10000018 */  b     .L800A9B94
/* 0AA734 800A9B34 AC80001C */   sw    $zero, 0x1c($a0)
.L800A9B38:
/* 0AA738 800A9B38 10000016 */  b     .L800A9B94
/* 0AA73C 800A9B3C AC99001C */   sw    $t9, 0x1c($a0)
.L800A9B40:
/* 0AA740 800A9B40 8C82001C */  lw    $v0, 0x1c($a0)
/* 0AA744 800A9B44 2401000C */  li    $at, 12
/* 0AA748 800A9B48 18400012 */  blez  $v0, .L800A9B94
/* 0AA74C 800A9B4C 00000000 */   nop
/* 0AA750 800A9B50 0041001A */  div   $zero, $v0, $at
/* 0AA754 800A9B54 00004012 */  mflo  $t0
/* 0AA758 800A9B58 00484823 */  subu  $t1, $v0, $t0
/* 0AA75C 800A9B5C 252AFFFE */  addiu $t2, $t1, -2
/* 0AA760 800A9B60 0541000C */  bgez  $t2, .L800A9B94
/* 0AA764 800A9B64 AC8A001C */   sw    $t2, 0x1c($a0)
/* 0AA768 800A9B68 1000000A */  b     .L800A9B94
/* 0AA76C 800A9B6C AC80001C */   sw    $zero, 0x1c($a0)
/* 0AA770 800A9B70 8C82001C */  lw    $v0, 0x1c($a0)
.L800A9B74:
/* 0AA774 800A9B74 28410020 */  slti  $at, $v0, 0x20
/* 0AA778 800A9B78 10200006 */  beqz  $at, .L800A9B94
/* 0AA77C 800A9B7C 244C0002 */   addiu $t4, $v0, 2
/* 0AA780 800A9B80 29810020 */  slti  $at, $t4, 0x20
/* 0AA784 800A9B84 14200003 */  bnez  $at, .L800A9B94
/* 0AA788 800A9B88 AC8C001C */   sw    $t4, 0x1c($a0)
/* 0AA78C 800A9B8C 240E0020 */  li    $t6, 32
/* 0AA790 800A9B90 AC8E001C */  sw    $t6, 0x1c($a0)
.L800A9B94:
/* 0AA794 800A9B94 03E00008 */  jr    $ra
/* 0AA798 800A9B98 27BD0008 */   addiu $sp, $sp, 8
