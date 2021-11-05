glabel func_80070190
/* 070D90 80070190 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 070D94 80070194 AFB40028 */  sw    $s4, 0x28($sp)
/* 070D98 80070198 AFB30024 */  sw    $s3, 0x24($sp)
/* 070D9C 8007019C AFB20020 */  sw    $s2, 0x20($sp)
/* 070DA0 800701A0 AFB1001C */  sw    $s1, 0x1c($sp)
/* 070DA4 800701A4 AFB00018 */  sw    $s0, 0x18($sp)
/* 070DA8 800701A8 3C108019 */  lui   $s0, %hi(D_8018C030) # $s0, 0x8019
/* 070DAC 800701AC 3C118018 */  lui   $s1, %hi(D_80183EA0) # $s1, 0x8018
/* 070DB0 800701B0 3C128018 */  lui   $s2, %hi(D_80183F28) # $s2, 0x8018
/* 070DB4 800701B4 3C138019 */  lui   $s3, %hi(D_8018BFA8) # $s3, 0x8019
/* 070DB8 800701B8 3C148019 */  lui   $s4, %hi(D_8018C0B0) # $s4, 0x8019
/* 070DBC 800701BC AFBF002C */  sw    $ra, 0x2c($sp)
/* 070DC0 800701C0 2694C0B0 */  addiu $s4, %lo(D_8018C0B0) # addiu $s4, $s4, -0x3f50
/* 070DC4 800701C4 2673BFA8 */  addiu $s3, %lo(D_8018BFA8) # addiu $s3, $s3, -0x4058
/* 070DC8 800701C8 26523F28 */  addiu $s2, %lo(D_80183F28) # addiu $s2, $s2, 0x3f28
/* 070DCC 800701CC 26313EA0 */  addiu $s1, %lo(D_80183EA0) # addiu $s1, $s1, 0x3ea0
/* 070DD0 800701D0 2610C030 */  addiu $s0, %lo(D_8018C030) # addiu $s0, $s0, -0x3fd0
.L800701D4:
/* 070DD4 800701D4 0C01C7C0 */  jal   find_unused_obj_index
/* 070DD8 800701D8 02202025 */   move  $a0, $s1
/* 070DDC 800701DC 0C01C7C0 */  jal   find_unused_obj_index
/* 070DE0 800701E0 02402025 */   move  $a0, $s2
/* 070DE4 800701E4 0C01C7C0 */  jal   find_unused_obj_index
/* 070DE8 800701E8 02602025 */   move  $a0, $s3
/* 070DEC 800701EC 0C01C7C0 */  jal   find_unused_obj_index
/* 070DF0 800701F0 02002025 */   move  $a0, $s0
/* 070DF4 800701F4 26100004 */  addiu $s0, $s0, 4
/* 070DF8 800701F8 0214082B */  sltu  $at, $s0, $s4
/* 070DFC 800701FC 26310004 */  addiu $s1, $s1, 4
/* 070E00 80070200 26520004 */  addiu $s2, $s2, 4
/* 070E04 80070204 1420FFF3 */  bnez  $at, .L800701D4
/* 070E08 80070208 26730004 */   addiu $s3, $s3, 4
/* 070E0C 8007020C 3C108018 */  lui   $s0, %hi(D_80183DD8) # $s0, 0x8018
/* 070E10 80070210 3C118018 */  lui   $s1, %hi(D_80183DF4) # $s1, 0x8018
/* 070E14 80070214 26313DF4 */  addiu $s1, %lo(D_80183DF4) # addiu $s1, $s1, 0x3df4
/* 070E18 80070218 26103DD8 */  addiu $s0, %lo(D_80183DD8) # addiu $s0, $s0, 0x3dd8
.L8007021C:
/* 070E1C 8007021C 0C01C7C0 */  jal   find_unused_obj_index
/* 070E20 80070220 02002025 */   move  $a0, $s0
/* 070E24 80070224 26100004 */  addiu $s0, $s0, 4
/* 070E28 80070228 1611FFFC */  bne   $s0, $s1, .L8007021C
/* 070E2C 8007022C 00000000 */   nop   
/* 070E30 80070230 8FBF002C */  lw    $ra, 0x2c($sp)
/* 070E34 80070234 8FB00018 */  lw    $s0, 0x18($sp)
/* 070E38 80070238 8FB1001C */  lw    $s1, 0x1c($sp)
/* 070E3C 8007023C 8FB20020 */  lw    $s2, 0x20($sp)
/* 070E40 80070240 8FB30024 */  lw    $s3, 0x24($sp)
/* 070E44 80070244 8FB40028 */  lw    $s4, 0x28($sp)
/* 070E48 80070248 03E00008 */  jr    $ra
/* 070E4C 8007024C 27BD0030 */   addiu $sp, $sp, 0x30
