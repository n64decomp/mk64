glabel func_80075838
/* 076438 80075838 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 07643C 8007583C 3C028016 */  lui   $v0, %hi(D_8016578C) # $v0, 0x8016
/* 076440 80075840 8442578C */  lh    $v0, %lo(D_8016578C)($v0)
/* 076444 80075844 AFBF0034 */  sw    $ra, 0x34($sp)
/* 076448 80075848 AFB60030 */  sw    $s6, 0x30($sp)
/* 07644C 8007584C AFB5002C */  sw    $s5, 0x2c($sp)
/* 076450 80075850 AFB40028 */  sw    $s4, 0x28($sp)
/* 076454 80075854 AFB30024 */  sw    $s3, 0x24($sp)
/* 076458 80075858 AFB20020 */  sw    $s2, 0x20($sp)
/* 07645C 8007585C AFB1001C */  sw    $s1, 0x1c($sp)
/* 076460 80075860 10400004 */  beqz  $v0, .L80075874
/* 076464 80075864 AFB00018 */   sw    $s0, 0x18($sp)
/* 076468 80075868 244EFFFF */  addiu $t6, $v0, -1
/* 07646C 8007586C 3C018016 */  lui   $at, %hi(D_8016578C) # $at, 0x8016
/* 076470 80075870 A42E578C */  sh    $t6, %lo(D_8016578C)($at)
.L80075874:
/* 076474 80075874 3C028016 */  lui   $v0, %hi(D_80165790) # $v0, 0x8016
/* 076478 80075878 84425790 */  lh    $v0, %lo(D_80165790)($v0)
/* 07647C 8007587C 3C018016 */  lui   $at, %hi(D_80165790) # $at, 0x8016
/* 076480 80075880 3C188016 */  lui   $t8, %hi(D_801636A0) # $t8, 0x8016
/* 076484 80075884 10400002 */  beqz  $v0, .L80075890
/* 076488 80075888 244FFFFF */   addiu $t7, $v0, -1
/* 07648C 8007588C A42F5790 */  sh    $t7, %lo(D_80165790)($at)
.L80075890:
/* 076490 80075890 8F1836A0 */  lw    $t8, %lo(D_801636A0)($t8)
/* 076494 80075894 3C198016 */  lui   $t9, %hi(D_8016578C) # $t9, 0x8016
/* 076498 80075898 00009025 */  move  $s2, $zero
/* 07649C 8007589C 17000003 */  bnez  $t8, .L800758AC
/* 0764A0 800758A0 3C118019 */   lui   $s1, %hi(D_8018C3F0) # $s1, 0x8019
/* 0764A4 800758A4 8739578C */  lh    $t9, %lo(D_8016578C)($t9)
/* 0764A8 800758A8 1320001F */  beqz  $t9, .L80075928
.L800758AC:
/* 0764AC 800758AC 3C158016 */   lui   $s5, %hi(gObjectList) # $s5, 0x8016
/* 0764B0 800758B0 3C138019 */  lui   $s3, %hi(D_8018C5F0) # $s3, 0x8019
/* 0764B4 800758B4 2673C5F0 */  addiu $s3, %lo(D_8018C5F0) # addiu $s3, $s3, -0x3a10
/* 0764B8 800758B8 26B55C18 */  addiu $s5, %lo(gObjectList) # addiu $s5, $s5, 0x5c18
/* 0764BC 800758BC 2631C3F0 */  addiu $s1, %lo(D_8018C3F0) # addiu $s1, $s1, -0x3c10
/* 0764C0 800758C0 241600E0 */  li    $s6, 224
/* 0764C4 800758C4 2414FFFF */  li    $s4, -1
/* 0764C8 800758C8 8E240000 */  lw    $a0, ($s1)
.L800758CC:
/* 0764CC 800758CC 50940010 */  beql  $a0, $s4, .L80075910
/* 0764D0 800758D0 26310004 */   addiu $s1, $s1, 4
/* 0764D4 800758D4 00960019 */  multu $a0, $s6
/* 0764D8 800758D8 00004012 */  mflo  $t0
/* 0764DC 800758DC 02A88021 */  addu  $s0, $s5, $t0
/* 0764E0 800758E0 860900A6 */  lh    $t1, 0xa6($s0)
/* 0764E4 800758E4 5120000A */  beql  $t1, $zero, .L80075910
/* 0764E8 800758E8 26310004 */   addiu $s1, $s1, 4
/* 0764EC 800758EC 0C01D5C5 */  jal   func_80075714
/* 0764F0 800758F0 00000000 */   nop   
/* 0764F4 800758F4 860A00A6 */  lh    $t2, 0xa6($s0)
/* 0764F8 800758F8 55400004 */  bnel  $t2, $zero, .L8007590C
/* 0764FC 800758FC 26520001 */   addiu $s2, $s2, 1
/* 076500 80075900 0C01C840 */  jal   delete_object_wrapper
/* 076504 80075904 02202025 */   move  $a0, $s1
/* 076508 80075908 26520001 */  addiu $s2, $s2, 1
.L8007590C:
/* 07650C 8007590C 26310004 */  addiu $s1, $s1, 4
.L80075910:
/* 076510 80075910 5633FFEE */  bnel  $s1, $s3, .L800758CC
/* 076514 80075914 8E240000 */   lw    $a0, ($s1)
/* 076518 80075918 12400003 */  beqz  $s2, .L80075928
/* 07651C 8007591C 240B0064 */   li    $t3, 100
/* 076520 80075920 3C018016 */  lui   $at, %hi(D_8016578C) # $at, 0x8016
/* 076524 80075924 A42B578C */  sh    $t3, %lo(D_8016578C)($at)
.L80075928:
/* 076528 80075928 3C0C8016 */  lui   $t4, %hi(D_801637AC) # $t4, 0x8016
/* 07652C 8007592C 8D8C37AC */  lw    $t4, %lo(D_801637AC)($t4)
/* 076530 80075930 3C158016 */  lui   $s5, %hi(gObjectList) # $s5, 0x8016
/* 076534 80075934 26B55C18 */  addiu $s5, %lo(gObjectList) # addiu $s5, $s5, 0x5c18
/* 076538 80075938 2414FFFF */  li    $s4, -1
/* 07653C 8007593C 15800004 */  bnez  $t4, .L80075950
/* 076540 80075940 241600E0 */   li    $s6, 224
/* 076544 80075944 3C0D8016 */  lui   $t5, %hi(D_80165790) # $t5, 0x8016
/* 076548 80075948 85AD5790 */  lh    $t5, %lo(D_80165790)($t5)
/* 07654C 8007594C 11A0001D */  beqz  $t5, .L800759C4
.L80075950:
/* 076550 80075950 3C118019 */   lui   $s1, %hi(D_8018C630) # $s1, 0x8019
/* 076554 80075954 3C138019 */  lui   $s3, %hi(D_8018C830) # $s3, 0x8019
/* 076558 80075958 00009025 */  move  $s2, $zero
/* 07655C 8007595C 2673C830 */  addiu $s3, %lo(D_8018C830) # addiu $s3, $s3, -0x37d0
/* 076560 80075960 2631C630 */  addiu $s1, %lo(D_8018C630) # addiu $s1, $s1, -0x39d0
/* 076564 80075964 8E240000 */  lw    $a0, ($s1)
.L80075968:
/* 076568 80075968 50940010 */  beql  $a0, $s4, .L800759AC
/* 07656C 8007596C 26310004 */   addiu $s1, $s1, 4
/* 076570 80075970 00960019 */  multu $a0, $s6
/* 076574 80075974 00007012 */  mflo  $t6
/* 076578 80075978 02AE8021 */  addu  $s0, $s5, $t6
/* 07657C 8007597C 860F00A6 */  lh    $t7, 0xa6($s0)
/* 076580 80075980 51E0000A */  beql  $t7, $zero, .L800759AC
/* 076584 80075984 26310004 */   addiu $s1, $s1, 4
/* 076588 80075988 0C01D5C5 */  jal   func_80075714
/* 07658C 8007598C 00000000 */   nop   
/* 076590 80075990 861800A6 */  lh    $t8, 0xa6($s0)
/* 076594 80075994 57000004 */  bnel  $t8, $zero, .L800759A8
/* 076598 80075998 26520001 */   addiu $s2, $s2, 1
/* 07659C 8007599C 0C01C840 */  jal   delete_object_wrapper
/* 0765A0 800759A0 02202025 */   move  $a0, $s1
/* 0765A4 800759A4 26520001 */  addiu $s2, $s2, 1
.L800759A8:
/* 0765A8 800759A8 26310004 */  addiu $s1, $s1, 4
.L800759AC:
/* 0765AC 800759AC 5633FFEE */  bnel  $s1, $s3, .L80075968
/* 0765B0 800759B0 8E240000 */   lw    $a0, ($s1)
/* 0765B4 800759B4 12400003 */  beqz  $s2, .L800759C4
/* 0765B8 800759B8 24190064 */   li    $t9, 100
/* 0765BC 800759BC 3C018016 */  lui   $at, %hi(D_80165790) # $at, 0x8016
/* 0765C0 800759C0 A4395790 */  sh    $t9, %lo(D_80165790)($at)
.L800759C4:
/* 0765C4 800759C4 8FBF0034 */  lw    $ra, 0x34($sp)
/* 0765C8 800759C8 8FB00018 */  lw    $s0, 0x18($sp)
/* 0765CC 800759CC 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0765D0 800759D0 8FB20020 */  lw    $s2, 0x20($sp)
/* 0765D4 800759D4 8FB30024 */  lw    $s3, 0x24($sp)
/* 0765D8 800759D8 8FB40028 */  lw    $s4, 0x28($sp)
/* 0765DC 800759DC 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0765E0 800759E0 8FB60030 */  lw    $s6, 0x30($sp)
/* 0765E4 800759E4 03E00008 */  jr    $ra
/* 0765E8 800759E8 27BD0038 */   addiu $sp, $sp, 0x38
