glabel func_8009A7EC
/* 09B3EC 8009A7EC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 09B3F0 8009A7F0 00047080 */  sll   $t6, $a0, 2
/* 09B3F4 8009A7F4 01C47023 */  subu  $t6, $t6, $a0
/* 09B3F8 8009A7F8 3C0F8019 */  lui   $t7, %hi(D_8018DEE0) # $t7, 0x8019
/* 09B3FC 8009A7FC 25EFDEE0 */  addiu $t7, %lo(D_8018DEE0) # addiu $t7, $t7, -0x2120
/* 09B400 8009A800 000E70C0 */  sll   $t6, $t6, 3
/* 09B404 8009A804 01CFC021 */  addu  $t8, $t6, $t7
/* 09B408 8009A808 AFBF001C */  sw    $ra, 0x1c($sp)
/* 09B40C 8009A80C AFA5002C */  sw    $a1, 0x2c($sp)
/* 09B410 8009A810 AFA60030 */  sw    $a2, 0x30($sp)
/* 09B414 8009A814 AFA70034 */  sw    $a3, 0x34($sp)
/* 09B418 8009A818 AFB80020 */  sw    $t8, 0x20($sp)
/* 09B41C 8009A81C 8F19000C */  lw    $t9, 0xc($t8)
/* 09B420 8009A820 03002025 */  move  $a0, $t8
/* 09B424 8009A824 00194000 */  sll   $t0, $t9, 0
/* 09B428 8009A828 05030010 */  bgezl $t0, .L8009A86C
/* 09B42C 8009A82C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 09B430 8009A830 0C026A51 */  jal   func_8009A944
/* 09B434 8009A834 00E02825 */   move  $a1, $a3
/* 09B438 8009A838 8FA90034 */  lw    $t1, 0x34($sp)
/* 09B43C 8009A83C 8FAA0038 */  lw    $t2, 0x38($sp)
/* 09B440 8009A840 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 09B444 8009A844 8C840298 */  lw    $a0, %lo(gDisplayListHead)($a0)
/* 09B448 8009A848 8FA50020 */  lw    $a1, 0x20($sp)
/* 09B44C 8009A84C 8FA6002C */  lw    $a2, 0x2c($sp)
/* 09B450 8009A850 8FA70030 */  lw    $a3, 0x30($sp)
/* 09B454 8009A854 AFA90010 */  sw    $t1, 0x10($sp)
/* 09B458 8009A858 0C0271C2 */  jal   func_8009C708
/* 09B45C 8009A85C AFAA0014 */   sw    $t2, 0x14($sp)
/* 09B460 8009A860 3C018015 */  lui   $at, %hi(gDisplayListHead) # $at, 0x8015
/* 09B464 8009A864 AC220298 */  sw    $v0, %lo(gDisplayListHead)($at)
/* 09B468 8009A868 8FBF001C */  lw    $ra, 0x1c($sp)
.L8009A86C:
/* 09B46C 8009A86C 27BD0028 */  addiu $sp, $sp, 0x28
/* 09B470 8009A870 03E00008 */  jr    $ra
/* 09B474 8009A874 00000000 */   nop   
