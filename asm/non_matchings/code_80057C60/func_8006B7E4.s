glabel func_8006B7E4
/* 06C3E4 8006B7E4 44800000 */  mtc1  $zero, $f0
/* 06C3E8 8006B7E8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 06C3EC 8006B7EC AFA50024 */  sw    $a1, 0x24($sp)
/* 06C3F0 8006B7F0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 06C3F4 8006B7F4 44050000 */  mfc1  $a1, $f0
/* 06C3F8 8006B7F8 44060000 */  mfc1  $a2, $f0
/* 06C3FC 8006B7FC AFA40020 */  sw    $a0, 0x20($sp)
/* 06C400 8006B800 83A70027 */  lb    $a3, 0x27($sp)
/* 06C404 8006B804 AFA00010 */  sw    $zero, 0x10($sp)
/* 06C408 8006B808 0C01A943 */  jal   func_8006A50C
/* 06C40C 8006B80C AFA00014 */   sw    $zero, 0x14($sp)
/* 06C410 8006B810 240E0001 */  li    $t6, 1
/* 06C414 8006B814 240F1C70 */  li    $t7, 7280
/* 06C418 8006B818 AFAF0014 */  sw    $t7, 0x14($sp)
/* 06C41C 8006B81C AFAE0010 */  sw    $t6, 0x10($sp)
/* 06C420 8006B820 8FA40020 */  lw    $a0, 0x20($sp)
/* 06C424 8006B824 3C053FC0 */  lui   $a1, 0x3fc0
/* 06C428 8006B828 3C064000 */  lui   $a2, 0x4000
/* 06C42C 8006B82C 0C01A943 */  jal   func_8006A50C
/* 06C430 8006B830 83A70027 */   lb    $a3, 0x27($sp)
/* 06C434 8006B834 24180002 */  li    $t8, 2
/* 06C438 8006B838 2419E390 */  li    $t9, -7280
/* 06C43C 8006B83C AFB90014 */  sw    $t9, 0x14($sp)
/* 06C440 8006B840 AFB80010 */  sw    $t8, 0x10($sp)
/* 06C444 8006B844 8FA40020 */  lw    $a0, 0x20($sp)
/* 06C448 8006B848 3C05BFC0 */  lui   $a1, 0xbfc0
/* 06C44C 8006B84C 3C064000 */  lui   $a2, 0x4000
/* 06C450 8006B850 0C01A943 */  jal   func_8006A50C
/* 06C454 8006B854 83A70027 */   lb    $a3, 0x27($sp)
/* 06C458 8006B858 83A90027 */  lb    $t1, 0x27($sp)
/* 06C45C 8006B85C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 06C460 8006B860 3C018019 */  lui   $at, %hi(gPlayerBalloonCount)
/* 06C464 8006B864 00095040 */  sll   $t2, $t1, 1
/* 06C468 8006B868 002A0821 */  addu  $at, $at, $t2
/* 06C46C 8006B86C 24080002 */  li    $t0, 2
/* 06C470 8006B870 A428D8C0 */  sh    $t0, %lo(gPlayerBalloonCount)($at)
/* 06C474 8006B874 03E00008 */  jr    $ra
/* 06C478 8006B878 27BD0020 */   addiu $sp, $sp, 0x20
