glabel func_8006B8B4
/* 06C4B4 8006B8B4 00053600 */  sll   $a2, $a1, 0x18
/* 06C4B8 8006B8B8 00067603 */  sra   $t6, $a2, 0x18
/* 06C4BC 8006B8BC 3C188019 */  lui   $t8, %hi(gPlayerBalloonCount) # $t8, 0x8019
/* 06C4C0 8006B8C0 2718D8C0 */  addiu $t8, %lo(gPlayerBalloonCount) # addiu $t8, $t8, -0x2740
/* 06C4C4 8006B8C4 000E7840 */  sll   $t7, $t6, 1
/* 06C4C8 8006B8C8 01F81821 */  addu  $v1, $t7, $t8
/* 06C4CC 8006B8CC 84670000 */  lh    $a3, ($v1)
/* 06C4D0 8006B8D0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 06C4D4 8006B8D4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 06C4D8 8006B8D8 AFA40020 */  sw    $a0, 0x20($sp)
/* 06C4DC 8006B8DC AFA50024 */  sw    $a1, 0x24($sp)
/* 06C4E0 8006B8E0 04E00020 */  bltz  $a3, .L8006B964
/* 06C4E4 8006B8E4 01C03025 */   move  $a2, $t6
/* 06C4E8 8006B8E8 000EC880 */  sll   $t9, $t6, 2
/* 06C4EC 8006B8EC 032EC823 */  subu  $t9, $t9, $t6
/* 06C4F0 8006B8F0 0019C840 */  sll   $t9, $t9, 1
/* 06C4F4 8006B8F4 00074040 */  sll   $t0, $a3, 1
/* 06C4F8 8006B8F8 3C0A8019 */  lui   $t2, %hi(gPlayerBalloonStatus) # $t2, 0x8019
/* 06C4FC 8006B8FC 254AD5F0 */  addiu $t2, %lo(gPlayerBalloonStatus) # addiu $t2, $t2, -0x2a10
/* 06C500 8006B900 03284821 */  addu  $t1, $t9, $t0
/* 06C504 8006B904 012A1021 */  addu  $v0, $t1, $t2
/* 06C508 8006B908 944B0000 */  lhu   $t3, ($v0)
/* 06C50C 8006B90C 24EFFFFF */  addiu $t7, $a3, -1
/* 06C510 8006B910 3C051900 */  lui   $a1, (0x19009051 >> 16) # lui $a1, 0x1900
/* 06C514 8006B914 316DFFFE */  andi  $t5, $t3, 0xfffe
/* 06C518 8006B918 A44D0000 */  sh    $t5, ($v0)
/* 06C51C 8006B91C 35AE0002 */  ori   $t6, $t5, 2
/* 06C520 8006B920 A44E0000 */  sh    $t6, ($v0)
/* 06C524 8006B924 A46F0000 */  sh    $t7, ($v1)
/* 06C528 8006B928 34A59051 */  ori   $a1, (0x19009051 & 0xFFFF) # ori $a1, $a1, 0x9051
/* 06C52C 8006B92C 30C400FF */  andi  $a0, $a2, 0xff
/* 06C530 8006B930 AFA3001C */  sw    $v1, 0x1c($sp)
/* 06C534 8006B934 0C032418 */  jal   func_800C9060
/* 06C538 8006B938 A3A60027 */   sb    $a2, 0x27($sp)
/* 06C53C 8006B93C 8FA3001C */  lw    $v1, 0x1c($sp)
/* 06C540 8006B940 83A60027 */  lb    $a2, 0x27($sp)
/* 06C544 8006B944 8FA40020 */  lw    $a0, 0x20($sp)
/* 06C548 8006B948 84780000 */  lh    $t8, ($v1)
/* 06C54C 8006B94C 00062E00 */  sll   $a1, $a2, 0x18
/* 06C550 8006B950 0005CE03 */  sra   $t9, $a1, 0x18
/* 06C554 8006B954 07030004 */  bgezl $t8, .L8006B968
/* 06C558 8006B958 8FBF0014 */   lw    $ra, 0x14($sp)
/* 06C55C 8006B95C 0C023F53 */  jal   func_8008FD4C
/* 06C560 8006B960 03202825 */   move  $a1, $t9
.L8006B964:
/* 06C564 8006B964 8FBF0014 */  lw    $ra, 0x14($sp)
.L8006B968:
/* 06C568 8006B968 27BD0020 */  addiu $sp, $sp, 0x20
/* 06C56C 8006B96C 03E00008 */  jr    $ra
/* 06C570 8006B970 00000000 */   nop
