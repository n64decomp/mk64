glabel func_80017720
/* 018320 80017720 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 018324 80017724 AFA70034 */  sw    $a3, 0x34($sp)
/* 018328 80017728 00077400 */  sll   $t6, $a3, 0x10
/* 01832C 8001772C 000E3C03 */  sra   $a3, $t6, 0x10
/* 018330 80017730 00044880 */  sll   $t1, $a0, 2
/* 018334 80017734 3C018016 */  lui   $at, %hi(D_80163068)
/* 018338 80017738 00290821 */  addu  $at, $at, $t1
/* 01833C 8001773C 00047040 */  sll   $t6, $a0, 1
/* 018340 80017740 3C0F8016 */  lui   $t7, %hi(D_80164438) # 0x8016
/* 018344 80017744 C4203068 */  lwc1  $f0, %lo(D_80163068)($at)
/* 018348 80017748 01EE7821 */  addu  $t7, $t7, $t6
/* 01834C 8001774C 95EF4438 */  lhu   $t7, %lo(D_80164438)($t7) # 0x4438($t7)
/* 018350 80017750 3C018016 */  lui   $at, %hi(D_80164688)
/* 018354 80017754 0006C080 */  sll   $t8, $a2, 2
/* 018358 80017758 00380821 */  addu  $at, $at, $t8
/* 01835C 8001775C 3C0C8016 */  lui   $t4, %hi(D_80164668) # $t4, 0x8016
/* 018360 80017760 03001825 */  move  $v1, $t8
/* 018364 80017764 258C4668 */  addiu $t4, %lo(D_80164668) # addiu $t4, $t4, 0x4668
/* 018368 80017768 00065840 */  sll   $t3, $a2, 1
/* 01836C 8001776C 016C4021 */  addu  $t0, $t3, $t4
/* 018370 80017770 E4204688 */  swc1  $f0, %lo(D_80164688)($at)
/* 018374 80017774 25F80003 */  addiu $t8, $t7, 3
/* 018378 80017778 A5180000 */  sh    $t8, ($t0)
/* 01837C 8001777C 00074840 */  sll   $t1, $a3, 1
/* 018380 80017780 3C0A8016 */  lui   $t2, %hi(D_801645C8) # 0x8016
/* 018384 80017784 01495021 */  addu  $t2, $t2, $t1
/* 018388 80017788 954A45C8 */  lhu   $t2, %lo(D_801645C8)($t2) # 0x45c8($t2)
/* 01838C 8001778C 85190000 */  lh    $t9, ($t0)
/* 018390 80017790 AFA60030 */  sw    $a2, 0x30($sp)
/* 018394 80017794 AFA5002C */  sw    $a1, 0x2c($sp)
/* 018398 80017798 032A001A */  div   $zero, $t9, $t2
/* 01839C 8001779C 00005810 */  mfhi  $t3
/* 0183A0 800177A0 00073400 */  sll   $a2, $a3, 0x10
/* 0183A4 800177A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0183A8 800177A8 AFA40028 */  sw    $a0, 0x28($sp)
/* 0183AC 800177AC 00806825 */  move  $t5, $a0
/* 0183B0 800177B0 00066403 */  sra   $t4, $a2, 0x10
/* 0183B4 800177B4 44050000 */  mfc1  $a1, $f0
/* 0183B8 800177B8 15400002 */  bnez  $t2, .L800177C4
/* 0183BC 800177BC 00000000 */   nop   
/* 0183C0 800177C0 0007000D */  break 7
.L800177C4:
/* 0183C4 800177C4 2401FFFF */  li    $at, -1
/* 0183C8 800177C8 15410004 */  bne   $t2, $at, .L800177DC
/* 0183CC 800177CC 3C018000 */   lui   $at, 0x8000
/* 0183D0 800177D0 17210002 */  bne   $t9, $at, .L800177DC
/* 0183D4 800177D4 00000000 */   nop   
/* 0183D8 800177D8 0006000D */  break 6
.L800177DC:
/* 0183DC 800177DC A50B0000 */  sh    $t3, ($t0)
/* 0183E0 800177E0 01803025 */  move  $a2, $t4
/* 0183E4 800177E4 3164FFFF */  andi  $a0, $t3, 0xffff
/* 0183E8 800177E8 AFA80018 */  sw    $t0, 0x18($sp)
/* 0183EC 800177EC AFA3001C */  sw    $v1, 0x1c($sp)
/* 0183F0 800177F0 0C002EF6 */  jal   func_8000BBD8
/* 0183F4 800177F4 A7A70036 */   sh    $a3, 0x36($sp)
/* 0183F8 800177F8 3C068016 */  lui   $a2, %hi(D_80162FA0) # $a2, 0x8016
/* 0183FC 800177FC 8FA3001C */  lw    $v1, 0x1c($sp)
/* 018400 80017800 24C62FA0 */  addiu $a2, %lo(D_80162FA0) # addiu $a2, $a2, 0x2fa0
/* 018404 80017804 87A70036 */  lh    $a3, 0x36($sp)
/* 018408 80017808 C4C00000 */  lwc1  $f0, ($a2)
/* 01840C 8001780C 8FA80018 */  lw    $t0, 0x18($sp)
/* 018410 80017810 3C018016 */  lui   $at, %hi(D_801645F8)
/* 018414 80017814 00230821 */  addu  $at, $at, $v1
/* 018418 80017818 3C0F8016 */  lui   $t7, %hi(D_80164550) # 0x8016
/* 01841C 8001781C 00077080 */  sll   $t6, $a3, 2
/* 018420 80017820 E42045F8 */  swc1  $f0, %lo(D_801645F8)($at)
/* 018424 80017824 85180000 */  lh    $t8, ($t0)
/* 018428 80017828 01EE7821 */  addu  $t7, $t7, $t6
/* 01842C 8001782C 8DEF4550 */  lw    $t7, %lo(D_80164550)($t7) # 0x4550($t7)
/* 018430 80017830 001848C0 */  sll   $t1, $t8, 3
/* 018434 80017834 8FAC0028 */  lw    $t4, 0x28($sp)
/* 018438 80017838 01E9C821 */  addu  $t9, $t7, $t1
/* 01843C 8001783C 872A0002 */  lh    $t2, 2($t9)
/* 018440 80017840 3C0D8016 */  lui   $t5, %hi(D_80164618) # $t5, 0x8016
/* 018444 80017844 25AD4618 */  addiu $t5, %lo(D_80164618) # addiu $t5, $t5, 0x4618
/* 018448 80017848 448A2000 */  mtc1  $t2, $f4
/* 01844C 8001784C 006D2021 */  addu  $a0, $v1, $t5
/* 018450 80017850 000C68C0 */  sll   $t5, $t4, 3
/* 018454 80017854 468021A0 */  cvt.s.w $f6, $f4
/* 018458 80017858 01AC6823 */  subu  $t5, $t5, $t4
/* 01845C 8001785C 000D6900 */  sll   $t5, $t5, 4
/* 018460 80017860 01AC6823 */  subu  $t5, $t5, $t4
/* 018464 80017864 C4C80008 */  lwc1  $f8, 8($a2)
/* 018468 80017868 3C0B8016 */  lui   $t3, %hi(D_80164638) # $t3, 0x8016
/* 01846C 8001786C 000D6880 */  sll   $t5, $t5, 2
/* 018470 80017870 256B4638 */  addiu $t3, %lo(D_80164638) # addiu $t3, $t3, 0x4638
/* 018474 80017874 01AC6823 */  subu  $t5, $t5, $t4
/* 018478 80017878 000D68C0 */  sll   $t5, $t5, 3
/* 01847C 8001787C 3C01800F */  lui   $at, %hi(gPlayers+0x94)
/* 018480 80017880 006B2821 */  addu  $a1, $v1, $t3
/* 018484 80017884 8FAE0030 */  lw    $t6, 0x30($sp)
/* 018488 80017888 E4860000 */  swc1  $f6, ($a0)
/* 01848C 8001788C 002D0821 */  addu  $at, $at, $t5
/* 018490 80017890 E4A80000 */  swc1  $f8, ($a1)
/* 018494 80017894 C4226A24 */  lwc1  $f2, %lo(gPlayers+0x94)($at)
/* 018498 80017898 3C018016 */  lui   $at, %hi(D_80164658)
/* 01849C 8001789C 000EC080 */  sll   $t8, $t6, 2
/* 0184A0 800178A0 00230821 */  addu  $at, $at, $v1
/* 0184A4 800178A4 030EC023 */  subu  $t8, $t8, $t6
/* 0184A8 800178A8 0018C0C0 */  sll   $t8, $t8, 3
/* 0184AC 800178AC E4224658 */  swc1  $f2, %lo(D_80164658)($at)
/* 0184B0 800178B0 3C018016 */  lui   $at, %hi(D_80164648)
/* 0184B4 800178B4 3C0F8016 */  lui   $t7, %hi(D_801646F0) # $t7, 0x8016
/* 0184B8 800178B8 030EC023 */  subu  $t8, $t8, $t6
/* 0184BC 800178BC 0018C0C0 */  sll   $t8, $t8, 3
/* 0184C0 800178C0 25EF46F0 */  addiu $t7, %lo(D_801646F0) # addiu $t7, $t7, 0x46f0
/* 0184C4 800178C4 00230821 */  addu  $at, $at, $v1
/* 0184C8 800178C8 030F1021 */  addu  $v0, $t8, $t7
/* 0184CC 800178CC E4224648 */  swc1  $f2, %lo(D_80164648)($at)
/* 0184D0 800178D0 E4400000 */  swc1  $f0, ($v0)
/* 0184D4 800178D4 C48A0000 */  lwc1  $f10, ($a0)
/* 0184D8 800178D8 E44A0004 */  swc1  $f10, 4($v0)
/* 0184DC 800178DC C4B00000 */  lwc1  $f16, ($a1)
/* 0184E0 800178E0 E4500008 */  swc1  $f16, 8($v0)
/* 0184E4 800178E4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0184E8 800178E8 27BD0028 */  addiu $sp, $sp, 0x28
/* 0184EC 800178EC 03E00008 */  jr    $ra
/* 0184F0 800178F0 00000000 */   nop   
