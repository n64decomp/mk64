glabel func_800738A8
/* 0744A8 800738A8 000470C0 */  sll   $t6, $a0, 3
/* 0744AC 800738AC 01C47023 */  subu  $t6, $t6, $a0
/* 0744B0 800738B0 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 0744B4 800738B4 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 0744B8 800738B8 000E7140 */  sll   $t6, $t6, 5
/* 0744BC 800738BC 01CF1021 */  addu  $v0, $t6, $t7
/* 0744C0 800738C0 805800CF */  lb    $t8, 0xcf($v0)
/* 0744C4 800738C4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0744C8 800738C8 AFB00018 */  sw    $s0, 0x18($sp)
/* 0744CC 800738CC 00A08025 */  move  $s0, $a1
/* 0744D0 800738D0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0744D4 800738D4 1700000B */  bnez  $t8, .L80073904
/* 0744D8 800738D8 00004025 */   move  $t0, $zero
/* 0744DC 800738DC A4A60000 */  sh    $a2, ($a1)
/* 0744E0 800738E0 8FB9003C */  lw    $t9, 0x3c($sp)
/* 0744E4 800738E4 8FA90040 */  lw    $t1, 0x40($sp)
/* 0744E8 800738E8 AFA00024 */  sw    $zero, 0x24($sp)
/* 0744EC 800738EC 24050001 */  li    $a1, 1
/* 0744F0 800738F0 A45900AC */  sh    $t9, 0xac($v0)
/* 0744F4 800738F4 0C01CE00 */  jal   func_80073800
/* 0744F8 800738F8 A04900D0 */   sb    $t1, 0xd0($v0)
/* 0744FC 800738FC 10000021 */  b     .L80073984
/* 074500 80073900 8FA80024 */   lw    $t0, 0x24($sp)
.L80073904:
/* 074504 80073904 844A00AC */  lh    $t2, 0xac($v0)
/* 074508 80073908 254BFFFF */  addiu $t3, $t2, -1
/* 07450C 8007390C A44B00AC */  sh    $t3, 0xac($v0)
/* 074510 80073910 844C00AC */  lh    $t4, 0xac($v0)
/* 074514 80073914 8FAD003C */  lw    $t5, 0x3c($sp)
/* 074518 80073918 0583001B */  bgezl $t4, .L80073988
/* 07451C 8007391C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 074520 80073920 A44D00AC */  sh    $t5, 0xac($v0)
/* 074524 80073924 860E0000 */  lh    $t6, ($s0)
/* 074528 80073928 8FAF0038 */  lw    $t7, 0x38($sp)
/* 07452C 8007392C 01CFC021 */  addu  $t8, $t6, $t7
/* 074530 80073930 A6180000 */  sh    $t8, ($s0)
/* 074534 80073934 86190000 */  lh    $t9, ($s0)
/* 074538 80073938 00F9082A */  slt   $at, $a3, $t9
/* 07453C 8007393C 50200012 */  beql  $at, $zero, .L80073988
/* 074540 80073940 8FBF001C */   lw    $ra, 0x1c($sp)
/* 074544 80073944 804300D0 */  lb    $v1, 0xd0($v0)
/* 074548 80073948 00002825 */  move  $a1, $zero
/* 07454C 8007394C 18600003 */  blez  $v1, .L8007395C
/* 074550 80073950 2469FFFF */   addiu $t1, $v1, -1
/* 074554 80073954 A04900D0 */  sb    $t1, 0xd0($v0)
/* 074558 80073958 804300D0 */  lb    $v1, 0xd0($v0)
.L8007395C:
/* 07455C 8007395C 54600009 */  bnel  $v1, $zero, .L80073984
/* 074560 80073960 A6060000 */   sh    $a2, ($s0)
/* 074564 80073964 A6070000 */  sh    $a3, ($s0)
/* 074568 80073968 0C01CE00 */  jal   func_80073800
/* 07456C 8007396C AFA40028 */   sw    $a0, 0x28($sp)
/* 074570 80073970 0C01CE07 */  jal   func_8007381C
/* 074574 80073974 8FA40028 */   lw    $a0, 0x28($sp)
/* 074578 80073978 10000002 */  b     .L80073984
/* 07457C 8007397C 24080001 */   li    $t0, 1
/* 074580 80073980 A6060000 */  sh    $a2, ($s0)
.L80073984:
/* 074584 80073984 8FBF001C */  lw    $ra, 0x1c($sp)
.L80073988:
/* 074588 80073988 8FB00018 */  lw    $s0, 0x18($sp)
/* 07458C 8007398C 27BD0028 */  addiu $sp, $sp, 0x28
/* 074590 80073990 03E00008 */  jr    $ra
/* 074594 80073994 01001025 */   move  $v0, $t0
