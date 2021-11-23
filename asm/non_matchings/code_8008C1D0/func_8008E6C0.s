glabel func_8008E6C0
/* 08F2C0 8008E6C0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 08F2C4 8008E6C4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 08F2C8 8008E6C8 AFB00018 */  sw    $s0, 0x18($sp)
/* 08F2CC 8008E6CC AFA5002C */  sw    $a1, 0x2c($sp)
/* 08F2D0 8008E6D0 00808025 */  move  $s0, $a0
/* 08F2D4 8008E6D4 0C0230D5 */  jal   func_8008C354
/* 08F2D8 8008E6D8 83A5002F */   lb    $a1, 0x2f($sp)
/* 08F2DC 8008E6DC 0C0230C4 */  jal   func_8008C310
/* 08F2E0 8008E6E0 02002025 */   move  $a0, $s0
/* 08F2E4 8008E6E4 8E0E00BC */  lw    $t6, 0xbc($s0)
/* 08F2E8 8008E6E8 44800000 */  mtc1  $zero, $f0
/* 08F2EC 8008E6EC 3C010100 */  lui   $at, 0x100
/* 08F2F0 8008E6F0 96060254 */  lhu   $a2, 0x254($s0)
/* 08F2F4 8008E6F4 01C17825 */  or    $t7, $t6, $at
/* 08F2F8 8008E6F8 2401FFEF */  li    $at, -17
/* 08F2FC 8008E6FC 01E1C824 */  and   $t9, $t7, $at
/* 08F300 8008E700 AE0F00BC */  sw    $t7, 0xbc($s0)
/* 08F304 8008E704 3C01800E */  lui   $at, %hi(D_800E3730)
/* 08F308 8008E708 00061080 */  sll   $v0, $a2, 2
/* 08F30C 8008E70C A60000A8 */  sh    $zero, 0xa8($s0)
/* 08F310 8008E710 AE1900BC */  sw    $t9, 0xbc($s0)
/* 08F314 8008E714 00220821 */  addu  $at, $at, $v0
/* 08F318 8008E718 E60000F0 */  swc1  $f0, 0xf0($s0)
/* 08F31C 8008E71C E60000F4 */  swc1  $f0, 0xf4($s0)
/* 08F320 8008E720 E60000EC */  swc1  $f0, 0xec($s0)
/* 08F324 8008E724 C4243730 */  lwc1  $f4, %lo(D_800E3730)($at)
/* 08F328 8008E728 3C01800E */  lui   $at, %hi(D_800E3710)
/* 08F32C 8008E72C 00220821 */  addu  $at, $at, $v0
/* 08F330 8008E730 E60400F0 */  swc1  $f4, 0xf0($s0)
/* 08F334 8008E734 C4263710 */  lwc1  $f6, %lo(D_800E3710)($at)
/* 08F338 8008E738 96030000 */  lhu   $v1, ($s0)
/* 08F33C 8008E73C 24080004 */  li    $t0, 4
/* 08F340 8008E740 24014000 */  li    $at, 16384
/* 08F344 8008E744 30694000 */  andi  $t1, $v1, 0x4000
/* 08F348 8008E748 A6080236 */  sh    $t0, 0x236($s0)
/* 08F34C 8008E74C A6000042 */  sh    $zero, 0x42($s0)
/* 08F350 8008E750 A60000E0 */  sh    $zero, 0xe0($s0)
/* 08F354 8008E754 1521002E */  bne   $t1, $at, .L8008E810
/* 08F358 8008E758 E60600EC */   swc1  $f6, 0xec($s0)
/* 08F35C 8008E75C 306A0100 */  andi  $t2, $v1, 0x100
/* 08F360 8008E760 24010100 */  li    $at, 256
/* 08F364 8008E764 1141002A */  beq   $t2, $at, .L8008E810
/* 08F368 8008E768 3C0B800E */   lui   $t3, %hi(gModeSelection) # $t3, 0x800e
/* 08F36C 8008E76C 8D6BC53C */  lw    $t3, %lo(gModeSelection)($t3)
/* 08F370 8008E770 24010002 */  li    $at, 2
/* 08F374 8008E774 306C1000 */  andi  $t4, $v1, 0x1000
/* 08F378 8008E778 5561000A */  bnel  $t3, $at, .L8008E7A4
/* 08F37C 8008E77C 93A4002F */   lbu   $a0, 0x2f($sp)
/* 08F380 8008E780 11800007 */  beqz  $t4, .L8008E7A0
/* 08F384 8008E784 3C0D800E */   lui   $t5, %hi(D_800DC51C) # $t5, 0x800e
/* 08F388 8008E788 95ADC51C */  lhu   $t5, %lo(D_800DC51C)($t5)
/* 08F38C 8008E78C 55A00005 */  bnel  $t5, $zero, .L8008E7A4
/* 08F390 8008E790 93A4002F */   lbu   $a0, 0x2f($sp)
/* 08F394 8008E794 0C032893 */  jal   func_800CA24C
/* 08F398 8008E798 93A4002F */   lbu   $a0, 0x2f($sp)
/* 08F39C 8008E79C 96060254 */  lhu   $a2, 0x254($s0)
.L8008E7A0:
/* 08F3A0 8008E7A0 93A4002F */  lbu   $a0, 0x2f($sp)
.L8008E7A4:
/* 08F3A4 8008E7A4 3C012900 */  lui   $at, (0x29008005 >> 16) # lui $at, 0x2900
/* 08F3A8 8008E7A8 34218005 */  ori   $at, (0x29008005 & 0xFFFF) # ori $at, $at, 0x8005
/* 08F3AC 8008E7AC 00062900 */  sll   $a1, $a2, 4
/* 08F3B0 8008E7B0 00A12821 */  addu  $a1, $a1, $at
/* 08F3B4 8008E7B4 0C03243D */  jal   func_800C90F4
/* 08F3B8 8008E7B8 AFA40020 */   sw    $a0, 0x20($sp)
/* 08F3BC 8008E7BC 3C0E800E */  lui   $t6, %hi(gModeSelection) # $t6, 0x800e
/* 08F3C0 8008E7C0 8DCEC53C */  lw    $t6, %lo(gModeSelection)($t6)
/* 08F3C4 8008E7C4 24010002 */  li    $at, 2
/* 08F3C8 8008E7C8 55C1000C */  bnel  $t6, $at, .L8008E7FC
/* 08F3CC 8008E7CC 3C051900 */   lui   $a1, 0x1900
/* 08F3D0 8008E7D0 960F0000 */  lhu   $t7, ($s0)
/* 08F3D4 8008E7D4 3C19800E */  lui   $t9, %hi(D_800DC51C) # $t9, 0x800e
/* 08F3D8 8008E7D8 31F81000 */  andi  $t8, $t7, 0x1000
/* 08F3DC 8008E7DC 53000007 */  beql  $t8, $zero, .L8008E7FC
/* 08F3E0 8008E7E0 3C051900 */   lui   $a1, 0x1900
/* 08F3E4 8008E7E4 9739C51C */  lhu   $t9, %lo(D_800DC51C)($t9)
/* 08F3E8 8008E7E8 57200004 */  bnel  $t9, $zero, .L8008E7FC
/* 08F3EC 8008E7EC 3C051900 */   lui   $a1, 0x1900
/* 08F3F0 8008E7F0 0C032893 */  jal   func_800CA24C
/* 08F3F4 8008E7F4 93A40023 */   lbu   $a0, 0x23($sp)
/* 08F3F8 8008E7F8 3C051900 */  lui   $a1, (0x19009005 >> 16) # lui $a1, 0x1900
.L8008E7FC:
/* 08F3FC 8008E7FC 34A59005 */  ori   $a1, (0x19009005 & 0xFFFF) # ori $a1, $a1, 0x9005
/* 08F400 8008E800 0C032418 */  jal   func_800C9060
/* 08F404 8008E804 93A40023 */   lbu   $a0, 0x23($sp)
/* 08F408 8008E808 10000005 */  b     .L8008E820
/* 08F40C 8008E80C 8E08000C */   lw    $t0, 0xc($s0)
.L8008E810:
/* 08F410 8008E810 83A4002F */  lb    $a0, 0x2f($sp)
/* 08F414 8008E814 0C00263F */  jal   func_800098FC
/* 08F418 8008E818 02002825 */   move  $a1, $s0
/* 08F41C 8008E81C 8E08000C */  lw    $t0, 0xc($s0)
.L8008E820:
/* 08F420 8008E820 960A00B6 */  lhu   $t2, 0xb6($s0)
/* 08F424 8008E824 3C01FFB7 */  lui   $at, (0xFFB7FFFF >> 16) # lui $at, 0xffb7
/* 08F428 8008E828 3421FFFF */  ori   $at, (0xFFB7FFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 08F42C 8008E82C 01014824 */  and   $t1, $t0, $at
/* 08F430 8008E830 354B0040 */  ori   $t3, $t2, 0x40
/* 08F434 8008E834 AE09000C */  sw    $t1, 0xc($s0)
/* 08F438 8008E838 A60B00B6 */  sh    $t3, 0xb6($s0)
/* 08F43C 8008E83C 83A2002F */  lb    $v0, 0x2f($sp)
/* 08F440 8008E840 3C018016 */  lui   $at, %hi(D_80165480) # 0x8016
/* 08F444 8008E844 8FBF001C */  lw    $ra, 0x1c($sp)
/* 08F448 8008E848 00026080 */  sll   $t4, $v0, 2
/* 08F44C 8008E84C 002C0821 */  addu  $at, $at, $t4
/* 08F450 8008E850 AC205480 */  sw    $zero, %lo(D_80165480)($at) # 0x5480($at)
/* 08F454 8008E854 3C018016 */  lui   $at, %hi(D_80165460) # 0x8016
/* 08F458 8008E858 002C0821 */  addu  $at, $at, $t4
/* 08F45C 8008E85C AC205460 */  sw    $zero, %lo(D_80165460)($at) # 0x5460($at)
/* 08F460 8008E860 3C018016 */  lui   $at, %hi(D_80165440) # 0x8016
/* 08F464 8008E864 002C0821 */  addu  $at, $at, $t4
/* 08F468 8008E868 AC205440 */  sw    $zero, %lo(D_80165440)($at) # 0x5440($at)
/* 08F46C 8008E86C 3C018016 */  lui   $at, %hi(D_80165420) # 0x8016
/* 08F470 8008E870 002C0821 */  addu  $at, $at, $t4
/* 08F474 8008E874 8FB00018 */  lw    $s0, 0x18($sp)
/* 08F478 8008E878 AC205420 */  sw    $zero, %lo(D_80165420)($at) # 0x5420($at)
/* 08F47C 8008E87C 03E00008 */  jr    $ra
/* 08F480 8008E880 27BD0028 */   addiu $sp, $sp, 0x28
