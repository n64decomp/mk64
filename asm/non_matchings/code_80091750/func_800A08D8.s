glabel func_800A08D8
/* 0A14D8 800A08D8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A14DC 800A08DC 308700FF */  andi  $a3, $a0, 0xff
/* 0A14E0 800A08E0 28E10010 */  slti  $at, $a3, 0x10
/* 0A14E4 800A08E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A14E8 800A08E8 AFA40018 */  sw    $a0, 0x18($sp)
/* 0A14EC 800A08EC AFA5001C */  sw    $a1, 0x1c($sp)
/* 0A14F0 800A08F0 14200016 */  bnez  $at, .L800A094C
/* 0A14F4 800A08F4 AFA60020 */   sw    $a2, 0x20($sp)
/* 0A14F8 800A08F8 24E7FFF0 */  addiu $a3, $a3, -0x10
/* 0A14FC 800A08FC 30EE00FF */  andi  $t6, $a3, 0xff
/* 0A1500 800A0900 29C10085 */  slti  $at, $t6, 0x85
/* 0A1504 800A0904 10200011 */  beqz  $at, .L800A094C
/* 0A1508 800A0908 01C03825 */   move  $a3, $t6
/* 0A150C 800A090C 29C10032 */  slti  $at, $t6, 0x32
/* 0A1510 800A0910 14200002 */  bnez  $at, .L800A091C
/* 0A1514 800A0914 3C04800E */   lui   $a0, %hi(D_800E7AF8)
/* 0A1518 800A0918 2407002B */  li    $a3, 43
.L800A091C:
/* 0A151C 800A091C 00077880 */  sll   $t7, $a3, 2
/* 0A1520 800A0920 008F2021 */  addu  $a0, $a0, $t7
/* 0A1524 800A0924 0C026449 */  jal   segmented_to_virtual
/* 0A1528 800A0928 8C847AF8 */   lw    $a0, %lo(D_800E7AF8)($a0)
/* 0A152C 800A092C 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 0A1530 800A0930 8C840298 */  lw    $a0, %lo(gDisplayListHead)($a0)
/* 0A1534 800A0934 00402825 */  move  $a1, $v0
/* 0A1538 800A0938 8FA6001C */  lw    $a2, 0x1c($sp)
/* 0A153C 800A093C 0C026E9D */  jal   func_8009BA74
/* 0A1540 800A0940 8FA70020 */   lw    $a3, 0x20($sp)
/* 0A1544 800A0944 3C018015 */  lui   $at, %hi(gDisplayListHead) # $at, 0x8015
/* 0A1548 800A0948 AC220298 */  sw    $v0, %lo(gDisplayListHead)($at)
.L800A094C:
/* 0A154C 800A094C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A1550 800A0950 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A1554 800A0954 03E00008 */  jr    $ra
/* 0A1558 800A0958 00000000 */   nop   
