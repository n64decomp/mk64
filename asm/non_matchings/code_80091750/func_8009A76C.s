glabel func_8009A76C
/* 09B36C 8009A76C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 09B370 8009A770 00047080 */  sll   $t6, $a0, 2
/* 09B374 8009A774 01C47023 */  subu  $t6, $t6, $a0
/* 09B378 8009A778 3C0F8019 */  lui   $t7, %hi(D_8018DEE0) # $t7, 0x8019
/* 09B37C 8009A77C 25EFDEE0 */  addiu $t7, %lo(D_8018DEE0) # addiu $t7, $t7, -0x2120
/* 09B380 8009A780 000E70C0 */  sll   $t6, $t6, 3
/* 09B384 8009A784 01CFC021 */  addu  $t8, $t6, $t7
/* 09B388 8009A788 AFBF001C */  sw    $ra, 0x1c($sp)
/* 09B38C 8009A78C AFA5002C */  sw    $a1, 0x2c($sp)
/* 09B390 8009A790 AFA60030 */  sw    $a2, 0x30($sp)
/* 09B394 8009A794 AFA70034 */  sw    $a3, 0x34($sp)
/* 09B398 8009A798 AFB80020 */  sw    $t8, 0x20($sp)
/* 09B39C 8009A79C 8F19000C */  lw    $t9, 0xc($t8)
/* 09B3A0 8009A7A0 00194000 */  sll   $t0, $t9, 0
/* 09B3A4 8009A7A4 0503000E */  bgezl $t0, .L8009A7E0
/* 09B3A8 8009A7A8 8FBF001C */   lw    $ra, 0x1c($sp)
/* 09B3AC 8009A7AC 0C026A1E */  jal   func_8009A878
/* 09B3B0 8009A7B0 03002025 */   move  $a0, $t8
/* 09B3B4 8009A7B4 8FA90034 */  lw    $t1, 0x34($sp)
/* 09B3B8 8009A7B8 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 09B3BC 8009A7BC 8C840298 */  lw    $a0, %lo(gDisplayListHead)($a0)
/* 09B3C0 8009A7C0 8FA50020 */  lw    $a1, 0x20($sp)
/* 09B3C4 8009A7C4 8FA6002C */  lw    $a2, 0x2c($sp)
/* 09B3C8 8009A7C8 8FA70030 */  lw    $a3, 0x30($sp)
/* 09B3CC 8009A7CC 0C02710D */  jal   func_8009C434
/* 09B3D0 8009A7D0 AFA90010 */   sw    $t1, 0x10($sp)
/* 09B3D4 8009A7D4 3C018015 */  lui   $at, %hi(gDisplayListHead) # $at, 0x8015
/* 09B3D8 8009A7D8 AC220298 */  sw    $v0, %lo(gDisplayListHead)($at)
/* 09B3DC 8009A7DC 8FBF001C */  lw    $ra, 0x1c($sp)
.L8009A7E0:
/* 09B3E0 8009A7E0 27BD0028 */  addiu $sp, $sp, 0x28
/* 09B3E4 8009A7E4 03E00008 */  jr    $ra
/* 09B3E8 8009A7E8 00000000 */   nop   
