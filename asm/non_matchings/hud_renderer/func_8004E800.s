glabel func_8004E800
/* 04F400 8004E800 00047940 */  sll   $t7, $a0, 5
/* 04F404 8004E804 01E47821 */  addu  $t7, $t7, $a0
/* 04F408 8004E808 3C188019 */  lui   $t8, %hi(D_8018CA70) # $t8, 0x8019
/* 04F40C 8004E80C 2718CA70 */  addiu $t8, %lo(D_8018CA70) # addiu $t8, $t8, -0x3590
/* 04F410 8004E810 000F7880 */  sll   $t7, $t7, 2
/* 04F414 8004E814 01F81021 */  addu  $v0, $t7, $t8
/* 04F418 8004E818 90590081 */  lbu   $t9, 0x81($v0)
/* 04F41C 8004E81C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 04F420 8004E820 AFBF003C */  sw    $ra, 0x3c($sp)
/* 04F424 8004E824 AFA40040 */  sw    $a0, 0x40($sp)
/* 04F428 8004E828 13200057 */  beqz  $t9, .L8004E988
/* 04F42C 8004E82C 00807025 */   move  $t6, $a0
/* 04F430 8004E830 80480071 */  lb    $t0, 0x71($v0)
/* 04F434 8004E834 24010003 */  li    $at, 3
/* 04F438 8004E838 00003025 */  move  $a2, $zero
/* 04F43C 8004E83C 1101002A */  beq   $t0, $at, .L8004E8E8
/* 04F440 8004E840 240B00FF */   li    $t3, 255
/* 04F444 8004E844 000E7840 */  sll   $t7, $t6, 1
/* 04F448 8004E848 3C038019 */  lui   $v1, %hi(D_8018CF98) # 0x8019
/* 04F44C 8004E84C 006F1821 */  addu  $v1, $v1, $t7
/* 04F450 8004E850 8463CF98 */  lh    $v1, %lo(D_8018CF98)($v1) # -0x3068($v1)
/* 04F454 8004E854 84490066 */  lh    $t1, 0x66($v0)
/* 04F458 8004E858 844A0062 */  lh    $t2, 0x62($v0)
/* 04F45C 8004E85C 844B0068 */  lh    $t3, 0x68($v0)
/* 04F460 8004E860 844C0064 */  lh    $t4, 0x64($v0)
/* 04F464 8004E864 3C19800E */  lui   $t9, %hi(D_800E55F8) # 0x800e
/* 04F468 8004E868 0003C080 */  sll   $t8, $v1, 2
/* 04F46C 8004E86C 012A2021 */  addu  $a0, $t1, $t2
/* 04F470 8004E870 3C0A0D01 */  lui   $t2, %hi(D_0D00D258) # $t2, 0xd01
/* 04F474 8004E874 0338C821 */  addu  $t9, $t9, $t8
/* 04F478 8004E878 240D00FF */  li    $t5, 255
/* 04F47C 8004E87C 016C2821 */  addu  $a1, $t3, $t4
/* 04F480 8004E880 8F3955F8 */  lw    $t9, %lo(D_800E55F8)($t9) # 0x55f8($t9)
/* 04F484 8004E884 3C0C0D00 */  lui   $t4, %hi(D_0D0068F0) # $t4, 0xd00
/* 04F488 8004E888 AFAD0010 */  sw    $t5, 0x10($sp)
/* 04F48C 8004E88C 254AD258 */  addiu $t2, %lo(D_0D00D258) # addiu $t2, $t2, -0x2da8
/* 04F490 8004E890 00034B00 */  sll   $t1, $v1, 0xc
/* 04F494 8004E894 012A5821 */  addu  $t3, $t1, $t2
/* 04F498 8004E898 240D0080 */  li    $t5, 128
/* 04F49C 8004E89C 258C68F0 */  addiu $t4, %lo(D_0D0068F0) # addiu $t4, $t4, 0x68f0
/* 04F4A0 8004E8A0 24180040 */  li    $t8, 64
/* 04F4A4 8004E8A4 240F0080 */  li    $t7, 128
/* 04F4A8 8004E8A8 240E0040 */  li    $t6, 64
/* 04F4AC 8004E8AC 240800FF */  li    $t0, 255
/* 04F4B0 8004E8B0 AFA8001C */  sw    $t0, 0x1c($sp)
/* 04F4B4 8004E8B4 AFAE002C */  sw    $t6, 0x2c($sp)
/* 04F4B8 8004E8B8 AFAF0030 */  sw    $t7, 0x30($sp)
/* 04F4BC 8004E8BC AFB80034 */  sw    $t8, 0x34($sp)
/* 04F4C0 8004E8C0 AFAC0024 */  sw    $t4, 0x24($sp)
/* 04F4C4 8004E8C4 AFAD0028 */  sw    $t5, 0x28($sp)
/* 04F4C8 8004E8C8 AFAB0020 */  sw    $t3, 0x20($sp)
/* 04F4CC 8004E8CC 00003025 */  move  $a2, $zero
/* 04F4D0 8004E8D0 8C470004 */  lw    $a3, 4($v0)
/* 04F4D4 8004E8D4 AFA00018 */  sw    $zero, 0x18($sp)
/* 04F4D8 8004E8D8 0C0128E1 */  jal   func_8004A384
/* 04F4DC 8004E8DC AFB90014 */   sw    $t9, 0x14($sp)
/* 04F4E0 8004E8E0 1000002A */  b     .L8004E98C
/* 04F4E4 8004E8E4 8FBF003C */   lw    $ra, 0x3c($sp)
.L8004E8E8:
/* 04F4E8 8004E8E8 84590066 */  lh    $t9, 0x66($v0)
/* 04F4EC 8004E8EC 84480062 */  lh    $t0, 0x62($v0)
/* 04F4F0 8004E8F0 3C0C8016 */  lui   $t4, %hi(D_80165594) # $t4, 0x8016
/* 04F4F4 8004E8F4 8D8C5594 */  lw    $t4, %lo(D_80165594)($t4)
/* 04F4F8 8004E8F8 8FB80040 */  lw    $t8, 0x40($sp)
/* 04F4FC 8004E8FC 03282021 */  addu  $a0, $t9, $t0
/* 04F500 8004E900 84490068 */  lh    $t1, 0x68($v0)
/* 04F504 8004E904 844A0064 */  lh    $t2, 0x64($v0)
/* 04F508 8004E908 3C088016 */  lui   $t0, %hi(gGPCurrentRaceRankByPlayerId)
/* 04F50C 8004E90C 3C0E800E */  lui   $t6, %hi(D_800E55F8) # 0x800e
/* 04F510 8004E910 000C6880 */  sll   $t5, $t4, 2
/* 04F514 8004E914 0018C880 */  sll   $t9, $t8, 2
/* 04F518 8004E918 01194021 */  addu  $t0, $t0, $t9
/* 04F51C 8004E91C 01CD7021 */  addu  $t6, $t6, $t5
/* 04F520 8004E920 8DCE55F8 */  lw    $t6, %lo(D_800E55F8)($t6) # 0x55f8($t6)
/* 04F524 8004E924 8D0843B8 */  lw    $t0, %lo(gGPCurrentRaceRankByPlayerId)($t0)
/* 04F528 8004E928 012A2821 */  addu  $a1, $t1, $t2
/* 04F52C 8004E92C 3C0A0D01 */  lui   $t2, %hi(D_0D00D258) # $t2, 0xd01
/* 04F530 8004E930 240F00FF */  li    $t7, 255
/* 04F534 8004E934 AFAF001C */  sw    $t7, 0x1c($sp)
/* 04F538 8004E938 254AD258 */  addiu $t2, %lo(D_0D00D258) # addiu $t2, $t2, -0x2da8
/* 04F53C 8004E93C 3C0C0D00 */  lui   $t4, %hi(D_0D0068F0) # $t4, 0xd00
/* 04F540 8004E940 AFAB0010 */  sw    $t3, 0x10($sp)
/* 04F544 8004E944 AFAE0014 */  sw    $t6, 0x14($sp)
/* 04F548 8004E948 00084B00 */  sll   $t1, $t0, 0xc
/* 04F54C 8004E94C 012A5821 */  addu  $t3, $t1, $t2
/* 04F550 8004E950 240E0040 */  li    $t6, 64
/* 04F554 8004E954 258C68F0 */  addiu $t4, %lo(D_0D0068F0) # addiu $t4, $t4, 0x68f0
/* 04F558 8004E958 240F0080 */  li    $t7, 128
/* 04F55C 8004E95C 240D0080 */  li    $t5, 128
/* 04F560 8004E960 24180040 */  li    $t8, 64
/* 04F564 8004E964 AFB80034 */  sw    $t8, 0x34($sp)
/* 04F568 8004E968 AFAD0028 */  sw    $t5, 0x28($sp)
/* 04F56C 8004E96C AFAF0030 */  sw    $t7, 0x30($sp)
/* 04F570 8004E970 AFAC0024 */  sw    $t4, 0x24($sp)
/* 04F574 8004E974 AFAE002C */  sw    $t6, 0x2c($sp)
/* 04F578 8004E978 AFAB0020 */  sw    $t3, 0x20($sp)
/* 04F57C 8004E97C 8C470004 */  lw    $a3, 4($v0)
/* 04F580 8004E980 0C0128E1 */  jal   func_8004A384
/* 04F584 8004E984 AFA00018 */   sw    $zero, 0x18($sp)
.L8004E988:
/* 04F588 8004E988 8FBF003C */  lw    $ra, 0x3c($sp)
.L8004E98C:
/* 04F58C 8004E98C 27BD0040 */  addiu $sp, $sp, 0x40
/* 04F590 8004E990 03E00008 */  jr    $ra
/* 04F594 8004E994 00000000 */   nop